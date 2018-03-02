; ModuleID = 'coreutils-8.27/src/mkfifo.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.option = type { i8*, i32, i32*, i32 }
%struct.quoting_options = type { i32, i32, [8 x i32], i8*, i8* }
%struct.slotvec = type { i64, i8* }
%struct.mode_change = type { i8, i8, i32, i32, i32 }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Usage: %s [OPTION]... NAME...\0A\00", align 1
@.str.2 = private unnamed_addr constant [50 x i8] c"Create named pipes (FIFOs) with the given NAMEs.\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.21 = private unnamed_addr constant [75 x i8] c"\0AMandatory arguments to long options are mandatory for short options too.\0A\00", align 1
@.str.3 = private unnamed_addr constant [73 x i8] c"  -m, --mode=MODE    set file permission bits to MODE, not a=rw - umask\0A\00", align 1
@.str.4 = private unnamed_addr constant [207 x i8] c"  -Z                   set the SELinux security context to default type\0A      --context[=CTX]  like -Z, or if CTX is specified then set the SELinux\0A                         or SMACK security context to CTX\0A\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.6 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"mkfifo\00", align 1
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
@.str.11 = private unnamed_addr constant [4 x i8] c"m:Z\00", align 1
@longopts = internal constant [5 x %struct.option] [%struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.37, i32 0, i32 0), i32 2, i32* null, i32 90 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.38, i32 0, i32 0), i32 1, i32* null, i32 109 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.39, i32 0, i32 0), i32 0, i32* null, i32 -130 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.40, i32 0, i32 0), i32 0, i32* null, i32 -131 }, %struct.option zeroinitializer], align 16, !dbg !0
@optarg = external local_unnamed_addr global i8*, align 8
@.str.12 = private unnamed_addr constant [73 x i8] c"warning: ignoring --context; it requires an SELinux/SMACK-enabled kernel\00", align 1
@.str.14 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1
@optind = external local_unnamed_addr global i32, align 4
@.str.15 = private unnamed_addr constant [16 x i8] c"missing operand\00", align 1
@.str.17 = private unnamed_addr constant [13 x i8] c"invalid mode\00", align 1
@.str.18 = private unnamed_addr constant [44 x i8] c"mode must specify only file permission bits\00", align 1
@.str.19 = private unnamed_addr constant [22 x i8] c"cannot create fifo %s\00", align 1
@.str.20 = private unnamed_addr constant [29 x i8] c"cannot set permissions of %s\00", align 1
@.str.37 = private unnamed_addr constant [8 x i8] c"context\00", align 1
@.str.38 = private unnamed_addr constant [5 x i8] c"mode\00", align 1
@.str.39 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.40 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@Version = local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0), align 8, !dbg !77
@.str.16 = private unnamed_addr constant [5 x i8] c"8.27\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !83
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !88
@.str.22 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.23 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.24 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = global i32 1, align 4, !dbg !92
@program_name = local_unnamed_addr global i8* null, align 8, !dbg !99
@.str.41 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.42 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.43 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.44, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.45, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.46, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.47, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.48, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.49, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.50, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.51, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.52, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.53, i32 0, i32 0), i8* null], align 16, !dbg !106
@.str.44 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.45 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.46 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.47 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.48 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.49 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.50 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.51 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.52 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.53 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_vals = local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !134
@quote_quoting_options = global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !141
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !154
@.str.11.54 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.55 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.56 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.57 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.58 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.59 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.60 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !161
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !168
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !156
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !170
@.str.65 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.66 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.67 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.3.68 = private unnamed_addr constant [203 x i8] c"\0ALicense GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\0A\00", align 1
@.str.4.69 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.5.70 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.6.71 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.7.72 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.8.73 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.9.74 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.10.75 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.11.76 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.12.77 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.13.78 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@.str.14.81 = private unnamed_addr constant [21 x i8] c"\0AReport bugs to: %s\0A\00", align 1
@.str.15.82 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.16.83 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.17.84 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.18.85 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.19.86 = private unnamed_addr constant [64 x i8] c"General help using GNU software: <http://www.gnu.org/gethelp/>\0A\00", align 1
@version_etc_copyright = constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !176
@.str.1.97 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.98 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1.107 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.110 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@charset_aliases = internal global i8* null, align 8, !dbg !185
@.str.3.111 = private unnamed_addr constant [16 x i8] c"CHARSETALIASDIR\00", align 1
@.str.4.112 = private unnamed_addr constant [15 x i8] c"/usr/local/lib\00", align 1
@.str.2.113 = private unnamed_addr constant [14 x i8] c"charset.alias\00", align 1
@.str.5.114 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.6.115 = private unnamed_addr constant [10 x i8] c"%50s %50s\00", align 1
@.str.1.116 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @usage(i32) local_unnamed_addr #0 !dbg !593 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !597, metadata !598), !dbg !599
  %2 = icmp eq i32 %0, 0, !dbg !600
  br i1 %2, label %8, label %3, !dbg !602

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !603, !tbaa !606
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #10, !dbg !603
  %6 = load i8*, i8** @program_name, align 8, !dbg !603, !tbaa !606
  %7 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %4, i32 1, i8* %5, i8* %6) #10, !dbg !610
  br label %45, !dbg !612

; <label>:8:                                      ; preds = %1
  %9 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 5) #10, !dbg !614
  %10 = load i8*, i8** @program_name, align 8, !dbg !614, !tbaa !606
  %11 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %9, i8* %10) #10, !dbg !616
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0), i32 5) #10, !dbg !618
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !618, !tbaa !606
  %14 = tail call i32 @fputs_unlocked(i8* %12, %struct._IO_FILE* %13) #10, !dbg !619
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.21, i64 0, i64 0), i32 5) #10, !dbg !620
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !620, !tbaa !606
  %17 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %16) #10, !dbg !625
  %18 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.3, i64 0, i64 0), i32 5) #10, !dbg !627
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !627, !tbaa !606
  %20 = tail call i32 @fputs_unlocked(i8* %18, %struct._IO_FILE* %19) #10, !dbg !628
  %21 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([207 x i8], [207 x i8]* @.str.4, i64 0, i64 0), i32 5) #10, !dbg !629
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !629, !tbaa !606
  %23 = tail call i32 @fputs_unlocked(i8* %21, %struct._IO_FILE* %22) #10, !dbg !630
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0), i32 5) #10, !dbg !631
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !631, !tbaa !606
  %26 = tail call i32 @fputs_unlocked(i8* %24, %struct._IO_FILE* %25) #10, !dbg !632
  %27 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.6, i64 0, i64 0), i32 5) #10, !dbg !633
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !633, !tbaa !606
  %29 = tail call i32 @fputs_unlocked(i8* %27, %struct._IO_FILE* %28) #10, !dbg !634
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !42, metadata !598) #10, !dbg !635
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i64 0, metadata !42, metadata !598) #10, !dbg !635
  %30 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.30, i64 0, i64 0), i32 5) #10, !dbg !637
  %31 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %30, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.31, i64 0, i64 0)) #10, !dbg !638
  %32 = tail call i8* @setlocale(i32 5, i8* null) #10, !dbg !640
  tail call void @llvm.dbg.value(metadata i8* %32, i64 0, metadata !53, metadata !598) #10, !dbg !641
  %33 = icmp eq i8* %32, null, !dbg !642
  br i1 %33, label %40, label %34, !dbg !643

; <label>:34:                                     ; preds = %8
  %35 = tail call i32 @strncmp(i8* nonnull %32, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.32, i64 0, i64 0), i64 3) #13, !dbg !644
  %36 = icmp eq i32 %35, 0, !dbg !644
  br i1 %36, label %40, label %37, !dbg !646

; <label>:37:                                     ; preds = %34
  %38 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.33, i64 0, i64 0), i32 5) #10, !dbg !648
  %39 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %38, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0)) #10, !dbg !650
  br label %40, !dbg !652

; <label>:40:                                     ; preds = %8, %34, %37
  %41 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.34, i64 0, i64 0), i32 5) #10, !dbg !653
  %42 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %41, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.31, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0)) #10, !dbg !654
  %43 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.35, i64 0, i64 0), i32 5) #10, !dbg !655
  %44 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %43, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.36, i64 0, i64 0)) #10, !dbg !656
  br label %45

; <label>:45:                                     ; preds = %40, %3
  tail call void @exit(i32 %0) #14, !dbg !657
  unreachable, !dbg !657
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
define i32 @main(i32, i8**) local_unnamed_addr #6 !dbg !658 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !663, metadata !598), !dbg !685
  tail call void @llvm.dbg.value(metadata i8** %1, i64 0, metadata !664, metadata !598), !dbg !686
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !670, metadata !598), !dbg !687
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !671, metadata !598), !dbg !688
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !673, metadata !598), !dbg !689
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !674, metadata !598), !dbg !690
  %3 = load i8*, i8** %1, align 8, !dbg !691, !tbaa !606
  tail call void @set_program_name(i8* %3) #10, !dbg !692
  %4 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0)) #10, !dbg !693
  %5 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0)) #10, !dbg !694
  %6 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0)) #10, !dbg !695
  %7 = tail call i32 @atexit(void ()* nonnull @close_stdout) #10, !dbg !696
  br label %8, !dbg !697

; <label>:8:                                      ; preds = %12, %2
  %9 = phi i8* [ %13, %12 ], [ null, %2 ]
  br label %10, !dbg !687

; <label>:10:                                     ; preds = %19, %8
  tail call void @llvm.dbg.value(metadata i8* %9, i64 0, metadata !670, metadata !598), !dbg !687
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !673, metadata !598), !dbg !689
  %11 = tail call i32 @getopt_long(i32 %0, i8** %1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), %struct.option* getelementptr inbounds ([5 x %struct.option], [5 x %struct.option]* @longopts, i64 0, i64 0), i32* null) #10, !dbg !698
  tail call void @llvm.dbg.value(metadata i32 %11, i64 0, metadata !672, metadata !598), !dbg !700
  switch i32 %11, label %24 [
    i32 -1, label %25
    i32 109, label %12
    i32 90, label %14
    i32 -130, label %20
    i32 -131, label %21
  ], !dbg !701

; <label>:12:                                     ; preds = %10
  %13 = load i8*, i8** @optarg, align 8, !dbg !702, !tbaa !606
  tail call void @llvm.dbg.value(metadata i8* %13, i64 0, metadata !670, metadata !598), !dbg !687
  br label %8, !dbg !705, !llvm.loop !706

; <label>:14:                                     ; preds = %10
  %15 = load i8*, i8** @optarg, align 8, !tbaa !606
  %16 = icmp eq i8* %15, null, !dbg !708
  br i1 %16, label %19, label %17, !dbg !712

; <label>:17:                                     ; preds = %14
  %18 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.12, i64 0, i64 0), i32 5) #10, !dbg !713
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %18) #10, !dbg !715
  br label %19, !dbg !716

; <label>:19:                                     ; preds = %17, %14
  br label %10, !dbg !687, !llvm.loop !706

; <label>:20:                                     ; preds = %10
  tail call void @usage(i32 0) #15, !dbg !717
  unreachable, !dbg !717

; <label>:21:                                     ; preds = %10
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !718, !tbaa !606
  %23 = load i8*, i8** @Version, align 8, !dbg !718, !tbaa !606
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %22, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0), i8* %23, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i8* null) #10, !dbg !718
  tail call void @exit(i32 0) #14, !dbg !719
  unreachable, !dbg !718

; <label>:24:                                     ; preds = %10
  tail call void @usage(i32 1) #15, !dbg !721
  unreachable, !dbg !721

; <label>:25:                                     ; preds = %10
  %26 = load i32, i32* @optind, align 4, !dbg !722, !tbaa !724
  %27 = icmp eq i32 %26, %0, !dbg !726
  br i1 %27, label %28, label %30, !dbg !727

; <label>:28:                                     ; preds = %25
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i64 0, i64 0), i32 5) #10, !dbg !728
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %29) #10, !dbg !730
  tail call void @usage(i32 1) #15, !dbg !732
  unreachable, !dbg !732

; <label>:30:                                     ; preds = %25
  tail call void @llvm.dbg.value(metadata i32 438, i64 0, metadata !665, metadata !598), !dbg !733
  %31 = icmp ne i8* %9, null, !dbg !734
  br i1 %31, label %32, label %45, !dbg !735

; <label>:32:                                     ; preds = %30
  %33 = tail call %struct.mode_change* @mode_compile(i8* nonnull %9) #10, !dbg !736
  tail call void @llvm.dbg.value(metadata %struct.mode_change* %33, i64 0, metadata !681, metadata !598), !dbg !737
  %34 = icmp eq %struct.mode_change* %33, null, !dbg !738
  br i1 %34, label %35, label %37, !dbg !740

; <label>:35:                                     ; preds = %32
  %36 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.17, i64 0, i64 0), i32 5) #10, !dbg !741
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %36) #10, !dbg !742
  unreachable, !dbg !741

; <label>:37:                                     ; preds = %32
  %38 = tail call i32 @umask(i32 0) #10, !dbg !744
  tail call void @llvm.dbg.value(metadata i32 %38, i64 0, metadata !678, metadata !598), !dbg !745
  %39 = tail call i32 @umask(i32 %38) #10, !dbg !746
  %40 = tail call i32 @mode_adjust(i32 438, i1 zeroext false, i32 %38, %struct.mode_change* nonnull %33, i32* null) #10, !dbg !747
  tail call void @llvm.dbg.value(metadata i32 %40, i64 0, metadata !665, metadata !598), !dbg !733
  %41 = bitcast %struct.mode_change* %33 to i8*, !dbg !748
  tail call void @free(i8* %41) #10, !dbg !749
  %42 = icmp ugt i32 %40, 511, !dbg !750
  br i1 %42, label %50, label %43, !dbg !752

; <label>:43:                                     ; preds = %37
  %44 = load i32, i32* @optind, align 4, !tbaa !724
  br label %45, !dbg !752

; <label>:45:                                     ; preds = %43, %30
  %46 = phi i32 [ %44, %43 ], [ %26, %30 ], !dbg !753
  %47 = phi i32 [ %40, %43 ], [ 438, %30 ]
  tail call void @llvm.dbg.value(metadata i32 %47, i64 0, metadata !665, metadata !598), !dbg !733
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !671, metadata !598), !dbg !688
  %48 = icmp slt i32 %46, %0, !dbg !757
  br i1 %48, label %49, label %92, !dbg !758

; <label>:49:                                     ; preds = %45
  br label %52, !dbg !760

; <label>:50:                                     ; preds = %37
  %51 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.18, i64 0, i64 0), i32 5) #10, !dbg !763
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %51) #10, !dbg !764
  unreachable, !dbg !763

; <label>:52:                                     ; preds = %49, %86
  %53 = phi i32 [ %89, %86 ], [ %46, %49 ]
  %54 = phi i32 [ %87, %86 ], [ 0, %49 ]
  %55 = sext i32 %53 to i64, !dbg !760
  %56 = getelementptr inbounds i8*, i8** %1, i64 %55, !dbg !760
  %57 = load i8*, i8** %56, align 8, !dbg !760, !tbaa !606
  %58 = tail call i32 @mkfifo(i8* %57, i32 %47) #10, !dbg !766
  %59 = icmp eq i32 %58, 0, !dbg !767
  br i1 %59, label %69, label %60, !dbg !768

; <label>:60:                                     ; preds = %52
  %61 = tail call i32* @__errno_location() #1, !dbg !769
  %62 = load i32, i32* %61, align 4, !dbg !769, !tbaa !724
  %63 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.19, i64 0, i64 0), i32 5) #10, !dbg !771
  %64 = load i32, i32* @optind, align 4, !dbg !773, !tbaa !724
  %65 = sext i32 %64 to i64, !dbg !773
  %66 = getelementptr inbounds i8*, i8** %1, i64 %65, !dbg !773
  %67 = load i8*, i8** %66, align 8, !dbg !773, !tbaa !606
  %68 = tail call i8* @quotearg_style(i32 4, i8* %67) #10, !dbg !774
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %62, i8* %63, i8* %68) #10, !dbg !776
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !671, metadata !598), !dbg !688
  br label %86, !dbg !778

; <label>:69:                                     ; preds = %52
  br i1 %31, label %70, label %86, !dbg !779

; <label>:70:                                     ; preds = %69
  %71 = load i32, i32* @optind, align 4, !dbg !781, !tbaa !724
  %72 = sext i32 %71 to i64, !dbg !783
  %73 = getelementptr inbounds i8*, i8** %1, i64 %72, !dbg !783
  %74 = load i8*, i8** %73, align 8, !dbg !783, !tbaa !606
  %75 = tail call i32 @chmod(i8* %74, i32 %47) #10, !dbg !784
  %76 = icmp eq i32 %75, 0, !dbg !785
  br i1 %76, label %86, label %77, !dbg !786

; <label>:77:                                     ; preds = %70
  %78 = tail call i32* @__errno_location() #1, !dbg !788
  %79 = load i32, i32* %78, align 4, !dbg !788, !tbaa !724
  %80 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.20, i64 0, i64 0), i32 5) #10, !dbg !790
  %81 = load i32, i32* @optind, align 4, !dbg !792, !tbaa !724
  %82 = sext i32 %81 to i64, !dbg !792
  %83 = getelementptr inbounds i8*, i8** %1, i64 %82, !dbg !792
  %84 = load i8*, i8** %83, align 8, !dbg !792, !tbaa !606
  %85 = tail call i8* @quotearg_style(i32 4, i8* %84) #10, !dbg !792
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %79, i8* %80, i8* %85) #10, !dbg !793
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !671, metadata !598), !dbg !688
  br label %86, !dbg !795

; <label>:86:                                     ; preds = %70, %60, %77, %69
  %87 = phi i32 [ 1, %60 ], [ 1, %77 ], [ %54, %70 ], [ %54, %69 ]
  tail call void @llvm.dbg.value(metadata i32 %87, i64 0, metadata !671, metadata !598), !dbg !688
  %88 = load i32, i32* @optind, align 4, !dbg !796, !tbaa !724
  %89 = add nsw i32 %88, 1, !dbg !796
  store i32 %89, i32* @optind, align 4, !dbg !796, !tbaa !724
  tail call void @llvm.dbg.value(metadata i32 %47, i64 0, metadata !665, metadata !598), !dbg !733
  tail call void @llvm.dbg.value(metadata i32 %87, i64 0, metadata !671, metadata !598), !dbg !688
  %90 = icmp slt i32 %89, %0, !dbg !757
  br i1 %90, label %52, label %91, !dbg !758, !llvm.loop !798

; <label>:91:                                     ; preds = %86
  br label %92, !dbg !801

; <label>:92:                                     ; preds = %91, %45
  %93 = phi i32 [ 0, %45 ], [ %87, %91 ]
  ret i32 %93, !dbg !801
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

; Function Attrs: nounwind
declare i32 @umask(i32) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @free(i8* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @mkfifo(i8*, i32) local_unnamed_addr #2

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #7

; Function Attrs: nounwind
declare i32 @chmod(i8* nocapture readonly, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_file_name(i8*) local_unnamed_addr #6 !dbg !802 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !804, metadata !598), !dbg !805
  store i8* %0, i8** @file_name, align 8, !dbg !806, !tbaa !606
  ret void, !dbg !807
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_ignore_EPIPE(i1 zeroext) local_unnamed_addr #6 !dbg !808 {
  %2 = zext i1 %0 to i8
  tail call void @llvm.dbg.value(metadata i1 %0, i64 0, metadata !812, metadata !813), !dbg !814
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !815, !tbaa !816
  ret void, !dbg !818
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout() #6 !dbg !819 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !824, !tbaa !606
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #10, !dbg !825
  %3 = icmp eq i32 %2, 0, !dbg !826
  br i1 %3, label %21, label %4, !dbg !827

; <label>:4:                                      ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !828, !tbaa !816, !range !830
  %6 = icmp eq i8 %5, 0, !dbg !828
  %7 = tail call i32* @__errno_location() #1, !dbg !831
  br i1 %6, label %11, label %8, !dbg !833

; <label>:8:                                      ; preds = %4
  %9 = load i32, i32* %7, align 4, !dbg !834, !tbaa !724
  %10 = icmp eq i32 %9, 32, !dbg !836
  br i1 %10, label %21, label %11, !dbg !837

; <label>:11:                                     ; preds = %4, %8
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.22, i64 0, i64 0), i32 5) #10, !dbg !839
  tail call void @llvm.dbg.value(metadata i8* %12, i64 0, metadata !821, metadata !598), !dbg !840
  %13 = load i8*, i8** @file_name, align 8, !dbg !841, !tbaa !606
  %14 = icmp eq i8* %13, null, !dbg !841
  %15 = load i32, i32* %7, align 4, !tbaa !724
  br i1 %14, label %18, label %16, !dbg !842

; <label>:16:                                     ; preds = %11
  %17 = tail call i8* @quotearg_colon(i8* nonnull %13) #10, !dbg !843
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.23, i64 0, i64 0), i8* %17, i8* %12) #10, !dbg !845
  br label %19, !dbg !847

; <label>:18:                                     ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.24, i64 0, i64 0), i8* %12) #10, !dbg !848
  br label %19

; <label>:19:                                     ; preds = %18, %16
  %20 = load volatile i32, i32* @exit_failure, align 4, !dbg !849, !tbaa !724
  tail call void @_exit(i32 %20) #14, !dbg !850
  unreachable, !dbg !850

; <label>:21:                                     ; preds = %0, %8
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !851, !tbaa !606
  %23 = tail call i32 @close_stream(%struct._IO_FILE* %22) #10, !dbg !853
  %24 = icmp eq i32 %23, 0, !dbg !854
  br i1 %24, label %27, label %25, !dbg !855

; <label>:25:                                     ; preds = %21
  %26 = load volatile i32, i32* @exit_failure, align 4, !dbg !856, !tbaa !724
  tail call void @_exit(i32 %26) #14, !dbg !857
  unreachable, !dbg !857

; <label>:27:                                     ; preds = %21
  ret void, !dbg !858
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #8

; Function Attrs: nounwind sspstrong uwtable
define noalias %struct.mode_change* @mode_compile(i8*) local_unnamed_addr #6 !dbg !859 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !871, metadata !598), !dbg !895
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !873, metadata !598), !dbg !896
  %2 = load i8, i8* %0, align 1, !dbg !897, !tbaa !898
  %3 = and i8 %2, -8, !dbg !899
  %4 = icmp eq i8 %3, 48, !dbg !899
  br i1 %4, label %6, label %5, !dbg !899, !llvm.loop !900

; <label>:5:                                      ; preds = %1
  br label %41, !dbg !903

; <label>:6:                                      ; preds = %1
  br label %7, !dbg !904

; <label>:7:                                      ; preds = %6, %17
  %8 = phi i8 [ %18, %17 ], [ %2, %6 ], !dbg !905
  %9 = phi i32 [ %15, %17 ], [ 0, %6 ]
  %10 = phi i8* [ %12, %17 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !874, metadata !598), !dbg !904
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !875, metadata !598), !dbg !907
  %11 = shl i32 %9, 3, !dbg !908
  %12 = getelementptr inbounds i8, i8* %10, i64 1, !dbg !909
  tail call void @llvm.dbg.value(metadata i8* %12, i64 0, metadata !874, metadata !598), !dbg !904
  %13 = sext i8 %8 to i32, !dbg !905
  %14 = add i32 %11, -48, !dbg !910
  %15 = add i32 %14, %13, !dbg !911
  tail call void @llvm.dbg.value(metadata i32 %15, i64 0, metadata !875, metadata !598), !dbg !907
  %16 = icmp ugt i32 %15, 4095, !dbg !912
  br i1 %16, label %158, label %17, !dbg !914

; <label>:17:                                     ; preds = %7
  %18 = load i8, i8* %12, align 1, !dbg !915, !tbaa !898
  %19 = and i8 %18, -8, !dbg !916
  %20 = icmp eq i8 %19, 48, !dbg !916
  br i1 %20, label %7, label %21, !dbg !916, !llvm.loop !900

; <label>:21:                                     ; preds = %17
  %22 = icmp eq i8 %18, 0, !dbg !917
  br i1 %22, label %23, label %159, !dbg !919

; <label>:23:                                     ; preds = %21
  tail call void @llvm.dbg.value(metadata i32 %15, i64 0, metadata !878, metadata !598), !dbg !920
  %24 = ptrtoint i8* %12 to i64, !dbg !921
  %25 = ptrtoint i8* %0 to i64, !dbg !921
  %26 = sub i64 %24, %25, !dbg !921
  %27 = icmp slt i64 %26, 5, !dbg !922
  %28 = and i32 %15, 3072, !dbg !923
  %29 = or i32 %28, 1023, !dbg !924
  %30 = select i1 %27, i32 %29, i32 4095, !dbg !925
  tail call void @llvm.dbg.value(metadata i32 %30, i64 0, metadata !879, metadata !598), !dbg !926
  tail call void @llvm.dbg.value(metadata i32 %15, i64 0, metadata !927, metadata !598) #10, !dbg !934
  tail call void @llvm.dbg.value(metadata i32 %30, i64 0, metadata !932, metadata !598) #10, !dbg !936
  %31 = tail call noalias i8* @xmalloc(i64 32) #10, !dbg !937
  %32 = bitcast i8* %31 to %struct.mode_change*, !dbg !937
  tail call void @llvm.dbg.value(metadata %struct.mode_change* %32, i64 0, metadata !933, metadata !598) #10, !dbg !938
  store i8 61, i8* %31, align 4, !dbg !939, !tbaa !940
  %33 = getelementptr inbounds i8, i8* %31, i64 1, !dbg !942
  store i8 1, i8* %33, align 1, !dbg !943, !tbaa !944
  %34 = getelementptr inbounds i8, i8* %31, i64 4, !dbg !945
  %35 = bitcast i8* %34 to i32*, !dbg !945
  store i32 4095, i32* %35, align 4, !dbg !946, !tbaa !947
  %36 = getelementptr inbounds i8, i8* %31, i64 8, !dbg !948
  %37 = bitcast i8* %36 to i32*, !dbg !948
  store i32 %15, i32* %37, align 4, !dbg !949, !tbaa !950
  %38 = getelementptr inbounds i8, i8* %31, i64 12, !dbg !951
  %39 = bitcast i8* %38 to i32*, !dbg !951
  store i32 %30, i32* %39, align 4, !dbg !952, !tbaa !953
  %40 = getelementptr inbounds i8, i8* %31, i64 17, !dbg !954
  store i8 0, i8* %40, align 1, !dbg !955, !tbaa !944
  br label %159, !dbg !956

; <label>:41:                                     ; preds = %5, %46
  %42 = phi i8 [ %50, %46 ], [ %2, %5 ], !dbg !957
  %43 = phi i8* [ %49, %46 ], [ %0, %5 ]
  %44 = phi i64 [ %48, %46 ], [ 1, %5 ]
  tail call void @llvm.dbg.value(metadata i64 %44, i64 0, metadata !880, metadata !598), !dbg !903
  tail call void @llvm.dbg.value(metadata i8* %43, i64 0, metadata !874, metadata !598), !dbg !904
  switch i8 %42, label %45 [
    i8 0, label %51
    i8 61, label %46
    i8 43, label %46
    i8 45, label %46
  ], !dbg !961

; <label>:45:                                     ; preds = %41
  br label %46, !dbg !963

; <label>:46:                                     ; preds = %41, %41, %41, %45
  %47 = phi i64 [ 0, %45 ], [ 1, %41 ], [ 1, %41 ], [ 1, %41 ]
  %48 = add i64 %47, %44, !dbg !965
  tail call void @llvm.dbg.value(metadata i64 %48, i64 0, metadata !880, metadata !598), !dbg !903
  %49 = getelementptr inbounds i8, i8* %43, i64 1, !dbg !967
  tail call void @llvm.dbg.value(metadata i8* %49, i64 0, metadata !874, metadata !598), !dbg !904
  %50 = load i8, i8* %49, align 1, !tbaa !898
  br label %41, !dbg !968, !llvm.loop !969

; <label>:51:                                     ; preds = %41
  tail call void @llvm.dbg.value(metadata i64 %44, i64 0, metadata !972, metadata !598) #10, !dbg !978
  tail call void @llvm.dbg.value(metadata i64 16, i64 0, metadata !977, metadata !598) #10, !dbg !980
  %52 = icmp ugt i64 %44, 576460752303423487, !dbg !981
  br i1 %52, label %53, label %54, !dbg !983

; <label>:53:                                     ; preds = %51
  tail call void @xalloc_die() #14, !dbg !984
  unreachable, !dbg !984

; <label>:54:                                     ; preds = %51
  %55 = shl i64 %44, 4, !dbg !985
  %56 = tail call noalias i8* @xmalloc(i64 %55) #10, !dbg !986
  %57 = bitcast i8* %56 to %struct.mode_change*, !dbg !987
  tail call void @llvm.dbg.value(metadata %struct.mode_change* %57, i64 0, metadata !872, metadata !598), !dbg !988
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !874, metadata !598), !dbg !904
  br label %58, !dbg !989

; <label>:58:                                     ; preds = %150, %54
  %59 = phi i8* [ %0, %54 ], [ %151, %150 ]
  %60 = phi i64 [ 0, %54 ], [ %135, %150 ]
  tail call void @llvm.dbg.value(metadata i64 %60, i64 0, metadata !873, metadata !598), !dbg !896
  tail call void @llvm.dbg.value(metadata i8* %59, i64 0, metadata !874, metadata !598), !dbg !904
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !882, metadata !598), !dbg !990
  br label %61, !dbg !991

; <label>:61:                                     ; preds = %70, %58
  %62 = phi i8* [ %59, %58 ], [ %73, %70 ]
  %63 = phi i32 [ 0, %58 ], [ %72, %70 ]
  tail call void @llvm.dbg.value(metadata i32 %63, i64 0, metadata !882, metadata !598), !dbg !990
  tail call void @llvm.dbg.value(metadata i8* %62, i64 0, metadata !874, metadata !598), !dbg !904
  %64 = load i8, i8* %62, align 1, !dbg !992, !tbaa !898
  %65 = sext i8 %64 to i32, !dbg !992
  switch i32 %65, label %156 [
    i32 117, label %67
    i32 103, label %70
    i32 111, label %68
    i32 97, label %69
    i32 61, label %66
    i32 43, label %66
    i32 45, label %66
  ], !dbg !995, !llvm.loop !996

; <label>:66:                                     ; preds = %61, %61, %61
  br label %74, !dbg !896

; <label>:67:                                     ; preds = %61
  tail call void @llvm.dbg.value(metadata i32 %72, i64 0, metadata !882, metadata !598), !dbg !990
  br label %70, !dbg !999

; <label>:68:                                     ; preds = %61
  br label %70, !dbg !1001

; <label>:69:                                     ; preds = %61
  br label %70, !dbg !1002

; <label>:70:                                     ; preds = %61, %67, %68, %69
  %71 = phi i32 [ 2496, %67 ], [ 519, %68 ], [ 4095, %69 ], [ 1080, %61 ]
  %72 = or i32 %71, %63
  tail call void @llvm.dbg.value(metadata i32 %72, i64 0, metadata !882, metadata !598), !dbg !990
  %73 = getelementptr inbounds i8, i8* %62, i64 1, !dbg !1003
  tail call void @llvm.dbg.value(metadata i8* %73, i64 0, metadata !874, metadata !598), !dbg !904
  br label %61, !dbg !1005, !llvm.loop !1006

; <label>:74:                                     ; preds = %149, %66
  %75 = phi i8 [ %64, %66 ], [ %148, %149 ], !dbg !1009
  %76 = phi i8* [ %62, %66 ], [ %130, %149 ]
  %77 = phi i32 [ %63, %66 ], [ %131, %149 ]
  %78 = phi i64 [ %60, %66 ], [ %135, %149 ]
  tail call void @llvm.dbg.value(metadata i64 %78, i64 0, metadata !873, metadata !598), !dbg !896
  tail call void @llvm.dbg.value(metadata i32 %77, i64 0, metadata !882, metadata !598), !dbg !990
  tail call void @llvm.dbg.value(metadata i8* %76, i64 0, metadata !874, metadata !598), !dbg !904
  %79 = getelementptr inbounds i8, i8* %76, i64 1, !dbg !1010
  tail call void @llvm.dbg.value(metadata i8* %79, i64 0, metadata !874, metadata !598), !dbg !904
  tail call void @llvm.dbg.value(metadata i8 %75, i64 0, metadata !886, metadata !598), !dbg !1011
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !889, metadata !598), !dbg !1012
  tail call void @llvm.dbg.value(metadata i8 3, i64 0, metadata !890, metadata !598), !dbg !1013
  %80 = load i8, i8* %79, align 1, !dbg !1014, !tbaa !898
  %81 = sext i8 %80 to i32, !dbg !1014
  switch i32 %81, label %83 [
    i32 48, label %82
    i32 49, label %82
    i32 50, label %82
    i32 51, label %82
    i32 52, label %82
    i32 53, label %82
    i32 54, label %82
    i32 55, label %82
    i32 117, label %101
    i32 103, label %103
    i32 111, label %105
  ], !dbg !1015, !llvm.loop !1016

; <label>:82:                                     ; preds = %74, %74, %74, %74, %74, %74, %74, %74
  br label %84, !dbg !1019

; <label>:83:                                     ; preds = %74
  br label %107, !dbg !1013

; <label>:84:                                     ; preds = %82, %94
  %85 = phi i8 [ %95, %94 ], [ %80, %82 ], !dbg !1020
  %86 = phi i8* [ %89, %94 ], [ %79, %82 ]
  %87 = phi i32 [ %92, %94 ], [ 0, %82 ]
  tail call void @llvm.dbg.value(metadata i32 %87, i64 0, metadata !892, metadata !598), !dbg !1019
  tail call void @llvm.dbg.value(metadata i8* %86, i64 0, metadata !874, metadata !598), !dbg !904
  %88 = shl i32 %87, 3, !dbg !1022
  %89 = getelementptr inbounds i8, i8* %86, i64 1, !dbg !1023
  tail call void @llvm.dbg.value(metadata i8* %89, i64 0, metadata !874, metadata !598), !dbg !904
  %90 = sext i8 %85 to i32, !dbg !1020
  %91 = add i32 %88, -48, !dbg !1024
  %92 = add i32 %91, %90, !dbg !1025
  tail call void @llvm.dbg.value(metadata i32 %92, i64 0, metadata !892, metadata !598), !dbg !1019
  %93 = icmp ugt i32 %92, 4095, !dbg !1026
  br i1 %93, label %154, label %94, !dbg !1028

; <label>:94:                                     ; preds = %84
  %95 = load i8, i8* %89, align 1, !dbg !1029, !tbaa !898
  %96 = and i8 %95, -8, !dbg !1030
  %97 = icmp eq i8 %96, 48, !dbg !1030
  br i1 %97, label %84, label %98, !dbg !1030, !llvm.loop !1016

; <label>:98:                                     ; preds = %94
  %99 = icmp eq i32 %77, 0, !dbg !1031
  br i1 %99, label %100, label %155, !dbg !1033

; <label>:100:                                    ; preds = %98
  switch i8 %95, label %155 [
    i8 0, label %129
    i8 44, label %129
  ], !dbg !1034

; <label>:101:                                    ; preds = %74
  tail call void @llvm.dbg.value(metadata i32 448, i64 0, metadata !888, metadata !598), !dbg !1036
  %102 = getelementptr inbounds i8, i8* %76, i64 2, !dbg !1037
  tail call void @llvm.dbg.value(metadata i8* %102, i64 0, metadata !874, metadata !598), !dbg !904
  br label %129, !dbg !1038

; <label>:103:                                    ; preds = %74
  tail call void @llvm.dbg.value(metadata i32 56, i64 0, metadata !888, metadata !598), !dbg !1036
  %104 = getelementptr inbounds i8, i8* %76, i64 2, !dbg !1039
  tail call void @llvm.dbg.value(metadata i8* %104, i64 0, metadata !874, metadata !598), !dbg !904
  br label %129, !dbg !1040

; <label>:105:                                    ; preds = %74
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !888, metadata !598), !dbg !1036
  %106 = getelementptr inbounds i8, i8* %76, i64 2, !dbg !1041
  tail call void @llvm.dbg.value(metadata i8* %106, i64 0, metadata !874, metadata !598), !dbg !904
  br label %129, !dbg !1042

; <label>:107:                                    ; preds = %83, %123
  %108 = phi i8 [ %127, %123 ], [ %80, %83 ], !dbg !1043
  %109 = phi i8* [ %126, %123 ], [ %79, %83 ]
  %110 = phi i32 [ %124, %123 ], [ 0, %83 ]
  %111 = phi i8 [ %125, %123 ], [ 1, %83 ]
  tail call void @llvm.dbg.value(metadata i8 %111, i64 0, metadata !890, metadata !598), !dbg !1013
  tail call void @llvm.dbg.value(metadata i32 %110, i64 0, metadata !888, metadata !598), !dbg !1036
  tail call void @llvm.dbg.value(metadata i8* %109, i64 0, metadata !874, metadata !598), !dbg !904
  %112 = sext i8 %108 to i32, !dbg !1043
  switch i32 %112, label %128 [
    i32 114, label %113
    i32 119, label %115
    i32 120, label %117
    i32 88, label %123
    i32 115, label %119
    i32 116, label %121
  ], !dbg !1046

; <label>:113:                                    ; preds = %107
  %114 = or i32 %110, 292, !dbg !1047
  tail call void @llvm.dbg.value(metadata i32 %114, i64 0, metadata !888, metadata !598), !dbg !1036
  br label %123, !dbg !1049

; <label>:115:                                    ; preds = %107
  %116 = or i32 %110, 146, !dbg !1050
  tail call void @llvm.dbg.value(metadata i32 %116, i64 0, metadata !888, metadata !598), !dbg !1036
  br label %123, !dbg !1051

; <label>:117:                                    ; preds = %107
  %118 = or i32 %110, 73, !dbg !1052
  tail call void @llvm.dbg.value(metadata i32 %118, i64 0, metadata !888, metadata !598), !dbg !1036
  br label %123, !dbg !1053

; <label>:119:                                    ; preds = %107
  %120 = or i32 %110, 3072, !dbg !1054
  tail call void @llvm.dbg.value(metadata i32 %120, i64 0, metadata !888, metadata !598), !dbg !1036
  br label %123, !dbg !1055

; <label>:121:                                    ; preds = %107
  %122 = or i32 %110, 512, !dbg !1056
  tail call void @llvm.dbg.value(metadata i32 %122, i64 0, metadata !888, metadata !598), !dbg !1036
  br label %123, !dbg !1057

; <label>:123:                                    ; preds = %107, %113, %115, %117, %119, %121
  %124 = phi i32 [ %122, %121 ], [ %120, %119 ], [ %118, %117 ], [ %116, %115 ], [ %114, %113 ], [ %110, %107 ]
  %125 = phi i8 [ %111, %121 ], [ %111, %119 ], [ %111, %117 ], [ %111, %115 ], [ %111, %113 ], [ 2, %107 ]
  tail call void @llvm.dbg.value(metadata i8 %125, i64 0, metadata !890, metadata !598), !dbg !1013
  tail call void @llvm.dbg.value(metadata i32 %124, i64 0, metadata !888, metadata !598), !dbg !1036
  %126 = getelementptr inbounds i8, i8* %109, i64 1, !dbg !1058
  tail call void @llvm.dbg.value(metadata i8* %126, i64 0, metadata !874, metadata !598), !dbg !904
  %127 = load i8, i8* %126, align 1, !tbaa !898
  br label %107, !dbg !1060, !llvm.loop !1061

; <label>:128:                                    ; preds = %107
  br label %129, !dbg !1013

; <label>:129:                                    ; preds = %128, %100, %100, %105, %103, %101
  %130 = phi i8* [ %106, %105 ], [ %104, %103 ], [ %102, %101 ], [ %89, %100 ], [ %89, %100 ], [ %109, %128 ]
  %131 = phi i32 [ %77, %105 ], [ %77, %103 ], [ %77, %101 ], [ 4095, %100 ], [ 4095, %100 ], [ %77, %128 ]
  %132 = phi i32 [ 7, %105 ], [ 56, %103 ], [ 448, %101 ], [ %92, %100 ], [ %92, %100 ], [ %110, %128 ]
  %133 = phi i32 [ 0, %105 ], [ 0, %103 ], [ 0, %101 ], [ 4095, %100 ], [ 4095, %100 ], [ 0, %128 ]
  %134 = phi i8 [ 3, %105 ], [ 3, %103 ], [ 3, %101 ], [ 1, %100 ], [ 1, %100 ], [ %111, %128 ]
  tail call void @llvm.dbg.value(metadata i8 %134, i64 0, metadata !890, metadata !598), !dbg !1013
  tail call void @llvm.dbg.value(metadata i32 %133, i64 0, metadata !889, metadata !598), !dbg !1012
  tail call void @llvm.dbg.value(metadata i32 %132, i64 0, metadata !888, metadata !598), !dbg !1036
  tail call void @llvm.dbg.value(metadata i32 %131, i64 0, metadata !882, metadata !598), !dbg !990
  tail call void @llvm.dbg.value(metadata i8* %130, i64 0, metadata !874, metadata !598), !dbg !904
  %135 = add i64 %78, 1, !dbg !1064
  tail call void @llvm.dbg.value(metadata i64 %135, i64 0, metadata !873, metadata !598), !dbg !896
  %136 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %57, i64 %78, i32 0, !dbg !1065
  store i8 %75, i8* %136, align 4, !dbg !1066, !tbaa !940
  %137 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %57, i64 %78, i32 1, !dbg !1067
  store i8 %134, i8* %137, align 1, !dbg !1068, !tbaa !944
  %138 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %57, i64 %78, i32 2, !dbg !1069
  store i32 %131, i32* %138, align 4, !dbg !1070, !tbaa !947
  %139 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %57, i64 %78, i32 3, !dbg !1071
  store i32 %132, i32* %139, align 4, !dbg !1072, !tbaa !950
  %140 = icmp eq i32 %133, 0, !dbg !1073
  br i1 %140, label %141, label %145, !dbg !1073

; <label>:141:                                    ; preds = %129
  %142 = icmp eq i32 %131, 0, !dbg !1074
  %143 = select i1 %142, i32 -1, i32 %131, !dbg !1074
  %144 = and i32 %143, %132, !dbg !1074
  br label %145, !dbg !1074

; <label>:145:                                    ; preds = %129, %141
  %146 = phi i32 [ %133, %129 ], [ %144, %141 ], !dbg !1076
  %147 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %57, i64 %78, i32 4, !dbg !1078
  store i32 %146, i32* %147, align 4, !dbg !1079, !tbaa !953
  tail call void @llvm.dbg.value(metadata i64 %78, i64 0, metadata !873, metadata !598), !dbg !896
  tail call void @llvm.dbg.value(metadata i32 %77, i64 0, metadata !882, metadata !598), !dbg !990
  tail call void @llvm.dbg.value(metadata i8* %89, i64 0, metadata !874, metadata !598), !dbg !904
  %148 = load i8, i8* %130, align 1, !dbg !1080, !tbaa !898
  switch i8 %148, label %155 [
    i8 61, label %149
    i8 43, label %149
    i8 45, label %149
    i8 44, label %150
    i8 0, label %152
  ], !dbg !1081

; <label>:149:                                    ; preds = %145, %145, %145
  br label %74, !dbg !896

; <label>:150:                                    ; preds = %145
  tail call void @llvm.dbg.value(metadata i32 %132, i64 0, metadata !888, metadata !598), !dbg !1036
  tail call void @llvm.dbg.value(metadata i64 %135, i64 0, metadata !873, metadata !598), !dbg !896
  tail call void @llvm.dbg.value(metadata i8* %130, i64 0, metadata !874, metadata !598), !dbg !904
  %151 = getelementptr inbounds i8, i8* %130, i64 1, !dbg !1082
  tail call void @llvm.dbg.value(metadata i8* %151, i64 0, metadata !874, metadata !598), !dbg !904
  br label %58, !dbg !1084, !llvm.loop !1085

; <label>:152:                                    ; preds = %145
  %153 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %57, i64 %135, i32 1, !dbg !1088
  store i8 0, i8* %153, align 1, !dbg !1091, !tbaa !944
  br label %159, !dbg !1092

; <label>:154:                                    ; preds = %84
  br label %157, !dbg !1093

; <label>:155:                                    ; preds = %145, %100, %98
  br label %157, !dbg !1093

; <label>:156:                                    ; preds = %61
  br label %157, !dbg !1093

; <label>:157:                                    ; preds = %156, %155, %154
  tail call void @free(i8* %56) #10, !dbg !1093
  br label %159, !dbg !1094

; <label>:158:                                    ; preds = %7
  br label %159, !dbg !1095

; <label>:159:                                    ; preds = %158, %23, %21, %157, %152
  %160 = phi %struct.mode_change* [ null, %157 ], [ %57, %152 ], [ %32, %23 ], [ null, %21 ], [ null, %158 ]
  ret %struct.mode_change* %160, !dbg !1095
}

; Function Attrs: nounwind sspstrong uwtable
define noalias %struct.mode_change* @mode_create_from_ref(i8*) local_unnamed_addr #6 !dbg !1096 {
  %2 = alloca %struct.stat, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1098, metadata !598), !dbg !1137
  %3 = bitcast %struct.stat* %2 to i8*, !dbg !1138
  call void @llvm.lifetime.start(i64 144, i8* nonnull %3) #10, !dbg !1138
  tail call void @llvm.dbg.value(metadata %struct.stat* %2, i64 0, metadata !1099, metadata !1139), !dbg !1140
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1141, metadata !598) #10, !dbg !1149
  tail call void @llvm.dbg.value(metadata %struct.stat* %2, i64 0, metadata !1148, metadata !598) #10, !dbg !1149
  %4 = call i32 @__xstat(i32 1, i8* nonnull %0, %struct.stat* nonnull %2) #10, !dbg !1152
  %5 = icmp eq i32 %4, 0, !dbg !1153
  br i1 %5, label %6, label %19, !dbg !1154

; <label>:6:                                      ; preds = %1
  %7 = getelementptr inbounds %struct.stat, %struct.stat* %2, i64 0, i32 3, !dbg !1155
  %8 = load i32, i32* %7, align 8, !dbg !1155, !tbaa !1156
  call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !927, metadata !598) #10, !dbg !1160
  call void @llvm.dbg.value(metadata i32 4095, i64 0, metadata !932, metadata !598) #10, !dbg !1162
  %9 = call noalias i8* @xmalloc(i64 32) #10, !dbg !1163
  %10 = bitcast i8* %9 to %struct.mode_change*, !dbg !1163
  call void @llvm.dbg.value(metadata %struct.mode_change* %10, i64 0, metadata !933, metadata !598) #10, !dbg !1164
  store i8 61, i8* %9, align 4, !dbg !1165, !tbaa !940
  %11 = getelementptr inbounds i8, i8* %9, i64 1, !dbg !1166
  store i8 1, i8* %11, align 1, !dbg !1167, !tbaa !944
  %12 = getelementptr inbounds i8, i8* %9, i64 4, !dbg !1168
  %13 = bitcast i8* %12 to i32*, !dbg !1168
  store i32 4095, i32* %13, align 4, !dbg !1169, !tbaa !947
  %14 = getelementptr inbounds i8, i8* %9, i64 8, !dbg !1170
  %15 = bitcast i8* %14 to i32*, !dbg !1170
  store i32 %8, i32* %15, align 4, !dbg !1171, !tbaa !950
  %16 = getelementptr inbounds i8, i8* %9, i64 12, !dbg !1172
  %17 = bitcast i8* %16 to i32*, !dbg !1172
  store i32 4095, i32* %17, align 4, !dbg !1173, !tbaa !953
  %18 = getelementptr inbounds i8, i8* %9, i64 17, !dbg !1174
  store i8 0, i8* %18, align 1, !dbg !1175, !tbaa !944
  br label %19, !dbg !1176

; <label>:19:                                     ; preds = %1, %6
  %20 = phi %struct.mode_change* [ %10, %6 ], [ null, %1 ]
  call void @llvm.lifetime.end(i64 144, i8* nonnull %3) #10, !dbg !1177
  ret %struct.mode_change* %20, !dbg !1177
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #9

; Function Attrs: nounwind
declare i32 @__xstat(i32, i8*, %struct.stat*) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #9

; Function Attrs: nounwind sspstrong uwtable
define i32 @mode_adjust(i32, i1 zeroext, i32, %struct.mode_change* nocapture readonly, i32*) local_unnamed_addr #6 !dbg !1178 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !1185, metadata !598), !dbg !1201
  tail call void @llvm.dbg.value(metadata i1 %1, i64 0, metadata !1186, metadata !813), !dbg !1202
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !1187, metadata !598), !dbg !1203
  tail call void @llvm.dbg.value(metadata %struct.mode_change* %3, i64 0, metadata !1188, metadata !598), !dbg !1204
  tail call void @llvm.dbg.value(metadata i32* %4, i64 0, metadata !1189, metadata !598), !dbg !1205
  %6 = and i32 %0, 4095, !dbg !1206
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !1190, metadata !598), !dbg !1207
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1191, metadata !598), !dbg !1208
  tail call void @llvm.dbg.value(metadata %struct.mode_change* %3, i64 0, metadata !1188, metadata !598), !dbg !1204
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !1190, metadata !598), !dbg !1207
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1191, metadata !598), !dbg !1208
  %7 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %3, i64 0, i32 1, !dbg !1209
  %8 = load i8, i8* %7, align 1, !dbg !1209, !tbaa !944
  %9 = icmp eq i8 %8, 0, !dbg !1211
  br i1 %9, label %83, label %10, !dbg !1212

; <label>:10:                                     ; preds = %5
  %11 = select i1 %1, i32 3072, i32 0
  %12 = xor i32 %2, -1
  %13 = xor i32 %11, -1
  %14 = zext i1 %1 to i32
  br label %15, !dbg !1212

; <label>:15:                                     ; preds = %10, %75
  %16 = phi i8 [ %8, %10 ], [ %80, %75 ]
  %17 = phi %struct.mode_change* [ %3, %10 ], [ %78, %75 ]
  %18 = phi i32 [ %6, %10 ], [ %77, %75 ]
  %19 = phi i32 [ 0, %10 ], [ %76, %75 ]
  %20 = sext i8 %16 to i32, !dbg !1214
  %21 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %17, i64 0, i32 2, !dbg !1215
  %22 = load i32, i32* %21, align 4, !dbg !1215, !tbaa !947
  tail call void @llvm.dbg.value(metadata i32 %22, i64 0, metadata !1192, metadata !598), !dbg !1216
  %23 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %17, i64 0, i32 4, !dbg !1217
  %24 = load i32, i32* %23, align 4, !dbg !1217, !tbaa !953
  %25 = xor i32 %24, -1, !dbg !1218
  %26 = and i32 %11, %25, !dbg !1219
  tail call void @llvm.dbg.value(metadata i32 %26, i64 0, metadata !1196, metadata !598), !dbg !1220
  %27 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %17, i64 0, i32 3, !dbg !1221
  %28 = load i32, i32* %27, align 4, !dbg !1221, !tbaa !950
  tail call void @llvm.dbg.value(metadata i32 %28, i64 0, metadata !1197, metadata !598), !dbg !1222
  switch i32 %20, label %49 [
    i32 2, label %43
    i32 3, label %29
  ], !dbg !1223

; <label>:29:                                     ; preds = %15
  %30 = and i32 %28, %18, !dbg !1224
  tail call void @llvm.dbg.value(metadata i32 %30, i64 0, metadata !1197, metadata !598), !dbg !1222
  %31 = and i32 %30, 292, !dbg !1226
  %32 = icmp ne i32 %31, 0, !dbg !1227
  %33 = select i1 %32, i32 292, i32 0, !dbg !1227
  %34 = and i32 %30, 146, !dbg !1228
  %35 = icmp ne i32 %34, 0, !dbg !1229
  %36 = select i1 %35, i32 146, i32 0, !dbg !1229
  %37 = and i32 %30, 73, !dbg !1230
  %38 = icmp ne i32 %37, 0, !dbg !1231
  %39 = select i1 %38, i32 73, i32 0, !dbg !1231
  %40 = or i32 %36, %30, !dbg !1232
  %41 = or i32 %40, %33, !dbg !1233
  %42 = or i32 %41, %39, !dbg !1234
  tail call void @llvm.dbg.value(metadata i32 %42, i64 0, metadata !1197, metadata !598), !dbg !1222
  br label %49, !dbg !1235

; <label>:43:                                     ; preds = %15
  %44 = and i32 %18, 73, !dbg !1236
  %45 = or i32 %44, %14, !dbg !1238
  %46 = icmp eq i32 %45, 0, !dbg !1238
  %47 = or i32 %28, 73, !dbg !1239
  tail call void @llvm.dbg.value(metadata i32 %47, i64 0, metadata !1197, metadata !598), !dbg !1222
  %48 = select i1 %46, i32 %28, i32 %47, !dbg !1240
  br label %49, !dbg !1240

; <label>:49:                                     ; preds = %43, %15, %29
  %50 = phi i32 [ %28, %15 ], [ %42, %29 ], [ %48, %43 ]
  tail call void @llvm.dbg.value(metadata i32 %50, i64 0, metadata !1197, metadata !598), !dbg !1222
  %51 = icmp ne i32 %22, 0, !dbg !1241
  %52 = select i1 %51, i32 %22, i32 %12, !dbg !1241
  %53 = or i32 %24, %13, !dbg !1242
  %54 = and i32 %52, %53, !dbg !1244
  %55 = and i32 %54, %50, !dbg !1245
  tail call void @llvm.dbg.value(metadata i32 %55, i64 0, metadata !1197, metadata !598), !dbg !1222
  %56 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %17, i64 0, i32 0, !dbg !1246
  %57 = load i8, i8* %56, align 4, !dbg !1246, !tbaa !940
  %58 = sext i8 %57 to i32, !dbg !1247
  switch i32 %58, label %75 [
    i32 61, label %59
    i32 43, label %68
    i32 45, label %71
  ], !dbg !1248

; <label>:59:                                     ; preds = %49
  %60 = xor i32 %22, -1, !dbg !1249
  %61 = select i1 %51, i32 %60, i32 0, !dbg !1251
  %62 = or i32 %61, %26, !dbg !1252
  tail call void @llvm.dbg.value(metadata i32 %62, i64 0, metadata !1198, metadata !598), !dbg !1254
  %63 = and i32 %62, 4095, !dbg !1255
  %64 = xor i32 %63, 4095, !dbg !1255
  %65 = or i32 %64, %19, !dbg !1256
  tail call void @llvm.dbg.value(metadata i32 %65, i64 0, metadata !1191, metadata !598), !dbg !1208
  %66 = and i32 %62, %18, !dbg !1257
  %67 = or i32 %55, %66, !dbg !1258
  tail call void @llvm.dbg.value(metadata i32 %67, i64 0, metadata !1190, metadata !598), !dbg !1207
  br label %75

; <label>:68:                                     ; preds = %49
  %69 = or i32 %55, %19, !dbg !1259
  tail call void @llvm.dbg.value(metadata i32 %69, i64 0, metadata !1191, metadata !598), !dbg !1208
  %70 = or i32 %55, %18, !dbg !1260
  tail call void @llvm.dbg.value(metadata i32 %70, i64 0, metadata !1190, metadata !598), !dbg !1207
  br label %75, !dbg !1261

; <label>:71:                                     ; preds = %49
  %72 = or i32 %55, %19, !dbg !1262
  tail call void @llvm.dbg.value(metadata i32 %72, i64 0, metadata !1191, metadata !598), !dbg !1208
  %73 = xor i32 %55, -1, !dbg !1263
  %74 = and i32 %18, %73, !dbg !1264
  tail call void @llvm.dbg.value(metadata i32 %74, i64 0, metadata !1190, metadata !598), !dbg !1207
  br label %75, !dbg !1265

; <label>:75:                                     ; preds = %49, %71, %68, %59
  %76 = phi i32 [ %19, %49 ], [ %72, %71 ], [ %69, %68 ], [ %65, %59 ]
  %77 = phi i32 [ %18, %49 ], [ %74, %71 ], [ %70, %68 ], [ %67, %59 ]
  tail call void @llvm.dbg.value(metadata i32 %77, i64 0, metadata !1190, metadata !598), !dbg !1207
  tail call void @llvm.dbg.value(metadata i32 %76, i64 0, metadata !1191, metadata !598), !dbg !1208
  %78 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %17, i64 1, !dbg !1266
  tail call void @llvm.dbg.value(metadata %struct.mode_change* %78, i64 0, metadata !1188, metadata !598), !dbg !1204
  tail call void @llvm.dbg.value(metadata %struct.mode_change* %78, i64 0, metadata !1188, metadata !598), !dbg !1204
  tail call void @llvm.dbg.value(metadata i32 %77, i64 0, metadata !1190, metadata !598), !dbg !1207
  tail call void @llvm.dbg.value(metadata i32 %76, i64 0, metadata !1191, metadata !598), !dbg !1208
  %79 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %17, i64 1, i32 1, !dbg !1209
  %80 = load i8, i8* %79, align 1, !dbg !1209, !tbaa !944
  %81 = icmp eq i8 %80, 0, !dbg !1211
  br i1 %81, label %82, label %15, !dbg !1212, !llvm.loop !1268

; <label>:82:                                     ; preds = %75
  br label %83, !dbg !1271

; <label>:83:                                     ; preds = %82, %5
  %84 = phi i32 [ 0, %5 ], [ %76, %82 ]
  %85 = phi i32 [ %6, %5 ], [ %77, %82 ]
  %86 = icmp eq i32* %4, null, !dbg !1271
  br i1 %86, label %88, label %87, !dbg !1273

; <label>:87:                                     ; preds = %83
  store i32 %84, i32* %4, align 4, !dbg !1274, !tbaa !724
  br label %88, !dbg !1275

; <label>:88:                                     ; preds = %83, %87
  ret i32 %85, !dbg !1276
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_program_name(i8*) local_unnamed_addr #6 !dbg !1277 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1279, metadata !598), !dbg !1282
  %2 = icmp eq i8* %0, null, !dbg !1283
  br i1 %2, label %3, label %6, !dbg !1285

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1286, !tbaa !606
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.41, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #16, !dbg !1288
  tail call void @abort() #14, !dbg !1289
  unreachable, !dbg !1289

; <label>:6:                                      ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #13, !dbg !1290
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !1280, metadata !598), !dbg !1291
  %8 = icmp ne i8* %7, null, !dbg !1292
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !1293
  %10 = select i1 %8, i8* %9, i8* %0, !dbg !1295
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !1281, metadata !598), !dbg !1296
  %11 = ptrtoint i8* %10 to i64, !dbg !1297
  %12 = ptrtoint i8* %0 to i64, !dbg !1297
  %13 = sub i64 %11, %12, !dbg !1297
  %14 = icmp sgt i64 %13, 6, !dbg !1299
  br i1 %14, label %15, label %24, !dbg !1300

; <label>:15:                                     ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !1301
  %17 = tail call i32 @strncmp(i8* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.42, i64 0, i64 0), i64 7) #13, !dbg !1301
  %18 = icmp eq i32 %17, 0, !dbg !1303
  br i1 %18, label %19, label %24, !dbg !1304

; <label>:19:                                     ; preds = %15
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !1279, metadata !598), !dbg !1282
  %20 = tail call i32 @strncmp(i8* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.43, i64 0, i64 0), i64 3) #13, !dbg !1305
  %21 = icmp eq i32 %20, 0, !dbg !1308
  br i1 %21, label %22, label %24, !dbg !1309

; <label>:22:                                     ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !1310
  tail call void @llvm.dbg.value(metadata i8* %23, i64 0, metadata !1279, metadata !598), !dbg !1282
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !1312, !tbaa !606
  br label %24, !dbg !1313

; <label>:24:                                     ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i8* %25, i64 0, metadata !1279, metadata !598), !dbg !1282
  store i8* %25, i8** @program_name, align 8, !dbg !1314, !tbaa !606
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !1315, !tbaa !606
  ret void, !dbg !1316
}

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #10

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #5

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define %struct.quoting_options* @clone_quoting_options(%struct.quoting_options*) local_unnamed_addr #6 !dbg !1317 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1322, metadata !598), !dbg !1325
  %2 = tail call i32* @__errno_location() #1, !dbg !1326
  %3 = load i32, i32* %2, align 4, !dbg !1326, !tbaa !724
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !1323, metadata !598), !dbg !1327
  %4 = icmp ne %struct.quoting_options* %0, null, !dbg !1328
  %5 = bitcast %struct.quoting_options* %0 to i8*, !dbg !1329
  %6 = select i1 %4, i8* %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), !dbg !1329
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #10, !dbg !1331
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !1331
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %8, i64 0, metadata !1324, metadata !598), !dbg !1332
  store i32 %3, i32* %2, align 4, !dbg !1333, !tbaa !724
  ret %struct.quoting_options* %8, !dbg !1334
}

; Function Attrs: nounwind readonly sspstrong uwtable
define i32 @get_quoting_style(%struct.quoting_options* readonly) local_unnamed_addr #11 !dbg !1335 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1341, metadata !598), !dbg !1342
  %2 = icmp ne %struct.quoting_options* %0, null, !dbg !1343
  %3 = select i1 %2, %struct.quoting_options* %0, %struct.quoting_options* @default_quoting_options, !dbg !1343
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1344
  %5 = load i32, i32* %4, align 8, !dbg !1344, !tbaa !1346
  ret i32 %5, !dbg !1348
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_quoting_style(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !1349 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1353, metadata !598), !dbg !1355
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1354, metadata !598), !dbg !1356
  %3 = icmp ne %struct.quoting_options* %0, null, !dbg !1357
  %4 = select i1 %3, %struct.quoting_options* %0, %struct.quoting_options* @default_quoting_options, !dbg !1357
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !1358
  store i32 %1, i32* %5, align 8, !dbg !1360, !tbaa !1346
  ret void, !dbg !1361
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_char_quoting(%struct.quoting_options*, i8 signext, i32) local_unnamed_addr #6 !dbg !1362 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1366, metadata !598), !dbg !1374
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1367, metadata !598), !dbg !1375
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !1368, metadata !598), !dbg !1376
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1369, metadata !598), !dbg !1377
  %4 = icmp ne %struct.quoting_options* %0, null, !dbg !1378
  %5 = select i1 %4, %struct.quoting_options* %0, %struct.quoting_options* @default_quoting_options, !dbg !1378
  %6 = lshr i8 %1, 5, !dbg !1379
  %7 = zext i8 %6 to i64, !dbg !1379
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !1381
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !1370, metadata !598), !dbg !1382
  %9 = and i8 %1, 31, !dbg !1383
  %10 = zext i8 %9 to i32, !dbg !1384
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !1372, metadata !598), !dbg !1385
  %11 = load i32, i32* %8, align 4, !dbg !1386, !tbaa !724
  %12 = lshr i32 %11, %10, !dbg !1387
  %13 = and i32 %12, 1, !dbg !1388
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !1373, metadata !598), !dbg !1389
  %14 = and i32 %2, 1, !dbg !1390
  %15 = xor i32 %13, %14, !dbg !1391
  %16 = shl i32 %15, %10, !dbg !1392
  %17 = xor i32 %16, %11, !dbg !1393
  store i32 %17, i32* %8, align 4, !dbg !1393, !tbaa !724
  ret i32 %13, !dbg !1394
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_quoting_flags(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !1395 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1399, metadata !598), !dbg !1402
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1400, metadata !598), !dbg !1403
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1404
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1399, metadata !598), !dbg !1402
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1406
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1399, metadata !598), !dbg !1402
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !1407
  %6 = load i32, i32* %5, align 4, !dbg !1407, !tbaa !1408
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !1401, metadata !598), !dbg !1409
  store i32 %1, i32* %5, align 4, !dbg !1410, !tbaa !1408
  ret i32 %6, !dbg !1411
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_custom_quoting(%struct.quoting_options*, i8*, i8*) local_unnamed_addr #6 !dbg !1412 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1416, metadata !598), !dbg !1419
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1417, metadata !598), !dbg !1420
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1418, metadata !598), !dbg !1421
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1422
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1416, metadata !598), !dbg !1419
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1424
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1416, metadata !598), !dbg !1419
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1425
  store i32 10, i32* %6, align 8, !dbg !1426, !tbaa !1346
  %7 = icmp ne i8* %1, null, !dbg !1427
  %8 = icmp ne i8* %2, null, !dbg !1429
  %9 = and i1 %7, %8, !dbg !1431
  br i1 %9, label %11, label %10, !dbg !1431

; <label>:10:                                     ; preds = %3
  tail call void @abort() #14, !dbg !1432
  unreachable, !dbg !1432

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1433
  store i8* %1, i8** %12, align 8, !dbg !1434, !tbaa !1435
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1436
  store i8* %2, i8** %13, align 8, !dbg !1437, !tbaa !1438
  ret void, !dbg !1439
}

; Function Attrs: nounwind sspstrong uwtable
define i64 @quotearg_buffer(i8*, i64, i8*, i64, %struct.quoting_options* readonly) local_unnamed_addr #6 !dbg !1440 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1444, metadata !598), !dbg !1452
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1445, metadata !598), !dbg !1453
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1446, metadata !598), !dbg !1454
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !1447, metadata !598), !dbg !1455
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1448, metadata !598), !dbg !1456
  %6 = icmp ne %struct.quoting_options* %4, null, !dbg !1457
  %7 = select i1 %6, %struct.quoting_options* %4, %struct.quoting_options* @default_quoting_options, !dbg !1457
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %7, i64 0, metadata !1449, metadata !598), !dbg !1458
  %8 = tail call i32* @__errno_location() #1, !dbg !1459
  %9 = load i32, i32* %8, align 4, !dbg !1459, !tbaa !724
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !1450, metadata !598), !dbg !1460
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !1461
  %11 = load i32, i32* %10, align 8, !dbg !1461, !tbaa !1346
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !1462
  %13 = load i32, i32* %12, align 4, !dbg !1462, !tbaa !1408
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !1463
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !1464
  %16 = load i8*, i8** %15, align 8, !dbg !1464, !tbaa !1435
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !1465
  %18 = load i8*, i8** %17, align 8, !dbg !1465, !tbaa !1438
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* %14, i8* %16, i8* %18), !dbg !1466
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !1451, metadata !598), !dbg !1467
  store i32 %9, i32* %8, align 4, !dbg !1468, !tbaa !724
  ret i64 %19, !dbg !1469
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8*, i64, i8*, i64, i32, i32, i32* readonly, i8* readonly, i8* readonly) unnamed_addr #6 !dbg !1470 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1476, metadata !598), !dbg !1539
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1477, metadata !598), !dbg !1540
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1478, metadata !598), !dbg !1541
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !1479, metadata !598), !dbg !1542
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !1480, metadata !598), !dbg !1543
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !1481, metadata !598), !dbg !1544
  tail call void @llvm.dbg.value(metadata i32* %6, i64 0, metadata !1482, metadata !598), !dbg !1545
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !1483, metadata !598), !dbg !1546
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !1484, metadata !598), !dbg !1547
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1486, metadata !598), !dbg !1548
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1487, metadata !598), !dbg !1549
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1488, metadata !598), !dbg !1550
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1489, metadata !598), !dbg !1551
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1490, metadata !598), !dbg !1552
  %13 = tail call i64 @__ctype_get_mb_cur_max() #10, !dbg !1553
  %14 = icmp eq i64 %13, 1, !dbg !1554
  %15 = lshr i32 %5, 1, !dbg !1555
  %16 = trunc i32 %15 to i8, !dbg !1555
  %17 = and i8 %16, 1, !dbg !1555
  tail call void @llvm.dbg.value(metadata i8 %17, i64 0, metadata !1492, metadata !598), !dbg !1555
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1493, metadata !598), !dbg !1556
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1494, metadata !598), !dbg !1557
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1495, metadata !598), !dbg !1558
  %18 = bitcast i64* %10 to i8*
  %19 = bitcast i32* %12 to i8*
  %20 = icmp eq i32* %6, null
  %21 = icmp ne i32* %6, null
  %22 = and i32 %5, 1
  %23 = icmp eq i32 %22, 0
  %24 = and i32 %5, 4
  %25 = icmp eq i32 %24, 0
  %26 = getelementptr inbounds i8, i8* %2, i64 1
  br label %27, !dbg !1559

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
  call void @llvm.dbg.value(metadata i64 %40, i64 0, metadata !1477, metadata !598), !dbg !1540
  call void @llvm.dbg.value(metadata i8 %39, i64 0, metadata !1495, metadata !598), !dbg !1558
  call void @llvm.dbg.value(metadata i8 %38, i64 0, metadata !1494, metadata !598), !dbg !1557
  call void @llvm.dbg.value(metadata i8 %37, i64 0, metadata !1493, metadata !598), !dbg !1556
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !1492, metadata !598), !dbg !1555
  call void @llvm.dbg.value(metadata i64 %35, i64 0, metadata !1479, metadata !598), !dbg !1542
  call void @llvm.dbg.value(metadata i8 %34, i64 0, metadata !1490, metadata !598), !dbg !1552
  call void @llvm.dbg.value(metadata i64 %33, i64 0, metadata !1489, metadata !598), !dbg !1551
  call void @llvm.dbg.value(metadata i8* %32, i64 0, metadata !1488, metadata !598), !dbg !1550
  call void @llvm.dbg.value(metadata i64 %31, i64 0, metadata !1487, metadata !598), !dbg !1549
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1486, metadata !598), !dbg !1548
  call void @llvm.dbg.value(metadata i8* %30, i64 0, metadata !1484, metadata !598), !dbg !1547
  call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !1483, metadata !598), !dbg !1546
  call void @llvm.dbg.value(metadata i32 %28, i64 0, metadata !1480, metadata !598), !dbg !1543
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
  ], !dbg !1560

; <label>:41:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !1480, metadata !598), !dbg !1543
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1492, metadata !598), !dbg !1555
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !1492, metadata !598), !dbg !1555
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !1480, metadata !598), !dbg !1543
  br label %95, !dbg !1561

; <label>:42:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !1492, metadata !598), !dbg !1555
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !1480, metadata !598), !dbg !1543
  %43 = and i8 %36, 1, !dbg !1563
  %44 = icmp eq i8 %43, 0, !dbg !1563
  br i1 %44, label %45, label %95, !dbg !1561

; <label>:45:                                     ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !1565
  br i1 %46, label %95, label %47, !dbg !1569

; <label>:47:                                     ; preds = %45
  store i8 34, i8* %0, align 1, !dbg !1571, !tbaa !898
  br label %95, !dbg !1571

; <label>:48:                                     ; preds = %27, %27
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.54, i64 0, i64 0), i32 %28), !dbg !1573
  call void @llvm.dbg.value(metadata i8* %49, i64 0, metadata !1483, metadata !598), !dbg !1546
  %50 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.55, i64 0, i64 0), i32 %28), !dbg !1577
  call void @llvm.dbg.value(metadata i8* %50, i64 0, metadata !1484, metadata !598), !dbg !1547
  br label %51, !dbg !1578

; <label>:51:                                     ; preds = %27, %48
  %52 = phi i8* [ %49, %48 ], [ %29, %27 ]
  %53 = phi i8* [ %50, %48 ], [ %30, %27 ]
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !1484, metadata !598), !dbg !1547
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !1483, metadata !598), !dbg !1546
  %54 = and i8 %36, 1, !dbg !1579
  %55 = icmp eq i8 %54, 0, !dbg !1579
  br i1 %55, label %56, label %73, !dbg !1581

; <label>:56:                                     ; preds = %51
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !1488, metadata !598), !dbg !1550
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1486, metadata !598), !dbg !1548
  %57 = load i8, i8* %52, align 1, !dbg !1582, !tbaa !898
  %58 = icmp eq i8 %57, 0, !dbg !1586
  br i1 %58, label %73, label %59, !dbg !1586

; <label>:59:                                     ; preds = %56
  br label %60, !dbg !1588

; <label>:60:                                     ; preds = %59, %67
  %61 = phi i8 [ %70, %67 ], [ %57, %59 ]
  %62 = phi i8* [ %69, %67 ], [ %52, %59 ]
  %63 = phi i64 [ %68, %67 ], [ 0, %59 ]
  %64 = icmp ult i64 %63, %40, !dbg !1588
  br i1 %64, label %65, label %67, !dbg !1592

; <label>:65:                                     ; preds = %60
  %66 = getelementptr inbounds i8, i8* %0, i64 %63, !dbg !1594
  store i8 %61, i8* %66, align 1, !dbg !1594, !tbaa !898
  br label %67, !dbg !1594

; <label>:67:                                     ; preds = %65, %60
  %68 = add i64 %63, 1, !dbg !1596
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !1486, metadata !598), !dbg !1548
  %69 = getelementptr inbounds i8, i8* %62, i64 1, !dbg !1598
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !1488, metadata !598), !dbg !1550
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !1488, metadata !598), !dbg !1550
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !1486, metadata !598), !dbg !1548
  %70 = load i8, i8* %69, align 1, !dbg !1582, !tbaa !898
  %71 = icmp eq i8 %70, 0, !dbg !1586
  br i1 %71, label %72, label %60, !dbg !1586, !llvm.loop !1600

; <label>:72:                                     ; preds = %67
  br label %73, !dbg !1548

; <label>:73:                                     ; preds = %72, %56, %51
  %74 = phi i64 [ 0, %51 ], [ 0, %56 ], [ %68, %72 ]
  call void @llvm.dbg.value(metadata i64 %74, i64 0, metadata !1486, metadata !598), !dbg !1548
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1490, metadata !598), !dbg !1552
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !1488, metadata !598), !dbg !1550
  %75 = call i64 @strlen(i8* %53) #13, !dbg !1603
  call void @llvm.dbg.value(metadata i64 %75, i64 0, metadata !1489, metadata !598), !dbg !1551
  br label %95, !dbg !1604

; <label>:76:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1490, metadata !598), !dbg !1552
  br label %77, !dbg !1605

; <label>:77:                                     ; preds = %27, %76
  %78 = phi i8 [ %34, %27 ], [ 1, %76 ]
  call void @llvm.dbg.value(metadata i8 %78, i64 0, metadata !1490, metadata !598), !dbg !1552
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1492, metadata !598), !dbg !1555
  br label %79, !dbg !1606

; <label>:79:                                     ; preds = %27, %77
  %80 = phi i8 [ %34, %27 ], [ %78, %77 ]
  %81 = phi i8 [ %36, %27 ], [ 1, %77 ]
  call void @llvm.dbg.value(metadata i8 %81, i64 0, metadata !1492, metadata !598), !dbg !1555
  call void @llvm.dbg.value(metadata i8 %80, i64 0, metadata !1490, metadata !598), !dbg !1552
  %82 = and i8 %81, 1, !dbg !1607
  %83 = icmp eq i8 %82, 0, !dbg !1607
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1490, metadata !598), !dbg !1552
  %84 = select i1 %83, i8 1, i8 %80, !dbg !1609
  br label %85, !dbg !1609

; <label>:85:                                     ; preds = %79, %27
  %86 = phi i8 [ %34, %27 ], [ %84, %79 ]
  %87 = phi i8 [ %36, %27 ], [ %81, %79 ]
  call void @llvm.dbg.value(metadata i8 %87, i64 0, metadata !1492, metadata !598), !dbg !1555
  call void @llvm.dbg.value(metadata i8 %86, i64 0, metadata !1490, metadata !598), !dbg !1552
  call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !1480, metadata !598), !dbg !1543
  %88 = and i8 %87, 1, !dbg !1610
  %89 = icmp eq i8 %88, 0, !dbg !1610
  br i1 %89, label %90, label %95, !dbg !1612

; <label>:90:                                     ; preds = %85
  %91 = icmp eq i64 %40, 0, !dbg !1613
  br i1 %91, label %95, label %92, !dbg !1617

; <label>:92:                                     ; preds = %90
  store i8 39, i8* %0, align 1, !dbg !1619, !tbaa !898
  br label %95, !dbg !1619

; <label>:93:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1492, metadata !598), !dbg !1555
  br label %95, !dbg !1621

; <label>:94:                                     ; preds = %27
  call void @abort() #14, !dbg !1622
  unreachable, !dbg !1622

; <label>:95:                                     ; preds = %41, %85, %90, %92, %27, %42, %45, %47, %93, %73
  %96 = phi i32 [ 0, %93 ], [ %28, %73 ], [ 5, %47 ], [ 5, %45 ], [ 5, %42 ], [ 7, %27 ], [ 2, %92 ], [ 2, %90 ], [ 2, %85 ], [ 5, %41 ]
  %97 = phi i8* [ %29, %93 ], [ %52, %73 ], [ %29, %47 ], [ %29, %45 ], [ %29, %42 ], [ %29, %27 ], [ %29, %92 ], [ %29, %90 ], [ %29, %85 ], [ %29, %41 ]
  %98 = phi i8* [ %30, %93 ], [ %53, %73 ], [ %30, %47 ], [ %30, %45 ], [ %30, %42 ], [ %30, %27 ], [ %30, %92 ], [ %30, %90 ], [ %30, %85 ], [ %30, %41 ]
  %99 = phi i64 [ 0, %93 ], [ %74, %73 ], [ 1, %47 ], [ 1, %45 ], [ 0, %42 ], [ 0, %27 ], [ 1, %92 ], [ 1, %90 ], [ 0, %85 ], [ 0, %41 ]
  %100 = phi i8* [ %32, %93 ], [ %53, %73 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.56, i64 0, i64 0), %47 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.56, i64 0, i64 0), %45 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.56, i64 0, i64 0), %42 ], [ %32, %27 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.55, i64 0, i64 0), %92 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.55, i64 0, i64 0), %90 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.55, i64 0, i64 0), %85 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.56, i64 0, i64 0), %41 ]
  %101 = phi i64 [ %33, %93 ], [ %75, %73 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ %33, %27 ], [ 1, %92 ], [ 1, %90 ], [ 1, %85 ], [ 1, %41 ]
  %102 = phi i8 [ %34, %93 ], [ 1, %73 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ 1, %27 ], [ %86, %92 ], [ %86, %90 ], [ %86, %85 ], [ 1, %41 ]
  %103 = phi i8 [ 0, %93 ], [ %36, %73 ], [ %36, %47 ], [ %36, %45 ], [ %36, %42 ], [ 0, %27 ], [ %87, %92 ], [ %87, %90 ], [ %87, %85 ], [ 1, %41 ]
  call void @llvm.dbg.value(metadata i8 %103, i64 0, metadata !1492, metadata !598), !dbg !1555
  call void @llvm.dbg.value(metadata i8 %102, i64 0, metadata !1490, metadata !598), !dbg !1552
  call void @llvm.dbg.value(metadata i64 %101, i64 0, metadata !1489, metadata !598), !dbg !1551
  call void @llvm.dbg.value(metadata i8* %100, i64 0, metadata !1488, metadata !598), !dbg !1550
  call void @llvm.dbg.value(metadata i64 %99, i64 0, metadata !1486, metadata !598), !dbg !1548
  call void @llvm.dbg.value(metadata i8* %98, i64 0, metadata !1484, metadata !598), !dbg !1547
  call void @llvm.dbg.value(metadata i8* %97, i64 0, metadata !1483, metadata !598), !dbg !1546
  call void @llvm.dbg.value(metadata i32 %96, i64 0, metadata !1480, metadata !598), !dbg !1543
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1485, metadata !598), !dbg !1623
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
  br label %123, !dbg !1624

; <label>:123:                                    ; preds = %587, %95
  %124 = phi i64 [ 0, %95 ], [ %596, %587 ]
  %125 = phi i64 [ %99, %95 ], [ %589, %587 ]
  %126 = phi i64 [ %31, %95 ], [ %590, %587 ]
  %127 = phi i64 [ %35, %95 ], [ %591, %587 ]
  %128 = phi i8 [ %37, %95 ], [ %592, %587 ]
  %129 = phi i8 [ %38, %95 ], [ %593, %587 ]
  %130 = phi i8 [ %39, %95 ], [ %594, %587 ]
  %131 = phi i64 [ %40, %95 ], [ %595, %587 ]
  call void @llvm.dbg.value(metadata i64 %131, i64 0, metadata !1477, metadata !598), !dbg !1540
  call void @llvm.dbg.value(metadata i8 %130, i64 0, metadata !1495, metadata !598), !dbg !1558
  call void @llvm.dbg.value(metadata i8 %129, i64 0, metadata !1494, metadata !598), !dbg !1557
  call void @llvm.dbg.value(metadata i8 %128, i64 0, metadata !1493, metadata !598), !dbg !1556
  call void @llvm.dbg.value(metadata i64 %127, i64 0, metadata !1479, metadata !598), !dbg !1542
  call void @llvm.dbg.value(metadata i64 %126, i64 0, metadata !1487, metadata !598), !dbg !1549
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !1486, metadata !598), !dbg !1548
  call void @llvm.dbg.value(metadata i64 %124, i64 0, metadata !1485, metadata !598), !dbg !1623
  %132 = icmp eq i64 %127, -1, !dbg !1625
  br i1 %132, label %135, label %133, !dbg !1627

; <label>:133:                                    ; preds = %123
  %134 = icmp eq i64 %124, %127, !dbg !1628
  br i1 %134, label %597, label %139, !dbg !1630

; <label>:135:                                    ; preds = %123
  %136 = getelementptr inbounds i8, i8* %2, i64 %124, !dbg !1632
  %137 = load i8, i8* %136, align 1, !dbg !1632, !tbaa !898
  %138 = icmp eq i8 %137, 0, !dbg !1634
  br i1 %138, label %597, label %139, !dbg !1630

; <label>:139:                                    ; preds = %133, %135
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1501, metadata !598), !dbg !1635
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1502, metadata !598), !dbg !1636
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1503, metadata !598), !dbg !1637
  br i1 %109, label %140, label %155, !dbg !1638

; <label>:140:                                    ; preds = %139
  %141 = add i64 %124, %101, !dbg !1640
  %142 = and i1 %110, %132, !dbg !1642
  br i1 %142, label %143, label %145, !dbg !1642

; <label>:143:                                    ; preds = %140
  %144 = call i64 @strlen(i8* %2) #13, !dbg !1643
  call void @llvm.dbg.value(metadata i64 %144, i64 0, metadata !1479, metadata !598), !dbg !1542
  br label %145, !dbg !1644

; <label>:145:                                    ; preds = %140, %143
  %146 = phi i64 [ %144, %143 ], [ %127, %140 ]
  call void @llvm.dbg.value(metadata i64 %146, i64 0, metadata !1479, metadata !598), !dbg !1542
  %147 = icmp ugt i64 %141, %146, !dbg !1646
  br i1 %147, label %155, label %148, !dbg !1648

; <label>:148:                                    ; preds = %145
  %149 = getelementptr inbounds i8, i8* %2, i64 %124, !dbg !1649
  %150 = call i32 @memcmp(i8* %149, i8* %100, i64 %101) #13, !dbg !1650
  %151 = icmp ne i32 %150, 0, !dbg !1651
  %152 = or i1 %151, %112, !dbg !1651
  %153 = xor i1 %151, true, !dbg !1651
  %154 = zext i1 %153 to i8, !dbg !1651
  br i1 %152, label %155, label %644, !dbg !1651

; <label>:155:                                    ; preds = %148, %145, %139
  %156 = phi i64 [ %146, %148 ], [ %146, %145 ], [ %127, %139 ]
  %157 = phi i8 [ %154, %148 ], [ 0, %145 ], [ 0, %139 ]
  call void @llvm.dbg.value(metadata i8 %157, i64 0, metadata !1501, metadata !598), !dbg !1635
  call void @llvm.dbg.value(metadata i64 %156, i64 0, metadata !1479, metadata !598), !dbg !1542
  %158 = getelementptr inbounds i8, i8* %2, i64 %124, !dbg !1653
  %159 = load i8, i8* %158, align 1, !dbg !1653, !tbaa !898
  call void @llvm.dbg.value(metadata i8 %159, i64 0, metadata !1496, metadata !598), !dbg !1654
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
  ], !dbg !1655

; <label>:160:                                    ; preds = %155
  br i1 %105, label %161, label %209, !dbg !1656

; <label>:161:                                    ; preds = %160
  br i1 %112, label %162, label %644, !dbg !1657

; <label>:162:                                    ; preds = %161
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1502, metadata !598), !dbg !1636
  %163 = and i8 %128, 1, !dbg !1662
  %164 = icmp eq i8 %163, 0, !dbg !1662
  %165 = and i1 %114, %164, !dbg !1665
  br i1 %165, label %166, label %182, !dbg !1665

; <label>:166:                                    ; preds = %162
  %167 = icmp ult i64 %125, %131, !dbg !1667
  br i1 %167, label %168, label %170, !dbg !1672

; <label>:168:                                    ; preds = %166
  %169 = getelementptr inbounds i8, i8* %0, i64 %125, !dbg !1674
  store i8 39, i8* %169, align 1, !dbg !1674, !tbaa !898
  br label %170, !dbg !1674

; <label>:170:                                    ; preds = %168, %166
  %171 = add i64 %125, 1, !dbg !1676
  call void @llvm.dbg.value(metadata i64 %171, i64 0, metadata !1486, metadata !598), !dbg !1548
  %172 = icmp ult i64 %171, %131, !dbg !1678
  br i1 %172, label %173, label %175, !dbg !1682

; <label>:173:                                    ; preds = %170
  %174 = getelementptr inbounds i8, i8* %0, i64 %171, !dbg !1684
  store i8 36, i8* %174, align 1, !dbg !1684, !tbaa !898
  br label %175, !dbg !1684

; <label>:175:                                    ; preds = %173, %170
  %176 = add i64 %125, 2, !dbg !1686
  call void @llvm.dbg.value(metadata i64 %176, i64 0, metadata !1486, metadata !598), !dbg !1548
  %177 = icmp ult i64 %176, %131, !dbg !1688
  br i1 %177, label %178, label %180, !dbg !1692

; <label>:178:                                    ; preds = %175
  %179 = getelementptr inbounds i8, i8* %0, i64 %176, !dbg !1694
  store i8 39, i8* %179, align 1, !dbg !1694, !tbaa !898
  br label %180, !dbg !1694

; <label>:180:                                    ; preds = %178, %175
  %181 = add i64 %125, 3, !dbg !1696
  call void @llvm.dbg.value(metadata i64 %181, i64 0, metadata !1486, metadata !598), !dbg !1548
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1493, metadata !598), !dbg !1556
  br label %182, !dbg !1698

; <label>:182:                                    ; preds = %162, %180
  %183 = phi i64 [ %181, %180 ], [ %125, %162 ]
  %184 = phi i8 [ 1, %180 ], [ %128, %162 ]
  call void @llvm.dbg.value(metadata i8 %184, i64 0, metadata !1493, metadata !598), !dbg !1556
  call void @llvm.dbg.value(metadata i64 %183, i64 0, metadata !1486, metadata !598), !dbg !1548
  %185 = icmp ult i64 %183, %131, !dbg !1700
  br i1 %185, label %186, label %188, !dbg !1704

; <label>:186:                                    ; preds = %182
  %187 = getelementptr inbounds i8, i8* %0, i64 %183, !dbg !1706
  store i8 92, i8* %187, align 1, !dbg !1706, !tbaa !898
  br label %188, !dbg !1706

; <label>:188:                                    ; preds = %186, %182
  %189 = add i64 %183, 1, !dbg !1708
  call void @llvm.dbg.value(metadata i64 %189, i64 0, metadata !1486, metadata !598), !dbg !1548
  br i1 %106, label %190, label %476, !dbg !1710

; <label>:190:                                    ; preds = %188
  %191 = add i64 %124, 1, !dbg !1712
  %192 = icmp ult i64 %191, %156, !dbg !1714
  br i1 %192, label %193, label %476, !dbg !1715

; <label>:193:                                    ; preds = %190
  %194 = getelementptr inbounds i8, i8* %2, i64 %191, !dbg !1716
  %195 = load i8, i8* %194, align 1, !dbg !1716, !tbaa !898
  %196 = add i8 %195, -48, !dbg !1718
  %197 = icmp ult i8 %196, 10, !dbg !1718
  br i1 %197, label %198, label %476, !dbg !1718

; <label>:198:                                    ; preds = %193
  %199 = icmp ult i64 %189, %131, !dbg !1719
  br i1 %199, label %200, label %202, !dbg !1724

; <label>:200:                                    ; preds = %198
  %201 = getelementptr inbounds i8, i8* %0, i64 %189, !dbg !1726
  store i8 48, i8* %201, align 1, !dbg !1726, !tbaa !898
  br label %202, !dbg !1726

; <label>:202:                                    ; preds = %200, %198
  %203 = add i64 %183, 2, !dbg !1728
  call void @llvm.dbg.value(metadata i64 %203, i64 0, metadata !1486, metadata !598), !dbg !1548
  %204 = icmp ult i64 %203, %131, !dbg !1730
  br i1 %204, label %205, label %207, !dbg !1734

; <label>:205:                                    ; preds = %202
  %206 = getelementptr inbounds i8, i8* %0, i64 %203, !dbg !1736
  store i8 48, i8* %206, align 1, !dbg !1736, !tbaa !898
  br label %207, !dbg !1736

; <label>:207:                                    ; preds = %205, %202
  %208 = add i64 %183, 3, !dbg !1738
  call void @llvm.dbg.value(metadata i64 %208, i64 0, metadata !1486, metadata !598), !dbg !1548
  br label %476, !dbg !1740

; <label>:209:                                    ; preds = %160
  br i1 %23, label %476, label %587, !dbg !1741

; <label>:210:                                    ; preds = %155
  switch i32 %96, label %476 [
    i32 2, label %211
    i32 5, label %212
  ], !dbg !1742

; <label>:211:                                    ; preds = %210
  br i1 %112, label %476, label %644, !dbg !1743

; <label>:212:                                    ; preds = %210
  br i1 %25, label %476, label %213, !dbg !1745

; <label>:213:                                    ; preds = %212
  %214 = add i64 %124, 2, !dbg !1747
  %215 = icmp ult i64 %214, %156, !dbg !1749
  br i1 %215, label %216, label %476, !dbg !1750

; <label>:216:                                    ; preds = %213
  %217 = add i64 %124, 1, !dbg !1751
  %218 = getelementptr inbounds i8, i8* %2, i64 %217, !dbg !1753
  %219 = load i8, i8* %218, align 1, !dbg !1753, !tbaa !898
  %220 = icmp eq i8 %219, 63, !dbg !1754
  br i1 %220, label %221, label %476, !dbg !1755

; <label>:221:                                    ; preds = %216
  %222 = getelementptr inbounds i8, i8* %2, i64 %214, !dbg !1757
  %223 = load i8, i8* %222, align 1, !dbg !1757, !tbaa !898
  %224 = sext i8 %223 to i32, !dbg !1757
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
  ], !dbg !1758

; <label>:225:                                    ; preds = %221, %221, %221, %221, %221, %221, %221, %221, %221
  br i1 %112, label %226, label %644, !dbg !1759

; <label>:226:                                    ; preds = %225
  call void @llvm.dbg.value(metadata i8 %223, i64 0, metadata !1496, metadata !598), !dbg !1654
  call void @llvm.dbg.value(metadata i64 %214, i64 0, metadata !1485, metadata !598), !dbg !1623
  %227 = icmp ult i64 %125, %131, !dbg !1761
  br i1 %227, label %228, label %230, !dbg !1765

; <label>:228:                                    ; preds = %226
  %229 = getelementptr inbounds i8, i8* %0, i64 %125, !dbg !1767
  store i8 63, i8* %229, align 1, !dbg !1767, !tbaa !898
  br label %230, !dbg !1767

; <label>:230:                                    ; preds = %228, %226
  %231 = add i64 %125, 1, !dbg !1769
  call void @llvm.dbg.value(metadata i64 %231, i64 0, metadata !1486, metadata !598), !dbg !1548
  %232 = icmp ult i64 %231, %131, !dbg !1771
  br i1 %232, label %233, label %235, !dbg !1775

; <label>:233:                                    ; preds = %230
  %234 = getelementptr inbounds i8, i8* %0, i64 %231, !dbg !1777
  store i8 34, i8* %234, align 1, !dbg !1777, !tbaa !898
  br label %235, !dbg !1777

; <label>:235:                                    ; preds = %233, %230
  %236 = add i64 %125, 2, !dbg !1779
  call void @llvm.dbg.value(metadata i64 %236, i64 0, metadata !1486, metadata !598), !dbg !1548
  %237 = icmp ult i64 %236, %131, !dbg !1781
  br i1 %237, label %238, label %240, !dbg !1785

; <label>:238:                                    ; preds = %235
  %239 = getelementptr inbounds i8, i8* %0, i64 %236, !dbg !1787
  store i8 34, i8* %239, align 1, !dbg !1787, !tbaa !898
  br label %240, !dbg !1787

; <label>:240:                                    ; preds = %238, %235
  %241 = add i64 %125, 3, !dbg !1789
  call void @llvm.dbg.value(metadata i64 %241, i64 0, metadata !1486, metadata !598), !dbg !1548
  %242 = icmp ult i64 %241, %131, !dbg !1791
  br i1 %242, label %243, label %245, !dbg !1795

; <label>:243:                                    ; preds = %240
  %244 = getelementptr inbounds i8, i8* %0, i64 %241, !dbg !1797
  store i8 63, i8* %244, align 1, !dbg !1797, !tbaa !898
  br label %245, !dbg !1797

; <label>:245:                                    ; preds = %243, %240
  %246 = add i64 %125, 4, !dbg !1799
  call void @llvm.dbg.value(metadata i64 %246, i64 0, metadata !1486, metadata !598), !dbg !1548
  br label %476, !dbg !1801

; <label>:247:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 98, i64 0, metadata !1500, metadata !598), !dbg !1802
  br label %257, !dbg !1803

; <label>:248:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 102, i64 0, metadata !1500, metadata !598), !dbg !1802
  br label %257, !dbg !1804

; <label>:249:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 114, i64 0, metadata !1500, metadata !598), !dbg !1802
  br label %255, !dbg !1805

; <label>:250:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 116, i64 0, metadata !1500, metadata !598), !dbg !1802
  br label %255, !dbg !1806

; <label>:251:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 118, i64 0, metadata !1500, metadata !598), !dbg !1802
  br label %257, !dbg !1807

; <label>:252:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 %159, i64 0, metadata !1500, metadata !598), !dbg !1802
  br i1 %114, label %253, label %254, !dbg !1808

; <label>:253:                                    ; preds = %252
  br i1 %112, label %542, label %644, !dbg !1809

; <label>:254:                                    ; preds = %252
  br i1 %122, label %542, label %255, !dbg !1812

; <label>:255:                                    ; preds = %254, %155, %250, %249
  %256 = phi i8 [ 92, %254 ], [ 116, %250 ], [ 114, %249 ], [ 110, %155 ]
  call void @llvm.dbg.value(metadata i8 %256, i64 0, metadata !1500, metadata !598), !dbg !1802
  br i1 %118, label %257, label %644, !dbg !1814

; <label>:257:                                    ; preds = %255, %155, %251, %248, %247
  %258 = phi i8 [ %256, %255 ], [ 118, %251 ], [ 102, %248 ], [ 98, %247 ], [ 97, %155 ]
  call void @llvm.dbg.value(metadata i8 %258, i64 0, metadata !1500, metadata !598), !dbg !1802
  br i1 %105, label %503, label %476, !dbg !1816

; <label>:259:                                    ; preds = %155, %155
  %260 = icmp eq i64 %156, -1, !dbg !1817
  br i1 %260, label %261, label %266, !dbg !1819

; <label>:261:                                    ; preds = %259
  %262 = load i8, i8* %26, align 1, !dbg !1820, !tbaa !898
  %263 = icmp ne i8 %262, 0, !dbg !1822
  %264 = icmp ne i64 %124, 0, !dbg !1823
  %265 = or i1 %264, %263, !dbg !1825
  br i1 %265, label %476, label %272, !dbg !1825

; <label>:266:                                    ; preds = %259
  %267 = icmp ne i64 %156, 1, !dbg !1826
  %268 = icmp ne i64 %124, 0, !dbg !1823
  %269 = or i1 %268, %267, !dbg !1828
  br i1 %269, label %476, label %272, !dbg !1828

; <label>:270:                                    ; preds = %155, %155
  %271 = icmp eq i64 %124, 0, !dbg !1823
  br i1 %271, label %272, label %476, !dbg !1830

; <label>:272:                                    ; preds = %270, %266, %261, %155
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1503, metadata !598), !dbg !1637
  br label %273, !dbg !1831

; <label>:273:                                    ; preds = %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %272
  %274 = phi i8 [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 1, %272 ]
  call void @llvm.dbg.value(metadata i8 %274, i64 0, metadata !1503, metadata !598), !dbg !1637
  br i1 %118, label %476, label %644, !dbg !1832

; <label>:275:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1494, metadata !598), !dbg !1557
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1503, metadata !598), !dbg !1637
  br i1 %114, label %276, label %476, !dbg !1834

; <label>:276:                                    ; preds = %275
  br i1 %112, label %277, label %644, !dbg !1835

; <label>:277:                                    ; preds = %276
  %278 = icmp eq i64 %131, 0, !dbg !1838
  %279 = icmp ne i64 %126, 0, !dbg !1840
  %280 = or i1 %279, %278, !dbg !1842
  call void @llvm.dbg.value(metadata i64 %131, i64 0, metadata !1487, metadata !598), !dbg !1549
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1477, metadata !598), !dbg !1540
  %281 = select i1 %280, i64 %126, i64 %131, !dbg !1842
  %282 = select i1 %280, i64 %131, i64 0, !dbg !1842
  call void @llvm.dbg.value(metadata i64 %282, i64 0, metadata !1477, metadata !598), !dbg !1540
  call void @llvm.dbg.value(metadata i64 %281, i64 0, metadata !1487, metadata !598), !dbg !1549
  %283 = icmp ult i64 %125, %282, !dbg !1843
  br i1 %283, label %284, label %286, !dbg !1847

; <label>:284:                                    ; preds = %277
  %285 = getelementptr inbounds i8, i8* %0, i64 %125, !dbg !1849
  store i8 39, i8* %285, align 1, !dbg !1849, !tbaa !898
  br label %286, !dbg !1849

; <label>:286:                                    ; preds = %284, %277
  %287 = add i64 %125, 1, !dbg !1851
  call void @llvm.dbg.value(metadata i64 %287, i64 0, metadata !1486, metadata !598), !dbg !1548
  %288 = icmp ult i64 %287, %282, !dbg !1853
  br i1 %288, label %289, label %291, !dbg !1857

; <label>:289:                                    ; preds = %286
  %290 = getelementptr inbounds i8, i8* %0, i64 %287, !dbg !1859
  store i8 92, i8* %290, align 1, !dbg !1859, !tbaa !898
  br label %291, !dbg !1859

; <label>:291:                                    ; preds = %289, %286
  %292 = add i64 %125, 2, !dbg !1861
  call void @llvm.dbg.value(metadata i64 %292, i64 0, metadata !1486, metadata !598), !dbg !1548
  %293 = icmp ult i64 %292, %282, !dbg !1863
  br i1 %293, label %294, label %296, !dbg !1867

; <label>:294:                                    ; preds = %291
  %295 = getelementptr inbounds i8, i8* %0, i64 %292, !dbg !1869
  store i8 39, i8* %295, align 1, !dbg !1869, !tbaa !898
  br label %296, !dbg !1869

; <label>:296:                                    ; preds = %294, %291
  %297 = add i64 %125, 3, !dbg !1871
  call void @llvm.dbg.value(metadata i64 %297, i64 0, metadata !1486, metadata !598), !dbg !1548
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1493, metadata !598), !dbg !1556
  br label %476, !dbg !1873

; <label>:298:                                    ; preds = %155
  br i1 %14, label %299, label %308, !dbg !1874

; <label>:299:                                    ; preds = %298
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1504, metadata !598), !dbg !1875
  %300 = tail call i16** @__ctype_b_loc() #1, !dbg !1876
  %301 = load i16*, i16** %300, align 8, !dbg !1876, !tbaa !606
  %302 = zext i8 %159 to i64, !dbg !1876
  %303 = getelementptr inbounds i16, i16* %301, i64 %302, !dbg !1876
  %304 = load i16, i16* %303, align 2, !dbg !1876, !tbaa !1878
  %305 = lshr i16 %304, 14, !dbg !1880
  %306 = trunc i16 %305 to i8, !dbg !1880
  %307 = and i8 %306, 1, !dbg !1880
  call void @llvm.dbg.value(metadata i8 %307, i64 0, metadata !1507, metadata !598), !dbg !1881
  br label %368, !dbg !1882

; <label>:308:                                    ; preds = %298
  call void @llvm.lifetime.start(i64 8, i8* nonnull %18) #10, !dbg !1883
  store i64 0, i64* %10, align 8, !dbg !1884
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1504, metadata !598), !dbg !1875
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1507, metadata !598), !dbg !1881
  %309 = icmp eq i64 %156, -1, !dbg !1885
  br i1 %309, label %310, label %312, !dbg !1887, !llvm.loop !1888

; <label>:310:                                    ; preds = %308
  %311 = call i64 @strlen(i8* nonnull %2) #13, !dbg !1891
  call void @llvm.dbg.value(metadata i64 %311, i64 0, metadata !1479, metadata !598), !dbg !1542
  br label %312, !dbg !1892, !llvm.loop !1888

; <label>:312:                                    ; preds = %310, %308
  %313 = phi i64 [ %156, %308 ], [ %311, %310 ]
  br label %314, !dbg !1881

; <label>:314:                                    ; preds = %312, %355
  %315 = phi i64 [ %360, %355 ], [ 0, %312 ]
  %316 = phi i8 [ %359, %355 ], [ 1, %312 ]
  call void @llvm.dbg.value(metadata i8 %316, i64 0, metadata !1507, metadata !598), !dbg !1881
  call void @llvm.dbg.value(metadata i64 %315, i64 0, metadata !1504, metadata !598), !dbg !1875
  call void @llvm.dbg.value(metadata i64 %313, i64 0, metadata !1479, metadata !598), !dbg !1542
  call void @llvm.lifetime.start(i64 4, i8* nonnull %19) #10, !dbg !1893
  %317 = add i64 %315, %124, !dbg !1894
  %318 = getelementptr inbounds i8, i8* %2, i64 %317, !dbg !1895
  %319 = sub i64 %313, %317, !dbg !1896
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !1508, metadata !1139), !dbg !1897
  call void @llvm.dbg.value(metadata i32* %12, i64 0, metadata !1525, metadata !1139), !dbg !1898
  %320 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %318, i64 %319, %struct.__mbstate_t* nonnull %11) #10, !dbg !1899
  call void @llvm.dbg.value(metadata i64 %320, i64 0, metadata !1528, metadata !598), !dbg !1900
  switch i64 %320, label %334 [
    i64 0, label %350
    i64 -1, label %347
    i64 -2, label %321
  ], !dbg !1901

; <label>:321:                                    ; preds = %314
  call void @llvm.dbg.value(metadata i64 %315, i64 0, metadata !1504, metadata !598), !dbg !1875
  %322 = icmp ugt i64 %313, %317, !dbg !1902
  br i1 %322, label %323, label %351, !dbg !1905

; <label>:323:                                    ; preds = %321
  br label %324, !dbg !1906

; <label>:324:                                    ; preds = %323, %330
  %325 = phi i64 [ %332, %330 ], [ %317, %323 ]
  %326 = phi i64 [ %331, %330 ], [ %315, %323 ]
  %327 = getelementptr inbounds i8, i8* %2, i64 %325, !dbg !1906
  %328 = load i8, i8* %327, align 1, !dbg !1906, !tbaa !898
  %329 = icmp eq i8 %328, 0, !dbg !1908
  br i1 %329, label %348, label %330, !dbg !1909

; <label>:330:                                    ; preds = %324
  %331 = add i64 %326, 1, !dbg !1911
  call void @llvm.dbg.value(metadata i64 %331, i64 0, metadata !1504, metadata !598), !dbg !1875
  call void @llvm.dbg.value(metadata i64 %331, i64 0, metadata !1504, metadata !598), !dbg !1875
  %332 = add i64 %331, %124, !dbg !1912
  %333 = icmp ult i64 %332, %313, !dbg !1902
  br i1 %333, label %324, label %348, !dbg !1905, !llvm.loop !1913

; <label>:334:                                    ; preds = %314
  %335 = icmp ugt i64 %320, 1, !dbg !1915
  %336 = and i1 %116, %335, !dbg !1919
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1529, metadata !598), !dbg !1920
  br i1 %336, label %337, label %355, !dbg !1919

; <label>:337:                                    ; preds = %334
  br label %338, !dbg !1921

; <label>:338:                                    ; preds = %337, %344
  %339 = phi i64 [ %345, %344 ], [ 1, %337 ]
  %340 = add i64 %339, %317, !dbg !1921
  %341 = getelementptr inbounds i8, i8* %2, i64 %340, !dbg !1922
  %342 = load i8, i8* %341, align 1, !dbg !1922, !tbaa !898
  %343 = sext i8 %342 to i32, !dbg !1922
  switch i32 %343, label %344 [
    i32 91, label %367
    i32 92, label %367
    i32 94, label %367
    i32 96, label %367
    i32 124, label %367
  ], !dbg !1923

; <label>:344:                                    ; preds = %338
  %345 = add nuw i64 %339, 1, !dbg !1924
  call void @llvm.dbg.value(metadata i64 %345, i64 0, metadata !1529, metadata !598), !dbg !1920
  call void @llvm.dbg.value(metadata i64 %345, i64 0, metadata !1529, metadata !598), !dbg !1920
  %346 = icmp ult i64 %345, %320, !dbg !1915
  br i1 %346, label %338, label %354, !dbg !1926, !llvm.loop !1928

; <label>:347:                                    ; preds = %314
  br label %351, !dbg !1881

; <label>:348:                                    ; preds = %324, %330
  %349 = phi i64 [ %331, %330 ], [ %326, %324 ]
  br label %351, !dbg !1881

; <label>:350:                                    ; preds = %314
  br label %351, !dbg !1881

; <label>:351:                                    ; preds = %350, %348, %347, %321
  %352 = phi i64 [ %315, %321 ], [ %315, %347 ], [ %349, %348 ], [ %315, %350 ]
  %353 = phi i8 [ 0, %321 ], [ 0, %347 ], [ 0, %348 ], [ %316, %350 ]
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !1507, metadata !598), !dbg !1881
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !1504, metadata !598), !dbg !1875
  call void @llvm.lifetime.end(i64 4, i8* nonnull %19) #10, !dbg !1931
  br label %364

; <label>:354:                                    ; preds = %344
  br label %355, !dbg !1932

; <label>:355:                                    ; preds = %354, %334
  %356 = load i32, i32* %12, align 4, !dbg !1932, !tbaa !724
  call void @llvm.dbg.value(metadata i32 %356, i64 0, metadata !1525, metadata !598), !dbg !1898
  %357 = call i32 @iswprint(i32 %356) #10, !dbg !1934
  %358 = icmp eq i32 %357, 0, !dbg !1934
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1507, metadata !598), !dbg !1881
  %359 = select i1 %358, i8 0, i8 %316, !dbg !1935
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !1507, metadata !598), !dbg !1881
  %360 = add i64 %320, %315, !dbg !1936
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !1504, metadata !598), !dbg !1875
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !1507, metadata !598), !dbg !1881
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !1504, metadata !598), !dbg !1875
  call void @llvm.lifetime.end(i64 4, i8* nonnull %19) #10, !dbg !1931
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !1508, metadata !1139), !dbg !1897
  %361 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #13, !dbg !1937
  %362 = icmp eq i32 %361, 0, !dbg !1938
  br i1 %362, label %314, label %363, !dbg !1939, !llvm.loop !1888

; <label>:363:                                    ; preds = %355
  br label %364, !dbg !1941

; <label>:364:                                    ; preds = %363, %351
  %365 = phi i8 [ %353, %351 ], [ %359, %363 ]
  %366 = phi i64 [ %352, %351 ], [ %360, %363 ]
  call void @llvm.lifetime.end(i64 8, i8* nonnull %18) #10, !dbg !1941
  br label %368

; <label>:367:                                    ; preds = %338, %338, %338, %338, %338
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !1507, metadata !598), !dbg !1881
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !1504, metadata !598), !dbg !1875
  call void @llvm.lifetime.end(i64 4, i8* nonnull %19) #10, !dbg !1931
  call void @llvm.lifetime.end(i64 8, i8* nonnull %18) #10, !dbg !1941
  br label %649

; <label>:368:                                    ; preds = %364, %299
  %369 = phi i64 [ %156, %299 ], [ %313, %364 ]
  %370 = phi i64 [ 1, %299 ], [ %366, %364 ]
  %371 = phi i8 [ %307, %299 ], [ %365, %364 ]
  call void @llvm.dbg.value(metadata i8 %371, i64 0, metadata !1507, metadata !598), !dbg !1881
  call void @llvm.dbg.value(metadata i64 %370, i64 0, metadata !1504, metadata !598), !dbg !1875
  call void @llvm.dbg.value(metadata i64 %369, i64 0, metadata !1479, metadata !598), !dbg !1542
  %372 = and i8 %371, 1, !dbg !1942
  %373 = icmp ne i8 %372, 0, !dbg !1942
  call void @llvm.dbg.value(metadata i8 %372, i64 0, metadata !1503, metadata !598), !dbg !1637
  %374 = icmp ult i64 %370, 2, !dbg !1943
  %375 = or i1 %373, %113, !dbg !1944
  %376 = and i1 %374, %375, !dbg !1946
  br i1 %376, label %476, label %377, !dbg !1946

; <label>:377:                                    ; preds = %368
  %378 = add i64 %370, %124, !dbg !1947
  call void @llvm.dbg.value(metadata i64 %378, i64 0, metadata !1536, metadata !598), !dbg !1948
  br label %379, !dbg !1949

; <label>:379:                                    ; preds = %472, %377
  %380 = phi i64 [ %124, %377 ], [ %447, %472 ]
  %381 = phi i64 [ %125, %377 ], [ %473, %472 ]
  %382 = phi i8 [ %128, %377 ], [ %468, %472 ]
  %383 = phi i8 [ %159, %377 ], [ %475, %472 ]
  %384 = phi i8 [ %157, %377 ], [ %445, %472 ]
  %385 = phi i8 [ 0, %377 ], [ %446, %472 ]
  call void @llvm.dbg.value(metadata i8 %385, i64 0, metadata !1502, metadata !598), !dbg !1636
  call void @llvm.dbg.value(metadata i8 %384, i64 0, metadata !1501, metadata !598), !dbg !1635
  call void @llvm.dbg.value(metadata i8 %383, i64 0, metadata !1496, metadata !598), !dbg !1654
  call void @llvm.dbg.value(metadata i8 %382, i64 0, metadata !1493, metadata !598), !dbg !1556
  call void @llvm.dbg.value(metadata i64 %381, i64 0, metadata !1486, metadata !598), !dbg !1548
  call void @llvm.dbg.value(metadata i64 %380, i64 0, metadata !1485, metadata !598), !dbg !1623
  br i1 %375, label %432, label %386, !dbg !1950

; <label>:386:                                    ; preds = %379
  br i1 %112, label %387, label %643, !dbg !1955

; <label>:387:                                    ; preds = %386
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1502, metadata !598), !dbg !1636
  %388 = and i8 %382, 1, !dbg !1959
  %389 = icmp eq i8 %388, 0, !dbg !1959
  %390 = and i1 %114, %389, !dbg !1962
  br i1 %390, label %391, label %407, !dbg !1962

; <label>:391:                                    ; preds = %387
  %392 = icmp ult i64 %381, %131, !dbg !1964
  br i1 %392, label %393, label %395, !dbg !1969

; <label>:393:                                    ; preds = %391
  %394 = getelementptr inbounds i8, i8* %0, i64 %381, !dbg !1971
  store i8 39, i8* %394, align 1, !dbg !1971, !tbaa !898
  br label %395, !dbg !1971

; <label>:395:                                    ; preds = %393, %391
  %396 = add i64 %381, 1, !dbg !1973
  call void @llvm.dbg.value(metadata i64 %396, i64 0, metadata !1486, metadata !598), !dbg !1548
  %397 = icmp ult i64 %396, %131, !dbg !1975
  br i1 %397, label %398, label %400, !dbg !1979

; <label>:398:                                    ; preds = %395
  %399 = getelementptr inbounds i8, i8* %0, i64 %396, !dbg !1981
  store i8 36, i8* %399, align 1, !dbg !1981, !tbaa !898
  br label %400, !dbg !1981

; <label>:400:                                    ; preds = %398, %395
  %401 = add i64 %381, 2, !dbg !1983
  call void @llvm.dbg.value(metadata i64 %401, i64 0, metadata !1486, metadata !598), !dbg !1548
  %402 = icmp ult i64 %401, %131, !dbg !1985
  br i1 %402, label %403, label %405, !dbg !1989

; <label>:403:                                    ; preds = %400
  %404 = getelementptr inbounds i8, i8* %0, i64 %401, !dbg !1991
  store i8 39, i8* %404, align 1, !dbg !1991, !tbaa !898
  br label %405, !dbg !1991

; <label>:405:                                    ; preds = %403, %400
  %406 = add i64 %381, 3, !dbg !1993
  call void @llvm.dbg.value(metadata i64 %406, i64 0, metadata !1486, metadata !598), !dbg !1548
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1493, metadata !598), !dbg !1556
  br label %407, !dbg !1995

; <label>:407:                                    ; preds = %387, %405
  %408 = phi i64 [ %406, %405 ], [ %381, %387 ]
  %409 = phi i8 [ 1, %405 ], [ %382, %387 ]
  call void @llvm.dbg.value(metadata i8 %409, i64 0, metadata !1493, metadata !598), !dbg !1556
  call void @llvm.dbg.value(metadata i64 %408, i64 0, metadata !1486, metadata !598), !dbg !1548
  %410 = icmp ult i64 %408, %131, !dbg !1997
  br i1 %410, label %411, label %413, !dbg !2001

; <label>:411:                                    ; preds = %407
  %412 = getelementptr inbounds i8, i8* %0, i64 %408, !dbg !2003
  store i8 92, i8* %412, align 1, !dbg !2003, !tbaa !898
  br label %413, !dbg !2003

; <label>:413:                                    ; preds = %411, %407
  %414 = add i64 %408, 1, !dbg !2005
  call void @llvm.dbg.value(metadata i64 %414, i64 0, metadata !1486, metadata !598), !dbg !1548
  %415 = icmp ult i64 %414, %131, !dbg !2007
  br i1 %415, label %416, label %420, !dbg !2011

; <label>:416:                                    ; preds = %413
  %417 = lshr i8 %383, 6, !dbg !2013
  %418 = or i8 %417, 48, !dbg !2013
  %419 = getelementptr inbounds i8, i8* %0, i64 %414, !dbg !2013
  store i8 %418, i8* %419, align 1, !dbg !2013, !tbaa !898
  br label %420, !dbg !2013

; <label>:420:                                    ; preds = %416, %413
  %421 = add i64 %408, 2, !dbg !2015
  call void @llvm.dbg.value(metadata i64 %421, i64 0, metadata !1486, metadata !598), !dbg !1548
  %422 = icmp ult i64 %421, %131, !dbg !2017
  br i1 %422, label %423, label %428, !dbg !2021

; <label>:423:                                    ; preds = %420
  %424 = lshr i8 %383, 3, !dbg !2023
  %425 = and i8 %424, 7, !dbg !2023
  %426 = or i8 %425, 48, !dbg !2023
  %427 = getelementptr inbounds i8, i8* %0, i64 %421, !dbg !2023
  store i8 %426, i8* %427, align 1, !dbg !2023, !tbaa !898
  br label %428, !dbg !2023

; <label>:428:                                    ; preds = %423, %420
  %429 = add i64 %408, 3, !dbg !2025
  call void @llvm.dbg.value(metadata i64 %429, i64 0, metadata !1486, metadata !598), !dbg !1548
  %430 = and i8 %383, 7, !dbg !2027
  %431 = or i8 %430, 48, !dbg !2028
  call void @llvm.dbg.value(metadata i8 %431, i64 0, metadata !1496, metadata !598), !dbg !1654
  br label %441, !dbg !2029

; <label>:432:                                    ; preds = %379
  %433 = and i8 %384, 1, !dbg !2030
  %434 = icmp eq i8 %433, 0, !dbg !2030
  br i1 %434, label %441, label %435, !dbg !2032

; <label>:435:                                    ; preds = %432
  %436 = icmp ult i64 %381, %131, !dbg !2033
  br i1 %436, label %437, label %439, !dbg !2038

; <label>:437:                                    ; preds = %435
  %438 = getelementptr inbounds i8, i8* %0, i64 %381, !dbg !2040
  store i8 92, i8* %438, align 1, !dbg !2040, !tbaa !898
  br label %439, !dbg !2040

; <label>:439:                                    ; preds = %437, %435
  %440 = add i64 %381, 1, !dbg !2042
  call void @llvm.dbg.value(metadata i64 %440, i64 0, metadata !1486, metadata !598), !dbg !1548
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1501, metadata !598), !dbg !1635
  br label %441, !dbg !2044

; <label>:441:                                    ; preds = %432, %439, %428
  %442 = phi i64 [ %440, %439 ], [ %381, %432 ], [ %429, %428 ]
  %443 = phi i8 [ %382, %439 ], [ %382, %432 ], [ %409, %428 ]
  %444 = phi i8 [ %383, %439 ], [ %383, %432 ], [ %431, %428 ]
  %445 = phi i8 [ 0, %439 ], [ %384, %432 ], [ %384, %428 ]
  %446 = phi i8 [ %385, %439 ], [ %385, %432 ], [ 1, %428 ]
  call void @llvm.dbg.value(metadata i8 %446, i64 0, metadata !1502, metadata !598), !dbg !1636
  call void @llvm.dbg.value(metadata i8 %445, i64 0, metadata !1501, metadata !598), !dbg !1635
  call void @llvm.dbg.value(metadata i8 %444, i64 0, metadata !1496, metadata !598), !dbg !1654
  call void @llvm.dbg.value(metadata i8 %443, i64 0, metadata !1493, metadata !598), !dbg !1556
  call void @llvm.dbg.value(metadata i64 %442, i64 0, metadata !1486, metadata !598), !dbg !1548
  %447 = add i64 %380, 1, !dbg !2045
  %448 = icmp ugt i64 %378, %447, !dbg !2047
  br i1 %448, label %449, label %541, !dbg !2048

; <label>:449:                                    ; preds = %441
  %450 = and i8 %443, 1, !dbg !2049
  %451 = icmp ne i8 %450, 0, !dbg !2049
  %452 = and i8 %446, 1, !dbg !2053
  %453 = icmp eq i8 %452, 0, !dbg !2053
  %454 = and i1 %451, %453, !dbg !2049
  br i1 %454, label %455, label %466, !dbg !2049

; <label>:455:                                    ; preds = %449
  %456 = icmp ult i64 %442, %131, !dbg !2055
  br i1 %456, label %457, label %459, !dbg !2060

; <label>:457:                                    ; preds = %455
  %458 = getelementptr inbounds i8, i8* %0, i64 %442, !dbg !2062
  store i8 39, i8* %458, align 1, !dbg !2062, !tbaa !898
  br label %459, !dbg !2062

; <label>:459:                                    ; preds = %457, %455
  %460 = add i64 %442, 1, !dbg !2064
  call void @llvm.dbg.value(metadata i64 %460, i64 0, metadata !1486, metadata !598), !dbg !1548
  %461 = icmp ult i64 %460, %131, !dbg !2066
  br i1 %461, label %462, label %464, !dbg !2070

; <label>:462:                                    ; preds = %459
  %463 = getelementptr inbounds i8, i8* %0, i64 %460, !dbg !2072
  store i8 39, i8* %463, align 1, !dbg !2072, !tbaa !898
  br label %464, !dbg !2072

; <label>:464:                                    ; preds = %462, %459
  %465 = add i64 %442, 2, !dbg !2074
  call void @llvm.dbg.value(metadata i64 %465, i64 0, metadata !1486, metadata !598), !dbg !1548
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1493, metadata !598), !dbg !1556
  br label %466, !dbg !2076

; <label>:466:                                    ; preds = %449, %464
  %467 = phi i64 [ %465, %464 ], [ %442, %449 ]
  %468 = phi i8 [ 0, %464 ], [ %443, %449 ]
  call void @llvm.dbg.value(metadata i8 %468, i64 0, metadata !1493, metadata !598), !dbg !1556
  call void @llvm.dbg.value(metadata i64 %467, i64 0, metadata !1486, metadata !598), !dbg !1548
  %469 = icmp ult i64 %467, %131, !dbg !2078
  br i1 %469, label %470, label %472, !dbg !2082

; <label>:470:                                    ; preds = %466
  %471 = getelementptr inbounds i8, i8* %0, i64 %467, !dbg !2084
  store i8 %444, i8* %471, align 1, !dbg !2084, !tbaa !898
  br label %472, !dbg !2084

; <label>:472:                                    ; preds = %470, %466
  %473 = add i64 %467, 1, !dbg !2086
  call void @llvm.dbg.value(metadata i64 %473, i64 0, metadata !1486, metadata !598), !dbg !1548
  call void @llvm.dbg.value(metadata i64 %447, i64 0, metadata !1485, metadata !598), !dbg !1623
  %474 = getelementptr inbounds i8, i8* %2, i64 %447, !dbg !2088
  %475 = load i8, i8* %474, align 1, !dbg !2088, !tbaa !898
  call void @llvm.dbg.value(metadata i8 %475, i64 0, metadata !1496, metadata !598), !dbg !1654
  br label %379, !dbg !2089, !llvm.loop !2091

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
  call void @llvm.dbg.value(metadata i64 %486, i64 0, metadata !1477, metadata !598), !dbg !1540
  call void @llvm.dbg.value(metadata i8 %485, i64 0, metadata !1503, metadata !598), !dbg !1637
  call void @llvm.dbg.value(metadata i8 %484, i64 0, metadata !1502, metadata !598), !dbg !1636
  call void @llvm.dbg.value(metadata i8 %157, i64 0, metadata !1501, metadata !598), !dbg !1635
  call void @llvm.dbg.value(metadata i8 %483, i64 0, metadata !1496, metadata !598), !dbg !1654
  call void @llvm.dbg.value(metadata i8 %482, i64 0, metadata !1494, metadata !598), !dbg !1557
  call void @llvm.dbg.value(metadata i8 %481, i64 0, metadata !1493, metadata !598), !dbg !1556
  call void @llvm.dbg.value(metadata i64 %480, i64 0, metadata !1479, metadata !598), !dbg !1542
  call void @llvm.dbg.value(metadata i64 %479, i64 0, metadata !1487, metadata !598), !dbg !1549
  call void @llvm.dbg.value(metadata i64 %478, i64 0, metadata !1486, metadata !598), !dbg !1548
  call void @llvm.dbg.value(metadata i64 %477, i64 0, metadata !1485, metadata !598), !dbg !1623
  br i1 %107, label %488, label %487, !dbg !2094

; <label>:487:                                    ; preds = %476
  br i1 %117, label %489, label %501, !dbg !2096

; <label>:488:                                    ; preds = %476
  br i1 %20, label %501, label %489, !dbg !2097

; <label>:489:                                    ; preds = %488, %487
  %490 = lshr i8 %483, 5, !dbg !2098
  %491 = zext i8 %490 to i64, !dbg !2098
  %492 = getelementptr inbounds i32, i32* %6, i64 %491, !dbg !2100
  %493 = load i32, i32* %492, align 4, !dbg !2100, !tbaa !724
  %494 = and i8 %483, 31, !dbg !2101
  %495 = zext i8 %494 to i32, !dbg !2102
  %496 = shl i32 1, %495, !dbg !2103
  %497 = and i32 %493, %496, !dbg !2103
  %498 = icmp eq i32 %497, 0, !dbg !2103
  %499 = icmp eq i8 %157, 0, !dbg !2104
  %500 = and i1 %499, %498, !dbg !2105
  br i1 %500, label %542, label %503, !dbg !2105

; <label>:501:                                    ; preds = %488, %487
  %502 = icmp eq i8 %157, 0, !dbg !2104
  br i1 %502, label %542, label %503, !dbg !2106

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
  call void @llvm.dbg.value(metadata i64 %512, i64 0, metadata !1477, metadata !598), !dbg !1540
  call void @llvm.dbg.value(metadata i8 %511, i64 0, metadata !1503, metadata !598), !dbg !1637
  call void @llvm.dbg.value(metadata i8 %510, i64 0, metadata !1496, metadata !598), !dbg !1654
  call void @llvm.dbg.value(metadata i8 %509, i64 0, metadata !1494, metadata !598), !dbg !1557
  call void @llvm.dbg.value(metadata i8 %508, i64 0, metadata !1493, metadata !598), !dbg !1556
  call void @llvm.dbg.value(metadata i64 %507, i64 0, metadata !1479, metadata !598), !dbg !1542
  call void @llvm.dbg.value(metadata i64 %506, i64 0, metadata !1487, metadata !598), !dbg !1549
  call void @llvm.dbg.value(metadata i64 %505, i64 0, metadata !1486, metadata !598), !dbg !1548
  call void @llvm.dbg.value(metadata i64 %504, i64 0, metadata !1485, metadata !598), !dbg !1623
  br i1 %112, label %513, label %644, !dbg !2108

; <label>:513:                                    ; preds = %503
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1502, metadata !598), !dbg !1636
  %514 = and i8 %508, 1, !dbg !2111
  %515 = icmp eq i8 %514, 0, !dbg !2111
  %516 = and i1 %114, %515, !dbg !2114
  br i1 %516, label %517, label %533, !dbg !2114

; <label>:517:                                    ; preds = %513
  %518 = icmp ult i64 %505, %512, !dbg !2116
  br i1 %518, label %519, label %521, !dbg !2121

; <label>:519:                                    ; preds = %517
  %520 = getelementptr inbounds i8, i8* %0, i64 %505, !dbg !2123
  store i8 39, i8* %520, align 1, !dbg !2123, !tbaa !898
  br label %521, !dbg !2123

; <label>:521:                                    ; preds = %519, %517
  %522 = add i64 %505, 1, !dbg !2125
  call void @llvm.dbg.value(metadata i64 %522, i64 0, metadata !1486, metadata !598), !dbg !1548
  %523 = icmp ult i64 %522, %512, !dbg !2127
  br i1 %523, label %524, label %526, !dbg !2131

; <label>:524:                                    ; preds = %521
  %525 = getelementptr inbounds i8, i8* %0, i64 %522, !dbg !2133
  store i8 36, i8* %525, align 1, !dbg !2133, !tbaa !898
  br label %526, !dbg !2133

; <label>:526:                                    ; preds = %524, %521
  %527 = add i64 %505, 2, !dbg !2135
  call void @llvm.dbg.value(metadata i64 %527, i64 0, metadata !1486, metadata !598), !dbg !1548
  %528 = icmp ult i64 %527, %512, !dbg !2137
  br i1 %528, label %529, label %531, !dbg !2141

; <label>:529:                                    ; preds = %526
  %530 = getelementptr inbounds i8, i8* %0, i64 %527, !dbg !2143
  store i8 39, i8* %530, align 1, !dbg !2143, !tbaa !898
  br label %531, !dbg !2143

; <label>:531:                                    ; preds = %529, %526
  %532 = add i64 %505, 3, !dbg !2145
  call void @llvm.dbg.value(metadata i64 %532, i64 0, metadata !1486, metadata !598), !dbg !1548
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1493, metadata !598), !dbg !1556
  br label %533, !dbg !2147

; <label>:533:                                    ; preds = %513, %531
  %534 = phi i64 [ %532, %531 ], [ %505, %513 ]
  %535 = phi i8 [ 1, %531 ], [ %508, %513 ]
  call void @llvm.dbg.value(metadata i8 %535, i64 0, metadata !1493, metadata !598), !dbg !1556
  call void @llvm.dbg.value(metadata i64 %534, i64 0, metadata !1486, metadata !598), !dbg !1548
  %536 = icmp ult i64 %534, %512, !dbg !2149
  br i1 %536, label %537, label %539, !dbg !2153

; <label>:537:                                    ; preds = %533
  %538 = getelementptr inbounds i8, i8* %0, i64 %534, !dbg !2155
  store i8 92, i8* %538, align 1, !dbg !2155, !tbaa !898
  br label %539, !dbg !2155

; <label>:539:                                    ; preds = %533, %537
  %540 = add i64 %534, 1, !dbg !2157
  call void @llvm.dbg.value(metadata i64 %540, i64 0, metadata !1486, metadata !598), !dbg !1548
  call void @llvm.dbg.value(metadata i64 %552, i64 0, metadata !1477, metadata !598), !dbg !1540
  call void @llvm.dbg.value(metadata i8 %551, i64 0, metadata !1503, metadata !598), !dbg !1637
  call void @llvm.dbg.value(metadata i8 %550, i64 0, metadata !1502, metadata !598), !dbg !1636
  call void @llvm.dbg.value(metadata i8 %549, i64 0, metadata !1496, metadata !598), !dbg !1654
  call void @llvm.dbg.value(metadata i8 %548, i64 0, metadata !1494, metadata !598), !dbg !1557
  call void @llvm.dbg.value(metadata i8 %547, i64 0, metadata !1493, metadata !598), !dbg !1556
  call void @llvm.dbg.value(metadata i64 %546, i64 0, metadata !1479, metadata !598), !dbg !1542
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !1487, metadata !598), !dbg !1549
  call void @llvm.dbg.value(metadata i64 %544, i64 0, metadata !1486, metadata !598), !dbg !1548
  call void @llvm.dbg.value(metadata i64 %543, i64 0, metadata !1485, metadata !598), !dbg !1623
  br label %569, !dbg !2159

; <label>:541:                                    ; preds = %441
  br label %542, !dbg !1540

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
  call void @llvm.dbg.value(metadata i64 %552, i64 0, metadata !1477, metadata !598), !dbg !1540
  call void @llvm.dbg.value(metadata i8 %551, i64 0, metadata !1503, metadata !598), !dbg !1637
  call void @llvm.dbg.value(metadata i8 %550, i64 0, metadata !1502, metadata !598), !dbg !1636
  call void @llvm.dbg.value(metadata i8 %549, i64 0, metadata !1496, metadata !598), !dbg !1654
  call void @llvm.dbg.value(metadata i8 %548, i64 0, metadata !1494, metadata !598), !dbg !1557
  call void @llvm.dbg.value(metadata i8 %547, i64 0, metadata !1493, metadata !598), !dbg !1556
  call void @llvm.dbg.value(metadata i64 %546, i64 0, metadata !1479, metadata !598), !dbg !1542
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !1487, metadata !598), !dbg !1549
  call void @llvm.dbg.value(metadata i64 %544, i64 0, metadata !1486, metadata !598), !dbg !1548
  call void @llvm.dbg.value(metadata i64 %543, i64 0, metadata !1485, metadata !598), !dbg !1623
  %553 = and i8 %547, 1, !dbg !2159
  %554 = icmp ne i8 %553, 0, !dbg !2159
  %555 = and i8 %550, 1, !dbg !2163
  %556 = icmp eq i8 %555, 0, !dbg !2163
  %557 = and i1 %554, %556, !dbg !2159
  br i1 %557, label %558, label %569, !dbg !2159

; <label>:558:                                    ; preds = %542
  %559 = icmp ult i64 %544, %552, !dbg !2165
  br i1 %559, label %560, label %562, !dbg !2170

; <label>:560:                                    ; preds = %558
  %561 = getelementptr inbounds i8, i8* %0, i64 %544, !dbg !2172
  store i8 39, i8* %561, align 1, !dbg !2172, !tbaa !898
  br label %562, !dbg !2172

; <label>:562:                                    ; preds = %560, %558
  %563 = add i64 %544, 1, !dbg !2174
  call void @llvm.dbg.value(metadata i64 %563, i64 0, metadata !1486, metadata !598), !dbg !1548
  %564 = icmp ult i64 %563, %552, !dbg !2176
  br i1 %564, label %565, label %567, !dbg !2180

; <label>:565:                                    ; preds = %562
  %566 = getelementptr inbounds i8, i8* %0, i64 %563, !dbg !2182
  store i8 39, i8* %566, align 1, !dbg !2182, !tbaa !898
  br label %567, !dbg !2182

; <label>:567:                                    ; preds = %565, %562
  %568 = add i64 %544, 2, !dbg !2184
  call void @llvm.dbg.value(metadata i64 %568, i64 0, metadata !1486, metadata !598), !dbg !1548
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1493, metadata !598), !dbg !1556
  br label %569, !dbg !2186

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
  call void @llvm.dbg.value(metadata i8 %578, i64 0, metadata !1493, metadata !598), !dbg !1556
  call void @llvm.dbg.value(metadata i64 %577, i64 0, metadata !1486, metadata !598), !dbg !1548
  %579 = icmp ult i64 %577, %570, !dbg !2188
  br i1 %579, label %580, label %582, !dbg !2192

; <label>:580:                                    ; preds = %569
  %581 = getelementptr inbounds i8, i8* %0, i64 %577, !dbg !2194
  store i8 %572, i8* %581, align 1, !dbg !2194, !tbaa !898
  br label %582, !dbg !2194

; <label>:582:                                    ; preds = %580, %569
  %583 = add i64 %577, 1, !dbg !2196
  call void @llvm.dbg.value(metadata i64 %583, i64 0, metadata !1486, metadata !598), !dbg !1548
  %584 = and i8 %571, 1, !dbg !2198
  %585 = icmp eq i8 %584, 0, !dbg !2198
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1495, metadata !598), !dbg !1558
  %586 = select i1 %585, i8 0, i8 %130, !dbg !2200
  call void @llvm.dbg.value(metadata i8 %586, i64 0, metadata !1495, metadata !598), !dbg !1558
  br label %587, !dbg !2201

; <label>:587:                                    ; preds = %582, %209
  %588 = phi i64 [ %124, %209 ], [ %576, %582 ]
  %589 = phi i64 [ %125, %209 ], [ %583, %582 ]
  %590 = phi i64 [ %126, %209 ], [ %575, %582 ]
  %591 = phi i64 [ %156, %209 ], [ %574, %582 ]
  %592 = phi i8 [ %128, %209 ], [ %578, %582 ]
  %593 = phi i8 [ %129, %209 ], [ %573, %582 ]
  %594 = phi i8 [ %130, %209 ], [ %586, %582 ]
  %595 = phi i64 [ %131, %209 ], [ %570, %582 ]
  %596 = add i64 %588, 1, !dbg !2202
  call void @llvm.dbg.value(metadata i64 %596, i64 0, metadata !1485, metadata !598), !dbg !1623
  br label %123, !dbg !2204, !llvm.loop !2205

; <label>:597:                                    ; preds = %133, %135
  %598 = phi i64 [ %124, %133 ], [ -1, %135 ]
  %599 = icmp eq i64 %125, 0, !dbg !2208
  %600 = and i1 %114, %599, !dbg !2210
  %601 = xor i1 %600, true, !dbg !2210
  %602 = or i1 %112, %601, !dbg !2210
  br i1 %602, label %603, label %648, !dbg !2210

; <label>:603:                                    ; preds = %597
  %604 = and i1 %114, %112, !dbg !2211
  %605 = xor i1 %604, true, !dbg !2211
  %606 = and i8 %129, 1, !dbg !2213
  %607 = icmp eq i8 %606, 0, !dbg !2213
  %608 = or i1 %607, %605, !dbg !2211
  br i1 %608, label %618, label %609, !dbg !2211

; <label>:609:                                    ; preds = %603
  %610 = and i8 %130, 1, !dbg !2215
  %611 = icmp eq i8 %610, 0, !dbg !2215
  br i1 %611, label %614, label %612, !dbg !2218

; <label>:612:                                    ; preds = %609
  %613 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %126, i8* %2, i64 %598, i32 5, i32 %5, i32* %6, i8* %97, i8* %98), !dbg !2219
  br label %659, !dbg !2220

; <label>:614:                                    ; preds = %609
  %615 = icmp eq i64 %131, 0, !dbg !2221
  %616 = icmp ne i64 %126, 0, !dbg !2223
  %617 = and i1 %616, %615, !dbg !2225
  br i1 %617, label %27, label %618, !dbg !2225

; <label>:618:                                    ; preds = %603, %614
  %619 = icmp ne i8* %100, null, !dbg !2226
  %620 = and i1 %619, %112, !dbg !2228
  br i1 %620, label %621, label %638, !dbg !2228

; <label>:621:                                    ; preds = %618
  call void @llvm.dbg.value(metadata i8* %100, i64 0, metadata !1488, metadata !598), !dbg !1550
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !1486, metadata !598), !dbg !1548
  %622 = load i8, i8* %100, align 1, !dbg !2229, !tbaa !898
  %623 = icmp eq i8 %622, 0, !dbg !2233
  br i1 %623, label %638, label %624, !dbg !2233

; <label>:624:                                    ; preds = %621
  br label %625, !dbg !2235

; <label>:625:                                    ; preds = %624, %632
  %626 = phi i8 [ %635, %632 ], [ %622, %624 ]
  %627 = phi i8* [ %634, %632 ], [ %100, %624 ]
  %628 = phi i64 [ %633, %632 ], [ %125, %624 ]
  %629 = icmp ult i64 %628, %131, !dbg !2235
  br i1 %629, label %630, label %632, !dbg !2239

; <label>:630:                                    ; preds = %625
  %631 = getelementptr inbounds i8, i8* %0, i64 %628, !dbg !2241
  store i8 %626, i8* %631, align 1, !dbg !2241, !tbaa !898
  br label %632, !dbg !2241

; <label>:632:                                    ; preds = %630, %625
  %633 = add i64 %628, 1, !dbg !2243
  call void @llvm.dbg.value(metadata i64 %633, i64 0, metadata !1486, metadata !598), !dbg !1548
  %634 = getelementptr inbounds i8, i8* %627, i64 1, !dbg !2245
  call void @llvm.dbg.value(metadata i8* %634, i64 0, metadata !1488, metadata !598), !dbg !1550
  call void @llvm.dbg.value(metadata i8* %634, i64 0, metadata !1488, metadata !598), !dbg !1550
  call void @llvm.dbg.value(metadata i64 %633, i64 0, metadata !1486, metadata !598), !dbg !1548
  %635 = load i8, i8* %634, align 1, !dbg !2229, !tbaa !898
  %636 = icmp eq i8 %635, 0, !dbg !2233
  br i1 %636, label %637, label %625, !dbg !2233, !llvm.loop !2247

; <label>:637:                                    ; preds = %632
  br label %638, !dbg !1548

; <label>:638:                                    ; preds = %637, %621, %618
  %639 = phi i64 [ %125, %618 ], [ %125, %621 ], [ %633, %637 ]
  call void @llvm.dbg.value(metadata i64 %639, i64 0, metadata !1486, metadata !598), !dbg !1548
  %640 = icmp ult i64 %639, %131, !dbg !2250
  br i1 %640, label %641, label %659, !dbg !2252

; <label>:641:                                    ; preds = %638
  %642 = getelementptr inbounds i8, i8* %0, i64 %639, !dbg !2253
  store i8 0, i8* %642, align 1, !dbg !2254, !tbaa !898
  br label %659, !dbg !2253

; <label>:643:                                    ; preds = %386
  br label %649, !dbg !1540

; <label>:644:                                    ; preds = %148, %161, %211, %225, %253, %255, %273, %276, %503
  %645 = phi i32 [ %96, %148 ], [ %96, %161 ], [ 2, %211 ], [ 5, %225 ], [ 2, %253 ], [ 2, %255 ], [ 2, %273 ], [ 2, %276 ], [ %96, %503 ]
  %646 = phi i64 [ %146, %148 ], [ %156, %161 ], [ %156, %211 ], [ %156, %225 ], [ %156, %253 ], [ %156, %255 ], [ %156, %273 ], [ %156, %276 ], [ %507, %503 ]
  %647 = phi i64 [ %131, %148 ], [ %131, %161 ], [ %131, %211 ], [ %131, %225 ], [ %131, %253 ], [ %131, %255 ], [ %131, %273 ], [ %131, %276 ], [ %512, %503 ]
  br label %649, !dbg !1540

; <label>:648:                                    ; preds = %597
  br label %649, !dbg !1540

; <label>:649:                                    ; preds = %648, %644, %643, %367
  %650 = phi i32 [ 2, %367 ], [ %96, %643 ], [ %645, %644 ], [ %96, %648 ]
  %651 = phi i64 [ %313, %367 ], [ %369, %643 ], [ %646, %644 ], [ %598, %648 ]
  %652 = phi i64 [ %131, %367 ], [ %131, %643 ], [ %647, %644 ], [ %131, %648 ]
  call void @llvm.dbg.value(metadata i64 %652, i64 0, metadata !1477, metadata !598), !dbg !1540
  call void @llvm.dbg.value(metadata i64 %651, i64 0, metadata !1479, metadata !598), !dbg !1542
  %653 = icmp ne i32 %650, 2, !dbg !2255
  %654 = icmp eq i8 %104, 0, !dbg !2257
  %655 = or i1 %653, %654, !dbg !2259
  call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !1480, metadata !598), !dbg !1543
  %656 = select i1 %655, i32 %650, i32 4, !dbg !2259
  call void @llvm.dbg.value(metadata i32 %656, i64 0, metadata !1480, metadata !598), !dbg !1543
  %657 = and i32 %5, -3, !dbg !2260
  %658 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %652, i8* %2, i64 %651, i32 %656, i32 %657, i32* null, i8* %97, i8* %98), !dbg !2261
  br label %659, !dbg !2262

; <label>:659:                                    ; preds = %638, %641, %649, %612
  %660 = phi i64 [ %658, %649 ], [ %613, %612 ], [ %639, %641 ], [ %639, %638 ]
  ret i64 %660, !dbg !2263
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8*, i32) unnamed_addr #6 !dbg !2264 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2268, metadata !598), !dbg !2272
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2269, metadata !598), !dbg !2273
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #10, !dbg !2274
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2270, metadata !598), !dbg !2275
  %4 = icmp eq i8* %3, %0, !dbg !2276
  br i1 %4, label %5, label %75, !dbg !2278

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @locale_charset() #10, !dbg !2279
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !2271, metadata !598), !dbg !2280
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2281, metadata !598), !dbg !2297
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2295, metadata !598), !dbg !2300
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2296, metadata !598), !dbg !2301
  %7 = load i8, i8* %6, align 1, !tbaa !898
  %8 = sext i8 %7 to i32
  %9 = and i32 %8, -33, !dbg !2302
  switch i32 %9, label %72 [
    i32 85, label %10
    i32 71, label %38
  ], !dbg !2302

; <label>:10:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2305, metadata !598), !dbg !2319
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2317, metadata !598), !dbg !2323
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2318, metadata !598), !dbg !2324
  %11 = getelementptr inbounds i8, i8* %6, i64 1
  %12 = load i8, i8* %11, align 1, !tbaa !898
  %13 = sext i8 %12 to i32
  %14 = and i32 %13, -33, !dbg !2325
  %15 = icmp eq i32 %14, 84, !dbg !2325
  br i1 %15, label %16, label %72, !dbg !2325

; <label>:16:                                     ; preds = %10
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2328, metadata !598), !dbg !2341
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2339, metadata !598), !dbg !2345
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2340, metadata !598), !dbg !2346
  %17 = getelementptr inbounds i8, i8* %6, i64 2
  %18 = load i8, i8* %17, align 1, !tbaa !898
  %19 = sext i8 %18 to i32
  %20 = and i32 %19, -33, !dbg !2347
  %21 = icmp eq i32 %20, 70, !dbg !2347
  br i1 %21, label %22, label %72, !dbg !2347

; <label>:22:                                     ; preds = %16
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2350, metadata !598), !dbg !2362
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2360, metadata !598), !dbg !2366
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2361, metadata !598), !dbg !2367
  %23 = getelementptr inbounds i8, i8* %6, i64 3
  %24 = load i8, i8* %23, align 1, !tbaa !898
  %25 = icmp eq i8 %24, 45, !dbg !2368
  br i1 %25, label %26, label %72, !dbg !2371

; <label>:26:                                     ; preds = %22
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2373, metadata !598), !dbg !2384
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2382, metadata !598), !dbg !2388
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2383, metadata !598), !dbg !2389
  %27 = getelementptr inbounds i8, i8* %6, i64 4
  %28 = load i8, i8* %27, align 1, !tbaa !898
  %29 = icmp eq i8 %28, 56, !dbg !2390
  br i1 %29, label %30, label %72, !dbg !2393

; <label>:30:                                     ; preds = %26
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2395, metadata !598), !dbg !2405
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2403, metadata !598), !dbg !2409
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2404, metadata !598), !dbg !2410
  %31 = getelementptr inbounds i8, i8* %6, i64 5
  %32 = load i8, i8* %31, align 1, !tbaa !898
  %33 = icmp eq i8 %32, 0, !dbg !2411
  br i1 %33, label %34, label %72, !dbg !2414

; <label>:34:                                     ; preds = %30
  %35 = load i8, i8* %0, align 1, !dbg !2416, !tbaa !898
  %36 = icmp eq i8 %35, 96, !dbg !2417
  %37 = select i1 %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.57, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.58, i64 0, i64 0), !dbg !2416
  br label %75, !dbg !2418

; <label>:38:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2305, metadata !598), !dbg !2419
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2317, metadata !598), !dbg !2423
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2318, metadata !598), !dbg !2424
  %39 = getelementptr inbounds i8, i8* %6, i64 1
  %40 = load i8, i8* %39, align 1, !tbaa !898
  %41 = sext i8 %40 to i32
  %42 = and i32 %41, -33, !dbg !2425
  %43 = icmp eq i32 %42, 66, !dbg !2425
  br i1 %43, label %44, label %72, !dbg !2425

; <label>:44:                                     ; preds = %38
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2328, metadata !598), !dbg !2426
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2339, metadata !598), !dbg !2428
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2340, metadata !598), !dbg !2429
  %45 = getelementptr inbounds i8, i8* %6, i64 2
  %46 = load i8, i8* %45, align 1, !tbaa !898
  %47 = icmp eq i8 %46, 49, !dbg !2430
  br i1 %47, label %48, label %72, !dbg !2432

; <label>:48:                                     ; preds = %44
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2350, metadata !598), !dbg !2434
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2360, metadata !598), !dbg !2436
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2361, metadata !598), !dbg !2437
  %49 = getelementptr inbounds i8, i8* %6, i64 3
  %50 = load i8, i8* %49, align 1, !tbaa !898
  %51 = icmp eq i8 %50, 56, !dbg !2438
  br i1 %51, label %52, label %72, !dbg !2439

; <label>:52:                                     ; preds = %48
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2373, metadata !598), !dbg !2440
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2382, metadata !598), !dbg !2442
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2383, metadata !598), !dbg !2443
  %53 = getelementptr inbounds i8, i8* %6, i64 4
  %54 = load i8, i8* %53, align 1, !tbaa !898
  %55 = icmp eq i8 %54, 48, !dbg !2444
  br i1 %55, label %56, label %72, !dbg !2445

; <label>:56:                                     ; preds = %52
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2395, metadata !598), !dbg !2446
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2403, metadata !598), !dbg !2448
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2404, metadata !598), !dbg !2449
  %57 = getelementptr inbounds i8, i8* %6, i64 5
  %58 = load i8, i8* %57, align 1, !tbaa !898
  %59 = icmp eq i8 %58, 51, !dbg !2450
  br i1 %59, label %60, label %72, !dbg !2451

; <label>:60:                                     ; preds = %56
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2452, metadata !598), !dbg !2461
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2459, metadata !598), !dbg !2465
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2460, metadata !598), !dbg !2466
  %61 = getelementptr inbounds i8, i8* %6, i64 6
  %62 = load i8, i8* %61, align 1, !tbaa !898
  %63 = icmp eq i8 %62, 48, !dbg !2467
  br i1 %63, label %64, label %72, !dbg !2470

; <label>:64:                                     ; preds = %60
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2472, metadata !598), !dbg !2480
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2478, metadata !598), !dbg !2484
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2479, metadata !598), !dbg !2485
  %65 = getelementptr inbounds i8, i8* %6, i64 7
  %66 = load i8, i8* %65, align 1, !tbaa !898
  %67 = icmp eq i8 %66, 0, !dbg !2486
  br i1 %67, label %68, label %72, !dbg !2489

; <label>:68:                                     ; preds = %64
  %69 = load i8, i8* %0, align 1, !dbg !2490, !tbaa !898
  %70 = icmp eq i8 %69, 96, !dbg !2491
  %71 = select i1 %70, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.59, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.60, i64 0, i64 0), !dbg !2490
  br label %75, !dbg !2492

; <label>:72:                                     ; preds = %5, %30, %26, %22, %16, %10, %64, %60, %56, %52, %48, %44, %38
  %73 = icmp eq i32 %1, 9, !dbg !2493
  %74 = select i1 %73, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.56, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.55, i64 0, i64 0), !dbg !2494
  br label %75, !dbg !2495

; <label>:75:                                     ; preds = %2, %72, %68, %34
  %76 = phi i8* [ %37, %34 ], [ %71, %68 ], [ %74, %72 ], [ %3, %2 ]
  ret i8* %76, !dbg !2496
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #4

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() local_unnamed_addr #7

; Function Attrs: nounwind
declare i32 @iswprint(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @mbsinit(%struct.__mbstate_t*) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_alloc(i8*, i64, %struct.quoting_options*) local_unnamed_addr #6 !dbg !2497 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2501, metadata !598), !dbg !2504
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2502, metadata !598), !dbg !2505
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2503, metadata !598), !dbg !2506
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2507, metadata !598) #10, !dbg !2520
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2512, metadata !598) #10, !dbg !2522
  tail call void @llvm.dbg.value(metadata i64* null, i64 0, metadata !2513, metadata !598) #10, !dbg !2523
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2514, metadata !598) #10, !dbg !2524
  %4 = icmp ne %struct.quoting_options* %2, null, !dbg !2525
  %5 = select i1 %4, %struct.quoting_options* %2, %struct.quoting_options* @default_quoting_options, !dbg !2525
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2515, metadata !598) #10, !dbg !2526
  %6 = tail call i32* @__errno_location() #1, !dbg !2527
  %7 = load i32, i32* %6, align 4, !dbg !2527, !tbaa !724
  tail call void @llvm.dbg.value(metadata i32 %7, i64 0, metadata !2516, metadata !598) #10, !dbg !2528
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2529
  %9 = load i32, i32* %8, align 4, !dbg !2529, !tbaa !1408
  %10 = or i32 %9, 1, !dbg !2530
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !2517, metadata !598) #10, !dbg !2531
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2532
  %12 = load i32, i32* %11, align 8, !dbg !2532, !tbaa !1346
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !2533
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2534
  %15 = load i8*, i8** %14, align 8, !dbg !2534, !tbaa !1435
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2535
  %17 = load i8*, i8** %16, align 8, !dbg !2535, !tbaa !1438
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* %13, i8* %15, i8* %17) #10, !dbg !2536
  %19 = add i64 %18, 1, !dbg !2537
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !2518, metadata !598) #10, !dbg !2538
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !2539, metadata !598) #10, !dbg !2544
  %20 = tail call noalias i8* @xmalloc(i64 %19) #10, !dbg !2546
  tail call void @llvm.dbg.value(metadata i8* %20, i64 0, metadata !2519, metadata !598) #10, !dbg !2547
  %21 = load i32, i32* %11, align 8, !dbg !2548, !tbaa !1346
  %22 = load i8*, i8** %14, align 8, !dbg !2549, !tbaa !1435
  %23 = load i8*, i8** %16, align 8, !dbg !2550, !tbaa !1438
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* %13, i8* %22, i8* %23) #10, !dbg !2551
  store i32 %7, i32* %6, align 4, !dbg !2552, !tbaa !724
  ret i8* %20, !dbg !2553
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_alloc_mem(i8*, i64, i64*, %struct.quoting_options*) local_unnamed_addr #6 !dbg !2508 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2507, metadata !598), !dbg !2554
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2512, metadata !598), !dbg !2555
  tail call void @llvm.dbg.value(metadata i64* %2, i64 0, metadata !2513, metadata !598), !dbg !2556
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2514, metadata !598), !dbg !2557
  %5 = icmp ne %struct.quoting_options* %3, null, !dbg !2558
  %6 = select i1 %5, %struct.quoting_options* %3, %struct.quoting_options* @default_quoting_options, !dbg !2558
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2515, metadata !598), !dbg !2559
  %7 = tail call i32* @__errno_location() #1, !dbg !2560
  %8 = load i32, i32* %7, align 4, !dbg !2560, !tbaa !724
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !2516, metadata !598), !dbg !2561
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2562
  %10 = load i32, i32* %9, align 4, !dbg !2562, !tbaa !1408
  %11 = icmp ne i64* %2, null, !dbg !2563
  %12 = xor i1 %11, true, !dbg !2563
  %13 = zext i1 %12 to i32, !dbg !2563
  %14 = or i32 %10, %13, !dbg !2564
  tail call void @llvm.dbg.value(metadata i32 %14, i64 0, metadata !2517, metadata !598), !dbg !2565
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2566
  %16 = load i32, i32* %15, align 8, !dbg !2566, !tbaa !1346
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !2567
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2568
  %19 = load i8*, i8** %18, align 8, !dbg !2568, !tbaa !1435
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2569
  %21 = load i8*, i8** %20, align 8, !dbg !2569, !tbaa !1438
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* %17, i8* %19, i8* %21), !dbg !2570
  %23 = add i64 %22, 1, !dbg !2571
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !2518, metadata !598), !dbg !2572
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !2539, metadata !598) #10, !dbg !2573
  %24 = tail call noalias i8* @xmalloc(i64 %23) #10, !dbg !2575
  tail call void @llvm.dbg.value(metadata i8* %24, i64 0, metadata !2519, metadata !598), !dbg !2576
  %25 = load i32, i32* %15, align 8, !dbg !2577, !tbaa !1346
  %26 = load i8*, i8** %18, align 8, !dbg !2578, !tbaa !1435
  %27 = load i8*, i8** %20, align 8, !dbg !2579, !tbaa !1438
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* %17, i8* %26, i8* %27), !dbg !2580
  store i32 %8, i32* %7, align 4, !dbg !2581, !tbaa !724
  br i1 %11, label %29, label %30, !dbg !2582

; <label>:29:                                     ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !2583, !tbaa !2585
  br label %30, !dbg !2586

; <label>:30:                                     ; preds = %29, %4
  ret i8* %24, !dbg !2587
}

; Function Attrs: nounwind sspstrong uwtable
define void @quotearg_free() local_unnamed_addr #6 !dbg !2588 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2592, !tbaa !606
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %1, i64 0, metadata !2590, metadata !598), !dbg !2593
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2591, metadata !598), !dbg !2594
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2591, metadata !598), !dbg !2594
  %2 = load i32, i32* @nslots, align 4, !dbg !2595, !tbaa !724
  %3 = icmp sgt i32 %2, 1, !dbg !2599
  br i1 %3, label %4, label %14, !dbg !2600

; <label>:4:                                      ; preds = %0
  br label %5, !dbg !2602

; <label>:5:                                      ; preds = %4, %5
  %6 = phi i64 [ %9, %5 ], [ 1, %4 ]
  %7 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %6, i32 1, !dbg !2602
  %8 = load i8*, i8** %7, align 8, !dbg !2602, !tbaa !2603
  tail call void @free(i8* %8) #10, !dbg !2605
  %9 = add nuw i64 %6, 1, !dbg !2606
  %10 = load i32, i32* @nslots, align 4, !dbg !2595, !tbaa !724
  %11 = sext i32 %10 to i64, !dbg !2599
  %12 = icmp slt i64 %9, %11, !dbg !2599
  br i1 %12, label %5, label %13, !dbg !2600, !llvm.loop !2608

; <label>:13:                                     ; preds = %5
  br label %14, !dbg !2611

; <label>:14:                                     ; preds = %13, %0
  %15 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !2611
  %16 = load i8*, i8** %15, align 8, !dbg !2611, !tbaa !2603
  %17 = icmp eq i8* %16, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2613
  br i1 %17, label %19, label %18, !dbg !2614

; <label>:18:                                     ; preds = %14
  tail call void @free(i8* %16) #10, !dbg !2615
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !2617, !tbaa !2618
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !2619, !tbaa !2603
  br label %19, !dbg !2620

; <label>:19:                                     ; preds = %14, %18
  %20 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !2621
  br i1 %20, label %23, label %21, !dbg !2623

; <label>:21:                                     ; preds = %19
  %22 = bitcast %struct.slotvec* %1 to i8*, !dbg !2624
  tail call void @free(i8* %22) #10, !dbg !2626
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !2627, !tbaa !606
  br label %23, !dbg !2628

; <label>:23:                                     ; preds = %19, %21
  store i32 1, i32* @nslots, align 4, !dbg !2629, !tbaa !724
  ret void, !dbg !2630
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n(i32, i8*) local_unnamed_addr #6 !dbg !2631 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2635, metadata !598), !dbg !2637
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2636, metadata !598), !dbg !2638
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2639
  ret i8* %3, !dbg !2640
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32, i8*, i64, %struct.quoting_options*) unnamed_addr #6 !dbg !2641 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2645, metadata !598), !dbg !2659
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2646, metadata !598), !dbg !2660
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2647, metadata !598), !dbg !2661
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2648, metadata !598), !dbg !2662
  %5 = tail call i32* @__errno_location() #1, !dbg !2663
  %6 = load i32, i32* %5, align 4, !dbg !2663, !tbaa !724
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !2649, metadata !598), !dbg !2664
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2665, !tbaa !606
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %7, i64 0, metadata !2650, metadata !598), !dbg !2666
  %8 = icmp slt i32 %0, 0, !dbg !2667
  br i1 %8, label %9, label %10, !dbg !2669

; <label>:9:                                      ; preds = %4
  tail call void @abort() #14, !dbg !2670
  unreachable, !dbg !2670

; <label>:10:                                     ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !2671, !tbaa !724
  %12 = icmp sgt i32 %11, %0, !dbg !2672
  br i1 %12, label %34, label %13, !dbg !2673

; <label>:13:                                     ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !2674
  %15 = icmp ugt i32 %0, 2147483646, !dbg !2675
  br i1 %15, label %16, label %17, !dbg !2677

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #14, !dbg !2678
  unreachable, !dbg !2678

; <label>:17:                                     ; preds = %13
  %18 = bitcast %struct.slotvec* %7 to i8*, !dbg !2679
  %19 = select i1 %14, i8* null, i8* %18, !dbg !2679
  %20 = add nsw i32 %0, 1, !dbg !2681
  %21 = sext i32 %20 to i64, !dbg !2682
  %22 = shl nsw i64 %21, 4, !dbg !2683
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #10, !dbg !2684
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !2684
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %24, i64 0, metadata !2650, metadata !598), !dbg !2666
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !2685, !tbaa !606
  br i1 %14, label %25, label %26, !dbg !2686

; <label>:25:                                     ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i32 8, i1 false), !dbg !2687, !tbaa.struct !2689
  br label %26, !dbg !2690

; <label>:26:                                     ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !2691, !tbaa !724
  %28 = sext i32 %27 to i64, !dbg !2692
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !2692
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !2693
  %31 = sub nsw i32 %20, %27, !dbg !2694
  %32 = sext i32 %31 to i64, !dbg !2695
  %33 = shl nsw i64 %32, 4, !dbg !2696
  tail call void @llvm.memset.p0i8.i64(i8* %30, i8 0, i64 %33, i32 8, i1 false), !dbg !2693
  store i32 %20, i32* @nslots, align 4, !dbg !2697, !tbaa !724
  br label %34, !dbg !2698

; <label>:34:                                     ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ]
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %35, i64 0, metadata !2650, metadata !598), !dbg !2666
  %36 = sext i32 %0 to i64, !dbg !2699
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !2700
  %38 = load i64, i64* %37, align 8, !dbg !2700, !tbaa !2618
  tail call void @llvm.dbg.value(metadata i64 %38, i64 0, metadata !2654, metadata !598), !dbg !2701
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !2702
  %40 = load i8*, i8** %39, align 8, !dbg !2702, !tbaa !2603
  tail call void @llvm.dbg.value(metadata i8* %40, i64 0, metadata !2656, metadata !598), !dbg !2703
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !2704
  %42 = load i32, i32* %41, align 4, !dbg !2704, !tbaa !1408
  %43 = or i32 %42, 1, !dbg !2705
  tail call void @llvm.dbg.value(metadata i32 %43, i64 0, metadata !2657, metadata !598), !dbg !2706
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2707
  %45 = load i32, i32* %44, align 8, !dbg !2707, !tbaa !1346
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !2708
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !2709
  %48 = load i8*, i8** %47, align 8, !dbg !2709, !tbaa !1435
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !2710
  %50 = load i8*, i8** %49, align 8, !dbg !2710, !tbaa !1438
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* %46, i8* %48, i8* %50), !dbg !2711
  tail call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !2658, metadata !598), !dbg !2712
  %52 = icmp ugt i64 %38, %51, !dbg !2713
  br i1 %52, label %63, label %53, !dbg !2715

; <label>:53:                                     ; preds = %34
  %54 = add i64 %51, 1, !dbg !2716
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !2654, metadata !598), !dbg !2701
  store i64 %54, i64* %37, align 8, !dbg !2718, !tbaa !2618
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2719
  br i1 %55, label %57, label %56, !dbg !2721

; <label>:56:                                     ; preds = %53
  tail call void @free(i8* %40) #10, !dbg !2722
  br label %57, !dbg !2722

; <label>:57:                                     ; preds = %53, %56
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !2539, metadata !598) #10, !dbg !2723
  %58 = tail call noalias i8* @xmalloc(i64 %54) #10, !dbg !2725
  tail call void @llvm.dbg.value(metadata i8* %58, i64 0, metadata !2656, metadata !598), !dbg !2703
  store i8* %58, i8** %39, align 8, !dbg !2726, !tbaa !2603
  %59 = load i32, i32* %44, align 8, !dbg !2727, !tbaa !1346
  %60 = load i8*, i8** %47, align 8, !dbg !2728, !tbaa !1435
  %61 = load i8*, i8** %49, align 8, !dbg !2729, !tbaa !1438
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* %46, i8* %60, i8* %61), !dbg !2730
  br label %63, !dbg !2731

; <label>:63:                                     ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ]
  tail call void @llvm.dbg.value(metadata i8* %64, i64 0, metadata !2656, metadata !598), !dbg !2703
  store i32 %6, i32* %5, align 4, !dbg !2732, !tbaa !724
  ret i8* %64, !dbg !2733
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #9

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #9

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !2734 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2738, metadata !598), !dbg !2741
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2739, metadata !598), !dbg !2742
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2740, metadata !598), !dbg !2743
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2744
  ret i8* %4, !dbg !2745
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg(i8*) local_unnamed_addr #6 !dbg !2746 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2750, metadata !598), !dbg !2751
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2635, metadata !598) #10, !dbg !2752
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2636, metadata !598) #10, !dbg !2754
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #10, !dbg !2755
  ret i8* %2, !dbg !2756
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_mem(i8*, i64) local_unnamed_addr #6 !dbg !2757 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2761, metadata !598), !dbg !2763
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2762, metadata !598), !dbg !2764
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2738, metadata !598) #10, !dbg !2765
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2739, metadata !598) #10, !dbg !2767
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2740, metadata !598) #10, !dbg !2768
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #10, !dbg !2769
  ret i8* %3, !dbg !2770
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style(i32, i32, i8*) local_unnamed_addr #6 !dbg !2771 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !2779, metadata !2785), !dbg !2786
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2775, metadata !598), !dbg !2788
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2776, metadata !598), !dbg !2789
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2777, metadata !598), !dbg !2790
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2791
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #10, !dbg !2791
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2778, metadata !1139), !dbg !2792
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2784, metadata !598) #10, !dbg !2793
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !2794
  call void @llvm.lifetime.start(i64 52, i8* nonnull %7), !dbg !2794
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2779, metadata !598) #10, !dbg !2786
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2779, metadata !2795) #10, !dbg !2786
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !2786
  %8 = icmp eq i32 %1, 10, !dbg !2796
  br i1 %8, label %9, label %10, !dbg !2798

; <label>:9:                                      ; preds = %3
  tail call void @abort() #14, !dbg !2799, !noalias !2800
  unreachable, !dbg !2799

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2779, metadata !2795) #10, !dbg !2786
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2803
  store i32 %1, i32* %11, align 8, !dbg !2803, !alias.scope !2800
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2803
  %13 = bitcast i32* %12 to i8*, !dbg !2803
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #10, !dbg !2803
  call void @llvm.lifetime.end(i64 52, i8* nonnull %7), !dbg !2804
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2778, metadata !1139), !dbg !2792
  %14 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !2805
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #10, !dbg !2806
  ret i8* %14, !dbg !2807
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_mem(i32, i32, i8*, i64) local_unnamed_addr #6 !dbg !2808 {
  %5 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !2779, metadata !2785), !dbg !2817
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2812, metadata !598), !dbg !2819
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2813, metadata !598), !dbg !2820
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2814, metadata !598), !dbg !2821
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2815, metadata !598), !dbg !2822
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2823
  call void @llvm.lifetime.start(i64 56, i8* nonnull %7) #10, !dbg !2823
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2816, metadata !1139), !dbg !2824
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2784, metadata !598) #10, !dbg !2825
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !2826
  call void @llvm.lifetime.start(i64 52, i8* nonnull %8), !dbg !2826
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2779, metadata !598) #10, !dbg !2817
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2779, metadata !2795) #10, !dbg !2817
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !2817
  %9 = icmp eq i32 %1, 10, !dbg !2827
  br i1 %9, label %10, label %11, !dbg !2828

; <label>:10:                                     ; preds = %4
  tail call void @abort() #14, !dbg !2829, !noalias !2830
  unreachable, !dbg !2829

; <label>:11:                                     ; preds = %4
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2779, metadata !2795) #10, !dbg !2817
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2833
  store i32 %1, i32* %12, align 8, !dbg !2833, !alias.scope !2830
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2833
  %14 = bitcast i32* %13 to i8*, !dbg !2833
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* nonnull %8, i64 52, i32 4, i1 false) #10, !dbg !2833
  call void @llvm.lifetime.end(i64 52, i8* nonnull %8), !dbg !2834
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2816, metadata !1139), !dbg !2824
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %6), !dbg !2835
  call void @llvm.lifetime.end(i64 56, i8* nonnull %7) #10, !dbg !2836
  ret i8* %15, !dbg !2837
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style(i32, i8*) local_unnamed_addr #6 !dbg !2838 {
  %3 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %3, metadata !2779, metadata !2785), !dbg !2844
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2842, metadata !598), !dbg !2847
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2843, metadata !598), !dbg !2848
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2775, metadata !598) #10, !dbg !2849
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2776, metadata !598) #10, !dbg !2850
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2777, metadata !598) #10, !dbg !2851
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2852
  call void @llvm.lifetime.start(i64 56, i8* nonnull %5) #10, !dbg !2852
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2778, metadata !1139) #10, !dbg !2853
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2784, metadata !598) #10, !dbg !2854
  %6 = getelementptr inbounds [52 x i8], [52 x i8]* %3, i64 0, i64 0, !dbg !2855
  call void @llvm.lifetime.start(i64 52, i8* nonnull %6), !dbg !2855
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2779, metadata !598) #10, !dbg !2844
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2779, metadata !2795) #10, !dbg !2844
  call void @llvm.memset.p0i8.i64(i8* nonnull %6, i8 0, i64 52, i32 4, i1 false), !dbg !2844
  %7 = icmp eq i32 %0, 10, !dbg !2856
  br i1 %7, label %8, label %9, !dbg !2857

; <label>:8:                                      ; preds = %2
  tail call void @abort() #14, !dbg !2858, !noalias !2859
  unreachable, !dbg !2858

; <label>:9:                                      ; preds = %2
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2779, metadata !2795) #10, !dbg !2844
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2862
  store i32 %0, i32* %10, align 8, !dbg !2862, !alias.scope !2859
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2862
  %12 = bitcast i32* %11 to i8*, !dbg !2862
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* nonnull %6, i64 52, i32 4, i1 false) #10, !dbg !2862
  call void @llvm.lifetime.end(i64 52, i8* nonnull %6), !dbg !2863
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2778, metadata !1139) #10, !dbg !2853
  %13 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %4) #10, !dbg !2864
  call void @llvm.lifetime.end(i64 56, i8* nonnull %5) #10, !dbg !2865
  ret i8* %13, !dbg !2866
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !2867 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !2779, metadata !2785), !dbg !2874
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2871, metadata !598), !dbg !2877
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2872, metadata !598), !dbg !2878
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2873, metadata !598), !dbg !2879
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2812, metadata !598) #10, !dbg !2880
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2813, metadata !598) #10, !dbg !2881
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2814, metadata !598) #10, !dbg !2882
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2815, metadata !598) #10, !dbg !2883
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2884
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #10, !dbg !2884
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2816, metadata !1139) #10, !dbg !2885
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2784, metadata !598) #10, !dbg !2886
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !2887
  call void @llvm.lifetime.start(i64 52, i8* nonnull %7), !dbg !2887
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2779, metadata !598) #10, !dbg !2874
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2779, metadata !2795) #10, !dbg !2874
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !2874
  %8 = icmp eq i32 %0, 10, !dbg !2888
  br i1 %8, label %9, label %10, !dbg !2889

; <label>:9:                                      ; preds = %3
  tail call void @abort() #14, !dbg !2890, !noalias !2891
  unreachable, !dbg !2890

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2779, metadata !2795) #10, !dbg !2874
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2894
  store i32 %0, i32* %11, align 8, !dbg !2894, !alias.scope !2891
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2894
  %13 = bitcast i32* %12 to i8*, !dbg !2894
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #10, !dbg !2894
  call void @llvm.lifetime.end(i64 52, i8* nonnull %7), !dbg !2895
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2816, metadata !1139) #10, !dbg !2885
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %5) #10, !dbg !2896
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #10, !dbg !2897
  ret i8* %14, !dbg !2898
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char_mem(i8*, i64, i8 signext) local_unnamed_addr #6 !dbg !2899 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2903, metadata !598), !dbg !2907
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2904, metadata !598), !dbg !2908
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !2905, metadata !598), !dbg !2909
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2910
  call void @llvm.lifetime.start(i64 56, i8* nonnull %5) #10, !dbg !2910
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !2911, !tbaa.struct !2912
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2906, metadata !1139), !dbg !2913
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1366, metadata !598), !dbg !2914
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !1367, metadata !598), !dbg !2916
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1368, metadata !598), !dbg !2917
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !1369, metadata !598), !dbg !2918
  %6 = lshr i8 %2, 5, !dbg !2919
  %7 = zext i8 %6 to i64, !dbg !2919
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !2920
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !1370, metadata !598), !dbg !2921
  %9 = and i8 %2, 31, !dbg !2922
  %10 = zext i8 %9 to i32, !dbg !2923
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !1372, metadata !598), !dbg !2924
  %11 = load i32, i32* %8, align 4, !dbg !2925, !tbaa !724
  %12 = lshr i32 %11, %10, !dbg !2926
  %13 = and i32 %12, 1, !dbg !2927
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !1373, metadata !598), !dbg !2928
  %14 = xor i32 %13, 1, !dbg !2929
  %15 = shl i32 %14, %10, !dbg !2930
  %16 = xor i32 %15, %11, !dbg !2931
  store i32 %16, i32* %8, align 4, !dbg !2931, !tbaa !724
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2906, metadata !1139), !dbg !2913
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !2932
  call void @llvm.lifetime.end(i64 56, i8* nonnull %5) #10, !dbg !2933
  ret i8* %17, !dbg !2934
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char(i8*, i8 signext) local_unnamed_addr #6 !dbg !2935 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2939, metadata !598), !dbg !2941
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !2940, metadata !598), !dbg !2942
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2903, metadata !598) #10, !dbg !2943
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2904, metadata !598) #10, !dbg !2945
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !2905, metadata !598) #10, !dbg !2946
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2947
  call void @llvm.lifetime.start(i64 56, i8* nonnull %4) #10, !dbg !2947
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !2948, !tbaa.struct !2912
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2906, metadata !1139) #10, !dbg !2949
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !1366, metadata !598) #10, !dbg !2950
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1367, metadata !598) #10, !dbg !2952
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1368, metadata !598) #10, !dbg !2953
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1369, metadata !598) #10, !dbg !2954
  %5 = lshr i8 %1, 5, !dbg !2955
  %6 = zext i8 %5 to i64, !dbg !2955
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !2956
  tail call void @llvm.dbg.value(metadata i32* %7, i64 0, metadata !1370, metadata !598) #10, !dbg !2957
  %8 = and i8 %1, 31, !dbg !2958
  %9 = zext i8 %8 to i32, !dbg !2959
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !1372, metadata !598) #10, !dbg !2960
  %10 = load i32, i32* %7, align 4, !dbg !2961, !tbaa !724
  %11 = lshr i32 %10, %9, !dbg !2962
  %12 = and i32 %11, 1, !dbg !2963
  tail call void @llvm.dbg.value(metadata i32 %12, i64 0, metadata !1373, metadata !598) #10, !dbg !2964
  %13 = xor i32 %12, 1, !dbg !2965
  %14 = shl i32 %13, %9, !dbg !2966
  %15 = xor i32 %14, %10, !dbg !2967
  store i32 %15, i32* %7, align 4, !dbg !2967, !tbaa !724
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2906, metadata !1139) #10, !dbg !2949
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #10, !dbg !2968
  call void @llvm.lifetime.end(i64 56, i8* nonnull %4) #10, !dbg !2969
  ret i8* %16, !dbg !2970
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon(i8*) local_unnamed_addr #6 !dbg !2971 {
  %2 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2973, metadata !598), !dbg !2974
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2939, metadata !598) #10, !dbg !2975
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2940, metadata !598) #10, !dbg !2977
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2903, metadata !598) #10, !dbg !2978
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2904, metadata !598) #10, !dbg !2980
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2905, metadata !598) #10, !dbg !2981
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !2982
  call void @llvm.lifetime.start(i64 56, i8* nonnull %3) #10, !dbg !2982
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %3, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !2983, !tbaa.struct !2912
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2906, metadata !1139) #10, !dbg !2984
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !1366, metadata !598) #10, !dbg !2985
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1367, metadata !598) #10, !dbg !2987
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1368, metadata !598) #10, !dbg !2988
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1369, metadata !598) #10, !dbg !2989
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !2990
  tail call void @llvm.dbg.value(metadata i32* %4, i64 0, metadata !1370, metadata !598) #10, !dbg !2991
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !1372, metadata !598) #10, !dbg !2992
  %5 = load i32, i32* %4, align 4, !dbg !2993, !tbaa !724
  %6 = or i32 %5, 67108864, !dbg !2994
  store i32 %6, i32* %4, align 4, !dbg !2994, !tbaa !724
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2906, metadata !1139) #10, !dbg !2984
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #10, !dbg !2995
  call void @llvm.lifetime.end(i64 56, i8* nonnull %3) #10, !dbg !2996
  ret i8* %7, !dbg !2997
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon_mem(i8*, i64) local_unnamed_addr #6 !dbg !2998 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3000, metadata !598), !dbg !3002
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3001, metadata !598), !dbg !3003
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2903, metadata !598) #10, !dbg !3004
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2904, metadata !598) #10, !dbg !3006
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2905, metadata !598) #10, !dbg !3007
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3008
  call void @llvm.lifetime.start(i64 56, i8* nonnull %4) #10, !dbg !3008
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !3009, !tbaa.struct !2912
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2906, metadata !1139) #10, !dbg !3010
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !1366, metadata !598) #10, !dbg !3011
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1367, metadata !598) #10, !dbg !3013
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1368, metadata !598) #10, !dbg !3014
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1369, metadata !598) #10, !dbg !3015
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !3016
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !1370, metadata !598) #10, !dbg !3017
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !1372, metadata !598) #10, !dbg !3018
  %6 = load i32, i32* %5, align 4, !dbg !3019, !tbaa !724
  %7 = or i32 %6, 67108864, !dbg !3020
  store i32 %7, i32* %5, align 4, !dbg !3020, !tbaa !724
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2906, metadata !1139) #10, !dbg !3010
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #10, !dbg !3021
  call void @llvm.lifetime.end(i64 56, i8* nonnull %4) #10, !dbg !3022
  ret i8* %8, !dbg !3023
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_colon(i32, i32, i8*) local_unnamed_addr #6 !dbg !3024 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !2779, metadata !2785), !dbg !3030
  %5 = alloca %struct.quoting_options, align 8
  %6 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3026, metadata !598), !dbg !3032
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3027, metadata !598), !dbg !3033
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3028, metadata !598), !dbg !3034
  %7 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3035
  call void @llvm.lifetime.start(i64 56, i8* nonnull %7) #10, !dbg !3035
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2784, metadata !598) #10, !dbg !3036
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !3037
  call void @llvm.lifetime.start(i64 52, i8* nonnull %8), !dbg !3037
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2779, metadata !598) #10, !dbg !3030
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2779, metadata !2795) #10, !dbg !3030
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !3030
  %9 = icmp eq i32 %1, 10, !dbg !3038
  br i1 %9, label %10, label %11, !dbg !3039

; <label>:10:                                     ; preds = %3
  tail call void @abort() #14, !dbg !3040, !noalias !3041
  unreachable, !dbg !3040

; <label>:11:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2779, metadata !2795) #10, !dbg !3030
  %12 = getelementptr inbounds [52 x i8], [52 x i8]* %6, i64 0, i64 0, !dbg !3044
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %12, i8* nonnull %8, i64 52, i32 4, i1 false), !dbg !3044
  call void @llvm.lifetime.end(i64 52, i8* nonnull %8), !dbg !3045
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3046
  store i32 %1, i32* %13, align 8, !dbg !3046
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !3046
  %15 = bitcast i32* %14 to i8*, !dbg !3046
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* nonnull %12, i64 52, i32 4, i1 false), !dbg !3046
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3029, metadata !1139), !dbg !3047
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1366, metadata !598), !dbg !3048
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1367, metadata !598), !dbg !3050
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1368, metadata !598), !dbg !3051
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1369, metadata !598), !dbg !3052
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 1, !dbg !3053
  tail call void @llvm.dbg.value(metadata i32* %16, i64 0, metadata !1370, metadata !598), !dbg !3054
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !1372, metadata !598), !dbg !3055
  %17 = load i32, i32* %16, align 4, !dbg !3056, !tbaa !724
  %18 = or i32 %17, 67108864, !dbg !3057
  store i32 %18, i32* %16, align 4, !dbg !3057, !tbaa !724
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3029, metadata !1139), !dbg !3047
  %19 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !3058
  call void @llvm.lifetime.end(i64 56, i8* nonnull %7) #10, !dbg !3059
  ret i8* %19, !dbg !3060
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom(i32, i8*, i8*, i8*) local_unnamed_addr #6 !dbg !3061 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3065, metadata !598), !dbg !3069
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3066, metadata !598), !dbg !3070
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3067, metadata !598), !dbg !3071
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3068, metadata !598), !dbg !3072
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3073, metadata !598) #10, !dbg !3083
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3078, metadata !598) #10, !dbg !3085
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3079, metadata !598) #10, !dbg !3086
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3080, metadata !598) #10, !dbg !3087
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3081, metadata !598) #10, !dbg !3088
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3089
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #10, !dbg !3089
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !3090, !tbaa.struct !2912
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3082, metadata !1139) #10, !dbg !3091
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1416, metadata !598) #10, !dbg !3092
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1417, metadata !598) #10, !dbg !3094
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1418, metadata !598) #10, !dbg !3095
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1416, metadata !598) #10, !dbg !3092
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1416, metadata !598) #10, !dbg !3092
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3096
  store i32 10, i32* %7, align 8, !dbg !3097, !tbaa !1346
  %8 = icmp ne i8* %1, null, !dbg !3098
  %9 = icmp ne i8* %2, null, !dbg !3099
  %10 = and i1 %8, %9, !dbg !3100
  br i1 %10, label %12, label %11, !dbg !3100

; <label>:11:                                     ; preds = %4
  tail call void @abort() #14, !dbg !3101
  unreachable, !dbg !3101

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3102
  store i8* %1, i8** %13, align 8, !dbg !3103, !tbaa !1435
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3104
  store i8* %2, i8** %14, align 8, !dbg !3105, !tbaa !1438
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3082, metadata !1139) #10, !dbg !3091
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #10, !dbg !3106
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #10, !dbg !3107
  ret i8* %15, !dbg !3108
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom_mem(i32, i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !3074 {
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3073, metadata !598), !dbg !3109
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3078, metadata !598), !dbg !3110
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3079, metadata !598), !dbg !3111
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3080, metadata !598), !dbg !3112
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !3081, metadata !598), !dbg !3113
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !3114
  call void @llvm.lifetime.start(i64 56, i8* nonnull %7) #10, !dbg !3114
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %7, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !3115, !tbaa.struct !2912
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !3082, metadata !1139), !dbg !3116
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !1416, metadata !598) #10, !dbg !3117
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1417, metadata !598) #10, !dbg !3119
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1418, metadata !598) #10, !dbg !3120
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1416, metadata !598) #10, !dbg !3117
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !1416, metadata !598) #10, !dbg !3117
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3121
  store i32 10, i32* %8, align 8, !dbg !3122, !tbaa !1346
  %9 = icmp ne i8* %1, null, !dbg !3123
  %10 = icmp ne i8* %2, null, !dbg !3124
  %11 = and i1 %9, %10, !dbg !3125
  br i1 %11, label %13, label %12, !dbg !3125

; <label>:12:                                     ; preds = %5
  tail call void @abort() #14, !dbg !3126
  unreachable, !dbg !3126

; <label>:13:                                     ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3127
  store i8* %1, i8** %14, align 8, !dbg !3128, !tbaa !1435
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3129
  store i8* %2, i8** %15, align 8, !dbg !3130, !tbaa !1438
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !3082, metadata !1139), !dbg !3116
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !3131
  call void @llvm.lifetime.end(i64 56, i8* nonnull %7) #10, !dbg !3132
  ret i8* %16, !dbg !3133
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom(i8*, i8*, i8*) local_unnamed_addr #6 !dbg !3134 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3138, metadata !598), !dbg !3141
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3139, metadata !598), !dbg !3142
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3140, metadata !598), !dbg !3143
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3065, metadata !598) #10, !dbg !3144
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3066, metadata !598) #10, !dbg !3146
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3067, metadata !598) #10, !dbg !3147
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3068, metadata !598) #10, !dbg !3148
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3073, metadata !598) #10, !dbg !3149
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3078, metadata !598) #10, !dbg !3151
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3079, metadata !598) #10, !dbg !3152
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3080, metadata !598) #10, !dbg !3153
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3081, metadata !598) #10, !dbg !3154
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3155
  call void @llvm.lifetime.start(i64 56, i8* nonnull %5) #10, !dbg !3155
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !3156, !tbaa.struct !2912
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3082, metadata !1139) #10, !dbg !3157
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1416, metadata !598) #10, !dbg !3158
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1417, metadata !598) #10, !dbg !3160
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1418, metadata !598) #10, !dbg !3161
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1416, metadata !598) #10, !dbg !3158
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1416, metadata !598) #10, !dbg !3158
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3162
  store i32 10, i32* %6, align 8, !dbg !3163, !tbaa !1346
  %7 = icmp ne i8* %0, null, !dbg !3164
  %8 = icmp ne i8* %1, null, !dbg !3165
  %9 = and i1 %7, %8, !dbg !3166
  br i1 %9, label %11, label %10, !dbg !3166

; <label>:10:                                     ; preds = %3
  tail call void @abort() #14, !dbg !3167
  unreachable, !dbg !3167

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !3168
  store i8* %0, i8** %12, align 8, !dbg !3169, !tbaa !1435
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !3170
  store i8* %1, i8** %13, align 8, !dbg !3171, !tbaa !1438
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3082, metadata !1139) #10, !dbg !3157
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #10, !dbg !3172
  call void @llvm.lifetime.end(i64 56, i8* nonnull %5) #10, !dbg !3173
  ret i8* %14, !dbg !3174
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom_mem(i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !3175 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3179, metadata !598), !dbg !3183
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3180, metadata !598), !dbg !3184
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3181, metadata !598), !dbg !3185
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3182, metadata !598), !dbg !3186
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3073, metadata !598) #10, !dbg !3187
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3078, metadata !598) #10, !dbg !3189
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3079, metadata !598) #10, !dbg !3190
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3080, metadata !598) #10, !dbg !3191
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3081, metadata !598) #10, !dbg !3192
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3193
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #10, !dbg !3193
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !3194, !tbaa.struct !2912
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3082, metadata !1139) #10, !dbg !3195
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1416, metadata !598) #10, !dbg !3196
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1417, metadata !598) #10, !dbg !3198
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1418, metadata !598) #10, !dbg !3199
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1416, metadata !598) #10, !dbg !3196
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1416, metadata !598) #10, !dbg !3196
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3200
  store i32 10, i32* %7, align 8, !dbg !3201, !tbaa !1346
  %8 = icmp ne i8* %0, null, !dbg !3202
  %9 = icmp ne i8* %1, null, !dbg !3203
  %10 = and i1 %8, %9, !dbg !3204
  br i1 %10, label %12, label %11, !dbg !3204

; <label>:11:                                     ; preds = %4
  tail call void @abort() #14, !dbg !3205
  unreachable, !dbg !3205

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3206
  store i8* %0, i8** %13, align 8, !dbg !3207, !tbaa !1435
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3208
  store i8* %1, i8** %14, align 8, !dbg !3209, !tbaa !1438
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3082, metadata !1139) #10, !dbg !3195
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #10, !dbg !3210
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #10, !dbg !3211
  ret i8* %15, !dbg !3212
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !3213 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3217, metadata !598), !dbg !3220
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3218, metadata !598), !dbg !3221
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3219, metadata !598), !dbg !3222
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !3223
  ret i8* %4, !dbg !3224
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_mem(i8*, i64) local_unnamed_addr #6 !dbg !3225 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3229, metadata !598), !dbg !3231
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3230, metadata !598), !dbg !3232
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3217, metadata !598) #10, !dbg !3233
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3218, metadata !598) #10, !dbg !3235
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3219, metadata !598) #10, !dbg !3236
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !3237
  ret i8* %3, !dbg !3238
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n(i32, i8*) local_unnamed_addr #6 !dbg !3239 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3243, metadata !598), !dbg !3245
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3244, metadata !598), !dbg !3246
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3217, metadata !598) #10, !dbg !3247
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3218, metadata !598) #10, !dbg !3249
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3219, metadata !598) #10, !dbg !3250
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !3251
  ret i8* %3, !dbg !3252
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote(i8*) local_unnamed_addr #6 !dbg !3253 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3257, metadata !598), !dbg !3258
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3243, metadata !598) #10, !dbg !3259
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3244, metadata !598) #10, !dbg !3261
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3217, metadata !598) #10, !dbg !3262
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3218, metadata !598) #10, !dbg !3264
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3219, metadata !598) #10, !dbg !3265
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !3266
  ret i8* %2, !dbg !3267
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_arn(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly, i64) local_unnamed_addr #6 !dbg !3268 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3325, metadata !598), !dbg !3331
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3326, metadata !598), !dbg !3332
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3327, metadata !598), !dbg !3333
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3328, metadata !598), !dbg !3334
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !3329, metadata !598), !dbg !3335
  tail call void @llvm.dbg.value(metadata i64 %5, i64 0, metadata !3330, metadata !598), !dbg !3336
  %7 = icmp eq i8* %1, null, !dbg !3337
  br i1 %7, label %10, label %8, !dbg !3339

; <label>:8:                                      ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.65, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #10, !dbg !3340
  br label %12, !dbg !3340

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.66, i64 0, i64 0), i8* %2, i8* %3) #10, !dbg !3341
  br label %12

; <label>:12:                                     ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.67, i64 0, i64 0), i32 5) #10, !dbg !3342
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2017) #10, !dbg !3343
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([203 x i8], [203 x i8]* @.str.3.68, i64 0, i64 0), i32 5) #10, !dbg !3345
  %16 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %0) #10, !dbg !3346
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
  ], !dbg !3347

; <label>:17:                                     ; preds = %12
  tail call void @abort() #14, !dbg !3348
  unreachable, !dbg !3348

; <label>:18:                                     ; preds = %12
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4.69, i64 0, i64 0), i32 5) #10, !dbg !3350
  %20 = load i8*, i8** %4, align 8, !dbg !3350, !tbaa !606
  %21 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %19, i8* %20) #10, !dbg !3351
  br label %146, !dbg !3353

; <label>:22:                                     ; preds = %12
  %23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5.70, i64 0, i64 0), i32 5) #10, !dbg !3354
  %24 = load i8*, i8** %4, align 8, !dbg !3354, !tbaa !606
  %25 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3354
  %26 = load i8*, i8** %25, align 8, !dbg !3354, !tbaa !606
  %27 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %23, i8* %24, i8* %26) #10, !dbg !3355
  br label %146, !dbg !3356

; <label>:28:                                     ; preds = %12
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6.71, i64 0, i64 0), i32 5) #10, !dbg !3357
  %30 = load i8*, i8** %4, align 8, !dbg !3357, !tbaa !606
  %31 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3357
  %32 = load i8*, i8** %31, align 8, !dbg !3357, !tbaa !606
  %33 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3357
  %34 = load i8*, i8** %33, align 8, !dbg !3357, !tbaa !606
  %35 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %29, i8* %30, i8* %32, i8* %34) #10, !dbg !3358
  br label %146, !dbg !3359

; <label>:36:                                     ; preds = %12
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7.72, i64 0, i64 0), i32 5) #10, !dbg !3360
  %38 = load i8*, i8** %4, align 8, !dbg !3360, !tbaa !606
  %39 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3360
  %40 = load i8*, i8** %39, align 8, !dbg !3360, !tbaa !606
  %41 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3360
  %42 = load i8*, i8** %41, align 8, !dbg !3360, !tbaa !606
  %43 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3360
  %44 = load i8*, i8** %43, align 8, !dbg !3360, !tbaa !606
  %45 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %37, i8* %38, i8* %40, i8* %42, i8* %44) #10, !dbg !3361
  br label %146, !dbg !3362

; <label>:46:                                     ; preds = %12
  %47 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8.73, i64 0, i64 0), i32 5) #10, !dbg !3363
  %48 = load i8*, i8** %4, align 8, !dbg !3363, !tbaa !606
  %49 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3363
  %50 = load i8*, i8** %49, align 8, !dbg !3363, !tbaa !606
  %51 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3363
  %52 = load i8*, i8** %51, align 8, !dbg !3363, !tbaa !606
  %53 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3363
  %54 = load i8*, i8** %53, align 8, !dbg !3363, !tbaa !606
  %55 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3363
  %56 = load i8*, i8** %55, align 8, !dbg !3363, !tbaa !606
  %57 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %47, i8* %48, i8* %50, i8* %52, i8* %54, i8* %56) #10, !dbg !3364
  br label %146, !dbg !3365

; <label>:58:                                     ; preds = %12
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9.74, i64 0, i64 0), i32 5) #10, !dbg !3366
  %60 = load i8*, i8** %4, align 8, !dbg !3366, !tbaa !606
  %61 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3366
  %62 = load i8*, i8** %61, align 8, !dbg !3366, !tbaa !606
  %63 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3366
  %64 = load i8*, i8** %63, align 8, !dbg !3366, !tbaa !606
  %65 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3366
  %66 = load i8*, i8** %65, align 8, !dbg !3366, !tbaa !606
  %67 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3366
  %68 = load i8*, i8** %67, align 8, !dbg !3366, !tbaa !606
  %69 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3366
  %70 = load i8*, i8** %69, align 8, !dbg !3366, !tbaa !606
  %71 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %59, i8* %60, i8* %62, i8* %64, i8* %66, i8* %68, i8* %70) #10, !dbg !3367
  br label %146, !dbg !3368

; <label>:72:                                     ; preds = %12
  %73 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10.75, i64 0, i64 0), i32 5) #10, !dbg !3369
  %74 = load i8*, i8** %4, align 8, !dbg !3369, !tbaa !606
  %75 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3369
  %76 = load i8*, i8** %75, align 8, !dbg !3369, !tbaa !606
  %77 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3369
  %78 = load i8*, i8** %77, align 8, !dbg !3369, !tbaa !606
  %79 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3369
  %80 = load i8*, i8** %79, align 8, !dbg !3369, !tbaa !606
  %81 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3369
  %82 = load i8*, i8** %81, align 8, !dbg !3369, !tbaa !606
  %83 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3369
  %84 = load i8*, i8** %83, align 8, !dbg !3369, !tbaa !606
  %85 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3369
  %86 = load i8*, i8** %85, align 8, !dbg !3369, !tbaa !606
  %87 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %73, i8* %74, i8* %76, i8* %78, i8* %80, i8* %82, i8* %84, i8* %86) #10, !dbg !3370
  br label %146, !dbg !3371

; <label>:88:                                     ; preds = %12
  %89 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11.76, i64 0, i64 0), i32 5) #10, !dbg !3372
  %90 = load i8*, i8** %4, align 8, !dbg !3372, !tbaa !606
  %91 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3372
  %92 = load i8*, i8** %91, align 8, !dbg !3372, !tbaa !606
  %93 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3372
  %94 = load i8*, i8** %93, align 8, !dbg !3372, !tbaa !606
  %95 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3372
  %96 = load i8*, i8** %95, align 8, !dbg !3372, !tbaa !606
  %97 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3372
  %98 = load i8*, i8** %97, align 8, !dbg !3372, !tbaa !606
  %99 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3372
  %100 = load i8*, i8** %99, align 8, !dbg !3372, !tbaa !606
  %101 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3372
  %102 = load i8*, i8** %101, align 8, !dbg !3372, !tbaa !606
  %103 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3372
  %104 = load i8*, i8** %103, align 8, !dbg !3372, !tbaa !606
  %105 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %89, i8* %90, i8* %92, i8* %94, i8* %96, i8* %98, i8* %100, i8* %102, i8* %104) #10, !dbg !3373
  br label %146, !dbg !3374

; <label>:106:                                    ; preds = %12
  %107 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12.77, i64 0, i64 0), i32 5) #10, !dbg !3375
  %108 = load i8*, i8** %4, align 8, !dbg !3375, !tbaa !606
  %109 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3375
  %110 = load i8*, i8** %109, align 8, !dbg !3375, !tbaa !606
  %111 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3375
  %112 = load i8*, i8** %111, align 8, !dbg !3375, !tbaa !606
  %113 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3375
  %114 = load i8*, i8** %113, align 8, !dbg !3375, !tbaa !606
  %115 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3375
  %116 = load i8*, i8** %115, align 8, !dbg !3375, !tbaa !606
  %117 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3375
  %118 = load i8*, i8** %117, align 8, !dbg !3375, !tbaa !606
  %119 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3375
  %120 = load i8*, i8** %119, align 8, !dbg !3375, !tbaa !606
  %121 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3375
  %122 = load i8*, i8** %121, align 8, !dbg !3375, !tbaa !606
  %123 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3375
  %124 = load i8*, i8** %123, align 8, !dbg !3375, !tbaa !606
  %125 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %107, i8* %108, i8* %110, i8* %112, i8* %114, i8* %116, i8* %118, i8* %120, i8* %122, i8* %124) #10, !dbg !3376
  br label %146, !dbg !3377

; <label>:126:                                    ; preds = %12
  %127 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13.78, i64 0, i64 0), i32 5) #10, !dbg !3378
  %128 = load i8*, i8** %4, align 8, !dbg !3378, !tbaa !606
  %129 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3378
  %130 = load i8*, i8** %129, align 8, !dbg !3378, !tbaa !606
  %131 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3378
  %132 = load i8*, i8** %131, align 8, !dbg !3378, !tbaa !606
  %133 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3378
  %134 = load i8*, i8** %133, align 8, !dbg !3378, !tbaa !606
  %135 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3378
  %136 = load i8*, i8** %135, align 8, !dbg !3378, !tbaa !606
  %137 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3378
  %138 = load i8*, i8** %137, align 8, !dbg !3378, !tbaa !606
  %139 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3378
  %140 = load i8*, i8** %139, align 8, !dbg !3378, !tbaa !606
  %141 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3378
  %142 = load i8*, i8** %141, align 8, !dbg !3378, !tbaa !606
  %143 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3378
  %144 = load i8*, i8** %143, align 8, !dbg !3378, !tbaa !606
  %145 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %127, i8* %128, i8* %130, i8* %132, i8* %134, i8* %136, i8* %138, i8* %140, i8* %142, i8* %144) #10, !dbg !3379
  br label %146, !dbg !3380

; <label>:146:                                    ; preds = %126, %106, %88, %72, %58, %46, %36, %28, %22, %18
  ret void, !dbg !3381
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_ar(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly) local_unnamed_addr #6 !dbg !3382 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3386, metadata !598), !dbg !3392
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3387, metadata !598), !dbg !3393
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3388, metadata !598), !dbg !3394
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3389, metadata !598), !dbg !3395
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !3390, metadata !598), !dbg !3396
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3391, metadata !598), !dbg !3397
  br label %6, !dbg !3398

; <label>:6:                                      ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !3391, metadata !598), !dbg !3397
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !3400
  %9 = load i8*, i8** %8, align 8, !dbg !3400, !tbaa !606
  %10 = icmp eq i8* %9, null, !dbg !3403
  %11 = add i64 %7, 1, !dbg !3405
  tail call void @llvm.dbg.value(metadata i64 %11, i64 0, metadata !3391, metadata !598), !dbg !3397
  br i1 %10, label %12, label %6, !dbg !3403, !llvm.loop !3407

; <label>:12:                                     ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !3410
  ret void, !dbg !3411
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_va(%struct._IO_FILE*, i8*, i8*, i8*, %struct.__va_list_tag* nocapture) local_unnamed_addr #6 !dbg !3412 {
  %6 = alloca [10 x i8*], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3423, metadata !598), !dbg !3431
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3424, metadata !598), !dbg !3432
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3425, metadata !598), !dbg !3433
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3426, metadata !598), !dbg !3434
  tail call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, i64 0, metadata !3427, metadata !598), !dbg !3435
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !3436
  call void @llvm.lifetime.start(i64 80, i8* nonnull %7) #10, !dbg !3436
  tail call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !3429, metadata !598), !dbg !3437
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3428, metadata !598), !dbg !3438
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3428, metadata !598), !dbg !3438
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  %11 = load i32, i32* %8, align 8, !dbg !3439
  %12 = icmp ult i32 %11, 41, !dbg !3439
  br i1 %12, label %13, label %18, !dbg !3439

; <label>:13:                                     ; preds = %5
  %14 = load i8*, i8** %9, align 8, !dbg !3443
  %15 = sext i32 %11 to i64, !dbg !3443
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !3443
  %17 = add i32 %11, 8, !dbg !3443
  store i32 %17, i32* %8, align 8, !dbg !3443
  br label %21, !dbg !3443

; <label>:18:                                     ; preds = %5
  %19 = load i8*, i8** %10, align 8, !dbg !3445
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !3445
  store i8* %20, i8** %10, align 8, !dbg !3445
  br label %21, !dbg !3445

; <label>:21:                                     ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ], !dbg !3439
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !3447
  %25 = load i8*, i8** %24, align 8, !dbg !3447
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !3449
  store i8* %25, i8** %26, align 16, !dbg !3450, !tbaa !606
  %27 = icmp eq i8* %25, null, !dbg !3451
  br i1 %27, label %30, label %28, !dbg !3452

; <label>:28:                                     ; preds = %21
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3428, metadata !598), !dbg !3438
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3428, metadata !598), !dbg !3438
  %29 = icmp ult i32 %22, 41, !dbg !3439
  br i1 %29, label %35, label %32, !dbg !3439

; <label>:30:                                     ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ]
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !3454
  call void @llvm.lifetime.end(i64 80, i8* nonnull %7) #10, !dbg !3455
  ret void, !dbg !3455

; <label>:32:                                     ; preds = %28
  %33 = load i8*, i8** %10, align 8, !dbg !3445
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !3445
  store i8* %34, i8** %10, align 8, !dbg !3445
  br label %40, !dbg !3445

; <label>:35:                                     ; preds = %28
  %36 = load i8*, i8** %9, align 8, !dbg !3443
  %37 = sext i32 %22 to i64, !dbg !3443
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !3443
  %39 = add i32 %22, 8, !dbg !3443
  store i32 %39, i32* %8, align 8, !dbg !3443
  br label %40, !dbg !3443

; <label>:40:                                     ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ], !dbg !3439
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !3447
  %44 = load i8*, i8** %43, align 8, !dbg !3447
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !3449
  store i8* %44, i8** %45, align 8, !dbg !3450, !tbaa !606
  %46 = icmp eq i8* %44, null, !dbg !3451
  br i1 %46, label %30, label %47, !dbg !3452

; <label>:47:                                     ; preds = %40
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3428, metadata !598), !dbg !3438
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3428, metadata !598), !dbg !3438
  %48 = icmp ult i32 %41, 41, !dbg !3439
  br i1 %48, label %52, label %49, !dbg !3439

; <label>:49:                                     ; preds = %47
  %50 = load i8*, i8** %10, align 8, !dbg !3445
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !3445
  store i8* %51, i8** %10, align 8, !dbg !3445
  br label %57, !dbg !3445

; <label>:52:                                     ; preds = %47
  %53 = load i8*, i8** %9, align 8, !dbg !3443
  %54 = sext i32 %41 to i64, !dbg !3443
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !3443
  %56 = add i32 %41, 8, !dbg !3443
  store i32 %56, i32* %8, align 8, !dbg !3443
  br label %57, !dbg !3443

; <label>:57:                                     ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ], !dbg !3439
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !3447
  %61 = load i8*, i8** %60, align 8, !dbg !3447
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !3449
  store i8* %61, i8** %62, align 16, !dbg !3450, !tbaa !606
  %63 = icmp eq i8* %61, null, !dbg !3451
  br i1 %63, label %30, label %64, !dbg !3452

; <label>:64:                                     ; preds = %57
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3428, metadata !598), !dbg !3438
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3428, metadata !598), !dbg !3438
  %65 = icmp ult i32 %58, 41, !dbg !3439
  br i1 %65, label %69, label %66, !dbg !3439

; <label>:66:                                     ; preds = %64
  %67 = load i8*, i8** %10, align 8, !dbg !3445
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !3445
  store i8* %68, i8** %10, align 8, !dbg !3445
  br label %74, !dbg !3445

; <label>:69:                                     ; preds = %64
  %70 = load i8*, i8** %9, align 8, !dbg !3443
  %71 = sext i32 %58 to i64, !dbg !3443
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !3443
  %73 = add i32 %58, 8, !dbg !3443
  store i32 %73, i32* %8, align 8, !dbg !3443
  br label %74, !dbg !3443

; <label>:74:                                     ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ], !dbg !3439
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !3447
  %78 = load i8*, i8** %77, align 8, !dbg !3447
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !3449
  store i8* %78, i8** %79, align 8, !dbg !3450, !tbaa !606
  %80 = icmp eq i8* %78, null, !dbg !3451
  br i1 %80, label %30, label %81, !dbg !3452

; <label>:81:                                     ; preds = %74
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3428, metadata !598), !dbg !3438
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3428, metadata !598), !dbg !3438
  %82 = icmp ult i32 %75, 41, !dbg !3439
  br i1 %82, label %86, label %83, !dbg !3439

; <label>:83:                                     ; preds = %81
  %84 = load i8*, i8** %10, align 8, !dbg !3445
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !3445
  store i8* %85, i8** %10, align 8, !dbg !3445
  br label %91, !dbg !3445

; <label>:86:                                     ; preds = %81
  %87 = load i8*, i8** %9, align 8, !dbg !3443
  %88 = sext i32 %75 to i64, !dbg !3443
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !3443
  %90 = add i32 %75, 8, !dbg !3443
  store i32 %90, i32* %8, align 8, !dbg !3443
  br label %91, !dbg !3443

; <label>:91:                                     ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ], !dbg !3439
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !3447
  %95 = load i8*, i8** %94, align 8, !dbg !3447
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !3449
  store i8* %95, i8** %96, align 16, !dbg !3450, !tbaa !606
  %97 = icmp eq i8* %95, null, !dbg !3451
  br i1 %97, label %30, label %98, !dbg !3452

; <label>:98:                                     ; preds = %91
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3428, metadata !598), !dbg !3438
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3428, metadata !598), !dbg !3438
  %99 = icmp ult i32 %92, 41, !dbg !3439
  br i1 %99, label %103, label %100, !dbg !3439

; <label>:100:                                    ; preds = %98
  %101 = load i8*, i8** %10, align 8, !dbg !3445
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !3445
  store i8* %102, i8** %10, align 8, !dbg !3445
  br label %108, !dbg !3445

; <label>:103:                                    ; preds = %98
  %104 = load i8*, i8** %9, align 8, !dbg !3443
  %105 = sext i32 %92 to i64, !dbg !3443
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !3443
  %107 = add i32 %92, 8, !dbg !3443
  store i32 %107, i32* %8, align 8, !dbg !3443
  br label %108, !dbg !3443

; <label>:108:                                    ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !3447
  %111 = load i8*, i8** %110, align 8, !dbg !3447
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !3449
  store i8* %111, i8** %112, align 8, !dbg !3450, !tbaa !606
  %113 = icmp eq i8* %111, null, !dbg !3451
  br i1 %113, label %30, label %114, !dbg !3452

; <label>:114:                                    ; preds = %108
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3428, metadata !598), !dbg !3438
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3428, metadata !598), !dbg !3438
  %115 = load i8*, i8** %10, align 8, !dbg !3445
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !3445
  store i8* %116, i8** %10, align 8, !dbg !3445
  %117 = bitcast i8* %115 to i8**, !dbg !3447
  %118 = load i8*, i8** %117, align 8, !dbg !3447
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !3449
  store i8* %118, i8** %119, align 16, !dbg !3450, !tbaa !606
  %120 = icmp eq i8* %118, null, !dbg !3451
  br i1 %120, label %30, label %121, !dbg !3452

; <label>:121:                                    ; preds = %114
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3428, metadata !598), !dbg !3438
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3428, metadata !598), !dbg !3438
  %122 = load i8*, i8** %10, align 8, !dbg !3445
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !3445
  store i8* %123, i8** %10, align 8, !dbg !3445
  %124 = bitcast i8* %122 to i8**, !dbg !3447
  %125 = load i8*, i8** %124, align 8, !dbg !3447
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !3449
  store i8* %125, i8** %126, align 8, !dbg !3450, !tbaa !606
  %127 = icmp eq i8* %125, null, !dbg !3451
  br i1 %127, label %30, label %128, !dbg !3452

; <label>:128:                                    ; preds = %121
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3428, metadata !598), !dbg !3438
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3428, metadata !598), !dbg !3438
  %129 = load i8*, i8** %10, align 8, !dbg !3445
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !3445
  store i8* %130, i8** %10, align 8, !dbg !3445
  %131 = bitcast i8* %129 to i8**, !dbg !3447
  %132 = load i8*, i8** %131, align 8, !dbg !3447
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !3449
  store i8* %132, i8** %133, align 16, !dbg !3450, !tbaa !606
  %134 = icmp eq i8* %132, null, !dbg !3451
  br i1 %134, label %30, label %135, !dbg !3452

; <label>:135:                                    ; preds = %128
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3428, metadata !598), !dbg !3438
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3428, metadata !598), !dbg !3438
  %136 = load i8*, i8** %10, align 8, !dbg !3445
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !3445
  store i8* %137, i8** %10, align 8, !dbg !3445
  %138 = bitcast i8* %136 to i8**, !dbg !3447
  %139 = load i8*, i8** %138, align 8, !dbg !3447
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !3449
  store i8* %139, i8** %140, align 8, !dbg !3450, !tbaa !606
  %141 = icmp eq i8* %139, null, !dbg !3451
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3428, metadata !598), !dbg !3438
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3428, metadata !598), !dbg !3438
  %142 = select i1 %141, i64 9, i64 10, !dbg !3452
  br label %30, !dbg !3452
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc(%struct._IO_FILE*, i8*, i8*, i8*, ...) local_unnamed_addr #6 !dbg !3456 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3460, metadata !598), !dbg !3470
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3461, metadata !598), !dbg !3471
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3462, metadata !598), !dbg !3472
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3463, metadata !598), !dbg !3473
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !3474
  call void @llvm.lifetime.start(i64 24, i8* nonnull %6) #10, !dbg !3474
  tail call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !3464, metadata !598), !dbg !3475
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !3476
  call void @llvm.va_start(i8* nonnull %6), !dbg !3476
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !3477
  call void @llvm.va_end(i8* nonnull %6), !dbg !3478
  call void @llvm.lifetime.end(i64 24, i8* nonnull %6) #10, !dbg !3479
  ret void, !dbg !3479
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #10

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #10

; Function Attrs: nounwind sspstrong uwtable
define void @emit_bug_reporting_address() local_unnamed_addr #6 !dbg !3480 {
  %1 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14.81, i64 0, i64 0), i32 5) #10, !dbg !3481
  %2 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15.82, i64 0, i64 0)) #10, !dbg !3482
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.83, i64 0, i64 0), i32 5) #10, !dbg !3484
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17.84, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.18.85, i64 0, i64 0)) #10, !dbg !3485
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.19.86, i64 0, i64 0), i32 5) #10, !dbg !3486
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !3486, !tbaa !606
  %7 = tail call i32 @fputs_unlocked(i8* %5, %struct._IO_FILE* %6) #10, !dbg !3487
  ret void, !dbg !3488
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnmalloc(i64, i64) local_unnamed_addr #12 !dbg !3489 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3491, metadata !598), !dbg !3493
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3492, metadata !598), !dbg !3494
  %3 = udiv i64 9223372036854775807, %1, !dbg !3495
  %4 = icmp ult i64 %3, %0, !dbg !3495
  br i1 %4, label %5, label %6, !dbg !3497

; <label>:5:                                      ; preds = %2
  tail call void @xalloc_die() #14, !dbg !3498
  unreachable, !dbg !3498

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3499
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !3500, metadata !598) #10, !dbg !3507
  %8 = tail call noalias i8* @malloc(i64 %7) #10, !dbg !3509
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !3506, metadata !598) #10, !dbg !3510
  %9 = icmp eq i8* %8, null, !dbg !3511
  %10 = icmp ne i64 %7, 0, !dbg !3513
  %11 = and i1 %10, %9, !dbg !3515
  br i1 %11, label %12, label %13, !dbg !3515

; <label>:12:                                     ; preds = %6
  tail call void @xalloc_die() #14, !dbg !3516
  unreachable, !dbg !3516

; <label>:13:                                     ; preds = %6
  ret i8* %8, !dbg !3517
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmalloc(i64) local_unnamed_addr #6 !dbg !3501 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3500, metadata !598), !dbg !3518
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !3519
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3506, metadata !598), !dbg !3520
  %3 = icmp eq i8* %2, null, !dbg !3521
  %4 = icmp ne i64 %0, 0, !dbg !3522
  %5 = and i1 %4, %3, !dbg !3523
  br i1 %5, label %6, label %7, !dbg !3523

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #14, !dbg !3524
  unreachable, !dbg !3524

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !3525
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnrealloc(i8*, i64, i64) local_unnamed_addr #12 !dbg !3526 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3530, metadata !598), !dbg !3533
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3531, metadata !598), !dbg !3534
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3532, metadata !598), !dbg !3535
  %4 = udiv i64 9223372036854775807, %2, !dbg !3536
  %5 = icmp ult i64 %4, %1, !dbg !3536
  br i1 %5, label %6, label %7, !dbg !3538

; <label>:6:                                      ; preds = %3
  tail call void @xalloc_die() #14, !dbg !3539
  unreachable, !dbg !3539

; <label>:7:                                      ; preds = %3
  %8 = mul i64 %2, %1, !dbg !3540
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3541, metadata !598) #10, !dbg !3547
  tail call void @llvm.dbg.value(metadata i64 %8, i64 0, metadata !3546, metadata !598) #10, !dbg !3549
  %9 = icmp eq i64 %8, 0, !dbg !3550
  %10 = icmp ne i8* %0, null, !dbg !3552
  %11 = and i1 %10, %9, !dbg !3554
  br i1 %11, label %12, label %13, !dbg !3554

; <label>:12:                                     ; preds = %7
  tail call void @free(i8* nonnull %0) #10, !dbg !3555
  br label %19, !dbg !3557

; <label>:13:                                     ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #10, !dbg !3558
  tail call void @llvm.dbg.value(metadata i8* %14, i64 0, metadata !3541, metadata !598) #10, !dbg !3547
  %15 = icmp eq i8* %14, null, !dbg !3559
  %16 = icmp ne i64 %8, 0, !dbg !3561
  %17 = and i1 %16, %15, !dbg !3563
  br i1 %17, label %18, label %19, !dbg !3563

; <label>:18:                                     ; preds = %13
  tail call void @xalloc_die() #14, !dbg !3564
  unreachable, !dbg !3564

; <label>:19:                                     ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ]
  ret i8* %20, !dbg !3565
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xrealloc(i8*, i64) local_unnamed_addr #6 !dbg !3542 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3541, metadata !598), !dbg !3566
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3546, metadata !598), !dbg !3567
  %3 = icmp eq i64 %1, 0, !dbg !3568
  %4 = icmp ne i8* %0, null, !dbg !3569
  %5 = and i1 %4, %3, !dbg !3570
  br i1 %5, label %6, label %7, !dbg !3570

; <label>:6:                                      ; preds = %2
  tail call void @free(i8* nonnull %0) #10, !dbg !3571
  br label %13, !dbg !3572

; <label>:7:                                      ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #10, !dbg !3573
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !3541, metadata !598), !dbg !3566
  %9 = icmp eq i8* %8, null, !dbg !3574
  %10 = icmp ne i64 %1, 0, !dbg !3575
  %11 = and i1 %10, %9, !dbg !3576
  br i1 %11, label %12, label %13, !dbg !3576

; <label>:12:                                     ; preds = %7
  tail call void @xalloc_die() #14, !dbg !3577
  unreachable, !dbg !3577

; <label>:13:                                     ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ]
  ret i8* %14, !dbg !3578
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @x2nrealloc(i8*, i64* nocapture, i64) local_unnamed_addr #12 !dbg !559 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !564, metadata !598), !dbg !3579
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !565, metadata !598), !dbg !3580
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !566, metadata !598), !dbg !3581
  %4 = load i64, i64* %1, align 8, !dbg !3582, !tbaa !2585
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !567, metadata !598), !dbg !3583
  %5 = icmp eq i8* %0, null, !dbg !3584
  br i1 %5, label %6, label %13, !dbg !3586

; <label>:6:                                      ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3587
  br i1 %7, label %8, label %17, !dbg !3590

; <label>:8:                                      ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3591
  tail call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !567, metadata !598), !dbg !3583
  %10 = icmp ugt i64 %2, 128, !dbg !3593
  %11 = zext i1 %10 to i64, !dbg !3593
  %12 = add nuw nsw i64 %9, %11, !dbg !3594
  tail call void @llvm.dbg.value(metadata i64 %12, i64 0, metadata !567, metadata !598), !dbg !3583
  br label %17, !dbg !3595

; <label>:13:                                     ; preds = %3
  %14 = udiv i64 6148914691236517204, %2, !dbg !3596
  %15 = icmp ugt i64 %14, %4, !dbg !3599
  br i1 %15, label %20, label %16, !dbg !3600

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #14, !dbg !3601
  unreachable, !dbg !3601

; <label>:17:                                     ; preds = %6, %8
  %18 = phi i64 [ %12, %8 ], [ %4, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !567, metadata !598), !dbg !3583
  store i64 %18, i64* %1, align 8, !dbg !3602, !tbaa !2585
  %19 = mul i64 %18, %2, !dbg !3603
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3541, metadata !598) #10, !dbg !3604
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !3546, metadata !598) #10, !dbg !3606
  br label %27, !dbg !3607

; <label>:20:                                     ; preds = %13
  %21 = lshr i64 %4, 1, !dbg !3608
  %22 = add i64 %4, 1, !dbg !3609
  %23 = add i64 %22, %21, !dbg !3610
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !567, metadata !598), !dbg !3583
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !567, metadata !598), !dbg !3583
  store i64 %23, i64* %1, align 8, !dbg !3602, !tbaa !2585
  %24 = mul i64 %23, %2, !dbg !3603
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3541, metadata !598) #10, !dbg !3604
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !3546, metadata !598) #10, !dbg !3606
  %25 = icmp eq i64 %24, 0, !dbg !3611
  br i1 %25, label %26, label %27, !dbg !3607

; <label>:26:                                     ; preds = %20
  tail call void @free(i8* nonnull %0) #10, !dbg !3612
  br label %34, !dbg !3613

; <label>:27:                                     ; preds = %17, %20
  %28 = phi i64 [ %19, %17 ], [ %24, %20 ]
  %29 = tail call i8* @realloc(i8* %0, i64 %28) #10, !dbg !3614
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !3541, metadata !598) #10, !dbg !3604
  %30 = icmp eq i8* %29, null, !dbg !3615
  %31 = icmp ne i64 %28, 0, !dbg !3616
  %32 = and i1 %31, %30, !dbg !3617
  br i1 %32, label %33, label %34, !dbg !3617

; <label>:33:                                     ; preds = %27
  tail call void @xalloc_die() #14, !dbg !3618
  unreachable, !dbg !3618

; <label>:34:                                     ; preds = %26, %27
  %35 = phi i8* [ null, %26 ], [ %29, %27 ]
  ret i8* %35, !dbg !3619
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xcharalloc(i64) local_unnamed_addr #12 !dbg !3620 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3622, metadata !598), !dbg !3623
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3500, metadata !598) #10, !dbg !3624
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !3626
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3506, metadata !598) #10, !dbg !3627
  %3 = icmp eq i8* %2, null, !dbg !3628
  %4 = icmp ne i64 %0, 0, !dbg !3629
  %5 = and i1 %4, %3, !dbg !3630
  br i1 %5, label %6, label %7, !dbg !3630

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #14, !dbg !3631
  unreachable, !dbg !3631

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !3632
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @x2realloc(i8*, i64* nocapture) local_unnamed_addr #6 !dbg !3633 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3637, metadata !598), !dbg !3639
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !3638, metadata !598), !dbg !3640
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !564, metadata !598) #10, !dbg !3641
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !565, metadata !598) #10, !dbg !3643
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !566, metadata !598) #10, !dbg !3644
  %3 = load i64, i64* %1, align 8, !dbg !3645, !tbaa !2585
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !567, metadata !598) #10, !dbg !3646
  %4 = icmp eq i8* %0, null, !dbg !3647
  br i1 %4, label %5, label %8, !dbg !3648

; <label>:5:                                      ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3649
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !567, metadata !598) #10, !dbg !3646
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !567, metadata !598) #10, !dbg !3646
  %7 = select i1 %6, i64 128, i64 %3, !dbg !3650
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !567, metadata !598) #10, !dbg !3646
  store i64 %7, i64* %1, align 8, !dbg !3651, !tbaa !2585
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3541, metadata !598) #10, !dbg !3652
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3546, metadata !598) #10, !dbg !3654
  br label %17, !dbg !3655

; <label>:8:                                      ; preds = %2
  %9 = icmp ult i64 %3, 6148914691236517204, !dbg !3656
  br i1 %9, label %11, label %10, !dbg !3657

; <label>:10:                                     ; preds = %8
  tail call void @xalloc_die() #14, !dbg !3658
  unreachable, !dbg !3658

; <label>:11:                                     ; preds = %8
  %12 = lshr i64 %3, 1, !dbg !3659
  %13 = add i64 %3, 1, !dbg !3660
  %14 = add i64 %13, %12, !dbg !3661
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !567, metadata !598) #10, !dbg !3646
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !567, metadata !598) #10, !dbg !3646
  store i64 %14, i64* %1, align 8, !dbg !3651, !tbaa !2585
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3541, metadata !598) #10, !dbg !3652
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3546, metadata !598) #10, !dbg !3654
  %15 = icmp eq i64 %14, 0, !dbg !3662
  br i1 %15, label %16, label %17, !dbg !3655

; <label>:16:                                     ; preds = %11
  tail call void @free(i8* nonnull %0) #10, !dbg !3663
  br label %24, !dbg !3664

; <label>:17:                                     ; preds = %11, %5
  %18 = phi i64 [ %7, %5 ], [ %14, %11 ]
  %19 = tail call i8* @realloc(i8* %0, i64 %18) #10, !dbg !3665
  tail call void @llvm.dbg.value(metadata i8* %19, i64 0, metadata !3541, metadata !598) #10, !dbg !3652
  %20 = icmp eq i8* %19, null, !dbg !3666
  %21 = icmp ne i64 %18, 0, !dbg !3667
  %22 = and i1 %21, %20, !dbg !3668
  br i1 %22, label %23, label %24, !dbg !3668

; <label>:23:                                     ; preds = %17
  tail call void @xalloc_die() #14, !dbg !3669
  unreachable, !dbg !3669

; <label>:24:                                     ; preds = %16, %17
  %25 = phi i8* [ null, %16 ], [ %19, %17 ]
  ret i8* %25, !dbg !3670
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xzalloc(i64) local_unnamed_addr #6 !dbg !3671 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3673, metadata !598), !dbg !3674
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3500, metadata !598) #10, !dbg !3675
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !3677
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3506, metadata !598) #10, !dbg !3678
  %3 = icmp eq i8* %2, null, !dbg !3679
  %4 = icmp ne i64 %0, 0, !dbg !3680
  %5 = and i1 %4, %3, !dbg !3681
  br i1 %5, label %6, label %7, !dbg !3681

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #14, !dbg !3682
  unreachable, !dbg !3682

; <label>:7:                                      ; preds = %1
  tail call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 %0, i32 1, i1 false), !dbg !3683
  ret i8* %2, !dbg !3684
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xcalloc(i64, i64) local_unnamed_addr #6 !dbg !3685 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3687, metadata !598), !dbg !3690
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3688, metadata !598), !dbg !3691
  %3 = udiv i64 9223372036854775807, %1, !dbg !3692
  %4 = icmp ult i64 %3, %0, !dbg !3692
  br i1 %4, label %8, label %5, !dbg !3694

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #10, !dbg !3695
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !3689, metadata !598), !dbg !3697
  %7 = icmp eq i8* %6, null, !dbg !3698
  br i1 %7, label %8, label %9, !dbg !3699

; <label>:8:                                      ; preds = %5, %2
  tail call void @xalloc_die() #14, !dbg !3701
  unreachable, !dbg !3701

; <label>:9:                                      ; preds = %5
  ret i8* %6, !dbg !3702
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmemdup(i8* nocapture readonly, i64) local_unnamed_addr #6 !dbg !3703 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3707, metadata !598), !dbg !3709
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3708, metadata !598), !dbg !3710
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3500, metadata !598) #10, !dbg !3711
  %3 = tail call noalias i8* @malloc(i64 %1) #10, !dbg !3713
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3506, metadata !598) #10, !dbg !3714
  %4 = icmp eq i8* %3, null, !dbg !3715
  %5 = icmp ne i64 %1, 0, !dbg !3716
  %6 = and i1 %5, %4, !dbg !3717
  br i1 %6, label %7, label %8, !dbg !3717

; <label>:7:                                      ; preds = %2
  tail call void @xalloc_die() #14, !dbg !3718
  unreachable, !dbg !3718

; <label>:8:                                      ; preds = %2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %0, i64 %1, i32 1, i1 false), !dbg !3719
  ret i8* %3, !dbg !3720
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xstrdup(i8* nocapture readonly) local_unnamed_addr #6 !dbg !3721 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3723, metadata !598), !dbg !3724
  %2 = tail call i64 @strlen(i8* %0) #13, !dbg !3725
  %3 = add i64 %2, 1, !dbg !3726
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3707, metadata !598) #10, !dbg !3727
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3708, metadata !598) #10, !dbg !3730
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3500, metadata !598) #10, !dbg !3731
  %4 = tail call noalias i8* @malloc(i64 %3) #10, !dbg !3733
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !3506, metadata !598) #10, !dbg !3734
  %5 = icmp eq i8* %4, null, !dbg !3735
  %6 = icmp ne i64 %3, 0, !dbg !3736
  %7 = and i1 %6, %5, !dbg !3737
  br i1 %7, label %8, label %9, !dbg !3737

; <label>:8:                                      ; preds = %1
  tail call void @xalloc_die() #14, !dbg !3738
  unreachable, !dbg !3738

; <label>:9:                                      ; preds = %1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %0, i64 %3, i32 1, i1 false) #10, !dbg !3739
  ret i8* %4, !dbg !3740
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @xalloc_die() local_unnamed_addr #0 !dbg !3741 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !3743, !tbaa !724
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.97, i64 0, i64 0), i32 5) #10, !dbg !3744
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.98, i64 0, i64 0), i8* %2) #10, !dbg !3745
  tail call void @abort() #14, !dbg !3747
  unreachable, !dbg !3747
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @rpl_calloc(i64, i64) local_unnamed_addr #6 !dbg !3748 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3751, metadata !598), !dbg !3757
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3752, metadata !598), !dbg !3758
  %3 = icmp eq i64 %0, 0, !dbg !3759
  %4 = icmp eq i64 %1, 0, !dbg !3760
  %5 = or i1 %3, %4, !dbg !3762
  br i1 %5, label %12, label %6, !dbg !3762

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3763
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !3754, metadata !598), !dbg !3764
  %8 = udiv i64 %7, %1, !dbg !3765
  %9 = icmp eq i64 %8, %0, !dbg !3767
  br i1 %9, label %12, label %10, !dbg !3768

; <label>:10:                                     ; preds = %6
  %11 = tail call i32* @__errno_location() #1, !dbg !3769
  store i32 12, i32* %11, align 4, !dbg !3771, !tbaa !724
  br label %16

; <label>:12:                                     ; preds = %6, %2
  %13 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %14 = phi i64 [ 1, %2 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3751, metadata !598), !dbg !3757
  tail call void @llvm.dbg.value(metadata i64 %13, i64 0, metadata !3752, metadata !598), !dbg !3758
  %15 = tail call noalias i8* @calloc(i64 %14, i64 %13) #10, !dbg !3772
  tail call void @llvm.dbg.value(metadata i8* %15, i64 0, metadata !3753, metadata !598), !dbg !3773
  br label %16, !dbg !3774

; <label>:16:                                     ; preds = %10, %12
  %17 = phi i8* [ %15, %12 ], [ null, %10 ]
  ret i8* %17, !dbg !3775
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i64 @rpl_mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #6 !dbg !3776 {
  %5 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i32* %0, i64 0, metadata !3793, metadata !598), !dbg !3802
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3794, metadata !598), !dbg !3803
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3795, metadata !598), !dbg !3804
  tail call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, i64 0, metadata !3796, metadata !598), !dbg !3805
  %6 = bitcast i32* %5 to i8*, !dbg !3806
  call void @llvm.lifetime.start(i64 4, i8* nonnull %6) #10, !dbg !3806
  %7 = icmp eq i32* %0, null, !dbg !3807
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !3793, metadata !598), !dbg !3802
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !3809
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !3793, metadata !598), !dbg !3802
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #10, !dbg !3810
  call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !3797, metadata !598), !dbg !3811
  %10 = icmp ugt i64 %9, -3, !dbg !3812
  %11 = icmp ne i64 %2, 0, !dbg !3813
  %12 = and i1 %11, %10, !dbg !3815
  br i1 %12, label %13, label %18, !dbg !3815

; <label>:13:                                     ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #10, !dbg !3816
  br i1 %14, label %18, label %15, !dbg !3818

; <label>:15:                                     ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !3820, !tbaa !898
  call void @llvm.dbg.value(metadata i8 %16, i64 0, metadata !3799, metadata !598), !dbg !3821
  %17 = zext i8 %16 to i32, !dbg !3822
  store i32 %17, i32* %8, align 4, !dbg !3823, !tbaa !724
  br label %18

; <label>:18:                                     ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ]
  call void @llvm.lifetime.end(i64 4, i8* nonnull %6) #10, !dbg !3824
  ret i64 %19, !dbg !3824
}

; Function Attrs: nounwind
declare i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @close_stream(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !3825 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3870, metadata !598), !dbg !3875
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #10, !dbg !3876
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3877, metadata !598), !dbg !3881
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3883
  %4 = load i32, i32* %3, align 8, !dbg !3883, !tbaa !3884
  %5 = and i32 %4, 32, !dbg !3883
  %6 = icmp eq i32 %5, 0, !dbg !3886
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #10, !dbg !3887
  %8 = icmp ne i32 %7, 0, !dbg !3888
  br i1 %6, label %9, label %19, !dbg !3889

; <label>:9:                                      ; preds = %1
  %10 = xor i1 %8, true, !dbg !3891
  %11 = icmp ne i64 %2, 0, !dbg !3891
  %12 = or i1 %11, %10, !dbg !3891
  %13 = sext i1 %8 to i32, !dbg !3891
  br i1 %12, label %22, label %14, !dbg !3891

; <label>:14:                                     ; preds = %9
  %15 = tail call i32* @__errno_location() #1, !dbg !3893
  %16 = load i32, i32* %15, align 4, !dbg !3893, !tbaa !724
  %17 = icmp ne i32 %16, 9, !dbg !3895
  %18 = sext i1 %17 to i32, !dbg !3895
  br label %22, !dbg !3895

; <label>:19:                                     ; preds = %1
  br i1 %8, label %22, label %20, !dbg !3897

; <label>:20:                                     ; preds = %19
  %21 = tail call i32* @__errno_location() #1, !dbg !3899
  store i32 0, i32* %21, align 4, !dbg !3901, !tbaa !724
  br label %22, !dbg !3899

; <label>:22:                                     ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ]
  ret i32 %23, !dbg !3902
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define zeroext i1 @hard_locale(i32) local_unnamed_addr #6 !dbg !3903 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3908, metadata !598), !dbg !3928
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !3909, metadata !598), !dbg !3929
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #10, !dbg !3930
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3910, metadata !598), !dbg !3931
  %3 = icmp eq i8* %2, null, !dbg !3932
  br i1 %3, label %15, label %4, !dbg !3933

; <label>:4:                                      ; preds = %1
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3918, metadata !598), !dbg !3934
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3919, metadata !598), !dbg !3935
  %5 = load i8, i8* %2, align 1, !dbg !3936, !tbaa !898
  %6 = icmp eq i8 %5, 67, !dbg !3938
  br i1 %6, label %7, label %11, !dbg !3941

; <label>:7:                                      ; preds = %4
  %8 = getelementptr inbounds i8, i8* %2, i64 1, !dbg !3943
  %9 = load i8, i8* %8, align 1, !dbg !3943, !tbaa !898
  %10 = icmp eq i8 %9, 0, !dbg !3946
  br i1 %10, label %14, label %11, !dbg !3948

; <label>:11:                                     ; preds = %4, %7
  tail call void @llvm.dbg.value(metadata i64 5, i64 0, metadata !3924, metadata !598), !dbg !3950
  %12 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.107, i64 0, i64 0)) #10, !dbg !3951
  %13 = icmp eq i32 %12, 0, !dbg !3953
  br i1 %13, label %14, label %15, !dbg !3955

; <label>:14:                                     ; preds = %11, %7
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3909, metadata !598), !dbg !3929
  br label %15, !dbg !3957

; <label>:15:                                     ; preds = %1, %11, %14
  %16 = phi i1 [ false, %14 ], [ true, %11 ], [ true, %1 ]
  ret i1 %16, !dbg !3958
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define i8* @locale_charset() local_unnamed_addr #6 !dbg !3959 {
  %1 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %1, metadata !3971, metadata !598), !dbg !4045
  %2 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %2, metadata !4038, metadata !598), !dbg !4047
  %3 = tail call i8* @nl_langinfo(i32 14) #10, !dbg !4048
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3963, metadata !598), !dbg !4049
  %4 = icmp eq i8* %3, null, !dbg !4050
  %5 = select i1 %4, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.110, i64 0, i64 0), i8* %3, !dbg !4052
  tail call void @llvm.dbg.value(metadata i8* %5, i64 0, metadata !3963, metadata !598), !dbg !4049
  %6 = load volatile i8*, i8** @charset_aliases, align 8, !dbg !4053, !tbaa !606
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !3985, metadata !598) #10, !dbg !4054
  %7 = icmp eq i8* %6, null, !dbg !4055
  br i1 %7, label %8, label %127, !dbg !4056

; <label>:8:                                      ; preds = %0
  %9 = tail call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3.111, i64 0, i64 0)) #10, !dbg !4057
  tail call void @llvm.dbg.value(metadata i8* %9, i64 0, metadata !3986, metadata !598) #10, !dbg !4058
  %10 = icmp eq i8* %9, null, !dbg !4059
  br i1 %10, label %14, label %11, !dbg !4061

; <label>:11:                                     ; preds = %8
  %12 = load i8, i8* %9, align 1, !dbg !4062, !tbaa !898
  %13 = icmp eq i8 %12, 0, !dbg !4064
  br i1 %13, label %14, label %15, !dbg !4065

; <label>:14:                                     ; preds = %11, %8
  br label %15, !dbg !4067

; <label>:15:                                     ; preds = %14, %11
  %16 = phi i8* [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4.112, i64 0, i64 0), %14 ], [ %9, %11 ]
  tail call void @llvm.dbg.value(metadata i8* %16, i64 0, metadata !3986, metadata !598) #10, !dbg !4058
  %17 = tail call i64 @strlen(i8* nonnull %16) #13, !dbg !4068
  tail call void @llvm.dbg.value(metadata i64 %17, i64 0, metadata !3989, metadata !598) #10, !dbg !4069
  tail call void @llvm.dbg.value(metadata i64 13, i64 0, metadata !3991, metadata !598) #10, !dbg !4070
  %18 = icmp eq i64 %17, 0, !dbg !4071
  br i1 %18, label %24, label %19, !dbg !4072

; <label>:19:                                     ; preds = %15
  %20 = add i64 %17, -1, !dbg !4073
  %21 = getelementptr inbounds i8, i8* %16, i64 %20, !dbg !4073
  %22 = load i8, i8* %21, align 1, !dbg !4073, !tbaa !898
  %23 = icmp ne i8 %22, 47, !dbg !4075
  br label %24

; <label>:24:                                     ; preds = %19, %15
  %25 = phi i1 [ false, %15 ], [ %23, %19 ]
  %26 = zext i1 %25 to i64, !dbg !4076
  %27 = add i64 %17, 14, !dbg !4077
  %28 = add i64 %27, %26, !dbg !4078
  %29 = tail call noalias i8* @malloc(i64 %28) #10, !dbg !4079
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !3988, metadata !598) #10, !dbg !4080
  %30 = icmp eq i8* %29, null, !dbg !4081
  br i1 %30, label %125, label %31, !dbg !4081

; <label>:31:                                     ; preds = %24
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %29, i8* %16, i64 %17, i32 1, i1 false) #10, !dbg !4082
  %32 = getelementptr inbounds i8, i8* %29, i64 %17
  br i1 %25, label %33, label %35, !dbg !4085

; <label>:33:                                     ; preds = %31
  store i8 47, i8* %32, align 1, !dbg !4086, !tbaa !898
  %34 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !4088
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %34, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.113, i64 0, i64 0), i64 14, i32 1, i1 false) #10, !dbg !4089
  br label %37, !dbg !4090

; <label>:35:                                     ; preds = %31
  %36 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !4088
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.113, i64 0, i64 0), i64 14, i32 1, i1 false) #10, !dbg !4089
  br label %37, !dbg !4090

; <label>:37:                                     ; preds = %35, %33
  %38 = tail call i32 (i8*, i32, ...) @open(i8* nonnull %29, i32 131072) #10, !dbg !4091
  tail call void @llvm.dbg.value(metadata i32 %38, i64 0, metadata !3993, metadata !598) #10, !dbg !4092
  %39 = icmp slt i32 %38, 0, !dbg !4093
  br i1 %39, label %123, label %40, !dbg !4094

; <label>:40:                                     ; preds = %37
  %41 = tail call %struct._IO_FILE* @fdopen(i32 %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.114, i64 0, i64 0)) #10, !dbg !4095
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !3994, metadata !598) #10, !dbg !4096
  %42 = icmp eq %struct._IO_FILE* %41, null, !dbg !4097
  br i1 %42, label %48, label %43, !dbg !4098

; <label>:43:                                     ; preds = %40
  %44 = getelementptr inbounds [51 x i8], [51 x i8]* %1, i64 0, i64 0
  %45 = getelementptr inbounds [51 x i8], [51 x i8]* %2, i64 0, i64 0
  %46 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 1
  %47 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 2
  br label %50, !dbg !4099

; <label>:48:                                     ; preds = %40
  %49 = tail call i32 @close(i32 %38) #10, !dbg !4100
  br label %123, !dbg !4102

; <label>:50:                                     ; preds = %111, %43
  %51 = phi i64 [ %112, %111 ], [ 0, %43 ]
  %52 = phi i8* [ %113, %111 ], [ null, %43 ]
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !4035, metadata !598) #10, !dbg !4099
  call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !4036, metadata !598) #10, !dbg !4103
  call void @llvm.lifetime.start(i64 51, i8* nonnull %44) #10, !dbg !4104
  call void @llvm.lifetime.start(i64 51, i8* nonnull %45) #10, !dbg !4105
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !4106, metadata !598) #10, !dbg !4111
  %53 = load i8*, i8** %46, align 8, !dbg !4113, !tbaa !4114
  %54 = load i8*, i8** %47, align 8, !dbg !4113, !tbaa !4115
  %55 = icmp ult i8* %53, %54, !dbg !4113
  br i1 %55, label %58, label %56, !dbg !4113, !prof !4116

; <label>:56:                                     ; preds = %50
  %57 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #10, !dbg !4117
  br label %62, !dbg !4117

; <label>:58:                                     ; preds = %50
  %59 = getelementptr inbounds i8, i8* %53, i64 1, !dbg !4119
  store i8* %59, i8** %46, align 8, !dbg !4119, !tbaa !4114
  %60 = load i8, i8* %53, align 1, !dbg !4119, !tbaa !898
  %61 = zext i8 %60 to i32, !dbg !4119
  br label %62, !dbg !4119

; <label>:62:                                     ; preds = %58, %56
  %63 = phi i32 [ %57, %56 ], [ %61, %58 ], !dbg !4121
  call void @llvm.dbg.value(metadata i32 %63, i64 0, metadata !4037, metadata !598) #10, !dbg !4123
  switch i32 %63, label %77 [
    i32 -1, label %115
    i32 32, label %111
    i32 10, label %111
    i32 9, label %111
    i32 35, label %64
  ], !dbg !4124

; <label>:64:                                     ; preds = %62
  br label %65, !dbg !4125

; <label>:65:                                     ; preds = %64, %75
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !4106, metadata !598) #10, !dbg !4125
  %66 = load i8*, i8** %46, align 8, !dbg !4129, !tbaa !4114
  %67 = load i8*, i8** %47, align 8, !dbg !4129, !tbaa !4115
  %68 = icmp ult i8* %66, %67, !dbg !4129
  br i1 %68, label %71, label %69, !dbg !4129, !prof !4116

; <label>:69:                                     ; preds = %65
  %70 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #10, !dbg !4130
  br label %75, !dbg !4130

; <label>:71:                                     ; preds = %65
  %72 = getelementptr inbounds i8, i8* %66, i64 1, !dbg !4131
  store i8* %72, i8** %46, align 8, !dbg !4131, !tbaa !4114
  %73 = load i8, i8* %66, align 1, !dbg !4131, !tbaa !898
  %74 = zext i8 %73 to i32, !dbg !4131
  br label %75, !dbg !4131

; <label>:75:                                     ; preds = %71, %69
  %76 = phi i32 [ %70, %69 ], [ %74, %71 ], !dbg !4132
  call void @llvm.dbg.value(metadata i32 %76, i64 0, metadata !4037, metadata !598) #10, !dbg !4123
  switch i32 %76, label %65 [
    i32 -1, label %114
    i32 10, label %110
  ], !dbg !4133, !llvm.loop !4135

; <label>:77:                                     ; preds = %62
  %78 = call i32 @ungetc(i32 %63, %struct._IO_FILE* nonnull %41) #10, !dbg !4138
  %79 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* nonnull %41, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6.115, i64 0, i64 0), i8* nonnull %44, i8* nonnull %45) #10, !dbg !4139
  %80 = icmp slt i32 %79, 2, !dbg !4141
  br i1 %80, label %115, label %81, !dbg !4142

; <label>:81:                                     ; preds = %77
  %82 = call i64 @strlen(i8* nonnull %44) #13, !dbg !4143
  call void @llvm.dbg.value(metadata i64 %82, i64 0, metadata !4042, metadata !598) #10, !dbg !4144
  %83 = call i64 @strlen(i8* nonnull %45) #13, !dbg !4145
  call void @llvm.dbg.value(metadata i64 %83, i64 0, metadata !4043, metadata !598) #10, !dbg !4146
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !4044, metadata !598) #10, !dbg !4147
  %84 = icmp eq i64 %51, 0, !dbg !4148
  %85 = add i64 %82, 1
  %86 = add i64 %85, %83
  %87 = add i64 %86, 1
  br i1 %84, label %88, label %91, !dbg !4150

; <label>:88:                                     ; preds = %81
  call void @llvm.dbg.value(metadata i64 %87, i64 0, metadata !4036, metadata !598) #10, !dbg !4103
  %89 = add i64 %86, 2, !dbg !4151
  %90 = call noalias i8* @malloc(i64 %89) #10, !dbg !4153
  call void @llvm.dbg.value(metadata i8* %90, i64 0, metadata !4035, metadata !598) #10, !dbg !4099
  br label %95, !dbg !4154

; <label>:91:                                     ; preds = %81
  %92 = add i64 %87, %51, !dbg !4155
  call void @llvm.dbg.value(metadata i64 %92, i64 0, metadata !4036, metadata !598) #10, !dbg !4103
  %93 = add i64 %92, 1, !dbg !4157
  %94 = call i8* @realloc(i8* %52, i64 %93) #10, !dbg !4158
  call void @llvm.dbg.value(metadata i8* %94, i64 0, metadata !4035, metadata !598) #10, !dbg !4099
  br label %95

; <label>:95:                                     ; preds = %91, %88
  %96 = phi i64 [ %87, %88 ], [ %92, %91 ]
  %97 = phi i8* [ %90, %88 ], [ %94, %91 ]
  call void @llvm.dbg.value(metadata i8* %97, i64 0, metadata !4035, metadata !598) #10, !dbg !4099
  call void @llvm.dbg.value(metadata i64 %96, i64 0, metadata !4036, metadata !598) #10, !dbg !4103
  %98 = icmp eq i8* %97, null, !dbg !4159
  br i1 %98, label %99, label %100, !dbg !4161

; <label>:99:                                     ; preds = %95
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4036, metadata !598) #10, !dbg !4103
  call void @free(i8* %52) #10, !dbg !4162
  br label %116, !dbg !4164

; <label>:100:                                    ; preds = %95
  %101 = getelementptr inbounds i8, i8* %97, i64 %96, !dbg !4165
  %102 = xor i64 %83, -1, !dbg !4166
  %103 = getelementptr inbounds i8, i8* %101, i64 %102, !dbg !4166
  %104 = xor i64 %82, -1, !dbg !4167
  %105 = getelementptr inbounds i8, i8* %103, i64 %104, !dbg !4167
  call void @llvm.dbg.value(metadata i8* %105, i64 0, metadata !4168, metadata !598) #10, !dbg !4177
  call void @llvm.dbg.value(metadata i8* %44, i64 0, metadata !4176, metadata !598) #10, !dbg !4177
  %106 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %105, i1 false) #10, !dbg !4179
  %107 = call i8* @__strcpy_chk(i8* nonnull %105, i8* nonnull %44, i64 %106) #10, !dbg !4180
  call void @llvm.dbg.value(metadata i8* %103, i64 0, metadata !4168, metadata !598) #10, !dbg !4181
  call void @llvm.dbg.value(metadata i8* %45, i64 0, metadata !4176, metadata !598) #10, !dbg !4181
  %108 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %103, i1 false) #10, !dbg !4183
  %109 = call i8* @__strcpy_chk(i8* nonnull %103, i8* nonnull %45, i64 %108) #10, !dbg !4184
  br label %111, !dbg !4185

; <label>:110:                                    ; preds = %75
  br label %111, !dbg !4099

; <label>:111:                                    ; preds = %110, %100, %62, %62, %62
  %112 = phi i64 [ %96, %100 ], [ %51, %62 ], [ %51, %62 ], [ %51, %62 ], [ %51, %110 ]
  %113 = phi i8* [ %97, %100 ], [ %52, %62 ], [ %52, %62 ], [ %52, %62 ], [ %52, %110 ]
  call void @llvm.dbg.value(metadata i8* %113, i64 0, metadata !4035, metadata !598) #10, !dbg !4099
  call void @llvm.dbg.value(metadata i64 %112, i64 0, metadata !4036, metadata !598) #10, !dbg !4103
  call void @llvm.lifetime.end(i64 51, i8* nonnull %45) #10, !dbg !4185
  call void @llvm.lifetime.end(i64 51, i8* nonnull %44) #10, !dbg !4185
  br label %50

; <label>:114:                                    ; preds = %75
  br label %116, !dbg !4099

; <label>:115:                                    ; preds = %62, %77
  br label %116, !dbg !4099

; <label>:116:                                    ; preds = %115, %114, %99
  %117 = phi i64 [ 0, %99 ], [ %51, %114 ], [ %51, %115 ]
  %118 = phi i8* [ null, %99 ], [ %52, %114 ], [ %52, %115 ]
  call void @llvm.dbg.value(metadata i8* %113, i64 0, metadata !4035, metadata !598) #10, !dbg !4099
  call void @llvm.dbg.value(metadata i64 %112, i64 0, metadata !4036, metadata !598) #10, !dbg !4103
  call void @llvm.lifetime.end(i64 51, i8* nonnull %45) #10, !dbg !4185
  call void @llvm.lifetime.end(i64 51, i8* nonnull %44) #10, !dbg !4185
  %119 = call i32 @rpl_fclose(%struct._IO_FILE* nonnull %41) #10, !dbg !4186
  %120 = icmp eq i64 %117, 0, !dbg !4187
  br i1 %120, label %123, label %121, !dbg !4189

; <label>:121:                                    ; preds = %116
  %122 = getelementptr inbounds i8, i8* %118, i64 %117, !dbg !4190
  store i8 0, i8* %122, align 1, !dbg !4192, !tbaa !898
  call void @llvm.dbg.value(metadata i8* %113, i64 0, metadata !3985, metadata !598) #10, !dbg !4054
  br label %123

; <label>:123:                                    ; preds = %121, %116, %48, %37
  %124 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.110, i64 0, i64 0), %37 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.110, i64 0, i64 0), %48 ], [ %118, %121 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.110, i64 0, i64 0), %116 ]
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !3985, metadata !598) #10, !dbg !4054
  call void @free(i8* %29) #10, !dbg !4193
  br label %125

; <label>:125:                                    ; preds = %123, %24
  %126 = phi i8* [ %124, %123 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.110, i64 0, i64 0), %24 ]
  call void @llvm.dbg.value(metadata i8* %126, i64 0, metadata !3985, metadata !598) #10, !dbg !4054
  store volatile i8* %126, i8** @charset_aliases, align 8, !dbg !4194, !tbaa !606
  br label %127, !dbg !4195

; <label>:127:                                    ; preds = %0, %125
  %128 = phi i8* [ %6, %0 ], [ %126, %125 ]
  call void @llvm.dbg.value(metadata i8* %128, i64 0, metadata !3964, metadata !598), !dbg !4196
  %129 = load i8, i8* %128, align 1, !dbg !4197, !tbaa !898
  %130 = icmp eq i8 %129, 0, !dbg !4198
  br i1 %130, label %157, label %131, !dbg !4199

; <label>:131:                                    ; preds = %127
  br label %132, !dbg !4201

; <label>:132:                                    ; preds = %131, %147
  %133 = phi i8 [ %154, %147 ], [ %129, %131 ]
  %134 = phi i8* [ %153, %147 ], [ %128, %131 ]
  %135 = call i32 @strcmp(i8* %5, i8* %134) #10, !dbg !4201
  %136 = icmp eq i32 %135, 0, !dbg !4202
  br i1 %136, label %143, label %137, !dbg !4203

; <label>:137:                                    ; preds = %132
  %138 = icmp eq i8 %133, 42, !dbg !4204
  br i1 %138, label %139, label %147, !dbg !4206

; <label>:139:                                    ; preds = %137
  %140 = getelementptr inbounds i8, i8* %134, i64 1, !dbg !4207
  %141 = load i8, i8* %140, align 1, !dbg !4207, !tbaa !898
  %142 = icmp eq i8 %141, 0, !dbg !4209
  br i1 %142, label %143, label %147, !dbg !4210

; <label>:143:                                    ; preds = %139, %132
  %144 = call i64 @strlen(i8* %134) #13, !dbg !4212
  %145 = getelementptr inbounds i8, i8* %134, i64 %144, !dbg !4214
  %146 = getelementptr inbounds i8, i8* %145, i64 1, !dbg !4215
  call void @llvm.dbg.value(metadata i8* %146, i64 0, metadata !3963, metadata !598), !dbg !4049
  br label %157, !dbg !4216

; <label>:147:                                    ; preds = %137, %139
  %148 = call i64 @strlen(i8* %134) #13, !dbg !4217
  %149 = add i64 %148, 1, !dbg !4218
  %150 = getelementptr inbounds i8, i8* %134, i64 %149, !dbg !4219
  call void @llvm.dbg.value(metadata i8* %150, i64 0, metadata !3964, metadata !598), !dbg !4196
  %151 = call i64 @strlen(i8* %150) #13, !dbg !4220
  %152 = add i64 %151, 1, !dbg !4221
  %153 = getelementptr inbounds i8, i8* %150, i64 %152, !dbg !4222
  call void @llvm.dbg.value(metadata i8* %153, i64 0, metadata !3964, metadata !598), !dbg !4196
  call void @llvm.dbg.value(metadata i8* %153, i64 0, metadata !3964, metadata !598), !dbg !4196
  %154 = load i8, i8* %153, align 1, !dbg !4197, !tbaa !898
  %155 = icmp eq i8 %154, 0, !dbg !4198
  br i1 %155, label %156, label %132, !dbg !4199, !llvm.loop !4223

; <label>:156:                                    ; preds = %147
  br label %157, !dbg !4049

; <label>:157:                                    ; preds = %156, %127, %143
  %158 = phi i8* [ %146, %143 ], [ %5, %127 ], [ %5, %156 ]
  call void @llvm.dbg.value(metadata i8* %158, i64 0, metadata !3963, metadata !598), !dbg !4049
  %159 = load i8, i8* %158, align 1, !dbg !4226, !tbaa !898
  %160 = icmp eq i8 %159, 0, !dbg !4228
  %161 = select i1 %160, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.116, i64 0, i64 0), i8* %158, !dbg !4229
  call void @llvm.dbg.value(metadata i8* %161, i64 0, metadata !3963, metadata !598), !dbg !4049
  ret i8* %161, !dbg !4230
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

; Function Attrs: nounwind readnone
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1) #1

; Function Attrs: nounwind
declare i8* @__strcpy_chk(i8*, i8*, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fclose(%struct._IO_FILE* nonnull) local_unnamed_addr #6 !dbg !4231 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4276, metadata !598), !dbg !4280
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4277, metadata !598), !dbg !4281
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4279, metadata !598), !dbg !4282
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !4283
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !4278, metadata !598), !dbg !4284
  %3 = icmp slt i32 %2, 0, !dbg !4285
  br i1 %3, label %4, label %6, !dbg !4287

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4288
  br label %24, !dbg !4289

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #10, !dbg !4290
  %8 = icmp eq i32 %7, 0, !dbg !4290
  br i1 %8, label %13, label %9, !dbg !4292

; <label>:9:                                      ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !4293
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #10, !dbg !4295
  %12 = icmp eq i64 %11, -1, !dbg !4297
  br i1 %12, label %16, label %13, !dbg !4298

; <label>:13:                                     ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #10, !dbg !4299
  %15 = icmp eq i32 %14, 0, !dbg !4299
  br i1 %15, label %16, label %18, !dbg !4300

; <label>:16:                                     ; preds = %13, %9
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !4277, metadata !598), !dbg !4281
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4302
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !4279, metadata !598), !dbg !4282
  br label %24, !dbg !4303

; <label>:18:                                     ; preds = %13
  %19 = tail call i32* @__errno_location() #1, !dbg !4304
  %20 = load i32, i32* %19, align 4, !dbg !4304, !tbaa !724
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !4277, metadata !598), !dbg !4281
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !4277, metadata !598), !dbg !4281
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4302
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !4279, metadata !598), !dbg !4282
  %22 = icmp eq i32 %20, 0, !dbg !4305
  br i1 %22, label %24, label %23, !dbg !4303

; <label>:23:                                     ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !4307, !tbaa !724
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !4279, metadata !598), !dbg !4282
  br label %24, !dbg !4309

; <label>:24:                                     ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ]
  ret i32 %25, !dbg !4310
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
define i32 @rpl_fflush(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !4311 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4356, metadata !598), !dbg !4357
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !4358
  br i1 %2, label %6, label %3, !dbg !4360

; <label>:3:                                      ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #10, !dbg !4361
  %5 = icmp eq i32 %4, 0, !dbg !4361
  br i1 %5, label %6, label %8, !dbg !4363

; <label>:6:                                      ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !4365
  br label %17, !dbg !4366

; <label>:8:                                      ; preds = %3
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4367, metadata !598) #10, !dbg !4372
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4374
  %10 = load i32, i32* %9, align 8, !dbg !4374, !tbaa !3884
  %11 = and i32 %10, 256, !dbg !4376
  %12 = icmp eq i32 %11, 0, !dbg !4376
  br i1 %12, label %15, label %13, !dbg !4377

; <label>:13:                                     ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #10, !dbg !4378
  br label %15, !dbg !4378

; <label>:15:                                     ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !4379
  br label %17, !dbg !4380

; <label>:17:                                     ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ]
  ret i32 %18, !dbg !4381
}

; Function Attrs: nounwind
declare i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull, i64, i32) local_unnamed_addr #6 !dbg !4382 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4428, metadata !598), !dbg !4434
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4429, metadata !598), !dbg !4435
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !4430, metadata !598), !dbg !4436
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !4437
  %5 = load i8*, i8** %4, align 8, !dbg !4437, !tbaa !4115
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !4438
  %7 = load i8*, i8** %6, align 8, !dbg !4438, !tbaa !4114
  %8 = icmp eq i8* %5, %7, !dbg !4439
  br i1 %8, label %9, label %28, !dbg !4440

; <label>:9:                                      ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !4441
  %11 = load i8*, i8** %10, align 8, !dbg !4441, !tbaa !4443
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !4444
  %13 = load i8*, i8** %12, align 8, !dbg !4444, !tbaa !4445
  %14 = icmp eq i8* %11, %13, !dbg !4446
  br i1 %14, label %15, label %28, !dbg !4447

; <label>:15:                                     ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !4448
  %17 = load i8*, i8** %16, align 8, !dbg !4448, !tbaa !4449
  %18 = icmp eq i8* %17, null, !dbg !4450
  br i1 %18, label %19, label %28, !dbg !4451

; <label>:19:                                     ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !4453
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #10, !dbg !4454
  tail call void @llvm.dbg.value(metadata i64 %21, i64 0, metadata !4431, metadata !598), !dbg !4456
  %22 = icmp eq i64 %21, -1, !dbg !4457
  br i1 %22, label %30, label %23, !dbg !4459

; <label>:23:                                     ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4460
  %25 = load i32, i32* %24, align 8, !dbg !4461, !tbaa !3884
  %26 = and i32 %25, -17, !dbg !4461
  store i32 %26, i32* %24, align 8, !dbg !4461, !tbaa !3884
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !4462
  store i64 %21, i64* %27, align 8, !dbg !4463, !tbaa !4464
  br label %30, !dbg !4465

; <label>:28:                                     ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !4466
  br label %30, !dbg !4467

; <label>:30:                                     ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ]
  ret i32 %31, !dbg !4468
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
attributes #8 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { argmemonly nounwind }
attributes #10 = { nounwind }
attributes #11 = { nounwind readonly sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { inlinehint nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #13 = { nounwind readonly }
attributes #14 = { noreturn nounwind }
attributes #15 = { noreturn }
attributes #16 = { cold }

!llvm.dbg.cu = !{!2, !533, !79, !85, !94, !535, !101, !108, !546, !178, !554, !571, !573, !575, !577, !579, !187, !582, !584, !586}
!llvm.ident = !{!588, !588, !588, !588, !588, !588, !588, !588, !588, !588, !588, !588, !588, !588, !588, !588, !588, !588, !588, !588}
!llvm.module.flags = !{!589, !590, !591, !592}

!0 = !DIGlobalVariableExpression(var: !1)
!1 = distinct !DIGlobalVariable(name: "longopts", scope: !2, file: !3, line: 38, type: !65, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !19, globals: !33)
!3 = !DIFile(filename: "src/mkfifo.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4 = !{!5}
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
!19 = !{!20, !22, !23, !26, !28, !31}
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!21 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !24, line: 62, baseType: !25)
!24 = !DIFile(filename: "/usr/bin/../lib/clang/4.0.1/include/stddef.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!25 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!27 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!29 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !30)
!30 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!32 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !21)
!33 = !{!34, !0}
!34 = !DIGlobalVariableExpression(var: !35)
!35 = distinct !DIGlobalVariable(name: "infomap", scope: !36, file: !37, line: 632, type: !62, isLocal: true, isDefinition: true)
!36 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !37, file: !37, line: 630, type: !38, isLocal: true, isDefinition: true, scopeLine: 631, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !40)
!37 = !DIFile(filename: "src/system.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!38 = !DISubroutineType(types: !39)
!39 = !{null, !31}
!40 = !{!41, !42, !43, !50, !52, !53, !54, !57, !58, !60}
!41 = !DILocalVariable(name: "program", arg: 1, scope: !36, file: !37, line: 630, type: !31)
!42 = !DILocalVariable(name: "node", scope: !36, file: !37, line: 642, type: !31)
!43 = !DILocalVariable(name: "map_prog", scope: !36, file: !37, line: 643, type: !44)
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!45 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !46)
!46 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !36, file: !37, line: 632, size: 128, elements: !47)
!47 = !{!48, !49}
!48 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !46, file: !37, line: 632, baseType: !31, size: 64)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !46, file: !37, line: 632, baseType: !31, size: 64, offset: 64)
!50 = !DILocalVariable(name: "__s1_len", scope: !51, file: !37, line: 645, type: !23)
!51 = distinct !DILexicalBlock(scope: !36, file: !37, line: 645, column: 33)
!52 = !DILocalVariable(name: "__s2_len", scope: !51, file: !37, line: 645, type: !23)
!53 = !DILocalVariable(name: "lc_messages", scope: !36, file: !37, line: 655, type: !31)
!54 = !DILocalVariable(name: "__s1_len", scope: !55, file: !37, line: 656, type: !23)
!55 = distinct !DILexicalBlock(scope: !56, file: !37, line: 656, column: 22)
!56 = distinct !DILexicalBlock(scope: !36, file: !37, line: 656, column: 7)
!57 = !DILocalVariable(name: "__s2_len", scope: !55, file: !37, line: 656, type: !23)
!58 = !DILocalVariable(name: "__s2", scope: !59, file: !37, line: 656, type: !28)
!59 = distinct !DILexicalBlock(scope: !55, file: !37, line: 656, column: 22)
!60 = !DILocalVariable(name: "__result", scope: !59, file: !37, line: 656, type: !61)
!61 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!62 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 896, elements: !63)
!63 = !{!64}
!64 = !DISubrange(count: 7)
!65 = !DICompositeType(tag: DW_TAG_array_type, baseType: !66, size: 1280, elements: !75)
!66 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !67)
!67 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !68, line: 104, size: 256, elements: !69)
!68 = !DIFile(filename: "/usr/include/getopt.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!69 = !{!70, !71, !72, !74}
!70 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !67, file: !68, line: 106, baseType: !31, size: 64)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !67, file: !68, line: 109, baseType: !61, size: 32, offset: 64)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !67, file: !68, line: 110, baseType: !73, size: 64, offset: 128)
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !67, file: !68, line: 111, baseType: !61, size: 32, offset: 192)
!75 = !{!76}
!76 = !DISubrange(count: 5)
!77 = !DIGlobalVariableExpression(var: !78)
!78 = distinct !DIGlobalVariable(name: "Version", scope: !79, file: !80, line: 2, type: !31, isLocal: false, isDefinition: true)
!79 = distinct !DICompileUnit(language: DW_LANG_C99, file: !80, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !81, globals: !82)
!80 = !DIFile(filename: "src/version.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!81 = !{}
!82 = !{!77}
!83 = !DIGlobalVariableExpression(var: !84)
!84 = distinct !DIGlobalVariable(name: "file_name", scope: !85, file: !90, line: 36, type: !31, isLocal: true, isDefinition: true)
!85 = distinct !DICompileUnit(language: DW_LANG_C99, file: !86, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !81, globals: !87)
!86 = !DIFile(filename: "./lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!87 = !{!83, !88}
!88 = !DIGlobalVariableExpression(var: !89)
!89 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !85, file: !90, line: 46, type: !91, isLocal: true, isDefinition: true)
!90 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!91 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!92 = !DIGlobalVariableExpression(var: !93)
!93 = distinct !DIGlobalVariable(name: "exit_failure", scope: !94, file: !97, line: 24, type: !98, isLocal: false, isDefinition: true)
!94 = distinct !DICompileUnit(language: DW_LANG_C99, file: !95, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !81, globals: !96)
!95 = !DIFile(filename: "./lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!96 = !{!92}
!97 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!98 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !61)
!99 = !DIGlobalVariableExpression(var: !100)
!100 = distinct !DIGlobalVariable(name: "program_name", scope: !101, file: !105, line: 33, type: !31, isLocal: false, isDefinition: true)
!101 = distinct !DICompileUnit(language: DW_LANG_C99, file: !102, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !81, retainedTypes: !103, globals: !104)
!102 = !DIFile(filename: "./lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!103 = !{!22, !20}
!104 = !{!99}
!105 = !DIFile(filename: "lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!106 = !DIGlobalVariableExpression(var: !107)
!107 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !108, file: !136, line: 77, type: !172, isLocal: false, isDefinition: true)
!108 = distinct !DICompileUnit(language: DW_LANG_C99, file: !109, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !110, retainedTypes: !131, globals: !133)
!109 = !DIFile(filename: "./lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!110 = !{!5, !111, !116}
!111 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !6, line: 242, size: 32, elements: !112)
!112 = !{!113, !114, !115}
!113 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!114 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!115 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!116 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !117, line: 46, size: 32, elements: !118)
!117 = !DIFile(filename: "/usr/include/ctype.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!118 = !{!119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130}
!119 = !DIEnumerator(name: "_ISupper", value: 256)
!120 = !DIEnumerator(name: "_ISlower", value: 512)
!121 = !DIEnumerator(name: "_ISalpha", value: 1024)
!122 = !DIEnumerator(name: "_ISdigit", value: 2048)
!123 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!124 = !DIEnumerator(name: "_ISspace", value: 8192)
!125 = !DIEnumerator(name: "_ISprint", value: 16384)
!126 = !DIEnumerator(name: "_ISgraph", value: 32768)
!127 = !DIEnumerator(name: "_ISblank", value: 1)
!128 = !DIEnumerator(name: "_IScntrl", value: 2)
!129 = !DIEnumerator(name: "_ISpunct", value: 4)
!130 = !DIEnumerator(name: "_ISalnum", value: 8)
!131 = !{!61, !132, !23, !20}
!132 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!133 = !{!106, !134, !141, !154, !156, !161, !168, !170}
!134 = !DIGlobalVariableExpression(var: !135)
!135 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !108, file: !136, line: 93, type: !137, isLocal: false, isDefinition: true)
!136 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!137 = !DICompositeType(tag: DW_TAG_array_type, baseType: !138, size: 320, elements: !139)
!138 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!139 = !{!140}
!140 = !DISubrange(count: 10)
!141 = !DIGlobalVariableExpression(var: !142)
!142 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !108, file: !136, line: 1043, type: !143, isLocal: false, isDefinition: true)
!143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !136, line: 57, size: 448, elements: !144)
!144 = !{!145, !146, !147, !152, !153}
!145 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !143, file: !136, line: 60, baseType: !5, size: 32)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !143, file: !136, line: 63, baseType: !61, size: 32, offset: 32)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !143, file: !136, line: 67, baseType: !148, size: 256, offset: 64)
!148 = !DICompositeType(tag: DW_TAG_array_type, baseType: !149, size: 256, elements: !150)
!149 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!150 = !{!151}
!151 = !DISubrange(count: 8)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !143, file: !136, line: 70, baseType: !31, size: 64, offset: 320)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !143, file: !136, line: 73, baseType: !31, size: 64, offset: 384)
!154 = !DIGlobalVariableExpression(var: !155)
!155 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !108, file: !136, line: 108, type: !143, isLocal: true, isDefinition: true)
!156 = !DIGlobalVariableExpression(var: !157)
!157 = distinct !DIGlobalVariable(name: "slot0", scope: !108, file: !136, line: 834, type: !158, isLocal: true, isDefinition: true)
!158 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 2048, elements: !159)
!159 = !{!160}
!160 = !DISubrange(count: 256)
!161 = !DIGlobalVariableExpression(var: !162)
!162 = distinct !DIGlobalVariable(name: "slotvec", scope: !108, file: !136, line: 837, type: !163, isLocal: true, isDefinition: true)
!163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 64)
!164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !136, line: 826, size: 128, elements: !165)
!165 = !{!166, !167}
!166 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !164, file: !136, line: 828, baseType: !23, size: 64)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !164, file: !136, line: 829, baseType: !20, size: 64, offset: 64)
!168 = !DIGlobalVariableExpression(var: !169)
!169 = distinct !DIGlobalVariable(name: "nslots", scope: !108, file: !136, line: 835, type: !61, isLocal: true, isDefinition: true)
!170 = !DIGlobalVariableExpression(var: !171)
!171 = distinct !DIGlobalVariable(name: "slotvec0", scope: !108, file: !136, line: 836, type: !164, isLocal: true, isDefinition: true)
!172 = !DICompositeType(tag: DW_TAG_array_type, baseType: !173, size: 704, elements: !174)
!173 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !31)
!174 = !{!175}
!175 = !DISubrange(count: 11)
!176 = !DIGlobalVariableExpression(var: !177)
!177 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !178, file: !181, line: 26, type: !182, isLocal: false, isDefinition: true)
!178 = distinct !DICompileUnit(language: DW_LANG_C99, file: !179, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !81, globals: !180)
!179 = !DIFile(filename: "./lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!180 = !{!176}
!181 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!182 = !DICompositeType(tag: DW_TAG_array_type, baseType: !32, size: 376, elements: !183)
!183 = !{!184}
!184 = !DISubrange(count: 47)
!185 = !DIGlobalVariableExpression(var: !186)
!186 = distinct !DIGlobalVariable(name: "charset_aliases", scope: !187, file: !531, line: 120, type: !532, isLocal: true, isDefinition: true)
!187 = distinct !DICompileUnit(language: DW_LANG_C99, file: !188, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !189, retainedTypes: !528, globals: !530)
!188 = !DIFile(filename: "./lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!189 = !{!190}
!190 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !191, line: 41, size: 32, elements: !192)
!191 = !DIFile(filename: "/usr/include/langinfo.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!192 = !{!193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527}
!193 = !DIEnumerator(name: "ABDAY_1", value: 131072)
!194 = !DIEnumerator(name: "ABDAY_2", value: 131073)
!195 = !DIEnumerator(name: "ABDAY_3", value: 131074)
!196 = !DIEnumerator(name: "ABDAY_4", value: 131075)
!197 = !DIEnumerator(name: "ABDAY_5", value: 131076)
!198 = !DIEnumerator(name: "ABDAY_6", value: 131077)
!199 = !DIEnumerator(name: "ABDAY_7", value: 131078)
!200 = !DIEnumerator(name: "DAY_1", value: 131079)
!201 = !DIEnumerator(name: "DAY_2", value: 131080)
!202 = !DIEnumerator(name: "DAY_3", value: 131081)
!203 = !DIEnumerator(name: "DAY_4", value: 131082)
!204 = !DIEnumerator(name: "DAY_5", value: 131083)
!205 = !DIEnumerator(name: "DAY_6", value: 131084)
!206 = !DIEnumerator(name: "DAY_7", value: 131085)
!207 = !DIEnumerator(name: "ABMON_1", value: 131086)
!208 = !DIEnumerator(name: "ABMON_2", value: 131087)
!209 = !DIEnumerator(name: "ABMON_3", value: 131088)
!210 = !DIEnumerator(name: "ABMON_4", value: 131089)
!211 = !DIEnumerator(name: "ABMON_5", value: 131090)
!212 = !DIEnumerator(name: "ABMON_6", value: 131091)
!213 = !DIEnumerator(name: "ABMON_7", value: 131092)
!214 = !DIEnumerator(name: "ABMON_8", value: 131093)
!215 = !DIEnumerator(name: "ABMON_9", value: 131094)
!216 = !DIEnumerator(name: "ABMON_10", value: 131095)
!217 = !DIEnumerator(name: "ABMON_11", value: 131096)
!218 = !DIEnumerator(name: "ABMON_12", value: 131097)
!219 = !DIEnumerator(name: "MON_1", value: 131098)
!220 = !DIEnumerator(name: "MON_2", value: 131099)
!221 = !DIEnumerator(name: "MON_3", value: 131100)
!222 = !DIEnumerator(name: "MON_4", value: 131101)
!223 = !DIEnumerator(name: "MON_5", value: 131102)
!224 = !DIEnumerator(name: "MON_6", value: 131103)
!225 = !DIEnumerator(name: "MON_7", value: 131104)
!226 = !DIEnumerator(name: "MON_8", value: 131105)
!227 = !DIEnumerator(name: "MON_9", value: 131106)
!228 = !DIEnumerator(name: "MON_10", value: 131107)
!229 = !DIEnumerator(name: "MON_11", value: 131108)
!230 = !DIEnumerator(name: "MON_12", value: 131109)
!231 = !DIEnumerator(name: "AM_STR", value: 131110)
!232 = !DIEnumerator(name: "PM_STR", value: 131111)
!233 = !DIEnumerator(name: "D_T_FMT", value: 131112)
!234 = !DIEnumerator(name: "D_FMT", value: 131113)
!235 = !DIEnumerator(name: "T_FMT", value: 131114)
!236 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115)
!237 = !DIEnumerator(name: "ERA", value: 131116)
!238 = !DIEnumerator(name: "__ERA_YEAR", value: 131117)
!239 = !DIEnumerator(name: "ERA_D_FMT", value: 131118)
!240 = !DIEnumerator(name: "ALT_DIGITS", value: 131119)
!241 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120)
!242 = !DIEnumerator(name: "ERA_T_FMT", value: 131121)
!243 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122)
!244 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123)
!245 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124)
!246 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125)
!247 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126)
!248 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127)
!249 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128)
!250 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129)
!251 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130)
!252 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131)
!253 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132)
!254 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133)
!255 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134)
!256 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135)
!257 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136)
!258 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137)
!259 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138)
!260 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139)
!261 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140)
!262 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141)
!263 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142)
!264 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143)
!265 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144)
!266 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145)
!267 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146)
!268 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147)
!269 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148)
!270 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149)
!271 = !DIEnumerator(name: "_NL_WMON_1", value: 131150)
!272 = !DIEnumerator(name: "_NL_WMON_2", value: 131151)
!273 = !DIEnumerator(name: "_NL_WMON_3", value: 131152)
!274 = !DIEnumerator(name: "_NL_WMON_4", value: 131153)
!275 = !DIEnumerator(name: "_NL_WMON_5", value: 131154)
!276 = !DIEnumerator(name: "_NL_WMON_6", value: 131155)
!277 = !DIEnumerator(name: "_NL_WMON_7", value: 131156)
!278 = !DIEnumerator(name: "_NL_WMON_8", value: 131157)
!279 = !DIEnumerator(name: "_NL_WMON_9", value: 131158)
!280 = !DIEnumerator(name: "_NL_WMON_10", value: 131159)
!281 = !DIEnumerator(name: "_NL_WMON_11", value: 131160)
!282 = !DIEnumerator(name: "_NL_WMON_12", value: 131161)
!283 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162)
!284 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163)
!285 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164)
!286 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165)
!287 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166)
!288 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167)
!289 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168)
!290 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169)
!291 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170)
!292 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171)
!293 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172)
!294 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173)
!295 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174)
!296 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175)
!297 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176)
!298 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177)
!299 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178)
!300 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179)
!301 = !DIEnumerator(name: "_DATE_FMT", value: 131180)
!302 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181)
!303 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182)
!304 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131183)
!305 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608)
!306 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609)
!307 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610)
!308 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611)
!309 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612)
!310 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613)
!311 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614)
!312 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615)
!313 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616)
!314 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617)
!315 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618)
!316 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619)
!317 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620)
!318 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621)
!319 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622)
!320 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623)
!321 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624)
!322 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625)
!323 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626)
!324 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627)
!325 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0)
!326 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1)
!327 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2)
!328 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3)
!329 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4)
!330 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5)
!331 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6)
!332 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7)
!333 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8)
!334 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9)
!335 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10)
!336 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11)
!337 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12)
!338 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13)
!339 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14)
!340 = !DIEnumerator(name: "CODESET", value: 14)
!341 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15)
!342 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16)
!343 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17)
!344 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18)
!345 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19)
!346 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20)
!347 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21)
!348 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22)
!349 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23)
!350 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24)
!351 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25)
!352 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26)
!353 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27)
!354 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28)
!355 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29)
!356 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30)
!357 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31)
!358 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32)
!359 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33)
!360 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34)
!361 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35)
!362 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36)
!363 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37)
!364 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38)
!365 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39)
!366 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40)
!367 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41)
!368 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42)
!369 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43)
!370 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44)
!371 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45)
!372 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46)
!373 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47)
!374 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48)
!375 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49)
!376 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50)
!377 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51)
!378 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52)
!379 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53)
!380 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54)
!381 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55)
!382 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56)
!383 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57)
!384 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58)
!385 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59)
!386 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60)
!387 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61)
!388 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62)
!389 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63)
!390 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64)
!391 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65)
!392 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66)
!393 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67)
!394 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68)
!395 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69)
!396 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70)
!397 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71)
!398 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72)
!399 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73)
!400 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74)
!401 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75)
!402 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76)
!403 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77)
!404 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78)
!405 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79)
!406 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80)
!407 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81)
!408 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82)
!409 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83)
!410 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84)
!411 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85)
!412 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86)
!413 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144)
!414 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145)
!415 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146)
!416 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147)
!417 = !DIEnumerator(name: "__MON_GROUPING", value: 262148)
!418 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149)
!419 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150)
!420 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151)
!421 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152)
!422 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153)
!423 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154)
!424 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155)
!425 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156)
!426 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157)
!427 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158)
!428 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159)
!429 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160)
!430 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161)
!431 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162)
!432 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163)
!433 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164)
!434 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165)
!435 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166)
!436 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167)
!437 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168)
!438 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169)
!439 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170)
!440 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171)
!441 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172)
!442 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173)
!443 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174)
!444 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175)
!445 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176)
!446 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177)
!447 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178)
!448 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179)
!449 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180)
!450 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181)
!451 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182)
!452 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183)
!453 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184)
!454 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185)
!455 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186)
!456 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187)
!457 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188)
!458 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189)
!459 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190)
!460 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536)
!461 = !DIEnumerator(name: "RADIXCHAR", value: 65536)
!462 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537)
!463 = !DIEnumerator(name: "THOUSEP", value: 65537)
!464 = !DIEnumerator(name: "__GROUPING", value: 65538)
!465 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539)
!466 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540)
!467 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541)
!468 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542)
!469 = !DIEnumerator(name: "__YESEXPR", value: 327680)
!470 = !DIEnumerator(name: "__NOEXPR", value: 327681)
!471 = !DIEnumerator(name: "__YESSTR", value: 327682)
!472 = !DIEnumerator(name: "__NOSTR", value: 327683)
!473 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684)
!474 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685)
!475 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752)
!476 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753)
!477 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754)
!478 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755)
!479 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288)
!480 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289)
!481 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290)
!482 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291)
!483 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292)
!484 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293)
!485 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294)
!486 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295)
!487 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824)
!488 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825)
!489 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826)
!490 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827)
!491 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828)
!492 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829)
!493 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830)
!494 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831)
!495 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832)
!496 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833)
!497 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834)
!498 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835)
!499 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836)
!500 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837)
!501 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360)
!502 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361)
!503 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362)
!504 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363)
!505 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364)
!506 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365)
!507 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896)
!508 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897)
!509 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898)
!510 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432)
!511 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433)
!512 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434)
!513 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435)
!514 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436)
!515 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437)
!516 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438)
!517 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439)
!518 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440)
!519 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441)
!520 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442)
!521 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443)
!522 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444)
!523 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445)
!524 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446)
!525 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447)
!526 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448)
!527 = !DIEnumerator(name: "_NL_NUM", value: 786449)
!528 = !{!22, !20, !529}
!529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!530 = !{!185}
!531 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!532 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !31)
!533 = distinct !DICompileUnit(language: DW_LANG_C99, file: !534, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !81)
!534 = !DIFile(filename: "src/selinux.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!535 = distinct !DICompileUnit(language: DW_LANG_C99, file: !536, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !537, retainedTypes: !545)
!536 = !DIFile(filename: "./lib/modechange.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!537 = !{!538}
!538 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !539, line: 78, size: 32, elements: !540)
!539 = !DIFile(filename: "lib/modechange.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!540 = !{!541, !542, !543, !544}
!541 = !DIEnumerator(name: "MODE_DONE", value: 0)
!542 = !DIEnumerator(name: "MODE_ORDINARY_CHANGE", value: 1)
!543 = !DIEnumerator(name: "MODE_X_IF_ANY_X", value: 2)
!544 = !DIEnumerator(name: "MODE_COPY_EXISTING", value: 3)
!545 = !{!23}
!546 = distinct !DICompileUnit(language: DW_LANG_C99, file: !547, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !548, retainedTypes: !553)
!547 = !DIFile(filename: "./lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!548 = !{!549}
!549 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !550, line: 41, size: 32, elements: !551)
!550 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!551 = !{!552}
!552 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2017)
!553 = !{!22}
!554 = distinct !DICompileUnit(language: DW_LANG_C99, file: !555, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !556, retainedTypes: !570)
!555 = !DIFile(filename: "./lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!556 = !{!557}
!557 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !559, file: !558, line: 192, size: 32, elements: !568)
!558 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!559 = distinct !DISubprogram(name: "x2nrealloc", scope: !558, file: !558, line: 180, type: !560, isLocal: false, isDefinition: true, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: true, unit: !554, variables: !563)
!560 = !DISubroutineType(types: !561)
!561 = !{!22, !22, !562, !23}
!562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!563 = !{!564, !565, !566, !567}
!564 = !DILocalVariable(name: "p", arg: 1, scope: !559, file: !558, line: 180, type: !22)
!565 = !DILocalVariable(name: "pn", arg: 2, scope: !559, file: !558, line: 180, type: !562)
!566 = !DILocalVariable(name: "s", arg: 3, scope: !559, file: !558, line: 180, type: !23)
!567 = !DILocalVariable(name: "n", scope: !559, file: !558, line: 182, type: !23)
!568 = !{!569}
!569 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!570 = !{!23, !20, !22}
!571 = distinct !DICompileUnit(language: DW_LANG_C99, file: !572, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !81)
!572 = !DIFile(filename: "./lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!573 = distinct !DICompileUnit(language: DW_LANG_C99, file: !574, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !81, retainedTypes: !553)
!574 = !DIFile(filename: "./lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!575 = distinct !DICompileUnit(language: DW_LANG_C99, file: !576, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !81, retainedTypes: !545)
!576 = !DIFile(filename: "./lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!577 = distinct !DICompileUnit(language: DW_LANG_C99, file: !578, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !81)
!578 = !DIFile(filename: "./lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!579 = distinct !DICompileUnit(language: DW_LANG_C99, file: !580, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !81, retainedTypes: !581)
!580 = !DIFile(filename: "./lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!581 = !{!23, !26, !28, !31}
!582 = distinct !DICompileUnit(language: DW_LANG_C99, file: !583, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !81)
!583 = !DIFile(filename: "./lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!584 = distinct !DICompileUnit(language: DW_LANG_C99, file: !585, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !81, retainedTypes: !553)
!585 = !DIFile(filename: "./lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!586 = distinct !DICompileUnit(language: DW_LANG_C99, file: !587, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !81, retainedTypes: !553)
!587 = !DIFile(filename: "./lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!588 = !{!"clang version 4.0.1 (tags/RELEASE_401/final)"}
!589 = !{i32 2, !"Dwarf Version", i32 4}
!590 = !{i32 2, !"Debug Info Version", i32 3}
!591 = !{i32 1, !"PIC Level", i32 2}
!592 = !{i32 1, !"PIE Level", i32 2}
!593 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 48, type: !594, isLocal: false, isDefinition: true, scopeLine: 49, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !2, variables: !596)
!594 = !DISubroutineType(types: !595)
!595 = !{null, !61}
!596 = !{!597}
!597 = !DILocalVariable(name: "status", arg: 1, scope: !593, file: !3, line: 48, type: !61)
!598 = !DIExpression()
!599 = !DILocation(line: 48, column: 12, scope: !593)
!600 = !DILocation(line: 50, column: 14, scope: !601)
!601 = distinct !DILexicalBlock(scope: !593, file: !3, line: 50, column: 7)
!602 = !DILocation(line: 50, column: 7, scope: !593)
!603 = !DILocation(line: 51, column: 5, scope: !604)
!604 = !DILexicalBlockFile(scope: !605, file: !3, discriminator: 1)
!605 = distinct !DILexicalBlock(scope: !601, file: !3, line: 51, column: 5)
!606 = !{!607, !607, i64 0}
!607 = !{!"any pointer", !608, i64 0}
!608 = !{!"omnipotent char", !609, i64 0}
!609 = !{!"Simple C/C++ TBAA"}
!610 = !DILocation(line: 51, column: 5, scope: !611)
!611 = !DILexicalBlockFile(scope: !605, file: !3, discriminator: 3)
!612 = !DILocation(line: 51, column: 5, scope: !613)
!613 = !DILexicalBlockFile(scope: !605, file: !3, discriminator: 2)
!614 = !DILocation(line: 54, column: 7, scope: !615)
!615 = distinct !DILexicalBlock(scope: !601, file: !3, line: 53, column: 5)
!616 = !DILocation(line: 54, column: 7, scope: !617)
!617 = !DILexicalBlockFile(scope: !615, file: !3, discriminator: 1)
!618 = !DILocation(line: 55, column: 7, scope: !615)
!619 = !DILocation(line: 55, column: 7, scope: !617)
!620 = !DILocation(line: 587, column: 3, scope: !621, inlinedAt: !624)
!621 = distinct !DISubprogram(name: "emit_mandatory_arg_note", scope: !37, file: !37, line: 585, type: !622, isLocal: true, isDefinition: true, scopeLine: 586, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !81)
!622 = !DISubroutineType(types: !623)
!623 = !{null}
!624 = distinct !DILocation(line: 59, column: 7, scope: !615)
!625 = !DILocation(line: 587, column: 3, scope: !626, inlinedAt: !624)
!626 = !DILexicalBlockFile(scope: !621, file: !37, discriminator: 1)
!627 = !DILocation(line: 61, column: 7, scope: !615)
!628 = !DILocation(line: 61, column: 7, scope: !617)
!629 = !DILocation(line: 64, column: 7, scope: !615)
!630 = !DILocation(line: 64, column: 7, scope: !617)
!631 = !DILocation(line: 69, column: 7, scope: !615)
!632 = !DILocation(line: 69, column: 7, scope: !617)
!633 = !DILocation(line: 70, column: 7, scope: !615)
!634 = !DILocation(line: 70, column: 7, scope: !617)
!635 = !DILocation(line: 642, column: 15, scope: !36, inlinedAt: !636)
!636 = distinct !DILocation(line: 71, column: 7, scope: !615)
!637 = !DILocation(line: 651, column: 3, scope: !36, inlinedAt: !636)
!638 = !DILocation(line: 651, column: 3, scope: !639, inlinedAt: !636)
!639 = !DILexicalBlockFile(scope: !36, file: !37, discriminator: 1)
!640 = !DILocation(line: 655, column: 29, scope: !36, inlinedAt: !636)
!641 = !DILocation(line: 655, column: 15, scope: !36, inlinedAt: !636)
!642 = !DILocation(line: 656, column: 7, scope: !56, inlinedAt: !636)
!643 = !DILocation(line: 656, column: 19, scope: !56, inlinedAt: !636)
!644 = !DILocation(line: 656, column: 22, scope: !645, inlinedAt: !636)
!645 = !DILexicalBlockFile(scope: !56, file: !37, discriminator: 16)
!646 = !DILocation(line: 656, column: 7, scope: !647, inlinedAt: !636)
!647 = !DILexicalBlockFile(scope: !36, file: !37, discriminator: 16)
!648 = !DILocation(line: 662, column: 7, scope: !649, inlinedAt: !636)
!649 = distinct !DILexicalBlock(scope: !56, file: !37, line: 657, column: 5)
!650 = !DILocation(line: 662, column: 7, scope: !651, inlinedAt: !636)
!651 = !DILexicalBlockFile(scope: !649, file: !37, discriminator: 1)
!652 = !DILocation(line: 664, column: 5, scope: !649, inlinedAt: !636)
!653 = !DILocation(line: 665, column: 3, scope: !36, inlinedAt: !636)
!654 = !DILocation(line: 665, column: 3, scope: !639, inlinedAt: !636)
!655 = !DILocation(line: 667, column: 3, scope: !36, inlinedAt: !636)
!656 = !DILocation(line: 667, column: 3, scope: !639, inlinedAt: !636)
!657 = !DILocation(line: 73, column: 3, scope: !593)
!658 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 77, type: !659, isLocal: false, isDefinition: true, scopeLine: 78, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !662)
!659 = !DISubroutineType(types: !660)
!660 = !{!61, !61, !661}
!661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!662 = !{!663, !664, !665, !670, !671, !672, !673, !674, !675, !678, !681}
!663 = !DILocalVariable(name: "argc", arg: 1, scope: !658, file: !3, line: 77, type: !61)
!664 = !DILocalVariable(name: "argv", arg: 2, scope: !658, file: !3, line: 77, type: !661)
!665 = !DILocalVariable(name: "newmode", scope: !658, file: !3, line: 79, type: !666)
!666 = !DIDerivedType(tag: DW_TAG_typedef, name: "mode_t", file: !667, line: 70, baseType: !668)
!667 = !DIFile(filename: "/usr/include/sys/types.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!668 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !669, line: 138, baseType: !149)
!669 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!670 = !DILocalVariable(name: "specified_mode", scope: !658, file: !3, line: 80, type: !31)
!671 = !DILocalVariable(name: "exit_status", scope: !658, file: !3, line: 81, type: !61)
!672 = !DILocalVariable(name: "optc", scope: !658, file: !3, line: 82, type: !61)
!673 = !DILocalVariable(name: "scontext", scope: !658, file: !3, line: 83, type: !31)
!674 = !DILocalVariable(name: "set_security_context", scope: !658, file: !3, line: 84, type: !91)
!675 = !DILocalVariable(name: "ret", scope: !676, file: !3, line: 136, type: !61)
!676 = distinct !DILexicalBlock(scope: !677, file: !3, line: 135, column: 5)
!677 = distinct !DILexicalBlock(scope: !658, file: !3, line: 134, column: 7)
!678 = !DILocalVariable(name: "umask_value", scope: !679, file: !3, line: 151, type: !666)
!679 = distinct !DILexicalBlock(scope: !680, file: !3, line: 150, column: 5)
!680 = distinct !DILexicalBlock(scope: !658, file: !3, line: 149, column: 7)
!681 = !DILocalVariable(name: "change", scope: !679, file: !3, line: 152, type: !682)
!682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !683, size: 64)
!683 = !DICompositeType(tag: DW_TAG_structure_type, name: "mode_change", file: !684, line: 25, flags: DIFlagFwdDecl)
!684 = !DIFile(filename: "./lib/modechange.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!685 = !DILocation(line: 77, column: 11, scope: !658)
!686 = !DILocation(line: 77, column: 24, scope: !658)
!687 = !DILocation(line: 80, column: 15, scope: !658)
!688 = !DILocation(line: 81, column: 7, scope: !658)
!689 = !DILocation(line: 83, column: 15, scope: !658)
!690 = !DILocation(line: 84, column: 8, scope: !658)
!691 = !DILocation(line: 87, column: 21, scope: !658)
!692 = !DILocation(line: 87, column: 3, scope: !658)
!693 = !DILocation(line: 88, column: 3, scope: !658)
!694 = !DILocation(line: 89, column: 3, scope: !658)
!695 = !DILocation(line: 90, column: 3, scope: !658)
!696 = !DILocation(line: 92, column: 3, scope: !658)
!697 = !DILocation(line: 94, column: 3, scope: !658)
!698 = !DILocation(line: 94, column: 18, scope: !699)
!699 = !DILexicalBlockFile(scope: !658, file: !3, discriminator: 1)
!700 = !DILocation(line: 82, column: 7, scope: !658)
!701 = !DILocation(line: 94, column: 3, scope: !699)
!702 = !DILocation(line: 99, column: 28, scope: !703)
!703 = distinct !DILexicalBlock(scope: !704, file: !3, line: 97, column: 9)
!704 = distinct !DILexicalBlock(scope: !658, file: !3, line: 95, column: 5)
!705 = !DILocation(line: 100, column: 11, scope: !703)
!706 = distinct !{!706, !697, !707}
!707 = !DILocation(line: 126, column: 5, scope: !658)
!708 = !DILocation(line: 114, column: 20, scope: !709)
!709 = distinct !DILexicalBlock(scope: !710, file: !3, line: 114, column: 20)
!710 = distinct !DILexicalBlock(scope: !711, file: !3, line: 107, column: 20)
!711 = distinct !DILexicalBlock(scope: !703, file: !3, line: 102, column: 15)
!712 = !DILocation(line: 114, column: 20, scope: !710)
!713 = !DILocation(line: 117, column: 22, scope: !714)
!714 = distinct !DILexicalBlock(scope: !709, file: !3, line: 115, column: 13)
!715 = !DILocation(line: 116, column: 15, scope: !714)
!716 = !DILocation(line: 119, column: 13, scope: !714)
!717 = !DILocation(line: 121, column: 9, scope: !703)
!718 = !DILocation(line: 122, column: 9, scope: !703)
!719 = !DILocation(line: 122, column: 9, scope: !720)
!720 = !DILexicalBlockFile(scope: !703, file: !3, discriminator: 1)
!721 = !DILocation(line: 124, column: 11, scope: !703)
!722 = !DILocation(line: 128, column: 7, scope: !723)
!723 = distinct !DILexicalBlock(scope: !658, file: !3, line: 128, column: 7)
!724 = !{!725, !725, i64 0}
!725 = !{!"int", !608, i64 0}
!726 = !DILocation(line: 128, column: 14, scope: !723)
!727 = !DILocation(line: 128, column: 7, scope: !658)
!728 = !DILocation(line: 130, column: 20, scope: !729)
!729 = distinct !DILexicalBlock(scope: !723, file: !3, line: 129, column: 5)
!730 = !DILocation(line: 130, column: 7, scope: !731)
!731 = !DILexicalBlockFile(scope: !729, file: !3, discriminator: 1)
!732 = !DILocation(line: 131, column: 7, scope: !729)
!733 = !DILocation(line: 79, column: 10, scope: !658)
!734 = !DILocation(line: 149, column: 7, scope: !680)
!735 = !DILocation(line: 149, column: 7, scope: !658)
!736 = !DILocation(line: 152, column: 36, scope: !679)
!737 = !DILocation(line: 152, column: 27, scope: !679)
!738 = !DILocation(line: 153, column: 12, scope: !739)
!739 = distinct !DILexicalBlock(scope: !679, file: !3, line: 153, column: 11)
!740 = !DILocation(line: 153, column: 11, scope: !679)
!741 = !DILocation(line: 154, column: 9, scope: !739)
!742 = !DILocation(line: 154, column: 9, scope: !743)
!743 = !DILexicalBlockFile(scope: !739, file: !3, discriminator: 1)
!744 = !DILocation(line: 155, column: 21, scope: !679)
!745 = !DILocation(line: 151, column: 14, scope: !679)
!746 = !DILocation(line: 156, column: 7, scope: !679)
!747 = !DILocation(line: 157, column: 17, scope: !679)
!748 = !DILocation(line: 158, column: 13, scope: !679)
!749 = !DILocation(line: 158, column: 7, scope: !679)
!750 = !DILocation(line: 159, column: 19, scope: !751)
!751 = distinct !DILexicalBlock(scope: !679, file: !3, line: 159, column: 11)
!752 = !DILocation(line: 159, column: 11, scope: !679)
!753 = !DILocation(line: 164, column: 10, scope: !754)
!754 = !DILexicalBlockFile(scope: !755, file: !3, discriminator: 1)
!755 = distinct !DILexicalBlock(scope: !756, file: !3, line: 164, column: 3)
!756 = distinct !DILexicalBlock(scope: !658, file: !3, line: 164, column: 3)
!757 = !DILocation(line: 164, column: 17, scope: !754)
!758 = !DILocation(line: 164, column: 3, scope: !759)
!759 = !DILexicalBlockFile(scope: !756, file: !3, discriminator: 1)
!760 = !DILocation(line: 168, column: 19, scope: !761)
!761 = distinct !DILexicalBlock(scope: !762, file: !3, line: 168, column: 11)
!762 = distinct !DILexicalBlock(scope: !755, file: !3, line: 165, column: 5)
!763 = !DILocation(line: 160, column: 9, scope: !751)
!764 = !DILocation(line: 160, column: 9, scope: !765)
!765 = !DILexicalBlockFile(scope: !751, file: !3, discriminator: 1)
!766 = !DILocation(line: 168, column: 11, scope: !761)
!767 = !DILocation(line: 168, column: 42, scope: !761)
!768 = !DILocation(line: 168, column: 11, scope: !762)
!769 = !DILocation(line: 170, column: 21, scope: !770)
!770 = distinct !DILexicalBlock(scope: !761, file: !3, line: 169, column: 9)
!771 = !DILocation(line: 170, column: 28, scope: !772)
!772 = !DILexicalBlockFile(scope: !770, file: !3, discriminator: 1)
!773 = !DILocation(line: 170, column: 56, scope: !770)
!774 = !DILocation(line: 170, column: 56, scope: !775)
!775 = !DILexicalBlockFile(scope: !770, file: !3, discriminator: 2)
!776 = !DILocation(line: 170, column: 11, scope: !777)
!777 = !DILexicalBlockFile(scope: !770, file: !3, discriminator: 3)
!778 = !DILocation(line: 172, column: 9, scope: !770)
!779 = !DILocation(line: 173, column: 31, scope: !780)
!780 = distinct !DILexicalBlock(scope: !761, file: !3, line: 173, column: 16)
!781 = !DILocation(line: 173, column: 47, scope: !782)
!782 = !DILexicalBlockFile(scope: !780, file: !3, discriminator: 1)
!783 = !DILocation(line: 173, column: 42, scope: !782)
!784 = !DILocation(line: 173, column: 34, scope: !782)
!785 = !DILocation(line: 173, column: 65, scope: !782)
!786 = !DILocation(line: 173, column: 16, scope: !787)
!787 = !DILexicalBlockFile(scope: !761, file: !3, discriminator: 1)
!788 = !DILocation(line: 175, column: 21, scope: !789)
!789 = distinct !DILexicalBlock(scope: !780, file: !3, line: 174, column: 9)
!790 = !DILocation(line: 175, column: 28, scope: !791)
!791 = !DILexicalBlockFile(scope: !789, file: !3, discriminator: 1)
!792 = !DILocation(line: 176, column: 18, scope: !789)
!793 = !DILocation(line: 175, column: 11, scope: !794)
!794 = !DILexicalBlockFile(scope: !789, file: !3, discriminator: 2)
!795 = !DILocation(line: 178, column: 9, scope: !789)
!796 = !DILocation(line: 164, column: 25, scope: !797)
!797 = !DILexicalBlockFile(scope: !755, file: !3, discriminator: 2)
!798 = distinct !{!798, !799, !800}
!799 = !DILocation(line: 164, column: 3, scope: !756)
!800 = !DILocation(line: 179, column: 5, scope: !756)
!801 = !DILocation(line: 181, column: 3, scope: !658)
!802 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !90, file: !90, line: 41, type: !38, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !85, variables: !803)
!803 = !{!804}
!804 = !DILocalVariable(name: "file", arg: 1, scope: !802, file: !90, line: 41, type: !31)
!805 = !DILocation(line: 41, column: 41, scope: !802)
!806 = !DILocation(line: 43, column: 13, scope: !802)
!807 = !DILocation(line: 44, column: 1, scope: !802)
!808 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !90, file: !90, line: 78, type: !809, isLocal: false, isDefinition: true, scopeLine: 79, flags: DIFlagPrototyped, isOptimized: true, unit: !85, variables: !811)
!809 = !DISubroutineType(types: !810)
!810 = !{null, !91}
!811 = !{!812}
!812 = !DILocalVariable(name: "ignore", arg: 1, scope: !808, file: !90, line: 78, type: !91)
!813 = !DIExpression(DW_OP_LLVM_fragment, 0, 1)
!814 = !DILocation(line: 78, column: 37, scope: !808)
!815 = !DILocation(line: 80, column: 16, scope: !808)
!816 = !{!817, !817, i64 0}
!817 = !{!"_Bool", !608, i64 0}
!818 = !DILocation(line: 81, column: 1, scope: !808)
!819 = distinct !DISubprogram(name: "close_stdout", scope: !90, file: !90, line: 107, type: !622, isLocal: false, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: true, unit: !85, variables: !820)
!820 = !{!821}
!821 = !DILocalVariable(name: "write_error", scope: !822, file: !90, line: 112, type: !31)
!822 = distinct !DILexicalBlock(scope: !823, file: !90, line: 111, column: 5)
!823 = distinct !DILexicalBlock(scope: !819, file: !90, line: 109, column: 7)
!824 = !DILocation(line: 109, column: 21, scope: !823)
!825 = !DILocation(line: 109, column: 7, scope: !823)
!826 = !DILocation(line: 109, column: 29, scope: !823)
!827 = !DILocation(line: 110, column: 7, scope: !823)
!828 = !DILocation(line: 110, column: 12, scope: !829)
!829 = !DILexicalBlockFile(scope: !823, file: !90, discriminator: 1)
!830 = !{i8 0, i8 2}
!831 = !DILocation(line: 114, column: 19, scope: !832)
!832 = distinct !DILexicalBlock(scope: !822, file: !90, line: 113, column: 11)
!833 = !DILocation(line: 110, column: 25, scope: !829)
!834 = !DILocation(line: 110, column: 28, scope: !835)
!835 = !DILexicalBlockFile(scope: !823, file: !90, discriminator: 2)
!836 = !DILocation(line: 110, column: 34, scope: !835)
!837 = !DILocation(line: 109, column: 7, scope: !838)
!838 = !DILexicalBlockFile(scope: !819, file: !90, discriminator: 1)
!839 = !DILocation(line: 112, column: 33, scope: !822)
!840 = !DILocation(line: 112, column: 19, scope: !822)
!841 = !DILocation(line: 113, column: 11, scope: !832)
!842 = !DILocation(line: 113, column: 11, scope: !822)
!843 = !DILocation(line: 114, column: 36, scope: !844)
!844 = !DILexicalBlockFile(scope: !832, file: !90, discriminator: 1)
!845 = !DILocation(line: 114, column: 9, scope: !846)
!846 = !DILexicalBlockFile(scope: !832, file: !90, discriminator: 2)
!847 = !DILocation(line: 114, column: 9, scope: !832)
!848 = !DILocation(line: 117, column: 9, scope: !844)
!849 = !DILocation(line: 119, column: 14, scope: !822)
!850 = !DILocation(line: 119, column: 7, scope: !822)
!851 = !DILocation(line: 122, column: 22, scope: !852)
!852 = distinct !DILexicalBlock(scope: !819, file: !90, line: 122, column: 8)
!853 = !DILocation(line: 122, column: 8, scope: !852)
!854 = !DILocation(line: 122, column: 30, scope: !852)
!855 = !DILocation(line: 122, column: 8, scope: !819)
!856 = !DILocation(line: 123, column: 13, scope: !852)
!857 = !DILocation(line: 123, column: 6, scope: !852)
!858 = !DILocation(line: 124, column: 1, scope: !819)
!859 = distinct !DISubprogram(name: "mode_compile", scope: !539, file: !539, line: 134, type: !860, isLocal: false, isDefinition: true, scopeLine: 135, flags: DIFlagPrototyped, isOptimized: true, unit: !535, variables: !870)
!860 = !DISubroutineType(types: !861)
!861 = !{!862, !31}
!862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !863, size: 64)
!863 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mode_change", file: !539, line: 98, size: 128, elements: !864)
!864 = !{!865, !866, !867, !868, !869}
!865 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !863, file: !539, line: 100, baseType: !21, size: 8)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !863, file: !539, line: 101, baseType: !21, size: 8, offset: 8)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "affected", scope: !863, file: !539, line: 102, baseType: !666, size: 32, offset: 32)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !863, file: !539, line: 103, baseType: !666, size: 32, offset: 64)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "mentioned", scope: !863, file: !539, line: 104, baseType: !666, size: 32, offset: 96)
!870 = !{!871, !872, !873, !874, !875, !878, !879, !880, !882, !886, !888, !889, !890, !891, !892}
!871 = !DILocalVariable(name: "mode_string", arg: 1, scope: !859, file: !539, line: 134, type: !31)
!872 = !DILocalVariable(name: "mc", scope: !859, file: !539, line: 137, type: !862)
!873 = !DILocalVariable(name: "used", scope: !859, file: !539, line: 138, type: !23)
!874 = !DILocalVariable(name: "p", scope: !859, file: !539, line: 139, type: !31)
!875 = !DILocalVariable(name: "octal_mode", scope: !876, file: !539, line: 143, type: !149)
!876 = distinct !DILexicalBlock(scope: !877, file: !539, line: 142, column: 5)
!877 = distinct !DILexicalBlock(scope: !859, file: !539, line: 141, column: 7)
!878 = !DILocalVariable(name: "mode", scope: !876, file: !539, line: 144, type: !666)
!879 = !DILocalVariable(name: "mentioned", scope: !876, file: !539, line: 145, type: !666)
!880 = !DILocalVariable(name: "needed", scope: !881, file: !539, line: 168, type: !23)
!881 = distinct !DILexicalBlock(scope: !859, file: !539, line: 167, column: 3)
!882 = !DILocalVariable(name: "affected", scope: !883, file: !539, line: 179, type: !666)
!883 = distinct !DILexicalBlock(scope: !884, file: !539, line: 177, column: 5)
!884 = distinct !DILexicalBlock(scope: !885, file: !539, line: 176, column: 3)
!885 = distinct !DILexicalBlock(scope: !859, file: !539, line: 176, column: 3)
!886 = !DILocalVariable(name: "op", scope: !887, file: !539, line: 206, type: !21)
!887 = distinct !DILexicalBlock(scope: !883, file: !539, line: 205, column: 9)
!888 = !DILocalVariable(name: "value", scope: !887, file: !539, line: 207, type: !666)
!889 = !DILocalVariable(name: "mentioned", scope: !887, file: !539, line: 208, type: !666)
!890 = !DILocalVariable(name: "flag", scope: !887, file: !539, line: 209, type: !21)
!891 = !DILocalVariable(name: "change", scope: !887, file: !539, line: 210, type: !862)
!892 = !DILocalVariable(name: "octal_mode", scope: !893, file: !539, line: 217, type: !149)
!893 = distinct !DILexicalBlock(scope: !894, file: !539, line: 216, column: 15)
!894 = distinct !DILexicalBlock(scope: !887, file: !539, line: 213, column: 13)
!895 = !DILocation(line: 134, column: 27, scope: !859)
!896 = !DILocation(line: 138, column: 10, scope: !859)
!897 = !DILocation(line: 141, column: 14, scope: !877)
!898 = !{!608, !608, i64 0}
!899 = !DILocation(line: 141, column: 27, scope: !877)
!900 = distinct !{!900, !901, !902}
!901 = !DILocation(line: 148, column: 7, scope: !876)
!902 = !DILocation(line: 154, column: 35, scope: !876)
!903 = !DILocation(line: 168, column: 12, scope: !881)
!904 = !DILocation(line: 139, column: 15, scope: !859)
!905 = !DILocation(line: 150, column: 41, scope: !906)
!906 = distinct !DILexicalBlock(scope: !876, file: !539, line: 149, column: 9)
!907 = !DILocation(line: 143, column: 20, scope: !876)
!908 = !DILocation(line: 150, column: 26, scope: !906)
!909 = !DILocation(line: 150, column: 43, scope: !906)
!910 = !DILocation(line: 150, column: 39, scope: !906)
!911 = !DILocation(line: 150, column: 46, scope: !906)
!912 = !DILocation(line: 151, column: 20, scope: !913)
!913 = distinct !DILexicalBlock(scope: !906, file: !539, line: 151, column: 15)
!914 = !DILocation(line: 151, column: 15, scope: !906)
!915 = !DILocation(line: 154, column: 21, scope: !876)
!916 = !DILocation(line: 154, column: 24, scope: !876)
!917 = !DILocation(line: 156, column: 11, scope: !918)
!918 = distinct !DILexicalBlock(scope: !876, file: !539, line: 156, column: 11)
!919 = !DILocation(line: 156, column: 11, scope: !876)
!920 = !DILocation(line: 144, column: 14, scope: !876)
!921 = !DILocation(line: 160, column: 22, scope: !876)
!922 = !DILocation(line: 160, column: 36, scope: !876)
!923 = !DILocation(line: 161, column: 28, scope: !876)
!924 = !DILocation(line: 161, column: 61, scope: !876)
!925 = !DILocation(line: 160, column: 20, scope: !876)
!926 = !DILocation(line: 145, column: 14, scope: !876)
!927 = !DILocalVariable(name: "new_mode", arg: 1, scope: !928, file: !539, line: 112, type: !666)
!928 = distinct !DISubprogram(name: "make_node_op_equals", scope: !539, file: !539, line: 112, type: !929, isLocal: true, isDefinition: true, scopeLine: 113, flags: DIFlagPrototyped, isOptimized: true, unit: !535, variables: !931)
!929 = !DISubroutineType(types: !930)
!930 = !{!862, !666, !666}
!931 = !{!927, !932, !933}
!932 = !DILocalVariable(name: "mentioned", arg: 2, scope: !928, file: !539, line: 112, type: !666)
!933 = !DILocalVariable(name: "p", scope: !928, file: !539, line: 114, type: !862)
!934 = !DILocation(line: 112, column: 29, scope: !928, inlinedAt: !935)
!935 = distinct !DILocation(line: 163, column: 14, scope: !876)
!936 = !DILocation(line: 112, column: 46, scope: !928, inlinedAt: !935)
!937 = !DILocation(line: 114, column: 27, scope: !928, inlinedAt: !935)
!938 = !DILocation(line: 114, column: 23, scope: !928, inlinedAt: !935)
!939 = !DILocation(line: 115, column: 9, scope: !928, inlinedAt: !935)
!940 = !{!941, !608, i64 0}
!941 = !{!"mode_change", !608, i64 0, !608, i64 1, !725, i64 4, !725, i64 8, !725, i64 12}
!942 = !DILocation(line: 116, column: 6, scope: !928, inlinedAt: !935)
!943 = !DILocation(line: 116, column: 11, scope: !928, inlinedAt: !935)
!944 = !{!941, !608, i64 1}
!945 = !DILocation(line: 117, column: 6, scope: !928, inlinedAt: !935)
!946 = !DILocation(line: 117, column: 15, scope: !928, inlinedAt: !935)
!947 = !{!941, !725, i64 4}
!948 = !DILocation(line: 118, column: 6, scope: !928, inlinedAt: !935)
!949 = !DILocation(line: 118, column: 12, scope: !928, inlinedAt: !935)
!950 = !{!941, !725, i64 8}
!951 = !DILocation(line: 119, column: 6, scope: !928, inlinedAt: !935)
!952 = !DILocation(line: 119, column: 16, scope: !928, inlinedAt: !935)
!953 = !{!941, !725, i64 12}
!954 = !DILocation(line: 120, column: 8, scope: !928, inlinedAt: !935)
!955 = !DILocation(line: 120, column: 13, scope: !928, inlinedAt: !935)
!956 = !DILocation(line: 163, column: 7, scope: !876)
!957 = !DILocation(line: 169, column: 27, scope: !958)
!958 = !DILexicalBlockFile(scope: !959, file: !539, discriminator: 1)
!959 = distinct !DILexicalBlock(scope: !960, file: !539, line: 169, column: 5)
!960 = distinct !DILexicalBlock(scope: !881, file: !539, line: 169, column: 5)
!961 = !DILocation(line: 169, column: 5, scope: !962)
!962 = !DILexicalBlockFile(scope: !960, file: !539, discriminator: 1)
!963 = !DILocation(line: 170, column: 41, scope: !964)
!964 = !DILexicalBlockFile(scope: !959, file: !539, discriminator: 2)
!965 = !DILocation(line: 170, column: 14, scope: !966)
!966 = !DILexicalBlockFile(scope: !959, file: !539, discriminator: 3)
!967 = !DILocation(line: 169, column: 32, scope: !964)
!968 = !DILocation(line: 169, column: 5, scope: !964)
!969 = distinct !{!969, !970, !971}
!970 = !DILocation(line: 169, column: 5, scope: !960)
!971 = !DILocation(line: 170, column: 53, scope: !960)
!972 = !DILocalVariable(name: "n", arg: 1, scope: !973, file: !558, line: 105, type: !23)
!973 = distinct !DISubprogram(name: "xnmalloc", scope: !558, file: !558, line: 105, type: !974, isLocal: false, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: true, unit: !535, variables: !976)
!974 = !DISubroutineType(types: !975)
!975 = !{!22, !23, !23}
!976 = !{!972, !977}
!977 = !DILocalVariable(name: "s", arg: 2, scope: !973, file: !558, line: 105, type: !23)
!978 = !DILocation(line: 105, column: 18, scope: !973, inlinedAt: !979)
!979 = distinct !DILocation(line: 171, column: 10, scope: !881)
!980 = !DILocation(line: 105, column: 28, scope: !973, inlinedAt: !979)
!981 = !DILocation(line: 107, column: 7, scope: !982, inlinedAt: !979)
!982 = distinct !DILexicalBlock(scope: !973, file: !558, line: 107, column: 7)
!983 = !DILocation(line: 107, column: 7, scope: !973, inlinedAt: !979)
!984 = !DILocation(line: 108, column: 5, scope: !982, inlinedAt: !979)
!985 = !DILocation(line: 109, column: 21, scope: !973, inlinedAt: !979)
!986 = !DILocation(line: 109, column: 10, scope: !973, inlinedAt: !979)
!987 = !DILocation(line: 171, column: 10, scope: !881)
!988 = !DILocation(line: 137, column: 23, scope: !859)
!989 = !DILocation(line: 176, column: 8, scope: !885)
!990 = !DILocation(line: 179, column: 14, scope: !883)
!991 = !DILocation(line: 182, column: 7, scope: !883)
!992 = !DILocation(line: 183, column: 17, scope: !993)
!993 = distinct !DILexicalBlock(scope: !994, file: !539, line: 182, column: 7)
!994 = distinct !DILexicalBlock(scope: !883, file: !539, line: 182, column: 7)
!995 = !DILocation(line: 183, column: 9, scope: !993)
!996 = distinct !{!996, !997, !998}
!997 = !DILocation(line: 204, column: 7, scope: !883)
!998 = !DILocation(line: 295, column: 49, scope: !883)
!999 = !DILocation(line: 189, column: 13, scope: !1000)
!1000 = distinct !DILexicalBlock(scope: !993, file: !539, line: 184, column: 11)
!1001 = !DILocation(line: 195, column: 13, scope: !1000)
!1002 = !DILocation(line: 198, column: 13, scope: !1000)
!1003 = !DILocation(line: 182, column: 16, scope: !1004)
!1004 = !DILexicalBlockFile(scope: !993, file: !539, discriminator: 1)
!1005 = !DILocation(line: 182, column: 7, scope: !1004)
!1006 = distinct !{!1006, !1007, !1008}
!1007 = !DILocation(line: 182, column: 7, scope: !994)
!1008 = !DILocation(line: 201, column: 11, scope: !994)
!1009 = !DILocation(line: 206, column: 21, scope: !887)
!1010 = !DILocation(line: 206, column: 23, scope: !887)
!1011 = !DILocation(line: 206, column: 16, scope: !887)
!1012 = !DILocation(line: 208, column: 18, scope: !887)
!1013 = !DILocation(line: 209, column: 16, scope: !887)
!1014 = !DILocation(line: 212, column: 19, scope: !887)
!1015 = !DILocation(line: 212, column: 11, scope: !887)
!1016 = distinct !{!1016, !1017, !1018}
!1017 = !DILocation(line: 219, column: 17, scope: !893)
!1018 = !DILocation(line: 225, column: 45, scope: !893)
!1019 = !DILocation(line: 217, column: 30, scope: !893)
!1020 = !DILocation(line: 221, column: 51, scope: !1021)
!1021 = distinct !DILexicalBlock(scope: !893, file: !539, line: 220, column: 19)
!1022 = !DILocation(line: 221, column: 36, scope: !1021)
!1023 = !DILocation(line: 221, column: 53, scope: !1021)
!1024 = !DILocation(line: 221, column: 49, scope: !1021)
!1025 = !DILocation(line: 221, column: 56, scope: !1021)
!1026 = !DILocation(line: 222, column: 30, scope: !1027)
!1027 = distinct !DILexicalBlock(scope: !1021, file: !539, line: 222, column: 25)
!1028 = !DILocation(line: 222, column: 25, scope: !1021)
!1029 = !DILocation(line: 225, column: 31, scope: !893)
!1030 = !DILocation(line: 225, column: 34, scope: !893)
!1031 = !DILocation(line: 227, column: 21, scope: !1032)
!1032 = distinct !DILexicalBlock(scope: !893, file: !539, line: 227, column: 21)
!1033 = !DILocation(line: 227, column: 30, scope: !1032)
!1034 = !DILocation(line: 227, column: 37, scope: !1035)
!1035 = !DILexicalBlockFile(scope: !1032, file: !539, discriminator: 1)
!1036 = !DILocation(line: 207, column: 18, scope: !887)
!1037 = !DILocation(line: 239, column: 16, scope: !894)
!1038 = !DILocation(line: 240, column: 15, scope: !894)
!1039 = !DILocation(line: 245, column: 16, scope: !894)
!1040 = !DILocation(line: 246, column: 15, scope: !894)
!1041 = !DILocation(line: 251, column: 16, scope: !894)
!1042 = !DILocation(line: 252, column: 15, scope: !894)
!1043 = !DILocation(line: 259, column: 25, scope: !1044)
!1044 = distinct !DILexicalBlock(scope: !1045, file: !539, line: 258, column: 15)
!1045 = distinct !DILexicalBlock(scope: !894, file: !539, line: 258, column: 15)
!1046 = !DILocation(line: 259, column: 17, scope: !1044)
!1047 = !DILocation(line: 262, column: 27, scope: !1048)
!1048 = distinct !DILexicalBlock(scope: !1044, file: !539, line: 260, column: 19)
!1049 = !DILocation(line: 263, column: 21, scope: !1048)
!1050 = !DILocation(line: 265, column: 27, scope: !1048)
!1051 = !DILocation(line: 266, column: 21, scope: !1048)
!1052 = !DILocation(line: 268, column: 27, scope: !1048)
!1053 = !DILocation(line: 269, column: 21, scope: !1048)
!1054 = !DILocation(line: 275, column: 27, scope: !1048)
!1055 = !DILocation(line: 276, column: 21, scope: !1048)
!1056 = !DILocation(line: 279, column: 27, scope: !1048)
!1057 = !DILocation(line: 280, column: 21, scope: !1048)
!1058 = !DILocation(line: 258, column: 24, scope: !1059)
!1059 = !DILexicalBlockFile(scope: !1044, file: !539, discriminator: 1)
!1060 = !DILocation(line: 258, column: 15, scope: !1059)
!1061 = distinct !{!1061, !1062, !1063}
!1062 = !DILocation(line: 258, column: 15, scope: !1045)
!1063 = !DILocation(line: 283, column: 19, scope: !1045)
!1064 = !DILocation(line: 287, column: 28, scope: !887)
!1065 = !DILocation(line: 288, column: 19, scope: !887)
!1066 = !DILocation(line: 288, column: 22, scope: !887)
!1067 = !DILocation(line: 289, column: 19, scope: !887)
!1068 = !DILocation(line: 289, column: 24, scope: !887)
!1069 = !DILocation(line: 290, column: 19, scope: !887)
!1070 = !DILocation(line: 290, column: 28, scope: !887)
!1071 = !DILocation(line: 291, column: 19, scope: !887)
!1072 = !DILocation(line: 291, column: 25, scope: !887)
!1073 = !DILocation(line: 293, column: 14, scope: !887)
!1074 = !DILocation(line: 293, column: 38, scope: !1075)
!1075 = !DILexicalBlockFile(scope: !887, file: !539, discriminator: 2)
!1076 = !DILocation(line: 293, column: 14, scope: !1077)
!1077 = !DILexicalBlockFile(scope: !887, file: !539, discriminator: 6)
!1078 = !DILocation(line: 292, column: 19, scope: !887)
!1079 = !DILocation(line: 292, column: 29, scope: !887)
!1080 = !DILocation(line: 295, column: 14, scope: !883)
!1081 = !DILocation(line: 295, column: 24, scope: !883)
!1082 = !DILocation(line: 176, column: 28, scope: !1083)
!1083 = !DILexicalBlockFile(scope: !884, file: !539, discriminator: 1)
!1084 = !DILocation(line: 176, column: 3, scope: !1083)
!1085 = distinct !{!1085, !1086, !1087}
!1086 = !DILocation(line: 176, column: 3, scope: !885)
!1087 = !DILocation(line: 299, column: 5, scope: !885)
!1088 = !DILocation(line: 303, column: 16, scope: !1089)
!1089 = distinct !DILexicalBlock(scope: !1090, file: !539, line: 302, column: 5)
!1090 = distinct !DILexicalBlock(scope: !859, file: !539, line: 301, column: 7)
!1091 = !DILocation(line: 303, column: 21, scope: !1089)
!1092 = !DILocation(line: 304, column: 7, scope: !1089)
!1093 = !DILocation(line: 308, column: 3, scope: !859)
!1094 = !DILocation(line: 309, column: 3, scope: !859)
!1095 = !DILocation(line: 310, column: 1, scope: !859)
!1096 = distinct !DISubprogram(name: "mode_create_from_ref", scope: !539, file: !539, line: 316, type: !860, isLocal: false, isDefinition: true, scopeLine: 317, flags: DIFlagPrototyped, isOptimized: true, unit: !535, variables: !1097)
!1097 = !{!1098, !1099}
!1098 = !DILocalVariable(name: "ref_file", arg: 1, scope: !1096, file: !539, line: 316, type: !31)
!1099 = !DILocalVariable(name: "ref_stats", scope: !1096, file: !539, line: 318, type: !1100)
!1100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !1101, line: 46, size: 1152, elements: !1102)
!1101 = !DIFile(filename: "/usr/include/bits/stat.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1102 = !{!1103, !1105, !1107, !1109, !1110, !1112, !1114, !1115, !1116, !1119, !1121, !1123, !1131, !1132, !1133}
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !1100, file: !1101, line: 48, baseType: !1104, size: 64)
!1104 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !669, line: 133, baseType: !25)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !1100, file: !1101, line: 53, baseType: !1106, size: 64, offset: 64)
!1106 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !669, line: 136, baseType: !25)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !1100, file: !1101, line: 61, baseType: !1108, size: 64, offset: 128)
!1108 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !669, line: 139, baseType: !25)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !1100, file: !1101, line: 62, baseType: !668, size: 32, offset: 192)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !1100, file: !1101, line: 64, baseType: !1111, size: 32, offset: 224)
!1111 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !669, line: 134, baseType: !149)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !1100, file: !1101, line: 65, baseType: !1113, size: 32, offset: 256)
!1113 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !669, line: 135, baseType: !149)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !1100, file: !1101, line: 67, baseType: !61, size: 32, offset: 288)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !1100, file: !1101, line: 69, baseType: !1104, size: 64, offset: 320)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1100, file: !1101, line: 74, baseType: !1117, size: 64, offset: 384)
!1117 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !669, line: 140, baseType: !1118)
!1118 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !1100, file: !1101, line: 78, baseType: !1120, size: 64, offset: 448)
!1120 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !669, line: 162, baseType: !1118)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !1100, file: !1101, line: 80, baseType: !1122, size: 64, offset: 512)
!1122 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !669, line: 167, baseType: !1118)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !1100, file: !1101, line: 91, baseType: !1124, size: 128, offset: 576)
!1124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !1125, line: 8, size: 128, elements: !1126)
!1125 = !DIFile(filename: "/usr/include/bits/types/struct_timespec.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1126 = !{!1127, !1129}
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1124, file: !1125, line: 10, baseType: !1128, size: 64)
!1128 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !669, line: 148, baseType: !1118)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1124, file: !1125, line: 11, baseType: !1130, size: 64, offset: 64)
!1130 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !669, line: 184, baseType: !1118)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !1100, file: !1101, line: 92, baseType: !1124, size: 128, offset: 704)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !1100, file: !1101, line: 93, baseType: !1124, size: 128, offset: 832)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !1100, file: !1101, line: 106, baseType: !1134, size: 192, offset: 960)
!1134 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1130, size: 192, elements: !1135)
!1135 = !{!1136}
!1136 = !DISubrange(count: 3)
!1137 = !DILocation(line: 316, column: 35, scope: !1096)
!1138 = !DILocation(line: 318, column: 3, scope: !1096)
!1139 = !DIExpression(DW_OP_deref)
!1140 = !DILocation(line: 318, column: 15, scope: !1096)
!1141 = !DILocalVariable(name: "__path", arg: 1, scope: !1142, file: !1143, line: 449, type: !31)
!1142 = distinct !DISubprogram(name: "stat", scope: !1143, file: !1143, line: 449, type: !1144, isLocal: false, isDefinition: true, scopeLine: 450, flags: DIFlagPrototyped, isOptimized: true, unit: !535, variables: !1147)
!1143 = !DIFile(filename: "/usr/include/sys/stat.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1144 = !DISubroutineType(types: !1145)
!1145 = !{!61, !31, !1146}
!1146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1100, size: 64)
!1147 = !{!1141, !1148}
!1148 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !1142, file: !1143, line: 449, type: !1146)
!1149 = !DILocation(line: 449, column: 1, scope: !1142, inlinedAt: !1150)
!1150 = distinct !DILocation(line: 320, column: 7, scope: !1151)
!1151 = distinct !DILexicalBlock(scope: !1096, file: !539, line: 320, column: 7)
!1152 = !DILocation(line: 451, column: 10, scope: !1142, inlinedAt: !1150)
!1153 = !DILocation(line: 320, column: 35, scope: !1151)
!1154 = !DILocation(line: 320, column: 7, scope: !1096)
!1155 = !DILocation(line: 322, column: 41, scope: !1096)
!1156 = !{!1157, !725, i64 24}
!1157 = !{!"stat", !1158, i64 0, !1158, i64 8, !1158, i64 16, !725, i64 24, !725, i64 28, !725, i64 32, !725, i64 36, !1158, i64 40, !1158, i64 48, !1158, i64 56, !1158, i64 64, !1159, i64 72, !1159, i64 88, !1159, i64 104, !608, i64 120}
!1158 = !{!"long", !608, i64 0}
!1159 = !{!"timespec", !1158, i64 0, !1158, i64 8}
!1160 = !DILocation(line: 112, column: 29, scope: !928, inlinedAt: !1161)
!1161 = distinct !DILocation(line: 322, column: 10, scope: !1096)
!1162 = !DILocation(line: 112, column: 46, scope: !928, inlinedAt: !1161)
!1163 = !DILocation(line: 114, column: 27, scope: !928, inlinedAt: !1161)
!1164 = !DILocation(line: 114, column: 23, scope: !928, inlinedAt: !1161)
!1165 = !DILocation(line: 115, column: 9, scope: !928, inlinedAt: !1161)
!1166 = !DILocation(line: 116, column: 6, scope: !928, inlinedAt: !1161)
!1167 = !DILocation(line: 116, column: 11, scope: !928, inlinedAt: !1161)
!1168 = !DILocation(line: 117, column: 6, scope: !928, inlinedAt: !1161)
!1169 = !DILocation(line: 117, column: 15, scope: !928, inlinedAt: !1161)
!1170 = !DILocation(line: 118, column: 6, scope: !928, inlinedAt: !1161)
!1171 = !DILocation(line: 118, column: 12, scope: !928, inlinedAt: !1161)
!1172 = !DILocation(line: 119, column: 6, scope: !928, inlinedAt: !1161)
!1173 = !DILocation(line: 119, column: 16, scope: !928, inlinedAt: !1161)
!1174 = !DILocation(line: 120, column: 8, scope: !928, inlinedAt: !1161)
!1175 = !DILocation(line: 120, column: 13, scope: !928, inlinedAt: !1161)
!1176 = !DILocation(line: 322, column: 3, scope: !1096)
!1177 = !DILocation(line: 323, column: 1, scope: !1096)
!1178 = distinct !DISubprogram(name: "mode_adjust", scope: !539, file: !539, line: 339, type: !1179, isLocal: false, isDefinition: true, scopeLine: 341, flags: DIFlagPrototyped, isOptimized: true, unit: !535, variables: !1184)
!1179 = !DISubroutineType(types: !1180)
!1180 = !{!666, !666, !91, !666, !1181, !1183}
!1181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1182, size: 64)
!1182 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !863)
!1183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !666, size: 64)
!1184 = !{!1185, !1186, !1187, !1188, !1189, !1190, !1191, !1192, !1196, !1197, !1198}
!1185 = !DILocalVariable(name: "oldmode", arg: 1, scope: !1178, file: !539, line: 339, type: !666)
!1186 = !DILocalVariable(name: "dir", arg: 2, scope: !1178, file: !539, line: 339, type: !91)
!1187 = !DILocalVariable(name: "umask_value", arg: 3, scope: !1178, file: !539, line: 339, type: !666)
!1188 = !DILocalVariable(name: "changes", arg: 4, scope: !1178, file: !539, line: 340, type: !1181)
!1189 = !DILocalVariable(name: "pmode_bits", arg: 5, scope: !1178, file: !539, line: 340, type: !1183)
!1190 = !DILocalVariable(name: "newmode", scope: !1178, file: !539, line: 343, type: !666)
!1191 = !DILocalVariable(name: "mode_bits", scope: !1178, file: !539, line: 346, type: !666)
!1192 = !DILocalVariable(name: "affected", scope: !1193, file: !539, line: 350, type: !666)
!1193 = distinct !DILexicalBlock(scope: !1194, file: !539, line: 349, column: 5)
!1194 = distinct !DILexicalBlock(scope: !1195, file: !539, line: 348, column: 3)
!1195 = distinct !DILexicalBlock(scope: !1178, file: !539, line: 348, column: 3)
!1196 = !DILocalVariable(name: "omit_change", scope: !1193, file: !539, line: 351, type: !666)
!1197 = !DILocalVariable(name: "value", scope: !1193, file: !539, line: 353, type: !666)
!1198 = !DILocalVariable(name: "preserved", scope: !1199, file: !539, line: 393, type: !666)
!1199 = distinct !DILexicalBlock(scope: !1200, file: !539, line: 392, column: 11)
!1200 = distinct !DILexicalBlock(scope: !1193, file: !539, line: 387, column: 9)
!1201 = !DILocation(line: 339, column: 21, scope: !1178)
!1202 = !DILocation(line: 339, column: 35, scope: !1178)
!1203 = !DILocation(line: 339, column: 47, scope: !1178)
!1204 = !DILocation(line: 340, column: 40, scope: !1178)
!1205 = !DILocation(line: 340, column: 57, scope: !1178)
!1206 = !DILocation(line: 343, column: 28, scope: !1178)
!1207 = !DILocation(line: 343, column: 10, scope: !1178)
!1208 = !DILocation(line: 346, column: 10, scope: !1178)
!1209 = !DILocation(line: 348, column: 19, scope: !1210)
!1210 = !DILexicalBlockFile(scope: !1194, file: !539, discriminator: 1)
!1211 = !DILocation(line: 348, column: 24, scope: !1210)
!1212 = !DILocation(line: 348, column: 3, scope: !1213)
!1213 = !DILexicalBlockFile(scope: !1195, file: !539, discriminator: 1)
!1214 = !DILocation(line: 348, column: 10, scope: !1210)
!1215 = !DILocation(line: 350, column: 34, scope: !1193)
!1216 = !DILocation(line: 350, column: 14, scope: !1193)
!1217 = !DILocation(line: 352, column: 52, scope: !1193)
!1218 = !DILocation(line: 352, column: 41, scope: !1193)
!1219 = !DILocation(line: 352, column: 39, scope: !1193)
!1220 = !DILocation(line: 351, column: 14, scope: !1193)
!1221 = !DILocation(line: 353, column: 31, scope: !1193)
!1222 = !DILocation(line: 353, column: 14, scope: !1193)
!1223 = !DILocation(line: 355, column: 7, scope: !1193)
!1224 = !DILocation(line: 362, column: 17, scope: !1225)
!1225 = distinct !DILexicalBlock(scope: !1193, file: !539, line: 356, column: 9)
!1226 = !DILocation(line: 365, column: 28, scope: !1225)
!1227 = !DILocation(line: 365, column: 22, scope: !1225)
!1228 = !DILocation(line: 367, column: 30, scope: !1225)
!1229 = !DILocation(line: 367, column: 24, scope: !1225)
!1230 = !DILocation(line: 369, column: 30, scope: !1225)
!1231 = !DILocation(line: 369, column: 24, scope: !1225)
!1232 = !DILocation(line: 367, column: 21, scope: !1225)
!1233 = !DILocation(line: 369, column: 21, scope: !1225)
!1234 = !DILocation(line: 365, column: 17, scope: !1225)
!1235 = !DILocation(line: 371, column: 11, scope: !1225)
!1236 = !DILocation(line: 376, column: 24, scope: !1237)
!1237 = distinct !DILexicalBlock(scope: !1225, file: !539, line: 376, column: 15)
!1238 = !DILocation(line: 376, column: 57, scope: !1237)
!1239 = !DILocation(line: 377, column: 19, scope: !1237)
!1240 = !DILocation(line: 376, column: 15, scope: !1225)
!1241 = !DILocation(line: 384, column: 17, scope: !1193)
!1242 = !DILocation(line: 384, column: 55, scope: !1243)
!1243 = !DILexicalBlockFile(scope: !1193, file: !539, discriminator: 3)
!1244 = !DILocation(line: 384, column: 53, scope: !1243)
!1245 = !DILocation(line: 384, column: 13, scope: !1243)
!1246 = !DILocation(line: 386, column: 24, scope: !1193)
!1247 = !DILocation(line: 386, column: 15, scope: !1193)
!1248 = !DILocation(line: 386, column: 7, scope: !1193)
!1249 = !DILocation(line: 393, column: 44, scope: !1250)
!1250 = !DILexicalBlockFile(scope: !1199, file: !539, discriminator: 1)
!1251 = !DILocation(line: 393, column: 33, scope: !1199)
!1252 = !DILocation(line: 393, column: 59, scope: !1253)
!1253 = !DILexicalBlockFile(scope: !1199, file: !539, discriminator: 3)
!1254 = !DILocation(line: 393, column: 20, scope: !1199)
!1255 = !DILocation(line: 394, column: 42, scope: !1199)
!1256 = !DILocation(line: 394, column: 23, scope: !1199)
!1257 = !DILocation(line: 395, column: 32, scope: !1199)
!1258 = !DILocation(line: 395, column: 45, scope: !1199)
!1259 = !DILocation(line: 400, column: 21, scope: !1200)
!1260 = !DILocation(line: 401, column: 19, scope: !1200)
!1261 = !DILocation(line: 402, column: 11, scope: !1200)
!1262 = !DILocation(line: 405, column: 21, scope: !1200)
!1263 = !DILocation(line: 406, column: 22, scope: !1200)
!1264 = !DILocation(line: 406, column: 19, scope: !1200)
!1265 = !DILocation(line: 407, column: 11, scope: !1200)
!1266 = !DILocation(line: 348, column: 45, scope: !1267)
!1267 = !DILexicalBlockFile(scope: !1194, file: !539, discriminator: 2)
!1268 = distinct !{!1268, !1269, !1270}
!1269 = !DILocation(line: 348, column: 3, scope: !1195)
!1270 = !DILocation(line: 409, column: 5, scope: !1195)
!1271 = !DILocation(line: 411, column: 7, scope: !1272)
!1272 = distinct !DILexicalBlock(scope: !1178, file: !539, line: 411, column: 7)
!1273 = !DILocation(line: 411, column: 7, scope: !1178)
!1274 = !DILocation(line: 412, column: 17, scope: !1272)
!1275 = !DILocation(line: 412, column: 5, scope: !1272)
!1276 = !DILocation(line: 413, column: 3, scope: !1178)
!1277 = distinct !DISubprogram(name: "set_program_name", scope: !105, file: !105, line: 39, type: !38, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !101, variables: !1278)
!1278 = !{!1279, !1280, !1281}
!1279 = !DILocalVariable(name: "argv0", arg: 1, scope: !1277, file: !105, line: 39, type: !31)
!1280 = !DILocalVariable(name: "slash", scope: !1277, file: !105, line: 46, type: !31)
!1281 = !DILocalVariable(name: "base", scope: !1277, file: !105, line: 47, type: !31)
!1282 = !DILocation(line: 39, column: 31, scope: !1277)
!1283 = !DILocation(line: 51, column: 13, scope: !1284)
!1284 = distinct !DILexicalBlock(scope: !1277, file: !105, line: 51, column: 7)
!1285 = !DILocation(line: 51, column: 7, scope: !1277)
!1286 = !DILocation(line: 55, column: 14, scope: !1287)
!1287 = distinct !DILexicalBlock(scope: !1284, file: !105, line: 52, column: 5)
!1288 = !DILocation(line: 54, column: 7, scope: !1287)
!1289 = !DILocation(line: 56, column: 7, scope: !1287)
!1290 = !DILocation(line: 59, column: 11, scope: !1277)
!1291 = !DILocation(line: 46, column: 15, scope: !1277)
!1292 = !DILocation(line: 60, column: 17, scope: !1277)
!1293 = !DILocation(line: 60, column: 33, scope: !1294)
!1294 = !DILexicalBlockFile(scope: !1277, file: !105, discriminator: 1)
!1295 = !DILocation(line: 60, column: 11, scope: !1277)
!1296 = !DILocation(line: 47, column: 15, scope: !1277)
!1297 = !DILocation(line: 61, column: 12, scope: !1298)
!1298 = distinct !DILexicalBlock(scope: !1277, file: !105, line: 61, column: 7)
!1299 = !DILocation(line: 61, column: 20, scope: !1298)
!1300 = !DILocation(line: 61, column: 25, scope: !1298)
!1301 = !DILocation(line: 61, column: 28, scope: !1302)
!1302 = !DILexicalBlockFile(scope: !1298, file: !105, discriminator: 1)
!1303 = !DILocation(line: 61, column: 61, scope: !1302)
!1304 = !DILocation(line: 61, column: 7, scope: !1294)
!1305 = !DILocation(line: 64, column: 11, scope: !1306)
!1306 = distinct !DILexicalBlock(scope: !1307, file: !105, line: 64, column: 11)
!1307 = distinct !DILexicalBlock(scope: !1298, file: !105, line: 62, column: 5)
!1308 = !DILocation(line: 64, column: 36, scope: !1306)
!1309 = !DILocation(line: 64, column: 11, scope: !1307)
!1310 = !DILocation(line: 66, column: 24, scope: !1311)
!1311 = distinct !DILexicalBlock(scope: !1306, file: !105, line: 65, column: 9)
!1312 = !DILocation(line: 70, column: 41, scope: !1311)
!1313 = !DILocation(line: 72, column: 9, scope: !1311)
!1314 = !DILocation(line: 84, column: 16, scope: !1277)
!1315 = !DILocation(line: 90, column: 27, scope: !1277)
!1316 = !DILocation(line: 92, column: 1, scope: !1277)
!1317 = distinct !DISubprogram(name: "clone_quoting_options", scope: !136, file: !136, line: 114, type: !1318, isLocal: false, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, unit: !108, variables: !1321)
!1318 = !DISubroutineType(types: !1319)
!1319 = !{!1320, !1320}
!1320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 64)
!1321 = !{!1322, !1323, !1324}
!1322 = !DILocalVariable(name: "o", arg: 1, scope: !1317, file: !136, line: 114, type: !1320)
!1323 = !DILocalVariable(name: "e", scope: !1317, file: !136, line: 116, type: !61)
!1324 = !DILocalVariable(name: "p", scope: !1317, file: !136, line: 117, type: !1320)
!1325 = !DILocation(line: 114, column: 48, scope: !1317)
!1326 = !DILocation(line: 116, column: 11, scope: !1317)
!1327 = !DILocation(line: 116, column: 7, scope: !1317)
!1328 = !DILocation(line: 117, column: 40, scope: !1317)
!1329 = !DILocation(line: 117, column: 40, scope: !1330)
!1330 = !DILexicalBlockFile(scope: !1317, file: !136, discriminator: 3)
!1331 = !DILocation(line: 117, column: 31, scope: !1330)
!1332 = !DILocation(line: 117, column: 27, scope: !1317)
!1333 = !DILocation(line: 119, column: 9, scope: !1317)
!1334 = !DILocation(line: 120, column: 3, scope: !1317)
!1335 = distinct !DISubprogram(name: "get_quoting_style", scope: !136, file: !136, line: 125, type: !1336, isLocal: false, isDefinition: true, scopeLine: 126, flags: DIFlagPrototyped, isOptimized: true, unit: !108, variables: !1340)
!1336 = !DISubroutineType(types: !1337)
!1337 = !{!5, !1338}
!1338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1339, size: 64)
!1339 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !143)
!1340 = !{!1341}
!1341 = !DILocalVariable(name: "o", arg: 1, scope: !1335, file: !136, line: 125, type: !1338)
!1342 = !DILocation(line: 125, column: 50, scope: !1335)
!1343 = !DILocation(line: 127, column: 11, scope: !1335)
!1344 = !DILocation(line: 127, column: 46, scope: !1345)
!1345 = !DILexicalBlockFile(scope: !1335, file: !136, discriminator: 3)
!1346 = !{!1347, !608, i64 0}
!1347 = !{!"quoting_options", !608, i64 0, !725, i64 4, !608, i64 8, !607, i64 40, !607, i64 48}
!1348 = !DILocation(line: 127, column: 3, scope: !1345)
!1349 = distinct !DISubprogram(name: "set_quoting_style", scope: !136, file: !136, line: 133, type: !1350, isLocal: false, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: true, unit: !108, variables: !1352)
!1350 = !DISubroutineType(types: !1351)
!1351 = !{null, !1320, !5}
!1352 = !{!1353, !1354}
!1353 = !DILocalVariable(name: "o", arg: 1, scope: !1349, file: !136, line: 133, type: !1320)
!1354 = !DILocalVariable(name: "s", arg: 2, scope: !1349, file: !136, line: 133, type: !5)
!1355 = !DILocation(line: 133, column: 44, scope: !1349)
!1356 = !DILocation(line: 133, column: 66, scope: !1349)
!1357 = !DILocation(line: 135, column: 4, scope: !1349)
!1358 = !DILocation(line: 135, column: 39, scope: !1359)
!1359 = !DILexicalBlockFile(scope: !1349, file: !136, discriminator: 3)
!1360 = !DILocation(line: 135, column: 45, scope: !1359)
!1361 = !DILocation(line: 136, column: 1, scope: !1349)
!1362 = distinct !DISubprogram(name: "set_char_quoting", scope: !136, file: !136, line: 144, type: !1363, isLocal: false, isDefinition: true, scopeLine: 145, flags: DIFlagPrototyped, isOptimized: true, unit: !108, variables: !1365)
!1363 = !DISubroutineType(types: !1364)
!1364 = !{!61, !1320, !21, !61}
!1365 = !{!1366, !1367, !1368, !1369, !1370, !1372, !1373}
!1366 = !DILocalVariable(name: "o", arg: 1, scope: !1362, file: !136, line: 144, type: !1320)
!1367 = !DILocalVariable(name: "c", arg: 2, scope: !1362, file: !136, line: 144, type: !21)
!1368 = !DILocalVariable(name: "i", arg: 3, scope: !1362, file: !136, line: 144, type: !61)
!1369 = !DILocalVariable(name: "uc", scope: !1362, file: !136, line: 146, type: !30)
!1370 = !DILocalVariable(name: "p", scope: !1362, file: !136, line: 147, type: !1371)
!1371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !149, size: 64)
!1372 = !DILocalVariable(name: "shift", scope: !1362, file: !136, line: 149, type: !61)
!1373 = !DILocalVariable(name: "r", scope: !1362, file: !136, line: 150, type: !61)
!1374 = !DILocation(line: 144, column: 43, scope: !1362)
!1375 = !DILocation(line: 144, column: 51, scope: !1362)
!1376 = !DILocation(line: 144, column: 58, scope: !1362)
!1377 = !DILocation(line: 146, column: 17, scope: !1362)
!1378 = !DILocation(line: 148, column: 6, scope: !1362)
!1379 = !DILocation(line: 148, column: 62, scope: !1380)
!1380 = !DILexicalBlockFile(scope: !1362, file: !136, discriminator: 3)
!1381 = !DILocation(line: 148, column: 57, scope: !1380)
!1382 = !DILocation(line: 147, column: 17, scope: !1362)
!1383 = !DILocation(line: 149, column: 18, scope: !1362)
!1384 = !DILocation(line: 149, column: 15, scope: !1362)
!1385 = !DILocation(line: 149, column: 7, scope: !1362)
!1386 = !DILocation(line: 150, column: 12, scope: !1362)
!1387 = !DILocation(line: 150, column: 15, scope: !1362)
!1388 = !DILocation(line: 150, column: 25, scope: !1362)
!1389 = !DILocation(line: 150, column: 7, scope: !1362)
!1390 = !DILocation(line: 151, column: 13, scope: !1362)
!1391 = !DILocation(line: 151, column: 18, scope: !1362)
!1392 = !DILocation(line: 151, column: 23, scope: !1362)
!1393 = !DILocation(line: 151, column: 6, scope: !1362)
!1394 = !DILocation(line: 152, column: 3, scope: !1362)
!1395 = distinct !DISubprogram(name: "set_quoting_flags", scope: !136, file: !136, line: 160, type: !1396, isLocal: false, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !108, variables: !1398)
!1396 = !DISubroutineType(types: !1397)
!1397 = !{!61, !1320, !61}
!1398 = !{!1399, !1400, !1401}
!1399 = !DILocalVariable(name: "o", arg: 1, scope: !1395, file: !136, line: 160, type: !1320)
!1400 = !DILocalVariable(name: "i", arg: 2, scope: !1395, file: !136, line: 160, type: !61)
!1401 = !DILocalVariable(name: "r", scope: !1395, file: !136, line: 162, type: !61)
!1402 = !DILocation(line: 160, column: 44, scope: !1395)
!1403 = !DILocation(line: 160, column: 51, scope: !1395)
!1404 = !DILocation(line: 163, column: 8, scope: !1405)
!1405 = distinct !DILexicalBlock(scope: !1395, file: !136, line: 163, column: 7)
!1406 = !DILocation(line: 163, column: 7, scope: !1395)
!1407 = !DILocation(line: 165, column: 10, scope: !1395)
!1408 = !{!1347, !725, i64 4}
!1409 = !DILocation(line: 162, column: 7, scope: !1395)
!1410 = !DILocation(line: 166, column: 12, scope: !1395)
!1411 = !DILocation(line: 167, column: 3, scope: !1395)
!1412 = distinct !DISubprogram(name: "set_custom_quoting", scope: !136, file: !136, line: 171, type: !1413, isLocal: false, isDefinition: true, scopeLine: 173, flags: DIFlagPrototyped, isOptimized: true, unit: !108, variables: !1415)
!1413 = !DISubroutineType(types: !1414)
!1414 = !{null, !1320, !31, !31}
!1415 = !{!1416, !1417, !1418}
!1416 = !DILocalVariable(name: "o", arg: 1, scope: !1412, file: !136, line: 171, type: !1320)
!1417 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1412, file: !136, line: 172, type: !31)
!1418 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1412, file: !136, line: 172, type: !31)
!1419 = !DILocation(line: 171, column: 45, scope: !1412)
!1420 = !DILocation(line: 172, column: 33, scope: !1412)
!1421 = !DILocation(line: 172, column: 57, scope: !1412)
!1422 = !DILocation(line: 174, column: 8, scope: !1423)
!1423 = distinct !DILexicalBlock(scope: !1412, file: !136, line: 174, column: 7)
!1424 = !DILocation(line: 174, column: 7, scope: !1412)
!1425 = !DILocation(line: 176, column: 6, scope: !1412)
!1426 = !DILocation(line: 176, column: 12, scope: !1412)
!1427 = !DILocation(line: 177, column: 8, scope: !1428)
!1428 = distinct !DILexicalBlock(scope: !1412, file: !136, line: 177, column: 7)
!1429 = !DILocation(line: 177, column: 23, scope: !1430)
!1430 = !DILexicalBlockFile(scope: !1428, file: !136, discriminator: 1)
!1431 = !DILocation(line: 177, column: 19, scope: !1428)
!1432 = !DILocation(line: 178, column: 5, scope: !1428)
!1433 = !DILocation(line: 179, column: 6, scope: !1412)
!1434 = !DILocation(line: 179, column: 17, scope: !1412)
!1435 = !{!1347, !607, i64 40}
!1436 = !DILocation(line: 180, column: 6, scope: !1412)
!1437 = !DILocation(line: 180, column: 18, scope: !1412)
!1438 = !{!1347, !607, i64 48}
!1439 = !DILocation(line: 181, column: 1, scope: !1412)
!1440 = distinct !DISubprogram(name: "quotearg_buffer", scope: !136, file: !136, line: 776, type: !1441, isLocal: false, isDefinition: true, scopeLine: 779, flags: DIFlagPrototyped, isOptimized: true, unit: !108, variables: !1443)
!1441 = !DISubroutineType(types: !1442)
!1442 = !{!23, !20, !23, !31, !23, !1338}
!1443 = !{!1444, !1445, !1446, !1447, !1448, !1449, !1450, !1451}
!1444 = !DILocalVariable(name: "buffer", arg: 1, scope: !1440, file: !136, line: 776, type: !20)
!1445 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1440, file: !136, line: 776, type: !23)
!1446 = !DILocalVariable(name: "arg", arg: 3, scope: !1440, file: !136, line: 777, type: !31)
!1447 = !DILocalVariable(name: "argsize", arg: 4, scope: !1440, file: !136, line: 777, type: !23)
!1448 = !DILocalVariable(name: "o", arg: 5, scope: !1440, file: !136, line: 778, type: !1338)
!1449 = !DILocalVariable(name: "p", scope: !1440, file: !136, line: 780, type: !1338)
!1450 = !DILocalVariable(name: "e", scope: !1440, file: !136, line: 781, type: !61)
!1451 = !DILocalVariable(name: "r", scope: !1440, file: !136, line: 782, type: !23)
!1452 = !DILocation(line: 776, column: 24, scope: !1440)
!1453 = !DILocation(line: 776, column: 39, scope: !1440)
!1454 = !DILocation(line: 777, column: 30, scope: !1440)
!1455 = !DILocation(line: 777, column: 42, scope: !1440)
!1456 = !DILocation(line: 778, column: 48, scope: !1440)
!1457 = !DILocation(line: 780, column: 37, scope: !1440)
!1458 = !DILocation(line: 780, column: 33, scope: !1440)
!1459 = !DILocation(line: 781, column: 11, scope: !1440)
!1460 = !DILocation(line: 781, column: 7, scope: !1440)
!1461 = !DILocation(line: 783, column: 43, scope: !1440)
!1462 = !DILocation(line: 783, column: 53, scope: !1440)
!1463 = !DILocation(line: 783, column: 60, scope: !1440)
!1464 = !DILocation(line: 784, column: 43, scope: !1440)
!1465 = !DILocation(line: 784, column: 58, scope: !1440)
!1466 = !DILocation(line: 782, column: 14, scope: !1440)
!1467 = !DILocation(line: 782, column: 10, scope: !1440)
!1468 = !DILocation(line: 785, column: 9, scope: !1440)
!1469 = !DILocation(line: 786, column: 3, scope: !1440)
!1470 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !136, file: !136, line: 248, type: !1471, isLocal: true, isDefinition: true, scopeLine: 254, flags: DIFlagPrototyped, isOptimized: true, unit: !108, variables: !1475)
!1471 = !DISubroutineType(types: !1472)
!1472 = !{!23, !20, !23, !31, !23, !5, !61, !1473, !31, !31}
!1473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1474, size: 64)
!1474 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !149)
!1475 = !{!1476, !1477, !1478, !1479, !1480, !1481, !1482, !1483, !1484, !1485, !1486, !1487, !1488, !1489, !1490, !1491, !1492, !1493, !1494, !1495, !1496, !1500, !1501, !1502, !1503, !1504, !1507, !1508, !1525, !1528, !1529, !1536}
!1476 = !DILocalVariable(name: "buffer", arg: 1, scope: !1470, file: !136, line: 248, type: !20)
!1477 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1470, file: !136, line: 248, type: !23)
!1478 = !DILocalVariable(name: "arg", arg: 3, scope: !1470, file: !136, line: 249, type: !31)
!1479 = !DILocalVariable(name: "argsize", arg: 4, scope: !1470, file: !136, line: 249, type: !23)
!1480 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1470, file: !136, line: 250, type: !5)
!1481 = !DILocalVariable(name: "flags", arg: 6, scope: !1470, file: !136, line: 250, type: !61)
!1482 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1470, file: !136, line: 251, type: !1473)
!1483 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1470, file: !136, line: 252, type: !31)
!1484 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1470, file: !136, line: 253, type: !31)
!1485 = !DILocalVariable(name: "i", scope: !1470, file: !136, line: 255, type: !23)
!1486 = !DILocalVariable(name: "len", scope: !1470, file: !136, line: 256, type: !23)
!1487 = !DILocalVariable(name: "orig_buffersize", scope: !1470, file: !136, line: 257, type: !23)
!1488 = !DILocalVariable(name: "quote_string", scope: !1470, file: !136, line: 258, type: !31)
!1489 = !DILocalVariable(name: "quote_string_len", scope: !1470, file: !136, line: 259, type: !23)
!1490 = !DILocalVariable(name: "backslash_escapes", scope: !1470, file: !136, line: 260, type: !91)
!1491 = !DILocalVariable(name: "unibyte_locale", scope: !1470, file: !136, line: 261, type: !91)
!1492 = !DILocalVariable(name: "elide_outer_quotes", scope: !1470, file: !136, line: 262, type: !91)
!1493 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1470, file: !136, line: 263, type: !91)
!1494 = !DILocalVariable(name: "encountered_single_quote", scope: !1470, file: !136, line: 264, type: !91)
!1495 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1470, file: !136, line: 265, type: !91)
!1496 = !DILocalVariable(name: "c", scope: !1497, file: !136, line: 394, type: !30)
!1497 = distinct !DILexicalBlock(scope: !1498, file: !136, line: 393, column: 5)
!1498 = distinct !DILexicalBlock(scope: !1499, file: !136, line: 392, column: 3)
!1499 = distinct !DILexicalBlock(scope: !1470, file: !136, line: 392, column: 3)
!1500 = !DILocalVariable(name: "esc", scope: !1497, file: !136, line: 395, type: !30)
!1501 = !DILocalVariable(name: "is_right_quote", scope: !1497, file: !136, line: 396, type: !91)
!1502 = !DILocalVariable(name: "escaping", scope: !1497, file: !136, line: 397, type: !91)
!1503 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1497, file: !136, line: 398, type: !91)
!1504 = !DILocalVariable(name: "m", scope: !1505, file: !136, line: 602, type: !23)
!1505 = distinct !DILexicalBlock(scope: !1506, file: !136, line: 600, column: 11)
!1506 = distinct !DILexicalBlock(scope: !1497, file: !136, line: 418, column: 9)
!1507 = !DILocalVariable(name: "printable", scope: !1505, file: !136, line: 604, type: !91)
!1508 = !DILocalVariable(name: "mbstate", scope: !1509, file: !136, line: 613, type: !1511)
!1509 = distinct !DILexicalBlock(scope: !1510, file: !136, line: 612, column: 15)
!1510 = distinct !DILexicalBlock(scope: !1505, file: !136, line: 606, column: 17)
!1511 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1512, line: 107, baseType: !1513)
!1512 = !DIFile(filename: "/usr/include/wchar.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1513 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1512, line: 95, baseType: !1514)
!1514 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1512, line: 83, size: 64, elements: !1515)
!1515 = !{!1516, !1517}
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1514, file: !1512, line: 85, baseType: !61, size: 32)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1514, file: !1512, line: 94, baseType: !1518, size: 32, offset: 32)
!1518 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1514, file: !1512, line: 86, size: 32, elements: !1519)
!1519 = !{!1520, !1521}
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1518, file: !1512, line: 89, baseType: !149, size: 32)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1518, file: !1512, line: 93, baseType: !1522, size: 32)
!1522 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 32, elements: !1523)
!1523 = !{!1524}
!1524 = !DISubrange(count: 4)
!1525 = !DILocalVariable(name: "w", scope: !1526, file: !136, line: 623, type: !1527)
!1526 = distinct !DILexicalBlock(scope: !1509, file: !136, line: 622, column: 19)
!1527 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !24, line: 90, baseType: !61)
!1528 = !DILocalVariable(name: "bytes", scope: !1526, file: !136, line: 624, type: !23)
!1529 = !DILocalVariable(name: "j", scope: !1530, file: !136, line: 649, type: !23)
!1530 = distinct !DILexicalBlock(scope: !1531, file: !136, line: 648, column: 27)
!1531 = distinct !DILexicalBlock(scope: !1532, file: !136, line: 646, column: 29)
!1532 = distinct !DILexicalBlock(scope: !1533, file: !136, line: 641, column: 23)
!1533 = distinct !DILexicalBlock(scope: !1534, file: !136, line: 633, column: 30)
!1534 = distinct !DILexicalBlock(scope: !1535, file: !136, line: 628, column: 30)
!1535 = distinct !DILexicalBlock(scope: !1526, file: !136, line: 626, column: 25)
!1536 = !DILocalVariable(name: "ilim", scope: !1537, file: !136, line: 676, type: !23)
!1537 = distinct !DILexicalBlock(scope: !1538, file: !136, line: 673, column: 15)
!1538 = distinct !DILexicalBlock(scope: !1505, file: !136, line: 672, column: 17)
!1539 = !DILocation(line: 248, column: 33, scope: !1470)
!1540 = !DILocation(line: 248, column: 48, scope: !1470)
!1541 = !DILocation(line: 249, column: 39, scope: !1470)
!1542 = !DILocation(line: 249, column: 51, scope: !1470)
!1543 = !DILocation(line: 250, column: 46, scope: !1470)
!1544 = !DILocation(line: 250, column: 65, scope: !1470)
!1545 = !DILocation(line: 251, column: 47, scope: !1470)
!1546 = !DILocation(line: 252, column: 39, scope: !1470)
!1547 = !DILocation(line: 253, column: 39, scope: !1470)
!1548 = !DILocation(line: 256, column: 10, scope: !1470)
!1549 = !DILocation(line: 257, column: 10, scope: !1470)
!1550 = !DILocation(line: 258, column: 15, scope: !1470)
!1551 = !DILocation(line: 259, column: 10, scope: !1470)
!1552 = !DILocation(line: 260, column: 8, scope: !1470)
!1553 = !DILocation(line: 261, column: 25, scope: !1470)
!1554 = !DILocation(line: 261, column: 36, scope: !1470)
!1555 = !DILocation(line: 262, column: 8, scope: !1470)
!1556 = !DILocation(line: 263, column: 8, scope: !1470)
!1557 = !DILocation(line: 264, column: 8, scope: !1470)
!1558 = !DILocation(line: 265, column: 8, scope: !1470)
!1559 = !DILocation(line: 265, column: 3, scope: !1470)
!1560 = !DILocation(line: 308, column: 3, scope: !1470)
!1561 = !DILocation(line: 315, column: 11, scope: !1562)
!1562 = distinct !DILexicalBlock(scope: !1470, file: !136, line: 309, column: 5)
!1563 = !DILocation(line: 315, column: 12, scope: !1564)
!1564 = distinct !DILexicalBlock(scope: !1562, file: !136, line: 315, column: 11)
!1565 = !DILocation(line: 316, column: 9, scope: !1566)
!1566 = !DILexicalBlockFile(scope: !1567, file: !136, discriminator: 1)
!1567 = distinct !DILexicalBlock(scope: !1568, file: !136, line: 316, column: 9)
!1568 = distinct !DILexicalBlock(scope: !1564, file: !136, line: 316, column: 9)
!1569 = !DILocation(line: 316, column: 9, scope: !1570)
!1570 = !DILexicalBlockFile(scope: !1568, file: !136, discriminator: 1)
!1571 = !DILocation(line: 316, column: 9, scope: !1572)
!1572 = !DILexicalBlockFile(scope: !1567, file: !136, discriminator: 2)
!1573 = !DILocation(line: 354, column: 26, scope: !1574)
!1574 = distinct !DILexicalBlock(scope: !1575, file: !136, line: 332, column: 11)
!1575 = distinct !DILexicalBlock(scope: !1576, file: !136, line: 331, column: 13)
!1576 = distinct !DILexicalBlock(scope: !1562, file: !136, line: 330, column: 7)
!1577 = !DILocation(line: 355, column: 27, scope: !1574)
!1578 = !DILocation(line: 356, column: 11, scope: !1574)
!1579 = !DILocation(line: 357, column: 14, scope: !1580)
!1580 = distinct !DILexicalBlock(scope: !1576, file: !136, line: 357, column: 13)
!1581 = !DILocation(line: 357, column: 13, scope: !1576)
!1582 = !DILocation(line: 358, column: 43, scope: !1583)
!1583 = !DILexicalBlockFile(scope: !1584, file: !136, discriminator: 1)
!1584 = distinct !DILexicalBlock(scope: !1585, file: !136, line: 358, column: 11)
!1585 = distinct !DILexicalBlock(scope: !1580, file: !136, line: 358, column: 11)
!1586 = !DILocation(line: 358, column: 11, scope: !1587)
!1587 = !DILexicalBlockFile(scope: !1585, file: !136, discriminator: 1)
!1588 = !DILocation(line: 359, column: 13, scope: !1589)
!1589 = !DILexicalBlockFile(scope: !1590, file: !136, discriminator: 1)
!1590 = distinct !DILexicalBlock(scope: !1591, file: !136, line: 359, column: 13)
!1591 = distinct !DILexicalBlock(scope: !1584, file: !136, line: 359, column: 13)
!1592 = !DILocation(line: 359, column: 13, scope: !1593)
!1593 = !DILexicalBlockFile(scope: !1591, file: !136, discriminator: 1)
!1594 = !DILocation(line: 359, column: 13, scope: !1595)
!1595 = !DILexicalBlockFile(scope: !1590, file: !136, discriminator: 2)
!1596 = !DILocation(line: 359, column: 13, scope: !1597)
!1597 = !DILexicalBlockFile(scope: !1591, file: !136, discriminator: 3)
!1598 = !DILocation(line: 358, column: 70, scope: !1599)
!1599 = !DILexicalBlockFile(scope: !1584, file: !136, discriminator: 2)
!1600 = distinct !{!1600, !1601, !1602}
!1601 = !DILocation(line: 358, column: 11, scope: !1585)
!1602 = !DILocation(line: 359, column: 13, scope: !1585)
!1603 = !DILocation(line: 362, column: 28, scope: !1576)
!1604 = !DILocation(line: 364, column: 7, scope: !1562)
!1605 = !DILocation(line: 367, column: 7, scope: !1562)
!1606 = !DILocation(line: 370, column: 7, scope: !1562)
!1607 = !DILocation(line: 373, column: 12, scope: !1608)
!1608 = distinct !DILexicalBlock(scope: !1562, file: !136, line: 373, column: 11)
!1609 = !DILocation(line: 373, column: 11, scope: !1562)
!1610 = !DILocation(line: 378, column: 12, scope: !1611)
!1611 = distinct !DILexicalBlock(scope: !1562, file: !136, line: 378, column: 11)
!1612 = !DILocation(line: 378, column: 11, scope: !1562)
!1613 = !DILocation(line: 379, column: 9, scope: !1614)
!1614 = !DILexicalBlockFile(scope: !1615, file: !136, discriminator: 1)
!1615 = distinct !DILexicalBlock(scope: !1616, file: !136, line: 379, column: 9)
!1616 = distinct !DILexicalBlock(scope: !1611, file: !136, line: 379, column: 9)
!1617 = !DILocation(line: 379, column: 9, scope: !1618)
!1618 = !DILexicalBlockFile(scope: !1616, file: !136, discriminator: 1)
!1619 = !DILocation(line: 379, column: 9, scope: !1620)
!1620 = !DILexicalBlockFile(scope: !1615, file: !136, discriminator: 2)
!1621 = !DILocation(line: 386, column: 7, scope: !1562)
!1622 = !DILocation(line: 389, column: 7, scope: !1562)
!1623 = !DILocation(line: 255, column: 10, scope: !1470)
!1624 = !DILocation(line: 392, column: 8, scope: !1499)
!1625 = !DILocation(line: 392, column: 27, scope: !1626)
!1626 = !DILexicalBlockFile(scope: !1498, file: !136, discriminator: 1)
!1627 = !DILocation(line: 392, column: 19, scope: !1626)
!1628 = !DILocation(line: 392, column: 60, scope: !1629)
!1629 = !DILexicalBlockFile(scope: !1498, file: !136, discriminator: 3)
!1630 = !DILocation(line: 392, column: 3, scope: !1631)
!1631 = !DILexicalBlockFile(scope: !1499, file: !136, discriminator: 4)
!1632 = !DILocation(line: 392, column: 41, scope: !1633)
!1633 = !DILexicalBlockFile(scope: !1498, file: !136, discriminator: 2)
!1634 = !DILocation(line: 392, column: 48, scope: !1633)
!1635 = !DILocation(line: 396, column: 12, scope: !1497)
!1636 = !DILocation(line: 397, column: 12, scope: !1497)
!1637 = !DILocation(line: 398, column: 12, scope: !1497)
!1638 = !DILocation(line: 401, column: 11, scope: !1639)
!1639 = distinct !DILexicalBlock(scope: !1497, file: !136, line: 400, column: 11)
!1640 = !DILocation(line: 403, column: 17, scope: !1641)
!1641 = !DILexicalBlockFile(scope: !1639, file: !136, discriminator: 1)
!1642 = !DILocation(line: 404, column: 39, scope: !1639)
!1643 = !DILocation(line: 408, column: 32, scope: !1639)
!1644 = !DILocation(line: 404, column: 19, scope: !1645)
!1645 = !DILexicalBlockFile(scope: !1639, file: !136, discriminator: 2)
!1646 = !DILocation(line: 404, column: 15, scope: !1647)
!1647 = !DILexicalBlockFile(scope: !1639, file: !136, discriminator: 4)
!1648 = !DILocation(line: 409, column: 11, scope: !1639)
!1649 = !DILocation(line: 409, column: 26, scope: !1641)
!1650 = !DILocation(line: 409, column: 14, scope: !1641)
!1651 = !DILocation(line: 400, column: 11, scope: !1652)
!1652 = !DILexicalBlockFile(scope: !1497, file: !136, discriminator: 1)
!1653 = !DILocation(line: 416, column: 11, scope: !1497)
!1654 = !DILocation(line: 394, column: 21, scope: !1497)
!1655 = !DILocation(line: 417, column: 7, scope: !1497)
!1656 = !DILocation(line: 420, column: 15, scope: !1506)
!1657 = !DILocation(line: 422, column: 15, scope: !1658)
!1658 = !DILexicalBlockFile(scope: !1659, file: !136, discriminator: 1)
!1659 = distinct !DILexicalBlock(scope: !1660, file: !136, line: 422, column: 15)
!1660 = distinct !DILexicalBlock(scope: !1661, file: !136, line: 421, column: 13)
!1661 = distinct !DILexicalBlock(scope: !1506, file: !136, line: 420, column: 15)
!1662 = !DILocation(line: 422, column: 15, scope: !1663)
!1663 = !DILexicalBlockFile(scope: !1664, file: !136, discriminator: 4)
!1664 = distinct !DILexicalBlock(scope: !1659, file: !136, line: 422, column: 15)
!1665 = !DILocation(line: 422, column: 15, scope: !1666)
!1666 = !DILexicalBlockFile(scope: !1664, file: !136, discriminator: 3)
!1667 = !DILocation(line: 422, column: 15, scope: !1668)
!1668 = !DILexicalBlockFile(scope: !1669, file: !136, discriminator: 6)
!1669 = distinct !DILexicalBlock(scope: !1670, file: !136, line: 422, column: 15)
!1670 = distinct !DILexicalBlock(scope: !1671, file: !136, line: 422, column: 15)
!1671 = distinct !DILexicalBlock(scope: !1664, file: !136, line: 422, column: 15)
!1672 = !DILocation(line: 422, column: 15, scope: !1673)
!1673 = !DILexicalBlockFile(scope: !1670, file: !136, discriminator: 6)
!1674 = !DILocation(line: 422, column: 15, scope: !1675)
!1675 = !DILexicalBlockFile(scope: !1669, file: !136, discriminator: 7)
!1676 = !DILocation(line: 422, column: 15, scope: !1677)
!1677 = !DILexicalBlockFile(scope: !1670, file: !136, discriminator: 8)
!1678 = !DILocation(line: 422, column: 15, scope: !1679)
!1679 = !DILexicalBlockFile(scope: !1680, file: !136, discriminator: 11)
!1680 = distinct !DILexicalBlock(scope: !1681, file: !136, line: 422, column: 15)
!1681 = distinct !DILexicalBlock(scope: !1671, file: !136, line: 422, column: 15)
!1682 = !DILocation(line: 422, column: 15, scope: !1683)
!1683 = !DILexicalBlockFile(scope: !1681, file: !136, discriminator: 11)
!1684 = !DILocation(line: 422, column: 15, scope: !1685)
!1685 = !DILexicalBlockFile(scope: !1680, file: !136, discriminator: 12)
!1686 = !DILocation(line: 422, column: 15, scope: !1687)
!1687 = !DILexicalBlockFile(scope: !1681, file: !136, discriminator: 13)
!1688 = !DILocation(line: 422, column: 15, scope: !1689)
!1689 = !DILexicalBlockFile(scope: !1690, file: !136, discriminator: 16)
!1690 = distinct !DILexicalBlock(scope: !1691, file: !136, line: 422, column: 15)
!1691 = distinct !DILexicalBlock(scope: !1671, file: !136, line: 422, column: 15)
!1692 = !DILocation(line: 422, column: 15, scope: !1693)
!1693 = !DILexicalBlockFile(scope: !1691, file: !136, discriminator: 16)
!1694 = !DILocation(line: 422, column: 15, scope: !1695)
!1695 = !DILexicalBlockFile(scope: !1690, file: !136, discriminator: 17)
!1696 = !DILocation(line: 422, column: 15, scope: !1697)
!1697 = !DILexicalBlockFile(scope: !1691, file: !136, discriminator: 18)
!1698 = !DILocation(line: 422, column: 15, scope: !1699)
!1699 = !DILexicalBlockFile(scope: !1671, file: !136, discriminator: 20)
!1700 = !DILocation(line: 422, column: 15, scope: !1701)
!1701 = !DILexicalBlockFile(scope: !1702, file: !136, discriminator: 22)
!1702 = distinct !DILexicalBlock(scope: !1703, file: !136, line: 422, column: 15)
!1703 = distinct !DILexicalBlock(scope: !1659, file: !136, line: 422, column: 15)
!1704 = !DILocation(line: 422, column: 15, scope: !1705)
!1705 = !DILexicalBlockFile(scope: !1703, file: !136, discriminator: 22)
!1706 = !DILocation(line: 422, column: 15, scope: !1707)
!1707 = !DILexicalBlockFile(scope: !1702, file: !136, discriminator: 23)
!1708 = !DILocation(line: 422, column: 15, scope: !1709)
!1709 = !DILexicalBlockFile(scope: !1703, file: !136, discriminator: 24)
!1710 = !DILocation(line: 430, column: 19, scope: !1711)
!1711 = distinct !DILexicalBlock(scope: !1660, file: !136, line: 429, column: 19)
!1712 = !DILocation(line: 430, column: 24, scope: !1713)
!1713 = !DILexicalBlockFile(scope: !1711, file: !136, discriminator: 1)
!1714 = !DILocation(line: 430, column: 28, scope: !1713)
!1715 = !DILocation(line: 430, column: 38, scope: !1713)
!1716 = !DILocation(line: 430, column: 48, scope: !1717)
!1717 = !DILexicalBlockFile(scope: !1711, file: !136, discriminator: 2)
!1718 = !DILocation(line: 430, column: 59, scope: !1717)
!1719 = !DILocation(line: 432, column: 19, scope: !1720)
!1720 = !DILexicalBlockFile(scope: !1721, file: !136, discriminator: 1)
!1721 = distinct !DILexicalBlock(scope: !1722, file: !136, line: 432, column: 19)
!1722 = distinct !DILexicalBlock(scope: !1723, file: !136, line: 432, column: 19)
!1723 = distinct !DILexicalBlock(scope: !1711, file: !136, line: 431, column: 17)
!1724 = !DILocation(line: 432, column: 19, scope: !1725)
!1725 = !DILexicalBlockFile(scope: !1722, file: !136, discriminator: 1)
!1726 = !DILocation(line: 432, column: 19, scope: !1727)
!1727 = !DILexicalBlockFile(scope: !1721, file: !136, discriminator: 2)
!1728 = !DILocation(line: 432, column: 19, scope: !1729)
!1729 = !DILexicalBlockFile(scope: !1722, file: !136, discriminator: 3)
!1730 = !DILocation(line: 433, column: 19, scope: !1731)
!1731 = !DILexicalBlockFile(scope: !1732, file: !136, discriminator: 1)
!1732 = distinct !DILexicalBlock(scope: !1733, file: !136, line: 433, column: 19)
!1733 = distinct !DILexicalBlock(scope: !1723, file: !136, line: 433, column: 19)
!1734 = !DILocation(line: 433, column: 19, scope: !1735)
!1735 = !DILexicalBlockFile(scope: !1733, file: !136, discriminator: 1)
!1736 = !DILocation(line: 433, column: 19, scope: !1737)
!1737 = !DILexicalBlockFile(scope: !1732, file: !136, discriminator: 2)
!1738 = !DILocation(line: 433, column: 19, scope: !1739)
!1739 = !DILexicalBlockFile(scope: !1733, file: !136, discriminator: 3)
!1740 = !DILocation(line: 434, column: 17, scope: !1723)
!1741 = !DILocation(line: 441, column: 20, scope: !1661)
!1742 = !DILocation(line: 446, column: 11, scope: !1506)
!1743 = !DILocation(line: 449, column: 19, scope: !1744)
!1744 = distinct !DILexicalBlock(scope: !1506, file: !136, line: 447, column: 13)
!1745 = !DILocation(line: 455, column: 19, scope: !1746)
!1746 = distinct !DILexicalBlock(scope: !1744, file: !136, line: 454, column: 19)
!1747 = !DILocation(line: 455, column: 24, scope: !1748)
!1748 = !DILexicalBlockFile(scope: !1746, file: !136, discriminator: 1)
!1749 = !DILocation(line: 455, column: 28, scope: !1748)
!1750 = !DILocation(line: 455, column: 38, scope: !1748)
!1751 = !DILocation(line: 455, column: 47, scope: !1752)
!1752 = !DILexicalBlockFile(scope: !1746, file: !136, discriminator: 2)
!1753 = !DILocation(line: 455, column: 41, scope: !1752)
!1754 = !DILocation(line: 455, column: 52, scope: !1752)
!1755 = !DILocation(line: 454, column: 19, scope: !1756)
!1756 = !DILexicalBlockFile(scope: !1744, file: !136, discriminator: 1)
!1757 = !DILocation(line: 456, column: 25, scope: !1746)
!1758 = !DILocation(line: 456, column: 17, scope: !1746)
!1759 = !DILocation(line: 463, column: 25, scope: !1760)
!1760 = distinct !DILexicalBlock(scope: !1746, file: !136, line: 457, column: 19)
!1761 = !DILocation(line: 467, column: 21, scope: !1762)
!1762 = !DILexicalBlockFile(scope: !1763, file: !136, discriminator: 1)
!1763 = distinct !DILexicalBlock(scope: !1764, file: !136, line: 467, column: 21)
!1764 = distinct !DILexicalBlock(scope: !1760, file: !136, line: 467, column: 21)
!1765 = !DILocation(line: 467, column: 21, scope: !1766)
!1766 = !DILexicalBlockFile(scope: !1764, file: !136, discriminator: 1)
!1767 = !DILocation(line: 467, column: 21, scope: !1768)
!1768 = !DILexicalBlockFile(scope: !1763, file: !136, discriminator: 2)
!1769 = !DILocation(line: 467, column: 21, scope: !1770)
!1770 = !DILexicalBlockFile(scope: !1764, file: !136, discriminator: 3)
!1771 = !DILocation(line: 468, column: 21, scope: !1772)
!1772 = !DILexicalBlockFile(scope: !1773, file: !136, discriminator: 1)
!1773 = distinct !DILexicalBlock(scope: !1774, file: !136, line: 468, column: 21)
!1774 = distinct !DILexicalBlock(scope: !1760, file: !136, line: 468, column: 21)
!1775 = !DILocation(line: 468, column: 21, scope: !1776)
!1776 = !DILexicalBlockFile(scope: !1774, file: !136, discriminator: 1)
!1777 = !DILocation(line: 468, column: 21, scope: !1778)
!1778 = !DILexicalBlockFile(scope: !1773, file: !136, discriminator: 2)
!1779 = !DILocation(line: 468, column: 21, scope: !1780)
!1780 = !DILexicalBlockFile(scope: !1774, file: !136, discriminator: 3)
!1781 = !DILocation(line: 469, column: 21, scope: !1782)
!1782 = !DILexicalBlockFile(scope: !1783, file: !136, discriminator: 1)
!1783 = distinct !DILexicalBlock(scope: !1784, file: !136, line: 469, column: 21)
!1784 = distinct !DILexicalBlock(scope: !1760, file: !136, line: 469, column: 21)
!1785 = !DILocation(line: 469, column: 21, scope: !1786)
!1786 = !DILexicalBlockFile(scope: !1784, file: !136, discriminator: 1)
!1787 = !DILocation(line: 469, column: 21, scope: !1788)
!1788 = !DILexicalBlockFile(scope: !1783, file: !136, discriminator: 2)
!1789 = !DILocation(line: 469, column: 21, scope: !1790)
!1790 = !DILexicalBlockFile(scope: !1784, file: !136, discriminator: 3)
!1791 = !DILocation(line: 470, column: 21, scope: !1792)
!1792 = !DILexicalBlockFile(scope: !1793, file: !136, discriminator: 1)
!1793 = distinct !DILexicalBlock(scope: !1794, file: !136, line: 470, column: 21)
!1794 = distinct !DILexicalBlock(scope: !1760, file: !136, line: 470, column: 21)
!1795 = !DILocation(line: 470, column: 21, scope: !1796)
!1796 = !DILexicalBlockFile(scope: !1794, file: !136, discriminator: 1)
!1797 = !DILocation(line: 470, column: 21, scope: !1798)
!1798 = !DILexicalBlockFile(scope: !1793, file: !136, discriminator: 2)
!1799 = !DILocation(line: 470, column: 21, scope: !1800)
!1800 = !DILexicalBlockFile(scope: !1794, file: !136, discriminator: 3)
!1801 = !DILocation(line: 471, column: 21, scope: !1760)
!1802 = !DILocation(line: 395, column: 21, scope: !1497)
!1803 = !DILocation(line: 484, column: 31, scope: !1506)
!1804 = !DILocation(line: 485, column: 31, scope: !1506)
!1805 = !DILocation(line: 487, column: 31, scope: !1506)
!1806 = !DILocation(line: 488, column: 31, scope: !1506)
!1807 = !DILocation(line: 489, column: 31, scope: !1506)
!1808 = !DILocation(line: 492, column: 15, scope: !1506)
!1809 = !DILocation(line: 494, column: 19, scope: !1810)
!1810 = distinct !DILexicalBlock(scope: !1811, file: !136, line: 493, column: 13)
!1811 = distinct !DILexicalBlock(scope: !1506, file: !136, line: 492, column: 15)
!1812 = !DILocation(line: 501, column: 33, scope: !1813)
!1813 = distinct !DILexicalBlock(scope: !1506, file: !136, line: 501, column: 15)
!1814 = !DILocation(line: 506, column: 15, scope: !1815)
!1815 = distinct !DILexicalBlock(scope: !1506, file: !136, line: 505, column: 15)
!1816 = !DILocation(line: 510, column: 15, scope: !1506)
!1817 = !DILocation(line: 518, column: 26, scope: !1818)
!1818 = distinct !DILexicalBlock(scope: !1506, file: !136, line: 518, column: 15)
!1819 = !DILocation(line: 518, column: 15, scope: !1506)
!1820 = !DILocation(line: 518, column: 40, scope: !1821)
!1821 = !DILexicalBlockFile(scope: !1818, file: !136, discriminator: 1)
!1822 = !DILocation(line: 518, column: 47, scope: !1821)
!1823 = !DILocation(line: 522, column: 17, scope: !1824)
!1824 = distinct !DILexicalBlock(scope: !1506, file: !136, line: 522, column: 15)
!1825 = !DILocation(line: 518, column: 18, scope: !1821)
!1826 = !DILocation(line: 518, column: 65, scope: !1827)
!1827 = !DILexicalBlockFile(scope: !1818, file: !136, discriminator: 2)
!1828 = !DILocation(line: 518, column: 15, scope: !1829)
!1829 = !DILexicalBlockFile(scope: !1506, file: !136, discriminator: 2)
!1830 = !DILocation(line: 522, column: 15, scope: !1506)
!1831 = !DILocation(line: 526, column: 11, scope: !1506)
!1832 = !DILocation(line: 541, column: 15, scope: !1833)
!1833 = distinct !DILexicalBlock(scope: !1506, file: !136, line: 540, column: 15)
!1834 = !DILocation(line: 548, column: 15, scope: !1506)
!1835 = !DILocation(line: 550, column: 19, scope: !1836)
!1836 = distinct !DILexicalBlock(scope: !1837, file: !136, line: 549, column: 13)
!1837 = distinct !DILexicalBlock(scope: !1506, file: !136, line: 548, column: 15)
!1838 = !DILocation(line: 553, column: 19, scope: !1839)
!1839 = distinct !DILexicalBlock(scope: !1836, file: !136, line: 553, column: 19)
!1840 = !DILocation(line: 553, column: 35, scope: !1841)
!1841 = !DILexicalBlockFile(scope: !1839, file: !136, discriminator: 1)
!1842 = !DILocation(line: 553, column: 30, scope: !1839)
!1843 = !DILocation(line: 562, column: 15, scope: !1844)
!1844 = !DILexicalBlockFile(scope: !1845, file: !136, discriminator: 1)
!1845 = distinct !DILexicalBlock(scope: !1846, file: !136, line: 562, column: 15)
!1846 = distinct !DILexicalBlock(scope: !1836, file: !136, line: 562, column: 15)
!1847 = !DILocation(line: 562, column: 15, scope: !1848)
!1848 = !DILexicalBlockFile(scope: !1846, file: !136, discriminator: 1)
!1849 = !DILocation(line: 562, column: 15, scope: !1850)
!1850 = !DILexicalBlockFile(scope: !1845, file: !136, discriminator: 2)
!1851 = !DILocation(line: 562, column: 15, scope: !1852)
!1852 = !DILexicalBlockFile(scope: !1846, file: !136, discriminator: 3)
!1853 = !DILocation(line: 563, column: 15, scope: !1854)
!1854 = !DILexicalBlockFile(scope: !1855, file: !136, discriminator: 1)
!1855 = distinct !DILexicalBlock(scope: !1856, file: !136, line: 563, column: 15)
!1856 = distinct !DILexicalBlock(scope: !1836, file: !136, line: 563, column: 15)
!1857 = !DILocation(line: 563, column: 15, scope: !1858)
!1858 = !DILexicalBlockFile(scope: !1856, file: !136, discriminator: 1)
!1859 = !DILocation(line: 563, column: 15, scope: !1860)
!1860 = !DILexicalBlockFile(scope: !1855, file: !136, discriminator: 2)
!1861 = !DILocation(line: 563, column: 15, scope: !1862)
!1862 = !DILexicalBlockFile(scope: !1856, file: !136, discriminator: 3)
!1863 = !DILocation(line: 564, column: 15, scope: !1864)
!1864 = !DILexicalBlockFile(scope: !1865, file: !136, discriminator: 1)
!1865 = distinct !DILexicalBlock(scope: !1866, file: !136, line: 564, column: 15)
!1866 = distinct !DILexicalBlock(scope: !1836, file: !136, line: 564, column: 15)
!1867 = !DILocation(line: 564, column: 15, scope: !1868)
!1868 = !DILexicalBlockFile(scope: !1866, file: !136, discriminator: 1)
!1869 = !DILocation(line: 564, column: 15, scope: !1870)
!1870 = !DILexicalBlockFile(scope: !1865, file: !136, discriminator: 2)
!1871 = !DILocation(line: 564, column: 15, scope: !1872)
!1872 = !DILexicalBlockFile(scope: !1866, file: !136, discriminator: 3)
!1873 = !DILocation(line: 566, column: 13, scope: !1836)
!1874 = !DILocation(line: 606, column: 17, scope: !1505)
!1875 = !DILocation(line: 602, column: 20, scope: !1505)
!1876 = !DILocation(line: 609, column: 29, scope: !1877)
!1877 = distinct !DILexicalBlock(scope: !1510, file: !136, line: 607, column: 15)
!1878 = !{!1879, !1879, i64 0}
!1879 = !{!"short", !608, i64 0}
!1880 = !DILocation(line: 609, column: 27, scope: !1877)
!1881 = !DILocation(line: 604, column: 18, scope: !1505)
!1882 = !DILocation(line: 610, column: 15, scope: !1877)
!1883 = !DILocation(line: 613, column: 17, scope: !1509)
!1884 = !DILocation(line: 614, column: 17, scope: !1509)
!1885 = !DILocation(line: 618, column: 29, scope: !1886)
!1886 = distinct !DILexicalBlock(scope: !1509, file: !136, line: 618, column: 21)
!1887 = !DILocation(line: 618, column: 21, scope: !1509)
!1888 = distinct !{!1888, !1889, !1890}
!1889 = !DILocation(line: 621, column: 17, scope: !1509)
!1890 = !DILocation(line: 667, column: 44, scope: !1509)
!1891 = !DILocation(line: 619, column: 29, scope: !1886)
!1892 = !DILocation(line: 619, column: 19, scope: !1886)
!1893 = !DILocation(line: 623, column: 21, scope: !1526)
!1894 = !DILocation(line: 624, column: 56, scope: !1526)
!1895 = !DILocation(line: 624, column: 50, scope: !1526)
!1896 = !DILocation(line: 625, column: 53, scope: !1526)
!1897 = !DILocation(line: 613, column: 27, scope: !1509)
!1898 = !DILocation(line: 623, column: 29, scope: !1526)
!1899 = !DILocation(line: 624, column: 36, scope: !1526)
!1900 = !DILocation(line: 624, column: 28, scope: !1526)
!1901 = !DILocation(line: 626, column: 25, scope: !1526)
!1902 = !DILocation(line: 636, column: 38, scope: !1903)
!1903 = !DILexicalBlockFile(scope: !1904, file: !136, discriminator: 1)
!1904 = distinct !DILexicalBlock(scope: !1533, file: !136, line: 634, column: 23)
!1905 = !DILocation(line: 636, column: 48, scope: !1903)
!1906 = !DILocation(line: 636, column: 51, scope: !1907)
!1907 = !DILexicalBlockFile(scope: !1904, file: !136, discriminator: 2)
!1908 = !DILocation(line: 636, column: 48, scope: !1907)
!1909 = !DILocation(line: 636, column: 25, scope: !1910)
!1910 = !DILexicalBlockFile(scope: !1904, file: !136, discriminator: 3)
!1911 = !DILocation(line: 637, column: 28, scope: !1904)
!1912 = !DILocation(line: 636, column: 34, scope: !1903)
!1913 = distinct !{!1913, !1914, !1911}
!1914 = !DILocation(line: 636, column: 25, scope: !1904)
!1915 = !DILocation(line: 650, column: 43, scope: !1916)
!1916 = !DILexicalBlockFile(scope: !1917, file: !136, discriminator: 1)
!1917 = distinct !DILexicalBlock(scope: !1918, file: !136, line: 650, column: 29)
!1918 = distinct !DILexicalBlock(scope: !1530, file: !136, line: 650, column: 29)
!1919 = !DILocation(line: 647, column: 29, scope: !1531)
!1920 = !DILocation(line: 649, column: 36, scope: !1530)
!1921 = !DILocation(line: 651, column: 49, scope: !1917)
!1922 = !DILocation(line: 651, column: 39, scope: !1917)
!1923 = !DILocation(line: 651, column: 31, scope: !1917)
!1924 = !DILocation(line: 650, column: 53, scope: !1925)
!1925 = !DILexicalBlockFile(scope: !1917, file: !136, discriminator: 2)
!1926 = !DILocation(line: 650, column: 29, scope: !1927)
!1927 = !DILexicalBlockFile(scope: !1918, file: !136, discriminator: 1)
!1928 = distinct !{!1928, !1929, !1930}
!1929 = !DILocation(line: 650, column: 29, scope: !1918)
!1930 = !DILocation(line: 659, column: 33, scope: !1918)
!1931 = !DILocation(line: 666, column: 19, scope: !1509)
!1932 = !DILocation(line: 662, column: 41, scope: !1933)
!1933 = distinct !DILexicalBlock(scope: !1532, file: !136, line: 662, column: 29)
!1934 = !DILocation(line: 662, column: 31, scope: !1933)
!1935 = !DILocation(line: 662, column: 29, scope: !1532)
!1936 = !DILocation(line: 664, column: 27, scope: !1532)
!1937 = !DILocation(line: 667, column: 26, scope: !1509)
!1938 = !DILocation(line: 667, column: 24, scope: !1509)
!1939 = !DILocation(line: 666, column: 19, scope: !1940)
!1940 = !DILexicalBlockFile(scope: !1526, file: !136, discriminator: 3)
!1941 = !DILocation(line: 668, column: 15, scope: !1510)
!1942 = !DILocation(line: 670, column: 40, scope: !1505)
!1943 = !DILocation(line: 672, column: 19, scope: !1538)
!1944 = !DILocation(line: 672, column: 45, scope: !1945)
!1945 = !DILexicalBlockFile(scope: !1538, file: !136, discriminator: 1)
!1946 = !DILocation(line: 672, column: 23, scope: !1538)
!1947 = !DILocation(line: 676, column: 33, scope: !1537)
!1948 = !DILocation(line: 676, column: 24, scope: !1537)
!1949 = !DILocation(line: 678, column: 17, scope: !1537)
!1950 = !DILocation(line: 680, column: 43, scope: !1951)
!1951 = distinct !DILexicalBlock(scope: !1952, file: !136, line: 680, column: 25)
!1952 = distinct !DILexicalBlock(scope: !1953, file: !136, line: 679, column: 19)
!1953 = distinct !DILexicalBlock(scope: !1954, file: !136, line: 678, column: 17)
!1954 = distinct !DILexicalBlock(scope: !1537, file: !136, line: 678, column: 17)
!1955 = !DILocation(line: 682, column: 25, scope: !1956)
!1956 = !DILexicalBlockFile(scope: !1957, file: !136, discriminator: 1)
!1957 = distinct !DILexicalBlock(scope: !1958, file: !136, line: 682, column: 25)
!1958 = distinct !DILexicalBlock(scope: !1951, file: !136, line: 681, column: 23)
!1959 = !DILocation(line: 682, column: 25, scope: !1960)
!1960 = !DILexicalBlockFile(scope: !1961, file: !136, discriminator: 4)
!1961 = distinct !DILexicalBlock(scope: !1957, file: !136, line: 682, column: 25)
!1962 = !DILocation(line: 682, column: 25, scope: !1963)
!1963 = !DILexicalBlockFile(scope: !1961, file: !136, discriminator: 3)
!1964 = !DILocation(line: 682, column: 25, scope: !1965)
!1965 = !DILexicalBlockFile(scope: !1966, file: !136, discriminator: 6)
!1966 = distinct !DILexicalBlock(scope: !1967, file: !136, line: 682, column: 25)
!1967 = distinct !DILexicalBlock(scope: !1968, file: !136, line: 682, column: 25)
!1968 = distinct !DILexicalBlock(scope: !1961, file: !136, line: 682, column: 25)
!1969 = !DILocation(line: 682, column: 25, scope: !1970)
!1970 = !DILexicalBlockFile(scope: !1967, file: !136, discriminator: 6)
!1971 = !DILocation(line: 682, column: 25, scope: !1972)
!1972 = !DILexicalBlockFile(scope: !1966, file: !136, discriminator: 7)
!1973 = !DILocation(line: 682, column: 25, scope: !1974)
!1974 = !DILexicalBlockFile(scope: !1967, file: !136, discriminator: 8)
!1975 = !DILocation(line: 682, column: 25, scope: !1976)
!1976 = !DILexicalBlockFile(scope: !1977, file: !136, discriminator: 11)
!1977 = distinct !DILexicalBlock(scope: !1978, file: !136, line: 682, column: 25)
!1978 = distinct !DILexicalBlock(scope: !1968, file: !136, line: 682, column: 25)
!1979 = !DILocation(line: 682, column: 25, scope: !1980)
!1980 = !DILexicalBlockFile(scope: !1978, file: !136, discriminator: 11)
!1981 = !DILocation(line: 682, column: 25, scope: !1982)
!1982 = !DILexicalBlockFile(scope: !1977, file: !136, discriminator: 12)
!1983 = !DILocation(line: 682, column: 25, scope: !1984)
!1984 = !DILexicalBlockFile(scope: !1978, file: !136, discriminator: 13)
!1985 = !DILocation(line: 682, column: 25, scope: !1986)
!1986 = !DILexicalBlockFile(scope: !1987, file: !136, discriminator: 16)
!1987 = distinct !DILexicalBlock(scope: !1988, file: !136, line: 682, column: 25)
!1988 = distinct !DILexicalBlock(scope: !1968, file: !136, line: 682, column: 25)
!1989 = !DILocation(line: 682, column: 25, scope: !1990)
!1990 = !DILexicalBlockFile(scope: !1988, file: !136, discriminator: 16)
!1991 = !DILocation(line: 682, column: 25, scope: !1992)
!1992 = !DILexicalBlockFile(scope: !1987, file: !136, discriminator: 17)
!1993 = !DILocation(line: 682, column: 25, scope: !1994)
!1994 = !DILexicalBlockFile(scope: !1988, file: !136, discriminator: 18)
!1995 = !DILocation(line: 682, column: 25, scope: !1996)
!1996 = !DILexicalBlockFile(scope: !1968, file: !136, discriminator: 20)
!1997 = !DILocation(line: 682, column: 25, scope: !1998)
!1998 = !DILexicalBlockFile(scope: !1999, file: !136, discriminator: 22)
!1999 = distinct !DILexicalBlock(scope: !2000, file: !136, line: 682, column: 25)
!2000 = distinct !DILexicalBlock(scope: !1957, file: !136, line: 682, column: 25)
!2001 = !DILocation(line: 682, column: 25, scope: !2002)
!2002 = !DILexicalBlockFile(scope: !2000, file: !136, discriminator: 22)
!2003 = !DILocation(line: 682, column: 25, scope: !2004)
!2004 = !DILexicalBlockFile(scope: !1999, file: !136, discriminator: 23)
!2005 = !DILocation(line: 682, column: 25, scope: !2006)
!2006 = !DILexicalBlockFile(scope: !2000, file: !136, discriminator: 24)
!2007 = !DILocation(line: 683, column: 25, scope: !2008)
!2008 = !DILexicalBlockFile(scope: !2009, file: !136, discriminator: 1)
!2009 = distinct !DILexicalBlock(scope: !2010, file: !136, line: 683, column: 25)
!2010 = distinct !DILexicalBlock(scope: !1958, file: !136, line: 683, column: 25)
!2011 = !DILocation(line: 683, column: 25, scope: !2012)
!2012 = !DILexicalBlockFile(scope: !2010, file: !136, discriminator: 1)
!2013 = !DILocation(line: 683, column: 25, scope: !2014)
!2014 = !DILexicalBlockFile(scope: !2009, file: !136, discriminator: 2)
!2015 = !DILocation(line: 683, column: 25, scope: !2016)
!2016 = !DILexicalBlockFile(scope: !2010, file: !136, discriminator: 3)
!2017 = !DILocation(line: 684, column: 25, scope: !2018)
!2018 = !DILexicalBlockFile(scope: !2019, file: !136, discriminator: 1)
!2019 = distinct !DILexicalBlock(scope: !2020, file: !136, line: 684, column: 25)
!2020 = distinct !DILexicalBlock(scope: !1958, file: !136, line: 684, column: 25)
!2021 = !DILocation(line: 684, column: 25, scope: !2022)
!2022 = !DILexicalBlockFile(scope: !2020, file: !136, discriminator: 1)
!2023 = !DILocation(line: 684, column: 25, scope: !2024)
!2024 = !DILexicalBlockFile(scope: !2019, file: !136, discriminator: 2)
!2025 = !DILocation(line: 684, column: 25, scope: !2026)
!2026 = !DILexicalBlockFile(scope: !2020, file: !136, discriminator: 3)
!2027 = !DILocation(line: 685, column: 38, scope: !1958)
!2028 = !DILocation(line: 685, column: 33, scope: !1958)
!2029 = !DILocation(line: 686, column: 23, scope: !1958)
!2030 = !DILocation(line: 687, column: 30, scope: !2031)
!2031 = distinct !DILexicalBlock(scope: !1951, file: !136, line: 687, column: 30)
!2032 = !DILocation(line: 687, column: 30, scope: !1951)
!2033 = !DILocation(line: 689, column: 25, scope: !2034)
!2034 = !DILexicalBlockFile(scope: !2035, file: !136, discriminator: 1)
!2035 = distinct !DILexicalBlock(scope: !2036, file: !136, line: 689, column: 25)
!2036 = distinct !DILexicalBlock(scope: !2037, file: !136, line: 689, column: 25)
!2037 = distinct !DILexicalBlock(scope: !2031, file: !136, line: 688, column: 23)
!2038 = !DILocation(line: 689, column: 25, scope: !2039)
!2039 = !DILexicalBlockFile(scope: !2036, file: !136, discriminator: 1)
!2040 = !DILocation(line: 689, column: 25, scope: !2041)
!2041 = !DILexicalBlockFile(scope: !2035, file: !136, discriminator: 2)
!2042 = !DILocation(line: 689, column: 25, scope: !2043)
!2043 = !DILexicalBlockFile(scope: !2036, file: !136, discriminator: 3)
!2044 = !DILocation(line: 691, column: 23, scope: !2037)
!2045 = !DILocation(line: 692, column: 35, scope: !2046)
!2046 = distinct !DILexicalBlock(scope: !1952, file: !136, line: 692, column: 25)
!2047 = !DILocation(line: 692, column: 30, scope: !2046)
!2048 = !DILocation(line: 692, column: 25, scope: !1952)
!2049 = !DILocation(line: 694, column: 21, scope: !2050)
!2050 = !DILexicalBlockFile(scope: !2051, file: !136, discriminator: 1)
!2051 = distinct !DILexicalBlock(scope: !2052, file: !136, line: 694, column: 21)
!2052 = distinct !DILexicalBlock(scope: !1952, file: !136, line: 694, column: 21)
!2053 = !DILocation(line: 694, column: 21, scope: !2054)
!2054 = !DILexicalBlockFile(scope: !2051, file: !136, discriminator: 2)
!2055 = !DILocation(line: 694, column: 21, scope: !2056)
!2056 = !DILexicalBlockFile(scope: !2057, file: !136, discriminator: 4)
!2057 = distinct !DILexicalBlock(scope: !2058, file: !136, line: 694, column: 21)
!2058 = distinct !DILexicalBlock(scope: !2059, file: !136, line: 694, column: 21)
!2059 = distinct !DILexicalBlock(scope: !2051, file: !136, line: 694, column: 21)
!2060 = !DILocation(line: 694, column: 21, scope: !2061)
!2061 = !DILexicalBlockFile(scope: !2058, file: !136, discriminator: 4)
!2062 = !DILocation(line: 694, column: 21, scope: !2063)
!2063 = !DILexicalBlockFile(scope: !2057, file: !136, discriminator: 5)
!2064 = !DILocation(line: 694, column: 21, scope: !2065)
!2065 = !DILexicalBlockFile(scope: !2058, file: !136, discriminator: 6)
!2066 = !DILocation(line: 694, column: 21, scope: !2067)
!2067 = !DILexicalBlockFile(scope: !2068, file: !136, discriminator: 9)
!2068 = distinct !DILexicalBlock(scope: !2069, file: !136, line: 694, column: 21)
!2069 = distinct !DILexicalBlock(scope: !2059, file: !136, line: 694, column: 21)
!2070 = !DILocation(line: 694, column: 21, scope: !2071)
!2071 = !DILexicalBlockFile(scope: !2069, file: !136, discriminator: 9)
!2072 = !DILocation(line: 694, column: 21, scope: !2073)
!2073 = !DILexicalBlockFile(scope: !2068, file: !136, discriminator: 10)
!2074 = !DILocation(line: 694, column: 21, scope: !2075)
!2075 = !DILexicalBlockFile(scope: !2069, file: !136, discriminator: 11)
!2076 = !DILocation(line: 694, column: 21, scope: !2077)
!2077 = !DILexicalBlockFile(scope: !2059, file: !136, discriminator: 13)
!2078 = !DILocation(line: 695, column: 21, scope: !2079)
!2079 = !DILexicalBlockFile(scope: !2080, file: !136, discriminator: 1)
!2080 = distinct !DILexicalBlock(scope: !2081, file: !136, line: 695, column: 21)
!2081 = distinct !DILexicalBlock(scope: !1952, file: !136, line: 695, column: 21)
!2082 = !DILocation(line: 695, column: 21, scope: !2083)
!2083 = !DILexicalBlockFile(scope: !2081, file: !136, discriminator: 1)
!2084 = !DILocation(line: 695, column: 21, scope: !2085)
!2085 = !DILexicalBlockFile(scope: !2080, file: !136, discriminator: 2)
!2086 = !DILocation(line: 695, column: 21, scope: !2087)
!2087 = !DILexicalBlockFile(scope: !2081, file: !136, discriminator: 3)
!2088 = !DILocation(line: 696, column: 25, scope: !1952)
!2089 = !DILocation(line: 678, column: 17, scope: !2090)
!2090 = !DILexicalBlockFile(scope: !1953, file: !136, discriminator: 1)
!2091 = distinct !{!2091, !2092, !2093}
!2092 = !DILocation(line: 678, column: 17, scope: !1954)
!2093 = !DILocation(line: 697, column: 19, scope: !1954)
!2094 = !DILocation(line: 704, column: 34, scope: !2095)
!2095 = distinct !DILexicalBlock(scope: !1497, file: !136, line: 704, column: 11)
!2096 = !DILocation(line: 706, column: 14, scope: !2095)
!2097 = !DILocation(line: 707, column: 14, scope: !2095)
!2098 = !DILocation(line: 707, column: 35, scope: !2099)
!2099 = !DILexicalBlockFile(scope: !2095, file: !136, discriminator: 1)
!2100 = !DILocation(line: 707, column: 17, scope: !2099)
!2101 = !DILocation(line: 707, column: 53, scope: !2099)
!2102 = !DILocation(line: 707, column: 47, scope: !2099)
!2103 = !DILocation(line: 707, column: 65, scope: !2099)
!2104 = !DILocation(line: 708, column: 15, scope: !2099)
!2105 = !DILocation(line: 708, column: 11, scope: !2095)
!2106 = !DILocation(line: 704, column: 11, scope: !2107)
!2107 = !DILexicalBlockFile(scope: !1497, file: !136, discriminator: 2)
!2108 = !DILocation(line: 712, column: 7, scope: !2109)
!2109 = !DILexicalBlockFile(scope: !2110, file: !136, discriminator: 1)
!2110 = distinct !DILexicalBlock(scope: !1497, file: !136, line: 712, column: 7)
!2111 = !DILocation(line: 712, column: 7, scope: !2112)
!2112 = !DILexicalBlockFile(scope: !2113, file: !136, discriminator: 4)
!2113 = distinct !DILexicalBlock(scope: !2110, file: !136, line: 712, column: 7)
!2114 = !DILocation(line: 712, column: 7, scope: !2115)
!2115 = !DILexicalBlockFile(scope: !2113, file: !136, discriminator: 3)
!2116 = !DILocation(line: 712, column: 7, scope: !2117)
!2117 = !DILexicalBlockFile(scope: !2118, file: !136, discriminator: 6)
!2118 = distinct !DILexicalBlock(scope: !2119, file: !136, line: 712, column: 7)
!2119 = distinct !DILexicalBlock(scope: !2120, file: !136, line: 712, column: 7)
!2120 = distinct !DILexicalBlock(scope: !2113, file: !136, line: 712, column: 7)
!2121 = !DILocation(line: 712, column: 7, scope: !2122)
!2122 = !DILexicalBlockFile(scope: !2119, file: !136, discriminator: 6)
!2123 = !DILocation(line: 712, column: 7, scope: !2124)
!2124 = !DILexicalBlockFile(scope: !2118, file: !136, discriminator: 7)
!2125 = !DILocation(line: 712, column: 7, scope: !2126)
!2126 = !DILexicalBlockFile(scope: !2119, file: !136, discriminator: 8)
!2127 = !DILocation(line: 712, column: 7, scope: !2128)
!2128 = !DILexicalBlockFile(scope: !2129, file: !136, discriminator: 11)
!2129 = distinct !DILexicalBlock(scope: !2130, file: !136, line: 712, column: 7)
!2130 = distinct !DILexicalBlock(scope: !2120, file: !136, line: 712, column: 7)
!2131 = !DILocation(line: 712, column: 7, scope: !2132)
!2132 = !DILexicalBlockFile(scope: !2130, file: !136, discriminator: 11)
!2133 = !DILocation(line: 712, column: 7, scope: !2134)
!2134 = !DILexicalBlockFile(scope: !2129, file: !136, discriminator: 12)
!2135 = !DILocation(line: 712, column: 7, scope: !2136)
!2136 = !DILexicalBlockFile(scope: !2130, file: !136, discriminator: 13)
!2137 = !DILocation(line: 712, column: 7, scope: !2138)
!2138 = !DILexicalBlockFile(scope: !2139, file: !136, discriminator: 16)
!2139 = distinct !DILexicalBlock(scope: !2140, file: !136, line: 712, column: 7)
!2140 = distinct !DILexicalBlock(scope: !2120, file: !136, line: 712, column: 7)
!2141 = !DILocation(line: 712, column: 7, scope: !2142)
!2142 = !DILexicalBlockFile(scope: !2140, file: !136, discriminator: 16)
!2143 = !DILocation(line: 712, column: 7, scope: !2144)
!2144 = !DILexicalBlockFile(scope: !2139, file: !136, discriminator: 17)
!2145 = !DILocation(line: 712, column: 7, scope: !2146)
!2146 = !DILexicalBlockFile(scope: !2140, file: !136, discriminator: 18)
!2147 = !DILocation(line: 712, column: 7, scope: !2148)
!2148 = !DILexicalBlockFile(scope: !2120, file: !136, discriminator: 20)
!2149 = !DILocation(line: 712, column: 7, scope: !2150)
!2150 = !DILexicalBlockFile(scope: !2151, file: !136, discriminator: 22)
!2151 = distinct !DILexicalBlock(scope: !2152, file: !136, line: 712, column: 7)
!2152 = distinct !DILexicalBlock(scope: !2110, file: !136, line: 712, column: 7)
!2153 = !DILocation(line: 712, column: 7, scope: !2154)
!2154 = !DILexicalBlockFile(scope: !2152, file: !136, discriminator: 22)
!2155 = !DILocation(line: 712, column: 7, scope: !2156)
!2156 = !DILexicalBlockFile(scope: !2151, file: !136, discriminator: 23)
!2157 = !DILocation(line: 712, column: 7, scope: !2158)
!2158 = !DILexicalBlockFile(scope: !2152, file: !136, discriminator: 24)
!2159 = !DILocation(line: 715, column: 7, scope: !2160)
!2160 = !DILexicalBlockFile(scope: !2161, file: !136, discriminator: 1)
!2161 = distinct !DILexicalBlock(scope: !2162, file: !136, line: 715, column: 7)
!2162 = distinct !DILexicalBlock(scope: !1497, file: !136, line: 715, column: 7)
!2163 = !DILocation(line: 715, column: 7, scope: !2164)
!2164 = !DILexicalBlockFile(scope: !2161, file: !136, discriminator: 2)
!2165 = !DILocation(line: 715, column: 7, scope: !2166)
!2166 = !DILexicalBlockFile(scope: !2167, file: !136, discriminator: 4)
!2167 = distinct !DILexicalBlock(scope: !2168, file: !136, line: 715, column: 7)
!2168 = distinct !DILexicalBlock(scope: !2169, file: !136, line: 715, column: 7)
!2169 = distinct !DILexicalBlock(scope: !2161, file: !136, line: 715, column: 7)
!2170 = !DILocation(line: 715, column: 7, scope: !2171)
!2171 = !DILexicalBlockFile(scope: !2168, file: !136, discriminator: 4)
!2172 = !DILocation(line: 715, column: 7, scope: !2173)
!2173 = !DILexicalBlockFile(scope: !2167, file: !136, discriminator: 5)
!2174 = !DILocation(line: 715, column: 7, scope: !2175)
!2175 = !DILexicalBlockFile(scope: !2168, file: !136, discriminator: 6)
!2176 = !DILocation(line: 715, column: 7, scope: !2177)
!2177 = !DILexicalBlockFile(scope: !2178, file: !136, discriminator: 9)
!2178 = distinct !DILexicalBlock(scope: !2179, file: !136, line: 715, column: 7)
!2179 = distinct !DILexicalBlock(scope: !2169, file: !136, line: 715, column: 7)
!2180 = !DILocation(line: 715, column: 7, scope: !2181)
!2181 = !DILexicalBlockFile(scope: !2179, file: !136, discriminator: 9)
!2182 = !DILocation(line: 715, column: 7, scope: !2183)
!2183 = !DILexicalBlockFile(scope: !2178, file: !136, discriminator: 10)
!2184 = !DILocation(line: 715, column: 7, scope: !2185)
!2185 = !DILexicalBlockFile(scope: !2179, file: !136, discriminator: 11)
!2186 = !DILocation(line: 715, column: 7, scope: !2187)
!2187 = !DILexicalBlockFile(scope: !2169, file: !136, discriminator: 13)
!2188 = !DILocation(line: 716, column: 7, scope: !2189)
!2189 = !DILexicalBlockFile(scope: !2190, file: !136, discriminator: 1)
!2190 = distinct !DILexicalBlock(scope: !2191, file: !136, line: 716, column: 7)
!2191 = distinct !DILexicalBlock(scope: !1497, file: !136, line: 716, column: 7)
!2192 = !DILocation(line: 716, column: 7, scope: !2193)
!2193 = !DILexicalBlockFile(scope: !2191, file: !136, discriminator: 1)
!2194 = !DILocation(line: 716, column: 7, scope: !2195)
!2195 = !DILexicalBlockFile(scope: !2190, file: !136, discriminator: 2)
!2196 = !DILocation(line: 716, column: 7, scope: !2197)
!2197 = !DILexicalBlockFile(scope: !2191, file: !136, discriminator: 3)
!2198 = !DILocation(line: 718, column: 13, scope: !2199)
!2199 = distinct !DILexicalBlock(scope: !1497, file: !136, line: 718, column: 11)
!2200 = !DILocation(line: 718, column: 11, scope: !1497)
!2201 = !DILocation(line: 720, column: 5, scope: !1498)
!2202 = !DILocation(line: 392, column: 75, scope: !2203)
!2203 = !DILexicalBlockFile(scope: !1498, file: !136, discriminator: 5)
!2204 = !DILocation(line: 392, column: 3, scope: !2203)
!2205 = distinct !{!2205, !2206, !2207}
!2206 = !DILocation(line: 392, column: 3, scope: !1499)
!2207 = !DILocation(line: 720, column: 5, scope: !1499)
!2208 = !DILocation(line: 722, column: 11, scope: !2209)
!2209 = distinct !DILexicalBlock(scope: !1470, file: !136, line: 722, column: 7)
!2210 = !DILocation(line: 722, column: 16, scope: !2209)
!2211 = !DILocation(line: 730, column: 51, scope: !2212)
!2212 = distinct !DILexicalBlock(scope: !1470, file: !136, line: 730, column: 7)
!2213 = !DILocation(line: 731, column: 10, scope: !2214)
!2214 = !DILexicalBlockFile(scope: !2212, file: !136, discriminator: 1)
!2215 = !DILocation(line: 733, column: 11, scope: !2216)
!2216 = distinct !DILexicalBlock(scope: !2217, file: !136, line: 733, column: 11)
!2217 = distinct !DILexicalBlock(scope: !2212, file: !136, line: 732, column: 5)
!2218 = !DILocation(line: 733, column: 11, scope: !2217)
!2219 = !DILocation(line: 734, column: 16, scope: !2216)
!2220 = !DILocation(line: 734, column: 9, scope: !2216)
!2221 = !DILocation(line: 738, column: 18, scope: !2222)
!2222 = distinct !DILexicalBlock(scope: !2216, file: !136, line: 738, column: 16)
!2223 = !DILocation(line: 738, column: 32, scope: !2224)
!2224 = !DILexicalBlockFile(scope: !2222, file: !136, discriminator: 1)
!2225 = !DILocation(line: 738, column: 29, scope: !2222)
!2226 = !DILocation(line: 747, column: 7, scope: !2227)
!2227 = distinct !DILexicalBlock(scope: !1470, file: !136, line: 747, column: 7)
!2228 = !DILocation(line: 747, column: 20, scope: !2227)
!2229 = !DILocation(line: 748, column: 12, scope: !2230)
!2230 = !DILexicalBlockFile(scope: !2231, file: !136, discriminator: 1)
!2231 = distinct !DILexicalBlock(scope: !2232, file: !136, line: 748, column: 5)
!2232 = distinct !DILexicalBlock(scope: !2227, file: !136, line: 748, column: 5)
!2233 = !DILocation(line: 748, column: 5, scope: !2234)
!2234 = !DILexicalBlockFile(scope: !2232, file: !136, discriminator: 1)
!2235 = !DILocation(line: 749, column: 7, scope: !2236)
!2236 = !DILexicalBlockFile(scope: !2237, file: !136, discriminator: 1)
!2237 = distinct !DILexicalBlock(scope: !2238, file: !136, line: 749, column: 7)
!2238 = distinct !DILexicalBlock(scope: !2231, file: !136, line: 749, column: 7)
!2239 = !DILocation(line: 749, column: 7, scope: !2240)
!2240 = !DILexicalBlockFile(scope: !2238, file: !136, discriminator: 1)
!2241 = !DILocation(line: 749, column: 7, scope: !2242)
!2242 = !DILexicalBlockFile(scope: !2237, file: !136, discriminator: 2)
!2243 = !DILocation(line: 749, column: 7, scope: !2244)
!2244 = !DILexicalBlockFile(scope: !2238, file: !136, discriminator: 3)
!2245 = !DILocation(line: 748, column: 39, scope: !2246)
!2246 = !DILexicalBlockFile(scope: !2231, file: !136, discriminator: 2)
!2247 = distinct !{!2247, !2248, !2249}
!2248 = !DILocation(line: 748, column: 5, scope: !2232)
!2249 = !DILocation(line: 749, column: 7, scope: !2232)
!2250 = !DILocation(line: 751, column: 11, scope: !2251)
!2251 = distinct !DILexicalBlock(scope: !1470, file: !136, line: 751, column: 7)
!2252 = !DILocation(line: 751, column: 7, scope: !1470)
!2253 = !DILocation(line: 752, column: 5, scope: !2251)
!2254 = !DILocation(line: 752, column: 17, scope: !2251)
!2255 = !DILocation(line: 758, column: 21, scope: !2256)
!2256 = distinct !DILexicalBlock(scope: !1470, file: !136, line: 758, column: 7)
!2257 = !DILocation(line: 758, column: 54, scope: !2258)
!2258 = !DILexicalBlockFile(scope: !2256, file: !136, discriminator: 1)
!2259 = !DILocation(line: 758, column: 51, scope: !2256)
!2260 = !DILocation(line: 762, column: 42, scope: !1470)
!2261 = !DILocation(line: 760, column: 10, scope: !1470)
!2262 = !DILocation(line: 760, column: 3, scope: !1470)
!2263 = !DILocation(line: 764, column: 1, scope: !1470)
!2264 = distinct !DISubprogram(name: "gettext_quote", scope: !136, file: !136, line: 199, type: !2265, isLocal: true, isDefinition: true, scopeLine: 200, flags: DIFlagPrototyped, isOptimized: true, unit: !108, variables: !2267)
!2265 = !DISubroutineType(types: !2266)
!2266 = !{!31, !31, !5}
!2267 = !{!2268, !2269, !2270, !2271}
!2268 = !DILocalVariable(name: "msgid", arg: 1, scope: !2264, file: !136, line: 199, type: !31)
!2269 = !DILocalVariable(name: "s", arg: 2, scope: !2264, file: !136, line: 199, type: !5)
!2270 = !DILocalVariable(name: "translation", scope: !2264, file: !136, line: 201, type: !31)
!2271 = !DILocalVariable(name: "locale_code", scope: !2264, file: !136, line: 202, type: !31)
!2272 = !DILocation(line: 199, column: 28, scope: !2264)
!2273 = !DILocation(line: 199, column: 54, scope: !2264)
!2274 = !DILocation(line: 201, column: 29, scope: !2264)
!2275 = !DILocation(line: 201, column: 15, scope: !2264)
!2276 = !DILocation(line: 204, column: 19, scope: !2277)
!2277 = distinct !DILexicalBlock(scope: !2264, file: !136, line: 204, column: 7)
!2278 = !DILocation(line: 204, column: 7, scope: !2264)
!2279 = !DILocation(line: 225, column: 17, scope: !2264)
!2280 = !DILocation(line: 202, column: 15, scope: !2264)
!2281 = !DILocalVariable(name: "s2", arg: 2, scope: !2282, file: !2283, line: 160, type: !31)
!2282 = distinct !DISubprogram(name: "strcaseeq0", scope: !2283, file: !2283, line: 160, type: !2284, isLocal: true, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !108, variables: !2286)
!2283 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2284 = !DISubroutineType(types: !2285)
!2285 = !{!61, !31, !31, !21, !21, !21, !21, !21, !21, !21, !21, !21}
!2286 = !{!2287, !2281, !2288, !2289, !2290, !2291, !2292, !2293, !2294, !2295, !2296}
!2287 = !DILocalVariable(name: "s1", arg: 1, scope: !2282, file: !2283, line: 160, type: !31)
!2288 = !DILocalVariable(name: "s20", arg: 3, scope: !2282, file: !2283, line: 160, type: !21)
!2289 = !DILocalVariable(name: "s21", arg: 4, scope: !2282, file: !2283, line: 160, type: !21)
!2290 = !DILocalVariable(name: "s22", arg: 5, scope: !2282, file: !2283, line: 160, type: !21)
!2291 = !DILocalVariable(name: "s23", arg: 6, scope: !2282, file: !2283, line: 160, type: !21)
!2292 = !DILocalVariable(name: "s24", arg: 7, scope: !2282, file: !2283, line: 160, type: !21)
!2293 = !DILocalVariable(name: "s25", arg: 8, scope: !2282, file: !2283, line: 160, type: !21)
!2294 = !DILocalVariable(name: "s26", arg: 9, scope: !2282, file: !2283, line: 160, type: !21)
!2295 = !DILocalVariable(name: "s27", arg: 10, scope: !2282, file: !2283, line: 160, type: !21)
!2296 = !DILocalVariable(name: "s28", arg: 11, scope: !2282, file: !2283, line: 160, type: !21)
!2297 = !DILocation(line: 160, column: 41, scope: !2282, inlinedAt: !2298)
!2298 = distinct !DILocation(line: 226, column: 7, scope: !2299)
!2299 = distinct !DILexicalBlock(scope: !2264, file: !136, line: 226, column: 7)
!2300 = !DILocation(line: 160, column: 120, scope: !2282, inlinedAt: !2298)
!2301 = !DILocation(line: 160, column: 130, scope: !2282, inlinedAt: !2298)
!2302 = !DILocation(line: 162, column: 7, scope: !2303, inlinedAt: !2298)
!2303 = !DILexicalBlockFile(scope: !2304, file: !2283, discriminator: 1)
!2304 = distinct !DILexicalBlock(scope: !2282, file: !2283, line: 162, column: 7)
!2305 = !DILocalVariable(name: "s2", arg: 2, scope: !2306, file: !2283, line: 146, type: !31)
!2306 = distinct !DISubprogram(name: "strcaseeq1", scope: !2283, file: !2283, line: 146, type: !2307, isLocal: true, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: true, unit: !108, variables: !2309)
!2307 = !DISubroutineType(types: !2308)
!2308 = !{!61, !31, !31, !21, !21, !21, !21, !21, !21, !21, !21}
!2309 = !{!2310, !2305, !2311, !2312, !2313, !2314, !2315, !2316, !2317, !2318}
!2310 = !DILocalVariable(name: "s1", arg: 1, scope: !2306, file: !2283, line: 146, type: !31)
!2311 = !DILocalVariable(name: "s21", arg: 3, scope: !2306, file: !2283, line: 146, type: !21)
!2312 = !DILocalVariable(name: "s22", arg: 4, scope: !2306, file: !2283, line: 146, type: !21)
!2313 = !DILocalVariable(name: "s23", arg: 5, scope: !2306, file: !2283, line: 146, type: !21)
!2314 = !DILocalVariable(name: "s24", arg: 6, scope: !2306, file: !2283, line: 146, type: !21)
!2315 = !DILocalVariable(name: "s25", arg: 7, scope: !2306, file: !2283, line: 146, type: !21)
!2316 = !DILocalVariable(name: "s26", arg: 8, scope: !2306, file: !2283, line: 146, type: !21)
!2317 = !DILocalVariable(name: "s27", arg: 9, scope: !2306, file: !2283, line: 146, type: !21)
!2318 = !DILocalVariable(name: "s28", arg: 10, scope: !2306, file: !2283, line: 146, type: !21)
!2319 = !DILocation(line: 146, column: 41, scope: !2306, inlinedAt: !2320)
!2320 = distinct !DILocation(line: 167, column: 16, scope: !2321, inlinedAt: !2298)
!2321 = distinct !DILexicalBlock(scope: !2322, file: !2283, line: 164, column: 11)
!2322 = distinct !DILexicalBlock(scope: !2304, file: !2283, line: 163, column: 5)
!2323 = !DILocation(line: 146, column: 110, scope: !2306, inlinedAt: !2320)
!2324 = !DILocation(line: 146, column: 120, scope: !2306, inlinedAt: !2320)
!2325 = !DILocation(line: 148, column: 7, scope: !2326, inlinedAt: !2320)
!2326 = !DILexicalBlockFile(scope: !2327, file: !2283, discriminator: 1)
!2327 = distinct !DILexicalBlock(scope: !2306, file: !2283, line: 148, column: 7)
!2328 = !DILocalVariable(name: "s2", arg: 2, scope: !2329, file: !2283, line: 132, type: !31)
!2329 = distinct !DISubprogram(name: "strcaseeq2", scope: !2283, file: !2283, line: 132, type: !2330, isLocal: true, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !108, variables: !2332)
!2330 = !DISubroutineType(types: !2331)
!2331 = !{!61, !31, !31, !21, !21, !21, !21, !21, !21, !21}
!2332 = !{!2333, !2328, !2334, !2335, !2336, !2337, !2338, !2339, !2340}
!2333 = !DILocalVariable(name: "s1", arg: 1, scope: !2329, file: !2283, line: 132, type: !31)
!2334 = !DILocalVariable(name: "s22", arg: 3, scope: !2329, file: !2283, line: 132, type: !21)
!2335 = !DILocalVariable(name: "s23", arg: 4, scope: !2329, file: !2283, line: 132, type: !21)
!2336 = !DILocalVariable(name: "s24", arg: 5, scope: !2329, file: !2283, line: 132, type: !21)
!2337 = !DILocalVariable(name: "s25", arg: 6, scope: !2329, file: !2283, line: 132, type: !21)
!2338 = !DILocalVariable(name: "s26", arg: 7, scope: !2329, file: !2283, line: 132, type: !21)
!2339 = !DILocalVariable(name: "s27", arg: 8, scope: !2329, file: !2283, line: 132, type: !21)
!2340 = !DILocalVariable(name: "s28", arg: 9, scope: !2329, file: !2283, line: 132, type: !21)
!2341 = !DILocation(line: 132, column: 41, scope: !2329, inlinedAt: !2342)
!2342 = distinct !DILocation(line: 153, column: 16, scope: !2343, inlinedAt: !2320)
!2343 = distinct !DILexicalBlock(scope: !2344, file: !2283, line: 150, column: 11)
!2344 = distinct !DILexicalBlock(scope: !2327, file: !2283, line: 149, column: 5)
!2345 = !DILocation(line: 132, column: 100, scope: !2329, inlinedAt: !2342)
!2346 = !DILocation(line: 132, column: 110, scope: !2329, inlinedAt: !2342)
!2347 = !DILocation(line: 134, column: 7, scope: !2348, inlinedAt: !2342)
!2348 = !DILexicalBlockFile(scope: !2349, file: !2283, discriminator: 1)
!2349 = distinct !DILexicalBlock(scope: !2329, file: !2283, line: 134, column: 7)
!2350 = !DILocalVariable(name: "s2", arg: 2, scope: !2351, file: !2283, line: 118, type: !31)
!2351 = distinct !DISubprogram(name: "strcaseeq3", scope: !2283, file: !2283, line: 118, type: !2352, isLocal: true, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !108, variables: !2354)
!2352 = !DISubroutineType(types: !2353)
!2353 = !{!61, !31, !31, !21, !21, !21, !21, !21, !21}
!2354 = !{!2355, !2350, !2356, !2357, !2358, !2359, !2360, !2361}
!2355 = !DILocalVariable(name: "s1", arg: 1, scope: !2351, file: !2283, line: 118, type: !31)
!2356 = !DILocalVariable(name: "s23", arg: 3, scope: !2351, file: !2283, line: 118, type: !21)
!2357 = !DILocalVariable(name: "s24", arg: 4, scope: !2351, file: !2283, line: 118, type: !21)
!2358 = !DILocalVariable(name: "s25", arg: 5, scope: !2351, file: !2283, line: 118, type: !21)
!2359 = !DILocalVariable(name: "s26", arg: 6, scope: !2351, file: !2283, line: 118, type: !21)
!2360 = !DILocalVariable(name: "s27", arg: 7, scope: !2351, file: !2283, line: 118, type: !21)
!2361 = !DILocalVariable(name: "s28", arg: 8, scope: !2351, file: !2283, line: 118, type: !21)
!2362 = !DILocation(line: 118, column: 41, scope: !2351, inlinedAt: !2363)
!2363 = distinct !DILocation(line: 139, column: 16, scope: !2364, inlinedAt: !2342)
!2364 = distinct !DILexicalBlock(scope: !2365, file: !2283, line: 136, column: 11)
!2365 = distinct !DILexicalBlock(scope: !2349, file: !2283, line: 135, column: 5)
!2366 = !DILocation(line: 118, column: 90, scope: !2351, inlinedAt: !2363)
!2367 = !DILocation(line: 118, column: 100, scope: !2351, inlinedAt: !2363)
!2368 = !DILocation(line: 120, column: 7, scope: !2369, inlinedAt: !2363)
!2369 = !DILexicalBlockFile(scope: !2370, file: !2283, discriminator: 2)
!2370 = distinct !DILexicalBlock(scope: !2351, file: !2283, line: 120, column: 7)
!2371 = !DILocation(line: 120, column: 7, scope: !2372, inlinedAt: !2363)
!2372 = !DILexicalBlockFile(scope: !2351, file: !2283, discriminator: 2)
!2373 = !DILocalVariable(name: "s2", arg: 2, scope: !2374, file: !2283, line: 104, type: !31)
!2374 = distinct !DISubprogram(name: "strcaseeq4", scope: !2283, file: !2283, line: 104, type: !2375, isLocal: true, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, unit: !108, variables: !2377)
!2375 = !DISubroutineType(types: !2376)
!2376 = !{!61, !31, !31, !21, !21, !21, !21, !21}
!2377 = !{!2378, !2373, !2379, !2380, !2381, !2382, !2383}
!2378 = !DILocalVariable(name: "s1", arg: 1, scope: !2374, file: !2283, line: 104, type: !31)
!2379 = !DILocalVariable(name: "s24", arg: 3, scope: !2374, file: !2283, line: 104, type: !21)
!2380 = !DILocalVariable(name: "s25", arg: 4, scope: !2374, file: !2283, line: 104, type: !21)
!2381 = !DILocalVariable(name: "s26", arg: 5, scope: !2374, file: !2283, line: 104, type: !21)
!2382 = !DILocalVariable(name: "s27", arg: 6, scope: !2374, file: !2283, line: 104, type: !21)
!2383 = !DILocalVariable(name: "s28", arg: 7, scope: !2374, file: !2283, line: 104, type: !21)
!2384 = !DILocation(line: 104, column: 41, scope: !2374, inlinedAt: !2385)
!2385 = distinct !DILocation(line: 125, column: 16, scope: !2386, inlinedAt: !2363)
!2386 = distinct !DILexicalBlock(scope: !2387, file: !2283, line: 122, column: 11)
!2387 = distinct !DILexicalBlock(scope: !2370, file: !2283, line: 121, column: 5)
!2388 = !DILocation(line: 104, column: 80, scope: !2374, inlinedAt: !2385)
!2389 = !DILocation(line: 104, column: 90, scope: !2374, inlinedAt: !2385)
!2390 = !DILocation(line: 106, column: 7, scope: !2391, inlinedAt: !2385)
!2391 = !DILexicalBlockFile(scope: !2392, file: !2283, discriminator: 2)
!2392 = distinct !DILexicalBlock(scope: !2374, file: !2283, line: 106, column: 7)
!2393 = !DILocation(line: 106, column: 7, scope: !2394, inlinedAt: !2385)
!2394 = !DILexicalBlockFile(scope: !2374, file: !2283, discriminator: 2)
!2395 = !DILocalVariable(name: "s2", arg: 2, scope: !2396, file: !2283, line: 90, type: !31)
!2396 = distinct !DISubprogram(name: "strcaseeq5", scope: !2283, file: !2283, line: 90, type: !2397, isLocal: true, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: true, unit: !108, variables: !2399)
!2397 = !DISubroutineType(types: !2398)
!2398 = !{!61, !31, !31, !21, !21, !21, !21}
!2399 = !{!2400, !2395, !2401, !2402, !2403, !2404}
!2400 = !DILocalVariable(name: "s1", arg: 1, scope: !2396, file: !2283, line: 90, type: !31)
!2401 = !DILocalVariable(name: "s25", arg: 3, scope: !2396, file: !2283, line: 90, type: !21)
!2402 = !DILocalVariable(name: "s26", arg: 4, scope: !2396, file: !2283, line: 90, type: !21)
!2403 = !DILocalVariable(name: "s27", arg: 5, scope: !2396, file: !2283, line: 90, type: !21)
!2404 = !DILocalVariable(name: "s28", arg: 6, scope: !2396, file: !2283, line: 90, type: !21)
!2405 = !DILocation(line: 90, column: 41, scope: !2396, inlinedAt: !2406)
!2406 = distinct !DILocation(line: 111, column: 16, scope: !2407, inlinedAt: !2385)
!2407 = distinct !DILexicalBlock(scope: !2408, file: !2283, line: 108, column: 11)
!2408 = distinct !DILexicalBlock(scope: !2392, file: !2283, line: 107, column: 5)
!2409 = !DILocation(line: 90, column: 70, scope: !2396, inlinedAt: !2406)
!2410 = !DILocation(line: 90, column: 80, scope: !2396, inlinedAt: !2406)
!2411 = !DILocation(line: 92, column: 7, scope: !2412, inlinedAt: !2406)
!2412 = !DILexicalBlockFile(scope: !2413, file: !2283, discriminator: 2)
!2413 = distinct !DILexicalBlock(scope: !2396, file: !2283, line: 92, column: 7)
!2414 = !DILocation(line: 92, column: 7, scope: !2415, inlinedAt: !2406)
!2415 = !DILexicalBlockFile(scope: !2396, file: !2283, discriminator: 2)
!2416 = !DILocation(line: 227, column: 12, scope: !2299)
!2417 = !DILocation(line: 227, column: 21, scope: !2299)
!2418 = !DILocation(line: 227, column: 5, scope: !2299)
!2419 = !DILocation(line: 146, column: 41, scope: !2306, inlinedAt: !2420)
!2420 = distinct !DILocation(line: 167, column: 16, scope: !2321, inlinedAt: !2421)
!2421 = distinct !DILocation(line: 228, column: 7, scope: !2422)
!2422 = distinct !DILexicalBlock(scope: !2264, file: !136, line: 228, column: 7)
!2423 = !DILocation(line: 146, column: 110, scope: !2306, inlinedAt: !2420)
!2424 = !DILocation(line: 146, column: 120, scope: !2306, inlinedAt: !2420)
!2425 = !DILocation(line: 148, column: 7, scope: !2326, inlinedAt: !2420)
!2426 = !DILocation(line: 132, column: 41, scope: !2329, inlinedAt: !2427)
!2427 = distinct !DILocation(line: 153, column: 16, scope: !2343, inlinedAt: !2420)
!2428 = !DILocation(line: 132, column: 100, scope: !2329, inlinedAt: !2427)
!2429 = !DILocation(line: 132, column: 110, scope: !2329, inlinedAt: !2427)
!2430 = !DILocation(line: 134, column: 7, scope: !2431, inlinedAt: !2427)
!2431 = !DILexicalBlockFile(scope: !2349, file: !2283, discriminator: 2)
!2432 = !DILocation(line: 134, column: 7, scope: !2433, inlinedAt: !2427)
!2433 = !DILexicalBlockFile(scope: !2329, file: !2283, discriminator: 2)
!2434 = !DILocation(line: 118, column: 41, scope: !2351, inlinedAt: !2435)
!2435 = distinct !DILocation(line: 139, column: 16, scope: !2364, inlinedAt: !2427)
!2436 = !DILocation(line: 118, column: 90, scope: !2351, inlinedAt: !2435)
!2437 = !DILocation(line: 118, column: 100, scope: !2351, inlinedAt: !2435)
!2438 = !DILocation(line: 120, column: 7, scope: !2369, inlinedAt: !2435)
!2439 = !DILocation(line: 120, column: 7, scope: !2372, inlinedAt: !2435)
!2440 = !DILocation(line: 104, column: 41, scope: !2374, inlinedAt: !2441)
!2441 = distinct !DILocation(line: 125, column: 16, scope: !2386, inlinedAt: !2435)
!2442 = !DILocation(line: 104, column: 80, scope: !2374, inlinedAt: !2441)
!2443 = !DILocation(line: 104, column: 90, scope: !2374, inlinedAt: !2441)
!2444 = !DILocation(line: 106, column: 7, scope: !2391, inlinedAt: !2441)
!2445 = !DILocation(line: 106, column: 7, scope: !2394, inlinedAt: !2441)
!2446 = !DILocation(line: 90, column: 41, scope: !2396, inlinedAt: !2447)
!2447 = distinct !DILocation(line: 111, column: 16, scope: !2407, inlinedAt: !2441)
!2448 = !DILocation(line: 90, column: 70, scope: !2396, inlinedAt: !2447)
!2449 = !DILocation(line: 90, column: 80, scope: !2396, inlinedAt: !2447)
!2450 = !DILocation(line: 92, column: 7, scope: !2412, inlinedAt: !2447)
!2451 = !DILocation(line: 92, column: 7, scope: !2415, inlinedAt: !2447)
!2452 = !DILocalVariable(name: "s2", arg: 2, scope: !2453, file: !2283, line: 76, type: !31)
!2453 = distinct !DISubprogram(name: "strcaseeq6", scope: !2283, file: !2283, line: 76, type: !2454, isLocal: true, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: true, unit: !108, variables: !2456)
!2454 = !DISubroutineType(types: !2455)
!2455 = !{!61, !31, !31, !21, !21, !21}
!2456 = !{!2457, !2452, !2458, !2459, !2460}
!2457 = !DILocalVariable(name: "s1", arg: 1, scope: !2453, file: !2283, line: 76, type: !31)
!2458 = !DILocalVariable(name: "s26", arg: 3, scope: !2453, file: !2283, line: 76, type: !21)
!2459 = !DILocalVariable(name: "s27", arg: 4, scope: !2453, file: !2283, line: 76, type: !21)
!2460 = !DILocalVariable(name: "s28", arg: 5, scope: !2453, file: !2283, line: 76, type: !21)
!2461 = !DILocation(line: 76, column: 41, scope: !2453, inlinedAt: !2462)
!2462 = distinct !DILocation(line: 97, column: 16, scope: !2463, inlinedAt: !2447)
!2463 = distinct !DILexicalBlock(scope: !2464, file: !2283, line: 94, column: 11)
!2464 = distinct !DILexicalBlock(scope: !2413, file: !2283, line: 93, column: 5)
!2465 = !DILocation(line: 76, column: 60, scope: !2453, inlinedAt: !2462)
!2466 = !DILocation(line: 76, column: 70, scope: !2453, inlinedAt: !2462)
!2467 = !DILocation(line: 78, column: 7, scope: !2468, inlinedAt: !2462)
!2468 = !DILexicalBlockFile(scope: !2469, file: !2283, discriminator: 2)
!2469 = distinct !DILexicalBlock(scope: !2453, file: !2283, line: 78, column: 7)
!2470 = !DILocation(line: 78, column: 7, scope: !2471, inlinedAt: !2462)
!2471 = !DILexicalBlockFile(scope: !2453, file: !2283, discriminator: 2)
!2472 = !DILocalVariable(name: "s2", arg: 2, scope: !2473, file: !2283, line: 62, type: !31)
!2473 = distinct !DISubprogram(name: "strcaseeq7", scope: !2283, file: !2283, line: 62, type: !2474, isLocal: true, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: true, unit: !108, variables: !2476)
!2474 = !DISubroutineType(types: !2475)
!2475 = !{!61, !31, !31, !21, !21}
!2476 = !{!2477, !2472, !2478, !2479}
!2477 = !DILocalVariable(name: "s1", arg: 1, scope: !2473, file: !2283, line: 62, type: !31)
!2478 = !DILocalVariable(name: "s27", arg: 3, scope: !2473, file: !2283, line: 62, type: !21)
!2479 = !DILocalVariable(name: "s28", arg: 4, scope: !2473, file: !2283, line: 62, type: !21)
!2480 = !DILocation(line: 62, column: 41, scope: !2473, inlinedAt: !2481)
!2481 = distinct !DILocation(line: 83, column: 16, scope: !2482, inlinedAt: !2462)
!2482 = distinct !DILexicalBlock(scope: !2483, file: !2283, line: 80, column: 11)
!2483 = distinct !DILexicalBlock(scope: !2469, file: !2283, line: 79, column: 5)
!2484 = !DILocation(line: 62, column: 50, scope: !2473, inlinedAt: !2481)
!2485 = !DILocation(line: 62, column: 60, scope: !2473, inlinedAt: !2481)
!2486 = !DILocation(line: 64, column: 7, scope: !2487, inlinedAt: !2481)
!2487 = !DILexicalBlockFile(scope: !2488, file: !2283, discriminator: 2)
!2488 = distinct !DILexicalBlock(scope: !2473, file: !2283, line: 64, column: 7)
!2489 = !DILocation(line: 228, column: 7, scope: !2264)
!2490 = !DILocation(line: 229, column: 12, scope: !2422)
!2491 = !DILocation(line: 229, column: 21, scope: !2422)
!2492 = !DILocation(line: 229, column: 5, scope: !2422)
!2493 = !DILocation(line: 231, column: 13, scope: !2264)
!2494 = !DILocation(line: 231, column: 11, scope: !2264)
!2495 = !DILocation(line: 231, column: 3, scope: !2264)
!2496 = !DILocation(line: 232, column: 1, scope: !2264)
!2497 = distinct !DISubprogram(name: "quotearg_alloc", scope: !136, file: !136, line: 791, type: !2498, isLocal: false, isDefinition: true, scopeLine: 793, flags: DIFlagPrototyped, isOptimized: true, unit: !108, variables: !2500)
!2498 = !DISubroutineType(types: !2499)
!2499 = !{!20, !31, !23, !1338}
!2500 = !{!2501, !2502, !2503}
!2501 = !DILocalVariable(name: "arg", arg: 1, scope: !2497, file: !136, line: 791, type: !31)
!2502 = !DILocalVariable(name: "argsize", arg: 2, scope: !2497, file: !136, line: 791, type: !23)
!2503 = !DILocalVariable(name: "o", arg: 3, scope: !2497, file: !136, line: 792, type: !1338)
!2504 = !DILocation(line: 791, column: 29, scope: !2497)
!2505 = !DILocation(line: 791, column: 41, scope: !2497)
!2506 = !DILocation(line: 792, column: 47, scope: !2497)
!2507 = !DILocalVariable(name: "arg", arg: 1, scope: !2508, file: !136, line: 804, type: !31)
!2508 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !136, file: !136, line: 804, type: !2509, isLocal: false, isDefinition: true, scopeLine: 806, flags: DIFlagPrototyped, isOptimized: true, unit: !108, variables: !2511)
!2509 = !DISubroutineType(types: !2510)
!2510 = !{!20, !31, !23, !562, !1338}
!2511 = !{!2507, !2512, !2513, !2514, !2515, !2516, !2517, !2518, !2519}
!2512 = !DILocalVariable(name: "argsize", arg: 2, scope: !2508, file: !136, line: 804, type: !23)
!2513 = !DILocalVariable(name: "size", arg: 3, scope: !2508, file: !136, line: 804, type: !562)
!2514 = !DILocalVariable(name: "o", arg: 4, scope: !2508, file: !136, line: 805, type: !1338)
!2515 = !DILocalVariable(name: "p", scope: !2508, file: !136, line: 807, type: !1338)
!2516 = !DILocalVariable(name: "e", scope: !2508, file: !136, line: 808, type: !61)
!2517 = !DILocalVariable(name: "flags", scope: !2508, file: !136, line: 810, type: !61)
!2518 = !DILocalVariable(name: "bufsize", scope: !2508, file: !136, line: 811, type: !23)
!2519 = !DILocalVariable(name: "buf", scope: !2508, file: !136, line: 815, type: !20)
!2520 = !DILocation(line: 804, column: 33, scope: !2508, inlinedAt: !2521)
!2521 = distinct !DILocation(line: 794, column: 10, scope: !2497)
!2522 = !DILocation(line: 804, column: 45, scope: !2508, inlinedAt: !2521)
!2523 = !DILocation(line: 804, column: 62, scope: !2508, inlinedAt: !2521)
!2524 = !DILocation(line: 805, column: 51, scope: !2508, inlinedAt: !2521)
!2525 = !DILocation(line: 807, column: 37, scope: !2508, inlinedAt: !2521)
!2526 = !DILocation(line: 807, column: 33, scope: !2508, inlinedAt: !2521)
!2527 = !DILocation(line: 808, column: 11, scope: !2508, inlinedAt: !2521)
!2528 = !DILocation(line: 808, column: 7, scope: !2508, inlinedAt: !2521)
!2529 = !DILocation(line: 810, column: 18, scope: !2508, inlinedAt: !2521)
!2530 = !DILocation(line: 810, column: 24, scope: !2508, inlinedAt: !2521)
!2531 = !DILocation(line: 810, column: 7, scope: !2508, inlinedAt: !2521)
!2532 = !DILocation(line: 811, column: 69, scope: !2508, inlinedAt: !2521)
!2533 = !DILocation(line: 812, column: 53, scope: !2508, inlinedAt: !2521)
!2534 = !DILocation(line: 813, column: 49, scope: !2508, inlinedAt: !2521)
!2535 = !DILocation(line: 814, column: 49, scope: !2508, inlinedAt: !2521)
!2536 = !DILocation(line: 811, column: 20, scope: !2508, inlinedAt: !2521)
!2537 = !DILocation(line: 814, column: 62, scope: !2508, inlinedAt: !2521)
!2538 = !DILocation(line: 811, column: 10, scope: !2508, inlinedAt: !2521)
!2539 = !DILocalVariable(name: "n", arg: 1, scope: !2540, file: !558, line: 220, type: !23)
!2540 = distinct !DISubprogram(name: "xcharalloc", scope: !558, file: !558, line: 220, type: !2541, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !108, variables: !2543)
!2541 = !DISubroutineType(types: !2542)
!2542 = !{!20, !23}
!2543 = !{!2539}
!2544 = !DILocation(line: 220, column: 20, scope: !2540, inlinedAt: !2545)
!2545 = distinct !DILocation(line: 815, column: 15, scope: !2508, inlinedAt: !2521)
!2546 = !DILocation(line: 222, column: 10, scope: !2540, inlinedAt: !2545)
!2547 = !DILocation(line: 815, column: 9, scope: !2508, inlinedAt: !2521)
!2548 = !DILocation(line: 816, column: 60, scope: !2508, inlinedAt: !2521)
!2549 = !DILocation(line: 818, column: 32, scope: !2508, inlinedAt: !2521)
!2550 = !DILocation(line: 818, column: 47, scope: !2508, inlinedAt: !2521)
!2551 = !DILocation(line: 816, column: 3, scope: !2508, inlinedAt: !2521)
!2552 = !DILocation(line: 819, column: 9, scope: !2508, inlinedAt: !2521)
!2553 = !DILocation(line: 794, column: 3, scope: !2497)
!2554 = !DILocation(line: 804, column: 33, scope: !2508)
!2555 = !DILocation(line: 804, column: 45, scope: !2508)
!2556 = !DILocation(line: 804, column: 62, scope: !2508)
!2557 = !DILocation(line: 805, column: 51, scope: !2508)
!2558 = !DILocation(line: 807, column: 37, scope: !2508)
!2559 = !DILocation(line: 807, column: 33, scope: !2508)
!2560 = !DILocation(line: 808, column: 11, scope: !2508)
!2561 = !DILocation(line: 808, column: 7, scope: !2508)
!2562 = !DILocation(line: 810, column: 18, scope: !2508)
!2563 = !DILocation(line: 810, column: 27, scope: !2508)
!2564 = !DILocation(line: 810, column: 24, scope: !2508)
!2565 = !DILocation(line: 810, column: 7, scope: !2508)
!2566 = !DILocation(line: 811, column: 69, scope: !2508)
!2567 = !DILocation(line: 812, column: 53, scope: !2508)
!2568 = !DILocation(line: 813, column: 49, scope: !2508)
!2569 = !DILocation(line: 814, column: 49, scope: !2508)
!2570 = !DILocation(line: 811, column: 20, scope: !2508)
!2571 = !DILocation(line: 814, column: 62, scope: !2508)
!2572 = !DILocation(line: 811, column: 10, scope: !2508)
!2573 = !DILocation(line: 220, column: 20, scope: !2540, inlinedAt: !2574)
!2574 = distinct !DILocation(line: 815, column: 15, scope: !2508)
!2575 = !DILocation(line: 222, column: 10, scope: !2540, inlinedAt: !2574)
!2576 = !DILocation(line: 815, column: 9, scope: !2508)
!2577 = !DILocation(line: 816, column: 60, scope: !2508)
!2578 = !DILocation(line: 818, column: 32, scope: !2508)
!2579 = !DILocation(line: 818, column: 47, scope: !2508)
!2580 = !DILocation(line: 816, column: 3, scope: !2508)
!2581 = !DILocation(line: 819, column: 9, scope: !2508)
!2582 = !DILocation(line: 820, column: 7, scope: !2508)
!2583 = !DILocation(line: 821, column: 11, scope: !2584)
!2584 = distinct !DILexicalBlock(scope: !2508, file: !136, line: 820, column: 7)
!2585 = !{!1158, !1158, i64 0}
!2586 = !DILocation(line: 821, column: 5, scope: !2584)
!2587 = !DILocation(line: 822, column: 3, scope: !2508)
!2588 = distinct !DISubprogram(name: "quotearg_free", scope: !136, file: !136, line: 840, type: !622, isLocal: false, isDefinition: true, scopeLine: 841, flags: DIFlagPrototyped, isOptimized: true, unit: !108, variables: !2589)
!2589 = !{!2590, !2591}
!2590 = !DILocalVariable(name: "sv", scope: !2588, file: !136, line: 842, type: !163)
!2591 = !DILocalVariable(name: "i", scope: !2588, file: !136, line: 843, type: !61)
!2592 = !DILocation(line: 842, column: 24, scope: !2588)
!2593 = !DILocation(line: 842, column: 19, scope: !2588)
!2594 = !DILocation(line: 843, column: 7, scope: !2588)
!2595 = !DILocation(line: 844, column: 19, scope: !2596)
!2596 = !DILexicalBlockFile(scope: !2597, file: !136, discriminator: 1)
!2597 = distinct !DILexicalBlock(scope: !2598, file: !136, line: 844, column: 3)
!2598 = distinct !DILexicalBlock(scope: !2588, file: !136, line: 844, column: 3)
!2599 = !DILocation(line: 844, column: 17, scope: !2596)
!2600 = !DILocation(line: 844, column: 3, scope: !2601)
!2601 = !DILexicalBlockFile(scope: !2598, file: !136, discriminator: 1)
!2602 = !DILocation(line: 845, column: 17, scope: !2597)
!2603 = !{!2604, !607, i64 8}
!2604 = !{!"slotvec", !1158, i64 0, !607, i64 8}
!2605 = !DILocation(line: 845, column: 5, scope: !2597)
!2606 = !DILocation(line: 844, column: 28, scope: !2607)
!2607 = !DILexicalBlockFile(scope: !2597, file: !136, discriminator: 2)
!2608 = distinct !{!2608, !2609, !2610}
!2609 = !DILocation(line: 844, column: 3, scope: !2598)
!2610 = !DILocation(line: 845, column: 20, scope: !2598)
!2611 = !DILocation(line: 846, column: 13, scope: !2612)
!2612 = distinct !DILexicalBlock(scope: !2588, file: !136, line: 846, column: 7)
!2613 = !DILocation(line: 846, column: 17, scope: !2612)
!2614 = !DILocation(line: 846, column: 7, scope: !2588)
!2615 = !DILocation(line: 848, column: 7, scope: !2616)
!2616 = distinct !DILexicalBlock(scope: !2612, file: !136, line: 847, column: 5)
!2617 = !DILocation(line: 849, column: 21, scope: !2616)
!2618 = !{!2604, !1158, i64 0}
!2619 = !DILocation(line: 850, column: 20, scope: !2616)
!2620 = !DILocation(line: 851, column: 5, scope: !2616)
!2621 = !DILocation(line: 852, column: 10, scope: !2622)
!2622 = distinct !DILexicalBlock(scope: !2588, file: !136, line: 852, column: 7)
!2623 = !DILocation(line: 852, column: 7, scope: !2588)
!2624 = !DILocation(line: 854, column: 13, scope: !2625)
!2625 = distinct !DILexicalBlock(scope: !2622, file: !136, line: 853, column: 5)
!2626 = !DILocation(line: 854, column: 7, scope: !2625)
!2627 = !DILocation(line: 855, column: 15, scope: !2625)
!2628 = !DILocation(line: 856, column: 5, scope: !2625)
!2629 = !DILocation(line: 857, column: 10, scope: !2588)
!2630 = !DILocation(line: 858, column: 1, scope: !2588)
!2631 = distinct !DISubprogram(name: "quotearg_n", scope: !136, file: !136, line: 922, type: !2632, isLocal: false, isDefinition: true, scopeLine: 923, flags: DIFlagPrototyped, isOptimized: true, unit: !108, variables: !2634)
!2632 = !DISubroutineType(types: !2633)
!2633 = !{!20, !61, !31}
!2634 = !{!2635, !2636}
!2635 = !DILocalVariable(name: "n", arg: 1, scope: !2631, file: !136, line: 922, type: !61)
!2636 = !DILocalVariable(name: "arg", arg: 2, scope: !2631, file: !136, line: 922, type: !31)
!2637 = !DILocation(line: 922, column: 17, scope: !2631)
!2638 = !DILocation(line: 922, column: 32, scope: !2631)
!2639 = !DILocation(line: 924, column: 10, scope: !2631)
!2640 = !DILocation(line: 924, column: 3, scope: !2631)
!2641 = distinct !DISubprogram(name: "quotearg_n_options", scope: !136, file: !136, line: 869, type: !2642, isLocal: true, isDefinition: true, scopeLine: 871, flags: DIFlagPrototyped, isOptimized: true, unit: !108, variables: !2644)
!2642 = !DISubroutineType(types: !2643)
!2643 = !{!20, !61, !31, !23, !1338}
!2644 = !{!2645, !2646, !2647, !2648, !2649, !2650, !2651, !2654, !2656, !2657, !2658}
!2645 = !DILocalVariable(name: "n", arg: 1, scope: !2641, file: !136, line: 869, type: !61)
!2646 = !DILocalVariable(name: "arg", arg: 2, scope: !2641, file: !136, line: 869, type: !31)
!2647 = !DILocalVariable(name: "argsize", arg: 3, scope: !2641, file: !136, line: 869, type: !23)
!2648 = !DILocalVariable(name: "options", arg: 4, scope: !2641, file: !136, line: 870, type: !1338)
!2649 = !DILocalVariable(name: "e", scope: !2641, file: !136, line: 872, type: !61)
!2650 = !DILocalVariable(name: "sv", scope: !2641, file: !136, line: 874, type: !163)
!2651 = !DILocalVariable(name: "preallocated", scope: !2652, file: !136, line: 881, type: !91)
!2652 = distinct !DILexicalBlock(scope: !2653, file: !136, line: 880, column: 5)
!2653 = distinct !DILexicalBlock(scope: !2641, file: !136, line: 879, column: 7)
!2654 = !DILocalVariable(name: "size", scope: !2655, file: !136, line: 894, type: !23)
!2655 = distinct !DILexicalBlock(scope: !2641, file: !136, line: 893, column: 3)
!2656 = !DILocalVariable(name: "val", scope: !2655, file: !136, line: 895, type: !20)
!2657 = !DILocalVariable(name: "flags", scope: !2655, file: !136, line: 897, type: !61)
!2658 = !DILocalVariable(name: "qsize", scope: !2655, file: !136, line: 898, type: !23)
!2659 = !DILocation(line: 869, column: 25, scope: !2641)
!2660 = !DILocation(line: 869, column: 40, scope: !2641)
!2661 = !DILocation(line: 869, column: 52, scope: !2641)
!2662 = !DILocation(line: 870, column: 51, scope: !2641)
!2663 = !DILocation(line: 872, column: 11, scope: !2641)
!2664 = !DILocation(line: 872, column: 7, scope: !2641)
!2665 = !DILocation(line: 874, column: 24, scope: !2641)
!2666 = !DILocation(line: 874, column: 19, scope: !2641)
!2667 = !DILocation(line: 876, column: 9, scope: !2668)
!2668 = distinct !DILexicalBlock(scope: !2641, file: !136, line: 876, column: 7)
!2669 = !DILocation(line: 876, column: 7, scope: !2641)
!2670 = !DILocation(line: 877, column: 5, scope: !2668)
!2671 = !DILocation(line: 879, column: 7, scope: !2653)
!2672 = !DILocation(line: 879, column: 14, scope: !2653)
!2673 = !DILocation(line: 879, column: 7, scope: !2641)
!2674 = !DILocation(line: 881, column: 31, scope: !2652)
!2675 = !DILocation(line: 883, column: 67, scope: !2676)
!2676 = distinct !DILexicalBlock(scope: !2652, file: !136, line: 883, column: 11)
!2677 = !DILocation(line: 883, column: 11, scope: !2652)
!2678 = !DILocation(line: 884, column: 9, scope: !2676)
!2679 = !DILocation(line: 886, column: 32, scope: !2680)
!2680 = !DILexicalBlockFile(scope: !2652, file: !136, discriminator: 3)
!2681 = !DILocation(line: 886, column: 61, scope: !2680)
!2682 = !DILocation(line: 886, column: 58, scope: !2680)
!2683 = !DILocation(line: 886, column: 66, scope: !2680)
!2684 = !DILocation(line: 886, column: 22, scope: !2680)
!2685 = !DILocation(line: 886, column: 15, scope: !2680)
!2686 = !DILocation(line: 887, column: 11, scope: !2652)
!2687 = !DILocation(line: 888, column: 15, scope: !2688)
!2688 = distinct !DILexicalBlock(scope: !2652, file: !136, line: 887, column: 11)
!2689 = !{i64 0, i64 8, !2585, i64 8, i64 8, !606}
!2690 = !DILocation(line: 888, column: 9, scope: !2688)
!2691 = !DILocation(line: 889, column: 20, scope: !2652)
!2692 = !DILocation(line: 889, column: 18, scope: !2652)
!2693 = !DILocation(line: 889, column: 7, scope: !2652)
!2694 = !DILocation(line: 889, column: 38, scope: !2652)
!2695 = !DILocation(line: 889, column: 31, scope: !2652)
!2696 = !DILocation(line: 889, column: 48, scope: !2652)
!2697 = !DILocation(line: 890, column: 14, scope: !2652)
!2698 = !DILocation(line: 891, column: 5, scope: !2652)
!2699 = !DILocation(line: 894, column: 19, scope: !2655)
!2700 = !DILocation(line: 894, column: 25, scope: !2655)
!2701 = !DILocation(line: 894, column: 12, scope: !2655)
!2702 = !DILocation(line: 895, column: 23, scope: !2655)
!2703 = !DILocation(line: 895, column: 11, scope: !2655)
!2704 = !DILocation(line: 897, column: 26, scope: !2655)
!2705 = !DILocation(line: 897, column: 32, scope: !2655)
!2706 = !DILocation(line: 897, column: 9, scope: !2655)
!2707 = !DILocation(line: 899, column: 55, scope: !2655)
!2708 = !DILocation(line: 900, column: 46, scope: !2655)
!2709 = !DILocation(line: 901, column: 55, scope: !2655)
!2710 = !DILocation(line: 902, column: 55, scope: !2655)
!2711 = !DILocation(line: 898, column: 20, scope: !2655)
!2712 = !DILocation(line: 898, column: 12, scope: !2655)
!2713 = !DILocation(line: 904, column: 14, scope: !2714)
!2714 = distinct !DILexicalBlock(scope: !2655, file: !136, line: 904, column: 9)
!2715 = !DILocation(line: 904, column: 9, scope: !2655)
!2716 = !DILocation(line: 906, column: 35, scope: !2717)
!2717 = distinct !DILexicalBlock(scope: !2714, file: !136, line: 905, column: 7)
!2718 = !DILocation(line: 906, column: 20, scope: !2717)
!2719 = !DILocation(line: 907, column: 17, scope: !2720)
!2720 = distinct !DILexicalBlock(scope: !2717, file: !136, line: 907, column: 13)
!2721 = !DILocation(line: 907, column: 13, scope: !2717)
!2722 = !DILocation(line: 908, column: 11, scope: !2720)
!2723 = !DILocation(line: 220, column: 20, scope: !2540, inlinedAt: !2724)
!2724 = distinct !DILocation(line: 909, column: 27, scope: !2717)
!2725 = !DILocation(line: 222, column: 10, scope: !2540, inlinedAt: !2724)
!2726 = !DILocation(line: 909, column: 19, scope: !2717)
!2727 = !DILocation(line: 910, column: 69, scope: !2717)
!2728 = !DILocation(line: 912, column: 44, scope: !2717)
!2729 = !DILocation(line: 913, column: 44, scope: !2717)
!2730 = !DILocation(line: 910, column: 9, scope: !2717)
!2731 = !DILocation(line: 914, column: 7, scope: !2717)
!2732 = !DILocation(line: 916, column: 11, scope: !2655)
!2733 = !DILocation(line: 917, column: 5, scope: !2655)
!2734 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !136, file: !136, line: 928, type: !2735, isLocal: false, isDefinition: true, scopeLine: 929, flags: DIFlagPrototyped, isOptimized: true, unit: !108, variables: !2737)
!2735 = !DISubroutineType(types: !2736)
!2736 = !{!20, !61, !31, !23}
!2737 = !{!2738, !2739, !2740}
!2738 = !DILocalVariable(name: "n", arg: 1, scope: !2734, file: !136, line: 928, type: !61)
!2739 = !DILocalVariable(name: "arg", arg: 2, scope: !2734, file: !136, line: 928, type: !31)
!2740 = !DILocalVariable(name: "argsize", arg: 3, scope: !2734, file: !136, line: 928, type: !23)
!2741 = !DILocation(line: 928, column: 21, scope: !2734)
!2742 = !DILocation(line: 928, column: 36, scope: !2734)
!2743 = !DILocation(line: 928, column: 48, scope: !2734)
!2744 = !DILocation(line: 930, column: 10, scope: !2734)
!2745 = !DILocation(line: 930, column: 3, scope: !2734)
!2746 = distinct !DISubprogram(name: "quotearg", scope: !136, file: !136, line: 934, type: !2747, isLocal: false, isDefinition: true, scopeLine: 935, flags: DIFlagPrototyped, isOptimized: true, unit: !108, variables: !2749)
!2747 = !DISubroutineType(types: !2748)
!2748 = !{!20, !31}
!2749 = !{!2750}
!2750 = !DILocalVariable(name: "arg", arg: 1, scope: !2746, file: !136, line: 934, type: !31)
!2751 = !DILocation(line: 934, column: 23, scope: !2746)
!2752 = !DILocation(line: 922, column: 17, scope: !2631, inlinedAt: !2753)
!2753 = distinct !DILocation(line: 936, column: 10, scope: !2746)
!2754 = !DILocation(line: 922, column: 32, scope: !2631, inlinedAt: !2753)
!2755 = !DILocation(line: 924, column: 10, scope: !2631, inlinedAt: !2753)
!2756 = !DILocation(line: 936, column: 3, scope: !2746)
!2757 = distinct !DISubprogram(name: "quotearg_mem", scope: !136, file: !136, line: 940, type: !2758, isLocal: false, isDefinition: true, scopeLine: 941, flags: DIFlagPrototyped, isOptimized: true, unit: !108, variables: !2760)
!2758 = !DISubroutineType(types: !2759)
!2759 = !{!20, !31, !23}
!2760 = !{!2761, !2762}
!2761 = !DILocalVariable(name: "arg", arg: 1, scope: !2757, file: !136, line: 940, type: !31)
!2762 = !DILocalVariable(name: "argsize", arg: 2, scope: !2757, file: !136, line: 940, type: !23)
!2763 = !DILocation(line: 940, column: 27, scope: !2757)
!2764 = !DILocation(line: 940, column: 39, scope: !2757)
!2765 = !DILocation(line: 928, column: 21, scope: !2734, inlinedAt: !2766)
!2766 = distinct !DILocation(line: 942, column: 10, scope: !2757)
!2767 = !DILocation(line: 928, column: 36, scope: !2734, inlinedAt: !2766)
!2768 = !DILocation(line: 928, column: 48, scope: !2734, inlinedAt: !2766)
!2769 = !DILocation(line: 930, column: 10, scope: !2734, inlinedAt: !2766)
!2770 = !DILocation(line: 942, column: 3, scope: !2757)
!2771 = distinct !DISubprogram(name: "quotearg_n_style", scope: !136, file: !136, line: 946, type: !2772, isLocal: false, isDefinition: true, scopeLine: 947, flags: DIFlagPrototyped, isOptimized: true, unit: !108, variables: !2774)
!2772 = !DISubroutineType(types: !2773)
!2773 = !{!20, !61, !5, !31}
!2774 = !{!2775, !2776, !2777, !2778}
!2775 = !DILocalVariable(name: "n", arg: 1, scope: !2771, file: !136, line: 946, type: !61)
!2776 = !DILocalVariable(name: "s", arg: 2, scope: !2771, file: !136, line: 946, type: !5)
!2777 = !DILocalVariable(name: "arg", arg: 3, scope: !2771, file: !136, line: 946, type: !31)
!2778 = !DILocalVariable(name: "o", scope: !2771, file: !136, line: 948, type: !1339)
!2779 = !DILocalVariable(name: "o", scope: !2780, file: !136, line: 187, type: !143)
!2780 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !136, file: !136, line: 185, type: !2781, isLocal: true, isDefinition: true, scopeLine: 186, flags: DIFlagPrototyped, isOptimized: true, unit: !108, variables: !2783)
!2781 = !DISubroutineType(types: !2782)
!2782 = !{!143, !5}
!2783 = !{!2784, !2779}
!2784 = !DILocalVariable(name: "style", arg: 1, scope: !2780, file: !136, line: 185, type: !5)
!2785 = !DIExpression(DW_OP_LLVM_fragment, 32, 416)
!2786 = !DILocation(line: 187, column: 26, scope: !2780, inlinedAt: !2787)
!2787 = distinct !DILocation(line: 948, column: 36, scope: !2771)
!2788 = !DILocation(line: 946, column: 23, scope: !2771)
!2789 = !DILocation(line: 946, column: 45, scope: !2771)
!2790 = !DILocation(line: 946, column: 60, scope: !2771)
!2791 = !DILocation(line: 948, column: 3, scope: !2771)
!2792 = !DILocation(line: 948, column: 32, scope: !2771)
!2793 = !DILocation(line: 185, column: 48, scope: !2780, inlinedAt: !2787)
!2794 = !DILocation(line: 187, column: 3, scope: !2780, inlinedAt: !2787)
!2795 = !DIExpression(DW_OP_LLVM_fragment, 0, 32)
!2796 = !DILocation(line: 188, column: 13, scope: !2797, inlinedAt: !2787)
!2797 = distinct !DILexicalBlock(scope: !2780, file: !136, line: 188, column: 7)
!2798 = !DILocation(line: 188, column: 7, scope: !2780, inlinedAt: !2787)
!2799 = !DILocation(line: 189, column: 5, scope: !2797, inlinedAt: !2787)
!2800 = !{!2801}
!2801 = distinct !{!2801, !2802, !"quoting_options_from_style: argument 0"}
!2802 = distinct !{!2802, !"quoting_options_from_style"}
!2803 = !DILocation(line: 191, column: 10, scope: !2780, inlinedAt: !2787)
!2804 = !DILocation(line: 192, column: 1, scope: !2780, inlinedAt: !2787)
!2805 = !DILocation(line: 949, column: 10, scope: !2771)
!2806 = !DILocation(line: 950, column: 1, scope: !2771)
!2807 = !DILocation(line: 949, column: 3, scope: !2771)
!2808 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !136, file: !136, line: 953, type: !2809, isLocal: false, isDefinition: true, scopeLine: 955, flags: DIFlagPrototyped, isOptimized: true, unit: !108, variables: !2811)
!2809 = !DISubroutineType(types: !2810)
!2810 = !{!20, !61, !5, !31, !23}
!2811 = !{!2812, !2813, !2814, !2815, !2816}
!2812 = !DILocalVariable(name: "n", arg: 1, scope: !2808, file: !136, line: 953, type: !61)
!2813 = !DILocalVariable(name: "s", arg: 2, scope: !2808, file: !136, line: 953, type: !5)
!2814 = !DILocalVariable(name: "arg", arg: 3, scope: !2808, file: !136, line: 954, type: !31)
!2815 = !DILocalVariable(name: "argsize", arg: 4, scope: !2808, file: !136, line: 954, type: !23)
!2816 = !DILocalVariable(name: "o", scope: !2808, file: !136, line: 956, type: !1339)
!2817 = !DILocation(line: 187, column: 26, scope: !2780, inlinedAt: !2818)
!2818 = distinct !DILocation(line: 956, column: 36, scope: !2808)
!2819 = !DILocation(line: 953, column: 27, scope: !2808)
!2820 = !DILocation(line: 953, column: 49, scope: !2808)
!2821 = !DILocation(line: 954, column: 35, scope: !2808)
!2822 = !DILocation(line: 954, column: 47, scope: !2808)
!2823 = !DILocation(line: 956, column: 3, scope: !2808)
!2824 = !DILocation(line: 956, column: 32, scope: !2808)
!2825 = !DILocation(line: 185, column: 48, scope: !2780, inlinedAt: !2818)
!2826 = !DILocation(line: 187, column: 3, scope: !2780, inlinedAt: !2818)
!2827 = !DILocation(line: 188, column: 13, scope: !2797, inlinedAt: !2818)
!2828 = !DILocation(line: 188, column: 7, scope: !2780, inlinedAt: !2818)
!2829 = !DILocation(line: 189, column: 5, scope: !2797, inlinedAt: !2818)
!2830 = !{!2831}
!2831 = distinct !{!2831, !2832, !"quoting_options_from_style: argument 0"}
!2832 = distinct !{!2832, !"quoting_options_from_style"}
!2833 = !DILocation(line: 191, column: 10, scope: !2780, inlinedAt: !2818)
!2834 = !DILocation(line: 192, column: 1, scope: !2780, inlinedAt: !2818)
!2835 = !DILocation(line: 957, column: 10, scope: !2808)
!2836 = !DILocation(line: 958, column: 1, scope: !2808)
!2837 = !DILocation(line: 957, column: 3, scope: !2808)
!2838 = distinct !DISubprogram(name: "quotearg_style", scope: !136, file: !136, line: 961, type: !2839, isLocal: false, isDefinition: true, scopeLine: 962, flags: DIFlagPrototyped, isOptimized: true, unit: !108, variables: !2841)
!2839 = !DISubroutineType(types: !2840)
!2840 = !{!20, !5, !31}
!2841 = !{!2842, !2843}
!2842 = !DILocalVariable(name: "s", arg: 1, scope: !2838, file: !136, line: 961, type: !5)
!2843 = !DILocalVariable(name: "arg", arg: 2, scope: !2838, file: !136, line: 961, type: !31)
!2844 = !DILocation(line: 187, column: 26, scope: !2780, inlinedAt: !2845)
!2845 = distinct !DILocation(line: 948, column: 36, scope: !2771, inlinedAt: !2846)
!2846 = distinct !DILocation(line: 963, column: 10, scope: !2838)
!2847 = !DILocation(line: 961, column: 36, scope: !2838)
!2848 = !DILocation(line: 961, column: 51, scope: !2838)
!2849 = !DILocation(line: 946, column: 23, scope: !2771, inlinedAt: !2846)
!2850 = !DILocation(line: 946, column: 45, scope: !2771, inlinedAt: !2846)
!2851 = !DILocation(line: 946, column: 60, scope: !2771, inlinedAt: !2846)
!2852 = !DILocation(line: 948, column: 3, scope: !2771, inlinedAt: !2846)
!2853 = !DILocation(line: 948, column: 32, scope: !2771, inlinedAt: !2846)
!2854 = !DILocation(line: 185, column: 48, scope: !2780, inlinedAt: !2845)
!2855 = !DILocation(line: 187, column: 3, scope: !2780, inlinedAt: !2845)
!2856 = !DILocation(line: 188, column: 13, scope: !2797, inlinedAt: !2845)
!2857 = !DILocation(line: 188, column: 7, scope: !2780, inlinedAt: !2845)
!2858 = !DILocation(line: 189, column: 5, scope: !2797, inlinedAt: !2845)
!2859 = !{!2860}
!2860 = distinct !{!2860, !2861, !"quoting_options_from_style: argument 0"}
!2861 = distinct !{!2861, !"quoting_options_from_style"}
!2862 = !DILocation(line: 191, column: 10, scope: !2780, inlinedAt: !2845)
!2863 = !DILocation(line: 192, column: 1, scope: !2780, inlinedAt: !2845)
!2864 = !DILocation(line: 949, column: 10, scope: !2771, inlinedAt: !2846)
!2865 = !DILocation(line: 950, column: 1, scope: !2771, inlinedAt: !2846)
!2866 = !DILocation(line: 963, column: 3, scope: !2838)
!2867 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !136, file: !136, line: 967, type: !2868, isLocal: false, isDefinition: true, scopeLine: 968, flags: DIFlagPrototyped, isOptimized: true, unit: !108, variables: !2870)
!2868 = !DISubroutineType(types: !2869)
!2869 = !{!20, !5, !31, !23}
!2870 = !{!2871, !2872, !2873}
!2871 = !DILocalVariable(name: "s", arg: 1, scope: !2867, file: !136, line: 967, type: !5)
!2872 = !DILocalVariable(name: "arg", arg: 2, scope: !2867, file: !136, line: 967, type: !31)
!2873 = !DILocalVariable(name: "argsize", arg: 3, scope: !2867, file: !136, line: 967, type: !23)
!2874 = !DILocation(line: 187, column: 26, scope: !2780, inlinedAt: !2875)
!2875 = distinct !DILocation(line: 956, column: 36, scope: !2808, inlinedAt: !2876)
!2876 = distinct !DILocation(line: 969, column: 10, scope: !2867)
!2877 = !DILocation(line: 967, column: 40, scope: !2867)
!2878 = !DILocation(line: 967, column: 55, scope: !2867)
!2879 = !DILocation(line: 967, column: 67, scope: !2867)
!2880 = !DILocation(line: 953, column: 27, scope: !2808, inlinedAt: !2876)
!2881 = !DILocation(line: 953, column: 49, scope: !2808, inlinedAt: !2876)
!2882 = !DILocation(line: 954, column: 35, scope: !2808, inlinedAt: !2876)
!2883 = !DILocation(line: 954, column: 47, scope: !2808, inlinedAt: !2876)
!2884 = !DILocation(line: 956, column: 3, scope: !2808, inlinedAt: !2876)
!2885 = !DILocation(line: 956, column: 32, scope: !2808, inlinedAt: !2876)
!2886 = !DILocation(line: 185, column: 48, scope: !2780, inlinedAt: !2875)
!2887 = !DILocation(line: 187, column: 3, scope: !2780, inlinedAt: !2875)
!2888 = !DILocation(line: 188, column: 13, scope: !2797, inlinedAt: !2875)
!2889 = !DILocation(line: 188, column: 7, scope: !2780, inlinedAt: !2875)
!2890 = !DILocation(line: 189, column: 5, scope: !2797, inlinedAt: !2875)
!2891 = !{!2892}
!2892 = distinct !{!2892, !2893, !"quoting_options_from_style: argument 0"}
!2893 = distinct !{!2893, !"quoting_options_from_style"}
!2894 = !DILocation(line: 191, column: 10, scope: !2780, inlinedAt: !2875)
!2895 = !DILocation(line: 192, column: 1, scope: !2780, inlinedAt: !2875)
!2896 = !DILocation(line: 957, column: 10, scope: !2808, inlinedAt: !2876)
!2897 = !DILocation(line: 958, column: 1, scope: !2808, inlinedAt: !2876)
!2898 = !DILocation(line: 969, column: 3, scope: !2867)
!2899 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !136, file: !136, line: 973, type: !2900, isLocal: false, isDefinition: true, scopeLine: 974, flags: DIFlagPrototyped, isOptimized: true, unit: !108, variables: !2902)
!2900 = !DISubroutineType(types: !2901)
!2901 = !{!20, !31, !23, !21}
!2902 = !{!2903, !2904, !2905, !2906}
!2903 = !DILocalVariable(name: "arg", arg: 1, scope: !2899, file: !136, line: 973, type: !31)
!2904 = !DILocalVariable(name: "argsize", arg: 2, scope: !2899, file: !136, line: 973, type: !23)
!2905 = !DILocalVariable(name: "ch", arg: 3, scope: !2899, file: !136, line: 973, type: !21)
!2906 = !DILocalVariable(name: "options", scope: !2899, file: !136, line: 975, type: !143)
!2907 = !DILocation(line: 973, column: 32, scope: !2899)
!2908 = !DILocation(line: 973, column: 44, scope: !2899)
!2909 = !DILocation(line: 973, column: 58, scope: !2899)
!2910 = !DILocation(line: 975, column: 3, scope: !2899)
!2911 = !DILocation(line: 976, column: 13, scope: !2899)
!2912 = !{i64 0, i64 4, !898, i64 4, i64 4, !724, i64 8, i64 32, !898, i64 40, i64 8, !606, i64 48, i64 8, !606}
!2913 = !DILocation(line: 975, column: 26, scope: !2899)
!2914 = !DILocation(line: 144, column: 43, scope: !1362, inlinedAt: !2915)
!2915 = distinct !DILocation(line: 977, column: 3, scope: !2899)
!2916 = !DILocation(line: 144, column: 51, scope: !1362, inlinedAt: !2915)
!2917 = !DILocation(line: 144, column: 58, scope: !1362, inlinedAt: !2915)
!2918 = !DILocation(line: 146, column: 17, scope: !1362, inlinedAt: !2915)
!2919 = !DILocation(line: 148, column: 62, scope: !1380, inlinedAt: !2915)
!2920 = !DILocation(line: 148, column: 57, scope: !1380, inlinedAt: !2915)
!2921 = !DILocation(line: 147, column: 17, scope: !1362, inlinedAt: !2915)
!2922 = !DILocation(line: 149, column: 18, scope: !1362, inlinedAt: !2915)
!2923 = !DILocation(line: 149, column: 15, scope: !1362, inlinedAt: !2915)
!2924 = !DILocation(line: 149, column: 7, scope: !1362, inlinedAt: !2915)
!2925 = !DILocation(line: 150, column: 12, scope: !1362, inlinedAt: !2915)
!2926 = !DILocation(line: 150, column: 15, scope: !1362, inlinedAt: !2915)
!2927 = !DILocation(line: 150, column: 25, scope: !1362, inlinedAt: !2915)
!2928 = !DILocation(line: 150, column: 7, scope: !1362, inlinedAt: !2915)
!2929 = !DILocation(line: 151, column: 18, scope: !1362, inlinedAt: !2915)
!2930 = !DILocation(line: 151, column: 23, scope: !1362, inlinedAt: !2915)
!2931 = !DILocation(line: 151, column: 6, scope: !1362, inlinedAt: !2915)
!2932 = !DILocation(line: 978, column: 10, scope: !2899)
!2933 = !DILocation(line: 979, column: 1, scope: !2899)
!2934 = !DILocation(line: 978, column: 3, scope: !2899)
!2935 = distinct !DISubprogram(name: "quotearg_char", scope: !136, file: !136, line: 982, type: !2936, isLocal: false, isDefinition: true, scopeLine: 983, flags: DIFlagPrototyped, isOptimized: true, unit: !108, variables: !2938)
!2936 = !DISubroutineType(types: !2937)
!2937 = !{!20, !31, !21}
!2938 = !{!2939, !2940}
!2939 = !DILocalVariable(name: "arg", arg: 1, scope: !2935, file: !136, line: 982, type: !31)
!2940 = !DILocalVariable(name: "ch", arg: 2, scope: !2935, file: !136, line: 982, type: !21)
!2941 = !DILocation(line: 982, column: 28, scope: !2935)
!2942 = !DILocation(line: 982, column: 38, scope: !2935)
!2943 = !DILocation(line: 973, column: 32, scope: !2899, inlinedAt: !2944)
!2944 = distinct !DILocation(line: 984, column: 10, scope: !2935)
!2945 = !DILocation(line: 973, column: 44, scope: !2899, inlinedAt: !2944)
!2946 = !DILocation(line: 973, column: 58, scope: !2899, inlinedAt: !2944)
!2947 = !DILocation(line: 975, column: 3, scope: !2899, inlinedAt: !2944)
!2948 = !DILocation(line: 976, column: 13, scope: !2899, inlinedAt: !2944)
!2949 = !DILocation(line: 975, column: 26, scope: !2899, inlinedAt: !2944)
!2950 = !DILocation(line: 144, column: 43, scope: !1362, inlinedAt: !2951)
!2951 = distinct !DILocation(line: 977, column: 3, scope: !2899, inlinedAt: !2944)
!2952 = !DILocation(line: 144, column: 51, scope: !1362, inlinedAt: !2951)
!2953 = !DILocation(line: 144, column: 58, scope: !1362, inlinedAt: !2951)
!2954 = !DILocation(line: 146, column: 17, scope: !1362, inlinedAt: !2951)
!2955 = !DILocation(line: 148, column: 62, scope: !1380, inlinedAt: !2951)
!2956 = !DILocation(line: 148, column: 57, scope: !1380, inlinedAt: !2951)
!2957 = !DILocation(line: 147, column: 17, scope: !1362, inlinedAt: !2951)
!2958 = !DILocation(line: 149, column: 18, scope: !1362, inlinedAt: !2951)
!2959 = !DILocation(line: 149, column: 15, scope: !1362, inlinedAt: !2951)
!2960 = !DILocation(line: 149, column: 7, scope: !1362, inlinedAt: !2951)
!2961 = !DILocation(line: 150, column: 12, scope: !1362, inlinedAt: !2951)
!2962 = !DILocation(line: 150, column: 15, scope: !1362, inlinedAt: !2951)
!2963 = !DILocation(line: 150, column: 25, scope: !1362, inlinedAt: !2951)
!2964 = !DILocation(line: 150, column: 7, scope: !1362, inlinedAt: !2951)
!2965 = !DILocation(line: 151, column: 18, scope: !1362, inlinedAt: !2951)
!2966 = !DILocation(line: 151, column: 23, scope: !1362, inlinedAt: !2951)
!2967 = !DILocation(line: 151, column: 6, scope: !1362, inlinedAt: !2951)
!2968 = !DILocation(line: 978, column: 10, scope: !2899, inlinedAt: !2944)
!2969 = !DILocation(line: 979, column: 1, scope: !2899, inlinedAt: !2944)
!2970 = !DILocation(line: 984, column: 3, scope: !2935)
!2971 = distinct !DISubprogram(name: "quotearg_colon", scope: !136, file: !136, line: 988, type: !2747, isLocal: false, isDefinition: true, scopeLine: 989, flags: DIFlagPrototyped, isOptimized: true, unit: !108, variables: !2972)
!2972 = !{!2973}
!2973 = !DILocalVariable(name: "arg", arg: 1, scope: !2971, file: !136, line: 988, type: !31)
!2974 = !DILocation(line: 988, column: 29, scope: !2971)
!2975 = !DILocation(line: 982, column: 28, scope: !2935, inlinedAt: !2976)
!2976 = distinct !DILocation(line: 990, column: 10, scope: !2971)
!2977 = !DILocation(line: 982, column: 38, scope: !2935, inlinedAt: !2976)
!2978 = !DILocation(line: 973, column: 32, scope: !2899, inlinedAt: !2979)
!2979 = distinct !DILocation(line: 984, column: 10, scope: !2935, inlinedAt: !2976)
!2980 = !DILocation(line: 973, column: 44, scope: !2899, inlinedAt: !2979)
!2981 = !DILocation(line: 973, column: 58, scope: !2899, inlinedAt: !2979)
!2982 = !DILocation(line: 975, column: 3, scope: !2899, inlinedAt: !2979)
!2983 = !DILocation(line: 976, column: 13, scope: !2899, inlinedAt: !2979)
!2984 = !DILocation(line: 975, column: 26, scope: !2899, inlinedAt: !2979)
!2985 = !DILocation(line: 144, column: 43, scope: !1362, inlinedAt: !2986)
!2986 = distinct !DILocation(line: 977, column: 3, scope: !2899, inlinedAt: !2979)
!2987 = !DILocation(line: 144, column: 51, scope: !1362, inlinedAt: !2986)
!2988 = !DILocation(line: 144, column: 58, scope: !1362, inlinedAt: !2986)
!2989 = !DILocation(line: 146, column: 17, scope: !1362, inlinedAt: !2986)
!2990 = !DILocation(line: 148, column: 57, scope: !1380, inlinedAt: !2986)
!2991 = !DILocation(line: 147, column: 17, scope: !1362, inlinedAt: !2986)
!2992 = !DILocation(line: 149, column: 7, scope: !1362, inlinedAt: !2986)
!2993 = !DILocation(line: 150, column: 12, scope: !1362, inlinedAt: !2986)
!2994 = !DILocation(line: 151, column: 6, scope: !1362, inlinedAt: !2986)
!2995 = !DILocation(line: 978, column: 10, scope: !2899, inlinedAt: !2979)
!2996 = !DILocation(line: 979, column: 1, scope: !2899, inlinedAt: !2979)
!2997 = !DILocation(line: 990, column: 3, scope: !2971)
!2998 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !136, file: !136, line: 994, type: !2758, isLocal: false, isDefinition: true, scopeLine: 995, flags: DIFlagPrototyped, isOptimized: true, unit: !108, variables: !2999)
!2999 = !{!3000, !3001}
!3000 = !DILocalVariable(name: "arg", arg: 1, scope: !2998, file: !136, line: 994, type: !31)
!3001 = !DILocalVariable(name: "argsize", arg: 2, scope: !2998, file: !136, line: 994, type: !23)
!3002 = !DILocation(line: 994, column: 33, scope: !2998)
!3003 = !DILocation(line: 994, column: 45, scope: !2998)
!3004 = !DILocation(line: 973, column: 32, scope: !2899, inlinedAt: !3005)
!3005 = distinct !DILocation(line: 996, column: 10, scope: !2998)
!3006 = !DILocation(line: 973, column: 44, scope: !2899, inlinedAt: !3005)
!3007 = !DILocation(line: 973, column: 58, scope: !2899, inlinedAt: !3005)
!3008 = !DILocation(line: 975, column: 3, scope: !2899, inlinedAt: !3005)
!3009 = !DILocation(line: 976, column: 13, scope: !2899, inlinedAt: !3005)
!3010 = !DILocation(line: 975, column: 26, scope: !2899, inlinedAt: !3005)
!3011 = !DILocation(line: 144, column: 43, scope: !1362, inlinedAt: !3012)
!3012 = distinct !DILocation(line: 977, column: 3, scope: !2899, inlinedAt: !3005)
!3013 = !DILocation(line: 144, column: 51, scope: !1362, inlinedAt: !3012)
!3014 = !DILocation(line: 144, column: 58, scope: !1362, inlinedAt: !3012)
!3015 = !DILocation(line: 146, column: 17, scope: !1362, inlinedAt: !3012)
!3016 = !DILocation(line: 148, column: 57, scope: !1380, inlinedAt: !3012)
!3017 = !DILocation(line: 147, column: 17, scope: !1362, inlinedAt: !3012)
!3018 = !DILocation(line: 149, column: 7, scope: !1362, inlinedAt: !3012)
!3019 = !DILocation(line: 150, column: 12, scope: !1362, inlinedAt: !3012)
!3020 = !DILocation(line: 151, column: 6, scope: !1362, inlinedAt: !3012)
!3021 = !DILocation(line: 978, column: 10, scope: !2899, inlinedAt: !3005)
!3022 = !DILocation(line: 979, column: 1, scope: !2899, inlinedAt: !3005)
!3023 = !DILocation(line: 996, column: 3, scope: !2998)
!3024 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !136, file: !136, line: 1000, type: !2772, isLocal: false, isDefinition: true, scopeLine: 1001, flags: DIFlagPrototyped, isOptimized: true, unit: !108, variables: !3025)
!3025 = !{!3026, !3027, !3028, !3029}
!3026 = !DILocalVariable(name: "n", arg: 1, scope: !3024, file: !136, line: 1000, type: !61)
!3027 = !DILocalVariable(name: "s", arg: 2, scope: !3024, file: !136, line: 1000, type: !5)
!3028 = !DILocalVariable(name: "arg", arg: 3, scope: !3024, file: !136, line: 1000, type: !31)
!3029 = !DILocalVariable(name: "options", scope: !3024, file: !136, line: 1002, type: !143)
!3030 = !DILocation(line: 187, column: 26, scope: !2780, inlinedAt: !3031)
!3031 = distinct !DILocation(line: 1003, column: 13, scope: !3024)
!3032 = !DILocation(line: 1000, column: 29, scope: !3024)
!3033 = !DILocation(line: 1000, column: 51, scope: !3024)
!3034 = !DILocation(line: 1000, column: 66, scope: !3024)
!3035 = !DILocation(line: 1002, column: 3, scope: !3024)
!3036 = !DILocation(line: 185, column: 48, scope: !2780, inlinedAt: !3031)
!3037 = !DILocation(line: 187, column: 3, scope: !2780, inlinedAt: !3031)
!3038 = !DILocation(line: 188, column: 13, scope: !2797, inlinedAt: !3031)
!3039 = !DILocation(line: 188, column: 7, scope: !2780, inlinedAt: !3031)
!3040 = !DILocation(line: 189, column: 5, scope: !2797, inlinedAt: !3031)
!3041 = !{!3042}
!3042 = distinct !{!3042, !3043, !"quoting_options_from_style: argument 0"}
!3043 = distinct !{!3043, !"quoting_options_from_style"}
!3044 = !DILocation(line: 191, column: 10, scope: !2780, inlinedAt: !3031)
!3045 = !DILocation(line: 192, column: 1, scope: !2780, inlinedAt: !3031)
!3046 = !DILocation(line: 1003, column: 13, scope: !3024)
!3047 = !DILocation(line: 1002, column: 26, scope: !3024)
!3048 = !DILocation(line: 144, column: 43, scope: !1362, inlinedAt: !3049)
!3049 = distinct !DILocation(line: 1004, column: 3, scope: !3024)
!3050 = !DILocation(line: 144, column: 51, scope: !1362, inlinedAt: !3049)
!3051 = !DILocation(line: 144, column: 58, scope: !1362, inlinedAt: !3049)
!3052 = !DILocation(line: 146, column: 17, scope: !1362, inlinedAt: !3049)
!3053 = !DILocation(line: 148, column: 57, scope: !1380, inlinedAt: !3049)
!3054 = !DILocation(line: 147, column: 17, scope: !1362, inlinedAt: !3049)
!3055 = !DILocation(line: 149, column: 7, scope: !1362, inlinedAt: !3049)
!3056 = !DILocation(line: 150, column: 12, scope: !1362, inlinedAt: !3049)
!3057 = !DILocation(line: 151, column: 6, scope: !1362, inlinedAt: !3049)
!3058 = !DILocation(line: 1005, column: 10, scope: !3024)
!3059 = !DILocation(line: 1006, column: 1, scope: !3024)
!3060 = !DILocation(line: 1005, column: 3, scope: !3024)
!3061 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !136, file: !136, line: 1009, type: !3062, isLocal: false, isDefinition: true, scopeLine: 1011, flags: DIFlagPrototyped, isOptimized: true, unit: !108, variables: !3064)
!3062 = !DISubroutineType(types: !3063)
!3063 = !{!20, !61, !31, !31, !31}
!3064 = !{!3065, !3066, !3067, !3068}
!3065 = !DILocalVariable(name: "n", arg: 1, scope: !3061, file: !136, line: 1009, type: !61)
!3066 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3061, file: !136, line: 1009, type: !31)
!3067 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3061, file: !136, line: 1010, type: !31)
!3068 = !DILocalVariable(name: "arg", arg: 4, scope: !3061, file: !136, line: 1010, type: !31)
!3069 = !DILocation(line: 1009, column: 24, scope: !3061)
!3070 = !DILocation(line: 1009, column: 39, scope: !3061)
!3071 = !DILocation(line: 1010, column: 32, scope: !3061)
!3072 = !DILocation(line: 1010, column: 57, scope: !3061)
!3073 = !DILocalVariable(name: "n", arg: 1, scope: !3074, file: !136, line: 1017, type: !61)
!3074 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !136, file: !136, line: 1017, type: !3075, isLocal: false, isDefinition: true, scopeLine: 1020, flags: DIFlagPrototyped, isOptimized: true, unit: !108, variables: !3077)
!3075 = !DISubroutineType(types: !3076)
!3076 = !{!20, !61, !31, !31, !31, !23}
!3077 = !{!3073, !3078, !3079, !3080, !3081, !3082}
!3078 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3074, file: !136, line: 1017, type: !31)
!3079 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3074, file: !136, line: 1018, type: !31)
!3080 = !DILocalVariable(name: "arg", arg: 4, scope: !3074, file: !136, line: 1019, type: !31)
!3081 = !DILocalVariable(name: "argsize", arg: 5, scope: !3074, file: !136, line: 1019, type: !23)
!3082 = !DILocalVariable(name: "o", scope: !3074, file: !136, line: 1021, type: !143)
!3083 = !DILocation(line: 1017, column: 28, scope: !3074, inlinedAt: !3084)
!3084 = distinct !DILocation(line: 1012, column: 10, scope: !3061)
!3085 = !DILocation(line: 1017, column: 43, scope: !3074, inlinedAt: !3084)
!3086 = !DILocation(line: 1018, column: 36, scope: !3074, inlinedAt: !3084)
!3087 = !DILocation(line: 1019, column: 36, scope: !3074, inlinedAt: !3084)
!3088 = !DILocation(line: 1019, column: 48, scope: !3074, inlinedAt: !3084)
!3089 = !DILocation(line: 1021, column: 3, scope: !3074, inlinedAt: !3084)
!3090 = !DILocation(line: 1021, column: 30, scope: !3074, inlinedAt: !3084)
!3091 = !DILocation(line: 1021, column: 26, scope: !3074, inlinedAt: !3084)
!3092 = !DILocation(line: 171, column: 45, scope: !1412, inlinedAt: !3093)
!3093 = distinct !DILocation(line: 1022, column: 3, scope: !3074, inlinedAt: !3084)
!3094 = !DILocation(line: 172, column: 33, scope: !1412, inlinedAt: !3093)
!3095 = !DILocation(line: 172, column: 57, scope: !1412, inlinedAt: !3093)
!3096 = !DILocation(line: 176, column: 6, scope: !1412, inlinedAt: !3093)
!3097 = !DILocation(line: 176, column: 12, scope: !1412, inlinedAt: !3093)
!3098 = !DILocation(line: 177, column: 8, scope: !1428, inlinedAt: !3093)
!3099 = !DILocation(line: 177, column: 23, scope: !1430, inlinedAt: !3093)
!3100 = !DILocation(line: 177, column: 19, scope: !1428, inlinedAt: !3093)
!3101 = !DILocation(line: 178, column: 5, scope: !1428, inlinedAt: !3093)
!3102 = !DILocation(line: 179, column: 6, scope: !1412, inlinedAt: !3093)
!3103 = !DILocation(line: 179, column: 17, scope: !1412, inlinedAt: !3093)
!3104 = !DILocation(line: 180, column: 6, scope: !1412, inlinedAt: !3093)
!3105 = !DILocation(line: 180, column: 18, scope: !1412, inlinedAt: !3093)
!3106 = !DILocation(line: 1023, column: 10, scope: !3074, inlinedAt: !3084)
!3107 = !DILocation(line: 1024, column: 1, scope: !3074, inlinedAt: !3084)
!3108 = !DILocation(line: 1012, column: 3, scope: !3061)
!3109 = !DILocation(line: 1017, column: 28, scope: !3074)
!3110 = !DILocation(line: 1017, column: 43, scope: !3074)
!3111 = !DILocation(line: 1018, column: 36, scope: !3074)
!3112 = !DILocation(line: 1019, column: 36, scope: !3074)
!3113 = !DILocation(line: 1019, column: 48, scope: !3074)
!3114 = !DILocation(line: 1021, column: 3, scope: !3074)
!3115 = !DILocation(line: 1021, column: 30, scope: !3074)
!3116 = !DILocation(line: 1021, column: 26, scope: !3074)
!3117 = !DILocation(line: 171, column: 45, scope: !1412, inlinedAt: !3118)
!3118 = distinct !DILocation(line: 1022, column: 3, scope: !3074)
!3119 = !DILocation(line: 172, column: 33, scope: !1412, inlinedAt: !3118)
!3120 = !DILocation(line: 172, column: 57, scope: !1412, inlinedAt: !3118)
!3121 = !DILocation(line: 176, column: 6, scope: !1412, inlinedAt: !3118)
!3122 = !DILocation(line: 176, column: 12, scope: !1412, inlinedAt: !3118)
!3123 = !DILocation(line: 177, column: 8, scope: !1428, inlinedAt: !3118)
!3124 = !DILocation(line: 177, column: 23, scope: !1430, inlinedAt: !3118)
!3125 = !DILocation(line: 177, column: 19, scope: !1428, inlinedAt: !3118)
!3126 = !DILocation(line: 178, column: 5, scope: !1428, inlinedAt: !3118)
!3127 = !DILocation(line: 179, column: 6, scope: !1412, inlinedAt: !3118)
!3128 = !DILocation(line: 179, column: 17, scope: !1412, inlinedAt: !3118)
!3129 = !DILocation(line: 180, column: 6, scope: !1412, inlinedAt: !3118)
!3130 = !DILocation(line: 180, column: 18, scope: !1412, inlinedAt: !3118)
!3131 = !DILocation(line: 1023, column: 10, scope: !3074)
!3132 = !DILocation(line: 1024, column: 1, scope: !3074)
!3133 = !DILocation(line: 1023, column: 3, scope: !3074)
!3134 = distinct !DISubprogram(name: "quotearg_custom", scope: !136, file: !136, line: 1027, type: !3135, isLocal: false, isDefinition: true, scopeLine: 1029, flags: DIFlagPrototyped, isOptimized: true, unit: !108, variables: !3137)
!3135 = !DISubroutineType(types: !3136)
!3136 = !{!20, !31, !31, !31}
!3137 = !{!3138, !3139, !3140}
!3138 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3134, file: !136, line: 1027, type: !31)
!3139 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3134, file: !136, line: 1027, type: !31)
!3140 = !DILocalVariable(name: "arg", arg: 3, scope: !3134, file: !136, line: 1028, type: !31)
!3141 = !DILocation(line: 1027, column: 30, scope: !3134)
!3142 = !DILocation(line: 1027, column: 54, scope: !3134)
!3143 = !DILocation(line: 1028, column: 30, scope: !3134)
!3144 = !DILocation(line: 1009, column: 24, scope: !3061, inlinedAt: !3145)
!3145 = distinct !DILocation(line: 1030, column: 10, scope: !3134)
!3146 = !DILocation(line: 1009, column: 39, scope: !3061, inlinedAt: !3145)
!3147 = !DILocation(line: 1010, column: 32, scope: !3061, inlinedAt: !3145)
!3148 = !DILocation(line: 1010, column: 57, scope: !3061, inlinedAt: !3145)
!3149 = !DILocation(line: 1017, column: 28, scope: !3074, inlinedAt: !3150)
!3150 = distinct !DILocation(line: 1012, column: 10, scope: !3061, inlinedAt: !3145)
!3151 = !DILocation(line: 1017, column: 43, scope: !3074, inlinedAt: !3150)
!3152 = !DILocation(line: 1018, column: 36, scope: !3074, inlinedAt: !3150)
!3153 = !DILocation(line: 1019, column: 36, scope: !3074, inlinedAt: !3150)
!3154 = !DILocation(line: 1019, column: 48, scope: !3074, inlinedAt: !3150)
!3155 = !DILocation(line: 1021, column: 3, scope: !3074, inlinedAt: !3150)
!3156 = !DILocation(line: 1021, column: 30, scope: !3074, inlinedAt: !3150)
!3157 = !DILocation(line: 1021, column: 26, scope: !3074, inlinedAt: !3150)
!3158 = !DILocation(line: 171, column: 45, scope: !1412, inlinedAt: !3159)
!3159 = distinct !DILocation(line: 1022, column: 3, scope: !3074, inlinedAt: !3150)
!3160 = !DILocation(line: 172, column: 33, scope: !1412, inlinedAt: !3159)
!3161 = !DILocation(line: 172, column: 57, scope: !1412, inlinedAt: !3159)
!3162 = !DILocation(line: 176, column: 6, scope: !1412, inlinedAt: !3159)
!3163 = !DILocation(line: 176, column: 12, scope: !1412, inlinedAt: !3159)
!3164 = !DILocation(line: 177, column: 8, scope: !1428, inlinedAt: !3159)
!3165 = !DILocation(line: 177, column: 23, scope: !1430, inlinedAt: !3159)
!3166 = !DILocation(line: 177, column: 19, scope: !1428, inlinedAt: !3159)
!3167 = !DILocation(line: 178, column: 5, scope: !1428, inlinedAt: !3159)
!3168 = !DILocation(line: 179, column: 6, scope: !1412, inlinedAt: !3159)
!3169 = !DILocation(line: 179, column: 17, scope: !1412, inlinedAt: !3159)
!3170 = !DILocation(line: 180, column: 6, scope: !1412, inlinedAt: !3159)
!3171 = !DILocation(line: 180, column: 18, scope: !1412, inlinedAt: !3159)
!3172 = !DILocation(line: 1023, column: 10, scope: !3074, inlinedAt: !3150)
!3173 = !DILocation(line: 1024, column: 1, scope: !3074, inlinedAt: !3150)
!3174 = !DILocation(line: 1030, column: 3, scope: !3134)
!3175 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !136, file: !136, line: 1034, type: !3176, isLocal: false, isDefinition: true, scopeLine: 1036, flags: DIFlagPrototyped, isOptimized: true, unit: !108, variables: !3178)
!3176 = !DISubroutineType(types: !3177)
!3177 = !{!20, !31, !31, !31, !23}
!3178 = !{!3179, !3180, !3181, !3182}
!3179 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3175, file: !136, line: 1034, type: !31)
!3180 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3175, file: !136, line: 1034, type: !31)
!3181 = !DILocalVariable(name: "arg", arg: 3, scope: !3175, file: !136, line: 1035, type: !31)
!3182 = !DILocalVariable(name: "argsize", arg: 4, scope: !3175, file: !136, line: 1035, type: !23)
!3183 = !DILocation(line: 1034, column: 34, scope: !3175)
!3184 = !DILocation(line: 1034, column: 58, scope: !3175)
!3185 = !DILocation(line: 1035, column: 34, scope: !3175)
!3186 = !DILocation(line: 1035, column: 46, scope: !3175)
!3187 = !DILocation(line: 1017, column: 28, scope: !3074, inlinedAt: !3188)
!3188 = distinct !DILocation(line: 1037, column: 10, scope: !3175)
!3189 = !DILocation(line: 1017, column: 43, scope: !3074, inlinedAt: !3188)
!3190 = !DILocation(line: 1018, column: 36, scope: !3074, inlinedAt: !3188)
!3191 = !DILocation(line: 1019, column: 36, scope: !3074, inlinedAt: !3188)
!3192 = !DILocation(line: 1019, column: 48, scope: !3074, inlinedAt: !3188)
!3193 = !DILocation(line: 1021, column: 3, scope: !3074, inlinedAt: !3188)
!3194 = !DILocation(line: 1021, column: 30, scope: !3074, inlinedAt: !3188)
!3195 = !DILocation(line: 1021, column: 26, scope: !3074, inlinedAt: !3188)
!3196 = !DILocation(line: 171, column: 45, scope: !1412, inlinedAt: !3197)
!3197 = distinct !DILocation(line: 1022, column: 3, scope: !3074, inlinedAt: !3188)
!3198 = !DILocation(line: 172, column: 33, scope: !1412, inlinedAt: !3197)
!3199 = !DILocation(line: 172, column: 57, scope: !1412, inlinedAt: !3197)
!3200 = !DILocation(line: 176, column: 6, scope: !1412, inlinedAt: !3197)
!3201 = !DILocation(line: 176, column: 12, scope: !1412, inlinedAt: !3197)
!3202 = !DILocation(line: 177, column: 8, scope: !1428, inlinedAt: !3197)
!3203 = !DILocation(line: 177, column: 23, scope: !1430, inlinedAt: !3197)
!3204 = !DILocation(line: 177, column: 19, scope: !1428, inlinedAt: !3197)
!3205 = !DILocation(line: 178, column: 5, scope: !1428, inlinedAt: !3197)
!3206 = !DILocation(line: 179, column: 6, scope: !1412, inlinedAt: !3197)
!3207 = !DILocation(line: 179, column: 17, scope: !1412, inlinedAt: !3197)
!3208 = !DILocation(line: 180, column: 6, scope: !1412, inlinedAt: !3197)
!3209 = !DILocation(line: 180, column: 18, scope: !1412, inlinedAt: !3197)
!3210 = !DILocation(line: 1023, column: 10, scope: !3074, inlinedAt: !3188)
!3211 = !DILocation(line: 1024, column: 1, scope: !3074, inlinedAt: !3188)
!3212 = !DILocation(line: 1037, column: 3, scope: !3175)
!3213 = distinct !DISubprogram(name: "quote_n_mem", scope: !136, file: !136, line: 1052, type: !3214, isLocal: false, isDefinition: true, scopeLine: 1053, flags: DIFlagPrototyped, isOptimized: true, unit: !108, variables: !3216)
!3214 = !DISubroutineType(types: !3215)
!3215 = !{!31, !61, !31, !23}
!3216 = !{!3217, !3218, !3219}
!3217 = !DILocalVariable(name: "n", arg: 1, scope: !3213, file: !136, line: 1052, type: !61)
!3218 = !DILocalVariable(name: "arg", arg: 2, scope: !3213, file: !136, line: 1052, type: !31)
!3219 = !DILocalVariable(name: "argsize", arg: 3, scope: !3213, file: !136, line: 1052, type: !23)
!3220 = !DILocation(line: 1052, column: 18, scope: !3213)
!3221 = !DILocation(line: 1052, column: 33, scope: !3213)
!3222 = !DILocation(line: 1052, column: 45, scope: !3213)
!3223 = !DILocation(line: 1054, column: 10, scope: !3213)
!3224 = !DILocation(line: 1054, column: 3, scope: !3213)
!3225 = distinct !DISubprogram(name: "quote_mem", scope: !136, file: !136, line: 1058, type: !3226, isLocal: false, isDefinition: true, scopeLine: 1059, flags: DIFlagPrototyped, isOptimized: true, unit: !108, variables: !3228)
!3226 = !DISubroutineType(types: !3227)
!3227 = !{!31, !31, !23}
!3228 = !{!3229, !3230}
!3229 = !DILocalVariable(name: "arg", arg: 1, scope: !3225, file: !136, line: 1058, type: !31)
!3230 = !DILocalVariable(name: "argsize", arg: 2, scope: !3225, file: !136, line: 1058, type: !23)
!3231 = !DILocation(line: 1058, column: 24, scope: !3225)
!3232 = !DILocation(line: 1058, column: 36, scope: !3225)
!3233 = !DILocation(line: 1052, column: 18, scope: !3213, inlinedAt: !3234)
!3234 = distinct !DILocation(line: 1060, column: 10, scope: !3225)
!3235 = !DILocation(line: 1052, column: 33, scope: !3213, inlinedAt: !3234)
!3236 = !DILocation(line: 1052, column: 45, scope: !3213, inlinedAt: !3234)
!3237 = !DILocation(line: 1054, column: 10, scope: !3213, inlinedAt: !3234)
!3238 = !DILocation(line: 1060, column: 3, scope: !3225)
!3239 = distinct !DISubprogram(name: "quote_n", scope: !136, file: !136, line: 1064, type: !3240, isLocal: false, isDefinition: true, scopeLine: 1065, flags: DIFlagPrototyped, isOptimized: true, unit: !108, variables: !3242)
!3240 = !DISubroutineType(types: !3241)
!3241 = !{!31, !61, !31}
!3242 = !{!3243, !3244}
!3243 = !DILocalVariable(name: "n", arg: 1, scope: !3239, file: !136, line: 1064, type: !61)
!3244 = !DILocalVariable(name: "arg", arg: 2, scope: !3239, file: !136, line: 1064, type: !31)
!3245 = !DILocation(line: 1064, column: 14, scope: !3239)
!3246 = !DILocation(line: 1064, column: 29, scope: !3239)
!3247 = !DILocation(line: 1052, column: 18, scope: !3213, inlinedAt: !3248)
!3248 = distinct !DILocation(line: 1066, column: 10, scope: !3239)
!3249 = !DILocation(line: 1052, column: 33, scope: !3213, inlinedAt: !3248)
!3250 = !DILocation(line: 1052, column: 45, scope: !3213, inlinedAt: !3248)
!3251 = !DILocation(line: 1054, column: 10, scope: !3213, inlinedAt: !3248)
!3252 = !DILocation(line: 1066, column: 3, scope: !3239)
!3253 = distinct !DISubprogram(name: "quote", scope: !136, file: !136, line: 1070, type: !3254, isLocal: false, isDefinition: true, scopeLine: 1071, flags: DIFlagPrototyped, isOptimized: true, unit: !108, variables: !3256)
!3254 = !DISubroutineType(types: !3255)
!3255 = !{!31, !31}
!3256 = !{!3257}
!3257 = !DILocalVariable(name: "arg", arg: 1, scope: !3253, file: !136, line: 1070, type: !31)
!3258 = !DILocation(line: 1070, column: 20, scope: !3253)
!3259 = !DILocation(line: 1064, column: 14, scope: !3239, inlinedAt: !3260)
!3260 = distinct !DILocation(line: 1072, column: 10, scope: !3253)
!3261 = !DILocation(line: 1064, column: 29, scope: !3239, inlinedAt: !3260)
!3262 = !DILocation(line: 1052, column: 18, scope: !3213, inlinedAt: !3263)
!3263 = distinct !DILocation(line: 1066, column: 10, scope: !3239, inlinedAt: !3260)
!3264 = !DILocation(line: 1052, column: 33, scope: !3213, inlinedAt: !3263)
!3265 = !DILocation(line: 1052, column: 45, scope: !3213, inlinedAt: !3263)
!3266 = !DILocation(line: 1054, column: 10, scope: !3213, inlinedAt: !3263)
!3267 = !DILocation(line: 1072, column: 3, scope: !3253)
!3268 = distinct !DISubprogram(name: "version_etc_arn", scope: !550, file: !550, line: 62, type: !3269, isLocal: false, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: true, unit: !546, variables: !3324)
!3269 = !DISubroutineType(types: !3270)
!3270 = !{null, !3271, !31, !31, !31, !3323, !23}
!3271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3272, size: 64)
!3272 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3273, line: 49, baseType: !3274)
!3273 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3275, line: 241, size: 1728, elements: !3276)
!3275 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3276 = !{!3277, !3278, !3279, !3280, !3281, !3282, !3283, !3284, !3285, !3286, !3287, !3288, !3289, !3297, !3298, !3299, !3300, !3301, !3302, !3304, !3308, !3311, !3313, !3314, !3315, !3316, !3317, !3318, !3319}
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3274, file: !3275, line: 242, baseType: !61, size: 32)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3274, file: !3275, line: 247, baseType: !20, size: 64, offset: 64)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3274, file: !3275, line: 248, baseType: !20, size: 64, offset: 128)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3274, file: !3275, line: 249, baseType: !20, size: 64, offset: 192)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3274, file: !3275, line: 250, baseType: !20, size: 64, offset: 256)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3274, file: !3275, line: 251, baseType: !20, size: 64, offset: 320)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3274, file: !3275, line: 252, baseType: !20, size: 64, offset: 384)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3274, file: !3275, line: 253, baseType: !20, size: 64, offset: 448)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3274, file: !3275, line: 254, baseType: !20, size: 64, offset: 512)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3274, file: !3275, line: 256, baseType: !20, size: 64, offset: 576)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3274, file: !3275, line: 257, baseType: !20, size: 64, offset: 640)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3274, file: !3275, line: 258, baseType: !20, size: 64, offset: 704)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3274, file: !3275, line: 260, baseType: !3290, size: 64, offset: 768)
!3290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3291, size: 64)
!3291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !3275, line: 156, size: 192, elements: !3292)
!3292 = !{!3293, !3294, !3296}
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3291, file: !3275, line: 157, baseType: !3290, size: 64)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3291, file: !3275, line: 158, baseType: !3295, size: 64, offset: 64)
!3295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3274, size: 64)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3291, file: !3275, line: 162, baseType: !61, size: 32, offset: 128)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3274, file: !3275, line: 262, baseType: !3295, size: 64, offset: 832)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3274, file: !3275, line: 264, baseType: !61, size: 32, offset: 896)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3274, file: !3275, line: 268, baseType: !61, size: 32, offset: 928)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3274, file: !3275, line: 270, baseType: !1117, size: 64, offset: 960)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3274, file: !3275, line: 274, baseType: !132, size: 16, offset: 1024)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3274, file: !3275, line: 275, baseType: !3303, size: 8, offset: 1040)
!3303 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3274, file: !3275, line: 276, baseType: !3305, size: 8, offset: 1048)
!3305 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 8, elements: !3306)
!3306 = !{!3307}
!3307 = !DISubrange(count: 1)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3274, file: !3275, line: 280, baseType: !3309, size: 64, offset: 1088)
!3309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3310, size: 64)
!3310 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !3275, line: 150, baseType: null)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3274, file: !3275, line: 289, baseType: !3312, size: 64, offset: 1152)
!3312 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !669, line: 141, baseType: !1118)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3274, file: !3275, line: 297, baseType: !22, size: 64, offset: 1216)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3274, file: !3275, line: 298, baseType: !22, size: 64, offset: 1280)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3274, file: !3275, line: 299, baseType: !22, size: 64, offset: 1344)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3274, file: !3275, line: 300, baseType: !22, size: 64, offset: 1408)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3274, file: !3275, line: 302, baseType: !23, size: 64, offset: 1472)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3274, file: !3275, line: 303, baseType: !61, size: 32, offset: 1536)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3274, file: !3275, line: 305, baseType: !3320, size: 160, offset: 1568)
!3320 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 160, elements: !3321)
!3321 = !{!3322}
!3322 = !DISubrange(count: 20)
!3323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 64)
!3324 = !{!3325, !3326, !3327, !3328, !3329, !3330}
!3325 = !DILocalVariable(name: "stream", arg: 1, scope: !3268, file: !550, line: 62, type: !3271)
!3326 = !DILocalVariable(name: "command_name", arg: 2, scope: !3268, file: !550, line: 63, type: !31)
!3327 = !DILocalVariable(name: "package", arg: 3, scope: !3268, file: !550, line: 63, type: !31)
!3328 = !DILocalVariable(name: "version", arg: 4, scope: !3268, file: !550, line: 64, type: !31)
!3329 = !DILocalVariable(name: "authors", arg: 5, scope: !3268, file: !550, line: 65, type: !3323)
!3330 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3268, file: !550, line: 65, type: !23)
!3331 = !DILocation(line: 62, column: 24, scope: !3268)
!3332 = !DILocation(line: 63, column: 30, scope: !3268)
!3333 = !DILocation(line: 63, column: 56, scope: !3268)
!3334 = !DILocation(line: 64, column: 30, scope: !3268)
!3335 = !DILocation(line: 65, column: 39, scope: !3268)
!3336 = !DILocation(line: 65, column: 55, scope: !3268)
!3337 = !DILocation(line: 67, column: 7, scope: !3338)
!3338 = distinct !DILexicalBlock(scope: !3268, file: !550, line: 67, column: 7)
!3339 = !DILocation(line: 67, column: 7, scope: !3268)
!3340 = !DILocation(line: 68, column: 5, scope: !3338)
!3341 = !DILocation(line: 70, column: 5, scope: !3338)
!3342 = !DILocation(line: 84, column: 3, scope: !3268)
!3343 = !DILocation(line: 84, column: 3, scope: !3344)
!3344 = !DILexicalBlockFile(scope: !3268, file: !550, discriminator: 1)
!3345 = !DILocation(line: 86, column: 3, scope: !3268)
!3346 = !DILocation(line: 86, column: 3, scope: !3344)
!3347 = !DILocation(line: 95, column: 3, scope: !3268)
!3348 = !DILocation(line: 99, column: 7, scope: !3349)
!3349 = distinct !DILexicalBlock(scope: !3268, file: !550, line: 96, column: 5)
!3350 = !DILocation(line: 102, column: 7, scope: !3349)
!3351 = !DILocation(line: 102, column: 7, scope: !3352)
!3352 = !DILexicalBlockFile(scope: !3349, file: !550, discriminator: 1)
!3353 = !DILocation(line: 103, column: 7, scope: !3349)
!3354 = !DILocation(line: 106, column: 7, scope: !3349)
!3355 = !DILocation(line: 106, column: 7, scope: !3352)
!3356 = !DILocation(line: 107, column: 7, scope: !3349)
!3357 = !DILocation(line: 110, column: 7, scope: !3349)
!3358 = !DILocation(line: 110, column: 7, scope: !3352)
!3359 = !DILocation(line: 112, column: 7, scope: !3349)
!3360 = !DILocation(line: 117, column: 7, scope: !3349)
!3361 = !DILocation(line: 117, column: 7, scope: !3352)
!3362 = !DILocation(line: 119, column: 7, scope: !3349)
!3363 = !DILocation(line: 124, column: 7, scope: !3349)
!3364 = !DILocation(line: 124, column: 7, scope: !3352)
!3365 = !DILocation(line: 126, column: 7, scope: !3349)
!3366 = !DILocation(line: 131, column: 7, scope: !3349)
!3367 = !DILocation(line: 131, column: 7, scope: !3352)
!3368 = !DILocation(line: 134, column: 7, scope: !3349)
!3369 = !DILocation(line: 139, column: 7, scope: !3349)
!3370 = !DILocation(line: 139, column: 7, scope: !3352)
!3371 = !DILocation(line: 142, column: 7, scope: !3349)
!3372 = !DILocation(line: 147, column: 7, scope: !3349)
!3373 = !DILocation(line: 147, column: 7, scope: !3352)
!3374 = !DILocation(line: 151, column: 7, scope: !3349)
!3375 = !DILocation(line: 156, column: 7, scope: !3349)
!3376 = !DILocation(line: 156, column: 7, scope: !3352)
!3377 = !DILocation(line: 160, column: 7, scope: !3349)
!3378 = !DILocation(line: 167, column: 7, scope: !3349)
!3379 = !DILocation(line: 167, column: 7, scope: !3352)
!3380 = !DILocation(line: 171, column: 7, scope: !3349)
!3381 = !DILocation(line: 173, column: 1, scope: !3268)
!3382 = distinct !DISubprogram(name: "version_etc_ar", scope: !550, file: !550, line: 180, type: !3383, isLocal: false, isDefinition: true, scopeLine: 183, flags: DIFlagPrototyped, isOptimized: true, unit: !546, variables: !3385)
!3383 = !DISubroutineType(types: !3384)
!3384 = !{null, !3271, !31, !31, !31, !3323}
!3385 = !{!3386, !3387, !3388, !3389, !3390, !3391}
!3386 = !DILocalVariable(name: "stream", arg: 1, scope: !3382, file: !550, line: 180, type: !3271)
!3387 = !DILocalVariable(name: "command_name", arg: 2, scope: !3382, file: !550, line: 181, type: !31)
!3388 = !DILocalVariable(name: "package", arg: 3, scope: !3382, file: !550, line: 181, type: !31)
!3389 = !DILocalVariable(name: "version", arg: 4, scope: !3382, file: !550, line: 182, type: !31)
!3390 = !DILocalVariable(name: "authors", arg: 5, scope: !3382, file: !550, line: 182, type: !3323)
!3391 = !DILocalVariable(name: "n_authors", scope: !3382, file: !550, line: 184, type: !23)
!3392 = !DILocation(line: 180, column: 23, scope: !3382)
!3393 = !DILocation(line: 181, column: 29, scope: !3382)
!3394 = !DILocation(line: 181, column: 55, scope: !3382)
!3395 = !DILocation(line: 182, column: 29, scope: !3382)
!3396 = !DILocation(line: 182, column: 59, scope: !3382)
!3397 = !DILocation(line: 184, column: 10, scope: !3382)
!3398 = !DILocation(line: 186, column: 8, scope: !3399)
!3399 = distinct !DILexicalBlock(scope: !3382, file: !550, line: 186, column: 3)
!3400 = !DILocation(line: 186, column: 23, scope: !3401)
!3401 = !DILexicalBlockFile(scope: !3402, file: !550, discriminator: 1)
!3402 = distinct !DILexicalBlock(scope: !3399, file: !550, line: 186, column: 3)
!3403 = !DILocation(line: 186, column: 3, scope: !3404)
!3404 = !DILexicalBlockFile(scope: !3399, file: !550, discriminator: 1)
!3405 = !DILocation(line: 186, column: 52, scope: !3406)
!3406 = !DILexicalBlockFile(scope: !3402, file: !550, discriminator: 3)
!3407 = distinct !{!3407, !3408, !3409}
!3408 = !DILocation(line: 186, column: 3, scope: !3399)
!3409 = !DILocation(line: 187, column: 5, scope: !3399)
!3410 = !DILocation(line: 188, column: 3, scope: !3382)
!3411 = !DILocation(line: 189, column: 1, scope: !3382)
!3412 = distinct !DISubprogram(name: "version_etc_va", scope: !550, file: !550, line: 196, type: !3413, isLocal: false, isDefinition: true, scopeLine: 199, flags: DIFlagPrototyped, isOptimized: true, unit: !546, variables: !3422)
!3413 = !DISubroutineType(types: !3414)
!3414 = !{null, !3271, !31, !31, !31, !3415}
!3415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3416, size: 64)
!3416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !547, line: 189, size: 192, elements: !3417)
!3417 = !{!3418, !3419, !3420, !3421}
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !3416, file: !547, line: 189, baseType: !149, size: 32)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !3416, file: !547, line: 189, baseType: !149, size: 32, offset: 32)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !3416, file: !547, line: 189, baseType: !22, size: 64, offset: 64)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !3416, file: !547, line: 189, baseType: !22, size: 64, offset: 128)
!3422 = !{!3423, !3424, !3425, !3426, !3427, !3428, !3429}
!3423 = !DILocalVariable(name: "stream", arg: 1, scope: !3412, file: !550, line: 196, type: !3271)
!3424 = !DILocalVariable(name: "command_name", arg: 2, scope: !3412, file: !550, line: 197, type: !31)
!3425 = !DILocalVariable(name: "package", arg: 3, scope: !3412, file: !550, line: 197, type: !31)
!3426 = !DILocalVariable(name: "version", arg: 4, scope: !3412, file: !550, line: 198, type: !31)
!3427 = !DILocalVariable(name: "authors", arg: 5, scope: !3412, file: !550, line: 198, type: !3415)
!3428 = !DILocalVariable(name: "n_authors", scope: !3412, file: !550, line: 200, type: !23)
!3429 = !DILocalVariable(name: "authtab", scope: !3412, file: !550, line: 201, type: !3430)
!3430 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 640, elements: !139)
!3431 = !DILocation(line: 196, column: 23, scope: !3412)
!3432 = !DILocation(line: 197, column: 29, scope: !3412)
!3433 = !DILocation(line: 197, column: 55, scope: !3412)
!3434 = !DILocation(line: 198, column: 29, scope: !3412)
!3435 = !DILocation(line: 198, column: 46, scope: !3412)
!3436 = !DILocation(line: 201, column: 3, scope: !3412)
!3437 = !DILocation(line: 201, column: 15, scope: !3412)
!3438 = !DILocation(line: 200, column: 10, scope: !3412)
!3439 = !DILocation(line: 205, column: 35, scope: !3440)
!3440 = !DILexicalBlockFile(scope: !3441, file: !550, discriminator: 1)
!3441 = distinct !DILexicalBlock(scope: !3442, file: !550, line: 203, column: 3)
!3442 = distinct !DILexicalBlock(scope: !3412, file: !550, line: 203, column: 3)
!3443 = !DILocation(line: 205, column: 35, scope: !3444)
!3444 = !DILexicalBlockFile(scope: !3441, file: !550, discriminator: 2)
!3445 = !DILocation(line: 205, column: 35, scope: !3446)
!3446 = !DILexicalBlockFile(scope: !3441, file: !550, discriminator: 3)
!3447 = !DILocation(line: 205, column: 35, scope: !3448)
!3448 = !DILexicalBlockFile(scope: !3441, file: !550, discriminator: 4)
!3449 = !DILocation(line: 205, column: 14, scope: !3448)
!3450 = !DILocation(line: 205, column: 33, scope: !3448)
!3451 = !DILocation(line: 205, column: 67, scope: !3448)
!3452 = !DILocation(line: 203, column: 3, scope: !3453)
!3453 = !DILexicalBlockFile(scope: !3442, file: !550, discriminator: 1)
!3454 = !DILocation(line: 208, column: 3, scope: !3412)
!3455 = !DILocation(line: 210, column: 1, scope: !3412)
!3456 = distinct !DISubprogram(name: "version_etc", scope: !550, file: !550, line: 227, type: !3457, isLocal: false, isDefinition: true, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: true, unit: !546, variables: !3459)
!3457 = !DISubroutineType(types: !3458)
!3458 = !{null, !3271, !31, !31, !31, null}
!3459 = !{!3460, !3461, !3462, !3463, !3464}
!3460 = !DILocalVariable(name: "stream", arg: 1, scope: !3456, file: !550, line: 227, type: !3271)
!3461 = !DILocalVariable(name: "command_name", arg: 2, scope: !3456, file: !550, line: 228, type: !31)
!3462 = !DILocalVariable(name: "package", arg: 3, scope: !3456, file: !550, line: 228, type: !31)
!3463 = !DILocalVariable(name: "version", arg: 4, scope: !3456, file: !550, line: 229, type: !31)
!3464 = !DILocalVariable(name: "authors", scope: !3456, file: !550, line: 231, type: !3465)
!3465 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !3273, line: 80, baseType: !3466)
!3466 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !3467, line: 50, baseType: !3468)
!3467 = !DIFile(filename: "/usr/bin/../lib/clang/4.0.1/include/stdarg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3468 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !547, line: 231, baseType: !3469)
!3469 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3416, size: 192, elements: !3306)
!3470 = !DILocation(line: 227, column: 20, scope: !3456)
!3471 = !DILocation(line: 228, column: 26, scope: !3456)
!3472 = !DILocation(line: 228, column: 52, scope: !3456)
!3473 = !DILocation(line: 229, column: 26, scope: !3456)
!3474 = !DILocation(line: 231, column: 3, scope: !3456)
!3475 = !DILocation(line: 231, column: 11, scope: !3456)
!3476 = !DILocation(line: 233, column: 3, scope: !3456)
!3477 = !DILocation(line: 234, column: 3, scope: !3456)
!3478 = !DILocation(line: 235, column: 3, scope: !3456)
!3479 = !DILocation(line: 236, column: 1, scope: !3456)
!3480 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !550, file: !550, line: 239, type: !622, isLocal: false, isDefinition: true, scopeLine: 240, flags: DIFlagPrototyped, isOptimized: true, unit: !546, variables: !81)
!3481 = !DILocation(line: 245, column: 3, scope: !3480)
!3482 = !DILocation(line: 245, column: 3, scope: !3483)
!3483 = !DILexicalBlockFile(scope: !3480, file: !550, discriminator: 1)
!3484 = !DILocation(line: 251, column: 3, scope: !3480)
!3485 = !DILocation(line: 251, column: 3, scope: !3483)
!3486 = !DILocation(line: 256, column: 3, scope: !3480)
!3487 = !DILocation(line: 256, column: 3, scope: !3483)
!3488 = !DILocation(line: 258, column: 1, scope: !3480)
!3489 = distinct !DISubprogram(name: "xnmalloc", scope: !558, file: !558, line: 105, type: !974, isLocal: false, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: true, unit: !554, variables: !3490)
!3490 = !{!3491, !3492}
!3491 = !DILocalVariable(name: "n", arg: 1, scope: !3489, file: !558, line: 105, type: !23)
!3492 = !DILocalVariable(name: "s", arg: 2, scope: !3489, file: !558, line: 105, type: !23)
!3493 = !DILocation(line: 105, column: 18, scope: !3489)
!3494 = !DILocation(line: 105, column: 28, scope: !3489)
!3495 = !DILocation(line: 107, column: 7, scope: !3496)
!3496 = distinct !DILexicalBlock(scope: !3489, file: !558, line: 107, column: 7)
!3497 = !DILocation(line: 107, column: 7, scope: !3489)
!3498 = !DILocation(line: 108, column: 5, scope: !3496)
!3499 = !DILocation(line: 109, column: 21, scope: !3489)
!3500 = !DILocalVariable(name: "n", arg: 1, scope: !3501, file: !3502, line: 39, type: !23)
!3501 = distinct !DISubprogram(name: "xmalloc", scope: !3502, file: !3502, line: 39, type: !3503, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !554, variables: !3505)
!3502 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3503 = !DISubroutineType(types: !3504)
!3504 = !{!22, !23}
!3505 = !{!3500, !3506}
!3506 = !DILocalVariable(name: "p", scope: !3501, file: !3502, line: 41, type: !22)
!3507 = !DILocation(line: 39, column: 17, scope: !3501, inlinedAt: !3508)
!3508 = distinct !DILocation(line: 109, column: 10, scope: !3489)
!3509 = !DILocation(line: 41, column: 13, scope: !3501, inlinedAt: !3508)
!3510 = !DILocation(line: 41, column: 9, scope: !3501, inlinedAt: !3508)
!3511 = !DILocation(line: 42, column: 8, scope: !3512, inlinedAt: !3508)
!3512 = distinct !DILexicalBlock(scope: !3501, file: !3502, line: 42, column: 7)
!3513 = !DILocation(line: 42, column: 15, scope: !3514, inlinedAt: !3508)
!3514 = !DILexicalBlockFile(scope: !3512, file: !3502, discriminator: 1)
!3515 = !DILocation(line: 42, column: 10, scope: !3512, inlinedAt: !3508)
!3516 = !DILocation(line: 43, column: 5, scope: !3512, inlinedAt: !3508)
!3517 = !DILocation(line: 109, column: 3, scope: !3489)
!3518 = !DILocation(line: 39, column: 17, scope: !3501)
!3519 = !DILocation(line: 41, column: 13, scope: !3501)
!3520 = !DILocation(line: 41, column: 9, scope: !3501)
!3521 = !DILocation(line: 42, column: 8, scope: !3512)
!3522 = !DILocation(line: 42, column: 15, scope: !3514)
!3523 = !DILocation(line: 42, column: 10, scope: !3512)
!3524 = !DILocation(line: 43, column: 5, scope: !3512)
!3525 = !DILocation(line: 44, column: 3, scope: !3501)
!3526 = distinct !DISubprogram(name: "xnrealloc", scope: !558, file: !558, line: 118, type: !3527, isLocal: false, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !554, variables: !3529)
!3527 = !DISubroutineType(types: !3528)
!3528 = !{!22, !22, !23, !23}
!3529 = !{!3530, !3531, !3532}
!3530 = !DILocalVariable(name: "p", arg: 1, scope: !3526, file: !558, line: 118, type: !22)
!3531 = !DILocalVariable(name: "n", arg: 2, scope: !3526, file: !558, line: 118, type: !23)
!3532 = !DILocalVariable(name: "s", arg: 3, scope: !3526, file: !558, line: 118, type: !23)
!3533 = !DILocation(line: 118, column: 18, scope: !3526)
!3534 = !DILocation(line: 118, column: 28, scope: !3526)
!3535 = !DILocation(line: 118, column: 38, scope: !3526)
!3536 = !DILocation(line: 120, column: 7, scope: !3537)
!3537 = distinct !DILexicalBlock(scope: !3526, file: !558, line: 120, column: 7)
!3538 = !DILocation(line: 120, column: 7, scope: !3526)
!3539 = !DILocation(line: 121, column: 5, scope: !3537)
!3540 = !DILocation(line: 122, column: 25, scope: !3526)
!3541 = !DILocalVariable(name: "p", arg: 1, scope: !3542, file: !3502, line: 51, type: !22)
!3542 = distinct !DISubprogram(name: "xrealloc", scope: !3502, file: !3502, line: 51, type: !3543, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !554, variables: !3545)
!3543 = !DISubroutineType(types: !3544)
!3544 = !{!22, !22, !23}
!3545 = !{!3541, !3546}
!3546 = !DILocalVariable(name: "n", arg: 2, scope: !3542, file: !3502, line: 51, type: !23)
!3547 = !DILocation(line: 51, column: 17, scope: !3542, inlinedAt: !3548)
!3548 = distinct !DILocation(line: 122, column: 10, scope: !3526)
!3549 = !DILocation(line: 51, column: 27, scope: !3542, inlinedAt: !3548)
!3550 = !DILocation(line: 53, column: 8, scope: !3551, inlinedAt: !3548)
!3551 = distinct !DILexicalBlock(scope: !3542, file: !3502, line: 53, column: 7)
!3552 = !DILocation(line: 53, column: 13, scope: !3553, inlinedAt: !3548)
!3553 = !DILexicalBlockFile(scope: !3551, file: !3502, discriminator: 1)
!3554 = !DILocation(line: 53, column: 10, scope: !3551, inlinedAt: !3548)
!3555 = !DILocation(line: 57, column: 7, scope: !3556, inlinedAt: !3548)
!3556 = distinct !DILexicalBlock(scope: !3551, file: !3502, line: 54, column: 5)
!3557 = !DILocation(line: 58, column: 7, scope: !3556, inlinedAt: !3548)
!3558 = !DILocation(line: 61, column: 7, scope: !3542, inlinedAt: !3548)
!3559 = !DILocation(line: 62, column: 8, scope: !3560, inlinedAt: !3548)
!3560 = distinct !DILexicalBlock(scope: !3542, file: !3502, line: 62, column: 7)
!3561 = !DILocation(line: 62, column: 13, scope: !3562, inlinedAt: !3548)
!3562 = !DILexicalBlockFile(scope: !3560, file: !3502, discriminator: 1)
!3563 = !DILocation(line: 62, column: 10, scope: !3560, inlinedAt: !3548)
!3564 = !DILocation(line: 63, column: 5, scope: !3560, inlinedAt: !3548)
!3565 = !DILocation(line: 122, column: 3, scope: !3526)
!3566 = !DILocation(line: 51, column: 17, scope: !3542)
!3567 = !DILocation(line: 51, column: 27, scope: !3542)
!3568 = !DILocation(line: 53, column: 8, scope: !3551)
!3569 = !DILocation(line: 53, column: 13, scope: !3553)
!3570 = !DILocation(line: 53, column: 10, scope: !3551)
!3571 = !DILocation(line: 57, column: 7, scope: !3556)
!3572 = !DILocation(line: 58, column: 7, scope: !3556)
!3573 = !DILocation(line: 61, column: 7, scope: !3542)
!3574 = !DILocation(line: 62, column: 8, scope: !3560)
!3575 = !DILocation(line: 62, column: 13, scope: !3562)
!3576 = !DILocation(line: 62, column: 10, scope: !3560)
!3577 = !DILocation(line: 63, column: 5, scope: !3560)
!3578 = !DILocation(line: 65, column: 1, scope: !3542)
!3579 = !DILocation(line: 180, column: 19, scope: !559)
!3580 = !DILocation(line: 180, column: 30, scope: !559)
!3581 = !DILocation(line: 180, column: 41, scope: !559)
!3582 = !DILocation(line: 182, column: 14, scope: !559)
!3583 = !DILocation(line: 182, column: 10, scope: !559)
!3584 = !DILocation(line: 184, column: 9, scope: !3585)
!3585 = distinct !DILexicalBlock(scope: !559, file: !558, line: 184, column: 7)
!3586 = !DILocation(line: 184, column: 7, scope: !559)
!3587 = !DILocation(line: 186, column: 13, scope: !3588)
!3588 = distinct !DILexicalBlock(scope: !3589, file: !558, line: 186, column: 11)
!3589 = distinct !DILexicalBlock(scope: !3585, file: !558, line: 185, column: 5)
!3590 = !DILocation(line: 186, column: 11, scope: !3589)
!3591 = !DILocation(line: 194, column: 30, scope: !3592)
!3592 = distinct !DILexicalBlock(scope: !3588, file: !558, line: 187, column: 9)
!3593 = !DILocation(line: 195, column: 16, scope: !3592)
!3594 = !DILocation(line: 195, column: 13, scope: !3592)
!3595 = !DILocation(line: 196, column: 9, scope: !3592)
!3596 = !DILocation(line: 204, column: 69, scope: !3597)
!3597 = distinct !DILexicalBlock(scope: !3598, file: !558, line: 204, column: 11)
!3598 = distinct !DILexicalBlock(scope: !3585, file: !558, line: 199, column: 5)
!3599 = !DILocation(line: 205, column: 11, scope: !3597)
!3600 = !DILocation(line: 204, column: 11, scope: !3598)
!3601 = !DILocation(line: 206, column: 9, scope: !3597)
!3602 = !DILocation(line: 210, column: 7, scope: !559)
!3603 = !DILocation(line: 211, column: 25, scope: !559)
!3604 = !DILocation(line: 51, column: 17, scope: !3542, inlinedAt: !3605)
!3605 = distinct !DILocation(line: 211, column: 10, scope: !559)
!3606 = !DILocation(line: 51, column: 27, scope: !3542, inlinedAt: !3605)
!3607 = !DILocation(line: 53, column: 10, scope: !3551, inlinedAt: !3605)
!3608 = !DILocation(line: 207, column: 14, scope: !3598)
!3609 = !DILocation(line: 207, column: 18, scope: !3598)
!3610 = !DILocation(line: 207, column: 9, scope: !3598)
!3611 = !DILocation(line: 53, column: 8, scope: !3551, inlinedAt: !3605)
!3612 = !DILocation(line: 57, column: 7, scope: !3556, inlinedAt: !3605)
!3613 = !DILocation(line: 58, column: 7, scope: !3556, inlinedAt: !3605)
!3614 = !DILocation(line: 61, column: 7, scope: !3542, inlinedAt: !3605)
!3615 = !DILocation(line: 62, column: 8, scope: !3560, inlinedAt: !3605)
!3616 = !DILocation(line: 62, column: 13, scope: !3562, inlinedAt: !3605)
!3617 = !DILocation(line: 62, column: 10, scope: !3560, inlinedAt: !3605)
!3618 = !DILocation(line: 63, column: 5, scope: !3560, inlinedAt: !3605)
!3619 = !DILocation(line: 211, column: 3, scope: !559)
!3620 = distinct !DISubprogram(name: "xcharalloc", scope: !558, file: !558, line: 220, type: !2541, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !554, variables: !3621)
!3621 = !{!3622}
!3622 = !DILocalVariable(name: "n", arg: 1, scope: !3620, file: !558, line: 220, type: !23)
!3623 = !DILocation(line: 220, column: 20, scope: !3620)
!3624 = !DILocation(line: 39, column: 17, scope: !3501, inlinedAt: !3625)
!3625 = distinct !DILocation(line: 222, column: 10, scope: !3620)
!3626 = !DILocation(line: 41, column: 13, scope: !3501, inlinedAt: !3625)
!3627 = !DILocation(line: 41, column: 9, scope: !3501, inlinedAt: !3625)
!3628 = !DILocation(line: 42, column: 8, scope: !3512, inlinedAt: !3625)
!3629 = !DILocation(line: 42, column: 15, scope: !3514, inlinedAt: !3625)
!3630 = !DILocation(line: 42, column: 10, scope: !3512, inlinedAt: !3625)
!3631 = !DILocation(line: 43, column: 5, scope: !3512, inlinedAt: !3625)
!3632 = !DILocation(line: 222, column: 3, scope: !3620)
!3633 = distinct !DISubprogram(name: "x2realloc", scope: !3502, file: !3502, line: 74, type: !3634, isLocal: false, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, unit: !554, variables: !3636)
!3634 = !DISubroutineType(types: !3635)
!3635 = !{!22, !22, !562}
!3636 = !{!3637, !3638}
!3637 = !DILocalVariable(name: "p", arg: 1, scope: !3633, file: !3502, line: 74, type: !22)
!3638 = !DILocalVariable(name: "pn", arg: 2, scope: !3633, file: !3502, line: 74, type: !562)
!3639 = !DILocation(line: 74, column: 18, scope: !3633)
!3640 = !DILocation(line: 74, column: 29, scope: !3633)
!3641 = !DILocation(line: 180, column: 19, scope: !559, inlinedAt: !3642)
!3642 = distinct !DILocation(line: 76, column: 10, scope: !3633)
!3643 = !DILocation(line: 180, column: 30, scope: !559, inlinedAt: !3642)
!3644 = !DILocation(line: 180, column: 41, scope: !559, inlinedAt: !3642)
!3645 = !DILocation(line: 182, column: 14, scope: !559, inlinedAt: !3642)
!3646 = !DILocation(line: 182, column: 10, scope: !559, inlinedAt: !3642)
!3647 = !DILocation(line: 184, column: 9, scope: !3585, inlinedAt: !3642)
!3648 = !DILocation(line: 184, column: 7, scope: !559, inlinedAt: !3642)
!3649 = !DILocation(line: 186, column: 13, scope: !3588, inlinedAt: !3642)
!3650 = !DILocation(line: 186, column: 11, scope: !3589, inlinedAt: !3642)
!3651 = !DILocation(line: 210, column: 7, scope: !559, inlinedAt: !3642)
!3652 = !DILocation(line: 51, column: 17, scope: !3542, inlinedAt: !3653)
!3653 = distinct !DILocation(line: 211, column: 10, scope: !559, inlinedAt: !3642)
!3654 = !DILocation(line: 51, column: 27, scope: !3542, inlinedAt: !3653)
!3655 = !DILocation(line: 53, column: 10, scope: !3551, inlinedAt: !3653)
!3656 = !DILocation(line: 205, column: 11, scope: !3597, inlinedAt: !3642)
!3657 = !DILocation(line: 204, column: 11, scope: !3598, inlinedAt: !3642)
!3658 = !DILocation(line: 206, column: 9, scope: !3597, inlinedAt: !3642)
!3659 = !DILocation(line: 207, column: 14, scope: !3598, inlinedAt: !3642)
!3660 = !DILocation(line: 207, column: 18, scope: !3598, inlinedAt: !3642)
!3661 = !DILocation(line: 207, column: 9, scope: !3598, inlinedAt: !3642)
!3662 = !DILocation(line: 53, column: 8, scope: !3551, inlinedAt: !3653)
!3663 = !DILocation(line: 57, column: 7, scope: !3556, inlinedAt: !3653)
!3664 = !DILocation(line: 58, column: 7, scope: !3556, inlinedAt: !3653)
!3665 = !DILocation(line: 61, column: 7, scope: !3542, inlinedAt: !3653)
!3666 = !DILocation(line: 62, column: 8, scope: !3560, inlinedAt: !3653)
!3667 = !DILocation(line: 62, column: 13, scope: !3562, inlinedAt: !3653)
!3668 = !DILocation(line: 62, column: 10, scope: !3560, inlinedAt: !3653)
!3669 = !DILocation(line: 63, column: 5, scope: !3560, inlinedAt: !3653)
!3670 = !DILocation(line: 76, column: 3, scope: !3633)
!3671 = distinct !DISubprogram(name: "xzalloc", scope: !3502, file: !3502, line: 84, type: !3503, isLocal: false, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: true, unit: !554, variables: !3672)
!3672 = !{!3673}
!3673 = !DILocalVariable(name: "s", arg: 1, scope: !3671, file: !3502, line: 84, type: !23)
!3674 = !DILocation(line: 84, column: 17, scope: !3671)
!3675 = !DILocation(line: 39, column: 17, scope: !3501, inlinedAt: !3676)
!3676 = distinct !DILocation(line: 86, column: 18, scope: !3671)
!3677 = !DILocation(line: 41, column: 13, scope: !3501, inlinedAt: !3676)
!3678 = !DILocation(line: 41, column: 9, scope: !3501, inlinedAt: !3676)
!3679 = !DILocation(line: 42, column: 8, scope: !3512, inlinedAt: !3676)
!3680 = !DILocation(line: 42, column: 15, scope: !3514, inlinedAt: !3676)
!3681 = !DILocation(line: 42, column: 10, scope: !3512, inlinedAt: !3676)
!3682 = !DILocation(line: 43, column: 5, scope: !3512, inlinedAt: !3676)
!3683 = !DILocation(line: 86, column: 10, scope: !3671)
!3684 = !DILocation(line: 86, column: 3, scope: !3671)
!3685 = distinct !DISubprogram(name: "xcalloc", scope: !3502, file: !3502, line: 93, type: !974, isLocal: false, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: true, unit: !554, variables: !3686)
!3686 = !{!3687, !3688, !3689}
!3687 = !DILocalVariable(name: "n", arg: 1, scope: !3685, file: !3502, line: 93, type: !23)
!3688 = !DILocalVariable(name: "s", arg: 2, scope: !3685, file: !3502, line: 93, type: !23)
!3689 = !DILocalVariable(name: "p", scope: !3685, file: !3502, line: 95, type: !22)
!3690 = !DILocation(line: 93, column: 17, scope: !3685)
!3691 = !DILocation(line: 93, column: 27, scope: !3685)
!3692 = !DILocation(line: 100, column: 7, scope: !3693)
!3693 = distinct !DILexicalBlock(scope: !3685, file: !3502, line: 100, column: 7)
!3694 = !DILocation(line: 101, column: 7, scope: !3693)
!3695 = !DILocation(line: 101, column: 18, scope: !3696)
!3696 = !DILexicalBlockFile(scope: !3693, file: !3502, discriminator: 1)
!3697 = !DILocation(line: 95, column: 9, scope: !3685)
!3698 = !DILocation(line: 101, column: 16, scope: !3696)
!3699 = !DILocation(line: 100, column: 7, scope: !3700)
!3700 = !DILexicalBlockFile(scope: !3685, file: !3502, discriminator: 1)
!3701 = !DILocation(line: 102, column: 5, scope: !3693)
!3702 = !DILocation(line: 103, column: 3, scope: !3685)
!3703 = distinct !DISubprogram(name: "xmemdup", scope: !3502, file: !3502, line: 111, type: !3704, isLocal: false, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: true, unit: !554, variables: !3706)
!3704 = !DISubroutineType(types: !3705)
!3705 = !{!22, !26, !23}
!3706 = !{!3707, !3708}
!3707 = !DILocalVariable(name: "p", arg: 1, scope: !3703, file: !3502, line: 111, type: !26)
!3708 = !DILocalVariable(name: "s", arg: 2, scope: !3703, file: !3502, line: 111, type: !23)
!3709 = !DILocation(line: 111, column: 22, scope: !3703)
!3710 = !DILocation(line: 111, column: 32, scope: !3703)
!3711 = !DILocation(line: 39, column: 17, scope: !3501, inlinedAt: !3712)
!3712 = distinct !DILocation(line: 113, column: 18, scope: !3703)
!3713 = !DILocation(line: 41, column: 13, scope: !3501, inlinedAt: !3712)
!3714 = !DILocation(line: 41, column: 9, scope: !3501, inlinedAt: !3712)
!3715 = !DILocation(line: 42, column: 8, scope: !3512, inlinedAt: !3712)
!3716 = !DILocation(line: 42, column: 15, scope: !3514, inlinedAt: !3712)
!3717 = !DILocation(line: 42, column: 10, scope: !3512, inlinedAt: !3712)
!3718 = !DILocation(line: 43, column: 5, scope: !3512, inlinedAt: !3712)
!3719 = !DILocation(line: 113, column: 10, scope: !3703)
!3720 = !DILocation(line: 113, column: 3, scope: !3703)
!3721 = distinct !DISubprogram(name: "xstrdup", scope: !3502, file: !3502, line: 119, type: !2747, isLocal: false, isDefinition: true, scopeLine: 120, flags: DIFlagPrototyped, isOptimized: true, unit: !554, variables: !3722)
!3722 = !{!3723}
!3723 = !DILocalVariable(name: "string", arg: 1, scope: !3721, file: !3502, line: 119, type: !31)
!3724 = !DILocation(line: 119, column: 22, scope: !3721)
!3725 = !DILocation(line: 121, column: 27, scope: !3721)
!3726 = !DILocation(line: 121, column: 43, scope: !3721)
!3727 = !DILocation(line: 111, column: 22, scope: !3703, inlinedAt: !3728)
!3728 = distinct !DILocation(line: 121, column: 10, scope: !3729)
!3729 = !DILexicalBlockFile(scope: !3721, file: !3502, discriminator: 1)
!3730 = !DILocation(line: 111, column: 32, scope: !3703, inlinedAt: !3728)
!3731 = !DILocation(line: 39, column: 17, scope: !3501, inlinedAt: !3732)
!3732 = distinct !DILocation(line: 113, column: 18, scope: !3703, inlinedAt: !3728)
!3733 = !DILocation(line: 41, column: 13, scope: !3501, inlinedAt: !3732)
!3734 = !DILocation(line: 41, column: 9, scope: !3501, inlinedAt: !3732)
!3735 = !DILocation(line: 42, column: 8, scope: !3512, inlinedAt: !3732)
!3736 = !DILocation(line: 42, column: 15, scope: !3514, inlinedAt: !3732)
!3737 = !DILocation(line: 42, column: 10, scope: !3512, inlinedAt: !3732)
!3738 = !DILocation(line: 43, column: 5, scope: !3512, inlinedAt: !3732)
!3739 = !DILocation(line: 113, column: 10, scope: !3703, inlinedAt: !3728)
!3740 = !DILocation(line: 121, column: 3, scope: !3721)
!3741 = distinct !DISubprogram(name: "xalloc_die", scope: !3742, file: !3742, line: 32, type: !622, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !571, variables: !81)
!3742 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3743 = !DILocation(line: 34, column: 10, scope: !3741)
!3744 = !DILocation(line: 34, column: 33, scope: !3741)
!3745 = !DILocation(line: 34, column: 3, scope: !3746)
!3746 = !DILexicalBlockFile(scope: !3741, file: !3742, discriminator: 1)
!3747 = !DILocation(line: 40, column: 3, scope: !3741)
!3748 = distinct !DISubprogram(name: "rpl_calloc", scope: !3749, file: !3749, line: 42, type: !974, isLocal: false, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: true, unit: !573, variables: !3750)
!3749 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3750 = !{!3751, !3752, !3753, !3754}
!3751 = !DILocalVariable(name: "n", arg: 1, scope: !3748, file: !3749, line: 42, type: !23)
!3752 = !DILocalVariable(name: "s", arg: 2, scope: !3748, file: !3749, line: 42, type: !23)
!3753 = !DILocalVariable(name: "result", scope: !3748, file: !3749, line: 44, type: !22)
!3754 = !DILocalVariable(name: "bytes", scope: !3755, file: !3749, line: 56, type: !23)
!3755 = distinct !DILexicalBlock(scope: !3756, file: !3749, line: 53, column: 5)
!3756 = distinct !DILexicalBlock(scope: !3748, file: !3749, line: 47, column: 7)
!3757 = !DILocation(line: 42, column: 20, scope: !3748)
!3758 = !DILocation(line: 42, column: 30, scope: !3748)
!3759 = !DILocation(line: 47, column: 9, scope: !3756)
!3760 = !DILocation(line: 47, column: 19, scope: !3761)
!3761 = !DILexicalBlockFile(scope: !3756, file: !3749, discriminator: 1)
!3762 = !DILocation(line: 47, column: 14, scope: !3756)
!3763 = !DILocation(line: 56, column: 24, scope: !3755)
!3764 = !DILocation(line: 56, column: 14, scope: !3755)
!3765 = !DILocation(line: 57, column: 17, scope: !3766)
!3766 = distinct !DILexicalBlock(scope: !3755, file: !3749, line: 57, column: 11)
!3767 = !DILocation(line: 57, column: 21, scope: !3766)
!3768 = !DILocation(line: 57, column: 11, scope: !3755)
!3769 = !DILocation(line: 59, column: 11, scope: !3770)
!3770 = distinct !DILexicalBlock(scope: !3766, file: !3749, line: 58, column: 9)
!3771 = !DILocation(line: 59, column: 17, scope: !3770)
!3772 = !DILocation(line: 65, column: 12, scope: !3748)
!3773 = !DILocation(line: 44, column: 9, scope: !3748)
!3774 = !DILocation(line: 72, column: 3, scope: !3748)
!3775 = !DILocation(line: 73, column: 1, scope: !3748)
!3776 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !3777, file: !3777, line: 334, type: !3778, isLocal: false, isDefinition: true, scopeLine: 335, flags: DIFlagPrototyped, isOptimized: true, unit: !575, variables: !3792)
!3777 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3778 = !DISubroutineType(types: !3779)
!3779 = !{!23, !3780, !31, !23, !3781}
!3780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1527, size: 64)
!3781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3782, size: 64)
!3782 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1512, line: 107, baseType: !3783)
!3783 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1512, line: 95, baseType: !3784)
!3784 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1512, line: 83, size: 64, elements: !3785)
!3785 = !{!3786, !3787}
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !3784, file: !1512, line: 85, baseType: !61, size: 32)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !3784, file: !1512, line: 94, baseType: !3788, size: 32, offset: 32)
!3788 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3784, file: !1512, line: 86, size: 32, elements: !3789)
!3789 = !{!3790, !3791}
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !3788, file: !1512, line: 89, baseType: !149, size: 32)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !3788, file: !1512, line: 93, baseType: !1522, size: 32)
!3792 = !{!3793, !3794, !3795, !3796, !3797, !3798, !3799}
!3793 = !DILocalVariable(name: "pwc", arg: 1, scope: !3776, file: !3777, line: 334, type: !3780)
!3794 = !DILocalVariable(name: "s", arg: 2, scope: !3776, file: !3777, line: 334, type: !31)
!3795 = !DILocalVariable(name: "n", arg: 3, scope: !3776, file: !3777, line: 334, type: !23)
!3796 = !DILocalVariable(name: "ps", arg: 4, scope: !3776, file: !3777, line: 334, type: !3781)
!3797 = !DILocalVariable(name: "ret", scope: !3776, file: !3777, line: 336, type: !23)
!3798 = !DILocalVariable(name: "wc", scope: !3776, file: !3777, line: 337, type: !1527)
!3799 = !DILocalVariable(name: "uc", scope: !3800, file: !3777, line: 398, type: !30)
!3800 = distinct !DILexicalBlock(scope: !3801, file: !3777, line: 397, column: 5)
!3801 = distinct !DILexicalBlock(scope: !3776, file: !3777, line: 396, column: 7)
!3802 = !DILocation(line: 334, column: 23, scope: !3776)
!3803 = !DILocation(line: 334, column: 40, scope: !3776)
!3804 = !DILocation(line: 334, column: 50, scope: !3776)
!3805 = !DILocation(line: 334, column: 64, scope: !3776)
!3806 = !DILocation(line: 337, column: 3, scope: !3776)
!3807 = !DILocation(line: 353, column: 9, scope: !3808)
!3808 = distinct !DILexicalBlock(scope: !3776, file: !3777, line: 353, column: 7)
!3809 = !DILocation(line: 353, column: 7, scope: !3776)
!3810 = !DILocation(line: 388, column: 9, scope: !3776)
!3811 = !DILocation(line: 336, column: 10, scope: !3776)
!3812 = !DILocation(line: 396, column: 19, scope: !3801)
!3813 = !DILocation(line: 396, column: 31, scope: !3814)
!3814 = !DILexicalBlockFile(scope: !3801, file: !3777, discriminator: 1)
!3815 = !DILocation(line: 396, column: 26, scope: !3801)
!3816 = !DILocation(line: 396, column: 41, scope: !3817)
!3817 = !DILexicalBlockFile(scope: !3801, file: !3777, discriminator: 2)
!3818 = !DILocation(line: 396, column: 7, scope: !3819)
!3819 = !DILexicalBlockFile(scope: !3776, file: !3777, discriminator: 2)
!3820 = !DILocation(line: 398, column: 26, scope: !3800)
!3821 = !DILocation(line: 398, column: 21, scope: !3800)
!3822 = !DILocation(line: 399, column: 14, scope: !3800)
!3823 = !DILocation(line: 399, column: 12, scope: !3800)
!3824 = !DILocation(line: 405, column: 1, scope: !3776)
!3825 = distinct !DISubprogram(name: "close_stream", scope: !3826, file: !3826, line: 56, type: !3827, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !577, variables: !3869)
!3826 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3827 = !DISubroutineType(types: !3828)
!3828 = !{!61, !3829}
!3829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3830, size: 64)
!3830 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3273, line: 49, baseType: !3831)
!3831 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3275, line: 241, size: 1728, elements: !3832)
!3832 = !{!3833, !3834, !3835, !3836, !3837, !3838, !3839, !3840, !3841, !3842, !3843, !3844, !3845, !3853, !3854, !3855, !3856, !3857, !3858, !3859, !3860, !3861, !3862, !3863, !3864, !3865, !3866, !3867, !3868}
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3831, file: !3275, line: 242, baseType: !61, size: 32)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3831, file: !3275, line: 247, baseType: !20, size: 64, offset: 64)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3831, file: !3275, line: 248, baseType: !20, size: 64, offset: 128)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3831, file: !3275, line: 249, baseType: !20, size: 64, offset: 192)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3831, file: !3275, line: 250, baseType: !20, size: 64, offset: 256)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3831, file: !3275, line: 251, baseType: !20, size: 64, offset: 320)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3831, file: !3275, line: 252, baseType: !20, size: 64, offset: 384)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3831, file: !3275, line: 253, baseType: !20, size: 64, offset: 448)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3831, file: !3275, line: 254, baseType: !20, size: 64, offset: 512)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3831, file: !3275, line: 256, baseType: !20, size: 64, offset: 576)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3831, file: !3275, line: 257, baseType: !20, size: 64, offset: 640)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3831, file: !3275, line: 258, baseType: !20, size: 64, offset: 704)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3831, file: !3275, line: 260, baseType: !3846, size: 64, offset: 768)
!3846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3847, size: 64)
!3847 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !3275, line: 156, size: 192, elements: !3848)
!3848 = !{!3849, !3850, !3852}
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3847, file: !3275, line: 157, baseType: !3846, size: 64)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3847, file: !3275, line: 158, baseType: !3851, size: 64, offset: 64)
!3851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3831, size: 64)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3847, file: !3275, line: 162, baseType: !61, size: 32, offset: 128)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3831, file: !3275, line: 262, baseType: !3851, size: 64, offset: 832)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3831, file: !3275, line: 264, baseType: !61, size: 32, offset: 896)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3831, file: !3275, line: 268, baseType: !61, size: 32, offset: 928)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3831, file: !3275, line: 270, baseType: !1117, size: 64, offset: 960)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3831, file: !3275, line: 274, baseType: !132, size: 16, offset: 1024)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3831, file: !3275, line: 275, baseType: !3303, size: 8, offset: 1040)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3831, file: !3275, line: 276, baseType: !3305, size: 8, offset: 1048)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3831, file: !3275, line: 280, baseType: !3309, size: 64, offset: 1088)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3831, file: !3275, line: 289, baseType: !3312, size: 64, offset: 1152)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3831, file: !3275, line: 297, baseType: !22, size: 64, offset: 1216)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3831, file: !3275, line: 298, baseType: !22, size: 64, offset: 1280)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3831, file: !3275, line: 299, baseType: !22, size: 64, offset: 1344)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3831, file: !3275, line: 300, baseType: !22, size: 64, offset: 1408)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3831, file: !3275, line: 302, baseType: !23, size: 64, offset: 1472)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3831, file: !3275, line: 303, baseType: !61, size: 32, offset: 1536)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3831, file: !3275, line: 305, baseType: !3320, size: 160, offset: 1568)
!3869 = !{!3870, !3871, !3873, !3874}
!3870 = !DILocalVariable(name: "stream", arg: 1, scope: !3825, file: !3826, line: 56, type: !3829)
!3871 = !DILocalVariable(name: "some_pending", scope: !3825, file: !3826, line: 58, type: !3872)
!3872 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !91)
!3873 = !DILocalVariable(name: "prev_fail", scope: !3825, file: !3826, line: 59, type: !3872)
!3874 = !DILocalVariable(name: "fclose_fail", scope: !3825, file: !3826, line: 60, type: !3872)
!3875 = !DILocation(line: 56, column: 21, scope: !3825)
!3876 = !DILocation(line: 58, column: 30, scope: !3825)
!3877 = !DILocalVariable(name: "__stream", arg: 1, scope: !3878, file: !3879, line: 132, type: !3829)
!3878 = distinct !DISubprogram(name: "ferror_unlocked", scope: !3879, file: !3879, line: 132, type: !3827, isLocal: false, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !577, variables: !3880)
!3879 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3880 = !{!3877}
!3881 = !DILocation(line: 132, column: 1, scope: !3878, inlinedAt: !3882)
!3882 = distinct !DILocation(line: 59, column: 27, scope: !3825)
!3883 = !DILocation(line: 134, column: 10, scope: !3878, inlinedAt: !3882)
!3884 = !{!3885, !725, i64 0}
!3885 = !{!"_IO_FILE", !725, i64 0, !607, i64 8, !607, i64 16, !607, i64 24, !607, i64 32, !607, i64 40, !607, i64 48, !607, i64 56, !607, i64 64, !607, i64 72, !607, i64 80, !607, i64 88, !607, i64 96, !607, i64 104, !725, i64 112, !725, i64 116, !1158, i64 120, !1879, i64 128, !608, i64 130, !608, i64 131, !607, i64 136, !1158, i64 144, !607, i64 152, !607, i64 160, !607, i64 168, !607, i64 176, !1158, i64 184, !725, i64 192, !608, i64 196}
!3886 = !DILocation(line: 59, column: 43, scope: !3825)
!3887 = !DILocation(line: 60, column: 29, scope: !3825)
!3888 = !DILocation(line: 60, column: 45, scope: !3825)
!3889 = !DILocation(line: 70, column: 17, scope: !3890)
!3890 = distinct !DILexicalBlock(scope: !3825, file: !3826, line: 70, column: 7)
!3891 = !DILocation(line: 70, column: 33, scope: !3892)
!3892 = !DILexicalBlockFile(scope: !3890, file: !3826, discriminator: 1)
!3893 = !DILocation(line: 70, column: 53, scope: !3894)
!3894 = !DILexicalBlockFile(scope: !3890, file: !3826, discriminator: 3)
!3895 = !DILocation(line: 70, column: 7, scope: !3896)
!3896 = !DILexicalBlockFile(scope: !3825, file: !3826, discriminator: 3)
!3897 = !DILocation(line: 72, column: 11, scope: !3898)
!3898 = distinct !DILexicalBlock(scope: !3890, file: !3826, line: 71, column: 5)
!3899 = !DILocation(line: 73, column: 9, scope: !3900)
!3900 = distinct !DILexicalBlock(scope: !3898, file: !3826, line: 72, column: 11)
!3901 = !DILocation(line: 73, column: 15, scope: !3900)
!3902 = !DILocation(line: 78, column: 1, scope: !3825)
!3903 = distinct !DISubprogram(name: "hard_locale", scope: !3904, file: !3904, line: 38, type: !3905, isLocal: false, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, unit: !579, variables: !3907)
!3904 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3905 = !DISubroutineType(types: !3906)
!3906 = !{!91, !61}
!3907 = !{!3908, !3909, !3910, !3911, !3918, !3919, !3921, !3922, !3924, !3925, !3927}
!3908 = !DILocalVariable(name: "category", arg: 1, scope: !3903, file: !3904, line: 38, type: !61)
!3909 = !DILocalVariable(name: "hard", scope: !3903, file: !3904, line: 40, type: !91)
!3910 = !DILocalVariable(name: "p", scope: !3903, file: !3904, line: 41, type: !31)
!3911 = !DILocalVariable(name: "__s1_len", scope: !3912, file: !3904, line: 47, type: !23)
!3912 = distinct !DILexicalBlock(scope: !3913, file: !3904, line: 47, column: 15)
!3913 = distinct !DILexicalBlock(scope: !3914, file: !3904, line: 47, column: 15)
!3914 = distinct !DILexicalBlock(scope: !3915, file: !3904, line: 46, column: 9)
!3915 = distinct !DILexicalBlock(scope: !3916, file: !3904, line: 45, column: 11)
!3916 = distinct !DILexicalBlock(scope: !3917, file: !3904, line: 44, column: 5)
!3917 = distinct !DILexicalBlock(scope: !3903, file: !3904, line: 43, column: 7)
!3918 = !DILocalVariable(name: "__s2_len", scope: !3912, file: !3904, line: 47, type: !23)
!3919 = !DILocalVariable(name: "__s2", scope: !3920, file: !3904, line: 47, type: !28)
!3920 = distinct !DILexicalBlock(scope: !3912, file: !3904, line: 47, column: 15)
!3921 = !DILocalVariable(name: "__result", scope: !3920, file: !3904, line: 47, type: !61)
!3922 = !DILocalVariable(name: "__s1_len", scope: !3923, file: !3904, line: 47, type: !23)
!3923 = distinct !DILexicalBlock(scope: !3913, file: !3904, line: 47, column: 39)
!3924 = !DILocalVariable(name: "__s2_len", scope: !3923, file: !3904, line: 47, type: !23)
!3925 = !DILocalVariable(name: "__s2", scope: !3926, file: !3904, line: 47, type: !28)
!3926 = distinct !DILexicalBlock(scope: !3923, file: !3904, line: 47, column: 39)
!3927 = !DILocalVariable(name: "__result", scope: !3926, file: !3904, line: 47, type: !61)
!3928 = !DILocation(line: 38, column: 18, scope: !3903)
!3929 = !DILocation(line: 40, column: 8, scope: !3903)
!3930 = !DILocation(line: 41, column: 19, scope: !3903)
!3931 = !DILocation(line: 41, column: 15, scope: !3903)
!3932 = !DILocation(line: 43, column: 7, scope: !3917)
!3933 = !DILocation(line: 43, column: 7, scope: !3903)
!3934 = !DILocation(line: 47, column: 15, scope: !3912)
!3935 = !DILocation(line: 47, column: 15, scope: !3920)
!3936 = !DILocation(line: 47, column: 15, scope: !3937)
!3937 = !DILexicalBlockFile(scope: !3920, file: !3904, discriminator: 2)
!3938 = !DILocation(line: 47, column: 15, scope: !3939)
!3939 = !DILexicalBlockFile(scope: !3940, file: !3904, discriminator: 3)
!3940 = distinct !DILexicalBlock(scope: !3920, file: !3904, line: 47, column: 15)
!3941 = !DILocation(line: 47, column: 15, scope: !3942)
!3942 = !DILexicalBlockFile(scope: !3940, file: !3904, discriminator: 2)
!3943 = !DILocation(line: 47, column: 15, scope: !3944)
!3944 = !DILexicalBlockFile(scope: !3945, file: !3904, discriminator: 4)
!3945 = distinct !DILexicalBlock(scope: !3940, file: !3904, line: 47, column: 15)
!3946 = !DILocation(line: 47, column: 15, scope: !3947)
!3947 = !DILexicalBlockFile(scope: !3912, file: !3904, discriminator: 11)
!3948 = !DILocation(line: 47, column: 36, scope: !3949)
!3949 = !DILexicalBlockFile(scope: !3913, file: !3904, discriminator: 13)
!3950 = !DILocation(line: 47, column: 39, scope: !3923)
!3951 = !DILocation(line: 47, column: 39, scope: !3952)
!3952 = !DILexicalBlockFile(scope: !3923, file: !3904, discriminator: 26)
!3953 = !DILocation(line: 47, column: 59, scope: !3954)
!3954 = !DILexicalBlockFile(scope: !3913, file: !3904, discriminator: 27)
!3955 = !DILocation(line: 47, column: 15, scope: !3956)
!3956 = !DILexicalBlockFile(scope: !3914, file: !3904, discriminator: 27)
!3957 = !DILocation(line: 48, column: 13, scope: !3913)
!3958 = !DILocation(line: 71, column: 3, scope: !3903)
!3959 = distinct !DISubprogram(name: "locale_charset", scope: !531, file: !531, line: 393, type: !3960, isLocal: false, isDefinition: true, scopeLine: 394, flags: DIFlagPrototyped, isOptimized: true, unit: !187, variables: !3962)
!3960 = !DISubroutineType(types: !3961)
!3961 = !{!31}
!3962 = !{!3963, !3964, !3965, !3970}
!3963 = !DILocalVariable(name: "codeset", scope: !3959, file: !531, line: 395, type: !31)
!3964 = !DILocalVariable(name: "aliases", scope: !3959, file: !531, line: 396, type: !31)
!3965 = !DILocalVariable(name: "__s1_len", scope: !3966, file: !531, line: 592, type: !23)
!3966 = distinct !DILexicalBlock(scope: !3967, file: !531, line: 592, column: 9)
!3967 = distinct !DILexicalBlock(scope: !3968, file: !531, line: 592, column: 9)
!3968 = distinct !DILexicalBlock(scope: !3969, file: !531, line: 589, column: 3)
!3969 = distinct !DILexicalBlock(scope: !3959, file: !531, line: 589, column: 3)
!3970 = !DILocalVariable(name: "__s2_len", scope: !3966, file: !531, line: 592, type: !23)
!3971 = !DILocalVariable(name: "buf1", scope: !3972, file: !531, line: 196, type: !4039)
!3972 = distinct !DILexicalBlock(scope: !3973, file: !531, line: 194, column: 21)
!3973 = distinct !DILexicalBlock(scope: !3974, file: !531, line: 193, column: 19)
!3974 = distinct !DILexicalBlock(scope: !3975, file: !531, line: 193, column: 19)
!3975 = distinct !DILexicalBlock(scope: !3976, file: !531, line: 188, column: 17)
!3976 = distinct !DILexicalBlock(scope: !3977, file: !531, line: 181, column: 19)
!3977 = distinct !DILexicalBlock(scope: !3978, file: !531, line: 177, column: 13)
!3978 = distinct !DILexicalBlock(scope: !3979, file: !531, line: 173, column: 15)
!3979 = distinct !DILexicalBlock(scope: !3980, file: !531, line: 161, column: 9)
!3980 = distinct !DILexicalBlock(scope: !3981, file: !531, line: 157, column: 11)
!3981 = distinct !DILexicalBlock(scope: !3982, file: !531, line: 130, column: 5)
!3982 = distinct !DILexicalBlock(scope: !3983, file: !531, line: 129, column: 7)
!3983 = distinct !DISubprogram(name: "get_charset_aliases", scope: !531, file: !531, line: 124, type: !3960, isLocal: true, isDefinition: true, scopeLine: 125, flags: DIFlagPrototyped, isOptimized: true, unit: !187, variables: !3984)
!3984 = !{!3985, !3986, !3987, !3988, !3989, !3991, !3992, !3993, !3994, !4035, !4036, !4037, !3971, !4038, !4042, !4043, !4044}
!3985 = !DILocalVariable(name: "cp", scope: !3983, file: !531, line: 126, type: !31)
!3986 = !DILocalVariable(name: "dir", scope: !3981, file: !531, line: 132, type: !31)
!3987 = !DILocalVariable(name: "base", scope: !3981, file: !531, line: 133, type: !31)
!3988 = !DILocalVariable(name: "file_name", scope: !3981, file: !531, line: 134, type: !20)
!3989 = !DILocalVariable(name: "dir_len", scope: !3990, file: !531, line: 144, type: !23)
!3990 = distinct !DILexicalBlock(scope: !3981, file: !531, line: 143, column: 7)
!3991 = !DILocalVariable(name: "base_len", scope: !3990, file: !531, line: 145, type: !23)
!3992 = !DILocalVariable(name: "add_slash", scope: !3990, file: !531, line: 146, type: !61)
!3993 = !DILocalVariable(name: "fd", scope: !3979, file: !531, line: 162, type: !61)
!3994 = !DILocalVariable(name: "fp", scope: !3977, file: !531, line: 178, type: !3995)
!3995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3996, size: 64)
!3996 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3273, line: 49, baseType: !3997)
!3997 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3275, line: 241, size: 1728, elements: !3998)
!3998 = !{!3999, !4000, !4001, !4002, !4003, !4004, !4005, !4006, !4007, !4008, !4009, !4010, !4011, !4019, !4020, !4021, !4022, !4023, !4024, !4025, !4026, !4027, !4028, !4029, !4030, !4031, !4032, !4033, !4034}
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3997, file: !3275, line: 242, baseType: !61, size: 32)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3997, file: !3275, line: 247, baseType: !20, size: 64, offset: 64)
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3997, file: !3275, line: 248, baseType: !20, size: 64, offset: 128)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3997, file: !3275, line: 249, baseType: !20, size: 64, offset: 192)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3997, file: !3275, line: 250, baseType: !20, size: 64, offset: 256)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3997, file: !3275, line: 251, baseType: !20, size: 64, offset: 320)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3997, file: !3275, line: 252, baseType: !20, size: 64, offset: 384)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3997, file: !3275, line: 253, baseType: !20, size: 64, offset: 448)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3997, file: !3275, line: 254, baseType: !20, size: 64, offset: 512)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3997, file: !3275, line: 256, baseType: !20, size: 64, offset: 576)
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3997, file: !3275, line: 257, baseType: !20, size: 64, offset: 640)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3997, file: !3275, line: 258, baseType: !20, size: 64, offset: 704)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3997, file: !3275, line: 260, baseType: !4012, size: 64, offset: 768)
!4012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4013, size: 64)
!4013 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !3275, line: 156, size: 192, elements: !4014)
!4014 = !{!4015, !4016, !4018}
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4013, file: !3275, line: 157, baseType: !4012, size: 64)
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4013, file: !3275, line: 158, baseType: !4017, size: 64, offset: 64)
!4017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3997, size: 64)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4013, file: !3275, line: 162, baseType: !61, size: 32, offset: 128)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3997, file: !3275, line: 262, baseType: !4017, size: 64, offset: 832)
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3997, file: !3275, line: 264, baseType: !61, size: 32, offset: 896)
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3997, file: !3275, line: 268, baseType: !61, size: 32, offset: 928)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3997, file: !3275, line: 270, baseType: !1117, size: 64, offset: 960)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3997, file: !3275, line: 274, baseType: !132, size: 16, offset: 1024)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3997, file: !3275, line: 275, baseType: !3303, size: 8, offset: 1040)
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3997, file: !3275, line: 276, baseType: !3305, size: 8, offset: 1048)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3997, file: !3275, line: 280, baseType: !3309, size: 64, offset: 1088)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3997, file: !3275, line: 289, baseType: !3312, size: 64, offset: 1152)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3997, file: !3275, line: 297, baseType: !22, size: 64, offset: 1216)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3997, file: !3275, line: 298, baseType: !22, size: 64, offset: 1280)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3997, file: !3275, line: 299, baseType: !22, size: 64, offset: 1344)
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3997, file: !3275, line: 300, baseType: !22, size: 64, offset: 1408)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3997, file: !3275, line: 302, baseType: !23, size: 64, offset: 1472)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3997, file: !3275, line: 303, baseType: !61, size: 32, offset: 1536)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3997, file: !3275, line: 305, baseType: !3320, size: 160, offset: 1568)
!4035 = !DILocalVariable(name: "res_ptr", scope: !3975, file: !531, line: 190, type: !20)
!4036 = !DILocalVariable(name: "res_size", scope: !3975, file: !531, line: 191, type: !23)
!4037 = !DILocalVariable(name: "c", scope: !3972, file: !531, line: 195, type: !61)
!4038 = !DILocalVariable(name: "buf2", scope: !3972, file: !531, line: 197, type: !4039)
!4039 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 408, elements: !4040)
!4040 = !{!4041}
!4041 = !DISubrange(count: 51)
!4042 = !DILocalVariable(name: "l1", scope: !3972, file: !531, line: 198, type: !23)
!4043 = !DILocalVariable(name: "l2", scope: !3972, file: !531, line: 198, type: !23)
!4044 = !DILocalVariable(name: "old_res_ptr", scope: !3972, file: !531, line: 199, type: !20)
!4045 = !DILocation(line: 196, column: 28, scope: !3972, inlinedAt: !4046)
!4046 = distinct !DILocation(line: 589, column: 18, scope: !3969)
!4047 = !DILocation(line: 197, column: 28, scope: !3972, inlinedAt: !4046)
!4048 = !DILocation(line: 403, column: 13, scope: !3959)
!4049 = !DILocation(line: 395, column: 15, scope: !3959)
!4050 = !DILocation(line: 584, column: 15, scope: !4051)
!4051 = distinct !DILexicalBlock(scope: !3959, file: !531, line: 584, column: 7)
!4052 = !DILocation(line: 584, column: 7, scope: !3959)
!4053 = !DILocation(line: 128, column: 8, scope: !3983, inlinedAt: !4046)
!4054 = !DILocation(line: 126, column: 15, scope: !3983, inlinedAt: !4046)
!4055 = !DILocation(line: 129, column: 10, scope: !3982, inlinedAt: !4046)
!4056 = !DILocation(line: 129, column: 7, scope: !3983, inlinedAt: !4046)
!4057 = !DILocation(line: 138, column: 13, scope: !3981, inlinedAt: !4046)
!4058 = !DILocation(line: 132, column: 19, scope: !3981, inlinedAt: !4046)
!4059 = !DILocation(line: 139, column: 15, scope: !4060, inlinedAt: !4046)
!4060 = distinct !DILexicalBlock(scope: !3981, file: !531, line: 139, column: 11)
!4061 = !DILocation(line: 139, column: 23, scope: !4060, inlinedAt: !4046)
!4062 = !DILocation(line: 139, column: 26, scope: !4063, inlinedAt: !4046)
!4063 = !DILexicalBlockFile(scope: !4060, file: !531, discriminator: 1)
!4064 = !DILocation(line: 139, column: 33, scope: !4063, inlinedAt: !4046)
!4065 = !DILocation(line: 139, column: 11, scope: !4066, inlinedAt: !4046)
!4066 = !DILexicalBlockFile(scope: !3981, file: !531, discriminator: 1)
!4067 = !DILocation(line: 140, column: 9, scope: !4060, inlinedAt: !4046)
!4068 = !DILocation(line: 144, column: 26, scope: !3990, inlinedAt: !4046)
!4069 = !DILocation(line: 144, column: 16, scope: !3990, inlinedAt: !4046)
!4070 = !DILocation(line: 145, column: 16, scope: !3990, inlinedAt: !4046)
!4071 = !DILocation(line: 146, column: 34, scope: !3990, inlinedAt: !4046)
!4072 = !DILocation(line: 146, column: 38, scope: !3990, inlinedAt: !4046)
!4073 = !DILocation(line: 146, column: 42, scope: !4074, inlinedAt: !4046)
!4074 = !DILexicalBlockFile(scope: !3990, file: !531, discriminator: 1)
!4075 = !DILocation(line: 146, column: 41, scope: !4074, inlinedAt: !4046)
!4076 = !DILocation(line: 147, column: 48, scope: !3990, inlinedAt: !4046)
!4077 = !DILocation(line: 147, column: 46, scope: !3990, inlinedAt: !4046)
!4078 = !DILocation(line: 147, column: 69, scope: !3990, inlinedAt: !4046)
!4079 = !DILocation(line: 147, column: 30, scope: !3990, inlinedAt: !4046)
!4080 = !DILocation(line: 134, column: 13, scope: !3981, inlinedAt: !4046)
!4081 = !DILocation(line: 148, column: 13, scope: !3990, inlinedAt: !4046)
!4082 = !DILocation(line: 150, column: 13, scope: !4083, inlinedAt: !4046)
!4083 = distinct !DILexicalBlock(scope: !4084, file: !531, line: 149, column: 11)
!4084 = distinct !DILexicalBlock(scope: !3990, file: !531, line: 148, column: 13)
!4085 = !DILocation(line: 151, column: 17, scope: !4083, inlinedAt: !4046)
!4086 = !DILocation(line: 152, column: 34, scope: !4087, inlinedAt: !4046)
!4087 = distinct !DILexicalBlock(scope: !4083, file: !531, line: 151, column: 17)
!4088 = !DILocation(line: 153, column: 41, scope: !4083, inlinedAt: !4046)
!4089 = !DILocation(line: 153, column: 13, scope: !4083, inlinedAt: !4046)
!4090 = !DILocation(line: 157, column: 11, scope: !3981, inlinedAt: !4046)
!4091 = !DILocation(line: 171, column: 16, scope: !3979, inlinedAt: !4046)
!4092 = !DILocation(line: 162, column: 15, scope: !3979, inlinedAt: !4046)
!4093 = !DILocation(line: 173, column: 18, scope: !3978, inlinedAt: !4046)
!4094 = !DILocation(line: 173, column: 15, scope: !3979, inlinedAt: !4046)
!4095 = !DILocation(line: 180, column: 20, scope: !3977, inlinedAt: !4046)
!4096 = !DILocation(line: 178, column: 21, scope: !3977, inlinedAt: !4046)
!4097 = !DILocation(line: 181, column: 22, scope: !3976, inlinedAt: !4046)
!4098 = !DILocation(line: 181, column: 19, scope: !3977, inlinedAt: !4046)
!4099 = !DILocation(line: 190, column: 25, scope: !3975, inlinedAt: !4046)
!4100 = !DILocation(line: 184, column: 19, scope: !4101, inlinedAt: !4046)
!4101 = distinct !DILexicalBlock(scope: !3976, file: !531, line: 182, column: 17)
!4102 = !DILocation(line: 186, column: 17, scope: !4101, inlinedAt: !4046)
!4103 = !DILocation(line: 191, column: 26, scope: !3975, inlinedAt: !4046)
!4104 = !DILocation(line: 196, column: 23, scope: !3972, inlinedAt: !4046)
!4105 = !DILocation(line: 197, column: 23, scope: !3972, inlinedAt: !4046)
!4106 = !DILocalVariable(name: "__fp", arg: 1, scope: !4107, file: !3879, line: 63, type: !3995)
!4107 = distinct !DISubprogram(name: "getc_unlocked", scope: !3879, file: !3879, line: 63, type: !4108, isLocal: false, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: true, unit: !187, variables: !4110)
!4108 = !DISubroutineType(types: !4109)
!4109 = !{!61, !3995}
!4110 = !{!4106}
!4111 = !DILocation(line: 63, column: 22, scope: !4107, inlinedAt: !4112)
!4112 = distinct !DILocation(line: 201, column: 27, scope: !3972, inlinedAt: !4046)
!4113 = !DILocation(line: 65, column: 10, scope: !4107, inlinedAt: !4112)
!4114 = !{!3885, !607, i64 8}
!4115 = !{!3885, !607, i64 16}
!4116 = !{!"branch_weights", i32 2000, i32 1}
!4117 = !DILocation(line: 65, column: 10, scope: !4118, inlinedAt: !4112)
!4118 = !DILexicalBlockFile(scope: !4107, file: !3879, discriminator: 1)
!4119 = !DILocation(line: 65, column: 10, scope: !4120, inlinedAt: !4112)
!4120 = !DILexicalBlockFile(scope: !4107, file: !3879, discriminator: 2)
!4121 = !DILocation(line: 65, column: 10, scope: !4122, inlinedAt: !4112)
!4122 = !DILexicalBlockFile(scope: !4107, file: !3879, discriminator: 3)
!4123 = !DILocation(line: 195, column: 27, scope: !3972, inlinedAt: !4046)
!4124 = !DILocation(line: 202, column: 27, scope: !3972, inlinedAt: !4046)
!4125 = !DILocation(line: 63, column: 22, scope: !4107, inlinedAt: !4126)
!4126 = distinct !DILocation(line: 210, column: 33, scope: !4127, inlinedAt: !4046)
!4127 = distinct !DILexicalBlock(scope: !4128, file: !531, line: 207, column: 25)
!4128 = distinct !DILexicalBlock(scope: !3972, file: !531, line: 206, column: 27)
!4129 = !DILocation(line: 65, column: 10, scope: !4107, inlinedAt: !4126)
!4130 = !DILocation(line: 65, column: 10, scope: !4118, inlinedAt: !4126)
!4131 = !DILocation(line: 65, column: 10, scope: !4120, inlinedAt: !4126)
!4132 = !DILocation(line: 65, column: 10, scope: !4122, inlinedAt: !4126)
!4133 = !DILocation(line: 210, column: 29, scope: !4134, inlinedAt: !4046)
!4134 = !DILexicalBlockFile(scope: !4127, file: !531, discriminator: 1)
!4135 = distinct !{!4135, !4136, !4137}
!4136 = !DILocation(line: 193, column: 19, scope: !3974)
!4137 = !DILocation(line: 241, column: 21, scope: !3974)
!4138 = !DILocation(line: 216, column: 23, scope: !3972, inlinedAt: !4046)
!4139 = !DILocation(line: 217, column: 27, scope: !4140, inlinedAt: !4046)
!4140 = distinct !DILexicalBlock(scope: !3972, file: !531, line: 217, column: 27)
!4141 = !DILocation(line: 217, column: 64, scope: !4140, inlinedAt: !4046)
!4142 = !DILocation(line: 217, column: 27, scope: !3972, inlinedAt: !4046)
!4143 = !DILocation(line: 219, column: 28, scope: !3972, inlinedAt: !4046)
!4144 = !DILocation(line: 198, column: 30, scope: !3972, inlinedAt: !4046)
!4145 = !DILocation(line: 220, column: 28, scope: !3972, inlinedAt: !4046)
!4146 = !DILocation(line: 198, column: 34, scope: !3972, inlinedAt: !4046)
!4147 = !DILocation(line: 199, column: 29, scope: !3972, inlinedAt: !4046)
!4148 = !DILocation(line: 222, column: 36, scope: !4149, inlinedAt: !4046)
!4149 = distinct !DILexicalBlock(scope: !3972, file: !531, line: 222, column: 27)
!4150 = !DILocation(line: 222, column: 27, scope: !3972, inlinedAt: !4046)
!4151 = !DILocation(line: 225, column: 63, scope: !4152, inlinedAt: !4046)
!4152 = distinct !DILexicalBlock(scope: !4149, file: !531, line: 223, column: 25)
!4153 = !DILocation(line: 225, column: 46, scope: !4152, inlinedAt: !4046)
!4154 = !DILocation(line: 226, column: 25, scope: !4152, inlinedAt: !4046)
!4155 = !DILocation(line: 229, column: 36, scope: !4156, inlinedAt: !4046)
!4156 = distinct !DILexicalBlock(scope: !4149, file: !531, line: 228, column: 25)
!4157 = !DILocation(line: 230, column: 73, scope: !4156, inlinedAt: !4046)
!4158 = !DILocation(line: 230, column: 46, scope: !4156, inlinedAt: !4046)
!4159 = !DILocation(line: 232, column: 35, scope: !4160, inlinedAt: !4046)
!4160 = distinct !DILexicalBlock(scope: !3972, file: !531, line: 232, column: 27)
!4161 = !DILocation(line: 232, column: 27, scope: !3972, inlinedAt: !4046)
!4162 = !DILocation(line: 236, column: 27, scope: !4163, inlinedAt: !4046)
!4163 = distinct !DILexicalBlock(scope: !4160, file: !531, line: 233, column: 25)
!4164 = !DILocation(line: 237, column: 27, scope: !4163, inlinedAt: !4046)
!4165 = !DILocation(line: 239, column: 39, scope: !3972, inlinedAt: !4046)
!4166 = !DILocation(line: 239, column: 50, scope: !3972, inlinedAt: !4046)
!4167 = !DILocation(line: 239, column: 61, scope: !3972, inlinedAt: !4046)
!4168 = !DILocalVariable(name: "__dest", arg: 1, scope: !4169, file: !4170, line: 107, type: !4173)
!4169 = distinct !DISubprogram(name: "strcpy", scope: !4170, file: !4170, line: 107, type: !4171, isLocal: false, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: true, unit: !187, variables: !4175)
!4170 = !DIFile(filename: "/usr/include/bits/string3.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4171 = !DISubroutineType(types: !4172)
!4172 = !{!20, !4173, !4174}
!4173 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !20)
!4174 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !31)
!4175 = !{!4168, !4176}
!4176 = !DILocalVariable(name: "__src", arg: 2, scope: !4169, file: !4170, line: 107, type: !4174)
!4177 = !DILocation(line: 107, column: 1, scope: !4169, inlinedAt: !4178)
!4178 = distinct !DILocation(line: 239, column: 23, scope: !3972, inlinedAt: !4046)
!4179 = !DILocation(line: 109, column: 49, scope: !4169, inlinedAt: !4178)
!4180 = !DILocation(line: 109, column: 10, scope: !4169, inlinedAt: !4178)
!4181 = !DILocation(line: 107, column: 1, scope: !4169, inlinedAt: !4182)
!4182 = distinct !DILocation(line: 240, column: 23, scope: !3972, inlinedAt: !4046)
!4183 = !DILocation(line: 109, column: 49, scope: !4169, inlinedAt: !4182)
!4184 = !DILocation(line: 109, column: 10, scope: !4169, inlinedAt: !4182)
!4185 = !DILocation(line: 241, column: 21, scope: !3973, inlinedAt: !4046)
!4186 = !DILocation(line: 242, column: 19, scope: !3975, inlinedAt: !4046)
!4187 = !DILocation(line: 243, column: 32, scope: !4188, inlinedAt: !4046)
!4188 = distinct !DILexicalBlock(scope: !3975, file: !531, line: 243, column: 23)
!4189 = !DILocation(line: 243, column: 23, scope: !3975, inlinedAt: !4046)
!4190 = !DILocation(line: 247, column: 33, scope: !4191, inlinedAt: !4046)
!4191 = distinct !DILexicalBlock(scope: !4188, file: !531, line: 246, column: 21)
!4192 = !DILocation(line: 247, column: 45, scope: !4191, inlinedAt: !4046)
!4193 = !DILocation(line: 253, column: 11, scope: !3979, inlinedAt: !4046)
!4194 = !DILocation(line: 377, column: 23, scope: !3981, inlinedAt: !4046)
!4195 = !DILocation(line: 378, column: 5, scope: !3981, inlinedAt: !4046)
!4196 = !DILocation(line: 396, column: 15, scope: !3959)
!4197 = !DILocation(line: 590, column: 8, scope: !3968)
!4198 = !DILocation(line: 590, column: 17, scope: !3968)
!4199 = !DILocation(line: 589, column: 3, scope: !4200)
!4200 = !DILexicalBlockFile(scope: !3969, file: !531, discriminator: 1)
!4201 = !DILocation(line: 592, column: 9, scope: !3966)
!4202 = !DILocation(line: 592, column: 35, scope: !3967)
!4203 = !DILocation(line: 593, column: 9, scope: !3967)
!4204 = !DILocation(line: 593, column: 24, scope: !4205)
!4205 = !DILexicalBlockFile(scope: !3967, file: !531, discriminator: 1)
!4206 = !DILocation(line: 593, column: 31, scope: !4205)
!4207 = !DILocation(line: 593, column: 34, scope: !4208)
!4208 = !DILexicalBlockFile(scope: !3967, file: !531, discriminator: 2)
!4209 = !DILocation(line: 593, column: 45, scope: !4208)
!4210 = !DILocation(line: 592, column: 9, scope: !4211)
!4211 = !DILexicalBlockFile(scope: !3968, file: !531, discriminator: 1)
!4212 = !DILocation(line: 595, column: 29, scope: !4213)
!4213 = distinct !DILexicalBlock(scope: !3967, file: !531, line: 594, column: 7)
!4214 = !DILocation(line: 595, column: 27, scope: !4213)
!4215 = !DILocation(line: 595, column: 46, scope: !4213)
!4216 = !DILocation(line: 596, column: 9, scope: !4213)
!4217 = !DILocation(line: 591, column: 19, scope: !3968)
!4218 = !DILocation(line: 591, column: 36, scope: !3968)
!4219 = !DILocation(line: 591, column: 16, scope: !3968)
!4220 = !DILocation(line: 591, column: 52, scope: !4211)
!4221 = !DILocation(line: 591, column: 69, scope: !3968)
!4222 = !DILocation(line: 591, column: 49, scope: !3968)
!4223 = distinct !{!4223, !4224, !4225}
!4224 = !DILocation(line: 589, column: 3, scope: !3969)
!4225 = !DILocation(line: 597, column: 7, scope: !3969)
!4226 = !DILocation(line: 602, column: 7, scope: !4227)
!4227 = distinct !DILexicalBlock(scope: !3959, file: !531, line: 602, column: 7)
!4228 = !DILocation(line: 602, column: 18, scope: !4227)
!4229 = !DILocation(line: 602, column: 7, scope: !3959)
!4230 = !DILocation(line: 612, column: 3, scope: !3959)
!4231 = distinct !DISubprogram(name: "rpl_fclose", scope: !4232, file: !4232, line: 56, type: !4233, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !582, variables: !4275)
!4232 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4233 = !DISubroutineType(types: !4234)
!4234 = !{!61, !4235}
!4235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4236, size: 64)
!4236 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3273, line: 49, baseType: !4237)
!4237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3275, line: 241, size: 1728, elements: !4238)
!4238 = !{!4239, !4240, !4241, !4242, !4243, !4244, !4245, !4246, !4247, !4248, !4249, !4250, !4251, !4259, !4260, !4261, !4262, !4263, !4264, !4265, !4266, !4267, !4268, !4269, !4270, !4271, !4272, !4273, !4274}
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4237, file: !3275, line: 242, baseType: !61, size: 32)
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4237, file: !3275, line: 247, baseType: !20, size: 64, offset: 64)
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4237, file: !3275, line: 248, baseType: !20, size: 64, offset: 128)
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4237, file: !3275, line: 249, baseType: !20, size: 64, offset: 192)
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4237, file: !3275, line: 250, baseType: !20, size: 64, offset: 256)
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4237, file: !3275, line: 251, baseType: !20, size: 64, offset: 320)
!4245 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4237, file: !3275, line: 252, baseType: !20, size: 64, offset: 384)
!4246 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4237, file: !3275, line: 253, baseType: !20, size: 64, offset: 448)
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4237, file: !3275, line: 254, baseType: !20, size: 64, offset: 512)
!4248 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4237, file: !3275, line: 256, baseType: !20, size: 64, offset: 576)
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4237, file: !3275, line: 257, baseType: !20, size: 64, offset: 640)
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4237, file: !3275, line: 258, baseType: !20, size: 64, offset: 704)
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4237, file: !3275, line: 260, baseType: !4252, size: 64, offset: 768)
!4252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4253, size: 64)
!4253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !3275, line: 156, size: 192, elements: !4254)
!4254 = !{!4255, !4256, !4258}
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4253, file: !3275, line: 157, baseType: !4252, size: 64)
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4253, file: !3275, line: 158, baseType: !4257, size: 64, offset: 64)
!4257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4237, size: 64)
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4253, file: !3275, line: 162, baseType: !61, size: 32, offset: 128)
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4237, file: !3275, line: 262, baseType: !4257, size: 64, offset: 832)
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4237, file: !3275, line: 264, baseType: !61, size: 32, offset: 896)
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4237, file: !3275, line: 268, baseType: !61, size: 32, offset: 928)
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4237, file: !3275, line: 270, baseType: !1117, size: 64, offset: 960)
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4237, file: !3275, line: 274, baseType: !132, size: 16, offset: 1024)
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4237, file: !3275, line: 275, baseType: !3303, size: 8, offset: 1040)
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4237, file: !3275, line: 276, baseType: !3305, size: 8, offset: 1048)
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4237, file: !3275, line: 280, baseType: !3309, size: 64, offset: 1088)
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4237, file: !3275, line: 289, baseType: !3312, size: 64, offset: 1152)
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4237, file: !3275, line: 297, baseType: !22, size: 64, offset: 1216)
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4237, file: !3275, line: 298, baseType: !22, size: 64, offset: 1280)
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4237, file: !3275, line: 299, baseType: !22, size: 64, offset: 1344)
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4237, file: !3275, line: 300, baseType: !22, size: 64, offset: 1408)
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4237, file: !3275, line: 302, baseType: !23, size: 64, offset: 1472)
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4237, file: !3275, line: 303, baseType: !61, size: 32, offset: 1536)
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4237, file: !3275, line: 305, baseType: !3320, size: 160, offset: 1568)
!4275 = !{!4276, !4277, !4278, !4279}
!4276 = !DILocalVariable(name: "fp", arg: 1, scope: !4231, file: !4232, line: 56, type: !4235)
!4277 = !DILocalVariable(name: "saved_errno", scope: !4231, file: !4232, line: 58, type: !61)
!4278 = !DILocalVariable(name: "fd", scope: !4231, file: !4232, line: 59, type: !61)
!4279 = !DILocalVariable(name: "result", scope: !4231, file: !4232, line: 60, type: !61)
!4280 = !DILocation(line: 56, column: 19, scope: !4231)
!4281 = !DILocation(line: 58, column: 7, scope: !4231)
!4282 = !DILocation(line: 60, column: 7, scope: !4231)
!4283 = !DILocation(line: 63, column: 8, scope: !4231)
!4284 = !DILocation(line: 59, column: 7, scope: !4231)
!4285 = !DILocation(line: 64, column: 10, scope: !4286)
!4286 = distinct !DILexicalBlock(scope: !4231, file: !4232, line: 64, column: 7)
!4287 = !DILocation(line: 64, column: 7, scope: !4231)
!4288 = !DILocation(line: 65, column: 12, scope: !4286)
!4289 = !DILocation(line: 65, column: 5, scope: !4286)
!4290 = !DILocation(line: 70, column: 9, scope: !4291)
!4291 = distinct !DILexicalBlock(scope: !4231, file: !4232, line: 70, column: 7)
!4292 = !DILocation(line: 70, column: 23, scope: !4291)
!4293 = !DILocation(line: 70, column: 33, scope: !4294)
!4294 = !DILexicalBlockFile(scope: !4291, file: !4232, discriminator: 1)
!4295 = !DILocation(line: 70, column: 26, scope: !4296)
!4296 = !DILexicalBlockFile(scope: !4291, file: !4232, discriminator: 3)
!4297 = !DILocation(line: 70, column: 59, scope: !4294)
!4298 = !DILocation(line: 71, column: 7, scope: !4291)
!4299 = !DILocation(line: 71, column: 10, scope: !4294)
!4300 = !DILocation(line: 70, column: 7, scope: !4301)
!4301 = !DILexicalBlockFile(scope: !4231, file: !4232, discriminator: 2)
!4302 = !DILocation(line: 98, column: 12, scope: !4231)
!4303 = !DILocation(line: 103, column: 7, scope: !4231)
!4304 = !DILocation(line: 72, column: 19, scope: !4291)
!4305 = !DILocation(line: 103, column: 19, scope: !4306)
!4306 = distinct !DILexicalBlock(scope: !4231, file: !4232, line: 103, column: 7)
!4307 = !DILocation(line: 105, column: 13, scope: !4308)
!4308 = distinct !DILexicalBlock(scope: !4306, file: !4232, line: 104, column: 5)
!4309 = !DILocation(line: 107, column: 5, scope: !4308)
!4310 = !DILocation(line: 110, column: 1, scope: !4231)
!4311 = distinct !DISubprogram(name: "rpl_fflush", scope: !4312, file: !4312, line: 127, type: !4313, isLocal: false, isDefinition: true, scopeLine: 128, flags: DIFlagPrototyped, isOptimized: true, unit: !584, variables: !4355)
!4312 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4313 = !DISubroutineType(types: !4314)
!4314 = !{!61, !4315}
!4315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4316, size: 64)
!4316 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3273, line: 49, baseType: !4317)
!4317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3275, line: 241, size: 1728, elements: !4318)
!4318 = !{!4319, !4320, !4321, !4322, !4323, !4324, !4325, !4326, !4327, !4328, !4329, !4330, !4331, !4339, !4340, !4341, !4342, !4343, !4344, !4345, !4346, !4347, !4348, !4349, !4350, !4351, !4352, !4353, !4354}
!4319 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4317, file: !3275, line: 242, baseType: !61, size: 32)
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4317, file: !3275, line: 247, baseType: !20, size: 64, offset: 64)
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4317, file: !3275, line: 248, baseType: !20, size: 64, offset: 128)
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4317, file: !3275, line: 249, baseType: !20, size: 64, offset: 192)
!4323 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4317, file: !3275, line: 250, baseType: !20, size: 64, offset: 256)
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4317, file: !3275, line: 251, baseType: !20, size: 64, offset: 320)
!4325 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4317, file: !3275, line: 252, baseType: !20, size: 64, offset: 384)
!4326 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4317, file: !3275, line: 253, baseType: !20, size: 64, offset: 448)
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4317, file: !3275, line: 254, baseType: !20, size: 64, offset: 512)
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4317, file: !3275, line: 256, baseType: !20, size: 64, offset: 576)
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4317, file: !3275, line: 257, baseType: !20, size: 64, offset: 640)
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4317, file: !3275, line: 258, baseType: !20, size: 64, offset: 704)
!4331 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4317, file: !3275, line: 260, baseType: !4332, size: 64, offset: 768)
!4332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4333, size: 64)
!4333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !3275, line: 156, size: 192, elements: !4334)
!4334 = !{!4335, !4336, !4338}
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4333, file: !3275, line: 157, baseType: !4332, size: 64)
!4336 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4333, file: !3275, line: 158, baseType: !4337, size: 64, offset: 64)
!4337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4317, size: 64)
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4333, file: !3275, line: 162, baseType: !61, size: 32, offset: 128)
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4317, file: !3275, line: 262, baseType: !4337, size: 64, offset: 832)
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4317, file: !3275, line: 264, baseType: !61, size: 32, offset: 896)
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4317, file: !3275, line: 268, baseType: !61, size: 32, offset: 928)
!4342 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4317, file: !3275, line: 270, baseType: !1117, size: 64, offset: 960)
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4317, file: !3275, line: 274, baseType: !132, size: 16, offset: 1024)
!4344 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4317, file: !3275, line: 275, baseType: !3303, size: 8, offset: 1040)
!4345 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4317, file: !3275, line: 276, baseType: !3305, size: 8, offset: 1048)
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4317, file: !3275, line: 280, baseType: !3309, size: 64, offset: 1088)
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4317, file: !3275, line: 289, baseType: !3312, size: 64, offset: 1152)
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4317, file: !3275, line: 297, baseType: !22, size: 64, offset: 1216)
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4317, file: !3275, line: 298, baseType: !22, size: 64, offset: 1280)
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4317, file: !3275, line: 299, baseType: !22, size: 64, offset: 1344)
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4317, file: !3275, line: 300, baseType: !22, size: 64, offset: 1408)
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4317, file: !3275, line: 302, baseType: !23, size: 64, offset: 1472)
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4317, file: !3275, line: 303, baseType: !61, size: 32, offset: 1536)
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4317, file: !3275, line: 305, baseType: !3320, size: 160, offset: 1568)
!4355 = !{!4356}
!4356 = !DILocalVariable(name: "stream", arg: 1, scope: !4311, file: !4312, line: 127, type: !4315)
!4357 = !DILocation(line: 127, column: 19, scope: !4311)
!4358 = !DILocation(line: 148, column: 14, scope: !4359)
!4359 = distinct !DILexicalBlock(scope: !4311, file: !4312, line: 148, column: 7)
!4360 = !DILocation(line: 148, column: 22, scope: !4359)
!4361 = !DILocation(line: 148, column: 27, scope: !4362)
!4362 = !DILexicalBlockFile(scope: !4359, file: !4312, discriminator: 1)
!4363 = !DILocation(line: 148, column: 7, scope: !4364)
!4364 = !DILexicalBlockFile(scope: !4311, file: !4312, discriminator: 1)
!4365 = !DILocation(line: 149, column: 12, scope: !4359)
!4366 = !DILocation(line: 149, column: 5, scope: !4359)
!4367 = !DILocalVariable(name: "fp", arg: 1, scope: !4368, file: !4312, line: 40, type: !4315)
!4368 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !4312, file: !4312, line: 40, type: !4369, isLocal: true, isDefinition: true, scopeLine: 41, flags: DIFlagPrototyped, isOptimized: true, unit: !584, variables: !4371)
!4369 = !DISubroutineType(types: !4370)
!4370 = !{null, !4315}
!4371 = !{!4367}
!4372 = !DILocation(line: 40, column: 48, scope: !4368, inlinedAt: !4373)
!4373 = distinct !DILocation(line: 153, column: 3, scope: !4311)
!4374 = !DILocation(line: 42, column: 11, scope: !4375, inlinedAt: !4373)
!4375 = distinct !DILexicalBlock(scope: !4368, file: !4312, line: 42, column: 7)
!4376 = !DILocation(line: 42, column: 18, scope: !4375, inlinedAt: !4373)
!4377 = !DILocation(line: 42, column: 7, scope: !4368, inlinedAt: !4373)
!4378 = !DILocation(line: 44, column: 5, scope: !4375, inlinedAt: !4373)
!4379 = !DILocation(line: 155, column: 10, scope: !4311)
!4380 = !DILocation(line: 155, column: 3, scope: !4311)
!4381 = !DILocation(line: 229, column: 1, scope: !4311)
!4382 = distinct !DISubprogram(name: "rpl_fseeko", scope: !4383, file: !4383, line: 28, type: !4384, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !586, variables: !4427)
!4383 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4384 = !DISubroutineType(types: !4385)
!4385 = !{!61, !4386, !4426, !61}
!4386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4387, size: 64)
!4387 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3273, line: 49, baseType: !4388)
!4388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3275, line: 241, size: 1728, elements: !4389)
!4389 = !{!4390, !4391, !4392, !4393, !4394, !4395, !4396, !4397, !4398, !4399, !4400, !4401, !4402, !4410, !4411, !4412, !4413, !4414, !4415, !4416, !4417, !4418, !4419, !4420, !4421, !4422, !4423, !4424, !4425}
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4388, file: !3275, line: 242, baseType: !61, size: 32)
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4388, file: !3275, line: 247, baseType: !20, size: 64, offset: 64)
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4388, file: !3275, line: 248, baseType: !20, size: 64, offset: 128)
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4388, file: !3275, line: 249, baseType: !20, size: 64, offset: 192)
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4388, file: !3275, line: 250, baseType: !20, size: 64, offset: 256)
!4395 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4388, file: !3275, line: 251, baseType: !20, size: 64, offset: 320)
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4388, file: !3275, line: 252, baseType: !20, size: 64, offset: 384)
!4397 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4388, file: !3275, line: 253, baseType: !20, size: 64, offset: 448)
!4398 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4388, file: !3275, line: 254, baseType: !20, size: 64, offset: 512)
!4399 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4388, file: !3275, line: 256, baseType: !20, size: 64, offset: 576)
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4388, file: !3275, line: 257, baseType: !20, size: 64, offset: 640)
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4388, file: !3275, line: 258, baseType: !20, size: 64, offset: 704)
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4388, file: !3275, line: 260, baseType: !4403, size: 64, offset: 768)
!4403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4404, size: 64)
!4404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !3275, line: 156, size: 192, elements: !4405)
!4405 = !{!4406, !4407, !4409}
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4404, file: !3275, line: 157, baseType: !4403, size: 64)
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4404, file: !3275, line: 158, baseType: !4408, size: 64, offset: 64)
!4408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4388, size: 64)
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4404, file: !3275, line: 162, baseType: !61, size: 32, offset: 128)
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4388, file: !3275, line: 262, baseType: !4408, size: 64, offset: 832)
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4388, file: !3275, line: 264, baseType: !61, size: 32, offset: 896)
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4388, file: !3275, line: 268, baseType: !61, size: 32, offset: 928)
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4388, file: !3275, line: 270, baseType: !1117, size: 64, offset: 960)
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4388, file: !3275, line: 274, baseType: !132, size: 16, offset: 1024)
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4388, file: !3275, line: 275, baseType: !3303, size: 8, offset: 1040)
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4388, file: !3275, line: 276, baseType: !3305, size: 8, offset: 1048)
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4388, file: !3275, line: 280, baseType: !3309, size: 64, offset: 1088)
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4388, file: !3275, line: 289, baseType: !3312, size: 64, offset: 1152)
!4419 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4388, file: !3275, line: 297, baseType: !22, size: 64, offset: 1216)
!4420 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4388, file: !3275, line: 298, baseType: !22, size: 64, offset: 1280)
!4421 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4388, file: !3275, line: 299, baseType: !22, size: 64, offset: 1344)
!4422 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4388, file: !3275, line: 300, baseType: !22, size: 64, offset: 1408)
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4388, file: !3275, line: 302, baseType: !23, size: 64, offset: 1472)
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4388, file: !3275, line: 303, baseType: !61, size: 32, offset: 1536)
!4425 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4388, file: !3275, line: 305, baseType: !3320, size: 160, offset: 1568)
!4426 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !3273, line: 91, baseType: !1117)
!4427 = !{!4428, !4429, !4430, !4431}
!4428 = !DILocalVariable(name: "fp", arg: 1, scope: !4382, file: !4383, line: 28, type: !4386)
!4429 = !DILocalVariable(name: "offset", arg: 2, scope: !4382, file: !4383, line: 28, type: !4426)
!4430 = !DILocalVariable(name: "whence", arg: 3, scope: !4382, file: !4383, line: 28, type: !61)
!4431 = !DILocalVariable(name: "pos", scope: !4432, file: !4383, line: 116, type: !4426)
!4432 = distinct !DILexicalBlock(scope: !4433, file: !4383, line: 112, column: 5)
!4433 = distinct !DILexicalBlock(scope: !4382, file: !4383, line: 51, column: 7)
!4434 = !DILocation(line: 28, column: 15, scope: !4382)
!4435 = !DILocation(line: 28, column: 25, scope: !4382)
!4436 = !DILocation(line: 28, column: 37, scope: !4382)
!4437 = !DILocation(line: 51, column: 11, scope: !4433)
!4438 = !DILocation(line: 51, column: 31, scope: !4433)
!4439 = !DILocation(line: 51, column: 24, scope: !4433)
!4440 = !DILocation(line: 52, column: 7, scope: !4433)
!4441 = !DILocation(line: 52, column: 14, scope: !4442)
!4442 = !DILexicalBlockFile(scope: !4433, file: !4383, discriminator: 1)
!4443 = !{!3885, !607, i64 40}
!4444 = !DILocation(line: 52, column: 35, scope: !4442)
!4445 = !{!3885, !607, i64 32}
!4446 = !DILocation(line: 52, column: 28, scope: !4442)
!4447 = !DILocation(line: 53, column: 7, scope: !4433)
!4448 = !DILocation(line: 53, column: 14, scope: !4442)
!4449 = !{!3885, !607, i64 72}
!4450 = !DILocation(line: 53, column: 28, scope: !4442)
!4451 = !DILocation(line: 51, column: 7, scope: !4452)
!4452 = !DILexicalBlockFile(scope: !4382, file: !4383, discriminator: 1)
!4453 = !DILocation(line: 116, column: 26, scope: !4432)
!4454 = !DILocation(line: 116, column: 19, scope: !4455)
!4455 = !DILexicalBlockFile(scope: !4432, file: !4383, discriminator: 1)
!4456 = !DILocation(line: 116, column: 13, scope: !4432)
!4457 = !DILocation(line: 117, column: 15, scope: !4458)
!4458 = distinct !DILexicalBlock(scope: !4432, file: !4383, line: 117, column: 11)
!4459 = !DILocation(line: 117, column: 11, scope: !4432)
!4460 = !DILocation(line: 127, column: 11, scope: !4432)
!4461 = !DILocation(line: 127, column: 18, scope: !4432)
!4462 = !DILocation(line: 128, column: 11, scope: !4432)
!4463 = !DILocation(line: 128, column: 19, scope: !4432)
!4464 = !{!3885, !1158, i64 144}
!4465 = !DILocation(line: 159, column: 7, scope: !4432)
!4466 = !DILocation(line: 161, column: 10, scope: !4382)
!4467 = !DILocation(line: 161, column: 3, scope: !4382)
!4468 = !DILocation(line: 162, column: 1, scope: !4382)
