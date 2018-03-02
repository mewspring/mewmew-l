; ModuleID = 'coreutils-8.27/src/tee.bc'
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
@.str.2 = private unnamed_addr constant [190 x i8] c"Copy standard input to each FILE, and also to standard output.\0A\0A  -a, --append              append to the given FILEs, do not overwrite\0A  -i, --ignore-interrupts   ignore interrupt signals\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.3 = private unnamed_addr constant [141 x i8] c"  -p                        diagnose errors writing to non pipes\0A      --output-error[=MODE]   set behavior on write error.  See MODE below\0A\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.5 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.6 = private unnamed_addr constant [512 x i8] c"\0AMODE determines behavior with write errors on the outputs:\0A  'warn'         diagnose errors writing to any output\0A  'warn-nopipe'  diagnose errors writing to any output not a pipe\0A  'exit'         exit on error writing to any output\0A  'exit-nopipe'  exit on error writing to any output not a pipe\0AThe default MODE for the -p option is 'warn-nopipe'.\0AThe default operation when --output-error is not specified, is to\0Aexit immediately on error writing to a pipe, and diagnose errors\0Awriting to non pipe outputs.\0A\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"tee\00", align 1
@.str.27 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.28 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.29 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.30 = private unnamed_addr constant [69 x i8] c"Report %s translation bugs to <http://translationproject.org/team/>\0A\00", align 1
@.str.31 = private unnamed_addr constant [31 x i8] c"Full documentation at: <%s%s>\0A\00", align 1
@.str.32 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.33 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@append = internal unnamed_addr global i1 false, align 1
@ignore_interrupts = internal unnamed_addr global i1 false, align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"aip\00", align 1
@long_options = internal constant [6 x %struct.option] [%struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.34, i32 0, i32 0), i32 0, i32* null, i32 97 }, %struct.option { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.35, i32 0, i32 0), i32 0, i32* null, i32 105 }, %struct.option { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.36, i32 0, i32 0), i32 2, i32* null, i32 112 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.37, i32 0, i32 0), i32 0, i32* null, i32 -130 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.38, i32 0, i32 0), i32 0, i32* null, i32 -131 }, %struct.option zeroinitializer], align 16, !dbg !0
@optarg = external local_unnamed_addr global i8*, align 8
@.str.12 = private unnamed_addr constant [15 x i8] c"--output-error\00", align 1
@output_error_args = internal constant [5 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.42, i32 0, i32 0), i8* null], align 16, !dbg !99
@output_error_types = internal constant [4 x i32] [i32 1, i32 2, i32 3, i32 4], align 16, !dbg !93
@output_error = internal unnamed_addr global i32 0, align 4, !dbg !61
@.str.14 = private unnamed_addr constant [12 x i8] c"Mike Parker\00", align 1
@.str.15 = private unnamed_addr constant [20 x i8] c"Richard M. Stallman\00", align 1
@.str.16 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1
@optind = external local_unnamed_addr global i32, align 4
@.str.43 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.44 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@stdin = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.45 = private unnamed_addr constant [16 x i8] c"standard output\00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.46 = private unnamed_addr constant [11 x i8] c"read error\00", align 1
@.str.18 = private unnamed_addr constant [15 x i8] c"standard input\00", align 1
@.str.39 = private unnamed_addr constant [5 x i8] c"warn\00", align 1
@.str.40 = private unnamed_addr constant [12 x i8] c"warn-nopipe\00", align 1
@.str.41 = private unnamed_addr constant [5 x i8] c"exit\00", align 1
@.str.42 = private unnamed_addr constant [12 x i8] c"exit-nopipe\00", align 1
@.str.34 = private unnamed_addr constant [7 x i8] c"append\00", align 1
@.str.35 = private unnamed_addr constant [18 x i8] c"ignore-interrupts\00", align 1
@.str.36 = private unnamed_addr constant [13 x i8] c"output-error\00", align 1
@.str.37 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.38 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@Version = local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0), align 8, !dbg !117
@.str.19 = private unnamed_addr constant [5 x i8] c"8.27\00", align 1
@argmatch_die = local_unnamed_addr global void ()* @__argmatch_die, align 8, !dbg !123
@.str.22 = private unnamed_addr constant [27 x i8] c"invalid argument %s for %s\00", align 1
@.str.1.23 = private unnamed_addr constant [29 x i8] c"ambiguous argument %s for %s\00", align 1
@.str.2.24 = private unnamed_addr constant [21 x i8] c"Valid arguments are:\00", align 1
@.str.3.25 = private unnamed_addr constant [8 x i8] c"\0A  - %s\00", align 1
@.str.4.26 = private unnamed_addr constant [5 x i8] c", %s\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !136
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !141
@.str.47 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.48 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.49 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = global i32 1, align 4, !dbg !144
@program_name = local_unnamed_addr global i8* null, align 8, !dbg !151
@.str.60 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.61 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.62 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.63, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.64, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.65, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.66, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.67, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.68, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.69, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.70, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.71, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.72, i32 0, i32 0), i8* null], align 16, !dbg !158
@.str.63 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.64 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.65 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.66 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.67 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.68 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.69 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.70 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.71 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.72 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_vals = local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !186
@quote_quoting_options = global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !193
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !206
@.str.11.73 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.74 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.75 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.76 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.77 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.78 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.79 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !213
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !220
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !208
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !222
@.str.92 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.93 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.94 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.3.95 = private unnamed_addr constant [203 x i8] c"\0ALicense GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\0A\00", align 1
@.str.4.96 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.5.97 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.6.98 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.7.99 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.8.100 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.9.101 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.10.102 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.11.103 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.12.104 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.13.105 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@.str.14.108 = private unnamed_addr constant [21 x i8] c"\0AReport bugs to: %s\0A\00", align 1
@.str.15.109 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.16.110 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.17.111 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.18.112 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.19.113 = private unnamed_addr constant [64 x i8] c"General help using GNU software: <http://www.gnu.org/gethelp/>\0A\00", align 1
@version_etc_copyright = constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !227
@.str.1.124 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.125 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@rpl_fcntl.have_dupfd_cloexec = internal unnamed_addr global i32 0, align 4, !dbg !236
@.str.1.142 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.145 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@charset_aliases = internal global i8* null, align 8, !dbg !273
@.str.3.146 = private unnamed_addr constant [16 x i8] c"CHARSETALIASDIR\00", align 1
@.str.4.147 = private unnamed_addr constant [15 x i8] c"/usr/local/lib\00", align 1
@.str.2.148 = private unnamed_addr constant [14 x i8] c"charset.alias\00", align 1
@.str.5.149 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.6.150 = private unnamed_addr constant [10 x i8] c"%50s %50s\00", align 1
@.str.1.151 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @usage(i32) local_unnamed_addr #0 !dbg !676 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !678, metadata !679), !dbg !680
  %2 = icmp eq i32 %0, 0, !dbg !681
  br i1 %2, label %8, label %3, !dbg !683

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !684, !tbaa !687
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #11, !dbg !684
  %6 = load i8*, i8** @program_name, align 8, !dbg !684, !tbaa !687
  %7 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %4, i32 1, i8* %5, i8* %6) #11, !dbg !691
  br label %42, !dbg !693

; <label>:8:                                      ; preds = %1
  %9 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 5) #11, !dbg !695
  %10 = load i8*, i8** @program_name, align 8, !dbg !695, !tbaa !687
  %11 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %9, i8* %10) #11, !dbg !697
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([190 x i8], [190 x i8]* @.str.2, i64 0, i64 0), i32 5) #11, !dbg !699
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !699, !tbaa !687
  %14 = tail call i32 @fputs_unlocked(i8* %12, %struct._IO_FILE* %13) #11, !dbg !700
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([141 x i8], [141 x i8]* @.str.3, i64 0, i64 0), i32 5) #11, !dbg !701
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !701, !tbaa !687
  %17 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %16) #11, !dbg !702
  %18 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i32 5) #11, !dbg !703
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !703, !tbaa !687
  %20 = tail call i32 @fputs_unlocked(i8* %18, %struct._IO_FILE* %19) #11, !dbg !704
  %21 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.5, i64 0, i64 0), i32 5) #11, !dbg !705
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !705, !tbaa !687
  %23 = tail call i32 @fputs_unlocked(i8* %21, %struct._IO_FILE* %22) #11, !dbg !706
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([512 x i8], [512 x i8]* @.str.6, i64 0, i64 0), i32 5) #11, !dbg !707
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !707, !tbaa !687
  %26 = tail call i32 @fputs_unlocked(i8* %24, %struct._IO_FILE* %25) #11, !dbg !708
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !71, metadata !679) #11, !dbg !709
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i64 0, metadata !71, metadata !679) #11, !dbg !709
  %27 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.27, i64 0, i64 0), i32 5) #11, !dbg !711
  %28 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %27, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.28, i64 0, i64 0)) #11, !dbg !712
  %29 = tail call i8* @setlocale(i32 5, i8* null) #11, !dbg !714
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !82, metadata !679) #11, !dbg !715
  %30 = icmp eq i8* %29, null, !dbg !716
  br i1 %30, label %37, label %31, !dbg !717

; <label>:31:                                     ; preds = %8
  %32 = tail call i32 @strncmp(i8* nonnull %29, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.29, i64 0, i64 0), i64 3) #13, !dbg !718
  %33 = icmp eq i32 %32, 0, !dbg !718
  br i1 %33, label %37, label %34, !dbg !720

; <label>:34:                                     ; preds = %31
  %35 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.30, i64 0, i64 0), i32 5) #11, !dbg !722
  %36 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %35, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0)) #11, !dbg !724
  br label %37, !dbg !726

; <label>:37:                                     ; preds = %8, %31, %34
  %38 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.31, i64 0, i64 0), i32 5) #11, !dbg !727
  %39 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %38, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.28, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0)) #11, !dbg !728
  %40 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.32, i64 0, i64 0), i32 5) #11, !dbg !729
  %41 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %40, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.33, i64 0, i64 0)) #11, !dbg !730
  br label %42

; <label>:42:                                     ; preds = %37, %3
  tail call void @exit(i32 %0) #14, !dbg !731
  unreachable, !dbg !731
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
define i32 @main(i32, i8**) local_unnamed_addr #6 !dbg !732 {
  %3 = alloca [8192 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [8192 x i8]* %3, metadata !741, metadata !679), !dbg !821
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !737, metadata !679), !dbg !823
  tail call void @llvm.dbg.value(metadata i8** %1, i64 0, metadata !738, metadata !679), !dbg !824
  %4 = load i8*, i8** %1, align 8, !dbg !825, !tbaa !687
  tail call void @set_program_name(i8* %4) #11, !dbg !826
  %5 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0)) #11, !dbg !827
  %6 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0)) #11, !dbg !828
  %7 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0)) #11, !dbg !829
  %8 = tail call i32 @atexit(void ()* nonnull @close_stdout) #11, !dbg !830
  store i1 false, i1* @append, align 1
  store i1 false, i1* @ignore_interrupts, align 1
  br label %9, !dbg !831

; <label>:9:                                      ; preds = %23, %2
  %10 = tail call i32 @getopt_long(i32 %0, i8** %1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), %struct.option* getelementptr inbounds ([6 x %struct.option], [6 x %struct.option]* @long_options, i64 0, i64 0), i32* null) #11, !dbg !832
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !740, metadata !679), !dbg !834
  switch i32 %10, label %28 [
    i32 -1, label %29
    i32 97, label %11
    i32 105, label %12
    i32 112, label %13
    i32 -130, label %24
    i32 -131, label %25
  ], !dbg !835

; <label>:11:                                     ; preds = %9
  store i1 true, i1* @append, align 1
  br label %23, !dbg !836

; <label>:12:                                     ; preds = %9
  store i1 true, i1* @ignore_interrupts, align 1
  br label %23, !dbg !839

; <label>:13:                                     ; preds = %9
  %14 = load i8*, i8** @optarg, align 8, !dbg !840, !tbaa !687
  %15 = icmp eq i8* %14, null, !dbg !840
  br i1 %15, label %21, label %16, !dbg !842

; <label>:16:                                     ; preds = %13
  %17 = load void ()*, void ()** @argmatch_die, align 8, !dbg !843, !tbaa !687
  %18 = tail call i64 @__xargmatch_internal(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0), i8* nonnull %14, i8** getelementptr inbounds ([5 x i8*], [5 x i8*]* @output_error_args, i64 0, i64 0), i8* bitcast ([4 x i32]* @output_error_types to i8*), i64 4, void ()* %17) #11, !dbg !843
  %19 = getelementptr inbounds [4 x i32], [4 x i32]* @output_error_types, i64 0, i64 %18, !dbg !843
  %20 = load i32, i32* %19, align 4, !dbg !843, !tbaa !844
  br label %21, !dbg !845

; <label>:21:                                     ; preds = %13, %16
  %22 = phi i32 [ %20, %16 ], [ 2, %13 ]
  store i32 %22, i32* @output_error, align 4, !tbaa !844
  br label %23, !dbg !846

; <label>:23:                                     ; preds = %21, %12, %11
  br label %9, !dbg !832, !llvm.loop !847

; <label>:24:                                     ; preds = %9
  tail call void @usage(i32 0) #15, !dbg !849
  unreachable, !dbg !849

; <label>:25:                                     ; preds = %9
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !850, !tbaa !687
  %27 = load i8*, i8** @Version, align 8, !dbg !850, !tbaa !687
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %26, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0), i8* %27, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.16, i64 0, i64 0), i8* null) #11, !dbg !850
  tail call void @exit(i32 0) #14, !dbg !851
  unreachable, !dbg !850

; <label>:28:                                     ; preds = %9
  tail call void @usage(i32 1) #15, !dbg !853
  unreachable, !dbg !853

; <label>:29:                                     ; preds = %9
  %30 = load i1, i1* @ignore_interrupts, align 1
  br i1 %30, label %31, label %33, !dbg !854

; <label>:31:                                     ; preds = %29
  %32 = tail call void (i32)* @signal(i32 2, void (i32)* inttoptr (i64 1 to void (i32)*)) #11, !dbg !855
  br label %33, !dbg !855

; <label>:33:                                     ; preds = %31, %29
  %34 = load i32, i32* @output_error, align 4, !dbg !857, !tbaa !844
  %35 = icmp eq i32 %34, 0, !dbg !859
  br i1 %35, label %38, label %36, !dbg !860

; <label>:36:                                     ; preds = %33
  %37 = tail call void (i32)* @signal(i32 13, void (i32)* inttoptr (i64 1 to void (i32)*)) #11, !dbg !861
  br label %38, !dbg !861

; <label>:38:                                     ; preds = %33, %36
  %39 = load i32, i32* @optind, align 4, !dbg !862, !tbaa !863
  %40 = sub nsw i32 %0, %39, !dbg !865
  tail call void @llvm.dbg.value(metadata i32 %40, i64 0, metadata !746, metadata !679) #11, !dbg !866
  tail call void @llvm.dbg.value(metadata i8** %49, i64 0, metadata !747, metadata !679) #11, !dbg !867
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !748, metadata !679) #11, !dbg !868
  %41 = getelementptr inbounds [8192 x i8], [8192 x i8]* %3, i64 0, i64 0, !dbg !869
  call void @llvm.lifetime.start(i64 8192, i8* nonnull %41) #11, !dbg !869
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !804, metadata !679) #11, !dbg !870
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !809, metadata !679) #11, !dbg !871
  %42 = load i1, i1* @append, align 1
  %43 = select i1 %42, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.43, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.44, i64 0, i64 0), !dbg !872
  tail call void @llvm.dbg.value(metadata i8* %43, i64 0, metadata !810, metadata !679) #11, !dbg !873
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !874, !tbaa !687
  tail call void @fadvise(%struct._IO_FILE* %44, i32 2) #11, !dbg !875
  tail call void @llvm.dbg.value(metadata i64 8, i64 0, metadata !876, metadata !679) #11, !dbg !882
  %45 = icmp slt i32 %40, -1, !dbg !884
  br i1 %45, label %46, label %47, !dbg !886

; <label>:46:                                     ; preds = %38
  tail call void @xalloc_die() #14, !dbg !887
  unreachable, !dbg !887

; <label>:47:                                     ; preds = %38
  %48 = sext i32 %39 to i64, !dbg !888
  %49 = getelementptr inbounds i8*, i8** %1, i64 %48, !dbg !888
  %50 = add i32 %40, 1, !dbg !889
  %51 = sext i32 %50 to i64, !dbg !890
  %52 = shl nsw i64 %51, 3, !dbg !891
  %53 = tail call noalias i8* @xmalloc(i64 %52) #11, !dbg !892
  %54 = bitcast i8* %53 to %struct._IO_FILE**, !dbg !893
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE** %54, i64 0, metadata !749, metadata !679) #11, !dbg !894
  %55 = getelementptr inbounds i8*, i8** %49, i64 -1, !dbg !895
  tail call void @llvm.dbg.value(metadata i8** %55, i64 0, metadata !747, metadata !679) #11, !dbg !867
  %56 = load i64, i64* bitcast (%struct._IO_FILE** @stdout to i64*), align 8, !dbg !896, !tbaa !687
  %57 = bitcast i8* %53 to i64*, !dbg !897
  store i64 %56, i64* %57, align 8, !dbg !897, !tbaa !687
  %58 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.45, i64 0, i64 0), i32 5) #11, !dbg !898
  store i8* %58, i8** %55, align 8, !dbg !899, !tbaa !687
  %59 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !900, !tbaa !687
  %60 = tail call i32 @setvbuf(%struct._IO_FILE* %59, i8* null, i32 2, i64 0) #11, !dbg !901
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !748, metadata !679) #11, !dbg !868
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !808, metadata !679) #11, !dbg !902
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !748, metadata !679) #11, !dbg !868
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !809, metadata !679) #11, !dbg !871
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !808, metadata !679) #11, !dbg !902
  %61 = icmp slt i32 %40, 1, !dbg !903
  %62 = zext i32 %50 to i64
  br i1 %61, label %65, label %63, !dbg !907

; <label>:63:                                     ; preds = %47
  br label %69, !dbg !909

; <label>:64:                                     ; preds = %90
  br label %65

; <label>:65:                                     ; preds = %64, %47
  %66 = phi i8 [ 1, %47 ], [ %91, %64 ]
  %67 = phi i64 [ 1, %47 ], [ %92, %64 ]
  %68 = icmp slt i32 %40, 0
  br label %96, !dbg !868

; <label>:69:                                     ; preds = %63, %90
  %70 = phi i64 [ %93, %90 ], [ 1, %63 ]
  %71 = phi i64 [ %92, %90 ], [ 1, %63 ]
  %72 = phi i8 [ %91, %90 ], [ 1, %63 ]
  %73 = getelementptr inbounds i8*, i8** %55, i64 %70, !dbg !909
  %74 = load i8*, i8** %73, align 8, !dbg !909, !tbaa !687
  %75 = tail call %struct._IO_FILE* @fopen_safer(i8* %74, i8* %43) #11, !dbg !911
  %76 = getelementptr inbounds %struct._IO_FILE*, %struct._IO_FILE** %54, i64 %70, !dbg !912
  store %struct._IO_FILE* %75, %struct._IO_FILE** %76, align 8, !dbg !913, !tbaa !687
  %77 = icmp eq %struct._IO_FILE* %75, null, !dbg !914
  br i1 %77, label %78, label %87, !dbg !916

; <label>:78:                                     ; preds = %69
  %79 = load i32, i32* @output_error, align 4, !dbg !917, !tbaa !844
  %80 = add i32 %79, -3, !dbg !919
  %81 = icmp ult i32 %80, 2, !dbg !919
  %82 = zext i1 %81 to i32, !dbg !920
  %83 = tail call i32* @__errno_location() #1, !dbg !922
  %84 = load i32, i32* %83, align 4, !dbg !922, !tbaa !863
  %85 = load i8*, i8** %73, align 8, !dbg !923, !tbaa !687
  %86 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %85) #11, !dbg !924
  tail call void (i32, i32, i8*, ...) @error(i32 %82, i32 %84, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i64 0, i64 0), i8* %86) #11, !dbg !926
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !809, metadata !679) #11, !dbg !871
  br label %90, !dbg !927

; <label>:87:                                     ; preds = %69
  %88 = tail call i32 @setvbuf(%struct._IO_FILE* nonnull %75, i8* null, i32 2, i64 0) #11, !dbg !928
  %89 = add i64 %71, 1, !dbg !930
  tail call void @llvm.dbg.value(metadata i64 %89, i64 0, metadata !748, metadata !679) #11, !dbg !868
  br label %90

; <label>:90:                                     ; preds = %87, %78
  %91 = phi i8 [ 0, %78 ], [ %72, %87 ]
  %92 = phi i64 [ %71, %78 ], [ %89, %87 ]
  tail call void @llvm.dbg.value(metadata i64 %92, i64 0, metadata !748, metadata !679) #11, !dbg !868
  tail call void @llvm.dbg.value(metadata i8 %91, i64 0, metadata !809, metadata !679) #11, !dbg !871
  %93 = add nuw nsw i64 %70, 1, !dbg !931
  tail call void @llvm.dbg.value(metadata i64 %92, i64 0, metadata !748, metadata !679) #11, !dbg !868
  tail call void @llvm.dbg.value(metadata i8 %91, i64 0, metadata !809, metadata !679) #11, !dbg !871
  %94 = icmp eq i64 %93, %62, !dbg !903
  br i1 %94, label %64, label %69, !dbg !907, !llvm.loop !933

; <label>:95:                                     ; preds = %149
  br label %96

; <label>:96:                                     ; preds = %95, %65
  %97 = phi i8 [ %66, %65 ], [ %150, %95 ]
  %98 = phi i64 [ 0, %65 ], [ %104, %95 ]
  %99 = phi i64 [ %67, %65 ], [ %151, %95 ]
  %100 = icmp eq i64 %99, 0
  br label %101

; <label>:101:                                    ; preds = %112, %96
  call void @llvm.dbg.value(metadata i64 %99, i64 0, metadata !748, metadata !679) #11, !dbg !868
  call void @llvm.dbg.value(metadata i8 %97, i64 0, metadata !809, metadata !679) #11, !dbg !871
  br i1 %100, label %155, label %102, !dbg !936

; <label>:102:                                    ; preds = %101
  br label %103, !dbg !938

; <label>:103:                                    ; preds = %102, %106
  %104 = call i64 @read(i32 0, i8* nonnull %41, i64 8192) #11, !dbg !938
  call void @llvm.dbg.value(metadata i64 %104, i64 0, metadata !804, metadata !679) #11, !dbg !870
  %105 = icmp slt i64 %104, 0, !dbg !939
  br i1 %105, label %106, label %110, !dbg !941

; <label>:106:                                    ; preds = %103
  %107 = tail call i32* @__errno_location() #1, !dbg !942
  %108 = load i32, i32* %107, align 4, !dbg !942, !tbaa !863
  %109 = icmp eq i32 %108, 4, !dbg !944
  br i1 %109, label %103, label %154, !dbg !944, !llvm.loop !946

; <label>:110:                                    ; preds = %103
  %111 = icmp eq i64 %104, 0, !dbg !949
  br i1 %111, label %163, label %112, !dbg !951

; <label>:112:                                    ; preds = %110
  call void @llvm.dbg.value(metadata i64 %99, i64 0, metadata !748, metadata !679) #11, !dbg !868
  call void @llvm.dbg.value(metadata i8 %97, i64 0, metadata !809, metadata !679) #11, !dbg !871
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !808, metadata !679) #11, !dbg !902
  br i1 %68, label %101, label %113, !dbg !952, !llvm.loop !946

; <label>:113:                                    ; preds = %112
  br label %114, !dbg !954

; <label>:114:                                    ; preds = %113, %149
  %115 = phi i64 [ %152, %149 ], [ 0, %113 ]
  %116 = phi i64 [ %151, %149 ], [ %99, %113 ]
  %117 = phi i8 [ %150, %149 ], [ %97, %113 ]
  %118 = getelementptr inbounds %struct._IO_FILE*, %struct._IO_FILE** %54, i64 %115, !dbg !954
  %119 = load %struct._IO_FILE*, %struct._IO_FILE** %118, align 8, !dbg !954, !tbaa !687
  %120 = icmp eq %struct._IO_FILE* %119, null, !dbg !954
  br i1 %120, label %149, label %121, !dbg !955

; <label>:121:                                    ; preds = %114
  %122 = call i64 @fwrite_unlocked(i8* nonnull %41, i64 %104, i64 1, %struct._IO_FILE* nonnull %119) #11, !dbg !956
  %123 = icmp eq i64 %122, 1, !dbg !958
  br i1 %123, label %149, label %124, !dbg !959

; <label>:124:                                    ; preds = %121
  %125 = tail call i32* @__errno_location() #1, !dbg !961
  %126 = load i32, i32* %125, align 4, !dbg !961, !tbaa !863
  call void @llvm.dbg.value(metadata i32 %126, i64 0, metadata !811, metadata !679) #11, !dbg !962
  %127 = icmp eq i32 %126, 32, !dbg !963
  br i1 %127, label %128, label %132, !dbg !964

; <label>:128:                                    ; preds = %124
  %129 = load i32, i32* @output_error, align 4, !dbg !965, !tbaa !844
  %130 = or i32 %129, 2, !dbg !967
  %131 = icmp eq i32 %130, 3, !dbg !967
  br label %132, !dbg !967

; <label>:132:                                    ; preds = %128, %124
  %133 = phi i1 [ true, %124 ], [ %131, %128 ]
  %134 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !968, !tbaa !687
  %135 = icmp eq %struct._IO_FILE* %119, %134, !dbg !970
  br i1 %135, label %136, label %137, !dbg !971

; <label>:136:                                    ; preds = %132
  call void @clearerr_unlocked(%struct._IO_FILE* nonnull %119) #11, !dbg !972
  br label %137, !dbg !972

; <label>:137:                                    ; preds = %136, %132
  br i1 %133, label %138, label %146, !dbg !973

; <label>:138:                                    ; preds = %137
  %139 = load i32, i32* @output_error, align 4, !dbg !974, !tbaa !844
  %140 = add i32 %139, -3, !dbg !977
  %141 = icmp ult i32 %140, 2, !dbg !977
  %142 = zext i1 %141 to i32, !dbg !978
  %143 = getelementptr inbounds i8*, i8** %55, i64 %115, !dbg !980
  %144 = load i8*, i8** %143, align 8, !dbg !980, !tbaa !687
  %145 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %144) #11, !dbg !980
  call void (i32, i32, i8*, ...) @error(i32 %142, i32 %126, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i64 0, i64 0), i8* %145) #11, !dbg !981
  br label %146, !dbg !983

; <label>:146:                                    ; preds = %138, %137
  store %struct._IO_FILE* null, %struct._IO_FILE** %118, align 8, !dbg !984, !tbaa !687
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !809, metadata !679) #11, !dbg !871
  %147 = select i1 %133, i8 0, i8 %117, !dbg !985
  call void @llvm.dbg.value(metadata i8 %147, i64 0, metadata !809, metadata !679) #11, !dbg !871
  %148 = add i64 %116, -1, !dbg !986
  call void @llvm.dbg.value(metadata i64 %148, i64 0, metadata !748, metadata !679) #11, !dbg !868
  br label %149, !dbg !987

; <label>:149:                                    ; preds = %146, %121, %114
  %150 = phi i8 [ %147, %146 ], [ %117, %121 ], [ %117, %114 ]
  %151 = phi i64 [ %148, %146 ], [ %116, %121 ], [ %116, %114 ]
  call void @llvm.dbg.value(metadata i64 %151, i64 0, metadata !748, metadata !679) #11, !dbg !868
  call void @llvm.dbg.value(metadata i8 %150, i64 0, metadata !809, metadata !679) #11, !dbg !871
  %152 = add nuw nsw i64 %115, 1, !dbg !988
  call void @llvm.dbg.value(metadata i64 %151, i64 0, metadata !748, metadata !679) #11, !dbg !868
  call void @llvm.dbg.value(metadata i8 %150, i64 0, metadata !809, metadata !679) #11, !dbg !871
  %153 = icmp eq i64 %152, %62, !dbg !990
  br i1 %153, label %95, label %114, !dbg !952, !llvm.loop !991

; <label>:154:                                    ; preds = %106
  br label %156, !dbg !870

; <label>:155:                                    ; preds = %101
  br label %156, !dbg !870

; <label>:156:                                    ; preds = %155, %154
  %157 = phi i64 [ %104, %154 ], [ %98, %155 ]
  call void @llvm.dbg.value(metadata i64 %157, i64 0, metadata !804, metadata !679) #11, !dbg !870
  %158 = icmp eq i64 %157, -1, !dbg !994
  br i1 %158, label %159, label %164, !dbg !996

; <label>:159:                                    ; preds = %156
  %160 = tail call i32* @__errno_location() #1, !dbg !997
  %161 = load i32, i32* %160, align 4, !dbg !997, !tbaa !863
  %162 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.46, i64 0, i64 0), i32 5) #11, !dbg !999
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %161, i8* %162) #11, !dbg !1001
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !809, metadata !679) #11, !dbg !871
  br label %164, !dbg !1003

; <label>:163:                                    ; preds = %110
  br label %164, !dbg !871

; <label>:164:                                    ; preds = %163, %159, %156
  %165 = phi i8 [ %97, %156 ], [ 0, %159 ], [ %97, %163 ]
  call void @llvm.dbg.value(metadata i8 %165, i64 0, metadata !809, metadata !679) #11, !dbg !871
  call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !808, metadata !679) #11, !dbg !902
  br i1 %61, label %187, label %166, !dbg !1004

; <label>:166:                                    ; preds = %164
  br label %167, !dbg !1007

; <label>:167:                                    ; preds = %166, %182
  %168 = phi i64 [ %184, %182 ], [ 1, %166 ]
  %169 = phi i8 [ %183, %182 ], [ %165, %166 ]
  %170 = getelementptr inbounds %struct._IO_FILE*, %struct._IO_FILE** %54, i64 %168, !dbg !1007
  %171 = load %struct._IO_FILE*, %struct._IO_FILE** %170, align 8, !dbg !1007, !tbaa !687
  %172 = icmp eq %struct._IO_FILE* %171, null, !dbg !1007
  br i1 %172, label %182, label %173, !dbg !1010

; <label>:173:                                    ; preds = %167
  %174 = call i32 @rpl_fclose(%struct._IO_FILE* nonnull %171) #11, !dbg !1011
  %175 = icmp eq i32 %174, 0, !dbg !1013
  br i1 %175, label %182, label %176, !dbg !1014

; <label>:176:                                    ; preds = %173
  %177 = tail call i32* @__errno_location() #1, !dbg !1016
  %178 = load i32, i32* %177, align 4, !dbg !1016, !tbaa !863
  %179 = getelementptr inbounds i8*, i8** %55, i64 %168, !dbg !1018
  %180 = load i8*, i8** %179, align 8, !dbg !1018, !tbaa !687
  %181 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %180) #11, !dbg !1019
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %178, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i64 0, i64 0), i8* %181) #11, !dbg !1021
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !809, metadata !679) #11, !dbg !871
  br label %182, !dbg !1023

; <label>:182:                                    ; preds = %176, %173, %167
  %183 = phi i8 [ 0, %176 ], [ %169, %173 ], [ %169, %167 ]
  call void @llvm.dbg.value(metadata i8 %183, i64 0, metadata !809, metadata !679) #11, !dbg !871
  %184 = add nuw nsw i64 %168, 1, !dbg !1024
  call void @llvm.dbg.value(metadata i8 %183, i64 0, metadata !809, metadata !679) #11, !dbg !871
  %185 = icmp eq i64 %184, %62, !dbg !1026
  br i1 %185, label %186, label %167, !dbg !1004, !llvm.loop !1027

; <label>:186:                                    ; preds = %182
  br label %187, !dbg !1030

; <label>:187:                                    ; preds = %186, %164
  %188 = phi i8 [ %165, %164 ], [ %183, %186 ]
  call void @free(i8* %53) #11, !dbg !1030
  call void @llvm.lifetime.end(i64 8192, i8* nonnull %41) #11, !dbg !1031
  %189 = call i32 @close(i32 0) #11, !dbg !1032
  %190 = icmp eq i32 %189, 0, !dbg !1034
  br i1 %190, label %195, label %191, !dbg !1035

; <label>:191:                                    ; preds = %187
  %192 = tail call i32* @__errno_location() #1, !dbg !1036
  %193 = load i32, i32* %192, align 4, !dbg !1036, !tbaa !863
  %194 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i64 0, i64 0), i32 5) #11, !dbg !1037
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %193, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i64 0, i64 0), i8* %194) #11, !dbg !1039
  unreachable, !dbg !1036

; <label>:195:                                    ; preds = %187
  %196 = and i8 %188, 1, !dbg !1041
  %197 = xor i8 %196, 1, !dbg !1042
  %198 = zext i8 %197 to i32, !dbg !1042
  ret i32 %198, !dbg !1043
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

; Function Attrs: nounwind
declare void (i32)* @signal(i32, void (i32)*) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #7

; Function Attrs: nounwind
declare i32 @setvbuf(%struct._IO_FILE* nocapture, i8*, i32, i64) local_unnamed_addr #2

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #8

declare void @error(i32, i32, i8*, ...) local_unnamed_addr #3

declare i64 @read(i32, i8* nocapture, i64) local_unnamed_addr #3

declare i64 @fwrite_unlocked(i8*, i64, i64, %struct._IO_FILE*) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @clearerr_unlocked(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @free(i8* nocapture) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #7

declare i32 @close(i32) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define internal void @__argmatch_die() #6 !dbg !1044 {
  tail call void @usage(i32 1) #11, !dbg !1045
  ret void, !dbg !1046
}

; Function Attrs: nounwind readonly sspstrong uwtable
define i64 @argmatch(i8* nocapture readonly, i8** nocapture readonly, i8* readonly, i64) local_unnamed_addr #9 !dbg !1047 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1053, metadata !679), !dbg !1068
  tail call void @llvm.dbg.value(metadata i8** %1, i64 0, metadata !1054, metadata !679), !dbg !1069
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1055, metadata !679), !dbg !1070
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !1056, metadata !679), !dbg !1071
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !1059, metadata !679), !dbg !1072
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1060, metadata !679), !dbg !1073
  %5 = tail call i64 @strlen(i8* %0) #13, !dbg !1074
  tail call void @llvm.dbg.value(metadata i64 %5, i64 0, metadata !1058, metadata !679), !dbg !1075
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1057, metadata !679), !dbg !1076
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1060, metadata !679), !dbg !1073
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !1059, metadata !679), !dbg !1072
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1057, metadata !679), !dbg !1076
  %6 = load i8*, i8** %1, align 8, !dbg !1077, !tbaa !687
  %7 = icmp eq i8* %6, null, !dbg !1079
  br i1 %7, label %39, label %8, !dbg !1079

; <label>:8:                                      ; preds = %4
  %9 = icmp eq i8* %2, null
  br label %10, !dbg !1079

; <label>:10:                                     ; preds = %8, %31
  %11 = phi i8* [ %6, %8 ], [ %36, %31 ]
  %12 = phi i8 [ 0, %8 ], [ %33, %31 ]
  %13 = phi i64 [ -1, %8 ], [ %32, %31 ]
  %14 = phi i64 [ 0, %8 ], [ %34, %31 ]
  %15 = tail call i32 @strncmp(i8* nonnull %11, i8* %0, i64 %5) #13, !dbg !1081
  %16 = icmp eq i32 %15, 0, !dbg !1081
  br i1 %16, label %17, label %31, !dbg !1083

; <label>:17:                                     ; preds = %10
  %18 = tail call i64 @strlen(i8* nonnull %11) #13, !dbg !1085
  %19 = icmp eq i64 %18, %5, !dbg !1088
  br i1 %19, label %45, label %20, !dbg !1089

; <label>:20:                                     ; preds = %17
  %21 = icmp eq i64 %13, -1, !dbg !1090
  br i1 %21, label %31, label %22, !dbg !1092

; <label>:22:                                     ; preds = %20
  br i1 %9, label %30, label %23, !dbg !1093

; <label>:23:                                     ; preds = %22
  %24 = mul i64 %13, %3, !dbg !1096
  %25 = getelementptr inbounds i8, i8* %2, i64 %24, !dbg !1098
  %26 = mul i64 %14, %3, !dbg !1099
  %27 = getelementptr inbounds i8, i8* %2, i64 %26, !dbg !1100
  %28 = tail call i32 @memcmp(i8* %25, i8* %27, i64 %3) #13, !dbg !1101
  %29 = icmp eq i32 %28, 0, !dbg !1101
  br i1 %29, label %31, label %30, !dbg !1102

; <label>:30:                                     ; preds = %23, %22
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1060, metadata !679), !dbg !1073
  br label %31, !dbg !1104

; <label>:31:                                     ; preds = %20, %23, %10, %30
  %32 = phi i64 [ %13, %10 ], [ %13, %30 ], [ %13, %23 ], [ %14, %20 ]
  %33 = phi i8 [ %12, %10 ], [ 1, %30 ], [ %12, %23 ], [ %12, %20 ]
  tail call void @llvm.dbg.value(metadata i8 %33, i64 0, metadata !1060, metadata !679), !dbg !1073
  tail call void @llvm.dbg.value(metadata i64 %32, i64 0, metadata !1059, metadata !679), !dbg !1072
  %34 = add i64 %14, 1, !dbg !1106
  tail call void @llvm.dbg.value(metadata i64 %34, i64 0, metadata !1057, metadata !679), !dbg !1076
  tail call void @llvm.dbg.value(metadata i8 %33, i64 0, metadata !1060, metadata !679), !dbg !1073
  tail call void @llvm.dbg.value(metadata i64 %32, i64 0, metadata !1059, metadata !679), !dbg !1072
  tail call void @llvm.dbg.value(metadata i64 %34, i64 0, metadata !1057, metadata !679), !dbg !1076
  %35 = getelementptr inbounds i8*, i8** %1, i64 %34, !dbg !1077
  %36 = load i8*, i8** %35, align 8, !dbg !1077, !tbaa !687
  %37 = icmp eq i8* %36, null, !dbg !1079
  br i1 %37, label %38, label %10, !dbg !1079, !llvm.loop !1108

; <label>:38:                                     ; preds = %31
  br label %39, !dbg !1111

; <label>:39:                                     ; preds = %38, %4
  %40 = phi i64 [ -1, %4 ], [ %32, %38 ]
  %41 = phi i8 [ 0, %4 ], [ %33, %38 ]
  %42 = and i8 %41, 1, !dbg !1111
  %43 = icmp eq i8 %42, 0, !dbg !1111
  %44 = select i1 %43, i64 %40, i64 -2, !dbg !1113
  br label %46, !dbg !1113

; <label>:45:                                     ; preds = %17
  br label %46, !dbg !1114

; <label>:46:                                     ; preds = %45, %39
  %47 = phi i64 [ %44, %39 ], [ %14, %45 ]
  ret i64 %47, !dbg !1114
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define void @argmatch_invalid(i8*, i8*, i64) local_unnamed_addr #6 !dbg !1115 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1119, metadata !679), !dbg !1123
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1120, metadata !679), !dbg !1124
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !1121, metadata !679), !dbg !1125
  %4 = icmp eq i64 %2, -1, !dbg !1126
  %5 = select i1 %4, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.22, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1.23, i64 0, i64 0), !dbg !1127
  %6 = tail call i8* @dcgettext(i8* null, i8* %5, i32 5) #11, !dbg !1128
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !1122, metadata !679), !dbg !1129
  %7 = tail call i8* @quotearg_n_style(i32 0, i32 8, i8* %1) #11, !dbg !1130
  %8 = tail call i8* @quote_n(i32 1, i8* %0) #11, !dbg !1131
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %6, i8* %7, i8* %8) #11, !dbg !1132
  ret void, !dbg !1134
}

; Function Attrs: nounwind sspstrong uwtable
define void @argmatch_valid(i8** nocapture readonly, i8* nocapture readonly, i64) local_unnamed_addr #6 !dbg !1135 {
  tail call void @llvm.dbg.value(metadata i8** %0, i64 0, metadata !1139, metadata !679), !dbg !1144
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1140, metadata !679), !dbg !1145
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !1141, metadata !679), !dbg !1146
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1143, metadata !679), !dbg !1147
  %4 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2.24, i64 0, i64 0), i32 5) #11, !dbg !1148
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1148, !tbaa !687
  %6 = tail call i32 @fputs_unlocked(i8* %4, %struct._IO_FILE* %5) #11, !dbg !1149
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1142, metadata !679), !dbg !1151
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1143, metadata !679), !dbg !1147
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1142, metadata !679), !dbg !1151
  %7 = load i8*, i8** %0, align 8, !dbg !1152, !tbaa !687
  %8 = icmp eq i8* %7, null, !dbg !1156
  br i1 %8, label %35, label %9, !dbg !1156

; <label>:9:                                      ; preds = %3
  br label %10, !dbg !1158

; <label>:10:                                     ; preds = %9, %28
  %11 = phi i8* [ %32, %28 ], [ %7, %9 ], !dbg !1160
  %12 = phi i8* [ %29, %28 ], [ null, %9 ]
  %13 = phi i64 [ %30, %28 ], [ 0, %9 ]
  %14 = icmp eq i64 %13, 0, !dbg !1158
  %15 = mul i64 %13, %2
  %16 = getelementptr inbounds i8, i8* %1, i64 %15
  br i1 %14, label %20, label %17, !dbg !1162

; <label>:17:                                     ; preds = %10
  %18 = tail call i32 @memcmp(i8* %12, i8* %16, i64 %2) #13, !dbg !1163
  %19 = icmp eq i32 %18, 0, !dbg !1163
  br i1 %19, label %24, label %20, !dbg !1165

; <label>:20:                                     ; preds = %10, %17
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1160, !tbaa !687
  %22 = tail call i8* @quote(i8* nonnull %11) #11, !dbg !1160
  %23 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %21, i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3.25, i64 0, i64 0), i8* %22) #11, !dbg !1166
  tail call void @llvm.dbg.value(metadata i8* %16, i64 0, metadata !1143, metadata !679), !dbg !1147
  br label %28, !dbg !1168

; <label>:24:                                     ; preds = %17
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1169, !tbaa !687
  %26 = tail call i8* @quote(i8* nonnull %11) #11, !dbg !1169
  %27 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %25, i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4.26, i64 0, i64 0), i8* %26) #11, !dbg !1171
  br label %28

; <label>:28:                                     ; preds = %20, %24
  %29 = phi i8* [ %16, %20 ], [ %12, %24 ]
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !1143, metadata !679), !dbg !1147
  %30 = add i64 %13, 1, !dbg !1173
  tail call void @llvm.dbg.value(metadata i64 %30, i64 0, metadata !1142, metadata !679), !dbg !1151
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !1143, metadata !679), !dbg !1147
  tail call void @llvm.dbg.value(metadata i64 %30, i64 0, metadata !1142, metadata !679), !dbg !1151
  %31 = getelementptr inbounds i8*, i8** %0, i64 %30, !dbg !1152
  %32 = load i8*, i8** %31, align 8, !dbg !1152, !tbaa !687
  %33 = icmp eq i8* %32, null, !dbg !1156
  br i1 %33, label %34, label %10, !dbg !1156, !llvm.loop !1175

; <label>:34:                                     ; preds = %28
  br label %35, !dbg !1178

; <label>:35:                                     ; preds = %34, %3
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1178, !tbaa !687
  tail call void @llvm.dbg.value(metadata i32 10, i64 0, metadata !1179, metadata !679) #11, !dbg !1226
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %36, i64 0, metadata !1225, metadata !679) #11, !dbg !1228
  %37 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %36, i64 0, i32 5, !dbg !1229
  %38 = load i8*, i8** %37, align 8, !dbg !1229, !tbaa !1230
  %39 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %36, i64 0, i32 6, !dbg !1229
  %40 = load i8*, i8** %39, align 8, !dbg !1229, !tbaa !1234
  %41 = icmp ult i8* %38, %40, !dbg !1229
  br i1 %41, label %44, label %42, !dbg !1229, !prof !1235

; <label>:42:                                     ; preds = %35
  %43 = tail call i32 @__overflow(%struct._IO_FILE* nonnull %36, i32 10) #11, !dbg !1236
  br label %46, !dbg !1236

; <label>:44:                                     ; preds = %35
  %45 = getelementptr inbounds i8, i8* %38, i64 1, !dbg !1238
  store i8* %45, i8** %37, align 8, !dbg !1238, !tbaa !1230
  store i8 10, i8* %38, align 1, !dbg !1238, !tbaa !844
  br label %46, !dbg !1238

; <label>:46:                                     ; preds = %42, %44
  ret void, !dbg !1240
}

declare i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define i64 @__xargmatch_internal(i8*, i8*, i8** nocapture readonly, i8* readonly, i64, void ()* nocapture) local_unnamed_addr #6 !dbg !1241 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1245, metadata !679), !dbg !1252
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1246, metadata !679), !dbg !1253
  tail call void @llvm.dbg.value(metadata i8** %2, i64 0, metadata !1247, metadata !679), !dbg !1254
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !1248, metadata !679), !dbg !1255
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !1249, metadata !679), !dbg !1256
  tail call void @llvm.dbg.value(metadata void ()* %5, i64 0, metadata !1250, metadata !679), !dbg !1257
  %7 = tail call i64 @argmatch(i8* %1, i8** %2, i8* %3, i64 %4) #13, !dbg !1258
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !1251, metadata !679), !dbg !1259
  %8 = icmp sgt i64 %7, -1, !dbg !1260
  br i1 %8, label %15, label %9, !dbg !1262

; <label>:9:                                      ; preds = %6
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1119, metadata !679) #11, !dbg !1263
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1120, metadata !679) #11, !dbg !1265
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !1121, metadata !679) #11, !dbg !1266
  %10 = icmp eq i64 %7, -1, !dbg !1267
  %11 = select i1 %10, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.22, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1.23, i64 0, i64 0), !dbg !1268
  %12 = tail call i8* @dcgettext(i8* null, i8* %11, i32 5) #11, !dbg !1269
  tail call void @llvm.dbg.value(metadata i8* %12, i64 0, metadata !1122, metadata !679) #11, !dbg !1270
  %13 = tail call i8* @quotearg_n_style(i32 0, i32 8, i8* %1) #11, !dbg !1271
  %14 = tail call i8* @quote_n(i32 1, i8* %0) #11, !dbg !1272
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %12, i8* %13, i8* %14) #11, !dbg !1273
  tail call void @argmatch_valid(i8** %2, i8* %3, i64 %4), !dbg !1274
  tail call void %5() #11, !dbg !1275
  br label %15, !dbg !1276

; <label>:15:                                     ; preds = %6, %9
  %16 = phi i64 [ -1, %9 ], [ %7, %6 ]
  ret i64 %16, !dbg !1277
}

; Function Attrs: nounwind readonly sspstrong uwtable
define i8* @argmatch_to_argument(i8* nocapture readonly, i8** nocapture readonly, i8* nocapture readonly, i64) local_unnamed_addr #9 !dbg !1278 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1282, metadata !679), !dbg !1287
  tail call void @llvm.dbg.value(metadata i8** %1, i64 0, metadata !1283, metadata !679), !dbg !1288
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1284, metadata !679), !dbg !1289
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !1285, metadata !679), !dbg !1290
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1286, metadata !679), !dbg !1291
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1286, metadata !679), !dbg !1291
  %5 = load i8*, i8** %1, align 8, !dbg !1292, !tbaa !687
  %6 = icmp eq i8* %5, null, !dbg !1296
  br i1 %6, label %22, label %7, !dbg !1296

; <label>:7:                                      ; preds = %4
  br label %12, !dbg !1298

; <label>:8:                                      ; preds = %12
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !1286, metadata !679), !dbg !1291
  %9 = getelementptr inbounds i8*, i8** %1, i64 %19, !dbg !1292
  %10 = load i8*, i8** %9, align 8, !dbg !1292, !tbaa !687
  %11 = icmp eq i8* %10, null, !dbg !1296
  br i1 %11, label %20, label %12, !dbg !1296, !llvm.loop !1300

; <label>:12:                                     ; preds = %7, %8
  %13 = phi i8* [ %10, %8 ], [ %5, %7 ]
  %14 = phi i64 [ %19, %8 ], [ 0, %7 ]
  %15 = mul i64 %14, %3, !dbg !1298
  %16 = getelementptr inbounds i8, i8* %2, i64 %15, !dbg !1303
  %17 = tail call i32 @memcmp(i8* %0, i8* %16, i64 %3) #13, !dbg !1304
  %18 = icmp eq i32 %17, 0, !dbg !1304
  %19 = add i64 %14, 1, !dbg !1305
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !1286, metadata !679), !dbg !1291
  br i1 %18, label %20, label %8, !dbg !1307

; <label>:20:                                     ; preds = %8, %12
  %21 = phi i8* [ null, %8 ], [ %13, %12 ]
  br label %22, !dbg !1308

; <label>:22:                                     ; preds = %20, %4
  %23 = phi i8* [ null, %4 ], [ %21, %20 ]
  ret i8* %23, !dbg !1308
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_file_name(i8*) local_unnamed_addr #6 !dbg !1309 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1311, metadata !679), !dbg !1312
  store i8* %0, i8** @file_name, align 8, !dbg !1313, !tbaa !687
  ret void, !dbg !1314
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_ignore_EPIPE(i1 zeroext) local_unnamed_addr #6 !dbg !1315 {
  %2 = zext i1 %0 to i8
  tail call void @llvm.dbg.value(metadata i1 %0, i64 0, metadata !1319, metadata !1320), !dbg !1321
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !1322, !tbaa !1323
  ret void, !dbg !1325
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout() #6 !dbg !1326 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1331, !tbaa !687
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #11, !dbg !1332
  %3 = icmp eq i32 %2, 0, !dbg !1333
  br i1 %3, label %21, label %4, !dbg !1334

; <label>:4:                                      ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !1335, !tbaa !1323, !range !1337
  %6 = icmp eq i8 %5, 0, !dbg !1335
  %7 = tail call i32* @__errno_location() #1, !dbg !1338
  br i1 %6, label %11, label %8, !dbg !1340

; <label>:8:                                      ; preds = %4
  %9 = load i32, i32* %7, align 4, !dbg !1341, !tbaa !863
  %10 = icmp eq i32 %9, 32, !dbg !1343
  br i1 %10, label %21, label %11, !dbg !1344

; <label>:11:                                     ; preds = %4, %8
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.47, i64 0, i64 0), i32 5) #11, !dbg !1346
  tail call void @llvm.dbg.value(metadata i8* %12, i64 0, metadata !1328, metadata !679), !dbg !1347
  %13 = load i8*, i8** @file_name, align 8, !dbg !1348, !tbaa !687
  %14 = icmp eq i8* %13, null, !dbg !1348
  %15 = load i32, i32* %7, align 4, !tbaa !863
  br i1 %14, label %18, label %16, !dbg !1349

; <label>:16:                                     ; preds = %11
  %17 = tail call i8* @quotearg_colon(i8* nonnull %13) #11, !dbg !1350
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.48, i64 0, i64 0), i8* %17, i8* %12) #11, !dbg !1352
  br label %19, !dbg !1354

; <label>:18:                                     ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.49, i64 0, i64 0), i8* %12) #11, !dbg !1355
  br label %19

; <label>:19:                                     ; preds = %18, %16
  %20 = load volatile i32, i32* @exit_failure, align 4, !dbg !1356, !tbaa !863
  tail call void @_exit(i32 %20) #14, !dbg !1357
  unreachable, !dbg !1357

; <label>:21:                                     ; preds = %0, %8
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1358, !tbaa !687
  %23 = tail call i32 @close_stream(%struct._IO_FILE* %22) #11, !dbg !1360
  %24 = icmp eq i32 %23, 0, !dbg !1361
  br i1 %24, label %27, label %25, !dbg !1362

; <label>:25:                                     ; preds = %21
  %26 = load volatile i32, i32* @exit_failure, align 4, !dbg !1363, !tbaa !863
  tail call void @_exit(i32 %26) #14, !dbg !1364
  unreachable, !dbg !1364

; <label>:27:                                     ; preds = %21
  ret void, !dbg !1365
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #10

; Function Attrs: nounwind sspstrong uwtable
define void @fdadvise(i32, i64, i64, i32) local_unnamed_addr #6 !dbg !1366 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !1373, metadata !679), !dbg !1379
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1374, metadata !679), !dbg !1380
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !1375, metadata !679), !dbg !1381
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !1376, metadata !679), !dbg !1382
  %5 = tail call i32 @posix_fadvise(i32 %0, i64 %1, i64 %2, i32 %3) #11, !dbg !1383
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !1377, metadata !679), !dbg !1383
  ret void, !dbg !1384
}

; Function Attrs: nounwind
declare i32 @posix_fadvise(i32, i64, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define void @fadvise(%struct._IO_FILE*, i32) local_unnamed_addr #6 !dbg !1385 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !1429, metadata !679), !dbg !1431
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1430, metadata !679), !dbg !1432
  %3 = icmp eq %struct._IO_FILE* %0, null, !dbg !1433
  br i1 %3, label %7, label %4, !dbg !1435

; <label>:4:                                      ; preds = %2
  %5 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #11, !dbg !1436
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !1373, metadata !679) #11, !dbg !1437
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1374, metadata !679) #11, !dbg !1440
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1375, metadata !679) #11, !dbg !1441
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1376, metadata !679) #11, !dbg !1442
  %6 = tail call i32 @posix_fadvise(i32 %5, i64 0, i64 0, i32 %1) #11, !dbg !1443
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !1377, metadata !679) #11, !dbg !1443
  br label %7, !dbg !1444

; <label>:7:                                      ; preds = %2, %4
  ret void, !dbg !1445
}

; Function Attrs: nounwind
declare i32 @fileno(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define %struct._IO_FILE* @fopen_safer(i8* nocapture readonly, i8* nocapture readonly) local_unnamed_addr #6 !dbg !1446 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1491, metadata !679), !dbg !1506
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1492, metadata !679), !dbg !1507
  %3 = tail call %struct._IO_FILE* @fopen(i8* %0, i8* %1), !dbg !1508
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %3, i64 0, metadata !1493, metadata !679), !dbg !1509
  %4 = icmp eq %struct._IO_FILE* %3, null, !dbg !1510
  br i1 %4, label %25, label %5, !dbg !1511

; <label>:5:                                      ; preds = %2
  %6 = tail call i32 @fileno(%struct._IO_FILE* nonnull %3) #11, !dbg !1512
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !1494, metadata !679), !dbg !1513
  %7 = icmp ult i32 %6, 3, !dbg !1514
  br i1 %7, label %8, label %25, !dbg !1514

; <label>:8:                                      ; preds = %5
  %9 = tail call i32 @dup_safer(i32 %6) #11, !dbg !1515
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !1497, metadata !679), !dbg !1516
  %10 = icmp slt i32 %9, 0, !dbg !1517
  br i1 %10, label %11, label %15, !dbg !1518

; <label>:11:                                     ; preds = %8
  %12 = tail call i32* @__errno_location() #1, !dbg !1519
  %13 = load i32, i32* %12, align 4, !dbg !1519, !tbaa !863
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !1500, metadata !679), !dbg !1520
  %14 = tail call i32 @rpl_fclose(%struct._IO_FILE* nonnull %3) #11, !dbg !1521
  store i32 %13, i32* %12, align 4, !dbg !1522, !tbaa !863
  br label %25

; <label>:15:                                     ; preds = %8
  %16 = tail call i32 @rpl_fclose(%struct._IO_FILE* nonnull %3) #11, !dbg !1523
  %17 = icmp eq i32 %16, 0, !dbg !1524
  br i1 %17, label %18, label %21, !dbg !1525

; <label>:18:                                     ; preds = %15
  %19 = tail call %struct._IO_FILE* @fdopen(i32 %9, i8* %1) #11, !dbg !1526
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %19, i64 0, metadata !1493, metadata !679), !dbg !1509
  %20 = icmp eq %struct._IO_FILE* %19, null, !dbg !1528
  br i1 %20, label %21, label %25, !dbg !1529

; <label>:21:                                     ; preds = %18, %15
  %22 = tail call i32* @__errno_location() #1, !dbg !1531
  %23 = load i32, i32* %22, align 4, !dbg !1531, !tbaa !863
  tail call void @llvm.dbg.value(metadata i32 %23, i64 0, metadata !1503, metadata !679), !dbg !1532
  %24 = tail call i32 @close(i32 %9) #11, !dbg !1533
  store i32 %23, i32* %22, align 4, !dbg !1534, !tbaa !863
  br label %25

; <label>:25:                                     ; preds = %5, %18, %2, %21, %11
  %26 = phi %struct._IO_FILE* [ null, %11 ], [ null, %21 ], [ null, %2 ], [ %19, %18 ], [ %3, %5 ]
  ret %struct._IO_FILE* %26, !dbg !1535
}

; Function Attrs: nounwind
declare noalias %struct._IO_FILE* @fopen(i8* nocapture readonly, i8* nocapture readonly) local_unnamed_addr #2

; Function Attrs: nounwind
declare noalias %struct._IO_FILE* @fdopen(i32, i8* nocapture readonly) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define void @set_program_name(i8*) local_unnamed_addr #6 !dbg !1536 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1538, metadata !679), !dbg !1541
  %2 = icmp eq i8* %0, null, !dbg !1542
  br i1 %2, label %3, label %6, !dbg !1544

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1545, !tbaa !687
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.60, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #16, !dbg !1547
  tail call void @abort() #14, !dbg !1548
  unreachable, !dbg !1548

; <label>:6:                                      ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #13, !dbg !1549
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !1539, metadata !679), !dbg !1550
  %8 = icmp ne i8* %7, null, !dbg !1551
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !1552
  %10 = select i1 %8, i8* %9, i8* %0, !dbg !1554
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !1540, metadata !679), !dbg !1555
  %11 = ptrtoint i8* %10 to i64, !dbg !1556
  %12 = ptrtoint i8* %0 to i64, !dbg !1556
  %13 = sub i64 %11, %12, !dbg !1556
  %14 = icmp sgt i64 %13, 6, !dbg !1558
  br i1 %14, label %15, label %24, !dbg !1559

; <label>:15:                                     ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !1560
  %17 = tail call i32 @strncmp(i8* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.61, i64 0, i64 0), i64 7) #13, !dbg !1560
  %18 = icmp eq i32 %17, 0, !dbg !1562
  br i1 %18, label %19, label %24, !dbg !1563

; <label>:19:                                     ; preds = %15
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !1538, metadata !679), !dbg !1541
  %20 = tail call i32 @strncmp(i8* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.62, i64 0, i64 0), i64 3) #13, !dbg !1564
  %21 = icmp eq i32 %20, 0, !dbg !1567
  br i1 %21, label %22, label %24, !dbg !1568

; <label>:22:                                     ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !1569
  tail call void @llvm.dbg.value(metadata i8* %23, i64 0, metadata !1538, metadata !679), !dbg !1541
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !1571, !tbaa !687
  br label %24, !dbg !1572

; <label>:24:                                     ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i8* %25, i64 0, metadata !1538, metadata !679), !dbg !1541
  store i8* %25, i8** @program_name, align 8, !dbg !1573, !tbaa !687
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !1574, !tbaa !687
  ret void, !dbg !1575
}

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #11

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #5

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define %struct.quoting_options* @clone_quoting_options(%struct.quoting_options*) local_unnamed_addr #6 !dbg !1576 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1581, metadata !679), !dbg !1584
  %2 = tail call i32* @__errno_location() #1, !dbg !1585
  %3 = load i32, i32* %2, align 4, !dbg !1585, !tbaa !863
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !1582, metadata !679), !dbg !1586
  %4 = icmp ne %struct.quoting_options* %0, null, !dbg !1587
  %5 = bitcast %struct.quoting_options* %0 to i8*, !dbg !1588
  %6 = select i1 %4, i8* %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), !dbg !1588
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #11, !dbg !1590
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !1590
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %8, i64 0, metadata !1583, metadata !679), !dbg !1591
  store i32 %3, i32* %2, align 4, !dbg !1592, !tbaa !863
  ret %struct.quoting_options* %8, !dbg !1593
}

; Function Attrs: nounwind readonly sspstrong uwtable
define i32 @get_quoting_style(%struct.quoting_options* readonly) local_unnamed_addr #9 !dbg !1594 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1600, metadata !679), !dbg !1601
  %2 = icmp ne %struct.quoting_options* %0, null, !dbg !1602
  %3 = select i1 %2, %struct.quoting_options* %0, %struct.quoting_options* @default_quoting_options, !dbg !1602
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1603
  %5 = load i32, i32* %4, align 8, !dbg !1603, !tbaa !1605
  ret i32 %5, !dbg !1607
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_quoting_style(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !1608 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1612, metadata !679), !dbg !1614
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1613, metadata !679), !dbg !1615
  %3 = icmp ne %struct.quoting_options* %0, null, !dbg !1616
  %4 = select i1 %3, %struct.quoting_options* %0, %struct.quoting_options* @default_quoting_options, !dbg !1616
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !1617
  store i32 %1, i32* %5, align 8, !dbg !1619, !tbaa !1605
  ret void, !dbg !1620
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_char_quoting(%struct.quoting_options*, i8 signext, i32) local_unnamed_addr #6 !dbg !1621 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1625, metadata !679), !dbg !1633
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1626, metadata !679), !dbg !1634
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !1627, metadata !679), !dbg !1635
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1628, metadata !679), !dbg !1636
  %4 = icmp ne %struct.quoting_options* %0, null, !dbg !1637
  %5 = select i1 %4, %struct.quoting_options* %0, %struct.quoting_options* @default_quoting_options, !dbg !1637
  %6 = lshr i8 %1, 5, !dbg !1638
  %7 = zext i8 %6 to i64, !dbg !1638
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !1640
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !1629, metadata !679), !dbg !1641
  %9 = and i8 %1, 31, !dbg !1642
  %10 = zext i8 %9 to i32, !dbg !1643
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !1631, metadata !679), !dbg !1644
  %11 = load i32, i32* %8, align 4, !dbg !1645, !tbaa !863
  %12 = lshr i32 %11, %10, !dbg !1646
  %13 = and i32 %12, 1, !dbg !1647
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !1632, metadata !679), !dbg !1648
  %14 = and i32 %2, 1, !dbg !1649
  %15 = xor i32 %13, %14, !dbg !1650
  %16 = shl i32 %15, %10, !dbg !1651
  %17 = xor i32 %16, %11, !dbg !1652
  store i32 %17, i32* %8, align 4, !dbg !1652, !tbaa !863
  ret i32 %13, !dbg !1653
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_quoting_flags(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !1654 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1658, metadata !679), !dbg !1661
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1659, metadata !679), !dbg !1662
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1663
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1658, metadata !679), !dbg !1661
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1665
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1658, metadata !679), !dbg !1661
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !1666
  %6 = load i32, i32* %5, align 4, !dbg !1666, !tbaa !1667
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !1660, metadata !679), !dbg !1668
  store i32 %1, i32* %5, align 4, !dbg !1669, !tbaa !1667
  ret i32 %6, !dbg !1670
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_custom_quoting(%struct.quoting_options*, i8*, i8*) local_unnamed_addr #6 !dbg !1671 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1675, metadata !679), !dbg !1678
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1676, metadata !679), !dbg !1679
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1677, metadata !679), !dbg !1680
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1681
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1675, metadata !679), !dbg !1678
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1683
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1675, metadata !679), !dbg !1678
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1684
  store i32 10, i32* %6, align 8, !dbg !1685, !tbaa !1605
  %7 = icmp ne i8* %1, null, !dbg !1686
  %8 = icmp ne i8* %2, null, !dbg !1688
  %9 = and i1 %7, %8, !dbg !1690
  br i1 %9, label %11, label %10, !dbg !1690

; <label>:10:                                     ; preds = %3
  tail call void @abort() #14, !dbg !1691
  unreachable, !dbg !1691

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1692
  store i8* %1, i8** %12, align 8, !dbg !1693, !tbaa !1694
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1695
  store i8* %2, i8** %13, align 8, !dbg !1696, !tbaa !1697
  ret void, !dbg !1698
}

; Function Attrs: nounwind sspstrong uwtable
define i64 @quotearg_buffer(i8*, i64, i8*, i64, %struct.quoting_options* readonly) local_unnamed_addr #6 !dbg !1699 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1703, metadata !679), !dbg !1711
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1704, metadata !679), !dbg !1712
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1705, metadata !679), !dbg !1713
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !1706, metadata !679), !dbg !1714
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1707, metadata !679), !dbg !1715
  %6 = icmp ne %struct.quoting_options* %4, null, !dbg !1716
  %7 = select i1 %6, %struct.quoting_options* %4, %struct.quoting_options* @default_quoting_options, !dbg !1716
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %7, i64 0, metadata !1708, metadata !679), !dbg !1717
  %8 = tail call i32* @__errno_location() #1, !dbg !1718
  %9 = load i32, i32* %8, align 4, !dbg !1718, !tbaa !863
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !1709, metadata !679), !dbg !1719
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !1720
  %11 = load i32, i32* %10, align 8, !dbg !1720, !tbaa !1605
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !1721
  %13 = load i32, i32* %12, align 4, !dbg !1721, !tbaa !1667
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !1722
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !1723
  %16 = load i8*, i8** %15, align 8, !dbg !1723, !tbaa !1694
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !1724
  %18 = load i8*, i8** %17, align 8, !dbg !1724, !tbaa !1697
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* %14, i8* %16, i8* %18), !dbg !1725
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !1710, metadata !679), !dbg !1726
  store i32 %9, i32* %8, align 4, !dbg !1727, !tbaa !863
  ret i64 %19, !dbg !1728
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8*, i64, i8*, i64, i32, i32, i32* readonly, i8* readonly, i8* readonly) unnamed_addr #6 !dbg !1729 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1735, metadata !679), !dbg !1796
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1736, metadata !679), !dbg !1797
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1737, metadata !679), !dbg !1798
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !1738, metadata !679), !dbg !1799
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !1739, metadata !679), !dbg !1800
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !1740, metadata !679), !dbg !1801
  tail call void @llvm.dbg.value(metadata i32* %6, i64 0, metadata !1741, metadata !679), !dbg !1802
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !1742, metadata !679), !dbg !1803
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !1743, metadata !679), !dbg !1804
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1745, metadata !679), !dbg !1805
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1746, metadata !679), !dbg !1806
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1747, metadata !679), !dbg !1807
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1748, metadata !679), !dbg !1808
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1749, metadata !679), !dbg !1809
  %13 = tail call i64 @__ctype_get_mb_cur_max() #11, !dbg !1810
  %14 = icmp eq i64 %13, 1, !dbg !1811
  %15 = lshr i32 %5, 1, !dbg !1812
  %16 = trunc i32 %15 to i8, !dbg !1812
  %17 = and i8 %16, 1, !dbg !1812
  tail call void @llvm.dbg.value(metadata i8 %17, i64 0, metadata !1751, metadata !679), !dbg !1812
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1752, metadata !679), !dbg !1813
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1753, metadata !679), !dbg !1814
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1754, metadata !679), !dbg !1815
  %18 = bitcast i64* %10 to i8*
  %19 = bitcast i32* %12 to i8*
  %20 = icmp eq i32* %6, null
  %21 = icmp ne i32* %6, null
  %22 = and i32 %5, 1
  %23 = icmp eq i32 %22, 0
  %24 = and i32 %5, 4
  %25 = icmp eq i32 %24, 0
  %26 = getelementptr inbounds i8, i8* %2, i64 1
  br label %27, !dbg !1816

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
  call void @llvm.dbg.value(metadata i64 %40, i64 0, metadata !1736, metadata !679), !dbg !1797
  call void @llvm.dbg.value(metadata i8 %39, i64 0, metadata !1754, metadata !679), !dbg !1815
  call void @llvm.dbg.value(metadata i8 %38, i64 0, metadata !1753, metadata !679), !dbg !1814
  call void @llvm.dbg.value(metadata i8 %37, i64 0, metadata !1752, metadata !679), !dbg !1813
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !1751, metadata !679), !dbg !1812
  call void @llvm.dbg.value(metadata i64 %35, i64 0, metadata !1738, metadata !679), !dbg !1799
  call void @llvm.dbg.value(metadata i8 %34, i64 0, metadata !1749, metadata !679), !dbg !1809
  call void @llvm.dbg.value(metadata i64 %33, i64 0, metadata !1748, metadata !679), !dbg !1808
  call void @llvm.dbg.value(metadata i8* %32, i64 0, metadata !1747, metadata !679), !dbg !1807
  call void @llvm.dbg.value(metadata i64 %31, i64 0, metadata !1746, metadata !679), !dbg !1806
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1745, metadata !679), !dbg !1805
  call void @llvm.dbg.value(metadata i8* %30, i64 0, metadata !1743, metadata !679), !dbg !1804
  call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !1742, metadata !679), !dbg !1803
  call void @llvm.dbg.value(metadata i32 %28, i64 0, metadata !1739, metadata !679), !dbg !1800
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
  ], !dbg !1817

; <label>:41:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !1739, metadata !679), !dbg !1800
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1751, metadata !679), !dbg !1812
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !1751, metadata !679), !dbg !1812
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !1739, metadata !679), !dbg !1800
  br label %95, !dbg !1818

; <label>:42:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !1751, metadata !679), !dbg !1812
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !1739, metadata !679), !dbg !1800
  %43 = and i8 %36, 1, !dbg !1820
  %44 = icmp eq i8 %43, 0, !dbg !1820
  br i1 %44, label %45, label %95, !dbg !1818

; <label>:45:                                     ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !1822
  br i1 %46, label %95, label %47, !dbg !1826

; <label>:47:                                     ; preds = %45
  store i8 34, i8* %0, align 1, !dbg !1828, !tbaa !844
  br label %95, !dbg !1828

; <label>:48:                                     ; preds = %27, %27
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.73, i64 0, i64 0), i32 %28), !dbg !1830
  call void @llvm.dbg.value(metadata i8* %49, i64 0, metadata !1742, metadata !679), !dbg !1803
  %50 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.74, i64 0, i64 0), i32 %28), !dbg !1834
  call void @llvm.dbg.value(metadata i8* %50, i64 0, metadata !1743, metadata !679), !dbg !1804
  br label %51, !dbg !1835

; <label>:51:                                     ; preds = %27, %48
  %52 = phi i8* [ %49, %48 ], [ %29, %27 ]
  %53 = phi i8* [ %50, %48 ], [ %30, %27 ]
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !1743, metadata !679), !dbg !1804
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !1742, metadata !679), !dbg !1803
  %54 = and i8 %36, 1, !dbg !1836
  %55 = icmp eq i8 %54, 0, !dbg !1836
  br i1 %55, label %56, label %73, !dbg !1838

; <label>:56:                                     ; preds = %51
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !1747, metadata !679), !dbg !1807
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1745, metadata !679), !dbg !1805
  %57 = load i8, i8* %52, align 1, !dbg !1839, !tbaa !844
  %58 = icmp eq i8 %57, 0, !dbg !1843
  br i1 %58, label %73, label %59, !dbg !1843

; <label>:59:                                     ; preds = %56
  br label %60, !dbg !1845

; <label>:60:                                     ; preds = %59, %67
  %61 = phi i8 [ %70, %67 ], [ %57, %59 ]
  %62 = phi i8* [ %69, %67 ], [ %52, %59 ]
  %63 = phi i64 [ %68, %67 ], [ 0, %59 ]
  %64 = icmp ult i64 %63, %40, !dbg !1845
  br i1 %64, label %65, label %67, !dbg !1849

; <label>:65:                                     ; preds = %60
  %66 = getelementptr inbounds i8, i8* %0, i64 %63, !dbg !1851
  store i8 %61, i8* %66, align 1, !dbg !1851, !tbaa !844
  br label %67, !dbg !1851

; <label>:67:                                     ; preds = %65, %60
  %68 = add i64 %63, 1, !dbg !1853
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !1745, metadata !679), !dbg !1805
  %69 = getelementptr inbounds i8, i8* %62, i64 1, !dbg !1855
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !1747, metadata !679), !dbg !1807
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !1747, metadata !679), !dbg !1807
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !1745, metadata !679), !dbg !1805
  %70 = load i8, i8* %69, align 1, !dbg !1839, !tbaa !844
  %71 = icmp eq i8 %70, 0, !dbg !1843
  br i1 %71, label %72, label %60, !dbg !1843, !llvm.loop !1857

; <label>:72:                                     ; preds = %67
  br label %73, !dbg !1805

; <label>:73:                                     ; preds = %72, %56, %51
  %74 = phi i64 [ 0, %51 ], [ 0, %56 ], [ %68, %72 ]
  call void @llvm.dbg.value(metadata i64 %74, i64 0, metadata !1745, metadata !679), !dbg !1805
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1749, metadata !679), !dbg !1809
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !1747, metadata !679), !dbg !1807
  %75 = call i64 @strlen(i8* %53) #13, !dbg !1860
  call void @llvm.dbg.value(metadata i64 %75, i64 0, metadata !1748, metadata !679), !dbg !1808
  br label %95, !dbg !1861

; <label>:76:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1749, metadata !679), !dbg !1809
  br label %77, !dbg !1862

; <label>:77:                                     ; preds = %27, %76
  %78 = phi i8 [ %34, %27 ], [ 1, %76 ]
  call void @llvm.dbg.value(metadata i8 %78, i64 0, metadata !1749, metadata !679), !dbg !1809
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1751, metadata !679), !dbg !1812
  br label %79, !dbg !1863

; <label>:79:                                     ; preds = %27, %77
  %80 = phi i8 [ %34, %27 ], [ %78, %77 ]
  %81 = phi i8 [ %36, %27 ], [ 1, %77 ]
  call void @llvm.dbg.value(metadata i8 %81, i64 0, metadata !1751, metadata !679), !dbg !1812
  call void @llvm.dbg.value(metadata i8 %80, i64 0, metadata !1749, metadata !679), !dbg !1809
  %82 = and i8 %81, 1, !dbg !1864
  %83 = icmp eq i8 %82, 0, !dbg !1864
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1749, metadata !679), !dbg !1809
  %84 = select i1 %83, i8 1, i8 %80, !dbg !1866
  br label %85, !dbg !1866

; <label>:85:                                     ; preds = %79, %27
  %86 = phi i8 [ %34, %27 ], [ %84, %79 ]
  %87 = phi i8 [ %36, %27 ], [ %81, %79 ]
  call void @llvm.dbg.value(metadata i8 %87, i64 0, metadata !1751, metadata !679), !dbg !1812
  call void @llvm.dbg.value(metadata i8 %86, i64 0, metadata !1749, metadata !679), !dbg !1809
  call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !1739, metadata !679), !dbg !1800
  %88 = and i8 %87, 1, !dbg !1867
  %89 = icmp eq i8 %88, 0, !dbg !1867
  br i1 %89, label %90, label %95, !dbg !1869

; <label>:90:                                     ; preds = %85
  %91 = icmp eq i64 %40, 0, !dbg !1870
  br i1 %91, label %95, label %92, !dbg !1874

; <label>:92:                                     ; preds = %90
  store i8 39, i8* %0, align 1, !dbg !1876, !tbaa !844
  br label %95, !dbg !1876

; <label>:93:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1751, metadata !679), !dbg !1812
  br label %95, !dbg !1878

; <label>:94:                                     ; preds = %27
  call void @abort() #14, !dbg !1879
  unreachable, !dbg !1879

; <label>:95:                                     ; preds = %41, %85, %90, %92, %27, %42, %45, %47, %93, %73
  %96 = phi i32 [ 0, %93 ], [ %28, %73 ], [ 5, %47 ], [ 5, %45 ], [ 5, %42 ], [ 7, %27 ], [ 2, %92 ], [ 2, %90 ], [ 2, %85 ], [ 5, %41 ]
  %97 = phi i8* [ %29, %93 ], [ %52, %73 ], [ %29, %47 ], [ %29, %45 ], [ %29, %42 ], [ %29, %27 ], [ %29, %92 ], [ %29, %90 ], [ %29, %85 ], [ %29, %41 ]
  %98 = phi i8* [ %30, %93 ], [ %53, %73 ], [ %30, %47 ], [ %30, %45 ], [ %30, %42 ], [ %30, %27 ], [ %30, %92 ], [ %30, %90 ], [ %30, %85 ], [ %30, %41 ]
  %99 = phi i64 [ 0, %93 ], [ %74, %73 ], [ 1, %47 ], [ 1, %45 ], [ 0, %42 ], [ 0, %27 ], [ 1, %92 ], [ 1, %90 ], [ 0, %85 ], [ 0, %41 ]
  %100 = phi i8* [ %32, %93 ], [ %53, %73 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.75, i64 0, i64 0), %47 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.75, i64 0, i64 0), %45 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.75, i64 0, i64 0), %42 ], [ %32, %27 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.74, i64 0, i64 0), %92 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.74, i64 0, i64 0), %90 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.74, i64 0, i64 0), %85 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.75, i64 0, i64 0), %41 ]
  %101 = phi i64 [ %33, %93 ], [ %75, %73 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ %33, %27 ], [ 1, %92 ], [ 1, %90 ], [ 1, %85 ], [ 1, %41 ]
  %102 = phi i8 [ %34, %93 ], [ 1, %73 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ 1, %27 ], [ %86, %92 ], [ %86, %90 ], [ %86, %85 ], [ 1, %41 ]
  %103 = phi i8 [ 0, %93 ], [ %36, %73 ], [ %36, %47 ], [ %36, %45 ], [ %36, %42 ], [ 0, %27 ], [ %87, %92 ], [ %87, %90 ], [ %87, %85 ], [ 1, %41 ]
  call void @llvm.dbg.value(metadata i8 %103, i64 0, metadata !1751, metadata !679), !dbg !1812
  call void @llvm.dbg.value(metadata i8 %102, i64 0, metadata !1749, metadata !679), !dbg !1809
  call void @llvm.dbg.value(metadata i64 %101, i64 0, metadata !1748, metadata !679), !dbg !1808
  call void @llvm.dbg.value(metadata i8* %100, i64 0, metadata !1747, metadata !679), !dbg !1807
  call void @llvm.dbg.value(metadata i64 %99, i64 0, metadata !1745, metadata !679), !dbg !1805
  call void @llvm.dbg.value(metadata i8* %98, i64 0, metadata !1743, metadata !679), !dbg !1804
  call void @llvm.dbg.value(metadata i8* %97, i64 0, metadata !1742, metadata !679), !dbg !1803
  call void @llvm.dbg.value(metadata i32 %96, i64 0, metadata !1739, metadata !679), !dbg !1800
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1744, metadata !679), !dbg !1880
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
  br label %123, !dbg !1881

; <label>:123:                                    ; preds = %587, %95
  %124 = phi i64 [ 0, %95 ], [ %596, %587 ]
  %125 = phi i64 [ %99, %95 ], [ %589, %587 ]
  %126 = phi i64 [ %31, %95 ], [ %590, %587 ]
  %127 = phi i64 [ %35, %95 ], [ %591, %587 ]
  %128 = phi i8 [ %37, %95 ], [ %592, %587 ]
  %129 = phi i8 [ %38, %95 ], [ %593, %587 ]
  %130 = phi i8 [ %39, %95 ], [ %594, %587 ]
  %131 = phi i64 [ %40, %95 ], [ %595, %587 ]
  call void @llvm.dbg.value(metadata i64 %131, i64 0, metadata !1736, metadata !679), !dbg !1797
  call void @llvm.dbg.value(metadata i8 %130, i64 0, metadata !1754, metadata !679), !dbg !1815
  call void @llvm.dbg.value(metadata i8 %129, i64 0, metadata !1753, metadata !679), !dbg !1814
  call void @llvm.dbg.value(metadata i8 %128, i64 0, metadata !1752, metadata !679), !dbg !1813
  call void @llvm.dbg.value(metadata i64 %127, i64 0, metadata !1738, metadata !679), !dbg !1799
  call void @llvm.dbg.value(metadata i64 %126, i64 0, metadata !1746, metadata !679), !dbg !1806
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !1745, metadata !679), !dbg !1805
  call void @llvm.dbg.value(metadata i64 %124, i64 0, metadata !1744, metadata !679), !dbg !1880
  %132 = icmp eq i64 %127, -1, !dbg !1882
  br i1 %132, label %135, label %133, !dbg !1884

; <label>:133:                                    ; preds = %123
  %134 = icmp eq i64 %124, %127, !dbg !1885
  br i1 %134, label %597, label %139, !dbg !1887

; <label>:135:                                    ; preds = %123
  %136 = getelementptr inbounds i8, i8* %2, i64 %124, !dbg !1889
  %137 = load i8, i8* %136, align 1, !dbg !1889, !tbaa !844
  %138 = icmp eq i8 %137, 0, !dbg !1891
  br i1 %138, label %597, label %139, !dbg !1887

; <label>:139:                                    ; preds = %133, %135
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1760, metadata !679), !dbg !1892
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1761, metadata !679), !dbg !1893
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1762, metadata !679), !dbg !1894
  br i1 %109, label %140, label %155, !dbg !1895

; <label>:140:                                    ; preds = %139
  %141 = add i64 %124, %101, !dbg !1897
  %142 = and i1 %110, %132, !dbg !1899
  br i1 %142, label %143, label %145, !dbg !1899

; <label>:143:                                    ; preds = %140
  %144 = call i64 @strlen(i8* %2) #13, !dbg !1900
  call void @llvm.dbg.value(metadata i64 %144, i64 0, metadata !1738, metadata !679), !dbg !1799
  br label %145, !dbg !1901

; <label>:145:                                    ; preds = %140, %143
  %146 = phi i64 [ %144, %143 ], [ %127, %140 ]
  call void @llvm.dbg.value(metadata i64 %146, i64 0, metadata !1738, metadata !679), !dbg !1799
  %147 = icmp ugt i64 %141, %146, !dbg !1903
  br i1 %147, label %155, label %148, !dbg !1905

; <label>:148:                                    ; preds = %145
  %149 = getelementptr inbounds i8, i8* %2, i64 %124, !dbg !1906
  %150 = call i32 @memcmp(i8* %149, i8* %100, i64 %101) #13, !dbg !1907
  %151 = icmp ne i32 %150, 0, !dbg !1908
  %152 = or i1 %151, %112, !dbg !1908
  %153 = xor i1 %151, true, !dbg !1908
  %154 = zext i1 %153 to i8, !dbg !1908
  br i1 %152, label %155, label %644, !dbg !1908

; <label>:155:                                    ; preds = %148, %145, %139
  %156 = phi i64 [ %146, %148 ], [ %146, %145 ], [ %127, %139 ]
  %157 = phi i8 [ %154, %148 ], [ 0, %145 ], [ 0, %139 ]
  call void @llvm.dbg.value(metadata i8 %157, i64 0, metadata !1760, metadata !679), !dbg !1892
  call void @llvm.dbg.value(metadata i64 %156, i64 0, metadata !1738, metadata !679), !dbg !1799
  %158 = getelementptr inbounds i8, i8* %2, i64 %124, !dbg !1910
  %159 = load i8, i8* %158, align 1, !dbg !1910, !tbaa !844
  call void @llvm.dbg.value(metadata i8 %159, i64 0, metadata !1755, metadata !679), !dbg !1911
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
  ], !dbg !1912

; <label>:160:                                    ; preds = %155
  br i1 %105, label %161, label %209, !dbg !1913

; <label>:161:                                    ; preds = %160
  br i1 %112, label %162, label %644, !dbg !1914

; <label>:162:                                    ; preds = %161
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1761, metadata !679), !dbg !1893
  %163 = and i8 %128, 1, !dbg !1919
  %164 = icmp eq i8 %163, 0, !dbg !1919
  %165 = and i1 %114, %164, !dbg !1922
  br i1 %165, label %166, label %182, !dbg !1922

; <label>:166:                                    ; preds = %162
  %167 = icmp ult i64 %125, %131, !dbg !1924
  br i1 %167, label %168, label %170, !dbg !1929

; <label>:168:                                    ; preds = %166
  %169 = getelementptr inbounds i8, i8* %0, i64 %125, !dbg !1931
  store i8 39, i8* %169, align 1, !dbg !1931, !tbaa !844
  br label %170, !dbg !1931

; <label>:170:                                    ; preds = %168, %166
  %171 = add i64 %125, 1, !dbg !1933
  call void @llvm.dbg.value(metadata i64 %171, i64 0, metadata !1745, metadata !679), !dbg !1805
  %172 = icmp ult i64 %171, %131, !dbg !1935
  br i1 %172, label %173, label %175, !dbg !1939

; <label>:173:                                    ; preds = %170
  %174 = getelementptr inbounds i8, i8* %0, i64 %171, !dbg !1941
  store i8 36, i8* %174, align 1, !dbg !1941, !tbaa !844
  br label %175, !dbg !1941

; <label>:175:                                    ; preds = %173, %170
  %176 = add i64 %125, 2, !dbg !1943
  call void @llvm.dbg.value(metadata i64 %176, i64 0, metadata !1745, metadata !679), !dbg !1805
  %177 = icmp ult i64 %176, %131, !dbg !1945
  br i1 %177, label %178, label %180, !dbg !1949

; <label>:178:                                    ; preds = %175
  %179 = getelementptr inbounds i8, i8* %0, i64 %176, !dbg !1951
  store i8 39, i8* %179, align 1, !dbg !1951, !tbaa !844
  br label %180, !dbg !1951

; <label>:180:                                    ; preds = %178, %175
  %181 = add i64 %125, 3, !dbg !1953
  call void @llvm.dbg.value(metadata i64 %181, i64 0, metadata !1745, metadata !679), !dbg !1805
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1752, metadata !679), !dbg !1813
  br label %182, !dbg !1955

; <label>:182:                                    ; preds = %162, %180
  %183 = phi i64 [ %181, %180 ], [ %125, %162 ]
  %184 = phi i8 [ 1, %180 ], [ %128, %162 ]
  call void @llvm.dbg.value(metadata i8 %184, i64 0, metadata !1752, metadata !679), !dbg !1813
  call void @llvm.dbg.value(metadata i64 %183, i64 0, metadata !1745, metadata !679), !dbg !1805
  %185 = icmp ult i64 %183, %131, !dbg !1957
  br i1 %185, label %186, label %188, !dbg !1961

; <label>:186:                                    ; preds = %182
  %187 = getelementptr inbounds i8, i8* %0, i64 %183, !dbg !1963
  store i8 92, i8* %187, align 1, !dbg !1963, !tbaa !844
  br label %188, !dbg !1963

; <label>:188:                                    ; preds = %186, %182
  %189 = add i64 %183, 1, !dbg !1965
  call void @llvm.dbg.value(metadata i64 %189, i64 0, metadata !1745, metadata !679), !dbg !1805
  br i1 %106, label %190, label %476, !dbg !1967

; <label>:190:                                    ; preds = %188
  %191 = add i64 %124, 1, !dbg !1969
  %192 = icmp ult i64 %191, %156, !dbg !1971
  br i1 %192, label %193, label %476, !dbg !1972

; <label>:193:                                    ; preds = %190
  %194 = getelementptr inbounds i8, i8* %2, i64 %191, !dbg !1973
  %195 = load i8, i8* %194, align 1, !dbg !1973, !tbaa !844
  %196 = add i8 %195, -48, !dbg !1975
  %197 = icmp ult i8 %196, 10, !dbg !1975
  br i1 %197, label %198, label %476, !dbg !1975

; <label>:198:                                    ; preds = %193
  %199 = icmp ult i64 %189, %131, !dbg !1976
  br i1 %199, label %200, label %202, !dbg !1981

; <label>:200:                                    ; preds = %198
  %201 = getelementptr inbounds i8, i8* %0, i64 %189, !dbg !1983
  store i8 48, i8* %201, align 1, !dbg !1983, !tbaa !844
  br label %202, !dbg !1983

; <label>:202:                                    ; preds = %200, %198
  %203 = add i64 %183, 2, !dbg !1985
  call void @llvm.dbg.value(metadata i64 %203, i64 0, metadata !1745, metadata !679), !dbg !1805
  %204 = icmp ult i64 %203, %131, !dbg !1987
  br i1 %204, label %205, label %207, !dbg !1991

; <label>:205:                                    ; preds = %202
  %206 = getelementptr inbounds i8, i8* %0, i64 %203, !dbg !1993
  store i8 48, i8* %206, align 1, !dbg !1993, !tbaa !844
  br label %207, !dbg !1993

; <label>:207:                                    ; preds = %205, %202
  %208 = add i64 %183, 3, !dbg !1995
  call void @llvm.dbg.value(metadata i64 %208, i64 0, metadata !1745, metadata !679), !dbg !1805
  br label %476, !dbg !1997

; <label>:209:                                    ; preds = %160
  br i1 %23, label %476, label %587, !dbg !1998

; <label>:210:                                    ; preds = %155
  switch i32 %96, label %476 [
    i32 2, label %211
    i32 5, label %212
  ], !dbg !1999

; <label>:211:                                    ; preds = %210
  br i1 %112, label %476, label %644, !dbg !2000

; <label>:212:                                    ; preds = %210
  br i1 %25, label %476, label %213, !dbg !2002

; <label>:213:                                    ; preds = %212
  %214 = add i64 %124, 2, !dbg !2004
  %215 = icmp ult i64 %214, %156, !dbg !2006
  br i1 %215, label %216, label %476, !dbg !2007

; <label>:216:                                    ; preds = %213
  %217 = add i64 %124, 1, !dbg !2008
  %218 = getelementptr inbounds i8, i8* %2, i64 %217, !dbg !2010
  %219 = load i8, i8* %218, align 1, !dbg !2010, !tbaa !844
  %220 = icmp eq i8 %219, 63, !dbg !2011
  br i1 %220, label %221, label %476, !dbg !2012

; <label>:221:                                    ; preds = %216
  %222 = getelementptr inbounds i8, i8* %2, i64 %214, !dbg !2014
  %223 = load i8, i8* %222, align 1, !dbg !2014, !tbaa !844
  %224 = sext i8 %223 to i32, !dbg !2014
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
  ], !dbg !2015

; <label>:225:                                    ; preds = %221, %221, %221, %221, %221, %221, %221, %221, %221
  br i1 %112, label %226, label %644, !dbg !2016

; <label>:226:                                    ; preds = %225
  call void @llvm.dbg.value(metadata i8 %223, i64 0, metadata !1755, metadata !679), !dbg !1911
  call void @llvm.dbg.value(metadata i64 %214, i64 0, metadata !1744, metadata !679), !dbg !1880
  %227 = icmp ult i64 %125, %131, !dbg !2018
  br i1 %227, label %228, label %230, !dbg !2022

; <label>:228:                                    ; preds = %226
  %229 = getelementptr inbounds i8, i8* %0, i64 %125, !dbg !2024
  store i8 63, i8* %229, align 1, !dbg !2024, !tbaa !844
  br label %230, !dbg !2024

; <label>:230:                                    ; preds = %228, %226
  %231 = add i64 %125, 1, !dbg !2026
  call void @llvm.dbg.value(metadata i64 %231, i64 0, metadata !1745, metadata !679), !dbg !1805
  %232 = icmp ult i64 %231, %131, !dbg !2028
  br i1 %232, label %233, label %235, !dbg !2032

; <label>:233:                                    ; preds = %230
  %234 = getelementptr inbounds i8, i8* %0, i64 %231, !dbg !2034
  store i8 34, i8* %234, align 1, !dbg !2034, !tbaa !844
  br label %235, !dbg !2034

; <label>:235:                                    ; preds = %233, %230
  %236 = add i64 %125, 2, !dbg !2036
  call void @llvm.dbg.value(metadata i64 %236, i64 0, metadata !1745, metadata !679), !dbg !1805
  %237 = icmp ult i64 %236, %131, !dbg !2038
  br i1 %237, label %238, label %240, !dbg !2042

; <label>:238:                                    ; preds = %235
  %239 = getelementptr inbounds i8, i8* %0, i64 %236, !dbg !2044
  store i8 34, i8* %239, align 1, !dbg !2044, !tbaa !844
  br label %240, !dbg !2044

; <label>:240:                                    ; preds = %238, %235
  %241 = add i64 %125, 3, !dbg !2046
  call void @llvm.dbg.value(metadata i64 %241, i64 0, metadata !1745, metadata !679), !dbg !1805
  %242 = icmp ult i64 %241, %131, !dbg !2048
  br i1 %242, label %243, label %245, !dbg !2052

; <label>:243:                                    ; preds = %240
  %244 = getelementptr inbounds i8, i8* %0, i64 %241, !dbg !2054
  store i8 63, i8* %244, align 1, !dbg !2054, !tbaa !844
  br label %245, !dbg !2054

; <label>:245:                                    ; preds = %243, %240
  %246 = add i64 %125, 4, !dbg !2056
  call void @llvm.dbg.value(metadata i64 %246, i64 0, metadata !1745, metadata !679), !dbg !1805
  br label %476, !dbg !2058

; <label>:247:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 98, i64 0, metadata !1759, metadata !679), !dbg !2059
  br label %257, !dbg !2060

; <label>:248:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 102, i64 0, metadata !1759, metadata !679), !dbg !2059
  br label %257, !dbg !2061

; <label>:249:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 114, i64 0, metadata !1759, metadata !679), !dbg !2059
  br label %255, !dbg !2062

; <label>:250:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 116, i64 0, metadata !1759, metadata !679), !dbg !2059
  br label %255, !dbg !2063

; <label>:251:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 118, i64 0, metadata !1759, metadata !679), !dbg !2059
  br label %257, !dbg !2064

; <label>:252:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 %159, i64 0, metadata !1759, metadata !679), !dbg !2059
  br i1 %114, label %253, label %254, !dbg !2065

; <label>:253:                                    ; preds = %252
  br i1 %112, label %542, label %644, !dbg !2066

; <label>:254:                                    ; preds = %252
  br i1 %122, label %542, label %255, !dbg !2069

; <label>:255:                                    ; preds = %254, %155, %250, %249
  %256 = phi i8 [ 92, %254 ], [ 116, %250 ], [ 114, %249 ], [ 110, %155 ]
  call void @llvm.dbg.value(metadata i8 %256, i64 0, metadata !1759, metadata !679), !dbg !2059
  br i1 %118, label %257, label %644, !dbg !2071

; <label>:257:                                    ; preds = %255, %155, %251, %248, %247
  %258 = phi i8 [ %256, %255 ], [ 118, %251 ], [ 102, %248 ], [ 98, %247 ], [ 97, %155 ]
  call void @llvm.dbg.value(metadata i8 %258, i64 0, metadata !1759, metadata !679), !dbg !2059
  br i1 %105, label %503, label %476, !dbg !2073

; <label>:259:                                    ; preds = %155, %155
  %260 = icmp eq i64 %156, -1, !dbg !2074
  br i1 %260, label %261, label %266, !dbg !2076

; <label>:261:                                    ; preds = %259
  %262 = load i8, i8* %26, align 1, !dbg !2077, !tbaa !844
  %263 = icmp ne i8 %262, 0, !dbg !2079
  %264 = icmp ne i64 %124, 0, !dbg !2080
  %265 = or i1 %264, %263, !dbg !2082
  br i1 %265, label %476, label %272, !dbg !2082

; <label>:266:                                    ; preds = %259
  %267 = icmp ne i64 %156, 1, !dbg !2083
  %268 = icmp ne i64 %124, 0, !dbg !2080
  %269 = or i1 %268, %267, !dbg !2085
  br i1 %269, label %476, label %272, !dbg !2085

; <label>:270:                                    ; preds = %155, %155
  %271 = icmp eq i64 %124, 0, !dbg !2080
  br i1 %271, label %272, label %476, !dbg !2087

; <label>:272:                                    ; preds = %270, %266, %261, %155
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1762, metadata !679), !dbg !1894
  br label %273, !dbg !2088

; <label>:273:                                    ; preds = %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %272
  %274 = phi i8 [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 1, %272 ]
  call void @llvm.dbg.value(metadata i8 %274, i64 0, metadata !1762, metadata !679), !dbg !1894
  br i1 %118, label %476, label %644, !dbg !2089

; <label>:275:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1753, metadata !679), !dbg !1814
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1762, metadata !679), !dbg !1894
  br i1 %114, label %276, label %476, !dbg !2091

; <label>:276:                                    ; preds = %275
  br i1 %112, label %277, label %644, !dbg !2092

; <label>:277:                                    ; preds = %276
  %278 = icmp eq i64 %131, 0, !dbg !2095
  %279 = icmp ne i64 %126, 0, !dbg !2097
  %280 = or i1 %279, %278, !dbg !2099
  call void @llvm.dbg.value(metadata i64 %131, i64 0, metadata !1746, metadata !679), !dbg !1806
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1736, metadata !679), !dbg !1797
  %281 = select i1 %280, i64 %126, i64 %131, !dbg !2099
  %282 = select i1 %280, i64 %131, i64 0, !dbg !2099
  call void @llvm.dbg.value(metadata i64 %282, i64 0, metadata !1736, metadata !679), !dbg !1797
  call void @llvm.dbg.value(metadata i64 %281, i64 0, metadata !1746, metadata !679), !dbg !1806
  %283 = icmp ult i64 %125, %282, !dbg !2100
  br i1 %283, label %284, label %286, !dbg !2104

; <label>:284:                                    ; preds = %277
  %285 = getelementptr inbounds i8, i8* %0, i64 %125, !dbg !2106
  store i8 39, i8* %285, align 1, !dbg !2106, !tbaa !844
  br label %286, !dbg !2106

; <label>:286:                                    ; preds = %284, %277
  %287 = add i64 %125, 1, !dbg !2108
  call void @llvm.dbg.value(metadata i64 %287, i64 0, metadata !1745, metadata !679), !dbg !1805
  %288 = icmp ult i64 %287, %282, !dbg !2110
  br i1 %288, label %289, label %291, !dbg !2114

; <label>:289:                                    ; preds = %286
  %290 = getelementptr inbounds i8, i8* %0, i64 %287, !dbg !2116
  store i8 92, i8* %290, align 1, !dbg !2116, !tbaa !844
  br label %291, !dbg !2116

; <label>:291:                                    ; preds = %289, %286
  %292 = add i64 %125, 2, !dbg !2118
  call void @llvm.dbg.value(metadata i64 %292, i64 0, metadata !1745, metadata !679), !dbg !1805
  %293 = icmp ult i64 %292, %282, !dbg !2120
  br i1 %293, label %294, label %296, !dbg !2124

; <label>:294:                                    ; preds = %291
  %295 = getelementptr inbounds i8, i8* %0, i64 %292, !dbg !2126
  store i8 39, i8* %295, align 1, !dbg !2126, !tbaa !844
  br label %296, !dbg !2126

; <label>:296:                                    ; preds = %294, %291
  %297 = add i64 %125, 3, !dbg !2128
  call void @llvm.dbg.value(metadata i64 %297, i64 0, metadata !1745, metadata !679), !dbg !1805
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1752, metadata !679), !dbg !1813
  br label %476, !dbg !2130

; <label>:298:                                    ; preds = %155
  br i1 %14, label %299, label %308, !dbg !2131

; <label>:299:                                    ; preds = %298
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1763, metadata !679), !dbg !2132
  %300 = tail call i16** @__ctype_b_loc() #1, !dbg !2133
  %301 = load i16*, i16** %300, align 8, !dbg !2133, !tbaa !687
  %302 = zext i8 %159 to i64, !dbg !2133
  %303 = getelementptr inbounds i16, i16* %301, i64 %302, !dbg !2133
  %304 = load i16, i16* %303, align 2, !dbg !2133, !tbaa !2135
  %305 = lshr i16 %304, 14, !dbg !2136
  %306 = trunc i16 %305 to i8, !dbg !2136
  %307 = and i8 %306, 1, !dbg !2136
  call void @llvm.dbg.value(metadata i8 %307, i64 0, metadata !1766, metadata !679), !dbg !2137
  br label %368, !dbg !2138

; <label>:308:                                    ; preds = %298
  call void @llvm.lifetime.start(i64 8, i8* nonnull %18) #11, !dbg !2139
  store i64 0, i64* %10, align 8, !dbg !2140
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1763, metadata !679), !dbg !2132
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1766, metadata !679), !dbg !2137
  %309 = icmp eq i64 %156, -1, !dbg !2141
  br i1 %309, label %310, label %312, !dbg !2143, !llvm.loop !2144

; <label>:310:                                    ; preds = %308
  %311 = call i64 @strlen(i8* nonnull %2) #13, !dbg !2147
  call void @llvm.dbg.value(metadata i64 %311, i64 0, metadata !1738, metadata !679), !dbg !1799
  br label %312, !dbg !2148, !llvm.loop !2144

; <label>:312:                                    ; preds = %310, %308
  %313 = phi i64 [ %156, %308 ], [ %311, %310 ]
  br label %314, !dbg !2137

; <label>:314:                                    ; preds = %312, %355
  %315 = phi i64 [ %360, %355 ], [ 0, %312 ]
  %316 = phi i8 [ %359, %355 ], [ 1, %312 ]
  call void @llvm.dbg.value(metadata i8 %316, i64 0, metadata !1766, metadata !679), !dbg !2137
  call void @llvm.dbg.value(metadata i64 %315, i64 0, metadata !1763, metadata !679), !dbg !2132
  call void @llvm.dbg.value(metadata i64 %313, i64 0, metadata !1738, metadata !679), !dbg !1799
  call void @llvm.lifetime.start(i64 4, i8* nonnull %19) #11, !dbg !2149
  %317 = add i64 %315, %124, !dbg !2150
  %318 = getelementptr inbounds i8, i8* %2, i64 %317, !dbg !2151
  %319 = sub i64 %313, %317, !dbg !2152
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !1767, metadata !2153), !dbg !2154
  call void @llvm.dbg.value(metadata i32* %12, i64 0, metadata !1782, metadata !2153), !dbg !2155
  %320 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %318, i64 %319, %struct.__mbstate_t* nonnull %11) #11, !dbg !2156
  call void @llvm.dbg.value(metadata i64 %320, i64 0, metadata !1785, metadata !679), !dbg !2157
  switch i64 %320, label %334 [
    i64 0, label %350
    i64 -1, label %347
    i64 -2, label %321
  ], !dbg !2158

; <label>:321:                                    ; preds = %314
  call void @llvm.dbg.value(metadata i64 %315, i64 0, metadata !1763, metadata !679), !dbg !2132
  %322 = icmp ugt i64 %313, %317, !dbg !2159
  br i1 %322, label %323, label %351, !dbg !2162

; <label>:323:                                    ; preds = %321
  br label %324, !dbg !2163

; <label>:324:                                    ; preds = %323, %330
  %325 = phi i64 [ %332, %330 ], [ %317, %323 ]
  %326 = phi i64 [ %331, %330 ], [ %315, %323 ]
  %327 = getelementptr inbounds i8, i8* %2, i64 %325, !dbg !2163
  %328 = load i8, i8* %327, align 1, !dbg !2163, !tbaa !844
  %329 = icmp eq i8 %328, 0, !dbg !2165
  br i1 %329, label %348, label %330, !dbg !2166

; <label>:330:                                    ; preds = %324
  %331 = add i64 %326, 1, !dbg !2168
  call void @llvm.dbg.value(metadata i64 %331, i64 0, metadata !1763, metadata !679), !dbg !2132
  call void @llvm.dbg.value(metadata i64 %331, i64 0, metadata !1763, metadata !679), !dbg !2132
  %332 = add i64 %331, %124, !dbg !2169
  %333 = icmp ult i64 %332, %313, !dbg !2159
  br i1 %333, label %324, label %348, !dbg !2162, !llvm.loop !2170

; <label>:334:                                    ; preds = %314
  %335 = icmp ugt i64 %320, 1, !dbg !2172
  %336 = and i1 %116, %335, !dbg !2176
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1786, metadata !679), !dbg !2177
  br i1 %336, label %337, label %355, !dbg !2176

; <label>:337:                                    ; preds = %334
  br label %338, !dbg !2178

; <label>:338:                                    ; preds = %337, %344
  %339 = phi i64 [ %345, %344 ], [ 1, %337 ]
  %340 = add i64 %339, %317, !dbg !2178
  %341 = getelementptr inbounds i8, i8* %2, i64 %340, !dbg !2179
  %342 = load i8, i8* %341, align 1, !dbg !2179, !tbaa !844
  %343 = sext i8 %342 to i32, !dbg !2179
  switch i32 %343, label %344 [
    i32 91, label %367
    i32 92, label %367
    i32 94, label %367
    i32 96, label %367
    i32 124, label %367
  ], !dbg !2180

; <label>:344:                                    ; preds = %338
  %345 = add nuw i64 %339, 1, !dbg !2181
  call void @llvm.dbg.value(metadata i64 %345, i64 0, metadata !1786, metadata !679), !dbg !2177
  call void @llvm.dbg.value(metadata i64 %345, i64 0, metadata !1786, metadata !679), !dbg !2177
  %346 = icmp ult i64 %345, %320, !dbg !2172
  br i1 %346, label %338, label %354, !dbg !2183, !llvm.loop !2185

; <label>:347:                                    ; preds = %314
  br label %351, !dbg !2137

; <label>:348:                                    ; preds = %324, %330
  %349 = phi i64 [ %331, %330 ], [ %326, %324 ]
  br label %351, !dbg !2137

; <label>:350:                                    ; preds = %314
  br label %351, !dbg !2137

; <label>:351:                                    ; preds = %350, %348, %347, %321
  %352 = phi i64 [ %315, %321 ], [ %315, %347 ], [ %349, %348 ], [ %315, %350 ]
  %353 = phi i8 [ 0, %321 ], [ 0, %347 ], [ 0, %348 ], [ %316, %350 ]
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !1766, metadata !679), !dbg !2137
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !1763, metadata !679), !dbg !2132
  call void @llvm.lifetime.end(i64 4, i8* nonnull %19) #11, !dbg !2188
  br label %364

; <label>:354:                                    ; preds = %344
  br label %355, !dbg !2189

; <label>:355:                                    ; preds = %354, %334
  %356 = load i32, i32* %12, align 4, !dbg !2189, !tbaa !863
  call void @llvm.dbg.value(metadata i32 %356, i64 0, metadata !1782, metadata !679), !dbg !2155
  %357 = call i32 @iswprint(i32 %356) #11, !dbg !2191
  %358 = icmp eq i32 %357, 0, !dbg !2191
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1766, metadata !679), !dbg !2137
  %359 = select i1 %358, i8 0, i8 %316, !dbg !2192
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !1766, metadata !679), !dbg !2137
  %360 = add i64 %320, %315, !dbg !2193
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !1763, metadata !679), !dbg !2132
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !1766, metadata !679), !dbg !2137
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !1763, metadata !679), !dbg !2132
  call void @llvm.lifetime.end(i64 4, i8* nonnull %19) #11, !dbg !2188
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !1767, metadata !2153), !dbg !2154
  %361 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #13, !dbg !2194
  %362 = icmp eq i32 %361, 0, !dbg !2195
  br i1 %362, label %314, label %363, !dbg !2196, !llvm.loop !2144

; <label>:363:                                    ; preds = %355
  br label %364, !dbg !2198

; <label>:364:                                    ; preds = %363, %351
  %365 = phi i8 [ %353, %351 ], [ %359, %363 ]
  %366 = phi i64 [ %352, %351 ], [ %360, %363 ]
  call void @llvm.lifetime.end(i64 8, i8* nonnull %18) #11, !dbg !2198
  br label %368

; <label>:367:                                    ; preds = %338, %338, %338, %338, %338
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !1766, metadata !679), !dbg !2137
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !1763, metadata !679), !dbg !2132
  call void @llvm.lifetime.end(i64 4, i8* nonnull %19) #11, !dbg !2188
  call void @llvm.lifetime.end(i64 8, i8* nonnull %18) #11, !dbg !2198
  br label %649

; <label>:368:                                    ; preds = %364, %299
  %369 = phi i64 [ %156, %299 ], [ %313, %364 ]
  %370 = phi i64 [ 1, %299 ], [ %366, %364 ]
  %371 = phi i8 [ %307, %299 ], [ %365, %364 ]
  call void @llvm.dbg.value(metadata i8 %371, i64 0, metadata !1766, metadata !679), !dbg !2137
  call void @llvm.dbg.value(metadata i64 %370, i64 0, metadata !1763, metadata !679), !dbg !2132
  call void @llvm.dbg.value(metadata i64 %369, i64 0, metadata !1738, metadata !679), !dbg !1799
  %372 = and i8 %371, 1, !dbg !2199
  %373 = icmp ne i8 %372, 0, !dbg !2199
  call void @llvm.dbg.value(metadata i8 %372, i64 0, metadata !1762, metadata !679), !dbg !1894
  %374 = icmp ult i64 %370, 2, !dbg !2200
  %375 = or i1 %373, %113, !dbg !2201
  %376 = and i1 %374, %375, !dbg !2203
  br i1 %376, label %476, label %377, !dbg !2203

; <label>:377:                                    ; preds = %368
  %378 = add i64 %370, %124, !dbg !2204
  call void @llvm.dbg.value(metadata i64 %378, i64 0, metadata !1793, metadata !679), !dbg !2205
  br label %379, !dbg !2206

; <label>:379:                                    ; preds = %472, %377
  %380 = phi i64 [ %124, %377 ], [ %447, %472 ]
  %381 = phi i64 [ %125, %377 ], [ %473, %472 ]
  %382 = phi i8 [ %128, %377 ], [ %468, %472 ]
  %383 = phi i8 [ %159, %377 ], [ %475, %472 ]
  %384 = phi i8 [ %157, %377 ], [ %445, %472 ]
  %385 = phi i8 [ 0, %377 ], [ %446, %472 ]
  call void @llvm.dbg.value(metadata i8 %385, i64 0, metadata !1761, metadata !679), !dbg !1893
  call void @llvm.dbg.value(metadata i8 %384, i64 0, metadata !1760, metadata !679), !dbg !1892
  call void @llvm.dbg.value(metadata i8 %383, i64 0, metadata !1755, metadata !679), !dbg !1911
  call void @llvm.dbg.value(metadata i8 %382, i64 0, metadata !1752, metadata !679), !dbg !1813
  call void @llvm.dbg.value(metadata i64 %381, i64 0, metadata !1745, metadata !679), !dbg !1805
  call void @llvm.dbg.value(metadata i64 %380, i64 0, metadata !1744, metadata !679), !dbg !1880
  br i1 %375, label %432, label %386, !dbg !2207

; <label>:386:                                    ; preds = %379
  br i1 %112, label %387, label %643, !dbg !2212

; <label>:387:                                    ; preds = %386
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1761, metadata !679), !dbg !1893
  %388 = and i8 %382, 1, !dbg !2216
  %389 = icmp eq i8 %388, 0, !dbg !2216
  %390 = and i1 %114, %389, !dbg !2219
  br i1 %390, label %391, label %407, !dbg !2219

; <label>:391:                                    ; preds = %387
  %392 = icmp ult i64 %381, %131, !dbg !2221
  br i1 %392, label %393, label %395, !dbg !2226

; <label>:393:                                    ; preds = %391
  %394 = getelementptr inbounds i8, i8* %0, i64 %381, !dbg !2228
  store i8 39, i8* %394, align 1, !dbg !2228, !tbaa !844
  br label %395, !dbg !2228

; <label>:395:                                    ; preds = %393, %391
  %396 = add i64 %381, 1, !dbg !2230
  call void @llvm.dbg.value(metadata i64 %396, i64 0, metadata !1745, metadata !679), !dbg !1805
  %397 = icmp ult i64 %396, %131, !dbg !2232
  br i1 %397, label %398, label %400, !dbg !2236

; <label>:398:                                    ; preds = %395
  %399 = getelementptr inbounds i8, i8* %0, i64 %396, !dbg !2238
  store i8 36, i8* %399, align 1, !dbg !2238, !tbaa !844
  br label %400, !dbg !2238

; <label>:400:                                    ; preds = %398, %395
  %401 = add i64 %381, 2, !dbg !2240
  call void @llvm.dbg.value(metadata i64 %401, i64 0, metadata !1745, metadata !679), !dbg !1805
  %402 = icmp ult i64 %401, %131, !dbg !2242
  br i1 %402, label %403, label %405, !dbg !2246

; <label>:403:                                    ; preds = %400
  %404 = getelementptr inbounds i8, i8* %0, i64 %401, !dbg !2248
  store i8 39, i8* %404, align 1, !dbg !2248, !tbaa !844
  br label %405, !dbg !2248

; <label>:405:                                    ; preds = %403, %400
  %406 = add i64 %381, 3, !dbg !2250
  call void @llvm.dbg.value(metadata i64 %406, i64 0, metadata !1745, metadata !679), !dbg !1805
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1752, metadata !679), !dbg !1813
  br label %407, !dbg !2252

; <label>:407:                                    ; preds = %387, %405
  %408 = phi i64 [ %406, %405 ], [ %381, %387 ]
  %409 = phi i8 [ 1, %405 ], [ %382, %387 ]
  call void @llvm.dbg.value(metadata i8 %409, i64 0, metadata !1752, metadata !679), !dbg !1813
  call void @llvm.dbg.value(metadata i64 %408, i64 0, metadata !1745, metadata !679), !dbg !1805
  %410 = icmp ult i64 %408, %131, !dbg !2254
  br i1 %410, label %411, label %413, !dbg !2258

; <label>:411:                                    ; preds = %407
  %412 = getelementptr inbounds i8, i8* %0, i64 %408, !dbg !2260
  store i8 92, i8* %412, align 1, !dbg !2260, !tbaa !844
  br label %413, !dbg !2260

; <label>:413:                                    ; preds = %411, %407
  %414 = add i64 %408, 1, !dbg !2262
  call void @llvm.dbg.value(metadata i64 %414, i64 0, metadata !1745, metadata !679), !dbg !1805
  %415 = icmp ult i64 %414, %131, !dbg !2264
  br i1 %415, label %416, label %420, !dbg !2268

; <label>:416:                                    ; preds = %413
  %417 = lshr i8 %383, 6, !dbg !2270
  %418 = or i8 %417, 48, !dbg !2270
  %419 = getelementptr inbounds i8, i8* %0, i64 %414, !dbg !2270
  store i8 %418, i8* %419, align 1, !dbg !2270, !tbaa !844
  br label %420, !dbg !2270

; <label>:420:                                    ; preds = %416, %413
  %421 = add i64 %408, 2, !dbg !2272
  call void @llvm.dbg.value(metadata i64 %421, i64 0, metadata !1745, metadata !679), !dbg !1805
  %422 = icmp ult i64 %421, %131, !dbg !2274
  br i1 %422, label %423, label %428, !dbg !2278

; <label>:423:                                    ; preds = %420
  %424 = lshr i8 %383, 3, !dbg !2280
  %425 = and i8 %424, 7, !dbg !2280
  %426 = or i8 %425, 48, !dbg !2280
  %427 = getelementptr inbounds i8, i8* %0, i64 %421, !dbg !2280
  store i8 %426, i8* %427, align 1, !dbg !2280, !tbaa !844
  br label %428, !dbg !2280

; <label>:428:                                    ; preds = %423, %420
  %429 = add i64 %408, 3, !dbg !2282
  call void @llvm.dbg.value(metadata i64 %429, i64 0, metadata !1745, metadata !679), !dbg !1805
  %430 = and i8 %383, 7, !dbg !2284
  %431 = or i8 %430, 48, !dbg !2285
  call void @llvm.dbg.value(metadata i8 %431, i64 0, metadata !1755, metadata !679), !dbg !1911
  br label %441, !dbg !2286

; <label>:432:                                    ; preds = %379
  %433 = and i8 %384, 1, !dbg !2287
  %434 = icmp eq i8 %433, 0, !dbg !2287
  br i1 %434, label %441, label %435, !dbg !2289

; <label>:435:                                    ; preds = %432
  %436 = icmp ult i64 %381, %131, !dbg !2290
  br i1 %436, label %437, label %439, !dbg !2295

; <label>:437:                                    ; preds = %435
  %438 = getelementptr inbounds i8, i8* %0, i64 %381, !dbg !2297
  store i8 92, i8* %438, align 1, !dbg !2297, !tbaa !844
  br label %439, !dbg !2297

; <label>:439:                                    ; preds = %437, %435
  %440 = add i64 %381, 1, !dbg !2299
  call void @llvm.dbg.value(metadata i64 %440, i64 0, metadata !1745, metadata !679), !dbg !1805
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1760, metadata !679), !dbg !1892
  br label %441, !dbg !2301

; <label>:441:                                    ; preds = %432, %439, %428
  %442 = phi i64 [ %440, %439 ], [ %381, %432 ], [ %429, %428 ]
  %443 = phi i8 [ %382, %439 ], [ %382, %432 ], [ %409, %428 ]
  %444 = phi i8 [ %383, %439 ], [ %383, %432 ], [ %431, %428 ]
  %445 = phi i8 [ 0, %439 ], [ %384, %432 ], [ %384, %428 ]
  %446 = phi i8 [ %385, %439 ], [ %385, %432 ], [ 1, %428 ]
  call void @llvm.dbg.value(metadata i8 %446, i64 0, metadata !1761, metadata !679), !dbg !1893
  call void @llvm.dbg.value(metadata i8 %445, i64 0, metadata !1760, metadata !679), !dbg !1892
  call void @llvm.dbg.value(metadata i8 %444, i64 0, metadata !1755, metadata !679), !dbg !1911
  call void @llvm.dbg.value(metadata i8 %443, i64 0, metadata !1752, metadata !679), !dbg !1813
  call void @llvm.dbg.value(metadata i64 %442, i64 0, metadata !1745, metadata !679), !dbg !1805
  %447 = add i64 %380, 1, !dbg !2302
  %448 = icmp ugt i64 %378, %447, !dbg !2304
  br i1 %448, label %449, label %541, !dbg !2305

; <label>:449:                                    ; preds = %441
  %450 = and i8 %443, 1, !dbg !2306
  %451 = icmp ne i8 %450, 0, !dbg !2306
  %452 = and i8 %446, 1, !dbg !2310
  %453 = icmp eq i8 %452, 0, !dbg !2310
  %454 = and i1 %451, %453, !dbg !2306
  br i1 %454, label %455, label %466, !dbg !2306

; <label>:455:                                    ; preds = %449
  %456 = icmp ult i64 %442, %131, !dbg !2312
  br i1 %456, label %457, label %459, !dbg !2317

; <label>:457:                                    ; preds = %455
  %458 = getelementptr inbounds i8, i8* %0, i64 %442, !dbg !2319
  store i8 39, i8* %458, align 1, !dbg !2319, !tbaa !844
  br label %459, !dbg !2319

; <label>:459:                                    ; preds = %457, %455
  %460 = add i64 %442, 1, !dbg !2321
  call void @llvm.dbg.value(metadata i64 %460, i64 0, metadata !1745, metadata !679), !dbg !1805
  %461 = icmp ult i64 %460, %131, !dbg !2323
  br i1 %461, label %462, label %464, !dbg !2327

; <label>:462:                                    ; preds = %459
  %463 = getelementptr inbounds i8, i8* %0, i64 %460, !dbg !2329
  store i8 39, i8* %463, align 1, !dbg !2329, !tbaa !844
  br label %464, !dbg !2329

; <label>:464:                                    ; preds = %462, %459
  %465 = add i64 %442, 2, !dbg !2331
  call void @llvm.dbg.value(metadata i64 %465, i64 0, metadata !1745, metadata !679), !dbg !1805
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1752, metadata !679), !dbg !1813
  br label %466, !dbg !2333

; <label>:466:                                    ; preds = %449, %464
  %467 = phi i64 [ %465, %464 ], [ %442, %449 ]
  %468 = phi i8 [ 0, %464 ], [ %443, %449 ]
  call void @llvm.dbg.value(metadata i8 %468, i64 0, metadata !1752, metadata !679), !dbg !1813
  call void @llvm.dbg.value(metadata i64 %467, i64 0, metadata !1745, metadata !679), !dbg !1805
  %469 = icmp ult i64 %467, %131, !dbg !2335
  br i1 %469, label %470, label %472, !dbg !2339

; <label>:470:                                    ; preds = %466
  %471 = getelementptr inbounds i8, i8* %0, i64 %467, !dbg !2341
  store i8 %444, i8* %471, align 1, !dbg !2341, !tbaa !844
  br label %472, !dbg !2341

; <label>:472:                                    ; preds = %470, %466
  %473 = add i64 %467, 1, !dbg !2343
  call void @llvm.dbg.value(metadata i64 %473, i64 0, metadata !1745, metadata !679), !dbg !1805
  call void @llvm.dbg.value(metadata i64 %447, i64 0, metadata !1744, metadata !679), !dbg !1880
  %474 = getelementptr inbounds i8, i8* %2, i64 %447, !dbg !2345
  %475 = load i8, i8* %474, align 1, !dbg !2345, !tbaa !844
  call void @llvm.dbg.value(metadata i8 %475, i64 0, metadata !1755, metadata !679), !dbg !1911
  br label %379, !dbg !2346, !llvm.loop !2348

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
  call void @llvm.dbg.value(metadata i64 %486, i64 0, metadata !1736, metadata !679), !dbg !1797
  call void @llvm.dbg.value(metadata i8 %485, i64 0, metadata !1762, metadata !679), !dbg !1894
  call void @llvm.dbg.value(metadata i8 %484, i64 0, metadata !1761, metadata !679), !dbg !1893
  call void @llvm.dbg.value(metadata i8 %157, i64 0, metadata !1760, metadata !679), !dbg !1892
  call void @llvm.dbg.value(metadata i8 %483, i64 0, metadata !1755, metadata !679), !dbg !1911
  call void @llvm.dbg.value(metadata i8 %482, i64 0, metadata !1753, metadata !679), !dbg !1814
  call void @llvm.dbg.value(metadata i8 %481, i64 0, metadata !1752, metadata !679), !dbg !1813
  call void @llvm.dbg.value(metadata i64 %480, i64 0, metadata !1738, metadata !679), !dbg !1799
  call void @llvm.dbg.value(metadata i64 %479, i64 0, metadata !1746, metadata !679), !dbg !1806
  call void @llvm.dbg.value(metadata i64 %478, i64 0, metadata !1745, metadata !679), !dbg !1805
  call void @llvm.dbg.value(metadata i64 %477, i64 0, metadata !1744, metadata !679), !dbg !1880
  br i1 %107, label %488, label %487, !dbg !2351

; <label>:487:                                    ; preds = %476
  br i1 %117, label %489, label %501, !dbg !2353

; <label>:488:                                    ; preds = %476
  br i1 %20, label %501, label %489, !dbg !2354

; <label>:489:                                    ; preds = %488, %487
  %490 = lshr i8 %483, 5, !dbg !2355
  %491 = zext i8 %490 to i64, !dbg !2355
  %492 = getelementptr inbounds i32, i32* %6, i64 %491, !dbg !2357
  %493 = load i32, i32* %492, align 4, !dbg !2357, !tbaa !863
  %494 = and i8 %483, 31, !dbg !2358
  %495 = zext i8 %494 to i32, !dbg !2359
  %496 = shl i32 1, %495, !dbg !2360
  %497 = and i32 %493, %496, !dbg !2360
  %498 = icmp eq i32 %497, 0, !dbg !2360
  %499 = icmp eq i8 %157, 0, !dbg !2361
  %500 = and i1 %499, %498, !dbg !2362
  br i1 %500, label %542, label %503, !dbg !2362

; <label>:501:                                    ; preds = %488, %487
  %502 = icmp eq i8 %157, 0, !dbg !2361
  br i1 %502, label %542, label %503, !dbg !2363

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
  call void @llvm.dbg.value(metadata i64 %512, i64 0, metadata !1736, metadata !679), !dbg !1797
  call void @llvm.dbg.value(metadata i8 %511, i64 0, metadata !1762, metadata !679), !dbg !1894
  call void @llvm.dbg.value(metadata i8 %510, i64 0, metadata !1755, metadata !679), !dbg !1911
  call void @llvm.dbg.value(metadata i8 %509, i64 0, metadata !1753, metadata !679), !dbg !1814
  call void @llvm.dbg.value(metadata i8 %508, i64 0, metadata !1752, metadata !679), !dbg !1813
  call void @llvm.dbg.value(metadata i64 %507, i64 0, metadata !1738, metadata !679), !dbg !1799
  call void @llvm.dbg.value(metadata i64 %506, i64 0, metadata !1746, metadata !679), !dbg !1806
  call void @llvm.dbg.value(metadata i64 %505, i64 0, metadata !1745, metadata !679), !dbg !1805
  call void @llvm.dbg.value(metadata i64 %504, i64 0, metadata !1744, metadata !679), !dbg !1880
  br i1 %112, label %513, label %644, !dbg !2365

; <label>:513:                                    ; preds = %503
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1761, metadata !679), !dbg !1893
  %514 = and i8 %508, 1, !dbg !2368
  %515 = icmp eq i8 %514, 0, !dbg !2368
  %516 = and i1 %114, %515, !dbg !2371
  br i1 %516, label %517, label %533, !dbg !2371

; <label>:517:                                    ; preds = %513
  %518 = icmp ult i64 %505, %512, !dbg !2373
  br i1 %518, label %519, label %521, !dbg !2378

; <label>:519:                                    ; preds = %517
  %520 = getelementptr inbounds i8, i8* %0, i64 %505, !dbg !2380
  store i8 39, i8* %520, align 1, !dbg !2380, !tbaa !844
  br label %521, !dbg !2380

; <label>:521:                                    ; preds = %519, %517
  %522 = add i64 %505, 1, !dbg !2382
  call void @llvm.dbg.value(metadata i64 %522, i64 0, metadata !1745, metadata !679), !dbg !1805
  %523 = icmp ult i64 %522, %512, !dbg !2384
  br i1 %523, label %524, label %526, !dbg !2388

; <label>:524:                                    ; preds = %521
  %525 = getelementptr inbounds i8, i8* %0, i64 %522, !dbg !2390
  store i8 36, i8* %525, align 1, !dbg !2390, !tbaa !844
  br label %526, !dbg !2390

; <label>:526:                                    ; preds = %524, %521
  %527 = add i64 %505, 2, !dbg !2392
  call void @llvm.dbg.value(metadata i64 %527, i64 0, metadata !1745, metadata !679), !dbg !1805
  %528 = icmp ult i64 %527, %512, !dbg !2394
  br i1 %528, label %529, label %531, !dbg !2398

; <label>:529:                                    ; preds = %526
  %530 = getelementptr inbounds i8, i8* %0, i64 %527, !dbg !2400
  store i8 39, i8* %530, align 1, !dbg !2400, !tbaa !844
  br label %531, !dbg !2400

; <label>:531:                                    ; preds = %529, %526
  %532 = add i64 %505, 3, !dbg !2402
  call void @llvm.dbg.value(metadata i64 %532, i64 0, metadata !1745, metadata !679), !dbg !1805
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1752, metadata !679), !dbg !1813
  br label %533, !dbg !2404

; <label>:533:                                    ; preds = %513, %531
  %534 = phi i64 [ %532, %531 ], [ %505, %513 ]
  %535 = phi i8 [ 1, %531 ], [ %508, %513 ]
  call void @llvm.dbg.value(metadata i8 %535, i64 0, metadata !1752, metadata !679), !dbg !1813
  call void @llvm.dbg.value(metadata i64 %534, i64 0, metadata !1745, metadata !679), !dbg !1805
  %536 = icmp ult i64 %534, %512, !dbg !2406
  br i1 %536, label %537, label %539, !dbg !2410

; <label>:537:                                    ; preds = %533
  %538 = getelementptr inbounds i8, i8* %0, i64 %534, !dbg !2412
  store i8 92, i8* %538, align 1, !dbg !2412, !tbaa !844
  br label %539, !dbg !2412

; <label>:539:                                    ; preds = %533, %537
  %540 = add i64 %534, 1, !dbg !2414
  call void @llvm.dbg.value(metadata i64 %540, i64 0, metadata !1745, metadata !679), !dbg !1805
  call void @llvm.dbg.value(metadata i64 %552, i64 0, metadata !1736, metadata !679), !dbg !1797
  call void @llvm.dbg.value(metadata i8 %551, i64 0, metadata !1762, metadata !679), !dbg !1894
  call void @llvm.dbg.value(metadata i8 %550, i64 0, metadata !1761, metadata !679), !dbg !1893
  call void @llvm.dbg.value(metadata i8 %549, i64 0, metadata !1755, metadata !679), !dbg !1911
  call void @llvm.dbg.value(metadata i8 %548, i64 0, metadata !1753, metadata !679), !dbg !1814
  call void @llvm.dbg.value(metadata i8 %547, i64 0, metadata !1752, metadata !679), !dbg !1813
  call void @llvm.dbg.value(metadata i64 %546, i64 0, metadata !1738, metadata !679), !dbg !1799
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !1746, metadata !679), !dbg !1806
  call void @llvm.dbg.value(metadata i64 %544, i64 0, metadata !1745, metadata !679), !dbg !1805
  call void @llvm.dbg.value(metadata i64 %543, i64 0, metadata !1744, metadata !679), !dbg !1880
  br label %569, !dbg !2416

; <label>:541:                                    ; preds = %441
  br label %542, !dbg !1797

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
  call void @llvm.dbg.value(metadata i64 %552, i64 0, metadata !1736, metadata !679), !dbg !1797
  call void @llvm.dbg.value(metadata i8 %551, i64 0, metadata !1762, metadata !679), !dbg !1894
  call void @llvm.dbg.value(metadata i8 %550, i64 0, metadata !1761, metadata !679), !dbg !1893
  call void @llvm.dbg.value(metadata i8 %549, i64 0, metadata !1755, metadata !679), !dbg !1911
  call void @llvm.dbg.value(metadata i8 %548, i64 0, metadata !1753, metadata !679), !dbg !1814
  call void @llvm.dbg.value(metadata i8 %547, i64 0, metadata !1752, metadata !679), !dbg !1813
  call void @llvm.dbg.value(metadata i64 %546, i64 0, metadata !1738, metadata !679), !dbg !1799
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !1746, metadata !679), !dbg !1806
  call void @llvm.dbg.value(metadata i64 %544, i64 0, metadata !1745, metadata !679), !dbg !1805
  call void @llvm.dbg.value(metadata i64 %543, i64 0, metadata !1744, metadata !679), !dbg !1880
  %553 = and i8 %547, 1, !dbg !2416
  %554 = icmp ne i8 %553, 0, !dbg !2416
  %555 = and i8 %550, 1, !dbg !2420
  %556 = icmp eq i8 %555, 0, !dbg !2420
  %557 = and i1 %554, %556, !dbg !2416
  br i1 %557, label %558, label %569, !dbg !2416

; <label>:558:                                    ; preds = %542
  %559 = icmp ult i64 %544, %552, !dbg !2422
  br i1 %559, label %560, label %562, !dbg !2427

; <label>:560:                                    ; preds = %558
  %561 = getelementptr inbounds i8, i8* %0, i64 %544, !dbg !2429
  store i8 39, i8* %561, align 1, !dbg !2429, !tbaa !844
  br label %562, !dbg !2429

; <label>:562:                                    ; preds = %560, %558
  %563 = add i64 %544, 1, !dbg !2431
  call void @llvm.dbg.value(metadata i64 %563, i64 0, metadata !1745, metadata !679), !dbg !1805
  %564 = icmp ult i64 %563, %552, !dbg !2433
  br i1 %564, label %565, label %567, !dbg !2437

; <label>:565:                                    ; preds = %562
  %566 = getelementptr inbounds i8, i8* %0, i64 %563, !dbg !2439
  store i8 39, i8* %566, align 1, !dbg !2439, !tbaa !844
  br label %567, !dbg !2439

; <label>:567:                                    ; preds = %565, %562
  %568 = add i64 %544, 2, !dbg !2441
  call void @llvm.dbg.value(metadata i64 %568, i64 0, metadata !1745, metadata !679), !dbg !1805
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1752, metadata !679), !dbg !1813
  br label %569, !dbg !2443

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
  call void @llvm.dbg.value(metadata i8 %578, i64 0, metadata !1752, metadata !679), !dbg !1813
  call void @llvm.dbg.value(metadata i64 %577, i64 0, metadata !1745, metadata !679), !dbg !1805
  %579 = icmp ult i64 %577, %570, !dbg !2445
  br i1 %579, label %580, label %582, !dbg !2449

; <label>:580:                                    ; preds = %569
  %581 = getelementptr inbounds i8, i8* %0, i64 %577, !dbg !2451
  store i8 %572, i8* %581, align 1, !dbg !2451, !tbaa !844
  br label %582, !dbg !2451

; <label>:582:                                    ; preds = %580, %569
  %583 = add i64 %577, 1, !dbg !2453
  call void @llvm.dbg.value(metadata i64 %583, i64 0, metadata !1745, metadata !679), !dbg !1805
  %584 = and i8 %571, 1, !dbg !2455
  %585 = icmp eq i8 %584, 0, !dbg !2455
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1754, metadata !679), !dbg !1815
  %586 = select i1 %585, i8 0, i8 %130, !dbg !2457
  call void @llvm.dbg.value(metadata i8 %586, i64 0, metadata !1754, metadata !679), !dbg !1815
  br label %587, !dbg !2458

; <label>:587:                                    ; preds = %582, %209
  %588 = phi i64 [ %124, %209 ], [ %576, %582 ]
  %589 = phi i64 [ %125, %209 ], [ %583, %582 ]
  %590 = phi i64 [ %126, %209 ], [ %575, %582 ]
  %591 = phi i64 [ %156, %209 ], [ %574, %582 ]
  %592 = phi i8 [ %128, %209 ], [ %578, %582 ]
  %593 = phi i8 [ %129, %209 ], [ %573, %582 ]
  %594 = phi i8 [ %130, %209 ], [ %586, %582 ]
  %595 = phi i64 [ %131, %209 ], [ %570, %582 ]
  %596 = add i64 %588, 1, !dbg !2459
  call void @llvm.dbg.value(metadata i64 %596, i64 0, metadata !1744, metadata !679), !dbg !1880
  br label %123, !dbg !2461, !llvm.loop !2462

; <label>:597:                                    ; preds = %133, %135
  %598 = phi i64 [ %124, %133 ], [ -1, %135 ]
  %599 = icmp eq i64 %125, 0, !dbg !2465
  %600 = and i1 %114, %599, !dbg !2467
  %601 = xor i1 %600, true, !dbg !2467
  %602 = or i1 %112, %601, !dbg !2467
  br i1 %602, label %603, label %648, !dbg !2467

; <label>:603:                                    ; preds = %597
  %604 = and i1 %114, %112, !dbg !2468
  %605 = xor i1 %604, true, !dbg !2468
  %606 = and i8 %129, 1, !dbg !2470
  %607 = icmp eq i8 %606, 0, !dbg !2470
  %608 = or i1 %607, %605, !dbg !2468
  br i1 %608, label %618, label %609, !dbg !2468

; <label>:609:                                    ; preds = %603
  %610 = and i8 %130, 1, !dbg !2472
  %611 = icmp eq i8 %610, 0, !dbg !2472
  br i1 %611, label %614, label %612, !dbg !2475

; <label>:612:                                    ; preds = %609
  %613 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %126, i8* %2, i64 %598, i32 5, i32 %5, i32* %6, i8* %97, i8* %98), !dbg !2476
  br label %659, !dbg !2477

; <label>:614:                                    ; preds = %609
  %615 = icmp eq i64 %131, 0, !dbg !2478
  %616 = icmp ne i64 %126, 0, !dbg !2480
  %617 = and i1 %616, %615, !dbg !2482
  br i1 %617, label %27, label %618, !dbg !2482

; <label>:618:                                    ; preds = %603, %614
  %619 = icmp ne i8* %100, null, !dbg !2483
  %620 = and i1 %619, %112, !dbg !2485
  br i1 %620, label %621, label %638, !dbg !2485

; <label>:621:                                    ; preds = %618
  call void @llvm.dbg.value(metadata i8* %100, i64 0, metadata !1747, metadata !679), !dbg !1807
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !1745, metadata !679), !dbg !1805
  %622 = load i8, i8* %100, align 1, !dbg !2486, !tbaa !844
  %623 = icmp eq i8 %622, 0, !dbg !2490
  br i1 %623, label %638, label %624, !dbg !2490

; <label>:624:                                    ; preds = %621
  br label %625, !dbg !2492

; <label>:625:                                    ; preds = %624, %632
  %626 = phi i8 [ %635, %632 ], [ %622, %624 ]
  %627 = phi i8* [ %634, %632 ], [ %100, %624 ]
  %628 = phi i64 [ %633, %632 ], [ %125, %624 ]
  %629 = icmp ult i64 %628, %131, !dbg !2492
  br i1 %629, label %630, label %632, !dbg !2496

; <label>:630:                                    ; preds = %625
  %631 = getelementptr inbounds i8, i8* %0, i64 %628, !dbg !2498
  store i8 %626, i8* %631, align 1, !dbg !2498, !tbaa !844
  br label %632, !dbg !2498

; <label>:632:                                    ; preds = %630, %625
  %633 = add i64 %628, 1, !dbg !2500
  call void @llvm.dbg.value(metadata i64 %633, i64 0, metadata !1745, metadata !679), !dbg !1805
  %634 = getelementptr inbounds i8, i8* %627, i64 1, !dbg !2502
  call void @llvm.dbg.value(metadata i8* %634, i64 0, metadata !1747, metadata !679), !dbg !1807
  call void @llvm.dbg.value(metadata i8* %634, i64 0, metadata !1747, metadata !679), !dbg !1807
  call void @llvm.dbg.value(metadata i64 %633, i64 0, metadata !1745, metadata !679), !dbg !1805
  %635 = load i8, i8* %634, align 1, !dbg !2486, !tbaa !844
  %636 = icmp eq i8 %635, 0, !dbg !2490
  br i1 %636, label %637, label %625, !dbg !2490, !llvm.loop !2504

; <label>:637:                                    ; preds = %632
  br label %638, !dbg !1805

; <label>:638:                                    ; preds = %637, %621, %618
  %639 = phi i64 [ %125, %618 ], [ %125, %621 ], [ %633, %637 ]
  call void @llvm.dbg.value(metadata i64 %639, i64 0, metadata !1745, metadata !679), !dbg !1805
  %640 = icmp ult i64 %639, %131, !dbg !2507
  br i1 %640, label %641, label %659, !dbg !2509

; <label>:641:                                    ; preds = %638
  %642 = getelementptr inbounds i8, i8* %0, i64 %639, !dbg !2510
  store i8 0, i8* %642, align 1, !dbg !2511, !tbaa !844
  br label %659, !dbg !2510

; <label>:643:                                    ; preds = %386
  br label %649, !dbg !1797

; <label>:644:                                    ; preds = %148, %161, %211, %225, %253, %255, %273, %276, %503
  %645 = phi i32 [ %96, %148 ], [ %96, %161 ], [ 2, %211 ], [ 5, %225 ], [ 2, %253 ], [ 2, %255 ], [ 2, %273 ], [ 2, %276 ], [ %96, %503 ]
  %646 = phi i64 [ %146, %148 ], [ %156, %161 ], [ %156, %211 ], [ %156, %225 ], [ %156, %253 ], [ %156, %255 ], [ %156, %273 ], [ %156, %276 ], [ %507, %503 ]
  %647 = phi i64 [ %131, %148 ], [ %131, %161 ], [ %131, %211 ], [ %131, %225 ], [ %131, %253 ], [ %131, %255 ], [ %131, %273 ], [ %131, %276 ], [ %512, %503 ]
  br label %649, !dbg !1797

; <label>:648:                                    ; preds = %597
  br label %649, !dbg !1797

; <label>:649:                                    ; preds = %648, %644, %643, %367
  %650 = phi i32 [ 2, %367 ], [ %96, %643 ], [ %645, %644 ], [ %96, %648 ]
  %651 = phi i64 [ %313, %367 ], [ %369, %643 ], [ %646, %644 ], [ %598, %648 ]
  %652 = phi i64 [ %131, %367 ], [ %131, %643 ], [ %647, %644 ], [ %131, %648 ]
  call void @llvm.dbg.value(metadata i64 %652, i64 0, metadata !1736, metadata !679), !dbg !1797
  call void @llvm.dbg.value(metadata i64 %651, i64 0, metadata !1738, metadata !679), !dbg !1799
  %653 = icmp ne i32 %650, 2, !dbg !2512
  %654 = icmp eq i8 %104, 0, !dbg !2514
  %655 = or i1 %653, %654, !dbg !2516
  call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !1739, metadata !679), !dbg !1800
  %656 = select i1 %655, i32 %650, i32 4, !dbg !2516
  call void @llvm.dbg.value(metadata i32 %656, i64 0, metadata !1739, metadata !679), !dbg !1800
  %657 = and i32 %5, -3, !dbg !2517
  %658 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %652, i8* %2, i64 %651, i32 %656, i32 %657, i32* null, i8* %97, i8* %98), !dbg !2518
  br label %659, !dbg !2519

; <label>:659:                                    ; preds = %638, %641, %649, %612
  %660 = phi i64 [ %658, %649 ], [ %613, %612 ], [ %639, %641 ], [ %639, %638 ]
  ret i64 %660, !dbg !2520
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8*, i32) unnamed_addr #6 !dbg !2521 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2525, metadata !679), !dbg !2529
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2526, metadata !679), !dbg !2530
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #11, !dbg !2531
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2527, metadata !679), !dbg !2532
  %4 = icmp eq i8* %3, %0, !dbg !2533
  br i1 %4, label %5, label %75, !dbg !2535

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @locale_charset() #11, !dbg !2536
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !2528, metadata !679), !dbg !2537
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2538, metadata !679), !dbg !2554
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2552, metadata !679), !dbg !2557
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2553, metadata !679), !dbg !2558
  %7 = load i8, i8* %6, align 1, !tbaa !844
  %8 = sext i8 %7 to i32
  %9 = and i32 %8, -33, !dbg !2559
  switch i32 %9, label %72 [
    i32 85, label %10
    i32 71, label %38
  ], !dbg !2559

; <label>:10:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2562, metadata !679), !dbg !2576
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2574, metadata !679), !dbg !2580
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2575, metadata !679), !dbg !2581
  %11 = getelementptr inbounds i8, i8* %6, i64 1
  %12 = load i8, i8* %11, align 1, !tbaa !844
  %13 = sext i8 %12 to i32
  %14 = and i32 %13, -33, !dbg !2582
  %15 = icmp eq i32 %14, 84, !dbg !2582
  br i1 %15, label %16, label %72, !dbg !2582

; <label>:16:                                     ; preds = %10
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2585, metadata !679), !dbg !2598
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2596, metadata !679), !dbg !2602
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2597, metadata !679), !dbg !2603
  %17 = getelementptr inbounds i8, i8* %6, i64 2
  %18 = load i8, i8* %17, align 1, !tbaa !844
  %19 = sext i8 %18 to i32
  %20 = and i32 %19, -33, !dbg !2604
  %21 = icmp eq i32 %20, 70, !dbg !2604
  br i1 %21, label %22, label %72, !dbg !2604

; <label>:22:                                     ; preds = %16
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2607, metadata !679), !dbg !2619
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2617, metadata !679), !dbg !2623
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2618, metadata !679), !dbg !2624
  %23 = getelementptr inbounds i8, i8* %6, i64 3
  %24 = load i8, i8* %23, align 1, !tbaa !844
  %25 = icmp eq i8 %24, 45, !dbg !2625
  br i1 %25, label %26, label %72, !dbg !2628

; <label>:26:                                     ; preds = %22
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2630, metadata !679), !dbg !2641
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2639, metadata !679), !dbg !2645
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2640, metadata !679), !dbg !2646
  %27 = getelementptr inbounds i8, i8* %6, i64 4
  %28 = load i8, i8* %27, align 1, !tbaa !844
  %29 = icmp eq i8 %28, 56, !dbg !2647
  br i1 %29, label %30, label %72, !dbg !2650

; <label>:30:                                     ; preds = %26
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2652, metadata !679), !dbg !2662
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2660, metadata !679), !dbg !2666
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2661, metadata !679), !dbg !2667
  %31 = getelementptr inbounds i8, i8* %6, i64 5
  %32 = load i8, i8* %31, align 1, !tbaa !844
  %33 = icmp eq i8 %32, 0, !dbg !2668
  br i1 %33, label %34, label %72, !dbg !2671

; <label>:34:                                     ; preds = %30
  %35 = load i8, i8* %0, align 1, !dbg !2673, !tbaa !844
  %36 = icmp eq i8 %35, 96, !dbg !2674
  %37 = select i1 %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.76, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.77, i64 0, i64 0), !dbg !2673
  br label %75, !dbg !2675

; <label>:38:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2562, metadata !679), !dbg !2676
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2574, metadata !679), !dbg !2680
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2575, metadata !679), !dbg !2681
  %39 = getelementptr inbounds i8, i8* %6, i64 1
  %40 = load i8, i8* %39, align 1, !tbaa !844
  %41 = sext i8 %40 to i32
  %42 = and i32 %41, -33, !dbg !2682
  %43 = icmp eq i32 %42, 66, !dbg !2682
  br i1 %43, label %44, label %72, !dbg !2682

; <label>:44:                                     ; preds = %38
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2585, metadata !679), !dbg !2683
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2596, metadata !679), !dbg !2685
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2597, metadata !679), !dbg !2686
  %45 = getelementptr inbounds i8, i8* %6, i64 2
  %46 = load i8, i8* %45, align 1, !tbaa !844
  %47 = icmp eq i8 %46, 49, !dbg !2687
  br i1 %47, label %48, label %72, !dbg !2689

; <label>:48:                                     ; preds = %44
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2607, metadata !679), !dbg !2691
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2617, metadata !679), !dbg !2693
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2618, metadata !679), !dbg !2694
  %49 = getelementptr inbounds i8, i8* %6, i64 3
  %50 = load i8, i8* %49, align 1, !tbaa !844
  %51 = icmp eq i8 %50, 56, !dbg !2695
  br i1 %51, label %52, label %72, !dbg !2696

; <label>:52:                                     ; preds = %48
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2630, metadata !679), !dbg !2697
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2639, metadata !679), !dbg !2699
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2640, metadata !679), !dbg !2700
  %53 = getelementptr inbounds i8, i8* %6, i64 4
  %54 = load i8, i8* %53, align 1, !tbaa !844
  %55 = icmp eq i8 %54, 48, !dbg !2701
  br i1 %55, label %56, label %72, !dbg !2702

; <label>:56:                                     ; preds = %52
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2652, metadata !679), !dbg !2703
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2660, metadata !679), !dbg !2705
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2661, metadata !679), !dbg !2706
  %57 = getelementptr inbounds i8, i8* %6, i64 5
  %58 = load i8, i8* %57, align 1, !tbaa !844
  %59 = icmp eq i8 %58, 51, !dbg !2707
  br i1 %59, label %60, label %72, !dbg !2708

; <label>:60:                                     ; preds = %56
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2709, metadata !679), !dbg !2718
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2716, metadata !679), !dbg !2722
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2717, metadata !679), !dbg !2723
  %61 = getelementptr inbounds i8, i8* %6, i64 6
  %62 = load i8, i8* %61, align 1, !tbaa !844
  %63 = icmp eq i8 %62, 48, !dbg !2724
  br i1 %63, label %64, label %72, !dbg !2727

; <label>:64:                                     ; preds = %60
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2729, metadata !679), !dbg !2737
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2735, metadata !679), !dbg !2741
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2736, metadata !679), !dbg !2742
  %65 = getelementptr inbounds i8, i8* %6, i64 7
  %66 = load i8, i8* %65, align 1, !tbaa !844
  %67 = icmp eq i8 %66, 0, !dbg !2743
  br i1 %67, label %68, label %72, !dbg !2746

; <label>:68:                                     ; preds = %64
  %69 = load i8, i8* %0, align 1, !dbg !2747, !tbaa !844
  %70 = icmp eq i8 %69, 96, !dbg !2748
  %71 = select i1 %70, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.78, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.79, i64 0, i64 0), !dbg !2747
  br label %75, !dbg !2749

; <label>:72:                                     ; preds = %5, %30, %26, %22, %16, %10, %64, %60, %56, %52, %48, %44, %38
  %73 = icmp eq i32 %1, 9, !dbg !2750
  %74 = select i1 %73, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.75, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.74, i64 0, i64 0), !dbg !2751
  br label %75, !dbg !2752

; <label>:75:                                     ; preds = %2, %72, %68, %34
  %76 = phi i8* [ %37, %34 ], [ %71, %68 ], [ %74, %72 ], [ %3, %2 ]
  ret i8* %76, !dbg !2753
}

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() local_unnamed_addr #8

; Function Attrs: nounwind
declare i32 @iswprint(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @mbsinit(%struct.__mbstate_t*) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_alloc(i8*, i64, %struct.quoting_options*) local_unnamed_addr #6 !dbg !2754 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2758, metadata !679), !dbg !2761
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2759, metadata !679), !dbg !2762
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2760, metadata !679), !dbg !2763
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2764, metadata !679) #11, !dbg !2777
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2769, metadata !679) #11, !dbg !2779
  tail call void @llvm.dbg.value(metadata i64* null, i64 0, metadata !2770, metadata !679) #11, !dbg !2780
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2771, metadata !679) #11, !dbg !2781
  %4 = icmp ne %struct.quoting_options* %2, null, !dbg !2782
  %5 = select i1 %4, %struct.quoting_options* %2, %struct.quoting_options* @default_quoting_options, !dbg !2782
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2772, metadata !679) #11, !dbg !2783
  %6 = tail call i32* @__errno_location() #1, !dbg !2784
  %7 = load i32, i32* %6, align 4, !dbg !2784, !tbaa !863
  tail call void @llvm.dbg.value(metadata i32 %7, i64 0, metadata !2773, metadata !679) #11, !dbg !2785
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2786
  %9 = load i32, i32* %8, align 4, !dbg !2786, !tbaa !1667
  %10 = or i32 %9, 1, !dbg !2787
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !2774, metadata !679) #11, !dbg !2788
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2789
  %12 = load i32, i32* %11, align 8, !dbg !2789, !tbaa !1605
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !2790
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2791
  %15 = load i8*, i8** %14, align 8, !dbg !2791, !tbaa !1694
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2792
  %17 = load i8*, i8** %16, align 8, !dbg !2792, !tbaa !1697
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* %13, i8* %15, i8* %17) #11, !dbg !2793
  %19 = add i64 %18, 1, !dbg !2794
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !2775, metadata !679) #11, !dbg !2795
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !2796, metadata !679) #11, !dbg !2801
  %20 = tail call noalias i8* @xmalloc(i64 %19) #11, !dbg !2803
  tail call void @llvm.dbg.value(metadata i8* %20, i64 0, metadata !2776, metadata !679) #11, !dbg !2804
  %21 = load i32, i32* %11, align 8, !dbg !2805, !tbaa !1605
  %22 = load i8*, i8** %14, align 8, !dbg !2806, !tbaa !1694
  %23 = load i8*, i8** %16, align 8, !dbg !2807, !tbaa !1697
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* %13, i8* %22, i8* %23) #11, !dbg !2808
  store i32 %7, i32* %6, align 4, !dbg !2809, !tbaa !863
  ret i8* %20, !dbg !2810
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_alloc_mem(i8*, i64, i64*, %struct.quoting_options*) local_unnamed_addr #6 !dbg !2765 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2764, metadata !679), !dbg !2811
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2769, metadata !679), !dbg !2812
  tail call void @llvm.dbg.value(metadata i64* %2, i64 0, metadata !2770, metadata !679), !dbg !2813
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2771, metadata !679), !dbg !2814
  %5 = icmp ne %struct.quoting_options* %3, null, !dbg !2815
  %6 = select i1 %5, %struct.quoting_options* %3, %struct.quoting_options* @default_quoting_options, !dbg !2815
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2772, metadata !679), !dbg !2816
  %7 = tail call i32* @__errno_location() #1, !dbg !2817
  %8 = load i32, i32* %7, align 4, !dbg !2817, !tbaa !863
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !2773, metadata !679), !dbg !2818
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2819
  %10 = load i32, i32* %9, align 4, !dbg !2819, !tbaa !1667
  %11 = icmp ne i64* %2, null, !dbg !2820
  %12 = xor i1 %11, true, !dbg !2820
  %13 = zext i1 %12 to i32, !dbg !2820
  %14 = or i32 %10, %13, !dbg !2821
  tail call void @llvm.dbg.value(metadata i32 %14, i64 0, metadata !2774, metadata !679), !dbg !2822
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2823
  %16 = load i32, i32* %15, align 8, !dbg !2823, !tbaa !1605
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !2824
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2825
  %19 = load i8*, i8** %18, align 8, !dbg !2825, !tbaa !1694
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2826
  %21 = load i8*, i8** %20, align 8, !dbg !2826, !tbaa !1697
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* %17, i8* %19, i8* %21), !dbg !2827
  %23 = add i64 %22, 1, !dbg !2828
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !2775, metadata !679), !dbg !2829
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !2796, metadata !679) #11, !dbg !2830
  %24 = tail call noalias i8* @xmalloc(i64 %23) #11, !dbg !2832
  tail call void @llvm.dbg.value(metadata i8* %24, i64 0, metadata !2776, metadata !679), !dbg !2833
  %25 = load i32, i32* %15, align 8, !dbg !2834, !tbaa !1605
  %26 = load i8*, i8** %18, align 8, !dbg !2835, !tbaa !1694
  %27 = load i8*, i8** %20, align 8, !dbg !2836, !tbaa !1697
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* %17, i8* %26, i8* %27), !dbg !2837
  store i32 %8, i32* %7, align 4, !dbg !2838, !tbaa !863
  br i1 %11, label %29, label %30, !dbg !2839

; <label>:29:                                     ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !2840, !tbaa !2842
  br label %30, !dbg !2843

; <label>:30:                                     ; preds = %29, %4
  ret i8* %24, !dbg !2844
}

; Function Attrs: nounwind sspstrong uwtable
define void @quotearg_free() local_unnamed_addr #6 !dbg !2845 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2849, !tbaa !687
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %1, i64 0, metadata !2847, metadata !679), !dbg !2850
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2848, metadata !679), !dbg !2851
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2848, metadata !679), !dbg !2851
  %2 = load i32, i32* @nslots, align 4, !dbg !2852, !tbaa !863
  %3 = icmp sgt i32 %2, 1, !dbg !2856
  br i1 %3, label %4, label %14, !dbg !2857

; <label>:4:                                      ; preds = %0
  br label %5, !dbg !2859

; <label>:5:                                      ; preds = %4, %5
  %6 = phi i64 [ %9, %5 ], [ 1, %4 ]
  %7 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %6, i32 1, !dbg !2859
  %8 = load i8*, i8** %7, align 8, !dbg !2859, !tbaa !2860
  tail call void @free(i8* %8) #11, !dbg !2862
  %9 = add nuw i64 %6, 1, !dbg !2863
  %10 = load i32, i32* @nslots, align 4, !dbg !2852, !tbaa !863
  %11 = sext i32 %10 to i64, !dbg !2856
  %12 = icmp slt i64 %9, %11, !dbg !2856
  br i1 %12, label %5, label %13, !dbg !2857, !llvm.loop !2865

; <label>:13:                                     ; preds = %5
  br label %14, !dbg !2868

; <label>:14:                                     ; preds = %13, %0
  %15 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !2868
  %16 = load i8*, i8** %15, align 8, !dbg !2868, !tbaa !2860
  %17 = icmp eq i8* %16, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2870
  br i1 %17, label %19, label %18, !dbg !2871

; <label>:18:                                     ; preds = %14
  tail call void @free(i8* %16) #11, !dbg !2872
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !2874, !tbaa !2875
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !2876, !tbaa !2860
  br label %19, !dbg !2877

; <label>:19:                                     ; preds = %14, %18
  %20 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !2878
  br i1 %20, label %23, label %21, !dbg !2880

; <label>:21:                                     ; preds = %19
  %22 = bitcast %struct.slotvec* %1 to i8*, !dbg !2881
  tail call void @free(i8* %22) #11, !dbg !2883
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !2884, !tbaa !687
  br label %23, !dbg !2885

; <label>:23:                                     ; preds = %19, %21
  store i32 1, i32* @nslots, align 4, !dbg !2886, !tbaa !863
  ret void, !dbg !2887
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n(i32, i8*) local_unnamed_addr #6 !dbg !2888 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2892, metadata !679), !dbg !2894
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2893, metadata !679), !dbg !2895
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2896
  ret i8* %3, !dbg !2897
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32, i8*, i64, %struct.quoting_options*) unnamed_addr #6 !dbg !2898 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2902, metadata !679), !dbg !2916
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2903, metadata !679), !dbg !2917
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2904, metadata !679), !dbg !2918
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2905, metadata !679), !dbg !2919
  %5 = tail call i32* @__errno_location() #1, !dbg !2920
  %6 = load i32, i32* %5, align 4, !dbg !2920, !tbaa !863
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !2906, metadata !679), !dbg !2921
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2922, !tbaa !687
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %7, i64 0, metadata !2907, metadata !679), !dbg !2923
  %8 = icmp slt i32 %0, 0, !dbg !2924
  br i1 %8, label %9, label %10, !dbg !2926

; <label>:9:                                      ; preds = %4
  tail call void @abort() #14, !dbg !2927
  unreachable, !dbg !2927

; <label>:10:                                     ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !2928, !tbaa !863
  %12 = icmp sgt i32 %11, %0, !dbg !2929
  br i1 %12, label %34, label %13, !dbg !2930

; <label>:13:                                     ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !2931
  %15 = icmp ugt i32 %0, 2147483646, !dbg !2932
  br i1 %15, label %16, label %17, !dbg !2934

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #14, !dbg !2935
  unreachable, !dbg !2935

; <label>:17:                                     ; preds = %13
  %18 = bitcast %struct.slotvec* %7 to i8*, !dbg !2936
  %19 = select i1 %14, i8* null, i8* %18, !dbg !2936
  %20 = add nsw i32 %0, 1, !dbg !2938
  %21 = sext i32 %20 to i64, !dbg !2939
  %22 = shl nsw i64 %21, 4, !dbg !2940
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #11, !dbg !2941
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !2941
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %24, i64 0, metadata !2907, metadata !679), !dbg !2923
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !2942, !tbaa !687
  br i1 %14, label %25, label %26, !dbg !2943

; <label>:25:                                     ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i32 8, i1 false), !dbg !2944, !tbaa.struct !2946
  br label %26, !dbg !2947

; <label>:26:                                     ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !2948, !tbaa !863
  %28 = sext i32 %27 to i64, !dbg !2949
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !2949
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !2950
  %31 = sub nsw i32 %20, %27, !dbg !2951
  %32 = sext i32 %31 to i64, !dbg !2952
  %33 = shl nsw i64 %32, 4, !dbg !2953
  tail call void @llvm.memset.p0i8.i64(i8* %30, i8 0, i64 %33, i32 8, i1 false), !dbg !2950
  store i32 %20, i32* @nslots, align 4, !dbg !2954, !tbaa !863
  br label %34, !dbg !2955

; <label>:34:                                     ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ]
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %35, i64 0, metadata !2907, metadata !679), !dbg !2923
  %36 = sext i32 %0 to i64, !dbg !2956
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !2957
  %38 = load i64, i64* %37, align 8, !dbg !2957, !tbaa !2875
  tail call void @llvm.dbg.value(metadata i64 %38, i64 0, metadata !2911, metadata !679), !dbg !2958
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !2959
  %40 = load i8*, i8** %39, align 8, !dbg !2959, !tbaa !2860
  tail call void @llvm.dbg.value(metadata i8* %40, i64 0, metadata !2913, metadata !679), !dbg !2960
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !2961
  %42 = load i32, i32* %41, align 4, !dbg !2961, !tbaa !1667
  %43 = or i32 %42, 1, !dbg !2962
  tail call void @llvm.dbg.value(metadata i32 %43, i64 0, metadata !2914, metadata !679), !dbg !2963
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2964
  %45 = load i32, i32* %44, align 8, !dbg !2964, !tbaa !1605
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !2965
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !2966
  %48 = load i8*, i8** %47, align 8, !dbg !2966, !tbaa !1694
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !2967
  %50 = load i8*, i8** %49, align 8, !dbg !2967, !tbaa !1697
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* %46, i8* %48, i8* %50), !dbg !2968
  tail call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !2915, metadata !679), !dbg !2969
  %52 = icmp ugt i64 %38, %51, !dbg !2970
  br i1 %52, label %63, label %53, !dbg !2972

; <label>:53:                                     ; preds = %34
  %54 = add i64 %51, 1, !dbg !2973
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !2911, metadata !679), !dbg !2958
  store i64 %54, i64* %37, align 8, !dbg !2975, !tbaa !2875
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2976
  br i1 %55, label %57, label %56, !dbg !2978

; <label>:56:                                     ; preds = %53
  tail call void @free(i8* %40) #11, !dbg !2979
  br label %57, !dbg !2979

; <label>:57:                                     ; preds = %53, %56
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !2796, metadata !679) #11, !dbg !2980
  %58 = tail call noalias i8* @xmalloc(i64 %54) #11, !dbg !2982
  tail call void @llvm.dbg.value(metadata i8* %58, i64 0, metadata !2913, metadata !679), !dbg !2960
  store i8* %58, i8** %39, align 8, !dbg !2983, !tbaa !2860
  %59 = load i32, i32* %44, align 8, !dbg !2984, !tbaa !1605
  %60 = load i8*, i8** %47, align 8, !dbg !2985, !tbaa !1694
  %61 = load i8*, i8** %49, align 8, !dbg !2986, !tbaa !1697
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* %46, i8* %60, i8* %61), !dbg !2987
  br label %63, !dbg !2988

; <label>:63:                                     ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ]
  tail call void @llvm.dbg.value(metadata i8* %64, i64 0, metadata !2913, metadata !679), !dbg !2960
  store i32 %6, i32* %5, align 4, !dbg !2989, !tbaa !863
  ret i8* %64, !dbg !2990
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #7

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #7

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !2991 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2995, metadata !679), !dbg !2998
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2996, metadata !679), !dbg !2999
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2997, metadata !679), !dbg !3000
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !3001
  ret i8* %4, !dbg !3002
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg(i8*) local_unnamed_addr #6 !dbg !3003 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3007, metadata !679), !dbg !3008
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2892, metadata !679) #11, !dbg !3009
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2893, metadata !679) #11, !dbg !3011
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #11, !dbg !3012
  ret i8* %2, !dbg !3013
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_mem(i8*, i64) local_unnamed_addr #6 !dbg !3014 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3018, metadata !679), !dbg !3020
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3019, metadata !679), !dbg !3021
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2995, metadata !679) #11, !dbg !3022
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2996, metadata !679) #11, !dbg !3024
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2997, metadata !679) #11, !dbg !3025
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #11, !dbg !3026
  ret i8* %3, !dbg !3027
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style(i32, i32, i8*) local_unnamed_addr #6 !dbg !3028 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !3036, metadata !3042), !dbg !3043
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3032, metadata !679), !dbg !3045
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3033, metadata !679), !dbg !3046
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3034, metadata !679), !dbg !3047
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3048
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #11, !dbg !3048
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3035, metadata !2153), !dbg !3049
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3041, metadata !679) #11, !dbg !3050
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !3051
  call void @llvm.lifetime.start(i64 52, i8* nonnull %7), !dbg !3051
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !3036, metadata !679) #11, !dbg !3043
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3036, metadata !3052) #11, !dbg !3043
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !3043
  %8 = icmp eq i32 %1, 10, !dbg !3053
  br i1 %8, label %9, label %10, !dbg !3055

; <label>:9:                                      ; preds = %3
  tail call void @abort() #14, !dbg !3056, !noalias !3057
  unreachable, !dbg !3056

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3036, metadata !3052) #11, !dbg !3043
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3060
  store i32 %1, i32* %11, align 8, !dbg !3060, !alias.scope !3057
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !3060
  %13 = bitcast i32* %12 to i8*, !dbg !3060
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #11, !dbg !3060
  call void @llvm.lifetime.end(i64 52, i8* nonnull %7), !dbg !3061
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3035, metadata !2153), !dbg !3049
  %14 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !3062
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #11, !dbg !3063
  ret i8* %14, !dbg !3064
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_mem(i32, i32, i8*, i64) local_unnamed_addr #6 !dbg !3065 {
  %5 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !3036, metadata !3042), !dbg !3074
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3069, metadata !679), !dbg !3076
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3070, metadata !679), !dbg !3077
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3071, metadata !679), !dbg !3078
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3072, metadata !679), !dbg !3079
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !3080
  call void @llvm.lifetime.start(i64 56, i8* nonnull %7) #11, !dbg !3080
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !3073, metadata !2153), !dbg !3081
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3041, metadata !679) #11, !dbg !3082
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !3083
  call void @llvm.lifetime.start(i64 52, i8* nonnull %8), !dbg !3083
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !3036, metadata !679) #11, !dbg !3074
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3036, metadata !3052) #11, !dbg !3074
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !3074
  %9 = icmp eq i32 %1, 10, !dbg !3084
  br i1 %9, label %10, label %11, !dbg !3085

; <label>:10:                                     ; preds = %4
  tail call void @abort() #14, !dbg !3086, !noalias !3087
  unreachable, !dbg !3086

; <label>:11:                                     ; preds = %4
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3036, metadata !3052) #11, !dbg !3074
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3090
  store i32 %1, i32* %12, align 8, !dbg !3090, !alias.scope !3087
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !3090
  %14 = bitcast i32* %13 to i8*, !dbg !3090
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* nonnull %8, i64 52, i32 4, i1 false) #11, !dbg !3090
  call void @llvm.lifetime.end(i64 52, i8* nonnull %8), !dbg !3091
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !3073, metadata !2153), !dbg !3081
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %6), !dbg !3092
  call void @llvm.lifetime.end(i64 56, i8* nonnull %7) #11, !dbg !3093
  ret i8* %15, !dbg !3094
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style(i32, i8*) local_unnamed_addr #6 !dbg !3095 {
  %3 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %3, metadata !3036, metadata !3042), !dbg !3101
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3099, metadata !679), !dbg !3104
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3100, metadata !679), !dbg !3105
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3032, metadata !679) #11, !dbg !3106
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3033, metadata !679) #11, !dbg !3107
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3034, metadata !679) #11, !dbg !3108
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3109
  call void @llvm.lifetime.start(i64 56, i8* nonnull %5) #11, !dbg !3109
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3035, metadata !2153) #11, !dbg !3110
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3041, metadata !679) #11, !dbg !3111
  %6 = getelementptr inbounds [52 x i8], [52 x i8]* %3, i64 0, i64 0, !dbg !3112
  call void @llvm.lifetime.start(i64 52, i8* nonnull %6), !dbg !3112
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !3036, metadata !679) #11, !dbg !3101
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3036, metadata !3052) #11, !dbg !3101
  call void @llvm.memset.p0i8.i64(i8* nonnull %6, i8 0, i64 52, i32 4, i1 false), !dbg !3101
  %7 = icmp eq i32 %0, 10, !dbg !3113
  br i1 %7, label %8, label %9, !dbg !3114

; <label>:8:                                      ; preds = %2
  tail call void @abort() #14, !dbg !3115, !noalias !3116
  unreachable, !dbg !3115

; <label>:9:                                      ; preds = %2
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3036, metadata !3052) #11, !dbg !3101
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3119
  store i32 %0, i32* %10, align 8, !dbg !3119, !alias.scope !3116
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !3119
  %12 = bitcast i32* %11 to i8*, !dbg !3119
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* nonnull %6, i64 52, i32 4, i1 false) #11, !dbg !3119
  call void @llvm.lifetime.end(i64 52, i8* nonnull %6), !dbg !3120
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3035, metadata !2153) #11, !dbg !3110
  %13 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %4) #11, !dbg !3121
  call void @llvm.lifetime.end(i64 56, i8* nonnull %5) #11, !dbg !3122
  ret i8* %13, !dbg !3123
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !3124 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !3036, metadata !3042), !dbg !3131
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3128, metadata !679), !dbg !3134
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3129, metadata !679), !dbg !3135
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3130, metadata !679), !dbg !3136
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3069, metadata !679) #11, !dbg !3137
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3070, metadata !679) #11, !dbg !3138
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3071, metadata !679) #11, !dbg !3139
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3072, metadata !679) #11, !dbg !3140
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3141
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #11, !dbg !3141
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3073, metadata !2153) #11, !dbg !3142
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3041, metadata !679) #11, !dbg !3143
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !3144
  call void @llvm.lifetime.start(i64 52, i8* nonnull %7), !dbg !3144
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !3036, metadata !679) #11, !dbg !3131
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3036, metadata !3052) #11, !dbg !3131
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !3131
  %8 = icmp eq i32 %0, 10, !dbg !3145
  br i1 %8, label %9, label %10, !dbg !3146

; <label>:9:                                      ; preds = %3
  tail call void @abort() #14, !dbg !3147, !noalias !3148
  unreachable, !dbg !3147

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3036, metadata !3052) #11, !dbg !3131
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3151
  store i32 %0, i32* %11, align 8, !dbg !3151, !alias.scope !3148
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !3151
  %13 = bitcast i32* %12 to i8*, !dbg !3151
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #11, !dbg !3151
  call void @llvm.lifetime.end(i64 52, i8* nonnull %7), !dbg !3152
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3073, metadata !2153) #11, !dbg !3142
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %5) #11, !dbg !3153
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #11, !dbg !3154
  ret i8* %14, !dbg !3155
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char_mem(i8*, i64, i8 signext) local_unnamed_addr #6 !dbg !3156 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3160, metadata !679), !dbg !3164
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3161, metadata !679), !dbg !3165
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !3162, metadata !679), !dbg !3166
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3167
  call void @llvm.lifetime.start(i64 56, i8* nonnull %5) #11, !dbg !3167
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !3168, !tbaa.struct !3169
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3163, metadata !2153), !dbg !3170
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1625, metadata !679), !dbg !3171
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !1626, metadata !679), !dbg !3173
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1627, metadata !679), !dbg !3174
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !1628, metadata !679), !dbg !3175
  %6 = lshr i8 %2, 5, !dbg !3176
  %7 = zext i8 %6 to i64, !dbg !3176
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !3177
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !1629, metadata !679), !dbg !3178
  %9 = and i8 %2, 31, !dbg !3179
  %10 = zext i8 %9 to i32, !dbg !3180
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !1631, metadata !679), !dbg !3181
  %11 = load i32, i32* %8, align 4, !dbg !3182, !tbaa !863
  %12 = lshr i32 %11, %10, !dbg !3183
  %13 = and i32 %12, 1, !dbg !3184
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !1632, metadata !679), !dbg !3185
  %14 = xor i32 %13, 1, !dbg !3186
  %15 = shl i32 %14, %10, !dbg !3187
  %16 = xor i32 %15, %11, !dbg !3188
  store i32 %16, i32* %8, align 4, !dbg !3188, !tbaa !863
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3163, metadata !2153), !dbg !3170
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !3189
  call void @llvm.lifetime.end(i64 56, i8* nonnull %5) #11, !dbg !3190
  ret i8* %17, !dbg !3191
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char(i8*, i8 signext) local_unnamed_addr #6 !dbg !3192 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3196, metadata !679), !dbg !3198
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !3197, metadata !679), !dbg !3199
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3160, metadata !679) #11, !dbg !3200
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3161, metadata !679) #11, !dbg !3202
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !3162, metadata !679) #11, !dbg !3203
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3204
  call void @llvm.lifetime.start(i64 56, i8* nonnull %4) #11, !dbg !3204
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #11, !dbg !3205, !tbaa.struct !3169
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !3163, metadata !2153) #11, !dbg !3206
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !1625, metadata !679) #11, !dbg !3207
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1626, metadata !679) #11, !dbg !3209
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1627, metadata !679) #11, !dbg !3210
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1628, metadata !679) #11, !dbg !3211
  %5 = lshr i8 %1, 5, !dbg !3212
  %6 = zext i8 %5 to i64, !dbg !3212
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !3213
  tail call void @llvm.dbg.value(metadata i32* %7, i64 0, metadata !1629, metadata !679) #11, !dbg !3214
  %8 = and i8 %1, 31, !dbg !3215
  %9 = zext i8 %8 to i32, !dbg !3216
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !1631, metadata !679) #11, !dbg !3217
  %10 = load i32, i32* %7, align 4, !dbg !3218, !tbaa !863
  %11 = lshr i32 %10, %9, !dbg !3219
  %12 = and i32 %11, 1, !dbg !3220
  tail call void @llvm.dbg.value(metadata i32 %12, i64 0, metadata !1632, metadata !679) #11, !dbg !3221
  %13 = xor i32 %12, 1, !dbg !3222
  %14 = shl i32 %13, %9, !dbg !3223
  %15 = xor i32 %14, %10, !dbg !3224
  store i32 %15, i32* %7, align 4, !dbg !3224, !tbaa !863
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !3163, metadata !2153) #11, !dbg !3206
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #11, !dbg !3225
  call void @llvm.lifetime.end(i64 56, i8* nonnull %4) #11, !dbg !3226
  ret i8* %16, !dbg !3227
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon(i8*) local_unnamed_addr #6 !dbg !3228 {
  %2 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3230, metadata !679), !dbg !3231
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3196, metadata !679) #11, !dbg !3232
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !3197, metadata !679) #11, !dbg !3234
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3160, metadata !679) #11, !dbg !3235
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3161, metadata !679) #11, !dbg !3237
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !3162, metadata !679) #11, !dbg !3238
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !3239
  call void @llvm.lifetime.start(i64 56, i8* nonnull %3) #11, !dbg !3239
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %3, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #11, !dbg !3240, !tbaa.struct !3169
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !3163, metadata !2153) #11, !dbg !3241
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !1625, metadata !679) #11, !dbg !3242
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1626, metadata !679) #11, !dbg !3244
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1627, metadata !679) #11, !dbg !3245
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1628, metadata !679) #11, !dbg !3246
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !3247
  tail call void @llvm.dbg.value(metadata i32* %4, i64 0, metadata !1629, metadata !679) #11, !dbg !3248
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !1631, metadata !679) #11, !dbg !3249
  %5 = load i32, i32* %4, align 4, !dbg !3250, !tbaa !863
  %6 = or i32 %5, 67108864, !dbg !3251
  store i32 %6, i32* %4, align 4, !dbg !3251, !tbaa !863
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !3163, metadata !2153) #11, !dbg !3241
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #11, !dbg !3252
  call void @llvm.lifetime.end(i64 56, i8* nonnull %3) #11, !dbg !3253
  ret i8* %7, !dbg !3254
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon_mem(i8*, i64) local_unnamed_addr #6 !dbg !3255 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3257, metadata !679), !dbg !3259
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3258, metadata !679), !dbg !3260
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3160, metadata !679) #11, !dbg !3261
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3161, metadata !679) #11, !dbg !3263
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !3162, metadata !679) #11, !dbg !3264
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3265
  call void @llvm.lifetime.start(i64 56, i8* nonnull %4) #11, !dbg !3265
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #11, !dbg !3266, !tbaa.struct !3169
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !3163, metadata !2153) #11, !dbg !3267
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !1625, metadata !679) #11, !dbg !3268
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1626, metadata !679) #11, !dbg !3270
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1627, metadata !679) #11, !dbg !3271
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1628, metadata !679) #11, !dbg !3272
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !3273
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !1629, metadata !679) #11, !dbg !3274
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !1631, metadata !679) #11, !dbg !3275
  %6 = load i32, i32* %5, align 4, !dbg !3276, !tbaa !863
  %7 = or i32 %6, 67108864, !dbg !3277
  store i32 %7, i32* %5, align 4, !dbg !3277, !tbaa !863
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !3163, metadata !2153) #11, !dbg !3267
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #11, !dbg !3278
  call void @llvm.lifetime.end(i64 56, i8* nonnull %4) #11, !dbg !3279
  ret i8* %8, !dbg !3280
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_colon(i32, i32, i8*) local_unnamed_addr #6 !dbg !3281 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !3036, metadata !3042), !dbg !3287
  %5 = alloca %struct.quoting_options, align 8
  %6 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3283, metadata !679), !dbg !3289
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3284, metadata !679), !dbg !3290
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3285, metadata !679), !dbg !3291
  %7 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3292
  call void @llvm.lifetime.start(i64 56, i8* nonnull %7) #11, !dbg !3292
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3041, metadata !679) #11, !dbg !3293
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !3294
  call void @llvm.lifetime.start(i64 52, i8* nonnull %8), !dbg !3294
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !3036, metadata !679) #11, !dbg !3287
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3036, metadata !3052) #11, !dbg !3287
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !3287
  %9 = icmp eq i32 %1, 10, !dbg !3295
  br i1 %9, label %10, label %11, !dbg !3296

; <label>:10:                                     ; preds = %3
  tail call void @abort() #14, !dbg !3297, !noalias !3298
  unreachable, !dbg !3297

; <label>:11:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3036, metadata !3052) #11, !dbg !3287
  %12 = getelementptr inbounds [52 x i8], [52 x i8]* %6, i64 0, i64 0, !dbg !3301
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %12, i8* nonnull %8, i64 52, i32 4, i1 false), !dbg !3301
  call void @llvm.lifetime.end(i64 52, i8* nonnull %8), !dbg !3302
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3303
  store i32 %1, i32* %13, align 8, !dbg !3303
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !3303
  %15 = bitcast i32* %14 to i8*, !dbg !3303
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* nonnull %12, i64 52, i32 4, i1 false), !dbg !3303
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3286, metadata !2153), !dbg !3304
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1625, metadata !679), !dbg !3305
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1626, metadata !679), !dbg !3307
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1627, metadata !679), !dbg !3308
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1628, metadata !679), !dbg !3309
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 1, !dbg !3310
  tail call void @llvm.dbg.value(metadata i32* %16, i64 0, metadata !1629, metadata !679), !dbg !3311
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !1631, metadata !679), !dbg !3312
  %17 = load i32, i32* %16, align 4, !dbg !3313, !tbaa !863
  %18 = or i32 %17, 67108864, !dbg !3314
  store i32 %18, i32* %16, align 4, !dbg !3314, !tbaa !863
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3286, metadata !2153), !dbg !3304
  %19 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !3315
  call void @llvm.lifetime.end(i64 56, i8* nonnull %7) #11, !dbg !3316
  ret i8* %19, !dbg !3317
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom(i32, i8*, i8*, i8*) local_unnamed_addr #6 !dbg !3318 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3322, metadata !679), !dbg !3326
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3323, metadata !679), !dbg !3327
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3324, metadata !679), !dbg !3328
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3325, metadata !679), !dbg !3329
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3330, metadata !679) #11, !dbg !3340
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3335, metadata !679) #11, !dbg !3342
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3336, metadata !679) #11, !dbg !3343
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3337, metadata !679) #11, !dbg !3344
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3338, metadata !679) #11, !dbg !3345
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3346
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #11, !dbg !3346
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #11, !dbg !3347, !tbaa.struct !3169
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3339, metadata !2153) #11, !dbg !3348
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1675, metadata !679) #11, !dbg !3349
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1676, metadata !679) #11, !dbg !3351
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1677, metadata !679) #11, !dbg !3352
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1675, metadata !679) #11, !dbg !3349
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1675, metadata !679) #11, !dbg !3349
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3353
  store i32 10, i32* %7, align 8, !dbg !3354, !tbaa !1605
  %8 = icmp ne i8* %1, null, !dbg !3355
  %9 = icmp ne i8* %2, null, !dbg !3356
  %10 = and i1 %8, %9, !dbg !3357
  br i1 %10, label %12, label %11, !dbg !3357

; <label>:11:                                     ; preds = %4
  tail call void @abort() #14, !dbg !3358
  unreachable, !dbg !3358

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3359
  store i8* %1, i8** %13, align 8, !dbg !3360, !tbaa !1694
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3361
  store i8* %2, i8** %14, align 8, !dbg !3362, !tbaa !1697
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3339, metadata !2153) #11, !dbg !3348
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #11, !dbg !3363
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #11, !dbg !3364
  ret i8* %15, !dbg !3365
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom_mem(i32, i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !3331 {
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3330, metadata !679), !dbg !3366
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3335, metadata !679), !dbg !3367
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3336, metadata !679), !dbg !3368
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3337, metadata !679), !dbg !3369
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !3338, metadata !679), !dbg !3370
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !3371
  call void @llvm.lifetime.start(i64 56, i8* nonnull %7) #11, !dbg !3371
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %7, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !3372, !tbaa.struct !3169
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !3339, metadata !2153), !dbg !3373
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !1675, metadata !679) #11, !dbg !3374
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1676, metadata !679) #11, !dbg !3376
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1677, metadata !679) #11, !dbg !3377
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1675, metadata !679) #11, !dbg !3374
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !1675, metadata !679) #11, !dbg !3374
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3378
  store i32 10, i32* %8, align 8, !dbg !3379, !tbaa !1605
  %9 = icmp ne i8* %1, null, !dbg !3380
  %10 = icmp ne i8* %2, null, !dbg !3381
  %11 = and i1 %9, %10, !dbg !3382
  br i1 %11, label %13, label %12, !dbg !3382

; <label>:12:                                     ; preds = %5
  tail call void @abort() #14, !dbg !3383
  unreachable, !dbg !3383

; <label>:13:                                     ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3384
  store i8* %1, i8** %14, align 8, !dbg !3385, !tbaa !1694
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3386
  store i8* %2, i8** %15, align 8, !dbg !3387, !tbaa !1697
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !3339, metadata !2153), !dbg !3373
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !3388
  call void @llvm.lifetime.end(i64 56, i8* nonnull %7) #11, !dbg !3389
  ret i8* %16, !dbg !3390
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom(i8*, i8*, i8*) local_unnamed_addr #6 !dbg !3391 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3395, metadata !679), !dbg !3398
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3396, metadata !679), !dbg !3399
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3397, metadata !679), !dbg !3400
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3322, metadata !679) #11, !dbg !3401
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3323, metadata !679) #11, !dbg !3403
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3324, metadata !679) #11, !dbg !3404
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3325, metadata !679) #11, !dbg !3405
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3330, metadata !679) #11, !dbg !3406
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3335, metadata !679) #11, !dbg !3408
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3336, metadata !679) #11, !dbg !3409
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3337, metadata !679) #11, !dbg !3410
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3338, metadata !679) #11, !dbg !3411
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3412
  call void @llvm.lifetime.start(i64 56, i8* nonnull %5) #11, !dbg !3412
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #11, !dbg !3413, !tbaa.struct !3169
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3339, metadata !2153) #11, !dbg !3414
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1675, metadata !679) #11, !dbg !3415
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1676, metadata !679) #11, !dbg !3417
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1677, metadata !679) #11, !dbg !3418
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1675, metadata !679) #11, !dbg !3415
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1675, metadata !679) #11, !dbg !3415
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3419
  store i32 10, i32* %6, align 8, !dbg !3420, !tbaa !1605
  %7 = icmp ne i8* %0, null, !dbg !3421
  %8 = icmp ne i8* %1, null, !dbg !3422
  %9 = and i1 %7, %8, !dbg !3423
  br i1 %9, label %11, label %10, !dbg !3423

; <label>:10:                                     ; preds = %3
  tail call void @abort() #14, !dbg !3424
  unreachable, !dbg !3424

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !3425
  store i8* %0, i8** %12, align 8, !dbg !3426, !tbaa !1694
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !3427
  store i8* %1, i8** %13, align 8, !dbg !3428, !tbaa !1697
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3339, metadata !2153) #11, !dbg !3414
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #11, !dbg !3429
  call void @llvm.lifetime.end(i64 56, i8* nonnull %5) #11, !dbg !3430
  ret i8* %14, !dbg !3431
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom_mem(i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !3432 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3436, metadata !679), !dbg !3440
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3437, metadata !679), !dbg !3441
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3438, metadata !679), !dbg !3442
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3439, metadata !679), !dbg !3443
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3330, metadata !679) #11, !dbg !3444
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3335, metadata !679) #11, !dbg !3446
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3336, metadata !679) #11, !dbg !3447
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3337, metadata !679) #11, !dbg !3448
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3338, metadata !679) #11, !dbg !3449
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3450
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #11, !dbg !3450
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #11, !dbg !3451, !tbaa.struct !3169
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3339, metadata !2153) #11, !dbg !3452
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1675, metadata !679) #11, !dbg !3453
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1676, metadata !679) #11, !dbg !3455
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1677, metadata !679) #11, !dbg !3456
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1675, metadata !679) #11, !dbg !3453
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1675, metadata !679) #11, !dbg !3453
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3457
  store i32 10, i32* %7, align 8, !dbg !3458, !tbaa !1605
  %8 = icmp ne i8* %0, null, !dbg !3459
  %9 = icmp ne i8* %1, null, !dbg !3460
  %10 = and i1 %8, %9, !dbg !3461
  br i1 %10, label %12, label %11, !dbg !3461

; <label>:11:                                     ; preds = %4
  tail call void @abort() #14, !dbg !3462
  unreachable, !dbg !3462

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3463
  store i8* %0, i8** %13, align 8, !dbg !3464, !tbaa !1694
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3465
  store i8* %1, i8** %14, align 8, !dbg !3466, !tbaa !1697
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3339, metadata !2153) #11, !dbg !3452
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #11, !dbg !3467
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #11, !dbg !3468
  ret i8* %15, !dbg !3469
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !3470 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3474, metadata !679), !dbg !3477
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3475, metadata !679), !dbg !3478
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3476, metadata !679), !dbg !3479
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !3480
  ret i8* %4, !dbg !3481
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_mem(i8*, i64) local_unnamed_addr #6 !dbg !3482 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3486, metadata !679), !dbg !3488
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3487, metadata !679), !dbg !3489
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3474, metadata !679) #11, !dbg !3490
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3475, metadata !679) #11, !dbg !3492
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3476, metadata !679) #11, !dbg !3493
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #11, !dbg !3494
  ret i8* %3, !dbg !3495
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n(i32, i8*) local_unnamed_addr #6 !dbg !3496 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3500, metadata !679), !dbg !3502
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3501, metadata !679), !dbg !3503
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3474, metadata !679) #11, !dbg !3504
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3475, metadata !679) #11, !dbg !3506
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3476, metadata !679) #11, !dbg !3507
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #11, !dbg !3508
  ret i8* %3, !dbg !3509
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote(i8*) local_unnamed_addr #6 !dbg !3510 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3514, metadata !679), !dbg !3515
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3500, metadata !679) #11, !dbg !3516
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3501, metadata !679) #11, !dbg !3518
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3474, metadata !679) #11, !dbg !3519
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3475, metadata !679) #11, !dbg !3521
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3476, metadata !679) #11, !dbg !3522
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #11, !dbg !3523
  ret i8* %2, !dbg !3524
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @dup_safer(i32) local_unnamed_addr #6 !dbg !3525 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3530, metadata !679), !dbg !3531
  %2 = tail call i32 (i32, i32, ...) @rpl_fcntl(i32 %0, i32 0, i32 3) #11, !dbg !3532
  ret i32 %2, !dbg !3533
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_arn(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly, i64) local_unnamed_addr #6 !dbg !3534 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3578, metadata !679), !dbg !3584
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3579, metadata !679), !dbg !3585
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3580, metadata !679), !dbg !3586
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3581, metadata !679), !dbg !3587
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !3582, metadata !679), !dbg !3588
  tail call void @llvm.dbg.value(metadata i64 %5, i64 0, metadata !3583, metadata !679), !dbg !3589
  %7 = icmp eq i8* %1, null, !dbg !3590
  br i1 %7, label %10, label %8, !dbg !3592

; <label>:8:                                      ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.92, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #11, !dbg !3593
  br label %12, !dbg !3593

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.93, i64 0, i64 0), i8* %2, i8* %3) #11, !dbg !3594
  br label %12

; <label>:12:                                     ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.94, i64 0, i64 0), i32 5) #11, !dbg !3595
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2017) #11, !dbg !3596
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([203 x i8], [203 x i8]* @.str.3.95, i64 0, i64 0), i32 5) #11, !dbg !3598
  %16 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %0) #11, !dbg !3599
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
  ], !dbg !3600

; <label>:17:                                     ; preds = %12
  tail call void @abort() #14, !dbg !3601
  unreachable, !dbg !3601

; <label>:18:                                     ; preds = %12
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4.96, i64 0, i64 0), i32 5) #11, !dbg !3603
  %20 = load i8*, i8** %4, align 8, !dbg !3603, !tbaa !687
  %21 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %19, i8* %20) #11, !dbg !3604
  br label %146, !dbg !3606

; <label>:22:                                     ; preds = %12
  %23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5.97, i64 0, i64 0), i32 5) #11, !dbg !3607
  %24 = load i8*, i8** %4, align 8, !dbg !3607, !tbaa !687
  %25 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3607
  %26 = load i8*, i8** %25, align 8, !dbg !3607, !tbaa !687
  %27 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %23, i8* %24, i8* %26) #11, !dbg !3608
  br label %146, !dbg !3609

; <label>:28:                                     ; preds = %12
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6.98, i64 0, i64 0), i32 5) #11, !dbg !3610
  %30 = load i8*, i8** %4, align 8, !dbg !3610, !tbaa !687
  %31 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3610
  %32 = load i8*, i8** %31, align 8, !dbg !3610, !tbaa !687
  %33 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3610
  %34 = load i8*, i8** %33, align 8, !dbg !3610, !tbaa !687
  %35 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %29, i8* %30, i8* %32, i8* %34) #11, !dbg !3611
  br label %146, !dbg !3612

; <label>:36:                                     ; preds = %12
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7.99, i64 0, i64 0), i32 5) #11, !dbg !3613
  %38 = load i8*, i8** %4, align 8, !dbg !3613, !tbaa !687
  %39 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3613
  %40 = load i8*, i8** %39, align 8, !dbg !3613, !tbaa !687
  %41 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3613
  %42 = load i8*, i8** %41, align 8, !dbg !3613, !tbaa !687
  %43 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3613
  %44 = load i8*, i8** %43, align 8, !dbg !3613, !tbaa !687
  %45 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %37, i8* %38, i8* %40, i8* %42, i8* %44) #11, !dbg !3614
  br label %146, !dbg !3615

; <label>:46:                                     ; preds = %12
  %47 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8.100, i64 0, i64 0), i32 5) #11, !dbg !3616
  %48 = load i8*, i8** %4, align 8, !dbg !3616, !tbaa !687
  %49 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3616
  %50 = load i8*, i8** %49, align 8, !dbg !3616, !tbaa !687
  %51 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3616
  %52 = load i8*, i8** %51, align 8, !dbg !3616, !tbaa !687
  %53 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3616
  %54 = load i8*, i8** %53, align 8, !dbg !3616, !tbaa !687
  %55 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3616
  %56 = load i8*, i8** %55, align 8, !dbg !3616, !tbaa !687
  %57 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %47, i8* %48, i8* %50, i8* %52, i8* %54, i8* %56) #11, !dbg !3617
  br label %146, !dbg !3618

; <label>:58:                                     ; preds = %12
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9.101, i64 0, i64 0), i32 5) #11, !dbg !3619
  %60 = load i8*, i8** %4, align 8, !dbg !3619, !tbaa !687
  %61 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3619
  %62 = load i8*, i8** %61, align 8, !dbg !3619, !tbaa !687
  %63 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3619
  %64 = load i8*, i8** %63, align 8, !dbg !3619, !tbaa !687
  %65 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3619
  %66 = load i8*, i8** %65, align 8, !dbg !3619, !tbaa !687
  %67 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3619
  %68 = load i8*, i8** %67, align 8, !dbg !3619, !tbaa !687
  %69 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3619
  %70 = load i8*, i8** %69, align 8, !dbg !3619, !tbaa !687
  %71 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %59, i8* %60, i8* %62, i8* %64, i8* %66, i8* %68, i8* %70) #11, !dbg !3620
  br label %146, !dbg !3621

; <label>:72:                                     ; preds = %12
  %73 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10.102, i64 0, i64 0), i32 5) #11, !dbg !3622
  %74 = load i8*, i8** %4, align 8, !dbg !3622, !tbaa !687
  %75 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3622
  %76 = load i8*, i8** %75, align 8, !dbg !3622, !tbaa !687
  %77 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3622
  %78 = load i8*, i8** %77, align 8, !dbg !3622, !tbaa !687
  %79 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3622
  %80 = load i8*, i8** %79, align 8, !dbg !3622, !tbaa !687
  %81 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3622
  %82 = load i8*, i8** %81, align 8, !dbg !3622, !tbaa !687
  %83 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3622
  %84 = load i8*, i8** %83, align 8, !dbg !3622, !tbaa !687
  %85 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3622
  %86 = load i8*, i8** %85, align 8, !dbg !3622, !tbaa !687
  %87 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %73, i8* %74, i8* %76, i8* %78, i8* %80, i8* %82, i8* %84, i8* %86) #11, !dbg !3623
  br label %146, !dbg !3624

; <label>:88:                                     ; preds = %12
  %89 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11.103, i64 0, i64 0), i32 5) #11, !dbg !3625
  %90 = load i8*, i8** %4, align 8, !dbg !3625, !tbaa !687
  %91 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3625
  %92 = load i8*, i8** %91, align 8, !dbg !3625, !tbaa !687
  %93 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3625
  %94 = load i8*, i8** %93, align 8, !dbg !3625, !tbaa !687
  %95 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3625
  %96 = load i8*, i8** %95, align 8, !dbg !3625, !tbaa !687
  %97 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3625
  %98 = load i8*, i8** %97, align 8, !dbg !3625, !tbaa !687
  %99 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3625
  %100 = load i8*, i8** %99, align 8, !dbg !3625, !tbaa !687
  %101 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3625
  %102 = load i8*, i8** %101, align 8, !dbg !3625, !tbaa !687
  %103 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3625
  %104 = load i8*, i8** %103, align 8, !dbg !3625, !tbaa !687
  %105 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %89, i8* %90, i8* %92, i8* %94, i8* %96, i8* %98, i8* %100, i8* %102, i8* %104) #11, !dbg !3626
  br label %146, !dbg !3627

; <label>:106:                                    ; preds = %12
  %107 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12.104, i64 0, i64 0), i32 5) #11, !dbg !3628
  %108 = load i8*, i8** %4, align 8, !dbg !3628, !tbaa !687
  %109 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3628
  %110 = load i8*, i8** %109, align 8, !dbg !3628, !tbaa !687
  %111 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3628
  %112 = load i8*, i8** %111, align 8, !dbg !3628, !tbaa !687
  %113 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3628
  %114 = load i8*, i8** %113, align 8, !dbg !3628, !tbaa !687
  %115 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3628
  %116 = load i8*, i8** %115, align 8, !dbg !3628, !tbaa !687
  %117 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3628
  %118 = load i8*, i8** %117, align 8, !dbg !3628, !tbaa !687
  %119 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3628
  %120 = load i8*, i8** %119, align 8, !dbg !3628, !tbaa !687
  %121 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3628
  %122 = load i8*, i8** %121, align 8, !dbg !3628, !tbaa !687
  %123 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3628
  %124 = load i8*, i8** %123, align 8, !dbg !3628, !tbaa !687
  %125 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %107, i8* %108, i8* %110, i8* %112, i8* %114, i8* %116, i8* %118, i8* %120, i8* %122, i8* %124) #11, !dbg !3629
  br label %146, !dbg !3630

; <label>:126:                                    ; preds = %12
  %127 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13.105, i64 0, i64 0), i32 5) #11, !dbg !3631
  %128 = load i8*, i8** %4, align 8, !dbg !3631, !tbaa !687
  %129 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3631
  %130 = load i8*, i8** %129, align 8, !dbg !3631, !tbaa !687
  %131 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3631
  %132 = load i8*, i8** %131, align 8, !dbg !3631, !tbaa !687
  %133 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3631
  %134 = load i8*, i8** %133, align 8, !dbg !3631, !tbaa !687
  %135 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3631
  %136 = load i8*, i8** %135, align 8, !dbg !3631, !tbaa !687
  %137 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3631
  %138 = load i8*, i8** %137, align 8, !dbg !3631, !tbaa !687
  %139 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3631
  %140 = load i8*, i8** %139, align 8, !dbg !3631, !tbaa !687
  %141 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3631
  %142 = load i8*, i8** %141, align 8, !dbg !3631, !tbaa !687
  %143 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3631
  %144 = load i8*, i8** %143, align 8, !dbg !3631, !tbaa !687
  %145 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %127, i8* %128, i8* %130, i8* %132, i8* %134, i8* %136, i8* %138, i8* %140, i8* %142, i8* %144) #11, !dbg !3632
  br label %146, !dbg !3633

; <label>:146:                                    ; preds = %126, %106, %88, %72, %58, %46, %36, %28, %22, %18
  ret void, !dbg !3634
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_ar(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly) local_unnamed_addr #6 !dbg !3635 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3639, metadata !679), !dbg !3645
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3640, metadata !679), !dbg !3646
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3641, metadata !679), !dbg !3647
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3642, metadata !679), !dbg !3648
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !3643, metadata !679), !dbg !3649
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3644, metadata !679), !dbg !3650
  br label %6, !dbg !3651

; <label>:6:                                      ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !3644, metadata !679), !dbg !3650
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !3653
  %9 = load i8*, i8** %8, align 8, !dbg !3653, !tbaa !687
  %10 = icmp eq i8* %9, null, !dbg !3656
  %11 = add i64 %7, 1, !dbg !3658
  tail call void @llvm.dbg.value(metadata i64 %11, i64 0, metadata !3644, metadata !679), !dbg !3650
  br i1 %10, label %12, label %6, !dbg !3656, !llvm.loop !3660

; <label>:12:                                     ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !3663
  ret void, !dbg !3664
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_va(%struct._IO_FILE*, i8*, i8*, i8*, %struct.__va_list_tag* nocapture) local_unnamed_addr #6 !dbg !3665 {
  %6 = alloca [10 x i8*], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3676, metadata !679), !dbg !3684
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3677, metadata !679), !dbg !3685
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3678, metadata !679), !dbg !3686
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3679, metadata !679), !dbg !3687
  tail call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, i64 0, metadata !3680, metadata !679), !dbg !3688
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !3689
  call void @llvm.lifetime.start(i64 80, i8* nonnull %7) #11, !dbg !3689
  tail call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !3682, metadata !679), !dbg !3690
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3681, metadata !679), !dbg !3691
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3681, metadata !679), !dbg !3691
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  %11 = load i32, i32* %8, align 8, !dbg !3692
  %12 = icmp ult i32 %11, 41, !dbg !3692
  br i1 %12, label %13, label %18, !dbg !3692

; <label>:13:                                     ; preds = %5
  %14 = load i8*, i8** %9, align 8, !dbg !3696
  %15 = sext i32 %11 to i64, !dbg !3696
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !3696
  %17 = add i32 %11, 8, !dbg !3696
  store i32 %17, i32* %8, align 8, !dbg !3696
  br label %21, !dbg !3696

; <label>:18:                                     ; preds = %5
  %19 = load i8*, i8** %10, align 8, !dbg !3698
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !3698
  store i8* %20, i8** %10, align 8, !dbg !3698
  br label %21, !dbg !3698

; <label>:21:                                     ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ], !dbg !3692
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !3700
  %25 = load i8*, i8** %24, align 8, !dbg !3700
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !3702
  store i8* %25, i8** %26, align 16, !dbg !3703, !tbaa !687
  %27 = icmp eq i8* %25, null, !dbg !3704
  br i1 %27, label %30, label %28, !dbg !3705

; <label>:28:                                     ; preds = %21
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3681, metadata !679), !dbg !3691
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3681, metadata !679), !dbg !3691
  %29 = icmp ult i32 %22, 41, !dbg !3692
  br i1 %29, label %35, label %32, !dbg !3692

; <label>:30:                                     ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ]
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !3707
  call void @llvm.lifetime.end(i64 80, i8* nonnull %7) #11, !dbg !3708
  ret void, !dbg !3708

; <label>:32:                                     ; preds = %28
  %33 = load i8*, i8** %10, align 8, !dbg !3698
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !3698
  store i8* %34, i8** %10, align 8, !dbg !3698
  br label %40, !dbg !3698

; <label>:35:                                     ; preds = %28
  %36 = load i8*, i8** %9, align 8, !dbg !3696
  %37 = sext i32 %22 to i64, !dbg !3696
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !3696
  %39 = add i32 %22, 8, !dbg !3696
  store i32 %39, i32* %8, align 8, !dbg !3696
  br label %40, !dbg !3696

; <label>:40:                                     ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ], !dbg !3692
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !3700
  %44 = load i8*, i8** %43, align 8, !dbg !3700
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !3702
  store i8* %44, i8** %45, align 8, !dbg !3703, !tbaa !687
  %46 = icmp eq i8* %44, null, !dbg !3704
  br i1 %46, label %30, label %47, !dbg !3705

; <label>:47:                                     ; preds = %40
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3681, metadata !679), !dbg !3691
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3681, metadata !679), !dbg !3691
  %48 = icmp ult i32 %41, 41, !dbg !3692
  br i1 %48, label %52, label %49, !dbg !3692

; <label>:49:                                     ; preds = %47
  %50 = load i8*, i8** %10, align 8, !dbg !3698
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !3698
  store i8* %51, i8** %10, align 8, !dbg !3698
  br label %57, !dbg !3698

; <label>:52:                                     ; preds = %47
  %53 = load i8*, i8** %9, align 8, !dbg !3696
  %54 = sext i32 %41 to i64, !dbg !3696
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !3696
  %56 = add i32 %41, 8, !dbg !3696
  store i32 %56, i32* %8, align 8, !dbg !3696
  br label %57, !dbg !3696

; <label>:57:                                     ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ], !dbg !3692
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !3700
  %61 = load i8*, i8** %60, align 8, !dbg !3700
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !3702
  store i8* %61, i8** %62, align 16, !dbg !3703, !tbaa !687
  %63 = icmp eq i8* %61, null, !dbg !3704
  br i1 %63, label %30, label %64, !dbg !3705

; <label>:64:                                     ; preds = %57
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3681, metadata !679), !dbg !3691
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3681, metadata !679), !dbg !3691
  %65 = icmp ult i32 %58, 41, !dbg !3692
  br i1 %65, label %69, label %66, !dbg !3692

; <label>:66:                                     ; preds = %64
  %67 = load i8*, i8** %10, align 8, !dbg !3698
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !3698
  store i8* %68, i8** %10, align 8, !dbg !3698
  br label %74, !dbg !3698

; <label>:69:                                     ; preds = %64
  %70 = load i8*, i8** %9, align 8, !dbg !3696
  %71 = sext i32 %58 to i64, !dbg !3696
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !3696
  %73 = add i32 %58, 8, !dbg !3696
  store i32 %73, i32* %8, align 8, !dbg !3696
  br label %74, !dbg !3696

; <label>:74:                                     ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ], !dbg !3692
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !3700
  %78 = load i8*, i8** %77, align 8, !dbg !3700
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !3702
  store i8* %78, i8** %79, align 8, !dbg !3703, !tbaa !687
  %80 = icmp eq i8* %78, null, !dbg !3704
  br i1 %80, label %30, label %81, !dbg !3705

; <label>:81:                                     ; preds = %74
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3681, metadata !679), !dbg !3691
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3681, metadata !679), !dbg !3691
  %82 = icmp ult i32 %75, 41, !dbg !3692
  br i1 %82, label %86, label %83, !dbg !3692

; <label>:83:                                     ; preds = %81
  %84 = load i8*, i8** %10, align 8, !dbg !3698
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !3698
  store i8* %85, i8** %10, align 8, !dbg !3698
  br label %91, !dbg !3698

; <label>:86:                                     ; preds = %81
  %87 = load i8*, i8** %9, align 8, !dbg !3696
  %88 = sext i32 %75 to i64, !dbg !3696
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !3696
  %90 = add i32 %75, 8, !dbg !3696
  store i32 %90, i32* %8, align 8, !dbg !3696
  br label %91, !dbg !3696

; <label>:91:                                     ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ], !dbg !3692
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !3700
  %95 = load i8*, i8** %94, align 8, !dbg !3700
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !3702
  store i8* %95, i8** %96, align 16, !dbg !3703, !tbaa !687
  %97 = icmp eq i8* %95, null, !dbg !3704
  br i1 %97, label %30, label %98, !dbg !3705

; <label>:98:                                     ; preds = %91
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3681, metadata !679), !dbg !3691
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3681, metadata !679), !dbg !3691
  %99 = icmp ult i32 %92, 41, !dbg !3692
  br i1 %99, label %103, label %100, !dbg !3692

; <label>:100:                                    ; preds = %98
  %101 = load i8*, i8** %10, align 8, !dbg !3698
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !3698
  store i8* %102, i8** %10, align 8, !dbg !3698
  br label %108, !dbg !3698

; <label>:103:                                    ; preds = %98
  %104 = load i8*, i8** %9, align 8, !dbg !3696
  %105 = sext i32 %92 to i64, !dbg !3696
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !3696
  %107 = add i32 %92, 8, !dbg !3696
  store i32 %107, i32* %8, align 8, !dbg !3696
  br label %108, !dbg !3696

; <label>:108:                                    ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !3700
  %111 = load i8*, i8** %110, align 8, !dbg !3700
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !3702
  store i8* %111, i8** %112, align 8, !dbg !3703, !tbaa !687
  %113 = icmp eq i8* %111, null, !dbg !3704
  br i1 %113, label %30, label %114, !dbg !3705

; <label>:114:                                    ; preds = %108
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3681, metadata !679), !dbg !3691
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3681, metadata !679), !dbg !3691
  %115 = load i8*, i8** %10, align 8, !dbg !3698
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !3698
  store i8* %116, i8** %10, align 8, !dbg !3698
  %117 = bitcast i8* %115 to i8**, !dbg !3700
  %118 = load i8*, i8** %117, align 8, !dbg !3700
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !3702
  store i8* %118, i8** %119, align 16, !dbg !3703, !tbaa !687
  %120 = icmp eq i8* %118, null, !dbg !3704
  br i1 %120, label %30, label %121, !dbg !3705

; <label>:121:                                    ; preds = %114
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3681, metadata !679), !dbg !3691
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3681, metadata !679), !dbg !3691
  %122 = load i8*, i8** %10, align 8, !dbg !3698
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !3698
  store i8* %123, i8** %10, align 8, !dbg !3698
  %124 = bitcast i8* %122 to i8**, !dbg !3700
  %125 = load i8*, i8** %124, align 8, !dbg !3700
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !3702
  store i8* %125, i8** %126, align 8, !dbg !3703, !tbaa !687
  %127 = icmp eq i8* %125, null, !dbg !3704
  br i1 %127, label %30, label %128, !dbg !3705

; <label>:128:                                    ; preds = %121
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3681, metadata !679), !dbg !3691
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3681, metadata !679), !dbg !3691
  %129 = load i8*, i8** %10, align 8, !dbg !3698
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !3698
  store i8* %130, i8** %10, align 8, !dbg !3698
  %131 = bitcast i8* %129 to i8**, !dbg !3700
  %132 = load i8*, i8** %131, align 8, !dbg !3700
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !3702
  store i8* %132, i8** %133, align 16, !dbg !3703, !tbaa !687
  %134 = icmp eq i8* %132, null, !dbg !3704
  br i1 %134, label %30, label %135, !dbg !3705

; <label>:135:                                    ; preds = %128
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3681, metadata !679), !dbg !3691
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3681, metadata !679), !dbg !3691
  %136 = load i8*, i8** %10, align 8, !dbg !3698
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !3698
  store i8* %137, i8** %10, align 8, !dbg !3698
  %138 = bitcast i8* %136 to i8**, !dbg !3700
  %139 = load i8*, i8** %138, align 8, !dbg !3700
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !3702
  store i8* %139, i8** %140, align 8, !dbg !3703, !tbaa !687
  %141 = icmp eq i8* %139, null, !dbg !3704
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3681, metadata !679), !dbg !3691
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3681, metadata !679), !dbg !3691
  %142 = select i1 %141, i64 9, i64 10, !dbg !3705
  br label %30, !dbg !3705
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc(%struct._IO_FILE*, i8*, i8*, i8*, ...) local_unnamed_addr #6 !dbg !3709 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3713, metadata !679), !dbg !3722
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3714, metadata !679), !dbg !3723
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3715, metadata !679), !dbg !3724
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3716, metadata !679), !dbg !3725
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !3726
  call void @llvm.lifetime.start(i64 24, i8* nonnull %6) #11, !dbg !3726
  tail call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !3717, metadata !679), !dbg !3727
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !3728
  call void @llvm.va_start(i8* nonnull %6), !dbg !3728
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !3729
  call void @llvm.va_end(i8* nonnull %6), !dbg !3730
  call void @llvm.lifetime.end(i64 24, i8* nonnull %6) #11, !dbg !3731
  ret void, !dbg !3731
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #11

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #11

; Function Attrs: nounwind sspstrong uwtable
define void @emit_bug_reporting_address() local_unnamed_addr #6 !dbg !3732 {
  %1 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14.108, i64 0, i64 0), i32 5) #11, !dbg !3733
  %2 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15.109, i64 0, i64 0)) #11, !dbg !3734
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.110, i64 0, i64 0), i32 5) #11, !dbg !3736
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17.111, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.18.112, i64 0, i64 0)) #11, !dbg !3737
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.19.113, i64 0, i64 0), i32 5) #11, !dbg !3738
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !3738, !tbaa !687
  %7 = tail call i32 @fputs_unlocked(i8* %5, %struct._IO_FILE* %6) #11, !dbg !3739
  ret void, !dbg !3740
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnmalloc(i64, i64) local_unnamed_addr #12 !dbg !3741 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3743, metadata !679), !dbg !3745
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3744, metadata !679), !dbg !3746
  %3 = udiv i64 9223372036854775807, %1, !dbg !3747
  %4 = icmp ult i64 %3, %0, !dbg !3747
  br i1 %4, label %5, label %6, !dbg !3749

; <label>:5:                                      ; preds = %2
  tail call void @xalloc_die() #14, !dbg !3750
  unreachable, !dbg !3750

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3751
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !3752, metadata !679) #11, !dbg !3759
  %8 = tail call noalias i8* @malloc(i64 %7) #11, !dbg !3761
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !3758, metadata !679) #11, !dbg !3762
  %9 = icmp eq i8* %8, null, !dbg !3763
  %10 = icmp ne i64 %7, 0, !dbg !3765
  %11 = and i1 %10, %9, !dbg !3767
  br i1 %11, label %12, label %13, !dbg !3767

; <label>:12:                                     ; preds = %6
  tail call void @xalloc_die() #14, !dbg !3768
  unreachable, !dbg !3768

; <label>:13:                                     ; preds = %6
  ret i8* %8, !dbg !3769
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmalloc(i64) local_unnamed_addr #6 !dbg !3753 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3752, metadata !679), !dbg !3770
  %2 = tail call noalias i8* @malloc(i64 %0) #11, !dbg !3771
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3758, metadata !679), !dbg !3772
  %3 = icmp eq i8* %2, null, !dbg !3773
  %4 = icmp ne i64 %0, 0, !dbg !3774
  %5 = and i1 %4, %3, !dbg !3775
  br i1 %5, label %6, label %7, !dbg !3775

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #14, !dbg !3776
  unreachable, !dbg !3776

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !3777
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnrealloc(i8*, i64, i64) local_unnamed_addr #12 !dbg !3778 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3782, metadata !679), !dbg !3785
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3783, metadata !679), !dbg !3786
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3784, metadata !679), !dbg !3787
  %4 = udiv i64 9223372036854775807, %2, !dbg !3788
  %5 = icmp ult i64 %4, %1, !dbg !3788
  br i1 %5, label %6, label %7, !dbg !3790

; <label>:6:                                      ; preds = %3
  tail call void @xalloc_die() #14, !dbg !3791
  unreachable, !dbg !3791

; <label>:7:                                      ; preds = %3
  %8 = mul i64 %2, %1, !dbg !3792
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3793, metadata !679) #11, !dbg !3799
  tail call void @llvm.dbg.value(metadata i64 %8, i64 0, metadata !3798, metadata !679) #11, !dbg !3801
  %9 = icmp eq i64 %8, 0, !dbg !3802
  %10 = icmp ne i8* %0, null, !dbg !3804
  %11 = and i1 %10, %9, !dbg !3806
  br i1 %11, label %12, label %13, !dbg !3806

; <label>:12:                                     ; preds = %7
  tail call void @free(i8* nonnull %0) #11, !dbg !3807
  br label %19, !dbg !3809

; <label>:13:                                     ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #11, !dbg !3810
  tail call void @llvm.dbg.value(metadata i8* %14, i64 0, metadata !3793, metadata !679) #11, !dbg !3799
  %15 = icmp eq i8* %14, null, !dbg !3811
  %16 = icmp ne i64 %8, 0, !dbg !3813
  %17 = and i1 %16, %15, !dbg !3815
  br i1 %17, label %18, label %19, !dbg !3815

; <label>:18:                                     ; preds = %13
  tail call void @xalloc_die() #14, !dbg !3816
  unreachable, !dbg !3816

; <label>:19:                                     ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ]
  ret i8* %20, !dbg !3817
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xrealloc(i8*, i64) local_unnamed_addr #6 !dbg !3794 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3793, metadata !679), !dbg !3818
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3798, metadata !679), !dbg !3819
  %3 = icmp eq i64 %1, 0, !dbg !3820
  %4 = icmp ne i8* %0, null, !dbg !3821
  %5 = and i1 %4, %3, !dbg !3822
  br i1 %5, label %6, label %7, !dbg !3822

; <label>:6:                                      ; preds = %2
  tail call void @free(i8* nonnull %0) #11, !dbg !3823
  br label %13, !dbg !3824

; <label>:7:                                      ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #11, !dbg !3825
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !3793, metadata !679), !dbg !3818
  %9 = icmp eq i8* %8, null, !dbg !3826
  %10 = icmp ne i64 %1, 0, !dbg !3827
  %11 = and i1 %10, %9, !dbg !3828
  br i1 %11, label %12, label %13, !dbg !3828

; <label>:12:                                     ; preds = %7
  tail call void @xalloc_die() #14, !dbg !3829
  unreachable, !dbg !3829

; <label>:13:                                     ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ]
  ret i8* %14, !dbg !3830
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @x2nrealloc(i8*, i64* nocapture, i64) local_unnamed_addr #12 !dbg !641 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !646, metadata !679), !dbg !3831
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !647, metadata !679), !dbg !3832
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !648, metadata !679), !dbg !3833
  %4 = load i64, i64* %1, align 8, !dbg !3834, !tbaa !2842
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !649, metadata !679), !dbg !3835
  %5 = icmp eq i8* %0, null, !dbg !3836
  br i1 %5, label %6, label %13, !dbg !3838

; <label>:6:                                      ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3839
  br i1 %7, label %8, label %17, !dbg !3842

; <label>:8:                                      ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3843
  tail call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !649, metadata !679), !dbg !3835
  %10 = icmp ugt i64 %2, 128, !dbg !3845
  %11 = zext i1 %10 to i64, !dbg !3845
  %12 = add nuw nsw i64 %9, %11, !dbg !3846
  tail call void @llvm.dbg.value(metadata i64 %12, i64 0, metadata !649, metadata !679), !dbg !3835
  br label %17, !dbg !3847

; <label>:13:                                     ; preds = %3
  %14 = udiv i64 6148914691236517204, %2, !dbg !3848
  %15 = icmp ugt i64 %14, %4, !dbg !3851
  br i1 %15, label %20, label %16, !dbg !3852

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #14, !dbg !3853
  unreachable, !dbg !3853

; <label>:17:                                     ; preds = %6, %8
  %18 = phi i64 [ %12, %8 ], [ %4, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !649, metadata !679), !dbg !3835
  store i64 %18, i64* %1, align 8, !dbg !3854, !tbaa !2842
  %19 = mul i64 %18, %2, !dbg !3855
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3793, metadata !679) #11, !dbg !3856
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !3798, metadata !679) #11, !dbg !3858
  br label %27, !dbg !3859

; <label>:20:                                     ; preds = %13
  %21 = lshr i64 %4, 1, !dbg !3860
  %22 = add i64 %4, 1, !dbg !3861
  %23 = add i64 %22, %21, !dbg !3862
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !649, metadata !679), !dbg !3835
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !649, metadata !679), !dbg !3835
  store i64 %23, i64* %1, align 8, !dbg !3854, !tbaa !2842
  %24 = mul i64 %23, %2, !dbg !3855
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3793, metadata !679) #11, !dbg !3856
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !3798, metadata !679) #11, !dbg !3858
  %25 = icmp eq i64 %24, 0, !dbg !3863
  br i1 %25, label %26, label %27, !dbg !3859

; <label>:26:                                     ; preds = %20
  tail call void @free(i8* nonnull %0) #11, !dbg !3864
  br label %34, !dbg !3865

; <label>:27:                                     ; preds = %17, %20
  %28 = phi i64 [ %19, %17 ], [ %24, %20 ]
  %29 = tail call i8* @realloc(i8* %0, i64 %28) #11, !dbg !3866
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !3793, metadata !679) #11, !dbg !3856
  %30 = icmp eq i8* %29, null, !dbg !3867
  %31 = icmp ne i64 %28, 0, !dbg !3868
  %32 = and i1 %31, %30, !dbg !3869
  br i1 %32, label %33, label %34, !dbg !3869

; <label>:33:                                     ; preds = %27
  tail call void @xalloc_die() #14, !dbg !3870
  unreachable, !dbg !3870

; <label>:34:                                     ; preds = %26, %27
  %35 = phi i8* [ null, %26 ], [ %29, %27 ]
  ret i8* %35, !dbg !3871
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xcharalloc(i64) local_unnamed_addr #12 !dbg !3872 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3874, metadata !679), !dbg !3875
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3752, metadata !679) #11, !dbg !3876
  %2 = tail call noalias i8* @malloc(i64 %0) #11, !dbg !3878
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3758, metadata !679) #11, !dbg !3879
  %3 = icmp eq i8* %2, null, !dbg !3880
  %4 = icmp ne i64 %0, 0, !dbg !3881
  %5 = and i1 %4, %3, !dbg !3882
  br i1 %5, label %6, label %7, !dbg !3882

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #14, !dbg !3883
  unreachable, !dbg !3883

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !3884
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @x2realloc(i8*, i64* nocapture) local_unnamed_addr #6 !dbg !3885 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3889, metadata !679), !dbg !3891
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !3890, metadata !679), !dbg !3892
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !646, metadata !679) #11, !dbg !3893
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !647, metadata !679) #11, !dbg !3895
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !648, metadata !679) #11, !dbg !3896
  %3 = load i64, i64* %1, align 8, !dbg !3897, !tbaa !2842
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !649, metadata !679) #11, !dbg !3898
  %4 = icmp eq i8* %0, null, !dbg !3899
  br i1 %4, label %5, label %8, !dbg !3900

; <label>:5:                                      ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3901
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !649, metadata !679) #11, !dbg !3898
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !649, metadata !679) #11, !dbg !3898
  %7 = select i1 %6, i64 128, i64 %3, !dbg !3902
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !649, metadata !679) #11, !dbg !3898
  store i64 %7, i64* %1, align 8, !dbg !3903, !tbaa !2842
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3793, metadata !679) #11, !dbg !3904
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3798, metadata !679) #11, !dbg !3906
  br label %17, !dbg !3907

; <label>:8:                                      ; preds = %2
  %9 = icmp ult i64 %3, 6148914691236517204, !dbg !3908
  br i1 %9, label %11, label %10, !dbg !3909

; <label>:10:                                     ; preds = %8
  tail call void @xalloc_die() #14, !dbg !3910
  unreachable, !dbg !3910

; <label>:11:                                     ; preds = %8
  %12 = lshr i64 %3, 1, !dbg !3911
  %13 = add i64 %3, 1, !dbg !3912
  %14 = add i64 %13, %12, !dbg !3913
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !649, metadata !679) #11, !dbg !3898
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !649, metadata !679) #11, !dbg !3898
  store i64 %14, i64* %1, align 8, !dbg !3903, !tbaa !2842
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3793, metadata !679) #11, !dbg !3904
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3798, metadata !679) #11, !dbg !3906
  %15 = icmp eq i64 %14, 0, !dbg !3914
  br i1 %15, label %16, label %17, !dbg !3907

; <label>:16:                                     ; preds = %11
  tail call void @free(i8* nonnull %0) #11, !dbg !3915
  br label %24, !dbg !3916

; <label>:17:                                     ; preds = %11, %5
  %18 = phi i64 [ %7, %5 ], [ %14, %11 ]
  %19 = tail call i8* @realloc(i8* %0, i64 %18) #11, !dbg !3917
  tail call void @llvm.dbg.value(metadata i8* %19, i64 0, metadata !3793, metadata !679) #11, !dbg !3904
  %20 = icmp eq i8* %19, null, !dbg !3918
  %21 = icmp ne i64 %18, 0, !dbg !3919
  %22 = and i1 %21, %20, !dbg !3920
  br i1 %22, label %23, label %24, !dbg !3920

; <label>:23:                                     ; preds = %17
  tail call void @xalloc_die() #14, !dbg !3921
  unreachable, !dbg !3921

; <label>:24:                                     ; preds = %16, %17
  %25 = phi i8* [ null, %16 ], [ %19, %17 ]
  ret i8* %25, !dbg !3922
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xzalloc(i64) local_unnamed_addr #6 !dbg !3923 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3925, metadata !679), !dbg !3926
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3752, metadata !679) #11, !dbg !3927
  %2 = tail call noalias i8* @malloc(i64 %0) #11, !dbg !3929
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3758, metadata !679) #11, !dbg !3930
  %3 = icmp eq i8* %2, null, !dbg !3931
  %4 = icmp ne i64 %0, 0, !dbg !3932
  %5 = and i1 %4, %3, !dbg !3933
  br i1 %5, label %6, label %7, !dbg !3933

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #14, !dbg !3934
  unreachable, !dbg !3934

; <label>:7:                                      ; preds = %1
  tail call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 %0, i32 1, i1 false), !dbg !3935
  ret i8* %2, !dbg !3936
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xcalloc(i64, i64) local_unnamed_addr #6 !dbg !3937 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3939, metadata !679), !dbg !3942
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3940, metadata !679), !dbg !3943
  %3 = udiv i64 9223372036854775807, %1, !dbg !3944
  %4 = icmp ult i64 %3, %0, !dbg !3944
  br i1 %4, label %8, label %5, !dbg !3946

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #11, !dbg !3947
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !3941, metadata !679), !dbg !3949
  %7 = icmp eq i8* %6, null, !dbg !3950
  br i1 %7, label %8, label %9, !dbg !3951

; <label>:8:                                      ; preds = %5, %2
  tail call void @xalloc_die() #14, !dbg !3953
  unreachable, !dbg !3953

; <label>:9:                                      ; preds = %5
  ret i8* %6, !dbg !3954
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmemdup(i8* nocapture readonly, i64) local_unnamed_addr #6 !dbg !3955 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3959, metadata !679), !dbg !3961
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3960, metadata !679), !dbg !3962
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3752, metadata !679) #11, !dbg !3963
  %3 = tail call noalias i8* @malloc(i64 %1) #11, !dbg !3965
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3758, metadata !679) #11, !dbg !3966
  %4 = icmp eq i8* %3, null, !dbg !3967
  %5 = icmp ne i64 %1, 0, !dbg !3968
  %6 = and i1 %5, %4, !dbg !3969
  br i1 %6, label %7, label %8, !dbg !3969

; <label>:7:                                      ; preds = %2
  tail call void @xalloc_die() #14, !dbg !3970
  unreachable, !dbg !3970

; <label>:8:                                      ; preds = %2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %0, i64 %1, i32 1, i1 false), !dbg !3971
  ret i8* %3, !dbg !3972
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xstrdup(i8* nocapture readonly) local_unnamed_addr #6 !dbg !3973 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3975, metadata !679), !dbg !3976
  %2 = tail call i64 @strlen(i8* %0) #13, !dbg !3977
  %3 = add i64 %2, 1, !dbg !3978
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3959, metadata !679) #11, !dbg !3979
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3960, metadata !679) #11, !dbg !3982
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3752, metadata !679) #11, !dbg !3983
  %4 = tail call noalias i8* @malloc(i64 %3) #11, !dbg !3985
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !3758, metadata !679) #11, !dbg !3986
  %5 = icmp eq i8* %4, null, !dbg !3987
  %6 = icmp ne i64 %3, 0, !dbg !3988
  %7 = and i1 %6, %5, !dbg !3989
  br i1 %7, label %8, label %9, !dbg !3989

; <label>:8:                                      ; preds = %1
  tail call void @xalloc_die() #14, !dbg !3990
  unreachable, !dbg !3990

; <label>:9:                                      ; preds = %1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %0, i64 %3, i32 1, i1 false) #11, !dbg !3991
  ret i8* %4, !dbg !3992
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @xalloc_die() local_unnamed_addr #0 !dbg !3993 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !3995, !tbaa !863
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.124, i64 0, i64 0), i32 5) #11, !dbg !3996
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.125, i64 0, i64 0), i8* %2) #11, !dbg !3997
  tail call void @abort() #14, !dbg !3999
  unreachable, !dbg !3999
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @rpl_calloc(i64, i64) local_unnamed_addr #6 !dbg !4000 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4003, metadata !679), !dbg !4009
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4004, metadata !679), !dbg !4010
  %3 = icmp eq i64 %0, 0, !dbg !4011
  %4 = icmp eq i64 %1, 0, !dbg !4012
  %5 = or i1 %3, %4, !dbg !4014
  br i1 %5, label %12, label %6, !dbg !4014

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !4015
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !4006, metadata !679), !dbg !4016
  %8 = udiv i64 %7, %1, !dbg !4017
  %9 = icmp eq i64 %8, %0, !dbg !4019
  br i1 %9, label %12, label %10, !dbg !4020

; <label>:10:                                     ; preds = %6
  %11 = tail call i32* @__errno_location() #1, !dbg !4021
  store i32 12, i32* %11, align 4, !dbg !4023, !tbaa !863
  br label %16

; <label>:12:                                     ; preds = %6, %2
  %13 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %14 = phi i64 [ 1, %2 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !4003, metadata !679), !dbg !4009
  tail call void @llvm.dbg.value(metadata i64 %13, i64 0, metadata !4004, metadata !679), !dbg !4010
  %15 = tail call noalias i8* @calloc(i64 %14, i64 %13) #11, !dbg !4024
  tail call void @llvm.dbg.value(metadata i8* %15, i64 0, metadata !4005, metadata !679), !dbg !4025
  br label %16, !dbg !4026

; <label>:16:                                     ; preds = %10, %12
  %17 = phi i8* [ %15, %12 ], [ null, %10 ]
  ret i8* %17, !dbg !4027
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fclose(%struct._IO_FILE* nonnull) local_unnamed_addr #6 !dbg !4028 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4073, metadata !679), !dbg !4077
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4074, metadata !679), !dbg !4078
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4076, metadata !679), !dbg !4079
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #11, !dbg !4080
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !4075, metadata !679), !dbg !4081
  %3 = icmp slt i32 %2, 0, !dbg !4082
  br i1 %3, label %4, label %6, !dbg !4084

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4085
  br label %24, !dbg !4086

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #11, !dbg !4087
  %8 = icmp eq i32 %7, 0, !dbg !4087
  br i1 %8, label %13, label %9, !dbg !4089

; <label>:9:                                      ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #11, !dbg !4090
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #11, !dbg !4092
  %12 = icmp eq i64 %11, -1, !dbg !4094
  br i1 %12, label %16, label %13, !dbg !4095

; <label>:13:                                     ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #11, !dbg !4096
  %15 = icmp eq i32 %14, 0, !dbg !4096
  br i1 %15, label %16, label %18, !dbg !4097

; <label>:16:                                     ; preds = %13, %9
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !4074, metadata !679), !dbg !4078
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4099
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !4076, metadata !679), !dbg !4079
  br label %24, !dbg !4100

; <label>:18:                                     ; preds = %13
  %19 = tail call i32* @__errno_location() #1, !dbg !4101
  %20 = load i32, i32* %19, align 4, !dbg !4101, !tbaa !863
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !4074, metadata !679), !dbg !4078
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !4074, metadata !679), !dbg !4078
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4099
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !4076, metadata !679), !dbg !4079
  %22 = icmp eq i32 %20, 0, !dbg !4102
  br i1 %22, label %24, label %23, !dbg !4100

; <label>:23:                                     ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !4104, !tbaa !863
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !4076, metadata !679), !dbg !4079
  br label %24, !dbg !4106

; <label>:24:                                     ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ]
  ret i32 %25, !dbg !4107
}

; Function Attrs: nounwind
declare i32 @fclose(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i64 @lseek(i32, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fcntl(i32, i32, ...) local_unnamed_addr #6 !dbg !238 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !246, metadata !679), !dbg !4108
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !247, metadata !679), !dbg !4109
  %4 = bitcast [1 x %struct.__va_list_tag]* %3 to i8*, !dbg !4110
  call void @llvm.lifetime.start(i64 24, i8* nonnull %4) #11, !dbg !4110
  tail call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %3, metadata !248, metadata !679), !dbg !4111
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !261, metadata !679), !dbg !4112
  call void @llvm.va_start(i8* nonnull %4), !dbg !4113
  %5 = icmp eq i32 %1, 1030, !dbg !4114
  %6 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 0
  %7 = load i32, i32* %6, align 16
  %8 = icmp ult i32 %7, 41
  br i1 %5, label %9, label %59, !dbg !4114

; <label>:9:                                      ; preds = %2
  br i1 %8, label %10, label %16, !dbg !4115

; <label>:10:                                     ; preds = %9
  %11 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 3, !dbg !4116
  %12 = load i8*, i8** %11, align 16, !dbg !4116
  %13 = sext i32 %7 to i64, !dbg !4116
  %14 = getelementptr i8, i8* %12, i64 %13, !dbg !4116
  %15 = add i32 %7, 8, !dbg !4116
  store i32 %15, i32* %6, align 16, !dbg !4116
  br label %20, !dbg !4116

; <label>:16:                                     ; preds = %9
  %17 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 2, !dbg !4118
  %18 = load i8*, i8** %17, align 8, !dbg !4118
  %19 = getelementptr i8, i8* %18, i64 8, !dbg !4118
  store i8* %19, i8** %17, align 8, !dbg !4118
  br label %20, !dbg !4118

; <label>:20:                                     ; preds = %16, %10
  %21 = phi i8* [ %14, %10 ], [ %18, %16 ]
  %22 = bitcast i8* %21 to i32*, !dbg !4120
  %23 = load i32, i32* %22, align 4, !dbg !4120
  call void @llvm.dbg.value(metadata i32 %23, i64 0, metadata !262, metadata !679), !dbg !4122
  %24 = load i32, i32* @rpl_fcntl.have_dupfd_cloexec, align 4, !dbg !4123, !tbaa !863
  %25 = icmp sgt i32 %24, -1, !dbg !4125
  br i1 %25, label %26, label %39, !dbg !4126

; <label>:26:                                     ; preds = %20
  %27 = call i32 (i32, i32, ...) @fcntl(i32 %0, i32 1030, i32 %23) #11, !dbg !4127
  call void @llvm.dbg.value(metadata i32 %27, i64 0, metadata !261, metadata !679), !dbg !4112
  %28 = icmp sgt i32 %27, -1, !dbg !4129
  br i1 %28, label %36, label %29, !dbg !4131

; <label>:29:                                     ; preds = %26
  %30 = tail call i32* @__errno_location() #1, !dbg !4132
  %31 = load i32, i32* %30, align 4, !dbg !4132, !tbaa !863
  %32 = icmp eq i32 %31, 22, !dbg !4134
  br i1 %32, label %33, label %36, !dbg !4135

; <label>:33:                                     ; preds = %29
  %34 = call i32 (i32, i32, ...) @rpl_fcntl(i32 %0, i32 0, i32 %23), !dbg !4137
  call void @llvm.dbg.value(metadata i32 %34, i64 0, metadata !261, metadata !679), !dbg !4112
  %35 = icmp slt i32 %34, 0, !dbg !4139
  br i1 %35, label %75, label %36, !dbg !4141

; <label>:36:                                     ; preds = %29, %26, %33
  %37 = phi i32 [ %27, %26 ], [ %27, %29 ], [ %34, %33 ]
  %38 = phi i32 [ 1, %26 ], [ 1, %29 ], [ -1, %33 ]
  call void @llvm.dbg.value(metadata i32 %37, i64 0, metadata !261, metadata !679), !dbg !4112
  store i32 %38, i32* @rpl_fcntl.have_dupfd_cloexec, align 4, !tbaa !863
  br label %42, !dbg !4142

; <label>:39:                                     ; preds = %20
  %40 = call i32 (i32, i32, ...) @rpl_fcntl(i32 %0, i32 0, i32 %23), !dbg !4143
  call void @llvm.dbg.value(metadata i32 %40, i64 0, metadata !261, metadata !679), !dbg !4112
  %41 = load i32, i32* @rpl_fcntl.have_dupfd_cloexec, align 4
  br label %42

; <label>:42:                                     ; preds = %39, %36
  %43 = phi i32 [ %38, %36 ], [ %41, %39 ], !dbg !4144
  %44 = phi i32 [ %37, %36 ], [ %40, %39 ]
  call void @llvm.dbg.value(metadata i32 %44, i64 0, metadata !261, metadata !679), !dbg !4112
  %45 = icmp sgt i32 %44, -1, !dbg !4146
  %46 = icmp eq i32 %43, -1, !dbg !4147
  %47 = and i1 %45, %46, !dbg !4148
  br i1 %47, label %48, label %75, !dbg !4148

; <label>:48:                                     ; preds = %42
  %49 = call i32 (i32, i32, ...) @fcntl(i32 %44, i32 1) #11, !dbg !4149
  call void @llvm.dbg.value(metadata i32 %49, i64 0, metadata !265, metadata !679), !dbg !4150
  %50 = icmp slt i32 %49, 0, !dbg !4151
  br i1 %50, label %55, label %51, !dbg !4152

; <label>:51:                                     ; preds = %48
  %52 = or i32 %49, 1, !dbg !4153
  %53 = call i32 (i32, i32, ...) @fcntl(i32 %44, i32 2, i32 %52) #11, !dbg !4155
  %54 = icmp eq i32 %53, -1, !dbg !4156
  br i1 %54, label %55, label %75, !dbg !4157

; <label>:55:                                     ; preds = %51, %48
  %56 = tail call i32* @__errno_location() #1, !dbg !4159
  %57 = load i32, i32* %56, align 4, !dbg !4159, !tbaa !863
  call void @llvm.dbg.value(metadata i32 %57, i64 0, metadata !268, metadata !679), !dbg !4160
  %58 = call i32 @close(i32 %44) #11, !dbg !4161
  store i32 %57, i32* %56, align 4, !dbg !4162, !tbaa !863
  call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !261, metadata !679), !dbg !4112
  br label %75, !dbg !4163

; <label>:59:                                     ; preds = %2
  br i1 %8, label %60, label %66, !dbg !4164

; <label>:60:                                     ; preds = %59
  %61 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 3, !dbg !4165
  %62 = load i8*, i8** %61, align 16, !dbg !4165
  %63 = sext i32 %7 to i64, !dbg !4165
  %64 = getelementptr i8, i8* %62, i64 %63, !dbg !4165
  %65 = add i32 %7, 8, !dbg !4165
  store i32 %65, i32* %6, align 16, !dbg !4165
  br label %70, !dbg !4165

; <label>:66:                                     ; preds = %59
  %67 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 2, !dbg !4167
  %68 = load i8*, i8** %67, align 8, !dbg !4167
  %69 = getelementptr i8, i8* %68, i64 8, !dbg !4167
  store i8* %69, i8** %67, align 8, !dbg !4167
  br label %70, !dbg !4167

; <label>:70:                                     ; preds = %66, %60
  %71 = phi i8* [ %64, %60 ], [ %68, %66 ]
  %72 = bitcast i8* %71 to i8**, !dbg !4169
  %73 = load i8*, i8** %72, align 8, !dbg !4169
  call void @llvm.dbg.value(metadata i8* %73, i64 0, metadata !271, metadata !679), !dbg !4171
  %74 = call i32 (i32, i32, ...) @fcntl(i32 %0, i32 %1, i8* %73) #11, !dbg !4172
  call void @llvm.dbg.value(metadata i32 %74, i64 0, metadata !261, metadata !679), !dbg !4112
  br label %75

; <label>:75:                                     ; preds = %33, %51, %55, %42, %70
  %76 = phi i32 [ %74, %70 ], [ %34, %33 ], [ %44, %42 ], [ -1, %55 ], [ %44, %51 ]
  call void @llvm.dbg.value(metadata i32 %76, i64 0, metadata !261, metadata !679), !dbg !4112
  call void @llvm.va_end(i8* nonnull %4), !dbg !4173
  call void @llvm.lifetime.end(i64 24, i8* nonnull %4) #11, !dbg !4174
  ret i32 %76, !dbg !4175
}

declare i32 @fcntl(i32, i32, ...) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fflush(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !4176 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4221, metadata !679), !dbg !4222
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !4223
  br i1 %2, label %6, label %3, !dbg !4225

; <label>:3:                                      ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #11, !dbg !4226
  %5 = icmp eq i32 %4, 0, !dbg !4226
  br i1 %5, label %6, label %8, !dbg !4228

; <label>:6:                                      ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !4230
  br label %17, !dbg !4231

; <label>:8:                                      ; preds = %3
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4232, metadata !679) #11, !dbg !4237
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4239
  %10 = load i32, i32* %9, align 8, !dbg !4239, !tbaa !4241
  %11 = and i32 %10, 256, !dbg !4242
  %12 = icmp eq i32 %11, 0, !dbg !4242
  br i1 %12, label %15, label %13, !dbg !4243

; <label>:13:                                     ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #11, !dbg !4244
  br label %15, !dbg !4244

; <label>:15:                                     ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !4245
  br label %17, !dbg !4246

; <label>:17:                                     ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ]
  ret i32 %18, !dbg !4247
}

; Function Attrs: nounwind
declare i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull, i64, i32) local_unnamed_addr #6 !dbg !4248 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4293, metadata !679), !dbg !4299
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4294, metadata !679), !dbg !4300
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !4295, metadata !679), !dbg !4301
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !4302
  %5 = load i8*, i8** %4, align 8, !dbg !4302, !tbaa !4303
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !4304
  %7 = load i8*, i8** %6, align 8, !dbg !4304, !tbaa !4305
  %8 = icmp eq i8* %5, %7, !dbg !4306
  br i1 %8, label %9, label %28, !dbg !4307

; <label>:9:                                      ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !4308
  %11 = load i8*, i8** %10, align 8, !dbg !4308, !tbaa !1230
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !4310
  %13 = load i8*, i8** %12, align 8, !dbg !4310, !tbaa !4311
  %14 = icmp eq i8* %11, %13, !dbg !4312
  br i1 %14, label %15, label %28, !dbg !4313

; <label>:15:                                     ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !4314
  %17 = load i8*, i8** %16, align 8, !dbg !4314, !tbaa !4315
  %18 = icmp eq i8* %17, null, !dbg !4316
  br i1 %18, label %19, label %28, !dbg !4317

; <label>:19:                                     ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #11, !dbg !4319
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #11, !dbg !4320
  tail call void @llvm.dbg.value(metadata i64 %21, i64 0, metadata !4296, metadata !679), !dbg !4322
  %22 = icmp eq i64 %21, -1, !dbg !4323
  br i1 %22, label %30, label %23, !dbg !4325

; <label>:23:                                     ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4326
  %25 = load i32, i32* %24, align 8, !dbg !4327, !tbaa !4241
  %26 = and i32 %25, -17, !dbg !4327
  store i32 %26, i32* %24, align 8, !dbg !4327, !tbaa !4241
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !4328
  store i64 %21, i64* %27, align 8, !dbg !4329, !tbaa !4330
  br label %30, !dbg !4331

; <label>:28:                                     ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !4332
  br label %30, !dbg !4333

; <label>:30:                                     ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ]
  ret i32 %31, !dbg !4334
}

; Function Attrs: nounwind
declare i32 @fseeko(%struct._IO_FILE* nocapture, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i64 @rpl_mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #6 !dbg !4335 {
  %5 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i32* %0, i64 0, metadata !4352, metadata !679), !dbg !4361
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4353, metadata !679), !dbg !4362
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !4354, metadata !679), !dbg !4363
  tail call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, i64 0, metadata !4355, metadata !679), !dbg !4364
  %6 = bitcast i32* %5 to i8*, !dbg !4365
  call void @llvm.lifetime.start(i64 4, i8* nonnull %6) #11, !dbg !4365
  %7 = icmp eq i32* %0, null, !dbg !4366
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !4352, metadata !679), !dbg !4361
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !4368
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !4352, metadata !679), !dbg !4361
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #11, !dbg !4369
  call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !4356, metadata !679), !dbg !4370
  %10 = icmp ugt i64 %9, -3, !dbg !4371
  %11 = icmp ne i64 %2, 0, !dbg !4372
  %12 = and i1 %11, %10, !dbg !4374
  br i1 %12, label %13, label %18, !dbg !4374

; <label>:13:                                     ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #11, !dbg !4375
  br i1 %14, label %18, label %15, !dbg !4377

; <label>:15:                                     ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !4379, !tbaa !844
  call void @llvm.dbg.value(metadata i8 %16, i64 0, metadata !4358, metadata !679), !dbg !4380
  %17 = zext i8 %16 to i32, !dbg !4381
  store i32 %17, i32* %8, align 4, !dbg !4382, !tbaa !863
  br label %18

; <label>:18:                                     ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ]
  call void @llvm.lifetime.end(i64 4, i8* nonnull %6) #11, !dbg !4383
  ret i64 %19, !dbg !4383
}

; Function Attrs: nounwind
declare i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @close_stream(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !4384 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4429, metadata !679), !dbg !4434
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #11, !dbg !4435
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4436, metadata !679), !dbg !4439
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4441
  %4 = load i32, i32* %3, align 8, !dbg !4441, !tbaa !4241
  %5 = and i32 %4, 32, !dbg !4441
  %6 = icmp eq i32 %5, 0, !dbg !4442
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #11, !dbg !4443
  %8 = icmp ne i32 %7, 0, !dbg !4444
  br i1 %6, label %9, label %19, !dbg !4445

; <label>:9:                                      ; preds = %1
  %10 = xor i1 %8, true, !dbg !4447
  %11 = icmp ne i64 %2, 0, !dbg !4447
  %12 = or i1 %11, %10, !dbg !4447
  %13 = sext i1 %8 to i32, !dbg !4447
  br i1 %12, label %22, label %14, !dbg !4447

; <label>:14:                                     ; preds = %9
  %15 = tail call i32* @__errno_location() #1, !dbg !4449
  %16 = load i32, i32* %15, align 4, !dbg !4449, !tbaa !863
  %17 = icmp ne i32 %16, 9, !dbg !4451
  %18 = sext i1 %17 to i32, !dbg !4451
  br label %22, !dbg !4451

; <label>:19:                                     ; preds = %1
  br i1 %8, label %22, label %20, !dbg !4453

; <label>:20:                                     ; preds = %19
  %21 = tail call i32* @__errno_location() #1, !dbg !4455
  store i32 0, i32* %21, align 4, !dbg !4457, !tbaa !863
  br label %22, !dbg !4455

; <label>:22:                                     ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ]
  ret i32 %23, !dbg !4458
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define zeroext i1 @hard_locale(i32) local_unnamed_addr #6 !dbg !4459 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4464, metadata !679), !dbg !4484
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !4465, metadata !679), !dbg !4485
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #11, !dbg !4486
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4466, metadata !679), !dbg !4487
  %3 = icmp eq i8* %2, null, !dbg !4488
  br i1 %3, label %15, label %4, !dbg !4489

; <label>:4:                                      ; preds = %1
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4474, metadata !679), !dbg !4490
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4475, metadata !679), !dbg !4491
  %5 = load i8, i8* %2, align 1, !dbg !4492, !tbaa !844
  %6 = icmp eq i8 %5, 67, !dbg !4494
  br i1 %6, label %7, label %11, !dbg !4497

; <label>:7:                                      ; preds = %4
  %8 = getelementptr inbounds i8, i8* %2, i64 1, !dbg !4499
  %9 = load i8, i8* %8, align 1, !dbg !4499, !tbaa !844
  %10 = icmp eq i8 %9, 0, !dbg !4502
  br i1 %10, label %14, label %11, !dbg !4504

; <label>:11:                                     ; preds = %4, %7
  tail call void @llvm.dbg.value(metadata i64 5, i64 0, metadata !4480, metadata !679), !dbg !4506
  %12 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.142, i64 0, i64 0)) #11, !dbg !4507
  %13 = icmp eq i32 %12, 0, !dbg !4509
  br i1 %13, label %14, label %15, !dbg !4511

; <label>:14:                                     ; preds = %11, %7
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !4465, metadata !679), !dbg !4485
  br label %15, !dbg !4513

; <label>:15:                                     ; preds = %1, %11, %14
  %16 = phi i1 [ false, %14 ], [ true, %11 ], [ true, %1 ]
  ret i1 %16, !dbg !4514
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define i8* @locale_charset() local_unnamed_addr #6 !dbg !4515 {
  %1 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %1, metadata !4527, metadata !679), !dbg !4601
  %2 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %2, metadata !4594, metadata !679), !dbg !4603
  %3 = tail call i8* @nl_langinfo(i32 14) #11, !dbg !4604
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !4519, metadata !679), !dbg !4605
  %4 = icmp eq i8* %3, null, !dbg !4606
  %5 = select i1 %4, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.145, i64 0, i64 0), i8* %3, !dbg !4608
  tail call void @llvm.dbg.value(metadata i8* %5, i64 0, metadata !4519, metadata !679), !dbg !4605
  %6 = load volatile i8*, i8** @charset_aliases, align 8, !dbg !4609, !tbaa !687
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !4541, metadata !679) #11, !dbg !4610
  %7 = icmp eq i8* %6, null, !dbg !4611
  br i1 %7, label %8, label %127, !dbg !4612

; <label>:8:                                      ; preds = %0
  %9 = tail call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3.146, i64 0, i64 0)) #11, !dbg !4613
  tail call void @llvm.dbg.value(metadata i8* %9, i64 0, metadata !4542, metadata !679) #11, !dbg !4614
  %10 = icmp eq i8* %9, null, !dbg !4615
  br i1 %10, label %14, label %11, !dbg !4617

; <label>:11:                                     ; preds = %8
  %12 = load i8, i8* %9, align 1, !dbg !4618, !tbaa !844
  %13 = icmp eq i8 %12, 0, !dbg !4620
  br i1 %13, label %14, label %15, !dbg !4621

; <label>:14:                                     ; preds = %11, %8
  br label %15, !dbg !4623

; <label>:15:                                     ; preds = %14, %11
  %16 = phi i8* [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4.147, i64 0, i64 0), %14 ], [ %9, %11 ]
  tail call void @llvm.dbg.value(metadata i8* %16, i64 0, metadata !4542, metadata !679) #11, !dbg !4614
  %17 = tail call i64 @strlen(i8* nonnull %16) #13, !dbg !4624
  tail call void @llvm.dbg.value(metadata i64 %17, i64 0, metadata !4545, metadata !679) #11, !dbg !4625
  tail call void @llvm.dbg.value(metadata i64 13, i64 0, metadata !4547, metadata !679) #11, !dbg !4626
  %18 = icmp eq i64 %17, 0, !dbg !4627
  br i1 %18, label %24, label %19, !dbg !4628

; <label>:19:                                     ; preds = %15
  %20 = add i64 %17, -1, !dbg !4629
  %21 = getelementptr inbounds i8, i8* %16, i64 %20, !dbg !4629
  %22 = load i8, i8* %21, align 1, !dbg !4629, !tbaa !844
  %23 = icmp ne i8 %22, 47, !dbg !4631
  br label %24

; <label>:24:                                     ; preds = %19, %15
  %25 = phi i1 [ false, %15 ], [ %23, %19 ]
  %26 = zext i1 %25 to i64, !dbg !4632
  %27 = add i64 %17, 14, !dbg !4633
  %28 = add i64 %27, %26, !dbg !4634
  %29 = tail call noalias i8* @malloc(i64 %28) #11, !dbg !4635
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !4544, metadata !679) #11, !dbg !4636
  %30 = icmp eq i8* %29, null, !dbg !4637
  br i1 %30, label %125, label %31, !dbg !4637

; <label>:31:                                     ; preds = %24
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %29, i8* %16, i64 %17, i32 1, i1 false) #11, !dbg !4638
  %32 = getelementptr inbounds i8, i8* %29, i64 %17
  br i1 %25, label %33, label %35, !dbg !4641

; <label>:33:                                     ; preds = %31
  store i8 47, i8* %32, align 1, !dbg !4642, !tbaa !844
  %34 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !4644
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %34, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.148, i64 0, i64 0), i64 14, i32 1, i1 false) #11, !dbg !4645
  br label %37, !dbg !4646

; <label>:35:                                     ; preds = %31
  %36 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !4644
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.148, i64 0, i64 0), i64 14, i32 1, i1 false) #11, !dbg !4645
  br label %37, !dbg !4646

; <label>:37:                                     ; preds = %35, %33
  %38 = tail call i32 (i8*, i32, ...) @open(i8* nonnull %29, i32 131072) #11, !dbg !4647
  tail call void @llvm.dbg.value(metadata i32 %38, i64 0, metadata !4549, metadata !679) #11, !dbg !4648
  %39 = icmp slt i32 %38, 0, !dbg !4649
  br i1 %39, label %123, label %40, !dbg !4650

; <label>:40:                                     ; preds = %37
  %41 = tail call %struct._IO_FILE* @fdopen(i32 %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.149, i64 0, i64 0)) #11, !dbg !4651
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !4550, metadata !679) #11, !dbg !4652
  %42 = icmp eq %struct._IO_FILE* %41, null, !dbg !4653
  br i1 %42, label %48, label %43, !dbg !4654

; <label>:43:                                     ; preds = %40
  %44 = getelementptr inbounds [51 x i8], [51 x i8]* %1, i64 0, i64 0
  %45 = getelementptr inbounds [51 x i8], [51 x i8]* %2, i64 0, i64 0
  %46 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 1
  %47 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 2
  br label %50, !dbg !4655

; <label>:48:                                     ; preds = %40
  %49 = tail call i32 @close(i32 %38) #11, !dbg !4656
  br label %123, !dbg !4658

; <label>:50:                                     ; preds = %111, %43
  %51 = phi i64 [ %112, %111 ], [ 0, %43 ]
  %52 = phi i8* [ %113, %111 ], [ null, %43 ]
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !4591, metadata !679) #11, !dbg !4655
  call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !4592, metadata !679) #11, !dbg !4659
  call void @llvm.lifetime.start(i64 51, i8* nonnull %44) #11, !dbg !4660
  call void @llvm.lifetime.start(i64 51, i8* nonnull %45) #11, !dbg !4661
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !4662, metadata !679) #11, !dbg !4667
  %53 = load i8*, i8** %46, align 8, !dbg !4669, !tbaa !4305
  %54 = load i8*, i8** %47, align 8, !dbg !4669, !tbaa !4303
  %55 = icmp ult i8* %53, %54, !dbg !4669
  br i1 %55, label %58, label %56, !dbg !4669, !prof !1235

; <label>:56:                                     ; preds = %50
  %57 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #11, !dbg !4670
  br label %62, !dbg !4670

; <label>:58:                                     ; preds = %50
  %59 = getelementptr inbounds i8, i8* %53, i64 1, !dbg !4672
  store i8* %59, i8** %46, align 8, !dbg !4672, !tbaa !4305
  %60 = load i8, i8* %53, align 1, !dbg !4672, !tbaa !844
  %61 = zext i8 %60 to i32, !dbg !4672
  br label %62, !dbg !4672

; <label>:62:                                     ; preds = %58, %56
  %63 = phi i32 [ %57, %56 ], [ %61, %58 ], !dbg !4674
  call void @llvm.dbg.value(metadata i32 %63, i64 0, metadata !4593, metadata !679) #11, !dbg !4676
  switch i32 %63, label %77 [
    i32 -1, label %115
    i32 32, label %111
    i32 10, label %111
    i32 9, label %111
    i32 35, label %64
  ], !dbg !4677

; <label>:64:                                     ; preds = %62
  br label %65, !dbg !4678

; <label>:65:                                     ; preds = %64, %75
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !4662, metadata !679) #11, !dbg !4678
  %66 = load i8*, i8** %46, align 8, !dbg !4682, !tbaa !4305
  %67 = load i8*, i8** %47, align 8, !dbg !4682, !tbaa !4303
  %68 = icmp ult i8* %66, %67, !dbg !4682
  br i1 %68, label %71, label %69, !dbg !4682, !prof !1235

; <label>:69:                                     ; preds = %65
  %70 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #11, !dbg !4683
  br label %75, !dbg !4683

; <label>:71:                                     ; preds = %65
  %72 = getelementptr inbounds i8, i8* %66, i64 1, !dbg !4684
  store i8* %72, i8** %46, align 8, !dbg !4684, !tbaa !4305
  %73 = load i8, i8* %66, align 1, !dbg !4684, !tbaa !844
  %74 = zext i8 %73 to i32, !dbg !4684
  br label %75, !dbg !4684

; <label>:75:                                     ; preds = %71, %69
  %76 = phi i32 [ %70, %69 ], [ %74, %71 ], !dbg !4685
  call void @llvm.dbg.value(metadata i32 %76, i64 0, metadata !4593, metadata !679) #11, !dbg !4676
  switch i32 %76, label %65 [
    i32 -1, label %114
    i32 10, label %110
  ], !dbg !4686, !llvm.loop !4688

; <label>:77:                                     ; preds = %62
  %78 = call i32 @ungetc(i32 %63, %struct._IO_FILE* nonnull %41) #11, !dbg !4691
  %79 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* nonnull %41, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6.150, i64 0, i64 0), i8* nonnull %44, i8* nonnull %45) #11, !dbg !4692
  %80 = icmp slt i32 %79, 2, !dbg !4694
  br i1 %80, label %115, label %81, !dbg !4695

; <label>:81:                                     ; preds = %77
  %82 = call i64 @strlen(i8* nonnull %44) #13, !dbg !4696
  call void @llvm.dbg.value(metadata i64 %82, i64 0, metadata !4598, metadata !679) #11, !dbg !4697
  %83 = call i64 @strlen(i8* nonnull %45) #13, !dbg !4698
  call void @llvm.dbg.value(metadata i64 %83, i64 0, metadata !4599, metadata !679) #11, !dbg !4699
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !4600, metadata !679) #11, !dbg !4700
  %84 = icmp eq i64 %51, 0, !dbg !4701
  %85 = add i64 %82, 1
  %86 = add i64 %85, %83
  %87 = add i64 %86, 1
  br i1 %84, label %88, label %91, !dbg !4703

; <label>:88:                                     ; preds = %81
  call void @llvm.dbg.value(metadata i64 %87, i64 0, metadata !4592, metadata !679) #11, !dbg !4659
  %89 = add i64 %86, 2, !dbg !4704
  %90 = call noalias i8* @malloc(i64 %89) #11, !dbg !4706
  call void @llvm.dbg.value(metadata i8* %90, i64 0, metadata !4591, metadata !679) #11, !dbg !4655
  br label %95, !dbg !4707

; <label>:91:                                     ; preds = %81
  %92 = add i64 %87, %51, !dbg !4708
  call void @llvm.dbg.value(metadata i64 %92, i64 0, metadata !4592, metadata !679) #11, !dbg !4659
  %93 = add i64 %92, 1, !dbg !4710
  %94 = call i8* @realloc(i8* %52, i64 %93) #11, !dbg !4711
  call void @llvm.dbg.value(metadata i8* %94, i64 0, metadata !4591, metadata !679) #11, !dbg !4655
  br label %95

; <label>:95:                                     ; preds = %91, %88
  %96 = phi i64 [ %87, %88 ], [ %92, %91 ]
  %97 = phi i8* [ %90, %88 ], [ %94, %91 ]
  call void @llvm.dbg.value(metadata i8* %97, i64 0, metadata !4591, metadata !679) #11, !dbg !4655
  call void @llvm.dbg.value(metadata i64 %96, i64 0, metadata !4592, metadata !679) #11, !dbg !4659
  %98 = icmp eq i8* %97, null, !dbg !4712
  br i1 %98, label %99, label %100, !dbg !4714

; <label>:99:                                     ; preds = %95
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4592, metadata !679) #11, !dbg !4659
  call void @free(i8* %52) #11, !dbg !4715
  br label %116, !dbg !4717

; <label>:100:                                    ; preds = %95
  %101 = getelementptr inbounds i8, i8* %97, i64 %96, !dbg !4718
  %102 = xor i64 %83, -1, !dbg !4719
  %103 = getelementptr inbounds i8, i8* %101, i64 %102, !dbg !4719
  %104 = xor i64 %82, -1, !dbg !4720
  %105 = getelementptr inbounds i8, i8* %103, i64 %104, !dbg !4720
  call void @llvm.dbg.value(metadata i8* %105, i64 0, metadata !4721, metadata !679) #11, !dbg !4730
  call void @llvm.dbg.value(metadata i8* %44, i64 0, metadata !4729, metadata !679) #11, !dbg !4730
  %106 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %105, i1 false) #11, !dbg !4732
  %107 = call i8* @__strcpy_chk(i8* nonnull %105, i8* nonnull %44, i64 %106) #11, !dbg !4733
  call void @llvm.dbg.value(metadata i8* %103, i64 0, metadata !4721, metadata !679) #11, !dbg !4734
  call void @llvm.dbg.value(metadata i8* %45, i64 0, metadata !4729, metadata !679) #11, !dbg !4734
  %108 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %103, i1 false) #11, !dbg !4736
  %109 = call i8* @__strcpy_chk(i8* nonnull %103, i8* nonnull %45, i64 %108) #11, !dbg !4737
  br label %111, !dbg !4738

; <label>:110:                                    ; preds = %75
  br label %111, !dbg !4655

; <label>:111:                                    ; preds = %110, %100, %62, %62, %62
  %112 = phi i64 [ %96, %100 ], [ %51, %62 ], [ %51, %62 ], [ %51, %62 ], [ %51, %110 ]
  %113 = phi i8* [ %97, %100 ], [ %52, %62 ], [ %52, %62 ], [ %52, %62 ], [ %52, %110 ]
  call void @llvm.dbg.value(metadata i8* %113, i64 0, metadata !4591, metadata !679) #11, !dbg !4655
  call void @llvm.dbg.value(metadata i64 %112, i64 0, metadata !4592, metadata !679) #11, !dbg !4659
  call void @llvm.lifetime.end(i64 51, i8* nonnull %45) #11, !dbg !4738
  call void @llvm.lifetime.end(i64 51, i8* nonnull %44) #11, !dbg !4738
  br label %50

; <label>:114:                                    ; preds = %75
  br label %116, !dbg !4655

; <label>:115:                                    ; preds = %62, %77
  br label %116, !dbg !4655

; <label>:116:                                    ; preds = %115, %114, %99
  %117 = phi i64 [ 0, %99 ], [ %51, %114 ], [ %51, %115 ]
  %118 = phi i8* [ null, %99 ], [ %52, %114 ], [ %52, %115 ]
  call void @llvm.dbg.value(metadata i8* %113, i64 0, metadata !4591, metadata !679) #11, !dbg !4655
  call void @llvm.dbg.value(metadata i64 %112, i64 0, metadata !4592, metadata !679) #11, !dbg !4659
  call void @llvm.lifetime.end(i64 51, i8* nonnull %45) #11, !dbg !4738
  call void @llvm.lifetime.end(i64 51, i8* nonnull %44) #11, !dbg !4738
  %119 = call i32 @rpl_fclose(%struct._IO_FILE* nonnull %41) #11, !dbg !4739
  %120 = icmp eq i64 %117, 0, !dbg !4740
  br i1 %120, label %123, label %121, !dbg !4742

; <label>:121:                                    ; preds = %116
  %122 = getelementptr inbounds i8, i8* %118, i64 %117, !dbg !4743
  store i8 0, i8* %122, align 1, !dbg !4745, !tbaa !844
  call void @llvm.dbg.value(metadata i8* %113, i64 0, metadata !4541, metadata !679) #11, !dbg !4610
  br label %123

; <label>:123:                                    ; preds = %121, %116, %48, %37
  %124 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.145, i64 0, i64 0), %37 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.145, i64 0, i64 0), %48 ], [ %118, %121 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.145, i64 0, i64 0), %116 ]
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !4541, metadata !679) #11, !dbg !4610
  call void @free(i8* %29) #11, !dbg !4746
  br label %125

; <label>:125:                                    ; preds = %123, %24
  %126 = phi i8* [ %124, %123 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.145, i64 0, i64 0), %24 ]
  call void @llvm.dbg.value(metadata i8* %126, i64 0, metadata !4541, metadata !679) #11, !dbg !4610
  store volatile i8* %126, i8** @charset_aliases, align 8, !dbg !4747, !tbaa !687
  br label %127, !dbg !4748

; <label>:127:                                    ; preds = %0, %125
  %128 = phi i8* [ %6, %0 ], [ %126, %125 ]
  call void @llvm.dbg.value(metadata i8* %128, i64 0, metadata !4520, metadata !679), !dbg !4749
  %129 = load i8, i8* %128, align 1, !dbg !4750, !tbaa !844
  %130 = icmp eq i8 %129, 0, !dbg !4751
  br i1 %130, label %157, label %131, !dbg !4752

; <label>:131:                                    ; preds = %127
  br label %132, !dbg !4754

; <label>:132:                                    ; preds = %131, %147
  %133 = phi i8 [ %154, %147 ], [ %129, %131 ]
  %134 = phi i8* [ %153, %147 ], [ %128, %131 ]
  %135 = call i32 @strcmp(i8* %5, i8* %134) #11, !dbg !4754
  %136 = icmp eq i32 %135, 0, !dbg !4755
  br i1 %136, label %143, label %137, !dbg !4756

; <label>:137:                                    ; preds = %132
  %138 = icmp eq i8 %133, 42, !dbg !4757
  br i1 %138, label %139, label %147, !dbg !4759

; <label>:139:                                    ; preds = %137
  %140 = getelementptr inbounds i8, i8* %134, i64 1, !dbg !4760
  %141 = load i8, i8* %140, align 1, !dbg !4760, !tbaa !844
  %142 = icmp eq i8 %141, 0, !dbg !4762
  br i1 %142, label %143, label %147, !dbg !4763

; <label>:143:                                    ; preds = %139, %132
  %144 = call i64 @strlen(i8* %134) #13, !dbg !4765
  %145 = getelementptr inbounds i8, i8* %134, i64 %144, !dbg !4767
  %146 = getelementptr inbounds i8, i8* %145, i64 1, !dbg !4768
  call void @llvm.dbg.value(metadata i8* %146, i64 0, metadata !4519, metadata !679), !dbg !4605
  br label %157, !dbg !4769

; <label>:147:                                    ; preds = %137, %139
  %148 = call i64 @strlen(i8* %134) #13, !dbg !4770
  %149 = add i64 %148, 1, !dbg !4771
  %150 = getelementptr inbounds i8, i8* %134, i64 %149, !dbg !4772
  call void @llvm.dbg.value(metadata i8* %150, i64 0, metadata !4520, metadata !679), !dbg !4749
  %151 = call i64 @strlen(i8* %150) #13, !dbg !4773
  %152 = add i64 %151, 1, !dbg !4774
  %153 = getelementptr inbounds i8, i8* %150, i64 %152, !dbg !4775
  call void @llvm.dbg.value(metadata i8* %153, i64 0, metadata !4520, metadata !679), !dbg !4749
  call void @llvm.dbg.value(metadata i8* %153, i64 0, metadata !4520, metadata !679), !dbg !4749
  %154 = load i8, i8* %153, align 1, !dbg !4750, !tbaa !844
  %155 = icmp eq i8 %154, 0, !dbg !4751
  br i1 %155, label %156, label %132, !dbg !4752, !llvm.loop !4776

; <label>:156:                                    ; preds = %147
  br label %157, !dbg !4605

; <label>:157:                                    ; preds = %156, %127, %143
  %158 = phi i8* [ %146, %143 ], [ %5, %127 ], [ %5, %156 ]
  call void @llvm.dbg.value(metadata i8* %158, i64 0, metadata !4519, metadata !679), !dbg !4605
  %159 = load i8, i8* %158, align 1, !dbg !4779, !tbaa !844
  %160 = icmp eq i8 %159, 0, !dbg !4781
  %161 = select i1 %160, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.151, i64 0, i64 0), i8* %158, !dbg !4782
  call void @llvm.dbg.value(metadata i8* %161, i64 0, metadata !4519, metadata !679), !dbg !4605
  ret i8* %161, !dbg !4783
}

; Function Attrs: nounwind
declare i8* @nl_langinfo(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i8* @getenv(i8* nocapture) local_unnamed_addr #4

declare i32 @open(i8* nocapture readonly, i32, ...) local_unnamed_addr #3

declare i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #3

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
attributes #9 = { nounwind readonly sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { nounwind }
attributes #12 = { inlinehint nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #13 = { nounwind readonly }
attributes #14 = { noreturn nounwind }
attributes #15 = { noreturn }
attributes #16 = { cold }

!llvm.dbg.cu = !{!2, !119, !125, !138, !146, !621, !624, !153, !160, !626, !628, !229, !636, !653, !655, !657, !242, !659, !661, !663, !666, !668, !275}
!llvm.ident = !{!671, !671, !671, !671, !671, !671, !671, !671, !671, !671, !671, !671, !671, !671, !671, !671, !671, !671, !671, !671, !671, !671, !671}
!llvm.module.flags = !{!672, !673, !674, !675}

!0 = !DIGlobalVariableExpression(var: !1)
!1 = distinct !DIGlobalVariable(name: "long_options", scope: !2, file: !3, line: 59, type: !105, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !35, globals: !55)
!3 = !DIFile(filename: "src/tee.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4 = !{!5, !12, !21}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "output_error", file: !3, line: 48, size: 32, elements: !6)
!6 = !{!7, !8, !9, !10, !11}
!7 = !DIEnumerator(name: "output_error_sigpipe", value: 0)
!8 = !DIEnumerator(name: "output_error_warn", value: 1)
!9 = !DIEnumerator(name: "output_error_warn_nopipe", value: 2)
!10 = !DIEnumerator(name: "output_error_exit", value: 3)
!11 = !DIEnumerator(name: "output_error_exit_nopipe", value: 4)
!12 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !13, line: 45, size: 32, elements: !14)
!13 = !DIFile(filename: "./lib/fadvise.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!14 = !{!15, !16, !17, !18, !19, !20}
!15 = !DIEnumerator(name: "FADVISE_NORMAL", value: 0)
!16 = !DIEnumerator(name: "FADVISE_SEQUENTIAL", value: 2)
!17 = !DIEnumerator(name: "FADVISE_NOREUSE", value: 5)
!18 = !DIEnumerator(name: "FADVISE_DONTNEED", value: 4)
!19 = !DIEnumerator(name: "FADVISE_WILLNEED", value: 3)
!20 = !DIEnumerator(name: "FADVISE_RANDOM", value: 1)
!21 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !22, line: 32, size: 32, elements: !23)
!22 = !DIFile(filename: "./lib/quotearg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!23 = !{!24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34}
!24 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!25 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!26 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!27 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!28 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!29 = !DIEnumerator(name: "c_quoting_style", value: 5)
!30 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!31 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!32 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!33 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!34 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!35 = !{!36, !39, !40, !41, !47, !50, !52}
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!37 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !38)
!38 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !42, line: 84, baseType: !43)
!42 = !DIFile(filename: "/usr/include/signal.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!44 = !DISubroutineType(types: !45)
!45 = !{null, !46}
!46 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !48, line: 62, baseType: !49)
!48 = !DIFile(filename: "/usr/bin/../lib/clang/4.0.1/include/stddef.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!49 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!51 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!53 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !54)
!54 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!55 = !{!56, !59, !61, !63, !0, !93, !99}
!56 = !DIGlobalVariableExpression(var: !57)
!57 = distinct !DIGlobalVariable(name: "append", scope: !2, file: !3, line: 43, type: !58, isLocal: true, isDefinition: true)
!58 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!59 = !DIGlobalVariableExpression(var: !60)
!60 = distinct !DIGlobalVariable(name: "ignore_interrupts", scope: !2, file: !3, line: 46, type: !58, isLocal: true, isDefinition: true)
!61 = !DIGlobalVariableExpression(var: !62)
!62 = distinct !DIGlobalVariable(name: "output_error", scope: !2, file: !3, line: 57, type: !5, isLocal: true, isDefinition: true)
!63 = !DIGlobalVariableExpression(var: !64)
!64 = distinct !DIGlobalVariable(name: "infomap", scope: !65, file: !66, line: 632, type: !90, isLocal: true, isDefinition: true)
!65 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !66, file: !66, line: 630, type: !67, isLocal: true, isDefinition: true, scopeLine: 631, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !69)
!66 = !DIFile(filename: "src/system.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!67 = !DISubroutineType(types: !68)
!68 = !{null, !36}
!69 = !{!70, !71, !72, !79, !81, !82, !83, !86, !87, !89}
!70 = !DILocalVariable(name: "program", arg: 1, scope: !65, file: !66, line: 630, type: !36)
!71 = !DILocalVariable(name: "node", scope: !65, file: !66, line: 642, type: !36)
!72 = !DILocalVariable(name: "map_prog", scope: !65, file: !66, line: 643, type: !73)
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64)
!74 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !75)
!75 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !65, file: !66, line: 632, size: 128, elements: !76)
!76 = !{!77, !78}
!77 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !75, file: !66, line: 632, baseType: !36, size: 64)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !75, file: !66, line: 632, baseType: !36, size: 64, offset: 64)
!79 = !DILocalVariable(name: "__s1_len", scope: !80, file: !66, line: 645, type: !47)
!80 = distinct !DILexicalBlock(scope: !65, file: !66, line: 645, column: 33)
!81 = !DILocalVariable(name: "__s2_len", scope: !80, file: !66, line: 645, type: !47)
!82 = !DILocalVariable(name: "lc_messages", scope: !65, file: !66, line: 655, type: !36)
!83 = !DILocalVariable(name: "__s1_len", scope: !84, file: !66, line: 656, type: !47)
!84 = distinct !DILexicalBlock(scope: !85, file: !66, line: 656, column: 22)
!85 = distinct !DILexicalBlock(scope: !65, file: !66, line: 656, column: 7)
!86 = !DILocalVariable(name: "__s2_len", scope: !84, file: !66, line: 656, type: !47)
!87 = !DILocalVariable(name: "__s2", scope: !88, file: !66, line: 656, type: !52)
!88 = distinct !DILexicalBlock(scope: !84, file: !66, line: 656, column: 22)
!89 = !DILocalVariable(name: "__result", scope: !88, file: !66, line: 656, type: !46)
!90 = !DICompositeType(tag: DW_TAG_array_type, baseType: !74, size: 896, elements: !91)
!91 = !{!92}
!92 = !DISubrange(count: 7)
!93 = !DIGlobalVariableExpression(var: !94)
!94 = distinct !DIGlobalVariable(name: "output_error_types", scope: !2, file: !3, line: 73, type: !95, isLocal: true, isDefinition: true)
!95 = !DICompositeType(tag: DW_TAG_array_type, baseType: !96, size: 128, elements: !97)
!96 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!97 = !{!98}
!98 = !DISubrange(count: 4)
!99 = !DIGlobalVariableExpression(var: !100)
!100 = distinct !DIGlobalVariable(name: "output_error_args", scope: !2, file: !3, line: 69, type: !101, isLocal: true, isDefinition: true)
!101 = !DICompositeType(tag: DW_TAG_array_type, baseType: !102, size: 320, elements: !103)
!102 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !36)
!103 = !{!104}
!104 = !DISubrange(count: 5)
!105 = !DICompositeType(tag: DW_TAG_array_type, baseType: !106, size: 1536, elements: !115)
!106 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !107)
!107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !108, line: 104, size: 256, elements: !109)
!108 = !DIFile(filename: "/usr/include/getopt.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!109 = !{!110, !111, !112, !114}
!110 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !107, file: !108, line: 106, baseType: !36, size: 64)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !107, file: !108, line: 109, baseType: !46, size: 32, offset: 64)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !107, file: !108, line: 110, baseType: !113, size: 64, offset: 128)
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !107, file: !108, line: 111, baseType: !46, size: 32, offset: 192)
!115 = !{!116}
!116 = !DISubrange(count: 6)
!117 = !DIGlobalVariableExpression(var: !118)
!118 = distinct !DIGlobalVariable(name: "Version", scope: !119, file: !120, line: 2, type: !36, isLocal: false, isDefinition: true)
!119 = distinct !DICompileUnit(language: DW_LANG_C99, file: !120, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !121, globals: !122)
!120 = !DIFile(filename: "src/version.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!121 = !{}
!122 = !{!117}
!123 = !DIGlobalVariableExpression(var: !124)
!124 = distinct !DIGlobalVariable(name: "argmatch_die", scope: !125, file: !130, line: 69, type: !131, isLocal: false, isDefinition: true)
!125 = distinct !DICompileUnit(language: DW_LANG_C99, file: !126, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !127, retainedTypes: !128, globals: !129)
!126 = !DIFile(filename: "./lib/argmatch.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!127 = !{!21}
!128 = !{!47, !40, !54}
!129 = !{!123}
!130 = !DIFile(filename: "lib/argmatch.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!131 = !DIDerivedType(tag: DW_TAG_typedef, name: "argmatch_exit_fn", file: !132, line: 55, baseType: !133)
!132 = !DIFile(filename: "./lib/argmatch.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64)
!134 = !DISubroutineType(types: !135)
!135 = !{null}
!136 = !DIGlobalVariableExpression(var: !137)
!137 = distinct !DIGlobalVariable(name: "file_name", scope: !138, file: !143, line: 36, type: !36, isLocal: true, isDefinition: true)
!138 = distinct !DICompileUnit(language: DW_LANG_C99, file: !139, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !121, globals: !140)
!139 = !DIFile(filename: "./lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!140 = !{!136, !141}
!141 = !DIGlobalVariableExpression(var: !142)
!142 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !138, file: !143, line: 46, type: !58, isLocal: true, isDefinition: true)
!143 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!144 = !DIGlobalVariableExpression(var: !145)
!145 = distinct !DIGlobalVariable(name: "exit_failure", scope: !146, file: !149, line: 24, type: !150, isLocal: false, isDefinition: true)
!146 = distinct !DICompileUnit(language: DW_LANG_C99, file: !147, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !121, globals: !148)
!147 = !DIFile(filename: "./lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!148 = !{!144}
!149 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!150 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !46)
!151 = !DIGlobalVariableExpression(var: !152)
!152 = distinct !DIGlobalVariable(name: "program_name", scope: !153, file: !157, line: 33, type: !36, isLocal: false, isDefinition: true)
!153 = distinct !DICompileUnit(language: DW_LANG_C99, file: !154, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !121, retainedTypes: !155, globals: !156)
!154 = !DIFile(filename: "./lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!155 = !{!40, !39}
!156 = !{!151}
!157 = !DIFile(filename: "lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!158 = !DIGlobalVariableExpression(var: !159)
!159 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !160, file: !188, line: 77, type: !224, isLocal: false, isDefinition: true)
!160 = distinct !DICompileUnit(language: DW_LANG_C99, file: !161, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !162, retainedTypes: !183, globals: !185)
!161 = !DIFile(filename: "./lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!162 = !{!21, !163, !168}
!163 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !22, line: 242, size: 32, elements: !164)
!164 = !{!165, !166, !167}
!165 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!166 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!167 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!168 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !169, line: 46, size: 32, elements: !170)
!169 = !DIFile(filename: "/usr/include/ctype.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!170 = !{!171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182}
!171 = !DIEnumerator(name: "_ISupper", value: 256)
!172 = !DIEnumerator(name: "_ISlower", value: 512)
!173 = !DIEnumerator(name: "_ISalpha", value: 1024)
!174 = !DIEnumerator(name: "_ISdigit", value: 2048)
!175 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!176 = !DIEnumerator(name: "_ISspace", value: 8192)
!177 = !DIEnumerator(name: "_ISprint", value: 16384)
!178 = !DIEnumerator(name: "_ISgraph", value: 32768)
!179 = !DIEnumerator(name: "_ISblank", value: 1)
!180 = !DIEnumerator(name: "_IScntrl", value: 2)
!181 = !DIEnumerator(name: "_ISpunct", value: 4)
!182 = !DIEnumerator(name: "_ISalnum", value: 8)
!183 = !{!46, !184, !47, !39}
!184 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!185 = !{!158, !186, !193, !206, !208, !213, !220, !222}
!186 = !DIGlobalVariableExpression(var: !187)
!187 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !160, file: !188, line: 93, type: !189, isLocal: false, isDefinition: true)
!188 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!189 = !DICompositeType(tag: DW_TAG_array_type, baseType: !190, size: 320, elements: !191)
!190 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !21)
!191 = !{!192}
!192 = !DISubrange(count: 10)
!193 = !DIGlobalVariableExpression(var: !194)
!194 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !160, file: !188, line: 1043, type: !195, isLocal: false, isDefinition: true)
!195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !188, line: 57, size: 448, elements: !196)
!196 = !{!197, !198, !199, !204, !205}
!197 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !195, file: !188, line: 60, baseType: !21, size: 32)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !195, file: !188, line: 63, baseType: !46, size: 32, offset: 32)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !195, file: !188, line: 67, baseType: !200, size: 256, offset: 64)
!200 = !DICompositeType(tag: DW_TAG_array_type, baseType: !201, size: 256, elements: !202)
!201 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!202 = !{!203}
!203 = !DISubrange(count: 8)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !195, file: !188, line: 70, baseType: !36, size: 64, offset: 320)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !195, file: !188, line: 73, baseType: !36, size: 64, offset: 384)
!206 = !DIGlobalVariableExpression(var: !207)
!207 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !160, file: !188, line: 108, type: !195, isLocal: true, isDefinition: true)
!208 = !DIGlobalVariableExpression(var: !209)
!209 = distinct !DIGlobalVariable(name: "slot0", scope: !160, file: !188, line: 834, type: !210, isLocal: true, isDefinition: true)
!210 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 2048, elements: !211)
!211 = !{!212}
!212 = !DISubrange(count: 256)
!213 = !DIGlobalVariableExpression(var: !214)
!214 = distinct !DIGlobalVariable(name: "slotvec", scope: !160, file: !188, line: 837, type: !215, isLocal: true, isDefinition: true)
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64)
!216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !188, line: 826, size: 128, elements: !217)
!217 = !{!218, !219}
!218 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !216, file: !188, line: 828, baseType: !47, size: 64)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !216, file: !188, line: 829, baseType: !39, size: 64, offset: 64)
!220 = !DIGlobalVariableExpression(var: !221)
!221 = distinct !DIGlobalVariable(name: "nslots", scope: !160, file: !188, line: 835, type: !46, isLocal: true, isDefinition: true)
!222 = !DIGlobalVariableExpression(var: !223)
!223 = distinct !DIGlobalVariable(name: "slotvec0", scope: !160, file: !188, line: 836, type: !216, isLocal: true, isDefinition: true)
!224 = !DICompositeType(tag: DW_TAG_array_type, baseType: !102, size: 704, elements: !225)
!225 = !{!226}
!226 = !DISubrange(count: 11)
!227 = !DIGlobalVariableExpression(var: !228)
!228 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !229, file: !232, line: 26, type: !233, isLocal: false, isDefinition: true)
!229 = distinct !DICompileUnit(language: DW_LANG_C99, file: !230, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !121, globals: !231)
!230 = !DIFile(filename: "./lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!231 = !{!227}
!232 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!233 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 376, elements: !234)
!234 = !{!235}
!235 = !DISubrange(count: 47)
!236 = !DIGlobalVariableExpression(var: !237)
!237 = distinct !DIGlobalVariable(name: "have_dupfd_cloexec", scope: !238, file: !239, line: 335, type: !46, isLocal: true, isDefinition: true)
!238 = distinct !DISubprogram(name: "rpl_fcntl", scope: !239, file: !239, line: 272, type: !240, isLocal: false, isDefinition: true, scopeLine: 273, flags: DIFlagPrototyped, isOptimized: true, unit: !242, variables: !245)
!239 = !DIFile(filename: "lib/fcntl.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!240 = !DISubroutineType(types: !241)
!241 = !{!46, !46, !46, null}
!242 = distinct !DICompileUnit(language: DW_LANG_C99, file: !243, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !121, globals: !244)
!243 = !DIFile(filename: "./lib/fcntl.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!244 = !{!236}
!245 = !{!246, !247, !248, !261, !262, !265, !268, !271}
!246 = !DILocalVariable(name: "fd", arg: 1, scope: !238, file: !239, line: 272, type: !46)
!247 = !DILocalVariable(name: "action", arg: 2, scope: !238, file: !239, line: 272, type: !46)
!248 = !DILocalVariable(name: "arg", scope: !238, file: !239, line: 274, type: !249)
!249 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !250, line: 30, baseType: !251)
!250 = !DIFile(filename: "/usr/bin/../lib/clang/4.0.1/include/stdarg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!251 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !243, line: 274, baseType: !252)
!252 = !DICompositeType(tag: DW_TAG_array_type, baseType: !253, size: 192, elements: !259)
!253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !243, line: 274, size: 192, elements: !254)
!254 = !{!255, !256, !257, !258}
!255 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !253, file: !243, line: 274, baseType: !201, size: 32)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !253, file: !243, line: 274, baseType: !201, size: 32, offset: 32)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !253, file: !243, line: 274, baseType: !40, size: 64, offset: 64)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !253, file: !243, line: 274, baseType: !40, size: 64, offset: 128)
!259 = !{!260}
!260 = !DISubrange(count: 1)
!261 = !DILocalVariable(name: "result", scope: !238, file: !239, line: 275, type: !46)
!262 = !DILocalVariable(name: "target", scope: !263, file: !239, line: 322, type: !46)
!263 = distinct !DILexicalBlock(scope: !264, file: !239, line: 321, column: 7)
!264 = distinct !DILexicalBlock(scope: !238, file: !239, line: 278, column: 5)
!265 = !DILocalVariable(name: "flags", scope: !266, file: !239, line: 359, type: !46)
!266 = distinct !DILexicalBlock(scope: !267, file: !239, line: 358, column: 11)
!267 = distinct !DILexicalBlock(scope: !263, file: !239, line: 357, column: 13)
!268 = !DILocalVariable(name: "saved_errno", scope: !269, file: !239, line: 362, type: !46)
!269 = distinct !DILexicalBlock(scope: !270, file: !239, line: 361, column: 15)
!270 = distinct !DILexicalBlock(scope: !266, file: !239, line: 360, column: 17)
!271 = !DILocalVariable(name: "p", scope: !272, file: !239, line: 404, type: !40)
!272 = distinct !DILexicalBlock(scope: !264, file: !239, line: 402, column: 7)
!273 = !DIGlobalVariableExpression(var: !274)
!274 = distinct !DIGlobalVariable(name: "charset_aliases", scope: !275, file: !619, line: 120, type: !620, isLocal: true, isDefinition: true)
!275 = distinct !DICompileUnit(language: DW_LANG_C99, file: !276, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !277, retainedTypes: !616, globals: !618)
!276 = !DIFile(filename: "./lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!277 = !{!278}
!278 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !279, line: 41, size: 32, elements: !280)
!279 = !DIFile(filename: "/usr/include/langinfo.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!280 = !{!281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615}
!281 = !DIEnumerator(name: "ABDAY_1", value: 131072)
!282 = !DIEnumerator(name: "ABDAY_2", value: 131073)
!283 = !DIEnumerator(name: "ABDAY_3", value: 131074)
!284 = !DIEnumerator(name: "ABDAY_4", value: 131075)
!285 = !DIEnumerator(name: "ABDAY_5", value: 131076)
!286 = !DIEnumerator(name: "ABDAY_6", value: 131077)
!287 = !DIEnumerator(name: "ABDAY_7", value: 131078)
!288 = !DIEnumerator(name: "DAY_1", value: 131079)
!289 = !DIEnumerator(name: "DAY_2", value: 131080)
!290 = !DIEnumerator(name: "DAY_3", value: 131081)
!291 = !DIEnumerator(name: "DAY_4", value: 131082)
!292 = !DIEnumerator(name: "DAY_5", value: 131083)
!293 = !DIEnumerator(name: "DAY_6", value: 131084)
!294 = !DIEnumerator(name: "DAY_7", value: 131085)
!295 = !DIEnumerator(name: "ABMON_1", value: 131086)
!296 = !DIEnumerator(name: "ABMON_2", value: 131087)
!297 = !DIEnumerator(name: "ABMON_3", value: 131088)
!298 = !DIEnumerator(name: "ABMON_4", value: 131089)
!299 = !DIEnumerator(name: "ABMON_5", value: 131090)
!300 = !DIEnumerator(name: "ABMON_6", value: 131091)
!301 = !DIEnumerator(name: "ABMON_7", value: 131092)
!302 = !DIEnumerator(name: "ABMON_8", value: 131093)
!303 = !DIEnumerator(name: "ABMON_9", value: 131094)
!304 = !DIEnumerator(name: "ABMON_10", value: 131095)
!305 = !DIEnumerator(name: "ABMON_11", value: 131096)
!306 = !DIEnumerator(name: "ABMON_12", value: 131097)
!307 = !DIEnumerator(name: "MON_1", value: 131098)
!308 = !DIEnumerator(name: "MON_2", value: 131099)
!309 = !DIEnumerator(name: "MON_3", value: 131100)
!310 = !DIEnumerator(name: "MON_4", value: 131101)
!311 = !DIEnumerator(name: "MON_5", value: 131102)
!312 = !DIEnumerator(name: "MON_6", value: 131103)
!313 = !DIEnumerator(name: "MON_7", value: 131104)
!314 = !DIEnumerator(name: "MON_8", value: 131105)
!315 = !DIEnumerator(name: "MON_9", value: 131106)
!316 = !DIEnumerator(name: "MON_10", value: 131107)
!317 = !DIEnumerator(name: "MON_11", value: 131108)
!318 = !DIEnumerator(name: "MON_12", value: 131109)
!319 = !DIEnumerator(name: "AM_STR", value: 131110)
!320 = !DIEnumerator(name: "PM_STR", value: 131111)
!321 = !DIEnumerator(name: "D_T_FMT", value: 131112)
!322 = !DIEnumerator(name: "D_FMT", value: 131113)
!323 = !DIEnumerator(name: "T_FMT", value: 131114)
!324 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115)
!325 = !DIEnumerator(name: "ERA", value: 131116)
!326 = !DIEnumerator(name: "__ERA_YEAR", value: 131117)
!327 = !DIEnumerator(name: "ERA_D_FMT", value: 131118)
!328 = !DIEnumerator(name: "ALT_DIGITS", value: 131119)
!329 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120)
!330 = !DIEnumerator(name: "ERA_T_FMT", value: 131121)
!331 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122)
!332 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123)
!333 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124)
!334 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125)
!335 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126)
!336 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127)
!337 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128)
!338 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129)
!339 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130)
!340 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131)
!341 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132)
!342 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133)
!343 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134)
!344 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135)
!345 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136)
!346 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137)
!347 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138)
!348 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139)
!349 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140)
!350 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141)
!351 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142)
!352 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143)
!353 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144)
!354 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145)
!355 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146)
!356 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147)
!357 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148)
!358 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149)
!359 = !DIEnumerator(name: "_NL_WMON_1", value: 131150)
!360 = !DIEnumerator(name: "_NL_WMON_2", value: 131151)
!361 = !DIEnumerator(name: "_NL_WMON_3", value: 131152)
!362 = !DIEnumerator(name: "_NL_WMON_4", value: 131153)
!363 = !DIEnumerator(name: "_NL_WMON_5", value: 131154)
!364 = !DIEnumerator(name: "_NL_WMON_6", value: 131155)
!365 = !DIEnumerator(name: "_NL_WMON_7", value: 131156)
!366 = !DIEnumerator(name: "_NL_WMON_8", value: 131157)
!367 = !DIEnumerator(name: "_NL_WMON_9", value: 131158)
!368 = !DIEnumerator(name: "_NL_WMON_10", value: 131159)
!369 = !DIEnumerator(name: "_NL_WMON_11", value: 131160)
!370 = !DIEnumerator(name: "_NL_WMON_12", value: 131161)
!371 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162)
!372 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163)
!373 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164)
!374 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165)
!375 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166)
!376 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167)
!377 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168)
!378 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169)
!379 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170)
!380 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171)
!381 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172)
!382 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173)
!383 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174)
!384 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175)
!385 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176)
!386 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177)
!387 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178)
!388 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179)
!389 = !DIEnumerator(name: "_DATE_FMT", value: 131180)
!390 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181)
!391 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182)
!392 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131183)
!393 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608)
!394 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609)
!395 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610)
!396 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611)
!397 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612)
!398 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613)
!399 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614)
!400 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615)
!401 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616)
!402 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617)
!403 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618)
!404 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619)
!405 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620)
!406 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621)
!407 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622)
!408 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623)
!409 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624)
!410 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625)
!411 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626)
!412 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627)
!413 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0)
!414 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1)
!415 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2)
!416 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3)
!417 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4)
!418 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5)
!419 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6)
!420 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7)
!421 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8)
!422 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9)
!423 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10)
!424 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11)
!425 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12)
!426 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13)
!427 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14)
!428 = !DIEnumerator(name: "CODESET", value: 14)
!429 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15)
!430 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16)
!431 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17)
!432 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18)
!433 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19)
!434 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20)
!435 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21)
!436 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22)
!437 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23)
!438 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24)
!439 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25)
!440 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26)
!441 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27)
!442 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28)
!443 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29)
!444 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30)
!445 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31)
!446 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32)
!447 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33)
!448 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34)
!449 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35)
!450 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36)
!451 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37)
!452 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38)
!453 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39)
!454 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40)
!455 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41)
!456 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42)
!457 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43)
!458 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44)
!459 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45)
!460 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46)
!461 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47)
!462 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48)
!463 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49)
!464 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50)
!465 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51)
!466 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52)
!467 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53)
!468 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54)
!469 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55)
!470 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56)
!471 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57)
!472 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58)
!473 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59)
!474 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60)
!475 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61)
!476 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62)
!477 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63)
!478 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64)
!479 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65)
!480 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66)
!481 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67)
!482 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68)
!483 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69)
!484 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70)
!485 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71)
!486 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72)
!487 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73)
!488 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74)
!489 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75)
!490 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76)
!491 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77)
!492 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78)
!493 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79)
!494 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80)
!495 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81)
!496 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82)
!497 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83)
!498 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84)
!499 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85)
!500 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86)
!501 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144)
!502 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145)
!503 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146)
!504 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147)
!505 = !DIEnumerator(name: "__MON_GROUPING", value: 262148)
!506 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149)
!507 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150)
!508 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151)
!509 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152)
!510 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153)
!511 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154)
!512 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155)
!513 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156)
!514 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157)
!515 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158)
!516 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159)
!517 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160)
!518 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161)
!519 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162)
!520 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163)
!521 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164)
!522 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165)
!523 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166)
!524 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167)
!525 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168)
!526 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169)
!527 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170)
!528 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171)
!529 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172)
!530 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173)
!531 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174)
!532 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175)
!533 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176)
!534 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177)
!535 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178)
!536 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179)
!537 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180)
!538 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181)
!539 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182)
!540 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183)
!541 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184)
!542 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185)
!543 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186)
!544 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187)
!545 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188)
!546 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189)
!547 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190)
!548 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536)
!549 = !DIEnumerator(name: "RADIXCHAR", value: 65536)
!550 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537)
!551 = !DIEnumerator(name: "THOUSEP", value: 65537)
!552 = !DIEnumerator(name: "__GROUPING", value: 65538)
!553 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539)
!554 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540)
!555 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541)
!556 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542)
!557 = !DIEnumerator(name: "__YESEXPR", value: 327680)
!558 = !DIEnumerator(name: "__NOEXPR", value: 327681)
!559 = !DIEnumerator(name: "__YESSTR", value: 327682)
!560 = !DIEnumerator(name: "__NOSTR", value: 327683)
!561 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684)
!562 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685)
!563 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752)
!564 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753)
!565 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754)
!566 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755)
!567 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288)
!568 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289)
!569 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290)
!570 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291)
!571 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292)
!572 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293)
!573 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294)
!574 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295)
!575 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824)
!576 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825)
!577 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826)
!578 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827)
!579 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828)
!580 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829)
!581 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830)
!582 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831)
!583 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832)
!584 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833)
!585 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834)
!586 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835)
!587 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836)
!588 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837)
!589 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360)
!590 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361)
!591 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362)
!592 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363)
!593 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364)
!594 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365)
!595 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896)
!596 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897)
!597 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898)
!598 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432)
!599 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433)
!600 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434)
!601 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435)
!602 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436)
!603 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437)
!604 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438)
!605 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439)
!606 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440)
!607 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441)
!608 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442)
!609 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443)
!610 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444)
!611 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445)
!612 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446)
!613 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447)
!614 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448)
!615 = !DIEnumerator(name: "_NL_NUM", value: 786449)
!616 = !{!40, !39, !617}
!617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64)
!618 = !{!273}
!619 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!620 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !36)
!621 = distinct !DICompileUnit(language: DW_LANG_C99, file: !622, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !623)
!622 = !DIFile(filename: "./lib/fadvise.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!623 = !{!12}
!624 = distinct !DICompileUnit(language: DW_LANG_C99, file: !625, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !121)
!625 = !DIFile(filename: "./lib/fopen-safer.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!626 = distinct !DICompileUnit(language: DW_LANG_C99, file: !627, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !121)
!627 = !DIFile(filename: "./lib/dup-safer.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!628 = distinct !DICompileUnit(language: DW_LANG_C99, file: !629, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !630, retainedTypes: !635)
!629 = !DIFile(filename: "./lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!630 = !{!631}
!631 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !632, line: 41, size: 32, elements: !633)
!632 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!633 = !{!634}
!634 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2017)
!635 = !{!40}
!636 = distinct !DICompileUnit(language: DW_LANG_C99, file: !637, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !638, retainedTypes: !652)
!637 = !DIFile(filename: "./lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!638 = !{!639}
!639 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !641, file: !640, line: 192, size: 32, elements: !650)
!640 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!641 = distinct !DISubprogram(name: "x2nrealloc", scope: !640, file: !640, line: 180, type: !642, isLocal: false, isDefinition: true, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: true, unit: !636, variables: !645)
!642 = !DISubroutineType(types: !643)
!643 = !{!40, !40, !644, !47}
!644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!645 = !{!646, !647, !648, !649}
!646 = !DILocalVariable(name: "p", arg: 1, scope: !641, file: !640, line: 180, type: !40)
!647 = !DILocalVariable(name: "pn", arg: 2, scope: !641, file: !640, line: 180, type: !644)
!648 = !DILocalVariable(name: "s", arg: 3, scope: !641, file: !640, line: 180, type: !47)
!649 = !DILocalVariable(name: "n", scope: !641, file: !640, line: 182, type: !47)
!650 = !{!651}
!651 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!652 = !{!47, !39, !40}
!653 = distinct !DICompileUnit(language: DW_LANG_C99, file: !654, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !121)
!654 = !DIFile(filename: "./lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!655 = distinct !DICompileUnit(language: DW_LANG_C99, file: !656, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !121, retainedTypes: !635)
!656 = !DIFile(filename: "./lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!657 = distinct !DICompileUnit(language: DW_LANG_C99, file: !658, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !121)
!658 = !DIFile(filename: "./lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!659 = distinct !DICompileUnit(language: DW_LANG_C99, file: !660, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !121, retainedTypes: !635)
!660 = !DIFile(filename: "./lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!661 = distinct !DICompileUnit(language: DW_LANG_C99, file: !662, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !121, retainedTypes: !635)
!662 = !DIFile(filename: "./lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!663 = distinct !DICompileUnit(language: DW_LANG_C99, file: !664, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !121, retainedTypes: !665)
!664 = !DIFile(filename: "./lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!665 = !{!47}
!666 = distinct !DICompileUnit(language: DW_LANG_C99, file: !667, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !121)
!667 = !DIFile(filename: "./lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!668 = distinct !DICompileUnit(language: DW_LANG_C99, file: !669, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !121, retainedTypes: !670)
!669 = !DIFile(filename: "./lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!670 = !{!47, !50, !52, !36}
!671 = !{!"clang version 4.0.1 (tags/RELEASE_401/final)"}
!672 = !{i32 2, !"Dwarf Version", i32 4}
!673 = !{i32 2, !"Debug Info Version", i32 3}
!674 = !{i32 1, !"PIC Level", i32 2}
!675 = !{i32 1, !"PIE Level", i32 2}
!676 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 81, type: !44, isLocal: false, isDefinition: true, scopeLine: 82, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !2, variables: !677)
!677 = !{!678}
!678 = !DILocalVariable(name: "status", arg: 1, scope: !676, file: !3, line: 81, type: !46)
!679 = !DIExpression()
!680 = !DILocation(line: 81, column: 12, scope: !676)
!681 = !DILocation(line: 83, column: 14, scope: !682)
!682 = distinct !DILexicalBlock(scope: !676, file: !3, line: 83, column: 7)
!683 = !DILocation(line: 83, column: 7, scope: !676)
!684 = !DILocation(line: 84, column: 5, scope: !685)
!685 = !DILexicalBlockFile(scope: !686, file: !3, discriminator: 1)
!686 = distinct !DILexicalBlock(scope: !682, file: !3, line: 84, column: 5)
!687 = !{!688, !688, i64 0}
!688 = !{!"any pointer", !689, i64 0}
!689 = !{!"omnipotent char", !690, i64 0}
!690 = !{!"Simple C/C++ TBAA"}
!691 = !DILocation(line: 84, column: 5, scope: !692)
!692 = !DILexicalBlockFile(scope: !686, file: !3, discriminator: 3)
!693 = !DILocation(line: 84, column: 5, scope: !694)
!694 = !DILexicalBlockFile(scope: !686, file: !3, discriminator: 2)
!695 = !DILocation(line: 87, column: 7, scope: !696)
!696 = distinct !DILexicalBlock(scope: !682, file: !3, line: 86, column: 5)
!697 = !DILocation(line: 87, column: 7, scope: !698)
!698 = !DILexicalBlockFile(scope: !696, file: !3, discriminator: 1)
!699 = !DILocation(line: 88, column: 7, scope: !696)
!700 = !DILocation(line: 88, column: 7, scope: !698)
!701 = !DILocation(line: 94, column: 7, scope: !696)
!702 = !DILocation(line: 94, column: 7, scope: !698)
!703 = !DILocation(line: 98, column: 7, scope: !696)
!704 = !DILocation(line: 98, column: 7, scope: !698)
!705 = !DILocation(line: 99, column: 7, scope: !696)
!706 = !DILocation(line: 99, column: 7, scope: !698)
!707 = !DILocation(line: 100, column: 7, scope: !696)
!708 = !DILocation(line: 100, column: 7, scope: !698)
!709 = !DILocation(line: 642, column: 15, scope: !65, inlinedAt: !710)
!710 = distinct !DILocation(line: 112, column: 7, scope: !696)
!711 = !DILocation(line: 651, column: 3, scope: !65, inlinedAt: !710)
!712 = !DILocation(line: 651, column: 3, scope: !713, inlinedAt: !710)
!713 = !DILexicalBlockFile(scope: !65, file: !66, discriminator: 1)
!714 = !DILocation(line: 655, column: 29, scope: !65, inlinedAt: !710)
!715 = !DILocation(line: 655, column: 15, scope: !65, inlinedAt: !710)
!716 = !DILocation(line: 656, column: 7, scope: !85, inlinedAt: !710)
!717 = !DILocation(line: 656, column: 19, scope: !85, inlinedAt: !710)
!718 = !DILocation(line: 656, column: 22, scope: !719, inlinedAt: !710)
!719 = !DILexicalBlockFile(scope: !85, file: !66, discriminator: 16)
!720 = !DILocation(line: 656, column: 7, scope: !721, inlinedAt: !710)
!721 = !DILexicalBlockFile(scope: !65, file: !66, discriminator: 16)
!722 = !DILocation(line: 662, column: 7, scope: !723, inlinedAt: !710)
!723 = distinct !DILexicalBlock(scope: !85, file: !66, line: 657, column: 5)
!724 = !DILocation(line: 662, column: 7, scope: !725, inlinedAt: !710)
!725 = !DILexicalBlockFile(scope: !723, file: !66, discriminator: 1)
!726 = !DILocation(line: 664, column: 5, scope: !723, inlinedAt: !710)
!727 = !DILocation(line: 665, column: 3, scope: !65, inlinedAt: !710)
!728 = !DILocation(line: 665, column: 3, scope: !713, inlinedAt: !710)
!729 = !DILocation(line: 667, column: 3, scope: !65, inlinedAt: !710)
!730 = !DILocation(line: 667, column: 3, scope: !713, inlinedAt: !710)
!731 = !DILocation(line: 114, column: 3, scope: !676)
!732 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 118, type: !733, isLocal: false, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !736)
!733 = !DISubroutineType(types: !734)
!734 = !{!46, !46, !735}
!735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!736 = !{!737, !738, !739, !740}
!737 = !DILocalVariable(name: "argc", arg: 1, scope: !732, file: !3, line: 118, type: !46)
!738 = !DILocalVariable(name: "argv", arg: 2, scope: !732, file: !3, line: 118, type: !735)
!739 = !DILocalVariable(name: "ok", scope: !732, file: !3, line: 120, type: !58)
!740 = !DILocalVariable(name: "optc", scope: !732, file: !3, line: 121, type: !46)
!741 = !DILocalVariable(name: "buffer", scope: !742, file: !3, line: 188, type: !818)
!742 = distinct !DISubprogram(name: "tee_files", scope: !3, file: !3, line: 184, type: !743, isLocal: true, isDefinition: true, scopeLine: 185, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !745)
!743 = !DISubroutineType(types: !744)
!744 = !{!58, !46, !735}
!745 = !{!746, !747, !748, !749, !741, !804, !808, !809, !810, !811, !817}
!746 = !DILocalVariable(name: "nfiles", arg: 1, scope: !742, file: !3, line: 184, type: !46)
!747 = !DILocalVariable(name: "files", arg: 2, scope: !742, file: !3, line: 184, type: !735)
!748 = !DILocalVariable(name: "n_outputs", scope: !742, file: !3, line: 186, type: !47)
!749 = !DILocalVariable(name: "descriptors", scope: !742, file: !3, line: 187, type: !750)
!750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !751, size: 64)
!751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !752, size: 64)
!752 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !753, line: 49, baseType: !754)
!753 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!754 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !755, line: 241, size: 1728, elements: !756)
!755 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!756 = !{!757, !758, !759, !760, !761, !762, !763, !764, !765, !766, !767, !768, !769, !777, !778, !779, !780, !784, !785, !787, !789, !792, !794, !795, !796, !797, !798, !799, !800}
!757 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !754, file: !755, line: 242, baseType: !46, size: 32)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !754, file: !755, line: 247, baseType: !39, size: 64, offset: 64)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !754, file: !755, line: 248, baseType: !39, size: 64, offset: 128)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !754, file: !755, line: 249, baseType: !39, size: 64, offset: 192)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !754, file: !755, line: 250, baseType: !39, size: 64, offset: 256)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !754, file: !755, line: 251, baseType: !39, size: 64, offset: 320)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !754, file: !755, line: 252, baseType: !39, size: 64, offset: 384)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !754, file: !755, line: 253, baseType: !39, size: 64, offset: 448)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !754, file: !755, line: 254, baseType: !39, size: 64, offset: 512)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !754, file: !755, line: 256, baseType: !39, size: 64, offset: 576)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !754, file: !755, line: 257, baseType: !39, size: 64, offset: 640)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !754, file: !755, line: 258, baseType: !39, size: 64, offset: 704)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !754, file: !755, line: 260, baseType: !770, size: 64, offset: 768)
!770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !771, size: 64)
!771 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !755, line: 156, size: 192, elements: !772)
!772 = !{!773, !774, !776}
!773 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !771, file: !755, line: 157, baseType: !770, size: 64)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !771, file: !755, line: 158, baseType: !775, size: 64, offset: 64)
!775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !754, size: 64)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !771, file: !755, line: 162, baseType: !46, size: 32, offset: 128)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !754, file: !755, line: 262, baseType: !775, size: 64, offset: 832)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !754, file: !755, line: 264, baseType: !46, size: 32, offset: 896)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !754, file: !755, line: 268, baseType: !46, size: 32, offset: 928)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !754, file: !755, line: 270, baseType: !781, size: 64, offset: 960)
!781 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !782, line: 140, baseType: !783)
!782 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!783 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !754, file: !755, line: 274, baseType: !184, size: 16, offset: 1024)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !754, file: !755, line: 275, baseType: !786, size: 8, offset: 1040)
!786 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !754, file: !755, line: 276, baseType: !788, size: 8, offset: 1048)
!788 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 8, elements: !259)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !754, file: !755, line: 280, baseType: !790, size: 64, offset: 1088)
!790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !791, size: 64)
!791 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !755, line: 150, baseType: null)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !754, file: !755, line: 289, baseType: !793, size: 64, offset: 1152)
!793 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !782, line: 141, baseType: !783)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !754, file: !755, line: 297, baseType: !40, size: 64, offset: 1216)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !754, file: !755, line: 298, baseType: !40, size: 64, offset: 1280)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !754, file: !755, line: 299, baseType: !40, size: 64, offset: 1344)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !754, file: !755, line: 300, baseType: !40, size: 64, offset: 1408)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !754, file: !755, line: 302, baseType: !47, size: 64, offset: 1472)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !754, file: !755, line: 303, baseType: !46, size: 32, offset: 1536)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !754, file: !755, line: 305, baseType: !801, size: 160, offset: 1568)
!801 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 160, elements: !802)
!802 = !{!803}
!803 = !DISubrange(count: 20)
!804 = !DILocalVariable(name: "bytes_read", scope: !742, file: !3, line: 189, type: !805)
!805 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !806, line: 109, baseType: !807)
!806 = !DIFile(filename: "/usr/include/sys/types.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!807 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !782, line: 181, baseType: !783)
!808 = !DILocalVariable(name: "i", scope: !742, file: !3, line: 190, type: !46)
!809 = !DILocalVariable(name: "ok", scope: !742, file: !3, line: 191, type: !58)
!810 = !DILocalVariable(name: "mode_string", scope: !742, file: !3, line: 192, type: !36)
!811 = !DILocalVariable(name: "w_errno", scope: !812, file: !3, line: 243, type: !46)
!812 = distinct !DILexicalBlock(scope: !813, file: !3, line: 242, column: 11)
!813 = distinct !DILexicalBlock(scope: !814, file: !3, line: 240, column: 13)
!814 = distinct !DILexicalBlock(scope: !815, file: !3, line: 239, column: 7)
!815 = distinct !DILexicalBlock(scope: !816, file: !3, line: 239, column: 7)
!816 = distinct !DILexicalBlock(scope: !742, file: !3, line: 230, column: 5)
!817 = !DILocalVariable(name: "fail", scope: !812, file: !3, line: 244, type: !58)
!818 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 65536, elements: !819)
!819 = !{!820}
!820 = !DISubrange(count: 8192)
!821 = !DILocation(line: 188, column: 8, scope: !742, inlinedAt: !822)
!822 = distinct !DILocation(line: 172, column: 8, scope: !732)
!823 = !DILocation(line: 118, column: 11, scope: !732)
!824 = !DILocation(line: 118, column: 24, scope: !732)
!825 = !DILocation(line: 124, column: 21, scope: !732)
!826 = !DILocation(line: 124, column: 3, scope: !732)
!827 = !DILocation(line: 125, column: 3, scope: !732)
!828 = !DILocation(line: 126, column: 3, scope: !732)
!829 = !DILocation(line: 127, column: 3, scope: !732)
!830 = !DILocation(line: 129, column: 3, scope: !732)
!831 = !DILocation(line: 134, column: 3, scope: !732)
!832 = !DILocation(line: 134, column: 18, scope: !833)
!833 = !DILexicalBlockFile(scope: !732, file: !3, discriminator: 1)
!834 = !DILocation(line: 121, column: 7, scope: !732)
!835 = !DILocation(line: 134, column: 3, scope: !833)
!836 = !DILocation(line: 140, column: 11, scope: !837)
!837 = distinct !DILexicalBlock(scope: !838, file: !3, line: 137, column: 9)
!838 = distinct !DILexicalBlock(scope: !732, file: !3, line: 135, column: 5)
!839 = !DILocation(line: 144, column: 11, scope: !837)
!840 = !DILocation(line: 147, column: 15, scope: !841)
!841 = distinct !DILexicalBlock(scope: !837, file: !3, line: 147, column: 15)
!842 = !DILocation(line: 147, column: 15, scope: !837)
!843 = !DILocation(line: 148, column: 28, scope: !841)
!844 = !{!689, !689, i64 0}
!845 = !DILocation(line: 148, column: 13, scope: !841)
!846 = !DILocation(line: 152, column: 11, scope: !837)
!847 = distinct !{!847, !831, !848}
!848 = !DILocation(line: 161, column: 5, scope: !732)
!849 = !DILocation(line: 154, column: 9, scope: !837)
!850 = !DILocation(line: 156, column: 9, scope: !837)
!851 = !DILocation(line: 156, column: 9, scope: !852)
!852 = !DILexicalBlockFile(scope: !837, file: !3, discriminator: 1)
!853 = !DILocation(line: 159, column: 11, scope: !837)
!854 = !DILocation(line: 163, column: 7, scope: !732)
!855 = !DILocation(line: 164, column: 5, scope: !856)
!856 = distinct !DILexicalBlock(scope: !732, file: !3, line: 163, column: 7)
!857 = !DILocation(line: 166, column: 7, scope: !858)
!858 = distinct !DILexicalBlock(scope: !732, file: !3, line: 166, column: 7)
!859 = !DILocation(line: 166, column: 20, scope: !858)
!860 = !DILocation(line: 166, column: 7, scope: !732)
!861 = !DILocation(line: 167, column: 5, scope: !858)
!862 = !DILocation(line: 172, column: 26, scope: !732)
!863 = !{!864, !864, i64 0}
!864 = !{!"int", !689, i64 0}
!865 = !DILocation(line: 172, column: 24, scope: !732)
!866 = !DILocation(line: 184, column: 16, scope: !742, inlinedAt: !822)
!867 = !DILocation(line: 184, column: 31, scope: !742, inlinedAt: !822)
!868 = !DILocation(line: 186, column: 10, scope: !742, inlinedAt: !822)
!869 = !DILocation(line: 188, column: 3, scope: !742, inlinedAt: !822)
!870 = !DILocation(line: 189, column: 11, scope: !742, inlinedAt: !822)
!871 = !DILocation(line: 191, column: 8, scope: !742, inlinedAt: !822)
!872 = !DILocation(line: 195, column: 9, scope: !742, inlinedAt: !822)
!873 = !DILocation(line: 192, column: 15, scope: !742, inlinedAt: !822)
!874 = !DILocation(line: 199, column: 12, scope: !742, inlinedAt: !822)
!875 = !DILocation(line: 199, column: 3, scope: !742, inlinedAt: !822)
!876 = !DILocalVariable(name: "s", arg: 2, scope: !877, file: !640, line: 105, type: !47)
!877 = distinct !DISubprogram(name: "xnmalloc", scope: !640, file: !640, line: 105, type: !878, isLocal: false, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !880)
!878 = !DISubroutineType(types: !879)
!879 = !{!40, !47, !47}
!880 = !{!881, !876}
!881 = !DILocalVariable(name: "n", arg: 1, scope: !877, file: !640, line: 105, type: !47)
!882 = !DILocation(line: 105, column: 28, scope: !877, inlinedAt: !883)
!883 = distinct !DILocation(line: 204, column: 17, scope: !742, inlinedAt: !822)
!884 = !DILocation(line: 107, column: 7, scope: !885, inlinedAt: !883)
!885 = distinct !DILexicalBlock(scope: !877, file: !640, line: 107, column: 7)
!886 = !DILocation(line: 107, column: 7, scope: !877, inlinedAt: !883)
!887 = !DILocation(line: 108, column: 5, scope: !885, inlinedAt: !883)
!888 = !DILocation(line: 172, column: 35, scope: !732)
!889 = !DILocation(line: 204, column: 34, scope: !742, inlinedAt: !822)
!890 = !DILocation(line: 204, column: 27, scope: !742, inlinedAt: !822)
!891 = !DILocation(line: 109, column: 21, scope: !877, inlinedAt: !883)
!892 = !DILocation(line: 109, column: 10, scope: !877, inlinedAt: !883)
!893 = !DILocation(line: 204, column: 17, scope: !742, inlinedAt: !822)
!894 = !DILocation(line: 187, column: 10, scope: !742, inlinedAt: !822)
!895 = !DILocation(line: 205, column: 8, scope: !742, inlinedAt: !822)
!896 = !DILocation(line: 206, column: 20, scope: !742, inlinedAt: !822)
!897 = !DILocation(line: 206, column: 18, scope: !742, inlinedAt: !822)
!898 = !DILocation(line: 207, column: 24, scope: !742, inlinedAt: !822)
!899 = !DILocation(line: 207, column: 12, scope: !742, inlinedAt: !822)
!900 = !DILocation(line: 208, column: 12, scope: !742, inlinedAt: !822)
!901 = !DILocation(line: 208, column: 3, scope: !742, inlinedAt: !822)
!902 = !DILocation(line: 190, column: 7, scope: !742, inlinedAt: !822)
!903 = !DILocation(line: 211, column: 17, scope: !904, inlinedAt: !822)
!904 = !DILexicalBlockFile(scope: !905, file: !3, discriminator: 1)
!905 = distinct !DILexicalBlock(scope: !906, file: !3, line: 211, column: 3)
!906 = distinct !DILexicalBlock(scope: !742, file: !3, line: 211, column: 3)
!907 = !DILocation(line: 211, column: 3, scope: !908, inlinedAt: !822)
!908 = !DILexicalBlockFile(scope: !906, file: !3, discriminator: 1)
!909 = !DILocation(line: 214, column: 31, scope: !910, inlinedAt: !822)
!910 = distinct !DILexicalBlock(scope: !905, file: !3, line: 212, column: 5)
!911 = !DILocation(line: 214, column: 24, scope: !910, inlinedAt: !822)
!912 = !DILocation(line: 214, column: 7, scope: !910, inlinedAt: !822)
!913 = !DILocation(line: 214, column: 22, scope: !910, inlinedAt: !822)
!914 = !DILocation(line: 215, column: 26, scope: !915, inlinedAt: !822)
!915 = distinct !DILexicalBlock(scope: !910, file: !3, line: 215, column: 11)
!916 = !DILocation(line: 215, column: 11, scope: !910, inlinedAt: !822)
!917 = !DILocation(line: 217, column: 18, scope: !918, inlinedAt: !822)
!918 = distinct !DILexicalBlock(scope: !915, file: !3, line: 216, column: 9)
!919 = !DILocation(line: 218, column: 18, scope: !918, inlinedAt: !822)
!920 = !DILocation(line: 218, column: 18, scope: !921, inlinedAt: !822)
!921 = !DILexicalBlockFile(scope: !918, file: !3, discriminator: 2)
!922 = !DILocation(line: 219, column: 18, scope: !918, inlinedAt: !822)
!923 = !DILocation(line: 219, column: 31, scope: !918, inlinedAt: !822)
!924 = !DILocation(line: 219, column: 31, scope: !925, inlinedAt: !822)
!925 = !DILexicalBlockFile(scope: !918, file: !3, discriminator: 1)
!926 = !DILocation(line: 217, column: 11, scope: !925, inlinedAt: !822)
!927 = !DILocation(line: 221, column: 9, scope: !918, inlinedAt: !822)
!928 = !DILocation(line: 224, column: 11, scope: !929, inlinedAt: !822)
!929 = distinct !DILexicalBlock(scope: !915, file: !3, line: 223, column: 9)
!930 = !DILocation(line: 225, column: 20, scope: !929, inlinedAt: !822)
!931 = !DILocation(line: 211, column: 29, scope: !932, inlinedAt: !822)
!932 = !DILexicalBlockFile(scope: !905, file: !3, discriminator: 2)
!933 = distinct !{!933, !934, !935}
!934 = !DILocation(line: 211, column: 3, scope: !906)
!935 = !DILocation(line: 227, column: 5, scope: !906)
!936 = !DILocation(line: 229, column: 3, scope: !937, inlinedAt: !822)
!937 = !DILexicalBlockFile(scope: !742, file: !3, discriminator: 1)
!938 = !DILocation(line: 231, column: 20, scope: !816, inlinedAt: !822)
!939 = !DILocation(line: 232, column: 22, scope: !940, inlinedAt: !822)
!940 = distinct !DILexicalBlock(scope: !816, file: !3, line: 232, column: 11)
!941 = !DILocation(line: 232, column: 26, scope: !940, inlinedAt: !822)
!942 = !DILocation(line: 232, column: 29, scope: !943, inlinedAt: !822)
!943 = !DILexicalBlockFile(scope: !940, file: !3, discriminator: 1)
!944 = !DILocation(line: 232, column: 11, scope: !945, inlinedAt: !822)
!945 = !DILexicalBlockFile(scope: !816, file: !3, discriminator: 1)
!946 = distinct !{!946, !947, !948}
!947 = !DILocation(line: 229, column: 3, scope: !742)
!948 = !DILocation(line: 259, column: 5, scope: !742)
!949 = !DILocation(line: 234, column: 22, scope: !950, inlinedAt: !822)
!950 = distinct !DILexicalBlock(scope: !816, file: !3, line: 234, column: 11)
!951 = !DILocation(line: 234, column: 11, scope: !816, inlinedAt: !822)
!952 = !DILocation(line: 239, column: 7, scope: !953, inlinedAt: !822)
!953 = !DILexicalBlockFile(scope: !815, file: !3, discriminator: 1)
!954 = !DILocation(line: 240, column: 13, scope: !813, inlinedAt: !822)
!955 = !DILocation(line: 241, column: 13, scope: !813, inlinedAt: !822)
!956 = !DILocation(line: 241, column: 16, scope: !957, inlinedAt: !822)
!957 = !DILexicalBlockFile(scope: !813, file: !3, discriminator: 1)
!958 = !DILocation(line: 241, column: 63, scope: !957, inlinedAt: !822)
!959 = !DILocation(line: 240, column: 13, scope: !960, inlinedAt: !822)
!960 = !DILexicalBlockFile(scope: !814, file: !3, discriminator: 1)
!961 = !DILocation(line: 243, column: 27, scope: !812, inlinedAt: !822)
!962 = !DILocation(line: 243, column: 17, scope: !812, inlinedAt: !822)
!963 = !DILocation(line: 244, column: 31, scope: !812, inlinedAt: !822)
!964 = !DILocation(line: 244, column: 40, scope: !812, inlinedAt: !822)
!965 = !DILocation(line: 244, column: 44, scope: !966, inlinedAt: !822)
!966 = !DILexicalBlockFile(scope: !812, file: !3, discriminator: 1)
!967 = !DILocation(line: 245, column: 43, scope: !812, inlinedAt: !822)
!968 = !DILocation(line: 246, column: 35, scope: !969, inlinedAt: !822)
!969 = distinct !DILexicalBlock(scope: !812, file: !3, line: 246, column: 17)
!970 = !DILocation(line: 246, column: 32, scope: !969, inlinedAt: !822)
!971 = !DILocation(line: 246, column: 17, scope: !812, inlinedAt: !822)
!972 = !DILocation(line: 247, column: 15, scope: !969, inlinedAt: !822)
!973 = !DILocation(line: 248, column: 17, scope: !812, inlinedAt: !822)
!974 = !DILocation(line: 250, column: 24, scope: !975, inlinedAt: !822)
!975 = distinct !DILexicalBlock(scope: !976, file: !3, line: 249, column: 15)
!976 = distinct !DILexicalBlock(scope: !812, file: !3, line: 248, column: 17)
!977 = !DILocation(line: 251, column: 24, scope: !975, inlinedAt: !822)
!978 = !DILocation(line: 251, column: 24, scope: !979, inlinedAt: !822)
!979 = !DILexicalBlockFile(scope: !975, file: !3, discriminator: 2)
!980 = !DILocation(line: 252, column: 39, scope: !975, inlinedAt: !822)
!981 = !DILocation(line: 250, column: 17, scope: !982, inlinedAt: !822)
!982 = !DILexicalBlockFile(scope: !975, file: !3, discriminator: 1)
!983 = !DILocation(line: 253, column: 15, scope: !975, inlinedAt: !822)
!984 = !DILocation(line: 254, column: 28, scope: !812, inlinedAt: !822)
!985 = !DILocation(line: 255, column: 17, scope: !812, inlinedAt: !822)
!986 = !DILocation(line: 257, column: 22, scope: !812, inlinedAt: !822)
!987 = !DILocation(line: 258, column: 11, scope: !812, inlinedAt: !822)
!988 = !DILocation(line: 239, column: 33, scope: !989, inlinedAt: !822)
!989 = !DILexicalBlockFile(scope: !814, file: !3, discriminator: 2)
!990 = !DILocation(line: 239, column: 21, scope: !960, inlinedAt: !822)
!991 = distinct !{!991, !992, !993}
!992 = !DILocation(line: 239, column: 7, scope: !815)
!993 = !DILocation(line: 258, column: 11, scope: !815)
!994 = !DILocation(line: 261, column: 18, scope: !995, inlinedAt: !822)
!995 = distinct !DILexicalBlock(scope: !742, file: !3, line: 261, column: 7)
!996 = !DILocation(line: 261, column: 7, scope: !742, inlinedAt: !822)
!997 = !DILocation(line: 263, column: 17, scope: !998, inlinedAt: !822)
!998 = distinct !DILexicalBlock(scope: !995, file: !3, line: 262, column: 5)
!999 = !DILocation(line: 263, column: 24, scope: !1000, inlinedAt: !822)
!1000 = !DILexicalBlockFile(scope: !998, file: !3, discriminator: 1)
!1001 = !DILocation(line: 263, column: 7, scope: !1002, inlinedAt: !822)
!1002 = !DILexicalBlockFile(scope: !998, file: !3, discriminator: 2)
!1003 = !DILocation(line: 265, column: 5, scope: !998, inlinedAt: !822)
!1004 = !DILocation(line: 268, column: 3, scope: !1005, inlinedAt: !822)
!1005 = !DILexicalBlockFile(scope: !1006, file: !3, discriminator: 1)
!1006 = distinct !DILexicalBlock(scope: !742, file: !3, line: 268, column: 3)
!1007 = !DILocation(line: 269, column: 9, scope: !1008, inlinedAt: !822)
!1008 = distinct !DILexicalBlock(scope: !1009, file: !3, line: 269, column: 9)
!1009 = distinct !DILexicalBlock(scope: !1006, file: !3, line: 268, column: 3)
!1010 = !DILocation(line: 269, column: 24, scope: !1008, inlinedAt: !822)
!1011 = !DILocation(line: 269, column: 27, scope: !1012, inlinedAt: !822)
!1012 = !DILexicalBlockFile(scope: !1008, file: !3, discriminator: 1)
!1013 = !DILocation(line: 269, column: 51, scope: !1012, inlinedAt: !822)
!1014 = !DILocation(line: 269, column: 9, scope: !1015, inlinedAt: !822)
!1015 = !DILexicalBlockFile(scope: !1009, file: !3, discriminator: 1)
!1016 = !DILocation(line: 271, column: 19, scope: !1017, inlinedAt: !822)
!1017 = distinct !DILexicalBlock(scope: !1008, file: !3, line: 270, column: 7)
!1018 = !DILocation(line: 271, column: 32, scope: !1017, inlinedAt: !822)
!1019 = !DILocation(line: 271, column: 32, scope: !1020, inlinedAt: !822)
!1020 = !DILexicalBlockFile(scope: !1017, file: !3, discriminator: 1)
!1021 = !DILocation(line: 271, column: 9, scope: !1022, inlinedAt: !822)
!1022 = !DILexicalBlockFile(scope: !1017, file: !3, discriminator: 2)
!1023 = !DILocation(line: 273, column: 7, scope: !1017, inlinedAt: !822)
!1024 = !DILocation(line: 268, column: 29, scope: !1025, inlinedAt: !822)
!1025 = !DILexicalBlockFile(scope: !1009, file: !3, discriminator: 2)
!1026 = !DILocation(line: 268, column: 17, scope: !1015, inlinedAt: !822)
!1027 = distinct !{!1027, !1028, !1029}
!1028 = !DILocation(line: 268, column: 3, scope: !1006)
!1029 = !DILocation(line: 273, column: 7, scope: !1006)
!1030 = !DILocation(line: 275, column: 3, scope: !742, inlinedAt: !822)
!1031 = !DILocation(line: 278, column: 1, scope: !742, inlinedAt: !822)
!1032 = !DILocation(line: 173, column: 7, scope: !1033)
!1033 = distinct !DILexicalBlock(scope: !732, file: !3, line: 173, column: 7)
!1034 = !DILocation(line: 173, column: 28, scope: !1033)
!1035 = !DILocation(line: 173, column: 7, scope: !732)
!1036 = !DILocation(line: 174, column: 5, scope: !1033)
!1037 = !DILocation(line: 174, column: 5, scope: !1038)
!1038 = !DILexicalBlockFile(scope: !1033, file: !3, discriminator: 1)
!1039 = !DILocation(line: 174, column: 5, scope: !1040)
!1040 = !DILexicalBlockFile(scope: !1033, file: !3, discriminator: 2)
!1041 = !DILocation(line: 277, column: 10, scope: !742, inlinedAt: !822)
!1042 = !DILocation(line: 176, column: 10, scope: !732)
!1043 = !DILocation(line: 177, column: 1, scope: !732)
!1044 = distinct !DISubprogram(name: "__argmatch_die", scope: !130, file: !130, line: 62, type: !134, isLocal: true, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: true, unit: !125, variables: !121)
!1045 = !DILocation(line: 64, column: 3, scope: !1044)
!1046 = !DILocation(line: 65, column: 1, scope: !1044)
!1047 = distinct !DISubprogram(name: "argmatch", scope: !130, file: !130, line: 84, type: !1048, isLocal: false, isDefinition: true, scopeLine: 86, flags: DIFlagPrototyped, isOptimized: true, unit: !125, variables: !1052)
!1048 = !DISubroutineType(types: !1049)
!1049 = !{!1050, !36, !1051, !36, !47}
!1050 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !48, line: 51, baseType: !783)
!1051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64)
!1052 = !{!1053, !1054, !1055, !1056, !1057, !1058, !1059, !1060, !1061, !1067}
!1053 = !DILocalVariable(name: "arg", arg: 1, scope: !1047, file: !130, line: 84, type: !36)
!1054 = !DILocalVariable(name: "arglist", arg: 2, scope: !1047, file: !130, line: 84, type: !1051)
!1055 = !DILocalVariable(name: "vallist", arg: 3, scope: !1047, file: !130, line: 85, type: !36)
!1056 = !DILocalVariable(name: "valsize", arg: 4, scope: !1047, file: !130, line: 85, type: !47)
!1057 = !DILocalVariable(name: "i", scope: !1047, file: !130, line: 87, type: !47)
!1058 = !DILocalVariable(name: "arglen", scope: !1047, file: !130, line: 88, type: !47)
!1059 = !DILocalVariable(name: "matchind", scope: !1047, file: !130, line: 89, type: !1050)
!1060 = !DILocalVariable(name: "ambiguous", scope: !1047, file: !130, line: 90, type: !58)
!1061 = !DILocalVariable(name: "__s1_len", scope: !1062, file: !130, line: 97, type: !47)
!1062 = distinct !DILexicalBlock(scope: !1063, file: !130, line: 97, column: 12)
!1063 = distinct !DILexicalBlock(scope: !1064, file: !130, line: 97, column: 11)
!1064 = distinct !DILexicalBlock(scope: !1065, file: !130, line: 96, column: 5)
!1065 = distinct !DILexicalBlock(scope: !1066, file: !130, line: 95, column: 3)
!1066 = distinct !DILexicalBlock(scope: !1047, file: !130, line: 95, column: 3)
!1067 = !DILocalVariable(name: "__s2_len", scope: !1062, file: !130, line: 97, type: !47)
!1068 = !DILocation(line: 84, column: 23, scope: !1047)
!1069 = !DILocation(line: 84, column: 47, scope: !1047)
!1070 = !DILocation(line: 85, column: 23, scope: !1047)
!1071 = !DILocation(line: 85, column: 39, scope: !1047)
!1072 = !DILocation(line: 89, column: 13, scope: !1047)
!1073 = !DILocation(line: 90, column: 8, scope: !1047)
!1074 = !DILocation(line: 92, column: 12, scope: !1047)
!1075 = !DILocation(line: 88, column: 10, scope: !1047)
!1076 = !DILocation(line: 87, column: 10, scope: !1047)
!1077 = !DILocation(line: 95, column: 15, scope: !1078)
!1078 = !DILexicalBlockFile(scope: !1065, file: !130, discriminator: 1)
!1079 = !DILocation(line: 95, column: 3, scope: !1080)
!1080 = !DILexicalBlockFile(scope: !1066, file: !130, discriminator: 1)
!1081 = !DILocation(line: 97, column: 12, scope: !1082)
!1082 = !DILexicalBlockFile(scope: !1063, file: !130, discriminator: 4)
!1083 = !DILocation(line: 97, column: 11, scope: !1084)
!1084 = !DILexicalBlockFile(scope: !1064, file: !130, discriminator: 4)
!1085 = !DILocation(line: 99, column: 15, scope: !1086)
!1086 = distinct !DILexicalBlock(scope: !1087, file: !130, line: 99, column: 15)
!1087 = distinct !DILexicalBlock(scope: !1063, file: !130, line: 98, column: 9)
!1088 = !DILocation(line: 99, column: 35, scope: !1086)
!1089 = !DILocation(line: 99, column: 15, scope: !1087)
!1090 = !DILocation(line: 102, column: 29, scope: !1091)
!1091 = distinct !DILexicalBlock(scope: !1086, file: !130, line: 102, column: 20)
!1092 = !DILocation(line: 102, column: 20, scope: !1086)
!1093 = !DILocation(line: 109, column: 19, scope: !1094)
!1094 = distinct !DILexicalBlock(scope: !1095, file: !130, line: 108, column: 19)
!1095 = distinct !DILexicalBlock(scope: !1091, file: !130, line: 106, column: 13)
!1096 = !DILocation(line: 109, column: 48, scope: !1097)
!1097 = !DILexicalBlockFile(scope: !1094, file: !130, discriminator: 1)
!1098 = !DILocation(line: 109, column: 38, scope: !1097)
!1099 = !DILocation(line: 110, column: 48, scope: !1094)
!1100 = !DILocation(line: 110, column: 38, scope: !1094)
!1101 = !DILocation(line: 109, column: 22, scope: !1097)
!1102 = !DILocation(line: 108, column: 19, scope: !1103)
!1103 = !DILexicalBlockFile(scope: !1095, file: !130, discriminator: 1)
!1104 = !DILocation(line: 115, column: 17, scope: !1105)
!1105 = distinct !DILexicalBlock(scope: !1094, file: !130, line: 111, column: 17)
!1106 = !DILocation(line: 95, column: 28, scope: !1107)
!1107 = !DILexicalBlockFile(scope: !1065, file: !130, discriminator: 2)
!1108 = distinct !{!1108, !1109, !1110}
!1109 = !DILocation(line: 95, column: 3, scope: !1066)
!1110 = !DILocation(line: 118, column: 5, scope: !1066)
!1111 = !DILocation(line: 119, column: 7, scope: !1112)
!1112 = distinct !DILexicalBlock(scope: !1047, file: !130, line: 119, column: 7)
!1113 = !DILocation(line: 122, column: 5, scope: !1112)
!1114 = !DILocation(line: 123, column: 1, scope: !1047)
!1115 = distinct !DISubprogram(name: "argmatch_invalid", scope: !130, file: !130, line: 131, type: !1116, isLocal: false, isDefinition: true, scopeLine: 132, flags: DIFlagPrototyped, isOptimized: true, unit: !125, variables: !1118)
!1116 = !DISubroutineType(types: !1117)
!1117 = !{null, !36, !36, !1050}
!1118 = !{!1119, !1120, !1121, !1122}
!1119 = !DILocalVariable(name: "context", arg: 1, scope: !1115, file: !130, line: 131, type: !36)
!1120 = !DILocalVariable(name: "value", arg: 2, scope: !1115, file: !130, line: 131, type: !36)
!1121 = !DILocalVariable(name: "problem", arg: 3, scope: !1115, file: !130, line: 131, type: !1050)
!1122 = !DILocalVariable(name: "format", scope: !1115, file: !130, line: 133, type: !36)
!1123 = !DILocation(line: 131, column: 31, scope: !1115)
!1124 = !DILocation(line: 131, column: 52, scope: !1115)
!1125 = !DILocation(line: 131, column: 69, scope: !1115)
!1126 = !DILocation(line: 133, column: 33, scope: !1115)
!1127 = !DILocation(line: 133, column: 25, scope: !1115)
!1128 = !DILocation(line: 135, column: 27, scope: !1115)
!1129 = !DILocation(line: 133, column: 15, scope: !1115)
!1130 = !DILocation(line: 137, column: 24, scope: !1115)
!1131 = !DILocation(line: 138, column: 10, scope: !1115)
!1132 = !DILocation(line: 137, column: 3, scope: !1133)
!1133 = !DILexicalBlockFile(scope: !1115, file: !130, discriminator: 1)
!1134 = !DILocation(line: 139, column: 1, scope: !1115)
!1135 = distinct !DISubprogram(name: "argmatch_valid", scope: !130, file: !130, line: 146, type: !1136, isLocal: false, isDefinition: true, scopeLine: 148, flags: DIFlagPrototyped, isOptimized: true, unit: !125, variables: !1138)
!1136 = !DISubroutineType(types: !1137)
!1137 = !{null, !1051, !36, !47}
!1138 = !{!1139, !1140, !1141, !1142, !1143}
!1139 = !DILocalVariable(name: "arglist", arg: 1, scope: !1135, file: !130, line: 146, type: !1051)
!1140 = !DILocalVariable(name: "vallist", arg: 2, scope: !1135, file: !130, line: 147, type: !36)
!1141 = !DILocalVariable(name: "valsize", arg: 3, scope: !1135, file: !130, line: 147, type: !47)
!1142 = !DILocalVariable(name: "i", scope: !1135, file: !130, line: 149, type: !47)
!1143 = !DILocalVariable(name: "last_val", scope: !1135, file: !130, line: 150, type: !36)
!1144 = !DILocation(line: 146, column: 36, scope: !1135)
!1145 = !DILocation(line: 147, column: 29, scope: !1135)
!1146 = !DILocation(line: 147, column: 45, scope: !1135)
!1147 = !DILocation(line: 150, column: 15, scope: !1135)
!1148 = !DILocation(line: 154, column: 3, scope: !1135)
!1149 = !DILocation(line: 154, column: 3, scope: !1150)
!1150 = !DILexicalBlockFile(scope: !1135, file: !130, discriminator: 1)
!1151 = !DILocation(line: 149, column: 10, scope: !1135)
!1152 = !DILocation(line: 155, column: 15, scope: !1153)
!1153 = !DILexicalBlockFile(scope: !1154, file: !130, discriminator: 1)
!1154 = distinct !DILexicalBlock(scope: !1155, file: !130, line: 155, column: 3)
!1155 = distinct !DILexicalBlock(scope: !1135, file: !130, line: 155, column: 3)
!1156 = !DILocation(line: 155, column: 3, scope: !1157)
!1157 = !DILexicalBlockFile(scope: !1155, file: !130, discriminator: 1)
!1158 = !DILocation(line: 156, column: 12, scope: !1159)
!1159 = distinct !DILexicalBlock(scope: !1154, file: !130, line: 156, column: 9)
!1160 = !DILocation(line: 159, column: 9, scope: !1161)
!1161 = distinct !DILexicalBlock(scope: !1159, file: !130, line: 158, column: 7)
!1162 = !DILocation(line: 157, column: 9, scope: !1159)
!1163 = !DILocation(line: 157, column: 12, scope: !1164)
!1164 = !DILexicalBlockFile(scope: !1159, file: !130, discriminator: 1)
!1165 = !DILocation(line: 156, column: 9, scope: !1153)
!1166 = !DILocation(line: 159, column: 9, scope: !1167)
!1167 = !DILexicalBlockFile(scope: !1161, file: !130, discriminator: 1)
!1168 = !DILocation(line: 161, column: 7, scope: !1161)
!1169 = !DILocation(line: 164, column: 9, scope: !1170)
!1170 = distinct !DILexicalBlock(scope: !1159, file: !130, line: 163, column: 7)
!1171 = !DILocation(line: 164, column: 9, scope: !1172)
!1172 = !DILexicalBlockFile(scope: !1170, file: !130, discriminator: 1)
!1173 = !DILocation(line: 155, column: 28, scope: !1174)
!1174 = !DILexicalBlockFile(scope: !1154, file: !130, discriminator: 2)
!1175 = distinct !{!1175, !1176, !1177}
!1176 = !DILocation(line: 155, column: 3, scope: !1155)
!1177 = !DILocation(line: 165, column: 7, scope: !1155)
!1178 = !DILocation(line: 166, column: 3, scope: !1135)
!1179 = !DILocalVariable(name: "__c", arg: 1, scope: !1180, file: !1181, line: 98, type: !46)
!1180 = distinct !DISubprogram(name: "putc_unlocked", scope: !1181, file: !1181, line: 98, type: !1182, isLocal: false, isDefinition: true, scopeLine: 99, flags: DIFlagPrototyped, isOptimized: true, unit: !125, variables: !1224)
!1181 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1182 = !DISubroutineType(types: !1183)
!1183 = !{!46, !46, !1184}
!1184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1185, size: 64)
!1185 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !753, line: 49, baseType: !1186)
!1186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !755, line: 241, size: 1728, elements: !1187)
!1187 = !{!1188, !1189, !1190, !1191, !1192, !1193, !1194, !1195, !1196, !1197, !1198, !1199, !1200, !1208, !1209, !1210, !1211, !1212, !1213, !1214, !1215, !1216, !1217, !1218, !1219, !1220, !1221, !1222, !1223}
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1186, file: !755, line: 242, baseType: !46, size: 32)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1186, file: !755, line: 247, baseType: !39, size: 64, offset: 64)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1186, file: !755, line: 248, baseType: !39, size: 64, offset: 128)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1186, file: !755, line: 249, baseType: !39, size: 64, offset: 192)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1186, file: !755, line: 250, baseType: !39, size: 64, offset: 256)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1186, file: !755, line: 251, baseType: !39, size: 64, offset: 320)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1186, file: !755, line: 252, baseType: !39, size: 64, offset: 384)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1186, file: !755, line: 253, baseType: !39, size: 64, offset: 448)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1186, file: !755, line: 254, baseType: !39, size: 64, offset: 512)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1186, file: !755, line: 256, baseType: !39, size: 64, offset: 576)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1186, file: !755, line: 257, baseType: !39, size: 64, offset: 640)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1186, file: !755, line: 258, baseType: !39, size: 64, offset: 704)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1186, file: !755, line: 260, baseType: !1201, size: 64, offset: 768)
!1201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1202, size: 64)
!1202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !755, line: 156, size: 192, elements: !1203)
!1203 = !{!1204, !1205, !1207}
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !1202, file: !755, line: 157, baseType: !1201, size: 64)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !1202, file: !755, line: 158, baseType: !1206, size: 64, offset: 64)
!1206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1186, size: 64)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !1202, file: !755, line: 162, baseType: !46, size: 32, offset: 128)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1186, file: !755, line: 262, baseType: !1206, size: 64, offset: 832)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1186, file: !755, line: 264, baseType: !46, size: 32, offset: 896)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1186, file: !755, line: 268, baseType: !46, size: 32, offset: 928)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1186, file: !755, line: 270, baseType: !781, size: 64, offset: 960)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1186, file: !755, line: 274, baseType: !184, size: 16, offset: 1024)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1186, file: !755, line: 275, baseType: !786, size: 8, offset: 1040)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1186, file: !755, line: 276, baseType: !788, size: 8, offset: 1048)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1186, file: !755, line: 280, baseType: !790, size: 64, offset: 1088)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1186, file: !755, line: 289, baseType: !793, size: 64, offset: 1152)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !1186, file: !755, line: 297, baseType: !40, size: 64, offset: 1216)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !1186, file: !755, line: 298, baseType: !40, size: 64, offset: 1280)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !1186, file: !755, line: 299, baseType: !40, size: 64, offset: 1344)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !1186, file: !755, line: 300, baseType: !40, size: 64, offset: 1408)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1186, file: !755, line: 302, baseType: !47, size: 64, offset: 1472)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1186, file: !755, line: 303, baseType: !46, size: 32, offset: 1536)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1186, file: !755, line: 305, baseType: !801, size: 160, offset: 1568)
!1224 = !{!1179, !1225}
!1225 = !DILocalVariable(name: "__stream", arg: 2, scope: !1180, file: !1181, line: 98, type: !1184)
!1226 = !DILocation(line: 98, column: 20, scope: !1180, inlinedAt: !1227)
!1227 = distinct !DILocation(line: 166, column: 3, scope: !1135)
!1228 = !DILocation(line: 98, column: 31, scope: !1180, inlinedAt: !1227)
!1229 = !DILocation(line: 100, column: 10, scope: !1180, inlinedAt: !1227)
!1230 = !{!1231, !688, i64 40}
!1231 = !{!"_IO_FILE", !864, i64 0, !688, i64 8, !688, i64 16, !688, i64 24, !688, i64 32, !688, i64 40, !688, i64 48, !688, i64 56, !688, i64 64, !688, i64 72, !688, i64 80, !688, i64 88, !688, i64 96, !688, i64 104, !864, i64 112, !864, i64 116, !1232, i64 120, !1233, i64 128, !689, i64 130, !689, i64 131, !688, i64 136, !1232, i64 144, !688, i64 152, !688, i64 160, !688, i64 168, !688, i64 176, !1232, i64 184, !864, i64 192, !689, i64 196}
!1232 = !{!"long", !689, i64 0}
!1233 = !{!"short", !689, i64 0}
!1234 = !{!1231, !688, i64 48}
!1235 = !{!"branch_weights", i32 2000, i32 1}
!1236 = !DILocation(line: 100, column: 10, scope: !1237, inlinedAt: !1227)
!1237 = !DILexicalBlockFile(scope: !1180, file: !1181, discriminator: 1)
!1238 = !DILocation(line: 100, column: 10, scope: !1239, inlinedAt: !1227)
!1239 = !DILexicalBlockFile(scope: !1180, file: !1181, discriminator: 2)
!1240 = !DILocation(line: 167, column: 1, scope: !1135)
!1241 = distinct !DISubprogram(name: "__xargmatch_internal", scope: !130, file: !130, line: 176, type: !1242, isLocal: false, isDefinition: true, scopeLine: 180, flags: DIFlagPrototyped, isOptimized: true, unit: !125, variables: !1244)
!1242 = !DISubroutineType(types: !1243)
!1243 = !{!1050, !36, !36, !1051, !36, !47, !131}
!1244 = !{!1245, !1246, !1247, !1248, !1249, !1250, !1251}
!1245 = !DILocalVariable(name: "context", arg: 1, scope: !1241, file: !130, line: 176, type: !36)
!1246 = !DILocalVariable(name: "arg", arg: 2, scope: !1241, file: !130, line: 177, type: !36)
!1247 = !DILocalVariable(name: "arglist", arg: 3, scope: !1241, file: !130, line: 177, type: !1051)
!1248 = !DILocalVariable(name: "vallist", arg: 4, scope: !1241, file: !130, line: 178, type: !36)
!1249 = !DILocalVariable(name: "valsize", arg: 5, scope: !1241, file: !130, line: 178, type: !47)
!1250 = !DILocalVariable(name: "exit_fn", arg: 6, scope: !1241, file: !130, line: 179, type: !131)
!1251 = !DILocalVariable(name: "res", scope: !1241, file: !130, line: 181, type: !1050)
!1252 = !DILocation(line: 176, column: 35, scope: !1241)
!1253 = !DILocation(line: 177, column: 35, scope: !1241)
!1254 = !DILocation(line: 177, column: 59, scope: !1241)
!1255 = !DILocation(line: 178, column: 35, scope: !1241)
!1256 = !DILocation(line: 178, column: 51, scope: !1241)
!1257 = !DILocation(line: 179, column: 40, scope: !1241)
!1258 = !DILocation(line: 181, column: 19, scope: !1241)
!1259 = !DILocation(line: 181, column: 13, scope: !1241)
!1260 = !DILocation(line: 182, column: 11, scope: !1261)
!1261 = distinct !DILexicalBlock(scope: !1241, file: !130, line: 182, column: 7)
!1262 = !DILocation(line: 182, column: 7, scope: !1241)
!1263 = !DILocation(line: 131, column: 31, scope: !1115, inlinedAt: !1264)
!1264 = distinct !DILocation(line: 187, column: 3, scope: !1241)
!1265 = !DILocation(line: 131, column: 52, scope: !1115, inlinedAt: !1264)
!1266 = !DILocation(line: 131, column: 69, scope: !1115, inlinedAt: !1264)
!1267 = !DILocation(line: 133, column: 33, scope: !1115, inlinedAt: !1264)
!1268 = !DILocation(line: 133, column: 25, scope: !1115, inlinedAt: !1264)
!1269 = !DILocation(line: 135, column: 27, scope: !1115, inlinedAt: !1264)
!1270 = !DILocation(line: 133, column: 15, scope: !1115, inlinedAt: !1264)
!1271 = !DILocation(line: 137, column: 24, scope: !1115, inlinedAt: !1264)
!1272 = !DILocation(line: 138, column: 10, scope: !1115, inlinedAt: !1264)
!1273 = !DILocation(line: 137, column: 3, scope: !1133, inlinedAt: !1264)
!1274 = !DILocation(line: 188, column: 3, scope: !1241)
!1275 = !DILocation(line: 189, column: 3, scope: !1241)
!1276 = !DILocation(line: 191, column: 3, scope: !1241)
!1277 = !DILocation(line: 192, column: 1, scope: !1241)
!1278 = distinct !DISubprogram(name: "argmatch_to_argument", scope: !130, file: !130, line: 197, type: !1279, isLocal: false, isDefinition: true, scopeLine: 200, flags: DIFlagPrototyped, isOptimized: true, unit: !125, variables: !1281)
!1279 = !DISubroutineType(types: !1280)
!1280 = !{!36, !36, !1051, !36, !47}
!1281 = !{!1282, !1283, !1284, !1285, !1286}
!1282 = !DILocalVariable(name: "value", arg: 1, scope: !1278, file: !130, line: 197, type: !36)
!1283 = !DILocalVariable(name: "arglist", arg: 2, scope: !1278, file: !130, line: 198, type: !1051)
!1284 = !DILocalVariable(name: "vallist", arg: 3, scope: !1278, file: !130, line: 199, type: !36)
!1285 = !DILocalVariable(name: "valsize", arg: 4, scope: !1278, file: !130, line: 199, type: !47)
!1286 = !DILocalVariable(name: "i", scope: !1278, file: !130, line: 201, type: !47)
!1287 = !DILocation(line: 197, column: 35, scope: !1278)
!1288 = !DILocation(line: 198, column: 42, scope: !1278)
!1289 = !DILocation(line: 199, column: 35, scope: !1278)
!1290 = !DILocation(line: 199, column: 51, scope: !1278)
!1291 = !DILocation(line: 201, column: 10, scope: !1278)
!1292 = !DILocation(line: 203, column: 15, scope: !1293)
!1293 = !DILexicalBlockFile(scope: !1294, file: !130, discriminator: 1)
!1294 = distinct !DILexicalBlock(scope: !1295, file: !130, line: 203, column: 3)
!1295 = distinct !DILexicalBlock(scope: !1278, file: !130, line: 203, column: 3)
!1296 = !DILocation(line: 203, column: 3, scope: !1297)
!1297 = !DILexicalBlockFile(scope: !1295, file: !130, discriminator: 1)
!1298 = !DILocation(line: 204, column: 43, scope: !1299)
!1299 = distinct !DILexicalBlock(scope: !1294, file: !130, line: 204, column: 9)
!1300 = distinct !{!1300, !1301, !1302}
!1301 = !DILocation(line: 203, column: 3, scope: !1295)
!1302 = !DILocation(line: 205, column: 23, scope: !1295)
!1303 = !DILocation(line: 204, column: 33, scope: !1299)
!1304 = !DILocation(line: 204, column: 10, scope: !1299)
!1305 = !DILocation(line: 203, column: 28, scope: !1306)
!1306 = !DILexicalBlockFile(scope: !1294, file: !130, discriminator: 2)
!1307 = !DILocation(line: 204, column: 9, scope: !1294)
!1308 = !DILocation(line: 207, column: 1, scope: !1278)
!1309 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !143, file: !143, line: 41, type: !67, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !138, variables: !1310)
!1310 = !{!1311}
!1311 = !DILocalVariable(name: "file", arg: 1, scope: !1309, file: !143, line: 41, type: !36)
!1312 = !DILocation(line: 41, column: 41, scope: !1309)
!1313 = !DILocation(line: 43, column: 13, scope: !1309)
!1314 = !DILocation(line: 44, column: 1, scope: !1309)
!1315 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !143, file: !143, line: 78, type: !1316, isLocal: false, isDefinition: true, scopeLine: 79, flags: DIFlagPrototyped, isOptimized: true, unit: !138, variables: !1318)
!1316 = !DISubroutineType(types: !1317)
!1317 = !{null, !58}
!1318 = !{!1319}
!1319 = !DILocalVariable(name: "ignore", arg: 1, scope: !1315, file: !143, line: 78, type: !58)
!1320 = !DIExpression(DW_OP_LLVM_fragment, 0, 1)
!1321 = !DILocation(line: 78, column: 37, scope: !1315)
!1322 = !DILocation(line: 80, column: 16, scope: !1315)
!1323 = !{!1324, !1324, i64 0}
!1324 = !{!"_Bool", !689, i64 0}
!1325 = !DILocation(line: 81, column: 1, scope: !1315)
!1326 = distinct !DISubprogram(name: "close_stdout", scope: !143, file: !143, line: 107, type: !134, isLocal: false, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: true, unit: !138, variables: !1327)
!1327 = !{!1328}
!1328 = !DILocalVariable(name: "write_error", scope: !1329, file: !143, line: 112, type: !36)
!1329 = distinct !DILexicalBlock(scope: !1330, file: !143, line: 111, column: 5)
!1330 = distinct !DILexicalBlock(scope: !1326, file: !143, line: 109, column: 7)
!1331 = !DILocation(line: 109, column: 21, scope: !1330)
!1332 = !DILocation(line: 109, column: 7, scope: !1330)
!1333 = !DILocation(line: 109, column: 29, scope: !1330)
!1334 = !DILocation(line: 110, column: 7, scope: !1330)
!1335 = !DILocation(line: 110, column: 12, scope: !1336)
!1336 = !DILexicalBlockFile(scope: !1330, file: !143, discriminator: 1)
!1337 = !{i8 0, i8 2}
!1338 = !DILocation(line: 114, column: 19, scope: !1339)
!1339 = distinct !DILexicalBlock(scope: !1329, file: !143, line: 113, column: 11)
!1340 = !DILocation(line: 110, column: 25, scope: !1336)
!1341 = !DILocation(line: 110, column: 28, scope: !1342)
!1342 = !DILexicalBlockFile(scope: !1330, file: !143, discriminator: 2)
!1343 = !DILocation(line: 110, column: 34, scope: !1342)
!1344 = !DILocation(line: 109, column: 7, scope: !1345)
!1345 = !DILexicalBlockFile(scope: !1326, file: !143, discriminator: 1)
!1346 = !DILocation(line: 112, column: 33, scope: !1329)
!1347 = !DILocation(line: 112, column: 19, scope: !1329)
!1348 = !DILocation(line: 113, column: 11, scope: !1339)
!1349 = !DILocation(line: 113, column: 11, scope: !1329)
!1350 = !DILocation(line: 114, column: 36, scope: !1351)
!1351 = !DILexicalBlockFile(scope: !1339, file: !143, discriminator: 1)
!1352 = !DILocation(line: 114, column: 9, scope: !1353)
!1353 = !DILexicalBlockFile(scope: !1339, file: !143, discriminator: 2)
!1354 = !DILocation(line: 114, column: 9, scope: !1339)
!1355 = !DILocation(line: 117, column: 9, scope: !1351)
!1356 = !DILocation(line: 119, column: 14, scope: !1329)
!1357 = !DILocation(line: 119, column: 7, scope: !1329)
!1358 = !DILocation(line: 122, column: 22, scope: !1359)
!1359 = distinct !DILexicalBlock(scope: !1326, file: !143, line: 122, column: 8)
!1360 = !DILocation(line: 122, column: 8, scope: !1359)
!1361 = !DILocation(line: 122, column: 30, scope: !1359)
!1362 = !DILocation(line: 122, column: 8, scope: !1326)
!1363 = !DILocation(line: 123, column: 13, scope: !1359)
!1364 = !DILocation(line: 123, column: 6, scope: !1359)
!1365 = !DILocation(line: 124, column: 1, scope: !1326)
!1366 = distinct !DISubprogram(name: "fdadvise", scope: !1367, file: !1367, line: 31, type: !1368, isLocal: false, isDefinition: true, scopeLine: 32, flags: DIFlagPrototyped, isOptimized: true, unit: !621, variables: !1372)
!1367 = !DIFile(filename: "lib/fadvise.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1368 = !DISubroutineType(types: !1369)
!1369 = !{null, !46, !1370, !1370, !1371}
!1370 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !753, line: 91, baseType: !781)
!1371 = !DIDerivedType(tag: DW_TAG_typedef, name: "fadvice_t", file: !13, line: 52, baseType: !12)
!1372 = !{!1373, !1374, !1375, !1376, !1377}
!1373 = !DILocalVariable(name: "fd", arg: 1, scope: !1366, file: !1367, line: 31, type: !46)
!1374 = !DILocalVariable(name: "offset", arg: 2, scope: !1366, file: !1367, line: 31, type: !1370)
!1375 = !DILocalVariable(name: "len", arg: 3, scope: !1366, file: !1367, line: 31, type: !1370)
!1376 = !DILocalVariable(name: "advice", arg: 4, scope: !1366, file: !1367, line: 31, type: !1371)
!1377 = !DILocalVariable(name: "__x", scope: !1378, file: !1367, line: 34, type: !46)
!1378 = distinct !DILexicalBlock(scope: !1366, file: !1367, line: 34, column: 3)
!1379 = !DILocation(line: 31, column: 15, scope: !1366)
!1380 = !DILocation(line: 31, column: 25, scope: !1366)
!1381 = !DILocation(line: 31, column: 39, scope: !1366)
!1382 = !DILocation(line: 31, column: 54, scope: !1366)
!1383 = !DILocation(line: 34, column: 3, scope: !1378)
!1384 = !DILocation(line: 36, column: 1, scope: !1366)
!1385 = distinct !DISubprogram(name: "fadvise", scope: !1367, file: !1367, line: 39, type: !1386, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !621, variables: !1428)
!1386 = !DISubroutineType(types: !1387)
!1387 = !{null, !1388, !1371}
!1388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1389, size: 64)
!1389 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !753, line: 49, baseType: !1390)
!1390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !755, line: 241, size: 1728, elements: !1391)
!1391 = !{!1392, !1393, !1394, !1395, !1396, !1397, !1398, !1399, !1400, !1401, !1402, !1403, !1404, !1412, !1413, !1414, !1415, !1416, !1417, !1418, !1419, !1420, !1421, !1422, !1423, !1424, !1425, !1426, !1427}
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1390, file: !755, line: 242, baseType: !46, size: 32)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1390, file: !755, line: 247, baseType: !39, size: 64, offset: 64)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1390, file: !755, line: 248, baseType: !39, size: 64, offset: 128)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1390, file: !755, line: 249, baseType: !39, size: 64, offset: 192)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1390, file: !755, line: 250, baseType: !39, size: 64, offset: 256)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1390, file: !755, line: 251, baseType: !39, size: 64, offset: 320)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1390, file: !755, line: 252, baseType: !39, size: 64, offset: 384)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1390, file: !755, line: 253, baseType: !39, size: 64, offset: 448)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1390, file: !755, line: 254, baseType: !39, size: 64, offset: 512)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1390, file: !755, line: 256, baseType: !39, size: 64, offset: 576)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1390, file: !755, line: 257, baseType: !39, size: 64, offset: 640)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1390, file: !755, line: 258, baseType: !39, size: 64, offset: 704)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1390, file: !755, line: 260, baseType: !1405, size: 64, offset: 768)
!1405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1406, size: 64)
!1406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !755, line: 156, size: 192, elements: !1407)
!1407 = !{!1408, !1409, !1411}
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !1406, file: !755, line: 157, baseType: !1405, size: 64)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !1406, file: !755, line: 158, baseType: !1410, size: 64, offset: 64)
!1410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1390, size: 64)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !1406, file: !755, line: 162, baseType: !46, size: 32, offset: 128)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1390, file: !755, line: 262, baseType: !1410, size: 64, offset: 832)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1390, file: !755, line: 264, baseType: !46, size: 32, offset: 896)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1390, file: !755, line: 268, baseType: !46, size: 32, offset: 928)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1390, file: !755, line: 270, baseType: !781, size: 64, offset: 960)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1390, file: !755, line: 274, baseType: !184, size: 16, offset: 1024)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1390, file: !755, line: 275, baseType: !786, size: 8, offset: 1040)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1390, file: !755, line: 276, baseType: !788, size: 8, offset: 1048)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1390, file: !755, line: 280, baseType: !790, size: 64, offset: 1088)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1390, file: !755, line: 289, baseType: !793, size: 64, offset: 1152)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !1390, file: !755, line: 297, baseType: !40, size: 64, offset: 1216)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !1390, file: !755, line: 298, baseType: !40, size: 64, offset: 1280)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !1390, file: !755, line: 299, baseType: !40, size: 64, offset: 1344)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !1390, file: !755, line: 300, baseType: !40, size: 64, offset: 1408)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1390, file: !755, line: 302, baseType: !47, size: 64, offset: 1472)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1390, file: !755, line: 303, baseType: !46, size: 32, offset: 1536)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1390, file: !755, line: 305, baseType: !801, size: 160, offset: 1568)
!1428 = !{!1429, !1430}
!1429 = !DILocalVariable(name: "fp", arg: 1, scope: !1385, file: !1367, line: 39, type: !1388)
!1430 = !DILocalVariable(name: "advice", arg: 2, scope: !1385, file: !1367, line: 39, type: !1371)
!1431 = !DILocation(line: 39, column: 16, scope: !1385)
!1432 = !DILocation(line: 39, column: 30, scope: !1385)
!1433 = !DILocation(line: 41, column: 7, scope: !1434)
!1434 = distinct !DILexicalBlock(scope: !1385, file: !1367, line: 41, column: 7)
!1435 = !DILocation(line: 41, column: 7, scope: !1385)
!1436 = !DILocation(line: 42, column: 15, scope: !1434)
!1437 = !DILocation(line: 31, column: 15, scope: !1366, inlinedAt: !1438)
!1438 = distinct !DILocation(line: 42, column: 5, scope: !1439)
!1439 = !DILexicalBlockFile(scope: !1434, file: !1367, discriminator: 1)
!1440 = !DILocation(line: 31, column: 25, scope: !1366, inlinedAt: !1438)
!1441 = !DILocation(line: 31, column: 39, scope: !1366, inlinedAt: !1438)
!1442 = !DILocation(line: 31, column: 54, scope: !1366, inlinedAt: !1438)
!1443 = !DILocation(line: 34, column: 3, scope: !1378, inlinedAt: !1438)
!1444 = !DILocation(line: 42, column: 5, scope: !1434)
!1445 = !DILocation(line: 43, column: 1, scope: !1385)
!1446 = distinct !DISubprogram(name: "fopen_safer", scope: !1447, file: !1447, line: 31, type: !1448, isLocal: false, isDefinition: true, scopeLine: 32, flags: DIFlagPrototyped, isOptimized: true, unit: !624, variables: !1490)
!1447 = !DIFile(filename: "lib/fopen-safer.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1448 = !DISubroutineType(types: !1449)
!1449 = !{!1450, !36, !36}
!1450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1451, size: 64)
!1451 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !753, line: 49, baseType: !1452)
!1452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !755, line: 241, size: 1728, elements: !1453)
!1453 = !{!1454, !1455, !1456, !1457, !1458, !1459, !1460, !1461, !1462, !1463, !1464, !1465, !1466, !1474, !1475, !1476, !1477, !1478, !1479, !1480, !1481, !1482, !1483, !1484, !1485, !1486, !1487, !1488, !1489}
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1452, file: !755, line: 242, baseType: !46, size: 32)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1452, file: !755, line: 247, baseType: !39, size: 64, offset: 64)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1452, file: !755, line: 248, baseType: !39, size: 64, offset: 128)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1452, file: !755, line: 249, baseType: !39, size: 64, offset: 192)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1452, file: !755, line: 250, baseType: !39, size: 64, offset: 256)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1452, file: !755, line: 251, baseType: !39, size: 64, offset: 320)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1452, file: !755, line: 252, baseType: !39, size: 64, offset: 384)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1452, file: !755, line: 253, baseType: !39, size: 64, offset: 448)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1452, file: !755, line: 254, baseType: !39, size: 64, offset: 512)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1452, file: !755, line: 256, baseType: !39, size: 64, offset: 576)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1452, file: !755, line: 257, baseType: !39, size: 64, offset: 640)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1452, file: !755, line: 258, baseType: !39, size: 64, offset: 704)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1452, file: !755, line: 260, baseType: !1467, size: 64, offset: 768)
!1467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1468, size: 64)
!1468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !755, line: 156, size: 192, elements: !1469)
!1469 = !{!1470, !1471, !1473}
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !1468, file: !755, line: 157, baseType: !1467, size: 64)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !1468, file: !755, line: 158, baseType: !1472, size: 64, offset: 64)
!1472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1452, size: 64)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !1468, file: !755, line: 162, baseType: !46, size: 32, offset: 128)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1452, file: !755, line: 262, baseType: !1472, size: 64, offset: 832)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1452, file: !755, line: 264, baseType: !46, size: 32, offset: 896)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1452, file: !755, line: 268, baseType: !46, size: 32, offset: 928)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1452, file: !755, line: 270, baseType: !781, size: 64, offset: 960)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1452, file: !755, line: 274, baseType: !184, size: 16, offset: 1024)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1452, file: !755, line: 275, baseType: !786, size: 8, offset: 1040)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1452, file: !755, line: 276, baseType: !788, size: 8, offset: 1048)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1452, file: !755, line: 280, baseType: !790, size: 64, offset: 1088)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1452, file: !755, line: 289, baseType: !793, size: 64, offset: 1152)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !1452, file: !755, line: 297, baseType: !40, size: 64, offset: 1216)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !1452, file: !755, line: 298, baseType: !40, size: 64, offset: 1280)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !1452, file: !755, line: 299, baseType: !40, size: 64, offset: 1344)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !1452, file: !755, line: 300, baseType: !40, size: 64, offset: 1408)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1452, file: !755, line: 302, baseType: !47, size: 64, offset: 1472)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1452, file: !755, line: 303, baseType: !46, size: 32, offset: 1536)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1452, file: !755, line: 305, baseType: !801, size: 160, offset: 1568)
!1490 = !{!1491, !1492, !1493, !1494, !1497, !1500, !1503}
!1491 = !DILocalVariable(name: "file", arg: 1, scope: !1446, file: !1447, line: 31, type: !36)
!1492 = !DILocalVariable(name: "mode", arg: 2, scope: !1446, file: !1447, line: 31, type: !36)
!1493 = !DILocalVariable(name: "fp", scope: !1446, file: !1447, line: 33, type: !1450)
!1494 = !DILocalVariable(name: "fd", scope: !1495, file: !1447, line: 37, type: !46)
!1495 = distinct !DILexicalBlock(scope: !1496, file: !1447, line: 36, column: 5)
!1496 = distinct !DILexicalBlock(scope: !1446, file: !1447, line: 35, column: 7)
!1497 = !DILocalVariable(name: "f", scope: !1498, file: !1447, line: 41, type: !46)
!1498 = distinct !DILexicalBlock(scope: !1499, file: !1447, line: 40, column: 9)
!1499 = distinct !DILexicalBlock(scope: !1495, file: !1447, line: 39, column: 11)
!1500 = !DILocalVariable(name: "e", scope: !1501, file: !1447, line: 45, type: !46)
!1501 = distinct !DILexicalBlock(scope: !1502, file: !1447, line: 44, column: 13)
!1502 = distinct !DILexicalBlock(scope: !1498, file: !1447, line: 43, column: 15)
!1503 = !DILocalVariable(name: "e", scope: !1504, file: !1447, line: 54, type: !46)
!1504 = distinct !DILexicalBlock(scope: !1505, file: !1447, line: 53, column: 13)
!1505 = distinct !DILexicalBlock(scope: !1498, file: !1447, line: 51, column: 15)
!1506 = !DILocation(line: 31, column: 26, scope: !1446)
!1507 = !DILocation(line: 31, column: 44, scope: !1446)
!1508 = !DILocation(line: 33, column: 14, scope: !1446)
!1509 = !DILocation(line: 33, column: 9, scope: !1446)
!1510 = !DILocation(line: 35, column: 7, scope: !1496)
!1511 = !DILocation(line: 35, column: 7, scope: !1446)
!1512 = !DILocation(line: 37, column: 16, scope: !1495)
!1513 = !DILocation(line: 37, column: 11, scope: !1495)
!1514 = !DILocation(line: 39, column: 19, scope: !1499)
!1515 = !DILocation(line: 41, column: 19, scope: !1498)
!1516 = !DILocation(line: 41, column: 15, scope: !1498)
!1517 = !DILocation(line: 43, column: 17, scope: !1502)
!1518 = !DILocation(line: 43, column: 15, scope: !1498)
!1519 = !DILocation(line: 45, column: 23, scope: !1501)
!1520 = !DILocation(line: 45, column: 19, scope: !1501)
!1521 = !DILocation(line: 46, column: 15, scope: !1501)
!1522 = !DILocation(line: 47, column: 21, scope: !1501)
!1523 = !DILocation(line: 51, column: 15, scope: !1505)
!1524 = !DILocation(line: 51, column: 27, scope: !1505)
!1525 = !DILocation(line: 52, column: 15, scope: !1505)
!1526 = !DILocation(line: 52, column: 26, scope: !1527)
!1527 = !DILexicalBlockFile(scope: !1505, file: !1447, discriminator: 1)
!1528 = !DILocation(line: 52, column: 24, scope: !1527)
!1529 = !DILocation(line: 51, column: 15, scope: !1530)
!1530 = !DILexicalBlockFile(scope: !1498, file: !1447, discriminator: 1)
!1531 = !DILocation(line: 54, column: 23, scope: !1504)
!1532 = !DILocation(line: 54, column: 19, scope: !1504)
!1533 = !DILocation(line: 55, column: 15, scope: !1504)
!1534 = !DILocation(line: 56, column: 21, scope: !1504)
!1535 = !DILocation(line: 63, column: 1, scope: !1446)
!1536 = distinct !DISubprogram(name: "set_program_name", scope: !157, file: !157, line: 39, type: !67, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !153, variables: !1537)
!1537 = !{!1538, !1539, !1540}
!1538 = !DILocalVariable(name: "argv0", arg: 1, scope: !1536, file: !157, line: 39, type: !36)
!1539 = !DILocalVariable(name: "slash", scope: !1536, file: !157, line: 46, type: !36)
!1540 = !DILocalVariable(name: "base", scope: !1536, file: !157, line: 47, type: !36)
!1541 = !DILocation(line: 39, column: 31, scope: !1536)
!1542 = !DILocation(line: 51, column: 13, scope: !1543)
!1543 = distinct !DILexicalBlock(scope: !1536, file: !157, line: 51, column: 7)
!1544 = !DILocation(line: 51, column: 7, scope: !1536)
!1545 = !DILocation(line: 55, column: 14, scope: !1546)
!1546 = distinct !DILexicalBlock(scope: !1543, file: !157, line: 52, column: 5)
!1547 = !DILocation(line: 54, column: 7, scope: !1546)
!1548 = !DILocation(line: 56, column: 7, scope: !1546)
!1549 = !DILocation(line: 59, column: 11, scope: !1536)
!1550 = !DILocation(line: 46, column: 15, scope: !1536)
!1551 = !DILocation(line: 60, column: 17, scope: !1536)
!1552 = !DILocation(line: 60, column: 33, scope: !1553)
!1553 = !DILexicalBlockFile(scope: !1536, file: !157, discriminator: 1)
!1554 = !DILocation(line: 60, column: 11, scope: !1536)
!1555 = !DILocation(line: 47, column: 15, scope: !1536)
!1556 = !DILocation(line: 61, column: 12, scope: !1557)
!1557 = distinct !DILexicalBlock(scope: !1536, file: !157, line: 61, column: 7)
!1558 = !DILocation(line: 61, column: 20, scope: !1557)
!1559 = !DILocation(line: 61, column: 25, scope: !1557)
!1560 = !DILocation(line: 61, column: 28, scope: !1561)
!1561 = !DILexicalBlockFile(scope: !1557, file: !157, discriminator: 1)
!1562 = !DILocation(line: 61, column: 61, scope: !1561)
!1563 = !DILocation(line: 61, column: 7, scope: !1553)
!1564 = !DILocation(line: 64, column: 11, scope: !1565)
!1565 = distinct !DILexicalBlock(scope: !1566, file: !157, line: 64, column: 11)
!1566 = distinct !DILexicalBlock(scope: !1557, file: !157, line: 62, column: 5)
!1567 = !DILocation(line: 64, column: 36, scope: !1565)
!1568 = !DILocation(line: 64, column: 11, scope: !1566)
!1569 = !DILocation(line: 66, column: 24, scope: !1570)
!1570 = distinct !DILexicalBlock(scope: !1565, file: !157, line: 65, column: 9)
!1571 = !DILocation(line: 70, column: 41, scope: !1570)
!1572 = !DILocation(line: 72, column: 9, scope: !1570)
!1573 = !DILocation(line: 84, column: 16, scope: !1536)
!1574 = !DILocation(line: 90, column: 27, scope: !1536)
!1575 = !DILocation(line: 92, column: 1, scope: !1536)
!1576 = distinct !DISubprogram(name: "clone_quoting_options", scope: !188, file: !188, line: 114, type: !1577, isLocal: false, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, unit: !160, variables: !1580)
!1577 = !DISubroutineType(types: !1578)
!1578 = !{!1579, !1579}
!1579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 64)
!1580 = !{!1581, !1582, !1583}
!1581 = !DILocalVariable(name: "o", arg: 1, scope: !1576, file: !188, line: 114, type: !1579)
!1582 = !DILocalVariable(name: "e", scope: !1576, file: !188, line: 116, type: !46)
!1583 = !DILocalVariable(name: "p", scope: !1576, file: !188, line: 117, type: !1579)
!1584 = !DILocation(line: 114, column: 48, scope: !1576)
!1585 = !DILocation(line: 116, column: 11, scope: !1576)
!1586 = !DILocation(line: 116, column: 7, scope: !1576)
!1587 = !DILocation(line: 117, column: 40, scope: !1576)
!1588 = !DILocation(line: 117, column: 40, scope: !1589)
!1589 = !DILexicalBlockFile(scope: !1576, file: !188, discriminator: 3)
!1590 = !DILocation(line: 117, column: 31, scope: !1589)
!1591 = !DILocation(line: 117, column: 27, scope: !1576)
!1592 = !DILocation(line: 119, column: 9, scope: !1576)
!1593 = !DILocation(line: 120, column: 3, scope: !1576)
!1594 = distinct !DISubprogram(name: "get_quoting_style", scope: !188, file: !188, line: 125, type: !1595, isLocal: false, isDefinition: true, scopeLine: 126, flags: DIFlagPrototyped, isOptimized: true, unit: !160, variables: !1599)
!1595 = !DISubroutineType(types: !1596)
!1596 = !{!21, !1597}
!1597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1598, size: 64)
!1598 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !195)
!1599 = !{!1600}
!1600 = !DILocalVariable(name: "o", arg: 1, scope: !1594, file: !188, line: 125, type: !1597)
!1601 = !DILocation(line: 125, column: 50, scope: !1594)
!1602 = !DILocation(line: 127, column: 11, scope: !1594)
!1603 = !DILocation(line: 127, column: 46, scope: !1604)
!1604 = !DILexicalBlockFile(scope: !1594, file: !188, discriminator: 3)
!1605 = !{!1606, !689, i64 0}
!1606 = !{!"quoting_options", !689, i64 0, !864, i64 4, !689, i64 8, !688, i64 40, !688, i64 48}
!1607 = !DILocation(line: 127, column: 3, scope: !1604)
!1608 = distinct !DISubprogram(name: "set_quoting_style", scope: !188, file: !188, line: 133, type: !1609, isLocal: false, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: true, unit: !160, variables: !1611)
!1609 = !DISubroutineType(types: !1610)
!1610 = !{null, !1579, !21}
!1611 = !{!1612, !1613}
!1612 = !DILocalVariable(name: "o", arg: 1, scope: !1608, file: !188, line: 133, type: !1579)
!1613 = !DILocalVariable(name: "s", arg: 2, scope: !1608, file: !188, line: 133, type: !21)
!1614 = !DILocation(line: 133, column: 44, scope: !1608)
!1615 = !DILocation(line: 133, column: 66, scope: !1608)
!1616 = !DILocation(line: 135, column: 4, scope: !1608)
!1617 = !DILocation(line: 135, column: 39, scope: !1618)
!1618 = !DILexicalBlockFile(scope: !1608, file: !188, discriminator: 3)
!1619 = !DILocation(line: 135, column: 45, scope: !1618)
!1620 = !DILocation(line: 136, column: 1, scope: !1608)
!1621 = distinct !DISubprogram(name: "set_char_quoting", scope: !188, file: !188, line: 144, type: !1622, isLocal: false, isDefinition: true, scopeLine: 145, flags: DIFlagPrototyped, isOptimized: true, unit: !160, variables: !1624)
!1622 = !DISubroutineType(types: !1623)
!1623 = !{!46, !1579, !38, !46}
!1624 = !{!1625, !1626, !1627, !1628, !1629, !1631, !1632}
!1625 = !DILocalVariable(name: "o", arg: 1, scope: !1621, file: !188, line: 144, type: !1579)
!1626 = !DILocalVariable(name: "c", arg: 2, scope: !1621, file: !188, line: 144, type: !38)
!1627 = !DILocalVariable(name: "i", arg: 3, scope: !1621, file: !188, line: 144, type: !46)
!1628 = !DILocalVariable(name: "uc", scope: !1621, file: !188, line: 146, type: !54)
!1629 = !DILocalVariable(name: "p", scope: !1621, file: !188, line: 147, type: !1630)
!1630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 64)
!1631 = !DILocalVariable(name: "shift", scope: !1621, file: !188, line: 149, type: !46)
!1632 = !DILocalVariable(name: "r", scope: !1621, file: !188, line: 150, type: !46)
!1633 = !DILocation(line: 144, column: 43, scope: !1621)
!1634 = !DILocation(line: 144, column: 51, scope: !1621)
!1635 = !DILocation(line: 144, column: 58, scope: !1621)
!1636 = !DILocation(line: 146, column: 17, scope: !1621)
!1637 = !DILocation(line: 148, column: 6, scope: !1621)
!1638 = !DILocation(line: 148, column: 62, scope: !1639)
!1639 = !DILexicalBlockFile(scope: !1621, file: !188, discriminator: 3)
!1640 = !DILocation(line: 148, column: 57, scope: !1639)
!1641 = !DILocation(line: 147, column: 17, scope: !1621)
!1642 = !DILocation(line: 149, column: 18, scope: !1621)
!1643 = !DILocation(line: 149, column: 15, scope: !1621)
!1644 = !DILocation(line: 149, column: 7, scope: !1621)
!1645 = !DILocation(line: 150, column: 12, scope: !1621)
!1646 = !DILocation(line: 150, column: 15, scope: !1621)
!1647 = !DILocation(line: 150, column: 25, scope: !1621)
!1648 = !DILocation(line: 150, column: 7, scope: !1621)
!1649 = !DILocation(line: 151, column: 13, scope: !1621)
!1650 = !DILocation(line: 151, column: 18, scope: !1621)
!1651 = !DILocation(line: 151, column: 23, scope: !1621)
!1652 = !DILocation(line: 151, column: 6, scope: !1621)
!1653 = !DILocation(line: 152, column: 3, scope: !1621)
!1654 = distinct !DISubprogram(name: "set_quoting_flags", scope: !188, file: !188, line: 160, type: !1655, isLocal: false, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !160, variables: !1657)
!1655 = !DISubroutineType(types: !1656)
!1656 = !{!46, !1579, !46}
!1657 = !{!1658, !1659, !1660}
!1658 = !DILocalVariable(name: "o", arg: 1, scope: !1654, file: !188, line: 160, type: !1579)
!1659 = !DILocalVariable(name: "i", arg: 2, scope: !1654, file: !188, line: 160, type: !46)
!1660 = !DILocalVariable(name: "r", scope: !1654, file: !188, line: 162, type: !46)
!1661 = !DILocation(line: 160, column: 44, scope: !1654)
!1662 = !DILocation(line: 160, column: 51, scope: !1654)
!1663 = !DILocation(line: 163, column: 8, scope: !1664)
!1664 = distinct !DILexicalBlock(scope: !1654, file: !188, line: 163, column: 7)
!1665 = !DILocation(line: 163, column: 7, scope: !1654)
!1666 = !DILocation(line: 165, column: 10, scope: !1654)
!1667 = !{!1606, !864, i64 4}
!1668 = !DILocation(line: 162, column: 7, scope: !1654)
!1669 = !DILocation(line: 166, column: 12, scope: !1654)
!1670 = !DILocation(line: 167, column: 3, scope: !1654)
!1671 = distinct !DISubprogram(name: "set_custom_quoting", scope: !188, file: !188, line: 171, type: !1672, isLocal: false, isDefinition: true, scopeLine: 173, flags: DIFlagPrototyped, isOptimized: true, unit: !160, variables: !1674)
!1672 = !DISubroutineType(types: !1673)
!1673 = !{null, !1579, !36, !36}
!1674 = !{!1675, !1676, !1677}
!1675 = !DILocalVariable(name: "o", arg: 1, scope: !1671, file: !188, line: 171, type: !1579)
!1676 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1671, file: !188, line: 172, type: !36)
!1677 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1671, file: !188, line: 172, type: !36)
!1678 = !DILocation(line: 171, column: 45, scope: !1671)
!1679 = !DILocation(line: 172, column: 33, scope: !1671)
!1680 = !DILocation(line: 172, column: 57, scope: !1671)
!1681 = !DILocation(line: 174, column: 8, scope: !1682)
!1682 = distinct !DILexicalBlock(scope: !1671, file: !188, line: 174, column: 7)
!1683 = !DILocation(line: 174, column: 7, scope: !1671)
!1684 = !DILocation(line: 176, column: 6, scope: !1671)
!1685 = !DILocation(line: 176, column: 12, scope: !1671)
!1686 = !DILocation(line: 177, column: 8, scope: !1687)
!1687 = distinct !DILexicalBlock(scope: !1671, file: !188, line: 177, column: 7)
!1688 = !DILocation(line: 177, column: 23, scope: !1689)
!1689 = !DILexicalBlockFile(scope: !1687, file: !188, discriminator: 1)
!1690 = !DILocation(line: 177, column: 19, scope: !1687)
!1691 = !DILocation(line: 178, column: 5, scope: !1687)
!1692 = !DILocation(line: 179, column: 6, scope: !1671)
!1693 = !DILocation(line: 179, column: 17, scope: !1671)
!1694 = !{!1606, !688, i64 40}
!1695 = !DILocation(line: 180, column: 6, scope: !1671)
!1696 = !DILocation(line: 180, column: 18, scope: !1671)
!1697 = !{!1606, !688, i64 48}
!1698 = !DILocation(line: 181, column: 1, scope: !1671)
!1699 = distinct !DISubprogram(name: "quotearg_buffer", scope: !188, file: !188, line: 776, type: !1700, isLocal: false, isDefinition: true, scopeLine: 779, flags: DIFlagPrototyped, isOptimized: true, unit: !160, variables: !1702)
!1700 = !DISubroutineType(types: !1701)
!1701 = !{!47, !39, !47, !36, !47, !1597}
!1702 = !{!1703, !1704, !1705, !1706, !1707, !1708, !1709, !1710}
!1703 = !DILocalVariable(name: "buffer", arg: 1, scope: !1699, file: !188, line: 776, type: !39)
!1704 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1699, file: !188, line: 776, type: !47)
!1705 = !DILocalVariable(name: "arg", arg: 3, scope: !1699, file: !188, line: 777, type: !36)
!1706 = !DILocalVariable(name: "argsize", arg: 4, scope: !1699, file: !188, line: 777, type: !47)
!1707 = !DILocalVariable(name: "o", arg: 5, scope: !1699, file: !188, line: 778, type: !1597)
!1708 = !DILocalVariable(name: "p", scope: !1699, file: !188, line: 780, type: !1597)
!1709 = !DILocalVariable(name: "e", scope: !1699, file: !188, line: 781, type: !46)
!1710 = !DILocalVariable(name: "r", scope: !1699, file: !188, line: 782, type: !47)
!1711 = !DILocation(line: 776, column: 24, scope: !1699)
!1712 = !DILocation(line: 776, column: 39, scope: !1699)
!1713 = !DILocation(line: 777, column: 30, scope: !1699)
!1714 = !DILocation(line: 777, column: 42, scope: !1699)
!1715 = !DILocation(line: 778, column: 48, scope: !1699)
!1716 = !DILocation(line: 780, column: 37, scope: !1699)
!1717 = !DILocation(line: 780, column: 33, scope: !1699)
!1718 = !DILocation(line: 781, column: 11, scope: !1699)
!1719 = !DILocation(line: 781, column: 7, scope: !1699)
!1720 = !DILocation(line: 783, column: 43, scope: !1699)
!1721 = !DILocation(line: 783, column: 53, scope: !1699)
!1722 = !DILocation(line: 783, column: 60, scope: !1699)
!1723 = !DILocation(line: 784, column: 43, scope: !1699)
!1724 = !DILocation(line: 784, column: 58, scope: !1699)
!1725 = !DILocation(line: 782, column: 14, scope: !1699)
!1726 = !DILocation(line: 782, column: 10, scope: !1699)
!1727 = !DILocation(line: 785, column: 9, scope: !1699)
!1728 = !DILocation(line: 786, column: 3, scope: !1699)
!1729 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !188, file: !188, line: 248, type: !1730, isLocal: true, isDefinition: true, scopeLine: 254, flags: DIFlagPrototyped, isOptimized: true, unit: !160, variables: !1734)
!1730 = !DISubroutineType(types: !1731)
!1731 = !{!47, !39, !47, !36, !47, !21, !46, !1732, !36, !36}
!1732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1733, size: 64)
!1733 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !201)
!1734 = !{!1735, !1736, !1737, !1738, !1739, !1740, !1741, !1742, !1743, !1744, !1745, !1746, !1747, !1748, !1749, !1750, !1751, !1752, !1753, !1754, !1755, !1759, !1760, !1761, !1762, !1763, !1766, !1767, !1782, !1785, !1786, !1793}
!1735 = !DILocalVariable(name: "buffer", arg: 1, scope: !1729, file: !188, line: 248, type: !39)
!1736 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1729, file: !188, line: 248, type: !47)
!1737 = !DILocalVariable(name: "arg", arg: 3, scope: !1729, file: !188, line: 249, type: !36)
!1738 = !DILocalVariable(name: "argsize", arg: 4, scope: !1729, file: !188, line: 249, type: !47)
!1739 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1729, file: !188, line: 250, type: !21)
!1740 = !DILocalVariable(name: "flags", arg: 6, scope: !1729, file: !188, line: 250, type: !46)
!1741 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1729, file: !188, line: 251, type: !1732)
!1742 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1729, file: !188, line: 252, type: !36)
!1743 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1729, file: !188, line: 253, type: !36)
!1744 = !DILocalVariable(name: "i", scope: !1729, file: !188, line: 255, type: !47)
!1745 = !DILocalVariable(name: "len", scope: !1729, file: !188, line: 256, type: !47)
!1746 = !DILocalVariable(name: "orig_buffersize", scope: !1729, file: !188, line: 257, type: !47)
!1747 = !DILocalVariable(name: "quote_string", scope: !1729, file: !188, line: 258, type: !36)
!1748 = !DILocalVariable(name: "quote_string_len", scope: !1729, file: !188, line: 259, type: !47)
!1749 = !DILocalVariable(name: "backslash_escapes", scope: !1729, file: !188, line: 260, type: !58)
!1750 = !DILocalVariable(name: "unibyte_locale", scope: !1729, file: !188, line: 261, type: !58)
!1751 = !DILocalVariable(name: "elide_outer_quotes", scope: !1729, file: !188, line: 262, type: !58)
!1752 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1729, file: !188, line: 263, type: !58)
!1753 = !DILocalVariable(name: "encountered_single_quote", scope: !1729, file: !188, line: 264, type: !58)
!1754 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1729, file: !188, line: 265, type: !58)
!1755 = !DILocalVariable(name: "c", scope: !1756, file: !188, line: 394, type: !54)
!1756 = distinct !DILexicalBlock(scope: !1757, file: !188, line: 393, column: 5)
!1757 = distinct !DILexicalBlock(scope: !1758, file: !188, line: 392, column: 3)
!1758 = distinct !DILexicalBlock(scope: !1729, file: !188, line: 392, column: 3)
!1759 = !DILocalVariable(name: "esc", scope: !1756, file: !188, line: 395, type: !54)
!1760 = !DILocalVariable(name: "is_right_quote", scope: !1756, file: !188, line: 396, type: !58)
!1761 = !DILocalVariable(name: "escaping", scope: !1756, file: !188, line: 397, type: !58)
!1762 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1756, file: !188, line: 398, type: !58)
!1763 = !DILocalVariable(name: "m", scope: !1764, file: !188, line: 602, type: !47)
!1764 = distinct !DILexicalBlock(scope: !1765, file: !188, line: 600, column: 11)
!1765 = distinct !DILexicalBlock(scope: !1756, file: !188, line: 418, column: 9)
!1766 = !DILocalVariable(name: "printable", scope: !1764, file: !188, line: 604, type: !58)
!1767 = !DILocalVariable(name: "mbstate", scope: !1768, file: !188, line: 613, type: !1770)
!1768 = distinct !DILexicalBlock(scope: !1769, file: !188, line: 612, column: 15)
!1769 = distinct !DILexicalBlock(scope: !1764, file: !188, line: 606, column: 17)
!1770 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1771, line: 107, baseType: !1772)
!1771 = !DIFile(filename: "/usr/include/wchar.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1772 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1771, line: 95, baseType: !1773)
!1773 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1771, line: 83, size: 64, elements: !1774)
!1774 = !{!1775, !1776}
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1773, file: !1771, line: 85, baseType: !46, size: 32)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1773, file: !1771, line: 94, baseType: !1777, size: 32, offset: 32)
!1777 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1773, file: !1771, line: 86, size: 32, elements: !1778)
!1778 = !{!1779, !1780}
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1777, file: !1771, line: 89, baseType: !201, size: 32)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1777, file: !1771, line: 93, baseType: !1781, size: 32)
!1781 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 32, elements: !97)
!1782 = !DILocalVariable(name: "w", scope: !1783, file: !188, line: 623, type: !1784)
!1783 = distinct !DILexicalBlock(scope: !1768, file: !188, line: 622, column: 19)
!1784 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !48, line: 90, baseType: !46)
!1785 = !DILocalVariable(name: "bytes", scope: !1783, file: !188, line: 624, type: !47)
!1786 = !DILocalVariable(name: "j", scope: !1787, file: !188, line: 649, type: !47)
!1787 = distinct !DILexicalBlock(scope: !1788, file: !188, line: 648, column: 27)
!1788 = distinct !DILexicalBlock(scope: !1789, file: !188, line: 646, column: 29)
!1789 = distinct !DILexicalBlock(scope: !1790, file: !188, line: 641, column: 23)
!1790 = distinct !DILexicalBlock(scope: !1791, file: !188, line: 633, column: 30)
!1791 = distinct !DILexicalBlock(scope: !1792, file: !188, line: 628, column: 30)
!1792 = distinct !DILexicalBlock(scope: !1783, file: !188, line: 626, column: 25)
!1793 = !DILocalVariable(name: "ilim", scope: !1794, file: !188, line: 676, type: !47)
!1794 = distinct !DILexicalBlock(scope: !1795, file: !188, line: 673, column: 15)
!1795 = distinct !DILexicalBlock(scope: !1764, file: !188, line: 672, column: 17)
!1796 = !DILocation(line: 248, column: 33, scope: !1729)
!1797 = !DILocation(line: 248, column: 48, scope: !1729)
!1798 = !DILocation(line: 249, column: 39, scope: !1729)
!1799 = !DILocation(line: 249, column: 51, scope: !1729)
!1800 = !DILocation(line: 250, column: 46, scope: !1729)
!1801 = !DILocation(line: 250, column: 65, scope: !1729)
!1802 = !DILocation(line: 251, column: 47, scope: !1729)
!1803 = !DILocation(line: 252, column: 39, scope: !1729)
!1804 = !DILocation(line: 253, column: 39, scope: !1729)
!1805 = !DILocation(line: 256, column: 10, scope: !1729)
!1806 = !DILocation(line: 257, column: 10, scope: !1729)
!1807 = !DILocation(line: 258, column: 15, scope: !1729)
!1808 = !DILocation(line: 259, column: 10, scope: !1729)
!1809 = !DILocation(line: 260, column: 8, scope: !1729)
!1810 = !DILocation(line: 261, column: 25, scope: !1729)
!1811 = !DILocation(line: 261, column: 36, scope: !1729)
!1812 = !DILocation(line: 262, column: 8, scope: !1729)
!1813 = !DILocation(line: 263, column: 8, scope: !1729)
!1814 = !DILocation(line: 264, column: 8, scope: !1729)
!1815 = !DILocation(line: 265, column: 8, scope: !1729)
!1816 = !DILocation(line: 265, column: 3, scope: !1729)
!1817 = !DILocation(line: 308, column: 3, scope: !1729)
!1818 = !DILocation(line: 315, column: 11, scope: !1819)
!1819 = distinct !DILexicalBlock(scope: !1729, file: !188, line: 309, column: 5)
!1820 = !DILocation(line: 315, column: 12, scope: !1821)
!1821 = distinct !DILexicalBlock(scope: !1819, file: !188, line: 315, column: 11)
!1822 = !DILocation(line: 316, column: 9, scope: !1823)
!1823 = !DILexicalBlockFile(scope: !1824, file: !188, discriminator: 1)
!1824 = distinct !DILexicalBlock(scope: !1825, file: !188, line: 316, column: 9)
!1825 = distinct !DILexicalBlock(scope: !1821, file: !188, line: 316, column: 9)
!1826 = !DILocation(line: 316, column: 9, scope: !1827)
!1827 = !DILexicalBlockFile(scope: !1825, file: !188, discriminator: 1)
!1828 = !DILocation(line: 316, column: 9, scope: !1829)
!1829 = !DILexicalBlockFile(scope: !1824, file: !188, discriminator: 2)
!1830 = !DILocation(line: 354, column: 26, scope: !1831)
!1831 = distinct !DILexicalBlock(scope: !1832, file: !188, line: 332, column: 11)
!1832 = distinct !DILexicalBlock(scope: !1833, file: !188, line: 331, column: 13)
!1833 = distinct !DILexicalBlock(scope: !1819, file: !188, line: 330, column: 7)
!1834 = !DILocation(line: 355, column: 27, scope: !1831)
!1835 = !DILocation(line: 356, column: 11, scope: !1831)
!1836 = !DILocation(line: 357, column: 14, scope: !1837)
!1837 = distinct !DILexicalBlock(scope: !1833, file: !188, line: 357, column: 13)
!1838 = !DILocation(line: 357, column: 13, scope: !1833)
!1839 = !DILocation(line: 358, column: 43, scope: !1840)
!1840 = !DILexicalBlockFile(scope: !1841, file: !188, discriminator: 1)
!1841 = distinct !DILexicalBlock(scope: !1842, file: !188, line: 358, column: 11)
!1842 = distinct !DILexicalBlock(scope: !1837, file: !188, line: 358, column: 11)
!1843 = !DILocation(line: 358, column: 11, scope: !1844)
!1844 = !DILexicalBlockFile(scope: !1842, file: !188, discriminator: 1)
!1845 = !DILocation(line: 359, column: 13, scope: !1846)
!1846 = !DILexicalBlockFile(scope: !1847, file: !188, discriminator: 1)
!1847 = distinct !DILexicalBlock(scope: !1848, file: !188, line: 359, column: 13)
!1848 = distinct !DILexicalBlock(scope: !1841, file: !188, line: 359, column: 13)
!1849 = !DILocation(line: 359, column: 13, scope: !1850)
!1850 = !DILexicalBlockFile(scope: !1848, file: !188, discriminator: 1)
!1851 = !DILocation(line: 359, column: 13, scope: !1852)
!1852 = !DILexicalBlockFile(scope: !1847, file: !188, discriminator: 2)
!1853 = !DILocation(line: 359, column: 13, scope: !1854)
!1854 = !DILexicalBlockFile(scope: !1848, file: !188, discriminator: 3)
!1855 = !DILocation(line: 358, column: 70, scope: !1856)
!1856 = !DILexicalBlockFile(scope: !1841, file: !188, discriminator: 2)
!1857 = distinct !{!1857, !1858, !1859}
!1858 = !DILocation(line: 358, column: 11, scope: !1842)
!1859 = !DILocation(line: 359, column: 13, scope: !1842)
!1860 = !DILocation(line: 362, column: 28, scope: !1833)
!1861 = !DILocation(line: 364, column: 7, scope: !1819)
!1862 = !DILocation(line: 367, column: 7, scope: !1819)
!1863 = !DILocation(line: 370, column: 7, scope: !1819)
!1864 = !DILocation(line: 373, column: 12, scope: !1865)
!1865 = distinct !DILexicalBlock(scope: !1819, file: !188, line: 373, column: 11)
!1866 = !DILocation(line: 373, column: 11, scope: !1819)
!1867 = !DILocation(line: 378, column: 12, scope: !1868)
!1868 = distinct !DILexicalBlock(scope: !1819, file: !188, line: 378, column: 11)
!1869 = !DILocation(line: 378, column: 11, scope: !1819)
!1870 = !DILocation(line: 379, column: 9, scope: !1871)
!1871 = !DILexicalBlockFile(scope: !1872, file: !188, discriminator: 1)
!1872 = distinct !DILexicalBlock(scope: !1873, file: !188, line: 379, column: 9)
!1873 = distinct !DILexicalBlock(scope: !1868, file: !188, line: 379, column: 9)
!1874 = !DILocation(line: 379, column: 9, scope: !1875)
!1875 = !DILexicalBlockFile(scope: !1873, file: !188, discriminator: 1)
!1876 = !DILocation(line: 379, column: 9, scope: !1877)
!1877 = !DILexicalBlockFile(scope: !1872, file: !188, discriminator: 2)
!1878 = !DILocation(line: 386, column: 7, scope: !1819)
!1879 = !DILocation(line: 389, column: 7, scope: !1819)
!1880 = !DILocation(line: 255, column: 10, scope: !1729)
!1881 = !DILocation(line: 392, column: 8, scope: !1758)
!1882 = !DILocation(line: 392, column: 27, scope: !1883)
!1883 = !DILexicalBlockFile(scope: !1757, file: !188, discriminator: 1)
!1884 = !DILocation(line: 392, column: 19, scope: !1883)
!1885 = !DILocation(line: 392, column: 60, scope: !1886)
!1886 = !DILexicalBlockFile(scope: !1757, file: !188, discriminator: 3)
!1887 = !DILocation(line: 392, column: 3, scope: !1888)
!1888 = !DILexicalBlockFile(scope: !1758, file: !188, discriminator: 4)
!1889 = !DILocation(line: 392, column: 41, scope: !1890)
!1890 = !DILexicalBlockFile(scope: !1757, file: !188, discriminator: 2)
!1891 = !DILocation(line: 392, column: 48, scope: !1890)
!1892 = !DILocation(line: 396, column: 12, scope: !1756)
!1893 = !DILocation(line: 397, column: 12, scope: !1756)
!1894 = !DILocation(line: 398, column: 12, scope: !1756)
!1895 = !DILocation(line: 401, column: 11, scope: !1896)
!1896 = distinct !DILexicalBlock(scope: !1756, file: !188, line: 400, column: 11)
!1897 = !DILocation(line: 403, column: 17, scope: !1898)
!1898 = !DILexicalBlockFile(scope: !1896, file: !188, discriminator: 1)
!1899 = !DILocation(line: 404, column: 39, scope: !1896)
!1900 = !DILocation(line: 408, column: 32, scope: !1896)
!1901 = !DILocation(line: 404, column: 19, scope: !1902)
!1902 = !DILexicalBlockFile(scope: !1896, file: !188, discriminator: 2)
!1903 = !DILocation(line: 404, column: 15, scope: !1904)
!1904 = !DILexicalBlockFile(scope: !1896, file: !188, discriminator: 4)
!1905 = !DILocation(line: 409, column: 11, scope: !1896)
!1906 = !DILocation(line: 409, column: 26, scope: !1898)
!1907 = !DILocation(line: 409, column: 14, scope: !1898)
!1908 = !DILocation(line: 400, column: 11, scope: !1909)
!1909 = !DILexicalBlockFile(scope: !1756, file: !188, discriminator: 1)
!1910 = !DILocation(line: 416, column: 11, scope: !1756)
!1911 = !DILocation(line: 394, column: 21, scope: !1756)
!1912 = !DILocation(line: 417, column: 7, scope: !1756)
!1913 = !DILocation(line: 420, column: 15, scope: !1765)
!1914 = !DILocation(line: 422, column: 15, scope: !1915)
!1915 = !DILexicalBlockFile(scope: !1916, file: !188, discriminator: 1)
!1916 = distinct !DILexicalBlock(scope: !1917, file: !188, line: 422, column: 15)
!1917 = distinct !DILexicalBlock(scope: !1918, file: !188, line: 421, column: 13)
!1918 = distinct !DILexicalBlock(scope: !1765, file: !188, line: 420, column: 15)
!1919 = !DILocation(line: 422, column: 15, scope: !1920)
!1920 = !DILexicalBlockFile(scope: !1921, file: !188, discriminator: 4)
!1921 = distinct !DILexicalBlock(scope: !1916, file: !188, line: 422, column: 15)
!1922 = !DILocation(line: 422, column: 15, scope: !1923)
!1923 = !DILexicalBlockFile(scope: !1921, file: !188, discriminator: 3)
!1924 = !DILocation(line: 422, column: 15, scope: !1925)
!1925 = !DILexicalBlockFile(scope: !1926, file: !188, discriminator: 6)
!1926 = distinct !DILexicalBlock(scope: !1927, file: !188, line: 422, column: 15)
!1927 = distinct !DILexicalBlock(scope: !1928, file: !188, line: 422, column: 15)
!1928 = distinct !DILexicalBlock(scope: !1921, file: !188, line: 422, column: 15)
!1929 = !DILocation(line: 422, column: 15, scope: !1930)
!1930 = !DILexicalBlockFile(scope: !1927, file: !188, discriminator: 6)
!1931 = !DILocation(line: 422, column: 15, scope: !1932)
!1932 = !DILexicalBlockFile(scope: !1926, file: !188, discriminator: 7)
!1933 = !DILocation(line: 422, column: 15, scope: !1934)
!1934 = !DILexicalBlockFile(scope: !1927, file: !188, discriminator: 8)
!1935 = !DILocation(line: 422, column: 15, scope: !1936)
!1936 = !DILexicalBlockFile(scope: !1937, file: !188, discriminator: 11)
!1937 = distinct !DILexicalBlock(scope: !1938, file: !188, line: 422, column: 15)
!1938 = distinct !DILexicalBlock(scope: !1928, file: !188, line: 422, column: 15)
!1939 = !DILocation(line: 422, column: 15, scope: !1940)
!1940 = !DILexicalBlockFile(scope: !1938, file: !188, discriminator: 11)
!1941 = !DILocation(line: 422, column: 15, scope: !1942)
!1942 = !DILexicalBlockFile(scope: !1937, file: !188, discriminator: 12)
!1943 = !DILocation(line: 422, column: 15, scope: !1944)
!1944 = !DILexicalBlockFile(scope: !1938, file: !188, discriminator: 13)
!1945 = !DILocation(line: 422, column: 15, scope: !1946)
!1946 = !DILexicalBlockFile(scope: !1947, file: !188, discriminator: 16)
!1947 = distinct !DILexicalBlock(scope: !1948, file: !188, line: 422, column: 15)
!1948 = distinct !DILexicalBlock(scope: !1928, file: !188, line: 422, column: 15)
!1949 = !DILocation(line: 422, column: 15, scope: !1950)
!1950 = !DILexicalBlockFile(scope: !1948, file: !188, discriminator: 16)
!1951 = !DILocation(line: 422, column: 15, scope: !1952)
!1952 = !DILexicalBlockFile(scope: !1947, file: !188, discriminator: 17)
!1953 = !DILocation(line: 422, column: 15, scope: !1954)
!1954 = !DILexicalBlockFile(scope: !1948, file: !188, discriminator: 18)
!1955 = !DILocation(line: 422, column: 15, scope: !1956)
!1956 = !DILexicalBlockFile(scope: !1928, file: !188, discriminator: 20)
!1957 = !DILocation(line: 422, column: 15, scope: !1958)
!1958 = !DILexicalBlockFile(scope: !1959, file: !188, discriminator: 22)
!1959 = distinct !DILexicalBlock(scope: !1960, file: !188, line: 422, column: 15)
!1960 = distinct !DILexicalBlock(scope: !1916, file: !188, line: 422, column: 15)
!1961 = !DILocation(line: 422, column: 15, scope: !1962)
!1962 = !DILexicalBlockFile(scope: !1960, file: !188, discriminator: 22)
!1963 = !DILocation(line: 422, column: 15, scope: !1964)
!1964 = !DILexicalBlockFile(scope: !1959, file: !188, discriminator: 23)
!1965 = !DILocation(line: 422, column: 15, scope: !1966)
!1966 = !DILexicalBlockFile(scope: !1960, file: !188, discriminator: 24)
!1967 = !DILocation(line: 430, column: 19, scope: !1968)
!1968 = distinct !DILexicalBlock(scope: !1917, file: !188, line: 429, column: 19)
!1969 = !DILocation(line: 430, column: 24, scope: !1970)
!1970 = !DILexicalBlockFile(scope: !1968, file: !188, discriminator: 1)
!1971 = !DILocation(line: 430, column: 28, scope: !1970)
!1972 = !DILocation(line: 430, column: 38, scope: !1970)
!1973 = !DILocation(line: 430, column: 48, scope: !1974)
!1974 = !DILexicalBlockFile(scope: !1968, file: !188, discriminator: 2)
!1975 = !DILocation(line: 430, column: 59, scope: !1974)
!1976 = !DILocation(line: 432, column: 19, scope: !1977)
!1977 = !DILexicalBlockFile(scope: !1978, file: !188, discriminator: 1)
!1978 = distinct !DILexicalBlock(scope: !1979, file: !188, line: 432, column: 19)
!1979 = distinct !DILexicalBlock(scope: !1980, file: !188, line: 432, column: 19)
!1980 = distinct !DILexicalBlock(scope: !1968, file: !188, line: 431, column: 17)
!1981 = !DILocation(line: 432, column: 19, scope: !1982)
!1982 = !DILexicalBlockFile(scope: !1979, file: !188, discriminator: 1)
!1983 = !DILocation(line: 432, column: 19, scope: !1984)
!1984 = !DILexicalBlockFile(scope: !1978, file: !188, discriminator: 2)
!1985 = !DILocation(line: 432, column: 19, scope: !1986)
!1986 = !DILexicalBlockFile(scope: !1979, file: !188, discriminator: 3)
!1987 = !DILocation(line: 433, column: 19, scope: !1988)
!1988 = !DILexicalBlockFile(scope: !1989, file: !188, discriminator: 1)
!1989 = distinct !DILexicalBlock(scope: !1990, file: !188, line: 433, column: 19)
!1990 = distinct !DILexicalBlock(scope: !1980, file: !188, line: 433, column: 19)
!1991 = !DILocation(line: 433, column: 19, scope: !1992)
!1992 = !DILexicalBlockFile(scope: !1990, file: !188, discriminator: 1)
!1993 = !DILocation(line: 433, column: 19, scope: !1994)
!1994 = !DILexicalBlockFile(scope: !1989, file: !188, discriminator: 2)
!1995 = !DILocation(line: 433, column: 19, scope: !1996)
!1996 = !DILexicalBlockFile(scope: !1990, file: !188, discriminator: 3)
!1997 = !DILocation(line: 434, column: 17, scope: !1980)
!1998 = !DILocation(line: 441, column: 20, scope: !1918)
!1999 = !DILocation(line: 446, column: 11, scope: !1765)
!2000 = !DILocation(line: 449, column: 19, scope: !2001)
!2001 = distinct !DILexicalBlock(scope: !1765, file: !188, line: 447, column: 13)
!2002 = !DILocation(line: 455, column: 19, scope: !2003)
!2003 = distinct !DILexicalBlock(scope: !2001, file: !188, line: 454, column: 19)
!2004 = !DILocation(line: 455, column: 24, scope: !2005)
!2005 = !DILexicalBlockFile(scope: !2003, file: !188, discriminator: 1)
!2006 = !DILocation(line: 455, column: 28, scope: !2005)
!2007 = !DILocation(line: 455, column: 38, scope: !2005)
!2008 = !DILocation(line: 455, column: 47, scope: !2009)
!2009 = !DILexicalBlockFile(scope: !2003, file: !188, discriminator: 2)
!2010 = !DILocation(line: 455, column: 41, scope: !2009)
!2011 = !DILocation(line: 455, column: 52, scope: !2009)
!2012 = !DILocation(line: 454, column: 19, scope: !2013)
!2013 = !DILexicalBlockFile(scope: !2001, file: !188, discriminator: 1)
!2014 = !DILocation(line: 456, column: 25, scope: !2003)
!2015 = !DILocation(line: 456, column: 17, scope: !2003)
!2016 = !DILocation(line: 463, column: 25, scope: !2017)
!2017 = distinct !DILexicalBlock(scope: !2003, file: !188, line: 457, column: 19)
!2018 = !DILocation(line: 467, column: 21, scope: !2019)
!2019 = !DILexicalBlockFile(scope: !2020, file: !188, discriminator: 1)
!2020 = distinct !DILexicalBlock(scope: !2021, file: !188, line: 467, column: 21)
!2021 = distinct !DILexicalBlock(scope: !2017, file: !188, line: 467, column: 21)
!2022 = !DILocation(line: 467, column: 21, scope: !2023)
!2023 = !DILexicalBlockFile(scope: !2021, file: !188, discriminator: 1)
!2024 = !DILocation(line: 467, column: 21, scope: !2025)
!2025 = !DILexicalBlockFile(scope: !2020, file: !188, discriminator: 2)
!2026 = !DILocation(line: 467, column: 21, scope: !2027)
!2027 = !DILexicalBlockFile(scope: !2021, file: !188, discriminator: 3)
!2028 = !DILocation(line: 468, column: 21, scope: !2029)
!2029 = !DILexicalBlockFile(scope: !2030, file: !188, discriminator: 1)
!2030 = distinct !DILexicalBlock(scope: !2031, file: !188, line: 468, column: 21)
!2031 = distinct !DILexicalBlock(scope: !2017, file: !188, line: 468, column: 21)
!2032 = !DILocation(line: 468, column: 21, scope: !2033)
!2033 = !DILexicalBlockFile(scope: !2031, file: !188, discriminator: 1)
!2034 = !DILocation(line: 468, column: 21, scope: !2035)
!2035 = !DILexicalBlockFile(scope: !2030, file: !188, discriminator: 2)
!2036 = !DILocation(line: 468, column: 21, scope: !2037)
!2037 = !DILexicalBlockFile(scope: !2031, file: !188, discriminator: 3)
!2038 = !DILocation(line: 469, column: 21, scope: !2039)
!2039 = !DILexicalBlockFile(scope: !2040, file: !188, discriminator: 1)
!2040 = distinct !DILexicalBlock(scope: !2041, file: !188, line: 469, column: 21)
!2041 = distinct !DILexicalBlock(scope: !2017, file: !188, line: 469, column: 21)
!2042 = !DILocation(line: 469, column: 21, scope: !2043)
!2043 = !DILexicalBlockFile(scope: !2041, file: !188, discriminator: 1)
!2044 = !DILocation(line: 469, column: 21, scope: !2045)
!2045 = !DILexicalBlockFile(scope: !2040, file: !188, discriminator: 2)
!2046 = !DILocation(line: 469, column: 21, scope: !2047)
!2047 = !DILexicalBlockFile(scope: !2041, file: !188, discriminator: 3)
!2048 = !DILocation(line: 470, column: 21, scope: !2049)
!2049 = !DILexicalBlockFile(scope: !2050, file: !188, discriminator: 1)
!2050 = distinct !DILexicalBlock(scope: !2051, file: !188, line: 470, column: 21)
!2051 = distinct !DILexicalBlock(scope: !2017, file: !188, line: 470, column: 21)
!2052 = !DILocation(line: 470, column: 21, scope: !2053)
!2053 = !DILexicalBlockFile(scope: !2051, file: !188, discriminator: 1)
!2054 = !DILocation(line: 470, column: 21, scope: !2055)
!2055 = !DILexicalBlockFile(scope: !2050, file: !188, discriminator: 2)
!2056 = !DILocation(line: 470, column: 21, scope: !2057)
!2057 = !DILexicalBlockFile(scope: !2051, file: !188, discriminator: 3)
!2058 = !DILocation(line: 471, column: 21, scope: !2017)
!2059 = !DILocation(line: 395, column: 21, scope: !1756)
!2060 = !DILocation(line: 484, column: 31, scope: !1765)
!2061 = !DILocation(line: 485, column: 31, scope: !1765)
!2062 = !DILocation(line: 487, column: 31, scope: !1765)
!2063 = !DILocation(line: 488, column: 31, scope: !1765)
!2064 = !DILocation(line: 489, column: 31, scope: !1765)
!2065 = !DILocation(line: 492, column: 15, scope: !1765)
!2066 = !DILocation(line: 494, column: 19, scope: !2067)
!2067 = distinct !DILexicalBlock(scope: !2068, file: !188, line: 493, column: 13)
!2068 = distinct !DILexicalBlock(scope: !1765, file: !188, line: 492, column: 15)
!2069 = !DILocation(line: 501, column: 33, scope: !2070)
!2070 = distinct !DILexicalBlock(scope: !1765, file: !188, line: 501, column: 15)
!2071 = !DILocation(line: 506, column: 15, scope: !2072)
!2072 = distinct !DILexicalBlock(scope: !1765, file: !188, line: 505, column: 15)
!2073 = !DILocation(line: 510, column: 15, scope: !1765)
!2074 = !DILocation(line: 518, column: 26, scope: !2075)
!2075 = distinct !DILexicalBlock(scope: !1765, file: !188, line: 518, column: 15)
!2076 = !DILocation(line: 518, column: 15, scope: !1765)
!2077 = !DILocation(line: 518, column: 40, scope: !2078)
!2078 = !DILexicalBlockFile(scope: !2075, file: !188, discriminator: 1)
!2079 = !DILocation(line: 518, column: 47, scope: !2078)
!2080 = !DILocation(line: 522, column: 17, scope: !2081)
!2081 = distinct !DILexicalBlock(scope: !1765, file: !188, line: 522, column: 15)
!2082 = !DILocation(line: 518, column: 18, scope: !2078)
!2083 = !DILocation(line: 518, column: 65, scope: !2084)
!2084 = !DILexicalBlockFile(scope: !2075, file: !188, discriminator: 2)
!2085 = !DILocation(line: 518, column: 15, scope: !2086)
!2086 = !DILexicalBlockFile(scope: !1765, file: !188, discriminator: 2)
!2087 = !DILocation(line: 522, column: 15, scope: !1765)
!2088 = !DILocation(line: 526, column: 11, scope: !1765)
!2089 = !DILocation(line: 541, column: 15, scope: !2090)
!2090 = distinct !DILexicalBlock(scope: !1765, file: !188, line: 540, column: 15)
!2091 = !DILocation(line: 548, column: 15, scope: !1765)
!2092 = !DILocation(line: 550, column: 19, scope: !2093)
!2093 = distinct !DILexicalBlock(scope: !2094, file: !188, line: 549, column: 13)
!2094 = distinct !DILexicalBlock(scope: !1765, file: !188, line: 548, column: 15)
!2095 = !DILocation(line: 553, column: 19, scope: !2096)
!2096 = distinct !DILexicalBlock(scope: !2093, file: !188, line: 553, column: 19)
!2097 = !DILocation(line: 553, column: 35, scope: !2098)
!2098 = !DILexicalBlockFile(scope: !2096, file: !188, discriminator: 1)
!2099 = !DILocation(line: 553, column: 30, scope: !2096)
!2100 = !DILocation(line: 562, column: 15, scope: !2101)
!2101 = !DILexicalBlockFile(scope: !2102, file: !188, discriminator: 1)
!2102 = distinct !DILexicalBlock(scope: !2103, file: !188, line: 562, column: 15)
!2103 = distinct !DILexicalBlock(scope: !2093, file: !188, line: 562, column: 15)
!2104 = !DILocation(line: 562, column: 15, scope: !2105)
!2105 = !DILexicalBlockFile(scope: !2103, file: !188, discriminator: 1)
!2106 = !DILocation(line: 562, column: 15, scope: !2107)
!2107 = !DILexicalBlockFile(scope: !2102, file: !188, discriminator: 2)
!2108 = !DILocation(line: 562, column: 15, scope: !2109)
!2109 = !DILexicalBlockFile(scope: !2103, file: !188, discriminator: 3)
!2110 = !DILocation(line: 563, column: 15, scope: !2111)
!2111 = !DILexicalBlockFile(scope: !2112, file: !188, discriminator: 1)
!2112 = distinct !DILexicalBlock(scope: !2113, file: !188, line: 563, column: 15)
!2113 = distinct !DILexicalBlock(scope: !2093, file: !188, line: 563, column: 15)
!2114 = !DILocation(line: 563, column: 15, scope: !2115)
!2115 = !DILexicalBlockFile(scope: !2113, file: !188, discriminator: 1)
!2116 = !DILocation(line: 563, column: 15, scope: !2117)
!2117 = !DILexicalBlockFile(scope: !2112, file: !188, discriminator: 2)
!2118 = !DILocation(line: 563, column: 15, scope: !2119)
!2119 = !DILexicalBlockFile(scope: !2113, file: !188, discriminator: 3)
!2120 = !DILocation(line: 564, column: 15, scope: !2121)
!2121 = !DILexicalBlockFile(scope: !2122, file: !188, discriminator: 1)
!2122 = distinct !DILexicalBlock(scope: !2123, file: !188, line: 564, column: 15)
!2123 = distinct !DILexicalBlock(scope: !2093, file: !188, line: 564, column: 15)
!2124 = !DILocation(line: 564, column: 15, scope: !2125)
!2125 = !DILexicalBlockFile(scope: !2123, file: !188, discriminator: 1)
!2126 = !DILocation(line: 564, column: 15, scope: !2127)
!2127 = !DILexicalBlockFile(scope: !2122, file: !188, discriminator: 2)
!2128 = !DILocation(line: 564, column: 15, scope: !2129)
!2129 = !DILexicalBlockFile(scope: !2123, file: !188, discriminator: 3)
!2130 = !DILocation(line: 566, column: 13, scope: !2093)
!2131 = !DILocation(line: 606, column: 17, scope: !1764)
!2132 = !DILocation(line: 602, column: 20, scope: !1764)
!2133 = !DILocation(line: 609, column: 29, scope: !2134)
!2134 = distinct !DILexicalBlock(scope: !1769, file: !188, line: 607, column: 15)
!2135 = !{!1233, !1233, i64 0}
!2136 = !DILocation(line: 609, column: 27, scope: !2134)
!2137 = !DILocation(line: 604, column: 18, scope: !1764)
!2138 = !DILocation(line: 610, column: 15, scope: !2134)
!2139 = !DILocation(line: 613, column: 17, scope: !1768)
!2140 = !DILocation(line: 614, column: 17, scope: !1768)
!2141 = !DILocation(line: 618, column: 29, scope: !2142)
!2142 = distinct !DILexicalBlock(scope: !1768, file: !188, line: 618, column: 21)
!2143 = !DILocation(line: 618, column: 21, scope: !1768)
!2144 = distinct !{!2144, !2145, !2146}
!2145 = !DILocation(line: 621, column: 17, scope: !1768)
!2146 = !DILocation(line: 667, column: 44, scope: !1768)
!2147 = !DILocation(line: 619, column: 29, scope: !2142)
!2148 = !DILocation(line: 619, column: 19, scope: !2142)
!2149 = !DILocation(line: 623, column: 21, scope: !1783)
!2150 = !DILocation(line: 624, column: 56, scope: !1783)
!2151 = !DILocation(line: 624, column: 50, scope: !1783)
!2152 = !DILocation(line: 625, column: 53, scope: !1783)
!2153 = !DIExpression(DW_OP_deref)
!2154 = !DILocation(line: 613, column: 27, scope: !1768)
!2155 = !DILocation(line: 623, column: 29, scope: !1783)
!2156 = !DILocation(line: 624, column: 36, scope: !1783)
!2157 = !DILocation(line: 624, column: 28, scope: !1783)
!2158 = !DILocation(line: 626, column: 25, scope: !1783)
!2159 = !DILocation(line: 636, column: 38, scope: !2160)
!2160 = !DILexicalBlockFile(scope: !2161, file: !188, discriminator: 1)
!2161 = distinct !DILexicalBlock(scope: !1790, file: !188, line: 634, column: 23)
!2162 = !DILocation(line: 636, column: 48, scope: !2160)
!2163 = !DILocation(line: 636, column: 51, scope: !2164)
!2164 = !DILexicalBlockFile(scope: !2161, file: !188, discriminator: 2)
!2165 = !DILocation(line: 636, column: 48, scope: !2164)
!2166 = !DILocation(line: 636, column: 25, scope: !2167)
!2167 = !DILexicalBlockFile(scope: !2161, file: !188, discriminator: 3)
!2168 = !DILocation(line: 637, column: 28, scope: !2161)
!2169 = !DILocation(line: 636, column: 34, scope: !2160)
!2170 = distinct !{!2170, !2171, !2168}
!2171 = !DILocation(line: 636, column: 25, scope: !2161)
!2172 = !DILocation(line: 650, column: 43, scope: !2173)
!2173 = !DILexicalBlockFile(scope: !2174, file: !188, discriminator: 1)
!2174 = distinct !DILexicalBlock(scope: !2175, file: !188, line: 650, column: 29)
!2175 = distinct !DILexicalBlock(scope: !1787, file: !188, line: 650, column: 29)
!2176 = !DILocation(line: 647, column: 29, scope: !1788)
!2177 = !DILocation(line: 649, column: 36, scope: !1787)
!2178 = !DILocation(line: 651, column: 49, scope: !2174)
!2179 = !DILocation(line: 651, column: 39, scope: !2174)
!2180 = !DILocation(line: 651, column: 31, scope: !2174)
!2181 = !DILocation(line: 650, column: 53, scope: !2182)
!2182 = !DILexicalBlockFile(scope: !2174, file: !188, discriminator: 2)
!2183 = !DILocation(line: 650, column: 29, scope: !2184)
!2184 = !DILexicalBlockFile(scope: !2175, file: !188, discriminator: 1)
!2185 = distinct !{!2185, !2186, !2187}
!2186 = !DILocation(line: 650, column: 29, scope: !2175)
!2187 = !DILocation(line: 659, column: 33, scope: !2175)
!2188 = !DILocation(line: 666, column: 19, scope: !1768)
!2189 = !DILocation(line: 662, column: 41, scope: !2190)
!2190 = distinct !DILexicalBlock(scope: !1789, file: !188, line: 662, column: 29)
!2191 = !DILocation(line: 662, column: 31, scope: !2190)
!2192 = !DILocation(line: 662, column: 29, scope: !1789)
!2193 = !DILocation(line: 664, column: 27, scope: !1789)
!2194 = !DILocation(line: 667, column: 26, scope: !1768)
!2195 = !DILocation(line: 667, column: 24, scope: !1768)
!2196 = !DILocation(line: 666, column: 19, scope: !2197)
!2197 = !DILexicalBlockFile(scope: !1783, file: !188, discriminator: 3)
!2198 = !DILocation(line: 668, column: 15, scope: !1769)
!2199 = !DILocation(line: 670, column: 40, scope: !1764)
!2200 = !DILocation(line: 672, column: 19, scope: !1795)
!2201 = !DILocation(line: 672, column: 45, scope: !2202)
!2202 = !DILexicalBlockFile(scope: !1795, file: !188, discriminator: 1)
!2203 = !DILocation(line: 672, column: 23, scope: !1795)
!2204 = !DILocation(line: 676, column: 33, scope: !1794)
!2205 = !DILocation(line: 676, column: 24, scope: !1794)
!2206 = !DILocation(line: 678, column: 17, scope: !1794)
!2207 = !DILocation(line: 680, column: 43, scope: !2208)
!2208 = distinct !DILexicalBlock(scope: !2209, file: !188, line: 680, column: 25)
!2209 = distinct !DILexicalBlock(scope: !2210, file: !188, line: 679, column: 19)
!2210 = distinct !DILexicalBlock(scope: !2211, file: !188, line: 678, column: 17)
!2211 = distinct !DILexicalBlock(scope: !1794, file: !188, line: 678, column: 17)
!2212 = !DILocation(line: 682, column: 25, scope: !2213)
!2213 = !DILexicalBlockFile(scope: !2214, file: !188, discriminator: 1)
!2214 = distinct !DILexicalBlock(scope: !2215, file: !188, line: 682, column: 25)
!2215 = distinct !DILexicalBlock(scope: !2208, file: !188, line: 681, column: 23)
!2216 = !DILocation(line: 682, column: 25, scope: !2217)
!2217 = !DILexicalBlockFile(scope: !2218, file: !188, discriminator: 4)
!2218 = distinct !DILexicalBlock(scope: !2214, file: !188, line: 682, column: 25)
!2219 = !DILocation(line: 682, column: 25, scope: !2220)
!2220 = !DILexicalBlockFile(scope: !2218, file: !188, discriminator: 3)
!2221 = !DILocation(line: 682, column: 25, scope: !2222)
!2222 = !DILexicalBlockFile(scope: !2223, file: !188, discriminator: 6)
!2223 = distinct !DILexicalBlock(scope: !2224, file: !188, line: 682, column: 25)
!2224 = distinct !DILexicalBlock(scope: !2225, file: !188, line: 682, column: 25)
!2225 = distinct !DILexicalBlock(scope: !2218, file: !188, line: 682, column: 25)
!2226 = !DILocation(line: 682, column: 25, scope: !2227)
!2227 = !DILexicalBlockFile(scope: !2224, file: !188, discriminator: 6)
!2228 = !DILocation(line: 682, column: 25, scope: !2229)
!2229 = !DILexicalBlockFile(scope: !2223, file: !188, discriminator: 7)
!2230 = !DILocation(line: 682, column: 25, scope: !2231)
!2231 = !DILexicalBlockFile(scope: !2224, file: !188, discriminator: 8)
!2232 = !DILocation(line: 682, column: 25, scope: !2233)
!2233 = !DILexicalBlockFile(scope: !2234, file: !188, discriminator: 11)
!2234 = distinct !DILexicalBlock(scope: !2235, file: !188, line: 682, column: 25)
!2235 = distinct !DILexicalBlock(scope: !2225, file: !188, line: 682, column: 25)
!2236 = !DILocation(line: 682, column: 25, scope: !2237)
!2237 = !DILexicalBlockFile(scope: !2235, file: !188, discriminator: 11)
!2238 = !DILocation(line: 682, column: 25, scope: !2239)
!2239 = !DILexicalBlockFile(scope: !2234, file: !188, discriminator: 12)
!2240 = !DILocation(line: 682, column: 25, scope: !2241)
!2241 = !DILexicalBlockFile(scope: !2235, file: !188, discriminator: 13)
!2242 = !DILocation(line: 682, column: 25, scope: !2243)
!2243 = !DILexicalBlockFile(scope: !2244, file: !188, discriminator: 16)
!2244 = distinct !DILexicalBlock(scope: !2245, file: !188, line: 682, column: 25)
!2245 = distinct !DILexicalBlock(scope: !2225, file: !188, line: 682, column: 25)
!2246 = !DILocation(line: 682, column: 25, scope: !2247)
!2247 = !DILexicalBlockFile(scope: !2245, file: !188, discriminator: 16)
!2248 = !DILocation(line: 682, column: 25, scope: !2249)
!2249 = !DILexicalBlockFile(scope: !2244, file: !188, discriminator: 17)
!2250 = !DILocation(line: 682, column: 25, scope: !2251)
!2251 = !DILexicalBlockFile(scope: !2245, file: !188, discriminator: 18)
!2252 = !DILocation(line: 682, column: 25, scope: !2253)
!2253 = !DILexicalBlockFile(scope: !2225, file: !188, discriminator: 20)
!2254 = !DILocation(line: 682, column: 25, scope: !2255)
!2255 = !DILexicalBlockFile(scope: !2256, file: !188, discriminator: 22)
!2256 = distinct !DILexicalBlock(scope: !2257, file: !188, line: 682, column: 25)
!2257 = distinct !DILexicalBlock(scope: !2214, file: !188, line: 682, column: 25)
!2258 = !DILocation(line: 682, column: 25, scope: !2259)
!2259 = !DILexicalBlockFile(scope: !2257, file: !188, discriminator: 22)
!2260 = !DILocation(line: 682, column: 25, scope: !2261)
!2261 = !DILexicalBlockFile(scope: !2256, file: !188, discriminator: 23)
!2262 = !DILocation(line: 682, column: 25, scope: !2263)
!2263 = !DILexicalBlockFile(scope: !2257, file: !188, discriminator: 24)
!2264 = !DILocation(line: 683, column: 25, scope: !2265)
!2265 = !DILexicalBlockFile(scope: !2266, file: !188, discriminator: 1)
!2266 = distinct !DILexicalBlock(scope: !2267, file: !188, line: 683, column: 25)
!2267 = distinct !DILexicalBlock(scope: !2215, file: !188, line: 683, column: 25)
!2268 = !DILocation(line: 683, column: 25, scope: !2269)
!2269 = !DILexicalBlockFile(scope: !2267, file: !188, discriminator: 1)
!2270 = !DILocation(line: 683, column: 25, scope: !2271)
!2271 = !DILexicalBlockFile(scope: !2266, file: !188, discriminator: 2)
!2272 = !DILocation(line: 683, column: 25, scope: !2273)
!2273 = !DILexicalBlockFile(scope: !2267, file: !188, discriminator: 3)
!2274 = !DILocation(line: 684, column: 25, scope: !2275)
!2275 = !DILexicalBlockFile(scope: !2276, file: !188, discriminator: 1)
!2276 = distinct !DILexicalBlock(scope: !2277, file: !188, line: 684, column: 25)
!2277 = distinct !DILexicalBlock(scope: !2215, file: !188, line: 684, column: 25)
!2278 = !DILocation(line: 684, column: 25, scope: !2279)
!2279 = !DILexicalBlockFile(scope: !2277, file: !188, discriminator: 1)
!2280 = !DILocation(line: 684, column: 25, scope: !2281)
!2281 = !DILexicalBlockFile(scope: !2276, file: !188, discriminator: 2)
!2282 = !DILocation(line: 684, column: 25, scope: !2283)
!2283 = !DILexicalBlockFile(scope: !2277, file: !188, discriminator: 3)
!2284 = !DILocation(line: 685, column: 38, scope: !2215)
!2285 = !DILocation(line: 685, column: 33, scope: !2215)
!2286 = !DILocation(line: 686, column: 23, scope: !2215)
!2287 = !DILocation(line: 687, column: 30, scope: !2288)
!2288 = distinct !DILexicalBlock(scope: !2208, file: !188, line: 687, column: 30)
!2289 = !DILocation(line: 687, column: 30, scope: !2208)
!2290 = !DILocation(line: 689, column: 25, scope: !2291)
!2291 = !DILexicalBlockFile(scope: !2292, file: !188, discriminator: 1)
!2292 = distinct !DILexicalBlock(scope: !2293, file: !188, line: 689, column: 25)
!2293 = distinct !DILexicalBlock(scope: !2294, file: !188, line: 689, column: 25)
!2294 = distinct !DILexicalBlock(scope: !2288, file: !188, line: 688, column: 23)
!2295 = !DILocation(line: 689, column: 25, scope: !2296)
!2296 = !DILexicalBlockFile(scope: !2293, file: !188, discriminator: 1)
!2297 = !DILocation(line: 689, column: 25, scope: !2298)
!2298 = !DILexicalBlockFile(scope: !2292, file: !188, discriminator: 2)
!2299 = !DILocation(line: 689, column: 25, scope: !2300)
!2300 = !DILexicalBlockFile(scope: !2293, file: !188, discriminator: 3)
!2301 = !DILocation(line: 691, column: 23, scope: !2294)
!2302 = !DILocation(line: 692, column: 35, scope: !2303)
!2303 = distinct !DILexicalBlock(scope: !2209, file: !188, line: 692, column: 25)
!2304 = !DILocation(line: 692, column: 30, scope: !2303)
!2305 = !DILocation(line: 692, column: 25, scope: !2209)
!2306 = !DILocation(line: 694, column: 21, scope: !2307)
!2307 = !DILexicalBlockFile(scope: !2308, file: !188, discriminator: 1)
!2308 = distinct !DILexicalBlock(scope: !2309, file: !188, line: 694, column: 21)
!2309 = distinct !DILexicalBlock(scope: !2209, file: !188, line: 694, column: 21)
!2310 = !DILocation(line: 694, column: 21, scope: !2311)
!2311 = !DILexicalBlockFile(scope: !2308, file: !188, discriminator: 2)
!2312 = !DILocation(line: 694, column: 21, scope: !2313)
!2313 = !DILexicalBlockFile(scope: !2314, file: !188, discriminator: 4)
!2314 = distinct !DILexicalBlock(scope: !2315, file: !188, line: 694, column: 21)
!2315 = distinct !DILexicalBlock(scope: !2316, file: !188, line: 694, column: 21)
!2316 = distinct !DILexicalBlock(scope: !2308, file: !188, line: 694, column: 21)
!2317 = !DILocation(line: 694, column: 21, scope: !2318)
!2318 = !DILexicalBlockFile(scope: !2315, file: !188, discriminator: 4)
!2319 = !DILocation(line: 694, column: 21, scope: !2320)
!2320 = !DILexicalBlockFile(scope: !2314, file: !188, discriminator: 5)
!2321 = !DILocation(line: 694, column: 21, scope: !2322)
!2322 = !DILexicalBlockFile(scope: !2315, file: !188, discriminator: 6)
!2323 = !DILocation(line: 694, column: 21, scope: !2324)
!2324 = !DILexicalBlockFile(scope: !2325, file: !188, discriminator: 9)
!2325 = distinct !DILexicalBlock(scope: !2326, file: !188, line: 694, column: 21)
!2326 = distinct !DILexicalBlock(scope: !2316, file: !188, line: 694, column: 21)
!2327 = !DILocation(line: 694, column: 21, scope: !2328)
!2328 = !DILexicalBlockFile(scope: !2326, file: !188, discriminator: 9)
!2329 = !DILocation(line: 694, column: 21, scope: !2330)
!2330 = !DILexicalBlockFile(scope: !2325, file: !188, discriminator: 10)
!2331 = !DILocation(line: 694, column: 21, scope: !2332)
!2332 = !DILexicalBlockFile(scope: !2326, file: !188, discriminator: 11)
!2333 = !DILocation(line: 694, column: 21, scope: !2334)
!2334 = !DILexicalBlockFile(scope: !2316, file: !188, discriminator: 13)
!2335 = !DILocation(line: 695, column: 21, scope: !2336)
!2336 = !DILexicalBlockFile(scope: !2337, file: !188, discriminator: 1)
!2337 = distinct !DILexicalBlock(scope: !2338, file: !188, line: 695, column: 21)
!2338 = distinct !DILexicalBlock(scope: !2209, file: !188, line: 695, column: 21)
!2339 = !DILocation(line: 695, column: 21, scope: !2340)
!2340 = !DILexicalBlockFile(scope: !2338, file: !188, discriminator: 1)
!2341 = !DILocation(line: 695, column: 21, scope: !2342)
!2342 = !DILexicalBlockFile(scope: !2337, file: !188, discriminator: 2)
!2343 = !DILocation(line: 695, column: 21, scope: !2344)
!2344 = !DILexicalBlockFile(scope: !2338, file: !188, discriminator: 3)
!2345 = !DILocation(line: 696, column: 25, scope: !2209)
!2346 = !DILocation(line: 678, column: 17, scope: !2347)
!2347 = !DILexicalBlockFile(scope: !2210, file: !188, discriminator: 1)
!2348 = distinct !{!2348, !2349, !2350}
!2349 = !DILocation(line: 678, column: 17, scope: !2211)
!2350 = !DILocation(line: 697, column: 19, scope: !2211)
!2351 = !DILocation(line: 704, column: 34, scope: !2352)
!2352 = distinct !DILexicalBlock(scope: !1756, file: !188, line: 704, column: 11)
!2353 = !DILocation(line: 706, column: 14, scope: !2352)
!2354 = !DILocation(line: 707, column: 14, scope: !2352)
!2355 = !DILocation(line: 707, column: 35, scope: !2356)
!2356 = !DILexicalBlockFile(scope: !2352, file: !188, discriminator: 1)
!2357 = !DILocation(line: 707, column: 17, scope: !2356)
!2358 = !DILocation(line: 707, column: 53, scope: !2356)
!2359 = !DILocation(line: 707, column: 47, scope: !2356)
!2360 = !DILocation(line: 707, column: 65, scope: !2356)
!2361 = !DILocation(line: 708, column: 15, scope: !2356)
!2362 = !DILocation(line: 708, column: 11, scope: !2352)
!2363 = !DILocation(line: 704, column: 11, scope: !2364)
!2364 = !DILexicalBlockFile(scope: !1756, file: !188, discriminator: 2)
!2365 = !DILocation(line: 712, column: 7, scope: !2366)
!2366 = !DILexicalBlockFile(scope: !2367, file: !188, discriminator: 1)
!2367 = distinct !DILexicalBlock(scope: !1756, file: !188, line: 712, column: 7)
!2368 = !DILocation(line: 712, column: 7, scope: !2369)
!2369 = !DILexicalBlockFile(scope: !2370, file: !188, discriminator: 4)
!2370 = distinct !DILexicalBlock(scope: !2367, file: !188, line: 712, column: 7)
!2371 = !DILocation(line: 712, column: 7, scope: !2372)
!2372 = !DILexicalBlockFile(scope: !2370, file: !188, discriminator: 3)
!2373 = !DILocation(line: 712, column: 7, scope: !2374)
!2374 = !DILexicalBlockFile(scope: !2375, file: !188, discriminator: 6)
!2375 = distinct !DILexicalBlock(scope: !2376, file: !188, line: 712, column: 7)
!2376 = distinct !DILexicalBlock(scope: !2377, file: !188, line: 712, column: 7)
!2377 = distinct !DILexicalBlock(scope: !2370, file: !188, line: 712, column: 7)
!2378 = !DILocation(line: 712, column: 7, scope: !2379)
!2379 = !DILexicalBlockFile(scope: !2376, file: !188, discriminator: 6)
!2380 = !DILocation(line: 712, column: 7, scope: !2381)
!2381 = !DILexicalBlockFile(scope: !2375, file: !188, discriminator: 7)
!2382 = !DILocation(line: 712, column: 7, scope: !2383)
!2383 = !DILexicalBlockFile(scope: !2376, file: !188, discriminator: 8)
!2384 = !DILocation(line: 712, column: 7, scope: !2385)
!2385 = !DILexicalBlockFile(scope: !2386, file: !188, discriminator: 11)
!2386 = distinct !DILexicalBlock(scope: !2387, file: !188, line: 712, column: 7)
!2387 = distinct !DILexicalBlock(scope: !2377, file: !188, line: 712, column: 7)
!2388 = !DILocation(line: 712, column: 7, scope: !2389)
!2389 = !DILexicalBlockFile(scope: !2387, file: !188, discriminator: 11)
!2390 = !DILocation(line: 712, column: 7, scope: !2391)
!2391 = !DILexicalBlockFile(scope: !2386, file: !188, discriminator: 12)
!2392 = !DILocation(line: 712, column: 7, scope: !2393)
!2393 = !DILexicalBlockFile(scope: !2387, file: !188, discriminator: 13)
!2394 = !DILocation(line: 712, column: 7, scope: !2395)
!2395 = !DILexicalBlockFile(scope: !2396, file: !188, discriminator: 16)
!2396 = distinct !DILexicalBlock(scope: !2397, file: !188, line: 712, column: 7)
!2397 = distinct !DILexicalBlock(scope: !2377, file: !188, line: 712, column: 7)
!2398 = !DILocation(line: 712, column: 7, scope: !2399)
!2399 = !DILexicalBlockFile(scope: !2397, file: !188, discriminator: 16)
!2400 = !DILocation(line: 712, column: 7, scope: !2401)
!2401 = !DILexicalBlockFile(scope: !2396, file: !188, discriminator: 17)
!2402 = !DILocation(line: 712, column: 7, scope: !2403)
!2403 = !DILexicalBlockFile(scope: !2397, file: !188, discriminator: 18)
!2404 = !DILocation(line: 712, column: 7, scope: !2405)
!2405 = !DILexicalBlockFile(scope: !2377, file: !188, discriminator: 20)
!2406 = !DILocation(line: 712, column: 7, scope: !2407)
!2407 = !DILexicalBlockFile(scope: !2408, file: !188, discriminator: 22)
!2408 = distinct !DILexicalBlock(scope: !2409, file: !188, line: 712, column: 7)
!2409 = distinct !DILexicalBlock(scope: !2367, file: !188, line: 712, column: 7)
!2410 = !DILocation(line: 712, column: 7, scope: !2411)
!2411 = !DILexicalBlockFile(scope: !2409, file: !188, discriminator: 22)
!2412 = !DILocation(line: 712, column: 7, scope: !2413)
!2413 = !DILexicalBlockFile(scope: !2408, file: !188, discriminator: 23)
!2414 = !DILocation(line: 712, column: 7, scope: !2415)
!2415 = !DILexicalBlockFile(scope: !2409, file: !188, discriminator: 24)
!2416 = !DILocation(line: 715, column: 7, scope: !2417)
!2417 = !DILexicalBlockFile(scope: !2418, file: !188, discriminator: 1)
!2418 = distinct !DILexicalBlock(scope: !2419, file: !188, line: 715, column: 7)
!2419 = distinct !DILexicalBlock(scope: !1756, file: !188, line: 715, column: 7)
!2420 = !DILocation(line: 715, column: 7, scope: !2421)
!2421 = !DILexicalBlockFile(scope: !2418, file: !188, discriminator: 2)
!2422 = !DILocation(line: 715, column: 7, scope: !2423)
!2423 = !DILexicalBlockFile(scope: !2424, file: !188, discriminator: 4)
!2424 = distinct !DILexicalBlock(scope: !2425, file: !188, line: 715, column: 7)
!2425 = distinct !DILexicalBlock(scope: !2426, file: !188, line: 715, column: 7)
!2426 = distinct !DILexicalBlock(scope: !2418, file: !188, line: 715, column: 7)
!2427 = !DILocation(line: 715, column: 7, scope: !2428)
!2428 = !DILexicalBlockFile(scope: !2425, file: !188, discriminator: 4)
!2429 = !DILocation(line: 715, column: 7, scope: !2430)
!2430 = !DILexicalBlockFile(scope: !2424, file: !188, discriminator: 5)
!2431 = !DILocation(line: 715, column: 7, scope: !2432)
!2432 = !DILexicalBlockFile(scope: !2425, file: !188, discriminator: 6)
!2433 = !DILocation(line: 715, column: 7, scope: !2434)
!2434 = !DILexicalBlockFile(scope: !2435, file: !188, discriminator: 9)
!2435 = distinct !DILexicalBlock(scope: !2436, file: !188, line: 715, column: 7)
!2436 = distinct !DILexicalBlock(scope: !2426, file: !188, line: 715, column: 7)
!2437 = !DILocation(line: 715, column: 7, scope: !2438)
!2438 = !DILexicalBlockFile(scope: !2436, file: !188, discriminator: 9)
!2439 = !DILocation(line: 715, column: 7, scope: !2440)
!2440 = !DILexicalBlockFile(scope: !2435, file: !188, discriminator: 10)
!2441 = !DILocation(line: 715, column: 7, scope: !2442)
!2442 = !DILexicalBlockFile(scope: !2436, file: !188, discriminator: 11)
!2443 = !DILocation(line: 715, column: 7, scope: !2444)
!2444 = !DILexicalBlockFile(scope: !2426, file: !188, discriminator: 13)
!2445 = !DILocation(line: 716, column: 7, scope: !2446)
!2446 = !DILexicalBlockFile(scope: !2447, file: !188, discriminator: 1)
!2447 = distinct !DILexicalBlock(scope: !2448, file: !188, line: 716, column: 7)
!2448 = distinct !DILexicalBlock(scope: !1756, file: !188, line: 716, column: 7)
!2449 = !DILocation(line: 716, column: 7, scope: !2450)
!2450 = !DILexicalBlockFile(scope: !2448, file: !188, discriminator: 1)
!2451 = !DILocation(line: 716, column: 7, scope: !2452)
!2452 = !DILexicalBlockFile(scope: !2447, file: !188, discriminator: 2)
!2453 = !DILocation(line: 716, column: 7, scope: !2454)
!2454 = !DILexicalBlockFile(scope: !2448, file: !188, discriminator: 3)
!2455 = !DILocation(line: 718, column: 13, scope: !2456)
!2456 = distinct !DILexicalBlock(scope: !1756, file: !188, line: 718, column: 11)
!2457 = !DILocation(line: 718, column: 11, scope: !1756)
!2458 = !DILocation(line: 720, column: 5, scope: !1757)
!2459 = !DILocation(line: 392, column: 75, scope: !2460)
!2460 = !DILexicalBlockFile(scope: !1757, file: !188, discriminator: 5)
!2461 = !DILocation(line: 392, column: 3, scope: !2460)
!2462 = distinct !{!2462, !2463, !2464}
!2463 = !DILocation(line: 392, column: 3, scope: !1758)
!2464 = !DILocation(line: 720, column: 5, scope: !1758)
!2465 = !DILocation(line: 722, column: 11, scope: !2466)
!2466 = distinct !DILexicalBlock(scope: !1729, file: !188, line: 722, column: 7)
!2467 = !DILocation(line: 722, column: 16, scope: !2466)
!2468 = !DILocation(line: 730, column: 51, scope: !2469)
!2469 = distinct !DILexicalBlock(scope: !1729, file: !188, line: 730, column: 7)
!2470 = !DILocation(line: 731, column: 10, scope: !2471)
!2471 = !DILexicalBlockFile(scope: !2469, file: !188, discriminator: 1)
!2472 = !DILocation(line: 733, column: 11, scope: !2473)
!2473 = distinct !DILexicalBlock(scope: !2474, file: !188, line: 733, column: 11)
!2474 = distinct !DILexicalBlock(scope: !2469, file: !188, line: 732, column: 5)
!2475 = !DILocation(line: 733, column: 11, scope: !2474)
!2476 = !DILocation(line: 734, column: 16, scope: !2473)
!2477 = !DILocation(line: 734, column: 9, scope: !2473)
!2478 = !DILocation(line: 738, column: 18, scope: !2479)
!2479 = distinct !DILexicalBlock(scope: !2473, file: !188, line: 738, column: 16)
!2480 = !DILocation(line: 738, column: 32, scope: !2481)
!2481 = !DILexicalBlockFile(scope: !2479, file: !188, discriminator: 1)
!2482 = !DILocation(line: 738, column: 29, scope: !2479)
!2483 = !DILocation(line: 747, column: 7, scope: !2484)
!2484 = distinct !DILexicalBlock(scope: !1729, file: !188, line: 747, column: 7)
!2485 = !DILocation(line: 747, column: 20, scope: !2484)
!2486 = !DILocation(line: 748, column: 12, scope: !2487)
!2487 = !DILexicalBlockFile(scope: !2488, file: !188, discriminator: 1)
!2488 = distinct !DILexicalBlock(scope: !2489, file: !188, line: 748, column: 5)
!2489 = distinct !DILexicalBlock(scope: !2484, file: !188, line: 748, column: 5)
!2490 = !DILocation(line: 748, column: 5, scope: !2491)
!2491 = !DILexicalBlockFile(scope: !2489, file: !188, discriminator: 1)
!2492 = !DILocation(line: 749, column: 7, scope: !2493)
!2493 = !DILexicalBlockFile(scope: !2494, file: !188, discriminator: 1)
!2494 = distinct !DILexicalBlock(scope: !2495, file: !188, line: 749, column: 7)
!2495 = distinct !DILexicalBlock(scope: !2488, file: !188, line: 749, column: 7)
!2496 = !DILocation(line: 749, column: 7, scope: !2497)
!2497 = !DILexicalBlockFile(scope: !2495, file: !188, discriminator: 1)
!2498 = !DILocation(line: 749, column: 7, scope: !2499)
!2499 = !DILexicalBlockFile(scope: !2494, file: !188, discriminator: 2)
!2500 = !DILocation(line: 749, column: 7, scope: !2501)
!2501 = !DILexicalBlockFile(scope: !2495, file: !188, discriminator: 3)
!2502 = !DILocation(line: 748, column: 39, scope: !2503)
!2503 = !DILexicalBlockFile(scope: !2488, file: !188, discriminator: 2)
!2504 = distinct !{!2504, !2505, !2506}
!2505 = !DILocation(line: 748, column: 5, scope: !2489)
!2506 = !DILocation(line: 749, column: 7, scope: !2489)
!2507 = !DILocation(line: 751, column: 11, scope: !2508)
!2508 = distinct !DILexicalBlock(scope: !1729, file: !188, line: 751, column: 7)
!2509 = !DILocation(line: 751, column: 7, scope: !1729)
!2510 = !DILocation(line: 752, column: 5, scope: !2508)
!2511 = !DILocation(line: 752, column: 17, scope: !2508)
!2512 = !DILocation(line: 758, column: 21, scope: !2513)
!2513 = distinct !DILexicalBlock(scope: !1729, file: !188, line: 758, column: 7)
!2514 = !DILocation(line: 758, column: 54, scope: !2515)
!2515 = !DILexicalBlockFile(scope: !2513, file: !188, discriminator: 1)
!2516 = !DILocation(line: 758, column: 51, scope: !2513)
!2517 = !DILocation(line: 762, column: 42, scope: !1729)
!2518 = !DILocation(line: 760, column: 10, scope: !1729)
!2519 = !DILocation(line: 760, column: 3, scope: !1729)
!2520 = !DILocation(line: 764, column: 1, scope: !1729)
!2521 = distinct !DISubprogram(name: "gettext_quote", scope: !188, file: !188, line: 199, type: !2522, isLocal: true, isDefinition: true, scopeLine: 200, flags: DIFlagPrototyped, isOptimized: true, unit: !160, variables: !2524)
!2522 = !DISubroutineType(types: !2523)
!2523 = !{!36, !36, !21}
!2524 = !{!2525, !2526, !2527, !2528}
!2525 = !DILocalVariable(name: "msgid", arg: 1, scope: !2521, file: !188, line: 199, type: !36)
!2526 = !DILocalVariable(name: "s", arg: 2, scope: !2521, file: !188, line: 199, type: !21)
!2527 = !DILocalVariable(name: "translation", scope: !2521, file: !188, line: 201, type: !36)
!2528 = !DILocalVariable(name: "locale_code", scope: !2521, file: !188, line: 202, type: !36)
!2529 = !DILocation(line: 199, column: 28, scope: !2521)
!2530 = !DILocation(line: 199, column: 54, scope: !2521)
!2531 = !DILocation(line: 201, column: 29, scope: !2521)
!2532 = !DILocation(line: 201, column: 15, scope: !2521)
!2533 = !DILocation(line: 204, column: 19, scope: !2534)
!2534 = distinct !DILexicalBlock(scope: !2521, file: !188, line: 204, column: 7)
!2535 = !DILocation(line: 204, column: 7, scope: !2521)
!2536 = !DILocation(line: 225, column: 17, scope: !2521)
!2537 = !DILocation(line: 202, column: 15, scope: !2521)
!2538 = !DILocalVariable(name: "s2", arg: 2, scope: !2539, file: !2540, line: 160, type: !36)
!2539 = distinct !DISubprogram(name: "strcaseeq0", scope: !2540, file: !2540, line: 160, type: !2541, isLocal: true, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !160, variables: !2543)
!2540 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2541 = !DISubroutineType(types: !2542)
!2542 = !{!46, !36, !36, !38, !38, !38, !38, !38, !38, !38, !38, !38}
!2543 = !{!2544, !2538, !2545, !2546, !2547, !2548, !2549, !2550, !2551, !2552, !2553}
!2544 = !DILocalVariable(name: "s1", arg: 1, scope: !2539, file: !2540, line: 160, type: !36)
!2545 = !DILocalVariable(name: "s20", arg: 3, scope: !2539, file: !2540, line: 160, type: !38)
!2546 = !DILocalVariable(name: "s21", arg: 4, scope: !2539, file: !2540, line: 160, type: !38)
!2547 = !DILocalVariable(name: "s22", arg: 5, scope: !2539, file: !2540, line: 160, type: !38)
!2548 = !DILocalVariable(name: "s23", arg: 6, scope: !2539, file: !2540, line: 160, type: !38)
!2549 = !DILocalVariable(name: "s24", arg: 7, scope: !2539, file: !2540, line: 160, type: !38)
!2550 = !DILocalVariable(name: "s25", arg: 8, scope: !2539, file: !2540, line: 160, type: !38)
!2551 = !DILocalVariable(name: "s26", arg: 9, scope: !2539, file: !2540, line: 160, type: !38)
!2552 = !DILocalVariable(name: "s27", arg: 10, scope: !2539, file: !2540, line: 160, type: !38)
!2553 = !DILocalVariable(name: "s28", arg: 11, scope: !2539, file: !2540, line: 160, type: !38)
!2554 = !DILocation(line: 160, column: 41, scope: !2539, inlinedAt: !2555)
!2555 = distinct !DILocation(line: 226, column: 7, scope: !2556)
!2556 = distinct !DILexicalBlock(scope: !2521, file: !188, line: 226, column: 7)
!2557 = !DILocation(line: 160, column: 120, scope: !2539, inlinedAt: !2555)
!2558 = !DILocation(line: 160, column: 130, scope: !2539, inlinedAt: !2555)
!2559 = !DILocation(line: 162, column: 7, scope: !2560, inlinedAt: !2555)
!2560 = !DILexicalBlockFile(scope: !2561, file: !2540, discriminator: 1)
!2561 = distinct !DILexicalBlock(scope: !2539, file: !2540, line: 162, column: 7)
!2562 = !DILocalVariable(name: "s2", arg: 2, scope: !2563, file: !2540, line: 146, type: !36)
!2563 = distinct !DISubprogram(name: "strcaseeq1", scope: !2540, file: !2540, line: 146, type: !2564, isLocal: true, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: true, unit: !160, variables: !2566)
!2564 = !DISubroutineType(types: !2565)
!2565 = !{!46, !36, !36, !38, !38, !38, !38, !38, !38, !38, !38}
!2566 = !{!2567, !2562, !2568, !2569, !2570, !2571, !2572, !2573, !2574, !2575}
!2567 = !DILocalVariable(name: "s1", arg: 1, scope: !2563, file: !2540, line: 146, type: !36)
!2568 = !DILocalVariable(name: "s21", arg: 3, scope: !2563, file: !2540, line: 146, type: !38)
!2569 = !DILocalVariable(name: "s22", arg: 4, scope: !2563, file: !2540, line: 146, type: !38)
!2570 = !DILocalVariable(name: "s23", arg: 5, scope: !2563, file: !2540, line: 146, type: !38)
!2571 = !DILocalVariable(name: "s24", arg: 6, scope: !2563, file: !2540, line: 146, type: !38)
!2572 = !DILocalVariable(name: "s25", arg: 7, scope: !2563, file: !2540, line: 146, type: !38)
!2573 = !DILocalVariable(name: "s26", arg: 8, scope: !2563, file: !2540, line: 146, type: !38)
!2574 = !DILocalVariable(name: "s27", arg: 9, scope: !2563, file: !2540, line: 146, type: !38)
!2575 = !DILocalVariable(name: "s28", arg: 10, scope: !2563, file: !2540, line: 146, type: !38)
!2576 = !DILocation(line: 146, column: 41, scope: !2563, inlinedAt: !2577)
!2577 = distinct !DILocation(line: 167, column: 16, scope: !2578, inlinedAt: !2555)
!2578 = distinct !DILexicalBlock(scope: !2579, file: !2540, line: 164, column: 11)
!2579 = distinct !DILexicalBlock(scope: !2561, file: !2540, line: 163, column: 5)
!2580 = !DILocation(line: 146, column: 110, scope: !2563, inlinedAt: !2577)
!2581 = !DILocation(line: 146, column: 120, scope: !2563, inlinedAt: !2577)
!2582 = !DILocation(line: 148, column: 7, scope: !2583, inlinedAt: !2577)
!2583 = !DILexicalBlockFile(scope: !2584, file: !2540, discriminator: 1)
!2584 = distinct !DILexicalBlock(scope: !2563, file: !2540, line: 148, column: 7)
!2585 = !DILocalVariable(name: "s2", arg: 2, scope: !2586, file: !2540, line: 132, type: !36)
!2586 = distinct !DISubprogram(name: "strcaseeq2", scope: !2540, file: !2540, line: 132, type: !2587, isLocal: true, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !160, variables: !2589)
!2587 = !DISubroutineType(types: !2588)
!2588 = !{!46, !36, !36, !38, !38, !38, !38, !38, !38, !38}
!2589 = !{!2590, !2585, !2591, !2592, !2593, !2594, !2595, !2596, !2597}
!2590 = !DILocalVariable(name: "s1", arg: 1, scope: !2586, file: !2540, line: 132, type: !36)
!2591 = !DILocalVariable(name: "s22", arg: 3, scope: !2586, file: !2540, line: 132, type: !38)
!2592 = !DILocalVariable(name: "s23", arg: 4, scope: !2586, file: !2540, line: 132, type: !38)
!2593 = !DILocalVariable(name: "s24", arg: 5, scope: !2586, file: !2540, line: 132, type: !38)
!2594 = !DILocalVariable(name: "s25", arg: 6, scope: !2586, file: !2540, line: 132, type: !38)
!2595 = !DILocalVariable(name: "s26", arg: 7, scope: !2586, file: !2540, line: 132, type: !38)
!2596 = !DILocalVariable(name: "s27", arg: 8, scope: !2586, file: !2540, line: 132, type: !38)
!2597 = !DILocalVariable(name: "s28", arg: 9, scope: !2586, file: !2540, line: 132, type: !38)
!2598 = !DILocation(line: 132, column: 41, scope: !2586, inlinedAt: !2599)
!2599 = distinct !DILocation(line: 153, column: 16, scope: !2600, inlinedAt: !2577)
!2600 = distinct !DILexicalBlock(scope: !2601, file: !2540, line: 150, column: 11)
!2601 = distinct !DILexicalBlock(scope: !2584, file: !2540, line: 149, column: 5)
!2602 = !DILocation(line: 132, column: 100, scope: !2586, inlinedAt: !2599)
!2603 = !DILocation(line: 132, column: 110, scope: !2586, inlinedAt: !2599)
!2604 = !DILocation(line: 134, column: 7, scope: !2605, inlinedAt: !2599)
!2605 = !DILexicalBlockFile(scope: !2606, file: !2540, discriminator: 1)
!2606 = distinct !DILexicalBlock(scope: !2586, file: !2540, line: 134, column: 7)
!2607 = !DILocalVariable(name: "s2", arg: 2, scope: !2608, file: !2540, line: 118, type: !36)
!2608 = distinct !DISubprogram(name: "strcaseeq3", scope: !2540, file: !2540, line: 118, type: !2609, isLocal: true, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !160, variables: !2611)
!2609 = !DISubroutineType(types: !2610)
!2610 = !{!46, !36, !36, !38, !38, !38, !38, !38, !38}
!2611 = !{!2612, !2607, !2613, !2614, !2615, !2616, !2617, !2618}
!2612 = !DILocalVariable(name: "s1", arg: 1, scope: !2608, file: !2540, line: 118, type: !36)
!2613 = !DILocalVariable(name: "s23", arg: 3, scope: !2608, file: !2540, line: 118, type: !38)
!2614 = !DILocalVariable(name: "s24", arg: 4, scope: !2608, file: !2540, line: 118, type: !38)
!2615 = !DILocalVariable(name: "s25", arg: 5, scope: !2608, file: !2540, line: 118, type: !38)
!2616 = !DILocalVariable(name: "s26", arg: 6, scope: !2608, file: !2540, line: 118, type: !38)
!2617 = !DILocalVariable(name: "s27", arg: 7, scope: !2608, file: !2540, line: 118, type: !38)
!2618 = !DILocalVariable(name: "s28", arg: 8, scope: !2608, file: !2540, line: 118, type: !38)
!2619 = !DILocation(line: 118, column: 41, scope: !2608, inlinedAt: !2620)
!2620 = distinct !DILocation(line: 139, column: 16, scope: !2621, inlinedAt: !2599)
!2621 = distinct !DILexicalBlock(scope: !2622, file: !2540, line: 136, column: 11)
!2622 = distinct !DILexicalBlock(scope: !2606, file: !2540, line: 135, column: 5)
!2623 = !DILocation(line: 118, column: 90, scope: !2608, inlinedAt: !2620)
!2624 = !DILocation(line: 118, column: 100, scope: !2608, inlinedAt: !2620)
!2625 = !DILocation(line: 120, column: 7, scope: !2626, inlinedAt: !2620)
!2626 = !DILexicalBlockFile(scope: !2627, file: !2540, discriminator: 2)
!2627 = distinct !DILexicalBlock(scope: !2608, file: !2540, line: 120, column: 7)
!2628 = !DILocation(line: 120, column: 7, scope: !2629, inlinedAt: !2620)
!2629 = !DILexicalBlockFile(scope: !2608, file: !2540, discriminator: 2)
!2630 = !DILocalVariable(name: "s2", arg: 2, scope: !2631, file: !2540, line: 104, type: !36)
!2631 = distinct !DISubprogram(name: "strcaseeq4", scope: !2540, file: !2540, line: 104, type: !2632, isLocal: true, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, unit: !160, variables: !2634)
!2632 = !DISubroutineType(types: !2633)
!2633 = !{!46, !36, !36, !38, !38, !38, !38, !38}
!2634 = !{!2635, !2630, !2636, !2637, !2638, !2639, !2640}
!2635 = !DILocalVariable(name: "s1", arg: 1, scope: !2631, file: !2540, line: 104, type: !36)
!2636 = !DILocalVariable(name: "s24", arg: 3, scope: !2631, file: !2540, line: 104, type: !38)
!2637 = !DILocalVariable(name: "s25", arg: 4, scope: !2631, file: !2540, line: 104, type: !38)
!2638 = !DILocalVariable(name: "s26", arg: 5, scope: !2631, file: !2540, line: 104, type: !38)
!2639 = !DILocalVariable(name: "s27", arg: 6, scope: !2631, file: !2540, line: 104, type: !38)
!2640 = !DILocalVariable(name: "s28", arg: 7, scope: !2631, file: !2540, line: 104, type: !38)
!2641 = !DILocation(line: 104, column: 41, scope: !2631, inlinedAt: !2642)
!2642 = distinct !DILocation(line: 125, column: 16, scope: !2643, inlinedAt: !2620)
!2643 = distinct !DILexicalBlock(scope: !2644, file: !2540, line: 122, column: 11)
!2644 = distinct !DILexicalBlock(scope: !2627, file: !2540, line: 121, column: 5)
!2645 = !DILocation(line: 104, column: 80, scope: !2631, inlinedAt: !2642)
!2646 = !DILocation(line: 104, column: 90, scope: !2631, inlinedAt: !2642)
!2647 = !DILocation(line: 106, column: 7, scope: !2648, inlinedAt: !2642)
!2648 = !DILexicalBlockFile(scope: !2649, file: !2540, discriminator: 2)
!2649 = distinct !DILexicalBlock(scope: !2631, file: !2540, line: 106, column: 7)
!2650 = !DILocation(line: 106, column: 7, scope: !2651, inlinedAt: !2642)
!2651 = !DILexicalBlockFile(scope: !2631, file: !2540, discriminator: 2)
!2652 = !DILocalVariable(name: "s2", arg: 2, scope: !2653, file: !2540, line: 90, type: !36)
!2653 = distinct !DISubprogram(name: "strcaseeq5", scope: !2540, file: !2540, line: 90, type: !2654, isLocal: true, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: true, unit: !160, variables: !2656)
!2654 = !DISubroutineType(types: !2655)
!2655 = !{!46, !36, !36, !38, !38, !38, !38}
!2656 = !{!2657, !2652, !2658, !2659, !2660, !2661}
!2657 = !DILocalVariable(name: "s1", arg: 1, scope: !2653, file: !2540, line: 90, type: !36)
!2658 = !DILocalVariable(name: "s25", arg: 3, scope: !2653, file: !2540, line: 90, type: !38)
!2659 = !DILocalVariable(name: "s26", arg: 4, scope: !2653, file: !2540, line: 90, type: !38)
!2660 = !DILocalVariable(name: "s27", arg: 5, scope: !2653, file: !2540, line: 90, type: !38)
!2661 = !DILocalVariable(name: "s28", arg: 6, scope: !2653, file: !2540, line: 90, type: !38)
!2662 = !DILocation(line: 90, column: 41, scope: !2653, inlinedAt: !2663)
!2663 = distinct !DILocation(line: 111, column: 16, scope: !2664, inlinedAt: !2642)
!2664 = distinct !DILexicalBlock(scope: !2665, file: !2540, line: 108, column: 11)
!2665 = distinct !DILexicalBlock(scope: !2649, file: !2540, line: 107, column: 5)
!2666 = !DILocation(line: 90, column: 70, scope: !2653, inlinedAt: !2663)
!2667 = !DILocation(line: 90, column: 80, scope: !2653, inlinedAt: !2663)
!2668 = !DILocation(line: 92, column: 7, scope: !2669, inlinedAt: !2663)
!2669 = !DILexicalBlockFile(scope: !2670, file: !2540, discriminator: 2)
!2670 = distinct !DILexicalBlock(scope: !2653, file: !2540, line: 92, column: 7)
!2671 = !DILocation(line: 92, column: 7, scope: !2672, inlinedAt: !2663)
!2672 = !DILexicalBlockFile(scope: !2653, file: !2540, discriminator: 2)
!2673 = !DILocation(line: 227, column: 12, scope: !2556)
!2674 = !DILocation(line: 227, column: 21, scope: !2556)
!2675 = !DILocation(line: 227, column: 5, scope: !2556)
!2676 = !DILocation(line: 146, column: 41, scope: !2563, inlinedAt: !2677)
!2677 = distinct !DILocation(line: 167, column: 16, scope: !2578, inlinedAt: !2678)
!2678 = distinct !DILocation(line: 228, column: 7, scope: !2679)
!2679 = distinct !DILexicalBlock(scope: !2521, file: !188, line: 228, column: 7)
!2680 = !DILocation(line: 146, column: 110, scope: !2563, inlinedAt: !2677)
!2681 = !DILocation(line: 146, column: 120, scope: !2563, inlinedAt: !2677)
!2682 = !DILocation(line: 148, column: 7, scope: !2583, inlinedAt: !2677)
!2683 = !DILocation(line: 132, column: 41, scope: !2586, inlinedAt: !2684)
!2684 = distinct !DILocation(line: 153, column: 16, scope: !2600, inlinedAt: !2677)
!2685 = !DILocation(line: 132, column: 100, scope: !2586, inlinedAt: !2684)
!2686 = !DILocation(line: 132, column: 110, scope: !2586, inlinedAt: !2684)
!2687 = !DILocation(line: 134, column: 7, scope: !2688, inlinedAt: !2684)
!2688 = !DILexicalBlockFile(scope: !2606, file: !2540, discriminator: 2)
!2689 = !DILocation(line: 134, column: 7, scope: !2690, inlinedAt: !2684)
!2690 = !DILexicalBlockFile(scope: !2586, file: !2540, discriminator: 2)
!2691 = !DILocation(line: 118, column: 41, scope: !2608, inlinedAt: !2692)
!2692 = distinct !DILocation(line: 139, column: 16, scope: !2621, inlinedAt: !2684)
!2693 = !DILocation(line: 118, column: 90, scope: !2608, inlinedAt: !2692)
!2694 = !DILocation(line: 118, column: 100, scope: !2608, inlinedAt: !2692)
!2695 = !DILocation(line: 120, column: 7, scope: !2626, inlinedAt: !2692)
!2696 = !DILocation(line: 120, column: 7, scope: !2629, inlinedAt: !2692)
!2697 = !DILocation(line: 104, column: 41, scope: !2631, inlinedAt: !2698)
!2698 = distinct !DILocation(line: 125, column: 16, scope: !2643, inlinedAt: !2692)
!2699 = !DILocation(line: 104, column: 80, scope: !2631, inlinedAt: !2698)
!2700 = !DILocation(line: 104, column: 90, scope: !2631, inlinedAt: !2698)
!2701 = !DILocation(line: 106, column: 7, scope: !2648, inlinedAt: !2698)
!2702 = !DILocation(line: 106, column: 7, scope: !2651, inlinedAt: !2698)
!2703 = !DILocation(line: 90, column: 41, scope: !2653, inlinedAt: !2704)
!2704 = distinct !DILocation(line: 111, column: 16, scope: !2664, inlinedAt: !2698)
!2705 = !DILocation(line: 90, column: 70, scope: !2653, inlinedAt: !2704)
!2706 = !DILocation(line: 90, column: 80, scope: !2653, inlinedAt: !2704)
!2707 = !DILocation(line: 92, column: 7, scope: !2669, inlinedAt: !2704)
!2708 = !DILocation(line: 92, column: 7, scope: !2672, inlinedAt: !2704)
!2709 = !DILocalVariable(name: "s2", arg: 2, scope: !2710, file: !2540, line: 76, type: !36)
!2710 = distinct !DISubprogram(name: "strcaseeq6", scope: !2540, file: !2540, line: 76, type: !2711, isLocal: true, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: true, unit: !160, variables: !2713)
!2711 = !DISubroutineType(types: !2712)
!2712 = !{!46, !36, !36, !38, !38, !38}
!2713 = !{!2714, !2709, !2715, !2716, !2717}
!2714 = !DILocalVariable(name: "s1", arg: 1, scope: !2710, file: !2540, line: 76, type: !36)
!2715 = !DILocalVariable(name: "s26", arg: 3, scope: !2710, file: !2540, line: 76, type: !38)
!2716 = !DILocalVariable(name: "s27", arg: 4, scope: !2710, file: !2540, line: 76, type: !38)
!2717 = !DILocalVariable(name: "s28", arg: 5, scope: !2710, file: !2540, line: 76, type: !38)
!2718 = !DILocation(line: 76, column: 41, scope: !2710, inlinedAt: !2719)
!2719 = distinct !DILocation(line: 97, column: 16, scope: !2720, inlinedAt: !2704)
!2720 = distinct !DILexicalBlock(scope: !2721, file: !2540, line: 94, column: 11)
!2721 = distinct !DILexicalBlock(scope: !2670, file: !2540, line: 93, column: 5)
!2722 = !DILocation(line: 76, column: 60, scope: !2710, inlinedAt: !2719)
!2723 = !DILocation(line: 76, column: 70, scope: !2710, inlinedAt: !2719)
!2724 = !DILocation(line: 78, column: 7, scope: !2725, inlinedAt: !2719)
!2725 = !DILexicalBlockFile(scope: !2726, file: !2540, discriminator: 2)
!2726 = distinct !DILexicalBlock(scope: !2710, file: !2540, line: 78, column: 7)
!2727 = !DILocation(line: 78, column: 7, scope: !2728, inlinedAt: !2719)
!2728 = !DILexicalBlockFile(scope: !2710, file: !2540, discriminator: 2)
!2729 = !DILocalVariable(name: "s2", arg: 2, scope: !2730, file: !2540, line: 62, type: !36)
!2730 = distinct !DISubprogram(name: "strcaseeq7", scope: !2540, file: !2540, line: 62, type: !2731, isLocal: true, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: true, unit: !160, variables: !2733)
!2731 = !DISubroutineType(types: !2732)
!2732 = !{!46, !36, !36, !38, !38}
!2733 = !{!2734, !2729, !2735, !2736}
!2734 = !DILocalVariable(name: "s1", arg: 1, scope: !2730, file: !2540, line: 62, type: !36)
!2735 = !DILocalVariable(name: "s27", arg: 3, scope: !2730, file: !2540, line: 62, type: !38)
!2736 = !DILocalVariable(name: "s28", arg: 4, scope: !2730, file: !2540, line: 62, type: !38)
!2737 = !DILocation(line: 62, column: 41, scope: !2730, inlinedAt: !2738)
!2738 = distinct !DILocation(line: 83, column: 16, scope: !2739, inlinedAt: !2719)
!2739 = distinct !DILexicalBlock(scope: !2740, file: !2540, line: 80, column: 11)
!2740 = distinct !DILexicalBlock(scope: !2726, file: !2540, line: 79, column: 5)
!2741 = !DILocation(line: 62, column: 50, scope: !2730, inlinedAt: !2738)
!2742 = !DILocation(line: 62, column: 60, scope: !2730, inlinedAt: !2738)
!2743 = !DILocation(line: 64, column: 7, scope: !2744, inlinedAt: !2738)
!2744 = !DILexicalBlockFile(scope: !2745, file: !2540, discriminator: 2)
!2745 = distinct !DILexicalBlock(scope: !2730, file: !2540, line: 64, column: 7)
!2746 = !DILocation(line: 228, column: 7, scope: !2521)
!2747 = !DILocation(line: 229, column: 12, scope: !2679)
!2748 = !DILocation(line: 229, column: 21, scope: !2679)
!2749 = !DILocation(line: 229, column: 5, scope: !2679)
!2750 = !DILocation(line: 231, column: 13, scope: !2521)
!2751 = !DILocation(line: 231, column: 11, scope: !2521)
!2752 = !DILocation(line: 231, column: 3, scope: !2521)
!2753 = !DILocation(line: 232, column: 1, scope: !2521)
!2754 = distinct !DISubprogram(name: "quotearg_alloc", scope: !188, file: !188, line: 791, type: !2755, isLocal: false, isDefinition: true, scopeLine: 793, flags: DIFlagPrototyped, isOptimized: true, unit: !160, variables: !2757)
!2755 = !DISubroutineType(types: !2756)
!2756 = !{!39, !36, !47, !1597}
!2757 = !{!2758, !2759, !2760}
!2758 = !DILocalVariable(name: "arg", arg: 1, scope: !2754, file: !188, line: 791, type: !36)
!2759 = !DILocalVariable(name: "argsize", arg: 2, scope: !2754, file: !188, line: 791, type: !47)
!2760 = !DILocalVariable(name: "o", arg: 3, scope: !2754, file: !188, line: 792, type: !1597)
!2761 = !DILocation(line: 791, column: 29, scope: !2754)
!2762 = !DILocation(line: 791, column: 41, scope: !2754)
!2763 = !DILocation(line: 792, column: 47, scope: !2754)
!2764 = !DILocalVariable(name: "arg", arg: 1, scope: !2765, file: !188, line: 804, type: !36)
!2765 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !188, file: !188, line: 804, type: !2766, isLocal: false, isDefinition: true, scopeLine: 806, flags: DIFlagPrototyped, isOptimized: true, unit: !160, variables: !2768)
!2766 = !DISubroutineType(types: !2767)
!2767 = !{!39, !36, !47, !644, !1597}
!2768 = !{!2764, !2769, !2770, !2771, !2772, !2773, !2774, !2775, !2776}
!2769 = !DILocalVariable(name: "argsize", arg: 2, scope: !2765, file: !188, line: 804, type: !47)
!2770 = !DILocalVariable(name: "size", arg: 3, scope: !2765, file: !188, line: 804, type: !644)
!2771 = !DILocalVariable(name: "o", arg: 4, scope: !2765, file: !188, line: 805, type: !1597)
!2772 = !DILocalVariable(name: "p", scope: !2765, file: !188, line: 807, type: !1597)
!2773 = !DILocalVariable(name: "e", scope: !2765, file: !188, line: 808, type: !46)
!2774 = !DILocalVariable(name: "flags", scope: !2765, file: !188, line: 810, type: !46)
!2775 = !DILocalVariable(name: "bufsize", scope: !2765, file: !188, line: 811, type: !47)
!2776 = !DILocalVariable(name: "buf", scope: !2765, file: !188, line: 815, type: !39)
!2777 = !DILocation(line: 804, column: 33, scope: !2765, inlinedAt: !2778)
!2778 = distinct !DILocation(line: 794, column: 10, scope: !2754)
!2779 = !DILocation(line: 804, column: 45, scope: !2765, inlinedAt: !2778)
!2780 = !DILocation(line: 804, column: 62, scope: !2765, inlinedAt: !2778)
!2781 = !DILocation(line: 805, column: 51, scope: !2765, inlinedAt: !2778)
!2782 = !DILocation(line: 807, column: 37, scope: !2765, inlinedAt: !2778)
!2783 = !DILocation(line: 807, column: 33, scope: !2765, inlinedAt: !2778)
!2784 = !DILocation(line: 808, column: 11, scope: !2765, inlinedAt: !2778)
!2785 = !DILocation(line: 808, column: 7, scope: !2765, inlinedAt: !2778)
!2786 = !DILocation(line: 810, column: 18, scope: !2765, inlinedAt: !2778)
!2787 = !DILocation(line: 810, column: 24, scope: !2765, inlinedAt: !2778)
!2788 = !DILocation(line: 810, column: 7, scope: !2765, inlinedAt: !2778)
!2789 = !DILocation(line: 811, column: 69, scope: !2765, inlinedAt: !2778)
!2790 = !DILocation(line: 812, column: 53, scope: !2765, inlinedAt: !2778)
!2791 = !DILocation(line: 813, column: 49, scope: !2765, inlinedAt: !2778)
!2792 = !DILocation(line: 814, column: 49, scope: !2765, inlinedAt: !2778)
!2793 = !DILocation(line: 811, column: 20, scope: !2765, inlinedAt: !2778)
!2794 = !DILocation(line: 814, column: 62, scope: !2765, inlinedAt: !2778)
!2795 = !DILocation(line: 811, column: 10, scope: !2765, inlinedAt: !2778)
!2796 = !DILocalVariable(name: "n", arg: 1, scope: !2797, file: !640, line: 220, type: !47)
!2797 = distinct !DISubprogram(name: "xcharalloc", scope: !640, file: !640, line: 220, type: !2798, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !160, variables: !2800)
!2798 = !DISubroutineType(types: !2799)
!2799 = !{!39, !47}
!2800 = !{!2796}
!2801 = !DILocation(line: 220, column: 20, scope: !2797, inlinedAt: !2802)
!2802 = distinct !DILocation(line: 815, column: 15, scope: !2765, inlinedAt: !2778)
!2803 = !DILocation(line: 222, column: 10, scope: !2797, inlinedAt: !2802)
!2804 = !DILocation(line: 815, column: 9, scope: !2765, inlinedAt: !2778)
!2805 = !DILocation(line: 816, column: 60, scope: !2765, inlinedAt: !2778)
!2806 = !DILocation(line: 818, column: 32, scope: !2765, inlinedAt: !2778)
!2807 = !DILocation(line: 818, column: 47, scope: !2765, inlinedAt: !2778)
!2808 = !DILocation(line: 816, column: 3, scope: !2765, inlinedAt: !2778)
!2809 = !DILocation(line: 819, column: 9, scope: !2765, inlinedAt: !2778)
!2810 = !DILocation(line: 794, column: 3, scope: !2754)
!2811 = !DILocation(line: 804, column: 33, scope: !2765)
!2812 = !DILocation(line: 804, column: 45, scope: !2765)
!2813 = !DILocation(line: 804, column: 62, scope: !2765)
!2814 = !DILocation(line: 805, column: 51, scope: !2765)
!2815 = !DILocation(line: 807, column: 37, scope: !2765)
!2816 = !DILocation(line: 807, column: 33, scope: !2765)
!2817 = !DILocation(line: 808, column: 11, scope: !2765)
!2818 = !DILocation(line: 808, column: 7, scope: !2765)
!2819 = !DILocation(line: 810, column: 18, scope: !2765)
!2820 = !DILocation(line: 810, column: 27, scope: !2765)
!2821 = !DILocation(line: 810, column: 24, scope: !2765)
!2822 = !DILocation(line: 810, column: 7, scope: !2765)
!2823 = !DILocation(line: 811, column: 69, scope: !2765)
!2824 = !DILocation(line: 812, column: 53, scope: !2765)
!2825 = !DILocation(line: 813, column: 49, scope: !2765)
!2826 = !DILocation(line: 814, column: 49, scope: !2765)
!2827 = !DILocation(line: 811, column: 20, scope: !2765)
!2828 = !DILocation(line: 814, column: 62, scope: !2765)
!2829 = !DILocation(line: 811, column: 10, scope: !2765)
!2830 = !DILocation(line: 220, column: 20, scope: !2797, inlinedAt: !2831)
!2831 = distinct !DILocation(line: 815, column: 15, scope: !2765)
!2832 = !DILocation(line: 222, column: 10, scope: !2797, inlinedAt: !2831)
!2833 = !DILocation(line: 815, column: 9, scope: !2765)
!2834 = !DILocation(line: 816, column: 60, scope: !2765)
!2835 = !DILocation(line: 818, column: 32, scope: !2765)
!2836 = !DILocation(line: 818, column: 47, scope: !2765)
!2837 = !DILocation(line: 816, column: 3, scope: !2765)
!2838 = !DILocation(line: 819, column: 9, scope: !2765)
!2839 = !DILocation(line: 820, column: 7, scope: !2765)
!2840 = !DILocation(line: 821, column: 11, scope: !2841)
!2841 = distinct !DILexicalBlock(scope: !2765, file: !188, line: 820, column: 7)
!2842 = !{!1232, !1232, i64 0}
!2843 = !DILocation(line: 821, column: 5, scope: !2841)
!2844 = !DILocation(line: 822, column: 3, scope: !2765)
!2845 = distinct !DISubprogram(name: "quotearg_free", scope: !188, file: !188, line: 840, type: !134, isLocal: false, isDefinition: true, scopeLine: 841, flags: DIFlagPrototyped, isOptimized: true, unit: !160, variables: !2846)
!2846 = !{!2847, !2848}
!2847 = !DILocalVariable(name: "sv", scope: !2845, file: !188, line: 842, type: !215)
!2848 = !DILocalVariable(name: "i", scope: !2845, file: !188, line: 843, type: !46)
!2849 = !DILocation(line: 842, column: 24, scope: !2845)
!2850 = !DILocation(line: 842, column: 19, scope: !2845)
!2851 = !DILocation(line: 843, column: 7, scope: !2845)
!2852 = !DILocation(line: 844, column: 19, scope: !2853)
!2853 = !DILexicalBlockFile(scope: !2854, file: !188, discriminator: 1)
!2854 = distinct !DILexicalBlock(scope: !2855, file: !188, line: 844, column: 3)
!2855 = distinct !DILexicalBlock(scope: !2845, file: !188, line: 844, column: 3)
!2856 = !DILocation(line: 844, column: 17, scope: !2853)
!2857 = !DILocation(line: 844, column: 3, scope: !2858)
!2858 = !DILexicalBlockFile(scope: !2855, file: !188, discriminator: 1)
!2859 = !DILocation(line: 845, column: 17, scope: !2854)
!2860 = !{!2861, !688, i64 8}
!2861 = !{!"slotvec", !1232, i64 0, !688, i64 8}
!2862 = !DILocation(line: 845, column: 5, scope: !2854)
!2863 = !DILocation(line: 844, column: 28, scope: !2864)
!2864 = !DILexicalBlockFile(scope: !2854, file: !188, discriminator: 2)
!2865 = distinct !{!2865, !2866, !2867}
!2866 = !DILocation(line: 844, column: 3, scope: !2855)
!2867 = !DILocation(line: 845, column: 20, scope: !2855)
!2868 = !DILocation(line: 846, column: 13, scope: !2869)
!2869 = distinct !DILexicalBlock(scope: !2845, file: !188, line: 846, column: 7)
!2870 = !DILocation(line: 846, column: 17, scope: !2869)
!2871 = !DILocation(line: 846, column: 7, scope: !2845)
!2872 = !DILocation(line: 848, column: 7, scope: !2873)
!2873 = distinct !DILexicalBlock(scope: !2869, file: !188, line: 847, column: 5)
!2874 = !DILocation(line: 849, column: 21, scope: !2873)
!2875 = !{!2861, !1232, i64 0}
!2876 = !DILocation(line: 850, column: 20, scope: !2873)
!2877 = !DILocation(line: 851, column: 5, scope: !2873)
!2878 = !DILocation(line: 852, column: 10, scope: !2879)
!2879 = distinct !DILexicalBlock(scope: !2845, file: !188, line: 852, column: 7)
!2880 = !DILocation(line: 852, column: 7, scope: !2845)
!2881 = !DILocation(line: 854, column: 13, scope: !2882)
!2882 = distinct !DILexicalBlock(scope: !2879, file: !188, line: 853, column: 5)
!2883 = !DILocation(line: 854, column: 7, scope: !2882)
!2884 = !DILocation(line: 855, column: 15, scope: !2882)
!2885 = !DILocation(line: 856, column: 5, scope: !2882)
!2886 = !DILocation(line: 857, column: 10, scope: !2845)
!2887 = !DILocation(line: 858, column: 1, scope: !2845)
!2888 = distinct !DISubprogram(name: "quotearg_n", scope: !188, file: !188, line: 922, type: !2889, isLocal: false, isDefinition: true, scopeLine: 923, flags: DIFlagPrototyped, isOptimized: true, unit: !160, variables: !2891)
!2889 = !DISubroutineType(types: !2890)
!2890 = !{!39, !46, !36}
!2891 = !{!2892, !2893}
!2892 = !DILocalVariable(name: "n", arg: 1, scope: !2888, file: !188, line: 922, type: !46)
!2893 = !DILocalVariable(name: "arg", arg: 2, scope: !2888, file: !188, line: 922, type: !36)
!2894 = !DILocation(line: 922, column: 17, scope: !2888)
!2895 = !DILocation(line: 922, column: 32, scope: !2888)
!2896 = !DILocation(line: 924, column: 10, scope: !2888)
!2897 = !DILocation(line: 924, column: 3, scope: !2888)
!2898 = distinct !DISubprogram(name: "quotearg_n_options", scope: !188, file: !188, line: 869, type: !2899, isLocal: true, isDefinition: true, scopeLine: 871, flags: DIFlagPrototyped, isOptimized: true, unit: !160, variables: !2901)
!2899 = !DISubroutineType(types: !2900)
!2900 = !{!39, !46, !36, !47, !1597}
!2901 = !{!2902, !2903, !2904, !2905, !2906, !2907, !2908, !2911, !2913, !2914, !2915}
!2902 = !DILocalVariable(name: "n", arg: 1, scope: !2898, file: !188, line: 869, type: !46)
!2903 = !DILocalVariable(name: "arg", arg: 2, scope: !2898, file: !188, line: 869, type: !36)
!2904 = !DILocalVariable(name: "argsize", arg: 3, scope: !2898, file: !188, line: 869, type: !47)
!2905 = !DILocalVariable(name: "options", arg: 4, scope: !2898, file: !188, line: 870, type: !1597)
!2906 = !DILocalVariable(name: "e", scope: !2898, file: !188, line: 872, type: !46)
!2907 = !DILocalVariable(name: "sv", scope: !2898, file: !188, line: 874, type: !215)
!2908 = !DILocalVariable(name: "preallocated", scope: !2909, file: !188, line: 881, type: !58)
!2909 = distinct !DILexicalBlock(scope: !2910, file: !188, line: 880, column: 5)
!2910 = distinct !DILexicalBlock(scope: !2898, file: !188, line: 879, column: 7)
!2911 = !DILocalVariable(name: "size", scope: !2912, file: !188, line: 894, type: !47)
!2912 = distinct !DILexicalBlock(scope: !2898, file: !188, line: 893, column: 3)
!2913 = !DILocalVariable(name: "val", scope: !2912, file: !188, line: 895, type: !39)
!2914 = !DILocalVariable(name: "flags", scope: !2912, file: !188, line: 897, type: !46)
!2915 = !DILocalVariable(name: "qsize", scope: !2912, file: !188, line: 898, type: !47)
!2916 = !DILocation(line: 869, column: 25, scope: !2898)
!2917 = !DILocation(line: 869, column: 40, scope: !2898)
!2918 = !DILocation(line: 869, column: 52, scope: !2898)
!2919 = !DILocation(line: 870, column: 51, scope: !2898)
!2920 = !DILocation(line: 872, column: 11, scope: !2898)
!2921 = !DILocation(line: 872, column: 7, scope: !2898)
!2922 = !DILocation(line: 874, column: 24, scope: !2898)
!2923 = !DILocation(line: 874, column: 19, scope: !2898)
!2924 = !DILocation(line: 876, column: 9, scope: !2925)
!2925 = distinct !DILexicalBlock(scope: !2898, file: !188, line: 876, column: 7)
!2926 = !DILocation(line: 876, column: 7, scope: !2898)
!2927 = !DILocation(line: 877, column: 5, scope: !2925)
!2928 = !DILocation(line: 879, column: 7, scope: !2910)
!2929 = !DILocation(line: 879, column: 14, scope: !2910)
!2930 = !DILocation(line: 879, column: 7, scope: !2898)
!2931 = !DILocation(line: 881, column: 31, scope: !2909)
!2932 = !DILocation(line: 883, column: 67, scope: !2933)
!2933 = distinct !DILexicalBlock(scope: !2909, file: !188, line: 883, column: 11)
!2934 = !DILocation(line: 883, column: 11, scope: !2909)
!2935 = !DILocation(line: 884, column: 9, scope: !2933)
!2936 = !DILocation(line: 886, column: 32, scope: !2937)
!2937 = !DILexicalBlockFile(scope: !2909, file: !188, discriminator: 3)
!2938 = !DILocation(line: 886, column: 61, scope: !2937)
!2939 = !DILocation(line: 886, column: 58, scope: !2937)
!2940 = !DILocation(line: 886, column: 66, scope: !2937)
!2941 = !DILocation(line: 886, column: 22, scope: !2937)
!2942 = !DILocation(line: 886, column: 15, scope: !2937)
!2943 = !DILocation(line: 887, column: 11, scope: !2909)
!2944 = !DILocation(line: 888, column: 15, scope: !2945)
!2945 = distinct !DILexicalBlock(scope: !2909, file: !188, line: 887, column: 11)
!2946 = !{i64 0, i64 8, !2842, i64 8, i64 8, !687}
!2947 = !DILocation(line: 888, column: 9, scope: !2945)
!2948 = !DILocation(line: 889, column: 20, scope: !2909)
!2949 = !DILocation(line: 889, column: 18, scope: !2909)
!2950 = !DILocation(line: 889, column: 7, scope: !2909)
!2951 = !DILocation(line: 889, column: 38, scope: !2909)
!2952 = !DILocation(line: 889, column: 31, scope: !2909)
!2953 = !DILocation(line: 889, column: 48, scope: !2909)
!2954 = !DILocation(line: 890, column: 14, scope: !2909)
!2955 = !DILocation(line: 891, column: 5, scope: !2909)
!2956 = !DILocation(line: 894, column: 19, scope: !2912)
!2957 = !DILocation(line: 894, column: 25, scope: !2912)
!2958 = !DILocation(line: 894, column: 12, scope: !2912)
!2959 = !DILocation(line: 895, column: 23, scope: !2912)
!2960 = !DILocation(line: 895, column: 11, scope: !2912)
!2961 = !DILocation(line: 897, column: 26, scope: !2912)
!2962 = !DILocation(line: 897, column: 32, scope: !2912)
!2963 = !DILocation(line: 897, column: 9, scope: !2912)
!2964 = !DILocation(line: 899, column: 55, scope: !2912)
!2965 = !DILocation(line: 900, column: 46, scope: !2912)
!2966 = !DILocation(line: 901, column: 55, scope: !2912)
!2967 = !DILocation(line: 902, column: 55, scope: !2912)
!2968 = !DILocation(line: 898, column: 20, scope: !2912)
!2969 = !DILocation(line: 898, column: 12, scope: !2912)
!2970 = !DILocation(line: 904, column: 14, scope: !2971)
!2971 = distinct !DILexicalBlock(scope: !2912, file: !188, line: 904, column: 9)
!2972 = !DILocation(line: 904, column: 9, scope: !2912)
!2973 = !DILocation(line: 906, column: 35, scope: !2974)
!2974 = distinct !DILexicalBlock(scope: !2971, file: !188, line: 905, column: 7)
!2975 = !DILocation(line: 906, column: 20, scope: !2974)
!2976 = !DILocation(line: 907, column: 17, scope: !2977)
!2977 = distinct !DILexicalBlock(scope: !2974, file: !188, line: 907, column: 13)
!2978 = !DILocation(line: 907, column: 13, scope: !2974)
!2979 = !DILocation(line: 908, column: 11, scope: !2977)
!2980 = !DILocation(line: 220, column: 20, scope: !2797, inlinedAt: !2981)
!2981 = distinct !DILocation(line: 909, column: 27, scope: !2974)
!2982 = !DILocation(line: 222, column: 10, scope: !2797, inlinedAt: !2981)
!2983 = !DILocation(line: 909, column: 19, scope: !2974)
!2984 = !DILocation(line: 910, column: 69, scope: !2974)
!2985 = !DILocation(line: 912, column: 44, scope: !2974)
!2986 = !DILocation(line: 913, column: 44, scope: !2974)
!2987 = !DILocation(line: 910, column: 9, scope: !2974)
!2988 = !DILocation(line: 914, column: 7, scope: !2974)
!2989 = !DILocation(line: 916, column: 11, scope: !2912)
!2990 = !DILocation(line: 917, column: 5, scope: !2912)
!2991 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !188, file: !188, line: 928, type: !2992, isLocal: false, isDefinition: true, scopeLine: 929, flags: DIFlagPrototyped, isOptimized: true, unit: !160, variables: !2994)
!2992 = !DISubroutineType(types: !2993)
!2993 = !{!39, !46, !36, !47}
!2994 = !{!2995, !2996, !2997}
!2995 = !DILocalVariable(name: "n", arg: 1, scope: !2991, file: !188, line: 928, type: !46)
!2996 = !DILocalVariable(name: "arg", arg: 2, scope: !2991, file: !188, line: 928, type: !36)
!2997 = !DILocalVariable(name: "argsize", arg: 3, scope: !2991, file: !188, line: 928, type: !47)
!2998 = !DILocation(line: 928, column: 21, scope: !2991)
!2999 = !DILocation(line: 928, column: 36, scope: !2991)
!3000 = !DILocation(line: 928, column: 48, scope: !2991)
!3001 = !DILocation(line: 930, column: 10, scope: !2991)
!3002 = !DILocation(line: 930, column: 3, scope: !2991)
!3003 = distinct !DISubprogram(name: "quotearg", scope: !188, file: !188, line: 934, type: !3004, isLocal: false, isDefinition: true, scopeLine: 935, flags: DIFlagPrototyped, isOptimized: true, unit: !160, variables: !3006)
!3004 = !DISubroutineType(types: !3005)
!3005 = !{!39, !36}
!3006 = !{!3007}
!3007 = !DILocalVariable(name: "arg", arg: 1, scope: !3003, file: !188, line: 934, type: !36)
!3008 = !DILocation(line: 934, column: 23, scope: !3003)
!3009 = !DILocation(line: 922, column: 17, scope: !2888, inlinedAt: !3010)
!3010 = distinct !DILocation(line: 936, column: 10, scope: !3003)
!3011 = !DILocation(line: 922, column: 32, scope: !2888, inlinedAt: !3010)
!3012 = !DILocation(line: 924, column: 10, scope: !2888, inlinedAt: !3010)
!3013 = !DILocation(line: 936, column: 3, scope: !3003)
!3014 = distinct !DISubprogram(name: "quotearg_mem", scope: !188, file: !188, line: 940, type: !3015, isLocal: false, isDefinition: true, scopeLine: 941, flags: DIFlagPrototyped, isOptimized: true, unit: !160, variables: !3017)
!3015 = !DISubroutineType(types: !3016)
!3016 = !{!39, !36, !47}
!3017 = !{!3018, !3019}
!3018 = !DILocalVariable(name: "arg", arg: 1, scope: !3014, file: !188, line: 940, type: !36)
!3019 = !DILocalVariable(name: "argsize", arg: 2, scope: !3014, file: !188, line: 940, type: !47)
!3020 = !DILocation(line: 940, column: 27, scope: !3014)
!3021 = !DILocation(line: 940, column: 39, scope: !3014)
!3022 = !DILocation(line: 928, column: 21, scope: !2991, inlinedAt: !3023)
!3023 = distinct !DILocation(line: 942, column: 10, scope: !3014)
!3024 = !DILocation(line: 928, column: 36, scope: !2991, inlinedAt: !3023)
!3025 = !DILocation(line: 928, column: 48, scope: !2991, inlinedAt: !3023)
!3026 = !DILocation(line: 930, column: 10, scope: !2991, inlinedAt: !3023)
!3027 = !DILocation(line: 942, column: 3, scope: !3014)
!3028 = distinct !DISubprogram(name: "quotearg_n_style", scope: !188, file: !188, line: 946, type: !3029, isLocal: false, isDefinition: true, scopeLine: 947, flags: DIFlagPrototyped, isOptimized: true, unit: !160, variables: !3031)
!3029 = !DISubroutineType(types: !3030)
!3030 = !{!39, !46, !21, !36}
!3031 = !{!3032, !3033, !3034, !3035}
!3032 = !DILocalVariable(name: "n", arg: 1, scope: !3028, file: !188, line: 946, type: !46)
!3033 = !DILocalVariable(name: "s", arg: 2, scope: !3028, file: !188, line: 946, type: !21)
!3034 = !DILocalVariable(name: "arg", arg: 3, scope: !3028, file: !188, line: 946, type: !36)
!3035 = !DILocalVariable(name: "o", scope: !3028, file: !188, line: 948, type: !1598)
!3036 = !DILocalVariable(name: "o", scope: !3037, file: !188, line: 187, type: !195)
!3037 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !188, file: !188, line: 185, type: !3038, isLocal: true, isDefinition: true, scopeLine: 186, flags: DIFlagPrototyped, isOptimized: true, unit: !160, variables: !3040)
!3038 = !DISubroutineType(types: !3039)
!3039 = !{!195, !21}
!3040 = !{!3041, !3036}
!3041 = !DILocalVariable(name: "style", arg: 1, scope: !3037, file: !188, line: 185, type: !21)
!3042 = !DIExpression(DW_OP_LLVM_fragment, 32, 416)
!3043 = !DILocation(line: 187, column: 26, scope: !3037, inlinedAt: !3044)
!3044 = distinct !DILocation(line: 948, column: 36, scope: !3028)
!3045 = !DILocation(line: 946, column: 23, scope: !3028)
!3046 = !DILocation(line: 946, column: 45, scope: !3028)
!3047 = !DILocation(line: 946, column: 60, scope: !3028)
!3048 = !DILocation(line: 948, column: 3, scope: !3028)
!3049 = !DILocation(line: 948, column: 32, scope: !3028)
!3050 = !DILocation(line: 185, column: 48, scope: !3037, inlinedAt: !3044)
!3051 = !DILocation(line: 187, column: 3, scope: !3037, inlinedAt: !3044)
!3052 = !DIExpression(DW_OP_LLVM_fragment, 0, 32)
!3053 = !DILocation(line: 188, column: 13, scope: !3054, inlinedAt: !3044)
!3054 = distinct !DILexicalBlock(scope: !3037, file: !188, line: 188, column: 7)
!3055 = !DILocation(line: 188, column: 7, scope: !3037, inlinedAt: !3044)
!3056 = !DILocation(line: 189, column: 5, scope: !3054, inlinedAt: !3044)
!3057 = !{!3058}
!3058 = distinct !{!3058, !3059, !"quoting_options_from_style: argument 0"}
!3059 = distinct !{!3059, !"quoting_options_from_style"}
!3060 = !DILocation(line: 191, column: 10, scope: !3037, inlinedAt: !3044)
!3061 = !DILocation(line: 192, column: 1, scope: !3037, inlinedAt: !3044)
!3062 = !DILocation(line: 949, column: 10, scope: !3028)
!3063 = !DILocation(line: 950, column: 1, scope: !3028)
!3064 = !DILocation(line: 949, column: 3, scope: !3028)
!3065 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !188, file: !188, line: 953, type: !3066, isLocal: false, isDefinition: true, scopeLine: 955, flags: DIFlagPrototyped, isOptimized: true, unit: !160, variables: !3068)
!3066 = !DISubroutineType(types: !3067)
!3067 = !{!39, !46, !21, !36, !47}
!3068 = !{!3069, !3070, !3071, !3072, !3073}
!3069 = !DILocalVariable(name: "n", arg: 1, scope: !3065, file: !188, line: 953, type: !46)
!3070 = !DILocalVariable(name: "s", arg: 2, scope: !3065, file: !188, line: 953, type: !21)
!3071 = !DILocalVariable(name: "arg", arg: 3, scope: !3065, file: !188, line: 954, type: !36)
!3072 = !DILocalVariable(name: "argsize", arg: 4, scope: !3065, file: !188, line: 954, type: !47)
!3073 = !DILocalVariable(name: "o", scope: !3065, file: !188, line: 956, type: !1598)
!3074 = !DILocation(line: 187, column: 26, scope: !3037, inlinedAt: !3075)
!3075 = distinct !DILocation(line: 956, column: 36, scope: !3065)
!3076 = !DILocation(line: 953, column: 27, scope: !3065)
!3077 = !DILocation(line: 953, column: 49, scope: !3065)
!3078 = !DILocation(line: 954, column: 35, scope: !3065)
!3079 = !DILocation(line: 954, column: 47, scope: !3065)
!3080 = !DILocation(line: 956, column: 3, scope: !3065)
!3081 = !DILocation(line: 956, column: 32, scope: !3065)
!3082 = !DILocation(line: 185, column: 48, scope: !3037, inlinedAt: !3075)
!3083 = !DILocation(line: 187, column: 3, scope: !3037, inlinedAt: !3075)
!3084 = !DILocation(line: 188, column: 13, scope: !3054, inlinedAt: !3075)
!3085 = !DILocation(line: 188, column: 7, scope: !3037, inlinedAt: !3075)
!3086 = !DILocation(line: 189, column: 5, scope: !3054, inlinedAt: !3075)
!3087 = !{!3088}
!3088 = distinct !{!3088, !3089, !"quoting_options_from_style: argument 0"}
!3089 = distinct !{!3089, !"quoting_options_from_style"}
!3090 = !DILocation(line: 191, column: 10, scope: !3037, inlinedAt: !3075)
!3091 = !DILocation(line: 192, column: 1, scope: !3037, inlinedAt: !3075)
!3092 = !DILocation(line: 957, column: 10, scope: !3065)
!3093 = !DILocation(line: 958, column: 1, scope: !3065)
!3094 = !DILocation(line: 957, column: 3, scope: !3065)
!3095 = distinct !DISubprogram(name: "quotearg_style", scope: !188, file: !188, line: 961, type: !3096, isLocal: false, isDefinition: true, scopeLine: 962, flags: DIFlagPrototyped, isOptimized: true, unit: !160, variables: !3098)
!3096 = !DISubroutineType(types: !3097)
!3097 = !{!39, !21, !36}
!3098 = !{!3099, !3100}
!3099 = !DILocalVariable(name: "s", arg: 1, scope: !3095, file: !188, line: 961, type: !21)
!3100 = !DILocalVariable(name: "arg", arg: 2, scope: !3095, file: !188, line: 961, type: !36)
!3101 = !DILocation(line: 187, column: 26, scope: !3037, inlinedAt: !3102)
!3102 = distinct !DILocation(line: 948, column: 36, scope: !3028, inlinedAt: !3103)
!3103 = distinct !DILocation(line: 963, column: 10, scope: !3095)
!3104 = !DILocation(line: 961, column: 36, scope: !3095)
!3105 = !DILocation(line: 961, column: 51, scope: !3095)
!3106 = !DILocation(line: 946, column: 23, scope: !3028, inlinedAt: !3103)
!3107 = !DILocation(line: 946, column: 45, scope: !3028, inlinedAt: !3103)
!3108 = !DILocation(line: 946, column: 60, scope: !3028, inlinedAt: !3103)
!3109 = !DILocation(line: 948, column: 3, scope: !3028, inlinedAt: !3103)
!3110 = !DILocation(line: 948, column: 32, scope: !3028, inlinedAt: !3103)
!3111 = !DILocation(line: 185, column: 48, scope: !3037, inlinedAt: !3102)
!3112 = !DILocation(line: 187, column: 3, scope: !3037, inlinedAt: !3102)
!3113 = !DILocation(line: 188, column: 13, scope: !3054, inlinedAt: !3102)
!3114 = !DILocation(line: 188, column: 7, scope: !3037, inlinedAt: !3102)
!3115 = !DILocation(line: 189, column: 5, scope: !3054, inlinedAt: !3102)
!3116 = !{!3117}
!3117 = distinct !{!3117, !3118, !"quoting_options_from_style: argument 0"}
!3118 = distinct !{!3118, !"quoting_options_from_style"}
!3119 = !DILocation(line: 191, column: 10, scope: !3037, inlinedAt: !3102)
!3120 = !DILocation(line: 192, column: 1, scope: !3037, inlinedAt: !3102)
!3121 = !DILocation(line: 949, column: 10, scope: !3028, inlinedAt: !3103)
!3122 = !DILocation(line: 950, column: 1, scope: !3028, inlinedAt: !3103)
!3123 = !DILocation(line: 963, column: 3, scope: !3095)
!3124 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !188, file: !188, line: 967, type: !3125, isLocal: false, isDefinition: true, scopeLine: 968, flags: DIFlagPrototyped, isOptimized: true, unit: !160, variables: !3127)
!3125 = !DISubroutineType(types: !3126)
!3126 = !{!39, !21, !36, !47}
!3127 = !{!3128, !3129, !3130}
!3128 = !DILocalVariable(name: "s", arg: 1, scope: !3124, file: !188, line: 967, type: !21)
!3129 = !DILocalVariable(name: "arg", arg: 2, scope: !3124, file: !188, line: 967, type: !36)
!3130 = !DILocalVariable(name: "argsize", arg: 3, scope: !3124, file: !188, line: 967, type: !47)
!3131 = !DILocation(line: 187, column: 26, scope: !3037, inlinedAt: !3132)
!3132 = distinct !DILocation(line: 956, column: 36, scope: !3065, inlinedAt: !3133)
!3133 = distinct !DILocation(line: 969, column: 10, scope: !3124)
!3134 = !DILocation(line: 967, column: 40, scope: !3124)
!3135 = !DILocation(line: 967, column: 55, scope: !3124)
!3136 = !DILocation(line: 967, column: 67, scope: !3124)
!3137 = !DILocation(line: 953, column: 27, scope: !3065, inlinedAt: !3133)
!3138 = !DILocation(line: 953, column: 49, scope: !3065, inlinedAt: !3133)
!3139 = !DILocation(line: 954, column: 35, scope: !3065, inlinedAt: !3133)
!3140 = !DILocation(line: 954, column: 47, scope: !3065, inlinedAt: !3133)
!3141 = !DILocation(line: 956, column: 3, scope: !3065, inlinedAt: !3133)
!3142 = !DILocation(line: 956, column: 32, scope: !3065, inlinedAt: !3133)
!3143 = !DILocation(line: 185, column: 48, scope: !3037, inlinedAt: !3132)
!3144 = !DILocation(line: 187, column: 3, scope: !3037, inlinedAt: !3132)
!3145 = !DILocation(line: 188, column: 13, scope: !3054, inlinedAt: !3132)
!3146 = !DILocation(line: 188, column: 7, scope: !3037, inlinedAt: !3132)
!3147 = !DILocation(line: 189, column: 5, scope: !3054, inlinedAt: !3132)
!3148 = !{!3149}
!3149 = distinct !{!3149, !3150, !"quoting_options_from_style: argument 0"}
!3150 = distinct !{!3150, !"quoting_options_from_style"}
!3151 = !DILocation(line: 191, column: 10, scope: !3037, inlinedAt: !3132)
!3152 = !DILocation(line: 192, column: 1, scope: !3037, inlinedAt: !3132)
!3153 = !DILocation(line: 957, column: 10, scope: !3065, inlinedAt: !3133)
!3154 = !DILocation(line: 958, column: 1, scope: !3065, inlinedAt: !3133)
!3155 = !DILocation(line: 969, column: 3, scope: !3124)
!3156 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !188, file: !188, line: 973, type: !3157, isLocal: false, isDefinition: true, scopeLine: 974, flags: DIFlagPrototyped, isOptimized: true, unit: !160, variables: !3159)
!3157 = !DISubroutineType(types: !3158)
!3158 = !{!39, !36, !47, !38}
!3159 = !{!3160, !3161, !3162, !3163}
!3160 = !DILocalVariable(name: "arg", arg: 1, scope: !3156, file: !188, line: 973, type: !36)
!3161 = !DILocalVariable(name: "argsize", arg: 2, scope: !3156, file: !188, line: 973, type: !47)
!3162 = !DILocalVariable(name: "ch", arg: 3, scope: !3156, file: !188, line: 973, type: !38)
!3163 = !DILocalVariable(name: "options", scope: !3156, file: !188, line: 975, type: !195)
!3164 = !DILocation(line: 973, column: 32, scope: !3156)
!3165 = !DILocation(line: 973, column: 44, scope: !3156)
!3166 = !DILocation(line: 973, column: 58, scope: !3156)
!3167 = !DILocation(line: 975, column: 3, scope: !3156)
!3168 = !DILocation(line: 976, column: 13, scope: !3156)
!3169 = !{i64 0, i64 4, !844, i64 4, i64 4, !863, i64 8, i64 32, !844, i64 40, i64 8, !687, i64 48, i64 8, !687}
!3170 = !DILocation(line: 975, column: 26, scope: !3156)
!3171 = !DILocation(line: 144, column: 43, scope: !1621, inlinedAt: !3172)
!3172 = distinct !DILocation(line: 977, column: 3, scope: !3156)
!3173 = !DILocation(line: 144, column: 51, scope: !1621, inlinedAt: !3172)
!3174 = !DILocation(line: 144, column: 58, scope: !1621, inlinedAt: !3172)
!3175 = !DILocation(line: 146, column: 17, scope: !1621, inlinedAt: !3172)
!3176 = !DILocation(line: 148, column: 62, scope: !1639, inlinedAt: !3172)
!3177 = !DILocation(line: 148, column: 57, scope: !1639, inlinedAt: !3172)
!3178 = !DILocation(line: 147, column: 17, scope: !1621, inlinedAt: !3172)
!3179 = !DILocation(line: 149, column: 18, scope: !1621, inlinedAt: !3172)
!3180 = !DILocation(line: 149, column: 15, scope: !1621, inlinedAt: !3172)
!3181 = !DILocation(line: 149, column: 7, scope: !1621, inlinedAt: !3172)
!3182 = !DILocation(line: 150, column: 12, scope: !1621, inlinedAt: !3172)
!3183 = !DILocation(line: 150, column: 15, scope: !1621, inlinedAt: !3172)
!3184 = !DILocation(line: 150, column: 25, scope: !1621, inlinedAt: !3172)
!3185 = !DILocation(line: 150, column: 7, scope: !1621, inlinedAt: !3172)
!3186 = !DILocation(line: 151, column: 18, scope: !1621, inlinedAt: !3172)
!3187 = !DILocation(line: 151, column: 23, scope: !1621, inlinedAt: !3172)
!3188 = !DILocation(line: 151, column: 6, scope: !1621, inlinedAt: !3172)
!3189 = !DILocation(line: 978, column: 10, scope: !3156)
!3190 = !DILocation(line: 979, column: 1, scope: !3156)
!3191 = !DILocation(line: 978, column: 3, scope: !3156)
!3192 = distinct !DISubprogram(name: "quotearg_char", scope: !188, file: !188, line: 982, type: !3193, isLocal: false, isDefinition: true, scopeLine: 983, flags: DIFlagPrototyped, isOptimized: true, unit: !160, variables: !3195)
!3193 = !DISubroutineType(types: !3194)
!3194 = !{!39, !36, !38}
!3195 = !{!3196, !3197}
!3196 = !DILocalVariable(name: "arg", arg: 1, scope: !3192, file: !188, line: 982, type: !36)
!3197 = !DILocalVariable(name: "ch", arg: 2, scope: !3192, file: !188, line: 982, type: !38)
!3198 = !DILocation(line: 982, column: 28, scope: !3192)
!3199 = !DILocation(line: 982, column: 38, scope: !3192)
!3200 = !DILocation(line: 973, column: 32, scope: !3156, inlinedAt: !3201)
!3201 = distinct !DILocation(line: 984, column: 10, scope: !3192)
!3202 = !DILocation(line: 973, column: 44, scope: !3156, inlinedAt: !3201)
!3203 = !DILocation(line: 973, column: 58, scope: !3156, inlinedAt: !3201)
!3204 = !DILocation(line: 975, column: 3, scope: !3156, inlinedAt: !3201)
!3205 = !DILocation(line: 976, column: 13, scope: !3156, inlinedAt: !3201)
!3206 = !DILocation(line: 975, column: 26, scope: !3156, inlinedAt: !3201)
!3207 = !DILocation(line: 144, column: 43, scope: !1621, inlinedAt: !3208)
!3208 = distinct !DILocation(line: 977, column: 3, scope: !3156, inlinedAt: !3201)
!3209 = !DILocation(line: 144, column: 51, scope: !1621, inlinedAt: !3208)
!3210 = !DILocation(line: 144, column: 58, scope: !1621, inlinedAt: !3208)
!3211 = !DILocation(line: 146, column: 17, scope: !1621, inlinedAt: !3208)
!3212 = !DILocation(line: 148, column: 62, scope: !1639, inlinedAt: !3208)
!3213 = !DILocation(line: 148, column: 57, scope: !1639, inlinedAt: !3208)
!3214 = !DILocation(line: 147, column: 17, scope: !1621, inlinedAt: !3208)
!3215 = !DILocation(line: 149, column: 18, scope: !1621, inlinedAt: !3208)
!3216 = !DILocation(line: 149, column: 15, scope: !1621, inlinedAt: !3208)
!3217 = !DILocation(line: 149, column: 7, scope: !1621, inlinedAt: !3208)
!3218 = !DILocation(line: 150, column: 12, scope: !1621, inlinedAt: !3208)
!3219 = !DILocation(line: 150, column: 15, scope: !1621, inlinedAt: !3208)
!3220 = !DILocation(line: 150, column: 25, scope: !1621, inlinedAt: !3208)
!3221 = !DILocation(line: 150, column: 7, scope: !1621, inlinedAt: !3208)
!3222 = !DILocation(line: 151, column: 18, scope: !1621, inlinedAt: !3208)
!3223 = !DILocation(line: 151, column: 23, scope: !1621, inlinedAt: !3208)
!3224 = !DILocation(line: 151, column: 6, scope: !1621, inlinedAt: !3208)
!3225 = !DILocation(line: 978, column: 10, scope: !3156, inlinedAt: !3201)
!3226 = !DILocation(line: 979, column: 1, scope: !3156, inlinedAt: !3201)
!3227 = !DILocation(line: 984, column: 3, scope: !3192)
!3228 = distinct !DISubprogram(name: "quotearg_colon", scope: !188, file: !188, line: 988, type: !3004, isLocal: false, isDefinition: true, scopeLine: 989, flags: DIFlagPrototyped, isOptimized: true, unit: !160, variables: !3229)
!3229 = !{!3230}
!3230 = !DILocalVariable(name: "arg", arg: 1, scope: !3228, file: !188, line: 988, type: !36)
!3231 = !DILocation(line: 988, column: 29, scope: !3228)
!3232 = !DILocation(line: 982, column: 28, scope: !3192, inlinedAt: !3233)
!3233 = distinct !DILocation(line: 990, column: 10, scope: !3228)
!3234 = !DILocation(line: 982, column: 38, scope: !3192, inlinedAt: !3233)
!3235 = !DILocation(line: 973, column: 32, scope: !3156, inlinedAt: !3236)
!3236 = distinct !DILocation(line: 984, column: 10, scope: !3192, inlinedAt: !3233)
!3237 = !DILocation(line: 973, column: 44, scope: !3156, inlinedAt: !3236)
!3238 = !DILocation(line: 973, column: 58, scope: !3156, inlinedAt: !3236)
!3239 = !DILocation(line: 975, column: 3, scope: !3156, inlinedAt: !3236)
!3240 = !DILocation(line: 976, column: 13, scope: !3156, inlinedAt: !3236)
!3241 = !DILocation(line: 975, column: 26, scope: !3156, inlinedAt: !3236)
!3242 = !DILocation(line: 144, column: 43, scope: !1621, inlinedAt: !3243)
!3243 = distinct !DILocation(line: 977, column: 3, scope: !3156, inlinedAt: !3236)
!3244 = !DILocation(line: 144, column: 51, scope: !1621, inlinedAt: !3243)
!3245 = !DILocation(line: 144, column: 58, scope: !1621, inlinedAt: !3243)
!3246 = !DILocation(line: 146, column: 17, scope: !1621, inlinedAt: !3243)
!3247 = !DILocation(line: 148, column: 57, scope: !1639, inlinedAt: !3243)
!3248 = !DILocation(line: 147, column: 17, scope: !1621, inlinedAt: !3243)
!3249 = !DILocation(line: 149, column: 7, scope: !1621, inlinedAt: !3243)
!3250 = !DILocation(line: 150, column: 12, scope: !1621, inlinedAt: !3243)
!3251 = !DILocation(line: 151, column: 6, scope: !1621, inlinedAt: !3243)
!3252 = !DILocation(line: 978, column: 10, scope: !3156, inlinedAt: !3236)
!3253 = !DILocation(line: 979, column: 1, scope: !3156, inlinedAt: !3236)
!3254 = !DILocation(line: 990, column: 3, scope: !3228)
!3255 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !188, file: !188, line: 994, type: !3015, isLocal: false, isDefinition: true, scopeLine: 995, flags: DIFlagPrototyped, isOptimized: true, unit: !160, variables: !3256)
!3256 = !{!3257, !3258}
!3257 = !DILocalVariable(name: "arg", arg: 1, scope: !3255, file: !188, line: 994, type: !36)
!3258 = !DILocalVariable(name: "argsize", arg: 2, scope: !3255, file: !188, line: 994, type: !47)
!3259 = !DILocation(line: 994, column: 33, scope: !3255)
!3260 = !DILocation(line: 994, column: 45, scope: !3255)
!3261 = !DILocation(line: 973, column: 32, scope: !3156, inlinedAt: !3262)
!3262 = distinct !DILocation(line: 996, column: 10, scope: !3255)
!3263 = !DILocation(line: 973, column: 44, scope: !3156, inlinedAt: !3262)
!3264 = !DILocation(line: 973, column: 58, scope: !3156, inlinedAt: !3262)
!3265 = !DILocation(line: 975, column: 3, scope: !3156, inlinedAt: !3262)
!3266 = !DILocation(line: 976, column: 13, scope: !3156, inlinedAt: !3262)
!3267 = !DILocation(line: 975, column: 26, scope: !3156, inlinedAt: !3262)
!3268 = !DILocation(line: 144, column: 43, scope: !1621, inlinedAt: !3269)
!3269 = distinct !DILocation(line: 977, column: 3, scope: !3156, inlinedAt: !3262)
!3270 = !DILocation(line: 144, column: 51, scope: !1621, inlinedAt: !3269)
!3271 = !DILocation(line: 144, column: 58, scope: !1621, inlinedAt: !3269)
!3272 = !DILocation(line: 146, column: 17, scope: !1621, inlinedAt: !3269)
!3273 = !DILocation(line: 148, column: 57, scope: !1639, inlinedAt: !3269)
!3274 = !DILocation(line: 147, column: 17, scope: !1621, inlinedAt: !3269)
!3275 = !DILocation(line: 149, column: 7, scope: !1621, inlinedAt: !3269)
!3276 = !DILocation(line: 150, column: 12, scope: !1621, inlinedAt: !3269)
!3277 = !DILocation(line: 151, column: 6, scope: !1621, inlinedAt: !3269)
!3278 = !DILocation(line: 978, column: 10, scope: !3156, inlinedAt: !3262)
!3279 = !DILocation(line: 979, column: 1, scope: !3156, inlinedAt: !3262)
!3280 = !DILocation(line: 996, column: 3, scope: !3255)
!3281 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !188, file: !188, line: 1000, type: !3029, isLocal: false, isDefinition: true, scopeLine: 1001, flags: DIFlagPrototyped, isOptimized: true, unit: !160, variables: !3282)
!3282 = !{!3283, !3284, !3285, !3286}
!3283 = !DILocalVariable(name: "n", arg: 1, scope: !3281, file: !188, line: 1000, type: !46)
!3284 = !DILocalVariable(name: "s", arg: 2, scope: !3281, file: !188, line: 1000, type: !21)
!3285 = !DILocalVariable(name: "arg", arg: 3, scope: !3281, file: !188, line: 1000, type: !36)
!3286 = !DILocalVariable(name: "options", scope: !3281, file: !188, line: 1002, type: !195)
!3287 = !DILocation(line: 187, column: 26, scope: !3037, inlinedAt: !3288)
!3288 = distinct !DILocation(line: 1003, column: 13, scope: !3281)
!3289 = !DILocation(line: 1000, column: 29, scope: !3281)
!3290 = !DILocation(line: 1000, column: 51, scope: !3281)
!3291 = !DILocation(line: 1000, column: 66, scope: !3281)
!3292 = !DILocation(line: 1002, column: 3, scope: !3281)
!3293 = !DILocation(line: 185, column: 48, scope: !3037, inlinedAt: !3288)
!3294 = !DILocation(line: 187, column: 3, scope: !3037, inlinedAt: !3288)
!3295 = !DILocation(line: 188, column: 13, scope: !3054, inlinedAt: !3288)
!3296 = !DILocation(line: 188, column: 7, scope: !3037, inlinedAt: !3288)
!3297 = !DILocation(line: 189, column: 5, scope: !3054, inlinedAt: !3288)
!3298 = !{!3299}
!3299 = distinct !{!3299, !3300, !"quoting_options_from_style: argument 0"}
!3300 = distinct !{!3300, !"quoting_options_from_style"}
!3301 = !DILocation(line: 191, column: 10, scope: !3037, inlinedAt: !3288)
!3302 = !DILocation(line: 192, column: 1, scope: !3037, inlinedAt: !3288)
!3303 = !DILocation(line: 1003, column: 13, scope: !3281)
!3304 = !DILocation(line: 1002, column: 26, scope: !3281)
!3305 = !DILocation(line: 144, column: 43, scope: !1621, inlinedAt: !3306)
!3306 = distinct !DILocation(line: 1004, column: 3, scope: !3281)
!3307 = !DILocation(line: 144, column: 51, scope: !1621, inlinedAt: !3306)
!3308 = !DILocation(line: 144, column: 58, scope: !1621, inlinedAt: !3306)
!3309 = !DILocation(line: 146, column: 17, scope: !1621, inlinedAt: !3306)
!3310 = !DILocation(line: 148, column: 57, scope: !1639, inlinedAt: !3306)
!3311 = !DILocation(line: 147, column: 17, scope: !1621, inlinedAt: !3306)
!3312 = !DILocation(line: 149, column: 7, scope: !1621, inlinedAt: !3306)
!3313 = !DILocation(line: 150, column: 12, scope: !1621, inlinedAt: !3306)
!3314 = !DILocation(line: 151, column: 6, scope: !1621, inlinedAt: !3306)
!3315 = !DILocation(line: 1005, column: 10, scope: !3281)
!3316 = !DILocation(line: 1006, column: 1, scope: !3281)
!3317 = !DILocation(line: 1005, column: 3, scope: !3281)
!3318 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !188, file: !188, line: 1009, type: !3319, isLocal: false, isDefinition: true, scopeLine: 1011, flags: DIFlagPrototyped, isOptimized: true, unit: !160, variables: !3321)
!3319 = !DISubroutineType(types: !3320)
!3320 = !{!39, !46, !36, !36, !36}
!3321 = !{!3322, !3323, !3324, !3325}
!3322 = !DILocalVariable(name: "n", arg: 1, scope: !3318, file: !188, line: 1009, type: !46)
!3323 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3318, file: !188, line: 1009, type: !36)
!3324 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3318, file: !188, line: 1010, type: !36)
!3325 = !DILocalVariable(name: "arg", arg: 4, scope: !3318, file: !188, line: 1010, type: !36)
!3326 = !DILocation(line: 1009, column: 24, scope: !3318)
!3327 = !DILocation(line: 1009, column: 39, scope: !3318)
!3328 = !DILocation(line: 1010, column: 32, scope: !3318)
!3329 = !DILocation(line: 1010, column: 57, scope: !3318)
!3330 = !DILocalVariable(name: "n", arg: 1, scope: !3331, file: !188, line: 1017, type: !46)
!3331 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !188, file: !188, line: 1017, type: !3332, isLocal: false, isDefinition: true, scopeLine: 1020, flags: DIFlagPrototyped, isOptimized: true, unit: !160, variables: !3334)
!3332 = !DISubroutineType(types: !3333)
!3333 = !{!39, !46, !36, !36, !36, !47}
!3334 = !{!3330, !3335, !3336, !3337, !3338, !3339}
!3335 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3331, file: !188, line: 1017, type: !36)
!3336 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3331, file: !188, line: 1018, type: !36)
!3337 = !DILocalVariable(name: "arg", arg: 4, scope: !3331, file: !188, line: 1019, type: !36)
!3338 = !DILocalVariable(name: "argsize", arg: 5, scope: !3331, file: !188, line: 1019, type: !47)
!3339 = !DILocalVariable(name: "o", scope: !3331, file: !188, line: 1021, type: !195)
!3340 = !DILocation(line: 1017, column: 28, scope: !3331, inlinedAt: !3341)
!3341 = distinct !DILocation(line: 1012, column: 10, scope: !3318)
!3342 = !DILocation(line: 1017, column: 43, scope: !3331, inlinedAt: !3341)
!3343 = !DILocation(line: 1018, column: 36, scope: !3331, inlinedAt: !3341)
!3344 = !DILocation(line: 1019, column: 36, scope: !3331, inlinedAt: !3341)
!3345 = !DILocation(line: 1019, column: 48, scope: !3331, inlinedAt: !3341)
!3346 = !DILocation(line: 1021, column: 3, scope: !3331, inlinedAt: !3341)
!3347 = !DILocation(line: 1021, column: 30, scope: !3331, inlinedAt: !3341)
!3348 = !DILocation(line: 1021, column: 26, scope: !3331, inlinedAt: !3341)
!3349 = !DILocation(line: 171, column: 45, scope: !1671, inlinedAt: !3350)
!3350 = distinct !DILocation(line: 1022, column: 3, scope: !3331, inlinedAt: !3341)
!3351 = !DILocation(line: 172, column: 33, scope: !1671, inlinedAt: !3350)
!3352 = !DILocation(line: 172, column: 57, scope: !1671, inlinedAt: !3350)
!3353 = !DILocation(line: 176, column: 6, scope: !1671, inlinedAt: !3350)
!3354 = !DILocation(line: 176, column: 12, scope: !1671, inlinedAt: !3350)
!3355 = !DILocation(line: 177, column: 8, scope: !1687, inlinedAt: !3350)
!3356 = !DILocation(line: 177, column: 23, scope: !1689, inlinedAt: !3350)
!3357 = !DILocation(line: 177, column: 19, scope: !1687, inlinedAt: !3350)
!3358 = !DILocation(line: 178, column: 5, scope: !1687, inlinedAt: !3350)
!3359 = !DILocation(line: 179, column: 6, scope: !1671, inlinedAt: !3350)
!3360 = !DILocation(line: 179, column: 17, scope: !1671, inlinedAt: !3350)
!3361 = !DILocation(line: 180, column: 6, scope: !1671, inlinedAt: !3350)
!3362 = !DILocation(line: 180, column: 18, scope: !1671, inlinedAt: !3350)
!3363 = !DILocation(line: 1023, column: 10, scope: !3331, inlinedAt: !3341)
!3364 = !DILocation(line: 1024, column: 1, scope: !3331, inlinedAt: !3341)
!3365 = !DILocation(line: 1012, column: 3, scope: !3318)
!3366 = !DILocation(line: 1017, column: 28, scope: !3331)
!3367 = !DILocation(line: 1017, column: 43, scope: !3331)
!3368 = !DILocation(line: 1018, column: 36, scope: !3331)
!3369 = !DILocation(line: 1019, column: 36, scope: !3331)
!3370 = !DILocation(line: 1019, column: 48, scope: !3331)
!3371 = !DILocation(line: 1021, column: 3, scope: !3331)
!3372 = !DILocation(line: 1021, column: 30, scope: !3331)
!3373 = !DILocation(line: 1021, column: 26, scope: !3331)
!3374 = !DILocation(line: 171, column: 45, scope: !1671, inlinedAt: !3375)
!3375 = distinct !DILocation(line: 1022, column: 3, scope: !3331)
!3376 = !DILocation(line: 172, column: 33, scope: !1671, inlinedAt: !3375)
!3377 = !DILocation(line: 172, column: 57, scope: !1671, inlinedAt: !3375)
!3378 = !DILocation(line: 176, column: 6, scope: !1671, inlinedAt: !3375)
!3379 = !DILocation(line: 176, column: 12, scope: !1671, inlinedAt: !3375)
!3380 = !DILocation(line: 177, column: 8, scope: !1687, inlinedAt: !3375)
!3381 = !DILocation(line: 177, column: 23, scope: !1689, inlinedAt: !3375)
!3382 = !DILocation(line: 177, column: 19, scope: !1687, inlinedAt: !3375)
!3383 = !DILocation(line: 178, column: 5, scope: !1687, inlinedAt: !3375)
!3384 = !DILocation(line: 179, column: 6, scope: !1671, inlinedAt: !3375)
!3385 = !DILocation(line: 179, column: 17, scope: !1671, inlinedAt: !3375)
!3386 = !DILocation(line: 180, column: 6, scope: !1671, inlinedAt: !3375)
!3387 = !DILocation(line: 180, column: 18, scope: !1671, inlinedAt: !3375)
!3388 = !DILocation(line: 1023, column: 10, scope: !3331)
!3389 = !DILocation(line: 1024, column: 1, scope: !3331)
!3390 = !DILocation(line: 1023, column: 3, scope: !3331)
!3391 = distinct !DISubprogram(name: "quotearg_custom", scope: !188, file: !188, line: 1027, type: !3392, isLocal: false, isDefinition: true, scopeLine: 1029, flags: DIFlagPrototyped, isOptimized: true, unit: !160, variables: !3394)
!3392 = !DISubroutineType(types: !3393)
!3393 = !{!39, !36, !36, !36}
!3394 = !{!3395, !3396, !3397}
!3395 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3391, file: !188, line: 1027, type: !36)
!3396 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3391, file: !188, line: 1027, type: !36)
!3397 = !DILocalVariable(name: "arg", arg: 3, scope: !3391, file: !188, line: 1028, type: !36)
!3398 = !DILocation(line: 1027, column: 30, scope: !3391)
!3399 = !DILocation(line: 1027, column: 54, scope: !3391)
!3400 = !DILocation(line: 1028, column: 30, scope: !3391)
!3401 = !DILocation(line: 1009, column: 24, scope: !3318, inlinedAt: !3402)
!3402 = distinct !DILocation(line: 1030, column: 10, scope: !3391)
!3403 = !DILocation(line: 1009, column: 39, scope: !3318, inlinedAt: !3402)
!3404 = !DILocation(line: 1010, column: 32, scope: !3318, inlinedAt: !3402)
!3405 = !DILocation(line: 1010, column: 57, scope: !3318, inlinedAt: !3402)
!3406 = !DILocation(line: 1017, column: 28, scope: !3331, inlinedAt: !3407)
!3407 = distinct !DILocation(line: 1012, column: 10, scope: !3318, inlinedAt: !3402)
!3408 = !DILocation(line: 1017, column: 43, scope: !3331, inlinedAt: !3407)
!3409 = !DILocation(line: 1018, column: 36, scope: !3331, inlinedAt: !3407)
!3410 = !DILocation(line: 1019, column: 36, scope: !3331, inlinedAt: !3407)
!3411 = !DILocation(line: 1019, column: 48, scope: !3331, inlinedAt: !3407)
!3412 = !DILocation(line: 1021, column: 3, scope: !3331, inlinedAt: !3407)
!3413 = !DILocation(line: 1021, column: 30, scope: !3331, inlinedAt: !3407)
!3414 = !DILocation(line: 1021, column: 26, scope: !3331, inlinedAt: !3407)
!3415 = !DILocation(line: 171, column: 45, scope: !1671, inlinedAt: !3416)
!3416 = distinct !DILocation(line: 1022, column: 3, scope: !3331, inlinedAt: !3407)
!3417 = !DILocation(line: 172, column: 33, scope: !1671, inlinedAt: !3416)
!3418 = !DILocation(line: 172, column: 57, scope: !1671, inlinedAt: !3416)
!3419 = !DILocation(line: 176, column: 6, scope: !1671, inlinedAt: !3416)
!3420 = !DILocation(line: 176, column: 12, scope: !1671, inlinedAt: !3416)
!3421 = !DILocation(line: 177, column: 8, scope: !1687, inlinedAt: !3416)
!3422 = !DILocation(line: 177, column: 23, scope: !1689, inlinedAt: !3416)
!3423 = !DILocation(line: 177, column: 19, scope: !1687, inlinedAt: !3416)
!3424 = !DILocation(line: 178, column: 5, scope: !1687, inlinedAt: !3416)
!3425 = !DILocation(line: 179, column: 6, scope: !1671, inlinedAt: !3416)
!3426 = !DILocation(line: 179, column: 17, scope: !1671, inlinedAt: !3416)
!3427 = !DILocation(line: 180, column: 6, scope: !1671, inlinedAt: !3416)
!3428 = !DILocation(line: 180, column: 18, scope: !1671, inlinedAt: !3416)
!3429 = !DILocation(line: 1023, column: 10, scope: !3331, inlinedAt: !3407)
!3430 = !DILocation(line: 1024, column: 1, scope: !3331, inlinedAt: !3407)
!3431 = !DILocation(line: 1030, column: 3, scope: !3391)
!3432 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !188, file: !188, line: 1034, type: !3433, isLocal: false, isDefinition: true, scopeLine: 1036, flags: DIFlagPrototyped, isOptimized: true, unit: !160, variables: !3435)
!3433 = !DISubroutineType(types: !3434)
!3434 = !{!39, !36, !36, !36, !47}
!3435 = !{!3436, !3437, !3438, !3439}
!3436 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3432, file: !188, line: 1034, type: !36)
!3437 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3432, file: !188, line: 1034, type: !36)
!3438 = !DILocalVariable(name: "arg", arg: 3, scope: !3432, file: !188, line: 1035, type: !36)
!3439 = !DILocalVariable(name: "argsize", arg: 4, scope: !3432, file: !188, line: 1035, type: !47)
!3440 = !DILocation(line: 1034, column: 34, scope: !3432)
!3441 = !DILocation(line: 1034, column: 58, scope: !3432)
!3442 = !DILocation(line: 1035, column: 34, scope: !3432)
!3443 = !DILocation(line: 1035, column: 46, scope: !3432)
!3444 = !DILocation(line: 1017, column: 28, scope: !3331, inlinedAt: !3445)
!3445 = distinct !DILocation(line: 1037, column: 10, scope: !3432)
!3446 = !DILocation(line: 1017, column: 43, scope: !3331, inlinedAt: !3445)
!3447 = !DILocation(line: 1018, column: 36, scope: !3331, inlinedAt: !3445)
!3448 = !DILocation(line: 1019, column: 36, scope: !3331, inlinedAt: !3445)
!3449 = !DILocation(line: 1019, column: 48, scope: !3331, inlinedAt: !3445)
!3450 = !DILocation(line: 1021, column: 3, scope: !3331, inlinedAt: !3445)
!3451 = !DILocation(line: 1021, column: 30, scope: !3331, inlinedAt: !3445)
!3452 = !DILocation(line: 1021, column: 26, scope: !3331, inlinedAt: !3445)
!3453 = !DILocation(line: 171, column: 45, scope: !1671, inlinedAt: !3454)
!3454 = distinct !DILocation(line: 1022, column: 3, scope: !3331, inlinedAt: !3445)
!3455 = !DILocation(line: 172, column: 33, scope: !1671, inlinedAt: !3454)
!3456 = !DILocation(line: 172, column: 57, scope: !1671, inlinedAt: !3454)
!3457 = !DILocation(line: 176, column: 6, scope: !1671, inlinedAt: !3454)
!3458 = !DILocation(line: 176, column: 12, scope: !1671, inlinedAt: !3454)
!3459 = !DILocation(line: 177, column: 8, scope: !1687, inlinedAt: !3454)
!3460 = !DILocation(line: 177, column: 23, scope: !1689, inlinedAt: !3454)
!3461 = !DILocation(line: 177, column: 19, scope: !1687, inlinedAt: !3454)
!3462 = !DILocation(line: 178, column: 5, scope: !1687, inlinedAt: !3454)
!3463 = !DILocation(line: 179, column: 6, scope: !1671, inlinedAt: !3454)
!3464 = !DILocation(line: 179, column: 17, scope: !1671, inlinedAt: !3454)
!3465 = !DILocation(line: 180, column: 6, scope: !1671, inlinedAt: !3454)
!3466 = !DILocation(line: 180, column: 18, scope: !1671, inlinedAt: !3454)
!3467 = !DILocation(line: 1023, column: 10, scope: !3331, inlinedAt: !3445)
!3468 = !DILocation(line: 1024, column: 1, scope: !3331, inlinedAt: !3445)
!3469 = !DILocation(line: 1037, column: 3, scope: !3432)
!3470 = distinct !DISubprogram(name: "quote_n_mem", scope: !188, file: !188, line: 1052, type: !3471, isLocal: false, isDefinition: true, scopeLine: 1053, flags: DIFlagPrototyped, isOptimized: true, unit: !160, variables: !3473)
!3471 = !DISubroutineType(types: !3472)
!3472 = !{!36, !46, !36, !47}
!3473 = !{!3474, !3475, !3476}
!3474 = !DILocalVariable(name: "n", arg: 1, scope: !3470, file: !188, line: 1052, type: !46)
!3475 = !DILocalVariable(name: "arg", arg: 2, scope: !3470, file: !188, line: 1052, type: !36)
!3476 = !DILocalVariable(name: "argsize", arg: 3, scope: !3470, file: !188, line: 1052, type: !47)
!3477 = !DILocation(line: 1052, column: 18, scope: !3470)
!3478 = !DILocation(line: 1052, column: 33, scope: !3470)
!3479 = !DILocation(line: 1052, column: 45, scope: !3470)
!3480 = !DILocation(line: 1054, column: 10, scope: !3470)
!3481 = !DILocation(line: 1054, column: 3, scope: !3470)
!3482 = distinct !DISubprogram(name: "quote_mem", scope: !188, file: !188, line: 1058, type: !3483, isLocal: false, isDefinition: true, scopeLine: 1059, flags: DIFlagPrototyped, isOptimized: true, unit: !160, variables: !3485)
!3483 = !DISubroutineType(types: !3484)
!3484 = !{!36, !36, !47}
!3485 = !{!3486, !3487}
!3486 = !DILocalVariable(name: "arg", arg: 1, scope: !3482, file: !188, line: 1058, type: !36)
!3487 = !DILocalVariable(name: "argsize", arg: 2, scope: !3482, file: !188, line: 1058, type: !47)
!3488 = !DILocation(line: 1058, column: 24, scope: !3482)
!3489 = !DILocation(line: 1058, column: 36, scope: !3482)
!3490 = !DILocation(line: 1052, column: 18, scope: !3470, inlinedAt: !3491)
!3491 = distinct !DILocation(line: 1060, column: 10, scope: !3482)
!3492 = !DILocation(line: 1052, column: 33, scope: !3470, inlinedAt: !3491)
!3493 = !DILocation(line: 1052, column: 45, scope: !3470, inlinedAt: !3491)
!3494 = !DILocation(line: 1054, column: 10, scope: !3470, inlinedAt: !3491)
!3495 = !DILocation(line: 1060, column: 3, scope: !3482)
!3496 = distinct !DISubprogram(name: "quote_n", scope: !188, file: !188, line: 1064, type: !3497, isLocal: false, isDefinition: true, scopeLine: 1065, flags: DIFlagPrototyped, isOptimized: true, unit: !160, variables: !3499)
!3497 = !DISubroutineType(types: !3498)
!3498 = !{!36, !46, !36}
!3499 = !{!3500, !3501}
!3500 = !DILocalVariable(name: "n", arg: 1, scope: !3496, file: !188, line: 1064, type: !46)
!3501 = !DILocalVariable(name: "arg", arg: 2, scope: !3496, file: !188, line: 1064, type: !36)
!3502 = !DILocation(line: 1064, column: 14, scope: !3496)
!3503 = !DILocation(line: 1064, column: 29, scope: !3496)
!3504 = !DILocation(line: 1052, column: 18, scope: !3470, inlinedAt: !3505)
!3505 = distinct !DILocation(line: 1066, column: 10, scope: !3496)
!3506 = !DILocation(line: 1052, column: 33, scope: !3470, inlinedAt: !3505)
!3507 = !DILocation(line: 1052, column: 45, scope: !3470, inlinedAt: !3505)
!3508 = !DILocation(line: 1054, column: 10, scope: !3470, inlinedAt: !3505)
!3509 = !DILocation(line: 1066, column: 3, scope: !3496)
!3510 = distinct !DISubprogram(name: "quote", scope: !188, file: !188, line: 1070, type: !3511, isLocal: false, isDefinition: true, scopeLine: 1071, flags: DIFlagPrototyped, isOptimized: true, unit: !160, variables: !3513)
!3511 = !DISubroutineType(types: !3512)
!3512 = !{!36, !36}
!3513 = !{!3514}
!3514 = !DILocalVariable(name: "arg", arg: 1, scope: !3510, file: !188, line: 1070, type: !36)
!3515 = !DILocation(line: 1070, column: 20, scope: !3510)
!3516 = !DILocation(line: 1064, column: 14, scope: !3496, inlinedAt: !3517)
!3517 = distinct !DILocation(line: 1072, column: 10, scope: !3510)
!3518 = !DILocation(line: 1064, column: 29, scope: !3496, inlinedAt: !3517)
!3519 = !DILocation(line: 1052, column: 18, scope: !3470, inlinedAt: !3520)
!3520 = distinct !DILocation(line: 1066, column: 10, scope: !3496, inlinedAt: !3517)
!3521 = !DILocation(line: 1052, column: 33, scope: !3470, inlinedAt: !3520)
!3522 = !DILocation(line: 1052, column: 45, scope: !3470, inlinedAt: !3520)
!3523 = !DILocation(line: 1054, column: 10, scope: !3470, inlinedAt: !3520)
!3524 = !DILocation(line: 1072, column: 3, scope: !3510)
!3525 = distinct !DISubprogram(name: "dup_safer", scope: !3526, file: !3526, line: 31, type: !3527, isLocal: false, isDefinition: true, scopeLine: 32, flags: DIFlagPrototyped, isOptimized: true, unit: !626, variables: !3529)
!3526 = !DIFile(filename: "lib/dup-safer.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3527 = !DISubroutineType(types: !3528)
!3528 = !{!46, !46}
!3529 = !{!3530}
!3530 = !DILocalVariable(name: "fd", arg: 1, scope: !3525, file: !3526, line: 31, type: !46)
!3531 = !DILocation(line: 31, column: 16, scope: !3525)
!3532 = !DILocation(line: 33, column: 10, scope: !3525)
!3533 = !DILocation(line: 33, column: 3, scope: !3525)
!3534 = distinct !DISubprogram(name: "version_etc_arn", scope: !632, file: !632, line: 62, type: !3535, isLocal: false, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: true, unit: !628, variables: !3577)
!3535 = !DISubroutineType(types: !3536)
!3536 = !{null, !3537, !36, !36, !36, !1051, !47}
!3537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3538, size: 64)
!3538 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !753, line: 49, baseType: !3539)
!3539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !755, line: 241, size: 1728, elements: !3540)
!3540 = !{!3541, !3542, !3543, !3544, !3545, !3546, !3547, !3548, !3549, !3550, !3551, !3552, !3553, !3561, !3562, !3563, !3564, !3565, !3566, !3567, !3568, !3569, !3570, !3571, !3572, !3573, !3574, !3575, !3576}
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3539, file: !755, line: 242, baseType: !46, size: 32)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3539, file: !755, line: 247, baseType: !39, size: 64, offset: 64)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3539, file: !755, line: 248, baseType: !39, size: 64, offset: 128)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3539, file: !755, line: 249, baseType: !39, size: 64, offset: 192)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3539, file: !755, line: 250, baseType: !39, size: 64, offset: 256)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3539, file: !755, line: 251, baseType: !39, size: 64, offset: 320)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3539, file: !755, line: 252, baseType: !39, size: 64, offset: 384)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3539, file: !755, line: 253, baseType: !39, size: 64, offset: 448)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3539, file: !755, line: 254, baseType: !39, size: 64, offset: 512)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3539, file: !755, line: 256, baseType: !39, size: 64, offset: 576)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3539, file: !755, line: 257, baseType: !39, size: 64, offset: 640)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3539, file: !755, line: 258, baseType: !39, size: 64, offset: 704)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3539, file: !755, line: 260, baseType: !3554, size: 64, offset: 768)
!3554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3555, size: 64)
!3555 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !755, line: 156, size: 192, elements: !3556)
!3556 = !{!3557, !3558, !3560}
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3555, file: !755, line: 157, baseType: !3554, size: 64)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3555, file: !755, line: 158, baseType: !3559, size: 64, offset: 64)
!3559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3539, size: 64)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3555, file: !755, line: 162, baseType: !46, size: 32, offset: 128)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3539, file: !755, line: 262, baseType: !3559, size: 64, offset: 832)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3539, file: !755, line: 264, baseType: !46, size: 32, offset: 896)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3539, file: !755, line: 268, baseType: !46, size: 32, offset: 928)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3539, file: !755, line: 270, baseType: !781, size: 64, offset: 960)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3539, file: !755, line: 274, baseType: !184, size: 16, offset: 1024)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3539, file: !755, line: 275, baseType: !786, size: 8, offset: 1040)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3539, file: !755, line: 276, baseType: !788, size: 8, offset: 1048)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3539, file: !755, line: 280, baseType: !790, size: 64, offset: 1088)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3539, file: !755, line: 289, baseType: !793, size: 64, offset: 1152)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3539, file: !755, line: 297, baseType: !40, size: 64, offset: 1216)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3539, file: !755, line: 298, baseType: !40, size: 64, offset: 1280)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3539, file: !755, line: 299, baseType: !40, size: 64, offset: 1344)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3539, file: !755, line: 300, baseType: !40, size: 64, offset: 1408)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3539, file: !755, line: 302, baseType: !47, size: 64, offset: 1472)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3539, file: !755, line: 303, baseType: !46, size: 32, offset: 1536)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3539, file: !755, line: 305, baseType: !801, size: 160, offset: 1568)
!3577 = !{!3578, !3579, !3580, !3581, !3582, !3583}
!3578 = !DILocalVariable(name: "stream", arg: 1, scope: !3534, file: !632, line: 62, type: !3537)
!3579 = !DILocalVariable(name: "command_name", arg: 2, scope: !3534, file: !632, line: 63, type: !36)
!3580 = !DILocalVariable(name: "package", arg: 3, scope: !3534, file: !632, line: 63, type: !36)
!3581 = !DILocalVariable(name: "version", arg: 4, scope: !3534, file: !632, line: 64, type: !36)
!3582 = !DILocalVariable(name: "authors", arg: 5, scope: !3534, file: !632, line: 65, type: !1051)
!3583 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3534, file: !632, line: 65, type: !47)
!3584 = !DILocation(line: 62, column: 24, scope: !3534)
!3585 = !DILocation(line: 63, column: 30, scope: !3534)
!3586 = !DILocation(line: 63, column: 56, scope: !3534)
!3587 = !DILocation(line: 64, column: 30, scope: !3534)
!3588 = !DILocation(line: 65, column: 39, scope: !3534)
!3589 = !DILocation(line: 65, column: 55, scope: !3534)
!3590 = !DILocation(line: 67, column: 7, scope: !3591)
!3591 = distinct !DILexicalBlock(scope: !3534, file: !632, line: 67, column: 7)
!3592 = !DILocation(line: 67, column: 7, scope: !3534)
!3593 = !DILocation(line: 68, column: 5, scope: !3591)
!3594 = !DILocation(line: 70, column: 5, scope: !3591)
!3595 = !DILocation(line: 84, column: 3, scope: !3534)
!3596 = !DILocation(line: 84, column: 3, scope: !3597)
!3597 = !DILexicalBlockFile(scope: !3534, file: !632, discriminator: 1)
!3598 = !DILocation(line: 86, column: 3, scope: !3534)
!3599 = !DILocation(line: 86, column: 3, scope: !3597)
!3600 = !DILocation(line: 95, column: 3, scope: !3534)
!3601 = !DILocation(line: 99, column: 7, scope: !3602)
!3602 = distinct !DILexicalBlock(scope: !3534, file: !632, line: 96, column: 5)
!3603 = !DILocation(line: 102, column: 7, scope: !3602)
!3604 = !DILocation(line: 102, column: 7, scope: !3605)
!3605 = !DILexicalBlockFile(scope: !3602, file: !632, discriminator: 1)
!3606 = !DILocation(line: 103, column: 7, scope: !3602)
!3607 = !DILocation(line: 106, column: 7, scope: !3602)
!3608 = !DILocation(line: 106, column: 7, scope: !3605)
!3609 = !DILocation(line: 107, column: 7, scope: !3602)
!3610 = !DILocation(line: 110, column: 7, scope: !3602)
!3611 = !DILocation(line: 110, column: 7, scope: !3605)
!3612 = !DILocation(line: 112, column: 7, scope: !3602)
!3613 = !DILocation(line: 117, column: 7, scope: !3602)
!3614 = !DILocation(line: 117, column: 7, scope: !3605)
!3615 = !DILocation(line: 119, column: 7, scope: !3602)
!3616 = !DILocation(line: 124, column: 7, scope: !3602)
!3617 = !DILocation(line: 124, column: 7, scope: !3605)
!3618 = !DILocation(line: 126, column: 7, scope: !3602)
!3619 = !DILocation(line: 131, column: 7, scope: !3602)
!3620 = !DILocation(line: 131, column: 7, scope: !3605)
!3621 = !DILocation(line: 134, column: 7, scope: !3602)
!3622 = !DILocation(line: 139, column: 7, scope: !3602)
!3623 = !DILocation(line: 139, column: 7, scope: !3605)
!3624 = !DILocation(line: 142, column: 7, scope: !3602)
!3625 = !DILocation(line: 147, column: 7, scope: !3602)
!3626 = !DILocation(line: 147, column: 7, scope: !3605)
!3627 = !DILocation(line: 151, column: 7, scope: !3602)
!3628 = !DILocation(line: 156, column: 7, scope: !3602)
!3629 = !DILocation(line: 156, column: 7, scope: !3605)
!3630 = !DILocation(line: 160, column: 7, scope: !3602)
!3631 = !DILocation(line: 167, column: 7, scope: !3602)
!3632 = !DILocation(line: 167, column: 7, scope: !3605)
!3633 = !DILocation(line: 171, column: 7, scope: !3602)
!3634 = !DILocation(line: 173, column: 1, scope: !3534)
!3635 = distinct !DISubprogram(name: "version_etc_ar", scope: !632, file: !632, line: 180, type: !3636, isLocal: false, isDefinition: true, scopeLine: 183, flags: DIFlagPrototyped, isOptimized: true, unit: !628, variables: !3638)
!3636 = !DISubroutineType(types: !3637)
!3637 = !{null, !3537, !36, !36, !36, !1051}
!3638 = !{!3639, !3640, !3641, !3642, !3643, !3644}
!3639 = !DILocalVariable(name: "stream", arg: 1, scope: !3635, file: !632, line: 180, type: !3537)
!3640 = !DILocalVariable(name: "command_name", arg: 2, scope: !3635, file: !632, line: 181, type: !36)
!3641 = !DILocalVariable(name: "package", arg: 3, scope: !3635, file: !632, line: 181, type: !36)
!3642 = !DILocalVariable(name: "version", arg: 4, scope: !3635, file: !632, line: 182, type: !36)
!3643 = !DILocalVariable(name: "authors", arg: 5, scope: !3635, file: !632, line: 182, type: !1051)
!3644 = !DILocalVariable(name: "n_authors", scope: !3635, file: !632, line: 184, type: !47)
!3645 = !DILocation(line: 180, column: 23, scope: !3635)
!3646 = !DILocation(line: 181, column: 29, scope: !3635)
!3647 = !DILocation(line: 181, column: 55, scope: !3635)
!3648 = !DILocation(line: 182, column: 29, scope: !3635)
!3649 = !DILocation(line: 182, column: 59, scope: !3635)
!3650 = !DILocation(line: 184, column: 10, scope: !3635)
!3651 = !DILocation(line: 186, column: 8, scope: !3652)
!3652 = distinct !DILexicalBlock(scope: !3635, file: !632, line: 186, column: 3)
!3653 = !DILocation(line: 186, column: 23, scope: !3654)
!3654 = !DILexicalBlockFile(scope: !3655, file: !632, discriminator: 1)
!3655 = distinct !DILexicalBlock(scope: !3652, file: !632, line: 186, column: 3)
!3656 = !DILocation(line: 186, column: 3, scope: !3657)
!3657 = !DILexicalBlockFile(scope: !3652, file: !632, discriminator: 1)
!3658 = !DILocation(line: 186, column: 52, scope: !3659)
!3659 = !DILexicalBlockFile(scope: !3655, file: !632, discriminator: 3)
!3660 = distinct !{!3660, !3661, !3662}
!3661 = !DILocation(line: 186, column: 3, scope: !3652)
!3662 = !DILocation(line: 187, column: 5, scope: !3652)
!3663 = !DILocation(line: 188, column: 3, scope: !3635)
!3664 = !DILocation(line: 189, column: 1, scope: !3635)
!3665 = distinct !DISubprogram(name: "version_etc_va", scope: !632, file: !632, line: 196, type: !3666, isLocal: false, isDefinition: true, scopeLine: 199, flags: DIFlagPrototyped, isOptimized: true, unit: !628, variables: !3675)
!3666 = !DISubroutineType(types: !3667)
!3667 = !{null, !3537, !36, !36, !36, !3668}
!3668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3669, size: 64)
!3669 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !629, line: 189, size: 192, elements: !3670)
!3670 = !{!3671, !3672, !3673, !3674}
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !3669, file: !629, line: 189, baseType: !201, size: 32)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !3669, file: !629, line: 189, baseType: !201, size: 32, offset: 32)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !3669, file: !629, line: 189, baseType: !40, size: 64, offset: 64)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !3669, file: !629, line: 189, baseType: !40, size: 64, offset: 128)
!3675 = !{!3676, !3677, !3678, !3679, !3680, !3681, !3682}
!3676 = !DILocalVariable(name: "stream", arg: 1, scope: !3665, file: !632, line: 196, type: !3537)
!3677 = !DILocalVariable(name: "command_name", arg: 2, scope: !3665, file: !632, line: 197, type: !36)
!3678 = !DILocalVariable(name: "package", arg: 3, scope: !3665, file: !632, line: 197, type: !36)
!3679 = !DILocalVariable(name: "version", arg: 4, scope: !3665, file: !632, line: 198, type: !36)
!3680 = !DILocalVariable(name: "authors", arg: 5, scope: !3665, file: !632, line: 198, type: !3668)
!3681 = !DILocalVariable(name: "n_authors", scope: !3665, file: !632, line: 200, type: !47)
!3682 = !DILocalVariable(name: "authtab", scope: !3665, file: !632, line: 201, type: !3683)
!3683 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 640, elements: !191)
!3684 = !DILocation(line: 196, column: 23, scope: !3665)
!3685 = !DILocation(line: 197, column: 29, scope: !3665)
!3686 = !DILocation(line: 197, column: 55, scope: !3665)
!3687 = !DILocation(line: 198, column: 29, scope: !3665)
!3688 = !DILocation(line: 198, column: 46, scope: !3665)
!3689 = !DILocation(line: 201, column: 3, scope: !3665)
!3690 = !DILocation(line: 201, column: 15, scope: !3665)
!3691 = !DILocation(line: 200, column: 10, scope: !3665)
!3692 = !DILocation(line: 205, column: 35, scope: !3693)
!3693 = !DILexicalBlockFile(scope: !3694, file: !632, discriminator: 1)
!3694 = distinct !DILexicalBlock(scope: !3695, file: !632, line: 203, column: 3)
!3695 = distinct !DILexicalBlock(scope: !3665, file: !632, line: 203, column: 3)
!3696 = !DILocation(line: 205, column: 35, scope: !3697)
!3697 = !DILexicalBlockFile(scope: !3694, file: !632, discriminator: 2)
!3698 = !DILocation(line: 205, column: 35, scope: !3699)
!3699 = !DILexicalBlockFile(scope: !3694, file: !632, discriminator: 3)
!3700 = !DILocation(line: 205, column: 35, scope: !3701)
!3701 = !DILexicalBlockFile(scope: !3694, file: !632, discriminator: 4)
!3702 = !DILocation(line: 205, column: 14, scope: !3701)
!3703 = !DILocation(line: 205, column: 33, scope: !3701)
!3704 = !DILocation(line: 205, column: 67, scope: !3701)
!3705 = !DILocation(line: 203, column: 3, scope: !3706)
!3706 = !DILexicalBlockFile(scope: !3695, file: !632, discriminator: 1)
!3707 = !DILocation(line: 208, column: 3, scope: !3665)
!3708 = !DILocation(line: 210, column: 1, scope: !3665)
!3709 = distinct !DISubprogram(name: "version_etc", scope: !632, file: !632, line: 227, type: !3710, isLocal: false, isDefinition: true, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: true, unit: !628, variables: !3712)
!3710 = !DISubroutineType(types: !3711)
!3711 = !{null, !3537, !36, !36, !36, null}
!3712 = !{!3713, !3714, !3715, !3716, !3717}
!3713 = !DILocalVariable(name: "stream", arg: 1, scope: !3709, file: !632, line: 227, type: !3537)
!3714 = !DILocalVariable(name: "command_name", arg: 2, scope: !3709, file: !632, line: 228, type: !36)
!3715 = !DILocalVariable(name: "package", arg: 3, scope: !3709, file: !632, line: 228, type: !36)
!3716 = !DILocalVariable(name: "version", arg: 4, scope: !3709, file: !632, line: 229, type: !36)
!3717 = !DILocalVariable(name: "authors", scope: !3709, file: !632, line: 231, type: !3718)
!3718 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !753, line: 80, baseType: !3719)
!3719 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !250, line: 50, baseType: !3720)
!3720 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !629, line: 231, baseType: !3721)
!3721 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3669, size: 192, elements: !259)
!3722 = !DILocation(line: 227, column: 20, scope: !3709)
!3723 = !DILocation(line: 228, column: 26, scope: !3709)
!3724 = !DILocation(line: 228, column: 52, scope: !3709)
!3725 = !DILocation(line: 229, column: 26, scope: !3709)
!3726 = !DILocation(line: 231, column: 3, scope: !3709)
!3727 = !DILocation(line: 231, column: 11, scope: !3709)
!3728 = !DILocation(line: 233, column: 3, scope: !3709)
!3729 = !DILocation(line: 234, column: 3, scope: !3709)
!3730 = !DILocation(line: 235, column: 3, scope: !3709)
!3731 = !DILocation(line: 236, column: 1, scope: !3709)
!3732 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !632, file: !632, line: 239, type: !134, isLocal: false, isDefinition: true, scopeLine: 240, flags: DIFlagPrototyped, isOptimized: true, unit: !628, variables: !121)
!3733 = !DILocation(line: 245, column: 3, scope: !3732)
!3734 = !DILocation(line: 245, column: 3, scope: !3735)
!3735 = !DILexicalBlockFile(scope: !3732, file: !632, discriminator: 1)
!3736 = !DILocation(line: 251, column: 3, scope: !3732)
!3737 = !DILocation(line: 251, column: 3, scope: !3735)
!3738 = !DILocation(line: 256, column: 3, scope: !3732)
!3739 = !DILocation(line: 256, column: 3, scope: !3735)
!3740 = !DILocation(line: 258, column: 1, scope: !3732)
!3741 = distinct !DISubprogram(name: "xnmalloc", scope: !640, file: !640, line: 105, type: !878, isLocal: false, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: true, unit: !636, variables: !3742)
!3742 = !{!3743, !3744}
!3743 = !DILocalVariable(name: "n", arg: 1, scope: !3741, file: !640, line: 105, type: !47)
!3744 = !DILocalVariable(name: "s", arg: 2, scope: !3741, file: !640, line: 105, type: !47)
!3745 = !DILocation(line: 105, column: 18, scope: !3741)
!3746 = !DILocation(line: 105, column: 28, scope: !3741)
!3747 = !DILocation(line: 107, column: 7, scope: !3748)
!3748 = distinct !DILexicalBlock(scope: !3741, file: !640, line: 107, column: 7)
!3749 = !DILocation(line: 107, column: 7, scope: !3741)
!3750 = !DILocation(line: 108, column: 5, scope: !3748)
!3751 = !DILocation(line: 109, column: 21, scope: !3741)
!3752 = !DILocalVariable(name: "n", arg: 1, scope: !3753, file: !3754, line: 39, type: !47)
!3753 = distinct !DISubprogram(name: "xmalloc", scope: !3754, file: !3754, line: 39, type: !3755, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !636, variables: !3757)
!3754 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3755 = !DISubroutineType(types: !3756)
!3756 = !{!40, !47}
!3757 = !{!3752, !3758}
!3758 = !DILocalVariable(name: "p", scope: !3753, file: !3754, line: 41, type: !40)
!3759 = !DILocation(line: 39, column: 17, scope: !3753, inlinedAt: !3760)
!3760 = distinct !DILocation(line: 109, column: 10, scope: !3741)
!3761 = !DILocation(line: 41, column: 13, scope: !3753, inlinedAt: !3760)
!3762 = !DILocation(line: 41, column: 9, scope: !3753, inlinedAt: !3760)
!3763 = !DILocation(line: 42, column: 8, scope: !3764, inlinedAt: !3760)
!3764 = distinct !DILexicalBlock(scope: !3753, file: !3754, line: 42, column: 7)
!3765 = !DILocation(line: 42, column: 15, scope: !3766, inlinedAt: !3760)
!3766 = !DILexicalBlockFile(scope: !3764, file: !3754, discriminator: 1)
!3767 = !DILocation(line: 42, column: 10, scope: !3764, inlinedAt: !3760)
!3768 = !DILocation(line: 43, column: 5, scope: !3764, inlinedAt: !3760)
!3769 = !DILocation(line: 109, column: 3, scope: !3741)
!3770 = !DILocation(line: 39, column: 17, scope: !3753)
!3771 = !DILocation(line: 41, column: 13, scope: !3753)
!3772 = !DILocation(line: 41, column: 9, scope: !3753)
!3773 = !DILocation(line: 42, column: 8, scope: !3764)
!3774 = !DILocation(line: 42, column: 15, scope: !3766)
!3775 = !DILocation(line: 42, column: 10, scope: !3764)
!3776 = !DILocation(line: 43, column: 5, scope: !3764)
!3777 = !DILocation(line: 44, column: 3, scope: !3753)
!3778 = distinct !DISubprogram(name: "xnrealloc", scope: !640, file: !640, line: 118, type: !3779, isLocal: false, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !636, variables: !3781)
!3779 = !DISubroutineType(types: !3780)
!3780 = !{!40, !40, !47, !47}
!3781 = !{!3782, !3783, !3784}
!3782 = !DILocalVariable(name: "p", arg: 1, scope: !3778, file: !640, line: 118, type: !40)
!3783 = !DILocalVariable(name: "n", arg: 2, scope: !3778, file: !640, line: 118, type: !47)
!3784 = !DILocalVariable(name: "s", arg: 3, scope: !3778, file: !640, line: 118, type: !47)
!3785 = !DILocation(line: 118, column: 18, scope: !3778)
!3786 = !DILocation(line: 118, column: 28, scope: !3778)
!3787 = !DILocation(line: 118, column: 38, scope: !3778)
!3788 = !DILocation(line: 120, column: 7, scope: !3789)
!3789 = distinct !DILexicalBlock(scope: !3778, file: !640, line: 120, column: 7)
!3790 = !DILocation(line: 120, column: 7, scope: !3778)
!3791 = !DILocation(line: 121, column: 5, scope: !3789)
!3792 = !DILocation(line: 122, column: 25, scope: !3778)
!3793 = !DILocalVariable(name: "p", arg: 1, scope: !3794, file: !3754, line: 51, type: !40)
!3794 = distinct !DISubprogram(name: "xrealloc", scope: !3754, file: !3754, line: 51, type: !3795, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !636, variables: !3797)
!3795 = !DISubroutineType(types: !3796)
!3796 = !{!40, !40, !47}
!3797 = !{!3793, !3798}
!3798 = !DILocalVariable(name: "n", arg: 2, scope: !3794, file: !3754, line: 51, type: !47)
!3799 = !DILocation(line: 51, column: 17, scope: !3794, inlinedAt: !3800)
!3800 = distinct !DILocation(line: 122, column: 10, scope: !3778)
!3801 = !DILocation(line: 51, column: 27, scope: !3794, inlinedAt: !3800)
!3802 = !DILocation(line: 53, column: 8, scope: !3803, inlinedAt: !3800)
!3803 = distinct !DILexicalBlock(scope: !3794, file: !3754, line: 53, column: 7)
!3804 = !DILocation(line: 53, column: 13, scope: !3805, inlinedAt: !3800)
!3805 = !DILexicalBlockFile(scope: !3803, file: !3754, discriminator: 1)
!3806 = !DILocation(line: 53, column: 10, scope: !3803, inlinedAt: !3800)
!3807 = !DILocation(line: 57, column: 7, scope: !3808, inlinedAt: !3800)
!3808 = distinct !DILexicalBlock(scope: !3803, file: !3754, line: 54, column: 5)
!3809 = !DILocation(line: 58, column: 7, scope: !3808, inlinedAt: !3800)
!3810 = !DILocation(line: 61, column: 7, scope: !3794, inlinedAt: !3800)
!3811 = !DILocation(line: 62, column: 8, scope: !3812, inlinedAt: !3800)
!3812 = distinct !DILexicalBlock(scope: !3794, file: !3754, line: 62, column: 7)
!3813 = !DILocation(line: 62, column: 13, scope: !3814, inlinedAt: !3800)
!3814 = !DILexicalBlockFile(scope: !3812, file: !3754, discriminator: 1)
!3815 = !DILocation(line: 62, column: 10, scope: !3812, inlinedAt: !3800)
!3816 = !DILocation(line: 63, column: 5, scope: !3812, inlinedAt: !3800)
!3817 = !DILocation(line: 122, column: 3, scope: !3778)
!3818 = !DILocation(line: 51, column: 17, scope: !3794)
!3819 = !DILocation(line: 51, column: 27, scope: !3794)
!3820 = !DILocation(line: 53, column: 8, scope: !3803)
!3821 = !DILocation(line: 53, column: 13, scope: !3805)
!3822 = !DILocation(line: 53, column: 10, scope: !3803)
!3823 = !DILocation(line: 57, column: 7, scope: !3808)
!3824 = !DILocation(line: 58, column: 7, scope: !3808)
!3825 = !DILocation(line: 61, column: 7, scope: !3794)
!3826 = !DILocation(line: 62, column: 8, scope: !3812)
!3827 = !DILocation(line: 62, column: 13, scope: !3814)
!3828 = !DILocation(line: 62, column: 10, scope: !3812)
!3829 = !DILocation(line: 63, column: 5, scope: !3812)
!3830 = !DILocation(line: 65, column: 1, scope: !3794)
!3831 = !DILocation(line: 180, column: 19, scope: !641)
!3832 = !DILocation(line: 180, column: 30, scope: !641)
!3833 = !DILocation(line: 180, column: 41, scope: !641)
!3834 = !DILocation(line: 182, column: 14, scope: !641)
!3835 = !DILocation(line: 182, column: 10, scope: !641)
!3836 = !DILocation(line: 184, column: 9, scope: !3837)
!3837 = distinct !DILexicalBlock(scope: !641, file: !640, line: 184, column: 7)
!3838 = !DILocation(line: 184, column: 7, scope: !641)
!3839 = !DILocation(line: 186, column: 13, scope: !3840)
!3840 = distinct !DILexicalBlock(scope: !3841, file: !640, line: 186, column: 11)
!3841 = distinct !DILexicalBlock(scope: !3837, file: !640, line: 185, column: 5)
!3842 = !DILocation(line: 186, column: 11, scope: !3841)
!3843 = !DILocation(line: 194, column: 30, scope: !3844)
!3844 = distinct !DILexicalBlock(scope: !3840, file: !640, line: 187, column: 9)
!3845 = !DILocation(line: 195, column: 16, scope: !3844)
!3846 = !DILocation(line: 195, column: 13, scope: !3844)
!3847 = !DILocation(line: 196, column: 9, scope: !3844)
!3848 = !DILocation(line: 204, column: 69, scope: !3849)
!3849 = distinct !DILexicalBlock(scope: !3850, file: !640, line: 204, column: 11)
!3850 = distinct !DILexicalBlock(scope: !3837, file: !640, line: 199, column: 5)
!3851 = !DILocation(line: 205, column: 11, scope: !3849)
!3852 = !DILocation(line: 204, column: 11, scope: !3850)
!3853 = !DILocation(line: 206, column: 9, scope: !3849)
!3854 = !DILocation(line: 210, column: 7, scope: !641)
!3855 = !DILocation(line: 211, column: 25, scope: !641)
!3856 = !DILocation(line: 51, column: 17, scope: !3794, inlinedAt: !3857)
!3857 = distinct !DILocation(line: 211, column: 10, scope: !641)
!3858 = !DILocation(line: 51, column: 27, scope: !3794, inlinedAt: !3857)
!3859 = !DILocation(line: 53, column: 10, scope: !3803, inlinedAt: !3857)
!3860 = !DILocation(line: 207, column: 14, scope: !3850)
!3861 = !DILocation(line: 207, column: 18, scope: !3850)
!3862 = !DILocation(line: 207, column: 9, scope: !3850)
!3863 = !DILocation(line: 53, column: 8, scope: !3803, inlinedAt: !3857)
!3864 = !DILocation(line: 57, column: 7, scope: !3808, inlinedAt: !3857)
!3865 = !DILocation(line: 58, column: 7, scope: !3808, inlinedAt: !3857)
!3866 = !DILocation(line: 61, column: 7, scope: !3794, inlinedAt: !3857)
!3867 = !DILocation(line: 62, column: 8, scope: !3812, inlinedAt: !3857)
!3868 = !DILocation(line: 62, column: 13, scope: !3814, inlinedAt: !3857)
!3869 = !DILocation(line: 62, column: 10, scope: !3812, inlinedAt: !3857)
!3870 = !DILocation(line: 63, column: 5, scope: !3812, inlinedAt: !3857)
!3871 = !DILocation(line: 211, column: 3, scope: !641)
!3872 = distinct !DISubprogram(name: "xcharalloc", scope: !640, file: !640, line: 220, type: !2798, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !636, variables: !3873)
!3873 = !{!3874}
!3874 = !DILocalVariable(name: "n", arg: 1, scope: !3872, file: !640, line: 220, type: !47)
!3875 = !DILocation(line: 220, column: 20, scope: !3872)
!3876 = !DILocation(line: 39, column: 17, scope: !3753, inlinedAt: !3877)
!3877 = distinct !DILocation(line: 222, column: 10, scope: !3872)
!3878 = !DILocation(line: 41, column: 13, scope: !3753, inlinedAt: !3877)
!3879 = !DILocation(line: 41, column: 9, scope: !3753, inlinedAt: !3877)
!3880 = !DILocation(line: 42, column: 8, scope: !3764, inlinedAt: !3877)
!3881 = !DILocation(line: 42, column: 15, scope: !3766, inlinedAt: !3877)
!3882 = !DILocation(line: 42, column: 10, scope: !3764, inlinedAt: !3877)
!3883 = !DILocation(line: 43, column: 5, scope: !3764, inlinedAt: !3877)
!3884 = !DILocation(line: 222, column: 3, scope: !3872)
!3885 = distinct !DISubprogram(name: "x2realloc", scope: !3754, file: !3754, line: 74, type: !3886, isLocal: false, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, unit: !636, variables: !3888)
!3886 = !DISubroutineType(types: !3887)
!3887 = !{!40, !40, !644}
!3888 = !{!3889, !3890}
!3889 = !DILocalVariable(name: "p", arg: 1, scope: !3885, file: !3754, line: 74, type: !40)
!3890 = !DILocalVariable(name: "pn", arg: 2, scope: !3885, file: !3754, line: 74, type: !644)
!3891 = !DILocation(line: 74, column: 18, scope: !3885)
!3892 = !DILocation(line: 74, column: 29, scope: !3885)
!3893 = !DILocation(line: 180, column: 19, scope: !641, inlinedAt: !3894)
!3894 = distinct !DILocation(line: 76, column: 10, scope: !3885)
!3895 = !DILocation(line: 180, column: 30, scope: !641, inlinedAt: !3894)
!3896 = !DILocation(line: 180, column: 41, scope: !641, inlinedAt: !3894)
!3897 = !DILocation(line: 182, column: 14, scope: !641, inlinedAt: !3894)
!3898 = !DILocation(line: 182, column: 10, scope: !641, inlinedAt: !3894)
!3899 = !DILocation(line: 184, column: 9, scope: !3837, inlinedAt: !3894)
!3900 = !DILocation(line: 184, column: 7, scope: !641, inlinedAt: !3894)
!3901 = !DILocation(line: 186, column: 13, scope: !3840, inlinedAt: !3894)
!3902 = !DILocation(line: 186, column: 11, scope: !3841, inlinedAt: !3894)
!3903 = !DILocation(line: 210, column: 7, scope: !641, inlinedAt: !3894)
!3904 = !DILocation(line: 51, column: 17, scope: !3794, inlinedAt: !3905)
!3905 = distinct !DILocation(line: 211, column: 10, scope: !641, inlinedAt: !3894)
!3906 = !DILocation(line: 51, column: 27, scope: !3794, inlinedAt: !3905)
!3907 = !DILocation(line: 53, column: 10, scope: !3803, inlinedAt: !3905)
!3908 = !DILocation(line: 205, column: 11, scope: !3849, inlinedAt: !3894)
!3909 = !DILocation(line: 204, column: 11, scope: !3850, inlinedAt: !3894)
!3910 = !DILocation(line: 206, column: 9, scope: !3849, inlinedAt: !3894)
!3911 = !DILocation(line: 207, column: 14, scope: !3850, inlinedAt: !3894)
!3912 = !DILocation(line: 207, column: 18, scope: !3850, inlinedAt: !3894)
!3913 = !DILocation(line: 207, column: 9, scope: !3850, inlinedAt: !3894)
!3914 = !DILocation(line: 53, column: 8, scope: !3803, inlinedAt: !3905)
!3915 = !DILocation(line: 57, column: 7, scope: !3808, inlinedAt: !3905)
!3916 = !DILocation(line: 58, column: 7, scope: !3808, inlinedAt: !3905)
!3917 = !DILocation(line: 61, column: 7, scope: !3794, inlinedAt: !3905)
!3918 = !DILocation(line: 62, column: 8, scope: !3812, inlinedAt: !3905)
!3919 = !DILocation(line: 62, column: 13, scope: !3814, inlinedAt: !3905)
!3920 = !DILocation(line: 62, column: 10, scope: !3812, inlinedAt: !3905)
!3921 = !DILocation(line: 63, column: 5, scope: !3812, inlinedAt: !3905)
!3922 = !DILocation(line: 76, column: 3, scope: !3885)
!3923 = distinct !DISubprogram(name: "xzalloc", scope: !3754, file: !3754, line: 84, type: !3755, isLocal: false, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: true, unit: !636, variables: !3924)
!3924 = !{!3925}
!3925 = !DILocalVariable(name: "s", arg: 1, scope: !3923, file: !3754, line: 84, type: !47)
!3926 = !DILocation(line: 84, column: 17, scope: !3923)
!3927 = !DILocation(line: 39, column: 17, scope: !3753, inlinedAt: !3928)
!3928 = distinct !DILocation(line: 86, column: 18, scope: !3923)
!3929 = !DILocation(line: 41, column: 13, scope: !3753, inlinedAt: !3928)
!3930 = !DILocation(line: 41, column: 9, scope: !3753, inlinedAt: !3928)
!3931 = !DILocation(line: 42, column: 8, scope: !3764, inlinedAt: !3928)
!3932 = !DILocation(line: 42, column: 15, scope: !3766, inlinedAt: !3928)
!3933 = !DILocation(line: 42, column: 10, scope: !3764, inlinedAt: !3928)
!3934 = !DILocation(line: 43, column: 5, scope: !3764, inlinedAt: !3928)
!3935 = !DILocation(line: 86, column: 10, scope: !3923)
!3936 = !DILocation(line: 86, column: 3, scope: !3923)
!3937 = distinct !DISubprogram(name: "xcalloc", scope: !3754, file: !3754, line: 93, type: !878, isLocal: false, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: true, unit: !636, variables: !3938)
!3938 = !{!3939, !3940, !3941}
!3939 = !DILocalVariable(name: "n", arg: 1, scope: !3937, file: !3754, line: 93, type: !47)
!3940 = !DILocalVariable(name: "s", arg: 2, scope: !3937, file: !3754, line: 93, type: !47)
!3941 = !DILocalVariable(name: "p", scope: !3937, file: !3754, line: 95, type: !40)
!3942 = !DILocation(line: 93, column: 17, scope: !3937)
!3943 = !DILocation(line: 93, column: 27, scope: !3937)
!3944 = !DILocation(line: 100, column: 7, scope: !3945)
!3945 = distinct !DILexicalBlock(scope: !3937, file: !3754, line: 100, column: 7)
!3946 = !DILocation(line: 101, column: 7, scope: !3945)
!3947 = !DILocation(line: 101, column: 18, scope: !3948)
!3948 = !DILexicalBlockFile(scope: !3945, file: !3754, discriminator: 1)
!3949 = !DILocation(line: 95, column: 9, scope: !3937)
!3950 = !DILocation(line: 101, column: 16, scope: !3948)
!3951 = !DILocation(line: 100, column: 7, scope: !3952)
!3952 = !DILexicalBlockFile(scope: !3937, file: !3754, discriminator: 1)
!3953 = !DILocation(line: 102, column: 5, scope: !3945)
!3954 = !DILocation(line: 103, column: 3, scope: !3937)
!3955 = distinct !DISubprogram(name: "xmemdup", scope: !3754, file: !3754, line: 111, type: !3956, isLocal: false, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: true, unit: !636, variables: !3958)
!3956 = !DISubroutineType(types: !3957)
!3957 = !{!40, !50, !47}
!3958 = !{!3959, !3960}
!3959 = !DILocalVariable(name: "p", arg: 1, scope: !3955, file: !3754, line: 111, type: !50)
!3960 = !DILocalVariable(name: "s", arg: 2, scope: !3955, file: !3754, line: 111, type: !47)
!3961 = !DILocation(line: 111, column: 22, scope: !3955)
!3962 = !DILocation(line: 111, column: 32, scope: !3955)
!3963 = !DILocation(line: 39, column: 17, scope: !3753, inlinedAt: !3964)
!3964 = distinct !DILocation(line: 113, column: 18, scope: !3955)
!3965 = !DILocation(line: 41, column: 13, scope: !3753, inlinedAt: !3964)
!3966 = !DILocation(line: 41, column: 9, scope: !3753, inlinedAt: !3964)
!3967 = !DILocation(line: 42, column: 8, scope: !3764, inlinedAt: !3964)
!3968 = !DILocation(line: 42, column: 15, scope: !3766, inlinedAt: !3964)
!3969 = !DILocation(line: 42, column: 10, scope: !3764, inlinedAt: !3964)
!3970 = !DILocation(line: 43, column: 5, scope: !3764, inlinedAt: !3964)
!3971 = !DILocation(line: 113, column: 10, scope: !3955)
!3972 = !DILocation(line: 113, column: 3, scope: !3955)
!3973 = distinct !DISubprogram(name: "xstrdup", scope: !3754, file: !3754, line: 119, type: !3004, isLocal: false, isDefinition: true, scopeLine: 120, flags: DIFlagPrototyped, isOptimized: true, unit: !636, variables: !3974)
!3974 = !{!3975}
!3975 = !DILocalVariable(name: "string", arg: 1, scope: !3973, file: !3754, line: 119, type: !36)
!3976 = !DILocation(line: 119, column: 22, scope: !3973)
!3977 = !DILocation(line: 121, column: 27, scope: !3973)
!3978 = !DILocation(line: 121, column: 43, scope: !3973)
!3979 = !DILocation(line: 111, column: 22, scope: !3955, inlinedAt: !3980)
!3980 = distinct !DILocation(line: 121, column: 10, scope: !3981)
!3981 = !DILexicalBlockFile(scope: !3973, file: !3754, discriminator: 1)
!3982 = !DILocation(line: 111, column: 32, scope: !3955, inlinedAt: !3980)
!3983 = !DILocation(line: 39, column: 17, scope: !3753, inlinedAt: !3984)
!3984 = distinct !DILocation(line: 113, column: 18, scope: !3955, inlinedAt: !3980)
!3985 = !DILocation(line: 41, column: 13, scope: !3753, inlinedAt: !3984)
!3986 = !DILocation(line: 41, column: 9, scope: !3753, inlinedAt: !3984)
!3987 = !DILocation(line: 42, column: 8, scope: !3764, inlinedAt: !3984)
!3988 = !DILocation(line: 42, column: 15, scope: !3766, inlinedAt: !3984)
!3989 = !DILocation(line: 42, column: 10, scope: !3764, inlinedAt: !3984)
!3990 = !DILocation(line: 43, column: 5, scope: !3764, inlinedAt: !3984)
!3991 = !DILocation(line: 113, column: 10, scope: !3955, inlinedAt: !3980)
!3992 = !DILocation(line: 121, column: 3, scope: !3973)
!3993 = distinct !DISubprogram(name: "xalloc_die", scope: !3994, file: !3994, line: 32, type: !134, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !653, variables: !121)
!3994 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3995 = !DILocation(line: 34, column: 10, scope: !3993)
!3996 = !DILocation(line: 34, column: 33, scope: !3993)
!3997 = !DILocation(line: 34, column: 3, scope: !3998)
!3998 = !DILexicalBlockFile(scope: !3993, file: !3994, discriminator: 1)
!3999 = !DILocation(line: 40, column: 3, scope: !3993)
!4000 = distinct !DISubprogram(name: "rpl_calloc", scope: !4001, file: !4001, line: 42, type: !878, isLocal: false, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: true, unit: !655, variables: !4002)
!4001 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4002 = !{!4003, !4004, !4005, !4006}
!4003 = !DILocalVariable(name: "n", arg: 1, scope: !4000, file: !4001, line: 42, type: !47)
!4004 = !DILocalVariable(name: "s", arg: 2, scope: !4000, file: !4001, line: 42, type: !47)
!4005 = !DILocalVariable(name: "result", scope: !4000, file: !4001, line: 44, type: !40)
!4006 = !DILocalVariable(name: "bytes", scope: !4007, file: !4001, line: 56, type: !47)
!4007 = distinct !DILexicalBlock(scope: !4008, file: !4001, line: 53, column: 5)
!4008 = distinct !DILexicalBlock(scope: !4000, file: !4001, line: 47, column: 7)
!4009 = !DILocation(line: 42, column: 20, scope: !4000)
!4010 = !DILocation(line: 42, column: 30, scope: !4000)
!4011 = !DILocation(line: 47, column: 9, scope: !4008)
!4012 = !DILocation(line: 47, column: 19, scope: !4013)
!4013 = !DILexicalBlockFile(scope: !4008, file: !4001, discriminator: 1)
!4014 = !DILocation(line: 47, column: 14, scope: !4008)
!4015 = !DILocation(line: 56, column: 24, scope: !4007)
!4016 = !DILocation(line: 56, column: 14, scope: !4007)
!4017 = !DILocation(line: 57, column: 17, scope: !4018)
!4018 = distinct !DILexicalBlock(scope: !4007, file: !4001, line: 57, column: 11)
!4019 = !DILocation(line: 57, column: 21, scope: !4018)
!4020 = !DILocation(line: 57, column: 11, scope: !4007)
!4021 = !DILocation(line: 59, column: 11, scope: !4022)
!4022 = distinct !DILexicalBlock(scope: !4018, file: !4001, line: 58, column: 9)
!4023 = !DILocation(line: 59, column: 17, scope: !4022)
!4024 = !DILocation(line: 65, column: 12, scope: !4000)
!4025 = !DILocation(line: 44, column: 9, scope: !4000)
!4026 = !DILocation(line: 72, column: 3, scope: !4000)
!4027 = !DILocation(line: 73, column: 1, scope: !4000)
!4028 = distinct !DISubprogram(name: "rpl_fclose", scope: !4029, file: !4029, line: 56, type: !4030, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !657, variables: !4072)
!4029 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4030 = !DISubroutineType(types: !4031)
!4031 = !{!46, !4032}
!4032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4033, size: 64)
!4033 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !753, line: 49, baseType: !4034)
!4034 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !755, line: 241, size: 1728, elements: !4035)
!4035 = !{!4036, !4037, !4038, !4039, !4040, !4041, !4042, !4043, !4044, !4045, !4046, !4047, !4048, !4056, !4057, !4058, !4059, !4060, !4061, !4062, !4063, !4064, !4065, !4066, !4067, !4068, !4069, !4070, !4071}
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4034, file: !755, line: 242, baseType: !46, size: 32)
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4034, file: !755, line: 247, baseType: !39, size: 64, offset: 64)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4034, file: !755, line: 248, baseType: !39, size: 64, offset: 128)
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4034, file: !755, line: 249, baseType: !39, size: 64, offset: 192)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4034, file: !755, line: 250, baseType: !39, size: 64, offset: 256)
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4034, file: !755, line: 251, baseType: !39, size: 64, offset: 320)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4034, file: !755, line: 252, baseType: !39, size: 64, offset: 384)
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4034, file: !755, line: 253, baseType: !39, size: 64, offset: 448)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4034, file: !755, line: 254, baseType: !39, size: 64, offset: 512)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4034, file: !755, line: 256, baseType: !39, size: 64, offset: 576)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4034, file: !755, line: 257, baseType: !39, size: 64, offset: 640)
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4034, file: !755, line: 258, baseType: !39, size: 64, offset: 704)
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4034, file: !755, line: 260, baseType: !4049, size: 64, offset: 768)
!4049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4050, size: 64)
!4050 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !755, line: 156, size: 192, elements: !4051)
!4051 = !{!4052, !4053, !4055}
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4050, file: !755, line: 157, baseType: !4049, size: 64)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4050, file: !755, line: 158, baseType: !4054, size: 64, offset: 64)
!4054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4034, size: 64)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4050, file: !755, line: 162, baseType: !46, size: 32, offset: 128)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4034, file: !755, line: 262, baseType: !4054, size: 64, offset: 832)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4034, file: !755, line: 264, baseType: !46, size: 32, offset: 896)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4034, file: !755, line: 268, baseType: !46, size: 32, offset: 928)
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4034, file: !755, line: 270, baseType: !781, size: 64, offset: 960)
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4034, file: !755, line: 274, baseType: !184, size: 16, offset: 1024)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4034, file: !755, line: 275, baseType: !786, size: 8, offset: 1040)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4034, file: !755, line: 276, baseType: !788, size: 8, offset: 1048)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4034, file: !755, line: 280, baseType: !790, size: 64, offset: 1088)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4034, file: !755, line: 289, baseType: !793, size: 64, offset: 1152)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4034, file: !755, line: 297, baseType: !40, size: 64, offset: 1216)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4034, file: !755, line: 298, baseType: !40, size: 64, offset: 1280)
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4034, file: !755, line: 299, baseType: !40, size: 64, offset: 1344)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4034, file: !755, line: 300, baseType: !40, size: 64, offset: 1408)
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4034, file: !755, line: 302, baseType: !47, size: 64, offset: 1472)
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4034, file: !755, line: 303, baseType: !46, size: 32, offset: 1536)
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4034, file: !755, line: 305, baseType: !801, size: 160, offset: 1568)
!4072 = !{!4073, !4074, !4075, !4076}
!4073 = !DILocalVariable(name: "fp", arg: 1, scope: !4028, file: !4029, line: 56, type: !4032)
!4074 = !DILocalVariable(name: "saved_errno", scope: !4028, file: !4029, line: 58, type: !46)
!4075 = !DILocalVariable(name: "fd", scope: !4028, file: !4029, line: 59, type: !46)
!4076 = !DILocalVariable(name: "result", scope: !4028, file: !4029, line: 60, type: !46)
!4077 = !DILocation(line: 56, column: 19, scope: !4028)
!4078 = !DILocation(line: 58, column: 7, scope: !4028)
!4079 = !DILocation(line: 60, column: 7, scope: !4028)
!4080 = !DILocation(line: 63, column: 8, scope: !4028)
!4081 = !DILocation(line: 59, column: 7, scope: !4028)
!4082 = !DILocation(line: 64, column: 10, scope: !4083)
!4083 = distinct !DILexicalBlock(scope: !4028, file: !4029, line: 64, column: 7)
!4084 = !DILocation(line: 64, column: 7, scope: !4028)
!4085 = !DILocation(line: 65, column: 12, scope: !4083)
!4086 = !DILocation(line: 65, column: 5, scope: !4083)
!4087 = !DILocation(line: 70, column: 9, scope: !4088)
!4088 = distinct !DILexicalBlock(scope: !4028, file: !4029, line: 70, column: 7)
!4089 = !DILocation(line: 70, column: 23, scope: !4088)
!4090 = !DILocation(line: 70, column: 33, scope: !4091)
!4091 = !DILexicalBlockFile(scope: !4088, file: !4029, discriminator: 1)
!4092 = !DILocation(line: 70, column: 26, scope: !4093)
!4093 = !DILexicalBlockFile(scope: !4088, file: !4029, discriminator: 3)
!4094 = !DILocation(line: 70, column: 59, scope: !4091)
!4095 = !DILocation(line: 71, column: 7, scope: !4088)
!4096 = !DILocation(line: 71, column: 10, scope: !4091)
!4097 = !DILocation(line: 70, column: 7, scope: !4098)
!4098 = !DILexicalBlockFile(scope: !4028, file: !4029, discriminator: 2)
!4099 = !DILocation(line: 98, column: 12, scope: !4028)
!4100 = !DILocation(line: 103, column: 7, scope: !4028)
!4101 = !DILocation(line: 72, column: 19, scope: !4088)
!4102 = !DILocation(line: 103, column: 19, scope: !4103)
!4103 = distinct !DILexicalBlock(scope: !4028, file: !4029, line: 103, column: 7)
!4104 = !DILocation(line: 105, column: 13, scope: !4105)
!4105 = distinct !DILexicalBlock(scope: !4103, file: !4029, line: 104, column: 5)
!4106 = !DILocation(line: 107, column: 5, scope: !4105)
!4107 = !DILocation(line: 110, column: 1, scope: !4028)
!4108 = !DILocation(line: 272, column: 16, scope: !238)
!4109 = !DILocation(line: 272, column: 24, scope: !238)
!4110 = !DILocation(line: 274, column: 3, scope: !238)
!4111 = !DILocation(line: 274, column: 11, scope: !238)
!4112 = !DILocation(line: 275, column: 7, scope: !238)
!4113 = !DILocation(line: 276, column: 3, scope: !238)
!4114 = !DILocation(line: 277, column: 3, scope: !238)
!4115 = !DILocation(line: 322, column: 22, scope: !263)
!4116 = !DILocation(line: 322, column: 22, scope: !4117)
!4117 = !DILexicalBlockFile(scope: !263, file: !239, discriminator: 1)
!4118 = !DILocation(line: 322, column: 22, scope: !4119)
!4119 = !DILexicalBlockFile(scope: !263, file: !239, discriminator: 2)
!4120 = !DILocation(line: 322, column: 22, scope: !4121)
!4121 = !DILexicalBlockFile(scope: !263, file: !239, discriminator: 3)
!4122 = !DILocation(line: 322, column: 13, scope: !263)
!4123 = !DILocation(line: 336, column: 18, scope: !4124)
!4124 = distinct !DILexicalBlock(scope: !263, file: !239, line: 336, column: 13)
!4125 = !DILocation(line: 336, column: 15, scope: !4124)
!4126 = !DILocation(line: 336, column: 13, scope: !263)
!4127 = !DILocation(line: 338, column: 22, scope: !4128)
!4128 = distinct !DILexicalBlock(scope: !4124, file: !239, line: 337, column: 11)
!4129 = !DILocation(line: 339, column: 19, scope: !4130)
!4130 = distinct !DILexicalBlock(scope: !4128, file: !239, line: 339, column: 17)
!4131 = !DILocation(line: 339, column: 29, scope: !4130)
!4132 = !DILocation(line: 339, column: 32, scope: !4133)
!4133 = !DILexicalBlockFile(scope: !4130, file: !239, discriminator: 1)
!4134 = !DILocation(line: 339, column: 38, scope: !4133)
!4135 = !DILocation(line: 339, column: 17, scope: !4136)
!4136 = !DILexicalBlockFile(scope: !4128, file: !239, discriminator: 1)
!4137 = !DILocation(line: 349, column: 26, scope: !4138)
!4138 = distinct !DILexicalBlock(scope: !4130, file: !239, line: 348, column: 15)
!4139 = !DILocation(line: 350, column: 28, scope: !4140)
!4140 = distinct !DILexicalBlock(scope: !4138, file: !239, line: 350, column: 21)
!4141 = !DILocation(line: 350, column: 21, scope: !4138)
!4142 = !DILocation(line: 354, column: 11, scope: !4128)
!4143 = !DILocation(line: 356, column: 20, scope: !4124)
!4144 = !DILocation(line: 357, column: 28, scope: !4145)
!4145 = !DILexicalBlockFile(scope: !267, file: !239, discriminator: 1)
!4146 = !DILocation(line: 357, column: 15, scope: !267)
!4147 = !DILocation(line: 357, column: 47, scope: !4145)
!4148 = !DILocation(line: 357, column: 25, scope: !267)
!4149 = !DILocation(line: 359, column: 25, scope: !266)
!4150 = !DILocation(line: 359, column: 17, scope: !266)
!4151 = !DILocation(line: 360, column: 23, scope: !270)
!4152 = !DILocation(line: 360, column: 27, scope: !270)
!4153 = !DILocation(line: 360, column: 60, scope: !4154)
!4154 = !DILexicalBlockFile(scope: !270, file: !239, discriminator: 1)
!4155 = !DILocation(line: 360, column: 30, scope: !4154)
!4156 = !DILocation(line: 360, column: 74, scope: !4154)
!4157 = !DILocation(line: 360, column: 17, scope: !4158)
!4158 = !DILexicalBlockFile(scope: !266, file: !239, discriminator: 1)
!4159 = !DILocation(line: 362, column: 35, scope: !269)
!4160 = !DILocation(line: 362, column: 21, scope: !269)
!4161 = !DILocation(line: 363, column: 17, scope: !269)
!4162 = !DILocation(line: 364, column: 23, scope: !269)
!4163 = !DILocation(line: 366, column: 15, scope: !269)
!4164 = !DILocation(line: 404, column: 19, scope: !272)
!4165 = !DILocation(line: 404, column: 19, scope: !4166)
!4166 = !DILexicalBlockFile(scope: !272, file: !239, discriminator: 1)
!4167 = !DILocation(line: 404, column: 19, scope: !4168)
!4168 = !DILexicalBlockFile(scope: !272, file: !239, discriminator: 2)
!4169 = !DILocation(line: 404, column: 19, scope: !4170)
!4170 = !DILexicalBlockFile(scope: !272, file: !239, discriminator: 3)
!4171 = !DILocation(line: 404, column: 15, scope: !272)
!4172 = !DILocation(line: 405, column: 18, scope: !272)
!4173 = !DILocation(line: 412, column: 3, scope: !238)
!4174 = !DILocation(line: 414, column: 1, scope: !238)
!4175 = !DILocation(line: 413, column: 3, scope: !238)
!4176 = distinct !DISubprogram(name: "rpl_fflush", scope: !4177, file: !4177, line: 127, type: !4178, isLocal: false, isDefinition: true, scopeLine: 128, flags: DIFlagPrototyped, isOptimized: true, unit: !659, variables: !4220)
!4177 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4178 = !DISubroutineType(types: !4179)
!4179 = !{!46, !4180}
!4180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4181, size: 64)
!4181 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !753, line: 49, baseType: !4182)
!4182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !755, line: 241, size: 1728, elements: !4183)
!4183 = !{!4184, !4185, !4186, !4187, !4188, !4189, !4190, !4191, !4192, !4193, !4194, !4195, !4196, !4204, !4205, !4206, !4207, !4208, !4209, !4210, !4211, !4212, !4213, !4214, !4215, !4216, !4217, !4218, !4219}
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4182, file: !755, line: 242, baseType: !46, size: 32)
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4182, file: !755, line: 247, baseType: !39, size: 64, offset: 64)
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4182, file: !755, line: 248, baseType: !39, size: 64, offset: 128)
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4182, file: !755, line: 249, baseType: !39, size: 64, offset: 192)
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4182, file: !755, line: 250, baseType: !39, size: 64, offset: 256)
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4182, file: !755, line: 251, baseType: !39, size: 64, offset: 320)
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4182, file: !755, line: 252, baseType: !39, size: 64, offset: 384)
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4182, file: !755, line: 253, baseType: !39, size: 64, offset: 448)
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4182, file: !755, line: 254, baseType: !39, size: 64, offset: 512)
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4182, file: !755, line: 256, baseType: !39, size: 64, offset: 576)
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4182, file: !755, line: 257, baseType: !39, size: 64, offset: 640)
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4182, file: !755, line: 258, baseType: !39, size: 64, offset: 704)
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4182, file: !755, line: 260, baseType: !4197, size: 64, offset: 768)
!4197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4198, size: 64)
!4198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !755, line: 156, size: 192, elements: !4199)
!4199 = !{!4200, !4201, !4203}
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4198, file: !755, line: 157, baseType: !4197, size: 64)
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4198, file: !755, line: 158, baseType: !4202, size: 64, offset: 64)
!4202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4182, size: 64)
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4198, file: !755, line: 162, baseType: !46, size: 32, offset: 128)
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4182, file: !755, line: 262, baseType: !4202, size: 64, offset: 832)
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4182, file: !755, line: 264, baseType: !46, size: 32, offset: 896)
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4182, file: !755, line: 268, baseType: !46, size: 32, offset: 928)
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4182, file: !755, line: 270, baseType: !781, size: 64, offset: 960)
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4182, file: !755, line: 274, baseType: !184, size: 16, offset: 1024)
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4182, file: !755, line: 275, baseType: !786, size: 8, offset: 1040)
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4182, file: !755, line: 276, baseType: !788, size: 8, offset: 1048)
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4182, file: !755, line: 280, baseType: !790, size: 64, offset: 1088)
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4182, file: !755, line: 289, baseType: !793, size: 64, offset: 1152)
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4182, file: !755, line: 297, baseType: !40, size: 64, offset: 1216)
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4182, file: !755, line: 298, baseType: !40, size: 64, offset: 1280)
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4182, file: !755, line: 299, baseType: !40, size: 64, offset: 1344)
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4182, file: !755, line: 300, baseType: !40, size: 64, offset: 1408)
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4182, file: !755, line: 302, baseType: !47, size: 64, offset: 1472)
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4182, file: !755, line: 303, baseType: !46, size: 32, offset: 1536)
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4182, file: !755, line: 305, baseType: !801, size: 160, offset: 1568)
!4220 = !{!4221}
!4221 = !DILocalVariable(name: "stream", arg: 1, scope: !4176, file: !4177, line: 127, type: !4180)
!4222 = !DILocation(line: 127, column: 19, scope: !4176)
!4223 = !DILocation(line: 148, column: 14, scope: !4224)
!4224 = distinct !DILexicalBlock(scope: !4176, file: !4177, line: 148, column: 7)
!4225 = !DILocation(line: 148, column: 22, scope: !4224)
!4226 = !DILocation(line: 148, column: 27, scope: !4227)
!4227 = !DILexicalBlockFile(scope: !4224, file: !4177, discriminator: 1)
!4228 = !DILocation(line: 148, column: 7, scope: !4229)
!4229 = !DILexicalBlockFile(scope: !4176, file: !4177, discriminator: 1)
!4230 = !DILocation(line: 149, column: 12, scope: !4224)
!4231 = !DILocation(line: 149, column: 5, scope: !4224)
!4232 = !DILocalVariable(name: "fp", arg: 1, scope: !4233, file: !4177, line: 40, type: !4180)
!4233 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !4177, file: !4177, line: 40, type: !4234, isLocal: true, isDefinition: true, scopeLine: 41, flags: DIFlagPrototyped, isOptimized: true, unit: !659, variables: !4236)
!4234 = !DISubroutineType(types: !4235)
!4235 = !{null, !4180}
!4236 = !{!4232}
!4237 = !DILocation(line: 40, column: 48, scope: !4233, inlinedAt: !4238)
!4238 = distinct !DILocation(line: 153, column: 3, scope: !4176)
!4239 = !DILocation(line: 42, column: 11, scope: !4240, inlinedAt: !4238)
!4240 = distinct !DILexicalBlock(scope: !4233, file: !4177, line: 42, column: 7)
!4241 = !{!1231, !864, i64 0}
!4242 = !DILocation(line: 42, column: 18, scope: !4240, inlinedAt: !4238)
!4243 = !DILocation(line: 42, column: 7, scope: !4233, inlinedAt: !4238)
!4244 = !DILocation(line: 44, column: 5, scope: !4240, inlinedAt: !4238)
!4245 = !DILocation(line: 155, column: 10, scope: !4176)
!4246 = !DILocation(line: 155, column: 3, scope: !4176)
!4247 = !DILocation(line: 229, column: 1, scope: !4176)
!4248 = distinct !DISubprogram(name: "rpl_fseeko", scope: !4249, file: !4249, line: 28, type: !4250, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !661, variables: !4292)
!4249 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4250 = !DISubroutineType(types: !4251)
!4251 = !{!46, !4252, !1370, !46}
!4252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4253, size: 64)
!4253 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !753, line: 49, baseType: !4254)
!4254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !755, line: 241, size: 1728, elements: !4255)
!4255 = !{!4256, !4257, !4258, !4259, !4260, !4261, !4262, !4263, !4264, !4265, !4266, !4267, !4268, !4276, !4277, !4278, !4279, !4280, !4281, !4282, !4283, !4284, !4285, !4286, !4287, !4288, !4289, !4290, !4291}
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4254, file: !755, line: 242, baseType: !46, size: 32)
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4254, file: !755, line: 247, baseType: !39, size: 64, offset: 64)
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4254, file: !755, line: 248, baseType: !39, size: 64, offset: 128)
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4254, file: !755, line: 249, baseType: !39, size: 64, offset: 192)
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4254, file: !755, line: 250, baseType: !39, size: 64, offset: 256)
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4254, file: !755, line: 251, baseType: !39, size: 64, offset: 320)
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4254, file: !755, line: 252, baseType: !39, size: 64, offset: 384)
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4254, file: !755, line: 253, baseType: !39, size: 64, offset: 448)
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4254, file: !755, line: 254, baseType: !39, size: 64, offset: 512)
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4254, file: !755, line: 256, baseType: !39, size: 64, offset: 576)
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4254, file: !755, line: 257, baseType: !39, size: 64, offset: 640)
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4254, file: !755, line: 258, baseType: !39, size: 64, offset: 704)
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4254, file: !755, line: 260, baseType: !4269, size: 64, offset: 768)
!4269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4270, size: 64)
!4270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !755, line: 156, size: 192, elements: !4271)
!4271 = !{!4272, !4273, !4275}
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4270, file: !755, line: 157, baseType: !4269, size: 64)
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4270, file: !755, line: 158, baseType: !4274, size: 64, offset: 64)
!4274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4254, size: 64)
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4270, file: !755, line: 162, baseType: !46, size: 32, offset: 128)
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4254, file: !755, line: 262, baseType: !4274, size: 64, offset: 832)
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4254, file: !755, line: 264, baseType: !46, size: 32, offset: 896)
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4254, file: !755, line: 268, baseType: !46, size: 32, offset: 928)
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4254, file: !755, line: 270, baseType: !781, size: 64, offset: 960)
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4254, file: !755, line: 274, baseType: !184, size: 16, offset: 1024)
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4254, file: !755, line: 275, baseType: !786, size: 8, offset: 1040)
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4254, file: !755, line: 276, baseType: !788, size: 8, offset: 1048)
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4254, file: !755, line: 280, baseType: !790, size: 64, offset: 1088)
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4254, file: !755, line: 289, baseType: !793, size: 64, offset: 1152)
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4254, file: !755, line: 297, baseType: !40, size: 64, offset: 1216)
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4254, file: !755, line: 298, baseType: !40, size: 64, offset: 1280)
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4254, file: !755, line: 299, baseType: !40, size: 64, offset: 1344)
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4254, file: !755, line: 300, baseType: !40, size: 64, offset: 1408)
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4254, file: !755, line: 302, baseType: !47, size: 64, offset: 1472)
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4254, file: !755, line: 303, baseType: !46, size: 32, offset: 1536)
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4254, file: !755, line: 305, baseType: !801, size: 160, offset: 1568)
!4292 = !{!4293, !4294, !4295, !4296}
!4293 = !DILocalVariable(name: "fp", arg: 1, scope: !4248, file: !4249, line: 28, type: !4252)
!4294 = !DILocalVariable(name: "offset", arg: 2, scope: !4248, file: !4249, line: 28, type: !1370)
!4295 = !DILocalVariable(name: "whence", arg: 3, scope: !4248, file: !4249, line: 28, type: !46)
!4296 = !DILocalVariable(name: "pos", scope: !4297, file: !4249, line: 116, type: !1370)
!4297 = distinct !DILexicalBlock(scope: !4298, file: !4249, line: 112, column: 5)
!4298 = distinct !DILexicalBlock(scope: !4248, file: !4249, line: 51, column: 7)
!4299 = !DILocation(line: 28, column: 15, scope: !4248)
!4300 = !DILocation(line: 28, column: 25, scope: !4248)
!4301 = !DILocation(line: 28, column: 37, scope: !4248)
!4302 = !DILocation(line: 51, column: 11, scope: !4298)
!4303 = !{!1231, !688, i64 16}
!4304 = !DILocation(line: 51, column: 31, scope: !4298)
!4305 = !{!1231, !688, i64 8}
!4306 = !DILocation(line: 51, column: 24, scope: !4298)
!4307 = !DILocation(line: 52, column: 7, scope: !4298)
!4308 = !DILocation(line: 52, column: 14, scope: !4309)
!4309 = !DILexicalBlockFile(scope: !4298, file: !4249, discriminator: 1)
!4310 = !DILocation(line: 52, column: 35, scope: !4309)
!4311 = !{!1231, !688, i64 32}
!4312 = !DILocation(line: 52, column: 28, scope: !4309)
!4313 = !DILocation(line: 53, column: 7, scope: !4298)
!4314 = !DILocation(line: 53, column: 14, scope: !4309)
!4315 = !{!1231, !688, i64 72}
!4316 = !DILocation(line: 53, column: 28, scope: !4309)
!4317 = !DILocation(line: 51, column: 7, scope: !4318)
!4318 = !DILexicalBlockFile(scope: !4248, file: !4249, discriminator: 1)
!4319 = !DILocation(line: 116, column: 26, scope: !4297)
!4320 = !DILocation(line: 116, column: 19, scope: !4321)
!4321 = !DILexicalBlockFile(scope: !4297, file: !4249, discriminator: 1)
!4322 = !DILocation(line: 116, column: 13, scope: !4297)
!4323 = !DILocation(line: 117, column: 15, scope: !4324)
!4324 = distinct !DILexicalBlock(scope: !4297, file: !4249, line: 117, column: 11)
!4325 = !DILocation(line: 117, column: 11, scope: !4297)
!4326 = !DILocation(line: 127, column: 11, scope: !4297)
!4327 = !DILocation(line: 127, column: 18, scope: !4297)
!4328 = !DILocation(line: 128, column: 11, scope: !4297)
!4329 = !DILocation(line: 128, column: 19, scope: !4297)
!4330 = !{!1231, !1232, i64 144}
!4331 = !DILocation(line: 159, column: 7, scope: !4297)
!4332 = !DILocation(line: 161, column: 10, scope: !4248)
!4333 = !DILocation(line: 161, column: 3, scope: !4248)
!4334 = !DILocation(line: 162, column: 1, scope: !4248)
!4335 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !4336, file: !4336, line: 334, type: !4337, isLocal: false, isDefinition: true, scopeLine: 335, flags: DIFlagPrototyped, isOptimized: true, unit: !663, variables: !4351)
!4336 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4337 = !DISubroutineType(types: !4338)
!4338 = !{!47, !4339, !36, !47, !4340}
!4339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1784, size: 64)
!4340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4341, size: 64)
!4341 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1771, line: 107, baseType: !4342)
!4342 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1771, line: 95, baseType: !4343)
!4343 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1771, line: 83, size: 64, elements: !4344)
!4344 = !{!4345, !4346}
!4345 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !4343, file: !1771, line: 85, baseType: !46, size: 32)
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !4343, file: !1771, line: 94, baseType: !4347, size: 32, offset: 32)
!4347 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4343, file: !1771, line: 86, size: 32, elements: !4348)
!4348 = !{!4349, !4350}
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !4347, file: !1771, line: 89, baseType: !201, size: 32)
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !4347, file: !1771, line: 93, baseType: !1781, size: 32)
!4351 = !{!4352, !4353, !4354, !4355, !4356, !4357, !4358}
!4352 = !DILocalVariable(name: "pwc", arg: 1, scope: !4335, file: !4336, line: 334, type: !4339)
!4353 = !DILocalVariable(name: "s", arg: 2, scope: !4335, file: !4336, line: 334, type: !36)
!4354 = !DILocalVariable(name: "n", arg: 3, scope: !4335, file: !4336, line: 334, type: !47)
!4355 = !DILocalVariable(name: "ps", arg: 4, scope: !4335, file: !4336, line: 334, type: !4340)
!4356 = !DILocalVariable(name: "ret", scope: !4335, file: !4336, line: 336, type: !47)
!4357 = !DILocalVariable(name: "wc", scope: !4335, file: !4336, line: 337, type: !1784)
!4358 = !DILocalVariable(name: "uc", scope: !4359, file: !4336, line: 398, type: !54)
!4359 = distinct !DILexicalBlock(scope: !4360, file: !4336, line: 397, column: 5)
!4360 = distinct !DILexicalBlock(scope: !4335, file: !4336, line: 396, column: 7)
!4361 = !DILocation(line: 334, column: 23, scope: !4335)
!4362 = !DILocation(line: 334, column: 40, scope: !4335)
!4363 = !DILocation(line: 334, column: 50, scope: !4335)
!4364 = !DILocation(line: 334, column: 64, scope: !4335)
!4365 = !DILocation(line: 337, column: 3, scope: !4335)
!4366 = !DILocation(line: 353, column: 9, scope: !4367)
!4367 = distinct !DILexicalBlock(scope: !4335, file: !4336, line: 353, column: 7)
!4368 = !DILocation(line: 353, column: 7, scope: !4335)
!4369 = !DILocation(line: 388, column: 9, scope: !4335)
!4370 = !DILocation(line: 336, column: 10, scope: !4335)
!4371 = !DILocation(line: 396, column: 19, scope: !4360)
!4372 = !DILocation(line: 396, column: 31, scope: !4373)
!4373 = !DILexicalBlockFile(scope: !4360, file: !4336, discriminator: 1)
!4374 = !DILocation(line: 396, column: 26, scope: !4360)
!4375 = !DILocation(line: 396, column: 41, scope: !4376)
!4376 = !DILexicalBlockFile(scope: !4360, file: !4336, discriminator: 2)
!4377 = !DILocation(line: 396, column: 7, scope: !4378)
!4378 = !DILexicalBlockFile(scope: !4335, file: !4336, discriminator: 2)
!4379 = !DILocation(line: 398, column: 26, scope: !4359)
!4380 = !DILocation(line: 398, column: 21, scope: !4359)
!4381 = !DILocation(line: 399, column: 14, scope: !4359)
!4382 = !DILocation(line: 399, column: 12, scope: !4359)
!4383 = !DILocation(line: 405, column: 1, scope: !4335)
!4384 = distinct !DISubprogram(name: "close_stream", scope: !4385, file: !4385, line: 56, type: !4386, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !666, variables: !4428)
!4385 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4386 = !DISubroutineType(types: !4387)
!4387 = !{!46, !4388}
!4388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4389, size: 64)
!4389 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !753, line: 49, baseType: !4390)
!4390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !755, line: 241, size: 1728, elements: !4391)
!4391 = !{!4392, !4393, !4394, !4395, !4396, !4397, !4398, !4399, !4400, !4401, !4402, !4403, !4404, !4412, !4413, !4414, !4415, !4416, !4417, !4418, !4419, !4420, !4421, !4422, !4423, !4424, !4425, !4426, !4427}
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4390, file: !755, line: 242, baseType: !46, size: 32)
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4390, file: !755, line: 247, baseType: !39, size: 64, offset: 64)
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4390, file: !755, line: 248, baseType: !39, size: 64, offset: 128)
!4395 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4390, file: !755, line: 249, baseType: !39, size: 64, offset: 192)
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4390, file: !755, line: 250, baseType: !39, size: 64, offset: 256)
!4397 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4390, file: !755, line: 251, baseType: !39, size: 64, offset: 320)
!4398 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4390, file: !755, line: 252, baseType: !39, size: 64, offset: 384)
!4399 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4390, file: !755, line: 253, baseType: !39, size: 64, offset: 448)
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4390, file: !755, line: 254, baseType: !39, size: 64, offset: 512)
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4390, file: !755, line: 256, baseType: !39, size: 64, offset: 576)
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4390, file: !755, line: 257, baseType: !39, size: 64, offset: 640)
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4390, file: !755, line: 258, baseType: !39, size: 64, offset: 704)
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4390, file: !755, line: 260, baseType: !4405, size: 64, offset: 768)
!4405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4406, size: 64)
!4406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !755, line: 156, size: 192, elements: !4407)
!4407 = !{!4408, !4409, !4411}
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4406, file: !755, line: 157, baseType: !4405, size: 64)
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4406, file: !755, line: 158, baseType: !4410, size: 64, offset: 64)
!4410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4390, size: 64)
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4406, file: !755, line: 162, baseType: !46, size: 32, offset: 128)
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4390, file: !755, line: 262, baseType: !4410, size: 64, offset: 832)
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4390, file: !755, line: 264, baseType: !46, size: 32, offset: 896)
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4390, file: !755, line: 268, baseType: !46, size: 32, offset: 928)
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4390, file: !755, line: 270, baseType: !781, size: 64, offset: 960)
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4390, file: !755, line: 274, baseType: !184, size: 16, offset: 1024)
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4390, file: !755, line: 275, baseType: !786, size: 8, offset: 1040)
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4390, file: !755, line: 276, baseType: !788, size: 8, offset: 1048)
!4419 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4390, file: !755, line: 280, baseType: !790, size: 64, offset: 1088)
!4420 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4390, file: !755, line: 289, baseType: !793, size: 64, offset: 1152)
!4421 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4390, file: !755, line: 297, baseType: !40, size: 64, offset: 1216)
!4422 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4390, file: !755, line: 298, baseType: !40, size: 64, offset: 1280)
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4390, file: !755, line: 299, baseType: !40, size: 64, offset: 1344)
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4390, file: !755, line: 300, baseType: !40, size: 64, offset: 1408)
!4425 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4390, file: !755, line: 302, baseType: !47, size: 64, offset: 1472)
!4426 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4390, file: !755, line: 303, baseType: !46, size: 32, offset: 1536)
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4390, file: !755, line: 305, baseType: !801, size: 160, offset: 1568)
!4428 = !{!4429, !4430, !4432, !4433}
!4429 = !DILocalVariable(name: "stream", arg: 1, scope: !4384, file: !4385, line: 56, type: !4388)
!4430 = !DILocalVariable(name: "some_pending", scope: !4384, file: !4385, line: 58, type: !4431)
!4431 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !58)
!4432 = !DILocalVariable(name: "prev_fail", scope: !4384, file: !4385, line: 59, type: !4431)
!4433 = !DILocalVariable(name: "fclose_fail", scope: !4384, file: !4385, line: 60, type: !4431)
!4434 = !DILocation(line: 56, column: 21, scope: !4384)
!4435 = !DILocation(line: 58, column: 30, scope: !4384)
!4436 = !DILocalVariable(name: "__stream", arg: 1, scope: !4437, file: !1181, line: 132, type: !4388)
!4437 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1181, file: !1181, line: 132, type: !4386, isLocal: false, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !666, variables: !4438)
!4438 = !{!4436}
!4439 = !DILocation(line: 132, column: 1, scope: !4437, inlinedAt: !4440)
!4440 = distinct !DILocation(line: 59, column: 27, scope: !4384)
!4441 = !DILocation(line: 134, column: 10, scope: !4437, inlinedAt: !4440)
!4442 = !DILocation(line: 59, column: 43, scope: !4384)
!4443 = !DILocation(line: 60, column: 29, scope: !4384)
!4444 = !DILocation(line: 60, column: 45, scope: !4384)
!4445 = !DILocation(line: 70, column: 17, scope: !4446)
!4446 = distinct !DILexicalBlock(scope: !4384, file: !4385, line: 70, column: 7)
!4447 = !DILocation(line: 70, column: 33, scope: !4448)
!4448 = !DILexicalBlockFile(scope: !4446, file: !4385, discriminator: 1)
!4449 = !DILocation(line: 70, column: 53, scope: !4450)
!4450 = !DILexicalBlockFile(scope: !4446, file: !4385, discriminator: 3)
!4451 = !DILocation(line: 70, column: 7, scope: !4452)
!4452 = !DILexicalBlockFile(scope: !4384, file: !4385, discriminator: 3)
!4453 = !DILocation(line: 72, column: 11, scope: !4454)
!4454 = distinct !DILexicalBlock(scope: !4446, file: !4385, line: 71, column: 5)
!4455 = !DILocation(line: 73, column: 9, scope: !4456)
!4456 = distinct !DILexicalBlock(scope: !4454, file: !4385, line: 72, column: 11)
!4457 = !DILocation(line: 73, column: 15, scope: !4456)
!4458 = !DILocation(line: 78, column: 1, scope: !4384)
!4459 = distinct !DISubprogram(name: "hard_locale", scope: !4460, file: !4460, line: 38, type: !4461, isLocal: false, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, unit: !668, variables: !4463)
!4460 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4461 = !DISubroutineType(types: !4462)
!4462 = !{!58, !46}
!4463 = !{!4464, !4465, !4466, !4467, !4474, !4475, !4477, !4478, !4480, !4481, !4483}
!4464 = !DILocalVariable(name: "category", arg: 1, scope: !4459, file: !4460, line: 38, type: !46)
!4465 = !DILocalVariable(name: "hard", scope: !4459, file: !4460, line: 40, type: !58)
!4466 = !DILocalVariable(name: "p", scope: !4459, file: !4460, line: 41, type: !36)
!4467 = !DILocalVariable(name: "__s1_len", scope: !4468, file: !4460, line: 47, type: !47)
!4468 = distinct !DILexicalBlock(scope: !4469, file: !4460, line: 47, column: 15)
!4469 = distinct !DILexicalBlock(scope: !4470, file: !4460, line: 47, column: 15)
!4470 = distinct !DILexicalBlock(scope: !4471, file: !4460, line: 46, column: 9)
!4471 = distinct !DILexicalBlock(scope: !4472, file: !4460, line: 45, column: 11)
!4472 = distinct !DILexicalBlock(scope: !4473, file: !4460, line: 44, column: 5)
!4473 = distinct !DILexicalBlock(scope: !4459, file: !4460, line: 43, column: 7)
!4474 = !DILocalVariable(name: "__s2_len", scope: !4468, file: !4460, line: 47, type: !47)
!4475 = !DILocalVariable(name: "__s2", scope: !4476, file: !4460, line: 47, type: !52)
!4476 = distinct !DILexicalBlock(scope: !4468, file: !4460, line: 47, column: 15)
!4477 = !DILocalVariable(name: "__result", scope: !4476, file: !4460, line: 47, type: !46)
!4478 = !DILocalVariable(name: "__s1_len", scope: !4479, file: !4460, line: 47, type: !47)
!4479 = distinct !DILexicalBlock(scope: !4469, file: !4460, line: 47, column: 39)
!4480 = !DILocalVariable(name: "__s2_len", scope: !4479, file: !4460, line: 47, type: !47)
!4481 = !DILocalVariable(name: "__s2", scope: !4482, file: !4460, line: 47, type: !52)
!4482 = distinct !DILexicalBlock(scope: !4479, file: !4460, line: 47, column: 39)
!4483 = !DILocalVariable(name: "__result", scope: !4482, file: !4460, line: 47, type: !46)
!4484 = !DILocation(line: 38, column: 18, scope: !4459)
!4485 = !DILocation(line: 40, column: 8, scope: !4459)
!4486 = !DILocation(line: 41, column: 19, scope: !4459)
!4487 = !DILocation(line: 41, column: 15, scope: !4459)
!4488 = !DILocation(line: 43, column: 7, scope: !4473)
!4489 = !DILocation(line: 43, column: 7, scope: !4459)
!4490 = !DILocation(line: 47, column: 15, scope: !4468)
!4491 = !DILocation(line: 47, column: 15, scope: !4476)
!4492 = !DILocation(line: 47, column: 15, scope: !4493)
!4493 = !DILexicalBlockFile(scope: !4476, file: !4460, discriminator: 2)
!4494 = !DILocation(line: 47, column: 15, scope: !4495)
!4495 = !DILexicalBlockFile(scope: !4496, file: !4460, discriminator: 3)
!4496 = distinct !DILexicalBlock(scope: !4476, file: !4460, line: 47, column: 15)
!4497 = !DILocation(line: 47, column: 15, scope: !4498)
!4498 = !DILexicalBlockFile(scope: !4496, file: !4460, discriminator: 2)
!4499 = !DILocation(line: 47, column: 15, scope: !4500)
!4500 = !DILexicalBlockFile(scope: !4501, file: !4460, discriminator: 4)
!4501 = distinct !DILexicalBlock(scope: !4496, file: !4460, line: 47, column: 15)
!4502 = !DILocation(line: 47, column: 15, scope: !4503)
!4503 = !DILexicalBlockFile(scope: !4468, file: !4460, discriminator: 11)
!4504 = !DILocation(line: 47, column: 36, scope: !4505)
!4505 = !DILexicalBlockFile(scope: !4469, file: !4460, discriminator: 13)
!4506 = !DILocation(line: 47, column: 39, scope: !4479)
!4507 = !DILocation(line: 47, column: 39, scope: !4508)
!4508 = !DILexicalBlockFile(scope: !4479, file: !4460, discriminator: 26)
!4509 = !DILocation(line: 47, column: 59, scope: !4510)
!4510 = !DILexicalBlockFile(scope: !4469, file: !4460, discriminator: 27)
!4511 = !DILocation(line: 47, column: 15, scope: !4512)
!4512 = !DILexicalBlockFile(scope: !4470, file: !4460, discriminator: 27)
!4513 = !DILocation(line: 48, column: 13, scope: !4469)
!4514 = !DILocation(line: 71, column: 3, scope: !4459)
!4515 = distinct !DISubprogram(name: "locale_charset", scope: !619, file: !619, line: 393, type: !4516, isLocal: false, isDefinition: true, scopeLine: 394, flags: DIFlagPrototyped, isOptimized: true, unit: !275, variables: !4518)
!4516 = !DISubroutineType(types: !4517)
!4517 = !{!36}
!4518 = !{!4519, !4520, !4521, !4526}
!4519 = !DILocalVariable(name: "codeset", scope: !4515, file: !619, line: 395, type: !36)
!4520 = !DILocalVariable(name: "aliases", scope: !4515, file: !619, line: 396, type: !36)
!4521 = !DILocalVariable(name: "__s1_len", scope: !4522, file: !619, line: 592, type: !47)
!4522 = distinct !DILexicalBlock(scope: !4523, file: !619, line: 592, column: 9)
!4523 = distinct !DILexicalBlock(scope: !4524, file: !619, line: 592, column: 9)
!4524 = distinct !DILexicalBlock(scope: !4525, file: !619, line: 589, column: 3)
!4525 = distinct !DILexicalBlock(scope: !4515, file: !619, line: 589, column: 3)
!4526 = !DILocalVariable(name: "__s2_len", scope: !4522, file: !619, line: 592, type: !47)
!4527 = !DILocalVariable(name: "buf1", scope: !4528, file: !619, line: 196, type: !4595)
!4528 = distinct !DILexicalBlock(scope: !4529, file: !619, line: 194, column: 21)
!4529 = distinct !DILexicalBlock(scope: !4530, file: !619, line: 193, column: 19)
!4530 = distinct !DILexicalBlock(scope: !4531, file: !619, line: 193, column: 19)
!4531 = distinct !DILexicalBlock(scope: !4532, file: !619, line: 188, column: 17)
!4532 = distinct !DILexicalBlock(scope: !4533, file: !619, line: 181, column: 19)
!4533 = distinct !DILexicalBlock(scope: !4534, file: !619, line: 177, column: 13)
!4534 = distinct !DILexicalBlock(scope: !4535, file: !619, line: 173, column: 15)
!4535 = distinct !DILexicalBlock(scope: !4536, file: !619, line: 161, column: 9)
!4536 = distinct !DILexicalBlock(scope: !4537, file: !619, line: 157, column: 11)
!4537 = distinct !DILexicalBlock(scope: !4538, file: !619, line: 130, column: 5)
!4538 = distinct !DILexicalBlock(scope: !4539, file: !619, line: 129, column: 7)
!4539 = distinct !DISubprogram(name: "get_charset_aliases", scope: !619, file: !619, line: 124, type: !4516, isLocal: true, isDefinition: true, scopeLine: 125, flags: DIFlagPrototyped, isOptimized: true, unit: !275, variables: !4540)
!4540 = !{!4541, !4542, !4543, !4544, !4545, !4547, !4548, !4549, !4550, !4591, !4592, !4593, !4527, !4594, !4598, !4599, !4600}
!4541 = !DILocalVariable(name: "cp", scope: !4539, file: !619, line: 126, type: !36)
!4542 = !DILocalVariable(name: "dir", scope: !4537, file: !619, line: 132, type: !36)
!4543 = !DILocalVariable(name: "base", scope: !4537, file: !619, line: 133, type: !36)
!4544 = !DILocalVariable(name: "file_name", scope: !4537, file: !619, line: 134, type: !39)
!4545 = !DILocalVariable(name: "dir_len", scope: !4546, file: !619, line: 144, type: !47)
!4546 = distinct !DILexicalBlock(scope: !4537, file: !619, line: 143, column: 7)
!4547 = !DILocalVariable(name: "base_len", scope: !4546, file: !619, line: 145, type: !47)
!4548 = !DILocalVariable(name: "add_slash", scope: !4546, file: !619, line: 146, type: !46)
!4549 = !DILocalVariable(name: "fd", scope: !4535, file: !619, line: 162, type: !46)
!4550 = !DILocalVariable(name: "fp", scope: !4533, file: !619, line: 178, type: !4551)
!4551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4552, size: 64)
!4552 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !753, line: 49, baseType: !4553)
!4553 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !755, line: 241, size: 1728, elements: !4554)
!4554 = !{!4555, !4556, !4557, !4558, !4559, !4560, !4561, !4562, !4563, !4564, !4565, !4566, !4567, !4575, !4576, !4577, !4578, !4579, !4580, !4581, !4582, !4583, !4584, !4585, !4586, !4587, !4588, !4589, !4590}
!4555 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4553, file: !755, line: 242, baseType: !46, size: 32)
!4556 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4553, file: !755, line: 247, baseType: !39, size: 64, offset: 64)
!4557 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4553, file: !755, line: 248, baseType: !39, size: 64, offset: 128)
!4558 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4553, file: !755, line: 249, baseType: !39, size: 64, offset: 192)
!4559 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4553, file: !755, line: 250, baseType: !39, size: 64, offset: 256)
!4560 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4553, file: !755, line: 251, baseType: !39, size: 64, offset: 320)
!4561 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4553, file: !755, line: 252, baseType: !39, size: 64, offset: 384)
!4562 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4553, file: !755, line: 253, baseType: !39, size: 64, offset: 448)
!4563 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4553, file: !755, line: 254, baseType: !39, size: 64, offset: 512)
!4564 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4553, file: !755, line: 256, baseType: !39, size: 64, offset: 576)
!4565 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4553, file: !755, line: 257, baseType: !39, size: 64, offset: 640)
!4566 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4553, file: !755, line: 258, baseType: !39, size: 64, offset: 704)
!4567 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4553, file: !755, line: 260, baseType: !4568, size: 64, offset: 768)
!4568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4569, size: 64)
!4569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !755, line: 156, size: 192, elements: !4570)
!4570 = !{!4571, !4572, !4574}
!4571 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4569, file: !755, line: 157, baseType: !4568, size: 64)
!4572 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4569, file: !755, line: 158, baseType: !4573, size: 64, offset: 64)
!4573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4553, size: 64)
!4574 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4569, file: !755, line: 162, baseType: !46, size: 32, offset: 128)
!4575 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4553, file: !755, line: 262, baseType: !4573, size: 64, offset: 832)
!4576 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4553, file: !755, line: 264, baseType: !46, size: 32, offset: 896)
!4577 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4553, file: !755, line: 268, baseType: !46, size: 32, offset: 928)
!4578 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4553, file: !755, line: 270, baseType: !781, size: 64, offset: 960)
!4579 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4553, file: !755, line: 274, baseType: !184, size: 16, offset: 1024)
!4580 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4553, file: !755, line: 275, baseType: !786, size: 8, offset: 1040)
!4581 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4553, file: !755, line: 276, baseType: !788, size: 8, offset: 1048)
!4582 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4553, file: !755, line: 280, baseType: !790, size: 64, offset: 1088)
!4583 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4553, file: !755, line: 289, baseType: !793, size: 64, offset: 1152)
!4584 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4553, file: !755, line: 297, baseType: !40, size: 64, offset: 1216)
!4585 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4553, file: !755, line: 298, baseType: !40, size: 64, offset: 1280)
!4586 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4553, file: !755, line: 299, baseType: !40, size: 64, offset: 1344)
!4587 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4553, file: !755, line: 300, baseType: !40, size: 64, offset: 1408)
!4588 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4553, file: !755, line: 302, baseType: !47, size: 64, offset: 1472)
!4589 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4553, file: !755, line: 303, baseType: !46, size: 32, offset: 1536)
!4590 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4553, file: !755, line: 305, baseType: !801, size: 160, offset: 1568)
!4591 = !DILocalVariable(name: "res_ptr", scope: !4531, file: !619, line: 190, type: !39)
!4592 = !DILocalVariable(name: "res_size", scope: !4531, file: !619, line: 191, type: !47)
!4593 = !DILocalVariable(name: "c", scope: !4528, file: !619, line: 195, type: !46)
!4594 = !DILocalVariable(name: "buf2", scope: !4528, file: !619, line: 197, type: !4595)
!4595 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 408, elements: !4596)
!4596 = !{!4597}
!4597 = !DISubrange(count: 51)
!4598 = !DILocalVariable(name: "l1", scope: !4528, file: !619, line: 198, type: !47)
!4599 = !DILocalVariable(name: "l2", scope: !4528, file: !619, line: 198, type: !47)
!4600 = !DILocalVariable(name: "old_res_ptr", scope: !4528, file: !619, line: 199, type: !39)
!4601 = !DILocation(line: 196, column: 28, scope: !4528, inlinedAt: !4602)
!4602 = distinct !DILocation(line: 589, column: 18, scope: !4525)
!4603 = !DILocation(line: 197, column: 28, scope: !4528, inlinedAt: !4602)
!4604 = !DILocation(line: 403, column: 13, scope: !4515)
!4605 = !DILocation(line: 395, column: 15, scope: !4515)
!4606 = !DILocation(line: 584, column: 15, scope: !4607)
!4607 = distinct !DILexicalBlock(scope: !4515, file: !619, line: 584, column: 7)
!4608 = !DILocation(line: 584, column: 7, scope: !4515)
!4609 = !DILocation(line: 128, column: 8, scope: !4539, inlinedAt: !4602)
!4610 = !DILocation(line: 126, column: 15, scope: !4539, inlinedAt: !4602)
!4611 = !DILocation(line: 129, column: 10, scope: !4538, inlinedAt: !4602)
!4612 = !DILocation(line: 129, column: 7, scope: !4539, inlinedAt: !4602)
!4613 = !DILocation(line: 138, column: 13, scope: !4537, inlinedAt: !4602)
!4614 = !DILocation(line: 132, column: 19, scope: !4537, inlinedAt: !4602)
!4615 = !DILocation(line: 139, column: 15, scope: !4616, inlinedAt: !4602)
!4616 = distinct !DILexicalBlock(scope: !4537, file: !619, line: 139, column: 11)
!4617 = !DILocation(line: 139, column: 23, scope: !4616, inlinedAt: !4602)
!4618 = !DILocation(line: 139, column: 26, scope: !4619, inlinedAt: !4602)
!4619 = !DILexicalBlockFile(scope: !4616, file: !619, discriminator: 1)
!4620 = !DILocation(line: 139, column: 33, scope: !4619, inlinedAt: !4602)
!4621 = !DILocation(line: 139, column: 11, scope: !4622, inlinedAt: !4602)
!4622 = !DILexicalBlockFile(scope: !4537, file: !619, discriminator: 1)
!4623 = !DILocation(line: 140, column: 9, scope: !4616, inlinedAt: !4602)
!4624 = !DILocation(line: 144, column: 26, scope: !4546, inlinedAt: !4602)
!4625 = !DILocation(line: 144, column: 16, scope: !4546, inlinedAt: !4602)
!4626 = !DILocation(line: 145, column: 16, scope: !4546, inlinedAt: !4602)
!4627 = !DILocation(line: 146, column: 34, scope: !4546, inlinedAt: !4602)
!4628 = !DILocation(line: 146, column: 38, scope: !4546, inlinedAt: !4602)
!4629 = !DILocation(line: 146, column: 42, scope: !4630, inlinedAt: !4602)
!4630 = !DILexicalBlockFile(scope: !4546, file: !619, discriminator: 1)
!4631 = !DILocation(line: 146, column: 41, scope: !4630, inlinedAt: !4602)
!4632 = !DILocation(line: 147, column: 48, scope: !4546, inlinedAt: !4602)
!4633 = !DILocation(line: 147, column: 46, scope: !4546, inlinedAt: !4602)
!4634 = !DILocation(line: 147, column: 69, scope: !4546, inlinedAt: !4602)
!4635 = !DILocation(line: 147, column: 30, scope: !4546, inlinedAt: !4602)
!4636 = !DILocation(line: 134, column: 13, scope: !4537, inlinedAt: !4602)
!4637 = !DILocation(line: 148, column: 13, scope: !4546, inlinedAt: !4602)
!4638 = !DILocation(line: 150, column: 13, scope: !4639, inlinedAt: !4602)
!4639 = distinct !DILexicalBlock(scope: !4640, file: !619, line: 149, column: 11)
!4640 = distinct !DILexicalBlock(scope: !4546, file: !619, line: 148, column: 13)
!4641 = !DILocation(line: 151, column: 17, scope: !4639, inlinedAt: !4602)
!4642 = !DILocation(line: 152, column: 34, scope: !4643, inlinedAt: !4602)
!4643 = distinct !DILexicalBlock(scope: !4639, file: !619, line: 151, column: 17)
!4644 = !DILocation(line: 153, column: 41, scope: !4639, inlinedAt: !4602)
!4645 = !DILocation(line: 153, column: 13, scope: !4639, inlinedAt: !4602)
!4646 = !DILocation(line: 157, column: 11, scope: !4537, inlinedAt: !4602)
!4647 = !DILocation(line: 171, column: 16, scope: !4535, inlinedAt: !4602)
!4648 = !DILocation(line: 162, column: 15, scope: !4535, inlinedAt: !4602)
!4649 = !DILocation(line: 173, column: 18, scope: !4534, inlinedAt: !4602)
!4650 = !DILocation(line: 173, column: 15, scope: !4535, inlinedAt: !4602)
!4651 = !DILocation(line: 180, column: 20, scope: !4533, inlinedAt: !4602)
!4652 = !DILocation(line: 178, column: 21, scope: !4533, inlinedAt: !4602)
!4653 = !DILocation(line: 181, column: 22, scope: !4532, inlinedAt: !4602)
!4654 = !DILocation(line: 181, column: 19, scope: !4533, inlinedAt: !4602)
!4655 = !DILocation(line: 190, column: 25, scope: !4531, inlinedAt: !4602)
!4656 = !DILocation(line: 184, column: 19, scope: !4657, inlinedAt: !4602)
!4657 = distinct !DILexicalBlock(scope: !4532, file: !619, line: 182, column: 17)
!4658 = !DILocation(line: 186, column: 17, scope: !4657, inlinedAt: !4602)
!4659 = !DILocation(line: 191, column: 26, scope: !4531, inlinedAt: !4602)
!4660 = !DILocation(line: 196, column: 23, scope: !4528, inlinedAt: !4602)
!4661 = !DILocation(line: 197, column: 23, scope: !4528, inlinedAt: !4602)
!4662 = !DILocalVariable(name: "__fp", arg: 1, scope: !4663, file: !1181, line: 63, type: !4551)
!4663 = distinct !DISubprogram(name: "getc_unlocked", scope: !1181, file: !1181, line: 63, type: !4664, isLocal: false, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: true, unit: !275, variables: !4666)
!4664 = !DISubroutineType(types: !4665)
!4665 = !{!46, !4551}
!4666 = !{!4662}
!4667 = !DILocation(line: 63, column: 22, scope: !4663, inlinedAt: !4668)
!4668 = distinct !DILocation(line: 201, column: 27, scope: !4528, inlinedAt: !4602)
!4669 = !DILocation(line: 65, column: 10, scope: !4663, inlinedAt: !4668)
!4670 = !DILocation(line: 65, column: 10, scope: !4671, inlinedAt: !4668)
!4671 = !DILexicalBlockFile(scope: !4663, file: !1181, discriminator: 1)
!4672 = !DILocation(line: 65, column: 10, scope: !4673, inlinedAt: !4668)
!4673 = !DILexicalBlockFile(scope: !4663, file: !1181, discriminator: 2)
!4674 = !DILocation(line: 65, column: 10, scope: !4675, inlinedAt: !4668)
!4675 = !DILexicalBlockFile(scope: !4663, file: !1181, discriminator: 3)
!4676 = !DILocation(line: 195, column: 27, scope: !4528, inlinedAt: !4602)
!4677 = !DILocation(line: 202, column: 27, scope: !4528, inlinedAt: !4602)
!4678 = !DILocation(line: 63, column: 22, scope: !4663, inlinedAt: !4679)
!4679 = distinct !DILocation(line: 210, column: 33, scope: !4680, inlinedAt: !4602)
!4680 = distinct !DILexicalBlock(scope: !4681, file: !619, line: 207, column: 25)
!4681 = distinct !DILexicalBlock(scope: !4528, file: !619, line: 206, column: 27)
!4682 = !DILocation(line: 65, column: 10, scope: !4663, inlinedAt: !4679)
!4683 = !DILocation(line: 65, column: 10, scope: !4671, inlinedAt: !4679)
!4684 = !DILocation(line: 65, column: 10, scope: !4673, inlinedAt: !4679)
!4685 = !DILocation(line: 65, column: 10, scope: !4675, inlinedAt: !4679)
!4686 = !DILocation(line: 210, column: 29, scope: !4687, inlinedAt: !4602)
!4687 = !DILexicalBlockFile(scope: !4680, file: !619, discriminator: 1)
!4688 = distinct !{!4688, !4689, !4690}
!4689 = !DILocation(line: 193, column: 19, scope: !4530)
!4690 = !DILocation(line: 241, column: 21, scope: !4530)
!4691 = !DILocation(line: 216, column: 23, scope: !4528, inlinedAt: !4602)
!4692 = !DILocation(line: 217, column: 27, scope: !4693, inlinedAt: !4602)
!4693 = distinct !DILexicalBlock(scope: !4528, file: !619, line: 217, column: 27)
!4694 = !DILocation(line: 217, column: 64, scope: !4693, inlinedAt: !4602)
!4695 = !DILocation(line: 217, column: 27, scope: !4528, inlinedAt: !4602)
!4696 = !DILocation(line: 219, column: 28, scope: !4528, inlinedAt: !4602)
!4697 = !DILocation(line: 198, column: 30, scope: !4528, inlinedAt: !4602)
!4698 = !DILocation(line: 220, column: 28, scope: !4528, inlinedAt: !4602)
!4699 = !DILocation(line: 198, column: 34, scope: !4528, inlinedAt: !4602)
!4700 = !DILocation(line: 199, column: 29, scope: !4528, inlinedAt: !4602)
!4701 = !DILocation(line: 222, column: 36, scope: !4702, inlinedAt: !4602)
!4702 = distinct !DILexicalBlock(scope: !4528, file: !619, line: 222, column: 27)
!4703 = !DILocation(line: 222, column: 27, scope: !4528, inlinedAt: !4602)
!4704 = !DILocation(line: 225, column: 63, scope: !4705, inlinedAt: !4602)
!4705 = distinct !DILexicalBlock(scope: !4702, file: !619, line: 223, column: 25)
!4706 = !DILocation(line: 225, column: 46, scope: !4705, inlinedAt: !4602)
!4707 = !DILocation(line: 226, column: 25, scope: !4705, inlinedAt: !4602)
!4708 = !DILocation(line: 229, column: 36, scope: !4709, inlinedAt: !4602)
!4709 = distinct !DILexicalBlock(scope: !4702, file: !619, line: 228, column: 25)
!4710 = !DILocation(line: 230, column: 73, scope: !4709, inlinedAt: !4602)
!4711 = !DILocation(line: 230, column: 46, scope: !4709, inlinedAt: !4602)
!4712 = !DILocation(line: 232, column: 35, scope: !4713, inlinedAt: !4602)
!4713 = distinct !DILexicalBlock(scope: !4528, file: !619, line: 232, column: 27)
!4714 = !DILocation(line: 232, column: 27, scope: !4528, inlinedAt: !4602)
!4715 = !DILocation(line: 236, column: 27, scope: !4716, inlinedAt: !4602)
!4716 = distinct !DILexicalBlock(scope: !4713, file: !619, line: 233, column: 25)
!4717 = !DILocation(line: 237, column: 27, scope: !4716, inlinedAt: !4602)
!4718 = !DILocation(line: 239, column: 39, scope: !4528, inlinedAt: !4602)
!4719 = !DILocation(line: 239, column: 50, scope: !4528, inlinedAt: !4602)
!4720 = !DILocation(line: 239, column: 61, scope: !4528, inlinedAt: !4602)
!4721 = !DILocalVariable(name: "__dest", arg: 1, scope: !4722, file: !4723, line: 107, type: !4726)
!4722 = distinct !DISubprogram(name: "strcpy", scope: !4723, file: !4723, line: 107, type: !4724, isLocal: false, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: true, unit: !275, variables: !4728)
!4723 = !DIFile(filename: "/usr/include/bits/string3.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4724 = !DISubroutineType(types: !4725)
!4725 = !{!39, !4726, !4727}
!4726 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !39)
!4727 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !36)
!4728 = !{!4721, !4729}
!4729 = !DILocalVariable(name: "__src", arg: 2, scope: !4722, file: !4723, line: 107, type: !4727)
!4730 = !DILocation(line: 107, column: 1, scope: !4722, inlinedAt: !4731)
!4731 = distinct !DILocation(line: 239, column: 23, scope: !4528, inlinedAt: !4602)
!4732 = !DILocation(line: 109, column: 49, scope: !4722, inlinedAt: !4731)
!4733 = !DILocation(line: 109, column: 10, scope: !4722, inlinedAt: !4731)
!4734 = !DILocation(line: 107, column: 1, scope: !4722, inlinedAt: !4735)
!4735 = distinct !DILocation(line: 240, column: 23, scope: !4528, inlinedAt: !4602)
!4736 = !DILocation(line: 109, column: 49, scope: !4722, inlinedAt: !4735)
!4737 = !DILocation(line: 109, column: 10, scope: !4722, inlinedAt: !4735)
!4738 = !DILocation(line: 241, column: 21, scope: !4529, inlinedAt: !4602)
!4739 = !DILocation(line: 242, column: 19, scope: !4531, inlinedAt: !4602)
!4740 = !DILocation(line: 243, column: 32, scope: !4741, inlinedAt: !4602)
!4741 = distinct !DILexicalBlock(scope: !4531, file: !619, line: 243, column: 23)
!4742 = !DILocation(line: 243, column: 23, scope: !4531, inlinedAt: !4602)
!4743 = !DILocation(line: 247, column: 33, scope: !4744, inlinedAt: !4602)
!4744 = distinct !DILexicalBlock(scope: !4741, file: !619, line: 246, column: 21)
!4745 = !DILocation(line: 247, column: 45, scope: !4744, inlinedAt: !4602)
!4746 = !DILocation(line: 253, column: 11, scope: !4535, inlinedAt: !4602)
!4747 = !DILocation(line: 377, column: 23, scope: !4537, inlinedAt: !4602)
!4748 = !DILocation(line: 378, column: 5, scope: !4537, inlinedAt: !4602)
!4749 = !DILocation(line: 396, column: 15, scope: !4515)
!4750 = !DILocation(line: 590, column: 8, scope: !4524)
!4751 = !DILocation(line: 590, column: 17, scope: !4524)
!4752 = !DILocation(line: 589, column: 3, scope: !4753)
!4753 = !DILexicalBlockFile(scope: !4525, file: !619, discriminator: 1)
!4754 = !DILocation(line: 592, column: 9, scope: !4522)
!4755 = !DILocation(line: 592, column: 35, scope: !4523)
!4756 = !DILocation(line: 593, column: 9, scope: !4523)
!4757 = !DILocation(line: 593, column: 24, scope: !4758)
!4758 = !DILexicalBlockFile(scope: !4523, file: !619, discriminator: 1)
!4759 = !DILocation(line: 593, column: 31, scope: !4758)
!4760 = !DILocation(line: 593, column: 34, scope: !4761)
!4761 = !DILexicalBlockFile(scope: !4523, file: !619, discriminator: 2)
!4762 = !DILocation(line: 593, column: 45, scope: !4761)
!4763 = !DILocation(line: 592, column: 9, scope: !4764)
!4764 = !DILexicalBlockFile(scope: !4524, file: !619, discriminator: 1)
!4765 = !DILocation(line: 595, column: 29, scope: !4766)
!4766 = distinct !DILexicalBlock(scope: !4523, file: !619, line: 594, column: 7)
!4767 = !DILocation(line: 595, column: 27, scope: !4766)
!4768 = !DILocation(line: 595, column: 46, scope: !4766)
!4769 = !DILocation(line: 596, column: 9, scope: !4766)
!4770 = !DILocation(line: 591, column: 19, scope: !4524)
!4771 = !DILocation(line: 591, column: 36, scope: !4524)
!4772 = !DILocation(line: 591, column: 16, scope: !4524)
!4773 = !DILocation(line: 591, column: 52, scope: !4764)
!4774 = !DILocation(line: 591, column: 69, scope: !4524)
!4775 = !DILocation(line: 591, column: 49, scope: !4524)
!4776 = distinct !{!4776, !4777, !4778}
!4777 = !DILocation(line: 589, column: 3, scope: !4525)
!4778 = !DILocation(line: 597, column: 7, scope: !4525)
!4779 = !DILocation(line: 602, column: 7, scope: !4780)
!4780 = distinct !DILexicalBlock(scope: !4515, file: !619, line: 602, column: 7)
!4781 = !DILocation(line: 602, column: 18, scope: !4780)
!4782 = !DILocation(line: 602, column: 7, scope: !4515)
!4783 = !DILocation(line: 612, column: 3, scope: !4515)
