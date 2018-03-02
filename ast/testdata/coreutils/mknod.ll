; ModuleID = 'coreutils-8.27/src/mknod.bc'
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
@.str.1 = private unnamed_addr constant [47 x i8] c"Usage: %s [OPTION]... NAME TYPE [MAJOR MINOR]\0A\00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"Create the special file NAME of the given TYPE.\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.33 = private unnamed_addr constant [75 x i8] c"\0AMandatory arguments to long options are mandatory for short options too.\0A\00", align 1
@.str.3 = private unnamed_addr constant [73 x i8] c"  -m, --mode=MODE    set file permission bits to MODE, not a=rw - umask\0A\00", align 1
@.str.4 = private unnamed_addr constant [207 x i8] c"  -Z                   set the SELinux security context to default type\0A      --context[=CTX]  like -Z, or if CTX is specified then set the SELinux\0A                         or SMACK security context to CTX\0A\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.6 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.7 = private unnamed_addr constant [261 x i8] c"\0ABoth MAJOR and MINOR must be specified when TYPE is b, c, or u, and they\0Amust be omitted when TYPE is p.  If MAJOR or MINOR begins with 0x or 0X,\0Ait is interpreted as hexadecimal; otherwise, if it begins with 0, as octal;\0Aotherwise, as decimal.  TYPE may be:\0A\00", align 1
@.str.8 = private unnamed_addr constant [127 x i8] c"\0A  b      create a block (buffered) special file\0A  c, u   create a character (unbuffered) special file\0A  p      create a FIFO\0A\00", align 1
@.str.9 = private unnamed_addr constant [191 x i8] c"\0ANOTE: your shell may have its own version of %s, which usually supersedes\0Athe version described here.  Please refer to your shell's documentation\0Afor details about the options it supports.\0A\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"mknod\00", align 1
@.str.42 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.16 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.43 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.44 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.45 = private unnamed_addr constant [69 x i8] c"Report %s translation bugs to <http://translationproject.org/team/>\0A\00", align 1
@.str.46 = private unnamed_addr constant [31 x i8] c"Full documentation at: <%s%s>\0A\00", align 1
@.str.47 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.48 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.11 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.13 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"m:Z\00", align 1
@longopts = internal constant [5 x %struct.option] [%struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.49, i32 0, i32 0), i32 2, i32* null, i32 90 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.50, i32 0, i32 0), i32 1, i32* null, i32 109 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.51, i32 0, i32 0), i32 0, i32* null, i32 -130 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.52, i32 0, i32 0), i32 0, i32* null, i32 -131 }, %struct.option zeroinitializer], align 16, !dbg !0
@optarg = external local_unnamed_addr global i8*, align 8
@.str.15 = private unnamed_addr constant [73 x i8] c"warning: ignoring --context; it requires an SELinux/SMACK-enabled kernel\00", align 1
@.str.17 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1
@.str.18 = private unnamed_addr constant [13 x i8] c"invalid mode\00", align 1
@.str.19 = private unnamed_addr constant [44 x i8] c"mode must specify only file permission bits\00", align 1
@optind = external local_unnamed_addr global i32, align 4
@.str.20 = private unnamed_addr constant [16 x i8] c"missing operand\00", align 1
@.str.21 = private unnamed_addr constant [25 x i8] c"missing operand after %s\00", align 1
@.str.23 = private unnamed_addr constant [54 x i8] c"Special files require major and minor device numbers.\00", align 1
@.str.22 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.24 = private unnamed_addr constant [17 x i8] c"extra operand %s\00", align 1
@.str.25 = private unnamed_addr constant [50 x i8] c"Fifos do not have major and minor device numbers.\00", align 1
@.str.27 = private unnamed_addr constant [31 x i8] c"invalid major device number %s\00", align 1
@.str.28 = private unnamed_addr constant [31 x i8] c"invalid minor device number %s\00", align 1
@.str.29 = private unnamed_addr constant [21 x i8] c"invalid device %s %s\00", align 1
@.str.30 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.31 = private unnamed_addr constant [23 x i8] c"invalid device type %s\00", align 1
@.str.32 = private unnamed_addr constant [29 x i8] c"cannot set permissions of %s\00", align 1
@.str.49 = private unnamed_addr constant [8 x i8] c"context\00", align 1
@.str.50 = private unnamed_addr constant [5 x i8] c"mode\00", align 1
@.str.51 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.52 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@Version = local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i64 0, i64 0), align 8, !dbg !90
@.str.26 = private unnamed_addr constant [5 x i8] c"8.27\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !96
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !101
@.str.34 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.35 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.36 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = global i32 1, align 4, !dbg !105
@program_name = local_unnamed_addr global i8* null, align 8, !dbg !112
@.str.53 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.54 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.55 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.56, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.57, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.58, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.59, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.60, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.61, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.62, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.63, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.64, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.65, i32 0, i32 0), i8* null], align 16, !dbg !119
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
@quoting_style_vals = local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !147
@quote_quoting_options = global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !154
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !166
@.str.11.66 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.67 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.68 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.69 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.70 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.71 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.72 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !173
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !180
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !168
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !182
@.str.81 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.82 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.83 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.3.84 = private unnamed_addr constant [203 x i8] c"\0ALicense GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\0A\00", align 1
@.str.4.85 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.5.86 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.6.87 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.7.88 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.8.89 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.9.90 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.10.91 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.11.92 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.12.93 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.13.94 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@.str.14.97 = private unnamed_addr constant [21 x i8] c"\0AReport bugs to: %s\0A\00", align 1
@.str.15.98 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.16.99 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.17.100 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.18.101 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.19.102 = private unnamed_addr constant [64 x i8] c"General help using GNU software: <http://www.gnu.org/gethelp/>\0A\00", align 1
@version_etc_copyright = constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !188
@.str.1.113 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.114 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.117 = private unnamed_addr constant [38 x i8] c"0 <= strtol_base && strtol_base <= 36\00", align 1
@.str.1.118 = private unnamed_addr constant [16 x i8] c"./lib/xstrtol.c\00", align 1
@__PRETTY_FUNCTION__.xstrtoumax = private unnamed_addr constant [79 x i8] c"strtol_error xstrtoumax(const char *, char **, int, uintmax_t *, const char *)\00", align 1
@.str.1.127 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.130 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@charset_aliases = internal global i8* null, align 8, !dbg !197
@.str.3.131 = private unnamed_addr constant [16 x i8] c"CHARSETALIASDIR\00", align 1
@.str.4.132 = private unnamed_addr constant [15 x i8] c"/usr/local/lib\00", align 1
@.str.2.133 = private unnamed_addr constant [14 x i8] c"charset.alias\00", align 1
@.str.5.134 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.6.135 = private unnamed_addr constant [10 x i8] c"%50s %50s\00", align 1
@.str.1.136 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @usage(i32) local_unnamed_addr #0 !dbg !609 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !613, metadata !614), !dbg !615
  %2 = icmp eq i32 %0, 0, !dbg !616
  br i1 %2, label %8, label %3, !dbg !618

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !619, !tbaa !622
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #10, !dbg !619
  %6 = load i8*, i8** @program_name, align 8, !dbg !619, !tbaa !622
  %7 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %4, i32 1, i8* %5, i8* %6) #10, !dbg !626
  br label %53, !dbg !628

; <label>:8:                                      ; preds = %1
  %9 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 5) #10, !dbg !630
  %10 = load i8*, i8** @program_name, align 8, !dbg !630, !tbaa !622
  %11 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %9, i8* %10) #10, !dbg !632
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i32 5) #10, !dbg !634
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !634, !tbaa !622
  %14 = tail call i32 @fputs_unlocked(i8* %12, %struct._IO_FILE* %13) #10, !dbg !635
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.33, i64 0, i64 0), i32 5) #10, !dbg !636
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !636, !tbaa !622
  %17 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %16) #10, !dbg !641
  %18 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.3, i64 0, i64 0), i32 5) #10, !dbg !643
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !643, !tbaa !622
  %20 = tail call i32 @fputs_unlocked(i8* %18, %struct._IO_FILE* %19) #10, !dbg !644
  %21 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([207 x i8], [207 x i8]* @.str.4, i64 0, i64 0), i32 5) #10, !dbg !645
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !645, !tbaa !622
  %23 = tail call i32 @fputs_unlocked(i8* %21, %struct._IO_FILE* %22) #10, !dbg !646
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0), i32 5) #10, !dbg !647
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !647, !tbaa !622
  %26 = tail call i32 @fputs_unlocked(i8* %24, %struct._IO_FILE* %25) #10, !dbg !648
  %27 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.6, i64 0, i64 0), i32 5) #10, !dbg !649
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !649, !tbaa !622
  %29 = tail call i32 @fputs_unlocked(i8* %27, %struct._IO_FILE* %28) #10, !dbg !650
  %30 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([261 x i8], [261 x i8]* @.str.7, i64 0, i64 0), i32 5) #10, !dbg !651
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !651, !tbaa !622
  %32 = tail call i32 @fputs_unlocked(i8* %30, %struct._IO_FILE* %31) #10, !dbg !652
  %33 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([127 x i8], [127 x i8]* @.str.8, i64 0, i64 0), i32 5) #10, !dbg !653
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !653, !tbaa !622
  %35 = tail call i32 @fputs_unlocked(i8* %33, %struct._IO_FILE* %34) #10, !dbg !654
  %36 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([191 x i8], [191 x i8]* @.str.9, i64 0, i64 0), i32 5) #10, !dbg !655
  %37 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %36, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0)) #10, !dbg !656
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !55, metadata !614) #10, !dbg !657
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i64 0, metadata !55, metadata !614) #10, !dbg !657
  %38 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.42, i64 0, i64 0), i32 5) #10, !dbg !659
  %39 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %38, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.43, i64 0, i64 0)) #10, !dbg !660
  %40 = tail call i8* @setlocale(i32 5, i8* null) #10, !dbg !662
  tail call void @llvm.dbg.value(metadata i8* %40, i64 0, metadata !66, metadata !614) #10, !dbg !663
  %41 = icmp eq i8* %40, null, !dbg !664
  br i1 %41, label %48, label %42, !dbg !665

; <label>:42:                                     ; preds = %8
  %43 = tail call i32 @strncmp(i8* nonnull %40, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.44, i64 0, i64 0), i64 3) #13, !dbg !666
  %44 = icmp eq i32 %43, 0, !dbg !666
  br i1 %44, label %48, label %45, !dbg !668

; <label>:45:                                     ; preds = %42
  %46 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.45, i64 0, i64 0), i32 5) #10, !dbg !670
  %47 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %46, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0)) #10, !dbg !672
  br label %48, !dbg !674

; <label>:48:                                     ; preds = %8, %42, %45
  %49 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.46, i64 0, i64 0), i32 5) #10, !dbg !675
  %50 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %49, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.43, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0)) #10, !dbg !676
  %51 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.47, i64 0, i64 0), i32 5) #10, !dbg !677
  %52 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %51, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.48, i64 0, i64 0)) #10, !dbg !678
  br label %53

; <label>:53:                                     ; preds = %48, %3
  tail call void @exit(i32 %0) #14, !dbg !679
  unreachable, !dbg !679
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
define i32 @main(i32, i8**) local_unnamed_addr #6 !dbg !680 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !685, metadata !614), !dbg !716
  tail call void @llvm.dbg.value(metadata i8** %1, i64 0, metadata !686, metadata !614), !dbg !717
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !690, metadata !614), !dbg !718
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !694, metadata !614), !dbg !719
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !695, metadata !614), !dbg !720
  %6 = load i8*, i8** %1, align 8, !dbg !721, !tbaa !622
  tail call void @set_program_name(i8* %6) #10, !dbg !722
  %7 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0)) #10, !dbg !723
  %8 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.13, i64 0, i64 0)) #10, !dbg !724
  %9 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0)) #10, !dbg !725
  %10 = tail call i32 @atexit(void ()* nonnull @close_stdout) #10, !dbg !726
  br label %11, !dbg !727

; <label>:11:                                     ; preds = %15, %2
  %12 = phi i8* [ %16, %15 ], [ null, %2 ]
  br label %13, !dbg !718

; <label>:13:                                     ; preds = %22, %11
  tail call void @llvm.dbg.value(metadata i8* %12, i64 0, metadata !690, metadata !614), !dbg !718
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !694, metadata !614), !dbg !719
  %14 = tail call i32 @getopt_long(i32 %0, i8** %1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0), %struct.option* getelementptr inbounds ([5 x %struct.option], [5 x %struct.option]* @longopts, i64 0, i64 0), i32* null) #10, !dbg !728
  tail call void @llvm.dbg.value(metadata i32 %14, i64 0, metadata !691, metadata !614), !dbg !730
  switch i32 %14, label %27 [
    i32 -1, label %28
    i32 109, label %15
    i32 90, label %17
    i32 -130, label %23
    i32 -131, label %24
  ], !dbg !731

; <label>:15:                                     ; preds = %13
  %16 = load i8*, i8** @optarg, align 8, !dbg !732, !tbaa !622
  tail call void @llvm.dbg.value(metadata i8* %16, i64 0, metadata !690, metadata !614), !dbg !718
  br label %11, !dbg !735, !llvm.loop !736

; <label>:17:                                     ; preds = %13
  %18 = load i8*, i8** @optarg, align 8, !tbaa !622
  %19 = icmp eq i8* %18, null, !dbg !738
  br i1 %19, label %22, label %20, !dbg !742

; <label>:20:                                     ; preds = %17
  %21 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.15, i64 0, i64 0), i32 5) #10, !dbg !743
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %21) #10, !dbg !745
  br label %22, !dbg !746

; <label>:22:                                     ; preds = %20, %17
  br label %13, !dbg !718, !llvm.loop !736

; <label>:23:                                     ; preds = %13
  tail call void @usage(i32 0) #15, !dbg !747
  unreachable, !dbg !747

; <label>:24:                                     ; preds = %13
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !748, !tbaa !622
  %26 = load i8*, i8** @Version, align 8, !dbg !748, !tbaa !622
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %25, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i64 0, i64 0), i8* %26, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.17, i64 0, i64 0), i8* null) #10, !dbg !748
  tail call void @exit(i32 0) #14, !dbg !749
  unreachable, !dbg !748

; <label>:27:                                     ; preds = %13
  tail call void @usage(i32 1) #15, !dbg !751
  unreachable, !dbg !751

; <label>:28:                                     ; preds = %13
  tail call void @llvm.dbg.value(metadata i32 438, i64 0, metadata !687, metadata !614), !dbg !752
  %29 = icmp ne i8* %12, null, !dbg !753
  br i1 %29, label %30, label %43, !dbg !754

; <label>:30:                                     ; preds = %28
  %31 = tail call %struct.mode_change* @mode_compile(i8* nonnull %12) #10, !dbg !755
  tail call void @llvm.dbg.value(metadata %struct.mode_change* %31, i64 0, metadata !699, metadata !614), !dbg !756
  %32 = icmp eq %struct.mode_change* %31, null, !dbg !757
  br i1 %32, label %33, label %35, !dbg !759

; <label>:33:                                     ; preds = %30
  %34 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18, i64 0, i64 0), i32 5) #10, !dbg !760
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %34) #10, !dbg !761
  unreachable, !dbg !760

; <label>:35:                                     ; preds = %30
  %36 = tail call i32 @umask(i32 0) #10, !dbg !763
  tail call void @llvm.dbg.value(metadata i32 %36, i64 0, metadata !696, metadata !614), !dbg !764
  %37 = tail call i32 @umask(i32 %36) #10, !dbg !765
  %38 = tail call i32 @mode_adjust(i32 438, i1 zeroext false, i32 %36, %struct.mode_change* nonnull %31, i32* null) #10, !dbg !766
  tail call void @llvm.dbg.value(metadata i32 %38, i64 0, metadata !687, metadata !614), !dbg !752
  %39 = bitcast %struct.mode_change* %31 to i8*, !dbg !767
  tail call void @free(i8* %39) #10, !dbg !768
  %40 = icmp ugt i32 %38, 511, !dbg !769
  br i1 %40, label %41, label %43, !dbg !771

; <label>:41:                                     ; preds = %35
  %42 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.19, i64 0, i64 0), i32 5) #10, !dbg !772
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %42) #10, !dbg !773
  unreachable, !dbg !772

; <label>:43:                                     ; preds = %35, %28
  %44 = phi i32 [ 438, %28 ], [ %38, %35 ]
  tail call void @llvm.dbg.value(metadata i32 %44, i64 0, metadata !687, metadata !614), !dbg !752
  %45 = load i32, i32* @optind, align 4, !dbg !775, !tbaa !776
  %46 = icmp slt i32 %45, %0, !dbg !778
  br i1 %46, label %47, label %56, !dbg !779

; <label>:47:                                     ; preds = %43
  %48 = add nsw i32 %45, 1, !dbg !780
  %49 = icmp slt i32 %48, %0, !dbg !781
  br i1 %49, label %50, label %56, !dbg !782

; <label>:50:                                     ; preds = %47
  %51 = sext i32 %48 to i64, !dbg !783
  %52 = getelementptr inbounds i8*, i8** %1, i64 %51, !dbg !783
  %53 = load i8*, i8** %52, align 8, !dbg !783, !tbaa !622
  %54 = load i8, i8* %53, align 1, !dbg !783, !tbaa !785
  %55 = icmp eq i8 %54, 112, !dbg !786
  br label %56

; <label>:56:                                     ; preds = %43, %47, %50
  %57 = phi i1 [ true, %43 ], [ false, %47 ], [ %55, %50 ]
  %58 = select i1 %57, i64 2, i64 4, !dbg !787
  tail call void @llvm.dbg.value(metadata i64 %58, i64 0, metadata !692, metadata !614), !dbg !788
  %59 = sub nsw i32 %0, %45, !dbg !789
  %60 = sext i32 %59 to i64, !dbg !791
  %61 = icmp ult i64 %60, %58, !dbg !792
  br i1 %61, label %62, label %82, !dbg !793

; <label>:62:                                     ; preds = %56
  br i1 %46, label %65, label %63, !dbg !794

; <label>:63:                                     ; preds = %62
  %64 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.20, i64 0, i64 0), i32 5) #10, !dbg !796
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %64) #10, !dbg !798
  br label %72, !dbg !800

; <label>:65:                                     ; preds = %62
  %66 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.21, i64 0, i64 0), i32 5) #10, !dbg !801
  %67 = add nsw i32 %0, -1, !dbg !802
  %68 = sext i32 %67 to i64, !dbg !803
  %69 = getelementptr inbounds i8*, i8** %1, i64 %68, !dbg !803
  %70 = load i8*, i8** %69, align 8, !dbg !803, !tbaa !622
  %71 = tail call i8* @quote(i8* %70) #10, !dbg !804
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %66, i8* %71) #10, !dbg !805
  br label %72

; <label>:72:                                     ; preds = %65, %63
  br i1 %57, label %81, label %73, !dbg !807

; <label>:73:                                     ; preds = %72
  %74 = load i32, i32* @optind, align 4, !dbg !809, !tbaa !776
  %75 = sub nsw i32 %0, %74, !dbg !811
  %76 = icmp eq i32 %75, 2, !dbg !812
  br i1 %76, label %77, label %81, !dbg !813

; <label>:77:                                     ; preds = %73
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !815, !tbaa !622
  %79 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.23, i64 0, i64 0), i32 5) #10, !dbg !815
  %80 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %78, i32 1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i64 0, i64 0), i8* %79) #10, !dbg !816
  br label %81, !dbg !815

; <label>:81:                                     ; preds = %72, %77, %73
  tail call void @usage(i32 1) #15, !dbg !817
  unreachable, !dbg !817

; <label>:82:                                     ; preds = %56
  %83 = icmp ult i64 %58, %60, !dbg !818
  br i1 %83, label %84, label %101, !dbg !820

; <label>:84:                                     ; preds = %82
  %85 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 5) #10, !dbg !821
  %86 = load i32, i32* @optind, align 4, !dbg !823, !tbaa !776
  %87 = sext i32 %86 to i64, !dbg !823
  %88 = add nsw i64 %87, %58, !dbg !824
  %89 = getelementptr inbounds i8*, i8** %1, i64 %88, !dbg !825
  %90 = load i8*, i8** %89, align 8, !dbg !825, !tbaa !622
  %91 = tail call i8* @quote(i8* %90) #10, !dbg !826
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %85, i8* %91) #10, !dbg !827
  br i1 %57, label %92, label %100, !dbg !829

; <label>:92:                                     ; preds = %84
  %93 = load i32, i32* @optind, align 4, !dbg !831, !tbaa !776
  %94 = sub nsw i32 %0, %93, !dbg !833
  %95 = icmp eq i32 %94, 4, !dbg !834
  br i1 %95, label %96, label %100, !dbg !835

; <label>:96:                                     ; preds = %92
  %97 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !836, !tbaa !622
  %98 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.25, i64 0, i64 0), i32 5) #10, !dbg !836
  %99 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %97, i32 1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i64 0, i64 0), i8* %98) #10, !dbg !837
  br label %100, !dbg !836

; <label>:100:                                    ; preds = %96, %92, %84
  tail call void @usage(i32 1) #15, !dbg !838
  unreachable, !dbg !838

; <label>:101:                                    ; preds = %82
  %102 = add nsw i32 %45, 1, !dbg !839
  %103 = sext i32 %102 to i64, !dbg !840
  %104 = getelementptr inbounds i8*, i8** %1, i64 %103, !dbg !840
  %105 = load i8*, i8** %104, align 8, !dbg !840, !tbaa !622
  %106 = load i8, i8* %105, align 1, !dbg !840, !tbaa !785
  %107 = sext i8 %106 to i32, !dbg !840
  switch i32 %107, label %187 [
    i32 98, label %109
    i32 99, label %108
    i32 117, label %108
    i32 112, label %173
  ], !dbg !841

; <label>:108:                                    ; preds = %101, %101
  tail call void @llvm.dbg.value(metadata i32 8192, i64 0, metadata !693, metadata !614), !dbg !842
  br label %109, !dbg !843

; <label>:109:                                    ; preds = %101, %108
  %110 = phi i32 [ 8192, %108 ], [ 24576, %101 ]
  tail call void @llvm.dbg.value(metadata i32 %110, i64 0, metadata !693, metadata !614), !dbg !842
  %111 = add nsw i32 %45, 2, !dbg !844
  %112 = sext i32 %111 to i64, !dbg !845
  %113 = getelementptr inbounds i8*, i8** %1, i64 %112, !dbg !845
  %114 = load i8*, i8** %113, align 8, !dbg !845, !tbaa !622
  tail call void @llvm.dbg.value(metadata i8* %114, i64 0, metadata !706, metadata !614), !dbg !846
  %115 = add nsw i32 %45, 3, !dbg !847
  %116 = sext i32 %115 to i64, !dbg !848
  %117 = getelementptr inbounds i8*, i8** %1, i64 %116, !dbg !848
  %118 = load i8*, i8** %117, align 8, !dbg !848, !tbaa !622
  tail call void @llvm.dbg.value(metadata i8* %118, i64 0, metadata !709, metadata !614), !dbg !849
  %119 = bitcast i64* %4 to i8*, !dbg !850
  call void @llvm.lifetime.start(i64 8, i8* nonnull %119) #10, !dbg !850
  %120 = bitcast i64* %5 to i8*, !dbg !850
  call void @llvm.lifetime.start(i64 8, i8* nonnull %120) #10, !dbg !850
  tail call void @llvm.dbg.value(metadata i64* %4, i64 0, metadata !710, metadata !851), !dbg !852
  %121 = call i32 @xstrtoumax(i8* %114, i8** null, i32 0, i64* nonnull %4, i8* null) #10, !dbg !853
  %122 = icmp eq i32 %121, 0, !dbg !855
  br i1 %122, label %123, label %127, !dbg !856

; <label>:123:                                    ; preds = %109
  %124 = load i64, i64* %4, align 8, !dbg !857, !tbaa !859
  call void @llvm.dbg.value(metadata i64 %124, i64 0, metadata !710, metadata !614), !dbg !852
  %125 = and i64 %124, 4294967295, !dbg !861
  %126 = icmp eq i64 %124, %125, !dbg !862
  br i1 %126, label %130, label %127, !dbg !863

; <label>:127:                                    ; preds = %123, %109
  %128 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.27, i64 0, i64 0), i32 5) #10, !dbg !865
  %129 = call i8* @quote(i8* %114) #10, !dbg !866
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %128, i8* %129) #10, !dbg !867
  unreachable, !dbg !865

; <label>:130:                                    ; preds = %123
  call void @llvm.dbg.value(metadata i64* %5, i64 0, metadata !714, metadata !851), !dbg !869
  %131 = call i32 @xstrtoumax(i8* %118, i8** null, i32 0, i64* nonnull %5, i8* null) #10, !dbg !870
  %132 = icmp eq i32 %131, 0, !dbg !872
  br i1 %132, label %133, label %137, !dbg !873

; <label>:133:                                    ; preds = %130
  %134 = load i64, i64* %5, align 8, !dbg !874, !tbaa !859
  call void @llvm.dbg.value(metadata i64 %134, i64 0, metadata !714, metadata !614), !dbg !869
  %135 = and i64 %134, 4294967295, !dbg !876
  %136 = icmp eq i64 %134, %135, !dbg !877
  br i1 %136, label %140, label %137, !dbg !878

; <label>:137:                                    ; preds = %133, %130
  %138 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.28, i64 0, i64 0), i32 5) #10, !dbg !879
  %139 = call i8* @quote(i8* %118) #10, !dbg !880
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %138, i8* %139) #10, !dbg !881
  unreachable, !dbg !879

; <label>:140:                                    ; preds = %133
  %141 = load i64, i64* %4, align 8, !dbg !883, !tbaa !859
  call void @llvm.dbg.value(metadata i64 %141, i64 0, metadata !710, metadata !614), !dbg !852
  %142 = shl i64 %141, 8, !dbg !884
  %143 = and i64 %142, 1048320, !dbg !884
  tail call void @llvm.dbg.value(metadata i64 %143, i64 0, metadata !892, metadata !614), !dbg !884
  %144 = shl i64 %141, 32, !dbg !884
  %145 = and i64 %144, -17592186044416, !dbg !884
  tail call void @llvm.dbg.value(metadata i64 %149, i64 0, metadata !892, metadata !614), !dbg !884
  %146 = and i64 %134, 255, !dbg !884
  tail call void @llvm.dbg.value(metadata i64 %150, i64 0, metadata !892, metadata !614), !dbg !884
  %147 = shl i64 %134, 12, !dbg !884
  %148 = and i64 %147, 17592184995840, !dbg !884
  %149 = or i64 %148, %146, !dbg !884
  %150 = or i64 %149, %145, !dbg !884
  %151 = or i64 %150, %143, !dbg !884
  tail call void @llvm.dbg.value(metadata i64 %151, i64 0, metadata !892, metadata !614), !dbg !884
  call void @llvm.dbg.value(metadata i64 %151, i64 0, metadata !715, metadata !614), !dbg !894
  %152 = icmp eq i64 %151, -1, !dbg !895
  br i1 %152, label %153, label %155, !dbg !897

; <label>:153:                                    ; preds = %140
  %154 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.29, i64 0, i64 0), i32 5) #10, !dbg !898
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %154, i8* %114, i8* %118) #10, !dbg !899
  unreachable, !dbg !898

; <label>:155:                                    ; preds = %140
  %156 = load i32, i32* @optind, align 4, !dbg !901, !tbaa !776
  %157 = sext i32 %156 to i64, !dbg !903
  %158 = getelementptr inbounds i8*, i8** %1, i64 %157, !dbg !903
  %159 = load i8*, i8** %158, align 8, !dbg !903, !tbaa !622
  %160 = or i32 %110, %44, !dbg !904
  %161 = bitcast i64* %3 to i8*, !dbg !905
  call void @llvm.lifetime.start(i64 8, i8* nonnull %161), !dbg !905
  call void @llvm.dbg.value(metadata i8* %159, i64 0, metadata !911, metadata !614) #10, !dbg !905
  call void @llvm.dbg.value(metadata i32 %160, i64 0, metadata !912, metadata !614) #10, !dbg !905
  call void @llvm.dbg.value(metadata i64 %151, i64 0, metadata !913, metadata !614) #10, !dbg !905
  store i64 %151, i64* %3, align 8, !tbaa !859
  call void @llvm.dbg.value(metadata i64* %3, i64 0, metadata !913, metadata !851) #10, !dbg !905
  %162 = call i32 @__xmknod(i32 0, i8* nonnull %159, i32 %160, i64* nonnull %3) #10, !dbg !915
  call void @llvm.lifetime.end(i64 8, i8* nonnull %161), !dbg !916
  %163 = icmp eq i32 %162, 0, !dbg !917
  br i1 %163, label %172, label %164, !dbg !918

; <label>:164:                                    ; preds = %155
  %165 = tail call i32* @__errno_location() #1, !dbg !919
  %166 = load i32, i32* %165, align 4, !dbg !919, !tbaa !776
  %167 = load i32, i32* @optind, align 4, !dbg !919, !tbaa !776
  %168 = sext i32 %167 to i64, !dbg !919
  %169 = getelementptr inbounds i8*, i8** %1, i64 %168, !dbg !919
  %170 = load i8*, i8** %169, align 8, !dbg !919, !tbaa !622
  %171 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %170) #10, !dbg !920
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %166, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.30, i64 0, i64 0), i8* %171) #10, !dbg !922
  unreachable, !dbg !919

; <label>:172:                                    ; preds = %155
  call void @llvm.lifetime.end(i64 8, i8* nonnull %120) #10, !dbg !924
  call void @llvm.lifetime.end(i64 8, i8* nonnull %119) #10, !dbg !924
  br label %195, !dbg !925

; <label>:173:                                    ; preds = %101
  %174 = sext i32 %45 to i64, !dbg !926
  %175 = getelementptr inbounds i8*, i8** %1, i64 %174, !dbg !926
  %176 = load i8*, i8** %175, align 8, !dbg !926, !tbaa !622
  %177 = tail call i32 @mkfifo(i8* %176, i32 %44) #10, !dbg !928
  %178 = icmp eq i32 %177, 0, !dbg !929
  br i1 %178, label %195, label %179, !dbg !930

; <label>:179:                                    ; preds = %173
  %180 = tail call i32* @__errno_location() #1, !dbg !931
  %181 = load i32, i32* %180, align 4, !dbg !931, !tbaa !776
  %182 = load i32, i32* @optind, align 4, !dbg !931, !tbaa !776
  %183 = sext i32 %182 to i64, !dbg !931
  %184 = getelementptr inbounds i8*, i8** %1, i64 %183, !dbg !931
  %185 = load i8*, i8** %184, align 8, !dbg !931, !tbaa !622
  %186 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %185) #10, !dbg !932
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 %181, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.30, i64 0, i64 0), i8* %186) #10, !dbg !934
  unreachable, !dbg !931

; <label>:187:                                    ; preds = %101
  %188 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.31, i64 0, i64 0), i32 5) #10, !dbg !936
  %189 = load i32, i32* @optind, align 4, !dbg !937, !tbaa !776
  %190 = add nsw i32 %189, 1, !dbg !938
  %191 = sext i32 %190 to i64, !dbg !939
  %192 = getelementptr inbounds i8*, i8** %1, i64 %191, !dbg !939
  %193 = load i8*, i8** %192, align 8, !dbg !939, !tbaa !622
  %194 = tail call i8* @quote(i8* %193) #10, !dbg !940
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %188, i8* %194) #10, !dbg !942
  tail call void @usage(i32 1) #15, !dbg !944
  unreachable, !dbg !944

; <label>:195:                                    ; preds = %173, %172
  br i1 %29, label %196, label %212, !dbg !945

; <label>:196:                                    ; preds = %195
  %197 = load i32, i32* @optind, align 4, !dbg !947, !tbaa !776
  %198 = sext i32 %197 to i64, !dbg !949
  %199 = getelementptr inbounds i8*, i8** %1, i64 %198, !dbg !949
  %200 = load i8*, i8** %199, align 8, !dbg !949, !tbaa !622
  %201 = call i32 @chmod(i8* %200, i32 %44) #10, !dbg !950
  %202 = icmp eq i32 %201, 0, !dbg !951
  br i1 %202, label %212, label %203, !dbg !952

; <label>:203:                                    ; preds = %196
  %204 = tail call i32* @__errno_location() #1, !dbg !953
  %205 = load i32, i32* %204, align 4, !dbg !953, !tbaa !776
  %206 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.32, i64 0, i64 0), i32 5) #10, !dbg !954
  %207 = load i32, i32* @optind, align 4, !dbg !953, !tbaa !776
  %208 = sext i32 %207 to i64, !dbg !953
  %209 = getelementptr inbounds i8*, i8** %1, i64 %208, !dbg !953
  %210 = load i8*, i8** %209, align 8, !dbg !953, !tbaa !622
  %211 = call i8* @quotearg_style(i32 4, i8* %210) #10, !dbg !955
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %205, i8* %206, i8* %211) #10, !dbg !957
  unreachable, !dbg !953

; <label>:212:                                    ; preds = %196, %195
  ret i32 0, !dbg !959
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

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #7

; Function Attrs: nounwind
declare i32 @__xmknod(i32, i8*, i32, i64*) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #7

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #8

; Function Attrs: nounwind
declare i32 @mkfifo(i8*, i32) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @chmod(i8* nocapture readonly, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_file_name(i8*) local_unnamed_addr #6 !dbg !960 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !962, metadata !614), !dbg !963
  store i8* %0, i8** @file_name, align 8, !dbg !964, !tbaa !622
  ret void, !dbg !965
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_ignore_EPIPE(i1 zeroext) local_unnamed_addr #6 !dbg !966 {
  %2 = zext i1 %0 to i8
  tail call void @llvm.dbg.value(metadata i1 %0, i64 0, metadata !970, metadata !971), !dbg !972
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !973, !tbaa !974
  ret void, !dbg !976
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout() #6 !dbg !977 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !982, !tbaa !622
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #10, !dbg !983
  %3 = icmp eq i32 %2, 0, !dbg !984
  br i1 %3, label %21, label %4, !dbg !985

; <label>:4:                                      ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !986, !tbaa !974, !range !988
  %6 = icmp eq i8 %5, 0, !dbg !986
  %7 = tail call i32* @__errno_location() #1, !dbg !989
  br i1 %6, label %11, label %8, !dbg !991

; <label>:8:                                      ; preds = %4
  %9 = load i32, i32* %7, align 4, !dbg !992, !tbaa !776
  %10 = icmp eq i32 %9, 32, !dbg !994
  br i1 %10, label %21, label %11, !dbg !995

; <label>:11:                                     ; preds = %4, %8
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.34, i64 0, i64 0), i32 5) #10, !dbg !997
  tail call void @llvm.dbg.value(metadata i8* %12, i64 0, metadata !979, metadata !614), !dbg !998
  %13 = load i8*, i8** @file_name, align 8, !dbg !999, !tbaa !622
  %14 = icmp eq i8* %13, null, !dbg !999
  %15 = load i32, i32* %7, align 4, !tbaa !776
  br i1 %14, label %18, label %16, !dbg !1000

; <label>:16:                                     ; preds = %11
  %17 = tail call i8* @quotearg_colon(i8* nonnull %13) #10, !dbg !1001
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.35, i64 0, i64 0), i8* %17, i8* %12) #10, !dbg !1003
  br label %19, !dbg !1005

; <label>:18:                                     ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.36, i64 0, i64 0), i8* %12) #10, !dbg !1006
  br label %19

; <label>:19:                                     ; preds = %18, %16
  %20 = load volatile i32, i32* @exit_failure, align 4, !dbg !1007, !tbaa !776
  tail call void @_exit(i32 %20) #14, !dbg !1008
  unreachable, !dbg !1008

; <label>:21:                                     ; preds = %0, %8
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1009, !tbaa !622
  %23 = tail call i32 @close_stream(%struct._IO_FILE* %22) #10, !dbg !1011
  %24 = icmp eq i32 %23, 0, !dbg !1012
  br i1 %24, label %27, label %25, !dbg !1013

; <label>:25:                                     ; preds = %21
  %26 = load volatile i32, i32* @exit_failure, align 4, !dbg !1014, !tbaa !776
  tail call void @_exit(i32 %26) #14, !dbg !1015
  unreachable, !dbg !1015

; <label>:27:                                     ; preds = %21
  ret void, !dbg !1016
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #9

; Function Attrs: nounwind sspstrong uwtable
define noalias %struct.mode_change* @mode_compile(i8*) local_unnamed_addr #6 !dbg !1017 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1029, metadata !614), !dbg !1053
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1031, metadata !614), !dbg !1054
  %2 = load i8, i8* %0, align 1, !dbg !1055, !tbaa !785
  %3 = and i8 %2, -8, !dbg !1056
  %4 = icmp eq i8 %3, 48, !dbg !1056
  br i1 %4, label %6, label %5, !dbg !1056, !llvm.loop !1057

; <label>:5:                                      ; preds = %1
  br label %41, !dbg !1060

; <label>:6:                                      ; preds = %1
  br label %7, !dbg !1061

; <label>:7:                                      ; preds = %6, %17
  %8 = phi i8 [ %18, %17 ], [ %2, %6 ], !dbg !1062
  %9 = phi i32 [ %15, %17 ], [ 0, %6 ]
  %10 = phi i8* [ %12, %17 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !1032, metadata !614), !dbg !1061
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !1033, metadata !614), !dbg !1064
  %11 = shl i32 %9, 3, !dbg !1065
  %12 = getelementptr inbounds i8, i8* %10, i64 1, !dbg !1066
  tail call void @llvm.dbg.value(metadata i8* %12, i64 0, metadata !1032, metadata !614), !dbg !1061
  %13 = sext i8 %8 to i32, !dbg !1062
  %14 = add i32 %11, -48, !dbg !1067
  %15 = add i32 %14, %13, !dbg !1068
  tail call void @llvm.dbg.value(metadata i32 %15, i64 0, metadata !1033, metadata !614), !dbg !1064
  %16 = icmp ugt i32 %15, 4095, !dbg !1069
  br i1 %16, label %158, label %17, !dbg !1071

; <label>:17:                                     ; preds = %7
  %18 = load i8, i8* %12, align 1, !dbg !1072, !tbaa !785
  %19 = and i8 %18, -8, !dbg !1073
  %20 = icmp eq i8 %19, 48, !dbg !1073
  br i1 %20, label %7, label %21, !dbg !1073, !llvm.loop !1057

; <label>:21:                                     ; preds = %17
  %22 = icmp eq i8 %18, 0, !dbg !1074
  br i1 %22, label %23, label %159, !dbg !1076

; <label>:23:                                     ; preds = %21
  tail call void @llvm.dbg.value(metadata i32 %15, i64 0, metadata !1036, metadata !614), !dbg !1077
  %24 = ptrtoint i8* %12 to i64, !dbg !1078
  %25 = ptrtoint i8* %0 to i64, !dbg !1078
  %26 = sub i64 %24, %25, !dbg !1078
  %27 = icmp slt i64 %26, 5, !dbg !1079
  %28 = and i32 %15, 3072, !dbg !1080
  %29 = or i32 %28, 1023, !dbg !1081
  %30 = select i1 %27, i32 %29, i32 4095, !dbg !1082
  tail call void @llvm.dbg.value(metadata i32 %30, i64 0, metadata !1037, metadata !614), !dbg !1083
  tail call void @llvm.dbg.value(metadata i32 %15, i64 0, metadata !1084, metadata !614) #10, !dbg !1091
  tail call void @llvm.dbg.value(metadata i32 %30, i64 0, metadata !1089, metadata !614) #10, !dbg !1093
  %31 = tail call noalias i8* @xmalloc(i64 32) #10, !dbg !1094
  %32 = bitcast i8* %31 to %struct.mode_change*, !dbg !1094
  tail call void @llvm.dbg.value(metadata %struct.mode_change* %32, i64 0, metadata !1090, metadata !614) #10, !dbg !1095
  store i8 61, i8* %31, align 4, !dbg !1096, !tbaa !1097
  %33 = getelementptr inbounds i8, i8* %31, i64 1, !dbg !1099
  store i8 1, i8* %33, align 1, !dbg !1100, !tbaa !1101
  %34 = getelementptr inbounds i8, i8* %31, i64 4, !dbg !1102
  %35 = bitcast i8* %34 to i32*, !dbg !1102
  store i32 4095, i32* %35, align 4, !dbg !1103, !tbaa !1104
  %36 = getelementptr inbounds i8, i8* %31, i64 8, !dbg !1105
  %37 = bitcast i8* %36 to i32*, !dbg !1105
  store i32 %15, i32* %37, align 4, !dbg !1106, !tbaa !1107
  %38 = getelementptr inbounds i8, i8* %31, i64 12, !dbg !1108
  %39 = bitcast i8* %38 to i32*, !dbg !1108
  store i32 %30, i32* %39, align 4, !dbg !1109, !tbaa !1110
  %40 = getelementptr inbounds i8, i8* %31, i64 17, !dbg !1111
  store i8 0, i8* %40, align 1, !dbg !1112, !tbaa !1101
  br label %159, !dbg !1113

; <label>:41:                                     ; preds = %5, %46
  %42 = phi i8 [ %50, %46 ], [ %2, %5 ], !dbg !1114
  %43 = phi i8* [ %49, %46 ], [ %0, %5 ]
  %44 = phi i64 [ %48, %46 ], [ 1, %5 ]
  tail call void @llvm.dbg.value(metadata i64 %44, i64 0, metadata !1038, metadata !614), !dbg !1060
  tail call void @llvm.dbg.value(metadata i8* %43, i64 0, metadata !1032, metadata !614), !dbg !1061
  switch i8 %42, label %45 [
    i8 0, label %51
    i8 61, label %46
    i8 43, label %46
    i8 45, label %46
  ], !dbg !1118

; <label>:45:                                     ; preds = %41
  br label %46, !dbg !1120

; <label>:46:                                     ; preds = %41, %41, %41, %45
  %47 = phi i64 [ 0, %45 ], [ 1, %41 ], [ 1, %41 ], [ 1, %41 ]
  %48 = add i64 %47, %44, !dbg !1122
  tail call void @llvm.dbg.value(metadata i64 %48, i64 0, metadata !1038, metadata !614), !dbg !1060
  %49 = getelementptr inbounds i8, i8* %43, i64 1, !dbg !1124
  tail call void @llvm.dbg.value(metadata i8* %49, i64 0, metadata !1032, metadata !614), !dbg !1061
  %50 = load i8, i8* %49, align 1, !tbaa !785
  br label %41, !dbg !1125, !llvm.loop !1126

; <label>:51:                                     ; preds = %41
  tail call void @llvm.dbg.value(metadata i64 %44, i64 0, metadata !1129, metadata !614) #10, !dbg !1135
  tail call void @llvm.dbg.value(metadata i64 16, i64 0, metadata !1134, metadata !614) #10, !dbg !1137
  %52 = icmp ugt i64 %44, 576460752303423487, !dbg !1138
  br i1 %52, label %53, label %54, !dbg !1140

; <label>:53:                                     ; preds = %51
  tail call void @xalloc_die() #14, !dbg !1141
  unreachable, !dbg !1141

; <label>:54:                                     ; preds = %51
  %55 = shl i64 %44, 4, !dbg !1142
  %56 = tail call noalias i8* @xmalloc(i64 %55) #10, !dbg !1143
  %57 = bitcast i8* %56 to %struct.mode_change*, !dbg !1144
  tail call void @llvm.dbg.value(metadata %struct.mode_change* %57, i64 0, metadata !1030, metadata !614), !dbg !1145
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1032, metadata !614), !dbg !1061
  br label %58, !dbg !1146

; <label>:58:                                     ; preds = %150, %54
  %59 = phi i8* [ %0, %54 ], [ %151, %150 ]
  %60 = phi i64 [ 0, %54 ], [ %135, %150 ]
  tail call void @llvm.dbg.value(metadata i64 %60, i64 0, metadata !1031, metadata !614), !dbg !1054
  tail call void @llvm.dbg.value(metadata i8* %59, i64 0, metadata !1032, metadata !614), !dbg !1061
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1040, metadata !614), !dbg !1147
  br label %61, !dbg !1148

; <label>:61:                                     ; preds = %70, %58
  %62 = phi i8* [ %59, %58 ], [ %73, %70 ]
  %63 = phi i32 [ 0, %58 ], [ %72, %70 ]
  tail call void @llvm.dbg.value(metadata i32 %63, i64 0, metadata !1040, metadata !614), !dbg !1147
  tail call void @llvm.dbg.value(metadata i8* %62, i64 0, metadata !1032, metadata !614), !dbg !1061
  %64 = load i8, i8* %62, align 1, !dbg !1149, !tbaa !785
  %65 = sext i8 %64 to i32, !dbg !1149
  switch i32 %65, label %156 [
    i32 117, label %67
    i32 103, label %70
    i32 111, label %68
    i32 97, label %69
    i32 61, label %66
    i32 43, label %66
    i32 45, label %66
  ], !dbg !1152, !llvm.loop !1153

; <label>:66:                                     ; preds = %61, %61, %61
  br label %74, !dbg !1054

; <label>:67:                                     ; preds = %61
  tail call void @llvm.dbg.value(metadata i32 %72, i64 0, metadata !1040, metadata !614), !dbg !1147
  br label %70, !dbg !1156

; <label>:68:                                     ; preds = %61
  br label %70, !dbg !1158

; <label>:69:                                     ; preds = %61
  br label %70, !dbg !1159

; <label>:70:                                     ; preds = %61, %67, %68, %69
  %71 = phi i32 [ 2496, %67 ], [ 519, %68 ], [ 4095, %69 ], [ 1080, %61 ]
  %72 = or i32 %71, %63
  tail call void @llvm.dbg.value(metadata i32 %72, i64 0, metadata !1040, metadata !614), !dbg !1147
  %73 = getelementptr inbounds i8, i8* %62, i64 1, !dbg !1160
  tail call void @llvm.dbg.value(metadata i8* %73, i64 0, metadata !1032, metadata !614), !dbg !1061
  br label %61, !dbg !1162, !llvm.loop !1163

; <label>:74:                                     ; preds = %149, %66
  %75 = phi i8 [ %64, %66 ], [ %148, %149 ], !dbg !1166
  %76 = phi i8* [ %62, %66 ], [ %130, %149 ]
  %77 = phi i32 [ %63, %66 ], [ %131, %149 ]
  %78 = phi i64 [ %60, %66 ], [ %135, %149 ]
  tail call void @llvm.dbg.value(metadata i64 %78, i64 0, metadata !1031, metadata !614), !dbg !1054
  tail call void @llvm.dbg.value(metadata i32 %77, i64 0, metadata !1040, metadata !614), !dbg !1147
  tail call void @llvm.dbg.value(metadata i8* %76, i64 0, metadata !1032, metadata !614), !dbg !1061
  %79 = getelementptr inbounds i8, i8* %76, i64 1, !dbg !1167
  tail call void @llvm.dbg.value(metadata i8* %79, i64 0, metadata !1032, metadata !614), !dbg !1061
  tail call void @llvm.dbg.value(metadata i8 %75, i64 0, metadata !1044, metadata !614), !dbg !1168
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1047, metadata !614), !dbg !1169
  tail call void @llvm.dbg.value(metadata i8 3, i64 0, metadata !1048, metadata !614), !dbg !1170
  %80 = load i8, i8* %79, align 1, !dbg !1171, !tbaa !785
  %81 = sext i8 %80 to i32, !dbg !1171
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
  ], !dbg !1172, !llvm.loop !1173

; <label>:82:                                     ; preds = %74, %74, %74, %74, %74, %74, %74, %74
  br label %84, !dbg !1176

; <label>:83:                                     ; preds = %74
  br label %107, !dbg !1170

; <label>:84:                                     ; preds = %82, %94
  %85 = phi i8 [ %95, %94 ], [ %80, %82 ], !dbg !1177
  %86 = phi i8* [ %89, %94 ], [ %79, %82 ]
  %87 = phi i32 [ %92, %94 ], [ 0, %82 ]
  tail call void @llvm.dbg.value(metadata i32 %87, i64 0, metadata !1050, metadata !614), !dbg !1176
  tail call void @llvm.dbg.value(metadata i8* %86, i64 0, metadata !1032, metadata !614), !dbg !1061
  %88 = shl i32 %87, 3, !dbg !1179
  %89 = getelementptr inbounds i8, i8* %86, i64 1, !dbg !1180
  tail call void @llvm.dbg.value(metadata i8* %89, i64 0, metadata !1032, metadata !614), !dbg !1061
  %90 = sext i8 %85 to i32, !dbg !1177
  %91 = add i32 %88, -48, !dbg !1181
  %92 = add i32 %91, %90, !dbg !1182
  tail call void @llvm.dbg.value(metadata i32 %92, i64 0, metadata !1050, metadata !614), !dbg !1176
  %93 = icmp ugt i32 %92, 4095, !dbg !1183
  br i1 %93, label %154, label %94, !dbg !1185

; <label>:94:                                     ; preds = %84
  %95 = load i8, i8* %89, align 1, !dbg !1186, !tbaa !785
  %96 = and i8 %95, -8, !dbg !1187
  %97 = icmp eq i8 %96, 48, !dbg !1187
  br i1 %97, label %84, label %98, !dbg !1187, !llvm.loop !1173

; <label>:98:                                     ; preds = %94
  %99 = icmp eq i32 %77, 0, !dbg !1188
  br i1 %99, label %100, label %155, !dbg !1190

; <label>:100:                                    ; preds = %98
  switch i8 %95, label %155 [
    i8 0, label %129
    i8 44, label %129
  ], !dbg !1191

; <label>:101:                                    ; preds = %74
  tail call void @llvm.dbg.value(metadata i32 448, i64 0, metadata !1046, metadata !614), !dbg !1193
  %102 = getelementptr inbounds i8, i8* %76, i64 2, !dbg !1194
  tail call void @llvm.dbg.value(metadata i8* %102, i64 0, metadata !1032, metadata !614), !dbg !1061
  br label %129, !dbg !1195

; <label>:103:                                    ; preds = %74
  tail call void @llvm.dbg.value(metadata i32 56, i64 0, metadata !1046, metadata !614), !dbg !1193
  %104 = getelementptr inbounds i8, i8* %76, i64 2, !dbg !1196
  tail call void @llvm.dbg.value(metadata i8* %104, i64 0, metadata !1032, metadata !614), !dbg !1061
  br label %129, !dbg !1197

; <label>:105:                                    ; preds = %74
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !1046, metadata !614), !dbg !1193
  %106 = getelementptr inbounds i8, i8* %76, i64 2, !dbg !1198
  tail call void @llvm.dbg.value(metadata i8* %106, i64 0, metadata !1032, metadata !614), !dbg !1061
  br label %129, !dbg !1199

; <label>:107:                                    ; preds = %83, %123
  %108 = phi i8 [ %127, %123 ], [ %80, %83 ], !dbg !1200
  %109 = phi i8* [ %126, %123 ], [ %79, %83 ]
  %110 = phi i32 [ %124, %123 ], [ 0, %83 ]
  %111 = phi i8 [ %125, %123 ], [ 1, %83 ]
  tail call void @llvm.dbg.value(metadata i8 %111, i64 0, metadata !1048, metadata !614), !dbg !1170
  tail call void @llvm.dbg.value(metadata i32 %110, i64 0, metadata !1046, metadata !614), !dbg !1193
  tail call void @llvm.dbg.value(metadata i8* %109, i64 0, metadata !1032, metadata !614), !dbg !1061
  %112 = sext i8 %108 to i32, !dbg !1200
  switch i32 %112, label %128 [
    i32 114, label %113
    i32 119, label %115
    i32 120, label %117
    i32 88, label %123
    i32 115, label %119
    i32 116, label %121
  ], !dbg !1203

; <label>:113:                                    ; preds = %107
  %114 = or i32 %110, 292, !dbg !1204
  tail call void @llvm.dbg.value(metadata i32 %114, i64 0, metadata !1046, metadata !614), !dbg !1193
  br label %123, !dbg !1206

; <label>:115:                                    ; preds = %107
  %116 = or i32 %110, 146, !dbg !1207
  tail call void @llvm.dbg.value(metadata i32 %116, i64 0, metadata !1046, metadata !614), !dbg !1193
  br label %123, !dbg !1208

; <label>:117:                                    ; preds = %107
  %118 = or i32 %110, 73, !dbg !1209
  tail call void @llvm.dbg.value(metadata i32 %118, i64 0, metadata !1046, metadata !614), !dbg !1193
  br label %123, !dbg !1210

; <label>:119:                                    ; preds = %107
  %120 = or i32 %110, 3072, !dbg !1211
  tail call void @llvm.dbg.value(metadata i32 %120, i64 0, metadata !1046, metadata !614), !dbg !1193
  br label %123, !dbg !1212

; <label>:121:                                    ; preds = %107
  %122 = or i32 %110, 512, !dbg !1213
  tail call void @llvm.dbg.value(metadata i32 %122, i64 0, metadata !1046, metadata !614), !dbg !1193
  br label %123, !dbg !1214

; <label>:123:                                    ; preds = %107, %113, %115, %117, %119, %121
  %124 = phi i32 [ %122, %121 ], [ %120, %119 ], [ %118, %117 ], [ %116, %115 ], [ %114, %113 ], [ %110, %107 ]
  %125 = phi i8 [ %111, %121 ], [ %111, %119 ], [ %111, %117 ], [ %111, %115 ], [ %111, %113 ], [ 2, %107 ]
  tail call void @llvm.dbg.value(metadata i8 %125, i64 0, metadata !1048, metadata !614), !dbg !1170
  tail call void @llvm.dbg.value(metadata i32 %124, i64 0, metadata !1046, metadata !614), !dbg !1193
  %126 = getelementptr inbounds i8, i8* %109, i64 1, !dbg !1215
  tail call void @llvm.dbg.value(metadata i8* %126, i64 0, metadata !1032, metadata !614), !dbg !1061
  %127 = load i8, i8* %126, align 1, !tbaa !785
  br label %107, !dbg !1217, !llvm.loop !1218

; <label>:128:                                    ; preds = %107
  br label %129, !dbg !1170

; <label>:129:                                    ; preds = %128, %100, %100, %105, %103, %101
  %130 = phi i8* [ %106, %105 ], [ %104, %103 ], [ %102, %101 ], [ %89, %100 ], [ %89, %100 ], [ %109, %128 ]
  %131 = phi i32 [ %77, %105 ], [ %77, %103 ], [ %77, %101 ], [ 4095, %100 ], [ 4095, %100 ], [ %77, %128 ]
  %132 = phi i32 [ 7, %105 ], [ 56, %103 ], [ 448, %101 ], [ %92, %100 ], [ %92, %100 ], [ %110, %128 ]
  %133 = phi i32 [ 0, %105 ], [ 0, %103 ], [ 0, %101 ], [ 4095, %100 ], [ 4095, %100 ], [ 0, %128 ]
  %134 = phi i8 [ 3, %105 ], [ 3, %103 ], [ 3, %101 ], [ 1, %100 ], [ 1, %100 ], [ %111, %128 ]
  tail call void @llvm.dbg.value(metadata i8 %134, i64 0, metadata !1048, metadata !614), !dbg !1170
  tail call void @llvm.dbg.value(metadata i32 %133, i64 0, metadata !1047, metadata !614), !dbg !1169
  tail call void @llvm.dbg.value(metadata i32 %132, i64 0, metadata !1046, metadata !614), !dbg !1193
  tail call void @llvm.dbg.value(metadata i32 %131, i64 0, metadata !1040, metadata !614), !dbg !1147
  tail call void @llvm.dbg.value(metadata i8* %130, i64 0, metadata !1032, metadata !614), !dbg !1061
  %135 = add i64 %78, 1, !dbg !1221
  tail call void @llvm.dbg.value(metadata i64 %135, i64 0, metadata !1031, metadata !614), !dbg !1054
  %136 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %57, i64 %78, i32 0, !dbg !1222
  store i8 %75, i8* %136, align 4, !dbg !1223, !tbaa !1097
  %137 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %57, i64 %78, i32 1, !dbg !1224
  store i8 %134, i8* %137, align 1, !dbg !1225, !tbaa !1101
  %138 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %57, i64 %78, i32 2, !dbg !1226
  store i32 %131, i32* %138, align 4, !dbg !1227, !tbaa !1104
  %139 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %57, i64 %78, i32 3, !dbg !1228
  store i32 %132, i32* %139, align 4, !dbg !1229, !tbaa !1107
  %140 = icmp eq i32 %133, 0, !dbg !1230
  br i1 %140, label %141, label %145, !dbg !1230

; <label>:141:                                    ; preds = %129
  %142 = icmp eq i32 %131, 0, !dbg !1231
  %143 = select i1 %142, i32 -1, i32 %131, !dbg !1231
  %144 = and i32 %143, %132, !dbg !1231
  br label %145, !dbg !1231

; <label>:145:                                    ; preds = %129, %141
  %146 = phi i32 [ %133, %129 ], [ %144, %141 ], !dbg !1233
  %147 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %57, i64 %78, i32 4, !dbg !1235
  store i32 %146, i32* %147, align 4, !dbg !1236, !tbaa !1110
  tail call void @llvm.dbg.value(metadata i64 %78, i64 0, metadata !1031, metadata !614), !dbg !1054
  tail call void @llvm.dbg.value(metadata i32 %77, i64 0, metadata !1040, metadata !614), !dbg !1147
  tail call void @llvm.dbg.value(metadata i8* %89, i64 0, metadata !1032, metadata !614), !dbg !1061
  %148 = load i8, i8* %130, align 1, !dbg !1237, !tbaa !785
  switch i8 %148, label %155 [
    i8 61, label %149
    i8 43, label %149
    i8 45, label %149
    i8 44, label %150
    i8 0, label %152
  ], !dbg !1238

; <label>:149:                                    ; preds = %145, %145, %145
  br label %74, !dbg !1054

; <label>:150:                                    ; preds = %145
  tail call void @llvm.dbg.value(metadata i32 %132, i64 0, metadata !1046, metadata !614), !dbg !1193
  tail call void @llvm.dbg.value(metadata i64 %135, i64 0, metadata !1031, metadata !614), !dbg !1054
  tail call void @llvm.dbg.value(metadata i8* %130, i64 0, metadata !1032, metadata !614), !dbg !1061
  %151 = getelementptr inbounds i8, i8* %130, i64 1, !dbg !1239
  tail call void @llvm.dbg.value(metadata i8* %151, i64 0, metadata !1032, metadata !614), !dbg !1061
  br label %58, !dbg !1241, !llvm.loop !1242

; <label>:152:                                    ; preds = %145
  %153 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %57, i64 %135, i32 1, !dbg !1245
  store i8 0, i8* %153, align 1, !dbg !1248, !tbaa !1101
  br label %159, !dbg !1249

; <label>:154:                                    ; preds = %84
  br label %157, !dbg !1250

; <label>:155:                                    ; preds = %145, %100, %98
  br label %157, !dbg !1250

; <label>:156:                                    ; preds = %61
  br label %157, !dbg !1250

; <label>:157:                                    ; preds = %156, %155, %154
  tail call void @free(i8* %56) #10, !dbg !1250
  br label %159, !dbg !1251

; <label>:158:                                    ; preds = %7
  br label %159, !dbg !1252

; <label>:159:                                    ; preds = %158, %23, %21, %157, %152
  %160 = phi %struct.mode_change* [ null, %157 ], [ %57, %152 ], [ %32, %23 ], [ null, %21 ], [ null, %158 ]
  ret %struct.mode_change* %160, !dbg !1252
}

; Function Attrs: nounwind sspstrong uwtable
define noalias %struct.mode_change* @mode_create_from_ref(i8*) local_unnamed_addr #6 !dbg !1253 {
  %2 = alloca %struct.stat, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1255, metadata !614), !dbg !1293
  %3 = bitcast %struct.stat* %2 to i8*, !dbg !1294
  call void @llvm.lifetime.start(i64 144, i8* nonnull %3) #10, !dbg !1294
  tail call void @llvm.dbg.value(metadata %struct.stat* %2, i64 0, metadata !1256, metadata !851), !dbg !1295
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1296, metadata !614) #10, !dbg !1303
  tail call void @llvm.dbg.value(metadata %struct.stat* %2, i64 0, metadata !1302, metadata !614) #10, !dbg !1303
  %4 = call i32 @__xstat(i32 1, i8* nonnull %0, %struct.stat* nonnull %2) #10, !dbg !1306
  %5 = icmp eq i32 %4, 0, !dbg !1307
  br i1 %5, label %6, label %19, !dbg !1308

; <label>:6:                                      ; preds = %1
  %7 = getelementptr inbounds %struct.stat, %struct.stat* %2, i64 0, i32 3, !dbg !1309
  %8 = load i32, i32* %7, align 8, !dbg !1309, !tbaa !1310
  call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !1084, metadata !614) #10, !dbg !1313
  call void @llvm.dbg.value(metadata i32 4095, i64 0, metadata !1089, metadata !614) #10, !dbg !1315
  %9 = call noalias i8* @xmalloc(i64 32) #10, !dbg !1316
  %10 = bitcast i8* %9 to %struct.mode_change*, !dbg !1316
  call void @llvm.dbg.value(metadata %struct.mode_change* %10, i64 0, metadata !1090, metadata !614) #10, !dbg !1317
  store i8 61, i8* %9, align 4, !dbg !1318, !tbaa !1097
  %11 = getelementptr inbounds i8, i8* %9, i64 1, !dbg !1319
  store i8 1, i8* %11, align 1, !dbg !1320, !tbaa !1101
  %12 = getelementptr inbounds i8, i8* %9, i64 4, !dbg !1321
  %13 = bitcast i8* %12 to i32*, !dbg !1321
  store i32 4095, i32* %13, align 4, !dbg !1322, !tbaa !1104
  %14 = getelementptr inbounds i8, i8* %9, i64 8, !dbg !1323
  %15 = bitcast i8* %14 to i32*, !dbg !1323
  store i32 %8, i32* %15, align 4, !dbg !1324, !tbaa !1107
  %16 = getelementptr inbounds i8, i8* %9, i64 12, !dbg !1325
  %17 = bitcast i8* %16 to i32*, !dbg !1325
  store i32 4095, i32* %17, align 4, !dbg !1326, !tbaa !1110
  %18 = getelementptr inbounds i8, i8* %9, i64 17, !dbg !1327
  store i8 0, i8* %18, align 1, !dbg !1328, !tbaa !1101
  br label %19, !dbg !1329

; <label>:19:                                     ; preds = %1, %6
  %20 = phi %struct.mode_change* [ %10, %6 ], [ null, %1 ]
  call void @llvm.lifetime.end(i64 144, i8* nonnull %3) #10, !dbg !1330
  ret %struct.mode_change* %20, !dbg !1330
}

; Function Attrs: nounwind
declare i32 @__xstat(i32, i8*, %struct.stat*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @mode_adjust(i32, i1 zeroext, i32, %struct.mode_change* nocapture readonly, i32*) local_unnamed_addr #6 !dbg !1331 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !1338, metadata !614), !dbg !1354
  tail call void @llvm.dbg.value(metadata i1 %1, i64 0, metadata !1339, metadata !971), !dbg !1355
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !1340, metadata !614), !dbg !1356
  tail call void @llvm.dbg.value(metadata %struct.mode_change* %3, i64 0, metadata !1341, metadata !614), !dbg !1357
  tail call void @llvm.dbg.value(metadata i32* %4, i64 0, metadata !1342, metadata !614), !dbg !1358
  %6 = and i32 %0, 4095, !dbg !1359
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !1343, metadata !614), !dbg !1360
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1344, metadata !614), !dbg !1361
  tail call void @llvm.dbg.value(metadata %struct.mode_change* %3, i64 0, metadata !1341, metadata !614), !dbg !1357
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !1343, metadata !614), !dbg !1360
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1344, metadata !614), !dbg !1361
  %7 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %3, i64 0, i32 1, !dbg !1362
  %8 = load i8, i8* %7, align 1, !dbg !1362, !tbaa !1101
  %9 = icmp eq i8 %8, 0, !dbg !1364
  br i1 %9, label %83, label %10, !dbg !1365

; <label>:10:                                     ; preds = %5
  %11 = select i1 %1, i32 3072, i32 0
  %12 = xor i32 %2, -1
  %13 = xor i32 %11, -1
  %14 = zext i1 %1 to i32
  br label %15, !dbg !1365

; <label>:15:                                     ; preds = %10, %75
  %16 = phi i8 [ %8, %10 ], [ %80, %75 ]
  %17 = phi %struct.mode_change* [ %3, %10 ], [ %78, %75 ]
  %18 = phi i32 [ %6, %10 ], [ %77, %75 ]
  %19 = phi i32 [ 0, %10 ], [ %76, %75 ]
  %20 = sext i8 %16 to i32, !dbg !1367
  %21 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %17, i64 0, i32 2, !dbg !1368
  %22 = load i32, i32* %21, align 4, !dbg !1368, !tbaa !1104
  tail call void @llvm.dbg.value(metadata i32 %22, i64 0, metadata !1345, metadata !614), !dbg !1369
  %23 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %17, i64 0, i32 4, !dbg !1370
  %24 = load i32, i32* %23, align 4, !dbg !1370, !tbaa !1110
  %25 = xor i32 %24, -1, !dbg !1371
  %26 = and i32 %11, %25, !dbg !1372
  tail call void @llvm.dbg.value(metadata i32 %26, i64 0, metadata !1349, metadata !614), !dbg !1373
  %27 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %17, i64 0, i32 3, !dbg !1374
  %28 = load i32, i32* %27, align 4, !dbg !1374, !tbaa !1107
  tail call void @llvm.dbg.value(metadata i32 %28, i64 0, metadata !1350, metadata !614), !dbg !1375
  switch i32 %20, label %49 [
    i32 2, label %43
    i32 3, label %29
  ], !dbg !1376

; <label>:29:                                     ; preds = %15
  %30 = and i32 %28, %18, !dbg !1377
  tail call void @llvm.dbg.value(metadata i32 %30, i64 0, metadata !1350, metadata !614), !dbg !1375
  %31 = and i32 %30, 292, !dbg !1379
  %32 = icmp ne i32 %31, 0, !dbg !1380
  %33 = select i1 %32, i32 292, i32 0, !dbg !1380
  %34 = and i32 %30, 146, !dbg !1381
  %35 = icmp ne i32 %34, 0, !dbg !1382
  %36 = select i1 %35, i32 146, i32 0, !dbg !1382
  %37 = and i32 %30, 73, !dbg !1383
  %38 = icmp ne i32 %37, 0, !dbg !1384
  %39 = select i1 %38, i32 73, i32 0, !dbg !1384
  %40 = or i32 %36, %30, !dbg !1385
  %41 = or i32 %40, %33, !dbg !1386
  %42 = or i32 %41, %39, !dbg !1387
  tail call void @llvm.dbg.value(metadata i32 %42, i64 0, metadata !1350, metadata !614), !dbg !1375
  br label %49, !dbg !1388

; <label>:43:                                     ; preds = %15
  %44 = and i32 %18, 73, !dbg !1389
  %45 = or i32 %44, %14, !dbg !1391
  %46 = icmp eq i32 %45, 0, !dbg !1391
  %47 = or i32 %28, 73, !dbg !1392
  tail call void @llvm.dbg.value(metadata i32 %47, i64 0, metadata !1350, metadata !614), !dbg !1375
  %48 = select i1 %46, i32 %28, i32 %47, !dbg !1393
  br label %49, !dbg !1393

; <label>:49:                                     ; preds = %43, %15, %29
  %50 = phi i32 [ %28, %15 ], [ %42, %29 ], [ %48, %43 ]
  tail call void @llvm.dbg.value(metadata i32 %50, i64 0, metadata !1350, metadata !614), !dbg !1375
  %51 = icmp ne i32 %22, 0, !dbg !1394
  %52 = select i1 %51, i32 %22, i32 %12, !dbg !1394
  %53 = or i32 %24, %13, !dbg !1395
  %54 = and i32 %52, %53, !dbg !1397
  %55 = and i32 %54, %50, !dbg !1398
  tail call void @llvm.dbg.value(metadata i32 %55, i64 0, metadata !1350, metadata !614), !dbg !1375
  %56 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %17, i64 0, i32 0, !dbg !1399
  %57 = load i8, i8* %56, align 4, !dbg !1399, !tbaa !1097
  %58 = sext i8 %57 to i32, !dbg !1400
  switch i32 %58, label %75 [
    i32 61, label %59
    i32 43, label %68
    i32 45, label %71
  ], !dbg !1401

; <label>:59:                                     ; preds = %49
  %60 = xor i32 %22, -1, !dbg !1402
  %61 = select i1 %51, i32 %60, i32 0, !dbg !1404
  %62 = or i32 %61, %26, !dbg !1405
  tail call void @llvm.dbg.value(metadata i32 %62, i64 0, metadata !1351, metadata !614), !dbg !1407
  %63 = and i32 %62, 4095, !dbg !1408
  %64 = xor i32 %63, 4095, !dbg !1408
  %65 = or i32 %64, %19, !dbg !1409
  tail call void @llvm.dbg.value(metadata i32 %65, i64 0, metadata !1344, metadata !614), !dbg !1361
  %66 = and i32 %62, %18, !dbg !1410
  %67 = or i32 %55, %66, !dbg !1411
  tail call void @llvm.dbg.value(metadata i32 %67, i64 0, metadata !1343, metadata !614), !dbg !1360
  br label %75

; <label>:68:                                     ; preds = %49
  %69 = or i32 %55, %19, !dbg !1412
  tail call void @llvm.dbg.value(metadata i32 %69, i64 0, metadata !1344, metadata !614), !dbg !1361
  %70 = or i32 %55, %18, !dbg !1413
  tail call void @llvm.dbg.value(metadata i32 %70, i64 0, metadata !1343, metadata !614), !dbg !1360
  br label %75, !dbg !1414

; <label>:71:                                     ; preds = %49
  %72 = or i32 %55, %19, !dbg !1415
  tail call void @llvm.dbg.value(metadata i32 %72, i64 0, metadata !1344, metadata !614), !dbg !1361
  %73 = xor i32 %55, -1, !dbg !1416
  %74 = and i32 %18, %73, !dbg !1417
  tail call void @llvm.dbg.value(metadata i32 %74, i64 0, metadata !1343, metadata !614), !dbg !1360
  br label %75, !dbg !1418

; <label>:75:                                     ; preds = %49, %71, %68, %59
  %76 = phi i32 [ %19, %49 ], [ %72, %71 ], [ %69, %68 ], [ %65, %59 ]
  %77 = phi i32 [ %18, %49 ], [ %74, %71 ], [ %70, %68 ], [ %67, %59 ]
  tail call void @llvm.dbg.value(metadata i32 %77, i64 0, metadata !1343, metadata !614), !dbg !1360
  tail call void @llvm.dbg.value(metadata i32 %76, i64 0, metadata !1344, metadata !614), !dbg !1361
  %78 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %17, i64 1, !dbg !1419
  tail call void @llvm.dbg.value(metadata %struct.mode_change* %78, i64 0, metadata !1341, metadata !614), !dbg !1357
  tail call void @llvm.dbg.value(metadata %struct.mode_change* %78, i64 0, metadata !1341, metadata !614), !dbg !1357
  tail call void @llvm.dbg.value(metadata i32 %77, i64 0, metadata !1343, metadata !614), !dbg !1360
  tail call void @llvm.dbg.value(metadata i32 %76, i64 0, metadata !1344, metadata !614), !dbg !1361
  %79 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %17, i64 1, i32 1, !dbg !1362
  %80 = load i8, i8* %79, align 1, !dbg !1362, !tbaa !1101
  %81 = icmp eq i8 %80, 0, !dbg !1364
  br i1 %81, label %82, label %15, !dbg !1365, !llvm.loop !1421

; <label>:82:                                     ; preds = %75
  br label %83, !dbg !1424

; <label>:83:                                     ; preds = %82, %5
  %84 = phi i32 [ 0, %5 ], [ %76, %82 ]
  %85 = phi i32 [ %6, %5 ], [ %77, %82 ]
  %86 = icmp eq i32* %4, null, !dbg !1424
  br i1 %86, label %88, label %87, !dbg !1426

; <label>:87:                                     ; preds = %83
  store i32 %84, i32* %4, align 4, !dbg !1427, !tbaa !776
  br label %88, !dbg !1428

; <label>:88:                                     ; preds = %83, %87
  ret i32 %85, !dbg !1429
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_program_name(i8*) local_unnamed_addr #6 !dbg !1430 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1432, metadata !614), !dbg !1435
  %2 = icmp eq i8* %0, null, !dbg !1436
  br i1 %2, label %3, label %6, !dbg !1438

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1439, !tbaa !622
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.53, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #16, !dbg !1441
  tail call void @abort() #14, !dbg !1442
  unreachable, !dbg !1442

; <label>:6:                                      ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #13, !dbg !1443
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !1433, metadata !614), !dbg !1444
  %8 = icmp ne i8* %7, null, !dbg !1445
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !1446
  %10 = select i1 %8, i8* %9, i8* %0, !dbg !1448
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !1434, metadata !614), !dbg !1449
  %11 = ptrtoint i8* %10 to i64, !dbg !1450
  %12 = ptrtoint i8* %0 to i64, !dbg !1450
  %13 = sub i64 %11, %12, !dbg !1450
  %14 = icmp sgt i64 %13, 6, !dbg !1452
  br i1 %14, label %15, label %24, !dbg !1453

; <label>:15:                                     ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !1454
  %17 = tail call i32 @strncmp(i8* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.54, i64 0, i64 0), i64 7) #13, !dbg !1454
  %18 = icmp eq i32 %17, 0, !dbg !1456
  br i1 %18, label %19, label %24, !dbg !1457

; <label>:19:                                     ; preds = %15
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !1432, metadata !614), !dbg !1435
  %20 = tail call i32 @strncmp(i8* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.55, i64 0, i64 0), i64 3) #13, !dbg !1458
  %21 = icmp eq i32 %20, 0, !dbg !1461
  br i1 %21, label %22, label %24, !dbg !1462

; <label>:22:                                     ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !1463
  tail call void @llvm.dbg.value(metadata i8* %23, i64 0, metadata !1432, metadata !614), !dbg !1435
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !1465, !tbaa !622
  br label %24, !dbg !1466

; <label>:24:                                     ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i8* %25, i64 0, metadata !1432, metadata !614), !dbg !1435
  store i8* %25, i8** @program_name, align 8, !dbg !1467, !tbaa !622
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !1468, !tbaa !622
  ret void, !dbg !1469
}

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #10

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #5

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define %struct.quoting_options* @clone_quoting_options(%struct.quoting_options*) local_unnamed_addr #6 !dbg !1470 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1475, metadata !614), !dbg !1478
  %2 = tail call i32* @__errno_location() #1, !dbg !1479
  %3 = load i32, i32* %2, align 4, !dbg !1479, !tbaa !776
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !1476, metadata !614), !dbg !1480
  %4 = icmp ne %struct.quoting_options* %0, null, !dbg !1481
  %5 = bitcast %struct.quoting_options* %0 to i8*, !dbg !1482
  %6 = select i1 %4, i8* %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), !dbg !1482
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #10, !dbg !1484
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !1484
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %8, i64 0, metadata !1477, metadata !614), !dbg !1485
  store i32 %3, i32* %2, align 4, !dbg !1486, !tbaa !776
  ret %struct.quoting_options* %8, !dbg !1487
}

; Function Attrs: nounwind readonly sspstrong uwtable
define i32 @get_quoting_style(%struct.quoting_options* readonly) local_unnamed_addr #11 !dbg !1488 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1494, metadata !614), !dbg !1495
  %2 = icmp ne %struct.quoting_options* %0, null, !dbg !1496
  %3 = select i1 %2, %struct.quoting_options* %0, %struct.quoting_options* @default_quoting_options, !dbg !1496
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1497
  %5 = load i32, i32* %4, align 8, !dbg !1497, !tbaa !1499
  ret i32 %5, !dbg !1501
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_quoting_style(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !1502 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1506, metadata !614), !dbg !1508
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1507, metadata !614), !dbg !1509
  %3 = icmp ne %struct.quoting_options* %0, null, !dbg !1510
  %4 = select i1 %3, %struct.quoting_options* %0, %struct.quoting_options* @default_quoting_options, !dbg !1510
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !1511
  store i32 %1, i32* %5, align 8, !dbg !1513, !tbaa !1499
  ret void, !dbg !1514
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_char_quoting(%struct.quoting_options*, i8 signext, i32) local_unnamed_addr #6 !dbg !1515 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1519, metadata !614), !dbg !1527
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1520, metadata !614), !dbg !1528
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !1521, metadata !614), !dbg !1529
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1522, metadata !614), !dbg !1530
  %4 = icmp ne %struct.quoting_options* %0, null, !dbg !1531
  %5 = select i1 %4, %struct.quoting_options* %0, %struct.quoting_options* @default_quoting_options, !dbg !1531
  %6 = lshr i8 %1, 5, !dbg !1532
  %7 = zext i8 %6 to i64, !dbg !1532
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !1534
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !1523, metadata !614), !dbg !1535
  %9 = and i8 %1, 31, !dbg !1536
  %10 = zext i8 %9 to i32, !dbg !1537
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !1525, metadata !614), !dbg !1538
  %11 = load i32, i32* %8, align 4, !dbg !1539, !tbaa !776
  %12 = lshr i32 %11, %10, !dbg !1540
  %13 = and i32 %12, 1, !dbg !1541
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !1526, metadata !614), !dbg !1542
  %14 = and i32 %2, 1, !dbg !1543
  %15 = xor i32 %13, %14, !dbg !1544
  %16 = shl i32 %15, %10, !dbg !1545
  %17 = xor i32 %16, %11, !dbg !1546
  store i32 %17, i32* %8, align 4, !dbg !1546, !tbaa !776
  ret i32 %13, !dbg !1547
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_quoting_flags(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !1548 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1552, metadata !614), !dbg !1555
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1553, metadata !614), !dbg !1556
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1557
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1552, metadata !614), !dbg !1555
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1559
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1552, metadata !614), !dbg !1555
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !1560
  %6 = load i32, i32* %5, align 4, !dbg !1560, !tbaa !1561
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !1554, metadata !614), !dbg !1562
  store i32 %1, i32* %5, align 4, !dbg !1563, !tbaa !1561
  ret i32 %6, !dbg !1564
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_custom_quoting(%struct.quoting_options*, i8*, i8*) local_unnamed_addr #6 !dbg !1565 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1569, metadata !614), !dbg !1572
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1570, metadata !614), !dbg !1573
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1571, metadata !614), !dbg !1574
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1575
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1569, metadata !614), !dbg !1572
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1577
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1569, metadata !614), !dbg !1572
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1578
  store i32 10, i32* %6, align 8, !dbg !1579, !tbaa !1499
  %7 = icmp ne i8* %1, null, !dbg !1580
  %8 = icmp ne i8* %2, null, !dbg !1582
  %9 = and i1 %7, %8, !dbg !1584
  br i1 %9, label %11, label %10, !dbg !1584

; <label>:10:                                     ; preds = %3
  tail call void @abort() #14, !dbg !1585
  unreachable, !dbg !1585

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1586
  store i8* %1, i8** %12, align 8, !dbg !1587, !tbaa !1588
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1589
  store i8* %2, i8** %13, align 8, !dbg !1590, !tbaa !1591
  ret void, !dbg !1592
}

; Function Attrs: nounwind sspstrong uwtable
define i64 @quotearg_buffer(i8*, i64, i8*, i64, %struct.quoting_options* readonly) local_unnamed_addr #6 !dbg !1593 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1597, metadata !614), !dbg !1605
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1598, metadata !614), !dbg !1606
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1599, metadata !614), !dbg !1607
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !1600, metadata !614), !dbg !1608
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1601, metadata !614), !dbg !1609
  %6 = icmp ne %struct.quoting_options* %4, null, !dbg !1610
  %7 = select i1 %6, %struct.quoting_options* %4, %struct.quoting_options* @default_quoting_options, !dbg !1610
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %7, i64 0, metadata !1602, metadata !614), !dbg !1611
  %8 = tail call i32* @__errno_location() #1, !dbg !1612
  %9 = load i32, i32* %8, align 4, !dbg !1612, !tbaa !776
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !1603, metadata !614), !dbg !1613
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !1614
  %11 = load i32, i32* %10, align 8, !dbg !1614, !tbaa !1499
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !1615
  %13 = load i32, i32* %12, align 4, !dbg !1615, !tbaa !1561
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !1616
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !1617
  %16 = load i8*, i8** %15, align 8, !dbg !1617, !tbaa !1588
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !1618
  %18 = load i8*, i8** %17, align 8, !dbg !1618, !tbaa !1591
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* %14, i8* %16, i8* %18), !dbg !1619
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !1604, metadata !614), !dbg !1620
  store i32 %9, i32* %8, align 4, !dbg !1621, !tbaa !776
  ret i64 %19, !dbg !1622
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8*, i64, i8*, i64, i32, i32, i32* readonly, i8* readonly, i8* readonly) unnamed_addr #6 !dbg !1623 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1629, metadata !614), !dbg !1692
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1630, metadata !614), !dbg !1693
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1631, metadata !614), !dbg !1694
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !1632, metadata !614), !dbg !1695
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !1633, metadata !614), !dbg !1696
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !1634, metadata !614), !dbg !1697
  tail call void @llvm.dbg.value(metadata i32* %6, i64 0, metadata !1635, metadata !614), !dbg !1698
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !1636, metadata !614), !dbg !1699
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !1637, metadata !614), !dbg !1700
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1639, metadata !614), !dbg !1701
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1640, metadata !614), !dbg !1702
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1641, metadata !614), !dbg !1703
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1642, metadata !614), !dbg !1704
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1643, metadata !614), !dbg !1705
  %13 = tail call i64 @__ctype_get_mb_cur_max() #10, !dbg !1706
  %14 = icmp eq i64 %13, 1, !dbg !1707
  %15 = lshr i32 %5, 1, !dbg !1708
  %16 = trunc i32 %15 to i8, !dbg !1708
  %17 = and i8 %16, 1, !dbg !1708
  tail call void @llvm.dbg.value(metadata i8 %17, i64 0, metadata !1645, metadata !614), !dbg !1708
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1646, metadata !614), !dbg !1709
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1647, metadata !614), !dbg !1710
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1648, metadata !614), !dbg !1711
  %18 = bitcast i64* %10 to i8*
  %19 = bitcast i32* %12 to i8*
  %20 = icmp eq i32* %6, null
  %21 = icmp ne i32* %6, null
  %22 = and i32 %5, 1
  %23 = icmp eq i32 %22, 0
  %24 = and i32 %5, 4
  %25 = icmp eq i32 %24, 0
  %26 = getelementptr inbounds i8, i8* %2, i64 1
  br label %27, !dbg !1712

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
  call void @llvm.dbg.value(metadata i64 %40, i64 0, metadata !1630, metadata !614), !dbg !1693
  call void @llvm.dbg.value(metadata i8 %39, i64 0, metadata !1648, metadata !614), !dbg !1711
  call void @llvm.dbg.value(metadata i8 %38, i64 0, metadata !1647, metadata !614), !dbg !1710
  call void @llvm.dbg.value(metadata i8 %37, i64 0, metadata !1646, metadata !614), !dbg !1709
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !1645, metadata !614), !dbg !1708
  call void @llvm.dbg.value(metadata i64 %35, i64 0, metadata !1632, metadata !614), !dbg !1695
  call void @llvm.dbg.value(metadata i8 %34, i64 0, metadata !1643, metadata !614), !dbg !1705
  call void @llvm.dbg.value(metadata i64 %33, i64 0, metadata !1642, metadata !614), !dbg !1704
  call void @llvm.dbg.value(metadata i8* %32, i64 0, metadata !1641, metadata !614), !dbg !1703
  call void @llvm.dbg.value(metadata i64 %31, i64 0, metadata !1640, metadata !614), !dbg !1702
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1639, metadata !614), !dbg !1701
  call void @llvm.dbg.value(metadata i8* %30, i64 0, metadata !1637, metadata !614), !dbg !1700
  call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !1636, metadata !614), !dbg !1699
  call void @llvm.dbg.value(metadata i32 %28, i64 0, metadata !1633, metadata !614), !dbg !1696
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
  ], !dbg !1713

; <label>:41:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !1633, metadata !614), !dbg !1696
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1645, metadata !614), !dbg !1708
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !1645, metadata !614), !dbg !1708
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !1633, metadata !614), !dbg !1696
  br label %95, !dbg !1714

; <label>:42:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !1645, metadata !614), !dbg !1708
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !1633, metadata !614), !dbg !1696
  %43 = and i8 %36, 1, !dbg !1716
  %44 = icmp eq i8 %43, 0, !dbg !1716
  br i1 %44, label %45, label %95, !dbg !1714

; <label>:45:                                     ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !1718
  br i1 %46, label %95, label %47, !dbg !1722

; <label>:47:                                     ; preds = %45
  store i8 34, i8* %0, align 1, !dbg !1724, !tbaa !785
  br label %95, !dbg !1724

; <label>:48:                                     ; preds = %27, %27
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.66, i64 0, i64 0), i32 %28), !dbg !1726
  call void @llvm.dbg.value(metadata i8* %49, i64 0, metadata !1636, metadata !614), !dbg !1699
  %50 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.67, i64 0, i64 0), i32 %28), !dbg !1730
  call void @llvm.dbg.value(metadata i8* %50, i64 0, metadata !1637, metadata !614), !dbg !1700
  br label %51, !dbg !1731

; <label>:51:                                     ; preds = %27, %48
  %52 = phi i8* [ %49, %48 ], [ %29, %27 ]
  %53 = phi i8* [ %50, %48 ], [ %30, %27 ]
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !1637, metadata !614), !dbg !1700
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !1636, metadata !614), !dbg !1699
  %54 = and i8 %36, 1, !dbg !1732
  %55 = icmp eq i8 %54, 0, !dbg !1732
  br i1 %55, label %56, label %73, !dbg !1734

; <label>:56:                                     ; preds = %51
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !1641, metadata !614), !dbg !1703
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1639, metadata !614), !dbg !1701
  %57 = load i8, i8* %52, align 1, !dbg !1735, !tbaa !785
  %58 = icmp eq i8 %57, 0, !dbg !1739
  br i1 %58, label %73, label %59, !dbg !1739

; <label>:59:                                     ; preds = %56
  br label %60, !dbg !1741

; <label>:60:                                     ; preds = %59, %67
  %61 = phi i8 [ %70, %67 ], [ %57, %59 ]
  %62 = phi i8* [ %69, %67 ], [ %52, %59 ]
  %63 = phi i64 [ %68, %67 ], [ 0, %59 ]
  %64 = icmp ult i64 %63, %40, !dbg !1741
  br i1 %64, label %65, label %67, !dbg !1745

; <label>:65:                                     ; preds = %60
  %66 = getelementptr inbounds i8, i8* %0, i64 %63, !dbg !1747
  store i8 %61, i8* %66, align 1, !dbg !1747, !tbaa !785
  br label %67, !dbg !1747

; <label>:67:                                     ; preds = %65, %60
  %68 = add i64 %63, 1, !dbg !1749
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !1639, metadata !614), !dbg !1701
  %69 = getelementptr inbounds i8, i8* %62, i64 1, !dbg !1751
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !1641, metadata !614), !dbg !1703
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !1641, metadata !614), !dbg !1703
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !1639, metadata !614), !dbg !1701
  %70 = load i8, i8* %69, align 1, !dbg !1735, !tbaa !785
  %71 = icmp eq i8 %70, 0, !dbg !1739
  br i1 %71, label %72, label %60, !dbg !1739, !llvm.loop !1753

; <label>:72:                                     ; preds = %67
  br label %73, !dbg !1701

; <label>:73:                                     ; preds = %72, %56, %51
  %74 = phi i64 [ 0, %51 ], [ 0, %56 ], [ %68, %72 ]
  call void @llvm.dbg.value(metadata i64 %74, i64 0, metadata !1639, metadata !614), !dbg !1701
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1643, metadata !614), !dbg !1705
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !1641, metadata !614), !dbg !1703
  %75 = call i64 @strlen(i8* %53) #13, !dbg !1756
  call void @llvm.dbg.value(metadata i64 %75, i64 0, metadata !1642, metadata !614), !dbg !1704
  br label %95, !dbg !1757

; <label>:76:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1643, metadata !614), !dbg !1705
  br label %77, !dbg !1758

; <label>:77:                                     ; preds = %27, %76
  %78 = phi i8 [ %34, %27 ], [ 1, %76 ]
  call void @llvm.dbg.value(metadata i8 %78, i64 0, metadata !1643, metadata !614), !dbg !1705
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1645, metadata !614), !dbg !1708
  br label %79, !dbg !1759

; <label>:79:                                     ; preds = %27, %77
  %80 = phi i8 [ %34, %27 ], [ %78, %77 ]
  %81 = phi i8 [ %36, %27 ], [ 1, %77 ]
  call void @llvm.dbg.value(metadata i8 %81, i64 0, metadata !1645, metadata !614), !dbg !1708
  call void @llvm.dbg.value(metadata i8 %80, i64 0, metadata !1643, metadata !614), !dbg !1705
  %82 = and i8 %81, 1, !dbg !1760
  %83 = icmp eq i8 %82, 0, !dbg !1760
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1643, metadata !614), !dbg !1705
  %84 = select i1 %83, i8 1, i8 %80, !dbg !1762
  br label %85, !dbg !1762

; <label>:85:                                     ; preds = %79, %27
  %86 = phi i8 [ %34, %27 ], [ %84, %79 ]
  %87 = phi i8 [ %36, %27 ], [ %81, %79 ]
  call void @llvm.dbg.value(metadata i8 %87, i64 0, metadata !1645, metadata !614), !dbg !1708
  call void @llvm.dbg.value(metadata i8 %86, i64 0, metadata !1643, metadata !614), !dbg !1705
  call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !1633, metadata !614), !dbg !1696
  %88 = and i8 %87, 1, !dbg !1763
  %89 = icmp eq i8 %88, 0, !dbg !1763
  br i1 %89, label %90, label %95, !dbg !1765

; <label>:90:                                     ; preds = %85
  %91 = icmp eq i64 %40, 0, !dbg !1766
  br i1 %91, label %95, label %92, !dbg !1770

; <label>:92:                                     ; preds = %90
  store i8 39, i8* %0, align 1, !dbg !1772, !tbaa !785
  br label %95, !dbg !1772

; <label>:93:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1645, metadata !614), !dbg !1708
  br label %95, !dbg !1774

; <label>:94:                                     ; preds = %27
  call void @abort() #14, !dbg !1775
  unreachable, !dbg !1775

; <label>:95:                                     ; preds = %41, %85, %90, %92, %27, %42, %45, %47, %93, %73
  %96 = phi i32 [ 0, %93 ], [ %28, %73 ], [ 5, %47 ], [ 5, %45 ], [ 5, %42 ], [ 7, %27 ], [ 2, %92 ], [ 2, %90 ], [ 2, %85 ], [ 5, %41 ]
  %97 = phi i8* [ %29, %93 ], [ %52, %73 ], [ %29, %47 ], [ %29, %45 ], [ %29, %42 ], [ %29, %27 ], [ %29, %92 ], [ %29, %90 ], [ %29, %85 ], [ %29, %41 ]
  %98 = phi i8* [ %30, %93 ], [ %53, %73 ], [ %30, %47 ], [ %30, %45 ], [ %30, %42 ], [ %30, %27 ], [ %30, %92 ], [ %30, %90 ], [ %30, %85 ], [ %30, %41 ]
  %99 = phi i64 [ 0, %93 ], [ %74, %73 ], [ 1, %47 ], [ 1, %45 ], [ 0, %42 ], [ 0, %27 ], [ 1, %92 ], [ 1, %90 ], [ 0, %85 ], [ 0, %41 ]
  %100 = phi i8* [ %32, %93 ], [ %53, %73 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.68, i64 0, i64 0), %47 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.68, i64 0, i64 0), %45 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.68, i64 0, i64 0), %42 ], [ %32, %27 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.67, i64 0, i64 0), %92 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.67, i64 0, i64 0), %90 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.67, i64 0, i64 0), %85 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.68, i64 0, i64 0), %41 ]
  %101 = phi i64 [ %33, %93 ], [ %75, %73 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ %33, %27 ], [ 1, %92 ], [ 1, %90 ], [ 1, %85 ], [ 1, %41 ]
  %102 = phi i8 [ %34, %93 ], [ 1, %73 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ 1, %27 ], [ %86, %92 ], [ %86, %90 ], [ %86, %85 ], [ 1, %41 ]
  %103 = phi i8 [ 0, %93 ], [ %36, %73 ], [ %36, %47 ], [ %36, %45 ], [ %36, %42 ], [ 0, %27 ], [ %87, %92 ], [ %87, %90 ], [ %87, %85 ], [ 1, %41 ]
  call void @llvm.dbg.value(metadata i8 %103, i64 0, metadata !1645, metadata !614), !dbg !1708
  call void @llvm.dbg.value(metadata i8 %102, i64 0, metadata !1643, metadata !614), !dbg !1705
  call void @llvm.dbg.value(metadata i64 %101, i64 0, metadata !1642, metadata !614), !dbg !1704
  call void @llvm.dbg.value(metadata i8* %100, i64 0, metadata !1641, metadata !614), !dbg !1703
  call void @llvm.dbg.value(metadata i64 %99, i64 0, metadata !1639, metadata !614), !dbg !1701
  call void @llvm.dbg.value(metadata i8* %98, i64 0, metadata !1637, metadata !614), !dbg !1700
  call void @llvm.dbg.value(metadata i8* %97, i64 0, metadata !1636, metadata !614), !dbg !1699
  call void @llvm.dbg.value(metadata i32 %96, i64 0, metadata !1633, metadata !614), !dbg !1696
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1638, metadata !614), !dbg !1776
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
  br label %123, !dbg !1777

; <label>:123:                                    ; preds = %587, %95
  %124 = phi i64 [ 0, %95 ], [ %596, %587 ]
  %125 = phi i64 [ %99, %95 ], [ %589, %587 ]
  %126 = phi i64 [ %31, %95 ], [ %590, %587 ]
  %127 = phi i64 [ %35, %95 ], [ %591, %587 ]
  %128 = phi i8 [ %37, %95 ], [ %592, %587 ]
  %129 = phi i8 [ %38, %95 ], [ %593, %587 ]
  %130 = phi i8 [ %39, %95 ], [ %594, %587 ]
  %131 = phi i64 [ %40, %95 ], [ %595, %587 ]
  call void @llvm.dbg.value(metadata i64 %131, i64 0, metadata !1630, metadata !614), !dbg !1693
  call void @llvm.dbg.value(metadata i8 %130, i64 0, metadata !1648, metadata !614), !dbg !1711
  call void @llvm.dbg.value(metadata i8 %129, i64 0, metadata !1647, metadata !614), !dbg !1710
  call void @llvm.dbg.value(metadata i8 %128, i64 0, metadata !1646, metadata !614), !dbg !1709
  call void @llvm.dbg.value(metadata i64 %127, i64 0, metadata !1632, metadata !614), !dbg !1695
  call void @llvm.dbg.value(metadata i64 %126, i64 0, metadata !1640, metadata !614), !dbg !1702
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !1639, metadata !614), !dbg !1701
  call void @llvm.dbg.value(metadata i64 %124, i64 0, metadata !1638, metadata !614), !dbg !1776
  %132 = icmp eq i64 %127, -1, !dbg !1778
  br i1 %132, label %135, label %133, !dbg !1780

; <label>:133:                                    ; preds = %123
  %134 = icmp eq i64 %124, %127, !dbg !1781
  br i1 %134, label %597, label %139, !dbg !1783

; <label>:135:                                    ; preds = %123
  %136 = getelementptr inbounds i8, i8* %2, i64 %124, !dbg !1785
  %137 = load i8, i8* %136, align 1, !dbg !1785, !tbaa !785
  %138 = icmp eq i8 %137, 0, !dbg !1787
  br i1 %138, label %597, label %139, !dbg !1783

; <label>:139:                                    ; preds = %133, %135
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1654, metadata !614), !dbg !1788
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1655, metadata !614), !dbg !1789
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1656, metadata !614), !dbg !1790
  br i1 %109, label %140, label %155, !dbg !1791

; <label>:140:                                    ; preds = %139
  %141 = add i64 %124, %101, !dbg !1793
  %142 = and i1 %110, %132, !dbg !1795
  br i1 %142, label %143, label %145, !dbg !1795

; <label>:143:                                    ; preds = %140
  %144 = call i64 @strlen(i8* %2) #13, !dbg !1796
  call void @llvm.dbg.value(metadata i64 %144, i64 0, metadata !1632, metadata !614), !dbg !1695
  br label %145, !dbg !1797

; <label>:145:                                    ; preds = %140, %143
  %146 = phi i64 [ %144, %143 ], [ %127, %140 ]
  call void @llvm.dbg.value(metadata i64 %146, i64 0, metadata !1632, metadata !614), !dbg !1695
  %147 = icmp ugt i64 %141, %146, !dbg !1799
  br i1 %147, label %155, label %148, !dbg !1801

; <label>:148:                                    ; preds = %145
  %149 = getelementptr inbounds i8, i8* %2, i64 %124, !dbg !1802
  %150 = call i32 @memcmp(i8* %149, i8* %100, i64 %101) #13, !dbg !1803
  %151 = icmp ne i32 %150, 0, !dbg !1804
  %152 = or i1 %151, %112, !dbg !1804
  %153 = xor i1 %151, true, !dbg !1804
  %154 = zext i1 %153 to i8, !dbg !1804
  br i1 %152, label %155, label %644, !dbg !1804

; <label>:155:                                    ; preds = %148, %145, %139
  %156 = phi i64 [ %146, %148 ], [ %146, %145 ], [ %127, %139 ]
  %157 = phi i8 [ %154, %148 ], [ 0, %145 ], [ 0, %139 ]
  call void @llvm.dbg.value(metadata i8 %157, i64 0, metadata !1654, metadata !614), !dbg !1788
  call void @llvm.dbg.value(metadata i64 %156, i64 0, metadata !1632, metadata !614), !dbg !1695
  %158 = getelementptr inbounds i8, i8* %2, i64 %124, !dbg !1806
  %159 = load i8, i8* %158, align 1, !dbg !1806, !tbaa !785
  call void @llvm.dbg.value(metadata i8 %159, i64 0, metadata !1649, metadata !614), !dbg !1807
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
  ], !dbg !1808

; <label>:160:                                    ; preds = %155
  br i1 %105, label %161, label %209, !dbg !1809

; <label>:161:                                    ; preds = %160
  br i1 %112, label %162, label %644, !dbg !1810

; <label>:162:                                    ; preds = %161
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1655, metadata !614), !dbg !1789
  %163 = and i8 %128, 1, !dbg !1815
  %164 = icmp eq i8 %163, 0, !dbg !1815
  %165 = and i1 %114, %164, !dbg !1818
  br i1 %165, label %166, label %182, !dbg !1818

; <label>:166:                                    ; preds = %162
  %167 = icmp ult i64 %125, %131, !dbg !1820
  br i1 %167, label %168, label %170, !dbg !1825

; <label>:168:                                    ; preds = %166
  %169 = getelementptr inbounds i8, i8* %0, i64 %125, !dbg !1827
  store i8 39, i8* %169, align 1, !dbg !1827, !tbaa !785
  br label %170, !dbg !1827

; <label>:170:                                    ; preds = %168, %166
  %171 = add i64 %125, 1, !dbg !1829
  call void @llvm.dbg.value(metadata i64 %171, i64 0, metadata !1639, metadata !614), !dbg !1701
  %172 = icmp ult i64 %171, %131, !dbg !1831
  br i1 %172, label %173, label %175, !dbg !1835

; <label>:173:                                    ; preds = %170
  %174 = getelementptr inbounds i8, i8* %0, i64 %171, !dbg !1837
  store i8 36, i8* %174, align 1, !dbg !1837, !tbaa !785
  br label %175, !dbg !1837

; <label>:175:                                    ; preds = %173, %170
  %176 = add i64 %125, 2, !dbg !1839
  call void @llvm.dbg.value(metadata i64 %176, i64 0, metadata !1639, metadata !614), !dbg !1701
  %177 = icmp ult i64 %176, %131, !dbg !1841
  br i1 %177, label %178, label %180, !dbg !1845

; <label>:178:                                    ; preds = %175
  %179 = getelementptr inbounds i8, i8* %0, i64 %176, !dbg !1847
  store i8 39, i8* %179, align 1, !dbg !1847, !tbaa !785
  br label %180, !dbg !1847

; <label>:180:                                    ; preds = %178, %175
  %181 = add i64 %125, 3, !dbg !1849
  call void @llvm.dbg.value(metadata i64 %181, i64 0, metadata !1639, metadata !614), !dbg !1701
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1646, metadata !614), !dbg !1709
  br label %182, !dbg !1851

; <label>:182:                                    ; preds = %162, %180
  %183 = phi i64 [ %181, %180 ], [ %125, %162 ]
  %184 = phi i8 [ 1, %180 ], [ %128, %162 ]
  call void @llvm.dbg.value(metadata i8 %184, i64 0, metadata !1646, metadata !614), !dbg !1709
  call void @llvm.dbg.value(metadata i64 %183, i64 0, metadata !1639, metadata !614), !dbg !1701
  %185 = icmp ult i64 %183, %131, !dbg !1853
  br i1 %185, label %186, label %188, !dbg !1857

; <label>:186:                                    ; preds = %182
  %187 = getelementptr inbounds i8, i8* %0, i64 %183, !dbg !1859
  store i8 92, i8* %187, align 1, !dbg !1859, !tbaa !785
  br label %188, !dbg !1859

; <label>:188:                                    ; preds = %186, %182
  %189 = add i64 %183, 1, !dbg !1861
  call void @llvm.dbg.value(metadata i64 %189, i64 0, metadata !1639, metadata !614), !dbg !1701
  br i1 %106, label %190, label %476, !dbg !1863

; <label>:190:                                    ; preds = %188
  %191 = add i64 %124, 1, !dbg !1865
  %192 = icmp ult i64 %191, %156, !dbg !1867
  br i1 %192, label %193, label %476, !dbg !1868

; <label>:193:                                    ; preds = %190
  %194 = getelementptr inbounds i8, i8* %2, i64 %191, !dbg !1869
  %195 = load i8, i8* %194, align 1, !dbg !1869, !tbaa !785
  %196 = add i8 %195, -48, !dbg !1871
  %197 = icmp ult i8 %196, 10, !dbg !1871
  br i1 %197, label %198, label %476, !dbg !1871

; <label>:198:                                    ; preds = %193
  %199 = icmp ult i64 %189, %131, !dbg !1872
  br i1 %199, label %200, label %202, !dbg !1877

; <label>:200:                                    ; preds = %198
  %201 = getelementptr inbounds i8, i8* %0, i64 %189, !dbg !1879
  store i8 48, i8* %201, align 1, !dbg !1879, !tbaa !785
  br label %202, !dbg !1879

; <label>:202:                                    ; preds = %200, %198
  %203 = add i64 %183, 2, !dbg !1881
  call void @llvm.dbg.value(metadata i64 %203, i64 0, metadata !1639, metadata !614), !dbg !1701
  %204 = icmp ult i64 %203, %131, !dbg !1883
  br i1 %204, label %205, label %207, !dbg !1887

; <label>:205:                                    ; preds = %202
  %206 = getelementptr inbounds i8, i8* %0, i64 %203, !dbg !1889
  store i8 48, i8* %206, align 1, !dbg !1889, !tbaa !785
  br label %207, !dbg !1889

; <label>:207:                                    ; preds = %205, %202
  %208 = add i64 %183, 3, !dbg !1891
  call void @llvm.dbg.value(metadata i64 %208, i64 0, metadata !1639, metadata !614), !dbg !1701
  br label %476, !dbg !1893

; <label>:209:                                    ; preds = %160
  br i1 %23, label %476, label %587, !dbg !1894

; <label>:210:                                    ; preds = %155
  switch i32 %96, label %476 [
    i32 2, label %211
    i32 5, label %212
  ], !dbg !1895

; <label>:211:                                    ; preds = %210
  br i1 %112, label %476, label %644, !dbg !1896

; <label>:212:                                    ; preds = %210
  br i1 %25, label %476, label %213, !dbg !1898

; <label>:213:                                    ; preds = %212
  %214 = add i64 %124, 2, !dbg !1900
  %215 = icmp ult i64 %214, %156, !dbg !1902
  br i1 %215, label %216, label %476, !dbg !1903

; <label>:216:                                    ; preds = %213
  %217 = add i64 %124, 1, !dbg !1904
  %218 = getelementptr inbounds i8, i8* %2, i64 %217, !dbg !1906
  %219 = load i8, i8* %218, align 1, !dbg !1906, !tbaa !785
  %220 = icmp eq i8 %219, 63, !dbg !1907
  br i1 %220, label %221, label %476, !dbg !1908

; <label>:221:                                    ; preds = %216
  %222 = getelementptr inbounds i8, i8* %2, i64 %214, !dbg !1910
  %223 = load i8, i8* %222, align 1, !dbg !1910, !tbaa !785
  %224 = sext i8 %223 to i32, !dbg !1910
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
  ], !dbg !1911

; <label>:225:                                    ; preds = %221, %221, %221, %221, %221, %221, %221, %221, %221
  br i1 %112, label %226, label %644, !dbg !1912

; <label>:226:                                    ; preds = %225
  call void @llvm.dbg.value(metadata i8 %223, i64 0, metadata !1649, metadata !614), !dbg !1807
  call void @llvm.dbg.value(metadata i64 %214, i64 0, metadata !1638, metadata !614), !dbg !1776
  %227 = icmp ult i64 %125, %131, !dbg !1914
  br i1 %227, label %228, label %230, !dbg !1918

; <label>:228:                                    ; preds = %226
  %229 = getelementptr inbounds i8, i8* %0, i64 %125, !dbg !1920
  store i8 63, i8* %229, align 1, !dbg !1920, !tbaa !785
  br label %230, !dbg !1920

; <label>:230:                                    ; preds = %228, %226
  %231 = add i64 %125, 1, !dbg !1922
  call void @llvm.dbg.value(metadata i64 %231, i64 0, metadata !1639, metadata !614), !dbg !1701
  %232 = icmp ult i64 %231, %131, !dbg !1924
  br i1 %232, label %233, label %235, !dbg !1928

; <label>:233:                                    ; preds = %230
  %234 = getelementptr inbounds i8, i8* %0, i64 %231, !dbg !1930
  store i8 34, i8* %234, align 1, !dbg !1930, !tbaa !785
  br label %235, !dbg !1930

; <label>:235:                                    ; preds = %233, %230
  %236 = add i64 %125, 2, !dbg !1932
  call void @llvm.dbg.value(metadata i64 %236, i64 0, metadata !1639, metadata !614), !dbg !1701
  %237 = icmp ult i64 %236, %131, !dbg !1934
  br i1 %237, label %238, label %240, !dbg !1938

; <label>:238:                                    ; preds = %235
  %239 = getelementptr inbounds i8, i8* %0, i64 %236, !dbg !1940
  store i8 34, i8* %239, align 1, !dbg !1940, !tbaa !785
  br label %240, !dbg !1940

; <label>:240:                                    ; preds = %238, %235
  %241 = add i64 %125, 3, !dbg !1942
  call void @llvm.dbg.value(metadata i64 %241, i64 0, metadata !1639, metadata !614), !dbg !1701
  %242 = icmp ult i64 %241, %131, !dbg !1944
  br i1 %242, label %243, label %245, !dbg !1948

; <label>:243:                                    ; preds = %240
  %244 = getelementptr inbounds i8, i8* %0, i64 %241, !dbg !1950
  store i8 63, i8* %244, align 1, !dbg !1950, !tbaa !785
  br label %245, !dbg !1950

; <label>:245:                                    ; preds = %243, %240
  %246 = add i64 %125, 4, !dbg !1952
  call void @llvm.dbg.value(metadata i64 %246, i64 0, metadata !1639, metadata !614), !dbg !1701
  br label %476, !dbg !1954

; <label>:247:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 98, i64 0, metadata !1653, metadata !614), !dbg !1955
  br label %257, !dbg !1956

; <label>:248:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 102, i64 0, metadata !1653, metadata !614), !dbg !1955
  br label %257, !dbg !1957

; <label>:249:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 114, i64 0, metadata !1653, metadata !614), !dbg !1955
  br label %255, !dbg !1958

; <label>:250:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 116, i64 0, metadata !1653, metadata !614), !dbg !1955
  br label %255, !dbg !1959

; <label>:251:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 118, i64 0, metadata !1653, metadata !614), !dbg !1955
  br label %257, !dbg !1960

; <label>:252:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 %159, i64 0, metadata !1653, metadata !614), !dbg !1955
  br i1 %114, label %253, label %254, !dbg !1961

; <label>:253:                                    ; preds = %252
  br i1 %112, label %542, label %644, !dbg !1962

; <label>:254:                                    ; preds = %252
  br i1 %122, label %542, label %255, !dbg !1965

; <label>:255:                                    ; preds = %254, %155, %250, %249
  %256 = phi i8 [ 92, %254 ], [ 116, %250 ], [ 114, %249 ], [ 110, %155 ]
  call void @llvm.dbg.value(metadata i8 %256, i64 0, metadata !1653, metadata !614), !dbg !1955
  br i1 %118, label %257, label %644, !dbg !1967

; <label>:257:                                    ; preds = %255, %155, %251, %248, %247
  %258 = phi i8 [ %256, %255 ], [ 118, %251 ], [ 102, %248 ], [ 98, %247 ], [ 97, %155 ]
  call void @llvm.dbg.value(metadata i8 %258, i64 0, metadata !1653, metadata !614), !dbg !1955
  br i1 %105, label %503, label %476, !dbg !1969

; <label>:259:                                    ; preds = %155, %155
  %260 = icmp eq i64 %156, -1, !dbg !1970
  br i1 %260, label %261, label %266, !dbg !1972

; <label>:261:                                    ; preds = %259
  %262 = load i8, i8* %26, align 1, !dbg !1973, !tbaa !785
  %263 = icmp ne i8 %262, 0, !dbg !1975
  %264 = icmp ne i64 %124, 0, !dbg !1976
  %265 = or i1 %264, %263, !dbg !1978
  br i1 %265, label %476, label %272, !dbg !1978

; <label>:266:                                    ; preds = %259
  %267 = icmp ne i64 %156, 1, !dbg !1979
  %268 = icmp ne i64 %124, 0, !dbg !1976
  %269 = or i1 %268, %267, !dbg !1981
  br i1 %269, label %476, label %272, !dbg !1981

; <label>:270:                                    ; preds = %155, %155
  %271 = icmp eq i64 %124, 0, !dbg !1976
  br i1 %271, label %272, label %476, !dbg !1983

; <label>:272:                                    ; preds = %270, %266, %261, %155
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1656, metadata !614), !dbg !1790
  br label %273, !dbg !1984

; <label>:273:                                    ; preds = %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %272
  %274 = phi i8 [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 1, %272 ]
  call void @llvm.dbg.value(metadata i8 %274, i64 0, metadata !1656, metadata !614), !dbg !1790
  br i1 %118, label %476, label %644, !dbg !1985

; <label>:275:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1647, metadata !614), !dbg !1710
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1656, metadata !614), !dbg !1790
  br i1 %114, label %276, label %476, !dbg !1987

; <label>:276:                                    ; preds = %275
  br i1 %112, label %277, label %644, !dbg !1988

; <label>:277:                                    ; preds = %276
  %278 = icmp eq i64 %131, 0, !dbg !1991
  %279 = icmp ne i64 %126, 0, !dbg !1993
  %280 = or i1 %279, %278, !dbg !1995
  call void @llvm.dbg.value(metadata i64 %131, i64 0, metadata !1640, metadata !614), !dbg !1702
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1630, metadata !614), !dbg !1693
  %281 = select i1 %280, i64 %126, i64 %131, !dbg !1995
  %282 = select i1 %280, i64 %131, i64 0, !dbg !1995
  call void @llvm.dbg.value(metadata i64 %282, i64 0, metadata !1630, metadata !614), !dbg !1693
  call void @llvm.dbg.value(metadata i64 %281, i64 0, metadata !1640, metadata !614), !dbg !1702
  %283 = icmp ult i64 %125, %282, !dbg !1996
  br i1 %283, label %284, label %286, !dbg !2000

; <label>:284:                                    ; preds = %277
  %285 = getelementptr inbounds i8, i8* %0, i64 %125, !dbg !2002
  store i8 39, i8* %285, align 1, !dbg !2002, !tbaa !785
  br label %286, !dbg !2002

; <label>:286:                                    ; preds = %284, %277
  %287 = add i64 %125, 1, !dbg !2004
  call void @llvm.dbg.value(metadata i64 %287, i64 0, metadata !1639, metadata !614), !dbg !1701
  %288 = icmp ult i64 %287, %282, !dbg !2006
  br i1 %288, label %289, label %291, !dbg !2010

; <label>:289:                                    ; preds = %286
  %290 = getelementptr inbounds i8, i8* %0, i64 %287, !dbg !2012
  store i8 92, i8* %290, align 1, !dbg !2012, !tbaa !785
  br label %291, !dbg !2012

; <label>:291:                                    ; preds = %289, %286
  %292 = add i64 %125, 2, !dbg !2014
  call void @llvm.dbg.value(metadata i64 %292, i64 0, metadata !1639, metadata !614), !dbg !1701
  %293 = icmp ult i64 %292, %282, !dbg !2016
  br i1 %293, label %294, label %296, !dbg !2020

; <label>:294:                                    ; preds = %291
  %295 = getelementptr inbounds i8, i8* %0, i64 %292, !dbg !2022
  store i8 39, i8* %295, align 1, !dbg !2022, !tbaa !785
  br label %296, !dbg !2022

; <label>:296:                                    ; preds = %294, %291
  %297 = add i64 %125, 3, !dbg !2024
  call void @llvm.dbg.value(metadata i64 %297, i64 0, metadata !1639, metadata !614), !dbg !1701
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1646, metadata !614), !dbg !1709
  br label %476, !dbg !2026

; <label>:298:                                    ; preds = %155
  br i1 %14, label %299, label %308, !dbg !2027

; <label>:299:                                    ; preds = %298
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1657, metadata !614), !dbg !2028
  %300 = tail call i16** @__ctype_b_loc() #1, !dbg !2029
  %301 = load i16*, i16** %300, align 8, !dbg !2029, !tbaa !622
  %302 = zext i8 %159 to i64, !dbg !2029
  %303 = getelementptr inbounds i16, i16* %301, i64 %302, !dbg !2029
  %304 = load i16, i16* %303, align 2, !dbg !2029, !tbaa !2031
  %305 = lshr i16 %304, 14, !dbg !2033
  %306 = trunc i16 %305 to i8, !dbg !2033
  %307 = and i8 %306, 1, !dbg !2033
  call void @llvm.dbg.value(metadata i8 %307, i64 0, metadata !1660, metadata !614), !dbg !2034
  br label %368, !dbg !2035

; <label>:308:                                    ; preds = %298
  call void @llvm.lifetime.start(i64 8, i8* nonnull %18) #10, !dbg !2036
  store i64 0, i64* %10, align 8, !dbg !2037
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1657, metadata !614), !dbg !2028
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1660, metadata !614), !dbg !2034
  %309 = icmp eq i64 %156, -1, !dbg !2038
  br i1 %309, label %310, label %312, !dbg !2040, !llvm.loop !2041

; <label>:310:                                    ; preds = %308
  %311 = call i64 @strlen(i8* nonnull %2) #13, !dbg !2044
  call void @llvm.dbg.value(metadata i64 %311, i64 0, metadata !1632, metadata !614), !dbg !1695
  br label %312, !dbg !2045, !llvm.loop !2041

; <label>:312:                                    ; preds = %310, %308
  %313 = phi i64 [ %156, %308 ], [ %311, %310 ]
  br label %314, !dbg !2034

; <label>:314:                                    ; preds = %312, %355
  %315 = phi i64 [ %360, %355 ], [ 0, %312 ]
  %316 = phi i8 [ %359, %355 ], [ 1, %312 ]
  call void @llvm.dbg.value(metadata i8 %316, i64 0, metadata !1660, metadata !614), !dbg !2034
  call void @llvm.dbg.value(metadata i64 %315, i64 0, metadata !1657, metadata !614), !dbg !2028
  call void @llvm.dbg.value(metadata i64 %313, i64 0, metadata !1632, metadata !614), !dbg !1695
  call void @llvm.lifetime.start(i64 4, i8* nonnull %19) #10, !dbg !2046
  %317 = add i64 %315, %124, !dbg !2047
  %318 = getelementptr inbounds i8, i8* %2, i64 %317, !dbg !2048
  %319 = sub i64 %313, %317, !dbg !2049
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !1661, metadata !851), !dbg !2050
  call void @llvm.dbg.value(metadata i32* %12, i64 0, metadata !1678, metadata !851), !dbg !2051
  %320 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %318, i64 %319, %struct.__mbstate_t* nonnull %11) #10, !dbg !2052
  call void @llvm.dbg.value(metadata i64 %320, i64 0, metadata !1681, metadata !614), !dbg !2053
  switch i64 %320, label %334 [
    i64 0, label %350
    i64 -1, label %347
    i64 -2, label %321
  ], !dbg !2054

; <label>:321:                                    ; preds = %314
  call void @llvm.dbg.value(metadata i64 %315, i64 0, metadata !1657, metadata !614), !dbg !2028
  %322 = icmp ugt i64 %313, %317, !dbg !2055
  br i1 %322, label %323, label %351, !dbg !2058

; <label>:323:                                    ; preds = %321
  br label %324, !dbg !2059

; <label>:324:                                    ; preds = %323, %330
  %325 = phi i64 [ %332, %330 ], [ %317, %323 ]
  %326 = phi i64 [ %331, %330 ], [ %315, %323 ]
  %327 = getelementptr inbounds i8, i8* %2, i64 %325, !dbg !2059
  %328 = load i8, i8* %327, align 1, !dbg !2059, !tbaa !785
  %329 = icmp eq i8 %328, 0, !dbg !2061
  br i1 %329, label %348, label %330, !dbg !2062

; <label>:330:                                    ; preds = %324
  %331 = add i64 %326, 1, !dbg !2064
  call void @llvm.dbg.value(metadata i64 %331, i64 0, metadata !1657, metadata !614), !dbg !2028
  call void @llvm.dbg.value(metadata i64 %331, i64 0, metadata !1657, metadata !614), !dbg !2028
  %332 = add i64 %331, %124, !dbg !2065
  %333 = icmp ult i64 %332, %313, !dbg !2055
  br i1 %333, label %324, label %348, !dbg !2058, !llvm.loop !2066

; <label>:334:                                    ; preds = %314
  %335 = icmp ugt i64 %320, 1, !dbg !2068
  %336 = and i1 %116, %335, !dbg !2072
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1682, metadata !614), !dbg !2073
  br i1 %336, label %337, label %355, !dbg !2072

; <label>:337:                                    ; preds = %334
  br label %338, !dbg !2074

; <label>:338:                                    ; preds = %337, %344
  %339 = phi i64 [ %345, %344 ], [ 1, %337 ]
  %340 = add i64 %339, %317, !dbg !2074
  %341 = getelementptr inbounds i8, i8* %2, i64 %340, !dbg !2075
  %342 = load i8, i8* %341, align 1, !dbg !2075, !tbaa !785
  %343 = sext i8 %342 to i32, !dbg !2075
  switch i32 %343, label %344 [
    i32 91, label %367
    i32 92, label %367
    i32 94, label %367
    i32 96, label %367
    i32 124, label %367
  ], !dbg !2076

; <label>:344:                                    ; preds = %338
  %345 = add nuw i64 %339, 1, !dbg !2077
  call void @llvm.dbg.value(metadata i64 %345, i64 0, metadata !1682, metadata !614), !dbg !2073
  call void @llvm.dbg.value(metadata i64 %345, i64 0, metadata !1682, metadata !614), !dbg !2073
  %346 = icmp ult i64 %345, %320, !dbg !2068
  br i1 %346, label %338, label %354, !dbg !2079, !llvm.loop !2081

; <label>:347:                                    ; preds = %314
  br label %351, !dbg !2034

; <label>:348:                                    ; preds = %324, %330
  %349 = phi i64 [ %331, %330 ], [ %326, %324 ]
  br label %351, !dbg !2034

; <label>:350:                                    ; preds = %314
  br label %351, !dbg !2034

; <label>:351:                                    ; preds = %350, %348, %347, %321
  %352 = phi i64 [ %315, %321 ], [ %315, %347 ], [ %349, %348 ], [ %315, %350 ]
  %353 = phi i8 [ 0, %321 ], [ 0, %347 ], [ 0, %348 ], [ %316, %350 ]
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !1660, metadata !614), !dbg !2034
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !1657, metadata !614), !dbg !2028
  call void @llvm.lifetime.end(i64 4, i8* nonnull %19) #10, !dbg !2084
  br label %364

; <label>:354:                                    ; preds = %344
  br label %355, !dbg !2085

; <label>:355:                                    ; preds = %354, %334
  %356 = load i32, i32* %12, align 4, !dbg !2085, !tbaa !776
  call void @llvm.dbg.value(metadata i32 %356, i64 0, metadata !1678, metadata !614), !dbg !2051
  %357 = call i32 @iswprint(i32 %356) #10, !dbg !2087
  %358 = icmp eq i32 %357, 0, !dbg !2087
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1660, metadata !614), !dbg !2034
  %359 = select i1 %358, i8 0, i8 %316, !dbg !2088
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !1660, metadata !614), !dbg !2034
  %360 = add i64 %320, %315, !dbg !2089
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !1657, metadata !614), !dbg !2028
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !1660, metadata !614), !dbg !2034
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !1657, metadata !614), !dbg !2028
  call void @llvm.lifetime.end(i64 4, i8* nonnull %19) #10, !dbg !2084
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !1661, metadata !851), !dbg !2050
  %361 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #13, !dbg !2090
  %362 = icmp eq i32 %361, 0, !dbg !2091
  br i1 %362, label %314, label %363, !dbg !2092, !llvm.loop !2041

; <label>:363:                                    ; preds = %355
  br label %364, !dbg !2094

; <label>:364:                                    ; preds = %363, %351
  %365 = phi i8 [ %353, %351 ], [ %359, %363 ]
  %366 = phi i64 [ %352, %351 ], [ %360, %363 ]
  call void @llvm.lifetime.end(i64 8, i8* nonnull %18) #10, !dbg !2094
  br label %368

; <label>:367:                                    ; preds = %338, %338, %338, %338, %338
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !1660, metadata !614), !dbg !2034
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !1657, metadata !614), !dbg !2028
  call void @llvm.lifetime.end(i64 4, i8* nonnull %19) #10, !dbg !2084
  call void @llvm.lifetime.end(i64 8, i8* nonnull %18) #10, !dbg !2094
  br label %649

; <label>:368:                                    ; preds = %364, %299
  %369 = phi i64 [ %156, %299 ], [ %313, %364 ]
  %370 = phi i64 [ 1, %299 ], [ %366, %364 ]
  %371 = phi i8 [ %307, %299 ], [ %365, %364 ]
  call void @llvm.dbg.value(metadata i8 %371, i64 0, metadata !1660, metadata !614), !dbg !2034
  call void @llvm.dbg.value(metadata i64 %370, i64 0, metadata !1657, metadata !614), !dbg !2028
  call void @llvm.dbg.value(metadata i64 %369, i64 0, metadata !1632, metadata !614), !dbg !1695
  %372 = and i8 %371, 1, !dbg !2095
  %373 = icmp ne i8 %372, 0, !dbg !2095
  call void @llvm.dbg.value(metadata i8 %372, i64 0, metadata !1656, metadata !614), !dbg !1790
  %374 = icmp ult i64 %370, 2, !dbg !2096
  %375 = or i1 %373, %113, !dbg !2097
  %376 = and i1 %374, %375, !dbg !2099
  br i1 %376, label %476, label %377, !dbg !2099

; <label>:377:                                    ; preds = %368
  %378 = add i64 %370, %124, !dbg !2100
  call void @llvm.dbg.value(metadata i64 %378, i64 0, metadata !1689, metadata !614), !dbg !2101
  br label %379, !dbg !2102

; <label>:379:                                    ; preds = %472, %377
  %380 = phi i64 [ %124, %377 ], [ %447, %472 ]
  %381 = phi i64 [ %125, %377 ], [ %473, %472 ]
  %382 = phi i8 [ %128, %377 ], [ %468, %472 ]
  %383 = phi i8 [ %159, %377 ], [ %475, %472 ]
  %384 = phi i8 [ %157, %377 ], [ %445, %472 ]
  %385 = phi i8 [ 0, %377 ], [ %446, %472 ]
  call void @llvm.dbg.value(metadata i8 %385, i64 0, metadata !1655, metadata !614), !dbg !1789
  call void @llvm.dbg.value(metadata i8 %384, i64 0, metadata !1654, metadata !614), !dbg !1788
  call void @llvm.dbg.value(metadata i8 %383, i64 0, metadata !1649, metadata !614), !dbg !1807
  call void @llvm.dbg.value(metadata i8 %382, i64 0, metadata !1646, metadata !614), !dbg !1709
  call void @llvm.dbg.value(metadata i64 %381, i64 0, metadata !1639, metadata !614), !dbg !1701
  call void @llvm.dbg.value(metadata i64 %380, i64 0, metadata !1638, metadata !614), !dbg !1776
  br i1 %375, label %432, label %386, !dbg !2103

; <label>:386:                                    ; preds = %379
  br i1 %112, label %387, label %643, !dbg !2108

; <label>:387:                                    ; preds = %386
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1655, metadata !614), !dbg !1789
  %388 = and i8 %382, 1, !dbg !2112
  %389 = icmp eq i8 %388, 0, !dbg !2112
  %390 = and i1 %114, %389, !dbg !2115
  br i1 %390, label %391, label %407, !dbg !2115

; <label>:391:                                    ; preds = %387
  %392 = icmp ult i64 %381, %131, !dbg !2117
  br i1 %392, label %393, label %395, !dbg !2122

; <label>:393:                                    ; preds = %391
  %394 = getelementptr inbounds i8, i8* %0, i64 %381, !dbg !2124
  store i8 39, i8* %394, align 1, !dbg !2124, !tbaa !785
  br label %395, !dbg !2124

; <label>:395:                                    ; preds = %393, %391
  %396 = add i64 %381, 1, !dbg !2126
  call void @llvm.dbg.value(metadata i64 %396, i64 0, metadata !1639, metadata !614), !dbg !1701
  %397 = icmp ult i64 %396, %131, !dbg !2128
  br i1 %397, label %398, label %400, !dbg !2132

; <label>:398:                                    ; preds = %395
  %399 = getelementptr inbounds i8, i8* %0, i64 %396, !dbg !2134
  store i8 36, i8* %399, align 1, !dbg !2134, !tbaa !785
  br label %400, !dbg !2134

; <label>:400:                                    ; preds = %398, %395
  %401 = add i64 %381, 2, !dbg !2136
  call void @llvm.dbg.value(metadata i64 %401, i64 0, metadata !1639, metadata !614), !dbg !1701
  %402 = icmp ult i64 %401, %131, !dbg !2138
  br i1 %402, label %403, label %405, !dbg !2142

; <label>:403:                                    ; preds = %400
  %404 = getelementptr inbounds i8, i8* %0, i64 %401, !dbg !2144
  store i8 39, i8* %404, align 1, !dbg !2144, !tbaa !785
  br label %405, !dbg !2144

; <label>:405:                                    ; preds = %403, %400
  %406 = add i64 %381, 3, !dbg !2146
  call void @llvm.dbg.value(metadata i64 %406, i64 0, metadata !1639, metadata !614), !dbg !1701
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1646, metadata !614), !dbg !1709
  br label %407, !dbg !2148

; <label>:407:                                    ; preds = %387, %405
  %408 = phi i64 [ %406, %405 ], [ %381, %387 ]
  %409 = phi i8 [ 1, %405 ], [ %382, %387 ]
  call void @llvm.dbg.value(metadata i8 %409, i64 0, metadata !1646, metadata !614), !dbg !1709
  call void @llvm.dbg.value(metadata i64 %408, i64 0, metadata !1639, metadata !614), !dbg !1701
  %410 = icmp ult i64 %408, %131, !dbg !2150
  br i1 %410, label %411, label %413, !dbg !2154

; <label>:411:                                    ; preds = %407
  %412 = getelementptr inbounds i8, i8* %0, i64 %408, !dbg !2156
  store i8 92, i8* %412, align 1, !dbg !2156, !tbaa !785
  br label %413, !dbg !2156

; <label>:413:                                    ; preds = %411, %407
  %414 = add i64 %408, 1, !dbg !2158
  call void @llvm.dbg.value(metadata i64 %414, i64 0, metadata !1639, metadata !614), !dbg !1701
  %415 = icmp ult i64 %414, %131, !dbg !2160
  br i1 %415, label %416, label %420, !dbg !2164

; <label>:416:                                    ; preds = %413
  %417 = lshr i8 %383, 6, !dbg !2166
  %418 = or i8 %417, 48, !dbg !2166
  %419 = getelementptr inbounds i8, i8* %0, i64 %414, !dbg !2166
  store i8 %418, i8* %419, align 1, !dbg !2166, !tbaa !785
  br label %420, !dbg !2166

; <label>:420:                                    ; preds = %416, %413
  %421 = add i64 %408, 2, !dbg !2168
  call void @llvm.dbg.value(metadata i64 %421, i64 0, metadata !1639, metadata !614), !dbg !1701
  %422 = icmp ult i64 %421, %131, !dbg !2170
  br i1 %422, label %423, label %428, !dbg !2174

; <label>:423:                                    ; preds = %420
  %424 = lshr i8 %383, 3, !dbg !2176
  %425 = and i8 %424, 7, !dbg !2176
  %426 = or i8 %425, 48, !dbg !2176
  %427 = getelementptr inbounds i8, i8* %0, i64 %421, !dbg !2176
  store i8 %426, i8* %427, align 1, !dbg !2176, !tbaa !785
  br label %428, !dbg !2176

; <label>:428:                                    ; preds = %423, %420
  %429 = add i64 %408, 3, !dbg !2178
  call void @llvm.dbg.value(metadata i64 %429, i64 0, metadata !1639, metadata !614), !dbg !1701
  %430 = and i8 %383, 7, !dbg !2180
  %431 = or i8 %430, 48, !dbg !2181
  call void @llvm.dbg.value(metadata i8 %431, i64 0, metadata !1649, metadata !614), !dbg !1807
  br label %441, !dbg !2182

; <label>:432:                                    ; preds = %379
  %433 = and i8 %384, 1, !dbg !2183
  %434 = icmp eq i8 %433, 0, !dbg !2183
  br i1 %434, label %441, label %435, !dbg !2185

; <label>:435:                                    ; preds = %432
  %436 = icmp ult i64 %381, %131, !dbg !2186
  br i1 %436, label %437, label %439, !dbg !2191

; <label>:437:                                    ; preds = %435
  %438 = getelementptr inbounds i8, i8* %0, i64 %381, !dbg !2193
  store i8 92, i8* %438, align 1, !dbg !2193, !tbaa !785
  br label %439, !dbg !2193

; <label>:439:                                    ; preds = %437, %435
  %440 = add i64 %381, 1, !dbg !2195
  call void @llvm.dbg.value(metadata i64 %440, i64 0, metadata !1639, metadata !614), !dbg !1701
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1654, metadata !614), !dbg !1788
  br label %441, !dbg !2197

; <label>:441:                                    ; preds = %432, %439, %428
  %442 = phi i64 [ %440, %439 ], [ %381, %432 ], [ %429, %428 ]
  %443 = phi i8 [ %382, %439 ], [ %382, %432 ], [ %409, %428 ]
  %444 = phi i8 [ %383, %439 ], [ %383, %432 ], [ %431, %428 ]
  %445 = phi i8 [ 0, %439 ], [ %384, %432 ], [ %384, %428 ]
  %446 = phi i8 [ %385, %439 ], [ %385, %432 ], [ 1, %428 ]
  call void @llvm.dbg.value(metadata i8 %446, i64 0, metadata !1655, metadata !614), !dbg !1789
  call void @llvm.dbg.value(metadata i8 %445, i64 0, metadata !1654, metadata !614), !dbg !1788
  call void @llvm.dbg.value(metadata i8 %444, i64 0, metadata !1649, metadata !614), !dbg !1807
  call void @llvm.dbg.value(metadata i8 %443, i64 0, metadata !1646, metadata !614), !dbg !1709
  call void @llvm.dbg.value(metadata i64 %442, i64 0, metadata !1639, metadata !614), !dbg !1701
  %447 = add i64 %380, 1, !dbg !2198
  %448 = icmp ugt i64 %378, %447, !dbg !2200
  br i1 %448, label %449, label %541, !dbg !2201

; <label>:449:                                    ; preds = %441
  %450 = and i8 %443, 1, !dbg !2202
  %451 = icmp ne i8 %450, 0, !dbg !2202
  %452 = and i8 %446, 1, !dbg !2206
  %453 = icmp eq i8 %452, 0, !dbg !2206
  %454 = and i1 %451, %453, !dbg !2202
  br i1 %454, label %455, label %466, !dbg !2202

; <label>:455:                                    ; preds = %449
  %456 = icmp ult i64 %442, %131, !dbg !2208
  br i1 %456, label %457, label %459, !dbg !2213

; <label>:457:                                    ; preds = %455
  %458 = getelementptr inbounds i8, i8* %0, i64 %442, !dbg !2215
  store i8 39, i8* %458, align 1, !dbg !2215, !tbaa !785
  br label %459, !dbg !2215

; <label>:459:                                    ; preds = %457, %455
  %460 = add i64 %442, 1, !dbg !2217
  call void @llvm.dbg.value(metadata i64 %460, i64 0, metadata !1639, metadata !614), !dbg !1701
  %461 = icmp ult i64 %460, %131, !dbg !2219
  br i1 %461, label %462, label %464, !dbg !2223

; <label>:462:                                    ; preds = %459
  %463 = getelementptr inbounds i8, i8* %0, i64 %460, !dbg !2225
  store i8 39, i8* %463, align 1, !dbg !2225, !tbaa !785
  br label %464, !dbg !2225

; <label>:464:                                    ; preds = %462, %459
  %465 = add i64 %442, 2, !dbg !2227
  call void @llvm.dbg.value(metadata i64 %465, i64 0, metadata !1639, metadata !614), !dbg !1701
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1646, metadata !614), !dbg !1709
  br label %466, !dbg !2229

; <label>:466:                                    ; preds = %449, %464
  %467 = phi i64 [ %465, %464 ], [ %442, %449 ]
  %468 = phi i8 [ 0, %464 ], [ %443, %449 ]
  call void @llvm.dbg.value(metadata i8 %468, i64 0, metadata !1646, metadata !614), !dbg !1709
  call void @llvm.dbg.value(metadata i64 %467, i64 0, metadata !1639, metadata !614), !dbg !1701
  %469 = icmp ult i64 %467, %131, !dbg !2231
  br i1 %469, label %470, label %472, !dbg !2235

; <label>:470:                                    ; preds = %466
  %471 = getelementptr inbounds i8, i8* %0, i64 %467, !dbg !2237
  store i8 %444, i8* %471, align 1, !dbg !2237, !tbaa !785
  br label %472, !dbg !2237

; <label>:472:                                    ; preds = %470, %466
  %473 = add i64 %467, 1, !dbg !2239
  call void @llvm.dbg.value(metadata i64 %473, i64 0, metadata !1639, metadata !614), !dbg !1701
  call void @llvm.dbg.value(metadata i64 %447, i64 0, metadata !1638, metadata !614), !dbg !1776
  %474 = getelementptr inbounds i8, i8* %2, i64 %447, !dbg !2241
  %475 = load i8, i8* %474, align 1, !dbg !2241, !tbaa !785
  call void @llvm.dbg.value(metadata i8 %475, i64 0, metadata !1649, metadata !614), !dbg !1807
  br label %379, !dbg !2242, !llvm.loop !2244

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
  call void @llvm.dbg.value(metadata i64 %486, i64 0, metadata !1630, metadata !614), !dbg !1693
  call void @llvm.dbg.value(metadata i8 %485, i64 0, metadata !1656, metadata !614), !dbg !1790
  call void @llvm.dbg.value(metadata i8 %484, i64 0, metadata !1655, metadata !614), !dbg !1789
  call void @llvm.dbg.value(metadata i8 %157, i64 0, metadata !1654, metadata !614), !dbg !1788
  call void @llvm.dbg.value(metadata i8 %483, i64 0, metadata !1649, metadata !614), !dbg !1807
  call void @llvm.dbg.value(metadata i8 %482, i64 0, metadata !1647, metadata !614), !dbg !1710
  call void @llvm.dbg.value(metadata i8 %481, i64 0, metadata !1646, metadata !614), !dbg !1709
  call void @llvm.dbg.value(metadata i64 %480, i64 0, metadata !1632, metadata !614), !dbg !1695
  call void @llvm.dbg.value(metadata i64 %479, i64 0, metadata !1640, metadata !614), !dbg !1702
  call void @llvm.dbg.value(metadata i64 %478, i64 0, metadata !1639, metadata !614), !dbg !1701
  call void @llvm.dbg.value(metadata i64 %477, i64 0, metadata !1638, metadata !614), !dbg !1776
  br i1 %107, label %488, label %487, !dbg !2247

; <label>:487:                                    ; preds = %476
  br i1 %117, label %489, label %501, !dbg !2249

; <label>:488:                                    ; preds = %476
  br i1 %20, label %501, label %489, !dbg !2250

; <label>:489:                                    ; preds = %488, %487
  %490 = lshr i8 %483, 5, !dbg !2251
  %491 = zext i8 %490 to i64, !dbg !2251
  %492 = getelementptr inbounds i32, i32* %6, i64 %491, !dbg !2253
  %493 = load i32, i32* %492, align 4, !dbg !2253, !tbaa !776
  %494 = and i8 %483, 31, !dbg !2254
  %495 = zext i8 %494 to i32, !dbg !2255
  %496 = shl i32 1, %495, !dbg !2256
  %497 = and i32 %493, %496, !dbg !2256
  %498 = icmp eq i32 %497, 0, !dbg !2256
  %499 = icmp eq i8 %157, 0, !dbg !2257
  %500 = and i1 %499, %498, !dbg !2258
  br i1 %500, label %542, label %503, !dbg !2258

; <label>:501:                                    ; preds = %488, %487
  %502 = icmp eq i8 %157, 0, !dbg !2257
  br i1 %502, label %542, label %503, !dbg !2259

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
  call void @llvm.dbg.value(metadata i64 %512, i64 0, metadata !1630, metadata !614), !dbg !1693
  call void @llvm.dbg.value(metadata i8 %511, i64 0, metadata !1656, metadata !614), !dbg !1790
  call void @llvm.dbg.value(metadata i8 %510, i64 0, metadata !1649, metadata !614), !dbg !1807
  call void @llvm.dbg.value(metadata i8 %509, i64 0, metadata !1647, metadata !614), !dbg !1710
  call void @llvm.dbg.value(metadata i8 %508, i64 0, metadata !1646, metadata !614), !dbg !1709
  call void @llvm.dbg.value(metadata i64 %507, i64 0, metadata !1632, metadata !614), !dbg !1695
  call void @llvm.dbg.value(metadata i64 %506, i64 0, metadata !1640, metadata !614), !dbg !1702
  call void @llvm.dbg.value(metadata i64 %505, i64 0, metadata !1639, metadata !614), !dbg !1701
  call void @llvm.dbg.value(metadata i64 %504, i64 0, metadata !1638, metadata !614), !dbg !1776
  br i1 %112, label %513, label %644, !dbg !2261

; <label>:513:                                    ; preds = %503
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1655, metadata !614), !dbg !1789
  %514 = and i8 %508, 1, !dbg !2264
  %515 = icmp eq i8 %514, 0, !dbg !2264
  %516 = and i1 %114, %515, !dbg !2267
  br i1 %516, label %517, label %533, !dbg !2267

; <label>:517:                                    ; preds = %513
  %518 = icmp ult i64 %505, %512, !dbg !2269
  br i1 %518, label %519, label %521, !dbg !2274

; <label>:519:                                    ; preds = %517
  %520 = getelementptr inbounds i8, i8* %0, i64 %505, !dbg !2276
  store i8 39, i8* %520, align 1, !dbg !2276, !tbaa !785
  br label %521, !dbg !2276

; <label>:521:                                    ; preds = %519, %517
  %522 = add i64 %505, 1, !dbg !2278
  call void @llvm.dbg.value(metadata i64 %522, i64 0, metadata !1639, metadata !614), !dbg !1701
  %523 = icmp ult i64 %522, %512, !dbg !2280
  br i1 %523, label %524, label %526, !dbg !2284

; <label>:524:                                    ; preds = %521
  %525 = getelementptr inbounds i8, i8* %0, i64 %522, !dbg !2286
  store i8 36, i8* %525, align 1, !dbg !2286, !tbaa !785
  br label %526, !dbg !2286

; <label>:526:                                    ; preds = %524, %521
  %527 = add i64 %505, 2, !dbg !2288
  call void @llvm.dbg.value(metadata i64 %527, i64 0, metadata !1639, metadata !614), !dbg !1701
  %528 = icmp ult i64 %527, %512, !dbg !2290
  br i1 %528, label %529, label %531, !dbg !2294

; <label>:529:                                    ; preds = %526
  %530 = getelementptr inbounds i8, i8* %0, i64 %527, !dbg !2296
  store i8 39, i8* %530, align 1, !dbg !2296, !tbaa !785
  br label %531, !dbg !2296

; <label>:531:                                    ; preds = %529, %526
  %532 = add i64 %505, 3, !dbg !2298
  call void @llvm.dbg.value(metadata i64 %532, i64 0, metadata !1639, metadata !614), !dbg !1701
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1646, metadata !614), !dbg !1709
  br label %533, !dbg !2300

; <label>:533:                                    ; preds = %513, %531
  %534 = phi i64 [ %532, %531 ], [ %505, %513 ]
  %535 = phi i8 [ 1, %531 ], [ %508, %513 ]
  call void @llvm.dbg.value(metadata i8 %535, i64 0, metadata !1646, metadata !614), !dbg !1709
  call void @llvm.dbg.value(metadata i64 %534, i64 0, metadata !1639, metadata !614), !dbg !1701
  %536 = icmp ult i64 %534, %512, !dbg !2302
  br i1 %536, label %537, label %539, !dbg !2306

; <label>:537:                                    ; preds = %533
  %538 = getelementptr inbounds i8, i8* %0, i64 %534, !dbg !2308
  store i8 92, i8* %538, align 1, !dbg !2308, !tbaa !785
  br label %539, !dbg !2308

; <label>:539:                                    ; preds = %533, %537
  %540 = add i64 %534, 1, !dbg !2310
  call void @llvm.dbg.value(metadata i64 %540, i64 0, metadata !1639, metadata !614), !dbg !1701
  call void @llvm.dbg.value(metadata i64 %552, i64 0, metadata !1630, metadata !614), !dbg !1693
  call void @llvm.dbg.value(metadata i8 %551, i64 0, metadata !1656, metadata !614), !dbg !1790
  call void @llvm.dbg.value(metadata i8 %550, i64 0, metadata !1655, metadata !614), !dbg !1789
  call void @llvm.dbg.value(metadata i8 %549, i64 0, metadata !1649, metadata !614), !dbg !1807
  call void @llvm.dbg.value(metadata i8 %548, i64 0, metadata !1647, metadata !614), !dbg !1710
  call void @llvm.dbg.value(metadata i8 %547, i64 0, metadata !1646, metadata !614), !dbg !1709
  call void @llvm.dbg.value(metadata i64 %546, i64 0, metadata !1632, metadata !614), !dbg !1695
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !1640, metadata !614), !dbg !1702
  call void @llvm.dbg.value(metadata i64 %544, i64 0, metadata !1639, metadata !614), !dbg !1701
  call void @llvm.dbg.value(metadata i64 %543, i64 0, metadata !1638, metadata !614), !dbg !1776
  br label %569, !dbg !2312

; <label>:541:                                    ; preds = %441
  br label %542, !dbg !1693

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
  call void @llvm.dbg.value(metadata i64 %552, i64 0, metadata !1630, metadata !614), !dbg !1693
  call void @llvm.dbg.value(metadata i8 %551, i64 0, metadata !1656, metadata !614), !dbg !1790
  call void @llvm.dbg.value(metadata i8 %550, i64 0, metadata !1655, metadata !614), !dbg !1789
  call void @llvm.dbg.value(metadata i8 %549, i64 0, metadata !1649, metadata !614), !dbg !1807
  call void @llvm.dbg.value(metadata i8 %548, i64 0, metadata !1647, metadata !614), !dbg !1710
  call void @llvm.dbg.value(metadata i8 %547, i64 0, metadata !1646, metadata !614), !dbg !1709
  call void @llvm.dbg.value(metadata i64 %546, i64 0, metadata !1632, metadata !614), !dbg !1695
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !1640, metadata !614), !dbg !1702
  call void @llvm.dbg.value(metadata i64 %544, i64 0, metadata !1639, metadata !614), !dbg !1701
  call void @llvm.dbg.value(metadata i64 %543, i64 0, metadata !1638, metadata !614), !dbg !1776
  %553 = and i8 %547, 1, !dbg !2312
  %554 = icmp ne i8 %553, 0, !dbg !2312
  %555 = and i8 %550, 1, !dbg !2316
  %556 = icmp eq i8 %555, 0, !dbg !2316
  %557 = and i1 %554, %556, !dbg !2312
  br i1 %557, label %558, label %569, !dbg !2312

; <label>:558:                                    ; preds = %542
  %559 = icmp ult i64 %544, %552, !dbg !2318
  br i1 %559, label %560, label %562, !dbg !2323

; <label>:560:                                    ; preds = %558
  %561 = getelementptr inbounds i8, i8* %0, i64 %544, !dbg !2325
  store i8 39, i8* %561, align 1, !dbg !2325, !tbaa !785
  br label %562, !dbg !2325

; <label>:562:                                    ; preds = %560, %558
  %563 = add i64 %544, 1, !dbg !2327
  call void @llvm.dbg.value(metadata i64 %563, i64 0, metadata !1639, metadata !614), !dbg !1701
  %564 = icmp ult i64 %563, %552, !dbg !2329
  br i1 %564, label %565, label %567, !dbg !2333

; <label>:565:                                    ; preds = %562
  %566 = getelementptr inbounds i8, i8* %0, i64 %563, !dbg !2335
  store i8 39, i8* %566, align 1, !dbg !2335, !tbaa !785
  br label %567, !dbg !2335

; <label>:567:                                    ; preds = %565, %562
  %568 = add i64 %544, 2, !dbg !2337
  call void @llvm.dbg.value(metadata i64 %568, i64 0, metadata !1639, metadata !614), !dbg !1701
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1646, metadata !614), !dbg !1709
  br label %569, !dbg !2339

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
  call void @llvm.dbg.value(metadata i8 %578, i64 0, metadata !1646, metadata !614), !dbg !1709
  call void @llvm.dbg.value(metadata i64 %577, i64 0, metadata !1639, metadata !614), !dbg !1701
  %579 = icmp ult i64 %577, %570, !dbg !2341
  br i1 %579, label %580, label %582, !dbg !2345

; <label>:580:                                    ; preds = %569
  %581 = getelementptr inbounds i8, i8* %0, i64 %577, !dbg !2347
  store i8 %572, i8* %581, align 1, !dbg !2347, !tbaa !785
  br label %582, !dbg !2347

; <label>:582:                                    ; preds = %580, %569
  %583 = add i64 %577, 1, !dbg !2349
  call void @llvm.dbg.value(metadata i64 %583, i64 0, metadata !1639, metadata !614), !dbg !1701
  %584 = and i8 %571, 1, !dbg !2351
  %585 = icmp eq i8 %584, 0, !dbg !2351
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1648, metadata !614), !dbg !1711
  %586 = select i1 %585, i8 0, i8 %130, !dbg !2353
  call void @llvm.dbg.value(metadata i8 %586, i64 0, metadata !1648, metadata !614), !dbg !1711
  br label %587, !dbg !2354

; <label>:587:                                    ; preds = %582, %209
  %588 = phi i64 [ %124, %209 ], [ %576, %582 ]
  %589 = phi i64 [ %125, %209 ], [ %583, %582 ]
  %590 = phi i64 [ %126, %209 ], [ %575, %582 ]
  %591 = phi i64 [ %156, %209 ], [ %574, %582 ]
  %592 = phi i8 [ %128, %209 ], [ %578, %582 ]
  %593 = phi i8 [ %129, %209 ], [ %573, %582 ]
  %594 = phi i8 [ %130, %209 ], [ %586, %582 ]
  %595 = phi i64 [ %131, %209 ], [ %570, %582 ]
  %596 = add i64 %588, 1, !dbg !2355
  call void @llvm.dbg.value(metadata i64 %596, i64 0, metadata !1638, metadata !614), !dbg !1776
  br label %123, !dbg !2357, !llvm.loop !2358

; <label>:597:                                    ; preds = %133, %135
  %598 = phi i64 [ %124, %133 ], [ -1, %135 ]
  %599 = icmp eq i64 %125, 0, !dbg !2361
  %600 = and i1 %114, %599, !dbg !2363
  %601 = xor i1 %600, true, !dbg !2363
  %602 = or i1 %112, %601, !dbg !2363
  br i1 %602, label %603, label %648, !dbg !2363

; <label>:603:                                    ; preds = %597
  %604 = and i1 %114, %112, !dbg !2364
  %605 = xor i1 %604, true, !dbg !2364
  %606 = and i8 %129, 1, !dbg !2366
  %607 = icmp eq i8 %606, 0, !dbg !2366
  %608 = or i1 %607, %605, !dbg !2364
  br i1 %608, label %618, label %609, !dbg !2364

; <label>:609:                                    ; preds = %603
  %610 = and i8 %130, 1, !dbg !2368
  %611 = icmp eq i8 %610, 0, !dbg !2368
  br i1 %611, label %614, label %612, !dbg !2371

; <label>:612:                                    ; preds = %609
  %613 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %126, i8* %2, i64 %598, i32 5, i32 %5, i32* %6, i8* %97, i8* %98), !dbg !2372
  br label %659, !dbg !2373

; <label>:614:                                    ; preds = %609
  %615 = icmp eq i64 %131, 0, !dbg !2374
  %616 = icmp ne i64 %126, 0, !dbg !2376
  %617 = and i1 %616, %615, !dbg !2378
  br i1 %617, label %27, label %618, !dbg !2378

; <label>:618:                                    ; preds = %603, %614
  %619 = icmp ne i8* %100, null, !dbg !2379
  %620 = and i1 %619, %112, !dbg !2381
  br i1 %620, label %621, label %638, !dbg !2381

; <label>:621:                                    ; preds = %618
  call void @llvm.dbg.value(metadata i8* %100, i64 0, metadata !1641, metadata !614), !dbg !1703
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !1639, metadata !614), !dbg !1701
  %622 = load i8, i8* %100, align 1, !dbg !2382, !tbaa !785
  %623 = icmp eq i8 %622, 0, !dbg !2386
  br i1 %623, label %638, label %624, !dbg !2386

; <label>:624:                                    ; preds = %621
  br label %625, !dbg !2388

; <label>:625:                                    ; preds = %624, %632
  %626 = phi i8 [ %635, %632 ], [ %622, %624 ]
  %627 = phi i8* [ %634, %632 ], [ %100, %624 ]
  %628 = phi i64 [ %633, %632 ], [ %125, %624 ]
  %629 = icmp ult i64 %628, %131, !dbg !2388
  br i1 %629, label %630, label %632, !dbg !2392

; <label>:630:                                    ; preds = %625
  %631 = getelementptr inbounds i8, i8* %0, i64 %628, !dbg !2394
  store i8 %626, i8* %631, align 1, !dbg !2394, !tbaa !785
  br label %632, !dbg !2394

; <label>:632:                                    ; preds = %630, %625
  %633 = add i64 %628, 1, !dbg !2396
  call void @llvm.dbg.value(metadata i64 %633, i64 0, metadata !1639, metadata !614), !dbg !1701
  %634 = getelementptr inbounds i8, i8* %627, i64 1, !dbg !2398
  call void @llvm.dbg.value(metadata i8* %634, i64 0, metadata !1641, metadata !614), !dbg !1703
  call void @llvm.dbg.value(metadata i8* %634, i64 0, metadata !1641, metadata !614), !dbg !1703
  call void @llvm.dbg.value(metadata i64 %633, i64 0, metadata !1639, metadata !614), !dbg !1701
  %635 = load i8, i8* %634, align 1, !dbg !2382, !tbaa !785
  %636 = icmp eq i8 %635, 0, !dbg !2386
  br i1 %636, label %637, label %625, !dbg !2386, !llvm.loop !2400

; <label>:637:                                    ; preds = %632
  br label %638, !dbg !1701

; <label>:638:                                    ; preds = %637, %621, %618
  %639 = phi i64 [ %125, %618 ], [ %125, %621 ], [ %633, %637 ]
  call void @llvm.dbg.value(metadata i64 %639, i64 0, metadata !1639, metadata !614), !dbg !1701
  %640 = icmp ult i64 %639, %131, !dbg !2403
  br i1 %640, label %641, label %659, !dbg !2405

; <label>:641:                                    ; preds = %638
  %642 = getelementptr inbounds i8, i8* %0, i64 %639, !dbg !2406
  store i8 0, i8* %642, align 1, !dbg !2407, !tbaa !785
  br label %659, !dbg !2406

; <label>:643:                                    ; preds = %386
  br label %649, !dbg !1693

; <label>:644:                                    ; preds = %148, %161, %211, %225, %253, %255, %273, %276, %503
  %645 = phi i32 [ %96, %148 ], [ %96, %161 ], [ 2, %211 ], [ 5, %225 ], [ 2, %253 ], [ 2, %255 ], [ 2, %273 ], [ 2, %276 ], [ %96, %503 ]
  %646 = phi i64 [ %146, %148 ], [ %156, %161 ], [ %156, %211 ], [ %156, %225 ], [ %156, %253 ], [ %156, %255 ], [ %156, %273 ], [ %156, %276 ], [ %507, %503 ]
  %647 = phi i64 [ %131, %148 ], [ %131, %161 ], [ %131, %211 ], [ %131, %225 ], [ %131, %253 ], [ %131, %255 ], [ %131, %273 ], [ %131, %276 ], [ %512, %503 ]
  br label %649, !dbg !1693

; <label>:648:                                    ; preds = %597
  br label %649, !dbg !1693

; <label>:649:                                    ; preds = %648, %644, %643, %367
  %650 = phi i32 [ 2, %367 ], [ %96, %643 ], [ %645, %644 ], [ %96, %648 ]
  %651 = phi i64 [ %313, %367 ], [ %369, %643 ], [ %646, %644 ], [ %598, %648 ]
  %652 = phi i64 [ %131, %367 ], [ %131, %643 ], [ %647, %644 ], [ %131, %648 ]
  call void @llvm.dbg.value(metadata i64 %652, i64 0, metadata !1630, metadata !614), !dbg !1693
  call void @llvm.dbg.value(metadata i64 %651, i64 0, metadata !1632, metadata !614), !dbg !1695
  %653 = icmp ne i32 %650, 2, !dbg !2408
  %654 = icmp eq i8 %104, 0, !dbg !2410
  %655 = or i1 %653, %654, !dbg !2412
  call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !1633, metadata !614), !dbg !1696
  %656 = select i1 %655, i32 %650, i32 4, !dbg !2412
  call void @llvm.dbg.value(metadata i32 %656, i64 0, metadata !1633, metadata !614), !dbg !1696
  %657 = and i32 %5, -3, !dbg !2413
  %658 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %652, i8* %2, i64 %651, i32 %656, i32 %657, i32* null, i8* %97, i8* %98), !dbg !2414
  br label %659, !dbg !2415

; <label>:659:                                    ; preds = %638, %641, %649, %612
  %660 = phi i64 [ %658, %649 ], [ %613, %612 ], [ %639, %641 ], [ %639, %638 ]
  ret i64 %660, !dbg !2416
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8*, i32) unnamed_addr #6 !dbg !2417 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2421, metadata !614), !dbg !2425
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2422, metadata !614), !dbg !2426
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #10, !dbg !2427
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2423, metadata !614), !dbg !2428
  %4 = icmp eq i8* %3, %0, !dbg !2429
  br i1 %4, label %5, label %75, !dbg !2431

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @locale_charset() #10, !dbg !2432
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !2424, metadata !614), !dbg !2433
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2434, metadata !614), !dbg !2450
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2448, metadata !614), !dbg !2453
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2449, metadata !614), !dbg !2454
  %7 = load i8, i8* %6, align 1, !tbaa !785
  %8 = sext i8 %7 to i32
  %9 = and i32 %8, -33, !dbg !2455
  switch i32 %9, label %72 [
    i32 85, label %10
    i32 71, label %38
  ], !dbg !2455

; <label>:10:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2458, metadata !614), !dbg !2472
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2470, metadata !614), !dbg !2476
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2471, metadata !614), !dbg !2477
  %11 = getelementptr inbounds i8, i8* %6, i64 1
  %12 = load i8, i8* %11, align 1, !tbaa !785
  %13 = sext i8 %12 to i32
  %14 = and i32 %13, -33, !dbg !2478
  %15 = icmp eq i32 %14, 84, !dbg !2478
  br i1 %15, label %16, label %72, !dbg !2478

; <label>:16:                                     ; preds = %10
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2481, metadata !614), !dbg !2494
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2492, metadata !614), !dbg !2498
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2493, metadata !614), !dbg !2499
  %17 = getelementptr inbounds i8, i8* %6, i64 2
  %18 = load i8, i8* %17, align 1, !tbaa !785
  %19 = sext i8 %18 to i32
  %20 = and i32 %19, -33, !dbg !2500
  %21 = icmp eq i32 %20, 70, !dbg !2500
  br i1 %21, label %22, label %72, !dbg !2500

; <label>:22:                                     ; preds = %16
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2503, metadata !614), !dbg !2515
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2513, metadata !614), !dbg !2519
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2514, metadata !614), !dbg !2520
  %23 = getelementptr inbounds i8, i8* %6, i64 3
  %24 = load i8, i8* %23, align 1, !tbaa !785
  %25 = icmp eq i8 %24, 45, !dbg !2521
  br i1 %25, label %26, label %72, !dbg !2524

; <label>:26:                                     ; preds = %22
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2526, metadata !614), !dbg !2537
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2535, metadata !614), !dbg !2541
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2536, metadata !614), !dbg !2542
  %27 = getelementptr inbounds i8, i8* %6, i64 4
  %28 = load i8, i8* %27, align 1, !tbaa !785
  %29 = icmp eq i8 %28, 56, !dbg !2543
  br i1 %29, label %30, label %72, !dbg !2546

; <label>:30:                                     ; preds = %26
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2548, metadata !614), !dbg !2558
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2556, metadata !614), !dbg !2562
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2557, metadata !614), !dbg !2563
  %31 = getelementptr inbounds i8, i8* %6, i64 5
  %32 = load i8, i8* %31, align 1, !tbaa !785
  %33 = icmp eq i8 %32, 0, !dbg !2564
  br i1 %33, label %34, label %72, !dbg !2567

; <label>:34:                                     ; preds = %30
  %35 = load i8, i8* %0, align 1, !dbg !2569, !tbaa !785
  %36 = icmp eq i8 %35, 96, !dbg !2570
  %37 = select i1 %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.69, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.70, i64 0, i64 0), !dbg !2569
  br label %75, !dbg !2571

; <label>:38:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2458, metadata !614), !dbg !2572
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2470, metadata !614), !dbg !2576
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2471, metadata !614), !dbg !2577
  %39 = getelementptr inbounds i8, i8* %6, i64 1
  %40 = load i8, i8* %39, align 1, !tbaa !785
  %41 = sext i8 %40 to i32
  %42 = and i32 %41, -33, !dbg !2578
  %43 = icmp eq i32 %42, 66, !dbg !2578
  br i1 %43, label %44, label %72, !dbg !2578

; <label>:44:                                     ; preds = %38
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2481, metadata !614), !dbg !2579
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2492, metadata !614), !dbg !2581
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2493, metadata !614), !dbg !2582
  %45 = getelementptr inbounds i8, i8* %6, i64 2
  %46 = load i8, i8* %45, align 1, !tbaa !785
  %47 = icmp eq i8 %46, 49, !dbg !2583
  br i1 %47, label %48, label %72, !dbg !2585

; <label>:48:                                     ; preds = %44
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2503, metadata !614), !dbg !2587
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2513, metadata !614), !dbg !2589
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2514, metadata !614), !dbg !2590
  %49 = getelementptr inbounds i8, i8* %6, i64 3
  %50 = load i8, i8* %49, align 1, !tbaa !785
  %51 = icmp eq i8 %50, 56, !dbg !2591
  br i1 %51, label %52, label %72, !dbg !2592

; <label>:52:                                     ; preds = %48
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2526, metadata !614), !dbg !2593
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2535, metadata !614), !dbg !2595
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2536, metadata !614), !dbg !2596
  %53 = getelementptr inbounds i8, i8* %6, i64 4
  %54 = load i8, i8* %53, align 1, !tbaa !785
  %55 = icmp eq i8 %54, 48, !dbg !2597
  br i1 %55, label %56, label %72, !dbg !2598

; <label>:56:                                     ; preds = %52
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2548, metadata !614), !dbg !2599
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2556, metadata !614), !dbg !2601
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2557, metadata !614), !dbg !2602
  %57 = getelementptr inbounds i8, i8* %6, i64 5
  %58 = load i8, i8* %57, align 1, !tbaa !785
  %59 = icmp eq i8 %58, 51, !dbg !2603
  br i1 %59, label %60, label %72, !dbg !2604

; <label>:60:                                     ; preds = %56
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2605, metadata !614), !dbg !2614
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2612, metadata !614), !dbg !2618
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2613, metadata !614), !dbg !2619
  %61 = getelementptr inbounds i8, i8* %6, i64 6
  %62 = load i8, i8* %61, align 1, !tbaa !785
  %63 = icmp eq i8 %62, 48, !dbg !2620
  br i1 %63, label %64, label %72, !dbg !2623

; <label>:64:                                     ; preds = %60
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2625, metadata !614), !dbg !2633
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2631, metadata !614), !dbg !2637
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2632, metadata !614), !dbg !2638
  %65 = getelementptr inbounds i8, i8* %6, i64 7
  %66 = load i8, i8* %65, align 1, !tbaa !785
  %67 = icmp eq i8 %66, 0, !dbg !2639
  br i1 %67, label %68, label %72, !dbg !2642

; <label>:68:                                     ; preds = %64
  %69 = load i8, i8* %0, align 1, !dbg !2643, !tbaa !785
  %70 = icmp eq i8 %69, 96, !dbg !2644
  %71 = select i1 %70, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.71, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.72, i64 0, i64 0), !dbg !2643
  br label %75, !dbg !2645

; <label>:72:                                     ; preds = %5, %30, %26, %22, %16, %10, %64, %60, %56, %52, %48, %44, %38
  %73 = icmp eq i32 %1, 9, !dbg !2646
  %74 = select i1 %73, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.68, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.67, i64 0, i64 0), !dbg !2647
  br label %75, !dbg !2648

; <label>:75:                                     ; preds = %2, %72, %68, %34
  %76 = phi i8* [ %37, %34 ], [ %71, %68 ], [ %74, %72 ], [ %3, %2 ]
  ret i8* %76, !dbg !2649
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #4

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() local_unnamed_addr #8

; Function Attrs: nounwind
declare i32 @iswprint(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @mbsinit(%struct.__mbstate_t*) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_alloc(i8*, i64, %struct.quoting_options*) local_unnamed_addr #6 !dbg !2650 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2654, metadata !614), !dbg !2657
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2655, metadata !614), !dbg !2658
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2656, metadata !614), !dbg !2659
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2660, metadata !614) #10, !dbg !2673
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2665, metadata !614) #10, !dbg !2675
  tail call void @llvm.dbg.value(metadata i64* null, i64 0, metadata !2666, metadata !614) #10, !dbg !2676
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2667, metadata !614) #10, !dbg !2677
  %4 = icmp ne %struct.quoting_options* %2, null, !dbg !2678
  %5 = select i1 %4, %struct.quoting_options* %2, %struct.quoting_options* @default_quoting_options, !dbg !2678
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2668, metadata !614) #10, !dbg !2679
  %6 = tail call i32* @__errno_location() #1, !dbg !2680
  %7 = load i32, i32* %6, align 4, !dbg !2680, !tbaa !776
  tail call void @llvm.dbg.value(metadata i32 %7, i64 0, metadata !2669, metadata !614) #10, !dbg !2681
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2682
  %9 = load i32, i32* %8, align 4, !dbg !2682, !tbaa !1561
  %10 = or i32 %9, 1, !dbg !2683
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !2670, metadata !614) #10, !dbg !2684
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2685
  %12 = load i32, i32* %11, align 8, !dbg !2685, !tbaa !1499
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !2686
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2687
  %15 = load i8*, i8** %14, align 8, !dbg !2687, !tbaa !1588
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2688
  %17 = load i8*, i8** %16, align 8, !dbg !2688, !tbaa !1591
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* %13, i8* %15, i8* %17) #10, !dbg !2689
  %19 = add i64 %18, 1, !dbg !2690
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !2671, metadata !614) #10, !dbg !2691
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !2692, metadata !614) #10, !dbg !2697
  %20 = tail call noalias i8* @xmalloc(i64 %19) #10, !dbg !2699
  tail call void @llvm.dbg.value(metadata i8* %20, i64 0, metadata !2672, metadata !614) #10, !dbg !2700
  %21 = load i32, i32* %11, align 8, !dbg !2701, !tbaa !1499
  %22 = load i8*, i8** %14, align 8, !dbg !2702, !tbaa !1588
  %23 = load i8*, i8** %16, align 8, !dbg !2703, !tbaa !1591
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* %13, i8* %22, i8* %23) #10, !dbg !2704
  store i32 %7, i32* %6, align 4, !dbg !2705, !tbaa !776
  ret i8* %20, !dbg !2706
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_alloc_mem(i8*, i64, i64*, %struct.quoting_options*) local_unnamed_addr #6 !dbg !2661 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2660, metadata !614), !dbg !2707
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2665, metadata !614), !dbg !2708
  tail call void @llvm.dbg.value(metadata i64* %2, i64 0, metadata !2666, metadata !614), !dbg !2709
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2667, metadata !614), !dbg !2710
  %5 = icmp ne %struct.quoting_options* %3, null, !dbg !2711
  %6 = select i1 %5, %struct.quoting_options* %3, %struct.quoting_options* @default_quoting_options, !dbg !2711
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2668, metadata !614), !dbg !2712
  %7 = tail call i32* @__errno_location() #1, !dbg !2713
  %8 = load i32, i32* %7, align 4, !dbg !2713, !tbaa !776
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !2669, metadata !614), !dbg !2714
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2715
  %10 = load i32, i32* %9, align 4, !dbg !2715, !tbaa !1561
  %11 = icmp ne i64* %2, null, !dbg !2716
  %12 = xor i1 %11, true, !dbg !2716
  %13 = zext i1 %12 to i32, !dbg !2716
  %14 = or i32 %10, %13, !dbg !2717
  tail call void @llvm.dbg.value(metadata i32 %14, i64 0, metadata !2670, metadata !614), !dbg !2718
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2719
  %16 = load i32, i32* %15, align 8, !dbg !2719, !tbaa !1499
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !2720
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2721
  %19 = load i8*, i8** %18, align 8, !dbg !2721, !tbaa !1588
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2722
  %21 = load i8*, i8** %20, align 8, !dbg !2722, !tbaa !1591
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* %17, i8* %19, i8* %21), !dbg !2723
  %23 = add i64 %22, 1, !dbg !2724
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !2671, metadata !614), !dbg !2725
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !2692, metadata !614) #10, !dbg !2726
  %24 = tail call noalias i8* @xmalloc(i64 %23) #10, !dbg !2728
  tail call void @llvm.dbg.value(metadata i8* %24, i64 0, metadata !2672, metadata !614), !dbg !2729
  %25 = load i32, i32* %15, align 8, !dbg !2730, !tbaa !1499
  %26 = load i8*, i8** %18, align 8, !dbg !2731, !tbaa !1588
  %27 = load i8*, i8** %20, align 8, !dbg !2732, !tbaa !1591
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* %17, i8* %26, i8* %27), !dbg !2733
  store i32 %8, i32* %7, align 4, !dbg !2734, !tbaa !776
  br i1 %11, label %29, label %30, !dbg !2735

; <label>:29:                                     ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !2736, !tbaa !859
  br label %30, !dbg !2738

; <label>:30:                                     ; preds = %29, %4
  ret i8* %24, !dbg !2739
}

; Function Attrs: nounwind sspstrong uwtable
define void @quotearg_free() local_unnamed_addr #6 !dbg !2740 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2744, !tbaa !622
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %1, i64 0, metadata !2742, metadata !614), !dbg !2745
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2743, metadata !614), !dbg !2746
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2743, metadata !614), !dbg !2746
  %2 = load i32, i32* @nslots, align 4, !dbg !2747, !tbaa !776
  %3 = icmp sgt i32 %2, 1, !dbg !2751
  br i1 %3, label %4, label %14, !dbg !2752

; <label>:4:                                      ; preds = %0
  br label %5, !dbg !2754

; <label>:5:                                      ; preds = %4, %5
  %6 = phi i64 [ %9, %5 ], [ 1, %4 ]
  %7 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %6, i32 1, !dbg !2754
  %8 = load i8*, i8** %7, align 8, !dbg !2754, !tbaa !2755
  tail call void @free(i8* %8) #10, !dbg !2757
  %9 = add nuw i64 %6, 1, !dbg !2758
  %10 = load i32, i32* @nslots, align 4, !dbg !2747, !tbaa !776
  %11 = sext i32 %10 to i64, !dbg !2751
  %12 = icmp slt i64 %9, %11, !dbg !2751
  br i1 %12, label %5, label %13, !dbg !2752, !llvm.loop !2760

; <label>:13:                                     ; preds = %5
  br label %14, !dbg !2763

; <label>:14:                                     ; preds = %13, %0
  %15 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !2763
  %16 = load i8*, i8** %15, align 8, !dbg !2763, !tbaa !2755
  %17 = icmp eq i8* %16, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2765
  br i1 %17, label %19, label %18, !dbg !2766

; <label>:18:                                     ; preds = %14
  tail call void @free(i8* %16) #10, !dbg !2767
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !2769, !tbaa !2770
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !2771, !tbaa !2755
  br label %19, !dbg !2772

; <label>:19:                                     ; preds = %14, %18
  %20 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !2773
  br i1 %20, label %23, label %21, !dbg !2775

; <label>:21:                                     ; preds = %19
  %22 = bitcast %struct.slotvec* %1 to i8*, !dbg !2776
  tail call void @free(i8* %22) #10, !dbg !2778
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !2779, !tbaa !622
  br label %23, !dbg !2780

; <label>:23:                                     ; preds = %19, %21
  store i32 1, i32* @nslots, align 4, !dbg !2781, !tbaa !776
  ret void, !dbg !2782
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n(i32, i8*) local_unnamed_addr #6 !dbg !2783 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2787, metadata !614), !dbg !2789
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2788, metadata !614), !dbg !2790
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2791
  ret i8* %3, !dbg !2792
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32, i8*, i64, %struct.quoting_options*) unnamed_addr #6 !dbg !2793 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2797, metadata !614), !dbg !2811
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2798, metadata !614), !dbg !2812
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2799, metadata !614), !dbg !2813
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2800, metadata !614), !dbg !2814
  %5 = tail call i32* @__errno_location() #1, !dbg !2815
  %6 = load i32, i32* %5, align 4, !dbg !2815, !tbaa !776
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !2801, metadata !614), !dbg !2816
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2817, !tbaa !622
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %7, i64 0, metadata !2802, metadata !614), !dbg !2818
  %8 = icmp slt i32 %0, 0, !dbg !2819
  br i1 %8, label %9, label %10, !dbg !2821

; <label>:9:                                      ; preds = %4
  tail call void @abort() #14, !dbg !2822
  unreachable, !dbg !2822

; <label>:10:                                     ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !2823, !tbaa !776
  %12 = icmp sgt i32 %11, %0, !dbg !2824
  br i1 %12, label %34, label %13, !dbg !2825

; <label>:13:                                     ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !2826
  %15 = icmp ugt i32 %0, 2147483646, !dbg !2827
  br i1 %15, label %16, label %17, !dbg !2829

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #14, !dbg !2830
  unreachable, !dbg !2830

; <label>:17:                                     ; preds = %13
  %18 = bitcast %struct.slotvec* %7 to i8*, !dbg !2831
  %19 = select i1 %14, i8* null, i8* %18, !dbg !2831
  %20 = add nsw i32 %0, 1, !dbg !2833
  %21 = sext i32 %20 to i64, !dbg !2834
  %22 = shl nsw i64 %21, 4, !dbg !2835
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #10, !dbg !2836
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !2836
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %24, i64 0, metadata !2802, metadata !614), !dbg !2818
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !2837, !tbaa !622
  br i1 %14, label %25, label %26, !dbg !2838

; <label>:25:                                     ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i32 8, i1 false), !dbg !2839, !tbaa.struct !2841
  br label %26, !dbg !2842

; <label>:26:                                     ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !2843, !tbaa !776
  %28 = sext i32 %27 to i64, !dbg !2844
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !2844
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !2845
  %31 = sub nsw i32 %20, %27, !dbg !2846
  %32 = sext i32 %31 to i64, !dbg !2847
  %33 = shl nsw i64 %32, 4, !dbg !2848
  tail call void @llvm.memset.p0i8.i64(i8* %30, i8 0, i64 %33, i32 8, i1 false), !dbg !2845
  store i32 %20, i32* @nslots, align 4, !dbg !2849, !tbaa !776
  br label %34, !dbg !2850

; <label>:34:                                     ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ]
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %35, i64 0, metadata !2802, metadata !614), !dbg !2818
  %36 = sext i32 %0 to i64, !dbg !2851
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !2852
  %38 = load i64, i64* %37, align 8, !dbg !2852, !tbaa !2770
  tail call void @llvm.dbg.value(metadata i64 %38, i64 0, metadata !2806, metadata !614), !dbg !2853
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !2854
  %40 = load i8*, i8** %39, align 8, !dbg !2854, !tbaa !2755
  tail call void @llvm.dbg.value(metadata i8* %40, i64 0, metadata !2808, metadata !614), !dbg !2855
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !2856
  %42 = load i32, i32* %41, align 4, !dbg !2856, !tbaa !1561
  %43 = or i32 %42, 1, !dbg !2857
  tail call void @llvm.dbg.value(metadata i32 %43, i64 0, metadata !2809, metadata !614), !dbg !2858
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2859
  %45 = load i32, i32* %44, align 8, !dbg !2859, !tbaa !1499
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !2860
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !2861
  %48 = load i8*, i8** %47, align 8, !dbg !2861, !tbaa !1588
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !2862
  %50 = load i8*, i8** %49, align 8, !dbg !2862, !tbaa !1591
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* %46, i8* %48, i8* %50), !dbg !2863
  tail call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !2810, metadata !614), !dbg !2864
  %52 = icmp ugt i64 %38, %51, !dbg !2865
  br i1 %52, label %63, label %53, !dbg !2867

; <label>:53:                                     ; preds = %34
  %54 = add i64 %51, 1, !dbg !2868
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !2806, metadata !614), !dbg !2853
  store i64 %54, i64* %37, align 8, !dbg !2870, !tbaa !2770
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2871
  br i1 %55, label %57, label %56, !dbg !2873

; <label>:56:                                     ; preds = %53
  tail call void @free(i8* %40) #10, !dbg !2874
  br label %57, !dbg !2874

; <label>:57:                                     ; preds = %53, %56
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !2692, metadata !614) #10, !dbg !2875
  %58 = tail call noalias i8* @xmalloc(i64 %54) #10, !dbg !2877
  tail call void @llvm.dbg.value(metadata i8* %58, i64 0, metadata !2808, metadata !614), !dbg !2855
  store i8* %58, i8** %39, align 8, !dbg !2878, !tbaa !2755
  %59 = load i32, i32* %44, align 8, !dbg !2879, !tbaa !1499
  %60 = load i8*, i8** %47, align 8, !dbg !2880, !tbaa !1588
  %61 = load i8*, i8** %49, align 8, !dbg !2881, !tbaa !1591
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* %46, i8* %60, i8* %61), !dbg !2882
  br label %63, !dbg !2883

; <label>:63:                                     ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ]
  tail call void @llvm.dbg.value(metadata i8* %64, i64 0, metadata !2808, metadata !614), !dbg !2855
  store i32 %6, i32* %5, align 4, !dbg !2884, !tbaa !776
  ret i8* %64, !dbg !2885
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #7

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #7

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !2886 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2890, metadata !614), !dbg !2893
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2891, metadata !614), !dbg !2894
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2892, metadata !614), !dbg !2895
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2896
  ret i8* %4, !dbg !2897
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg(i8*) local_unnamed_addr #6 !dbg !2898 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2902, metadata !614), !dbg !2903
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2787, metadata !614) #10, !dbg !2904
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2788, metadata !614) #10, !dbg !2906
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #10, !dbg !2907
  ret i8* %2, !dbg !2908
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_mem(i8*, i64) local_unnamed_addr #6 !dbg !2909 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2913, metadata !614), !dbg !2915
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2914, metadata !614), !dbg !2916
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2890, metadata !614) #10, !dbg !2917
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2891, metadata !614) #10, !dbg !2919
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2892, metadata !614) #10, !dbg !2920
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #10, !dbg !2921
  ret i8* %3, !dbg !2922
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style(i32, i32, i8*) local_unnamed_addr #6 !dbg !2923 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !2931, metadata !2937), !dbg !2938
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2927, metadata !614), !dbg !2940
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2928, metadata !614), !dbg !2941
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2929, metadata !614), !dbg !2942
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2943
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #10, !dbg !2943
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2930, metadata !851), !dbg !2944
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2936, metadata !614) #10, !dbg !2945
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !2946
  call void @llvm.lifetime.start(i64 52, i8* nonnull %7), !dbg !2946
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2931, metadata !614) #10, !dbg !2938
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2931, metadata !2947) #10, !dbg !2938
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !2938
  %8 = icmp eq i32 %1, 10, !dbg !2948
  br i1 %8, label %9, label %10, !dbg !2950

; <label>:9:                                      ; preds = %3
  tail call void @abort() #14, !dbg !2951, !noalias !2952
  unreachable, !dbg !2951

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2931, metadata !2947) #10, !dbg !2938
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2955
  store i32 %1, i32* %11, align 8, !dbg !2955, !alias.scope !2952
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2955
  %13 = bitcast i32* %12 to i8*, !dbg !2955
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #10, !dbg !2955
  call void @llvm.lifetime.end(i64 52, i8* nonnull %7), !dbg !2956
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2930, metadata !851), !dbg !2944
  %14 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !2957
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #10, !dbg !2958
  ret i8* %14, !dbg !2959
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_mem(i32, i32, i8*, i64) local_unnamed_addr #6 !dbg !2960 {
  %5 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !2931, metadata !2937), !dbg !2969
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2964, metadata !614), !dbg !2971
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2965, metadata !614), !dbg !2972
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2966, metadata !614), !dbg !2973
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2967, metadata !614), !dbg !2974
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2975
  call void @llvm.lifetime.start(i64 56, i8* nonnull %7) #10, !dbg !2975
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2968, metadata !851), !dbg !2976
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2936, metadata !614) #10, !dbg !2977
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !2978
  call void @llvm.lifetime.start(i64 52, i8* nonnull %8), !dbg !2978
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2931, metadata !614) #10, !dbg !2969
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2931, metadata !2947) #10, !dbg !2969
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !2969
  %9 = icmp eq i32 %1, 10, !dbg !2979
  br i1 %9, label %10, label %11, !dbg !2980

; <label>:10:                                     ; preds = %4
  tail call void @abort() #14, !dbg !2981, !noalias !2982
  unreachable, !dbg !2981

; <label>:11:                                     ; preds = %4
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2931, metadata !2947) #10, !dbg !2969
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2985
  store i32 %1, i32* %12, align 8, !dbg !2985, !alias.scope !2982
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2985
  %14 = bitcast i32* %13 to i8*, !dbg !2985
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* nonnull %8, i64 52, i32 4, i1 false) #10, !dbg !2985
  call void @llvm.lifetime.end(i64 52, i8* nonnull %8), !dbg !2986
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2968, metadata !851), !dbg !2976
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %6), !dbg !2987
  call void @llvm.lifetime.end(i64 56, i8* nonnull %7) #10, !dbg !2988
  ret i8* %15, !dbg !2989
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style(i32, i8*) local_unnamed_addr #6 !dbg !2990 {
  %3 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %3, metadata !2931, metadata !2937), !dbg !2996
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2994, metadata !614), !dbg !2999
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2995, metadata !614), !dbg !3000
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2927, metadata !614) #10, !dbg !3001
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2928, metadata !614) #10, !dbg !3002
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2929, metadata !614) #10, !dbg !3003
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3004
  call void @llvm.lifetime.start(i64 56, i8* nonnull %5) #10, !dbg !3004
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2930, metadata !851) #10, !dbg !3005
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2936, metadata !614) #10, !dbg !3006
  %6 = getelementptr inbounds [52 x i8], [52 x i8]* %3, i64 0, i64 0, !dbg !3007
  call void @llvm.lifetime.start(i64 52, i8* nonnull %6), !dbg !3007
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2931, metadata !614) #10, !dbg !2996
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2931, metadata !2947) #10, !dbg !2996
  call void @llvm.memset.p0i8.i64(i8* nonnull %6, i8 0, i64 52, i32 4, i1 false), !dbg !2996
  %7 = icmp eq i32 %0, 10, !dbg !3008
  br i1 %7, label %8, label %9, !dbg !3009

; <label>:8:                                      ; preds = %2
  tail call void @abort() #14, !dbg !3010, !noalias !3011
  unreachable, !dbg !3010

; <label>:9:                                      ; preds = %2
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2931, metadata !2947) #10, !dbg !2996
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3014
  store i32 %0, i32* %10, align 8, !dbg !3014, !alias.scope !3011
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !3014
  %12 = bitcast i32* %11 to i8*, !dbg !3014
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* nonnull %6, i64 52, i32 4, i1 false) #10, !dbg !3014
  call void @llvm.lifetime.end(i64 52, i8* nonnull %6), !dbg !3015
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2930, metadata !851) #10, !dbg !3005
  %13 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %4) #10, !dbg !3016
  call void @llvm.lifetime.end(i64 56, i8* nonnull %5) #10, !dbg !3017
  ret i8* %13, !dbg !3018
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !3019 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !2931, metadata !2937), !dbg !3026
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3023, metadata !614), !dbg !3029
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3024, metadata !614), !dbg !3030
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3025, metadata !614), !dbg !3031
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2964, metadata !614) #10, !dbg !3032
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2965, metadata !614) #10, !dbg !3033
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2966, metadata !614) #10, !dbg !3034
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2967, metadata !614) #10, !dbg !3035
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3036
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #10, !dbg !3036
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2968, metadata !851) #10, !dbg !3037
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2936, metadata !614) #10, !dbg !3038
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !3039
  call void @llvm.lifetime.start(i64 52, i8* nonnull %7), !dbg !3039
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2931, metadata !614) #10, !dbg !3026
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2931, metadata !2947) #10, !dbg !3026
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !3026
  %8 = icmp eq i32 %0, 10, !dbg !3040
  br i1 %8, label %9, label %10, !dbg !3041

; <label>:9:                                      ; preds = %3
  tail call void @abort() #14, !dbg !3042, !noalias !3043
  unreachable, !dbg !3042

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2931, metadata !2947) #10, !dbg !3026
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3046
  store i32 %0, i32* %11, align 8, !dbg !3046, !alias.scope !3043
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !3046
  %13 = bitcast i32* %12 to i8*, !dbg !3046
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #10, !dbg !3046
  call void @llvm.lifetime.end(i64 52, i8* nonnull %7), !dbg !3047
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2968, metadata !851) #10, !dbg !3037
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %5) #10, !dbg !3048
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #10, !dbg !3049
  ret i8* %14, !dbg !3050
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char_mem(i8*, i64, i8 signext) local_unnamed_addr #6 !dbg !3051 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3055, metadata !614), !dbg !3059
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3056, metadata !614), !dbg !3060
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !3057, metadata !614), !dbg !3061
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3062
  call void @llvm.lifetime.start(i64 56, i8* nonnull %5) #10, !dbg !3062
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !3063, !tbaa.struct !3064
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3058, metadata !851), !dbg !3065
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1519, metadata !614), !dbg !3066
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !1520, metadata !614), !dbg !3068
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1521, metadata !614), !dbg !3069
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !1522, metadata !614), !dbg !3070
  %6 = lshr i8 %2, 5, !dbg !3071
  %7 = zext i8 %6 to i64, !dbg !3071
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !3072
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !1523, metadata !614), !dbg !3073
  %9 = and i8 %2, 31, !dbg !3074
  %10 = zext i8 %9 to i32, !dbg !3075
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !1525, metadata !614), !dbg !3076
  %11 = load i32, i32* %8, align 4, !dbg !3077, !tbaa !776
  %12 = lshr i32 %11, %10, !dbg !3078
  %13 = and i32 %12, 1, !dbg !3079
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !1526, metadata !614), !dbg !3080
  %14 = xor i32 %13, 1, !dbg !3081
  %15 = shl i32 %14, %10, !dbg !3082
  %16 = xor i32 %15, %11, !dbg !3083
  store i32 %16, i32* %8, align 4, !dbg !3083, !tbaa !776
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3058, metadata !851), !dbg !3065
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !3084
  call void @llvm.lifetime.end(i64 56, i8* nonnull %5) #10, !dbg !3085
  ret i8* %17, !dbg !3086
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char(i8*, i8 signext) local_unnamed_addr #6 !dbg !3087 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3091, metadata !614), !dbg !3093
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !3092, metadata !614), !dbg !3094
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3055, metadata !614) #10, !dbg !3095
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3056, metadata !614) #10, !dbg !3097
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !3057, metadata !614) #10, !dbg !3098
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3099
  call void @llvm.lifetime.start(i64 56, i8* nonnull %4) #10, !dbg !3099
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !3100, !tbaa.struct !3064
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !3058, metadata !851) #10, !dbg !3101
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !1519, metadata !614) #10, !dbg !3102
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1520, metadata !614) #10, !dbg !3104
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1521, metadata !614) #10, !dbg !3105
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1522, metadata !614) #10, !dbg !3106
  %5 = lshr i8 %1, 5, !dbg !3107
  %6 = zext i8 %5 to i64, !dbg !3107
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !3108
  tail call void @llvm.dbg.value(metadata i32* %7, i64 0, metadata !1523, metadata !614) #10, !dbg !3109
  %8 = and i8 %1, 31, !dbg !3110
  %9 = zext i8 %8 to i32, !dbg !3111
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !1525, metadata !614) #10, !dbg !3112
  %10 = load i32, i32* %7, align 4, !dbg !3113, !tbaa !776
  %11 = lshr i32 %10, %9, !dbg !3114
  %12 = and i32 %11, 1, !dbg !3115
  tail call void @llvm.dbg.value(metadata i32 %12, i64 0, metadata !1526, metadata !614) #10, !dbg !3116
  %13 = xor i32 %12, 1, !dbg !3117
  %14 = shl i32 %13, %9, !dbg !3118
  %15 = xor i32 %14, %10, !dbg !3119
  store i32 %15, i32* %7, align 4, !dbg !3119, !tbaa !776
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !3058, metadata !851) #10, !dbg !3101
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #10, !dbg !3120
  call void @llvm.lifetime.end(i64 56, i8* nonnull %4) #10, !dbg !3121
  ret i8* %16, !dbg !3122
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon(i8*) local_unnamed_addr #6 !dbg !3123 {
  %2 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3125, metadata !614), !dbg !3126
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3091, metadata !614) #10, !dbg !3127
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !3092, metadata !614) #10, !dbg !3129
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3055, metadata !614) #10, !dbg !3130
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3056, metadata !614) #10, !dbg !3132
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !3057, metadata !614) #10, !dbg !3133
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !3134
  call void @llvm.lifetime.start(i64 56, i8* nonnull %3) #10, !dbg !3134
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %3, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !3135, !tbaa.struct !3064
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !3058, metadata !851) #10, !dbg !3136
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !1519, metadata !614) #10, !dbg !3137
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1520, metadata !614) #10, !dbg !3139
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1521, metadata !614) #10, !dbg !3140
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1522, metadata !614) #10, !dbg !3141
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !3142
  tail call void @llvm.dbg.value(metadata i32* %4, i64 0, metadata !1523, metadata !614) #10, !dbg !3143
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !1525, metadata !614) #10, !dbg !3144
  %5 = load i32, i32* %4, align 4, !dbg !3145, !tbaa !776
  %6 = or i32 %5, 67108864, !dbg !3146
  store i32 %6, i32* %4, align 4, !dbg !3146, !tbaa !776
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !3058, metadata !851) #10, !dbg !3136
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #10, !dbg !3147
  call void @llvm.lifetime.end(i64 56, i8* nonnull %3) #10, !dbg !3148
  ret i8* %7, !dbg !3149
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon_mem(i8*, i64) local_unnamed_addr #6 !dbg !3150 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3152, metadata !614), !dbg !3154
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3153, metadata !614), !dbg !3155
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3055, metadata !614) #10, !dbg !3156
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3056, metadata !614) #10, !dbg !3158
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !3057, metadata !614) #10, !dbg !3159
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3160
  call void @llvm.lifetime.start(i64 56, i8* nonnull %4) #10, !dbg !3160
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !3161, !tbaa.struct !3064
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !3058, metadata !851) #10, !dbg !3162
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !1519, metadata !614) #10, !dbg !3163
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1520, metadata !614) #10, !dbg !3165
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1521, metadata !614) #10, !dbg !3166
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1522, metadata !614) #10, !dbg !3167
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !3168
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !1523, metadata !614) #10, !dbg !3169
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !1525, metadata !614) #10, !dbg !3170
  %6 = load i32, i32* %5, align 4, !dbg !3171, !tbaa !776
  %7 = or i32 %6, 67108864, !dbg !3172
  store i32 %7, i32* %5, align 4, !dbg !3172, !tbaa !776
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !3058, metadata !851) #10, !dbg !3162
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #10, !dbg !3173
  call void @llvm.lifetime.end(i64 56, i8* nonnull %4) #10, !dbg !3174
  ret i8* %8, !dbg !3175
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_colon(i32, i32, i8*) local_unnamed_addr #6 !dbg !3176 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !2931, metadata !2937), !dbg !3182
  %5 = alloca %struct.quoting_options, align 8
  %6 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3178, metadata !614), !dbg !3184
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3179, metadata !614), !dbg !3185
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3180, metadata !614), !dbg !3186
  %7 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3187
  call void @llvm.lifetime.start(i64 56, i8* nonnull %7) #10, !dbg !3187
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2936, metadata !614) #10, !dbg !3188
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !3189
  call void @llvm.lifetime.start(i64 52, i8* nonnull %8), !dbg !3189
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2931, metadata !614) #10, !dbg !3182
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2931, metadata !2947) #10, !dbg !3182
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !3182
  %9 = icmp eq i32 %1, 10, !dbg !3190
  br i1 %9, label %10, label %11, !dbg !3191

; <label>:10:                                     ; preds = %3
  tail call void @abort() #14, !dbg !3192, !noalias !3193
  unreachable, !dbg !3192

; <label>:11:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2931, metadata !2947) #10, !dbg !3182
  %12 = getelementptr inbounds [52 x i8], [52 x i8]* %6, i64 0, i64 0, !dbg !3196
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %12, i8* nonnull %8, i64 52, i32 4, i1 false), !dbg !3196
  call void @llvm.lifetime.end(i64 52, i8* nonnull %8), !dbg !3197
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3198
  store i32 %1, i32* %13, align 8, !dbg !3198
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !3198
  %15 = bitcast i32* %14 to i8*, !dbg !3198
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* nonnull %12, i64 52, i32 4, i1 false), !dbg !3198
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3181, metadata !851), !dbg !3199
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1519, metadata !614), !dbg !3200
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1520, metadata !614), !dbg !3202
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1521, metadata !614), !dbg !3203
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1522, metadata !614), !dbg !3204
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 1, !dbg !3205
  tail call void @llvm.dbg.value(metadata i32* %16, i64 0, metadata !1523, metadata !614), !dbg !3206
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !1525, metadata !614), !dbg !3207
  %17 = load i32, i32* %16, align 4, !dbg !3208, !tbaa !776
  %18 = or i32 %17, 67108864, !dbg !3209
  store i32 %18, i32* %16, align 4, !dbg !3209, !tbaa !776
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3181, metadata !851), !dbg !3199
  %19 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !3210
  call void @llvm.lifetime.end(i64 56, i8* nonnull %7) #10, !dbg !3211
  ret i8* %19, !dbg !3212
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom(i32, i8*, i8*, i8*) local_unnamed_addr #6 !dbg !3213 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3217, metadata !614), !dbg !3221
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3218, metadata !614), !dbg !3222
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3219, metadata !614), !dbg !3223
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3220, metadata !614), !dbg !3224
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3225, metadata !614) #10, !dbg !3235
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3230, metadata !614) #10, !dbg !3237
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3231, metadata !614) #10, !dbg !3238
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3232, metadata !614) #10, !dbg !3239
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3233, metadata !614) #10, !dbg !3240
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3241
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #10, !dbg !3241
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !3242, !tbaa.struct !3064
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3234, metadata !851) #10, !dbg !3243
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1569, metadata !614) #10, !dbg !3244
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1570, metadata !614) #10, !dbg !3246
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1571, metadata !614) #10, !dbg !3247
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1569, metadata !614) #10, !dbg !3244
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1569, metadata !614) #10, !dbg !3244
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3248
  store i32 10, i32* %7, align 8, !dbg !3249, !tbaa !1499
  %8 = icmp ne i8* %1, null, !dbg !3250
  %9 = icmp ne i8* %2, null, !dbg !3251
  %10 = and i1 %8, %9, !dbg !3252
  br i1 %10, label %12, label %11, !dbg !3252

; <label>:11:                                     ; preds = %4
  tail call void @abort() #14, !dbg !3253
  unreachable, !dbg !3253

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3254
  store i8* %1, i8** %13, align 8, !dbg !3255, !tbaa !1588
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3256
  store i8* %2, i8** %14, align 8, !dbg !3257, !tbaa !1591
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3234, metadata !851) #10, !dbg !3243
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #10, !dbg !3258
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #10, !dbg !3259
  ret i8* %15, !dbg !3260
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom_mem(i32, i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !3226 {
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3225, metadata !614), !dbg !3261
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3230, metadata !614), !dbg !3262
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3231, metadata !614), !dbg !3263
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3232, metadata !614), !dbg !3264
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !3233, metadata !614), !dbg !3265
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !3266
  call void @llvm.lifetime.start(i64 56, i8* nonnull %7) #10, !dbg !3266
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %7, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !3267, !tbaa.struct !3064
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !3234, metadata !851), !dbg !3268
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !1569, metadata !614) #10, !dbg !3269
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1570, metadata !614) #10, !dbg !3271
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1571, metadata !614) #10, !dbg !3272
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1569, metadata !614) #10, !dbg !3269
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !1569, metadata !614) #10, !dbg !3269
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3273
  store i32 10, i32* %8, align 8, !dbg !3274, !tbaa !1499
  %9 = icmp ne i8* %1, null, !dbg !3275
  %10 = icmp ne i8* %2, null, !dbg !3276
  %11 = and i1 %9, %10, !dbg !3277
  br i1 %11, label %13, label %12, !dbg !3277

; <label>:12:                                     ; preds = %5
  tail call void @abort() #14, !dbg !3278
  unreachable, !dbg !3278

; <label>:13:                                     ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3279
  store i8* %1, i8** %14, align 8, !dbg !3280, !tbaa !1588
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3281
  store i8* %2, i8** %15, align 8, !dbg !3282, !tbaa !1591
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !3234, metadata !851), !dbg !3268
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !3283
  call void @llvm.lifetime.end(i64 56, i8* nonnull %7) #10, !dbg !3284
  ret i8* %16, !dbg !3285
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom(i8*, i8*, i8*) local_unnamed_addr #6 !dbg !3286 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3290, metadata !614), !dbg !3293
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3291, metadata !614), !dbg !3294
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3292, metadata !614), !dbg !3295
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3217, metadata !614) #10, !dbg !3296
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3218, metadata !614) #10, !dbg !3298
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3219, metadata !614) #10, !dbg !3299
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3220, metadata !614) #10, !dbg !3300
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3225, metadata !614) #10, !dbg !3301
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3230, metadata !614) #10, !dbg !3303
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3231, metadata !614) #10, !dbg !3304
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3232, metadata !614) #10, !dbg !3305
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3233, metadata !614) #10, !dbg !3306
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3307
  call void @llvm.lifetime.start(i64 56, i8* nonnull %5) #10, !dbg !3307
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !3308, !tbaa.struct !3064
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3234, metadata !851) #10, !dbg !3309
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1569, metadata !614) #10, !dbg !3310
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1570, metadata !614) #10, !dbg !3312
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1571, metadata !614) #10, !dbg !3313
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1569, metadata !614) #10, !dbg !3310
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1569, metadata !614) #10, !dbg !3310
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3314
  store i32 10, i32* %6, align 8, !dbg !3315, !tbaa !1499
  %7 = icmp ne i8* %0, null, !dbg !3316
  %8 = icmp ne i8* %1, null, !dbg !3317
  %9 = and i1 %7, %8, !dbg !3318
  br i1 %9, label %11, label %10, !dbg !3318

; <label>:10:                                     ; preds = %3
  tail call void @abort() #14, !dbg !3319
  unreachable, !dbg !3319

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !3320
  store i8* %0, i8** %12, align 8, !dbg !3321, !tbaa !1588
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !3322
  store i8* %1, i8** %13, align 8, !dbg !3323, !tbaa !1591
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3234, metadata !851) #10, !dbg !3309
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #10, !dbg !3324
  call void @llvm.lifetime.end(i64 56, i8* nonnull %5) #10, !dbg !3325
  ret i8* %14, !dbg !3326
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom_mem(i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !3327 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3331, metadata !614), !dbg !3335
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3332, metadata !614), !dbg !3336
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3333, metadata !614), !dbg !3337
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3334, metadata !614), !dbg !3338
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3225, metadata !614) #10, !dbg !3339
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3230, metadata !614) #10, !dbg !3341
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3231, metadata !614) #10, !dbg !3342
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3232, metadata !614) #10, !dbg !3343
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3233, metadata !614) #10, !dbg !3344
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3345
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #10, !dbg !3345
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !3346, !tbaa.struct !3064
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3234, metadata !851) #10, !dbg !3347
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1569, metadata !614) #10, !dbg !3348
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1570, metadata !614) #10, !dbg !3350
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1571, metadata !614) #10, !dbg !3351
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1569, metadata !614) #10, !dbg !3348
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1569, metadata !614) #10, !dbg !3348
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3352
  store i32 10, i32* %7, align 8, !dbg !3353, !tbaa !1499
  %8 = icmp ne i8* %0, null, !dbg !3354
  %9 = icmp ne i8* %1, null, !dbg !3355
  %10 = and i1 %8, %9, !dbg !3356
  br i1 %10, label %12, label %11, !dbg !3356

; <label>:11:                                     ; preds = %4
  tail call void @abort() #14, !dbg !3357
  unreachable, !dbg !3357

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3358
  store i8* %0, i8** %13, align 8, !dbg !3359, !tbaa !1588
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3360
  store i8* %1, i8** %14, align 8, !dbg !3361, !tbaa !1591
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3234, metadata !851) #10, !dbg !3347
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #10, !dbg !3362
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #10, !dbg !3363
  ret i8* %15, !dbg !3364
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !3365 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3369, metadata !614), !dbg !3372
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3370, metadata !614), !dbg !3373
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3371, metadata !614), !dbg !3374
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !3375
  ret i8* %4, !dbg !3376
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_mem(i8*, i64) local_unnamed_addr #6 !dbg !3377 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3381, metadata !614), !dbg !3383
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3382, metadata !614), !dbg !3384
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3369, metadata !614) #10, !dbg !3385
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3370, metadata !614) #10, !dbg !3387
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3371, metadata !614) #10, !dbg !3388
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !3389
  ret i8* %3, !dbg !3390
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n(i32, i8*) local_unnamed_addr #6 !dbg !3391 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3395, metadata !614), !dbg !3397
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3396, metadata !614), !dbg !3398
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3369, metadata !614) #10, !dbg !3399
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3370, metadata !614) #10, !dbg !3401
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3371, metadata !614) #10, !dbg !3402
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !3403
  ret i8* %3, !dbg !3404
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote(i8*) local_unnamed_addr #6 !dbg !3405 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3409, metadata !614), !dbg !3410
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3395, metadata !614) #10, !dbg !3411
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3396, metadata !614) #10, !dbg !3413
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3369, metadata !614) #10, !dbg !3414
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3370, metadata !614) #10, !dbg !3416
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3371, metadata !614) #10, !dbg !3417
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !3418
  ret i8* %2, !dbg !3419
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_arn(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly, i64) local_unnamed_addr #6 !dbg !3420 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3477, metadata !614), !dbg !3483
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3478, metadata !614), !dbg !3484
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3479, metadata !614), !dbg !3485
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3480, metadata !614), !dbg !3486
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !3481, metadata !614), !dbg !3487
  tail call void @llvm.dbg.value(metadata i64 %5, i64 0, metadata !3482, metadata !614), !dbg !3488
  %7 = icmp eq i8* %1, null, !dbg !3489
  br i1 %7, label %10, label %8, !dbg !3491

; <label>:8:                                      ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.81, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #10, !dbg !3492
  br label %12, !dbg !3492

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.82, i64 0, i64 0), i8* %2, i8* %3) #10, !dbg !3493
  br label %12

; <label>:12:                                     ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.83, i64 0, i64 0), i32 5) #10, !dbg !3494
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2017) #10, !dbg !3495
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([203 x i8], [203 x i8]* @.str.3.84, i64 0, i64 0), i32 5) #10, !dbg !3497
  %16 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %0) #10, !dbg !3498
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
  ], !dbg !3499

; <label>:17:                                     ; preds = %12
  tail call void @abort() #14, !dbg !3500
  unreachable, !dbg !3500

; <label>:18:                                     ; preds = %12
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4.85, i64 0, i64 0), i32 5) #10, !dbg !3502
  %20 = load i8*, i8** %4, align 8, !dbg !3502, !tbaa !622
  %21 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %19, i8* %20) #10, !dbg !3503
  br label %146, !dbg !3505

; <label>:22:                                     ; preds = %12
  %23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5.86, i64 0, i64 0), i32 5) #10, !dbg !3506
  %24 = load i8*, i8** %4, align 8, !dbg !3506, !tbaa !622
  %25 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3506
  %26 = load i8*, i8** %25, align 8, !dbg !3506, !tbaa !622
  %27 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %23, i8* %24, i8* %26) #10, !dbg !3507
  br label %146, !dbg !3508

; <label>:28:                                     ; preds = %12
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6.87, i64 0, i64 0), i32 5) #10, !dbg !3509
  %30 = load i8*, i8** %4, align 8, !dbg !3509, !tbaa !622
  %31 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3509
  %32 = load i8*, i8** %31, align 8, !dbg !3509, !tbaa !622
  %33 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3509
  %34 = load i8*, i8** %33, align 8, !dbg !3509, !tbaa !622
  %35 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %29, i8* %30, i8* %32, i8* %34) #10, !dbg !3510
  br label %146, !dbg !3511

; <label>:36:                                     ; preds = %12
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7.88, i64 0, i64 0), i32 5) #10, !dbg !3512
  %38 = load i8*, i8** %4, align 8, !dbg !3512, !tbaa !622
  %39 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3512
  %40 = load i8*, i8** %39, align 8, !dbg !3512, !tbaa !622
  %41 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3512
  %42 = load i8*, i8** %41, align 8, !dbg !3512, !tbaa !622
  %43 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3512
  %44 = load i8*, i8** %43, align 8, !dbg !3512, !tbaa !622
  %45 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %37, i8* %38, i8* %40, i8* %42, i8* %44) #10, !dbg !3513
  br label %146, !dbg !3514

; <label>:46:                                     ; preds = %12
  %47 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8.89, i64 0, i64 0), i32 5) #10, !dbg !3515
  %48 = load i8*, i8** %4, align 8, !dbg !3515, !tbaa !622
  %49 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3515
  %50 = load i8*, i8** %49, align 8, !dbg !3515, !tbaa !622
  %51 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3515
  %52 = load i8*, i8** %51, align 8, !dbg !3515, !tbaa !622
  %53 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3515
  %54 = load i8*, i8** %53, align 8, !dbg !3515, !tbaa !622
  %55 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3515
  %56 = load i8*, i8** %55, align 8, !dbg !3515, !tbaa !622
  %57 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %47, i8* %48, i8* %50, i8* %52, i8* %54, i8* %56) #10, !dbg !3516
  br label %146, !dbg !3517

; <label>:58:                                     ; preds = %12
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9.90, i64 0, i64 0), i32 5) #10, !dbg !3518
  %60 = load i8*, i8** %4, align 8, !dbg !3518, !tbaa !622
  %61 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3518
  %62 = load i8*, i8** %61, align 8, !dbg !3518, !tbaa !622
  %63 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3518
  %64 = load i8*, i8** %63, align 8, !dbg !3518, !tbaa !622
  %65 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3518
  %66 = load i8*, i8** %65, align 8, !dbg !3518, !tbaa !622
  %67 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3518
  %68 = load i8*, i8** %67, align 8, !dbg !3518, !tbaa !622
  %69 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3518
  %70 = load i8*, i8** %69, align 8, !dbg !3518, !tbaa !622
  %71 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %59, i8* %60, i8* %62, i8* %64, i8* %66, i8* %68, i8* %70) #10, !dbg !3519
  br label %146, !dbg !3520

; <label>:72:                                     ; preds = %12
  %73 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10.91, i64 0, i64 0), i32 5) #10, !dbg !3521
  %74 = load i8*, i8** %4, align 8, !dbg !3521, !tbaa !622
  %75 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3521
  %76 = load i8*, i8** %75, align 8, !dbg !3521, !tbaa !622
  %77 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3521
  %78 = load i8*, i8** %77, align 8, !dbg !3521, !tbaa !622
  %79 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3521
  %80 = load i8*, i8** %79, align 8, !dbg !3521, !tbaa !622
  %81 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3521
  %82 = load i8*, i8** %81, align 8, !dbg !3521, !tbaa !622
  %83 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3521
  %84 = load i8*, i8** %83, align 8, !dbg !3521, !tbaa !622
  %85 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3521
  %86 = load i8*, i8** %85, align 8, !dbg !3521, !tbaa !622
  %87 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %73, i8* %74, i8* %76, i8* %78, i8* %80, i8* %82, i8* %84, i8* %86) #10, !dbg !3522
  br label %146, !dbg !3523

; <label>:88:                                     ; preds = %12
  %89 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11.92, i64 0, i64 0), i32 5) #10, !dbg !3524
  %90 = load i8*, i8** %4, align 8, !dbg !3524, !tbaa !622
  %91 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3524
  %92 = load i8*, i8** %91, align 8, !dbg !3524, !tbaa !622
  %93 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3524
  %94 = load i8*, i8** %93, align 8, !dbg !3524, !tbaa !622
  %95 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3524
  %96 = load i8*, i8** %95, align 8, !dbg !3524, !tbaa !622
  %97 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3524
  %98 = load i8*, i8** %97, align 8, !dbg !3524, !tbaa !622
  %99 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3524
  %100 = load i8*, i8** %99, align 8, !dbg !3524, !tbaa !622
  %101 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3524
  %102 = load i8*, i8** %101, align 8, !dbg !3524, !tbaa !622
  %103 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3524
  %104 = load i8*, i8** %103, align 8, !dbg !3524, !tbaa !622
  %105 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %89, i8* %90, i8* %92, i8* %94, i8* %96, i8* %98, i8* %100, i8* %102, i8* %104) #10, !dbg !3525
  br label %146, !dbg !3526

; <label>:106:                                    ; preds = %12
  %107 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12.93, i64 0, i64 0), i32 5) #10, !dbg !3527
  %108 = load i8*, i8** %4, align 8, !dbg !3527, !tbaa !622
  %109 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3527
  %110 = load i8*, i8** %109, align 8, !dbg !3527, !tbaa !622
  %111 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3527
  %112 = load i8*, i8** %111, align 8, !dbg !3527, !tbaa !622
  %113 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3527
  %114 = load i8*, i8** %113, align 8, !dbg !3527, !tbaa !622
  %115 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3527
  %116 = load i8*, i8** %115, align 8, !dbg !3527, !tbaa !622
  %117 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3527
  %118 = load i8*, i8** %117, align 8, !dbg !3527, !tbaa !622
  %119 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3527
  %120 = load i8*, i8** %119, align 8, !dbg !3527, !tbaa !622
  %121 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3527
  %122 = load i8*, i8** %121, align 8, !dbg !3527, !tbaa !622
  %123 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3527
  %124 = load i8*, i8** %123, align 8, !dbg !3527, !tbaa !622
  %125 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %107, i8* %108, i8* %110, i8* %112, i8* %114, i8* %116, i8* %118, i8* %120, i8* %122, i8* %124) #10, !dbg !3528
  br label %146, !dbg !3529

; <label>:126:                                    ; preds = %12
  %127 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13.94, i64 0, i64 0), i32 5) #10, !dbg !3530
  %128 = load i8*, i8** %4, align 8, !dbg !3530, !tbaa !622
  %129 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3530
  %130 = load i8*, i8** %129, align 8, !dbg !3530, !tbaa !622
  %131 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3530
  %132 = load i8*, i8** %131, align 8, !dbg !3530, !tbaa !622
  %133 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3530
  %134 = load i8*, i8** %133, align 8, !dbg !3530, !tbaa !622
  %135 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3530
  %136 = load i8*, i8** %135, align 8, !dbg !3530, !tbaa !622
  %137 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3530
  %138 = load i8*, i8** %137, align 8, !dbg !3530, !tbaa !622
  %139 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3530
  %140 = load i8*, i8** %139, align 8, !dbg !3530, !tbaa !622
  %141 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3530
  %142 = load i8*, i8** %141, align 8, !dbg !3530, !tbaa !622
  %143 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3530
  %144 = load i8*, i8** %143, align 8, !dbg !3530, !tbaa !622
  %145 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %127, i8* %128, i8* %130, i8* %132, i8* %134, i8* %136, i8* %138, i8* %140, i8* %142, i8* %144) #10, !dbg !3531
  br label %146, !dbg !3532

; <label>:146:                                    ; preds = %126, %106, %88, %72, %58, %46, %36, %28, %22, %18
  ret void, !dbg !3533
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_ar(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly) local_unnamed_addr #6 !dbg !3534 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3538, metadata !614), !dbg !3544
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3539, metadata !614), !dbg !3545
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3540, metadata !614), !dbg !3546
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3541, metadata !614), !dbg !3547
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !3542, metadata !614), !dbg !3548
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3543, metadata !614), !dbg !3549
  br label %6, !dbg !3550

; <label>:6:                                      ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !3543, metadata !614), !dbg !3549
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !3552
  %9 = load i8*, i8** %8, align 8, !dbg !3552, !tbaa !622
  %10 = icmp eq i8* %9, null, !dbg !3555
  %11 = add i64 %7, 1, !dbg !3557
  tail call void @llvm.dbg.value(metadata i64 %11, i64 0, metadata !3543, metadata !614), !dbg !3549
  br i1 %10, label %12, label %6, !dbg !3555, !llvm.loop !3559

; <label>:12:                                     ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !3562
  ret void, !dbg !3563
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_va(%struct._IO_FILE*, i8*, i8*, i8*, %struct.__va_list_tag* nocapture) local_unnamed_addr #6 !dbg !3564 {
  %6 = alloca [10 x i8*], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3575, metadata !614), !dbg !3583
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3576, metadata !614), !dbg !3584
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3577, metadata !614), !dbg !3585
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3578, metadata !614), !dbg !3586
  tail call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, i64 0, metadata !3579, metadata !614), !dbg !3587
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !3588
  call void @llvm.lifetime.start(i64 80, i8* nonnull %7) #10, !dbg !3588
  tail call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !3581, metadata !614), !dbg !3589
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3580, metadata !614), !dbg !3590
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3580, metadata !614), !dbg !3590
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  %11 = load i32, i32* %8, align 8, !dbg !3591
  %12 = icmp ult i32 %11, 41, !dbg !3591
  br i1 %12, label %13, label %18, !dbg !3591

; <label>:13:                                     ; preds = %5
  %14 = load i8*, i8** %9, align 8, !dbg !3595
  %15 = sext i32 %11 to i64, !dbg !3595
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !3595
  %17 = add i32 %11, 8, !dbg !3595
  store i32 %17, i32* %8, align 8, !dbg !3595
  br label %21, !dbg !3595

; <label>:18:                                     ; preds = %5
  %19 = load i8*, i8** %10, align 8, !dbg !3597
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !3597
  store i8* %20, i8** %10, align 8, !dbg !3597
  br label %21, !dbg !3597

; <label>:21:                                     ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ], !dbg !3591
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !3599
  %25 = load i8*, i8** %24, align 8, !dbg !3599
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !3601
  store i8* %25, i8** %26, align 16, !dbg !3602, !tbaa !622
  %27 = icmp eq i8* %25, null, !dbg !3603
  br i1 %27, label %30, label %28, !dbg !3604

; <label>:28:                                     ; preds = %21
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3580, metadata !614), !dbg !3590
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3580, metadata !614), !dbg !3590
  %29 = icmp ult i32 %22, 41, !dbg !3591
  br i1 %29, label %35, label %32, !dbg !3591

; <label>:30:                                     ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ]
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !3606
  call void @llvm.lifetime.end(i64 80, i8* nonnull %7) #10, !dbg !3607
  ret void, !dbg !3607

; <label>:32:                                     ; preds = %28
  %33 = load i8*, i8** %10, align 8, !dbg !3597
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !3597
  store i8* %34, i8** %10, align 8, !dbg !3597
  br label %40, !dbg !3597

; <label>:35:                                     ; preds = %28
  %36 = load i8*, i8** %9, align 8, !dbg !3595
  %37 = sext i32 %22 to i64, !dbg !3595
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !3595
  %39 = add i32 %22, 8, !dbg !3595
  store i32 %39, i32* %8, align 8, !dbg !3595
  br label %40, !dbg !3595

; <label>:40:                                     ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ], !dbg !3591
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !3599
  %44 = load i8*, i8** %43, align 8, !dbg !3599
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !3601
  store i8* %44, i8** %45, align 8, !dbg !3602, !tbaa !622
  %46 = icmp eq i8* %44, null, !dbg !3603
  br i1 %46, label %30, label %47, !dbg !3604

; <label>:47:                                     ; preds = %40
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3580, metadata !614), !dbg !3590
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3580, metadata !614), !dbg !3590
  %48 = icmp ult i32 %41, 41, !dbg !3591
  br i1 %48, label %52, label %49, !dbg !3591

; <label>:49:                                     ; preds = %47
  %50 = load i8*, i8** %10, align 8, !dbg !3597
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !3597
  store i8* %51, i8** %10, align 8, !dbg !3597
  br label %57, !dbg !3597

; <label>:52:                                     ; preds = %47
  %53 = load i8*, i8** %9, align 8, !dbg !3595
  %54 = sext i32 %41 to i64, !dbg !3595
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !3595
  %56 = add i32 %41, 8, !dbg !3595
  store i32 %56, i32* %8, align 8, !dbg !3595
  br label %57, !dbg !3595

; <label>:57:                                     ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ], !dbg !3591
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !3599
  %61 = load i8*, i8** %60, align 8, !dbg !3599
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !3601
  store i8* %61, i8** %62, align 16, !dbg !3602, !tbaa !622
  %63 = icmp eq i8* %61, null, !dbg !3603
  br i1 %63, label %30, label %64, !dbg !3604

; <label>:64:                                     ; preds = %57
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3580, metadata !614), !dbg !3590
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3580, metadata !614), !dbg !3590
  %65 = icmp ult i32 %58, 41, !dbg !3591
  br i1 %65, label %69, label %66, !dbg !3591

; <label>:66:                                     ; preds = %64
  %67 = load i8*, i8** %10, align 8, !dbg !3597
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !3597
  store i8* %68, i8** %10, align 8, !dbg !3597
  br label %74, !dbg !3597

; <label>:69:                                     ; preds = %64
  %70 = load i8*, i8** %9, align 8, !dbg !3595
  %71 = sext i32 %58 to i64, !dbg !3595
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !3595
  %73 = add i32 %58, 8, !dbg !3595
  store i32 %73, i32* %8, align 8, !dbg !3595
  br label %74, !dbg !3595

; <label>:74:                                     ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ], !dbg !3591
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !3599
  %78 = load i8*, i8** %77, align 8, !dbg !3599
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !3601
  store i8* %78, i8** %79, align 8, !dbg !3602, !tbaa !622
  %80 = icmp eq i8* %78, null, !dbg !3603
  br i1 %80, label %30, label %81, !dbg !3604

; <label>:81:                                     ; preds = %74
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3580, metadata !614), !dbg !3590
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3580, metadata !614), !dbg !3590
  %82 = icmp ult i32 %75, 41, !dbg !3591
  br i1 %82, label %86, label %83, !dbg !3591

; <label>:83:                                     ; preds = %81
  %84 = load i8*, i8** %10, align 8, !dbg !3597
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !3597
  store i8* %85, i8** %10, align 8, !dbg !3597
  br label %91, !dbg !3597

; <label>:86:                                     ; preds = %81
  %87 = load i8*, i8** %9, align 8, !dbg !3595
  %88 = sext i32 %75 to i64, !dbg !3595
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !3595
  %90 = add i32 %75, 8, !dbg !3595
  store i32 %90, i32* %8, align 8, !dbg !3595
  br label %91, !dbg !3595

; <label>:91:                                     ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ], !dbg !3591
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !3599
  %95 = load i8*, i8** %94, align 8, !dbg !3599
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !3601
  store i8* %95, i8** %96, align 16, !dbg !3602, !tbaa !622
  %97 = icmp eq i8* %95, null, !dbg !3603
  br i1 %97, label %30, label %98, !dbg !3604

; <label>:98:                                     ; preds = %91
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3580, metadata !614), !dbg !3590
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3580, metadata !614), !dbg !3590
  %99 = icmp ult i32 %92, 41, !dbg !3591
  br i1 %99, label %103, label %100, !dbg !3591

; <label>:100:                                    ; preds = %98
  %101 = load i8*, i8** %10, align 8, !dbg !3597
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !3597
  store i8* %102, i8** %10, align 8, !dbg !3597
  br label %108, !dbg !3597

; <label>:103:                                    ; preds = %98
  %104 = load i8*, i8** %9, align 8, !dbg !3595
  %105 = sext i32 %92 to i64, !dbg !3595
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !3595
  %107 = add i32 %92, 8, !dbg !3595
  store i32 %107, i32* %8, align 8, !dbg !3595
  br label %108, !dbg !3595

; <label>:108:                                    ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !3599
  %111 = load i8*, i8** %110, align 8, !dbg !3599
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !3601
  store i8* %111, i8** %112, align 8, !dbg !3602, !tbaa !622
  %113 = icmp eq i8* %111, null, !dbg !3603
  br i1 %113, label %30, label %114, !dbg !3604

; <label>:114:                                    ; preds = %108
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3580, metadata !614), !dbg !3590
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3580, metadata !614), !dbg !3590
  %115 = load i8*, i8** %10, align 8, !dbg !3597
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !3597
  store i8* %116, i8** %10, align 8, !dbg !3597
  %117 = bitcast i8* %115 to i8**, !dbg !3599
  %118 = load i8*, i8** %117, align 8, !dbg !3599
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !3601
  store i8* %118, i8** %119, align 16, !dbg !3602, !tbaa !622
  %120 = icmp eq i8* %118, null, !dbg !3603
  br i1 %120, label %30, label %121, !dbg !3604

; <label>:121:                                    ; preds = %114
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3580, metadata !614), !dbg !3590
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3580, metadata !614), !dbg !3590
  %122 = load i8*, i8** %10, align 8, !dbg !3597
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !3597
  store i8* %123, i8** %10, align 8, !dbg !3597
  %124 = bitcast i8* %122 to i8**, !dbg !3599
  %125 = load i8*, i8** %124, align 8, !dbg !3599
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !3601
  store i8* %125, i8** %126, align 8, !dbg !3602, !tbaa !622
  %127 = icmp eq i8* %125, null, !dbg !3603
  br i1 %127, label %30, label %128, !dbg !3604

; <label>:128:                                    ; preds = %121
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3580, metadata !614), !dbg !3590
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3580, metadata !614), !dbg !3590
  %129 = load i8*, i8** %10, align 8, !dbg !3597
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !3597
  store i8* %130, i8** %10, align 8, !dbg !3597
  %131 = bitcast i8* %129 to i8**, !dbg !3599
  %132 = load i8*, i8** %131, align 8, !dbg !3599
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !3601
  store i8* %132, i8** %133, align 16, !dbg !3602, !tbaa !622
  %134 = icmp eq i8* %132, null, !dbg !3603
  br i1 %134, label %30, label %135, !dbg !3604

; <label>:135:                                    ; preds = %128
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3580, metadata !614), !dbg !3590
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3580, metadata !614), !dbg !3590
  %136 = load i8*, i8** %10, align 8, !dbg !3597
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !3597
  store i8* %137, i8** %10, align 8, !dbg !3597
  %138 = bitcast i8* %136 to i8**, !dbg !3599
  %139 = load i8*, i8** %138, align 8, !dbg !3599
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !3601
  store i8* %139, i8** %140, align 8, !dbg !3602, !tbaa !622
  %141 = icmp eq i8* %139, null, !dbg !3603
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3580, metadata !614), !dbg !3590
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3580, metadata !614), !dbg !3590
  %142 = select i1 %141, i64 9, i64 10, !dbg !3604
  br label %30, !dbg !3604
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc(%struct._IO_FILE*, i8*, i8*, i8*, ...) local_unnamed_addr #6 !dbg !3608 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3612, metadata !614), !dbg !3622
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3613, metadata !614), !dbg !3623
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3614, metadata !614), !dbg !3624
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3615, metadata !614), !dbg !3625
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !3626
  call void @llvm.lifetime.start(i64 24, i8* nonnull %6) #10, !dbg !3626
  tail call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !3616, metadata !614), !dbg !3627
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !3628
  call void @llvm.va_start(i8* nonnull %6), !dbg !3628
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !3629
  call void @llvm.va_end(i8* nonnull %6), !dbg !3630
  call void @llvm.lifetime.end(i64 24, i8* nonnull %6) #10, !dbg !3631
  ret void, !dbg !3631
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #10

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #10

; Function Attrs: nounwind sspstrong uwtable
define void @emit_bug_reporting_address() local_unnamed_addr #6 !dbg !3632 {
  %1 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14.97, i64 0, i64 0), i32 5) #10, !dbg !3633
  %2 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15.98, i64 0, i64 0)) #10, !dbg !3634
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.99, i64 0, i64 0), i32 5) #10, !dbg !3636
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17.100, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.18.101, i64 0, i64 0)) #10, !dbg !3637
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.19.102, i64 0, i64 0), i32 5) #10, !dbg !3638
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !3638, !tbaa !622
  %7 = tail call i32 @fputs_unlocked(i8* %5, %struct._IO_FILE* %6) #10, !dbg !3639
  ret void, !dbg !3640
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnmalloc(i64, i64) local_unnamed_addr #12 !dbg !3641 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3643, metadata !614), !dbg !3645
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3644, metadata !614), !dbg !3646
  %3 = udiv i64 9223372036854775807, %1, !dbg !3647
  %4 = icmp ult i64 %3, %0, !dbg !3647
  br i1 %4, label %5, label %6, !dbg !3649

; <label>:5:                                      ; preds = %2
  tail call void @xalloc_die() #14, !dbg !3650
  unreachable, !dbg !3650

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3651
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !3652, metadata !614) #10, !dbg !3659
  %8 = tail call noalias i8* @malloc(i64 %7) #10, !dbg !3661
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !3658, metadata !614) #10, !dbg !3662
  %9 = icmp eq i8* %8, null, !dbg !3663
  %10 = icmp ne i64 %7, 0, !dbg !3665
  %11 = and i1 %10, %9, !dbg !3667
  br i1 %11, label %12, label %13, !dbg !3667

; <label>:12:                                     ; preds = %6
  tail call void @xalloc_die() #14, !dbg !3668
  unreachable, !dbg !3668

; <label>:13:                                     ; preds = %6
  ret i8* %8, !dbg !3669
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmalloc(i64) local_unnamed_addr #6 !dbg !3653 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3652, metadata !614), !dbg !3670
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !3671
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3658, metadata !614), !dbg !3672
  %3 = icmp eq i8* %2, null, !dbg !3673
  %4 = icmp ne i64 %0, 0, !dbg !3674
  %5 = and i1 %4, %3, !dbg !3675
  br i1 %5, label %6, label %7, !dbg !3675

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #14, !dbg !3676
  unreachable, !dbg !3676

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !3677
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnrealloc(i8*, i64, i64) local_unnamed_addr #12 !dbg !3678 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3682, metadata !614), !dbg !3685
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3683, metadata !614), !dbg !3686
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3684, metadata !614), !dbg !3687
  %4 = udiv i64 9223372036854775807, %2, !dbg !3688
  %5 = icmp ult i64 %4, %1, !dbg !3688
  br i1 %5, label %6, label %7, !dbg !3690

; <label>:6:                                      ; preds = %3
  tail call void @xalloc_die() #14, !dbg !3691
  unreachable, !dbg !3691

; <label>:7:                                      ; preds = %3
  %8 = mul i64 %2, %1, !dbg !3692
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3693, metadata !614) #10, !dbg !3699
  tail call void @llvm.dbg.value(metadata i64 %8, i64 0, metadata !3698, metadata !614) #10, !dbg !3701
  %9 = icmp eq i64 %8, 0, !dbg !3702
  %10 = icmp ne i8* %0, null, !dbg !3704
  %11 = and i1 %10, %9, !dbg !3706
  br i1 %11, label %12, label %13, !dbg !3706

; <label>:12:                                     ; preds = %7
  tail call void @free(i8* nonnull %0) #10, !dbg !3707
  br label %19, !dbg !3709

; <label>:13:                                     ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #10, !dbg !3710
  tail call void @llvm.dbg.value(metadata i8* %14, i64 0, metadata !3693, metadata !614) #10, !dbg !3699
  %15 = icmp eq i8* %14, null, !dbg !3711
  %16 = icmp ne i64 %8, 0, !dbg !3713
  %17 = and i1 %16, %15, !dbg !3715
  br i1 %17, label %18, label %19, !dbg !3715

; <label>:18:                                     ; preds = %13
  tail call void @xalloc_die() #14, !dbg !3716
  unreachable, !dbg !3716

; <label>:19:                                     ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ]
  ret i8* %20, !dbg !3717
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xrealloc(i8*, i64) local_unnamed_addr #6 !dbg !3694 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3693, metadata !614), !dbg !3718
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3698, metadata !614), !dbg !3719
  %3 = icmp eq i64 %1, 0, !dbg !3720
  %4 = icmp ne i8* %0, null, !dbg !3721
  %5 = and i1 %4, %3, !dbg !3722
  br i1 %5, label %6, label %7, !dbg !3722

; <label>:6:                                      ; preds = %2
  tail call void @free(i8* nonnull %0) #10, !dbg !3723
  br label %13, !dbg !3724

; <label>:7:                                      ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #10, !dbg !3725
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !3693, metadata !614), !dbg !3718
  %9 = icmp eq i8* %8, null, !dbg !3726
  %10 = icmp ne i64 %1, 0, !dbg !3727
  %11 = and i1 %10, %9, !dbg !3728
  br i1 %11, label %12, label %13, !dbg !3728

; <label>:12:                                     ; preds = %7
  tail call void @xalloc_die() #14, !dbg !3729
  unreachable, !dbg !3729

; <label>:13:                                     ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ]
  ret i8* %14, !dbg !3730
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @x2nrealloc(i8*, i64* nocapture, i64) local_unnamed_addr #12 !dbg !571 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !576, metadata !614), !dbg !3731
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !577, metadata !614), !dbg !3732
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !578, metadata !614), !dbg !3733
  %4 = load i64, i64* %1, align 8, !dbg !3734, !tbaa !859
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !579, metadata !614), !dbg !3735
  %5 = icmp eq i8* %0, null, !dbg !3736
  br i1 %5, label %6, label %13, !dbg !3738

; <label>:6:                                      ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3739
  br i1 %7, label %8, label %17, !dbg !3742

; <label>:8:                                      ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3743
  tail call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !579, metadata !614), !dbg !3735
  %10 = icmp ugt i64 %2, 128, !dbg !3745
  %11 = zext i1 %10 to i64, !dbg !3745
  %12 = add nuw nsw i64 %9, %11, !dbg !3746
  tail call void @llvm.dbg.value(metadata i64 %12, i64 0, metadata !579, metadata !614), !dbg !3735
  br label %17, !dbg !3747

; <label>:13:                                     ; preds = %3
  %14 = udiv i64 6148914691236517204, %2, !dbg !3748
  %15 = icmp ugt i64 %14, %4, !dbg !3751
  br i1 %15, label %20, label %16, !dbg !3752

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #14, !dbg !3753
  unreachable, !dbg !3753

; <label>:17:                                     ; preds = %6, %8
  %18 = phi i64 [ %12, %8 ], [ %4, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !579, metadata !614), !dbg !3735
  store i64 %18, i64* %1, align 8, !dbg !3754, !tbaa !859
  %19 = mul i64 %18, %2, !dbg !3755
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3693, metadata !614) #10, !dbg !3756
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !3698, metadata !614) #10, !dbg !3758
  br label %27, !dbg !3759

; <label>:20:                                     ; preds = %13
  %21 = lshr i64 %4, 1, !dbg !3760
  %22 = add i64 %4, 1, !dbg !3761
  %23 = add i64 %22, %21, !dbg !3762
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !579, metadata !614), !dbg !3735
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !579, metadata !614), !dbg !3735
  store i64 %23, i64* %1, align 8, !dbg !3754, !tbaa !859
  %24 = mul i64 %23, %2, !dbg !3755
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3693, metadata !614) #10, !dbg !3756
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !3698, metadata !614) #10, !dbg !3758
  %25 = icmp eq i64 %24, 0, !dbg !3763
  br i1 %25, label %26, label %27, !dbg !3759

; <label>:26:                                     ; preds = %20
  tail call void @free(i8* nonnull %0) #10, !dbg !3764
  br label %34, !dbg !3765

; <label>:27:                                     ; preds = %17, %20
  %28 = phi i64 [ %19, %17 ], [ %24, %20 ]
  %29 = tail call i8* @realloc(i8* %0, i64 %28) #10, !dbg !3766
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !3693, metadata !614) #10, !dbg !3756
  %30 = icmp eq i8* %29, null, !dbg !3767
  %31 = icmp ne i64 %28, 0, !dbg !3768
  %32 = and i1 %31, %30, !dbg !3769
  br i1 %32, label %33, label %34, !dbg !3769

; <label>:33:                                     ; preds = %27
  tail call void @xalloc_die() #14, !dbg !3770
  unreachable, !dbg !3770

; <label>:34:                                     ; preds = %26, %27
  %35 = phi i8* [ null, %26 ], [ %29, %27 ]
  ret i8* %35, !dbg !3771
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xcharalloc(i64) local_unnamed_addr #12 !dbg !3772 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3774, metadata !614), !dbg !3775
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3652, metadata !614) #10, !dbg !3776
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !3778
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3658, metadata !614) #10, !dbg !3779
  %3 = icmp eq i8* %2, null, !dbg !3780
  %4 = icmp ne i64 %0, 0, !dbg !3781
  %5 = and i1 %4, %3, !dbg !3782
  br i1 %5, label %6, label %7, !dbg !3782

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #14, !dbg !3783
  unreachable, !dbg !3783

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !3784
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @x2realloc(i8*, i64* nocapture) local_unnamed_addr #6 !dbg !3785 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3789, metadata !614), !dbg !3791
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !3790, metadata !614), !dbg !3792
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !576, metadata !614) #10, !dbg !3793
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !577, metadata !614) #10, !dbg !3795
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !578, metadata !614) #10, !dbg !3796
  %3 = load i64, i64* %1, align 8, !dbg !3797, !tbaa !859
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !579, metadata !614) #10, !dbg !3798
  %4 = icmp eq i8* %0, null, !dbg !3799
  br i1 %4, label %5, label %8, !dbg !3800

; <label>:5:                                      ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3801
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !579, metadata !614) #10, !dbg !3798
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !579, metadata !614) #10, !dbg !3798
  %7 = select i1 %6, i64 128, i64 %3, !dbg !3802
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !579, metadata !614) #10, !dbg !3798
  store i64 %7, i64* %1, align 8, !dbg !3803, !tbaa !859
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3693, metadata !614) #10, !dbg !3804
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3698, metadata !614) #10, !dbg !3806
  br label %17, !dbg !3807

; <label>:8:                                      ; preds = %2
  %9 = icmp ult i64 %3, 6148914691236517204, !dbg !3808
  br i1 %9, label %11, label %10, !dbg !3809

; <label>:10:                                     ; preds = %8
  tail call void @xalloc_die() #14, !dbg !3810
  unreachable, !dbg !3810

; <label>:11:                                     ; preds = %8
  %12 = lshr i64 %3, 1, !dbg !3811
  %13 = add i64 %3, 1, !dbg !3812
  %14 = add i64 %13, %12, !dbg !3813
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !579, metadata !614) #10, !dbg !3798
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !579, metadata !614) #10, !dbg !3798
  store i64 %14, i64* %1, align 8, !dbg !3803, !tbaa !859
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3693, metadata !614) #10, !dbg !3804
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3698, metadata !614) #10, !dbg !3806
  %15 = icmp eq i64 %14, 0, !dbg !3814
  br i1 %15, label %16, label %17, !dbg !3807

; <label>:16:                                     ; preds = %11
  tail call void @free(i8* nonnull %0) #10, !dbg !3815
  br label %24, !dbg !3816

; <label>:17:                                     ; preds = %11, %5
  %18 = phi i64 [ %7, %5 ], [ %14, %11 ]
  %19 = tail call i8* @realloc(i8* %0, i64 %18) #10, !dbg !3817
  tail call void @llvm.dbg.value(metadata i8* %19, i64 0, metadata !3693, metadata !614) #10, !dbg !3804
  %20 = icmp eq i8* %19, null, !dbg !3818
  %21 = icmp ne i64 %18, 0, !dbg !3819
  %22 = and i1 %21, %20, !dbg !3820
  br i1 %22, label %23, label %24, !dbg !3820

; <label>:23:                                     ; preds = %17
  tail call void @xalloc_die() #14, !dbg !3821
  unreachable, !dbg !3821

; <label>:24:                                     ; preds = %16, %17
  %25 = phi i8* [ null, %16 ], [ %19, %17 ]
  ret i8* %25, !dbg !3822
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xzalloc(i64) local_unnamed_addr #6 !dbg !3823 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3825, metadata !614), !dbg !3826
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3652, metadata !614) #10, !dbg !3827
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !3829
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3658, metadata !614) #10, !dbg !3830
  %3 = icmp eq i8* %2, null, !dbg !3831
  %4 = icmp ne i64 %0, 0, !dbg !3832
  %5 = and i1 %4, %3, !dbg !3833
  br i1 %5, label %6, label %7, !dbg !3833

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #14, !dbg !3834
  unreachable, !dbg !3834

; <label>:7:                                      ; preds = %1
  tail call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 %0, i32 1, i1 false), !dbg !3835
  ret i8* %2, !dbg !3836
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xcalloc(i64, i64) local_unnamed_addr #6 !dbg !3837 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3839, metadata !614), !dbg !3842
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3840, metadata !614), !dbg !3843
  %3 = udiv i64 9223372036854775807, %1, !dbg !3844
  %4 = icmp ult i64 %3, %0, !dbg !3844
  br i1 %4, label %8, label %5, !dbg !3846

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #10, !dbg !3847
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !3841, metadata !614), !dbg !3849
  %7 = icmp eq i8* %6, null, !dbg !3850
  br i1 %7, label %8, label %9, !dbg !3851

; <label>:8:                                      ; preds = %5, %2
  tail call void @xalloc_die() #14, !dbg !3853
  unreachable, !dbg !3853

; <label>:9:                                      ; preds = %5
  ret i8* %6, !dbg !3854
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmemdup(i8* nocapture readonly, i64) local_unnamed_addr #6 !dbg !3855 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3859, metadata !614), !dbg !3861
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3860, metadata !614), !dbg !3862
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3652, metadata !614) #10, !dbg !3863
  %3 = tail call noalias i8* @malloc(i64 %1) #10, !dbg !3865
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3658, metadata !614) #10, !dbg !3866
  %4 = icmp eq i8* %3, null, !dbg !3867
  %5 = icmp ne i64 %1, 0, !dbg !3868
  %6 = and i1 %5, %4, !dbg !3869
  br i1 %6, label %7, label %8, !dbg !3869

; <label>:7:                                      ; preds = %2
  tail call void @xalloc_die() #14, !dbg !3870
  unreachable, !dbg !3870

; <label>:8:                                      ; preds = %2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %0, i64 %1, i32 1, i1 false), !dbg !3871
  ret i8* %3, !dbg !3872
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xstrdup(i8* nocapture readonly) local_unnamed_addr #6 !dbg !3873 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3875, metadata !614), !dbg !3876
  %2 = tail call i64 @strlen(i8* %0) #13, !dbg !3877
  %3 = add i64 %2, 1, !dbg !3878
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3859, metadata !614) #10, !dbg !3879
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3860, metadata !614) #10, !dbg !3882
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3652, metadata !614) #10, !dbg !3883
  %4 = tail call noalias i8* @malloc(i64 %3) #10, !dbg !3885
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !3658, metadata !614) #10, !dbg !3886
  %5 = icmp eq i8* %4, null, !dbg !3887
  %6 = icmp ne i64 %3, 0, !dbg !3888
  %7 = and i1 %6, %5, !dbg !3889
  br i1 %7, label %8, label %9, !dbg !3889

; <label>:8:                                      ; preds = %1
  tail call void @xalloc_die() #14, !dbg !3890
  unreachable, !dbg !3890

; <label>:9:                                      ; preds = %1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %0, i64 %3, i32 1, i1 false) #10, !dbg !3891
  ret i8* %4, !dbg !3892
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @xalloc_die() local_unnamed_addr #0 !dbg !3893 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !3895, !tbaa !776
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.113, i64 0, i64 0), i32 5) #10, !dbg !3896
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.114, i64 0, i64 0), i8* %2) #10, !dbg !3897
  tail call void @abort() #14, !dbg !3899
  unreachable, !dbg !3899
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @xstrtoumax(i8*, i8**, i32, i64* nocapture, i8* readonly) local_unnamed_addr #6 !dbg !3900 {
  %6 = alloca i8*, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3907, metadata !614), !dbg !3925
  tail call void @llvm.dbg.value(metadata i8** %1, i64 0, metadata !3908, metadata !614), !dbg !3926
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !3909, metadata !614), !dbg !3927
  tail call void @llvm.dbg.value(metadata i64* %3, i64 0, metadata !3910, metadata !614), !dbg !3928
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !3911, metadata !614), !dbg !3929
  %7 = bitcast i8** %6 to i8*, !dbg !3930
  call void @llvm.lifetime.start(i64 8, i8* nonnull %7) #10, !dbg !3930
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3915, metadata !614), !dbg !3931
  %8 = icmp ult i32 %2, 37, !dbg !3932
  br i1 %8, label %10, label %9, !dbg !3932

; <label>:9:                                      ; preds = %5
  tail call void @__assert_fail(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.117, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1.118, i64 0, i64 0), i32 96, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @__PRETTY_FUNCTION__.xstrtoumax, i64 0, i64 0)) #14, !dbg !3935
  unreachable, !dbg !3935

; <label>:10:                                     ; preds = %5
  %11 = icmp ne i8** %1, null, !dbg !3937
  tail call void @llvm.dbg.value(metadata i8** %25, i64 0, metadata !3913, metadata !614), !dbg !3938
  %12 = tail call i32* @__errno_location() #1, !dbg !3939
  store i32 0, i32* %12, align 4, !dbg !3940, !tbaa !776
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3916, metadata !614), !dbg !3941
  %13 = tail call i16** @__ctype_b_loc() #1, !dbg !3942
  %14 = load i16*, i16** %13, align 8, !tbaa !622
  br label %15, !dbg !3944

; <label>:15:                                     ; preds = %15, %10
  %16 = phi i8* [ %0, %10 ], [ %23, %15 ]
  %17 = load i8, i8* %16, align 1, !tbaa !785
  tail call void @llvm.dbg.value(metadata i8 %17, i64 0, metadata !3919, metadata !614), !dbg !3945
  tail call void @llvm.dbg.value(metadata i8* %16, i64 0, metadata !3916, metadata !614), !dbg !3941
  %18 = zext i8 %17 to i64, !dbg !3942
  %19 = getelementptr inbounds i16, i16* %14, i64 %18, !dbg !3942
  %20 = load i16, i16* %19, align 2, !dbg !3942, !tbaa !2031
  %21 = and i16 %20, 8192, !dbg !3942
  %22 = icmp eq i16 %21, 0, !dbg !3946
  %23 = getelementptr inbounds i8, i8* %16, i64 1, !dbg !3947
  tail call void @llvm.dbg.value(metadata i8* %23, i64 0, metadata !3916, metadata !614), !dbg !3941
  br i1 %22, label %24, label %15, !dbg !3946, !llvm.loop !3948

; <label>:24:                                     ; preds = %15
  %25 = select i1 %11, i8** %1, i8** %6, !dbg !3937
  %26 = icmp eq i8 %17, 45, !dbg !3950
  br i1 %26, label %265, label %27

; <label>:27:                                     ; preds = %24
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3952, metadata !614) #10, !dbg !3962
  tail call void @llvm.dbg.value(metadata i8** %25, i64 0, metadata !3960, metadata !614) #10, !dbg !3962
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !3961, metadata !614) #10, !dbg !3962
  %28 = call i64 @__strtoul_internal(i8* %0, i8** %25, i32 %2, i32 0) #10, !dbg !3964
  call void @llvm.dbg.value(metadata i64 %28, i64 0, metadata !3914, metadata !614), !dbg !3965
  %29 = load i8*, i8** %25, align 8, !dbg !3966, !tbaa !622
  %30 = icmp eq i8* %29, %0, !dbg !3968
  br i1 %30, label %31, label %40, !dbg !3969

; <label>:31:                                     ; preds = %27
  %32 = icmp eq i8* %4, null, !dbg !3970
  br i1 %32, label %265, label %33, !dbg !3973

; <label>:33:                                     ; preds = %31
  %34 = load i8, i8* %0, align 1, !dbg !3974, !tbaa !785
  %35 = icmp eq i8 %34, 0, !dbg !3974
  br i1 %35, label %265, label %36, !dbg !3976

; <label>:36:                                     ; preds = %33
  %37 = sext i8 %34 to i32, !dbg !3974
  %38 = call i8* @strchr(i8* nonnull %4, i32 %37) #10, !dbg !3977
  %39 = icmp eq i8* %38, null, !dbg !3977
  br i1 %39, label %265, label %47, !dbg !3979

; <label>:40:                                     ; preds = %27
  %41 = load i32, i32* %12, align 4, !dbg !3981, !tbaa !776
  switch i32 %41, label %265 [
    i32 0, label %43
    i32 34, label %42
  ], !dbg !3983

; <label>:42:                                     ; preds = %40
  call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !3915, metadata !614), !dbg !3931
  br label %43, !dbg !3984

; <label>:43:                                     ; preds = %40, %42
  %44 = phi i32 [ 1, %42 ], [ 0, %40 ]
  call void @llvm.dbg.value(metadata i32 %44, i64 0, metadata !3915, metadata !614), !dbg !3931
  %45 = icmp eq i8* %4, null, !dbg !3986
  br i1 %45, label %46, label %47, !dbg !3988

; <label>:46:                                     ; preds = %43
  call void @llvm.dbg.value(metadata i64 %28, i64 0, metadata !3914, metadata !614), !dbg !3965
  store i64 %28, i64* %3, align 8, !dbg !3989, !tbaa !859
  br label %265, !dbg !3991

; <label>:47:                                     ; preds = %36, %43
  %48 = phi i32 [ %44, %43 ], [ 0, %36 ]
  %49 = phi i64 [ %28, %43 ], [ 1, %36 ]
  %50 = load i8, i8* %29, align 1, !dbg !3992, !tbaa !785
  %51 = icmp eq i8 %50, 0, !dbg !3993
  br i1 %51, label %262, label %52, !dbg !3994

; <label>:52:                                     ; preds = %47
  %53 = sext i8 %50 to i32, !dbg !3992
  call void @llvm.dbg.value(metadata i32 1024, i64 0, metadata !3920, metadata !614), !dbg !3995
  call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !3923, metadata !614), !dbg !3996
  %54 = call i8* @strchr(i8* nonnull %4, i32 %53) #10, !dbg !3997
  %55 = icmp eq i8* %54, null, !dbg !3997
  br i1 %55, label %56, label %58, !dbg !4000

; <label>:56:                                     ; preds = %52
  call void @llvm.dbg.value(metadata i64 %28, i64 0, metadata !3914, metadata !614), !dbg !3965
  store i64 %49, i64* %3, align 8, !dbg !4002, !tbaa !859
  %57 = or i32 %48, 2, !dbg !4004
  br label %265, !dbg !4005

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
  ], !dbg !4006

; <label>:59:                                     ; preds = %58, %58, %58, %58, %58, %58, %58, %58, %58, %58, %58, %58
  %60 = call i8* @strchr(i8* nonnull %4, i32 48) #10, !dbg !4007
  %61 = icmp eq i8* %60, null, !dbg !4007
  br i1 %61, label %72, label %62, !dbg !4011

; <label>:62:                                     ; preds = %59
  %63 = getelementptr inbounds i8, i8* %29, i64 1, !dbg !4013
  %64 = load i8, i8* %63, align 1, !dbg !4013, !tbaa !785
  %65 = sext i8 %64 to i32, !dbg !4013
  switch i32 %65, label %72 [
    i32 105, label %66
    i32 66, label %71
    i32 68, label %71
  ], !dbg !4014

; <label>:66:                                     ; preds = %62
  %67 = getelementptr inbounds i8, i8* %29, i64 2, !dbg !4015
  %68 = load i8, i8* %67, align 1, !dbg !4015, !tbaa !785
  %69 = icmp eq i8 %68, 66, !dbg !4018
  call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !3923, metadata !614), !dbg !3996
  %70 = select i1 %69, i64 3, i64 1, !dbg !4019
  br label %72, !dbg !4019

; <label>:71:                                     ; preds = %62, %62
  call void @llvm.dbg.value(metadata i32 1000, i64 0, metadata !3920, metadata !614), !dbg !3995
  call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !3923, metadata !614), !dbg !3996
  br label %72, !dbg !4020

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
  ], !dbg !4021

; <label>:75:                                     ; preds = %72
  tail call void @llvm.dbg.value(metadata i32 512, i64 0, metadata !4022, metadata !614), !dbg !4028
  %76 = icmp ugt i64 %49, 36028797018963967, !dbg !4031
  %77 = shl i64 %49, 9, !dbg !4033
  %78 = select i1 %76, i64 -1, i64 %77, !dbg !4034
  %79 = zext i1 %76 to i32, !dbg !4034
  call void @llvm.dbg.value(metadata i32 %79, i64 0, metadata !3924, metadata !614), !dbg !4035
  br label %253, !dbg !4036

; <label>:80:                                     ; preds = %72
  tail call void @llvm.dbg.value(metadata i32 1024, i64 0, metadata !4022, metadata !614), !dbg !4037
  %81 = icmp ugt i64 %49, 18014398509481983, !dbg !4039
  %82 = shl i64 %49, 10, !dbg !4040
  %83 = select i1 %81, i64 -1, i64 %82, !dbg !4041
  %84 = zext i1 %81 to i32, !dbg !4041
  call void @llvm.dbg.value(metadata i32 %84, i64 0, metadata !3924, metadata !614), !dbg !4035
  br label %253, !dbg !4042

; <label>:85:                                     ; preds = %72
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4043, metadata !614), !dbg !4051
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4050, metadata !614), !dbg !4053
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4050, metadata !614), !dbg !4053
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4043, metadata !614), !dbg !4051
  %86 = udiv i64 -1, %73
  %87 = icmp ult i64 %86, %49, !dbg !4054
  %88 = mul i64 %49, %73, !dbg !4056
  %89 = select i1 %87, i64 -1, i64 %88, !dbg !4057
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4043, metadata !614), !dbg !4051
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4043, metadata !614), !dbg !4051
  %90 = icmp ult i64 %86, %89, !dbg !4054
  %91 = mul i64 %89, %73, !dbg !4056
  %92 = select i1 %90, i64 -1, i64 %91, !dbg !4057
  %93 = or i1 %90, %87, !dbg !4058
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4043, metadata !614), !dbg !4051
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4043, metadata !614), !dbg !4051
  %94 = icmp ult i64 %86, %92, !dbg !4054
  %95 = mul i64 %92, %73, !dbg !4056
  %96 = select i1 %94, i64 -1, i64 %95, !dbg !4057
  %97 = or i1 %94, %93, !dbg !4058
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4043, metadata !614), !dbg !4051
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4043, metadata !614), !dbg !4051
  %98 = icmp ult i64 %86, %96, !dbg !4054
  %99 = mul i64 %96, %73, !dbg !4056
  %100 = select i1 %98, i64 -1, i64 %99, !dbg !4057
  %101 = or i1 %98, %97, !dbg !4058
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4043, metadata !614), !dbg !4051
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4043, metadata !614), !dbg !4051
  %102 = icmp ult i64 %86, %100, !dbg !4054
  %103 = mul i64 %100, %73, !dbg !4056
  %104 = select i1 %102, i64 -1, i64 %103, !dbg !4057
  %105 = or i1 %102, %101, !dbg !4058
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4043, metadata !614), !dbg !4051
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4043, metadata !614), !dbg !4051
  %106 = icmp ult i64 %86, %104, !dbg !4054
  %107 = mul i64 %104, %73, !dbg !4056
  %108 = select i1 %106, i64 -1, i64 %107, !dbg !4057
  %109 = or i1 %106, %105, !dbg !4058
  %110 = zext i1 %109 to i32, !dbg !4058
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4043, metadata !614), !dbg !4051
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4043, metadata !614), !dbg !4051
  br label %253, !dbg !4035

; <label>:111:                                    ; preds = %72, %72
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !4043, metadata !614), !dbg !4059
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4050, metadata !614), !dbg !4061
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4050, metadata !614), !dbg !4061
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !4043, metadata !614), !dbg !4059
  %112 = udiv i64 -1, %73
  %113 = icmp ult i64 %112, %49, !dbg !4062
  %114 = mul i64 %49, %73, !dbg !4064
  %115 = select i1 %113, i64 -1, i64 %114, !dbg !4065
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !4043, metadata !614), !dbg !4059
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !4043, metadata !614), !dbg !4059
  %116 = icmp ult i64 %112, %115, !dbg !4062
  %117 = mul i64 %115, %73, !dbg !4064
  %118 = select i1 %116, i64 -1, i64 %117, !dbg !4065
  %119 = or i1 %116, %113, !dbg !4066
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !4043, metadata !614), !dbg !4059
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !4043, metadata !614), !dbg !4059
  %120 = icmp ult i64 %112, %118, !dbg !4062
  %121 = mul i64 %118, %73, !dbg !4064
  %122 = select i1 %120, i64 -1, i64 %121, !dbg !4065
  %123 = or i1 %120, %119, !dbg !4066
  %124 = zext i1 %123 to i32, !dbg !4066
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !4043, metadata !614), !dbg !4059
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !4043, metadata !614), !dbg !4059
  br label %253, !dbg !4035

; <label>:125:                                    ; preds = %72, %72
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !4043, metadata !614), !dbg !4067
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4050, metadata !614), !dbg !4069
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4050, metadata !614), !dbg !4069
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !4043, metadata !614), !dbg !4067
  %126 = udiv i64 -1, %73
  %127 = icmp ult i64 %126, %49, !dbg !4070
  %128 = mul i64 %49, %73, !dbg !4072
  %129 = select i1 %127, i64 -1, i64 %128, !dbg !4073
  %130 = zext i1 %127 to i32, !dbg !4073
  tail call void @llvm.dbg.value(metadata i32 %130, i64 0, metadata !4050, metadata !614), !dbg !4069
  tail call void @llvm.dbg.value(metadata i32 %130, i64 0, metadata !4050, metadata !614), !dbg !4069
  br label %253, !dbg !4035

; <label>:131:                                    ; preds = %72, %72
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !4043, metadata !614), !dbg !4074
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4050, metadata !614), !dbg !4076
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4050, metadata !614), !dbg !4076
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !4043, metadata !614), !dbg !4074
  %132 = udiv i64 -1, %73
  %133 = icmp ult i64 %132, %49, !dbg !4077
  %134 = mul i64 %49, %73, !dbg !4079
  %135 = select i1 %133, i64 -1, i64 %134, !dbg !4080
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !4043, metadata !614), !dbg !4074
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !4043, metadata !614), !dbg !4074
  %136 = icmp ult i64 %132, %135, !dbg !4077
  %137 = mul i64 %135, %73, !dbg !4079
  %138 = select i1 %136, i64 -1, i64 %137, !dbg !4080
  %139 = or i1 %136, %133, !dbg !4081
  %140 = zext i1 %139 to i32, !dbg !4081
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !4043, metadata !614), !dbg !4074
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !4043, metadata !614), !dbg !4074
  br label %253, !dbg !4035

; <label>:141:                                    ; preds = %72
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4043, metadata !614), !dbg !4082
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4050, metadata !614), !dbg !4084
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4050, metadata !614), !dbg !4084
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4043, metadata !614), !dbg !4082
  %142 = udiv i64 -1, %73
  %143 = icmp ult i64 %142, %49, !dbg !4085
  %144 = mul i64 %49, %73, !dbg !4087
  %145 = select i1 %143, i64 -1, i64 %144, !dbg !4088
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !4043, metadata !614), !dbg !4082
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !4043, metadata !614), !dbg !4082
  %146 = icmp ult i64 %142, %145, !dbg !4085
  %147 = mul i64 %145, %73, !dbg !4087
  %148 = select i1 %146, i64 -1, i64 %147, !dbg !4088
  %149 = or i1 %146, %143, !dbg !4089
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !4043, metadata !614), !dbg !4082
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !4043, metadata !614), !dbg !4082
  %150 = icmp ult i64 %142, %148, !dbg !4085
  %151 = mul i64 %148, %73, !dbg !4087
  %152 = select i1 %150, i64 -1, i64 %151, !dbg !4088
  %153 = or i1 %150, %149, !dbg !4089
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !4043, metadata !614), !dbg !4082
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !4043, metadata !614), !dbg !4082
  %154 = icmp ult i64 %142, %152, !dbg !4085
  %155 = mul i64 %152, %73, !dbg !4087
  %156 = select i1 %154, i64 -1, i64 %155, !dbg !4088
  %157 = or i1 %154, %153, !dbg !4089
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !4043, metadata !614), !dbg !4082
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !4043, metadata !614), !dbg !4082
  %158 = icmp ult i64 %142, %156, !dbg !4085
  %159 = mul i64 %156, %73, !dbg !4087
  %160 = select i1 %158, i64 -1, i64 %159, !dbg !4088
  %161 = or i1 %158, %157, !dbg !4089
  %162 = zext i1 %161 to i32, !dbg !4089
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !4043, metadata !614), !dbg !4082
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !4043, metadata !614), !dbg !4082
  br label %253, !dbg !4035

; <label>:163:                                    ; preds = %72, %72
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !4043, metadata !614), !dbg !4090
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4050, metadata !614), !dbg !4092
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4050, metadata !614), !dbg !4092
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !4043, metadata !614), !dbg !4090
  %164 = udiv i64 -1, %73
  %165 = icmp ult i64 %164, %49, !dbg !4093
  %166 = mul i64 %49, %73, !dbg !4095
  %167 = select i1 %165, i64 -1, i64 %166, !dbg !4096
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !4043, metadata !614), !dbg !4090
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !4043, metadata !614), !dbg !4090
  %168 = icmp ult i64 %164, %167, !dbg !4093
  %169 = mul i64 %167, %73, !dbg !4095
  %170 = select i1 %168, i64 -1, i64 %169, !dbg !4096
  %171 = or i1 %168, %165, !dbg !4097
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !4043, metadata !614), !dbg !4090
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !4043, metadata !614), !dbg !4090
  %172 = icmp ult i64 %164, %170, !dbg !4093
  %173 = mul i64 %170, %73, !dbg !4095
  %174 = select i1 %172, i64 -1, i64 %173, !dbg !4096
  %175 = or i1 %172, %171, !dbg !4097
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !4043, metadata !614), !dbg !4090
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !4043, metadata !614), !dbg !4090
  %176 = icmp ult i64 %164, %174, !dbg !4093
  %177 = mul i64 %174, %73, !dbg !4095
  %178 = select i1 %176, i64 -1, i64 %177, !dbg !4096
  %179 = or i1 %176, %175, !dbg !4097
  %180 = zext i1 %179 to i32, !dbg !4097
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !4043, metadata !614), !dbg !4090
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !4043, metadata !614), !dbg !4090
  br label %253, !dbg !4035

; <label>:181:                                    ; preds = %72
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !4022, metadata !614), !dbg !4098
  %182 = icmp slt i64 %49, 0, !dbg !4100
  %183 = shl i64 %49, 1, !dbg !4101
  %184 = select i1 %182, i64 -1, i64 %183, !dbg !4102
  %185 = lshr i64 %49, 63, !dbg !4102
  %186 = trunc i64 %185 to i32, !dbg !4102
  call void @llvm.dbg.value(metadata i32 %186, i64 0, metadata !3924, metadata !614), !dbg !4035
  br label %253, !dbg !4103

; <label>:187:                                    ; preds = %72
  tail call void @llvm.dbg.value(metadata i32 8, i64 0, metadata !4043, metadata !614), !dbg !4104
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4050, metadata !614), !dbg !4106
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4050, metadata !614), !dbg !4106
  tail call void @llvm.dbg.value(metadata i32 8, i64 0, metadata !4043, metadata !614), !dbg !4104
  %188 = udiv i64 -1, %73
  %189 = icmp ult i64 %188, %49, !dbg !4107
  %190 = mul i64 %49, %73, !dbg !4109
  %191 = select i1 %189, i64 -1, i64 %190, !dbg !4110
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4043, metadata !614), !dbg !4104
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4043, metadata !614), !dbg !4104
  %192 = icmp ult i64 %188, %191, !dbg !4107
  %193 = mul i64 %191, %73, !dbg !4109
  %194 = select i1 %192, i64 -1, i64 %193, !dbg !4110
  %195 = or i1 %192, %189, !dbg !4111
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4043, metadata !614), !dbg !4104
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4043, metadata !614), !dbg !4104
  %196 = icmp ult i64 %188, %194, !dbg !4107
  %197 = mul i64 %194, %73, !dbg !4109
  %198 = select i1 %196, i64 -1, i64 %197, !dbg !4110
  %199 = or i1 %196, %195, !dbg !4111
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4043, metadata !614), !dbg !4104
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4043, metadata !614), !dbg !4104
  %200 = icmp ult i64 %188, %198, !dbg !4107
  %201 = mul i64 %198, %73, !dbg !4109
  %202 = select i1 %200, i64 -1, i64 %201, !dbg !4110
  %203 = or i1 %200, %199, !dbg !4111
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4043, metadata !614), !dbg !4104
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4043, metadata !614), !dbg !4104
  %204 = icmp ult i64 %188, %202, !dbg !4107
  %205 = mul i64 %202, %73, !dbg !4109
  %206 = select i1 %204, i64 -1, i64 %205, !dbg !4110
  %207 = or i1 %204, %203, !dbg !4111
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4043, metadata !614), !dbg !4104
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4043, metadata !614), !dbg !4104
  %208 = icmp ult i64 %188, %206, !dbg !4107
  %209 = mul i64 %206, %73, !dbg !4109
  %210 = select i1 %208, i64 -1, i64 %209, !dbg !4110
  %211 = or i1 %208, %207, !dbg !4111
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4043, metadata !614), !dbg !4104
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4043, metadata !614), !dbg !4104
  %212 = icmp ult i64 %188, %210, !dbg !4107
  %213 = mul i64 %210, %73, !dbg !4109
  %214 = select i1 %212, i64 -1, i64 %213, !dbg !4110
  %215 = or i1 %212, %211, !dbg !4111
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4043, metadata !614), !dbg !4104
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4043, metadata !614), !dbg !4104
  %216 = icmp ult i64 %188, %214, !dbg !4107
  %217 = mul i64 %214, %73, !dbg !4109
  %218 = select i1 %216, i64 -1, i64 %217, !dbg !4110
  %219 = or i1 %216, %215, !dbg !4111
  %220 = zext i1 %219 to i32, !dbg !4111
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4043, metadata !614), !dbg !4104
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4043, metadata !614), !dbg !4104
  br label %253, !dbg !4035

; <label>:221:                                    ; preds = %72
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4043, metadata !614), !dbg !4112
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4050, metadata !614), !dbg !4114
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4050, metadata !614), !dbg !4114
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4043, metadata !614), !dbg !4112
  %222 = udiv i64 -1, %73
  %223 = icmp ult i64 %222, %49, !dbg !4115
  %224 = mul i64 %49, %73, !dbg !4117
  %225 = select i1 %223, i64 -1, i64 %224, !dbg !4118
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4043, metadata !614), !dbg !4112
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4043, metadata !614), !dbg !4112
  %226 = icmp ult i64 %222, %225, !dbg !4115
  %227 = mul i64 %225, %73, !dbg !4117
  %228 = select i1 %226, i64 -1, i64 %227, !dbg !4118
  %229 = or i1 %226, %223, !dbg !4119
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4043, metadata !614), !dbg !4112
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4043, metadata !614), !dbg !4112
  %230 = icmp ult i64 %222, %228, !dbg !4115
  %231 = mul i64 %228, %73, !dbg !4117
  %232 = select i1 %230, i64 -1, i64 %231, !dbg !4118
  %233 = or i1 %230, %229, !dbg !4119
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4043, metadata !614), !dbg !4112
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4043, metadata !614), !dbg !4112
  %234 = icmp ult i64 %222, %232, !dbg !4115
  %235 = mul i64 %232, %73, !dbg !4117
  %236 = select i1 %234, i64 -1, i64 %235, !dbg !4118
  %237 = or i1 %234, %233, !dbg !4119
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4043, metadata !614), !dbg !4112
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4043, metadata !614), !dbg !4112
  %238 = icmp ult i64 %222, %236, !dbg !4115
  %239 = mul i64 %236, %73, !dbg !4117
  %240 = select i1 %238, i64 -1, i64 %239, !dbg !4118
  %241 = or i1 %238, %237, !dbg !4119
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4043, metadata !614), !dbg !4112
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4043, metadata !614), !dbg !4112
  %242 = icmp ult i64 %222, %240, !dbg !4115
  %243 = mul i64 %240, %73, !dbg !4117
  %244 = select i1 %242, i64 -1, i64 %243, !dbg !4118
  %245 = or i1 %242, %241, !dbg !4119
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4043, metadata !614), !dbg !4112
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4043, metadata !614), !dbg !4112
  %246 = icmp ult i64 %222, %244, !dbg !4115
  %247 = mul i64 %244, %73, !dbg !4117
  %248 = select i1 %246, i64 -1, i64 %247, !dbg !4118
  %249 = or i1 %246, %245, !dbg !4119
  %250 = zext i1 %249 to i32, !dbg !4119
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4043, metadata !614), !dbg !4112
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4043, metadata !614), !dbg !4112
  br label %253, !dbg !4035

; <label>:251:                                    ; preds = %72
  call void @llvm.dbg.value(metadata i64 %28, i64 0, metadata !3914, metadata !614), !dbg !3965
  store i64 %49, i64* %3, align 8, !dbg !4120, !tbaa !859
  %252 = or i32 %48, 2, !dbg !4121
  br label %265, !dbg !4122

; <label>:253:                                    ; preds = %221, %187, %163, %141, %131, %125, %111, %85, %75, %80, %181, %72
  %254 = phi i64 [ %184, %181 ], [ %49, %72 ], [ %83, %80 ], [ %78, %75 ], [ %108, %85 ], [ %122, %111 ], [ %129, %125 ], [ %138, %131 ], [ %160, %141 ], [ %178, %163 ], [ %218, %187 ], [ %248, %221 ]
  %255 = phi i32 [ %186, %181 ], [ 0, %72 ], [ %84, %80 ], [ %79, %75 ], [ %110, %85 ], [ %124, %111 ], [ %130, %125 ], [ %140, %131 ], [ %162, %141 ], [ %180, %163 ], [ %220, %187 ], [ %250, %221 ]
  call void @llvm.dbg.value(metadata i32 %255, i64 0, metadata !3924, metadata !614), !dbg !4035
  %256 = or i32 %255, %48, !dbg !4123
  call void @llvm.dbg.value(metadata i32 %256, i64 0, metadata !3915, metadata !614), !dbg !3931
  %257 = getelementptr inbounds i8, i8* %29, i64 %74, !dbg !4124
  store i8* %257, i8** %25, align 8, !dbg !4124, !tbaa !622
  %258 = load i8, i8* %257, align 1, !dbg !4125, !tbaa !785
  %259 = icmp eq i8 %258, 0, !dbg !4125
  %260 = or i32 %256, 2, !dbg !4127
  call void @llvm.dbg.value(metadata i32 %260, i64 0, metadata !3915, metadata !614), !dbg !3931
  %261 = select i1 %259, i32 %256, i32 %260, !dbg !4128
  call void @llvm.dbg.value(metadata i32 %261, i64 0, metadata !3915, metadata !614), !dbg !3931
  call void @llvm.dbg.value(metadata i32 %261, i64 0, metadata !3915, metadata !614), !dbg !3931
  br label %262

; <label>:262:                                    ; preds = %253, %47
  %263 = phi i64 [ %49, %47 ], [ %254, %253 ]
  %264 = phi i32 [ %48, %47 ], [ %261, %253 ]
  call void @llvm.dbg.value(metadata i32 %264, i64 0, metadata !3915, metadata !614), !dbg !3931
  call void @llvm.dbg.value(metadata i64 %263, i64 0, metadata !3914, metadata !614), !dbg !3965
  store i64 %263, i64* %3, align 8, !dbg !4129, !tbaa !859
  br label %265, !dbg !4130

; <label>:265:                                    ; preds = %24, %56, %251, %40, %31, %33, %36, %262, %46
  %266 = phi i32 [ %264, %262 ], [ %44, %46 ], [ 4, %24 ], [ 4, %36 ], [ 4, %33 ], [ 4, %31 ], [ 4, %40 ], [ %57, %56 ], [ %252, %251 ]
  call void @llvm.lifetime.end(i64 8, i8* nonnull %7) #10, !dbg !4131
  ret i32 %266, !dbg !4131
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) local_unnamed_addr #5

; Function Attrs: nounwind
declare i64 @__strtoul_internal(i8*, i8**, i32, i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @rpl_calloc(i64, i64) local_unnamed_addr #6 !dbg !4132 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4135, metadata !614), !dbg !4141
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4136, metadata !614), !dbg !4142
  %3 = icmp eq i64 %0, 0, !dbg !4143
  %4 = icmp eq i64 %1, 0, !dbg !4144
  %5 = or i1 %3, %4, !dbg !4146
  br i1 %5, label %12, label %6, !dbg !4146

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !4147
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !4138, metadata !614), !dbg !4148
  %8 = udiv i64 %7, %1, !dbg !4149
  %9 = icmp eq i64 %8, %0, !dbg !4151
  br i1 %9, label %12, label %10, !dbg !4152

; <label>:10:                                     ; preds = %6
  %11 = tail call i32* @__errno_location() #1, !dbg !4153
  store i32 12, i32* %11, align 4, !dbg !4155, !tbaa !776
  br label %16

; <label>:12:                                     ; preds = %6, %2
  %13 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %14 = phi i64 [ 1, %2 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !4135, metadata !614), !dbg !4141
  tail call void @llvm.dbg.value(metadata i64 %13, i64 0, metadata !4136, metadata !614), !dbg !4142
  %15 = tail call noalias i8* @calloc(i64 %14, i64 %13) #10, !dbg !4156
  tail call void @llvm.dbg.value(metadata i8* %15, i64 0, metadata !4137, metadata !614), !dbg !4157
  br label %16, !dbg !4158

; <label>:16:                                     ; preds = %10, %12
  %17 = phi i8* [ %15, %12 ], [ null, %10 ]
  ret i8* %17, !dbg !4159
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i64 @rpl_mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #6 !dbg !4160 {
  %5 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i32* %0, i64 0, metadata !4177, metadata !614), !dbg !4186
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4178, metadata !614), !dbg !4187
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !4179, metadata !614), !dbg !4188
  tail call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, i64 0, metadata !4180, metadata !614), !dbg !4189
  %6 = bitcast i32* %5 to i8*, !dbg !4190
  call void @llvm.lifetime.start(i64 4, i8* nonnull %6) #10, !dbg !4190
  %7 = icmp eq i32* %0, null, !dbg !4191
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !4177, metadata !614), !dbg !4186
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !4193
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !4177, metadata !614), !dbg !4186
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #10, !dbg !4194
  call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !4181, metadata !614), !dbg !4195
  %10 = icmp ugt i64 %9, -3, !dbg !4196
  %11 = icmp ne i64 %2, 0, !dbg !4197
  %12 = and i1 %11, %10, !dbg !4199
  br i1 %12, label %13, label %18, !dbg !4199

; <label>:13:                                     ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #10, !dbg !4200
  br i1 %14, label %18, label %15, !dbg !4202

; <label>:15:                                     ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !4204, !tbaa !785
  call void @llvm.dbg.value(metadata i8 %16, i64 0, metadata !4183, metadata !614), !dbg !4205
  %17 = zext i8 %16 to i32, !dbg !4206
  store i32 %17, i32* %8, align 4, !dbg !4207, !tbaa !776
  br label %18

; <label>:18:                                     ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ]
  call void @llvm.lifetime.end(i64 4, i8* nonnull %6) #10, !dbg !4208
  ret i64 %19, !dbg !4208
}

; Function Attrs: nounwind
declare i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @close_stream(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !4209 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4254, metadata !614), !dbg !4259
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #10, !dbg !4260
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4261, metadata !614), !dbg !4265
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4267
  %4 = load i32, i32* %3, align 8, !dbg !4267, !tbaa !4268
  %5 = and i32 %4, 32, !dbg !4267
  %6 = icmp eq i32 %5, 0, !dbg !4270
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #10, !dbg !4271
  %8 = icmp ne i32 %7, 0, !dbg !4272
  br i1 %6, label %9, label %19, !dbg !4273

; <label>:9:                                      ; preds = %1
  %10 = xor i1 %8, true, !dbg !4275
  %11 = icmp ne i64 %2, 0, !dbg !4275
  %12 = or i1 %11, %10, !dbg !4275
  %13 = sext i1 %8 to i32, !dbg !4275
  br i1 %12, label %22, label %14, !dbg !4275

; <label>:14:                                     ; preds = %9
  %15 = tail call i32* @__errno_location() #1, !dbg !4277
  %16 = load i32, i32* %15, align 4, !dbg !4277, !tbaa !776
  %17 = icmp ne i32 %16, 9, !dbg !4279
  %18 = sext i1 %17 to i32, !dbg !4279
  br label %22, !dbg !4279

; <label>:19:                                     ; preds = %1
  br i1 %8, label %22, label %20, !dbg !4281

; <label>:20:                                     ; preds = %19
  %21 = tail call i32* @__errno_location() #1, !dbg !4283
  store i32 0, i32* %21, align 4, !dbg !4285, !tbaa !776
  br label %22, !dbg !4283

; <label>:22:                                     ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ]
  ret i32 %23, !dbg !4286
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define zeroext i1 @hard_locale(i32) local_unnamed_addr #6 !dbg !4287 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4292, metadata !614), !dbg !4312
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !4293, metadata !614), !dbg !4313
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #10, !dbg !4314
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4294, metadata !614), !dbg !4315
  %3 = icmp eq i8* %2, null, !dbg !4316
  br i1 %3, label %15, label %4, !dbg !4317

; <label>:4:                                      ; preds = %1
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4302, metadata !614), !dbg !4318
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4303, metadata !614), !dbg !4319
  %5 = load i8, i8* %2, align 1, !dbg !4320, !tbaa !785
  %6 = icmp eq i8 %5, 67, !dbg !4322
  br i1 %6, label %7, label %11, !dbg !4325

; <label>:7:                                      ; preds = %4
  %8 = getelementptr inbounds i8, i8* %2, i64 1, !dbg !4327
  %9 = load i8, i8* %8, align 1, !dbg !4327, !tbaa !785
  %10 = icmp eq i8 %9, 0, !dbg !4330
  br i1 %10, label %14, label %11, !dbg !4332

; <label>:11:                                     ; preds = %4, %7
  tail call void @llvm.dbg.value(metadata i64 5, i64 0, metadata !4308, metadata !614), !dbg !4334
  %12 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.127, i64 0, i64 0)) #10, !dbg !4335
  %13 = icmp eq i32 %12, 0, !dbg !4337
  br i1 %13, label %14, label %15, !dbg !4339

; <label>:14:                                     ; preds = %11, %7
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !4293, metadata !614), !dbg !4313
  br label %15, !dbg !4341

; <label>:15:                                     ; preds = %1, %11, %14
  %16 = phi i1 [ false, %14 ], [ true, %11 ], [ true, %1 ]
  ret i1 %16, !dbg !4342
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define i8* @locale_charset() local_unnamed_addr #6 !dbg !4343 {
  %1 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %1, metadata !4355, metadata !614), !dbg !4429
  %2 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %2, metadata !4422, metadata !614), !dbg !4431
  %3 = tail call i8* @nl_langinfo(i32 14) #10, !dbg !4432
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !4347, metadata !614), !dbg !4433
  %4 = icmp eq i8* %3, null, !dbg !4434
  %5 = select i1 %4, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.130, i64 0, i64 0), i8* %3, !dbg !4436
  tail call void @llvm.dbg.value(metadata i8* %5, i64 0, metadata !4347, metadata !614), !dbg !4433
  %6 = load volatile i8*, i8** @charset_aliases, align 8, !dbg !4437, !tbaa !622
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !4369, metadata !614) #10, !dbg !4438
  %7 = icmp eq i8* %6, null, !dbg !4439
  br i1 %7, label %8, label %127, !dbg !4440

; <label>:8:                                      ; preds = %0
  %9 = tail call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3.131, i64 0, i64 0)) #10, !dbg !4441
  tail call void @llvm.dbg.value(metadata i8* %9, i64 0, metadata !4370, metadata !614) #10, !dbg !4442
  %10 = icmp eq i8* %9, null, !dbg !4443
  br i1 %10, label %14, label %11, !dbg !4445

; <label>:11:                                     ; preds = %8
  %12 = load i8, i8* %9, align 1, !dbg !4446, !tbaa !785
  %13 = icmp eq i8 %12, 0, !dbg !4448
  br i1 %13, label %14, label %15, !dbg !4449

; <label>:14:                                     ; preds = %11, %8
  br label %15, !dbg !4451

; <label>:15:                                     ; preds = %14, %11
  %16 = phi i8* [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4.132, i64 0, i64 0), %14 ], [ %9, %11 ]
  tail call void @llvm.dbg.value(metadata i8* %16, i64 0, metadata !4370, metadata !614) #10, !dbg !4442
  %17 = tail call i64 @strlen(i8* nonnull %16) #13, !dbg !4452
  tail call void @llvm.dbg.value(metadata i64 %17, i64 0, metadata !4373, metadata !614) #10, !dbg !4453
  tail call void @llvm.dbg.value(metadata i64 13, i64 0, metadata !4375, metadata !614) #10, !dbg !4454
  %18 = icmp eq i64 %17, 0, !dbg !4455
  br i1 %18, label %24, label %19, !dbg !4456

; <label>:19:                                     ; preds = %15
  %20 = add i64 %17, -1, !dbg !4457
  %21 = getelementptr inbounds i8, i8* %16, i64 %20, !dbg !4457
  %22 = load i8, i8* %21, align 1, !dbg !4457, !tbaa !785
  %23 = icmp ne i8 %22, 47, !dbg !4459
  br label %24

; <label>:24:                                     ; preds = %19, %15
  %25 = phi i1 [ false, %15 ], [ %23, %19 ]
  %26 = zext i1 %25 to i64, !dbg !4460
  %27 = add i64 %17, 14, !dbg !4461
  %28 = add i64 %27, %26, !dbg !4462
  %29 = tail call noalias i8* @malloc(i64 %28) #10, !dbg !4463
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !4372, metadata !614) #10, !dbg !4464
  %30 = icmp eq i8* %29, null, !dbg !4465
  br i1 %30, label %125, label %31, !dbg !4465

; <label>:31:                                     ; preds = %24
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %29, i8* %16, i64 %17, i32 1, i1 false) #10, !dbg !4466
  %32 = getelementptr inbounds i8, i8* %29, i64 %17
  br i1 %25, label %33, label %35, !dbg !4469

; <label>:33:                                     ; preds = %31
  store i8 47, i8* %32, align 1, !dbg !4470, !tbaa !785
  %34 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !4472
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %34, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.133, i64 0, i64 0), i64 14, i32 1, i1 false) #10, !dbg !4473
  br label %37, !dbg !4474

; <label>:35:                                     ; preds = %31
  %36 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !4472
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.133, i64 0, i64 0), i64 14, i32 1, i1 false) #10, !dbg !4473
  br label %37, !dbg !4474

; <label>:37:                                     ; preds = %35, %33
  %38 = tail call i32 (i8*, i32, ...) @open(i8* nonnull %29, i32 131072) #10, !dbg !4475
  tail call void @llvm.dbg.value(metadata i32 %38, i64 0, metadata !4377, metadata !614) #10, !dbg !4476
  %39 = icmp slt i32 %38, 0, !dbg !4477
  br i1 %39, label %123, label %40, !dbg !4478

; <label>:40:                                     ; preds = %37
  %41 = tail call %struct._IO_FILE* @fdopen(i32 %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.134, i64 0, i64 0)) #10, !dbg !4479
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !4378, metadata !614) #10, !dbg !4480
  %42 = icmp eq %struct._IO_FILE* %41, null, !dbg !4481
  br i1 %42, label %48, label %43, !dbg !4482

; <label>:43:                                     ; preds = %40
  %44 = getelementptr inbounds [51 x i8], [51 x i8]* %1, i64 0, i64 0
  %45 = getelementptr inbounds [51 x i8], [51 x i8]* %2, i64 0, i64 0
  %46 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 1
  %47 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 2
  br label %50, !dbg !4483

; <label>:48:                                     ; preds = %40
  %49 = tail call i32 @close(i32 %38) #10, !dbg !4484
  br label %123, !dbg !4486

; <label>:50:                                     ; preds = %111, %43
  %51 = phi i64 [ %112, %111 ], [ 0, %43 ]
  %52 = phi i8* [ %113, %111 ], [ null, %43 ]
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !4419, metadata !614) #10, !dbg !4483
  call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !4420, metadata !614) #10, !dbg !4487
  call void @llvm.lifetime.start(i64 51, i8* nonnull %44) #10, !dbg !4488
  call void @llvm.lifetime.start(i64 51, i8* nonnull %45) #10, !dbg !4489
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !4490, metadata !614) #10, !dbg !4495
  %53 = load i8*, i8** %46, align 8, !dbg !4497, !tbaa !4498
  %54 = load i8*, i8** %47, align 8, !dbg !4497, !tbaa !4499
  %55 = icmp ult i8* %53, %54, !dbg !4497
  br i1 %55, label %58, label %56, !dbg !4497, !prof !4500

; <label>:56:                                     ; preds = %50
  %57 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #10, !dbg !4501
  br label %62, !dbg !4501

; <label>:58:                                     ; preds = %50
  %59 = getelementptr inbounds i8, i8* %53, i64 1, !dbg !4503
  store i8* %59, i8** %46, align 8, !dbg !4503, !tbaa !4498
  %60 = load i8, i8* %53, align 1, !dbg !4503, !tbaa !785
  %61 = zext i8 %60 to i32, !dbg !4503
  br label %62, !dbg !4503

; <label>:62:                                     ; preds = %58, %56
  %63 = phi i32 [ %57, %56 ], [ %61, %58 ], !dbg !4505
  call void @llvm.dbg.value(metadata i32 %63, i64 0, metadata !4421, metadata !614) #10, !dbg !4507
  switch i32 %63, label %77 [
    i32 -1, label %115
    i32 32, label %111
    i32 10, label %111
    i32 9, label %111
    i32 35, label %64
  ], !dbg !4508

; <label>:64:                                     ; preds = %62
  br label %65, !dbg !4509

; <label>:65:                                     ; preds = %64, %75
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !4490, metadata !614) #10, !dbg !4509
  %66 = load i8*, i8** %46, align 8, !dbg !4513, !tbaa !4498
  %67 = load i8*, i8** %47, align 8, !dbg !4513, !tbaa !4499
  %68 = icmp ult i8* %66, %67, !dbg !4513
  br i1 %68, label %71, label %69, !dbg !4513, !prof !4500

; <label>:69:                                     ; preds = %65
  %70 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #10, !dbg !4514
  br label %75, !dbg !4514

; <label>:71:                                     ; preds = %65
  %72 = getelementptr inbounds i8, i8* %66, i64 1, !dbg !4515
  store i8* %72, i8** %46, align 8, !dbg !4515, !tbaa !4498
  %73 = load i8, i8* %66, align 1, !dbg !4515, !tbaa !785
  %74 = zext i8 %73 to i32, !dbg !4515
  br label %75, !dbg !4515

; <label>:75:                                     ; preds = %71, %69
  %76 = phi i32 [ %70, %69 ], [ %74, %71 ], !dbg !4516
  call void @llvm.dbg.value(metadata i32 %76, i64 0, metadata !4421, metadata !614) #10, !dbg !4507
  switch i32 %76, label %65 [
    i32 -1, label %114
    i32 10, label %110
  ], !dbg !4517, !llvm.loop !4519

; <label>:77:                                     ; preds = %62
  %78 = call i32 @ungetc(i32 %63, %struct._IO_FILE* nonnull %41) #10, !dbg !4522
  %79 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* nonnull %41, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6.135, i64 0, i64 0), i8* nonnull %44, i8* nonnull %45) #10, !dbg !4523
  %80 = icmp slt i32 %79, 2, !dbg !4525
  br i1 %80, label %115, label %81, !dbg !4526

; <label>:81:                                     ; preds = %77
  %82 = call i64 @strlen(i8* nonnull %44) #13, !dbg !4527
  call void @llvm.dbg.value(metadata i64 %82, i64 0, metadata !4426, metadata !614) #10, !dbg !4528
  %83 = call i64 @strlen(i8* nonnull %45) #13, !dbg !4529
  call void @llvm.dbg.value(metadata i64 %83, i64 0, metadata !4427, metadata !614) #10, !dbg !4530
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !4428, metadata !614) #10, !dbg !4531
  %84 = icmp eq i64 %51, 0, !dbg !4532
  %85 = add i64 %82, 1
  %86 = add i64 %85, %83
  %87 = add i64 %86, 1
  br i1 %84, label %88, label %91, !dbg !4534

; <label>:88:                                     ; preds = %81
  call void @llvm.dbg.value(metadata i64 %87, i64 0, metadata !4420, metadata !614) #10, !dbg !4487
  %89 = add i64 %86, 2, !dbg !4535
  %90 = call noalias i8* @malloc(i64 %89) #10, !dbg !4537
  call void @llvm.dbg.value(metadata i8* %90, i64 0, metadata !4419, metadata !614) #10, !dbg !4483
  br label %95, !dbg !4538

; <label>:91:                                     ; preds = %81
  %92 = add i64 %87, %51, !dbg !4539
  call void @llvm.dbg.value(metadata i64 %92, i64 0, metadata !4420, metadata !614) #10, !dbg !4487
  %93 = add i64 %92, 1, !dbg !4541
  %94 = call i8* @realloc(i8* %52, i64 %93) #10, !dbg !4542
  call void @llvm.dbg.value(metadata i8* %94, i64 0, metadata !4419, metadata !614) #10, !dbg !4483
  br label %95

; <label>:95:                                     ; preds = %91, %88
  %96 = phi i64 [ %87, %88 ], [ %92, %91 ]
  %97 = phi i8* [ %90, %88 ], [ %94, %91 ]
  call void @llvm.dbg.value(metadata i8* %97, i64 0, metadata !4419, metadata !614) #10, !dbg !4483
  call void @llvm.dbg.value(metadata i64 %96, i64 0, metadata !4420, metadata !614) #10, !dbg !4487
  %98 = icmp eq i8* %97, null, !dbg !4543
  br i1 %98, label %99, label %100, !dbg !4545

; <label>:99:                                     ; preds = %95
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4420, metadata !614) #10, !dbg !4487
  call void @free(i8* %52) #10, !dbg !4546
  br label %116, !dbg !4548

; <label>:100:                                    ; preds = %95
  %101 = getelementptr inbounds i8, i8* %97, i64 %96, !dbg !4549
  %102 = xor i64 %83, -1, !dbg !4550
  %103 = getelementptr inbounds i8, i8* %101, i64 %102, !dbg !4550
  %104 = xor i64 %82, -1, !dbg !4551
  %105 = getelementptr inbounds i8, i8* %103, i64 %104, !dbg !4551
  call void @llvm.dbg.value(metadata i8* %105, i64 0, metadata !4552, metadata !614) #10, !dbg !4560
  call void @llvm.dbg.value(metadata i8* %44, i64 0, metadata !4559, metadata !614) #10, !dbg !4560
  %106 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %105, i1 false) #10, !dbg !4562
  %107 = call i8* @__strcpy_chk(i8* nonnull %105, i8* nonnull %44, i64 %106) #10, !dbg !4563
  call void @llvm.dbg.value(metadata i8* %103, i64 0, metadata !4552, metadata !614) #10, !dbg !4564
  call void @llvm.dbg.value(metadata i8* %45, i64 0, metadata !4559, metadata !614) #10, !dbg !4564
  %108 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %103, i1 false) #10, !dbg !4566
  %109 = call i8* @__strcpy_chk(i8* nonnull %103, i8* nonnull %45, i64 %108) #10, !dbg !4567
  br label %111, !dbg !4568

; <label>:110:                                    ; preds = %75
  br label %111, !dbg !4483

; <label>:111:                                    ; preds = %110, %100, %62, %62, %62
  %112 = phi i64 [ %96, %100 ], [ %51, %62 ], [ %51, %62 ], [ %51, %62 ], [ %51, %110 ]
  %113 = phi i8* [ %97, %100 ], [ %52, %62 ], [ %52, %62 ], [ %52, %62 ], [ %52, %110 ]
  call void @llvm.dbg.value(metadata i8* %113, i64 0, metadata !4419, metadata !614) #10, !dbg !4483
  call void @llvm.dbg.value(metadata i64 %112, i64 0, metadata !4420, metadata !614) #10, !dbg !4487
  call void @llvm.lifetime.end(i64 51, i8* nonnull %45) #10, !dbg !4568
  call void @llvm.lifetime.end(i64 51, i8* nonnull %44) #10, !dbg !4568
  br label %50

; <label>:114:                                    ; preds = %75
  br label %116, !dbg !4483

; <label>:115:                                    ; preds = %62, %77
  br label %116, !dbg !4483

; <label>:116:                                    ; preds = %115, %114, %99
  %117 = phi i64 [ 0, %99 ], [ %51, %114 ], [ %51, %115 ]
  %118 = phi i8* [ null, %99 ], [ %52, %114 ], [ %52, %115 ]
  call void @llvm.dbg.value(metadata i8* %113, i64 0, metadata !4419, metadata !614) #10, !dbg !4483
  call void @llvm.dbg.value(metadata i64 %112, i64 0, metadata !4420, metadata !614) #10, !dbg !4487
  call void @llvm.lifetime.end(i64 51, i8* nonnull %45) #10, !dbg !4568
  call void @llvm.lifetime.end(i64 51, i8* nonnull %44) #10, !dbg !4568
  %119 = call i32 @rpl_fclose(%struct._IO_FILE* nonnull %41) #10, !dbg !4569
  %120 = icmp eq i64 %117, 0, !dbg !4570
  br i1 %120, label %123, label %121, !dbg !4572

; <label>:121:                                    ; preds = %116
  %122 = getelementptr inbounds i8, i8* %118, i64 %117, !dbg !4573
  store i8 0, i8* %122, align 1, !dbg !4575, !tbaa !785
  call void @llvm.dbg.value(metadata i8* %113, i64 0, metadata !4369, metadata !614) #10, !dbg !4438
  br label %123

; <label>:123:                                    ; preds = %121, %116, %48, %37
  %124 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.130, i64 0, i64 0), %37 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.130, i64 0, i64 0), %48 ], [ %118, %121 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.130, i64 0, i64 0), %116 ]
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !4369, metadata !614) #10, !dbg !4438
  call void @free(i8* %29) #10, !dbg !4576
  br label %125

; <label>:125:                                    ; preds = %123, %24
  %126 = phi i8* [ %124, %123 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.130, i64 0, i64 0), %24 ]
  call void @llvm.dbg.value(metadata i8* %126, i64 0, metadata !4369, metadata !614) #10, !dbg !4438
  store volatile i8* %126, i8** @charset_aliases, align 8, !dbg !4577, !tbaa !622
  br label %127, !dbg !4578

; <label>:127:                                    ; preds = %0, %125
  %128 = phi i8* [ %6, %0 ], [ %126, %125 ]
  call void @llvm.dbg.value(metadata i8* %128, i64 0, metadata !4348, metadata !614), !dbg !4579
  %129 = load i8, i8* %128, align 1, !dbg !4580, !tbaa !785
  %130 = icmp eq i8 %129, 0, !dbg !4581
  br i1 %130, label %157, label %131, !dbg !4582

; <label>:131:                                    ; preds = %127
  br label %132, !dbg !4584

; <label>:132:                                    ; preds = %131, %147
  %133 = phi i8 [ %154, %147 ], [ %129, %131 ]
  %134 = phi i8* [ %153, %147 ], [ %128, %131 ]
  %135 = call i32 @strcmp(i8* %5, i8* %134) #10, !dbg !4584
  %136 = icmp eq i32 %135, 0, !dbg !4585
  br i1 %136, label %143, label %137, !dbg !4586

; <label>:137:                                    ; preds = %132
  %138 = icmp eq i8 %133, 42, !dbg !4587
  br i1 %138, label %139, label %147, !dbg !4589

; <label>:139:                                    ; preds = %137
  %140 = getelementptr inbounds i8, i8* %134, i64 1, !dbg !4590
  %141 = load i8, i8* %140, align 1, !dbg !4590, !tbaa !785
  %142 = icmp eq i8 %141, 0, !dbg !4592
  br i1 %142, label %143, label %147, !dbg !4593

; <label>:143:                                    ; preds = %139, %132
  %144 = call i64 @strlen(i8* %134) #13, !dbg !4595
  %145 = getelementptr inbounds i8, i8* %134, i64 %144, !dbg !4597
  %146 = getelementptr inbounds i8, i8* %145, i64 1, !dbg !4598
  call void @llvm.dbg.value(metadata i8* %146, i64 0, metadata !4347, metadata !614), !dbg !4433
  br label %157, !dbg !4599

; <label>:147:                                    ; preds = %137, %139
  %148 = call i64 @strlen(i8* %134) #13, !dbg !4600
  %149 = add i64 %148, 1, !dbg !4601
  %150 = getelementptr inbounds i8, i8* %134, i64 %149, !dbg !4602
  call void @llvm.dbg.value(metadata i8* %150, i64 0, metadata !4348, metadata !614), !dbg !4579
  %151 = call i64 @strlen(i8* %150) #13, !dbg !4603
  %152 = add i64 %151, 1, !dbg !4604
  %153 = getelementptr inbounds i8, i8* %150, i64 %152, !dbg !4605
  call void @llvm.dbg.value(metadata i8* %153, i64 0, metadata !4348, metadata !614), !dbg !4579
  call void @llvm.dbg.value(metadata i8* %153, i64 0, metadata !4348, metadata !614), !dbg !4579
  %154 = load i8, i8* %153, align 1, !dbg !4580, !tbaa !785
  %155 = icmp eq i8 %154, 0, !dbg !4581
  br i1 %155, label %156, label %132, !dbg !4582, !llvm.loop !4606

; <label>:156:                                    ; preds = %147
  br label %157, !dbg !4433

; <label>:157:                                    ; preds = %156, %127, %143
  %158 = phi i8* [ %146, %143 ], [ %5, %127 ], [ %5, %156 ]
  call void @llvm.dbg.value(metadata i8* %158, i64 0, metadata !4347, metadata !614), !dbg !4433
  %159 = load i8, i8* %158, align 1, !dbg !4609, !tbaa !785
  %160 = icmp eq i8 %159, 0, !dbg !4611
  %161 = select i1 %160, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.136, i64 0, i64 0), i8* %158, !dbg !4612
  call void @llvm.dbg.value(metadata i8* %161, i64 0, metadata !4347, metadata !614), !dbg !4433
  ret i8* %161, !dbg !4613
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
define i32 @rpl_fclose(%struct._IO_FILE* nonnull) local_unnamed_addr #6 !dbg !4614 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4659, metadata !614), !dbg !4663
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4660, metadata !614), !dbg !4664
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4662, metadata !614), !dbg !4665
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !4666
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !4661, metadata !614), !dbg !4667
  %3 = icmp slt i32 %2, 0, !dbg !4668
  br i1 %3, label %4, label %6, !dbg !4670

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4671
  br label %24, !dbg !4672

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #10, !dbg !4673
  %8 = icmp eq i32 %7, 0, !dbg !4673
  br i1 %8, label %13, label %9, !dbg !4675

; <label>:9:                                      ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !4676
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #10, !dbg !4678
  %12 = icmp eq i64 %11, -1, !dbg !4680
  br i1 %12, label %16, label %13, !dbg !4681

; <label>:13:                                     ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #10, !dbg !4682
  %15 = icmp eq i32 %14, 0, !dbg !4682
  br i1 %15, label %16, label %18, !dbg !4683

; <label>:16:                                     ; preds = %13, %9
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !4660, metadata !614), !dbg !4664
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4685
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !4662, metadata !614), !dbg !4665
  br label %24, !dbg !4686

; <label>:18:                                     ; preds = %13
  %19 = tail call i32* @__errno_location() #1, !dbg !4687
  %20 = load i32, i32* %19, align 4, !dbg !4687, !tbaa !776
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !4660, metadata !614), !dbg !4664
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !4660, metadata !614), !dbg !4664
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4685
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !4662, metadata !614), !dbg !4665
  %22 = icmp eq i32 %20, 0, !dbg !4688
  br i1 %22, label %24, label %23, !dbg !4686

; <label>:23:                                     ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !4690, !tbaa !776
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !4662, metadata !614), !dbg !4665
  br label %24, !dbg !4692

; <label>:24:                                     ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ]
  ret i32 %25, !dbg !4693
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
define i32 @rpl_fflush(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !4694 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4739, metadata !614), !dbg !4740
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !4741
  br i1 %2, label %6, label %3, !dbg !4743

; <label>:3:                                      ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #10, !dbg !4744
  %5 = icmp eq i32 %4, 0, !dbg !4744
  br i1 %5, label %6, label %8, !dbg !4746

; <label>:6:                                      ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !4748
  br label %17, !dbg !4749

; <label>:8:                                      ; preds = %3
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4750, metadata !614) #10, !dbg !4755
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4757
  %10 = load i32, i32* %9, align 8, !dbg !4757, !tbaa !4268
  %11 = and i32 %10, 256, !dbg !4759
  %12 = icmp eq i32 %11, 0, !dbg !4759
  br i1 %12, label %15, label %13, !dbg !4760

; <label>:13:                                     ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #10, !dbg !4761
  br label %15, !dbg !4761

; <label>:15:                                     ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !4762
  br label %17, !dbg !4763

; <label>:17:                                     ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ]
  ret i32 %18, !dbg !4764
}

; Function Attrs: nounwind
declare i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull, i64, i32) local_unnamed_addr #6 !dbg !4765 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4811, metadata !614), !dbg !4817
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4812, metadata !614), !dbg !4818
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !4813, metadata !614), !dbg !4819
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !4820
  %5 = load i8*, i8** %4, align 8, !dbg !4820, !tbaa !4499
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !4821
  %7 = load i8*, i8** %6, align 8, !dbg !4821, !tbaa !4498
  %8 = icmp eq i8* %5, %7, !dbg !4822
  br i1 %8, label %9, label %28, !dbg !4823

; <label>:9:                                      ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !4824
  %11 = load i8*, i8** %10, align 8, !dbg !4824, !tbaa !4826
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !4827
  %13 = load i8*, i8** %12, align 8, !dbg !4827, !tbaa !4828
  %14 = icmp eq i8* %11, %13, !dbg !4829
  br i1 %14, label %15, label %28, !dbg !4830

; <label>:15:                                     ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !4831
  %17 = load i8*, i8** %16, align 8, !dbg !4831, !tbaa !4832
  %18 = icmp eq i8* %17, null, !dbg !4833
  br i1 %18, label %19, label %28, !dbg !4834

; <label>:19:                                     ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !4836
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #10, !dbg !4837
  tail call void @llvm.dbg.value(metadata i64 %21, i64 0, metadata !4814, metadata !614), !dbg !4839
  %22 = icmp eq i64 %21, -1, !dbg !4840
  br i1 %22, label %30, label %23, !dbg !4842

; <label>:23:                                     ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4843
  %25 = load i32, i32* %24, align 8, !dbg !4844, !tbaa !4268
  %26 = and i32 %25, -17, !dbg !4844
  store i32 %26, i32* %24, align 8, !dbg !4844, !tbaa !4268
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !4845
  store i64 %21, i64* %27, align 8, !dbg !4846, !tbaa !4847
  br label %30, !dbg !4848

; <label>:28:                                     ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !4849
  br label %30, !dbg !4850

; <label>:30:                                     ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ]
  ret i32 %31, !dbg !4851
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
attributes #8 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { nounwind }
attributes #11 = { nounwind readonly sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { inlinehint nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #13 = { nounwind readonly }
attributes #14 = { noreturn nounwind }
attributes #15 = { noreturn }
attributes #16 = { cold }

!llvm.dbg.cu = !{!2, !545, !92, !98, !107, !547, !114, !121, !558, !190, !566, !583, !585, !589, !591, !593, !595, !199, !598, !600, !602}
!llvm.ident = !{!604, !604, !604, !604, !604, !604, !604, !604, !604, !604, !604, !604, !604, !604, !604, !604, !604, !604, !604, !604, !604}
!llvm.module.flags = !{!605, !606, !607, !608}

!0 = !DIGlobalVariableExpression(var: !1)
!1 = distinct !DIGlobalVariable(name: "longopts", scope: !2, file: !3, line: 39, type: !78, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !27, globals: !46)
!3 = !DIFile(filename: "src/mknod.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4 = !{!5, !13}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "strtol_error", file: !6, line: 26, size: 32, elements: !7)
!6 = !DIFile(filename: "./lib/xstrtol.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!7 = !{!8, !9, !10, !11, !12}
!8 = !DIEnumerator(name: "LONGINT_OK", value: 0)
!9 = !DIEnumerator(name: "LONGINT_OVERFLOW", value: 1)
!10 = !DIEnumerator(name: "LONGINT_INVALID_SUFFIX_CHAR", value: 2)
!11 = !DIEnumerator(name: "LONGINT_INVALID_SUFFIX_CHAR_WITH_OVERFLOW", value: 3)
!12 = !DIEnumerator(name: "LONGINT_INVALID", value: 4)
!13 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !14, line: 32, size: 32, elements: !15)
!14 = !DIFile(filename: "./lib/quotearg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!15 = !{!16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26}
!16 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!17 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!18 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!19 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!20 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!21 = !DIEnumerator(name: "c_quoting_style", value: 5)
!22 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!23 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!24 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!25 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!26 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!27 = !{!28, !30, !31, !32, !37, !39, !41, !44, !34}
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!29 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!31 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !33, line: 60, baseType: !34)
!33 = !DIFile(filename: "/usr/include/sys/types.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !35, line: 133, baseType: !36)
!35 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!36 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !38, line: 62, baseType: !36)
!38 = !DIFile(filename: "/usr/bin/../lib/clang/4.0.1/include/stddef.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!40 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!42 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !43)
!43 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!45 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !29)
!46 = !{!47, !0}
!47 = !DIGlobalVariableExpression(var: !48)
!48 = distinct !DIGlobalVariable(name: "infomap", scope: !49, file: !50, line: 632, type: !75, isLocal: true, isDefinition: true)
!49 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !50, file: !50, line: 630, type: !51, isLocal: true, isDefinition: true, scopeLine: 631, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !53)
!50 = !DIFile(filename: "src/system.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!51 = !DISubroutineType(types: !52)
!52 = !{null, !44}
!53 = !{!54, !55, !56, !63, !65, !66, !67, !70, !71, !73}
!54 = !DILocalVariable(name: "program", arg: 1, scope: !49, file: !50, line: 630, type: !44)
!55 = !DILocalVariable(name: "node", scope: !49, file: !50, line: 642, type: !44)
!56 = !DILocalVariable(name: "map_prog", scope: !49, file: !50, line: 643, type: !57)
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64)
!58 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !59)
!59 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !49, file: !50, line: 632, size: 128, elements: !60)
!60 = !{!61, !62}
!61 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !59, file: !50, line: 632, baseType: !44, size: 64)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !59, file: !50, line: 632, baseType: !44, size: 64, offset: 64)
!63 = !DILocalVariable(name: "__s1_len", scope: !64, file: !50, line: 645, type: !37)
!64 = distinct !DILexicalBlock(scope: !49, file: !50, line: 645, column: 33)
!65 = !DILocalVariable(name: "__s2_len", scope: !64, file: !50, line: 645, type: !37)
!66 = !DILocalVariable(name: "lc_messages", scope: !49, file: !50, line: 655, type: !44)
!67 = !DILocalVariable(name: "__s1_len", scope: !68, file: !50, line: 656, type: !37)
!68 = distinct !DILexicalBlock(scope: !69, file: !50, line: 656, column: 22)
!69 = distinct !DILexicalBlock(scope: !49, file: !50, line: 656, column: 7)
!70 = !DILocalVariable(name: "__s2_len", scope: !68, file: !50, line: 656, type: !37)
!71 = !DILocalVariable(name: "__s2", scope: !72, file: !50, line: 656, type: !41)
!72 = distinct !DILexicalBlock(scope: !68, file: !50, line: 656, column: 22)
!73 = !DILocalVariable(name: "__result", scope: !72, file: !50, line: 656, type: !74)
!74 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!75 = !DICompositeType(tag: DW_TAG_array_type, baseType: !58, size: 896, elements: !76)
!76 = !{!77}
!77 = !DISubrange(count: 7)
!78 = !DICompositeType(tag: DW_TAG_array_type, baseType: !79, size: 1280, elements: !88)
!79 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !80)
!80 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !81, line: 104, size: 256, elements: !82)
!81 = !DIFile(filename: "/usr/include/getopt.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!82 = !{!83, !84, !85, !87}
!83 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !80, file: !81, line: 106, baseType: !44, size: 64)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !80, file: !81, line: 109, baseType: !74, size: 32, offset: 64)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !80, file: !81, line: 110, baseType: !86, size: 64, offset: 128)
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !80, file: !81, line: 111, baseType: !74, size: 32, offset: 192)
!88 = !{!89}
!89 = !DISubrange(count: 5)
!90 = !DIGlobalVariableExpression(var: !91)
!91 = distinct !DIGlobalVariable(name: "Version", scope: !92, file: !93, line: 2, type: !44, isLocal: false, isDefinition: true)
!92 = distinct !DICompileUnit(language: DW_LANG_C99, file: !93, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !94, globals: !95)
!93 = !DIFile(filename: "src/version.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!94 = !{}
!95 = !{!90}
!96 = !DIGlobalVariableExpression(var: !97)
!97 = distinct !DIGlobalVariable(name: "file_name", scope: !98, file: !103, line: 36, type: !44, isLocal: true, isDefinition: true)
!98 = distinct !DICompileUnit(language: DW_LANG_C99, file: !99, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !94, globals: !100)
!99 = !DIFile(filename: "./lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!100 = !{!96, !101}
!101 = !DIGlobalVariableExpression(var: !102)
!102 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !98, file: !103, line: 46, type: !104, isLocal: true, isDefinition: true)
!103 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!104 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!105 = !DIGlobalVariableExpression(var: !106)
!106 = distinct !DIGlobalVariable(name: "exit_failure", scope: !107, file: !110, line: 24, type: !111, isLocal: false, isDefinition: true)
!107 = distinct !DICompileUnit(language: DW_LANG_C99, file: !108, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !94, globals: !109)
!108 = !DIFile(filename: "./lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!109 = !{!105}
!110 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!111 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !74)
!112 = !DIGlobalVariableExpression(var: !113)
!113 = distinct !DIGlobalVariable(name: "program_name", scope: !114, file: !118, line: 33, type: !44, isLocal: false, isDefinition: true)
!114 = distinct !DICompileUnit(language: DW_LANG_C99, file: !115, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !94, retainedTypes: !116, globals: !117)
!115 = !DIFile(filename: "./lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!116 = !{!30, !28}
!117 = !{!112}
!118 = !DIFile(filename: "lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!119 = !DIGlobalVariableExpression(var: !120)
!120 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !121, file: !149, line: 77, type: !184, isLocal: false, isDefinition: true)
!121 = distinct !DICompileUnit(language: DW_LANG_C99, file: !122, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !123, retainedTypes: !144, globals: !146)
!122 = !DIFile(filename: "./lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!123 = !{!13, !124, !129}
!124 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !14, line: 242, size: 32, elements: !125)
!125 = !{!126, !127, !128}
!126 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!127 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!128 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!129 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !130, line: 46, size: 32, elements: !131)
!130 = !DIFile(filename: "/usr/include/ctype.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!131 = !{!132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143}
!132 = !DIEnumerator(name: "_ISupper", value: 256)
!133 = !DIEnumerator(name: "_ISlower", value: 512)
!134 = !DIEnumerator(name: "_ISalpha", value: 1024)
!135 = !DIEnumerator(name: "_ISdigit", value: 2048)
!136 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!137 = !DIEnumerator(name: "_ISspace", value: 8192)
!138 = !DIEnumerator(name: "_ISprint", value: 16384)
!139 = !DIEnumerator(name: "_ISgraph", value: 32768)
!140 = !DIEnumerator(name: "_ISblank", value: 1)
!141 = !DIEnumerator(name: "_IScntrl", value: 2)
!142 = !DIEnumerator(name: "_ISpunct", value: 4)
!143 = !DIEnumerator(name: "_ISalnum", value: 8)
!144 = !{!74, !145, !37, !28}
!145 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!146 = !{!119, !147, !154, !166, !168, !173, !180, !182}
!147 = !DIGlobalVariableExpression(var: !148)
!148 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !121, file: !149, line: 93, type: !150, isLocal: false, isDefinition: true)
!149 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!150 = !DICompositeType(tag: DW_TAG_array_type, baseType: !151, size: 320, elements: !152)
!151 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !13)
!152 = !{!153}
!153 = !DISubrange(count: 10)
!154 = !DIGlobalVariableExpression(var: !155)
!155 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !121, file: !149, line: 1043, type: !156, isLocal: false, isDefinition: true)
!156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !149, line: 57, size: 448, elements: !157)
!157 = !{!158, !159, !160, !164, !165}
!158 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !156, file: !149, line: 60, baseType: !13, size: 32)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !156, file: !149, line: 63, baseType: !74, size: 32, offset: 32)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !156, file: !149, line: 67, baseType: !161, size: 256, offset: 64)
!161 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 256, elements: !162)
!162 = !{!163}
!163 = !DISubrange(count: 8)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !156, file: !149, line: 70, baseType: !44, size: 64, offset: 320)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !156, file: !149, line: 73, baseType: !44, size: 64, offset: 384)
!166 = !DIGlobalVariableExpression(var: !167)
!167 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !121, file: !149, line: 108, type: !156, isLocal: true, isDefinition: true)
!168 = !DIGlobalVariableExpression(var: !169)
!169 = distinct !DIGlobalVariable(name: "slot0", scope: !121, file: !149, line: 834, type: !170, isLocal: true, isDefinition: true)
!170 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 2048, elements: !171)
!171 = !{!172}
!172 = !DISubrange(count: 256)
!173 = !DIGlobalVariableExpression(var: !174)
!174 = distinct !DIGlobalVariable(name: "slotvec", scope: !121, file: !149, line: 837, type: !175, isLocal: true, isDefinition: true)
!175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !176, size: 64)
!176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !149, line: 826, size: 128, elements: !177)
!177 = !{!178, !179}
!178 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !176, file: !149, line: 828, baseType: !37, size: 64)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !176, file: !149, line: 829, baseType: !28, size: 64, offset: 64)
!180 = !DIGlobalVariableExpression(var: !181)
!181 = distinct !DIGlobalVariable(name: "nslots", scope: !121, file: !149, line: 835, type: !74, isLocal: true, isDefinition: true)
!182 = !DIGlobalVariableExpression(var: !183)
!183 = distinct !DIGlobalVariable(name: "slotvec0", scope: !121, file: !149, line: 836, type: !176, isLocal: true, isDefinition: true)
!184 = !DICompositeType(tag: DW_TAG_array_type, baseType: !185, size: 704, elements: !186)
!185 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !44)
!186 = !{!187}
!187 = !DISubrange(count: 11)
!188 = !DIGlobalVariableExpression(var: !189)
!189 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !190, file: !193, line: 26, type: !194, isLocal: false, isDefinition: true)
!190 = distinct !DICompileUnit(language: DW_LANG_C99, file: !191, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !94, globals: !192)
!191 = !DIFile(filename: "./lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!192 = !{!188}
!193 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!194 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 376, elements: !195)
!195 = !{!196}
!196 = !DISubrange(count: 47)
!197 = !DIGlobalVariableExpression(var: !198)
!198 = distinct !DIGlobalVariable(name: "charset_aliases", scope: !199, file: !543, line: 120, type: !544, isLocal: true, isDefinition: true)
!199 = distinct !DICompileUnit(language: DW_LANG_C99, file: !200, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !201, retainedTypes: !540, globals: !542)
!200 = !DIFile(filename: "./lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!201 = !{!202}
!202 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !203, line: 41, size: 32, elements: !204)
!203 = !DIFile(filename: "/usr/include/langinfo.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!204 = !{!205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539}
!205 = !DIEnumerator(name: "ABDAY_1", value: 131072)
!206 = !DIEnumerator(name: "ABDAY_2", value: 131073)
!207 = !DIEnumerator(name: "ABDAY_3", value: 131074)
!208 = !DIEnumerator(name: "ABDAY_4", value: 131075)
!209 = !DIEnumerator(name: "ABDAY_5", value: 131076)
!210 = !DIEnumerator(name: "ABDAY_6", value: 131077)
!211 = !DIEnumerator(name: "ABDAY_7", value: 131078)
!212 = !DIEnumerator(name: "DAY_1", value: 131079)
!213 = !DIEnumerator(name: "DAY_2", value: 131080)
!214 = !DIEnumerator(name: "DAY_3", value: 131081)
!215 = !DIEnumerator(name: "DAY_4", value: 131082)
!216 = !DIEnumerator(name: "DAY_5", value: 131083)
!217 = !DIEnumerator(name: "DAY_6", value: 131084)
!218 = !DIEnumerator(name: "DAY_7", value: 131085)
!219 = !DIEnumerator(name: "ABMON_1", value: 131086)
!220 = !DIEnumerator(name: "ABMON_2", value: 131087)
!221 = !DIEnumerator(name: "ABMON_3", value: 131088)
!222 = !DIEnumerator(name: "ABMON_4", value: 131089)
!223 = !DIEnumerator(name: "ABMON_5", value: 131090)
!224 = !DIEnumerator(name: "ABMON_6", value: 131091)
!225 = !DIEnumerator(name: "ABMON_7", value: 131092)
!226 = !DIEnumerator(name: "ABMON_8", value: 131093)
!227 = !DIEnumerator(name: "ABMON_9", value: 131094)
!228 = !DIEnumerator(name: "ABMON_10", value: 131095)
!229 = !DIEnumerator(name: "ABMON_11", value: 131096)
!230 = !DIEnumerator(name: "ABMON_12", value: 131097)
!231 = !DIEnumerator(name: "MON_1", value: 131098)
!232 = !DIEnumerator(name: "MON_2", value: 131099)
!233 = !DIEnumerator(name: "MON_3", value: 131100)
!234 = !DIEnumerator(name: "MON_4", value: 131101)
!235 = !DIEnumerator(name: "MON_5", value: 131102)
!236 = !DIEnumerator(name: "MON_6", value: 131103)
!237 = !DIEnumerator(name: "MON_7", value: 131104)
!238 = !DIEnumerator(name: "MON_8", value: 131105)
!239 = !DIEnumerator(name: "MON_9", value: 131106)
!240 = !DIEnumerator(name: "MON_10", value: 131107)
!241 = !DIEnumerator(name: "MON_11", value: 131108)
!242 = !DIEnumerator(name: "MON_12", value: 131109)
!243 = !DIEnumerator(name: "AM_STR", value: 131110)
!244 = !DIEnumerator(name: "PM_STR", value: 131111)
!245 = !DIEnumerator(name: "D_T_FMT", value: 131112)
!246 = !DIEnumerator(name: "D_FMT", value: 131113)
!247 = !DIEnumerator(name: "T_FMT", value: 131114)
!248 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115)
!249 = !DIEnumerator(name: "ERA", value: 131116)
!250 = !DIEnumerator(name: "__ERA_YEAR", value: 131117)
!251 = !DIEnumerator(name: "ERA_D_FMT", value: 131118)
!252 = !DIEnumerator(name: "ALT_DIGITS", value: 131119)
!253 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120)
!254 = !DIEnumerator(name: "ERA_T_FMT", value: 131121)
!255 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122)
!256 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123)
!257 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124)
!258 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125)
!259 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126)
!260 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127)
!261 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128)
!262 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129)
!263 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130)
!264 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131)
!265 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132)
!266 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133)
!267 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134)
!268 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135)
!269 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136)
!270 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137)
!271 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138)
!272 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139)
!273 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140)
!274 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141)
!275 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142)
!276 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143)
!277 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144)
!278 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145)
!279 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146)
!280 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147)
!281 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148)
!282 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149)
!283 = !DIEnumerator(name: "_NL_WMON_1", value: 131150)
!284 = !DIEnumerator(name: "_NL_WMON_2", value: 131151)
!285 = !DIEnumerator(name: "_NL_WMON_3", value: 131152)
!286 = !DIEnumerator(name: "_NL_WMON_4", value: 131153)
!287 = !DIEnumerator(name: "_NL_WMON_5", value: 131154)
!288 = !DIEnumerator(name: "_NL_WMON_6", value: 131155)
!289 = !DIEnumerator(name: "_NL_WMON_7", value: 131156)
!290 = !DIEnumerator(name: "_NL_WMON_8", value: 131157)
!291 = !DIEnumerator(name: "_NL_WMON_9", value: 131158)
!292 = !DIEnumerator(name: "_NL_WMON_10", value: 131159)
!293 = !DIEnumerator(name: "_NL_WMON_11", value: 131160)
!294 = !DIEnumerator(name: "_NL_WMON_12", value: 131161)
!295 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162)
!296 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163)
!297 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164)
!298 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165)
!299 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166)
!300 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167)
!301 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168)
!302 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169)
!303 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170)
!304 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171)
!305 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172)
!306 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173)
!307 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174)
!308 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175)
!309 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176)
!310 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177)
!311 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178)
!312 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179)
!313 = !DIEnumerator(name: "_DATE_FMT", value: 131180)
!314 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181)
!315 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182)
!316 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131183)
!317 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608)
!318 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609)
!319 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610)
!320 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611)
!321 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612)
!322 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613)
!323 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614)
!324 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615)
!325 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616)
!326 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617)
!327 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618)
!328 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619)
!329 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620)
!330 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621)
!331 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622)
!332 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623)
!333 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624)
!334 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625)
!335 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626)
!336 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627)
!337 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0)
!338 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1)
!339 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2)
!340 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3)
!341 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4)
!342 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5)
!343 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6)
!344 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7)
!345 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8)
!346 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9)
!347 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10)
!348 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11)
!349 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12)
!350 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13)
!351 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14)
!352 = !DIEnumerator(name: "CODESET", value: 14)
!353 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15)
!354 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16)
!355 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17)
!356 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18)
!357 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19)
!358 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20)
!359 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21)
!360 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22)
!361 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23)
!362 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24)
!363 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25)
!364 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26)
!365 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27)
!366 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28)
!367 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29)
!368 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30)
!369 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31)
!370 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32)
!371 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33)
!372 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34)
!373 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35)
!374 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36)
!375 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37)
!376 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38)
!377 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39)
!378 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40)
!379 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41)
!380 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42)
!381 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43)
!382 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44)
!383 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45)
!384 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46)
!385 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47)
!386 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48)
!387 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49)
!388 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50)
!389 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51)
!390 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52)
!391 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53)
!392 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54)
!393 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55)
!394 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56)
!395 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57)
!396 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58)
!397 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59)
!398 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60)
!399 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61)
!400 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62)
!401 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63)
!402 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64)
!403 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65)
!404 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66)
!405 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67)
!406 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68)
!407 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69)
!408 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70)
!409 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71)
!410 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72)
!411 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73)
!412 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74)
!413 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75)
!414 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76)
!415 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77)
!416 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78)
!417 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79)
!418 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80)
!419 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81)
!420 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82)
!421 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83)
!422 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84)
!423 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85)
!424 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86)
!425 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144)
!426 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145)
!427 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146)
!428 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147)
!429 = !DIEnumerator(name: "__MON_GROUPING", value: 262148)
!430 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149)
!431 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150)
!432 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151)
!433 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152)
!434 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153)
!435 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154)
!436 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155)
!437 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156)
!438 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157)
!439 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158)
!440 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159)
!441 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160)
!442 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161)
!443 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162)
!444 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163)
!445 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164)
!446 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165)
!447 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166)
!448 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167)
!449 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168)
!450 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169)
!451 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170)
!452 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171)
!453 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172)
!454 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173)
!455 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174)
!456 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175)
!457 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176)
!458 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177)
!459 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178)
!460 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179)
!461 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180)
!462 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181)
!463 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182)
!464 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183)
!465 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184)
!466 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185)
!467 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186)
!468 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187)
!469 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188)
!470 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189)
!471 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190)
!472 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536)
!473 = !DIEnumerator(name: "RADIXCHAR", value: 65536)
!474 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537)
!475 = !DIEnumerator(name: "THOUSEP", value: 65537)
!476 = !DIEnumerator(name: "__GROUPING", value: 65538)
!477 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539)
!478 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540)
!479 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541)
!480 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542)
!481 = !DIEnumerator(name: "__YESEXPR", value: 327680)
!482 = !DIEnumerator(name: "__NOEXPR", value: 327681)
!483 = !DIEnumerator(name: "__YESSTR", value: 327682)
!484 = !DIEnumerator(name: "__NOSTR", value: 327683)
!485 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684)
!486 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685)
!487 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752)
!488 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753)
!489 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754)
!490 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755)
!491 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288)
!492 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289)
!493 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290)
!494 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291)
!495 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292)
!496 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293)
!497 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294)
!498 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295)
!499 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824)
!500 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825)
!501 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826)
!502 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827)
!503 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828)
!504 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829)
!505 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830)
!506 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831)
!507 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832)
!508 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833)
!509 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834)
!510 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835)
!511 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836)
!512 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837)
!513 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360)
!514 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361)
!515 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362)
!516 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363)
!517 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364)
!518 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365)
!519 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896)
!520 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897)
!521 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898)
!522 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432)
!523 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433)
!524 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434)
!525 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435)
!526 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436)
!527 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437)
!528 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438)
!529 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439)
!530 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440)
!531 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441)
!532 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442)
!533 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443)
!534 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444)
!535 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445)
!536 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446)
!537 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447)
!538 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448)
!539 = !DIEnumerator(name: "_NL_NUM", value: 786449)
!540 = !{!30, !28, !541}
!541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!542 = !{!197}
!543 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!544 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !44)
!545 = distinct !DICompileUnit(language: DW_LANG_C99, file: !546, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !94)
!546 = !DIFile(filename: "src/selinux.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!547 = distinct !DICompileUnit(language: DW_LANG_C99, file: !548, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !549, retainedTypes: !557)
!548 = !DIFile(filename: "./lib/modechange.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!549 = !{!550}
!550 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !551, line: 78, size: 32, elements: !552)
!551 = !DIFile(filename: "lib/modechange.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!552 = !{!553, !554, !555, !556}
!553 = !DIEnumerator(name: "MODE_DONE", value: 0)
!554 = !DIEnumerator(name: "MODE_ORDINARY_CHANGE", value: 1)
!555 = !DIEnumerator(name: "MODE_X_IF_ANY_X", value: 2)
!556 = !DIEnumerator(name: "MODE_COPY_EXISTING", value: 3)
!557 = !{!37}
!558 = distinct !DICompileUnit(language: DW_LANG_C99, file: !559, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !560, retainedTypes: !565)
!559 = !DIFile(filename: "./lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!560 = !{!561}
!561 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !562, line: 41, size: 32, elements: !563)
!562 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!563 = !{!564}
!564 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2017)
!565 = !{!30}
!566 = distinct !DICompileUnit(language: DW_LANG_C99, file: !567, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !568, retainedTypes: !582)
!567 = !DIFile(filename: "./lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!568 = !{!569}
!569 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !571, file: !570, line: 192, size: 32, elements: !580)
!570 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!571 = distinct !DISubprogram(name: "x2nrealloc", scope: !570, file: !570, line: 180, type: !572, isLocal: false, isDefinition: true, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: true, unit: !566, variables: !575)
!572 = !DISubroutineType(types: !573)
!573 = !{!30, !30, !574, !37}
!574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!575 = !{!576, !577, !578, !579}
!576 = !DILocalVariable(name: "p", arg: 1, scope: !571, file: !570, line: 180, type: !30)
!577 = !DILocalVariable(name: "pn", arg: 2, scope: !571, file: !570, line: 180, type: !574)
!578 = !DILocalVariable(name: "s", arg: 3, scope: !571, file: !570, line: 180, type: !37)
!579 = !DILocalVariable(name: "n", scope: !571, file: !570, line: 182, type: !37)
!580 = !{!581}
!581 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!582 = !{!37, !28, !30}
!583 = distinct !DICompileUnit(language: DW_LANG_C99, file: !584, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !94)
!584 = !DIFile(filename: "./lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!585 = distinct !DICompileUnit(language: DW_LANG_C99, file: !586, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !587, retainedTypes: !588)
!586 = !DIFile(filename: "./lib/xstrtoumax.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!587 = !{!5, !129}
!588 = !{!74, !145, !28}
!589 = distinct !DICompileUnit(language: DW_LANG_C99, file: !590, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !94, retainedTypes: !565)
!590 = !DIFile(filename: "./lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!591 = distinct !DICompileUnit(language: DW_LANG_C99, file: !592, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !94, retainedTypes: !557)
!592 = !DIFile(filename: "./lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!593 = distinct !DICompileUnit(language: DW_LANG_C99, file: !594, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !94)
!594 = !DIFile(filename: "./lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!595 = distinct !DICompileUnit(language: DW_LANG_C99, file: !596, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !94, retainedTypes: !597)
!596 = !DIFile(filename: "./lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!597 = !{!37, !39, !41, !44}
!598 = distinct !DICompileUnit(language: DW_LANG_C99, file: !599, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !94)
!599 = !DIFile(filename: "./lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!600 = distinct !DICompileUnit(language: DW_LANG_C99, file: !601, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !94, retainedTypes: !565)
!601 = !DIFile(filename: "./lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!602 = distinct !DICompileUnit(language: DW_LANG_C99, file: !603, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !94, retainedTypes: !565)
!603 = !DIFile(filename: "./lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!604 = !{!"clang version 4.0.1 (tags/RELEASE_401/final)"}
!605 = !{i32 2, !"Dwarf Version", i32 4}
!606 = !{i32 2, !"Debug Info Version", i32 3}
!607 = !{i32 1, !"PIC Level", i32 2}
!608 = !{i32 1, !"PIE Level", i32 2}
!609 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 49, type: !610, isLocal: false, isDefinition: true, scopeLine: 50, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !2, variables: !612)
!610 = !DISubroutineType(types: !611)
!611 = !{null, !74}
!612 = !{!613}
!613 = !DILocalVariable(name: "status", arg: 1, scope: !609, file: !3, line: 49, type: !74)
!614 = !DIExpression()
!615 = !DILocation(line: 49, column: 12, scope: !609)
!616 = !DILocation(line: 51, column: 14, scope: !617)
!617 = distinct !DILexicalBlock(scope: !609, file: !3, line: 51, column: 7)
!618 = !DILocation(line: 51, column: 7, scope: !609)
!619 = !DILocation(line: 52, column: 5, scope: !620)
!620 = !DILexicalBlockFile(scope: !621, file: !3, discriminator: 1)
!621 = distinct !DILexicalBlock(scope: !617, file: !3, line: 52, column: 5)
!622 = !{!623, !623, i64 0}
!623 = !{!"any pointer", !624, i64 0}
!624 = !{!"omnipotent char", !625, i64 0}
!625 = !{!"Simple C/C++ TBAA"}
!626 = !DILocation(line: 52, column: 5, scope: !627)
!627 = !DILexicalBlockFile(scope: !621, file: !3, discriminator: 3)
!628 = !DILocation(line: 52, column: 5, scope: !629)
!629 = !DILexicalBlockFile(scope: !621, file: !3, discriminator: 2)
!630 = !DILocation(line: 55, column: 7, scope: !631)
!631 = distinct !DILexicalBlock(scope: !617, file: !3, line: 54, column: 5)
!632 = !DILocation(line: 55, column: 7, scope: !633)
!633 = !DILexicalBlockFile(scope: !631, file: !3, discriminator: 1)
!634 = !DILocation(line: 57, column: 7, scope: !631)
!635 = !DILocation(line: 57, column: 7, scope: !633)
!636 = !DILocation(line: 587, column: 3, scope: !637, inlinedAt: !640)
!637 = distinct !DISubprogram(name: "emit_mandatory_arg_note", scope: !50, file: !50, line: 585, type: !638, isLocal: true, isDefinition: true, scopeLine: 586, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !94)
!638 = !DISubroutineType(types: !639)
!639 = !{null}
!640 = distinct !DILocation(line: 61, column: 7, scope: !631)
!641 = !DILocation(line: 587, column: 3, scope: !642, inlinedAt: !640)
!642 = !DILexicalBlockFile(scope: !637, file: !50, discriminator: 1)
!643 = !DILocation(line: 63, column: 7, scope: !631)
!644 = !DILocation(line: 63, column: 7, scope: !633)
!645 = !DILocation(line: 66, column: 7, scope: !631)
!646 = !DILocation(line: 66, column: 7, scope: !633)
!647 = !DILocation(line: 71, column: 7, scope: !631)
!648 = !DILocation(line: 71, column: 7, scope: !633)
!649 = !DILocation(line: 72, column: 7, scope: !631)
!650 = !DILocation(line: 72, column: 7, scope: !633)
!651 = !DILocation(line: 73, column: 7, scope: !631)
!652 = !DILocation(line: 73, column: 7, scope: !633)
!653 = !DILocation(line: 80, column: 7, scope: !631)
!654 = !DILocation(line: 80, column: 7, scope: !633)
!655 = !DILocation(line: 86, column: 7, scope: !631)
!656 = !DILocation(line: 86, column: 7, scope: !633)
!657 = !DILocation(line: 642, column: 15, scope: !49, inlinedAt: !658)
!658 = distinct !DILocation(line: 87, column: 7, scope: !631)
!659 = !DILocation(line: 651, column: 3, scope: !49, inlinedAt: !658)
!660 = !DILocation(line: 651, column: 3, scope: !661, inlinedAt: !658)
!661 = !DILexicalBlockFile(scope: !49, file: !50, discriminator: 1)
!662 = !DILocation(line: 655, column: 29, scope: !49, inlinedAt: !658)
!663 = !DILocation(line: 655, column: 15, scope: !49, inlinedAt: !658)
!664 = !DILocation(line: 656, column: 7, scope: !69, inlinedAt: !658)
!665 = !DILocation(line: 656, column: 19, scope: !69, inlinedAt: !658)
!666 = !DILocation(line: 656, column: 22, scope: !667, inlinedAt: !658)
!667 = !DILexicalBlockFile(scope: !69, file: !50, discriminator: 16)
!668 = !DILocation(line: 656, column: 7, scope: !669, inlinedAt: !658)
!669 = !DILexicalBlockFile(scope: !49, file: !50, discriminator: 16)
!670 = !DILocation(line: 662, column: 7, scope: !671, inlinedAt: !658)
!671 = distinct !DILexicalBlock(scope: !69, file: !50, line: 657, column: 5)
!672 = !DILocation(line: 662, column: 7, scope: !673, inlinedAt: !658)
!673 = !DILexicalBlockFile(scope: !671, file: !50, discriminator: 1)
!674 = !DILocation(line: 664, column: 5, scope: !671, inlinedAt: !658)
!675 = !DILocation(line: 665, column: 3, scope: !49, inlinedAt: !658)
!676 = !DILocation(line: 665, column: 3, scope: !661, inlinedAt: !658)
!677 = !DILocation(line: 667, column: 3, scope: !49, inlinedAt: !658)
!678 = !DILocation(line: 667, column: 3, scope: !661, inlinedAt: !658)
!679 = !DILocation(line: 89, column: 3, scope: !609)
!680 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 93, type: !681, isLocal: false, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !684)
!681 = !DISubroutineType(types: !682)
!682 = !{!74, !74, !683}
!683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!684 = !{!685, !686, !687, !690, !691, !692, !693, !694, !695, !696, !699, !703, !706, !709, !710, !714, !715}
!685 = !DILocalVariable(name: "argc", arg: 1, scope: !680, file: !3, line: 93, type: !74)
!686 = !DILocalVariable(name: "argv", arg: 2, scope: !680, file: !3, line: 93, type: !683)
!687 = !DILocalVariable(name: "newmode", scope: !680, file: !3, line: 95, type: !688)
!688 = !DIDerivedType(tag: DW_TAG_typedef, name: "mode_t", file: !33, line: 70, baseType: !689)
!689 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !35, line: 138, baseType: !31)
!690 = !DILocalVariable(name: "specified_mode", scope: !680, file: !3, line: 96, type: !44)
!691 = !DILocalVariable(name: "optc", scope: !680, file: !3, line: 97, type: !74)
!692 = !DILocalVariable(name: "expected_operands", scope: !680, file: !3, line: 98, type: !37)
!693 = !DILocalVariable(name: "node_type", scope: !680, file: !3, line: 99, type: !688)
!694 = !DILocalVariable(name: "scontext", scope: !680, file: !3, line: 100, type: !44)
!695 = !DILocalVariable(name: "set_security_context", scope: !680, file: !3, line: 101, type: !104)
!696 = !DILocalVariable(name: "umask_value", scope: !697, file: !3, line: 148, type: !688)
!697 = distinct !DILexicalBlock(scope: !698, file: !3, line: 147, column: 5)
!698 = distinct !DILexicalBlock(scope: !680, file: !3, line: 146, column: 7)
!699 = !DILocalVariable(name: "change", scope: !697, file: !3, line: 149, type: !700)
!700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !701, size: 64)
!701 = !DICompositeType(tag: DW_TAG_structure_type, name: "mode_change", file: !702, line: 25, flags: DIFlagFwdDecl)
!702 = !DIFile(filename: "./lib/modechange.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!703 = !DILocalVariable(name: "ret", scope: !704, file: !3, line: 192, type: !74)
!704 = distinct !DILexicalBlock(scope: !705, file: !3, line: 191, column: 5)
!705 = distinct !DILexicalBlock(scope: !680, file: !3, line: 190, column: 7)
!706 = !DILocalVariable(name: "s_major", scope: !707, file: !3, line: 228, type: !44)
!707 = distinct !DILexicalBlock(scope: !708, file: !3, line: 227, column: 7)
!708 = distinct !DILexicalBlock(scope: !680, file: !3, line: 208, column: 5)
!709 = !DILocalVariable(name: "s_minor", scope: !707, file: !3, line: 229, type: !44)
!710 = !DILocalVariable(name: "i_major", scope: !707, file: !3, line: 230, type: !711)
!711 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !712, line: 136, baseType: !713)
!712 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!713 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !35, line: 62, baseType: !36)
!714 = !DILocalVariable(name: "i_minor", scope: !707, file: !3, line: 230, type: !711)
!715 = !DILocalVariable(name: "device", scope: !707, file: !3, line: 231, type: !32)
!716 = !DILocation(line: 93, column: 11, scope: !680)
!717 = !DILocation(line: 93, column: 24, scope: !680)
!718 = !DILocation(line: 96, column: 15, scope: !680)
!719 = !DILocation(line: 100, column: 15, scope: !680)
!720 = !DILocation(line: 101, column: 8, scope: !680)
!721 = !DILocation(line: 104, column: 21, scope: !680)
!722 = !DILocation(line: 104, column: 3, scope: !680)
!723 = !DILocation(line: 105, column: 3, scope: !680)
!724 = !DILocation(line: 106, column: 3, scope: !680)
!725 = !DILocation(line: 107, column: 3, scope: !680)
!726 = !DILocation(line: 109, column: 3, scope: !680)
!727 = !DILocation(line: 111, column: 3, scope: !680)
!728 = !DILocation(line: 111, column: 18, scope: !729)
!729 = !DILexicalBlockFile(scope: !680, file: !3, discriminator: 1)
!730 = !DILocation(line: 97, column: 7, scope: !680)
!731 = !DILocation(line: 111, column: 3, scope: !729)
!732 = !DILocation(line: 116, column: 28, scope: !733)
!733 = distinct !DILexicalBlock(scope: !734, file: !3, line: 114, column: 9)
!734 = distinct !DILexicalBlock(scope: !680, file: !3, line: 112, column: 5)
!735 = !DILocation(line: 117, column: 11, scope: !733)
!736 = distinct !{!736, !727, !737}
!737 = !DILocation(line: 143, column: 5, scope: !680)
!738 = !DILocation(line: 131, column: 20, scope: !739)
!739 = distinct !DILexicalBlock(scope: !740, file: !3, line: 131, column: 20)
!740 = distinct !DILexicalBlock(scope: !741, file: !3, line: 124, column: 20)
!741 = distinct !DILexicalBlock(scope: !733, file: !3, line: 119, column: 15)
!742 = !DILocation(line: 131, column: 20, scope: !740)
!743 = !DILocation(line: 134, column: 22, scope: !744)
!744 = distinct !DILexicalBlock(scope: !739, file: !3, line: 132, column: 13)
!745 = !DILocation(line: 133, column: 15, scope: !744)
!746 = !DILocation(line: 136, column: 13, scope: !744)
!747 = !DILocation(line: 138, column: 9, scope: !733)
!748 = !DILocation(line: 139, column: 9, scope: !733)
!749 = !DILocation(line: 139, column: 9, scope: !750)
!750 = !DILexicalBlockFile(scope: !733, file: !3, discriminator: 1)
!751 = !DILocation(line: 141, column: 11, scope: !733)
!752 = !DILocation(line: 95, column: 10, scope: !680)
!753 = !DILocation(line: 146, column: 7, scope: !698)
!754 = !DILocation(line: 146, column: 7, scope: !680)
!755 = !DILocation(line: 149, column: 36, scope: !697)
!756 = !DILocation(line: 149, column: 27, scope: !697)
!757 = !DILocation(line: 150, column: 12, scope: !758)
!758 = distinct !DILexicalBlock(scope: !697, file: !3, line: 150, column: 11)
!759 = !DILocation(line: 150, column: 11, scope: !697)
!760 = !DILocation(line: 151, column: 9, scope: !758)
!761 = !DILocation(line: 151, column: 9, scope: !762)
!762 = !DILexicalBlockFile(scope: !758, file: !3, discriminator: 1)
!763 = !DILocation(line: 152, column: 21, scope: !697)
!764 = !DILocation(line: 148, column: 14, scope: !697)
!765 = !DILocation(line: 153, column: 7, scope: !697)
!766 = !DILocation(line: 154, column: 17, scope: !697)
!767 = !DILocation(line: 155, column: 13, scope: !697)
!768 = !DILocation(line: 155, column: 7, scope: !697)
!769 = !DILocation(line: 156, column: 19, scope: !770)
!770 = distinct !DILexicalBlock(scope: !697, file: !3, line: 156, column: 11)
!771 = !DILocation(line: 156, column: 11, scope: !697)
!772 = !DILocation(line: 157, column: 9, scope: !770)
!773 = !DILocation(line: 157, column: 9, scope: !774)
!774 = !DILexicalBlockFile(scope: !770, file: !3, discriminator: 1)
!775 = !DILocation(line: 164, column: 32, scope: !680)
!776 = !{!777, !777, i64 0}
!777 = !{!"int", !624, i64 0}
!778 = !DILocation(line: 164, column: 29, scope: !680)
!779 = !DILocation(line: 165, column: 24, scope: !680)
!780 = !DILocation(line: 165, column: 35, scope: !729)
!781 = !DILocation(line: 165, column: 39, scope: !729)
!782 = !DILocation(line: 165, column: 46, scope: !729)
!783 = !DILocation(line: 165, column: 49, scope: !784)
!784 = !DILexicalBlockFile(scope: !680, file: !3, discriminator: 2)
!785 = !{!624, !624, i64 0}
!786 = !DILocation(line: 165, column: 69, scope: !784)
!787 = !DILocation(line: 164, column: 23, scope: !729)
!788 = !DILocation(line: 98, column: 10, scope: !680)
!789 = !DILocation(line: 168, column: 12, scope: !790)
!790 = distinct !DILexicalBlock(scope: !680, file: !3, line: 168, column: 7)
!791 = !DILocation(line: 168, column: 7, scope: !790)
!792 = !DILocation(line: 168, column: 21, scope: !790)
!793 = !DILocation(line: 168, column: 7, scope: !680)
!794 = !DILocation(line: 170, column: 11, scope: !795)
!795 = distinct !DILexicalBlock(scope: !790, file: !3, line: 169, column: 5)
!796 = !DILocation(line: 171, column: 22, scope: !797)
!797 = distinct !DILexicalBlock(scope: !795, file: !3, line: 170, column: 11)
!798 = !DILocation(line: 171, column: 9, scope: !799)
!799 = !DILexicalBlockFile(scope: !797, file: !3, discriminator: 1)
!800 = !DILocation(line: 171, column: 9, scope: !797)
!801 = !DILocation(line: 173, column: 22, scope: !797)
!802 = !DILocation(line: 173, column: 70, scope: !797)
!803 = !DILocation(line: 173, column: 60, scope: !797)
!804 = !DILocation(line: 173, column: 53, scope: !799)
!805 = !DILocation(line: 173, column: 9, scope: !806)
!806 = !DILexicalBlockFile(scope: !797, file: !3, discriminator: 2)
!807 = !DILocation(line: 174, column: 34, scope: !808)
!808 = distinct !DILexicalBlock(scope: !795, file: !3, line: 174, column: 11)
!809 = !DILocation(line: 174, column: 44, scope: !810)
!810 = !DILexicalBlockFile(scope: !808, file: !3, discriminator: 1)
!811 = !DILocation(line: 174, column: 42, scope: !810)
!812 = !DILocation(line: 174, column: 51, scope: !810)
!813 = !DILocation(line: 174, column: 11, scope: !814)
!814 = !DILexicalBlockFile(scope: !795, file: !3, discriminator: 1)
!815 = !DILocation(line: 175, column: 9, scope: !808)
!816 = !DILocation(line: 175, column: 9, scope: !810)
!817 = !DILocation(line: 177, column: 7, scope: !795)
!818 = !DILocation(line: 180, column: 25, scope: !819)
!819 = distinct !DILexicalBlock(scope: !680, file: !3, line: 180, column: 7)
!820 = !DILocation(line: 180, column: 7, scope: !680)
!821 = !DILocation(line: 182, column: 20, scope: !822)
!822 = distinct !DILexicalBlock(scope: !819, file: !3, line: 181, column: 5)
!823 = !DILocation(line: 183, column: 26, scope: !822)
!824 = !DILocation(line: 183, column: 33, scope: !822)
!825 = !DILocation(line: 183, column: 21, scope: !822)
!826 = !DILocation(line: 183, column: 14, scope: !822)
!827 = !DILocation(line: 182, column: 7, scope: !828)
!828 = !DILexicalBlockFile(scope: !822, file: !3, discriminator: 1)
!829 = !DILocation(line: 184, column: 34, scope: !830)
!830 = distinct !DILexicalBlock(scope: !822, file: !3, line: 184, column: 11)
!831 = !DILocation(line: 184, column: 44, scope: !832)
!832 = !DILexicalBlockFile(scope: !830, file: !3, discriminator: 1)
!833 = !DILocation(line: 184, column: 42, scope: !832)
!834 = !DILocation(line: 184, column: 51, scope: !832)
!835 = !DILocation(line: 184, column: 11, scope: !828)
!836 = !DILocation(line: 185, column: 9, scope: !830)
!837 = !DILocation(line: 185, column: 9, scope: !832)
!838 = !DILocation(line: 187, column: 7, scope: !822)
!839 = !DILocation(line: 207, column: 23, scope: !680)
!840 = !DILocation(line: 207, column: 11, scope: !680)
!841 = !DILocation(line: 207, column: 3, scope: !680)
!842 = !DILocation(line: 99, column: 10, scope: !680)
!843 = !DILocation(line: 224, column: 7, scope: !708)
!844 = !DILocation(line: 228, column: 43, scope: !707)
!845 = !DILocation(line: 228, column: 31, scope: !707)
!846 = !DILocation(line: 228, column: 21, scope: !707)
!847 = !DILocation(line: 229, column: 43, scope: !707)
!848 = !DILocation(line: 229, column: 31, scope: !707)
!849 = !DILocation(line: 229, column: 21, scope: !707)
!850 = !DILocation(line: 230, column: 9, scope: !707)
!851 = !DIExpression(DW_OP_deref)
!852 = !DILocation(line: 230, column: 19, scope: !707)
!853 = !DILocation(line: 233, column: 13, scope: !854)
!854 = distinct !DILexicalBlock(scope: !707, file: !3, line: 233, column: 13)
!855 = !DILocation(line: 233, column: 59, scope: !854)
!856 = !DILocation(line: 234, column: 13, scope: !854)
!857 = !DILocation(line: 234, column: 16, scope: !858)
!858 = !DILexicalBlockFile(scope: !854, file: !3, discriminator: 1)
!859 = !{!860, !860, i64 0}
!860 = !{!"long", !624, i64 0}
!861 = !DILocation(line: 234, column: 27, scope: !858)
!862 = !DILocation(line: 234, column: 24, scope: !858)
!863 = !DILocation(line: 233, column: 13, scope: !864)
!864 = !DILexicalBlockFile(scope: !707, file: !3, discriminator: 1)
!865 = !DILocation(line: 235, column: 11, scope: !854)
!866 = !DILocation(line: 235, column: 11, scope: !858)
!867 = !DILocation(line: 235, column: 11, scope: !868)
!868 = !DILexicalBlockFile(scope: !854, file: !3, discriminator: 2)
!869 = !DILocation(line: 230, column: 28, scope: !707)
!870 = !DILocation(line: 238, column: 13, scope: !871)
!871 = distinct !DILexicalBlock(scope: !707, file: !3, line: 238, column: 13)
!872 = !DILocation(line: 238, column: 59, scope: !871)
!873 = !DILocation(line: 239, column: 13, scope: !871)
!874 = !DILocation(line: 239, column: 16, scope: !875)
!875 = !DILexicalBlockFile(scope: !871, file: !3, discriminator: 1)
!876 = !DILocation(line: 239, column: 27, scope: !875)
!877 = !DILocation(line: 239, column: 24, scope: !875)
!878 = !DILocation(line: 238, column: 13, scope: !864)
!879 = !DILocation(line: 240, column: 11, scope: !871)
!880 = !DILocation(line: 240, column: 11, scope: !875)
!881 = !DILocation(line: 240, column: 11, scope: !882)
!882 = !DILexicalBlockFile(scope: !871, file: !3, discriminator: 2)
!883 = !DILocation(line: 243, column: 18, scope: !707)
!884 = !DILocation(line: 81, column: 1, scope: !885, inlinedAt: !893)
!885 = distinct !DISubprogram(name: "gnu_dev_makedev", scope: !886, file: !886, line: 81, type: !887, isLocal: false, isDefinition: true, scopeLine: 81, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !889)
!886 = !DIFile(filename: "/usr/include/sys/sysmacros.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!887 = !DISubroutineType(types: !888)
!888 = !{!34, !31, !31}
!889 = !{!890, !891, !892}
!890 = !DILocalVariable(name: "__major", arg: 1, scope: !885, file: !886, line: 81, type: !31)
!891 = !DILocalVariable(name: "__minor", arg: 2, scope: !885, file: !886, line: 81, type: !31)
!892 = !DILocalVariable(name: "__dev", scope: !885, file: !886, line: 81, type: !34)
!893 = distinct !DILocation(line: 243, column: 18, scope: !707)
!894 = !DILocation(line: 231, column: 15, scope: !707)
!895 = !DILocation(line: 245, column: 20, scope: !896)
!896 = distinct !DILexicalBlock(scope: !707, file: !3, line: 245, column: 13)
!897 = !DILocation(line: 245, column: 13, scope: !707)
!898 = !DILocation(line: 246, column: 11, scope: !896)
!899 = !DILocation(line: 246, column: 11, scope: !900)
!900 = !DILexicalBlockFile(scope: !896, file: !3, discriminator: 1)
!901 = !DILocation(line: 253, column: 25, scope: !902)
!902 = distinct !DILexicalBlock(scope: !707, file: !3, line: 253, column: 13)
!903 = !DILocation(line: 253, column: 20, scope: !902)
!904 = !DILocation(line: 253, column: 42, scope: !902)
!905 = !DILocation(line: 479, column: 1, scope: !906, inlinedAt: !914)
!906 = distinct !DISubprogram(name: "mknod", scope: !907, file: !907, line: 479, type: !908, isLocal: false, isDefinition: true, scopeLine: 480, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !910)
!907 = !DIFile(filename: "/usr/include/sys/stat.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!908 = !DISubroutineType(types: !909)
!909 = !{!74, !44, !689, !34}
!910 = !{!911, !912, !913}
!911 = !DILocalVariable(name: "__path", arg: 1, scope: !906, file: !907, line: 479, type: !44)
!912 = !DILocalVariable(name: "__mode", arg: 2, scope: !906, file: !907, line: 479, type: !689)
!913 = !DILocalVariable(name: "__dev", arg: 3, scope: !906, file: !907, line: 479, type: !34)
!914 = distinct !DILocation(line: 253, column: 13, scope: !902)
!915 = !DILocation(line: 481, column: 10, scope: !906, inlinedAt: !914)
!916 = !DILocation(line: 481, column: 3, scope: !906, inlinedAt: !914)
!917 = !DILocation(line: 253, column: 63, scope: !902)
!918 = !DILocation(line: 253, column: 13, scope: !707)
!919 = !DILocation(line: 254, column: 11, scope: !902)
!920 = !DILocation(line: 254, column: 11, scope: !921)
!921 = !DILexicalBlockFile(scope: !902, file: !3, discriminator: 1)
!922 = !DILocation(line: 254, column: 11, scope: !923)
!923 = !DILexicalBlockFile(scope: !902, file: !3, discriminator: 2)
!924 = !DILocation(line: 255, column: 7, scope: !708)
!925 = !DILocation(line: 256, column: 7, scope: !708)
!926 = !DILocation(line: 261, column: 19, scope: !927)
!927 = distinct !DILexicalBlock(scope: !708, file: !3, line: 261, column: 11)
!928 = !DILocation(line: 261, column: 11, scope: !927)
!929 = !DILocation(line: 261, column: 42, scope: !927)
!930 = !DILocation(line: 261, column: 11, scope: !708)
!931 = !DILocation(line: 262, column: 9, scope: !927)
!932 = !DILocation(line: 262, column: 9, scope: !933)
!933 = !DILexicalBlockFile(scope: !927, file: !3, discriminator: 1)
!934 = !DILocation(line: 262, column: 9, scope: !935)
!935 = !DILexicalBlockFile(scope: !927, file: !3, discriminator: 2)
!936 = !DILocation(line: 266, column: 20, scope: !708)
!937 = !DILocation(line: 266, column: 61, scope: !708)
!938 = !DILocation(line: 266, column: 68, scope: !708)
!939 = !DILocation(line: 266, column: 56, scope: !708)
!940 = !DILocation(line: 266, column: 49, scope: !941)
!941 = !DILexicalBlockFile(scope: !708, file: !3, discriminator: 1)
!942 = !DILocation(line: 266, column: 7, scope: !943)
!943 = !DILexicalBlockFile(scope: !708, file: !3, discriminator: 2)
!944 = !DILocation(line: 267, column: 7, scope: !708)
!945 = !DILocation(line: 270, column: 22, scope: !946)
!946 = distinct !DILexicalBlock(scope: !680, file: !3, line: 270, column: 7)
!947 = !DILocation(line: 270, column: 38, scope: !948)
!948 = !DILexicalBlockFile(scope: !946, file: !3, discriminator: 1)
!949 = !DILocation(line: 270, column: 33, scope: !948)
!950 = !DILocation(line: 270, column: 25, scope: !948)
!951 = !DILocation(line: 270, column: 56, scope: !948)
!952 = !DILocation(line: 270, column: 7, scope: !729)
!953 = !DILocation(line: 271, column: 5, scope: !946)
!954 = !DILocation(line: 271, column: 5, scope: !948)
!955 = !DILocation(line: 271, column: 5, scope: !956)
!956 = !DILexicalBlockFile(scope: !946, file: !3, discriminator: 2)
!957 = !DILocation(line: 271, column: 5, scope: !958)
!958 = !DILexicalBlockFile(scope: !946, file: !3, discriminator: 3)
!959 = !DILocation(line: 274, column: 3, scope: !680)
!960 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !103, file: !103, line: 41, type: !51, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !98, variables: !961)
!961 = !{!962}
!962 = !DILocalVariable(name: "file", arg: 1, scope: !960, file: !103, line: 41, type: !44)
!963 = !DILocation(line: 41, column: 41, scope: !960)
!964 = !DILocation(line: 43, column: 13, scope: !960)
!965 = !DILocation(line: 44, column: 1, scope: !960)
!966 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !103, file: !103, line: 78, type: !967, isLocal: false, isDefinition: true, scopeLine: 79, flags: DIFlagPrototyped, isOptimized: true, unit: !98, variables: !969)
!967 = !DISubroutineType(types: !968)
!968 = !{null, !104}
!969 = !{!970}
!970 = !DILocalVariable(name: "ignore", arg: 1, scope: !966, file: !103, line: 78, type: !104)
!971 = !DIExpression(DW_OP_LLVM_fragment, 0, 1)
!972 = !DILocation(line: 78, column: 37, scope: !966)
!973 = !DILocation(line: 80, column: 16, scope: !966)
!974 = !{!975, !975, i64 0}
!975 = !{!"_Bool", !624, i64 0}
!976 = !DILocation(line: 81, column: 1, scope: !966)
!977 = distinct !DISubprogram(name: "close_stdout", scope: !103, file: !103, line: 107, type: !638, isLocal: false, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: true, unit: !98, variables: !978)
!978 = !{!979}
!979 = !DILocalVariable(name: "write_error", scope: !980, file: !103, line: 112, type: !44)
!980 = distinct !DILexicalBlock(scope: !981, file: !103, line: 111, column: 5)
!981 = distinct !DILexicalBlock(scope: !977, file: !103, line: 109, column: 7)
!982 = !DILocation(line: 109, column: 21, scope: !981)
!983 = !DILocation(line: 109, column: 7, scope: !981)
!984 = !DILocation(line: 109, column: 29, scope: !981)
!985 = !DILocation(line: 110, column: 7, scope: !981)
!986 = !DILocation(line: 110, column: 12, scope: !987)
!987 = !DILexicalBlockFile(scope: !981, file: !103, discriminator: 1)
!988 = !{i8 0, i8 2}
!989 = !DILocation(line: 114, column: 19, scope: !990)
!990 = distinct !DILexicalBlock(scope: !980, file: !103, line: 113, column: 11)
!991 = !DILocation(line: 110, column: 25, scope: !987)
!992 = !DILocation(line: 110, column: 28, scope: !993)
!993 = !DILexicalBlockFile(scope: !981, file: !103, discriminator: 2)
!994 = !DILocation(line: 110, column: 34, scope: !993)
!995 = !DILocation(line: 109, column: 7, scope: !996)
!996 = !DILexicalBlockFile(scope: !977, file: !103, discriminator: 1)
!997 = !DILocation(line: 112, column: 33, scope: !980)
!998 = !DILocation(line: 112, column: 19, scope: !980)
!999 = !DILocation(line: 113, column: 11, scope: !990)
!1000 = !DILocation(line: 113, column: 11, scope: !980)
!1001 = !DILocation(line: 114, column: 36, scope: !1002)
!1002 = !DILexicalBlockFile(scope: !990, file: !103, discriminator: 1)
!1003 = !DILocation(line: 114, column: 9, scope: !1004)
!1004 = !DILexicalBlockFile(scope: !990, file: !103, discriminator: 2)
!1005 = !DILocation(line: 114, column: 9, scope: !990)
!1006 = !DILocation(line: 117, column: 9, scope: !1002)
!1007 = !DILocation(line: 119, column: 14, scope: !980)
!1008 = !DILocation(line: 119, column: 7, scope: !980)
!1009 = !DILocation(line: 122, column: 22, scope: !1010)
!1010 = distinct !DILexicalBlock(scope: !977, file: !103, line: 122, column: 8)
!1011 = !DILocation(line: 122, column: 8, scope: !1010)
!1012 = !DILocation(line: 122, column: 30, scope: !1010)
!1013 = !DILocation(line: 122, column: 8, scope: !977)
!1014 = !DILocation(line: 123, column: 13, scope: !1010)
!1015 = !DILocation(line: 123, column: 6, scope: !1010)
!1016 = !DILocation(line: 124, column: 1, scope: !977)
!1017 = distinct !DISubprogram(name: "mode_compile", scope: !551, file: !551, line: 134, type: !1018, isLocal: false, isDefinition: true, scopeLine: 135, flags: DIFlagPrototyped, isOptimized: true, unit: !547, variables: !1028)
!1018 = !DISubroutineType(types: !1019)
!1019 = !{!1020, !44}
!1020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1021, size: 64)
!1021 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mode_change", file: !551, line: 98, size: 128, elements: !1022)
!1022 = !{!1023, !1024, !1025, !1026, !1027}
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !1021, file: !551, line: 100, baseType: !29, size: 8)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !1021, file: !551, line: 101, baseType: !29, size: 8, offset: 8)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "affected", scope: !1021, file: !551, line: 102, baseType: !688, size: 32, offset: 32)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1021, file: !551, line: 103, baseType: !688, size: 32, offset: 64)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "mentioned", scope: !1021, file: !551, line: 104, baseType: !688, size: 32, offset: 96)
!1028 = !{!1029, !1030, !1031, !1032, !1033, !1036, !1037, !1038, !1040, !1044, !1046, !1047, !1048, !1049, !1050}
!1029 = !DILocalVariable(name: "mode_string", arg: 1, scope: !1017, file: !551, line: 134, type: !44)
!1030 = !DILocalVariable(name: "mc", scope: !1017, file: !551, line: 137, type: !1020)
!1031 = !DILocalVariable(name: "used", scope: !1017, file: !551, line: 138, type: !37)
!1032 = !DILocalVariable(name: "p", scope: !1017, file: !551, line: 139, type: !44)
!1033 = !DILocalVariable(name: "octal_mode", scope: !1034, file: !551, line: 143, type: !31)
!1034 = distinct !DILexicalBlock(scope: !1035, file: !551, line: 142, column: 5)
!1035 = distinct !DILexicalBlock(scope: !1017, file: !551, line: 141, column: 7)
!1036 = !DILocalVariable(name: "mode", scope: !1034, file: !551, line: 144, type: !688)
!1037 = !DILocalVariable(name: "mentioned", scope: !1034, file: !551, line: 145, type: !688)
!1038 = !DILocalVariable(name: "needed", scope: !1039, file: !551, line: 168, type: !37)
!1039 = distinct !DILexicalBlock(scope: !1017, file: !551, line: 167, column: 3)
!1040 = !DILocalVariable(name: "affected", scope: !1041, file: !551, line: 179, type: !688)
!1041 = distinct !DILexicalBlock(scope: !1042, file: !551, line: 177, column: 5)
!1042 = distinct !DILexicalBlock(scope: !1043, file: !551, line: 176, column: 3)
!1043 = distinct !DILexicalBlock(scope: !1017, file: !551, line: 176, column: 3)
!1044 = !DILocalVariable(name: "op", scope: !1045, file: !551, line: 206, type: !29)
!1045 = distinct !DILexicalBlock(scope: !1041, file: !551, line: 205, column: 9)
!1046 = !DILocalVariable(name: "value", scope: !1045, file: !551, line: 207, type: !688)
!1047 = !DILocalVariable(name: "mentioned", scope: !1045, file: !551, line: 208, type: !688)
!1048 = !DILocalVariable(name: "flag", scope: !1045, file: !551, line: 209, type: !29)
!1049 = !DILocalVariable(name: "change", scope: !1045, file: !551, line: 210, type: !1020)
!1050 = !DILocalVariable(name: "octal_mode", scope: !1051, file: !551, line: 217, type: !31)
!1051 = distinct !DILexicalBlock(scope: !1052, file: !551, line: 216, column: 15)
!1052 = distinct !DILexicalBlock(scope: !1045, file: !551, line: 213, column: 13)
!1053 = !DILocation(line: 134, column: 27, scope: !1017)
!1054 = !DILocation(line: 138, column: 10, scope: !1017)
!1055 = !DILocation(line: 141, column: 14, scope: !1035)
!1056 = !DILocation(line: 141, column: 27, scope: !1035)
!1057 = distinct !{!1057, !1058, !1059}
!1058 = !DILocation(line: 148, column: 7, scope: !1034)
!1059 = !DILocation(line: 154, column: 35, scope: !1034)
!1060 = !DILocation(line: 168, column: 12, scope: !1039)
!1061 = !DILocation(line: 139, column: 15, scope: !1017)
!1062 = !DILocation(line: 150, column: 41, scope: !1063)
!1063 = distinct !DILexicalBlock(scope: !1034, file: !551, line: 149, column: 9)
!1064 = !DILocation(line: 143, column: 20, scope: !1034)
!1065 = !DILocation(line: 150, column: 26, scope: !1063)
!1066 = !DILocation(line: 150, column: 43, scope: !1063)
!1067 = !DILocation(line: 150, column: 39, scope: !1063)
!1068 = !DILocation(line: 150, column: 46, scope: !1063)
!1069 = !DILocation(line: 151, column: 20, scope: !1070)
!1070 = distinct !DILexicalBlock(scope: !1063, file: !551, line: 151, column: 15)
!1071 = !DILocation(line: 151, column: 15, scope: !1063)
!1072 = !DILocation(line: 154, column: 21, scope: !1034)
!1073 = !DILocation(line: 154, column: 24, scope: !1034)
!1074 = !DILocation(line: 156, column: 11, scope: !1075)
!1075 = distinct !DILexicalBlock(scope: !1034, file: !551, line: 156, column: 11)
!1076 = !DILocation(line: 156, column: 11, scope: !1034)
!1077 = !DILocation(line: 144, column: 14, scope: !1034)
!1078 = !DILocation(line: 160, column: 22, scope: !1034)
!1079 = !DILocation(line: 160, column: 36, scope: !1034)
!1080 = !DILocation(line: 161, column: 28, scope: !1034)
!1081 = !DILocation(line: 161, column: 61, scope: !1034)
!1082 = !DILocation(line: 160, column: 20, scope: !1034)
!1083 = !DILocation(line: 145, column: 14, scope: !1034)
!1084 = !DILocalVariable(name: "new_mode", arg: 1, scope: !1085, file: !551, line: 112, type: !688)
!1085 = distinct !DISubprogram(name: "make_node_op_equals", scope: !551, file: !551, line: 112, type: !1086, isLocal: true, isDefinition: true, scopeLine: 113, flags: DIFlagPrototyped, isOptimized: true, unit: !547, variables: !1088)
!1086 = !DISubroutineType(types: !1087)
!1087 = !{!1020, !688, !688}
!1088 = !{!1084, !1089, !1090}
!1089 = !DILocalVariable(name: "mentioned", arg: 2, scope: !1085, file: !551, line: 112, type: !688)
!1090 = !DILocalVariable(name: "p", scope: !1085, file: !551, line: 114, type: !1020)
!1091 = !DILocation(line: 112, column: 29, scope: !1085, inlinedAt: !1092)
!1092 = distinct !DILocation(line: 163, column: 14, scope: !1034)
!1093 = !DILocation(line: 112, column: 46, scope: !1085, inlinedAt: !1092)
!1094 = !DILocation(line: 114, column: 27, scope: !1085, inlinedAt: !1092)
!1095 = !DILocation(line: 114, column: 23, scope: !1085, inlinedAt: !1092)
!1096 = !DILocation(line: 115, column: 9, scope: !1085, inlinedAt: !1092)
!1097 = !{!1098, !624, i64 0}
!1098 = !{!"mode_change", !624, i64 0, !624, i64 1, !777, i64 4, !777, i64 8, !777, i64 12}
!1099 = !DILocation(line: 116, column: 6, scope: !1085, inlinedAt: !1092)
!1100 = !DILocation(line: 116, column: 11, scope: !1085, inlinedAt: !1092)
!1101 = !{!1098, !624, i64 1}
!1102 = !DILocation(line: 117, column: 6, scope: !1085, inlinedAt: !1092)
!1103 = !DILocation(line: 117, column: 15, scope: !1085, inlinedAt: !1092)
!1104 = !{!1098, !777, i64 4}
!1105 = !DILocation(line: 118, column: 6, scope: !1085, inlinedAt: !1092)
!1106 = !DILocation(line: 118, column: 12, scope: !1085, inlinedAt: !1092)
!1107 = !{!1098, !777, i64 8}
!1108 = !DILocation(line: 119, column: 6, scope: !1085, inlinedAt: !1092)
!1109 = !DILocation(line: 119, column: 16, scope: !1085, inlinedAt: !1092)
!1110 = !{!1098, !777, i64 12}
!1111 = !DILocation(line: 120, column: 8, scope: !1085, inlinedAt: !1092)
!1112 = !DILocation(line: 120, column: 13, scope: !1085, inlinedAt: !1092)
!1113 = !DILocation(line: 163, column: 7, scope: !1034)
!1114 = !DILocation(line: 169, column: 27, scope: !1115)
!1115 = !DILexicalBlockFile(scope: !1116, file: !551, discriminator: 1)
!1116 = distinct !DILexicalBlock(scope: !1117, file: !551, line: 169, column: 5)
!1117 = distinct !DILexicalBlock(scope: !1039, file: !551, line: 169, column: 5)
!1118 = !DILocation(line: 169, column: 5, scope: !1119)
!1119 = !DILexicalBlockFile(scope: !1117, file: !551, discriminator: 1)
!1120 = !DILocation(line: 170, column: 41, scope: !1121)
!1121 = !DILexicalBlockFile(scope: !1116, file: !551, discriminator: 2)
!1122 = !DILocation(line: 170, column: 14, scope: !1123)
!1123 = !DILexicalBlockFile(scope: !1116, file: !551, discriminator: 3)
!1124 = !DILocation(line: 169, column: 32, scope: !1121)
!1125 = !DILocation(line: 169, column: 5, scope: !1121)
!1126 = distinct !{!1126, !1127, !1128}
!1127 = !DILocation(line: 169, column: 5, scope: !1117)
!1128 = !DILocation(line: 170, column: 53, scope: !1117)
!1129 = !DILocalVariable(name: "n", arg: 1, scope: !1130, file: !570, line: 105, type: !37)
!1130 = distinct !DISubprogram(name: "xnmalloc", scope: !570, file: !570, line: 105, type: !1131, isLocal: false, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: true, unit: !547, variables: !1133)
!1131 = !DISubroutineType(types: !1132)
!1132 = !{!30, !37, !37}
!1133 = !{!1129, !1134}
!1134 = !DILocalVariable(name: "s", arg: 2, scope: !1130, file: !570, line: 105, type: !37)
!1135 = !DILocation(line: 105, column: 18, scope: !1130, inlinedAt: !1136)
!1136 = distinct !DILocation(line: 171, column: 10, scope: !1039)
!1137 = !DILocation(line: 105, column: 28, scope: !1130, inlinedAt: !1136)
!1138 = !DILocation(line: 107, column: 7, scope: !1139, inlinedAt: !1136)
!1139 = distinct !DILexicalBlock(scope: !1130, file: !570, line: 107, column: 7)
!1140 = !DILocation(line: 107, column: 7, scope: !1130, inlinedAt: !1136)
!1141 = !DILocation(line: 108, column: 5, scope: !1139, inlinedAt: !1136)
!1142 = !DILocation(line: 109, column: 21, scope: !1130, inlinedAt: !1136)
!1143 = !DILocation(line: 109, column: 10, scope: !1130, inlinedAt: !1136)
!1144 = !DILocation(line: 171, column: 10, scope: !1039)
!1145 = !DILocation(line: 137, column: 23, scope: !1017)
!1146 = !DILocation(line: 176, column: 8, scope: !1043)
!1147 = !DILocation(line: 179, column: 14, scope: !1041)
!1148 = !DILocation(line: 182, column: 7, scope: !1041)
!1149 = !DILocation(line: 183, column: 17, scope: !1150)
!1150 = distinct !DILexicalBlock(scope: !1151, file: !551, line: 182, column: 7)
!1151 = distinct !DILexicalBlock(scope: !1041, file: !551, line: 182, column: 7)
!1152 = !DILocation(line: 183, column: 9, scope: !1150)
!1153 = distinct !{!1153, !1154, !1155}
!1154 = !DILocation(line: 204, column: 7, scope: !1041)
!1155 = !DILocation(line: 295, column: 49, scope: !1041)
!1156 = !DILocation(line: 189, column: 13, scope: !1157)
!1157 = distinct !DILexicalBlock(scope: !1150, file: !551, line: 184, column: 11)
!1158 = !DILocation(line: 195, column: 13, scope: !1157)
!1159 = !DILocation(line: 198, column: 13, scope: !1157)
!1160 = !DILocation(line: 182, column: 16, scope: !1161)
!1161 = !DILexicalBlockFile(scope: !1150, file: !551, discriminator: 1)
!1162 = !DILocation(line: 182, column: 7, scope: !1161)
!1163 = distinct !{!1163, !1164, !1165}
!1164 = !DILocation(line: 182, column: 7, scope: !1151)
!1165 = !DILocation(line: 201, column: 11, scope: !1151)
!1166 = !DILocation(line: 206, column: 21, scope: !1045)
!1167 = !DILocation(line: 206, column: 23, scope: !1045)
!1168 = !DILocation(line: 206, column: 16, scope: !1045)
!1169 = !DILocation(line: 208, column: 18, scope: !1045)
!1170 = !DILocation(line: 209, column: 16, scope: !1045)
!1171 = !DILocation(line: 212, column: 19, scope: !1045)
!1172 = !DILocation(line: 212, column: 11, scope: !1045)
!1173 = distinct !{!1173, !1174, !1175}
!1174 = !DILocation(line: 219, column: 17, scope: !1051)
!1175 = !DILocation(line: 225, column: 45, scope: !1051)
!1176 = !DILocation(line: 217, column: 30, scope: !1051)
!1177 = !DILocation(line: 221, column: 51, scope: !1178)
!1178 = distinct !DILexicalBlock(scope: !1051, file: !551, line: 220, column: 19)
!1179 = !DILocation(line: 221, column: 36, scope: !1178)
!1180 = !DILocation(line: 221, column: 53, scope: !1178)
!1181 = !DILocation(line: 221, column: 49, scope: !1178)
!1182 = !DILocation(line: 221, column: 56, scope: !1178)
!1183 = !DILocation(line: 222, column: 30, scope: !1184)
!1184 = distinct !DILexicalBlock(scope: !1178, file: !551, line: 222, column: 25)
!1185 = !DILocation(line: 222, column: 25, scope: !1178)
!1186 = !DILocation(line: 225, column: 31, scope: !1051)
!1187 = !DILocation(line: 225, column: 34, scope: !1051)
!1188 = !DILocation(line: 227, column: 21, scope: !1189)
!1189 = distinct !DILexicalBlock(scope: !1051, file: !551, line: 227, column: 21)
!1190 = !DILocation(line: 227, column: 30, scope: !1189)
!1191 = !DILocation(line: 227, column: 37, scope: !1192)
!1192 = !DILexicalBlockFile(scope: !1189, file: !551, discriminator: 1)
!1193 = !DILocation(line: 207, column: 18, scope: !1045)
!1194 = !DILocation(line: 239, column: 16, scope: !1052)
!1195 = !DILocation(line: 240, column: 15, scope: !1052)
!1196 = !DILocation(line: 245, column: 16, scope: !1052)
!1197 = !DILocation(line: 246, column: 15, scope: !1052)
!1198 = !DILocation(line: 251, column: 16, scope: !1052)
!1199 = !DILocation(line: 252, column: 15, scope: !1052)
!1200 = !DILocation(line: 259, column: 25, scope: !1201)
!1201 = distinct !DILexicalBlock(scope: !1202, file: !551, line: 258, column: 15)
!1202 = distinct !DILexicalBlock(scope: !1052, file: !551, line: 258, column: 15)
!1203 = !DILocation(line: 259, column: 17, scope: !1201)
!1204 = !DILocation(line: 262, column: 27, scope: !1205)
!1205 = distinct !DILexicalBlock(scope: !1201, file: !551, line: 260, column: 19)
!1206 = !DILocation(line: 263, column: 21, scope: !1205)
!1207 = !DILocation(line: 265, column: 27, scope: !1205)
!1208 = !DILocation(line: 266, column: 21, scope: !1205)
!1209 = !DILocation(line: 268, column: 27, scope: !1205)
!1210 = !DILocation(line: 269, column: 21, scope: !1205)
!1211 = !DILocation(line: 275, column: 27, scope: !1205)
!1212 = !DILocation(line: 276, column: 21, scope: !1205)
!1213 = !DILocation(line: 279, column: 27, scope: !1205)
!1214 = !DILocation(line: 280, column: 21, scope: !1205)
!1215 = !DILocation(line: 258, column: 24, scope: !1216)
!1216 = !DILexicalBlockFile(scope: !1201, file: !551, discriminator: 1)
!1217 = !DILocation(line: 258, column: 15, scope: !1216)
!1218 = distinct !{!1218, !1219, !1220}
!1219 = !DILocation(line: 258, column: 15, scope: !1202)
!1220 = !DILocation(line: 283, column: 19, scope: !1202)
!1221 = !DILocation(line: 287, column: 28, scope: !1045)
!1222 = !DILocation(line: 288, column: 19, scope: !1045)
!1223 = !DILocation(line: 288, column: 22, scope: !1045)
!1224 = !DILocation(line: 289, column: 19, scope: !1045)
!1225 = !DILocation(line: 289, column: 24, scope: !1045)
!1226 = !DILocation(line: 290, column: 19, scope: !1045)
!1227 = !DILocation(line: 290, column: 28, scope: !1045)
!1228 = !DILocation(line: 291, column: 19, scope: !1045)
!1229 = !DILocation(line: 291, column: 25, scope: !1045)
!1230 = !DILocation(line: 293, column: 14, scope: !1045)
!1231 = !DILocation(line: 293, column: 38, scope: !1232)
!1232 = !DILexicalBlockFile(scope: !1045, file: !551, discriminator: 2)
!1233 = !DILocation(line: 293, column: 14, scope: !1234)
!1234 = !DILexicalBlockFile(scope: !1045, file: !551, discriminator: 6)
!1235 = !DILocation(line: 292, column: 19, scope: !1045)
!1236 = !DILocation(line: 292, column: 29, scope: !1045)
!1237 = !DILocation(line: 295, column: 14, scope: !1041)
!1238 = !DILocation(line: 295, column: 24, scope: !1041)
!1239 = !DILocation(line: 176, column: 28, scope: !1240)
!1240 = !DILexicalBlockFile(scope: !1042, file: !551, discriminator: 1)
!1241 = !DILocation(line: 176, column: 3, scope: !1240)
!1242 = distinct !{!1242, !1243, !1244}
!1243 = !DILocation(line: 176, column: 3, scope: !1043)
!1244 = !DILocation(line: 299, column: 5, scope: !1043)
!1245 = !DILocation(line: 303, column: 16, scope: !1246)
!1246 = distinct !DILexicalBlock(scope: !1247, file: !551, line: 302, column: 5)
!1247 = distinct !DILexicalBlock(scope: !1017, file: !551, line: 301, column: 7)
!1248 = !DILocation(line: 303, column: 21, scope: !1246)
!1249 = !DILocation(line: 304, column: 7, scope: !1246)
!1250 = !DILocation(line: 308, column: 3, scope: !1017)
!1251 = !DILocation(line: 309, column: 3, scope: !1017)
!1252 = !DILocation(line: 310, column: 1, scope: !1017)
!1253 = distinct !DISubprogram(name: "mode_create_from_ref", scope: !551, file: !551, line: 316, type: !1018, isLocal: false, isDefinition: true, scopeLine: 317, flags: DIFlagPrototyped, isOptimized: true, unit: !547, variables: !1254)
!1254 = !{!1255, !1256}
!1255 = !DILocalVariable(name: "ref_file", arg: 1, scope: !1253, file: !551, line: 316, type: !44)
!1256 = !DILocalVariable(name: "ref_stats", scope: !1253, file: !551, line: 318, type: !1257)
!1257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !1258, line: 46, size: 1152, elements: !1259)
!1258 = !DIFile(filename: "/usr/include/bits/stat.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1259 = !{!1260, !1261, !1263, !1265, !1266, !1268, !1270, !1271, !1272, !1275, !1277, !1279, !1287, !1288, !1289}
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !1257, file: !1258, line: 48, baseType: !34, size: 64)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !1257, file: !1258, line: 53, baseType: !1262, size: 64, offset: 64)
!1262 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !35, line: 136, baseType: !36)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !1257, file: !1258, line: 61, baseType: !1264, size: 64, offset: 128)
!1264 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !35, line: 139, baseType: !36)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !1257, file: !1258, line: 62, baseType: !689, size: 32, offset: 192)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !1257, file: !1258, line: 64, baseType: !1267, size: 32, offset: 224)
!1267 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !35, line: 134, baseType: !31)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !1257, file: !1258, line: 65, baseType: !1269, size: 32, offset: 256)
!1269 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !35, line: 135, baseType: !31)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !1257, file: !1258, line: 67, baseType: !74, size: 32, offset: 288)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !1257, file: !1258, line: 69, baseType: !34, size: 64, offset: 320)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1257, file: !1258, line: 74, baseType: !1273, size: 64, offset: 384)
!1273 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !35, line: 140, baseType: !1274)
!1274 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !1257, file: !1258, line: 78, baseType: !1276, size: 64, offset: 448)
!1276 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !35, line: 162, baseType: !1274)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !1257, file: !1258, line: 80, baseType: !1278, size: 64, offset: 512)
!1278 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !35, line: 167, baseType: !1274)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !1257, file: !1258, line: 91, baseType: !1280, size: 128, offset: 576)
!1280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !1281, line: 8, size: 128, elements: !1282)
!1281 = !DIFile(filename: "/usr/include/bits/types/struct_timespec.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1282 = !{!1283, !1285}
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1280, file: !1281, line: 10, baseType: !1284, size: 64)
!1284 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !35, line: 148, baseType: !1274)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1280, file: !1281, line: 11, baseType: !1286, size: 64, offset: 64)
!1286 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !35, line: 184, baseType: !1274)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !1257, file: !1258, line: 92, baseType: !1280, size: 128, offset: 704)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !1257, file: !1258, line: 93, baseType: !1280, size: 128, offset: 832)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !1257, file: !1258, line: 106, baseType: !1290, size: 192, offset: 960)
!1290 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1286, size: 192, elements: !1291)
!1291 = !{!1292}
!1292 = !DISubrange(count: 3)
!1293 = !DILocation(line: 316, column: 35, scope: !1253)
!1294 = !DILocation(line: 318, column: 3, scope: !1253)
!1295 = !DILocation(line: 318, column: 15, scope: !1253)
!1296 = !DILocalVariable(name: "__path", arg: 1, scope: !1297, file: !907, line: 449, type: !44)
!1297 = distinct !DISubprogram(name: "stat", scope: !907, file: !907, line: 449, type: !1298, isLocal: false, isDefinition: true, scopeLine: 450, flags: DIFlagPrototyped, isOptimized: true, unit: !547, variables: !1301)
!1298 = !DISubroutineType(types: !1299)
!1299 = !{!74, !44, !1300}
!1300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1257, size: 64)
!1301 = !{!1296, !1302}
!1302 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !1297, file: !907, line: 449, type: !1300)
!1303 = !DILocation(line: 449, column: 1, scope: !1297, inlinedAt: !1304)
!1304 = distinct !DILocation(line: 320, column: 7, scope: !1305)
!1305 = distinct !DILexicalBlock(scope: !1253, file: !551, line: 320, column: 7)
!1306 = !DILocation(line: 451, column: 10, scope: !1297, inlinedAt: !1304)
!1307 = !DILocation(line: 320, column: 35, scope: !1305)
!1308 = !DILocation(line: 320, column: 7, scope: !1253)
!1309 = !DILocation(line: 322, column: 41, scope: !1253)
!1310 = !{!1311, !777, i64 24}
!1311 = !{!"stat", !860, i64 0, !860, i64 8, !860, i64 16, !777, i64 24, !777, i64 28, !777, i64 32, !777, i64 36, !860, i64 40, !860, i64 48, !860, i64 56, !860, i64 64, !1312, i64 72, !1312, i64 88, !1312, i64 104, !624, i64 120}
!1312 = !{!"timespec", !860, i64 0, !860, i64 8}
!1313 = !DILocation(line: 112, column: 29, scope: !1085, inlinedAt: !1314)
!1314 = distinct !DILocation(line: 322, column: 10, scope: !1253)
!1315 = !DILocation(line: 112, column: 46, scope: !1085, inlinedAt: !1314)
!1316 = !DILocation(line: 114, column: 27, scope: !1085, inlinedAt: !1314)
!1317 = !DILocation(line: 114, column: 23, scope: !1085, inlinedAt: !1314)
!1318 = !DILocation(line: 115, column: 9, scope: !1085, inlinedAt: !1314)
!1319 = !DILocation(line: 116, column: 6, scope: !1085, inlinedAt: !1314)
!1320 = !DILocation(line: 116, column: 11, scope: !1085, inlinedAt: !1314)
!1321 = !DILocation(line: 117, column: 6, scope: !1085, inlinedAt: !1314)
!1322 = !DILocation(line: 117, column: 15, scope: !1085, inlinedAt: !1314)
!1323 = !DILocation(line: 118, column: 6, scope: !1085, inlinedAt: !1314)
!1324 = !DILocation(line: 118, column: 12, scope: !1085, inlinedAt: !1314)
!1325 = !DILocation(line: 119, column: 6, scope: !1085, inlinedAt: !1314)
!1326 = !DILocation(line: 119, column: 16, scope: !1085, inlinedAt: !1314)
!1327 = !DILocation(line: 120, column: 8, scope: !1085, inlinedAt: !1314)
!1328 = !DILocation(line: 120, column: 13, scope: !1085, inlinedAt: !1314)
!1329 = !DILocation(line: 322, column: 3, scope: !1253)
!1330 = !DILocation(line: 323, column: 1, scope: !1253)
!1331 = distinct !DISubprogram(name: "mode_adjust", scope: !551, file: !551, line: 339, type: !1332, isLocal: false, isDefinition: true, scopeLine: 341, flags: DIFlagPrototyped, isOptimized: true, unit: !547, variables: !1337)
!1332 = !DISubroutineType(types: !1333)
!1333 = !{!688, !688, !104, !688, !1334, !1336}
!1334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1335, size: 64)
!1335 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1021)
!1336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !688, size: 64)
!1337 = !{!1338, !1339, !1340, !1341, !1342, !1343, !1344, !1345, !1349, !1350, !1351}
!1338 = !DILocalVariable(name: "oldmode", arg: 1, scope: !1331, file: !551, line: 339, type: !688)
!1339 = !DILocalVariable(name: "dir", arg: 2, scope: !1331, file: !551, line: 339, type: !104)
!1340 = !DILocalVariable(name: "umask_value", arg: 3, scope: !1331, file: !551, line: 339, type: !688)
!1341 = !DILocalVariable(name: "changes", arg: 4, scope: !1331, file: !551, line: 340, type: !1334)
!1342 = !DILocalVariable(name: "pmode_bits", arg: 5, scope: !1331, file: !551, line: 340, type: !1336)
!1343 = !DILocalVariable(name: "newmode", scope: !1331, file: !551, line: 343, type: !688)
!1344 = !DILocalVariable(name: "mode_bits", scope: !1331, file: !551, line: 346, type: !688)
!1345 = !DILocalVariable(name: "affected", scope: !1346, file: !551, line: 350, type: !688)
!1346 = distinct !DILexicalBlock(scope: !1347, file: !551, line: 349, column: 5)
!1347 = distinct !DILexicalBlock(scope: !1348, file: !551, line: 348, column: 3)
!1348 = distinct !DILexicalBlock(scope: !1331, file: !551, line: 348, column: 3)
!1349 = !DILocalVariable(name: "omit_change", scope: !1346, file: !551, line: 351, type: !688)
!1350 = !DILocalVariable(name: "value", scope: !1346, file: !551, line: 353, type: !688)
!1351 = !DILocalVariable(name: "preserved", scope: !1352, file: !551, line: 393, type: !688)
!1352 = distinct !DILexicalBlock(scope: !1353, file: !551, line: 392, column: 11)
!1353 = distinct !DILexicalBlock(scope: !1346, file: !551, line: 387, column: 9)
!1354 = !DILocation(line: 339, column: 21, scope: !1331)
!1355 = !DILocation(line: 339, column: 35, scope: !1331)
!1356 = !DILocation(line: 339, column: 47, scope: !1331)
!1357 = !DILocation(line: 340, column: 40, scope: !1331)
!1358 = !DILocation(line: 340, column: 57, scope: !1331)
!1359 = !DILocation(line: 343, column: 28, scope: !1331)
!1360 = !DILocation(line: 343, column: 10, scope: !1331)
!1361 = !DILocation(line: 346, column: 10, scope: !1331)
!1362 = !DILocation(line: 348, column: 19, scope: !1363)
!1363 = !DILexicalBlockFile(scope: !1347, file: !551, discriminator: 1)
!1364 = !DILocation(line: 348, column: 24, scope: !1363)
!1365 = !DILocation(line: 348, column: 3, scope: !1366)
!1366 = !DILexicalBlockFile(scope: !1348, file: !551, discriminator: 1)
!1367 = !DILocation(line: 348, column: 10, scope: !1363)
!1368 = !DILocation(line: 350, column: 34, scope: !1346)
!1369 = !DILocation(line: 350, column: 14, scope: !1346)
!1370 = !DILocation(line: 352, column: 52, scope: !1346)
!1371 = !DILocation(line: 352, column: 41, scope: !1346)
!1372 = !DILocation(line: 352, column: 39, scope: !1346)
!1373 = !DILocation(line: 351, column: 14, scope: !1346)
!1374 = !DILocation(line: 353, column: 31, scope: !1346)
!1375 = !DILocation(line: 353, column: 14, scope: !1346)
!1376 = !DILocation(line: 355, column: 7, scope: !1346)
!1377 = !DILocation(line: 362, column: 17, scope: !1378)
!1378 = distinct !DILexicalBlock(scope: !1346, file: !551, line: 356, column: 9)
!1379 = !DILocation(line: 365, column: 28, scope: !1378)
!1380 = !DILocation(line: 365, column: 22, scope: !1378)
!1381 = !DILocation(line: 367, column: 30, scope: !1378)
!1382 = !DILocation(line: 367, column: 24, scope: !1378)
!1383 = !DILocation(line: 369, column: 30, scope: !1378)
!1384 = !DILocation(line: 369, column: 24, scope: !1378)
!1385 = !DILocation(line: 367, column: 21, scope: !1378)
!1386 = !DILocation(line: 369, column: 21, scope: !1378)
!1387 = !DILocation(line: 365, column: 17, scope: !1378)
!1388 = !DILocation(line: 371, column: 11, scope: !1378)
!1389 = !DILocation(line: 376, column: 24, scope: !1390)
!1390 = distinct !DILexicalBlock(scope: !1378, file: !551, line: 376, column: 15)
!1391 = !DILocation(line: 376, column: 57, scope: !1390)
!1392 = !DILocation(line: 377, column: 19, scope: !1390)
!1393 = !DILocation(line: 376, column: 15, scope: !1378)
!1394 = !DILocation(line: 384, column: 17, scope: !1346)
!1395 = !DILocation(line: 384, column: 55, scope: !1396)
!1396 = !DILexicalBlockFile(scope: !1346, file: !551, discriminator: 3)
!1397 = !DILocation(line: 384, column: 53, scope: !1396)
!1398 = !DILocation(line: 384, column: 13, scope: !1396)
!1399 = !DILocation(line: 386, column: 24, scope: !1346)
!1400 = !DILocation(line: 386, column: 15, scope: !1346)
!1401 = !DILocation(line: 386, column: 7, scope: !1346)
!1402 = !DILocation(line: 393, column: 44, scope: !1403)
!1403 = !DILexicalBlockFile(scope: !1352, file: !551, discriminator: 1)
!1404 = !DILocation(line: 393, column: 33, scope: !1352)
!1405 = !DILocation(line: 393, column: 59, scope: !1406)
!1406 = !DILexicalBlockFile(scope: !1352, file: !551, discriminator: 3)
!1407 = !DILocation(line: 393, column: 20, scope: !1352)
!1408 = !DILocation(line: 394, column: 42, scope: !1352)
!1409 = !DILocation(line: 394, column: 23, scope: !1352)
!1410 = !DILocation(line: 395, column: 32, scope: !1352)
!1411 = !DILocation(line: 395, column: 45, scope: !1352)
!1412 = !DILocation(line: 400, column: 21, scope: !1353)
!1413 = !DILocation(line: 401, column: 19, scope: !1353)
!1414 = !DILocation(line: 402, column: 11, scope: !1353)
!1415 = !DILocation(line: 405, column: 21, scope: !1353)
!1416 = !DILocation(line: 406, column: 22, scope: !1353)
!1417 = !DILocation(line: 406, column: 19, scope: !1353)
!1418 = !DILocation(line: 407, column: 11, scope: !1353)
!1419 = !DILocation(line: 348, column: 45, scope: !1420)
!1420 = !DILexicalBlockFile(scope: !1347, file: !551, discriminator: 2)
!1421 = distinct !{!1421, !1422, !1423}
!1422 = !DILocation(line: 348, column: 3, scope: !1348)
!1423 = !DILocation(line: 409, column: 5, scope: !1348)
!1424 = !DILocation(line: 411, column: 7, scope: !1425)
!1425 = distinct !DILexicalBlock(scope: !1331, file: !551, line: 411, column: 7)
!1426 = !DILocation(line: 411, column: 7, scope: !1331)
!1427 = !DILocation(line: 412, column: 17, scope: !1425)
!1428 = !DILocation(line: 412, column: 5, scope: !1425)
!1429 = !DILocation(line: 413, column: 3, scope: !1331)
!1430 = distinct !DISubprogram(name: "set_program_name", scope: !118, file: !118, line: 39, type: !51, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !114, variables: !1431)
!1431 = !{!1432, !1433, !1434}
!1432 = !DILocalVariable(name: "argv0", arg: 1, scope: !1430, file: !118, line: 39, type: !44)
!1433 = !DILocalVariable(name: "slash", scope: !1430, file: !118, line: 46, type: !44)
!1434 = !DILocalVariable(name: "base", scope: !1430, file: !118, line: 47, type: !44)
!1435 = !DILocation(line: 39, column: 31, scope: !1430)
!1436 = !DILocation(line: 51, column: 13, scope: !1437)
!1437 = distinct !DILexicalBlock(scope: !1430, file: !118, line: 51, column: 7)
!1438 = !DILocation(line: 51, column: 7, scope: !1430)
!1439 = !DILocation(line: 55, column: 14, scope: !1440)
!1440 = distinct !DILexicalBlock(scope: !1437, file: !118, line: 52, column: 5)
!1441 = !DILocation(line: 54, column: 7, scope: !1440)
!1442 = !DILocation(line: 56, column: 7, scope: !1440)
!1443 = !DILocation(line: 59, column: 11, scope: !1430)
!1444 = !DILocation(line: 46, column: 15, scope: !1430)
!1445 = !DILocation(line: 60, column: 17, scope: !1430)
!1446 = !DILocation(line: 60, column: 33, scope: !1447)
!1447 = !DILexicalBlockFile(scope: !1430, file: !118, discriminator: 1)
!1448 = !DILocation(line: 60, column: 11, scope: !1430)
!1449 = !DILocation(line: 47, column: 15, scope: !1430)
!1450 = !DILocation(line: 61, column: 12, scope: !1451)
!1451 = distinct !DILexicalBlock(scope: !1430, file: !118, line: 61, column: 7)
!1452 = !DILocation(line: 61, column: 20, scope: !1451)
!1453 = !DILocation(line: 61, column: 25, scope: !1451)
!1454 = !DILocation(line: 61, column: 28, scope: !1455)
!1455 = !DILexicalBlockFile(scope: !1451, file: !118, discriminator: 1)
!1456 = !DILocation(line: 61, column: 61, scope: !1455)
!1457 = !DILocation(line: 61, column: 7, scope: !1447)
!1458 = !DILocation(line: 64, column: 11, scope: !1459)
!1459 = distinct !DILexicalBlock(scope: !1460, file: !118, line: 64, column: 11)
!1460 = distinct !DILexicalBlock(scope: !1451, file: !118, line: 62, column: 5)
!1461 = !DILocation(line: 64, column: 36, scope: !1459)
!1462 = !DILocation(line: 64, column: 11, scope: !1460)
!1463 = !DILocation(line: 66, column: 24, scope: !1464)
!1464 = distinct !DILexicalBlock(scope: !1459, file: !118, line: 65, column: 9)
!1465 = !DILocation(line: 70, column: 41, scope: !1464)
!1466 = !DILocation(line: 72, column: 9, scope: !1464)
!1467 = !DILocation(line: 84, column: 16, scope: !1430)
!1468 = !DILocation(line: 90, column: 27, scope: !1430)
!1469 = !DILocation(line: 92, column: 1, scope: !1430)
!1470 = distinct !DISubprogram(name: "clone_quoting_options", scope: !149, file: !149, line: 114, type: !1471, isLocal: false, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, unit: !121, variables: !1474)
!1471 = !DISubroutineType(types: !1472)
!1472 = !{!1473, !1473}
!1473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !156, size: 64)
!1474 = !{!1475, !1476, !1477}
!1475 = !DILocalVariable(name: "o", arg: 1, scope: !1470, file: !149, line: 114, type: !1473)
!1476 = !DILocalVariable(name: "e", scope: !1470, file: !149, line: 116, type: !74)
!1477 = !DILocalVariable(name: "p", scope: !1470, file: !149, line: 117, type: !1473)
!1478 = !DILocation(line: 114, column: 48, scope: !1470)
!1479 = !DILocation(line: 116, column: 11, scope: !1470)
!1480 = !DILocation(line: 116, column: 7, scope: !1470)
!1481 = !DILocation(line: 117, column: 40, scope: !1470)
!1482 = !DILocation(line: 117, column: 40, scope: !1483)
!1483 = !DILexicalBlockFile(scope: !1470, file: !149, discriminator: 3)
!1484 = !DILocation(line: 117, column: 31, scope: !1483)
!1485 = !DILocation(line: 117, column: 27, scope: !1470)
!1486 = !DILocation(line: 119, column: 9, scope: !1470)
!1487 = !DILocation(line: 120, column: 3, scope: !1470)
!1488 = distinct !DISubprogram(name: "get_quoting_style", scope: !149, file: !149, line: 125, type: !1489, isLocal: false, isDefinition: true, scopeLine: 126, flags: DIFlagPrototyped, isOptimized: true, unit: !121, variables: !1493)
!1489 = !DISubroutineType(types: !1490)
!1490 = !{!13, !1491}
!1491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1492, size: 64)
!1492 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !156)
!1493 = !{!1494}
!1494 = !DILocalVariable(name: "o", arg: 1, scope: !1488, file: !149, line: 125, type: !1491)
!1495 = !DILocation(line: 125, column: 50, scope: !1488)
!1496 = !DILocation(line: 127, column: 11, scope: !1488)
!1497 = !DILocation(line: 127, column: 46, scope: !1498)
!1498 = !DILexicalBlockFile(scope: !1488, file: !149, discriminator: 3)
!1499 = !{!1500, !624, i64 0}
!1500 = !{!"quoting_options", !624, i64 0, !777, i64 4, !624, i64 8, !623, i64 40, !623, i64 48}
!1501 = !DILocation(line: 127, column: 3, scope: !1498)
!1502 = distinct !DISubprogram(name: "set_quoting_style", scope: !149, file: !149, line: 133, type: !1503, isLocal: false, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: true, unit: !121, variables: !1505)
!1503 = !DISubroutineType(types: !1504)
!1504 = !{null, !1473, !13}
!1505 = !{!1506, !1507}
!1506 = !DILocalVariable(name: "o", arg: 1, scope: !1502, file: !149, line: 133, type: !1473)
!1507 = !DILocalVariable(name: "s", arg: 2, scope: !1502, file: !149, line: 133, type: !13)
!1508 = !DILocation(line: 133, column: 44, scope: !1502)
!1509 = !DILocation(line: 133, column: 66, scope: !1502)
!1510 = !DILocation(line: 135, column: 4, scope: !1502)
!1511 = !DILocation(line: 135, column: 39, scope: !1512)
!1512 = !DILexicalBlockFile(scope: !1502, file: !149, discriminator: 3)
!1513 = !DILocation(line: 135, column: 45, scope: !1512)
!1514 = !DILocation(line: 136, column: 1, scope: !1502)
!1515 = distinct !DISubprogram(name: "set_char_quoting", scope: !149, file: !149, line: 144, type: !1516, isLocal: false, isDefinition: true, scopeLine: 145, flags: DIFlagPrototyped, isOptimized: true, unit: !121, variables: !1518)
!1516 = !DISubroutineType(types: !1517)
!1517 = !{!74, !1473, !29, !74}
!1518 = !{!1519, !1520, !1521, !1522, !1523, !1525, !1526}
!1519 = !DILocalVariable(name: "o", arg: 1, scope: !1515, file: !149, line: 144, type: !1473)
!1520 = !DILocalVariable(name: "c", arg: 2, scope: !1515, file: !149, line: 144, type: !29)
!1521 = !DILocalVariable(name: "i", arg: 3, scope: !1515, file: !149, line: 144, type: !74)
!1522 = !DILocalVariable(name: "uc", scope: !1515, file: !149, line: 146, type: !43)
!1523 = !DILocalVariable(name: "p", scope: !1515, file: !149, line: 147, type: !1524)
!1524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!1525 = !DILocalVariable(name: "shift", scope: !1515, file: !149, line: 149, type: !74)
!1526 = !DILocalVariable(name: "r", scope: !1515, file: !149, line: 150, type: !74)
!1527 = !DILocation(line: 144, column: 43, scope: !1515)
!1528 = !DILocation(line: 144, column: 51, scope: !1515)
!1529 = !DILocation(line: 144, column: 58, scope: !1515)
!1530 = !DILocation(line: 146, column: 17, scope: !1515)
!1531 = !DILocation(line: 148, column: 6, scope: !1515)
!1532 = !DILocation(line: 148, column: 62, scope: !1533)
!1533 = !DILexicalBlockFile(scope: !1515, file: !149, discriminator: 3)
!1534 = !DILocation(line: 148, column: 57, scope: !1533)
!1535 = !DILocation(line: 147, column: 17, scope: !1515)
!1536 = !DILocation(line: 149, column: 18, scope: !1515)
!1537 = !DILocation(line: 149, column: 15, scope: !1515)
!1538 = !DILocation(line: 149, column: 7, scope: !1515)
!1539 = !DILocation(line: 150, column: 12, scope: !1515)
!1540 = !DILocation(line: 150, column: 15, scope: !1515)
!1541 = !DILocation(line: 150, column: 25, scope: !1515)
!1542 = !DILocation(line: 150, column: 7, scope: !1515)
!1543 = !DILocation(line: 151, column: 13, scope: !1515)
!1544 = !DILocation(line: 151, column: 18, scope: !1515)
!1545 = !DILocation(line: 151, column: 23, scope: !1515)
!1546 = !DILocation(line: 151, column: 6, scope: !1515)
!1547 = !DILocation(line: 152, column: 3, scope: !1515)
!1548 = distinct !DISubprogram(name: "set_quoting_flags", scope: !149, file: !149, line: 160, type: !1549, isLocal: false, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !121, variables: !1551)
!1549 = !DISubroutineType(types: !1550)
!1550 = !{!74, !1473, !74}
!1551 = !{!1552, !1553, !1554}
!1552 = !DILocalVariable(name: "o", arg: 1, scope: !1548, file: !149, line: 160, type: !1473)
!1553 = !DILocalVariable(name: "i", arg: 2, scope: !1548, file: !149, line: 160, type: !74)
!1554 = !DILocalVariable(name: "r", scope: !1548, file: !149, line: 162, type: !74)
!1555 = !DILocation(line: 160, column: 44, scope: !1548)
!1556 = !DILocation(line: 160, column: 51, scope: !1548)
!1557 = !DILocation(line: 163, column: 8, scope: !1558)
!1558 = distinct !DILexicalBlock(scope: !1548, file: !149, line: 163, column: 7)
!1559 = !DILocation(line: 163, column: 7, scope: !1548)
!1560 = !DILocation(line: 165, column: 10, scope: !1548)
!1561 = !{!1500, !777, i64 4}
!1562 = !DILocation(line: 162, column: 7, scope: !1548)
!1563 = !DILocation(line: 166, column: 12, scope: !1548)
!1564 = !DILocation(line: 167, column: 3, scope: !1548)
!1565 = distinct !DISubprogram(name: "set_custom_quoting", scope: !149, file: !149, line: 171, type: !1566, isLocal: false, isDefinition: true, scopeLine: 173, flags: DIFlagPrototyped, isOptimized: true, unit: !121, variables: !1568)
!1566 = !DISubroutineType(types: !1567)
!1567 = !{null, !1473, !44, !44}
!1568 = !{!1569, !1570, !1571}
!1569 = !DILocalVariable(name: "o", arg: 1, scope: !1565, file: !149, line: 171, type: !1473)
!1570 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1565, file: !149, line: 172, type: !44)
!1571 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1565, file: !149, line: 172, type: !44)
!1572 = !DILocation(line: 171, column: 45, scope: !1565)
!1573 = !DILocation(line: 172, column: 33, scope: !1565)
!1574 = !DILocation(line: 172, column: 57, scope: !1565)
!1575 = !DILocation(line: 174, column: 8, scope: !1576)
!1576 = distinct !DILexicalBlock(scope: !1565, file: !149, line: 174, column: 7)
!1577 = !DILocation(line: 174, column: 7, scope: !1565)
!1578 = !DILocation(line: 176, column: 6, scope: !1565)
!1579 = !DILocation(line: 176, column: 12, scope: !1565)
!1580 = !DILocation(line: 177, column: 8, scope: !1581)
!1581 = distinct !DILexicalBlock(scope: !1565, file: !149, line: 177, column: 7)
!1582 = !DILocation(line: 177, column: 23, scope: !1583)
!1583 = !DILexicalBlockFile(scope: !1581, file: !149, discriminator: 1)
!1584 = !DILocation(line: 177, column: 19, scope: !1581)
!1585 = !DILocation(line: 178, column: 5, scope: !1581)
!1586 = !DILocation(line: 179, column: 6, scope: !1565)
!1587 = !DILocation(line: 179, column: 17, scope: !1565)
!1588 = !{!1500, !623, i64 40}
!1589 = !DILocation(line: 180, column: 6, scope: !1565)
!1590 = !DILocation(line: 180, column: 18, scope: !1565)
!1591 = !{!1500, !623, i64 48}
!1592 = !DILocation(line: 181, column: 1, scope: !1565)
!1593 = distinct !DISubprogram(name: "quotearg_buffer", scope: !149, file: !149, line: 776, type: !1594, isLocal: false, isDefinition: true, scopeLine: 779, flags: DIFlagPrototyped, isOptimized: true, unit: !121, variables: !1596)
!1594 = !DISubroutineType(types: !1595)
!1595 = !{!37, !28, !37, !44, !37, !1491}
!1596 = !{!1597, !1598, !1599, !1600, !1601, !1602, !1603, !1604}
!1597 = !DILocalVariable(name: "buffer", arg: 1, scope: !1593, file: !149, line: 776, type: !28)
!1598 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1593, file: !149, line: 776, type: !37)
!1599 = !DILocalVariable(name: "arg", arg: 3, scope: !1593, file: !149, line: 777, type: !44)
!1600 = !DILocalVariable(name: "argsize", arg: 4, scope: !1593, file: !149, line: 777, type: !37)
!1601 = !DILocalVariable(name: "o", arg: 5, scope: !1593, file: !149, line: 778, type: !1491)
!1602 = !DILocalVariable(name: "p", scope: !1593, file: !149, line: 780, type: !1491)
!1603 = !DILocalVariable(name: "e", scope: !1593, file: !149, line: 781, type: !74)
!1604 = !DILocalVariable(name: "r", scope: !1593, file: !149, line: 782, type: !37)
!1605 = !DILocation(line: 776, column: 24, scope: !1593)
!1606 = !DILocation(line: 776, column: 39, scope: !1593)
!1607 = !DILocation(line: 777, column: 30, scope: !1593)
!1608 = !DILocation(line: 777, column: 42, scope: !1593)
!1609 = !DILocation(line: 778, column: 48, scope: !1593)
!1610 = !DILocation(line: 780, column: 37, scope: !1593)
!1611 = !DILocation(line: 780, column: 33, scope: !1593)
!1612 = !DILocation(line: 781, column: 11, scope: !1593)
!1613 = !DILocation(line: 781, column: 7, scope: !1593)
!1614 = !DILocation(line: 783, column: 43, scope: !1593)
!1615 = !DILocation(line: 783, column: 53, scope: !1593)
!1616 = !DILocation(line: 783, column: 60, scope: !1593)
!1617 = !DILocation(line: 784, column: 43, scope: !1593)
!1618 = !DILocation(line: 784, column: 58, scope: !1593)
!1619 = !DILocation(line: 782, column: 14, scope: !1593)
!1620 = !DILocation(line: 782, column: 10, scope: !1593)
!1621 = !DILocation(line: 785, column: 9, scope: !1593)
!1622 = !DILocation(line: 786, column: 3, scope: !1593)
!1623 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !149, file: !149, line: 248, type: !1624, isLocal: true, isDefinition: true, scopeLine: 254, flags: DIFlagPrototyped, isOptimized: true, unit: !121, variables: !1628)
!1624 = !DISubroutineType(types: !1625)
!1625 = !{!37, !28, !37, !44, !37, !13, !74, !1626, !44, !44}
!1626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1627, size: 64)
!1627 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !31)
!1628 = !{!1629, !1630, !1631, !1632, !1633, !1634, !1635, !1636, !1637, !1638, !1639, !1640, !1641, !1642, !1643, !1644, !1645, !1646, !1647, !1648, !1649, !1653, !1654, !1655, !1656, !1657, !1660, !1661, !1678, !1681, !1682, !1689}
!1629 = !DILocalVariable(name: "buffer", arg: 1, scope: !1623, file: !149, line: 248, type: !28)
!1630 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1623, file: !149, line: 248, type: !37)
!1631 = !DILocalVariable(name: "arg", arg: 3, scope: !1623, file: !149, line: 249, type: !44)
!1632 = !DILocalVariable(name: "argsize", arg: 4, scope: !1623, file: !149, line: 249, type: !37)
!1633 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1623, file: !149, line: 250, type: !13)
!1634 = !DILocalVariable(name: "flags", arg: 6, scope: !1623, file: !149, line: 250, type: !74)
!1635 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1623, file: !149, line: 251, type: !1626)
!1636 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1623, file: !149, line: 252, type: !44)
!1637 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1623, file: !149, line: 253, type: !44)
!1638 = !DILocalVariable(name: "i", scope: !1623, file: !149, line: 255, type: !37)
!1639 = !DILocalVariable(name: "len", scope: !1623, file: !149, line: 256, type: !37)
!1640 = !DILocalVariable(name: "orig_buffersize", scope: !1623, file: !149, line: 257, type: !37)
!1641 = !DILocalVariable(name: "quote_string", scope: !1623, file: !149, line: 258, type: !44)
!1642 = !DILocalVariable(name: "quote_string_len", scope: !1623, file: !149, line: 259, type: !37)
!1643 = !DILocalVariable(name: "backslash_escapes", scope: !1623, file: !149, line: 260, type: !104)
!1644 = !DILocalVariable(name: "unibyte_locale", scope: !1623, file: !149, line: 261, type: !104)
!1645 = !DILocalVariable(name: "elide_outer_quotes", scope: !1623, file: !149, line: 262, type: !104)
!1646 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1623, file: !149, line: 263, type: !104)
!1647 = !DILocalVariable(name: "encountered_single_quote", scope: !1623, file: !149, line: 264, type: !104)
!1648 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1623, file: !149, line: 265, type: !104)
!1649 = !DILocalVariable(name: "c", scope: !1650, file: !149, line: 394, type: !43)
!1650 = distinct !DILexicalBlock(scope: !1651, file: !149, line: 393, column: 5)
!1651 = distinct !DILexicalBlock(scope: !1652, file: !149, line: 392, column: 3)
!1652 = distinct !DILexicalBlock(scope: !1623, file: !149, line: 392, column: 3)
!1653 = !DILocalVariable(name: "esc", scope: !1650, file: !149, line: 395, type: !43)
!1654 = !DILocalVariable(name: "is_right_quote", scope: !1650, file: !149, line: 396, type: !104)
!1655 = !DILocalVariable(name: "escaping", scope: !1650, file: !149, line: 397, type: !104)
!1656 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1650, file: !149, line: 398, type: !104)
!1657 = !DILocalVariable(name: "m", scope: !1658, file: !149, line: 602, type: !37)
!1658 = distinct !DILexicalBlock(scope: !1659, file: !149, line: 600, column: 11)
!1659 = distinct !DILexicalBlock(scope: !1650, file: !149, line: 418, column: 9)
!1660 = !DILocalVariable(name: "printable", scope: !1658, file: !149, line: 604, type: !104)
!1661 = !DILocalVariable(name: "mbstate", scope: !1662, file: !149, line: 613, type: !1664)
!1662 = distinct !DILexicalBlock(scope: !1663, file: !149, line: 612, column: 15)
!1663 = distinct !DILexicalBlock(scope: !1658, file: !149, line: 606, column: 17)
!1664 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1665, line: 107, baseType: !1666)
!1665 = !DIFile(filename: "/usr/include/wchar.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1666 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1665, line: 95, baseType: !1667)
!1667 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1665, line: 83, size: 64, elements: !1668)
!1668 = !{!1669, !1670}
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1667, file: !1665, line: 85, baseType: !74, size: 32)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1667, file: !1665, line: 94, baseType: !1671, size: 32, offset: 32)
!1671 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1667, file: !1665, line: 86, size: 32, elements: !1672)
!1672 = !{!1673, !1674}
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1671, file: !1665, line: 89, baseType: !31, size: 32)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1671, file: !1665, line: 93, baseType: !1675, size: 32)
!1675 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 32, elements: !1676)
!1676 = !{!1677}
!1677 = !DISubrange(count: 4)
!1678 = !DILocalVariable(name: "w", scope: !1679, file: !149, line: 623, type: !1680)
!1679 = distinct !DILexicalBlock(scope: !1662, file: !149, line: 622, column: 19)
!1680 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !38, line: 90, baseType: !74)
!1681 = !DILocalVariable(name: "bytes", scope: !1679, file: !149, line: 624, type: !37)
!1682 = !DILocalVariable(name: "j", scope: !1683, file: !149, line: 649, type: !37)
!1683 = distinct !DILexicalBlock(scope: !1684, file: !149, line: 648, column: 27)
!1684 = distinct !DILexicalBlock(scope: !1685, file: !149, line: 646, column: 29)
!1685 = distinct !DILexicalBlock(scope: !1686, file: !149, line: 641, column: 23)
!1686 = distinct !DILexicalBlock(scope: !1687, file: !149, line: 633, column: 30)
!1687 = distinct !DILexicalBlock(scope: !1688, file: !149, line: 628, column: 30)
!1688 = distinct !DILexicalBlock(scope: !1679, file: !149, line: 626, column: 25)
!1689 = !DILocalVariable(name: "ilim", scope: !1690, file: !149, line: 676, type: !37)
!1690 = distinct !DILexicalBlock(scope: !1691, file: !149, line: 673, column: 15)
!1691 = distinct !DILexicalBlock(scope: !1658, file: !149, line: 672, column: 17)
!1692 = !DILocation(line: 248, column: 33, scope: !1623)
!1693 = !DILocation(line: 248, column: 48, scope: !1623)
!1694 = !DILocation(line: 249, column: 39, scope: !1623)
!1695 = !DILocation(line: 249, column: 51, scope: !1623)
!1696 = !DILocation(line: 250, column: 46, scope: !1623)
!1697 = !DILocation(line: 250, column: 65, scope: !1623)
!1698 = !DILocation(line: 251, column: 47, scope: !1623)
!1699 = !DILocation(line: 252, column: 39, scope: !1623)
!1700 = !DILocation(line: 253, column: 39, scope: !1623)
!1701 = !DILocation(line: 256, column: 10, scope: !1623)
!1702 = !DILocation(line: 257, column: 10, scope: !1623)
!1703 = !DILocation(line: 258, column: 15, scope: !1623)
!1704 = !DILocation(line: 259, column: 10, scope: !1623)
!1705 = !DILocation(line: 260, column: 8, scope: !1623)
!1706 = !DILocation(line: 261, column: 25, scope: !1623)
!1707 = !DILocation(line: 261, column: 36, scope: !1623)
!1708 = !DILocation(line: 262, column: 8, scope: !1623)
!1709 = !DILocation(line: 263, column: 8, scope: !1623)
!1710 = !DILocation(line: 264, column: 8, scope: !1623)
!1711 = !DILocation(line: 265, column: 8, scope: !1623)
!1712 = !DILocation(line: 265, column: 3, scope: !1623)
!1713 = !DILocation(line: 308, column: 3, scope: !1623)
!1714 = !DILocation(line: 315, column: 11, scope: !1715)
!1715 = distinct !DILexicalBlock(scope: !1623, file: !149, line: 309, column: 5)
!1716 = !DILocation(line: 315, column: 12, scope: !1717)
!1717 = distinct !DILexicalBlock(scope: !1715, file: !149, line: 315, column: 11)
!1718 = !DILocation(line: 316, column: 9, scope: !1719)
!1719 = !DILexicalBlockFile(scope: !1720, file: !149, discriminator: 1)
!1720 = distinct !DILexicalBlock(scope: !1721, file: !149, line: 316, column: 9)
!1721 = distinct !DILexicalBlock(scope: !1717, file: !149, line: 316, column: 9)
!1722 = !DILocation(line: 316, column: 9, scope: !1723)
!1723 = !DILexicalBlockFile(scope: !1721, file: !149, discriminator: 1)
!1724 = !DILocation(line: 316, column: 9, scope: !1725)
!1725 = !DILexicalBlockFile(scope: !1720, file: !149, discriminator: 2)
!1726 = !DILocation(line: 354, column: 26, scope: !1727)
!1727 = distinct !DILexicalBlock(scope: !1728, file: !149, line: 332, column: 11)
!1728 = distinct !DILexicalBlock(scope: !1729, file: !149, line: 331, column: 13)
!1729 = distinct !DILexicalBlock(scope: !1715, file: !149, line: 330, column: 7)
!1730 = !DILocation(line: 355, column: 27, scope: !1727)
!1731 = !DILocation(line: 356, column: 11, scope: !1727)
!1732 = !DILocation(line: 357, column: 14, scope: !1733)
!1733 = distinct !DILexicalBlock(scope: !1729, file: !149, line: 357, column: 13)
!1734 = !DILocation(line: 357, column: 13, scope: !1729)
!1735 = !DILocation(line: 358, column: 43, scope: !1736)
!1736 = !DILexicalBlockFile(scope: !1737, file: !149, discriminator: 1)
!1737 = distinct !DILexicalBlock(scope: !1738, file: !149, line: 358, column: 11)
!1738 = distinct !DILexicalBlock(scope: !1733, file: !149, line: 358, column: 11)
!1739 = !DILocation(line: 358, column: 11, scope: !1740)
!1740 = !DILexicalBlockFile(scope: !1738, file: !149, discriminator: 1)
!1741 = !DILocation(line: 359, column: 13, scope: !1742)
!1742 = !DILexicalBlockFile(scope: !1743, file: !149, discriminator: 1)
!1743 = distinct !DILexicalBlock(scope: !1744, file: !149, line: 359, column: 13)
!1744 = distinct !DILexicalBlock(scope: !1737, file: !149, line: 359, column: 13)
!1745 = !DILocation(line: 359, column: 13, scope: !1746)
!1746 = !DILexicalBlockFile(scope: !1744, file: !149, discriminator: 1)
!1747 = !DILocation(line: 359, column: 13, scope: !1748)
!1748 = !DILexicalBlockFile(scope: !1743, file: !149, discriminator: 2)
!1749 = !DILocation(line: 359, column: 13, scope: !1750)
!1750 = !DILexicalBlockFile(scope: !1744, file: !149, discriminator: 3)
!1751 = !DILocation(line: 358, column: 70, scope: !1752)
!1752 = !DILexicalBlockFile(scope: !1737, file: !149, discriminator: 2)
!1753 = distinct !{!1753, !1754, !1755}
!1754 = !DILocation(line: 358, column: 11, scope: !1738)
!1755 = !DILocation(line: 359, column: 13, scope: !1738)
!1756 = !DILocation(line: 362, column: 28, scope: !1729)
!1757 = !DILocation(line: 364, column: 7, scope: !1715)
!1758 = !DILocation(line: 367, column: 7, scope: !1715)
!1759 = !DILocation(line: 370, column: 7, scope: !1715)
!1760 = !DILocation(line: 373, column: 12, scope: !1761)
!1761 = distinct !DILexicalBlock(scope: !1715, file: !149, line: 373, column: 11)
!1762 = !DILocation(line: 373, column: 11, scope: !1715)
!1763 = !DILocation(line: 378, column: 12, scope: !1764)
!1764 = distinct !DILexicalBlock(scope: !1715, file: !149, line: 378, column: 11)
!1765 = !DILocation(line: 378, column: 11, scope: !1715)
!1766 = !DILocation(line: 379, column: 9, scope: !1767)
!1767 = !DILexicalBlockFile(scope: !1768, file: !149, discriminator: 1)
!1768 = distinct !DILexicalBlock(scope: !1769, file: !149, line: 379, column: 9)
!1769 = distinct !DILexicalBlock(scope: !1764, file: !149, line: 379, column: 9)
!1770 = !DILocation(line: 379, column: 9, scope: !1771)
!1771 = !DILexicalBlockFile(scope: !1769, file: !149, discriminator: 1)
!1772 = !DILocation(line: 379, column: 9, scope: !1773)
!1773 = !DILexicalBlockFile(scope: !1768, file: !149, discriminator: 2)
!1774 = !DILocation(line: 386, column: 7, scope: !1715)
!1775 = !DILocation(line: 389, column: 7, scope: !1715)
!1776 = !DILocation(line: 255, column: 10, scope: !1623)
!1777 = !DILocation(line: 392, column: 8, scope: !1652)
!1778 = !DILocation(line: 392, column: 27, scope: !1779)
!1779 = !DILexicalBlockFile(scope: !1651, file: !149, discriminator: 1)
!1780 = !DILocation(line: 392, column: 19, scope: !1779)
!1781 = !DILocation(line: 392, column: 60, scope: !1782)
!1782 = !DILexicalBlockFile(scope: !1651, file: !149, discriminator: 3)
!1783 = !DILocation(line: 392, column: 3, scope: !1784)
!1784 = !DILexicalBlockFile(scope: !1652, file: !149, discriminator: 4)
!1785 = !DILocation(line: 392, column: 41, scope: !1786)
!1786 = !DILexicalBlockFile(scope: !1651, file: !149, discriminator: 2)
!1787 = !DILocation(line: 392, column: 48, scope: !1786)
!1788 = !DILocation(line: 396, column: 12, scope: !1650)
!1789 = !DILocation(line: 397, column: 12, scope: !1650)
!1790 = !DILocation(line: 398, column: 12, scope: !1650)
!1791 = !DILocation(line: 401, column: 11, scope: !1792)
!1792 = distinct !DILexicalBlock(scope: !1650, file: !149, line: 400, column: 11)
!1793 = !DILocation(line: 403, column: 17, scope: !1794)
!1794 = !DILexicalBlockFile(scope: !1792, file: !149, discriminator: 1)
!1795 = !DILocation(line: 404, column: 39, scope: !1792)
!1796 = !DILocation(line: 408, column: 32, scope: !1792)
!1797 = !DILocation(line: 404, column: 19, scope: !1798)
!1798 = !DILexicalBlockFile(scope: !1792, file: !149, discriminator: 2)
!1799 = !DILocation(line: 404, column: 15, scope: !1800)
!1800 = !DILexicalBlockFile(scope: !1792, file: !149, discriminator: 4)
!1801 = !DILocation(line: 409, column: 11, scope: !1792)
!1802 = !DILocation(line: 409, column: 26, scope: !1794)
!1803 = !DILocation(line: 409, column: 14, scope: !1794)
!1804 = !DILocation(line: 400, column: 11, scope: !1805)
!1805 = !DILexicalBlockFile(scope: !1650, file: !149, discriminator: 1)
!1806 = !DILocation(line: 416, column: 11, scope: !1650)
!1807 = !DILocation(line: 394, column: 21, scope: !1650)
!1808 = !DILocation(line: 417, column: 7, scope: !1650)
!1809 = !DILocation(line: 420, column: 15, scope: !1659)
!1810 = !DILocation(line: 422, column: 15, scope: !1811)
!1811 = !DILexicalBlockFile(scope: !1812, file: !149, discriminator: 1)
!1812 = distinct !DILexicalBlock(scope: !1813, file: !149, line: 422, column: 15)
!1813 = distinct !DILexicalBlock(scope: !1814, file: !149, line: 421, column: 13)
!1814 = distinct !DILexicalBlock(scope: !1659, file: !149, line: 420, column: 15)
!1815 = !DILocation(line: 422, column: 15, scope: !1816)
!1816 = !DILexicalBlockFile(scope: !1817, file: !149, discriminator: 4)
!1817 = distinct !DILexicalBlock(scope: !1812, file: !149, line: 422, column: 15)
!1818 = !DILocation(line: 422, column: 15, scope: !1819)
!1819 = !DILexicalBlockFile(scope: !1817, file: !149, discriminator: 3)
!1820 = !DILocation(line: 422, column: 15, scope: !1821)
!1821 = !DILexicalBlockFile(scope: !1822, file: !149, discriminator: 6)
!1822 = distinct !DILexicalBlock(scope: !1823, file: !149, line: 422, column: 15)
!1823 = distinct !DILexicalBlock(scope: !1824, file: !149, line: 422, column: 15)
!1824 = distinct !DILexicalBlock(scope: !1817, file: !149, line: 422, column: 15)
!1825 = !DILocation(line: 422, column: 15, scope: !1826)
!1826 = !DILexicalBlockFile(scope: !1823, file: !149, discriminator: 6)
!1827 = !DILocation(line: 422, column: 15, scope: !1828)
!1828 = !DILexicalBlockFile(scope: !1822, file: !149, discriminator: 7)
!1829 = !DILocation(line: 422, column: 15, scope: !1830)
!1830 = !DILexicalBlockFile(scope: !1823, file: !149, discriminator: 8)
!1831 = !DILocation(line: 422, column: 15, scope: !1832)
!1832 = !DILexicalBlockFile(scope: !1833, file: !149, discriminator: 11)
!1833 = distinct !DILexicalBlock(scope: !1834, file: !149, line: 422, column: 15)
!1834 = distinct !DILexicalBlock(scope: !1824, file: !149, line: 422, column: 15)
!1835 = !DILocation(line: 422, column: 15, scope: !1836)
!1836 = !DILexicalBlockFile(scope: !1834, file: !149, discriminator: 11)
!1837 = !DILocation(line: 422, column: 15, scope: !1838)
!1838 = !DILexicalBlockFile(scope: !1833, file: !149, discriminator: 12)
!1839 = !DILocation(line: 422, column: 15, scope: !1840)
!1840 = !DILexicalBlockFile(scope: !1834, file: !149, discriminator: 13)
!1841 = !DILocation(line: 422, column: 15, scope: !1842)
!1842 = !DILexicalBlockFile(scope: !1843, file: !149, discriminator: 16)
!1843 = distinct !DILexicalBlock(scope: !1844, file: !149, line: 422, column: 15)
!1844 = distinct !DILexicalBlock(scope: !1824, file: !149, line: 422, column: 15)
!1845 = !DILocation(line: 422, column: 15, scope: !1846)
!1846 = !DILexicalBlockFile(scope: !1844, file: !149, discriminator: 16)
!1847 = !DILocation(line: 422, column: 15, scope: !1848)
!1848 = !DILexicalBlockFile(scope: !1843, file: !149, discriminator: 17)
!1849 = !DILocation(line: 422, column: 15, scope: !1850)
!1850 = !DILexicalBlockFile(scope: !1844, file: !149, discriminator: 18)
!1851 = !DILocation(line: 422, column: 15, scope: !1852)
!1852 = !DILexicalBlockFile(scope: !1824, file: !149, discriminator: 20)
!1853 = !DILocation(line: 422, column: 15, scope: !1854)
!1854 = !DILexicalBlockFile(scope: !1855, file: !149, discriminator: 22)
!1855 = distinct !DILexicalBlock(scope: !1856, file: !149, line: 422, column: 15)
!1856 = distinct !DILexicalBlock(scope: !1812, file: !149, line: 422, column: 15)
!1857 = !DILocation(line: 422, column: 15, scope: !1858)
!1858 = !DILexicalBlockFile(scope: !1856, file: !149, discriminator: 22)
!1859 = !DILocation(line: 422, column: 15, scope: !1860)
!1860 = !DILexicalBlockFile(scope: !1855, file: !149, discriminator: 23)
!1861 = !DILocation(line: 422, column: 15, scope: !1862)
!1862 = !DILexicalBlockFile(scope: !1856, file: !149, discriminator: 24)
!1863 = !DILocation(line: 430, column: 19, scope: !1864)
!1864 = distinct !DILexicalBlock(scope: !1813, file: !149, line: 429, column: 19)
!1865 = !DILocation(line: 430, column: 24, scope: !1866)
!1866 = !DILexicalBlockFile(scope: !1864, file: !149, discriminator: 1)
!1867 = !DILocation(line: 430, column: 28, scope: !1866)
!1868 = !DILocation(line: 430, column: 38, scope: !1866)
!1869 = !DILocation(line: 430, column: 48, scope: !1870)
!1870 = !DILexicalBlockFile(scope: !1864, file: !149, discriminator: 2)
!1871 = !DILocation(line: 430, column: 59, scope: !1870)
!1872 = !DILocation(line: 432, column: 19, scope: !1873)
!1873 = !DILexicalBlockFile(scope: !1874, file: !149, discriminator: 1)
!1874 = distinct !DILexicalBlock(scope: !1875, file: !149, line: 432, column: 19)
!1875 = distinct !DILexicalBlock(scope: !1876, file: !149, line: 432, column: 19)
!1876 = distinct !DILexicalBlock(scope: !1864, file: !149, line: 431, column: 17)
!1877 = !DILocation(line: 432, column: 19, scope: !1878)
!1878 = !DILexicalBlockFile(scope: !1875, file: !149, discriminator: 1)
!1879 = !DILocation(line: 432, column: 19, scope: !1880)
!1880 = !DILexicalBlockFile(scope: !1874, file: !149, discriminator: 2)
!1881 = !DILocation(line: 432, column: 19, scope: !1882)
!1882 = !DILexicalBlockFile(scope: !1875, file: !149, discriminator: 3)
!1883 = !DILocation(line: 433, column: 19, scope: !1884)
!1884 = !DILexicalBlockFile(scope: !1885, file: !149, discriminator: 1)
!1885 = distinct !DILexicalBlock(scope: !1886, file: !149, line: 433, column: 19)
!1886 = distinct !DILexicalBlock(scope: !1876, file: !149, line: 433, column: 19)
!1887 = !DILocation(line: 433, column: 19, scope: !1888)
!1888 = !DILexicalBlockFile(scope: !1886, file: !149, discriminator: 1)
!1889 = !DILocation(line: 433, column: 19, scope: !1890)
!1890 = !DILexicalBlockFile(scope: !1885, file: !149, discriminator: 2)
!1891 = !DILocation(line: 433, column: 19, scope: !1892)
!1892 = !DILexicalBlockFile(scope: !1886, file: !149, discriminator: 3)
!1893 = !DILocation(line: 434, column: 17, scope: !1876)
!1894 = !DILocation(line: 441, column: 20, scope: !1814)
!1895 = !DILocation(line: 446, column: 11, scope: !1659)
!1896 = !DILocation(line: 449, column: 19, scope: !1897)
!1897 = distinct !DILexicalBlock(scope: !1659, file: !149, line: 447, column: 13)
!1898 = !DILocation(line: 455, column: 19, scope: !1899)
!1899 = distinct !DILexicalBlock(scope: !1897, file: !149, line: 454, column: 19)
!1900 = !DILocation(line: 455, column: 24, scope: !1901)
!1901 = !DILexicalBlockFile(scope: !1899, file: !149, discriminator: 1)
!1902 = !DILocation(line: 455, column: 28, scope: !1901)
!1903 = !DILocation(line: 455, column: 38, scope: !1901)
!1904 = !DILocation(line: 455, column: 47, scope: !1905)
!1905 = !DILexicalBlockFile(scope: !1899, file: !149, discriminator: 2)
!1906 = !DILocation(line: 455, column: 41, scope: !1905)
!1907 = !DILocation(line: 455, column: 52, scope: !1905)
!1908 = !DILocation(line: 454, column: 19, scope: !1909)
!1909 = !DILexicalBlockFile(scope: !1897, file: !149, discriminator: 1)
!1910 = !DILocation(line: 456, column: 25, scope: !1899)
!1911 = !DILocation(line: 456, column: 17, scope: !1899)
!1912 = !DILocation(line: 463, column: 25, scope: !1913)
!1913 = distinct !DILexicalBlock(scope: !1899, file: !149, line: 457, column: 19)
!1914 = !DILocation(line: 467, column: 21, scope: !1915)
!1915 = !DILexicalBlockFile(scope: !1916, file: !149, discriminator: 1)
!1916 = distinct !DILexicalBlock(scope: !1917, file: !149, line: 467, column: 21)
!1917 = distinct !DILexicalBlock(scope: !1913, file: !149, line: 467, column: 21)
!1918 = !DILocation(line: 467, column: 21, scope: !1919)
!1919 = !DILexicalBlockFile(scope: !1917, file: !149, discriminator: 1)
!1920 = !DILocation(line: 467, column: 21, scope: !1921)
!1921 = !DILexicalBlockFile(scope: !1916, file: !149, discriminator: 2)
!1922 = !DILocation(line: 467, column: 21, scope: !1923)
!1923 = !DILexicalBlockFile(scope: !1917, file: !149, discriminator: 3)
!1924 = !DILocation(line: 468, column: 21, scope: !1925)
!1925 = !DILexicalBlockFile(scope: !1926, file: !149, discriminator: 1)
!1926 = distinct !DILexicalBlock(scope: !1927, file: !149, line: 468, column: 21)
!1927 = distinct !DILexicalBlock(scope: !1913, file: !149, line: 468, column: 21)
!1928 = !DILocation(line: 468, column: 21, scope: !1929)
!1929 = !DILexicalBlockFile(scope: !1927, file: !149, discriminator: 1)
!1930 = !DILocation(line: 468, column: 21, scope: !1931)
!1931 = !DILexicalBlockFile(scope: !1926, file: !149, discriminator: 2)
!1932 = !DILocation(line: 468, column: 21, scope: !1933)
!1933 = !DILexicalBlockFile(scope: !1927, file: !149, discriminator: 3)
!1934 = !DILocation(line: 469, column: 21, scope: !1935)
!1935 = !DILexicalBlockFile(scope: !1936, file: !149, discriminator: 1)
!1936 = distinct !DILexicalBlock(scope: !1937, file: !149, line: 469, column: 21)
!1937 = distinct !DILexicalBlock(scope: !1913, file: !149, line: 469, column: 21)
!1938 = !DILocation(line: 469, column: 21, scope: !1939)
!1939 = !DILexicalBlockFile(scope: !1937, file: !149, discriminator: 1)
!1940 = !DILocation(line: 469, column: 21, scope: !1941)
!1941 = !DILexicalBlockFile(scope: !1936, file: !149, discriminator: 2)
!1942 = !DILocation(line: 469, column: 21, scope: !1943)
!1943 = !DILexicalBlockFile(scope: !1937, file: !149, discriminator: 3)
!1944 = !DILocation(line: 470, column: 21, scope: !1945)
!1945 = !DILexicalBlockFile(scope: !1946, file: !149, discriminator: 1)
!1946 = distinct !DILexicalBlock(scope: !1947, file: !149, line: 470, column: 21)
!1947 = distinct !DILexicalBlock(scope: !1913, file: !149, line: 470, column: 21)
!1948 = !DILocation(line: 470, column: 21, scope: !1949)
!1949 = !DILexicalBlockFile(scope: !1947, file: !149, discriminator: 1)
!1950 = !DILocation(line: 470, column: 21, scope: !1951)
!1951 = !DILexicalBlockFile(scope: !1946, file: !149, discriminator: 2)
!1952 = !DILocation(line: 470, column: 21, scope: !1953)
!1953 = !DILexicalBlockFile(scope: !1947, file: !149, discriminator: 3)
!1954 = !DILocation(line: 471, column: 21, scope: !1913)
!1955 = !DILocation(line: 395, column: 21, scope: !1650)
!1956 = !DILocation(line: 484, column: 31, scope: !1659)
!1957 = !DILocation(line: 485, column: 31, scope: !1659)
!1958 = !DILocation(line: 487, column: 31, scope: !1659)
!1959 = !DILocation(line: 488, column: 31, scope: !1659)
!1960 = !DILocation(line: 489, column: 31, scope: !1659)
!1961 = !DILocation(line: 492, column: 15, scope: !1659)
!1962 = !DILocation(line: 494, column: 19, scope: !1963)
!1963 = distinct !DILexicalBlock(scope: !1964, file: !149, line: 493, column: 13)
!1964 = distinct !DILexicalBlock(scope: !1659, file: !149, line: 492, column: 15)
!1965 = !DILocation(line: 501, column: 33, scope: !1966)
!1966 = distinct !DILexicalBlock(scope: !1659, file: !149, line: 501, column: 15)
!1967 = !DILocation(line: 506, column: 15, scope: !1968)
!1968 = distinct !DILexicalBlock(scope: !1659, file: !149, line: 505, column: 15)
!1969 = !DILocation(line: 510, column: 15, scope: !1659)
!1970 = !DILocation(line: 518, column: 26, scope: !1971)
!1971 = distinct !DILexicalBlock(scope: !1659, file: !149, line: 518, column: 15)
!1972 = !DILocation(line: 518, column: 15, scope: !1659)
!1973 = !DILocation(line: 518, column: 40, scope: !1974)
!1974 = !DILexicalBlockFile(scope: !1971, file: !149, discriminator: 1)
!1975 = !DILocation(line: 518, column: 47, scope: !1974)
!1976 = !DILocation(line: 522, column: 17, scope: !1977)
!1977 = distinct !DILexicalBlock(scope: !1659, file: !149, line: 522, column: 15)
!1978 = !DILocation(line: 518, column: 18, scope: !1974)
!1979 = !DILocation(line: 518, column: 65, scope: !1980)
!1980 = !DILexicalBlockFile(scope: !1971, file: !149, discriminator: 2)
!1981 = !DILocation(line: 518, column: 15, scope: !1982)
!1982 = !DILexicalBlockFile(scope: !1659, file: !149, discriminator: 2)
!1983 = !DILocation(line: 522, column: 15, scope: !1659)
!1984 = !DILocation(line: 526, column: 11, scope: !1659)
!1985 = !DILocation(line: 541, column: 15, scope: !1986)
!1986 = distinct !DILexicalBlock(scope: !1659, file: !149, line: 540, column: 15)
!1987 = !DILocation(line: 548, column: 15, scope: !1659)
!1988 = !DILocation(line: 550, column: 19, scope: !1989)
!1989 = distinct !DILexicalBlock(scope: !1990, file: !149, line: 549, column: 13)
!1990 = distinct !DILexicalBlock(scope: !1659, file: !149, line: 548, column: 15)
!1991 = !DILocation(line: 553, column: 19, scope: !1992)
!1992 = distinct !DILexicalBlock(scope: !1989, file: !149, line: 553, column: 19)
!1993 = !DILocation(line: 553, column: 35, scope: !1994)
!1994 = !DILexicalBlockFile(scope: !1992, file: !149, discriminator: 1)
!1995 = !DILocation(line: 553, column: 30, scope: !1992)
!1996 = !DILocation(line: 562, column: 15, scope: !1997)
!1997 = !DILexicalBlockFile(scope: !1998, file: !149, discriminator: 1)
!1998 = distinct !DILexicalBlock(scope: !1999, file: !149, line: 562, column: 15)
!1999 = distinct !DILexicalBlock(scope: !1989, file: !149, line: 562, column: 15)
!2000 = !DILocation(line: 562, column: 15, scope: !2001)
!2001 = !DILexicalBlockFile(scope: !1999, file: !149, discriminator: 1)
!2002 = !DILocation(line: 562, column: 15, scope: !2003)
!2003 = !DILexicalBlockFile(scope: !1998, file: !149, discriminator: 2)
!2004 = !DILocation(line: 562, column: 15, scope: !2005)
!2005 = !DILexicalBlockFile(scope: !1999, file: !149, discriminator: 3)
!2006 = !DILocation(line: 563, column: 15, scope: !2007)
!2007 = !DILexicalBlockFile(scope: !2008, file: !149, discriminator: 1)
!2008 = distinct !DILexicalBlock(scope: !2009, file: !149, line: 563, column: 15)
!2009 = distinct !DILexicalBlock(scope: !1989, file: !149, line: 563, column: 15)
!2010 = !DILocation(line: 563, column: 15, scope: !2011)
!2011 = !DILexicalBlockFile(scope: !2009, file: !149, discriminator: 1)
!2012 = !DILocation(line: 563, column: 15, scope: !2013)
!2013 = !DILexicalBlockFile(scope: !2008, file: !149, discriminator: 2)
!2014 = !DILocation(line: 563, column: 15, scope: !2015)
!2015 = !DILexicalBlockFile(scope: !2009, file: !149, discriminator: 3)
!2016 = !DILocation(line: 564, column: 15, scope: !2017)
!2017 = !DILexicalBlockFile(scope: !2018, file: !149, discriminator: 1)
!2018 = distinct !DILexicalBlock(scope: !2019, file: !149, line: 564, column: 15)
!2019 = distinct !DILexicalBlock(scope: !1989, file: !149, line: 564, column: 15)
!2020 = !DILocation(line: 564, column: 15, scope: !2021)
!2021 = !DILexicalBlockFile(scope: !2019, file: !149, discriminator: 1)
!2022 = !DILocation(line: 564, column: 15, scope: !2023)
!2023 = !DILexicalBlockFile(scope: !2018, file: !149, discriminator: 2)
!2024 = !DILocation(line: 564, column: 15, scope: !2025)
!2025 = !DILexicalBlockFile(scope: !2019, file: !149, discriminator: 3)
!2026 = !DILocation(line: 566, column: 13, scope: !1989)
!2027 = !DILocation(line: 606, column: 17, scope: !1658)
!2028 = !DILocation(line: 602, column: 20, scope: !1658)
!2029 = !DILocation(line: 609, column: 29, scope: !2030)
!2030 = distinct !DILexicalBlock(scope: !1663, file: !149, line: 607, column: 15)
!2031 = !{!2032, !2032, i64 0}
!2032 = !{!"short", !624, i64 0}
!2033 = !DILocation(line: 609, column: 27, scope: !2030)
!2034 = !DILocation(line: 604, column: 18, scope: !1658)
!2035 = !DILocation(line: 610, column: 15, scope: !2030)
!2036 = !DILocation(line: 613, column: 17, scope: !1662)
!2037 = !DILocation(line: 614, column: 17, scope: !1662)
!2038 = !DILocation(line: 618, column: 29, scope: !2039)
!2039 = distinct !DILexicalBlock(scope: !1662, file: !149, line: 618, column: 21)
!2040 = !DILocation(line: 618, column: 21, scope: !1662)
!2041 = distinct !{!2041, !2042, !2043}
!2042 = !DILocation(line: 621, column: 17, scope: !1662)
!2043 = !DILocation(line: 667, column: 44, scope: !1662)
!2044 = !DILocation(line: 619, column: 29, scope: !2039)
!2045 = !DILocation(line: 619, column: 19, scope: !2039)
!2046 = !DILocation(line: 623, column: 21, scope: !1679)
!2047 = !DILocation(line: 624, column: 56, scope: !1679)
!2048 = !DILocation(line: 624, column: 50, scope: !1679)
!2049 = !DILocation(line: 625, column: 53, scope: !1679)
!2050 = !DILocation(line: 613, column: 27, scope: !1662)
!2051 = !DILocation(line: 623, column: 29, scope: !1679)
!2052 = !DILocation(line: 624, column: 36, scope: !1679)
!2053 = !DILocation(line: 624, column: 28, scope: !1679)
!2054 = !DILocation(line: 626, column: 25, scope: !1679)
!2055 = !DILocation(line: 636, column: 38, scope: !2056)
!2056 = !DILexicalBlockFile(scope: !2057, file: !149, discriminator: 1)
!2057 = distinct !DILexicalBlock(scope: !1686, file: !149, line: 634, column: 23)
!2058 = !DILocation(line: 636, column: 48, scope: !2056)
!2059 = !DILocation(line: 636, column: 51, scope: !2060)
!2060 = !DILexicalBlockFile(scope: !2057, file: !149, discriminator: 2)
!2061 = !DILocation(line: 636, column: 48, scope: !2060)
!2062 = !DILocation(line: 636, column: 25, scope: !2063)
!2063 = !DILexicalBlockFile(scope: !2057, file: !149, discriminator: 3)
!2064 = !DILocation(line: 637, column: 28, scope: !2057)
!2065 = !DILocation(line: 636, column: 34, scope: !2056)
!2066 = distinct !{!2066, !2067, !2064}
!2067 = !DILocation(line: 636, column: 25, scope: !2057)
!2068 = !DILocation(line: 650, column: 43, scope: !2069)
!2069 = !DILexicalBlockFile(scope: !2070, file: !149, discriminator: 1)
!2070 = distinct !DILexicalBlock(scope: !2071, file: !149, line: 650, column: 29)
!2071 = distinct !DILexicalBlock(scope: !1683, file: !149, line: 650, column: 29)
!2072 = !DILocation(line: 647, column: 29, scope: !1684)
!2073 = !DILocation(line: 649, column: 36, scope: !1683)
!2074 = !DILocation(line: 651, column: 49, scope: !2070)
!2075 = !DILocation(line: 651, column: 39, scope: !2070)
!2076 = !DILocation(line: 651, column: 31, scope: !2070)
!2077 = !DILocation(line: 650, column: 53, scope: !2078)
!2078 = !DILexicalBlockFile(scope: !2070, file: !149, discriminator: 2)
!2079 = !DILocation(line: 650, column: 29, scope: !2080)
!2080 = !DILexicalBlockFile(scope: !2071, file: !149, discriminator: 1)
!2081 = distinct !{!2081, !2082, !2083}
!2082 = !DILocation(line: 650, column: 29, scope: !2071)
!2083 = !DILocation(line: 659, column: 33, scope: !2071)
!2084 = !DILocation(line: 666, column: 19, scope: !1662)
!2085 = !DILocation(line: 662, column: 41, scope: !2086)
!2086 = distinct !DILexicalBlock(scope: !1685, file: !149, line: 662, column: 29)
!2087 = !DILocation(line: 662, column: 31, scope: !2086)
!2088 = !DILocation(line: 662, column: 29, scope: !1685)
!2089 = !DILocation(line: 664, column: 27, scope: !1685)
!2090 = !DILocation(line: 667, column: 26, scope: !1662)
!2091 = !DILocation(line: 667, column: 24, scope: !1662)
!2092 = !DILocation(line: 666, column: 19, scope: !2093)
!2093 = !DILexicalBlockFile(scope: !1679, file: !149, discriminator: 3)
!2094 = !DILocation(line: 668, column: 15, scope: !1663)
!2095 = !DILocation(line: 670, column: 40, scope: !1658)
!2096 = !DILocation(line: 672, column: 19, scope: !1691)
!2097 = !DILocation(line: 672, column: 45, scope: !2098)
!2098 = !DILexicalBlockFile(scope: !1691, file: !149, discriminator: 1)
!2099 = !DILocation(line: 672, column: 23, scope: !1691)
!2100 = !DILocation(line: 676, column: 33, scope: !1690)
!2101 = !DILocation(line: 676, column: 24, scope: !1690)
!2102 = !DILocation(line: 678, column: 17, scope: !1690)
!2103 = !DILocation(line: 680, column: 43, scope: !2104)
!2104 = distinct !DILexicalBlock(scope: !2105, file: !149, line: 680, column: 25)
!2105 = distinct !DILexicalBlock(scope: !2106, file: !149, line: 679, column: 19)
!2106 = distinct !DILexicalBlock(scope: !2107, file: !149, line: 678, column: 17)
!2107 = distinct !DILexicalBlock(scope: !1690, file: !149, line: 678, column: 17)
!2108 = !DILocation(line: 682, column: 25, scope: !2109)
!2109 = !DILexicalBlockFile(scope: !2110, file: !149, discriminator: 1)
!2110 = distinct !DILexicalBlock(scope: !2111, file: !149, line: 682, column: 25)
!2111 = distinct !DILexicalBlock(scope: !2104, file: !149, line: 681, column: 23)
!2112 = !DILocation(line: 682, column: 25, scope: !2113)
!2113 = !DILexicalBlockFile(scope: !2114, file: !149, discriminator: 4)
!2114 = distinct !DILexicalBlock(scope: !2110, file: !149, line: 682, column: 25)
!2115 = !DILocation(line: 682, column: 25, scope: !2116)
!2116 = !DILexicalBlockFile(scope: !2114, file: !149, discriminator: 3)
!2117 = !DILocation(line: 682, column: 25, scope: !2118)
!2118 = !DILexicalBlockFile(scope: !2119, file: !149, discriminator: 6)
!2119 = distinct !DILexicalBlock(scope: !2120, file: !149, line: 682, column: 25)
!2120 = distinct !DILexicalBlock(scope: !2121, file: !149, line: 682, column: 25)
!2121 = distinct !DILexicalBlock(scope: !2114, file: !149, line: 682, column: 25)
!2122 = !DILocation(line: 682, column: 25, scope: !2123)
!2123 = !DILexicalBlockFile(scope: !2120, file: !149, discriminator: 6)
!2124 = !DILocation(line: 682, column: 25, scope: !2125)
!2125 = !DILexicalBlockFile(scope: !2119, file: !149, discriminator: 7)
!2126 = !DILocation(line: 682, column: 25, scope: !2127)
!2127 = !DILexicalBlockFile(scope: !2120, file: !149, discriminator: 8)
!2128 = !DILocation(line: 682, column: 25, scope: !2129)
!2129 = !DILexicalBlockFile(scope: !2130, file: !149, discriminator: 11)
!2130 = distinct !DILexicalBlock(scope: !2131, file: !149, line: 682, column: 25)
!2131 = distinct !DILexicalBlock(scope: !2121, file: !149, line: 682, column: 25)
!2132 = !DILocation(line: 682, column: 25, scope: !2133)
!2133 = !DILexicalBlockFile(scope: !2131, file: !149, discriminator: 11)
!2134 = !DILocation(line: 682, column: 25, scope: !2135)
!2135 = !DILexicalBlockFile(scope: !2130, file: !149, discriminator: 12)
!2136 = !DILocation(line: 682, column: 25, scope: !2137)
!2137 = !DILexicalBlockFile(scope: !2131, file: !149, discriminator: 13)
!2138 = !DILocation(line: 682, column: 25, scope: !2139)
!2139 = !DILexicalBlockFile(scope: !2140, file: !149, discriminator: 16)
!2140 = distinct !DILexicalBlock(scope: !2141, file: !149, line: 682, column: 25)
!2141 = distinct !DILexicalBlock(scope: !2121, file: !149, line: 682, column: 25)
!2142 = !DILocation(line: 682, column: 25, scope: !2143)
!2143 = !DILexicalBlockFile(scope: !2141, file: !149, discriminator: 16)
!2144 = !DILocation(line: 682, column: 25, scope: !2145)
!2145 = !DILexicalBlockFile(scope: !2140, file: !149, discriminator: 17)
!2146 = !DILocation(line: 682, column: 25, scope: !2147)
!2147 = !DILexicalBlockFile(scope: !2141, file: !149, discriminator: 18)
!2148 = !DILocation(line: 682, column: 25, scope: !2149)
!2149 = !DILexicalBlockFile(scope: !2121, file: !149, discriminator: 20)
!2150 = !DILocation(line: 682, column: 25, scope: !2151)
!2151 = !DILexicalBlockFile(scope: !2152, file: !149, discriminator: 22)
!2152 = distinct !DILexicalBlock(scope: !2153, file: !149, line: 682, column: 25)
!2153 = distinct !DILexicalBlock(scope: !2110, file: !149, line: 682, column: 25)
!2154 = !DILocation(line: 682, column: 25, scope: !2155)
!2155 = !DILexicalBlockFile(scope: !2153, file: !149, discriminator: 22)
!2156 = !DILocation(line: 682, column: 25, scope: !2157)
!2157 = !DILexicalBlockFile(scope: !2152, file: !149, discriminator: 23)
!2158 = !DILocation(line: 682, column: 25, scope: !2159)
!2159 = !DILexicalBlockFile(scope: !2153, file: !149, discriminator: 24)
!2160 = !DILocation(line: 683, column: 25, scope: !2161)
!2161 = !DILexicalBlockFile(scope: !2162, file: !149, discriminator: 1)
!2162 = distinct !DILexicalBlock(scope: !2163, file: !149, line: 683, column: 25)
!2163 = distinct !DILexicalBlock(scope: !2111, file: !149, line: 683, column: 25)
!2164 = !DILocation(line: 683, column: 25, scope: !2165)
!2165 = !DILexicalBlockFile(scope: !2163, file: !149, discriminator: 1)
!2166 = !DILocation(line: 683, column: 25, scope: !2167)
!2167 = !DILexicalBlockFile(scope: !2162, file: !149, discriminator: 2)
!2168 = !DILocation(line: 683, column: 25, scope: !2169)
!2169 = !DILexicalBlockFile(scope: !2163, file: !149, discriminator: 3)
!2170 = !DILocation(line: 684, column: 25, scope: !2171)
!2171 = !DILexicalBlockFile(scope: !2172, file: !149, discriminator: 1)
!2172 = distinct !DILexicalBlock(scope: !2173, file: !149, line: 684, column: 25)
!2173 = distinct !DILexicalBlock(scope: !2111, file: !149, line: 684, column: 25)
!2174 = !DILocation(line: 684, column: 25, scope: !2175)
!2175 = !DILexicalBlockFile(scope: !2173, file: !149, discriminator: 1)
!2176 = !DILocation(line: 684, column: 25, scope: !2177)
!2177 = !DILexicalBlockFile(scope: !2172, file: !149, discriminator: 2)
!2178 = !DILocation(line: 684, column: 25, scope: !2179)
!2179 = !DILexicalBlockFile(scope: !2173, file: !149, discriminator: 3)
!2180 = !DILocation(line: 685, column: 38, scope: !2111)
!2181 = !DILocation(line: 685, column: 33, scope: !2111)
!2182 = !DILocation(line: 686, column: 23, scope: !2111)
!2183 = !DILocation(line: 687, column: 30, scope: !2184)
!2184 = distinct !DILexicalBlock(scope: !2104, file: !149, line: 687, column: 30)
!2185 = !DILocation(line: 687, column: 30, scope: !2104)
!2186 = !DILocation(line: 689, column: 25, scope: !2187)
!2187 = !DILexicalBlockFile(scope: !2188, file: !149, discriminator: 1)
!2188 = distinct !DILexicalBlock(scope: !2189, file: !149, line: 689, column: 25)
!2189 = distinct !DILexicalBlock(scope: !2190, file: !149, line: 689, column: 25)
!2190 = distinct !DILexicalBlock(scope: !2184, file: !149, line: 688, column: 23)
!2191 = !DILocation(line: 689, column: 25, scope: !2192)
!2192 = !DILexicalBlockFile(scope: !2189, file: !149, discriminator: 1)
!2193 = !DILocation(line: 689, column: 25, scope: !2194)
!2194 = !DILexicalBlockFile(scope: !2188, file: !149, discriminator: 2)
!2195 = !DILocation(line: 689, column: 25, scope: !2196)
!2196 = !DILexicalBlockFile(scope: !2189, file: !149, discriminator: 3)
!2197 = !DILocation(line: 691, column: 23, scope: !2190)
!2198 = !DILocation(line: 692, column: 35, scope: !2199)
!2199 = distinct !DILexicalBlock(scope: !2105, file: !149, line: 692, column: 25)
!2200 = !DILocation(line: 692, column: 30, scope: !2199)
!2201 = !DILocation(line: 692, column: 25, scope: !2105)
!2202 = !DILocation(line: 694, column: 21, scope: !2203)
!2203 = !DILexicalBlockFile(scope: !2204, file: !149, discriminator: 1)
!2204 = distinct !DILexicalBlock(scope: !2205, file: !149, line: 694, column: 21)
!2205 = distinct !DILexicalBlock(scope: !2105, file: !149, line: 694, column: 21)
!2206 = !DILocation(line: 694, column: 21, scope: !2207)
!2207 = !DILexicalBlockFile(scope: !2204, file: !149, discriminator: 2)
!2208 = !DILocation(line: 694, column: 21, scope: !2209)
!2209 = !DILexicalBlockFile(scope: !2210, file: !149, discriminator: 4)
!2210 = distinct !DILexicalBlock(scope: !2211, file: !149, line: 694, column: 21)
!2211 = distinct !DILexicalBlock(scope: !2212, file: !149, line: 694, column: 21)
!2212 = distinct !DILexicalBlock(scope: !2204, file: !149, line: 694, column: 21)
!2213 = !DILocation(line: 694, column: 21, scope: !2214)
!2214 = !DILexicalBlockFile(scope: !2211, file: !149, discriminator: 4)
!2215 = !DILocation(line: 694, column: 21, scope: !2216)
!2216 = !DILexicalBlockFile(scope: !2210, file: !149, discriminator: 5)
!2217 = !DILocation(line: 694, column: 21, scope: !2218)
!2218 = !DILexicalBlockFile(scope: !2211, file: !149, discriminator: 6)
!2219 = !DILocation(line: 694, column: 21, scope: !2220)
!2220 = !DILexicalBlockFile(scope: !2221, file: !149, discriminator: 9)
!2221 = distinct !DILexicalBlock(scope: !2222, file: !149, line: 694, column: 21)
!2222 = distinct !DILexicalBlock(scope: !2212, file: !149, line: 694, column: 21)
!2223 = !DILocation(line: 694, column: 21, scope: !2224)
!2224 = !DILexicalBlockFile(scope: !2222, file: !149, discriminator: 9)
!2225 = !DILocation(line: 694, column: 21, scope: !2226)
!2226 = !DILexicalBlockFile(scope: !2221, file: !149, discriminator: 10)
!2227 = !DILocation(line: 694, column: 21, scope: !2228)
!2228 = !DILexicalBlockFile(scope: !2222, file: !149, discriminator: 11)
!2229 = !DILocation(line: 694, column: 21, scope: !2230)
!2230 = !DILexicalBlockFile(scope: !2212, file: !149, discriminator: 13)
!2231 = !DILocation(line: 695, column: 21, scope: !2232)
!2232 = !DILexicalBlockFile(scope: !2233, file: !149, discriminator: 1)
!2233 = distinct !DILexicalBlock(scope: !2234, file: !149, line: 695, column: 21)
!2234 = distinct !DILexicalBlock(scope: !2105, file: !149, line: 695, column: 21)
!2235 = !DILocation(line: 695, column: 21, scope: !2236)
!2236 = !DILexicalBlockFile(scope: !2234, file: !149, discriminator: 1)
!2237 = !DILocation(line: 695, column: 21, scope: !2238)
!2238 = !DILexicalBlockFile(scope: !2233, file: !149, discriminator: 2)
!2239 = !DILocation(line: 695, column: 21, scope: !2240)
!2240 = !DILexicalBlockFile(scope: !2234, file: !149, discriminator: 3)
!2241 = !DILocation(line: 696, column: 25, scope: !2105)
!2242 = !DILocation(line: 678, column: 17, scope: !2243)
!2243 = !DILexicalBlockFile(scope: !2106, file: !149, discriminator: 1)
!2244 = distinct !{!2244, !2245, !2246}
!2245 = !DILocation(line: 678, column: 17, scope: !2107)
!2246 = !DILocation(line: 697, column: 19, scope: !2107)
!2247 = !DILocation(line: 704, column: 34, scope: !2248)
!2248 = distinct !DILexicalBlock(scope: !1650, file: !149, line: 704, column: 11)
!2249 = !DILocation(line: 706, column: 14, scope: !2248)
!2250 = !DILocation(line: 707, column: 14, scope: !2248)
!2251 = !DILocation(line: 707, column: 35, scope: !2252)
!2252 = !DILexicalBlockFile(scope: !2248, file: !149, discriminator: 1)
!2253 = !DILocation(line: 707, column: 17, scope: !2252)
!2254 = !DILocation(line: 707, column: 53, scope: !2252)
!2255 = !DILocation(line: 707, column: 47, scope: !2252)
!2256 = !DILocation(line: 707, column: 65, scope: !2252)
!2257 = !DILocation(line: 708, column: 15, scope: !2252)
!2258 = !DILocation(line: 708, column: 11, scope: !2248)
!2259 = !DILocation(line: 704, column: 11, scope: !2260)
!2260 = !DILexicalBlockFile(scope: !1650, file: !149, discriminator: 2)
!2261 = !DILocation(line: 712, column: 7, scope: !2262)
!2262 = !DILexicalBlockFile(scope: !2263, file: !149, discriminator: 1)
!2263 = distinct !DILexicalBlock(scope: !1650, file: !149, line: 712, column: 7)
!2264 = !DILocation(line: 712, column: 7, scope: !2265)
!2265 = !DILexicalBlockFile(scope: !2266, file: !149, discriminator: 4)
!2266 = distinct !DILexicalBlock(scope: !2263, file: !149, line: 712, column: 7)
!2267 = !DILocation(line: 712, column: 7, scope: !2268)
!2268 = !DILexicalBlockFile(scope: !2266, file: !149, discriminator: 3)
!2269 = !DILocation(line: 712, column: 7, scope: !2270)
!2270 = !DILexicalBlockFile(scope: !2271, file: !149, discriminator: 6)
!2271 = distinct !DILexicalBlock(scope: !2272, file: !149, line: 712, column: 7)
!2272 = distinct !DILexicalBlock(scope: !2273, file: !149, line: 712, column: 7)
!2273 = distinct !DILexicalBlock(scope: !2266, file: !149, line: 712, column: 7)
!2274 = !DILocation(line: 712, column: 7, scope: !2275)
!2275 = !DILexicalBlockFile(scope: !2272, file: !149, discriminator: 6)
!2276 = !DILocation(line: 712, column: 7, scope: !2277)
!2277 = !DILexicalBlockFile(scope: !2271, file: !149, discriminator: 7)
!2278 = !DILocation(line: 712, column: 7, scope: !2279)
!2279 = !DILexicalBlockFile(scope: !2272, file: !149, discriminator: 8)
!2280 = !DILocation(line: 712, column: 7, scope: !2281)
!2281 = !DILexicalBlockFile(scope: !2282, file: !149, discriminator: 11)
!2282 = distinct !DILexicalBlock(scope: !2283, file: !149, line: 712, column: 7)
!2283 = distinct !DILexicalBlock(scope: !2273, file: !149, line: 712, column: 7)
!2284 = !DILocation(line: 712, column: 7, scope: !2285)
!2285 = !DILexicalBlockFile(scope: !2283, file: !149, discriminator: 11)
!2286 = !DILocation(line: 712, column: 7, scope: !2287)
!2287 = !DILexicalBlockFile(scope: !2282, file: !149, discriminator: 12)
!2288 = !DILocation(line: 712, column: 7, scope: !2289)
!2289 = !DILexicalBlockFile(scope: !2283, file: !149, discriminator: 13)
!2290 = !DILocation(line: 712, column: 7, scope: !2291)
!2291 = !DILexicalBlockFile(scope: !2292, file: !149, discriminator: 16)
!2292 = distinct !DILexicalBlock(scope: !2293, file: !149, line: 712, column: 7)
!2293 = distinct !DILexicalBlock(scope: !2273, file: !149, line: 712, column: 7)
!2294 = !DILocation(line: 712, column: 7, scope: !2295)
!2295 = !DILexicalBlockFile(scope: !2293, file: !149, discriminator: 16)
!2296 = !DILocation(line: 712, column: 7, scope: !2297)
!2297 = !DILexicalBlockFile(scope: !2292, file: !149, discriminator: 17)
!2298 = !DILocation(line: 712, column: 7, scope: !2299)
!2299 = !DILexicalBlockFile(scope: !2293, file: !149, discriminator: 18)
!2300 = !DILocation(line: 712, column: 7, scope: !2301)
!2301 = !DILexicalBlockFile(scope: !2273, file: !149, discriminator: 20)
!2302 = !DILocation(line: 712, column: 7, scope: !2303)
!2303 = !DILexicalBlockFile(scope: !2304, file: !149, discriminator: 22)
!2304 = distinct !DILexicalBlock(scope: !2305, file: !149, line: 712, column: 7)
!2305 = distinct !DILexicalBlock(scope: !2263, file: !149, line: 712, column: 7)
!2306 = !DILocation(line: 712, column: 7, scope: !2307)
!2307 = !DILexicalBlockFile(scope: !2305, file: !149, discriminator: 22)
!2308 = !DILocation(line: 712, column: 7, scope: !2309)
!2309 = !DILexicalBlockFile(scope: !2304, file: !149, discriminator: 23)
!2310 = !DILocation(line: 712, column: 7, scope: !2311)
!2311 = !DILexicalBlockFile(scope: !2305, file: !149, discriminator: 24)
!2312 = !DILocation(line: 715, column: 7, scope: !2313)
!2313 = !DILexicalBlockFile(scope: !2314, file: !149, discriminator: 1)
!2314 = distinct !DILexicalBlock(scope: !2315, file: !149, line: 715, column: 7)
!2315 = distinct !DILexicalBlock(scope: !1650, file: !149, line: 715, column: 7)
!2316 = !DILocation(line: 715, column: 7, scope: !2317)
!2317 = !DILexicalBlockFile(scope: !2314, file: !149, discriminator: 2)
!2318 = !DILocation(line: 715, column: 7, scope: !2319)
!2319 = !DILexicalBlockFile(scope: !2320, file: !149, discriminator: 4)
!2320 = distinct !DILexicalBlock(scope: !2321, file: !149, line: 715, column: 7)
!2321 = distinct !DILexicalBlock(scope: !2322, file: !149, line: 715, column: 7)
!2322 = distinct !DILexicalBlock(scope: !2314, file: !149, line: 715, column: 7)
!2323 = !DILocation(line: 715, column: 7, scope: !2324)
!2324 = !DILexicalBlockFile(scope: !2321, file: !149, discriminator: 4)
!2325 = !DILocation(line: 715, column: 7, scope: !2326)
!2326 = !DILexicalBlockFile(scope: !2320, file: !149, discriminator: 5)
!2327 = !DILocation(line: 715, column: 7, scope: !2328)
!2328 = !DILexicalBlockFile(scope: !2321, file: !149, discriminator: 6)
!2329 = !DILocation(line: 715, column: 7, scope: !2330)
!2330 = !DILexicalBlockFile(scope: !2331, file: !149, discriminator: 9)
!2331 = distinct !DILexicalBlock(scope: !2332, file: !149, line: 715, column: 7)
!2332 = distinct !DILexicalBlock(scope: !2322, file: !149, line: 715, column: 7)
!2333 = !DILocation(line: 715, column: 7, scope: !2334)
!2334 = !DILexicalBlockFile(scope: !2332, file: !149, discriminator: 9)
!2335 = !DILocation(line: 715, column: 7, scope: !2336)
!2336 = !DILexicalBlockFile(scope: !2331, file: !149, discriminator: 10)
!2337 = !DILocation(line: 715, column: 7, scope: !2338)
!2338 = !DILexicalBlockFile(scope: !2332, file: !149, discriminator: 11)
!2339 = !DILocation(line: 715, column: 7, scope: !2340)
!2340 = !DILexicalBlockFile(scope: !2322, file: !149, discriminator: 13)
!2341 = !DILocation(line: 716, column: 7, scope: !2342)
!2342 = !DILexicalBlockFile(scope: !2343, file: !149, discriminator: 1)
!2343 = distinct !DILexicalBlock(scope: !2344, file: !149, line: 716, column: 7)
!2344 = distinct !DILexicalBlock(scope: !1650, file: !149, line: 716, column: 7)
!2345 = !DILocation(line: 716, column: 7, scope: !2346)
!2346 = !DILexicalBlockFile(scope: !2344, file: !149, discriminator: 1)
!2347 = !DILocation(line: 716, column: 7, scope: !2348)
!2348 = !DILexicalBlockFile(scope: !2343, file: !149, discriminator: 2)
!2349 = !DILocation(line: 716, column: 7, scope: !2350)
!2350 = !DILexicalBlockFile(scope: !2344, file: !149, discriminator: 3)
!2351 = !DILocation(line: 718, column: 13, scope: !2352)
!2352 = distinct !DILexicalBlock(scope: !1650, file: !149, line: 718, column: 11)
!2353 = !DILocation(line: 718, column: 11, scope: !1650)
!2354 = !DILocation(line: 720, column: 5, scope: !1651)
!2355 = !DILocation(line: 392, column: 75, scope: !2356)
!2356 = !DILexicalBlockFile(scope: !1651, file: !149, discriminator: 5)
!2357 = !DILocation(line: 392, column: 3, scope: !2356)
!2358 = distinct !{!2358, !2359, !2360}
!2359 = !DILocation(line: 392, column: 3, scope: !1652)
!2360 = !DILocation(line: 720, column: 5, scope: !1652)
!2361 = !DILocation(line: 722, column: 11, scope: !2362)
!2362 = distinct !DILexicalBlock(scope: !1623, file: !149, line: 722, column: 7)
!2363 = !DILocation(line: 722, column: 16, scope: !2362)
!2364 = !DILocation(line: 730, column: 51, scope: !2365)
!2365 = distinct !DILexicalBlock(scope: !1623, file: !149, line: 730, column: 7)
!2366 = !DILocation(line: 731, column: 10, scope: !2367)
!2367 = !DILexicalBlockFile(scope: !2365, file: !149, discriminator: 1)
!2368 = !DILocation(line: 733, column: 11, scope: !2369)
!2369 = distinct !DILexicalBlock(scope: !2370, file: !149, line: 733, column: 11)
!2370 = distinct !DILexicalBlock(scope: !2365, file: !149, line: 732, column: 5)
!2371 = !DILocation(line: 733, column: 11, scope: !2370)
!2372 = !DILocation(line: 734, column: 16, scope: !2369)
!2373 = !DILocation(line: 734, column: 9, scope: !2369)
!2374 = !DILocation(line: 738, column: 18, scope: !2375)
!2375 = distinct !DILexicalBlock(scope: !2369, file: !149, line: 738, column: 16)
!2376 = !DILocation(line: 738, column: 32, scope: !2377)
!2377 = !DILexicalBlockFile(scope: !2375, file: !149, discriminator: 1)
!2378 = !DILocation(line: 738, column: 29, scope: !2375)
!2379 = !DILocation(line: 747, column: 7, scope: !2380)
!2380 = distinct !DILexicalBlock(scope: !1623, file: !149, line: 747, column: 7)
!2381 = !DILocation(line: 747, column: 20, scope: !2380)
!2382 = !DILocation(line: 748, column: 12, scope: !2383)
!2383 = !DILexicalBlockFile(scope: !2384, file: !149, discriminator: 1)
!2384 = distinct !DILexicalBlock(scope: !2385, file: !149, line: 748, column: 5)
!2385 = distinct !DILexicalBlock(scope: !2380, file: !149, line: 748, column: 5)
!2386 = !DILocation(line: 748, column: 5, scope: !2387)
!2387 = !DILexicalBlockFile(scope: !2385, file: !149, discriminator: 1)
!2388 = !DILocation(line: 749, column: 7, scope: !2389)
!2389 = !DILexicalBlockFile(scope: !2390, file: !149, discriminator: 1)
!2390 = distinct !DILexicalBlock(scope: !2391, file: !149, line: 749, column: 7)
!2391 = distinct !DILexicalBlock(scope: !2384, file: !149, line: 749, column: 7)
!2392 = !DILocation(line: 749, column: 7, scope: !2393)
!2393 = !DILexicalBlockFile(scope: !2391, file: !149, discriminator: 1)
!2394 = !DILocation(line: 749, column: 7, scope: !2395)
!2395 = !DILexicalBlockFile(scope: !2390, file: !149, discriminator: 2)
!2396 = !DILocation(line: 749, column: 7, scope: !2397)
!2397 = !DILexicalBlockFile(scope: !2391, file: !149, discriminator: 3)
!2398 = !DILocation(line: 748, column: 39, scope: !2399)
!2399 = !DILexicalBlockFile(scope: !2384, file: !149, discriminator: 2)
!2400 = distinct !{!2400, !2401, !2402}
!2401 = !DILocation(line: 748, column: 5, scope: !2385)
!2402 = !DILocation(line: 749, column: 7, scope: !2385)
!2403 = !DILocation(line: 751, column: 11, scope: !2404)
!2404 = distinct !DILexicalBlock(scope: !1623, file: !149, line: 751, column: 7)
!2405 = !DILocation(line: 751, column: 7, scope: !1623)
!2406 = !DILocation(line: 752, column: 5, scope: !2404)
!2407 = !DILocation(line: 752, column: 17, scope: !2404)
!2408 = !DILocation(line: 758, column: 21, scope: !2409)
!2409 = distinct !DILexicalBlock(scope: !1623, file: !149, line: 758, column: 7)
!2410 = !DILocation(line: 758, column: 54, scope: !2411)
!2411 = !DILexicalBlockFile(scope: !2409, file: !149, discriminator: 1)
!2412 = !DILocation(line: 758, column: 51, scope: !2409)
!2413 = !DILocation(line: 762, column: 42, scope: !1623)
!2414 = !DILocation(line: 760, column: 10, scope: !1623)
!2415 = !DILocation(line: 760, column: 3, scope: !1623)
!2416 = !DILocation(line: 764, column: 1, scope: !1623)
!2417 = distinct !DISubprogram(name: "gettext_quote", scope: !149, file: !149, line: 199, type: !2418, isLocal: true, isDefinition: true, scopeLine: 200, flags: DIFlagPrototyped, isOptimized: true, unit: !121, variables: !2420)
!2418 = !DISubroutineType(types: !2419)
!2419 = !{!44, !44, !13}
!2420 = !{!2421, !2422, !2423, !2424}
!2421 = !DILocalVariable(name: "msgid", arg: 1, scope: !2417, file: !149, line: 199, type: !44)
!2422 = !DILocalVariable(name: "s", arg: 2, scope: !2417, file: !149, line: 199, type: !13)
!2423 = !DILocalVariable(name: "translation", scope: !2417, file: !149, line: 201, type: !44)
!2424 = !DILocalVariable(name: "locale_code", scope: !2417, file: !149, line: 202, type: !44)
!2425 = !DILocation(line: 199, column: 28, scope: !2417)
!2426 = !DILocation(line: 199, column: 54, scope: !2417)
!2427 = !DILocation(line: 201, column: 29, scope: !2417)
!2428 = !DILocation(line: 201, column: 15, scope: !2417)
!2429 = !DILocation(line: 204, column: 19, scope: !2430)
!2430 = distinct !DILexicalBlock(scope: !2417, file: !149, line: 204, column: 7)
!2431 = !DILocation(line: 204, column: 7, scope: !2417)
!2432 = !DILocation(line: 225, column: 17, scope: !2417)
!2433 = !DILocation(line: 202, column: 15, scope: !2417)
!2434 = !DILocalVariable(name: "s2", arg: 2, scope: !2435, file: !2436, line: 160, type: !44)
!2435 = distinct !DISubprogram(name: "strcaseeq0", scope: !2436, file: !2436, line: 160, type: !2437, isLocal: true, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !121, variables: !2439)
!2436 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2437 = !DISubroutineType(types: !2438)
!2438 = !{!74, !44, !44, !29, !29, !29, !29, !29, !29, !29, !29, !29}
!2439 = !{!2440, !2434, !2441, !2442, !2443, !2444, !2445, !2446, !2447, !2448, !2449}
!2440 = !DILocalVariable(name: "s1", arg: 1, scope: !2435, file: !2436, line: 160, type: !44)
!2441 = !DILocalVariable(name: "s20", arg: 3, scope: !2435, file: !2436, line: 160, type: !29)
!2442 = !DILocalVariable(name: "s21", arg: 4, scope: !2435, file: !2436, line: 160, type: !29)
!2443 = !DILocalVariable(name: "s22", arg: 5, scope: !2435, file: !2436, line: 160, type: !29)
!2444 = !DILocalVariable(name: "s23", arg: 6, scope: !2435, file: !2436, line: 160, type: !29)
!2445 = !DILocalVariable(name: "s24", arg: 7, scope: !2435, file: !2436, line: 160, type: !29)
!2446 = !DILocalVariable(name: "s25", arg: 8, scope: !2435, file: !2436, line: 160, type: !29)
!2447 = !DILocalVariable(name: "s26", arg: 9, scope: !2435, file: !2436, line: 160, type: !29)
!2448 = !DILocalVariable(name: "s27", arg: 10, scope: !2435, file: !2436, line: 160, type: !29)
!2449 = !DILocalVariable(name: "s28", arg: 11, scope: !2435, file: !2436, line: 160, type: !29)
!2450 = !DILocation(line: 160, column: 41, scope: !2435, inlinedAt: !2451)
!2451 = distinct !DILocation(line: 226, column: 7, scope: !2452)
!2452 = distinct !DILexicalBlock(scope: !2417, file: !149, line: 226, column: 7)
!2453 = !DILocation(line: 160, column: 120, scope: !2435, inlinedAt: !2451)
!2454 = !DILocation(line: 160, column: 130, scope: !2435, inlinedAt: !2451)
!2455 = !DILocation(line: 162, column: 7, scope: !2456, inlinedAt: !2451)
!2456 = !DILexicalBlockFile(scope: !2457, file: !2436, discriminator: 1)
!2457 = distinct !DILexicalBlock(scope: !2435, file: !2436, line: 162, column: 7)
!2458 = !DILocalVariable(name: "s2", arg: 2, scope: !2459, file: !2436, line: 146, type: !44)
!2459 = distinct !DISubprogram(name: "strcaseeq1", scope: !2436, file: !2436, line: 146, type: !2460, isLocal: true, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: true, unit: !121, variables: !2462)
!2460 = !DISubroutineType(types: !2461)
!2461 = !{!74, !44, !44, !29, !29, !29, !29, !29, !29, !29, !29}
!2462 = !{!2463, !2458, !2464, !2465, !2466, !2467, !2468, !2469, !2470, !2471}
!2463 = !DILocalVariable(name: "s1", arg: 1, scope: !2459, file: !2436, line: 146, type: !44)
!2464 = !DILocalVariable(name: "s21", arg: 3, scope: !2459, file: !2436, line: 146, type: !29)
!2465 = !DILocalVariable(name: "s22", arg: 4, scope: !2459, file: !2436, line: 146, type: !29)
!2466 = !DILocalVariable(name: "s23", arg: 5, scope: !2459, file: !2436, line: 146, type: !29)
!2467 = !DILocalVariable(name: "s24", arg: 6, scope: !2459, file: !2436, line: 146, type: !29)
!2468 = !DILocalVariable(name: "s25", arg: 7, scope: !2459, file: !2436, line: 146, type: !29)
!2469 = !DILocalVariable(name: "s26", arg: 8, scope: !2459, file: !2436, line: 146, type: !29)
!2470 = !DILocalVariable(name: "s27", arg: 9, scope: !2459, file: !2436, line: 146, type: !29)
!2471 = !DILocalVariable(name: "s28", arg: 10, scope: !2459, file: !2436, line: 146, type: !29)
!2472 = !DILocation(line: 146, column: 41, scope: !2459, inlinedAt: !2473)
!2473 = distinct !DILocation(line: 167, column: 16, scope: !2474, inlinedAt: !2451)
!2474 = distinct !DILexicalBlock(scope: !2475, file: !2436, line: 164, column: 11)
!2475 = distinct !DILexicalBlock(scope: !2457, file: !2436, line: 163, column: 5)
!2476 = !DILocation(line: 146, column: 110, scope: !2459, inlinedAt: !2473)
!2477 = !DILocation(line: 146, column: 120, scope: !2459, inlinedAt: !2473)
!2478 = !DILocation(line: 148, column: 7, scope: !2479, inlinedAt: !2473)
!2479 = !DILexicalBlockFile(scope: !2480, file: !2436, discriminator: 1)
!2480 = distinct !DILexicalBlock(scope: !2459, file: !2436, line: 148, column: 7)
!2481 = !DILocalVariable(name: "s2", arg: 2, scope: !2482, file: !2436, line: 132, type: !44)
!2482 = distinct !DISubprogram(name: "strcaseeq2", scope: !2436, file: !2436, line: 132, type: !2483, isLocal: true, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !121, variables: !2485)
!2483 = !DISubroutineType(types: !2484)
!2484 = !{!74, !44, !44, !29, !29, !29, !29, !29, !29, !29}
!2485 = !{!2486, !2481, !2487, !2488, !2489, !2490, !2491, !2492, !2493}
!2486 = !DILocalVariable(name: "s1", arg: 1, scope: !2482, file: !2436, line: 132, type: !44)
!2487 = !DILocalVariable(name: "s22", arg: 3, scope: !2482, file: !2436, line: 132, type: !29)
!2488 = !DILocalVariable(name: "s23", arg: 4, scope: !2482, file: !2436, line: 132, type: !29)
!2489 = !DILocalVariable(name: "s24", arg: 5, scope: !2482, file: !2436, line: 132, type: !29)
!2490 = !DILocalVariable(name: "s25", arg: 6, scope: !2482, file: !2436, line: 132, type: !29)
!2491 = !DILocalVariable(name: "s26", arg: 7, scope: !2482, file: !2436, line: 132, type: !29)
!2492 = !DILocalVariable(name: "s27", arg: 8, scope: !2482, file: !2436, line: 132, type: !29)
!2493 = !DILocalVariable(name: "s28", arg: 9, scope: !2482, file: !2436, line: 132, type: !29)
!2494 = !DILocation(line: 132, column: 41, scope: !2482, inlinedAt: !2495)
!2495 = distinct !DILocation(line: 153, column: 16, scope: !2496, inlinedAt: !2473)
!2496 = distinct !DILexicalBlock(scope: !2497, file: !2436, line: 150, column: 11)
!2497 = distinct !DILexicalBlock(scope: !2480, file: !2436, line: 149, column: 5)
!2498 = !DILocation(line: 132, column: 100, scope: !2482, inlinedAt: !2495)
!2499 = !DILocation(line: 132, column: 110, scope: !2482, inlinedAt: !2495)
!2500 = !DILocation(line: 134, column: 7, scope: !2501, inlinedAt: !2495)
!2501 = !DILexicalBlockFile(scope: !2502, file: !2436, discriminator: 1)
!2502 = distinct !DILexicalBlock(scope: !2482, file: !2436, line: 134, column: 7)
!2503 = !DILocalVariable(name: "s2", arg: 2, scope: !2504, file: !2436, line: 118, type: !44)
!2504 = distinct !DISubprogram(name: "strcaseeq3", scope: !2436, file: !2436, line: 118, type: !2505, isLocal: true, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !121, variables: !2507)
!2505 = !DISubroutineType(types: !2506)
!2506 = !{!74, !44, !44, !29, !29, !29, !29, !29, !29}
!2507 = !{!2508, !2503, !2509, !2510, !2511, !2512, !2513, !2514}
!2508 = !DILocalVariable(name: "s1", arg: 1, scope: !2504, file: !2436, line: 118, type: !44)
!2509 = !DILocalVariable(name: "s23", arg: 3, scope: !2504, file: !2436, line: 118, type: !29)
!2510 = !DILocalVariable(name: "s24", arg: 4, scope: !2504, file: !2436, line: 118, type: !29)
!2511 = !DILocalVariable(name: "s25", arg: 5, scope: !2504, file: !2436, line: 118, type: !29)
!2512 = !DILocalVariable(name: "s26", arg: 6, scope: !2504, file: !2436, line: 118, type: !29)
!2513 = !DILocalVariable(name: "s27", arg: 7, scope: !2504, file: !2436, line: 118, type: !29)
!2514 = !DILocalVariable(name: "s28", arg: 8, scope: !2504, file: !2436, line: 118, type: !29)
!2515 = !DILocation(line: 118, column: 41, scope: !2504, inlinedAt: !2516)
!2516 = distinct !DILocation(line: 139, column: 16, scope: !2517, inlinedAt: !2495)
!2517 = distinct !DILexicalBlock(scope: !2518, file: !2436, line: 136, column: 11)
!2518 = distinct !DILexicalBlock(scope: !2502, file: !2436, line: 135, column: 5)
!2519 = !DILocation(line: 118, column: 90, scope: !2504, inlinedAt: !2516)
!2520 = !DILocation(line: 118, column: 100, scope: !2504, inlinedAt: !2516)
!2521 = !DILocation(line: 120, column: 7, scope: !2522, inlinedAt: !2516)
!2522 = !DILexicalBlockFile(scope: !2523, file: !2436, discriminator: 2)
!2523 = distinct !DILexicalBlock(scope: !2504, file: !2436, line: 120, column: 7)
!2524 = !DILocation(line: 120, column: 7, scope: !2525, inlinedAt: !2516)
!2525 = !DILexicalBlockFile(scope: !2504, file: !2436, discriminator: 2)
!2526 = !DILocalVariable(name: "s2", arg: 2, scope: !2527, file: !2436, line: 104, type: !44)
!2527 = distinct !DISubprogram(name: "strcaseeq4", scope: !2436, file: !2436, line: 104, type: !2528, isLocal: true, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, unit: !121, variables: !2530)
!2528 = !DISubroutineType(types: !2529)
!2529 = !{!74, !44, !44, !29, !29, !29, !29, !29}
!2530 = !{!2531, !2526, !2532, !2533, !2534, !2535, !2536}
!2531 = !DILocalVariable(name: "s1", arg: 1, scope: !2527, file: !2436, line: 104, type: !44)
!2532 = !DILocalVariable(name: "s24", arg: 3, scope: !2527, file: !2436, line: 104, type: !29)
!2533 = !DILocalVariable(name: "s25", arg: 4, scope: !2527, file: !2436, line: 104, type: !29)
!2534 = !DILocalVariable(name: "s26", arg: 5, scope: !2527, file: !2436, line: 104, type: !29)
!2535 = !DILocalVariable(name: "s27", arg: 6, scope: !2527, file: !2436, line: 104, type: !29)
!2536 = !DILocalVariable(name: "s28", arg: 7, scope: !2527, file: !2436, line: 104, type: !29)
!2537 = !DILocation(line: 104, column: 41, scope: !2527, inlinedAt: !2538)
!2538 = distinct !DILocation(line: 125, column: 16, scope: !2539, inlinedAt: !2516)
!2539 = distinct !DILexicalBlock(scope: !2540, file: !2436, line: 122, column: 11)
!2540 = distinct !DILexicalBlock(scope: !2523, file: !2436, line: 121, column: 5)
!2541 = !DILocation(line: 104, column: 80, scope: !2527, inlinedAt: !2538)
!2542 = !DILocation(line: 104, column: 90, scope: !2527, inlinedAt: !2538)
!2543 = !DILocation(line: 106, column: 7, scope: !2544, inlinedAt: !2538)
!2544 = !DILexicalBlockFile(scope: !2545, file: !2436, discriminator: 2)
!2545 = distinct !DILexicalBlock(scope: !2527, file: !2436, line: 106, column: 7)
!2546 = !DILocation(line: 106, column: 7, scope: !2547, inlinedAt: !2538)
!2547 = !DILexicalBlockFile(scope: !2527, file: !2436, discriminator: 2)
!2548 = !DILocalVariable(name: "s2", arg: 2, scope: !2549, file: !2436, line: 90, type: !44)
!2549 = distinct !DISubprogram(name: "strcaseeq5", scope: !2436, file: !2436, line: 90, type: !2550, isLocal: true, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: true, unit: !121, variables: !2552)
!2550 = !DISubroutineType(types: !2551)
!2551 = !{!74, !44, !44, !29, !29, !29, !29}
!2552 = !{!2553, !2548, !2554, !2555, !2556, !2557}
!2553 = !DILocalVariable(name: "s1", arg: 1, scope: !2549, file: !2436, line: 90, type: !44)
!2554 = !DILocalVariable(name: "s25", arg: 3, scope: !2549, file: !2436, line: 90, type: !29)
!2555 = !DILocalVariable(name: "s26", arg: 4, scope: !2549, file: !2436, line: 90, type: !29)
!2556 = !DILocalVariable(name: "s27", arg: 5, scope: !2549, file: !2436, line: 90, type: !29)
!2557 = !DILocalVariable(name: "s28", arg: 6, scope: !2549, file: !2436, line: 90, type: !29)
!2558 = !DILocation(line: 90, column: 41, scope: !2549, inlinedAt: !2559)
!2559 = distinct !DILocation(line: 111, column: 16, scope: !2560, inlinedAt: !2538)
!2560 = distinct !DILexicalBlock(scope: !2561, file: !2436, line: 108, column: 11)
!2561 = distinct !DILexicalBlock(scope: !2545, file: !2436, line: 107, column: 5)
!2562 = !DILocation(line: 90, column: 70, scope: !2549, inlinedAt: !2559)
!2563 = !DILocation(line: 90, column: 80, scope: !2549, inlinedAt: !2559)
!2564 = !DILocation(line: 92, column: 7, scope: !2565, inlinedAt: !2559)
!2565 = !DILexicalBlockFile(scope: !2566, file: !2436, discriminator: 2)
!2566 = distinct !DILexicalBlock(scope: !2549, file: !2436, line: 92, column: 7)
!2567 = !DILocation(line: 92, column: 7, scope: !2568, inlinedAt: !2559)
!2568 = !DILexicalBlockFile(scope: !2549, file: !2436, discriminator: 2)
!2569 = !DILocation(line: 227, column: 12, scope: !2452)
!2570 = !DILocation(line: 227, column: 21, scope: !2452)
!2571 = !DILocation(line: 227, column: 5, scope: !2452)
!2572 = !DILocation(line: 146, column: 41, scope: !2459, inlinedAt: !2573)
!2573 = distinct !DILocation(line: 167, column: 16, scope: !2474, inlinedAt: !2574)
!2574 = distinct !DILocation(line: 228, column: 7, scope: !2575)
!2575 = distinct !DILexicalBlock(scope: !2417, file: !149, line: 228, column: 7)
!2576 = !DILocation(line: 146, column: 110, scope: !2459, inlinedAt: !2573)
!2577 = !DILocation(line: 146, column: 120, scope: !2459, inlinedAt: !2573)
!2578 = !DILocation(line: 148, column: 7, scope: !2479, inlinedAt: !2573)
!2579 = !DILocation(line: 132, column: 41, scope: !2482, inlinedAt: !2580)
!2580 = distinct !DILocation(line: 153, column: 16, scope: !2496, inlinedAt: !2573)
!2581 = !DILocation(line: 132, column: 100, scope: !2482, inlinedAt: !2580)
!2582 = !DILocation(line: 132, column: 110, scope: !2482, inlinedAt: !2580)
!2583 = !DILocation(line: 134, column: 7, scope: !2584, inlinedAt: !2580)
!2584 = !DILexicalBlockFile(scope: !2502, file: !2436, discriminator: 2)
!2585 = !DILocation(line: 134, column: 7, scope: !2586, inlinedAt: !2580)
!2586 = !DILexicalBlockFile(scope: !2482, file: !2436, discriminator: 2)
!2587 = !DILocation(line: 118, column: 41, scope: !2504, inlinedAt: !2588)
!2588 = distinct !DILocation(line: 139, column: 16, scope: !2517, inlinedAt: !2580)
!2589 = !DILocation(line: 118, column: 90, scope: !2504, inlinedAt: !2588)
!2590 = !DILocation(line: 118, column: 100, scope: !2504, inlinedAt: !2588)
!2591 = !DILocation(line: 120, column: 7, scope: !2522, inlinedAt: !2588)
!2592 = !DILocation(line: 120, column: 7, scope: !2525, inlinedAt: !2588)
!2593 = !DILocation(line: 104, column: 41, scope: !2527, inlinedAt: !2594)
!2594 = distinct !DILocation(line: 125, column: 16, scope: !2539, inlinedAt: !2588)
!2595 = !DILocation(line: 104, column: 80, scope: !2527, inlinedAt: !2594)
!2596 = !DILocation(line: 104, column: 90, scope: !2527, inlinedAt: !2594)
!2597 = !DILocation(line: 106, column: 7, scope: !2544, inlinedAt: !2594)
!2598 = !DILocation(line: 106, column: 7, scope: !2547, inlinedAt: !2594)
!2599 = !DILocation(line: 90, column: 41, scope: !2549, inlinedAt: !2600)
!2600 = distinct !DILocation(line: 111, column: 16, scope: !2560, inlinedAt: !2594)
!2601 = !DILocation(line: 90, column: 70, scope: !2549, inlinedAt: !2600)
!2602 = !DILocation(line: 90, column: 80, scope: !2549, inlinedAt: !2600)
!2603 = !DILocation(line: 92, column: 7, scope: !2565, inlinedAt: !2600)
!2604 = !DILocation(line: 92, column: 7, scope: !2568, inlinedAt: !2600)
!2605 = !DILocalVariable(name: "s2", arg: 2, scope: !2606, file: !2436, line: 76, type: !44)
!2606 = distinct !DISubprogram(name: "strcaseeq6", scope: !2436, file: !2436, line: 76, type: !2607, isLocal: true, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: true, unit: !121, variables: !2609)
!2607 = !DISubroutineType(types: !2608)
!2608 = !{!74, !44, !44, !29, !29, !29}
!2609 = !{!2610, !2605, !2611, !2612, !2613}
!2610 = !DILocalVariable(name: "s1", arg: 1, scope: !2606, file: !2436, line: 76, type: !44)
!2611 = !DILocalVariable(name: "s26", arg: 3, scope: !2606, file: !2436, line: 76, type: !29)
!2612 = !DILocalVariable(name: "s27", arg: 4, scope: !2606, file: !2436, line: 76, type: !29)
!2613 = !DILocalVariable(name: "s28", arg: 5, scope: !2606, file: !2436, line: 76, type: !29)
!2614 = !DILocation(line: 76, column: 41, scope: !2606, inlinedAt: !2615)
!2615 = distinct !DILocation(line: 97, column: 16, scope: !2616, inlinedAt: !2600)
!2616 = distinct !DILexicalBlock(scope: !2617, file: !2436, line: 94, column: 11)
!2617 = distinct !DILexicalBlock(scope: !2566, file: !2436, line: 93, column: 5)
!2618 = !DILocation(line: 76, column: 60, scope: !2606, inlinedAt: !2615)
!2619 = !DILocation(line: 76, column: 70, scope: !2606, inlinedAt: !2615)
!2620 = !DILocation(line: 78, column: 7, scope: !2621, inlinedAt: !2615)
!2621 = !DILexicalBlockFile(scope: !2622, file: !2436, discriminator: 2)
!2622 = distinct !DILexicalBlock(scope: !2606, file: !2436, line: 78, column: 7)
!2623 = !DILocation(line: 78, column: 7, scope: !2624, inlinedAt: !2615)
!2624 = !DILexicalBlockFile(scope: !2606, file: !2436, discriminator: 2)
!2625 = !DILocalVariable(name: "s2", arg: 2, scope: !2626, file: !2436, line: 62, type: !44)
!2626 = distinct !DISubprogram(name: "strcaseeq7", scope: !2436, file: !2436, line: 62, type: !2627, isLocal: true, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: true, unit: !121, variables: !2629)
!2627 = !DISubroutineType(types: !2628)
!2628 = !{!74, !44, !44, !29, !29}
!2629 = !{!2630, !2625, !2631, !2632}
!2630 = !DILocalVariable(name: "s1", arg: 1, scope: !2626, file: !2436, line: 62, type: !44)
!2631 = !DILocalVariable(name: "s27", arg: 3, scope: !2626, file: !2436, line: 62, type: !29)
!2632 = !DILocalVariable(name: "s28", arg: 4, scope: !2626, file: !2436, line: 62, type: !29)
!2633 = !DILocation(line: 62, column: 41, scope: !2626, inlinedAt: !2634)
!2634 = distinct !DILocation(line: 83, column: 16, scope: !2635, inlinedAt: !2615)
!2635 = distinct !DILexicalBlock(scope: !2636, file: !2436, line: 80, column: 11)
!2636 = distinct !DILexicalBlock(scope: !2622, file: !2436, line: 79, column: 5)
!2637 = !DILocation(line: 62, column: 50, scope: !2626, inlinedAt: !2634)
!2638 = !DILocation(line: 62, column: 60, scope: !2626, inlinedAt: !2634)
!2639 = !DILocation(line: 64, column: 7, scope: !2640, inlinedAt: !2634)
!2640 = !DILexicalBlockFile(scope: !2641, file: !2436, discriminator: 2)
!2641 = distinct !DILexicalBlock(scope: !2626, file: !2436, line: 64, column: 7)
!2642 = !DILocation(line: 228, column: 7, scope: !2417)
!2643 = !DILocation(line: 229, column: 12, scope: !2575)
!2644 = !DILocation(line: 229, column: 21, scope: !2575)
!2645 = !DILocation(line: 229, column: 5, scope: !2575)
!2646 = !DILocation(line: 231, column: 13, scope: !2417)
!2647 = !DILocation(line: 231, column: 11, scope: !2417)
!2648 = !DILocation(line: 231, column: 3, scope: !2417)
!2649 = !DILocation(line: 232, column: 1, scope: !2417)
!2650 = distinct !DISubprogram(name: "quotearg_alloc", scope: !149, file: !149, line: 791, type: !2651, isLocal: false, isDefinition: true, scopeLine: 793, flags: DIFlagPrototyped, isOptimized: true, unit: !121, variables: !2653)
!2651 = !DISubroutineType(types: !2652)
!2652 = !{!28, !44, !37, !1491}
!2653 = !{!2654, !2655, !2656}
!2654 = !DILocalVariable(name: "arg", arg: 1, scope: !2650, file: !149, line: 791, type: !44)
!2655 = !DILocalVariable(name: "argsize", arg: 2, scope: !2650, file: !149, line: 791, type: !37)
!2656 = !DILocalVariable(name: "o", arg: 3, scope: !2650, file: !149, line: 792, type: !1491)
!2657 = !DILocation(line: 791, column: 29, scope: !2650)
!2658 = !DILocation(line: 791, column: 41, scope: !2650)
!2659 = !DILocation(line: 792, column: 47, scope: !2650)
!2660 = !DILocalVariable(name: "arg", arg: 1, scope: !2661, file: !149, line: 804, type: !44)
!2661 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !149, file: !149, line: 804, type: !2662, isLocal: false, isDefinition: true, scopeLine: 806, flags: DIFlagPrototyped, isOptimized: true, unit: !121, variables: !2664)
!2662 = !DISubroutineType(types: !2663)
!2663 = !{!28, !44, !37, !574, !1491}
!2664 = !{!2660, !2665, !2666, !2667, !2668, !2669, !2670, !2671, !2672}
!2665 = !DILocalVariable(name: "argsize", arg: 2, scope: !2661, file: !149, line: 804, type: !37)
!2666 = !DILocalVariable(name: "size", arg: 3, scope: !2661, file: !149, line: 804, type: !574)
!2667 = !DILocalVariable(name: "o", arg: 4, scope: !2661, file: !149, line: 805, type: !1491)
!2668 = !DILocalVariable(name: "p", scope: !2661, file: !149, line: 807, type: !1491)
!2669 = !DILocalVariable(name: "e", scope: !2661, file: !149, line: 808, type: !74)
!2670 = !DILocalVariable(name: "flags", scope: !2661, file: !149, line: 810, type: !74)
!2671 = !DILocalVariable(name: "bufsize", scope: !2661, file: !149, line: 811, type: !37)
!2672 = !DILocalVariable(name: "buf", scope: !2661, file: !149, line: 815, type: !28)
!2673 = !DILocation(line: 804, column: 33, scope: !2661, inlinedAt: !2674)
!2674 = distinct !DILocation(line: 794, column: 10, scope: !2650)
!2675 = !DILocation(line: 804, column: 45, scope: !2661, inlinedAt: !2674)
!2676 = !DILocation(line: 804, column: 62, scope: !2661, inlinedAt: !2674)
!2677 = !DILocation(line: 805, column: 51, scope: !2661, inlinedAt: !2674)
!2678 = !DILocation(line: 807, column: 37, scope: !2661, inlinedAt: !2674)
!2679 = !DILocation(line: 807, column: 33, scope: !2661, inlinedAt: !2674)
!2680 = !DILocation(line: 808, column: 11, scope: !2661, inlinedAt: !2674)
!2681 = !DILocation(line: 808, column: 7, scope: !2661, inlinedAt: !2674)
!2682 = !DILocation(line: 810, column: 18, scope: !2661, inlinedAt: !2674)
!2683 = !DILocation(line: 810, column: 24, scope: !2661, inlinedAt: !2674)
!2684 = !DILocation(line: 810, column: 7, scope: !2661, inlinedAt: !2674)
!2685 = !DILocation(line: 811, column: 69, scope: !2661, inlinedAt: !2674)
!2686 = !DILocation(line: 812, column: 53, scope: !2661, inlinedAt: !2674)
!2687 = !DILocation(line: 813, column: 49, scope: !2661, inlinedAt: !2674)
!2688 = !DILocation(line: 814, column: 49, scope: !2661, inlinedAt: !2674)
!2689 = !DILocation(line: 811, column: 20, scope: !2661, inlinedAt: !2674)
!2690 = !DILocation(line: 814, column: 62, scope: !2661, inlinedAt: !2674)
!2691 = !DILocation(line: 811, column: 10, scope: !2661, inlinedAt: !2674)
!2692 = !DILocalVariable(name: "n", arg: 1, scope: !2693, file: !570, line: 220, type: !37)
!2693 = distinct !DISubprogram(name: "xcharalloc", scope: !570, file: !570, line: 220, type: !2694, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !121, variables: !2696)
!2694 = !DISubroutineType(types: !2695)
!2695 = !{!28, !37}
!2696 = !{!2692}
!2697 = !DILocation(line: 220, column: 20, scope: !2693, inlinedAt: !2698)
!2698 = distinct !DILocation(line: 815, column: 15, scope: !2661, inlinedAt: !2674)
!2699 = !DILocation(line: 222, column: 10, scope: !2693, inlinedAt: !2698)
!2700 = !DILocation(line: 815, column: 9, scope: !2661, inlinedAt: !2674)
!2701 = !DILocation(line: 816, column: 60, scope: !2661, inlinedAt: !2674)
!2702 = !DILocation(line: 818, column: 32, scope: !2661, inlinedAt: !2674)
!2703 = !DILocation(line: 818, column: 47, scope: !2661, inlinedAt: !2674)
!2704 = !DILocation(line: 816, column: 3, scope: !2661, inlinedAt: !2674)
!2705 = !DILocation(line: 819, column: 9, scope: !2661, inlinedAt: !2674)
!2706 = !DILocation(line: 794, column: 3, scope: !2650)
!2707 = !DILocation(line: 804, column: 33, scope: !2661)
!2708 = !DILocation(line: 804, column: 45, scope: !2661)
!2709 = !DILocation(line: 804, column: 62, scope: !2661)
!2710 = !DILocation(line: 805, column: 51, scope: !2661)
!2711 = !DILocation(line: 807, column: 37, scope: !2661)
!2712 = !DILocation(line: 807, column: 33, scope: !2661)
!2713 = !DILocation(line: 808, column: 11, scope: !2661)
!2714 = !DILocation(line: 808, column: 7, scope: !2661)
!2715 = !DILocation(line: 810, column: 18, scope: !2661)
!2716 = !DILocation(line: 810, column: 27, scope: !2661)
!2717 = !DILocation(line: 810, column: 24, scope: !2661)
!2718 = !DILocation(line: 810, column: 7, scope: !2661)
!2719 = !DILocation(line: 811, column: 69, scope: !2661)
!2720 = !DILocation(line: 812, column: 53, scope: !2661)
!2721 = !DILocation(line: 813, column: 49, scope: !2661)
!2722 = !DILocation(line: 814, column: 49, scope: !2661)
!2723 = !DILocation(line: 811, column: 20, scope: !2661)
!2724 = !DILocation(line: 814, column: 62, scope: !2661)
!2725 = !DILocation(line: 811, column: 10, scope: !2661)
!2726 = !DILocation(line: 220, column: 20, scope: !2693, inlinedAt: !2727)
!2727 = distinct !DILocation(line: 815, column: 15, scope: !2661)
!2728 = !DILocation(line: 222, column: 10, scope: !2693, inlinedAt: !2727)
!2729 = !DILocation(line: 815, column: 9, scope: !2661)
!2730 = !DILocation(line: 816, column: 60, scope: !2661)
!2731 = !DILocation(line: 818, column: 32, scope: !2661)
!2732 = !DILocation(line: 818, column: 47, scope: !2661)
!2733 = !DILocation(line: 816, column: 3, scope: !2661)
!2734 = !DILocation(line: 819, column: 9, scope: !2661)
!2735 = !DILocation(line: 820, column: 7, scope: !2661)
!2736 = !DILocation(line: 821, column: 11, scope: !2737)
!2737 = distinct !DILexicalBlock(scope: !2661, file: !149, line: 820, column: 7)
!2738 = !DILocation(line: 821, column: 5, scope: !2737)
!2739 = !DILocation(line: 822, column: 3, scope: !2661)
!2740 = distinct !DISubprogram(name: "quotearg_free", scope: !149, file: !149, line: 840, type: !638, isLocal: false, isDefinition: true, scopeLine: 841, flags: DIFlagPrototyped, isOptimized: true, unit: !121, variables: !2741)
!2741 = !{!2742, !2743}
!2742 = !DILocalVariable(name: "sv", scope: !2740, file: !149, line: 842, type: !175)
!2743 = !DILocalVariable(name: "i", scope: !2740, file: !149, line: 843, type: !74)
!2744 = !DILocation(line: 842, column: 24, scope: !2740)
!2745 = !DILocation(line: 842, column: 19, scope: !2740)
!2746 = !DILocation(line: 843, column: 7, scope: !2740)
!2747 = !DILocation(line: 844, column: 19, scope: !2748)
!2748 = !DILexicalBlockFile(scope: !2749, file: !149, discriminator: 1)
!2749 = distinct !DILexicalBlock(scope: !2750, file: !149, line: 844, column: 3)
!2750 = distinct !DILexicalBlock(scope: !2740, file: !149, line: 844, column: 3)
!2751 = !DILocation(line: 844, column: 17, scope: !2748)
!2752 = !DILocation(line: 844, column: 3, scope: !2753)
!2753 = !DILexicalBlockFile(scope: !2750, file: !149, discriminator: 1)
!2754 = !DILocation(line: 845, column: 17, scope: !2749)
!2755 = !{!2756, !623, i64 8}
!2756 = !{!"slotvec", !860, i64 0, !623, i64 8}
!2757 = !DILocation(line: 845, column: 5, scope: !2749)
!2758 = !DILocation(line: 844, column: 28, scope: !2759)
!2759 = !DILexicalBlockFile(scope: !2749, file: !149, discriminator: 2)
!2760 = distinct !{!2760, !2761, !2762}
!2761 = !DILocation(line: 844, column: 3, scope: !2750)
!2762 = !DILocation(line: 845, column: 20, scope: !2750)
!2763 = !DILocation(line: 846, column: 13, scope: !2764)
!2764 = distinct !DILexicalBlock(scope: !2740, file: !149, line: 846, column: 7)
!2765 = !DILocation(line: 846, column: 17, scope: !2764)
!2766 = !DILocation(line: 846, column: 7, scope: !2740)
!2767 = !DILocation(line: 848, column: 7, scope: !2768)
!2768 = distinct !DILexicalBlock(scope: !2764, file: !149, line: 847, column: 5)
!2769 = !DILocation(line: 849, column: 21, scope: !2768)
!2770 = !{!2756, !860, i64 0}
!2771 = !DILocation(line: 850, column: 20, scope: !2768)
!2772 = !DILocation(line: 851, column: 5, scope: !2768)
!2773 = !DILocation(line: 852, column: 10, scope: !2774)
!2774 = distinct !DILexicalBlock(scope: !2740, file: !149, line: 852, column: 7)
!2775 = !DILocation(line: 852, column: 7, scope: !2740)
!2776 = !DILocation(line: 854, column: 13, scope: !2777)
!2777 = distinct !DILexicalBlock(scope: !2774, file: !149, line: 853, column: 5)
!2778 = !DILocation(line: 854, column: 7, scope: !2777)
!2779 = !DILocation(line: 855, column: 15, scope: !2777)
!2780 = !DILocation(line: 856, column: 5, scope: !2777)
!2781 = !DILocation(line: 857, column: 10, scope: !2740)
!2782 = !DILocation(line: 858, column: 1, scope: !2740)
!2783 = distinct !DISubprogram(name: "quotearg_n", scope: !149, file: !149, line: 922, type: !2784, isLocal: false, isDefinition: true, scopeLine: 923, flags: DIFlagPrototyped, isOptimized: true, unit: !121, variables: !2786)
!2784 = !DISubroutineType(types: !2785)
!2785 = !{!28, !74, !44}
!2786 = !{!2787, !2788}
!2787 = !DILocalVariable(name: "n", arg: 1, scope: !2783, file: !149, line: 922, type: !74)
!2788 = !DILocalVariable(name: "arg", arg: 2, scope: !2783, file: !149, line: 922, type: !44)
!2789 = !DILocation(line: 922, column: 17, scope: !2783)
!2790 = !DILocation(line: 922, column: 32, scope: !2783)
!2791 = !DILocation(line: 924, column: 10, scope: !2783)
!2792 = !DILocation(line: 924, column: 3, scope: !2783)
!2793 = distinct !DISubprogram(name: "quotearg_n_options", scope: !149, file: !149, line: 869, type: !2794, isLocal: true, isDefinition: true, scopeLine: 871, flags: DIFlagPrototyped, isOptimized: true, unit: !121, variables: !2796)
!2794 = !DISubroutineType(types: !2795)
!2795 = !{!28, !74, !44, !37, !1491}
!2796 = !{!2797, !2798, !2799, !2800, !2801, !2802, !2803, !2806, !2808, !2809, !2810}
!2797 = !DILocalVariable(name: "n", arg: 1, scope: !2793, file: !149, line: 869, type: !74)
!2798 = !DILocalVariable(name: "arg", arg: 2, scope: !2793, file: !149, line: 869, type: !44)
!2799 = !DILocalVariable(name: "argsize", arg: 3, scope: !2793, file: !149, line: 869, type: !37)
!2800 = !DILocalVariable(name: "options", arg: 4, scope: !2793, file: !149, line: 870, type: !1491)
!2801 = !DILocalVariable(name: "e", scope: !2793, file: !149, line: 872, type: !74)
!2802 = !DILocalVariable(name: "sv", scope: !2793, file: !149, line: 874, type: !175)
!2803 = !DILocalVariable(name: "preallocated", scope: !2804, file: !149, line: 881, type: !104)
!2804 = distinct !DILexicalBlock(scope: !2805, file: !149, line: 880, column: 5)
!2805 = distinct !DILexicalBlock(scope: !2793, file: !149, line: 879, column: 7)
!2806 = !DILocalVariable(name: "size", scope: !2807, file: !149, line: 894, type: !37)
!2807 = distinct !DILexicalBlock(scope: !2793, file: !149, line: 893, column: 3)
!2808 = !DILocalVariable(name: "val", scope: !2807, file: !149, line: 895, type: !28)
!2809 = !DILocalVariable(name: "flags", scope: !2807, file: !149, line: 897, type: !74)
!2810 = !DILocalVariable(name: "qsize", scope: !2807, file: !149, line: 898, type: !37)
!2811 = !DILocation(line: 869, column: 25, scope: !2793)
!2812 = !DILocation(line: 869, column: 40, scope: !2793)
!2813 = !DILocation(line: 869, column: 52, scope: !2793)
!2814 = !DILocation(line: 870, column: 51, scope: !2793)
!2815 = !DILocation(line: 872, column: 11, scope: !2793)
!2816 = !DILocation(line: 872, column: 7, scope: !2793)
!2817 = !DILocation(line: 874, column: 24, scope: !2793)
!2818 = !DILocation(line: 874, column: 19, scope: !2793)
!2819 = !DILocation(line: 876, column: 9, scope: !2820)
!2820 = distinct !DILexicalBlock(scope: !2793, file: !149, line: 876, column: 7)
!2821 = !DILocation(line: 876, column: 7, scope: !2793)
!2822 = !DILocation(line: 877, column: 5, scope: !2820)
!2823 = !DILocation(line: 879, column: 7, scope: !2805)
!2824 = !DILocation(line: 879, column: 14, scope: !2805)
!2825 = !DILocation(line: 879, column: 7, scope: !2793)
!2826 = !DILocation(line: 881, column: 31, scope: !2804)
!2827 = !DILocation(line: 883, column: 67, scope: !2828)
!2828 = distinct !DILexicalBlock(scope: !2804, file: !149, line: 883, column: 11)
!2829 = !DILocation(line: 883, column: 11, scope: !2804)
!2830 = !DILocation(line: 884, column: 9, scope: !2828)
!2831 = !DILocation(line: 886, column: 32, scope: !2832)
!2832 = !DILexicalBlockFile(scope: !2804, file: !149, discriminator: 3)
!2833 = !DILocation(line: 886, column: 61, scope: !2832)
!2834 = !DILocation(line: 886, column: 58, scope: !2832)
!2835 = !DILocation(line: 886, column: 66, scope: !2832)
!2836 = !DILocation(line: 886, column: 22, scope: !2832)
!2837 = !DILocation(line: 886, column: 15, scope: !2832)
!2838 = !DILocation(line: 887, column: 11, scope: !2804)
!2839 = !DILocation(line: 888, column: 15, scope: !2840)
!2840 = distinct !DILexicalBlock(scope: !2804, file: !149, line: 887, column: 11)
!2841 = !{i64 0, i64 8, !859, i64 8, i64 8, !622}
!2842 = !DILocation(line: 888, column: 9, scope: !2840)
!2843 = !DILocation(line: 889, column: 20, scope: !2804)
!2844 = !DILocation(line: 889, column: 18, scope: !2804)
!2845 = !DILocation(line: 889, column: 7, scope: !2804)
!2846 = !DILocation(line: 889, column: 38, scope: !2804)
!2847 = !DILocation(line: 889, column: 31, scope: !2804)
!2848 = !DILocation(line: 889, column: 48, scope: !2804)
!2849 = !DILocation(line: 890, column: 14, scope: !2804)
!2850 = !DILocation(line: 891, column: 5, scope: !2804)
!2851 = !DILocation(line: 894, column: 19, scope: !2807)
!2852 = !DILocation(line: 894, column: 25, scope: !2807)
!2853 = !DILocation(line: 894, column: 12, scope: !2807)
!2854 = !DILocation(line: 895, column: 23, scope: !2807)
!2855 = !DILocation(line: 895, column: 11, scope: !2807)
!2856 = !DILocation(line: 897, column: 26, scope: !2807)
!2857 = !DILocation(line: 897, column: 32, scope: !2807)
!2858 = !DILocation(line: 897, column: 9, scope: !2807)
!2859 = !DILocation(line: 899, column: 55, scope: !2807)
!2860 = !DILocation(line: 900, column: 46, scope: !2807)
!2861 = !DILocation(line: 901, column: 55, scope: !2807)
!2862 = !DILocation(line: 902, column: 55, scope: !2807)
!2863 = !DILocation(line: 898, column: 20, scope: !2807)
!2864 = !DILocation(line: 898, column: 12, scope: !2807)
!2865 = !DILocation(line: 904, column: 14, scope: !2866)
!2866 = distinct !DILexicalBlock(scope: !2807, file: !149, line: 904, column: 9)
!2867 = !DILocation(line: 904, column: 9, scope: !2807)
!2868 = !DILocation(line: 906, column: 35, scope: !2869)
!2869 = distinct !DILexicalBlock(scope: !2866, file: !149, line: 905, column: 7)
!2870 = !DILocation(line: 906, column: 20, scope: !2869)
!2871 = !DILocation(line: 907, column: 17, scope: !2872)
!2872 = distinct !DILexicalBlock(scope: !2869, file: !149, line: 907, column: 13)
!2873 = !DILocation(line: 907, column: 13, scope: !2869)
!2874 = !DILocation(line: 908, column: 11, scope: !2872)
!2875 = !DILocation(line: 220, column: 20, scope: !2693, inlinedAt: !2876)
!2876 = distinct !DILocation(line: 909, column: 27, scope: !2869)
!2877 = !DILocation(line: 222, column: 10, scope: !2693, inlinedAt: !2876)
!2878 = !DILocation(line: 909, column: 19, scope: !2869)
!2879 = !DILocation(line: 910, column: 69, scope: !2869)
!2880 = !DILocation(line: 912, column: 44, scope: !2869)
!2881 = !DILocation(line: 913, column: 44, scope: !2869)
!2882 = !DILocation(line: 910, column: 9, scope: !2869)
!2883 = !DILocation(line: 914, column: 7, scope: !2869)
!2884 = !DILocation(line: 916, column: 11, scope: !2807)
!2885 = !DILocation(line: 917, column: 5, scope: !2807)
!2886 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !149, file: !149, line: 928, type: !2887, isLocal: false, isDefinition: true, scopeLine: 929, flags: DIFlagPrototyped, isOptimized: true, unit: !121, variables: !2889)
!2887 = !DISubroutineType(types: !2888)
!2888 = !{!28, !74, !44, !37}
!2889 = !{!2890, !2891, !2892}
!2890 = !DILocalVariable(name: "n", arg: 1, scope: !2886, file: !149, line: 928, type: !74)
!2891 = !DILocalVariable(name: "arg", arg: 2, scope: !2886, file: !149, line: 928, type: !44)
!2892 = !DILocalVariable(name: "argsize", arg: 3, scope: !2886, file: !149, line: 928, type: !37)
!2893 = !DILocation(line: 928, column: 21, scope: !2886)
!2894 = !DILocation(line: 928, column: 36, scope: !2886)
!2895 = !DILocation(line: 928, column: 48, scope: !2886)
!2896 = !DILocation(line: 930, column: 10, scope: !2886)
!2897 = !DILocation(line: 930, column: 3, scope: !2886)
!2898 = distinct !DISubprogram(name: "quotearg", scope: !149, file: !149, line: 934, type: !2899, isLocal: false, isDefinition: true, scopeLine: 935, flags: DIFlagPrototyped, isOptimized: true, unit: !121, variables: !2901)
!2899 = !DISubroutineType(types: !2900)
!2900 = !{!28, !44}
!2901 = !{!2902}
!2902 = !DILocalVariable(name: "arg", arg: 1, scope: !2898, file: !149, line: 934, type: !44)
!2903 = !DILocation(line: 934, column: 23, scope: !2898)
!2904 = !DILocation(line: 922, column: 17, scope: !2783, inlinedAt: !2905)
!2905 = distinct !DILocation(line: 936, column: 10, scope: !2898)
!2906 = !DILocation(line: 922, column: 32, scope: !2783, inlinedAt: !2905)
!2907 = !DILocation(line: 924, column: 10, scope: !2783, inlinedAt: !2905)
!2908 = !DILocation(line: 936, column: 3, scope: !2898)
!2909 = distinct !DISubprogram(name: "quotearg_mem", scope: !149, file: !149, line: 940, type: !2910, isLocal: false, isDefinition: true, scopeLine: 941, flags: DIFlagPrototyped, isOptimized: true, unit: !121, variables: !2912)
!2910 = !DISubroutineType(types: !2911)
!2911 = !{!28, !44, !37}
!2912 = !{!2913, !2914}
!2913 = !DILocalVariable(name: "arg", arg: 1, scope: !2909, file: !149, line: 940, type: !44)
!2914 = !DILocalVariable(name: "argsize", arg: 2, scope: !2909, file: !149, line: 940, type: !37)
!2915 = !DILocation(line: 940, column: 27, scope: !2909)
!2916 = !DILocation(line: 940, column: 39, scope: !2909)
!2917 = !DILocation(line: 928, column: 21, scope: !2886, inlinedAt: !2918)
!2918 = distinct !DILocation(line: 942, column: 10, scope: !2909)
!2919 = !DILocation(line: 928, column: 36, scope: !2886, inlinedAt: !2918)
!2920 = !DILocation(line: 928, column: 48, scope: !2886, inlinedAt: !2918)
!2921 = !DILocation(line: 930, column: 10, scope: !2886, inlinedAt: !2918)
!2922 = !DILocation(line: 942, column: 3, scope: !2909)
!2923 = distinct !DISubprogram(name: "quotearg_n_style", scope: !149, file: !149, line: 946, type: !2924, isLocal: false, isDefinition: true, scopeLine: 947, flags: DIFlagPrototyped, isOptimized: true, unit: !121, variables: !2926)
!2924 = !DISubroutineType(types: !2925)
!2925 = !{!28, !74, !13, !44}
!2926 = !{!2927, !2928, !2929, !2930}
!2927 = !DILocalVariable(name: "n", arg: 1, scope: !2923, file: !149, line: 946, type: !74)
!2928 = !DILocalVariable(name: "s", arg: 2, scope: !2923, file: !149, line: 946, type: !13)
!2929 = !DILocalVariable(name: "arg", arg: 3, scope: !2923, file: !149, line: 946, type: !44)
!2930 = !DILocalVariable(name: "o", scope: !2923, file: !149, line: 948, type: !1492)
!2931 = !DILocalVariable(name: "o", scope: !2932, file: !149, line: 187, type: !156)
!2932 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !149, file: !149, line: 185, type: !2933, isLocal: true, isDefinition: true, scopeLine: 186, flags: DIFlagPrototyped, isOptimized: true, unit: !121, variables: !2935)
!2933 = !DISubroutineType(types: !2934)
!2934 = !{!156, !13}
!2935 = !{!2936, !2931}
!2936 = !DILocalVariable(name: "style", arg: 1, scope: !2932, file: !149, line: 185, type: !13)
!2937 = !DIExpression(DW_OP_LLVM_fragment, 32, 416)
!2938 = !DILocation(line: 187, column: 26, scope: !2932, inlinedAt: !2939)
!2939 = distinct !DILocation(line: 948, column: 36, scope: !2923)
!2940 = !DILocation(line: 946, column: 23, scope: !2923)
!2941 = !DILocation(line: 946, column: 45, scope: !2923)
!2942 = !DILocation(line: 946, column: 60, scope: !2923)
!2943 = !DILocation(line: 948, column: 3, scope: !2923)
!2944 = !DILocation(line: 948, column: 32, scope: !2923)
!2945 = !DILocation(line: 185, column: 48, scope: !2932, inlinedAt: !2939)
!2946 = !DILocation(line: 187, column: 3, scope: !2932, inlinedAt: !2939)
!2947 = !DIExpression(DW_OP_LLVM_fragment, 0, 32)
!2948 = !DILocation(line: 188, column: 13, scope: !2949, inlinedAt: !2939)
!2949 = distinct !DILexicalBlock(scope: !2932, file: !149, line: 188, column: 7)
!2950 = !DILocation(line: 188, column: 7, scope: !2932, inlinedAt: !2939)
!2951 = !DILocation(line: 189, column: 5, scope: !2949, inlinedAt: !2939)
!2952 = !{!2953}
!2953 = distinct !{!2953, !2954, !"quoting_options_from_style: argument 0"}
!2954 = distinct !{!2954, !"quoting_options_from_style"}
!2955 = !DILocation(line: 191, column: 10, scope: !2932, inlinedAt: !2939)
!2956 = !DILocation(line: 192, column: 1, scope: !2932, inlinedAt: !2939)
!2957 = !DILocation(line: 949, column: 10, scope: !2923)
!2958 = !DILocation(line: 950, column: 1, scope: !2923)
!2959 = !DILocation(line: 949, column: 3, scope: !2923)
!2960 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !149, file: !149, line: 953, type: !2961, isLocal: false, isDefinition: true, scopeLine: 955, flags: DIFlagPrototyped, isOptimized: true, unit: !121, variables: !2963)
!2961 = !DISubroutineType(types: !2962)
!2962 = !{!28, !74, !13, !44, !37}
!2963 = !{!2964, !2965, !2966, !2967, !2968}
!2964 = !DILocalVariable(name: "n", arg: 1, scope: !2960, file: !149, line: 953, type: !74)
!2965 = !DILocalVariable(name: "s", arg: 2, scope: !2960, file: !149, line: 953, type: !13)
!2966 = !DILocalVariable(name: "arg", arg: 3, scope: !2960, file: !149, line: 954, type: !44)
!2967 = !DILocalVariable(name: "argsize", arg: 4, scope: !2960, file: !149, line: 954, type: !37)
!2968 = !DILocalVariable(name: "o", scope: !2960, file: !149, line: 956, type: !1492)
!2969 = !DILocation(line: 187, column: 26, scope: !2932, inlinedAt: !2970)
!2970 = distinct !DILocation(line: 956, column: 36, scope: !2960)
!2971 = !DILocation(line: 953, column: 27, scope: !2960)
!2972 = !DILocation(line: 953, column: 49, scope: !2960)
!2973 = !DILocation(line: 954, column: 35, scope: !2960)
!2974 = !DILocation(line: 954, column: 47, scope: !2960)
!2975 = !DILocation(line: 956, column: 3, scope: !2960)
!2976 = !DILocation(line: 956, column: 32, scope: !2960)
!2977 = !DILocation(line: 185, column: 48, scope: !2932, inlinedAt: !2970)
!2978 = !DILocation(line: 187, column: 3, scope: !2932, inlinedAt: !2970)
!2979 = !DILocation(line: 188, column: 13, scope: !2949, inlinedAt: !2970)
!2980 = !DILocation(line: 188, column: 7, scope: !2932, inlinedAt: !2970)
!2981 = !DILocation(line: 189, column: 5, scope: !2949, inlinedAt: !2970)
!2982 = !{!2983}
!2983 = distinct !{!2983, !2984, !"quoting_options_from_style: argument 0"}
!2984 = distinct !{!2984, !"quoting_options_from_style"}
!2985 = !DILocation(line: 191, column: 10, scope: !2932, inlinedAt: !2970)
!2986 = !DILocation(line: 192, column: 1, scope: !2932, inlinedAt: !2970)
!2987 = !DILocation(line: 957, column: 10, scope: !2960)
!2988 = !DILocation(line: 958, column: 1, scope: !2960)
!2989 = !DILocation(line: 957, column: 3, scope: !2960)
!2990 = distinct !DISubprogram(name: "quotearg_style", scope: !149, file: !149, line: 961, type: !2991, isLocal: false, isDefinition: true, scopeLine: 962, flags: DIFlagPrototyped, isOptimized: true, unit: !121, variables: !2993)
!2991 = !DISubroutineType(types: !2992)
!2992 = !{!28, !13, !44}
!2993 = !{!2994, !2995}
!2994 = !DILocalVariable(name: "s", arg: 1, scope: !2990, file: !149, line: 961, type: !13)
!2995 = !DILocalVariable(name: "arg", arg: 2, scope: !2990, file: !149, line: 961, type: !44)
!2996 = !DILocation(line: 187, column: 26, scope: !2932, inlinedAt: !2997)
!2997 = distinct !DILocation(line: 948, column: 36, scope: !2923, inlinedAt: !2998)
!2998 = distinct !DILocation(line: 963, column: 10, scope: !2990)
!2999 = !DILocation(line: 961, column: 36, scope: !2990)
!3000 = !DILocation(line: 961, column: 51, scope: !2990)
!3001 = !DILocation(line: 946, column: 23, scope: !2923, inlinedAt: !2998)
!3002 = !DILocation(line: 946, column: 45, scope: !2923, inlinedAt: !2998)
!3003 = !DILocation(line: 946, column: 60, scope: !2923, inlinedAt: !2998)
!3004 = !DILocation(line: 948, column: 3, scope: !2923, inlinedAt: !2998)
!3005 = !DILocation(line: 948, column: 32, scope: !2923, inlinedAt: !2998)
!3006 = !DILocation(line: 185, column: 48, scope: !2932, inlinedAt: !2997)
!3007 = !DILocation(line: 187, column: 3, scope: !2932, inlinedAt: !2997)
!3008 = !DILocation(line: 188, column: 13, scope: !2949, inlinedAt: !2997)
!3009 = !DILocation(line: 188, column: 7, scope: !2932, inlinedAt: !2997)
!3010 = !DILocation(line: 189, column: 5, scope: !2949, inlinedAt: !2997)
!3011 = !{!3012}
!3012 = distinct !{!3012, !3013, !"quoting_options_from_style: argument 0"}
!3013 = distinct !{!3013, !"quoting_options_from_style"}
!3014 = !DILocation(line: 191, column: 10, scope: !2932, inlinedAt: !2997)
!3015 = !DILocation(line: 192, column: 1, scope: !2932, inlinedAt: !2997)
!3016 = !DILocation(line: 949, column: 10, scope: !2923, inlinedAt: !2998)
!3017 = !DILocation(line: 950, column: 1, scope: !2923, inlinedAt: !2998)
!3018 = !DILocation(line: 963, column: 3, scope: !2990)
!3019 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !149, file: !149, line: 967, type: !3020, isLocal: false, isDefinition: true, scopeLine: 968, flags: DIFlagPrototyped, isOptimized: true, unit: !121, variables: !3022)
!3020 = !DISubroutineType(types: !3021)
!3021 = !{!28, !13, !44, !37}
!3022 = !{!3023, !3024, !3025}
!3023 = !DILocalVariable(name: "s", arg: 1, scope: !3019, file: !149, line: 967, type: !13)
!3024 = !DILocalVariable(name: "arg", arg: 2, scope: !3019, file: !149, line: 967, type: !44)
!3025 = !DILocalVariable(name: "argsize", arg: 3, scope: !3019, file: !149, line: 967, type: !37)
!3026 = !DILocation(line: 187, column: 26, scope: !2932, inlinedAt: !3027)
!3027 = distinct !DILocation(line: 956, column: 36, scope: !2960, inlinedAt: !3028)
!3028 = distinct !DILocation(line: 969, column: 10, scope: !3019)
!3029 = !DILocation(line: 967, column: 40, scope: !3019)
!3030 = !DILocation(line: 967, column: 55, scope: !3019)
!3031 = !DILocation(line: 967, column: 67, scope: !3019)
!3032 = !DILocation(line: 953, column: 27, scope: !2960, inlinedAt: !3028)
!3033 = !DILocation(line: 953, column: 49, scope: !2960, inlinedAt: !3028)
!3034 = !DILocation(line: 954, column: 35, scope: !2960, inlinedAt: !3028)
!3035 = !DILocation(line: 954, column: 47, scope: !2960, inlinedAt: !3028)
!3036 = !DILocation(line: 956, column: 3, scope: !2960, inlinedAt: !3028)
!3037 = !DILocation(line: 956, column: 32, scope: !2960, inlinedAt: !3028)
!3038 = !DILocation(line: 185, column: 48, scope: !2932, inlinedAt: !3027)
!3039 = !DILocation(line: 187, column: 3, scope: !2932, inlinedAt: !3027)
!3040 = !DILocation(line: 188, column: 13, scope: !2949, inlinedAt: !3027)
!3041 = !DILocation(line: 188, column: 7, scope: !2932, inlinedAt: !3027)
!3042 = !DILocation(line: 189, column: 5, scope: !2949, inlinedAt: !3027)
!3043 = !{!3044}
!3044 = distinct !{!3044, !3045, !"quoting_options_from_style: argument 0"}
!3045 = distinct !{!3045, !"quoting_options_from_style"}
!3046 = !DILocation(line: 191, column: 10, scope: !2932, inlinedAt: !3027)
!3047 = !DILocation(line: 192, column: 1, scope: !2932, inlinedAt: !3027)
!3048 = !DILocation(line: 957, column: 10, scope: !2960, inlinedAt: !3028)
!3049 = !DILocation(line: 958, column: 1, scope: !2960, inlinedAt: !3028)
!3050 = !DILocation(line: 969, column: 3, scope: !3019)
!3051 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !149, file: !149, line: 973, type: !3052, isLocal: false, isDefinition: true, scopeLine: 974, flags: DIFlagPrototyped, isOptimized: true, unit: !121, variables: !3054)
!3052 = !DISubroutineType(types: !3053)
!3053 = !{!28, !44, !37, !29}
!3054 = !{!3055, !3056, !3057, !3058}
!3055 = !DILocalVariable(name: "arg", arg: 1, scope: !3051, file: !149, line: 973, type: !44)
!3056 = !DILocalVariable(name: "argsize", arg: 2, scope: !3051, file: !149, line: 973, type: !37)
!3057 = !DILocalVariable(name: "ch", arg: 3, scope: !3051, file: !149, line: 973, type: !29)
!3058 = !DILocalVariable(name: "options", scope: !3051, file: !149, line: 975, type: !156)
!3059 = !DILocation(line: 973, column: 32, scope: !3051)
!3060 = !DILocation(line: 973, column: 44, scope: !3051)
!3061 = !DILocation(line: 973, column: 58, scope: !3051)
!3062 = !DILocation(line: 975, column: 3, scope: !3051)
!3063 = !DILocation(line: 976, column: 13, scope: !3051)
!3064 = !{i64 0, i64 4, !785, i64 4, i64 4, !776, i64 8, i64 32, !785, i64 40, i64 8, !622, i64 48, i64 8, !622}
!3065 = !DILocation(line: 975, column: 26, scope: !3051)
!3066 = !DILocation(line: 144, column: 43, scope: !1515, inlinedAt: !3067)
!3067 = distinct !DILocation(line: 977, column: 3, scope: !3051)
!3068 = !DILocation(line: 144, column: 51, scope: !1515, inlinedAt: !3067)
!3069 = !DILocation(line: 144, column: 58, scope: !1515, inlinedAt: !3067)
!3070 = !DILocation(line: 146, column: 17, scope: !1515, inlinedAt: !3067)
!3071 = !DILocation(line: 148, column: 62, scope: !1533, inlinedAt: !3067)
!3072 = !DILocation(line: 148, column: 57, scope: !1533, inlinedAt: !3067)
!3073 = !DILocation(line: 147, column: 17, scope: !1515, inlinedAt: !3067)
!3074 = !DILocation(line: 149, column: 18, scope: !1515, inlinedAt: !3067)
!3075 = !DILocation(line: 149, column: 15, scope: !1515, inlinedAt: !3067)
!3076 = !DILocation(line: 149, column: 7, scope: !1515, inlinedAt: !3067)
!3077 = !DILocation(line: 150, column: 12, scope: !1515, inlinedAt: !3067)
!3078 = !DILocation(line: 150, column: 15, scope: !1515, inlinedAt: !3067)
!3079 = !DILocation(line: 150, column: 25, scope: !1515, inlinedAt: !3067)
!3080 = !DILocation(line: 150, column: 7, scope: !1515, inlinedAt: !3067)
!3081 = !DILocation(line: 151, column: 18, scope: !1515, inlinedAt: !3067)
!3082 = !DILocation(line: 151, column: 23, scope: !1515, inlinedAt: !3067)
!3083 = !DILocation(line: 151, column: 6, scope: !1515, inlinedAt: !3067)
!3084 = !DILocation(line: 978, column: 10, scope: !3051)
!3085 = !DILocation(line: 979, column: 1, scope: !3051)
!3086 = !DILocation(line: 978, column: 3, scope: !3051)
!3087 = distinct !DISubprogram(name: "quotearg_char", scope: !149, file: !149, line: 982, type: !3088, isLocal: false, isDefinition: true, scopeLine: 983, flags: DIFlagPrototyped, isOptimized: true, unit: !121, variables: !3090)
!3088 = !DISubroutineType(types: !3089)
!3089 = !{!28, !44, !29}
!3090 = !{!3091, !3092}
!3091 = !DILocalVariable(name: "arg", arg: 1, scope: !3087, file: !149, line: 982, type: !44)
!3092 = !DILocalVariable(name: "ch", arg: 2, scope: !3087, file: !149, line: 982, type: !29)
!3093 = !DILocation(line: 982, column: 28, scope: !3087)
!3094 = !DILocation(line: 982, column: 38, scope: !3087)
!3095 = !DILocation(line: 973, column: 32, scope: !3051, inlinedAt: !3096)
!3096 = distinct !DILocation(line: 984, column: 10, scope: !3087)
!3097 = !DILocation(line: 973, column: 44, scope: !3051, inlinedAt: !3096)
!3098 = !DILocation(line: 973, column: 58, scope: !3051, inlinedAt: !3096)
!3099 = !DILocation(line: 975, column: 3, scope: !3051, inlinedAt: !3096)
!3100 = !DILocation(line: 976, column: 13, scope: !3051, inlinedAt: !3096)
!3101 = !DILocation(line: 975, column: 26, scope: !3051, inlinedAt: !3096)
!3102 = !DILocation(line: 144, column: 43, scope: !1515, inlinedAt: !3103)
!3103 = distinct !DILocation(line: 977, column: 3, scope: !3051, inlinedAt: !3096)
!3104 = !DILocation(line: 144, column: 51, scope: !1515, inlinedAt: !3103)
!3105 = !DILocation(line: 144, column: 58, scope: !1515, inlinedAt: !3103)
!3106 = !DILocation(line: 146, column: 17, scope: !1515, inlinedAt: !3103)
!3107 = !DILocation(line: 148, column: 62, scope: !1533, inlinedAt: !3103)
!3108 = !DILocation(line: 148, column: 57, scope: !1533, inlinedAt: !3103)
!3109 = !DILocation(line: 147, column: 17, scope: !1515, inlinedAt: !3103)
!3110 = !DILocation(line: 149, column: 18, scope: !1515, inlinedAt: !3103)
!3111 = !DILocation(line: 149, column: 15, scope: !1515, inlinedAt: !3103)
!3112 = !DILocation(line: 149, column: 7, scope: !1515, inlinedAt: !3103)
!3113 = !DILocation(line: 150, column: 12, scope: !1515, inlinedAt: !3103)
!3114 = !DILocation(line: 150, column: 15, scope: !1515, inlinedAt: !3103)
!3115 = !DILocation(line: 150, column: 25, scope: !1515, inlinedAt: !3103)
!3116 = !DILocation(line: 150, column: 7, scope: !1515, inlinedAt: !3103)
!3117 = !DILocation(line: 151, column: 18, scope: !1515, inlinedAt: !3103)
!3118 = !DILocation(line: 151, column: 23, scope: !1515, inlinedAt: !3103)
!3119 = !DILocation(line: 151, column: 6, scope: !1515, inlinedAt: !3103)
!3120 = !DILocation(line: 978, column: 10, scope: !3051, inlinedAt: !3096)
!3121 = !DILocation(line: 979, column: 1, scope: !3051, inlinedAt: !3096)
!3122 = !DILocation(line: 984, column: 3, scope: !3087)
!3123 = distinct !DISubprogram(name: "quotearg_colon", scope: !149, file: !149, line: 988, type: !2899, isLocal: false, isDefinition: true, scopeLine: 989, flags: DIFlagPrototyped, isOptimized: true, unit: !121, variables: !3124)
!3124 = !{!3125}
!3125 = !DILocalVariable(name: "arg", arg: 1, scope: !3123, file: !149, line: 988, type: !44)
!3126 = !DILocation(line: 988, column: 29, scope: !3123)
!3127 = !DILocation(line: 982, column: 28, scope: !3087, inlinedAt: !3128)
!3128 = distinct !DILocation(line: 990, column: 10, scope: !3123)
!3129 = !DILocation(line: 982, column: 38, scope: !3087, inlinedAt: !3128)
!3130 = !DILocation(line: 973, column: 32, scope: !3051, inlinedAt: !3131)
!3131 = distinct !DILocation(line: 984, column: 10, scope: !3087, inlinedAt: !3128)
!3132 = !DILocation(line: 973, column: 44, scope: !3051, inlinedAt: !3131)
!3133 = !DILocation(line: 973, column: 58, scope: !3051, inlinedAt: !3131)
!3134 = !DILocation(line: 975, column: 3, scope: !3051, inlinedAt: !3131)
!3135 = !DILocation(line: 976, column: 13, scope: !3051, inlinedAt: !3131)
!3136 = !DILocation(line: 975, column: 26, scope: !3051, inlinedAt: !3131)
!3137 = !DILocation(line: 144, column: 43, scope: !1515, inlinedAt: !3138)
!3138 = distinct !DILocation(line: 977, column: 3, scope: !3051, inlinedAt: !3131)
!3139 = !DILocation(line: 144, column: 51, scope: !1515, inlinedAt: !3138)
!3140 = !DILocation(line: 144, column: 58, scope: !1515, inlinedAt: !3138)
!3141 = !DILocation(line: 146, column: 17, scope: !1515, inlinedAt: !3138)
!3142 = !DILocation(line: 148, column: 57, scope: !1533, inlinedAt: !3138)
!3143 = !DILocation(line: 147, column: 17, scope: !1515, inlinedAt: !3138)
!3144 = !DILocation(line: 149, column: 7, scope: !1515, inlinedAt: !3138)
!3145 = !DILocation(line: 150, column: 12, scope: !1515, inlinedAt: !3138)
!3146 = !DILocation(line: 151, column: 6, scope: !1515, inlinedAt: !3138)
!3147 = !DILocation(line: 978, column: 10, scope: !3051, inlinedAt: !3131)
!3148 = !DILocation(line: 979, column: 1, scope: !3051, inlinedAt: !3131)
!3149 = !DILocation(line: 990, column: 3, scope: !3123)
!3150 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !149, file: !149, line: 994, type: !2910, isLocal: false, isDefinition: true, scopeLine: 995, flags: DIFlagPrototyped, isOptimized: true, unit: !121, variables: !3151)
!3151 = !{!3152, !3153}
!3152 = !DILocalVariable(name: "arg", arg: 1, scope: !3150, file: !149, line: 994, type: !44)
!3153 = !DILocalVariable(name: "argsize", arg: 2, scope: !3150, file: !149, line: 994, type: !37)
!3154 = !DILocation(line: 994, column: 33, scope: !3150)
!3155 = !DILocation(line: 994, column: 45, scope: !3150)
!3156 = !DILocation(line: 973, column: 32, scope: !3051, inlinedAt: !3157)
!3157 = distinct !DILocation(line: 996, column: 10, scope: !3150)
!3158 = !DILocation(line: 973, column: 44, scope: !3051, inlinedAt: !3157)
!3159 = !DILocation(line: 973, column: 58, scope: !3051, inlinedAt: !3157)
!3160 = !DILocation(line: 975, column: 3, scope: !3051, inlinedAt: !3157)
!3161 = !DILocation(line: 976, column: 13, scope: !3051, inlinedAt: !3157)
!3162 = !DILocation(line: 975, column: 26, scope: !3051, inlinedAt: !3157)
!3163 = !DILocation(line: 144, column: 43, scope: !1515, inlinedAt: !3164)
!3164 = distinct !DILocation(line: 977, column: 3, scope: !3051, inlinedAt: !3157)
!3165 = !DILocation(line: 144, column: 51, scope: !1515, inlinedAt: !3164)
!3166 = !DILocation(line: 144, column: 58, scope: !1515, inlinedAt: !3164)
!3167 = !DILocation(line: 146, column: 17, scope: !1515, inlinedAt: !3164)
!3168 = !DILocation(line: 148, column: 57, scope: !1533, inlinedAt: !3164)
!3169 = !DILocation(line: 147, column: 17, scope: !1515, inlinedAt: !3164)
!3170 = !DILocation(line: 149, column: 7, scope: !1515, inlinedAt: !3164)
!3171 = !DILocation(line: 150, column: 12, scope: !1515, inlinedAt: !3164)
!3172 = !DILocation(line: 151, column: 6, scope: !1515, inlinedAt: !3164)
!3173 = !DILocation(line: 978, column: 10, scope: !3051, inlinedAt: !3157)
!3174 = !DILocation(line: 979, column: 1, scope: !3051, inlinedAt: !3157)
!3175 = !DILocation(line: 996, column: 3, scope: !3150)
!3176 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !149, file: !149, line: 1000, type: !2924, isLocal: false, isDefinition: true, scopeLine: 1001, flags: DIFlagPrototyped, isOptimized: true, unit: !121, variables: !3177)
!3177 = !{!3178, !3179, !3180, !3181}
!3178 = !DILocalVariable(name: "n", arg: 1, scope: !3176, file: !149, line: 1000, type: !74)
!3179 = !DILocalVariable(name: "s", arg: 2, scope: !3176, file: !149, line: 1000, type: !13)
!3180 = !DILocalVariable(name: "arg", arg: 3, scope: !3176, file: !149, line: 1000, type: !44)
!3181 = !DILocalVariable(name: "options", scope: !3176, file: !149, line: 1002, type: !156)
!3182 = !DILocation(line: 187, column: 26, scope: !2932, inlinedAt: !3183)
!3183 = distinct !DILocation(line: 1003, column: 13, scope: !3176)
!3184 = !DILocation(line: 1000, column: 29, scope: !3176)
!3185 = !DILocation(line: 1000, column: 51, scope: !3176)
!3186 = !DILocation(line: 1000, column: 66, scope: !3176)
!3187 = !DILocation(line: 1002, column: 3, scope: !3176)
!3188 = !DILocation(line: 185, column: 48, scope: !2932, inlinedAt: !3183)
!3189 = !DILocation(line: 187, column: 3, scope: !2932, inlinedAt: !3183)
!3190 = !DILocation(line: 188, column: 13, scope: !2949, inlinedAt: !3183)
!3191 = !DILocation(line: 188, column: 7, scope: !2932, inlinedAt: !3183)
!3192 = !DILocation(line: 189, column: 5, scope: !2949, inlinedAt: !3183)
!3193 = !{!3194}
!3194 = distinct !{!3194, !3195, !"quoting_options_from_style: argument 0"}
!3195 = distinct !{!3195, !"quoting_options_from_style"}
!3196 = !DILocation(line: 191, column: 10, scope: !2932, inlinedAt: !3183)
!3197 = !DILocation(line: 192, column: 1, scope: !2932, inlinedAt: !3183)
!3198 = !DILocation(line: 1003, column: 13, scope: !3176)
!3199 = !DILocation(line: 1002, column: 26, scope: !3176)
!3200 = !DILocation(line: 144, column: 43, scope: !1515, inlinedAt: !3201)
!3201 = distinct !DILocation(line: 1004, column: 3, scope: !3176)
!3202 = !DILocation(line: 144, column: 51, scope: !1515, inlinedAt: !3201)
!3203 = !DILocation(line: 144, column: 58, scope: !1515, inlinedAt: !3201)
!3204 = !DILocation(line: 146, column: 17, scope: !1515, inlinedAt: !3201)
!3205 = !DILocation(line: 148, column: 57, scope: !1533, inlinedAt: !3201)
!3206 = !DILocation(line: 147, column: 17, scope: !1515, inlinedAt: !3201)
!3207 = !DILocation(line: 149, column: 7, scope: !1515, inlinedAt: !3201)
!3208 = !DILocation(line: 150, column: 12, scope: !1515, inlinedAt: !3201)
!3209 = !DILocation(line: 151, column: 6, scope: !1515, inlinedAt: !3201)
!3210 = !DILocation(line: 1005, column: 10, scope: !3176)
!3211 = !DILocation(line: 1006, column: 1, scope: !3176)
!3212 = !DILocation(line: 1005, column: 3, scope: !3176)
!3213 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !149, file: !149, line: 1009, type: !3214, isLocal: false, isDefinition: true, scopeLine: 1011, flags: DIFlagPrototyped, isOptimized: true, unit: !121, variables: !3216)
!3214 = !DISubroutineType(types: !3215)
!3215 = !{!28, !74, !44, !44, !44}
!3216 = !{!3217, !3218, !3219, !3220}
!3217 = !DILocalVariable(name: "n", arg: 1, scope: !3213, file: !149, line: 1009, type: !74)
!3218 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3213, file: !149, line: 1009, type: !44)
!3219 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3213, file: !149, line: 1010, type: !44)
!3220 = !DILocalVariable(name: "arg", arg: 4, scope: !3213, file: !149, line: 1010, type: !44)
!3221 = !DILocation(line: 1009, column: 24, scope: !3213)
!3222 = !DILocation(line: 1009, column: 39, scope: !3213)
!3223 = !DILocation(line: 1010, column: 32, scope: !3213)
!3224 = !DILocation(line: 1010, column: 57, scope: !3213)
!3225 = !DILocalVariable(name: "n", arg: 1, scope: !3226, file: !149, line: 1017, type: !74)
!3226 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !149, file: !149, line: 1017, type: !3227, isLocal: false, isDefinition: true, scopeLine: 1020, flags: DIFlagPrototyped, isOptimized: true, unit: !121, variables: !3229)
!3227 = !DISubroutineType(types: !3228)
!3228 = !{!28, !74, !44, !44, !44, !37}
!3229 = !{!3225, !3230, !3231, !3232, !3233, !3234}
!3230 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3226, file: !149, line: 1017, type: !44)
!3231 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3226, file: !149, line: 1018, type: !44)
!3232 = !DILocalVariable(name: "arg", arg: 4, scope: !3226, file: !149, line: 1019, type: !44)
!3233 = !DILocalVariable(name: "argsize", arg: 5, scope: !3226, file: !149, line: 1019, type: !37)
!3234 = !DILocalVariable(name: "o", scope: !3226, file: !149, line: 1021, type: !156)
!3235 = !DILocation(line: 1017, column: 28, scope: !3226, inlinedAt: !3236)
!3236 = distinct !DILocation(line: 1012, column: 10, scope: !3213)
!3237 = !DILocation(line: 1017, column: 43, scope: !3226, inlinedAt: !3236)
!3238 = !DILocation(line: 1018, column: 36, scope: !3226, inlinedAt: !3236)
!3239 = !DILocation(line: 1019, column: 36, scope: !3226, inlinedAt: !3236)
!3240 = !DILocation(line: 1019, column: 48, scope: !3226, inlinedAt: !3236)
!3241 = !DILocation(line: 1021, column: 3, scope: !3226, inlinedAt: !3236)
!3242 = !DILocation(line: 1021, column: 30, scope: !3226, inlinedAt: !3236)
!3243 = !DILocation(line: 1021, column: 26, scope: !3226, inlinedAt: !3236)
!3244 = !DILocation(line: 171, column: 45, scope: !1565, inlinedAt: !3245)
!3245 = distinct !DILocation(line: 1022, column: 3, scope: !3226, inlinedAt: !3236)
!3246 = !DILocation(line: 172, column: 33, scope: !1565, inlinedAt: !3245)
!3247 = !DILocation(line: 172, column: 57, scope: !1565, inlinedAt: !3245)
!3248 = !DILocation(line: 176, column: 6, scope: !1565, inlinedAt: !3245)
!3249 = !DILocation(line: 176, column: 12, scope: !1565, inlinedAt: !3245)
!3250 = !DILocation(line: 177, column: 8, scope: !1581, inlinedAt: !3245)
!3251 = !DILocation(line: 177, column: 23, scope: !1583, inlinedAt: !3245)
!3252 = !DILocation(line: 177, column: 19, scope: !1581, inlinedAt: !3245)
!3253 = !DILocation(line: 178, column: 5, scope: !1581, inlinedAt: !3245)
!3254 = !DILocation(line: 179, column: 6, scope: !1565, inlinedAt: !3245)
!3255 = !DILocation(line: 179, column: 17, scope: !1565, inlinedAt: !3245)
!3256 = !DILocation(line: 180, column: 6, scope: !1565, inlinedAt: !3245)
!3257 = !DILocation(line: 180, column: 18, scope: !1565, inlinedAt: !3245)
!3258 = !DILocation(line: 1023, column: 10, scope: !3226, inlinedAt: !3236)
!3259 = !DILocation(line: 1024, column: 1, scope: !3226, inlinedAt: !3236)
!3260 = !DILocation(line: 1012, column: 3, scope: !3213)
!3261 = !DILocation(line: 1017, column: 28, scope: !3226)
!3262 = !DILocation(line: 1017, column: 43, scope: !3226)
!3263 = !DILocation(line: 1018, column: 36, scope: !3226)
!3264 = !DILocation(line: 1019, column: 36, scope: !3226)
!3265 = !DILocation(line: 1019, column: 48, scope: !3226)
!3266 = !DILocation(line: 1021, column: 3, scope: !3226)
!3267 = !DILocation(line: 1021, column: 30, scope: !3226)
!3268 = !DILocation(line: 1021, column: 26, scope: !3226)
!3269 = !DILocation(line: 171, column: 45, scope: !1565, inlinedAt: !3270)
!3270 = distinct !DILocation(line: 1022, column: 3, scope: !3226)
!3271 = !DILocation(line: 172, column: 33, scope: !1565, inlinedAt: !3270)
!3272 = !DILocation(line: 172, column: 57, scope: !1565, inlinedAt: !3270)
!3273 = !DILocation(line: 176, column: 6, scope: !1565, inlinedAt: !3270)
!3274 = !DILocation(line: 176, column: 12, scope: !1565, inlinedAt: !3270)
!3275 = !DILocation(line: 177, column: 8, scope: !1581, inlinedAt: !3270)
!3276 = !DILocation(line: 177, column: 23, scope: !1583, inlinedAt: !3270)
!3277 = !DILocation(line: 177, column: 19, scope: !1581, inlinedAt: !3270)
!3278 = !DILocation(line: 178, column: 5, scope: !1581, inlinedAt: !3270)
!3279 = !DILocation(line: 179, column: 6, scope: !1565, inlinedAt: !3270)
!3280 = !DILocation(line: 179, column: 17, scope: !1565, inlinedAt: !3270)
!3281 = !DILocation(line: 180, column: 6, scope: !1565, inlinedAt: !3270)
!3282 = !DILocation(line: 180, column: 18, scope: !1565, inlinedAt: !3270)
!3283 = !DILocation(line: 1023, column: 10, scope: !3226)
!3284 = !DILocation(line: 1024, column: 1, scope: !3226)
!3285 = !DILocation(line: 1023, column: 3, scope: !3226)
!3286 = distinct !DISubprogram(name: "quotearg_custom", scope: !149, file: !149, line: 1027, type: !3287, isLocal: false, isDefinition: true, scopeLine: 1029, flags: DIFlagPrototyped, isOptimized: true, unit: !121, variables: !3289)
!3287 = !DISubroutineType(types: !3288)
!3288 = !{!28, !44, !44, !44}
!3289 = !{!3290, !3291, !3292}
!3290 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3286, file: !149, line: 1027, type: !44)
!3291 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3286, file: !149, line: 1027, type: !44)
!3292 = !DILocalVariable(name: "arg", arg: 3, scope: !3286, file: !149, line: 1028, type: !44)
!3293 = !DILocation(line: 1027, column: 30, scope: !3286)
!3294 = !DILocation(line: 1027, column: 54, scope: !3286)
!3295 = !DILocation(line: 1028, column: 30, scope: !3286)
!3296 = !DILocation(line: 1009, column: 24, scope: !3213, inlinedAt: !3297)
!3297 = distinct !DILocation(line: 1030, column: 10, scope: !3286)
!3298 = !DILocation(line: 1009, column: 39, scope: !3213, inlinedAt: !3297)
!3299 = !DILocation(line: 1010, column: 32, scope: !3213, inlinedAt: !3297)
!3300 = !DILocation(line: 1010, column: 57, scope: !3213, inlinedAt: !3297)
!3301 = !DILocation(line: 1017, column: 28, scope: !3226, inlinedAt: !3302)
!3302 = distinct !DILocation(line: 1012, column: 10, scope: !3213, inlinedAt: !3297)
!3303 = !DILocation(line: 1017, column: 43, scope: !3226, inlinedAt: !3302)
!3304 = !DILocation(line: 1018, column: 36, scope: !3226, inlinedAt: !3302)
!3305 = !DILocation(line: 1019, column: 36, scope: !3226, inlinedAt: !3302)
!3306 = !DILocation(line: 1019, column: 48, scope: !3226, inlinedAt: !3302)
!3307 = !DILocation(line: 1021, column: 3, scope: !3226, inlinedAt: !3302)
!3308 = !DILocation(line: 1021, column: 30, scope: !3226, inlinedAt: !3302)
!3309 = !DILocation(line: 1021, column: 26, scope: !3226, inlinedAt: !3302)
!3310 = !DILocation(line: 171, column: 45, scope: !1565, inlinedAt: !3311)
!3311 = distinct !DILocation(line: 1022, column: 3, scope: !3226, inlinedAt: !3302)
!3312 = !DILocation(line: 172, column: 33, scope: !1565, inlinedAt: !3311)
!3313 = !DILocation(line: 172, column: 57, scope: !1565, inlinedAt: !3311)
!3314 = !DILocation(line: 176, column: 6, scope: !1565, inlinedAt: !3311)
!3315 = !DILocation(line: 176, column: 12, scope: !1565, inlinedAt: !3311)
!3316 = !DILocation(line: 177, column: 8, scope: !1581, inlinedAt: !3311)
!3317 = !DILocation(line: 177, column: 23, scope: !1583, inlinedAt: !3311)
!3318 = !DILocation(line: 177, column: 19, scope: !1581, inlinedAt: !3311)
!3319 = !DILocation(line: 178, column: 5, scope: !1581, inlinedAt: !3311)
!3320 = !DILocation(line: 179, column: 6, scope: !1565, inlinedAt: !3311)
!3321 = !DILocation(line: 179, column: 17, scope: !1565, inlinedAt: !3311)
!3322 = !DILocation(line: 180, column: 6, scope: !1565, inlinedAt: !3311)
!3323 = !DILocation(line: 180, column: 18, scope: !1565, inlinedAt: !3311)
!3324 = !DILocation(line: 1023, column: 10, scope: !3226, inlinedAt: !3302)
!3325 = !DILocation(line: 1024, column: 1, scope: !3226, inlinedAt: !3302)
!3326 = !DILocation(line: 1030, column: 3, scope: !3286)
!3327 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !149, file: !149, line: 1034, type: !3328, isLocal: false, isDefinition: true, scopeLine: 1036, flags: DIFlagPrototyped, isOptimized: true, unit: !121, variables: !3330)
!3328 = !DISubroutineType(types: !3329)
!3329 = !{!28, !44, !44, !44, !37}
!3330 = !{!3331, !3332, !3333, !3334}
!3331 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3327, file: !149, line: 1034, type: !44)
!3332 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3327, file: !149, line: 1034, type: !44)
!3333 = !DILocalVariable(name: "arg", arg: 3, scope: !3327, file: !149, line: 1035, type: !44)
!3334 = !DILocalVariable(name: "argsize", arg: 4, scope: !3327, file: !149, line: 1035, type: !37)
!3335 = !DILocation(line: 1034, column: 34, scope: !3327)
!3336 = !DILocation(line: 1034, column: 58, scope: !3327)
!3337 = !DILocation(line: 1035, column: 34, scope: !3327)
!3338 = !DILocation(line: 1035, column: 46, scope: !3327)
!3339 = !DILocation(line: 1017, column: 28, scope: !3226, inlinedAt: !3340)
!3340 = distinct !DILocation(line: 1037, column: 10, scope: !3327)
!3341 = !DILocation(line: 1017, column: 43, scope: !3226, inlinedAt: !3340)
!3342 = !DILocation(line: 1018, column: 36, scope: !3226, inlinedAt: !3340)
!3343 = !DILocation(line: 1019, column: 36, scope: !3226, inlinedAt: !3340)
!3344 = !DILocation(line: 1019, column: 48, scope: !3226, inlinedAt: !3340)
!3345 = !DILocation(line: 1021, column: 3, scope: !3226, inlinedAt: !3340)
!3346 = !DILocation(line: 1021, column: 30, scope: !3226, inlinedAt: !3340)
!3347 = !DILocation(line: 1021, column: 26, scope: !3226, inlinedAt: !3340)
!3348 = !DILocation(line: 171, column: 45, scope: !1565, inlinedAt: !3349)
!3349 = distinct !DILocation(line: 1022, column: 3, scope: !3226, inlinedAt: !3340)
!3350 = !DILocation(line: 172, column: 33, scope: !1565, inlinedAt: !3349)
!3351 = !DILocation(line: 172, column: 57, scope: !1565, inlinedAt: !3349)
!3352 = !DILocation(line: 176, column: 6, scope: !1565, inlinedAt: !3349)
!3353 = !DILocation(line: 176, column: 12, scope: !1565, inlinedAt: !3349)
!3354 = !DILocation(line: 177, column: 8, scope: !1581, inlinedAt: !3349)
!3355 = !DILocation(line: 177, column: 23, scope: !1583, inlinedAt: !3349)
!3356 = !DILocation(line: 177, column: 19, scope: !1581, inlinedAt: !3349)
!3357 = !DILocation(line: 178, column: 5, scope: !1581, inlinedAt: !3349)
!3358 = !DILocation(line: 179, column: 6, scope: !1565, inlinedAt: !3349)
!3359 = !DILocation(line: 179, column: 17, scope: !1565, inlinedAt: !3349)
!3360 = !DILocation(line: 180, column: 6, scope: !1565, inlinedAt: !3349)
!3361 = !DILocation(line: 180, column: 18, scope: !1565, inlinedAt: !3349)
!3362 = !DILocation(line: 1023, column: 10, scope: !3226, inlinedAt: !3340)
!3363 = !DILocation(line: 1024, column: 1, scope: !3226, inlinedAt: !3340)
!3364 = !DILocation(line: 1037, column: 3, scope: !3327)
!3365 = distinct !DISubprogram(name: "quote_n_mem", scope: !149, file: !149, line: 1052, type: !3366, isLocal: false, isDefinition: true, scopeLine: 1053, flags: DIFlagPrototyped, isOptimized: true, unit: !121, variables: !3368)
!3366 = !DISubroutineType(types: !3367)
!3367 = !{!44, !74, !44, !37}
!3368 = !{!3369, !3370, !3371}
!3369 = !DILocalVariable(name: "n", arg: 1, scope: !3365, file: !149, line: 1052, type: !74)
!3370 = !DILocalVariable(name: "arg", arg: 2, scope: !3365, file: !149, line: 1052, type: !44)
!3371 = !DILocalVariable(name: "argsize", arg: 3, scope: !3365, file: !149, line: 1052, type: !37)
!3372 = !DILocation(line: 1052, column: 18, scope: !3365)
!3373 = !DILocation(line: 1052, column: 33, scope: !3365)
!3374 = !DILocation(line: 1052, column: 45, scope: !3365)
!3375 = !DILocation(line: 1054, column: 10, scope: !3365)
!3376 = !DILocation(line: 1054, column: 3, scope: !3365)
!3377 = distinct !DISubprogram(name: "quote_mem", scope: !149, file: !149, line: 1058, type: !3378, isLocal: false, isDefinition: true, scopeLine: 1059, flags: DIFlagPrototyped, isOptimized: true, unit: !121, variables: !3380)
!3378 = !DISubroutineType(types: !3379)
!3379 = !{!44, !44, !37}
!3380 = !{!3381, !3382}
!3381 = !DILocalVariable(name: "arg", arg: 1, scope: !3377, file: !149, line: 1058, type: !44)
!3382 = !DILocalVariable(name: "argsize", arg: 2, scope: !3377, file: !149, line: 1058, type: !37)
!3383 = !DILocation(line: 1058, column: 24, scope: !3377)
!3384 = !DILocation(line: 1058, column: 36, scope: !3377)
!3385 = !DILocation(line: 1052, column: 18, scope: !3365, inlinedAt: !3386)
!3386 = distinct !DILocation(line: 1060, column: 10, scope: !3377)
!3387 = !DILocation(line: 1052, column: 33, scope: !3365, inlinedAt: !3386)
!3388 = !DILocation(line: 1052, column: 45, scope: !3365, inlinedAt: !3386)
!3389 = !DILocation(line: 1054, column: 10, scope: !3365, inlinedAt: !3386)
!3390 = !DILocation(line: 1060, column: 3, scope: !3377)
!3391 = distinct !DISubprogram(name: "quote_n", scope: !149, file: !149, line: 1064, type: !3392, isLocal: false, isDefinition: true, scopeLine: 1065, flags: DIFlagPrototyped, isOptimized: true, unit: !121, variables: !3394)
!3392 = !DISubroutineType(types: !3393)
!3393 = !{!44, !74, !44}
!3394 = !{!3395, !3396}
!3395 = !DILocalVariable(name: "n", arg: 1, scope: !3391, file: !149, line: 1064, type: !74)
!3396 = !DILocalVariable(name: "arg", arg: 2, scope: !3391, file: !149, line: 1064, type: !44)
!3397 = !DILocation(line: 1064, column: 14, scope: !3391)
!3398 = !DILocation(line: 1064, column: 29, scope: !3391)
!3399 = !DILocation(line: 1052, column: 18, scope: !3365, inlinedAt: !3400)
!3400 = distinct !DILocation(line: 1066, column: 10, scope: !3391)
!3401 = !DILocation(line: 1052, column: 33, scope: !3365, inlinedAt: !3400)
!3402 = !DILocation(line: 1052, column: 45, scope: !3365, inlinedAt: !3400)
!3403 = !DILocation(line: 1054, column: 10, scope: !3365, inlinedAt: !3400)
!3404 = !DILocation(line: 1066, column: 3, scope: !3391)
!3405 = distinct !DISubprogram(name: "quote", scope: !149, file: !149, line: 1070, type: !3406, isLocal: false, isDefinition: true, scopeLine: 1071, flags: DIFlagPrototyped, isOptimized: true, unit: !121, variables: !3408)
!3406 = !DISubroutineType(types: !3407)
!3407 = !{!44, !44}
!3408 = !{!3409}
!3409 = !DILocalVariable(name: "arg", arg: 1, scope: !3405, file: !149, line: 1070, type: !44)
!3410 = !DILocation(line: 1070, column: 20, scope: !3405)
!3411 = !DILocation(line: 1064, column: 14, scope: !3391, inlinedAt: !3412)
!3412 = distinct !DILocation(line: 1072, column: 10, scope: !3405)
!3413 = !DILocation(line: 1064, column: 29, scope: !3391, inlinedAt: !3412)
!3414 = !DILocation(line: 1052, column: 18, scope: !3365, inlinedAt: !3415)
!3415 = distinct !DILocation(line: 1066, column: 10, scope: !3391, inlinedAt: !3412)
!3416 = !DILocation(line: 1052, column: 33, scope: !3365, inlinedAt: !3415)
!3417 = !DILocation(line: 1052, column: 45, scope: !3365, inlinedAt: !3415)
!3418 = !DILocation(line: 1054, column: 10, scope: !3365, inlinedAt: !3415)
!3419 = !DILocation(line: 1072, column: 3, scope: !3405)
!3420 = distinct !DISubprogram(name: "version_etc_arn", scope: !562, file: !562, line: 62, type: !3421, isLocal: false, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: true, unit: !558, variables: !3476)
!3421 = !DISubroutineType(types: !3422)
!3422 = !{null, !3423, !44, !44, !44, !3475, !37}
!3423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3424, size: 64)
!3424 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3425, line: 49, baseType: !3426)
!3425 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3427, line: 241, size: 1728, elements: !3428)
!3427 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3428 = !{!3429, !3430, !3431, !3432, !3433, !3434, !3435, !3436, !3437, !3438, !3439, !3440, !3441, !3449, !3450, !3451, !3452, !3453, !3454, !3456, !3460, !3463, !3465, !3466, !3467, !3468, !3469, !3470, !3471}
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3426, file: !3427, line: 242, baseType: !74, size: 32)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3426, file: !3427, line: 247, baseType: !28, size: 64, offset: 64)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3426, file: !3427, line: 248, baseType: !28, size: 64, offset: 128)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3426, file: !3427, line: 249, baseType: !28, size: 64, offset: 192)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3426, file: !3427, line: 250, baseType: !28, size: 64, offset: 256)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3426, file: !3427, line: 251, baseType: !28, size: 64, offset: 320)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3426, file: !3427, line: 252, baseType: !28, size: 64, offset: 384)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3426, file: !3427, line: 253, baseType: !28, size: 64, offset: 448)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3426, file: !3427, line: 254, baseType: !28, size: 64, offset: 512)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3426, file: !3427, line: 256, baseType: !28, size: 64, offset: 576)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3426, file: !3427, line: 257, baseType: !28, size: 64, offset: 640)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3426, file: !3427, line: 258, baseType: !28, size: 64, offset: 704)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3426, file: !3427, line: 260, baseType: !3442, size: 64, offset: 768)
!3442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3443, size: 64)
!3443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !3427, line: 156, size: 192, elements: !3444)
!3444 = !{!3445, !3446, !3448}
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3443, file: !3427, line: 157, baseType: !3442, size: 64)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3443, file: !3427, line: 158, baseType: !3447, size: 64, offset: 64)
!3447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3426, size: 64)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3443, file: !3427, line: 162, baseType: !74, size: 32, offset: 128)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3426, file: !3427, line: 262, baseType: !3447, size: 64, offset: 832)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3426, file: !3427, line: 264, baseType: !74, size: 32, offset: 896)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3426, file: !3427, line: 268, baseType: !74, size: 32, offset: 928)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3426, file: !3427, line: 270, baseType: !1273, size: 64, offset: 960)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3426, file: !3427, line: 274, baseType: !145, size: 16, offset: 1024)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3426, file: !3427, line: 275, baseType: !3455, size: 8, offset: 1040)
!3455 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3426, file: !3427, line: 276, baseType: !3457, size: 8, offset: 1048)
!3457 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 8, elements: !3458)
!3458 = !{!3459}
!3459 = !DISubrange(count: 1)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3426, file: !3427, line: 280, baseType: !3461, size: 64, offset: 1088)
!3461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3462, size: 64)
!3462 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !3427, line: 150, baseType: null)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3426, file: !3427, line: 289, baseType: !3464, size: 64, offset: 1152)
!3464 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !35, line: 141, baseType: !1274)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3426, file: !3427, line: 297, baseType: !30, size: 64, offset: 1216)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3426, file: !3427, line: 298, baseType: !30, size: 64, offset: 1280)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3426, file: !3427, line: 299, baseType: !30, size: 64, offset: 1344)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3426, file: !3427, line: 300, baseType: !30, size: 64, offset: 1408)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3426, file: !3427, line: 302, baseType: !37, size: 64, offset: 1472)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3426, file: !3427, line: 303, baseType: !74, size: 32, offset: 1536)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3426, file: !3427, line: 305, baseType: !3472, size: 160, offset: 1568)
!3472 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 160, elements: !3473)
!3473 = !{!3474}
!3474 = !DISubrange(count: 20)
!3475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !185, size: 64)
!3476 = !{!3477, !3478, !3479, !3480, !3481, !3482}
!3477 = !DILocalVariable(name: "stream", arg: 1, scope: !3420, file: !562, line: 62, type: !3423)
!3478 = !DILocalVariable(name: "command_name", arg: 2, scope: !3420, file: !562, line: 63, type: !44)
!3479 = !DILocalVariable(name: "package", arg: 3, scope: !3420, file: !562, line: 63, type: !44)
!3480 = !DILocalVariable(name: "version", arg: 4, scope: !3420, file: !562, line: 64, type: !44)
!3481 = !DILocalVariable(name: "authors", arg: 5, scope: !3420, file: !562, line: 65, type: !3475)
!3482 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3420, file: !562, line: 65, type: !37)
!3483 = !DILocation(line: 62, column: 24, scope: !3420)
!3484 = !DILocation(line: 63, column: 30, scope: !3420)
!3485 = !DILocation(line: 63, column: 56, scope: !3420)
!3486 = !DILocation(line: 64, column: 30, scope: !3420)
!3487 = !DILocation(line: 65, column: 39, scope: !3420)
!3488 = !DILocation(line: 65, column: 55, scope: !3420)
!3489 = !DILocation(line: 67, column: 7, scope: !3490)
!3490 = distinct !DILexicalBlock(scope: !3420, file: !562, line: 67, column: 7)
!3491 = !DILocation(line: 67, column: 7, scope: !3420)
!3492 = !DILocation(line: 68, column: 5, scope: !3490)
!3493 = !DILocation(line: 70, column: 5, scope: !3490)
!3494 = !DILocation(line: 84, column: 3, scope: !3420)
!3495 = !DILocation(line: 84, column: 3, scope: !3496)
!3496 = !DILexicalBlockFile(scope: !3420, file: !562, discriminator: 1)
!3497 = !DILocation(line: 86, column: 3, scope: !3420)
!3498 = !DILocation(line: 86, column: 3, scope: !3496)
!3499 = !DILocation(line: 95, column: 3, scope: !3420)
!3500 = !DILocation(line: 99, column: 7, scope: !3501)
!3501 = distinct !DILexicalBlock(scope: !3420, file: !562, line: 96, column: 5)
!3502 = !DILocation(line: 102, column: 7, scope: !3501)
!3503 = !DILocation(line: 102, column: 7, scope: !3504)
!3504 = !DILexicalBlockFile(scope: !3501, file: !562, discriminator: 1)
!3505 = !DILocation(line: 103, column: 7, scope: !3501)
!3506 = !DILocation(line: 106, column: 7, scope: !3501)
!3507 = !DILocation(line: 106, column: 7, scope: !3504)
!3508 = !DILocation(line: 107, column: 7, scope: !3501)
!3509 = !DILocation(line: 110, column: 7, scope: !3501)
!3510 = !DILocation(line: 110, column: 7, scope: !3504)
!3511 = !DILocation(line: 112, column: 7, scope: !3501)
!3512 = !DILocation(line: 117, column: 7, scope: !3501)
!3513 = !DILocation(line: 117, column: 7, scope: !3504)
!3514 = !DILocation(line: 119, column: 7, scope: !3501)
!3515 = !DILocation(line: 124, column: 7, scope: !3501)
!3516 = !DILocation(line: 124, column: 7, scope: !3504)
!3517 = !DILocation(line: 126, column: 7, scope: !3501)
!3518 = !DILocation(line: 131, column: 7, scope: !3501)
!3519 = !DILocation(line: 131, column: 7, scope: !3504)
!3520 = !DILocation(line: 134, column: 7, scope: !3501)
!3521 = !DILocation(line: 139, column: 7, scope: !3501)
!3522 = !DILocation(line: 139, column: 7, scope: !3504)
!3523 = !DILocation(line: 142, column: 7, scope: !3501)
!3524 = !DILocation(line: 147, column: 7, scope: !3501)
!3525 = !DILocation(line: 147, column: 7, scope: !3504)
!3526 = !DILocation(line: 151, column: 7, scope: !3501)
!3527 = !DILocation(line: 156, column: 7, scope: !3501)
!3528 = !DILocation(line: 156, column: 7, scope: !3504)
!3529 = !DILocation(line: 160, column: 7, scope: !3501)
!3530 = !DILocation(line: 167, column: 7, scope: !3501)
!3531 = !DILocation(line: 167, column: 7, scope: !3504)
!3532 = !DILocation(line: 171, column: 7, scope: !3501)
!3533 = !DILocation(line: 173, column: 1, scope: !3420)
!3534 = distinct !DISubprogram(name: "version_etc_ar", scope: !562, file: !562, line: 180, type: !3535, isLocal: false, isDefinition: true, scopeLine: 183, flags: DIFlagPrototyped, isOptimized: true, unit: !558, variables: !3537)
!3535 = !DISubroutineType(types: !3536)
!3536 = !{null, !3423, !44, !44, !44, !3475}
!3537 = !{!3538, !3539, !3540, !3541, !3542, !3543}
!3538 = !DILocalVariable(name: "stream", arg: 1, scope: !3534, file: !562, line: 180, type: !3423)
!3539 = !DILocalVariable(name: "command_name", arg: 2, scope: !3534, file: !562, line: 181, type: !44)
!3540 = !DILocalVariable(name: "package", arg: 3, scope: !3534, file: !562, line: 181, type: !44)
!3541 = !DILocalVariable(name: "version", arg: 4, scope: !3534, file: !562, line: 182, type: !44)
!3542 = !DILocalVariable(name: "authors", arg: 5, scope: !3534, file: !562, line: 182, type: !3475)
!3543 = !DILocalVariable(name: "n_authors", scope: !3534, file: !562, line: 184, type: !37)
!3544 = !DILocation(line: 180, column: 23, scope: !3534)
!3545 = !DILocation(line: 181, column: 29, scope: !3534)
!3546 = !DILocation(line: 181, column: 55, scope: !3534)
!3547 = !DILocation(line: 182, column: 29, scope: !3534)
!3548 = !DILocation(line: 182, column: 59, scope: !3534)
!3549 = !DILocation(line: 184, column: 10, scope: !3534)
!3550 = !DILocation(line: 186, column: 8, scope: !3551)
!3551 = distinct !DILexicalBlock(scope: !3534, file: !562, line: 186, column: 3)
!3552 = !DILocation(line: 186, column: 23, scope: !3553)
!3553 = !DILexicalBlockFile(scope: !3554, file: !562, discriminator: 1)
!3554 = distinct !DILexicalBlock(scope: !3551, file: !562, line: 186, column: 3)
!3555 = !DILocation(line: 186, column: 3, scope: !3556)
!3556 = !DILexicalBlockFile(scope: !3551, file: !562, discriminator: 1)
!3557 = !DILocation(line: 186, column: 52, scope: !3558)
!3558 = !DILexicalBlockFile(scope: !3554, file: !562, discriminator: 3)
!3559 = distinct !{!3559, !3560, !3561}
!3560 = !DILocation(line: 186, column: 3, scope: !3551)
!3561 = !DILocation(line: 187, column: 5, scope: !3551)
!3562 = !DILocation(line: 188, column: 3, scope: !3534)
!3563 = !DILocation(line: 189, column: 1, scope: !3534)
!3564 = distinct !DISubprogram(name: "version_etc_va", scope: !562, file: !562, line: 196, type: !3565, isLocal: false, isDefinition: true, scopeLine: 199, flags: DIFlagPrototyped, isOptimized: true, unit: !558, variables: !3574)
!3565 = !DISubroutineType(types: !3566)
!3566 = !{null, !3423, !44, !44, !44, !3567}
!3567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3568, size: 64)
!3568 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !559, line: 189, size: 192, elements: !3569)
!3569 = !{!3570, !3571, !3572, !3573}
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !3568, file: !559, line: 189, baseType: !31, size: 32)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !3568, file: !559, line: 189, baseType: !31, size: 32, offset: 32)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !3568, file: !559, line: 189, baseType: !30, size: 64, offset: 64)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !3568, file: !559, line: 189, baseType: !30, size: 64, offset: 128)
!3574 = !{!3575, !3576, !3577, !3578, !3579, !3580, !3581}
!3575 = !DILocalVariable(name: "stream", arg: 1, scope: !3564, file: !562, line: 196, type: !3423)
!3576 = !DILocalVariable(name: "command_name", arg: 2, scope: !3564, file: !562, line: 197, type: !44)
!3577 = !DILocalVariable(name: "package", arg: 3, scope: !3564, file: !562, line: 197, type: !44)
!3578 = !DILocalVariable(name: "version", arg: 4, scope: !3564, file: !562, line: 198, type: !44)
!3579 = !DILocalVariable(name: "authors", arg: 5, scope: !3564, file: !562, line: 198, type: !3567)
!3580 = !DILocalVariable(name: "n_authors", scope: !3564, file: !562, line: 200, type: !37)
!3581 = !DILocalVariable(name: "authtab", scope: !3564, file: !562, line: 201, type: !3582)
!3582 = !DICompositeType(tag: DW_TAG_array_type, baseType: !44, size: 640, elements: !152)
!3583 = !DILocation(line: 196, column: 23, scope: !3564)
!3584 = !DILocation(line: 197, column: 29, scope: !3564)
!3585 = !DILocation(line: 197, column: 55, scope: !3564)
!3586 = !DILocation(line: 198, column: 29, scope: !3564)
!3587 = !DILocation(line: 198, column: 46, scope: !3564)
!3588 = !DILocation(line: 201, column: 3, scope: !3564)
!3589 = !DILocation(line: 201, column: 15, scope: !3564)
!3590 = !DILocation(line: 200, column: 10, scope: !3564)
!3591 = !DILocation(line: 205, column: 35, scope: !3592)
!3592 = !DILexicalBlockFile(scope: !3593, file: !562, discriminator: 1)
!3593 = distinct !DILexicalBlock(scope: !3594, file: !562, line: 203, column: 3)
!3594 = distinct !DILexicalBlock(scope: !3564, file: !562, line: 203, column: 3)
!3595 = !DILocation(line: 205, column: 35, scope: !3596)
!3596 = !DILexicalBlockFile(scope: !3593, file: !562, discriminator: 2)
!3597 = !DILocation(line: 205, column: 35, scope: !3598)
!3598 = !DILexicalBlockFile(scope: !3593, file: !562, discriminator: 3)
!3599 = !DILocation(line: 205, column: 35, scope: !3600)
!3600 = !DILexicalBlockFile(scope: !3593, file: !562, discriminator: 4)
!3601 = !DILocation(line: 205, column: 14, scope: !3600)
!3602 = !DILocation(line: 205, column: 33, scope: !3600)
!3603 = !DILocation(line: 205, column: 67, scope: !3600)
!3604 = !DILocation(line: 203, column: 3, scope: !3605)
!3605 = !DILexicalBlockFile(scope: !3594, file: !562, discriminator: 1)
!3606 = !DILocation(line: 208, column: 3, scope: !3564)
!3607 = !DILocation(line: 210, column: 1, scope: !3564)
!3608 = distinct !DISubprogram(name: "version_etc", scope: !562, file: !562, line: 227, type: !3609, isLocal: false, isDefinition: true, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: true, unit: !558, variables: !3611)
!3609 = !DISubroutineType(types: !3610)
!3610 = !{null, !3423, !44, !44, !44, null}
!3611 = !{!3612, !3613, !3614, !3615, !3616}
!3612 = !DILocalVariable(name: "stream", arg: 1, scope: !3608, file: !562, line: 227, type: !3423)
!3613 = !DILocalVariable(name: "command_name", arg: 2, scope: !3608, file: !562, line: 228, type: !44)
!3614 = !DILocalVariable(name: "package", arg: 3, scope: !3608, file: !562, line: 228, type: !44)
!3615 = !DILocalVariable(name: "version", arg: 4, scope: !3608, file: !562, line: 229, type: !44)
!3616 = !DILocalVariable(name: "authors", scope: !3608, file: !562, line: 231, type: !3617)
!3617 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !3425, line: 80, baseType: !3618)
!3618 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !3619, line: 50, baseType: !3620)
!3619 = !DIFile(filename: "/usr/bin/../lib/clang/4.0.1/include/stdarg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3620 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !559, line: 231, baseType: !3621)
!3621 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3568, size: 192, elements: !3458)
!3622 = !DILocation(line: 227, column: 20, scope: !3608)
!3623 = !DILocation(line: 228, column: 26, scope: !3608)
!3624 = !DILocation(line: 228, column: 52, scope: !3608)
!3625 = !DILocation(line: 229, column: 26, scope: !3608)
!3626 = !DILocation(line: 231, column: 3, scope: !3608)
!3627 = !DILocation(line: 231, column: 11, scope: !3608)
!3628 = !DILocation(line: 233, column: 3, scope: !3608)
!3629 = !DILocation(line: 234, column: 3, scope: !3608)
!3630 = !DILocation(line: 235, column: 3, scope: !3608)
!3631 = !DILocation(line: 236, column: 1, scope: !3608)
!3632 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !562, file: !562, line: 239, type: !638, isLocal: false, isDefinition: true, scopeLine: 240, flags: DIFlagPrototyped, isOptimized: true, unit: !558, variables: !94)
!3633 = !DILocation(line: 245, column: 3, scope: !3632)
!3634 = !DILocation(line: 245, column: 3, scope: !3635)
!3635 = !DILexicalBlockFile(scope: !3632, file: !562, discriminator: 1)
!3636 = !DILocation(line: 251, column: 3, scope: !3632)
!3637 = !DILocation(line: 251, column: 3, scope: !3635)
!3638 = !DILocation(line: 256, column: 3, scope: !3632)
!3639 = !DILocation(line: 256, column: 3, scope: !3635)
!3640 = !DILocation(line: 258, column: 1, scope: !3632)
!3641 = distinct !DISubprogram(name: "xnmalloc", scope: !570, file: !570, line: 105, type: !1131, isLocal: false, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: true, unit: !566, variables: !3642)
!3642 = !{!3643, !3644}
!3643 = !DILocalVariable(name: "n", arg: 1, scope: !3641, file: !570, line: 105, type: !37)
!3644 = !DILocalVariable(name: "s", arg: 2, scope: !3641, file: !570, line: 105, type: !37)
!3645 = !DILocation(line: 105, column: 18, scope: !3641)
!3646 = !DILocation(line: 105, column: 28, scope: !3641)
!3647 = !DILocation(line: 107, column: 7, scope: !3648)
!3648 = distinct !DILexicalBlock(scope: !3641, file: !570, line: 107, column: 7)
!3649 = !DILocation(line: 107, column: 7, scope: !3641)
!3650 = !DILocation(line: 108, column: 5, scope: !3648)
!3651 = !DILocation(line: 109, column: 21, scope: !3641)
!3652 = !DILocalVariable(name: "n", arg: 1, scope: !3653, file: !3654, line: 39, type: !37)
!3653 = distinct !DISubprogram(name: "xmalloc", scope: !3654, file: !3654, line: 39, type: !3655, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !566, variables: !3657)
!3654 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3655 = !DISubroutineType(types: !3656)
!3656 = !{!30, !37}
!3657 = !{!3652, !3658}
!3658 = !DILocalVariable(name: "p", scope: !3653, file: !3654, line: 41, type: !30)
!3659 = !DILocation(line: 39, column: 17, scope: !3653, inlinedAt: !3660)
!3660 = distinct !DILocation(line: 109, column: 10, scope: !3641)
!3661 = !DILocation(line: 41, column: 13, scope: !3653, inlinedAt: !3660)
!3662 = !DILocation(line: 41, column: 9, scope: !3653, inlinedAt: !3660)
!3663 = !DILocation(line: 42, column: 8, scope: !3664, inlinedAt: !3660)
!3664 = distinct !DILexicalBlock(scope: !3653, file: !3654, line: 42, column: 7)
!3665 = !DILocation(line: 42, column: 15, scope: !3666, inlinedAt: !3660)
!3666 = !DILexicalBlockFile(scope: !3664, file: !3654, discriminator: 1)
!3667 = !DILocation(line: 42, column: 10, scope: !3664, inlinedAt: !3660)
!3668 = !DILocation(line: 43, column: 5, scope: !3664, inlinedAt: !3660)
!3669 = !DILocation(line: 109, column: 3, scope: !3641)
!3670 = !DILocation(line: 39, column: 17, scope: !3653)
!3671 = !DILocation(line: 41, column: 13, scope: !3653)
!3672 = !DILocation(line: 41, column: 9, scope: !3653)
!3673 = !DILocation(line: 42, column: 8, scope: !3664)
!3674 = !DILocation(line: 42, column: 15, scope: !3666)
!3675 = !DILocation(line: 42, column: 10, scope: !3664)
!3676 = !DILocation(line: 43, column: 5, scope: !3664)
!3677 = !DILocation(line: 44, column: 3, scope: !3653)
!3678 = distinct !DISubprogram(name: "xnrealloc", scope: !570, file: !570, line: 118, type: !3679, isLocal: false, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !566, variables: !3681)
!3679 = !DISubroutineType(types: !3680)
!3680 = !{!30, !30, !37, !37}
!3681 = !{!3682, !3683, !3684}
!3682 = !DILocalVariable(name: "p", arg: 1, scope: !3678, file: !570, line: 118, type: !30)
!3683 = !DILocalVariable(name: "n", arg: 2, scope: !3678, file: !570, line: 118, type: !37)
!3684 = !DILocalVariable(name: "s", arg: 3, scope: !3678, file: !570, line: 118, type: !37)
!3685 = !DILocation(line: 118, column: 18, scope: !3678)
!3686 = !DILocation(line: 118, column: 28, scope: !3678)
!3687 = !DILocation(line: 118, column: 38, scope: !3678)
!3688 = !DILocation(line: 120, column: 7, scope: !3689)
!3689 = distinct !DILexicalBlock(scope: !3678, file: !570, line: 120, column: 7)
!3690 = !DILocation(line: 120, column: 7, scope: !3678)
!3691 = !DILocation(line: 121, column: 5, scope: !3689)
!3692 = !DILocation(line: 122, column: 25, scope: !3678)
!3693 = !DILocalVariable(name: "p", arg: 1, scope: !3694, file: !3654, line: 51, type: !30)
!3694 = distinct !DISubprogram(name: "xrealloc", scope: !3654, file: !3654, line: 51, type: !3695, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !566, variables: !3697)
!3695 = !DISubroutineType(types: !3696)
!3696 = !{!30, !30, !37}
!3697 = !{!3693, !3698}
!3698 = !DILocalVariable(name: "n", arg: 2, scope: !3694, file: !3654, line: 51, type: !37)
!3699 = !DILocation(line: 51, column: 17, scope: !3694, inlinedAt: !3700)
!3700 = distinct !DILocation(line: 122, column: 10, scope: !3678)
!3701 = !DILocation(line: 51, column: 27, scope: !3694, inlinedAt: !3700)
!3702 = !DILocation(line: 53, column: 8, scope: !3703, inlinedAt: !3700)
!3703 = distinct !DILexicalBlock(scope: !3694, file: !3654, line: 53, column: 7)
!3704 = !DILocation(line: 53, column: 13, scope: !3705, inlinedAt: !3700)
!3705 = !DILexicalBlockFile(scope: !3703, file: !3654, discriminator: 1)
!3706 = !DILocation(line: 53, column: 10, scope: !3703, inlinedAt: !3700)
!3707 = !DILocation(line: 57, column: 7, scope: !3708, inlinedAt: !3700)
!3708 = distinct !DILexicalBlock(scope: !3703, file: !3654, line: 54, column: 5)
!3709 = !DILocation(line: 58, column: 7, scope: !3708, inlinedAt: !3700)
!3710 = !DILocation(line: 61, column: 7, scope: !3694, inlinedAt: !3700)
!3711 = !DILocation(line: 62, column: 8, scope: !3712, inlinedAt: !3700)
!3712 = distinct !DILexicalBlock(scope: !3694, file: !3654, line: 62, column: 7)
!3713 = !DILocation(line: 62, column: 13, scope: !3714, inlinedAt: !3700)
!3714 = !DILexicalBlockFile(scope: !3712, file: !3654, discriminator: 1)
!3715 = !DILocation(line: 62, column: 10, scope: !3712, inlinedAt: !3700)
!3716 = !DILocation(line: 63, column: 5, scope: !3712, inlinedAt: !3700)
!3717 = !DILocation(line: 122, column: 3, scope: !3678)
!3718 = !DILocation(line: 51, column: 17, scope: !3694)
!3719 = !DILocation(line: 51, column: 27, scope: !3694)
!3720 = !DILocation(line: 53, column: 8, scope: !3703)
!3721 = !DILocation(line: 53, column: 13, scope: !3705)
!3722 = !DILocation(line: 53, column: 10, scope: !3703)
!3723 = !DILocation(line: 57, column: 7, scope: !3708)
!3724 = !DILocation(line: 58, column: 7, scope: !3708)
!3725 = !DILocation(line: 61, column: 7, scope: !3694)
!3726 = !DILocation(line: 62, column: 8, scope: !3712)
!3727 = !DILocation(line: 62, column: 13, scope: !3714)
!3728 = !DILocation(line: 62, column: 10, scope: !3712)
!3729 = !DILocation(line: 63, column: 5, scope: !3712)
!3730 = !DILocation(line: 65, column: 1, scope: !3694)
!3731 = !DILocation(line: 180, column: 19, scope: !571)
!3732 = !DILocation(line: 180, column: 30, scope: !571)
!3733 = !DILocation(line: 180, column: 41, scope: !571)
!3734 = !DILocation(line: 182, column: 14, scope: !571)
!3735 = !DILocation(line: 182, column: 10, scope: !571)
!3736 = !DILocation(line: 184, column: 9, scope: !3737)
!3737 = distinct !DILexicalBlock(scope: !571, file: !570, line: 184, column: 7)
!3738 = !DILocation(line: 184, column: 7, scope: !571)
!3739 = !DILocation(line: 186, column: 13, scope: !3740)
!3740 = distinct !DILexicalBlock(scope: !3741, file: !570, line: 186, column: 11)
!3741 = distinct !DILexicalBlock(scope: !3737, file: !570, line: 185, column: 5)
!3742 = !DILocation(line: 186, column: 11, scope: !3741)
!3743 = !DILocation(line: 194, column: 30, scope: !3744)
!3744 = distinct !DILexicalBlock(scope: !3740, file: !570, line: 187, column: 9)
!3745 = !DILocation(line: 195, column: 16, scope: !3744)
!3746 = !DILocation(line: 195, column: 13, scope: !3744)
!3747 = !DILocation(line: 196, column: 9, scope: !3744)
!3748 = !DILocation(line: 204, column: 69, scope: !3749)
!3749 = distinct !DILexicalBlock(scope: !3750, file: !570, line: 204, column: 11)
!3750 = distinct !DILexicalBlock(scope: !3737, file: !570, line: 199, column: 5)
!3751 = !DILocation(line: 205, column: 11, scope: !3749)
!3752 = !DILocation(line: 204, column: 11, scope: !3750)
!3753 = !DILocation(line: 206, column: 9, scope: !3749)
!3754 = !DILocation(line: 210, column: 7, scope: !571)
!3755 = !DILocation(line: 211, column: 25, scope: !571)
!3756 = !DILocation(line: 51, column: 17, scope: !3694, inlinedAt: !3757)
!3757 = distinct !DILocation(line: 211, column: 10, scope: !571)
!3758 = !DILocation(line: 51, column: 27, scope: !3694, inlinedAt: !3757)
!3759 = !DILocation(line: 53, column: 10, scope: !3703, inlinedAt: !3757)
!3760 = !DILocation(line: 207, column: 14, scope: !3750)
!3761 = !DILocation(line: 207, column: 18, scope: !3750)
!3762 = !DILocation(line: 207, column: 9, scope: !3750)
!3763 = !DILocation(line: 53, column: 8, scope: !3703, inlinedAt: !3757)
!3764 = !DILocation(line: 57, column: 7, scope: !3708, inlinedAt: !3757)
!3765 = !DILocation(line: 58, column: 7, scope: !3708, inlinedAt: !3757)
!3766 = !DILocation(line: 61, column: 7, scope: !3694, inlinedAt: !3757)
!3767 = !DILocation(line: 62, column: 8, scope: !3712, inlinedAt: !3757)
!3768 = !DILocation(line: 62, column: 13, scope: !3714, inlinedAt: !3757)
!3769 = !DILocation(line: 62, column: 10, scope: !3712, inlinedAt: !3757)
!3770 = !DILocation(line: 63, column: 5, scope: !3712, inlinedAt: !3757)
!3771 = !DILocation(line: 211, column: 3, scope: !571)
!3772 = distinct !DISubprogram(name: "xcharalloc", scope: !570, file: !570, line: 220, type: !2694, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !566, variables: !3773)
!3773 = !{!3774}
!3774 = !DILocalVariable(name: "n", arg: 1, scope: !3772, file: !570, line: 220, type: !37)
!3775 = !DILocation(line: 220, column: 20, scope: !3772)
!3776 = !DILocation(line: 39, column: 17, scope: !3653, inlinedAt: !3777)
!3777 = distinct !DILocation(line: 222, column: 10, scope: !3772)
!3778 = !DILocation(line: 41, column: 13, scope: !3653, inlinedAt: !3777)
!3779 = !DILocation(line: 41, column: 9, scope: !3653, inlinedAt: !3777)
!3780 = !DILocation(line: 42, column: 8, scope: !3664, inlinedAt: !3777)
!3781 = !DILocation(line: 42, column: 15, scope: !3666, inlinedAt: !3777)
!3782 = !DILocation(line: 42, column: 10, scope: !3664, inlinedAt: !3777)
!3783 = !DILocation(line: 43, column: 5, scope: !3664, inlinedAt: !3777)
!3784 = !DILocation(line: 222, column: 3, scope: !3772)
!3785 = distinct !DISubprogram(name: "x2realloc", scope: !3654, file: !3654, line: 74, type: !3786, isLocal: false, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, unit: !566, variables: !3788)
!3786 = !DISubroutineType(types: !3787)
!3787 = !{!30, !30, !574}
!3788 = !{!3789, !3790}
!3789 = !DILocalVariable(name: "p", arg: 1, scope: !3785, file: !3654, line: 74, type: !30)
!3790 = !DILocalVariable(name: "pn", arg: 2, scope: !3785, file: !3654, line: 74, type: !574)
!3791 = !DILocation(line: 74, column: 18, scope: !3785)
!3792 = !DILocation(line: 74, column: 29, scope: !3785)
!3793 = !DILocation(line: 180, column: 19, scope: !571, inlinedAt: !3794)
!3794 = distinct !DILocation(line: 76, column: 10, scope: !3785)
!3795 = !DILocation(line: 180, column: 30, scope: !571, inlinedAt: !3794)
!3796 = !DILocation(line: 180, column: 41, scope: !571, inlinedAt: !3794)
!3797 = !DILocation(line: 182, column: 14, scope: !571, inlinedAt: !3794)
!3798 = !DILocation(line: 182, column: 10, scope: !571, inlinedAt: !3794)
!3799 = !DILocation(line: 184, column: 9, scope: !3737, inlinedAt: !3794)
!3800 = !DILocation(line: 184, column: 7, scope: !571, inlinedAt: !3794)
!3801 = !DILocation(line: 186, column: 13, scope: !3740, inlinedAt: !3794)
!3802 = !DILocation(line: 186, column: 11, scope: !3741, inlinedAt: !3794)
!3803 = !DILocation(line: 210, column: 7, scope: !571, inlinedAt: !3794)
!3804 = !DILocation(line: 51, column: 17, scope: !3694, inlinedAt: !3805)
!3805 = distinct !DILocation(line: 211, column: 10, scope: !571, inlinedAt: !3794)
!3806 = !DILocation(line: 51, column: 27, scope: !3694, inlinedAt: !3805)
!3807 = !DILocation(line: 53, column: 10, scope: !3703, inlinedAt: !3805)
!3808 = !DILocation(line: 205, column: 11, scope: !3749, inlinedAt: !3794)
!3809 = !DILocation(line: 204, column: 11, scope: !3750, inlinedAt: !3794)
!3810 = !DILocation(line: 206, column: 9, scope: !3749, inlinedAt: !3794)
!3811 = !DILocation(line: 207, column: 14, scope: !3750, inlinedAt: !3794)
!3812 = !DILocation(line: 207, column: 18, scope: !3750, inlinedAt: !3794)
!3813 = !DILocation(line: 207, column: 9, scope: !3750, inlinedAt: !3794)
!3814 = !DILocation(line: 53, column: 8, scope: !3703, inlinedAt: !3805)
!3815 = !DILocation(line: 57, column: 7, scope: !3708, inlinedAt: !3805)
!3816 = !DILocation(line: 58, column: 7, scope: !3708, inlinedAt: !3805)
!3817 = !DILocation(line: 61, column: 7, scope: !3694, inlinedAt: !3805)
!3818 = !DILocation(line: 62, column: 8, scope: !3712, inlinedAt: !3805)
!3819 = !DILocation(line: 62, column: 13, scope: !3714, inlinedAt: !3805)
!3820 = !DILocation(line: 62, column: 10, scope: !3712, inlinedAt: !3805)
!3821 = !DILocation(line: 63, column: 5, scope: !3712, inlinedAt: !3805)
!3822 = !DILocation(line: 76, column: 3, scope: !3785)
!3823 = distinct !DISubprogram(name: "xzalloc", scope: !3654, file: !3654, line: 84, type: !3655, isLocal: false, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: true, unit: !566, variables: !3824)
!3824 = !{!3825}
!3825 = !DILocalVariable(name: "s", arg: 1, scope: !3823, file: !3654, line: 84, type: !37)
!3826 = !DILocation(line: 84, column: 17, scope: !3823)
!3827 = !DILocation(line: 39, column: 17, scope: !3653, inlinedAt: !3828)
!3828 = distinct !DILocation(line: 86, column: 18, scope: !3823)
!3829 = !DILocation(line: 41, column: 13, scope: !3653, inlinedAt: !3828)
!3830 = !DILocation(line: 41, column: 9, scope: !3653, inlinedAt: !3828)
!3831 = !DILocation(line: 42, column: 8, scope: !3664, inlinedAt: !3828)
!3832 = !DILocation(line: 42, column: 15, scope: !3666, inlinedAt: !3828)
!3833 = !DILocation(line: 42, column: 10, scope: !3664, inlinedAt: !3828)
!3834 = !DILocation(line: 43, column: 5, scope: !3664, inlinedAt: !3828)
!3835 = !DILocation(line: 86, column: 10, scope: !3823)
!3836 = !DILocation(line: 86, column: 3, scope: !3823)
!3837 = distinct !DISubprogram(name: "xcalloc", scope: !3654, file: !3654, line: 93, type: !1131, isLocal: false, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: true, unit: !566, variables: !3838)
!3838 = !{!3839, !3840, !3841}
!3839 = !DILocalVariable(name: "n", arg: 1, scope: !3837, file: !3654, line: 93, type: !37)
!3840 = !DILocalVariable(name: "s", arg: 2, scope: !3837, file: !3654, line: 93, type: !37)
!3841 = !DILocalVariable(name: "p", scope: !3837, file: !3654, line: 95, type: !30)
!3842 = !DILocation(line: 93, column: 17, scope: !3837)
!3843 = !DILocation(line: 93, column: 27, scope: !3837)
!3844 = !DILocation(line: 100, column: 7, scope: !3845)
!3845 = distinct !DILexicalBlock(scope: !3837, file: !3654, line: 100, column: 7)
!3846 = !DILocation(line: 101, column: 7, scope: !3845)
!3847 = !DILocation(line: 101, column: 18, scope: !3848)
!3848 = !DILexicalBlockFile(scope: !3845, file: !3654, discriminator: 1)
!3849 = !DILocation(line: 95, column: 9, scope: !3837)
!3850 = !DILocation(line: 101, column: 16, scope: !3848)
!3851 = !DILocation(line: 100, column: 7, scope: !3852)
!3852 = !DILexicalBlockFile(scope: !3837, file: !3654, discriminator: 1)
!3853 = !DILocation(line: 102, column: 5, scope: !3845)
!3854 = !DILocation(line: 103, column: 3, scope: !3837)
!3855 = distinct !DISubprogram(name: "xmemdup", scope: !3654, file: !3654, line: 111, type: !3856, isLocal: false, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: true, unit: !566, variables: !3858)
!3856 = !DISubroutineType(types: !3857)
!3857 = !{!30, !39, !37}
!3858 = !{!3859, !3860}
!3859 = !DILocalVariable(name: "p", arg: 1, scope: !3855, file: !3654, line: 111, type: !39)
!3860 = !DILocalVariable(name: "s", arg: 2, scope: !3855, file: !3654, line: 111, type: !37)
!3861 = !DILocation(line: 111, column: 22, scope: !3855)
!3862 = !DILocation(line: 111, column: 32, scope: !3855)
!3863 = !DILocation(line: 39, column: 17, scope: !3653, inlinedAt: !3864)
!3864 = distinct !DILocation(line: 113, column: 18, scope: !3855)
!3865 = !DILocation(line: 41, column: 13, scope: !3653, inlinedAt: !3864)
!3866 = !DILocation(line: 41, column: 9, scope: !3653, inlinedAt: !3864)
!3867 = !DILocation(line: 42, column: 8, scope: !3664, inlinedAt: !3864)
!3868 = !DILocation(line: 42, column: 15, scope: !3666, inlinedAt: !3864)
!3869 = !DILocation(line: 42, column: 10, scope: !3664, inlinedAt: !3864)
!3870 = !DILocation(line: 43, column: 5, scope: !3664, inlinedAt: !3864)
!3871 = !DILocation(line: 113, column: 10, scope: !3855)
!3872 = !DILocation(line: 113, column: 3, scope: !3855)
!3873 = distinct !DISubprogram(name: "xstrdup", scope: !3654, file: !3654, line: 119, type: !2899, isLocal: false, isDefinition: true, scopeLine: 120, flags: DIFlagPrototyped, isOptimized: true, unit: !566, variables: !3874)
!3874 = !{!3875}
!3875 = !DILocalVariable(name: "string", arg: 1, scope: !3873, file: !3654, line: 119, type: !44)
!3876 = !DILocation(line: 119, column: 22, scope: !3873)
!3877 = !DILocation(line: 121, column: 27, scope: !3873)
!3878 = !DILocation(line: 121, column: 43, scope: !3873)
!3879 = !DILocation(line: 111, column: 22, scope: !3855, inlinedAt: !3880)
!3880 = distinct !DILocation(line: 121, column: 10, scope: !3881)
!3881 = !DILexicalBlockFile(scope: !3873, file: !3654, discriminator: 1)
!3882 = !DILocation(line: 111, column: 32, scope: !3855, inlinedAt: !3880)
!3883 = !DILocation(line: 39, column: 17, scope: !3653, inlinedAt: !3884)
!3884 = distinct !DILocation(line: 113, column: 18, scope: !3855, inlinedAt: !3880)
!3885 = !DILocation(line: 41, column: 13, scope: !3653, inlinedAt: !3884)
!3886 = !DILocation(line: 41, column: 9, scope: !3653, inlinedAt: !3884)
!3887 = !DILocation(line: 42, column: 8, scope: !3664, inlinedAt: !3884)
!3888 = !DILocation(line: 42, column: 15, scope: !3666, inlinedAt: !3884)
!3889 = !DILocation(line: 42, column: 10, scope: !3664, inlinedAt: !3884)
!3890 = !DILocation(line: 43, column: 5, scope: !3664, inlinedAt: !3884)
!3891 = !DILocation(line: 113, column: 10, scope: !3855, inlinedAt: !3880)
!3892 = !DILocation(line: 121, column: 3, scope: !3873)
!3893 = distinct !DISubprogram(name: "xalloc_die", scope: !3894, file: !3894, line: 32, type: !638, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !583, variables: !94)
!3894 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3895 = !DILocation(line: 34, column: 10, scope: !3893)
!3896 = !DILocation(line: 34, column: 33, scope: !3893)
!3897 = !DILocation(line: 34, column: 3, scope: !3898)
!3898 = !DILexicalBlockFile(scope: !3893, file: !3894, discriminator: 1)
!3899 = !DILocation(line: 40, column: 3, scope: !3893)
!3900 = distinct !DISubprogram(name: "xstrtoumax", scope: !3901, file: !3901, line: 88, type: !3902, isLocal: false, isDefinition: true, scopeLine: 90, flags: DIFlagPrototyped, isOptimized: true, unit: !585, variables: !3906)
!3901 = !DIFile(filename: "./lib/xstrtol.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3902 = !DISubroutineType(types: !3903)
!3903 = !{!3904, !44, !683, !74, !3905, !44}
!3904 = !DIDerivedType(tag: DW_TAG_typedef, name: "strtol_error", file: !6, line: 39, baseType: !5)
!3905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !711, size: 64)
!3906 = !{!3907, !3908, !3909, !3910, !3911, !3912, !3913, !3914, !3915, !3916, !3919, !3920, !3923, !3924}
!3907 = !DILocalVariable(name: "s", arg: 1, scope: !3900, file: !3901, line: 88, type: !44)
!3908 = !DILocalVariable(name: "ptr", arg: 2, scope: !3900, file: !3901, line: 88, type: !683)
!3909 = !DILocalVariable(name: "strtol_base", arg: 3, scope: !3900, file: !3901, line: 88, type: !74)
!3910 = !DILocalVariable(name: "val", arg: 4, scope: !3900, file: !3901, line: 89, type: !3905)
!3911 = !DILocalVariable(name: "valid_suffixes", arg: 5, scope: !3900, file: !3901, line: 89, type: !44)
!3912 = !DILocalVariable(name: "t_ptr", scope: !3900, file: !3901, line: 91, type: !28)
!3913 = !DILocalVariable(name: "p", scope: !3900, file: !3901, line: 92, type: !683)
!3914 = !DILocalVariable(name: "tmp", scope: !3900, file: !3901, line: 93, type: !711)
!3915 = !DILocalVariable(name: "err", scope: !3900, file: !3901, line: 94, type: !3904)
!3916 = !DILocalVariable(name: "q", scope: !3917, file: !3901, line: 104, type: !44)
!3917 = distinct !DILexicalBlock(scope: !3918, file: !3901, line: 103, column: 5)
!3918 = distinct !DILexicalBlock(scope: !3900, file: !3901, line: 102, column: 7)
!3919 = !DILocalVariable(name: "ch", scope: !3917, file: !3901, line: 105, type: !43)
!3920 = !DILocalVariable(name: "base", scope: !3921, file: !3901, line: 141, type: !74)
!3921 = distinct !DILexicalBlock(scope: !3922, file: !3901, line: 140, column: 5)
!3922 = distinct !DILexicalBlock(scope: !3900, file: !3901, line: 139, column: 7)
!3923 = !DILocalVariable(name: "suffixes", scope: !3921, file: !3901, line: 142, type: !74)
!3924 = !DILocalVariable(name: "overflow", scope: !3921, file: !3901, line: 143, type: !3904)
!3925 = !DILocation(line: 88, column: 24, scope: !3900)
!3926 = !DILocation(line: 88, column: 34, scope: !3900)
!3927 = !DILocation(line: 88, column: 43, scope: !3900)
!3928 = !DILocation(line: 89, column: 24, scope: !3900)
!3929 = !DILocation(line: 89, column: 41, scope: !3900)
!3930 = !DILocation(line: 91, column: 3, scope: !3900)
!3931 = !DILocation(line: 94, column: 16, scope: !3900)
!3932 = !DILocation(line: 96, column: 3, scope: !3933)
!3933 = distinct !DILexicalBlock(scope: !3934, file: !3901, line: 96, column: 3)
!3934 = distinct !DILexicalBlock(scope: !3900, file: !3901, line: 96, column: 3)
!3935 = !DILocation(line: 96, column: 3, scope: !3936)
!3936 = !DILexicalBlockFile(scope: !3933, file: !3901, discriminator: 3)
!3937 = !DILocation(line: 98, column: 8, scope: !3900)
!3938 = !DILocation(line: 92, column: 10, scope: !3900)
!3939 = !DILocation(line: 100, column: 3, scope: !3900)
!3940 = !DILocation(line: 100, column: 9, scope: !3900)
!3941 = !DILocation(line: 104, column: 19, scope: !3917)
!3942 = !DILocation(line: 106, column: 14, scope: !3943)
!3943 = !DILexicalBlockFile(scope: !3917, file: !3901, discriminator: 1)
!3944 = !DILocation(line: 106, column: 7, scope: !3917)
!3945 = !DILocation(line: 105, column: 21, scope: !3917)
!3946 = !DILocation(line: 106, column: 7, scope: !3943)
!3947 = !DILocation(line: 107, column: 15, scope: !3917)
!3948 = distinct !{!3948, !3944, !3949}
!3949 = !DILocation(line: 107, column: 17, scope: !3917)
!3950 = !DILocation(line: 109, column: 9, scope: !3951)
!3951 = distinct !DILexicalBlock(scope: !3917, file: !3901, line: 108, column: 11)
!3952 = !DILocalVariable(name: "nptr", arg: 1, scope: !3953, file: !3954, line: 336, type: !3957)
!3953 = distinct !DISubprogram(name: "strtoumax", scope: !3954, file: !3954, line: 336, type: !3955, isLocal: false, isDefinition: true, scopeLine: 338, flags: DIFlagPrototyped, isOptimized: true, unit: !585, variables: !3959)
!3954 = !DIFile(filename: "/usr/include/inttypes.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3955 = !DISubroutineType(types: !3956)
!3956 = !{!711, !3957, !3958, !74}
!3957 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !44)
!3958 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !683)
!3959 = !{!3952, !3960, !3961}
!3960 = !DILocalVariable(name: "endptr", arg: 2, scope: !3953, file: !3954, line: 336, type: !3958)
!3961 = !DILocalVariable(name: "base", arg: 3, scope: !3953, file: !3954, line: 336, type: !74)
!3962 = !DILocation(line: 336, column: 1, scope: !3953, inlinedAt: !3963)
!3963 = distinct !DILocation(line: 112, column: 9, scope: !3900)
!3964 = !DILocation(line: 339, column: 10, scope: !3953, inlinedAt: !3963)
!3965 = !DILocation(line: 93, column: 14, scope: !3900)
!3966 = !DILocation(line: 114, column: 7, scope: !3967)
!3967 = distinct !DILexicalBlock(scope: !3900, file: !3901, line: 114, column: 7)
!3968 = !DILocation(line: 114, column: 10, scope: !3967)
!3969 = !DILocation(line: 114, column: 7, scope: !3900)
!3970 = !DILocation(line: 118, column: 11, scope: !3971)
!3971 = distinct !DILexicalBlock(scope: !3972, file: !3901, line: 118, column: 11)
!3972 = distinct !DILexicalBlock(scope: !3967, file: !3901, line: 115, column: 5)
!3973 = !DILocation(line: 118, column: 26, scope: !3971)
!3974 = !DILocation(line: 118, column: 29, scope: !3975)
!3975 = !DILexicalBlockFile(scope: !3971, file: !3901, discriminator: 1)
!3976 = !DILocation(line: 118, column: 33, scope: !3975)
!3977 = !DILocation(line: 118, column: 36, scope: !3978)
!3978 = !DILexicalBlockFile(scope: !3971, file: !3901, discriminator: 5)
!3979 = !DILocation(line: 118, column: 11, scope: !3980)
!3980 = !DILexicalBlockFile(scope: !3972, file: !3901, discriminator: 5)
!3981 = !DILocation(line: 123, column: 12, scope: !3982)
!3982 = distinct !DILexicalBlock(scope: !3967, file: !3901, line: 123, column: 12)
!3983 = !DILocation(line: 123, column: 12, scope: !3967)
!3984 = !DILocation(line: 128, column: 5, scope: !3985)
!3985 = distinct !DILexicalBlock(scope: !3982, file: !3901, line: 124, column: 5)
!3986 = !DILocation(line: 133, column: 8, scope: !3987)
!3987 = distinct !DILexicalBlock(scope: !3900, file: !3901, line: 133, column: 7)
!3988 = !DILocation(line: 133, column: 7, scope: !3900)
!3989 = !DILocation(line: 135, column: 12, scope: !3990)
!3990 = distinct !DILexicalBlock(scope: !3987, file: !3901, line: 134, column: 5)
!3991 = !DILocation(line: 136, column: 7, scope: !3990)
!3992 = !DILocation(line: 139, column: 7, scope: !3922)
!3993 = !DILocation(line: 139, column: 11, scope: !3922)
!3994 = !DILocation(line: 139, column: 7, scope: !3900)
!3995 = !DILocation(line: 141, column: 11, scope: !3921)
!3996 = !DILocation(line: 142, column: 11, scope: !3921)
!3997 = !DILocation(line: 145, column: 12, scope: !3998)
!3998 = !DILexicalBlockFile(scope: !3999, file: !3901, discriminator: 3)
!3999 = distinct !DILexicalBlock(scope: !3921, file: !3901, line: 145, column: 11)
!4000 = !DILocation(line: 145, column: 11, scope: !4001)
!4001 = !DILexicalBlockFile(scope: !3921, file: !3901, discriminator: 3)
!4002 = !DILocation(line: 147, column: 16, scope: !4003)
!4003 = distinct !DILexicalBlock(scope: !3999, file: !3901, line: 146, column: 9)
!4004 = !DILocation(line: 148, column: 22, scope: !4003)
!4005 = !DILocation(line: 148, column: 11, scope: !4003)
!4006 = !DILocation(line: 151, column: 7, scope: !3921)
!4007 = !DILocation(line: 163, column: 15, scope: !4008)
!4008 = !DILexicalBlockFile(scope: !4009, file: !3901, discriminator: 2)
!4009 = distinct !DILexicalBlock(scope: !4010, file: !3901, line: 163, column: 15)
!4010 = distinct !DILexicalBlock(scope: !3921, file: !3901, line: 152, column: 9)
!4011 = !DILocation(line: 163, column: 15, scope: !4012)
!4012 = !DILexicalBlockFile(scope: !4010, file: !3901, discriminator: 2)
!4013 = !DILocation(line: 164, column: 21, scope: !4009)
!4014 = !DILocation(line: 164, column: 13, scope: !4009)
!4015 = !DILocation(line: 167, column: 21, scope: !4016)
!4016 = distinct !DILexicalBlock(scope: !4017, file: !3901, line: 167, column: 21)
!4017 = distinct !DILexicalBlock(scope: !4009, file: !3901, line: 165, column: 15)
!4018 = !DILocation(line: 167, column: 29, scope: !4016)
!4019 = !DILocation(line: 167, column: 21, scope: !4017)
!4020 = !DILocation(line: 175, column: 17, scope: !4017)
!4021 = !DILocation(line: 179, column: 7, scope: !3921)
!4022 = !DILocalVariable(name: "scale_factor", arg: 2, scope: !4023, file: !3901, line: 60, type: !74)
!4023 = distinct !DISubprogram(name: "bkm_scale", scope: !3901, file: !3901, line: 60, type: !4024, isLocal: true, isDefinition: true, scopeLine: 61, flags: DIFlagPrototyped, isOptimized: true, unit: !585, variables: !4026)
!4024 = !DISubroutineType(types: !4025)
!4025 = !{!3904, !3905, !74}
!4026 = !{!4027, !4022}
!4027 = !DILocalVariable(name: "x", arg: 1, scope: !4023, file: !3901, line: 60, type: !3905)
!4028 = !DILocation(line: 60, column: 31, scope: !4023, inlinedAt: !4029)
!4029 = distinct !DILocation(line: 182, column: 22, scope: !4030)
!4030 = distinct !DILexicalBlock(scope: !3921, file: !3901, line: 180, column: 9)
!4031 = !DILocation(line: 67, column: 39, scope: !4032, inlinedAt: !4029)
!4032 = distinct !DILexicalBlock(scope: !4023, file: !3901, line: 67, column: 7)
!4033 = !DILocation(line: 72, column: 6, scope: !4023, inlinedAt: !4029)
!4034 = !DILocation(line: 67, column: 7, scope: !4023, inlinedAt: !4029)
!4035 = !DILocation(line: 143, column: 20, scope: !3921)
!4036 = !DILocation(line: 183, column: 11, scope: !4030)
!4037 = !DILocation(line: 60, column: 31, scope: !4023, inlinedAt: !4038)
!4038 = distinct !DILocation(line: 189, column: 22, scope: !4030)
!4039 = !DILocation(line: 67, column: 39, scope: !4032, inlinedAt: !4038)
!4040 = !DILocation(line: 72, column: 6, scope: !4023, inlinedAt: !4038)
!4041 = !DILocation(line: 67, column: 7, scope: !4023, inlinedAt: !4038)
!4042 = !DILocation(line: 190, column: 11, scope: !4030)
!4043 = !DILocalVariable(name: "power", arg: 3, scope: !4044, file: !3901, line: 77, type: !74)
!4044 = distinct !DISubprogram(name: "bkm_scale_by_power", scope: !3901, file: !3901, line: 77, type: !4045, isLocal: true, isDefinition: true, scopeLine: 78, flags: DIFlagPrototyped, isOptimized: true, unit: !585, variables: !4047)
!4045 = !DISubroutineType(types: !4046)
!4046 = !{!3904, !3905, !74, !74}
!4047 = !{!4048, !4049, !4043, !4050}
!4048 = !DILocalVariable(name: "x", arg: 1, scope: !4044, file: !3901, line: 77, type: !3905)
!4049 = !DILocalVariable(name: "base", arg: 2, scope: !4044, file: !3901, line: 77, type: !74)
!4050 = !DILocalVariable(name: "err", scope: !4044, file: !3901, line: 79, type: !3904)
!4051 = !DILocation(line: 77, column: 50, scope: !4044, inlinedAt: !4052)
!4052 = distinct !DILocation(line: 197, column: 22, scope: !4030)
!4053 = !DILocation(line: 79, column: 16, scope: !4044, inlinedAt: !4052)
!4054 = !DILocation(line: 67, column: 39, scope: !4032, inlinedAt: !4055)
!4055 = distinct !DILocation(line: 81, column: 12, scope: !4044, inlinedAt: !4052)
!4056 = !DILocation(line: 72, column: 6, scope: !4023, inlinedAt: !4055)
!4057 = !DILocation(line: 67, column: 7, scope: !4023, inlinedAt: !4055)
!4058 = !DILocation(line: 81, column: 9, scope: !4044, inlinedAt: !4052)
!4059 = !DILocation(line: 77, column: 50, scope: !4044, inlinedAt: !4060)
!4060 = distinct !DILocation(line: 202, column: 22, scope: !4030)
!4061 = !DILocation(line: 79, column: 16, scope: !4044, inlinedAt: !4060)
!4062 = !DILocation(line: 67, column: 39, scope: !4032, inlinedAt: !4063)
!4063 = distinct !DILocation(line: 81, column: 12, scope: !4044, inlinedAt: !4060)
!4064 = !DILocation(line: 72, column: 6, scope: !4023, inlinedAt: !4063)
!4065 = !DILocation(line: 67, column: 7, scope: !4023, inlinedAt: !4063)
!4066 = !DILocation(line: 81, column: 9, scope: !4044, inlinedAt: !4060)
!4067 = !DILocation(line: 77, column: 50, scope: !4044, inlinedAt: !4068)
!4068 = distinct !DILocation(line: 207, column: 22, scope: !4030)
!4069 = !DILocation(line: 79, column: 16, scope: !4044, inlinedAt: !4068)
!4070 = !DILocation(line: 67, column: 39, scope: !4032, inlinedAt: !4071)
!4071 = distinct !DILocation(line: 81, column: 12, scope: !4044, inlinedAt: !4068)
!4072 = !DILocation(line: 72, column: 6, scope: !4023, inlinedAt: !4071)
!4073 = !DILocation(line: 67, column: 7, scope: !4023, inlinedAt: !4071)
!4074 = !DILocation(line: 77, column: 50, scope: !4044, inlinedAt: !4075)
!4075 = distinct !DILocation(line: 212, column: 22, scope: !4030)
!4076 = !DILocation(line: 79, column: 16, scope: !4044, inlinedAt: !4075)
!4077 = !DILocation(line: 67, column: 39, scope: !4032, inlinedAt: !4078)
!4078 = distinct !DILocation(line: 81, column: 12, scope: !4044, inlinedAt: !4075)
!4079 = !DILocation(line: 72, column: 6, scope: !4023, inlinedAt: !4078)
!4080 = !DILocation(line: 67, column: 7, scope: !4023, inlinedAt: !4078)
!4081 = !DILocation(line: 81, column: 9, scope: !4044, inlinedAt: !4075)
!4082 = !DILocation(line: 77, column: 50, scope: !4044, inlinedAt: !4083)
!4083 = distinct !DILocation(line: 216, column: 22, scope: !4030)
!4084 = !DILocation(line: 79, column: 16, scope: !4044, inlinedAt: !4083)
!4085 = !DILocation(line: 67, column: 39, scope: !4032, inlinedAt: !4086)
!4086 = distinct !DILocation(line: 81, column: 12, scope: !4044, inlinedAt: !4083)
!4087 = !DILocation(line: 72, column: 6, scope: !4023, inlinedAt: !4086)
!4088 = !DILocation(line: 67, column: 7, scope: !4023, inlinedAt: !4086)
!4089 = !DILocation(line: 81, column: 9, scope: !4044, inlinedAt: !4083)
!4090 = !DILocation(line: 77, column: 50, scope: !4044, inlinedAt: !4091)
!4091 = distinct !DILocation(line: 221, column: 22, scope: !4030)
!4092 = !DILocation(line: 79, column: 16, scope: !4044, inlinedAt: !4091)
!4093 = !DILocation(line: 67, column: 39, scope: !4032, inlinedAt: !4094)
!4094 = distinct !DILocation(line: 81, column: 12, scope: !4044, inlinedAt: !4091)
!4095 = !DILocation(line: 72, column: 6, scope: !4023, inlinedAt: !4094)
!4096 = !DILocation(line: 67, column: 7, scope: !4023, inlinedAt: !4094)
!4097 = !DILocation(line: 81, column: 9, scope: !4044, inlinedAt: !4091)
!4098 = !DILocation(line: 60, column: 31, scope: !4023, inlinedAt: !4099)
!4099 = distinct !DILocation(line: 225, column: 22, scope: !4030)
!4100 = !DILocation(line: 67, column: 39, scope: !4032, inlinedAt: !4099)
!4101 = !DILocation(line: 72, column: 6, scope: !4023, inlinedAt: !4099)
!4102 = !DILocation(line: 67, column: 7, scope: !4023, inlinedAt: !4099)
!4103 = !DILocation(line: 226, column: 11, scope: !4030)
!4104 = !DILocation(line: 77, column: 50, scope: !4044, inlinedAt: !4105)
!4105 = distinct !DILocation(line: 229, column: 22, scope: !4030)
!4106 = !DILocation(line: 79, column: 16, scope: !4044, inlinedAt: !4105)
!4107 = !DILocation(line: 67, column: 39, scope: !4032, inlinedAt: !4108)
!4108 = distinct !DILocation(line: 81, column: 12, scope: !4044, inlinedAt: !4105)
!4109 = !DILocation(line: 72, column: 6, scope: !4023, inlinedAt: !4108)
!4110 = !DILocation(line: 67, column: 7, scope: !4023, inlinedAt: !4108)
!4111 = !DILocation(line: 81, column: 9, scope: !4044, inlinedAt: !4105)
!4112 = !DILocation(line: 77, column: 50, scope: !4044, inlinedAt: !4113)
!4113 = distinct !DILocation(line: 233, column: 22, scope: !4030)
!4114 = !DILocation(line: 79, column: 16, scope: !4044, inlinedAt: !4113)
!4115 = !DILocation(line: 67, column: 39, scope: !4032, inlinedAt: !4116)
!4116 = distinct !DILocation(line: 81, column: 12, scope: !4044, inlinedAt: !4113)
!4117 = !DILocation(line: 72, column: 6, scope: !4023, inlinedAt: !4116)
!4118 = !DILocation(line: 67, column: 7, scope: !4023, inlinedAt: !4116)
!4119 = !DILocation(line: 81, column: 9, scope: !4044, inlinedAt: !4113)
!4120 = !DILocation(line: 237, column: 16, scope: !4030)
!4121 = !DILocation(line: 238, column: 22, scope: !4030)
!4122 = !DILocation(line: 238, column: 11, scope: !4030)
!4123 = !DILocation(line: 241, column: 11, scope: !3921)
!4124 = !DILocation(line: 242, column: 10, scope: !3921)
!4125 = !DILocation(line: 243, column: 11, scope: !4126)
!4126 = distinct !DILexicalBlock(scope: !3921, file: !3901, line: 243, column: 11)
!4127 = !DILocation(line: 244, column: 13, scope: !4126)
!4128 = !DILocation(line: 243, column: 11, scope: !3921)
!4129 = !DILocation(line: 247, column: 8, scope: !3900)
!4130 = !DILocation(line: 248, column: 3, scope: !3900)
!4131 = !DILocation(line: 249, column: 1, scope: !3900)
!4132 = distinct !DISubprogram(name: "rpl_calloc", scope: !4133, file: !4133, line: 42, type: !1131, isLocal: false, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: true, unit: !589, variables: !4134)
!4133 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4134 = !{!4135, !4136, !4137, !4138}
!4135 = !DILocalVariable(name: "n", arg: 1, scope: !4132, file: !4133, line: 42, type: !37)
!4136 = !DILocalVariable(name: "s", arg: 2, scope: !4132, file: !4133, line: 42, type: !37)
!4137 = !DILocalVariable(name: "result", scope: !4132, file: !4133, line: 44, type: !30)
!4138 = !DILocalVariable(name: "bytes", scope: !4139, file: !4133, line: 56, type: !37)
!4139 = distinct !DILexicalBlock(scope: !4140, file: !4133, line: 53, column: 5)
!4140 = distinct !DILexicalBlock(scope: !4132, file: !4133, line: 47, column: 7)
!4141 = !DILocation(line: 42, column: 20, scope: !4132)
!4142 = !DILocation(line: 42, column: 30, scope: !4132)
!4143 = !DILocation(line: 47, column: 9, scope: !4140)
!4144 = !DILocation(line: 47, column: 19, scope: !4145)
!4145 = !DILexicalBlockFile(scope: !4140, file: !4133, discriminator: 1)
!4146 = !DILocation(line: 47, column: 14, scope: !4140)
!4147 = !DILocation(line: 56, column: 24, scope: !4139)
!4148 = !DILocation(line: 56, column: 14, scope: !4139)
!4149 = !DILocation(line: 57, column: 17, scope: !4150)
!4150 = distinct !DILexicalBlock(scope: !4139, file: !4133, line: 57, column: 11)
!4151 = !DILocation(line: 57, column: 21, scope: !4150)
!4152 = !DILocation(line: 57, column: 11, scope: !4139)
!4153 = !DILocation(line: 59, column: 11, scope: !4154)
!4154 = distinct !DILexicalBlock(scope: !4150, file: !4133, line: 58, column: 9)
!4155 = !DILocation(line: 59, column: 17, scope: !4154)
!4156 = !DILocation(line: 65, column: 12, scope: !4132)
!4157 = !DILocation(line: 44, column: 9, scope: !4132)
!4158 = !DILocation(line: 72, column: 3, scope: !4132)
!4159 = !DILocation(line: 73, column: 1, scope: !4132)
!4160 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !4161, file: !4161, line: 334, type: !4162, isLocal: false, isDefinition: true, scopeLine: 335, flags: DIFlagPrototyped, isOptimized: true, unit: !591, variables: !4176)
!4161 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4162 = !DISubroutineType(types: !4163)
!4163 = !{!37, !4164, !44, !37, !4165}
!4164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1680, size: 64)
!4165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4166, size: 64)
!4166 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1665, line: 107, baseType: !4167)
!4167 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1665, line: 95, baseType: !4168)
!4168 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1665, line: 83, size: 64, elements: !4169)
!4169 = !{!4170, !4171}
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !4168, file: !1665, line: 85, baseType: !74, size: 32)
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !4168, file: !1665, line: 94, baseType: !4172, size: 32, offset: 32)
!4172 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4168, file: !1665, line: 86, size: 32, elements: !4173)
!4173 = !{!4174, !4175}
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !4172, file: !1665, line: 89, baseType: !31, size: 32)
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !4172, file: !1665, line: 93, baseType: !1675, size: 32)
!4176 = !{!4177, !4178, !4179, !4180, !4181, !4182, !4183}
!4177 = !DILocalVariable(name: "pwc", arg: 1, scope: !4160, file: !4161, line: 334, type: !4164)
!4178 = !DILocalVariable(name: "s", arg: 2, scope: !4160, file: !4161, line: 334, type: !44)
!4179 = !DILocalVariable(name: "n", arg: 3, scope: !4160, file: !4161, line: 334, type: !37)
!4180 = !DILocalVariable(name: "ps", arg: 4, scope: !4160, file: !4161, line: 334, type: !4165)
!4181 = !DILocalVariable(name: "ret", scope: !4160, file: !4161, line: 336, type: !37)
!4182 = !DILocalVariable(name: "wc", scope: !4160, file: !4161, line: 337, type: !1680)
!4183 = !DILocalVariable(name: "uc", scope: !4184, file: !4161, line: 398, type: !43)
!4184 = distinct !DILexicalBlock(scope: !4185, file: !4161, line: 397, column: 5)
!4185 = distinct !DILexicalBlock(scope: !4160, file: !4161, line: 396, column: 7)
!4186 = !DILocation(line: 334, column: 23, scope: !4160)
!4187 = !DILocation(line: 334, column: 40, scope: !4160)
!4188 = !DILocation(line: 334, column: 50, scope: !4160)
!4189 = !DILocation(line: 334, column: 64, scope: !4160)
!4190 = !DILocation(line: 337, column: 3, scope: !4160)
!4191 = !DILocation(line: 353, column: 9, scope: !4192)
!4192 = distinct !DILexicalBlock(scope: !4160, file: !4161, line: 353, column: 7)
!4193 = !DILocation(line: 353, column: 7, scope: !4160)
!4194 = !DILocation(line: 388, column: 9, scope: !4160)
!4195 = !DILocation(line: 336, column: 10, scope: !4160)
!4196 = !DILocation(line: 396, column: 19, scope: !4185)
!4197 = !DILocation(line: 396, column: 31, scope: !4198)
!4198 = !DILexicalBlockFile(scope: !4185, file: !4161, discriminator: 1)
!4199 = !DILocation(line: 396, column: 26, scope: !4185)
!4200 = !DILocation(line: 396, column: 41, scope: !4201)
!4201 = !DILexicalBlockFile(scope: !4185, file: !4161, discriminator: 2)
!4202 = !DILocation(line: 396, column: 7, scope: !4203)
!4203 = !DILexicalBlockFile(scope: !4160, file: !4161, discriminator: 2)
!4204 = !DILocation(line: 398, column: 26, scope: !4184)
!4205 = !DILocation(line: 398, column: 21, scope: !4184)
!4206 = !DILocation(line: 399, column: 14, scope: !4184)
!4207 = !DILocation(line: 399, column: 12, scope: !4184)
!4208 = !DILocation(line: 405, column: 1, scope: !4160)
!4209 = distinct !DISubprogram(name: "close_stream", scope: !4210, file: !4210, line: 56, type: !4211, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !593, variables: !4253)
!4210 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4211 = !DISubroutineType(types: !4212)
!4212 = !{!74, !4213}
!4213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4214, size: 64)
!4214 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3425, line: 49, baseType: !4215)
!4215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3427, line: 241, size: 1728, elements: !4216)
!4216 = !{!4217, !4218, !4219, !4220, !4221, !4222, !4223, !4224, !4225, !4226, !4227, !4228, !4229, !4237, !4238, !4239, !4240, !4241, !4242, !4243, !4244, !4245, !4246, !4247, !4248, !4249, !4250, !4251, !4252}
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4215, file: !3427, line: 242, baseType: !74, size: 32)
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4215, file: !3427, line: 247, baseType: !28, size: 64, offset: 64)
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4215, file: !3427, line: 248, baseType: !28, size: 64, offset: 128)
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4215, file: !3427, line: 249, baseType: !28, size: 64, offset: 192)
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4215, file: !3427, line: 250, baseType: !28, size: 64, offset: 256)
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4215, file: !3427, line: 251, baseType: !28, size: 64, offset: 320)
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4215, file: !3427, line: 252, baseType: !28, size: 64, offset: 384)
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4215, file: !3427, line: 253, baseType: !28, size: 64, offset: 448)
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4215, file: !3427, line: 254, baseType: !28, size: 64, offset: 512)
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4215, file: !3427, line: 256, baseType: !28, size: 64, offset: 576)
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4215, file: !3427, line: 257, baseType: !28, size: 64, offset: 640)
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4215, file: !3427, line: 258, baseType: !28, size: 64, offset: 704)
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4215, file: !3427, line: 260, baseType: !4230, size: 64, offset: 768)
!4230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4231, size: 64)
!4231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !3427, line: 156, size: 192, elements: !4232)
!4232 = !{!4233, !4234, !4236}
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4231, file: !3427, line: 157, baseType: !4230, size: 64)
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4231, file: !3427, line: 158, baseType: !4235, size: 64, offset: 64)
!4235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4215, size: 64)
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4231, file: !3427, line: 162, baseType: !74, size: 32, offset: 128)
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4215, file: !3427, line: 262, baseType: !4235, size: 64, offset: 832)
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4215, file: !3427, line: 264, baseType: !74, size: 32, offset: 896)
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4215, file: !3427, line: 268, baseType: !74, size: 32, offset: 928)
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4215, file: !3427, line: 270, baseType: !1273, size: 64, offset: 960)
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4215, file: !3427, line: 274, baseType: !145, size: 16, offset: 1024)
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4215, file: !3427, line: 275, baseType: !3455, size: 8, offset: 1040)
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4215, file: !3427, line: 276, baseType: !3457, size: 8, offset: 1048)
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4215, file: !3427, line: 280, baseType: !3461, size: 64, offset: 1088)
!4245 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4215, file: !3427, line: 289, baseType: !3464, size: 64, offset: 1152)
!4246 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4215, file: !3427, line: 297, baseType: !30, size: 64, offset: 1216)
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4215, file: !3427, line: 298, baseType: !30, size: 64, offset: 1280)
!4248 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4215, file: !3427, line: 299, baseType: !30, size: 64, offset: 1344)
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4215, file: !3427, line: 300, baseType: !30, size: 64, offset: 1408)
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4215, file: !3427, line: 302, baseType: !37, size: 64, offset: 1472)
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4215, file: !3427, line: 303, baseType: !74, size: 32, offset: 1536)
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4215, file: !3427, line: 305, baseType: !3472, size: 160, offset: 1568)
!4253 = !{!4254, !4255, !4257, !4258}
!4254 = !DILocalVariable(name: "stream", arg: 1, scope: !4209, file: !4210, line: 56, type: !4213)
!4255 = !DILocalVariable(name: "some_pending", scope: !4209, file: !4210, line: 58, type: !4256)
!4256 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !104)
!4257 = !DILocalVariable(name: "prev_fail", scope: !4209, file: !4210, line: 59, type: !4256)
!4258 = !DILocalVariable(name: "fclose_fail", scope: !4209, file: !4210, line: 60, type: !4256)
!4259 = !DILocation(line: 56, column: 21, scope: !4209)
!4260 = !DILocation(line: 58, column: 30, scope: !4209)
!4261 = !DILocalVariable(name: "__stream", arg: 1, scope: !4262, file: !4263, line: 132, type: !4213)
!4262 = distinct !DISubprogram(name: "ferror_unlocked", scope: !4263, file: !4263, line: 132, type: !4211, isLocal: false, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !593, variables: !4264)
!4263 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4264 = !{!4261}
!4265 = !DILocation(line: 132, column: 1, scope: !4262, inlinedAt: !4266)
!4266 = distinct !DILocation(line: 59, column: 27, scope: !4209)
!4267 = !DILocation(line: 134, column: 10, scope: !4262, inlinedAt: !4266)
!4268 = !{!4269, !777, i64 0}
!4269 = !{!"_IO_FILE", !777, i64 0, !623, i64 8, !623, i64 16, !623, i64 24, !623, i64 32, !623, i64 40, !623, i64 48, !623, i64 56, !623, i64 64, !623, i64 72, !623, i64 80, !623, i64 88, !623, i64 96, !623, i64 104, !777, i64 112, !777, i64 116, !860, i64 120, !2032, i64 128, !624, i64 130, !624, i64 131, !623, i64 136, !860, i64 144, !623, i64 152, !623, i64 160, !623, i64 168, !623, i64 176, !860, i64 184, !777, i64 192, !624, i64 196}
!4270 = !DILocation(line: 59, column: 43, scope: !4209)
!4271 = !DILocation(line: 60, column: 29, scope: !4209)
!4272 = !DILocation(line: 60, column: 45, scope: !4209)
!4273 = !DILocation(line: 70, column: 17, scope: !4274)
!4274 = distinct !DILexicalBlock(scope: !4209, file: !4210, line: 70, column: 7)
!4275 = !DILocation(line: 70, column: 33, scope: !4276)
!4276 = !DILexicalBlockFile(scope: !4274, file: !4210, discriminator: 1)
!4277 = !DILocation(line: 70, column: 53, scope: !4278)
!4278 = !DILexicalBlockFile(scope: !4274, file: !4210, discriminator: 3)
!4279 = !DILocation(line: 70, column: 7, scope: !4280)
!4280 = !DILexicalBlockFile(scope: !4209, file: !4210, discriminator: 3)
!4281 = !DILocation(line: 72, column: 11, scope: !4282)
!4282 = distinct !DILexicalBlock(scope: !4274, file: !4210, line: 71, column: 5)
!4283 = !DILocation(line: 73, column: 9, scope: !4284)
!4284 = distinct !DILexicalBlock(scope: !4282, file: !4210, line: 72, column: 11)
!4285 = !DILocation(line: 73, column: 15, scope: !4284)
!4286 = !DILocation(line: 78, column: 1, scope: !4209)
!4287 = distinct !DISubprogram(name: "hard_locale", scope: !4288, file: !4288, line: 38, type: !4289, isLocal: false, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, unit: !595, variables: !4291)
!4288 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4289 = !DISubroutineType(types: !4290)
!4290 = !{!104, !74}
!4291 = !{!4292, !4293, !4294, !4295, !4302, !4303, !4305, !4306, !4308, !4309, !4311}
!4292 = !DILocalVariable(name: "category", arg: 1, scope: !4287, file: !4288, line: 38, type: !74)
!4293 = !DILocalVariable(name: "hard", scope: !4287, file: !4288, line: 40, type: !104)
!4294 = !DILocalVariable(name: "p", scope: !4287, file: !4288, line: 41, type: !44)
!4295 = !DILocalVariable(name: "__s1_len", scope: !4296, file: !4288, line: 47, type: !37)
!4296 = distinct !DILexicalBlock(scope: !4297, file: !4288, line: 47, column: 15)
!4297 = distinct !DILexicalBlock(scope: !4298, file: !4288, line: 47, column: 15)
!4298 = distinct !DILexicalBlock(scope: !4299, file: !4288, line: 46, column: 9)
!4299 = distinct !DILexicalBlock(scope: !4300, file: !4288, line: 45, column: 11)
!4300 = distinct !DILexicalBlock(scope: !4301, file: !4288, line: 44, column: 5)
!4301 = distinct !DILexicalBlock(scope: !4287, file: !4288, line: 43, column: 7)
!4302 = !DILocalVariable(name: "__s2_len", scope: !4296, file: !4288, line: 47, type: !37)
!4303 = !DILocalVariable(name: "__s2", scope: !4304, file: !4288, line: 47, type: !41)
!4304 = distinct !DILexicalBlock(scope: !4296, file: !4288, line: 47, column: 15)
!4305 = !DILocalVariable(name: "__result", scope: !4304, file: !4288, line: 47, type: !74)
!4306 = !DILocalVariable(name: "__s1_len", scope: !4307, file: !4288, line: 47, type: !37)
!4307 = distinct !DILexicalBlock(scope: !4297, file: !4288, line: 47, column: 39)
!4308 = !DILocalVariable(name: "__s2_len", scope: !4307, file: !4288, line: 47, type: !37)
!4309 = !DILocalVariable(name: "__s2", scope: !4310, file: !4288, line: 47, type: !41)
!4310 = distinct !DILexicalBlock(scope: !4307, file: !4288, line: 47, column: 39)
!4311 = !DILocalVariable(name: "__result", scope: !4310, file: !4288, line: 47, type: !74)
!4312 = !DILocation(line: 38, column: 18, scope: !4287)
!4313 = !DILocation(line: 40, column: 8, scope: !4287)
!4314 = !DILocation(line: 41, column: 19, scope: !4287)
!4315 = !DILocation(line: 41, column: 15, scope: !4287)
!4316 = !DILocation(line: 43, column: 7, scope: !4301)
!4317 = !DILocation(line: 43, column: 7, scope: !4287)
!4318 = !DILocation(line: 47, column: 15, scope: !4296)
!4319 = !DILocation(line: 47, column: 15, scope: !4304)
!4320 = !DILocation(line: 47, column: 15, scope: !4321)
!4321 = !DILexicalBlockFile(scope: !4304, file: !4288, discriminator: 2)
!4322 = !DILocation(line: 47, column: 15, scope: !4323)
!4323 = !DILexicalBlockFile(scope: !4324, file: !4288, discriminator: 3)
!4324 = distinct !DILexicalBlock(scope: !4304, file: !4288, line: 47, column: 15)
!4325 = !DILocation(line: 47, column: 15, scope: !4326)
!4326 = !DILexicalBlockFile(scope: !4324, file: !4288, discriminator: 2)
!4327 = !DILocation(line: 47, column: 15, scope: !4328)
!4328 = !DILexicalBlockFile(scope: !4329, file: !4288, discriminator: 4)
!4329 = distinct !DILexicalBlock(scope: !4324, file: !4288, line: 47, column: 15)
!4330 = !DILocation(line: 47, column: 15, scope: !4331)
!4331 = !DILexicalBlockFile(scope: !4296, file: !4288, discriminator: 11)
!4332 = !DILocation(line: 47, column: 36, scope: !4333)
!4333 = !DILexicalBlockFile(scope: !4297, file: !4288, discriminator: 13)
!4334 = !DILocation(line: 47, column: 39, scope: !4307)
!4335 = !DILocation(line: 47, column: 39, scope: !4336)
!4336 = !DILexicalBlockFile(scope: !4307, file: !4288, discriminator: 26)
!4337 = !DILocation(line: 47, column: 59, scope: !4338)
!4338 = !DILexicalBlockFile(scope: !4297, file: !4288, discriminator: 27)
!4339 = !DILocation(line: 47, column: 15, scope: !4340)
!4340 = !DILexicalBlockFile(scope: !4298, file: !4288, discriminator: 27)
!4341 = !DILocation(line: 48, column: 13, scope: !4297)
!4342 = !DILocation(line: 71, column: 3, scope: !4287)
!4343 = distinct !DISubprogram(name: "locale_charset", scope: !543, file: !543, line: 393, type: !4344, isLocal: false, isDefinition: true, scopeLine: 394, flags: DIFlagPrototyped, isOptimized: true, unit: !199, variables: !4346)
!4344 = !DISubroutineType(types: !4345)
!4345 = !{!44}
!4346 = !{!4347, !4348, !4349, !4354}
!4347 = !DILocalVariable(name: "codeset", scope: !4343, file: !543, line: 395, type: !44)
!4348 = !DILocalVariable(name: "aliases", scope: !4343, file: !543, line: 396, type: !44)
!4349 = !DILocalVariable(name: "__s1_len", scope: !4350, file: !543, line: 592, type: !37)
!4350 = distinct !DILexicalBlock(scope: !4351, file: !543, line: 592, column: 9)
!4351 = distinct !DILexicalBlock(scope: !4352, file: !543, line: 592, column: 9)
!4352 = distinct !DILexicalBlock(scope: !4353, file: !543, line: 589, column: 3)
!4353 = distinct !DILexicalBlock(scope: !4343, file: !543, line: 589, column: 3)
!4354 = !DILocalVariable(name: "__s2_len", scope: !4350, file: !543, line: 592, type: !37)
!4355 = !DILocalVariable(name: "buf1", scope: !4356, file: !543, line: 196, type: !4423)
!4356 = distinct !DILexicalBlock(scope: !4357, file: !543, line: 194, column: 21)
!4357 = distinct !DILexicalBlock(scope: !4358, file: !543, line: 193, column: 19)
!4358 = distinct !DILexicalBlock(scope: !4359, file: !543, line: 193, column: 19)
!4359 = distinct !DILexicalBlock(scope: !4360, file: !543, line: 188, column: 17)
!4360 = distinct !DILexicalBlock(scope: !4361, file: !543, line: 181, column: 19)
!4361 = distinct !DILexicalBlock(scope: !4362, file: !543, line: 177, column: 13)
!4362 = distinct !DILexicalBlock(scope: !4363, file: !543, line: 173, column: 15)
!4363 = distinct !DILexicalBlock(scope: !4364, file: !543, line: 161, column: 9)
!4364 = distinct !DILexicalBlock(scope: !4365, file: !543, line: 157, column: 11)
!4365 = distinct !DILexicalBlock(scope: !4366, file: !543, line: 130, column: 5)
!4366 = distinct !DILexicalBlock(scope: !4367, file: !543, line: 129, column: 7)
!4367 = distinct !DISubprogram(name: "get_charset_aliases", scope: !543, file: !543, line: 124, type: !4344, isLocal: true, isDefinition: true, scopeLine: 125, flags: DIFlagPrototyped, isOptimized: true, unit: !199, variables: !4368)
!4368 = !{!4369, !4370, !4371, !4372, !4373, !4375, !4376, !4377, !4378, !4419, !4420, !4421, !4355, !4422, !4426, !4427, !4428}
!4369 = !DILocalVariable(name: "cp", scope: !4367, file: !543, line: 126, type: !44)
!4370 = !DILocalVariable(name: "dir", scope: !4365, file: !543, line: 132, type: !44)
!4371 = !DILocalVariable(name: "base", scope: !4365, file: !543, line: 133, type: !44)
!4372 = !DILocalVariable(name: "file_name", scope: !4365, file: !543, line: 134, type: !28)
!4373 = !DILocalVariable(name: "dir_len", scope: !4374, file: !543, line: 144, type: !37)
!4374 = distinct !DILexicalBlock(scope: !4365, file: !543, line: 143, column: 7)
!4375 = !DILocalVariable(name: "base_len", scope: !4374, file: !543, line: 145, type: !37)
!4376 = !DILocalVariable(name: "add_slash", scope: !4374, file: !543, line: 146, type: !74)
!4377 = !DILocalVariable(name: "fd", scope: !4363, file: !543, line: 162, type: !74)
!4378 = !DILocalVariable(name: "fp", scope: !4361, file: !543, line: 178, type: !4379)
!4379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4380, size: 64)
!4380 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3425, line: 49, baseType: !4381)
!4381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3427, line: 241, size: 1728, elements: !4382)
!4382 = !{!4383, !4384, !4385, !4386, !4387, !4388, !4389, !4390, !4391, !4392, !4393, !4394, !4395, !4403, !4404, !4405, !4406, !4407, !4408, !4409, !4410, !4411, !4412, !4413, !4414, !4415, !4416, !4417, !4418}
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4381, file: !3427, line: 242, baseType: !74, size: 32)
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4381, file: !3427, line: 247, baseType: !28, size: 64, offset: 64)
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4381, file: !3427, line: 248, baseType: !28, size: 64, offset: 128)
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4381, file: !3427, line: 249, baseType: !28, size: 64, offset: 192)
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4381, file: !3427, line: 250, baseType: !28, size: 64, offset: 256)
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4381, file: !3427, line: 251, baseType: !28, size: 64, offset: 320)
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4381, file: !3427, line: 252, baseType: !28, size: 64, offset: 384)
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4381, file: !3427, line: 253, baseType: !28, size: 64, offset: 448)
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4381, file: !3427, line: 254, baseType: !28, size: 64, offset: 512)
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4381, file: !3427, line: 256, baseType: !28, size: 64, offset: 576)
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4381, file: !3427, line: 257, baseType: !28, size: 64, offset: 640)
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4381, file: !3427, line: 258, baseType: !28, size: 64, offset: 704)
!4395 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4381, file: !3427, line: 260, baseType: !4396, size: 64, offset: 768)
!4396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4397, size: 64)
!4397 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !3427, line: 156, size: 192, elements: !4398)
!4398 = !{!4399, !4400, !4402}
!4399 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4397, file: !3427, line: 157, baseType: !4396, size: 64)
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4397, file: !3427, line: 158, baseType: !4401, size: 64, offset: 64)
!4401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4381, size: 64)
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4397, file: !3427, line: 162, baseType: !74, size: 32, offset: 128)
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4381, file: !3427, line: 262, baseType: !4401, size: 64, offset: 832)
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4381, file: !3427, line: 264, baseType: !74, size: 32, offset: 896)
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4381, file: !3427, line: 268, baseType: !74, size: 32, offset: 928)
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4381, file: !3427, line: 270, baseType: !1273, size: 64, offset: 960)
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4381, file: !3427, line: 274, baseType: !145, size: 16, offset: 1024)
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4381, file: !3427, line: 275, baseType: !3455, size: 8, offset: 1040)
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4381, file: !3427, line: 276, baseType: !3457, size: 8, offset: 1048)
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4381, file: !3427, line: 280, baseType: !3461, size: 64, offset: 1088)
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4381, file: !3427, line: 289, baseType: !3464, size: 64, offset: 1152)
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4381, file: !3427, line: 297, baseType: !30, size: 64, offset: 1216)
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4381, file: !3427, line: 298, baseType: !30, size: 64, offset: 1280)
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4381, file: !3427, line: 299, baseType: !30, size: 64, offset: 1344)
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4381, file: !3427, line: 300, baseType: !30, size: 64, offset: 1408)
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4381, file: !3427, line: 302, baseType: !37, size: 64, offset: 1472)
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4381, file: !3427, line: 303, baseType: !74, size: 32, offset: 1536)
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4381, file: !3427, line: 305, baseType: !3472, size: 160, offset: 1568)
!4419 = !DILocalVariable(name: "res_ptr", scope: !4359, file: !543, line: 190, type: !28)
!4420 = !DILocalVariable(name: "res_size", scope: !4359, file: !543, line: 191, type: !37)
!4421 = !DILocalVariable(name: "c", scope: !4356, file: !543, line: 195, type: !74)
!4422 = !DILocalVariable(name: "buf2", scope: !4356, file: !543, line: 197, type: !4423)
!4423 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 408, elements: !4424)
!4424 = !{!4425}
!4425 = !DISubrange(count: 51)
!4426 = !DILocalVariable(name: "l1", scope: !4356, file: !543, line: 198, type: !37)
!4427 = !DILocalVariable(name: "l2", scope: !4356, file: !543, line: 198, type: !37)
!4428 = !DILocalVariable(name: "old_res_ptr", scope: !4356, file: !543, line: 199, type: !28)
!4429 = !DILocation(line: 196, column: 28, scope: !4356, inlinedAt: !4430)
!4430 = distinct !DILocation(line: 589, column: 18, scope: !4353)
!4431 = !DILocation(line: 197, column: 28, scope: !4356, inlinedAt: !4430)
!4432 = !DILocation(line: 403, column: 13, scope: !4343)
!4433 = !DILocation(line: 395, column: 15, scope: !4343)
!4434 = !DILocation(line: 584, column: 15, scope: !4435)
!4435 = distinct !DILexicalBlock(scope: !4343, file: !543, line: 584, column: 7)
!4436 = !DILocation(line: 584, column: 7, scope: !4343)
!4437 = !DILocation(line: 128, column: 8, scope: !4367, inlinedAt: !4430)
!4438 = !DILocation(line: 126, column: 15, scope: !4367, inlinedAt: !4430)
!4439 = !DILocation(line: 129, column: 10, scope: !4366, inlinedAt: !4430)
!4440 = !DILocation(line: 129, column: 7, scope: !4367, inlinedAt: !4430)
!4441 = !DILocation(line: 138, column: 13, scope: !4365, inlinedAt: !4430)
!4442 = !DILocation(line: 132, column: 19, scope: !4365, inlinedAt: !4430)
!4443 = !DILocation(line: 139, column: 15, scope: !4444, inlinedAt: !4430)
!4444 = distinct !DILexicalBlock(scope: !4365, file: !543, line: 139, column: 11)
!4445 = !DILocation(line: 139, column: 23, scope: !4444, inlinedAt: !4430)
!4446 = !DILocation(line: 139, column: 26, scope: !4447, inlinedAt: !4430)
!4447 = !DILexicalBlockFile(scope: !4444, file: !543, discriminator: 1)
!4448 = !DILocation(line: 139, column: 33, scope: !4447, inlinedAt: !4430)
!4449 = !DILocation(line: 139, column: 11, scope: !4450, inlinedAt: !4430)
!4450 = !DILexicalBlockFile(scope: !4365, file: !543, discriminator: 1)
!4451 = !DILocation(line: 140, column: 9, scope: !4444, inlinedAt: !4430)
!4452 = !DILocation(line: 144, column: 26, scope: !4374, inlinedAt: !4430)
!4453 = !DILocation(line: 144, column: 16, scope: !4374, inlinedAt: !4430)
!4454 = !DILocation(line: 145, column: 16, scope: !4374, inlinedAt: !4430)
!4455 = !DILocation(line: 146, column: 34, scope: !4374, inlinedAt: !4430)
!4456 = !DILocation(line: 146, column: 38, scope: !4374, inlinedAt: !4430)
!4457 = !DILocation(line: 146, column: 42, scope: !4458, inlinedAt: !4430)
!4458 = !DILexicalBlockFile(scope: !4374, file: !543, discriminator: 1)
!4459 = !DILocation(line: 146, column: 41, scope: !4458, inlinedAt: !4430)
!4460 = !DILocation(line: 147, column: 48, scope: !4374, inlinedAt: !4430)
!4461 = !DILocation(line: 147, column: 46, scope: !4374, inlinedAt: !4430)
!4462 = !DILocation(line: 147, column: 69, scope: !4374, inlinedAt: !4430)
!4463 = !DILocation(line: 147, column: 30, scope: !4374, inlinedAt: !4430)
!4464 = !DILocation(line: 134, column: 13, scope: !4365, inlinedAt: !4430)
!4465 = !DILocation(line: 148, column: 13, scope: !4374, inlinedAt: !4430)
!4466 = !DILocation(line: 150, column: 13, scope: !4467, inlinedAt: !4430)
!4467 = distinct !DILexicalBlock(scope: !4468, file: !543, line: 149, column: 11)
!4468 = distinct !DILexicalBlock(scope: !4374, file: !543, line: 148, column: 13)
!4469 = !DILocation(line: 151, column: 17, scope: !4467, inlinedAt: !4430)
!4470 = !DILocation(line: 152, column: 34, scope: !4471, inlinedAt: !4430)
!4471 = distinct !DILexicalBlock(scope: !4467, file: !543, line: 151, column: 17)
!4472 = !DILocation(line: 153, column: 41, scope: !4467, inlinedAt: !4430)
!4473 = !DILocation(line: 153, column: 13, scope: !4467, inlinedAt: !4430)
!4474 = !DILocation(line: 157, column: 11, scope: !4365, inlinedAt: !4430)
!4475 = !DILocation(line: 171, column: 16, scope: !4363, inlinedAt: !4430)
!4476 = !DILocation(line: 162, column: 15, scope: !4363, inlinedAt: !4430)
!4477 = !DILocation(line: 173, column: 18, scope: !4362, inlinedAt: !4430)
!4478 = !DILocation(line: 173, column: 15, scope: !4363, inlinedAt: !4430)
!4479 = !DILocation(line: 180, column: 20, scope: !4361, inlinedAt: !4430)
!4480 = !DILocation(line: 178, column: 21, scope: !4361, inlinedAt: !4430)
!4481 = !DILocation(line: 181, column: 22, scope: !4360, inlinedAt: !4430)
!4482 = !DILocation(line: 181, column: 19, scope: !4361, inlinedAt: !4430)
!4483 = !DILocation(line: 190, column: 25, scope: !4359, inlinedAt: !4430)
!4484 = !DILocation(line: 184, column: 19, scope: !4485, inlinedAt: !4430)
!4485 = distinct !DILexicalBlock(scope: !4360, file: !543, line: 182, column: 17)
!4486 = !DILocation(line: 186, column: 17, scope: !4485, inlinedAt: !4430)
!4487 = !DILocation(line: 191, column: 26, scope: !4359, inlinedAt: !4430)
!4488 = !DILocation(line: 196, column: 23, scope: !4356, inlinedAt: !4430)
!4489 = !DILocation(line: 197, column: 23, scope: !4356, inlinedAt: !4430)
!4490 = !DILocalVariable(name: "__fp", arg: 1, scope: !4491, file: !4263, line: 63, type: !4379)
!4491 = distinct !DISubprogram(name: "getc_unlocked", scope: !4263, file: !4263, line: 63, type: !4492, isLocal: false, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: true, unit: !199, variables: !4494)
!4492 = !DISubroutineType(types: !4493)
!4493 = !{!74, !4379}
!4494 = !{!4490}
!4495 = !DILocation(line: 63, column: 22, scope: !4491, inlinedAt: !4496)
!4496 = distinct !DILocation(line: 201, column: 27, scope: !4356, inlinedAt: !4430)
!4497 = !DILocation(line: 65, column: 10, scope: !4491, inlinedAt: !4496)
!4498 = !{!4269, !623, i64 8}
!4499 = !{!4269, !623, i64 16}
!4500 = !{!"branch_weights", i32 2000, i32 1}
!4501 = !DILocation(line: 65, column: 10, scope: !4502, inlinedAt: !4496)
!4502 = !DILexicalBlockFile(scope: !4491, file: !4263, discriminator: 1)
!4503 = !DILocation(line: 65, column: 10, scope: !4504, inlinedAt: !4496)
!4504 = !DILexicalBlockFile(scope: !4491, file: !4263, discriminator: 2)
!4505 = !DILocation(line: 65, column: 10, scope: !4506, inlinedAt: !4496)
!4506 = !DILexicalBlockFile(scope: !4491, file: !4263, discriminator: 3)
!4507 = !DILocation(line: 195, column: 27, scope: !4356, inlinedAt: !4430)
!4508 = !DILocation(line: 202, column: 27, scope: !4356, inlinedAt: !4430)
!4509 = !DILocation(line: 63, column: 22, scope: !4491, inlinedAt: !4510)
!4510 = distinct !DILocation(line: 210, column: 33, scope: !4511, inlinedAt: !4430)
!4511 = distinct !DILexicalBlock(scope: !4512, file: !543, line: 207, column: 25)
!4512 = distinct !DILexicalBlock(scope: !4356, file: !543, line: 206, column: 27)
!4513 = !DILocation(line: 65, column: 10, scope: !4491, inlinedAt: !4510)
!4514 = !DILocation(line: 65, column: 10, scope: !4502, inlinedAt: !4510)
!4515 = !DILocation(line: 65, column: 10, scope: !4504, inlinedAt: !4510)
!4516 = !DILocation(line: 65, column: 10, scope: !4506, inlinedAt: !4510)
!4517 = !DILocation(line: 210, column: 29, scope: !4518, inlinedAt: !4430)
!4518 = !DILexicalBlockFile(scope: !4511, file: !543, discriminator: 1)
!4519 = distinct !{!4519, !4520, !4521}
!4520 = !DILocation(line: 193, column: 19, scope: !4358)
!4521 = !DILocation(line: 241, column: 21, scope: !4358)
!4522 = !DILocation(line: 216, column: 23, scope: !4356, inlinedAt: !4430)
!4523 = !DILocation(line: 217, column: 27, scope: !4524, inlinedAt: !4430)
!4524 = distinct !DILexicalBlock(scope: !4356, file: !543, line: 217, column: 27)
!4525 = !DILocation(line: 217, column: 64, scope: !4524, inlinedAt: !4430)
!4526 = !DILocation(line: 217, column: 27, scope: !4356, inlinedAt: !4430)
!4527 = !DILocation(line: 219, column: 28, scope: !4356, inlinedAt: !4430)
!4528 = !DILocation(line: 198, column: 30, scope: !4356, inlinedAt: !4430)
!4529 = !DILocation(line: 220, column: 28, scope: !4356, inlinedAt: !4430)
!4530 = !DILocation(line: 198, column: 34, scope: !4356, inlinedAt: !4430)
!4531 = !DILocation(line: 199, column: 29, scope: !4356, inlinedAt: !4430)
!4532 = !DILocation(line: 222, column: 36, scope: !4533, inlinedAt: !4430)
!4533 = distinct !DILexicalBlock(scope: !4356, file: !543, line: 222, column: 27)
!4534 = !DILocation(line: 222, column: 27, scope: !4356, inlinedAt: !4430)
!4535 = !DILocation(line: 225, column: 63, scope: !4536, inlinedAt: !4430)
!4536 = distinct !DILexicalBlock(scope: !4533, file: !543, line: 223, column: 25)
!4537 = !DILocation(line: 225, column: 46, scope: !4536, inlinedAt: !4430)
!4538 = !DILocation(line: 226, column: 25, scope: !4536, inlinedAt: !4430)
!4539 = !DILocation(line: 229, column: 36, scope: !4540, inlinedAt: !4430)
!4540 = distinct !DILexicalBlock(scope: !4533, file: !543, line: 228, column: 25)
!4541 = !DILocation(line: 230, column: 73, scope: !4540, inlinedAt: !4430)
!4542 = !DILocation(line: 230, column: 46, scope: !4540, inlinedAt: !4430)
!4543 = !DILocation(line: 232, column: 35, scope: !4544, inlinedAt: !4430)
!4544 = distinct !DILexicalBlock(scope: !4356, file: !543, line: 232, column: 27)
!4545 = !DILocation(line: 232, column: 27, scope: !4356, inlinedAt: !4430)
!4546 = !DILocation(line: 236, column: 27, scope: !4547, inlinedAt: !4430)
!4547 = distinct !DILexicalBlock(scope: !4544, file: !543, line: 233, column: 25)
!4548 = !DILocation(line: 237, column: 27, scope: !4547, inlinedAt: !4430)
!4549 = !DILocation(line: 239, column: 39, scope: !4356, inlinedAt: !4430)
!4550 = !DILocation(line: 239, column: 50, scope: !4356, inlinedAt: !4430)
!4551 = !DILocation(line: 239, column: 61, scope: !4356, inlinedAt: !4430)
!4552 = !DILocalVariable(name: "__dest", arg: 1, scope: !4553, file: !4554, line: 107, type: !4557)
!4553 = distinct !DISubprogram(name: "strcpy", scope: !4554, file: !4554, line: 107, type: !4555, isLocal: false, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: true, unit: !199, variables: !4558)
!4554 = !DIFile(filename: "/usr/include/bits/string3.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4555 = !DISubroutineType(types: !4556)
!4556 = !{!28, !4557, !3957}
!4557 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !28)
!4558 = !{!4552, !4559}
!4559 = !DILocalVariable(name: "__src", arg: 2, scope: !4553, file: !4554, line: 107, type: !3957)
!4560 = !DILocation(line: 107, column: 1, scope: !4553, inlinedAt: !4561)
!4561 = distinct !DILocation(line: 239, column: 23, scope: !4356, inlinedAt: !4430)
!4562 = !DILocation(line: 109, column: 49, scope: !4553, inlinedAt: !4561)
!4563 = !DILocation(line: 109, column: 10, scope: !4553, inlinedAt: !4561)
!4564 = !DILocation(line: 107, column: 1, scope: !4553, inlinedAt: !4565)
!4565 = distinct !DILocation(line: 240, column: 23, scope: !4356, inlinedAt: !4430)
!4566 = !DILocation(line: 109, column: 49, scope: !4553, inlinedAt: !4565)
!4567 = !DILocation(line: 109, column: 10, scope: !4553, inlinedAt: !4565)
!4568 = !DILocation(line: 241, column: 21, scope: !4357, inlinedAt: !4430)
!4569 = !DILocation(line: 242, column: 19, scope: !4359, inlinedAt: !4430)
!4570 = !DILocation(line: 243, column: 32, scope: !4571, inlinedAt: !4430)
!4571 = distinct !DILexicalBlock(scope: !4359, file: !543, line: 243, column: 23)
!4572 = !DILocation(line: 243, column: 23, scope: !4359, inlinedAt: !4430)
!4573 = !DILocation(line: 247, column: 33, scope: !4574, inlinedAt: !4430)
!4574 = distinct !DILexicalBlock(scope: !4571, file: !543, line: 246, column: 21)
!4575 = !DILocation(line: 247, column: 45, scope: !4574, inlinedAt: !4430)
!4576 = !DILocation(line: 253, column: 11, scope: !4363, inlinedAt: !4430)
!4577 = !DILocation(line: 377, column: 23, scope: !4365, inlinedAt: !4430)
!4578 = !DILocation(line: 378, column: 5, scope: !4365, inlinedAt: !4430)
!4579 = !DILocation(line: 396, column: 15, scope: !4343)
!4580 = !DILocation(line: 590, column: 8, scope: !4352)
!4581 = !DILocation(line: 590, column: 17, scope: !4352)
!4582 = !DILocation(line: 589, column: 3, scope: !4583)
!4583 = !DILexicalBlockFile(scope: !4353, file: !543, discriminator: 1)
!4584 = !DILocation(line: 592, column: 9, scope: !4350)
!4585 = !DILocation(line: 592, column: 35, scope: !4351)
!4586 = !DILocation(line: 593, column: 9, scope: !4351)
!4587 = !DILocation(line: 593, column: 24, scope: !4588)
!4588 = !DILexicalBlockFile(scope: !4351, file: !543, discriminator: 1)
!4589 = !DILocation(line: 593, column: 31, scope: !4588)
!4590 = !DILocation(line: 593, column: 34, scope: !4591)
!4591 = !DILexicalBlockFile(scope: !4351, file: !543, discriminator: 2)
!4592 = !DILocation(line: 593, column: 45, scope: !4591)
!4593 = !DILocation(line: 592, column: 9, scope: !4594)
!4594 = !DILexicalBlockFile(scope: !4352, file: !543, discriminator: 1)
!4595 = !DILocation(line: 595, column: 29, scope: !4596)
!4596 = distinct !DILexicalBlock(scope: !4351, file: !543, line: 594, column: 7)
!4597 = !DILocation(line: 595, column: 27, scope: !4596)
!4598 = !DILocation(line: 595, column: 46, scope: !4596)
!4599 = !DILocation(line: 596, column: 9, scope: !4596)
!4600 = !DILocation(line: 591, column: 19, scope: !4352)
!4601 = !DILocation(line: 591, column: 36, scope: !4352)
!4602 = !DILocation(line: 591, column: 16, scope: !4352)
!4603 = !DILocation(line: 591, column: 52, scope: !4594)
!4604 = !DILocation(line: 591, column: 69, scope: !4352)
!4605 = !DILocation(line: 591, column: 49, scope: !4352)
!4606 = distinct !{!4606, !4607, !4608}
!4607 = !DILocation(line: 589, column: 3, scope: !4353)
!4608 = !DILocation(line: 597, column: 7, scope: !4353)
!4609 = !DILocation(line: 602, column: 7, scope: !4610)
!4610 = distinct !DILexicalBlock(scope: !4343, file: !543, line: 602, column: 7)
!4611 = !DILocation(line: 602, column: 18, scope: !4610)
!4612 = !DILocation(line: 602, column: 7, scope: !4343)
!4613 = !DILocation(line: 612, column: 3, scope: !4343)
!4614 = distinct !DISubprogram(name: "rpl_fclose", scope: !4615, file: !4615, line: 56, type: !4616, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !598, variables: !4658)
!4615 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4616 = !DISubroutineType(types: !4617)
!4617 = !{!74, !4618}
!4618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4619, size: 64)
!4619 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3425, line: 49, baseType: !4620)
!4620 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3427, line: 241, size: 1728, elements: !4621)
!4621 = !{!4622, !4623, !4624, !4625, !4626, !4627, !4628, !4629, !4630, !4631, !4632, !4633, !4634, !4642, !4643, !4644, !4645, !4646, !4647, !4648, !4649, !4650, !4651, !4652, !4653, !4654, !4655, !4656, !4657}
!4622 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4620, file: !3427, line: 242, baseType: !74, size: 32)
!4623 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4620, file: !3427, line: 247, baseType: !28, size: 64, offset: 64)
!4624 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4620, file: !3427, line: 248, baseType: !28, size: 64, offset: 128)
!4625 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4620, file: !3427, line: 249, baseType: !28, size: 64, offset: 192)
!4626 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4620, file: !3427, line: 250, baseType: !28, size: 64, offset: 256)
!4627 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4620, file: !3427, line: 251, baseType: !28, size: 64, offset: 320)
!4628 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4620, file: !3427, line: 252, baseType: !28, size: 64, offset: 384)
!4629 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4620, file: !3427, line: 253, baseType: !28, size: 64, offset: 448)
!4630 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4620, file: !3427, line: 254, baseType: !28, size: 64, offset: 512)
!4631 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4620, file: !3427, line: 256, baseType: !28, size: 64, offset: 576)
!4632 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4620, file: !3427, line: 257, baseType: !28, size: 64, offset: 640)
!4633 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4620, file: !3427, line: 258, baseType: !28, size: 64, offset: 704)
!4634 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4620, file: !3427, line: 260, baseType: !4635, size: 64, offset: 768)
!4635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4636, size: 64)
!4636 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !3427, line: 156, size: 192, elements: !4637)
!4637 = !{!4638, !4639, !4641}
!4638 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4636, file: !3427, line: 157, baseType: !4635, size: 64)
!4639 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4636, file: !3427, line: 158, baseType: !4640, size: 64, offset: 64)
!4640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4620, size: 64)
!4641 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4636, file: !3427, line: 162, baseType: !74, size: 32, offset: 128)
!4642 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4620, file: !3427, line: 262, baseType: !4640, size: 64, offset: 832)
!4643 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4620, file: !3427, line: 264, baseType: !74, size: 32, offset: 896)
!4644 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4620, file: !3427, line: 268, baseType: !74, size: 32, offset: 928)
!4645 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4620, file: !3427, line: 270, baseType: !1273, size: 64, offset: 960)
!4646 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4620, file: !3427, line: 274, baseType: !145, size: 16, offset: 1024)
!4647 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4620, file: !3427, line: 275, baseType: !3455, size: 8, offset: 1040)
!4648 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4620, file: !3427, line: 276, baseType: !3457, size: 8, offset: 1048)
!4649 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4620, file: !3427, line: 280, baseType: !3461, size: 64, offset: 1088)
!4650 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4620, file: !3427, line: 289, baseType: !3464, size: 64, offset: 1152)
!4651 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4620, file: !3427, line: 297, baseType: !30, size: 64, offset: 1216)
!4652 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4620, file: !3427, line: 298, baseType: !30, size: 64, offset: 1280)
!4653 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4620, file: !3427, line: 299, baseType: !30, size: 64, offset: 1344)
!4654 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4620, file: !3427, line: 300, baseType: !30, size: 64, offset: 1408)
!4655 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4620, file: !3427, line: 302, baseType: !37, size: 64, offset: 1472)
!4656 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4620, file: !3427, line: 303, baseType: !74, size: 32, offset: 1536)
!4657 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4620, file: !3427, line: 305, baseType: !3472, size: 160, offset: 1568)
!4658 = !{!4659, !4660, !4661, !4662}
!4659 = !DILocalVariable(name: "fp", arg: 1, scope: !4614, file: !4615, line: 56, type: !4618)
!4660 = !DILocalVariable(name: "saved_errno", scope: !4614, file: !4615, line: 58, type: !74)
!4661 = !DILocalVariable(name: "fd", scope: !4614, file: !4615, line: 59, type: !74)
!4662 = !DILocalVariable(name: "result", scope: !4614, file: !4615, line: 60, type: !74)
!4663 = !DILocation(line: 56, column: 19, scope: !4614)
!4664 = !DILocation(line: 58, column: 7, scope: !4614)
!4665 = !DILocation(line: 60, column: 7, scope: !4614)
!4666 = !DILocation(line: 63, column: 8, scope: !4614)
!4667 = !DILocation(line: 59, column: 7, scope: !4614)
!4668 = !DILocation(line: 64, column: 10, scope: !4669)
!4669 = distinct !DILexicalBlock(scope: !4614, file: !4615, line: 64, column: 7)
!4670 = !DILocation(line: 64, column: 7, scope: !4614)
!4671 = !DILocation(line: 65, column: 12, scope: !4669)
!4672 = !DILocation(line: 65, column: 5, scope: !4669)
!4673 = !DILocation(line: 70, column: 9, scope: !4674)
!4674 = distinct !DILexicalBlock(scope: !4614, file: !4615, line: 70, column: 7)
!4675 = !DILocation(line: 70, column: 23, scope: !4674)
!4676 = !DILocation(line: 70, column: 33, scope: !4677)
!4677 = !DILexicalBlockFile(scope: !4674, file: !4615, discriminator: 1)
!4678 = !DILocation(line: 70, column: 26, scope: !4679)
!4679 = !DILexicalBlockFile(scope: !4674, file: !4615, discriminator: 3)
!4680 = !DILocation(line: 70, column: 59, scope: !4677)
!4681 = !DILocation(line: 71, column: 7, scope: !4674)
!4682 = !DILocation(line: 71, column: 10, scope: !4677)
!4683 = !DILocation(line: 70, column: 7, scope: !4684)
!4684 = !DILexicalBlockFile(scope: !4614, file: !4615, discriminator: 2)
!4685 = !DILocation(line: 98, column: 12, scope: !4614)
!4686 = !DILocation(line: 103, column: 7, scope: !4614)
!4687 = !DILocation(line: 72, column: 19, scope: !4674)
!4688 = !DILocation(line: 103, column: 19, scope: !4689)
!4689 = distinct !DILexicalBlock(scope: !4614, file: !4615, line: 103, column: 7)
!4690 = !DILocation(line: 105, column: 13, scope: !4691)
!4691 = distinct !DILexicalBlock(scope: !4689, file: !4615, line: 104, column: 5)
!4692 = !DILocation(line: 107, column: 5, scope: !4691)
!4693 = !DILocation(line: 110, column: 1, scope: !4614)
!4694 = distinct !DISubprogram(name: "rpl_fflush", scope: !4695, file: !4695, line: 127, type: !4696, isLocal: false, isDefinition: true, scopeLine: 128, flags: DIFlagPrototyped, isOptimized: true, unit: !600, variables: !4738)
!4695 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4696 = !DISubroutineType(types: !4697)
!4697 = !{!74, !4698}
!4698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4699, size: 64)
!4699 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3425, line: 49, baseType: !4700)
!4700 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3427, line: 241, size: 1728, elements: !4701)
!4701 = !{!4702, !4703, !4704, !4705, !4706, !4707, !4708, !4709, !4710, !4711, !4712, !4713, !4714, !4722, !4723, !4724, !4725, !4726, !4727, !4728, !4729, !4730, !4731, !4732, !4733, !4734, !4735, !4736, !4737}
!4702 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4700, file: !3427, line: 242, baseType: !74, size: 32)
!4703 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4700, file: !3427, line: 247, baseType: !28, size: 64, offset: 64)
!4704 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4700, file: !3427, line: 248, baseType: !28, size: 64, offset: 128)
!4705 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4700, file: !3427, line: 249, baseType: !28, size: 64, offset: 192)
!4706 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4700, file: !3427, line: 250, baseType: !28, size: 64, offset: 256)
!4707 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4700, file: !3427, line: 251, baseType: !28, size: 64, offset: 320)
!4708 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4700, file: !3427, line: 252, baseType: !28, size: 64, offset: 384)
!4709 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4700, file: !3427, line: 253, baseType: !28, size: 64, offset: 448)
!4710 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4700, file: !3427, line: 254, baseType: !28, size: 64, offset: 512)
!4711 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4700, file: !3427, line: 256, baseType: !28, size: 64, offset: 576)
!4712 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4700, file: !3427, line: 257, baseType: !28, size: 64, offset: 640)
!4713 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4700, file: !3427, line: 258, baseType: !28, size: 64, offset: 704)
!4714 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4700, file: !3427, line: 260, baseType: !4715, size: 64, offset: 768)
!4715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4716, size: 64)
!4716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !3427, line: 156, size: 192, elements: !4717)
!4717 = !{!4718, !4719, !4721}
!4718 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4716, file: !3427, line: 157, baseType: !4715, size: 64)
!4719 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4716, file: !3427, line: 158, baseType: !4720, size: 64, offset: 64)
!4720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4700, size: 64)
!4721 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4716, file: !3427, line: 162, baseType: !74, size: 32, offset: 128)
!4722 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4700, file: !3427, line: 262, baseType: !4720, size: 64, offset: 832)
!4723 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4700, file: !3427, line: 264, baseType: !74, size: 32, offset: 896)
!4724 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4700, file: !3427, line: 268, baseType: !74, size: 32, offset: 928)
!4725 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4700, file: !3427, line: 270, baseType: !1273, size: 64, offset: 960)
!4726 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4700, file: !3427, line: 274, baseType: !145, size: 16, offset: 1024)
!4727 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4700, file: !3427, line: 275, baseType: !3455, size: 8, offset: 1040)
!4728 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4700, file: !3427, line: 276, baseType: !3457, size: 8, offset: 1048)
!4729 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4700, file: !3427, line: 280, baseType: !3461, size: 64, offset: 1088)
!4730 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4700, file: !3427, line: 289, baseType: !3464, size: 64, offset: 1152)
!4731 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4700, file: !3427, line: 297, baseType: !30, size: 64, offset: 1216)
!4732 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4700, file: !3427, line: 298, baseType: !30, size: 64, offset: 1280)
!4733 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4700, file: !3427, line: 299, baseType: !30, size: 64, offset: 1344)
!4734 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4700, file: !3427, line: 300, baseType: !30, size: 64, offset: 1408)
!4735 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4700, file: !3427, line: 302, baseType: !37, size: 64, offset: 1472)
!4736 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4700, file: !3427, line: 303, baseType: !74, size: 32, offset: 1536)
!4737 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4700, file: !3427, line: 305, baseType: !3472, size: 160, offset: 1568)
!4738 = !{!4739}
!4739 = !DILocalVariable(name: "stream", arg: 1, scope: !4694, file: !4695, line: 127, type: !4698)
!4740 = !DILocation(line: 127, column: 19, scope: !4694)
!4741 = !DILocation(line: 148, column: 14, scope: !4742)
!4742 = distinct !DILexicalBlock(scope: !4694, file: !4695, line: 148, column: 7)
!4743 = !DILocation(line: 148, column: 22, scope: !4742)
!4744 = !DILocation(line: 148, column: 27, scope: !4745)
!4745 = !DILexicalBlockFile(scope: !4742, file: !4695, discriminator: 1)
!4746 = !DILocation(line: 148, column: 7, scope: !4747)
!4747 = !DILexicalBlockFile(scope: !4694, file: !4695, discriminator: 1)
!4748 = !DILocation(line: 149, column: 12, scope: !4742)
!4749 = !DILocation(line: 149, column: 5, scope: !4742)
!4750 = !DILocalVariable(name: "fp", arg: 1, scope: !4751, file: !4695, line: 40, type: !4698)
!4751 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !4695, file: !4695, line: 40, type: !4752, isLocal: true, isDefinition: true, scopeLine: 41, flags: DIFlagPrototyped, isOptimized: true, unit: !600, variables: !4754)
!4752 = !DISubroutineType(types: !4753)
!4753 = !{null, !4698}
!4754 = !{!4750}
!4755 = !DILocation(line: 40, column: 48, scope: !4751, inlinedAt: !4756)
!4756 = distinct !DILocation(line: 153, column: 3, scope: !4694)
!4757 = !DILocation(line: 42, column: 11, scope: !4758, inlinedAt: !4756)
!4758 = distinct !DILexicalBlock(scope: !4751, file: !4695, line: 42, column: 7)
!4759 = !DILocation(line: 42, column: 18, scope: !4758, inlinedAt: !4756)
!4760 = !DILocation(line: 42, column: 7, scope: !4751, inlinedAt: !4756)
!4761 = !DILocation(line: 44, column: 5, scope: !4758, inlinedAt: !4756)
!4762 = !DILocation(line: 155, column: 10, scope: !4694)
!4763 = !DILocation(line: 155, column: 3, scope: !4694)
!4764 = !DILocation(line: 229, column: 1, scope: !4694)
!4765 = distinct !DISubprogram(name: "rpl_fseeko", scope: !4766, file: !4766, line: 28, type: !4767, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !602, variables: !4810)
!4766 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4767 = !DISubroutineType(types: !4768)
!4768 = !{!74, !4769, !4809, !74}
!4769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4770, size: 64)
!4770 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3425, line: 49, baseType: !4771)
!4771 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3427, line: 241, size: 1728, elements: !4772)
!4772 = !{!4773, !4774, !4775, !4776, !4777, !4778, !4779, !4780, !4781, !4782, !4783, !4784, !4785, !4793, !4794, !4795, !4796, !4797, !4798, !4799, !4800, !4801, !4802, !4803, !4804, !4805, !4806, !4807, !4808}
!4773 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4771, file: !3427, line: 242, baseType: !74, size: 32)
!4774 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4771, file: !3427, line: 247, baseType: !28, size: 64, offset: 64)
!4775 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4771, file: !3427, line: 248, baseType: !28, size: 64, offset: 128)
!4776 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4771, file: !3427, line: 249, baseType: !28, size: 64, offset: 192)
!4777 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4771, file: !3427, line: 250, baseType: !28, size: 64, offset: 256)
!4778 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4771, file: !3427, line: 251, baseType: !28, size: 64, offset: 320)
!4779 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4771, file: !3427, line: 252, baseType: !28, size: 64, offset: 384)
!4780 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4771, file: !3427, line: 253, baseType: !28, size: 64, offset: 448)
!4781 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4771, file: !3427, line: 254, baseType: !28, size: 64, offset: 512)
!4782 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4771, file: !3427, line: 256, baseType: !28, size: 64, offset: 576)
!4783 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4771, file: !3427, line: 257, baseType: !28, size: 64, offset: 640)
!4784 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4771, file: !3427, line: 258, baseType: !28, size: 64, offset: 704)
!4785 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4771, file: !3427, line: 260, baseType: !4786, size: 64, offset: 768)
!4786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4787, size: 64)
!4787 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !3427, line: 156, size: 192, elements: !4788)
!4788 = !{!4789, !4790, !4792}
!4789 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4787, file: !3427, line: 157, baseType: !4786, size: 64)
!4790 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4787, file: !3427, line: 158, baseType: !4791, size: 64, offset: 64)
!4791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4771, size: 64)
!4792 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4787, file: !3427, line: 162, baseType: !74, size: 32, offset: 128)
!4793 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4771, file: !3427, line: 262, baseType: !4791, size: 64, offset: 832)
!4794 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4771, file: !3427, line: 264, baseType: !74, size: 32, offset: 896)
!4795 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4771, file: !3427, line: 268, baseType: !74, size: 32, offset: 928)
!4796 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4771, file: !3427, line: 270, baseType: !1273, size: 64, offset: 960)
!4797 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4771, file: !3427, line: 274, baseType: !145, size: 16, offset: 1024)
!4798 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4771, file: !3427, line: 275, baseType: !3455, size: 8, offset: 1040)
!4799 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4771, file: !3427, line: 276, baseType: !3457, size: 8, offset: 1048)
!4800 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4771, file: !3427, line: 280, baseType: !3461, size: 64, offset: 1088)
!4801 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4771, file: !3427, line: 289, baseType: !3464, size: 64, offset: 1152)
!4802 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4771, file: !3427, line: 297, baseType: !30, size: 64, offset: 1216)
!4803 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4771, file: !3427, line: 298, baseType: !30, size: 64, offset: 1280)
!4804 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4771, file: !3427, line: 299, baseType: !30, size: 64, offset: 1344)
!4805 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4771, file: !3427, line: 300, baseType: !30, size: 64, offset: 1408)
!4806 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4771, file: !3427, line: 302, baseType: !37, size: 64, offset: 1472)
!4807 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4771, file: !3427, line: 303, baseType: !74, size: 32, offset: 1536)
!4808 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4771, file: !3427, line: 305, baseType: !3472, size: 160, offset: 1568)
!4809 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !3425, line: 91, baseType: !1273)
!4810 = !{!4811, !4812, !4813, !4814}
!4811 = !DILocalVariable(name: "fp", arg: 1, scope: !4765, file: !4766, line: 28, type: !4769)
!4812 = !DILocalVariable(name: "offset", arg: 2, scope: !4765, file: !4766, line: 28, type: !4809)
!4813 = !DILocalVariable(name: "whence", arg: 3, scope: !4765, file: !4766, line: 28, type: !74)
!4814 = !DILocalVariable(name: "pos", scope: !4815, file: !4766, line: 116, type: !4809)
!4815 = distinct !DILexicalBlock(scope: !4816, file: !4766, line: 112, column: 5)
!4816 = distinct !DILexicalBlock(scope: !4765, file: !4766, line: 51, column: 7)
!4817 = !DILocation(line: 28, column: 15, scope: !4765)
!4818 = !DILocation(line: 28, column: 25, scope: !4765)
!4819 = !DILocation(line: 28, column: 37, scope: !4765)
!4820 = !DILocation(line: 51, column: 11, scope: !4816)
!4821 = !DILocation(line: 51, column: 31, scope: !4816)
!4822 = !DILocation(line: 51, column: 24, scope: !4816)
!4823 = !DILocation(line: 52, column: 7, scope: !4816)
!4824 = !DILocation(line: 52, column: 14, scope: !4825)
!4825 = !DILexicalBlockFile(scope: !4816, file: !4766, discriminator: 1)
!4826 = !{!4269, !623, i64 40}
!4827 = !DILocation(line: 52, column: 35, scope: !4825)
!4828 = !{!4269, !623, i64 32}
!4829 = !DILocation(line: 52, column: 28, scope: !4825)
!4830 = !DILocation(line: 53, column: 7, scope: !4816)
!4831 = !DILocation(line: 53, column: 14, scope: !4825)
!4832 = !{!4269, !623, i64 72}
!4833 = !DILocation(line: 53, column: 28, scope: !4825)
!4834 = !DILocation(line: 51, column: 7, scope: !4835)
!4835 = !DILexicalBlockFile(scope: !4765, file: !4766, discriminator: 1)
!4836 = !DILocation(line: 116, column: 26, scope: !4815)
!4837 = !DILocation(line: 116, column: 19, scope: !4838)
!4838 = !DILexicalBlockFile(scope: !4815, file: !4766, discriminator: 1)
!4839 = !DILocation(line: 116, column: 13, scope: !4815)
!4840 = !DILocation(line: 117, column: 15, scope: !4841)
!4841 = distinct !DILexicalBlock(scope: !4815, file: !4766, line: 117, column: 11)
!4842 = !DILocation(line: 117, column: 11, scope: !4815)
!4843 = !DILocation(line: 127, column: 11, scope: !4815)
!4844 = !DILocation(line: 127, column: 18, scope: !4815)
!4845 = !DILocation(line: 128, column: 11, scope: !4815)
!4846 = !DILocation(line: 128, column: 19, scope: !4815)
!4847 = !{!4269, !860, i64 144}
!4848 = !DILocation(line: 159, column: 7, scope: !4815)
!4849 = !DILocation(line: 161, column: 10, scope: !4765)
!4850 = !DILocation(line: 161, column: 3, scope: !4765)
!4851 = !DILocation(line: 162, column: 1, scope: !4765)
