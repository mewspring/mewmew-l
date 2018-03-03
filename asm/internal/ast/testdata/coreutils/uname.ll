; ModuleID = 'coreutils-8.27/src/uname.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.infomap = type { i8*, i8* }
%struct.option = type { i8*, i32, i32*, i32 }
%struct.quoting_options = type { i32, i32, [8 x i32], i8*, i8* }
%struct.slotvec = type { i64, i8* }
%struct.utsname = type { [65 x i8], [65 x i8], [65 x i8], [65 x i8], [65 x i8], [65 x i8] }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Usage: %s [OPTION]...\0A\00", align 1
@.str.2 = private unnamed_addr constant [362 x i8] c"Print certain system information.  With no OPTION, same as -s.\0A\0A  -a, --all                print all information, in the following order,\0A                             except omit -p and -i if unknown:\0A  -s, --kernel-name        print the kernel name\0A  -n, --nodename           print the network node hostname\0A  -r, --kernel-release     print the kernel release\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.3 = private unnamed_addr constant [303 x i8] c"  -v, --kernel-version     print the kernel version\0A  -m, --machine            print the machine hardware name\0A  -p, --processor          print the processor type (non-portable)\0A  -i, --hardware-platform  print the hardware platform (non-portable)\0A  -o, --operating-system   print the operating system\0A\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"Print machine architecture.\0A\0A\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.6 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"uname\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"arch\00", align 1
@emit_ancillary_info.infomap = internal unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i32 0, i32 0) }, %struct.infomap zeroinitializer], align 16, !dbg !0
@.str.14 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.22 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.23 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.24 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.25 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.26 = private unnamed_addr constant [69 x i8] c"Report %s translation bugs to <http://translationproject.org/team/>\0A\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"sha224sum\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"sha256sum\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"sha384sum\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"sha512sum\00", align 1
@.str.27 = private unnamed_addr constant [31 x i8] c"Full documentation at: <%s%s>\0A\00", align 1
@.str.28 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.29 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.9 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.15 = private unnamed_addr constant [16 x i8] c"test invocation\00", align 1
@.str.16 = private unnamed_addr constant [22 x i8] c"Multi-call invocation\00", align 1
@.str.18 = private unnamed_addr constant [15 x i8] c"sha2 utilities\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@arch_long_options = internal constant [3 x %struct.option] [%struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.34, i32 0, i32 0), i32 0, i32* null, i32 -130 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.35, i32 0, i32 0), i32 0, i32* null, i32 -131 }, %struct.option zeroinitializer], align 16, !dbg !60
@.str.30 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1
@.str.31 = private unnamed_addr constant [10 x i8] c"Karel Zak\00", align 1
@.str.32 = private unnamed_addr constant [10 x i8] c"asnrvmpio\00", align 1
@uname_long_options = internal constant [14 x %struct.option] [%struct.option { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.36, i32 0, i32 0), i32 0, i32* null, i32 97 }, %struct.option { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.37, i32 0, i32 0), i32 0, i32* null, i32 115 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.38, i32 0, i32 0), i32 0, i32* null, i32 115 }, %struct.option { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.39, i32 0, i32 0), i32 0, i32* null, i32 110 }, %struct.option { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.40, i32 0, i32 0), i32 0, i32* null, i32 114 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.41, i32 0, i32 0), i32 0, i32* null, i32 114 }, %struct.option { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.42, i32 0, i32 0), i32 0, i32* null, i32 118 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.43, i32 0, i32 0), i32 0, i32* null, i32 109 }, %struct.option { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.44, i32 0, i32 0), i32 0, i32* null, i32 112 }, %struct.option { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.45, i32 0, i32 0), i32 0, i32* null, i32 105 }, %struct.option { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.46, i32 0, i32 0), i32 0, i32* null, i32 111 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.34, i32 0, i32 0), i32 0, i32* null, i32 -130 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.35, i32 0, i32 0), i32 0, i32* null, i32 -131 }, %struct.option zeroinitializer], align 16, !dbg !74
@optind = external local_unnamed_addr global i32, align 4
@.str.33 = private unnamed_addr constant [17 x i8] c"extra operand %s\00", align 1
@.str.12 = private unnamed_addr constant [23 x i8] c"cannot get system name\00", align 1
@print_element.printed = internal unnamed_addr global i1 false, align 1
@main.unknown = internal constant [8 x i8] c"unknown\00", align 1, !dbg !24
@.str.13 = private unnamed_addr constant [10 x i8] c"GNU/Linux\00", align 1
@.str.36 = private unnamed_addr constant [4 x i8] c"all\00", align 1
@.str.37 = private unnamed_addr constant [12 x i8] c"kernel-name\00", align 1
@.str.38 = private unnamed_addr constant [8 x i8] c"sysname\00", align 1
@.str.39 = private unnamed_addr constant [9 x i8] c"nodename\00", align 1
@.str.40 = private unnamed_addr constant [15 x i8] c"kernel-release\00", align 1
@.str.41 = private unnamed_addr constant [8 x i8] c"release\00", align 1
@.str.42 = private unnamed_addr constant [15 x i8] c"kernel-version\00", align 1
@.str.43 = private unnamed_addr constant [8 x i8] c"machine\00", align 1
@.str.44 = private unnamed_addr constant [10 x i8] c"processor\00", align 1
@.str.45 = private unnamed_addr constant [18 x i8] c"hardware-platform\00", align 1
@.str.46 = private unnamed_addr constant [17 x i8] c"operating-system\00", align 1
@.str.34 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.35 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@uname_mode = local_unnamed_addr global i32 1, align 4, !dbg !109
@Version = local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.47, i64 0, i64 0), align 8, !dbg !114
@.str.47 = private unnamed_addr constant [5 x i8] c"8.27\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !119
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !124
@.str.50 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.51 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.52 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = global i32 1, align 4, !dbg !127
@program_name = local_unnamed_addr global i8* null, align 8, !dbg !134
@.str.59 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.60 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.61 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.62, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.63, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.64, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.65, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.66, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.67, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.68, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.69, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.70, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.71, i32 0, i32 0), i8* null], align 16, !dbg !141
@.str.62 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.63 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.64 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.65 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.66 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.67 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.68 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.69 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.70 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.71 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_vals = local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !183
@quote_quoting_options = global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !190
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !200
@.str.11.72 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.73 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.74 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.75 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.76 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.77 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.78 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !207
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !214
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !202
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !216
@.str.83 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.84 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.85 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.3.86 = private unnamed_addr constant [203 x i8] c"\0ALicense GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\0A\00", align 1
@.str.4.87 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.5.88 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.6.89 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.7.90 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.8.91 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.9.92 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.10.93 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.11.94 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.12.95 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.13.96 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@.str.14.99 = private unnamed_addr constant [21 x i8] c"\0AReport bugs to: %s\0A\00", align 1
@.str.15.100 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.16.101 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.17.102 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.18.103 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.19.104 = private unnamed_addr constant [64 x i8] c"General help using GNU software: <http://www.gnu.org/gethelp/>\0A\00", align 1
@version_etc_copyright = constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !222
@.str.1.115 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.116 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1.125 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.128 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@charset_aliases = internal global i8* null, align 8, !dbg !231
@.str.3.129 = private unnamed_addr constant [16 x i8] c"CHARSETALIASDIR\00", align 1
@.str.4.130 = private unnamed_addr constant [15 x i8] c"/usr/local/lib\00", align 1
@.str.2.131 = private unnamed_addr constant [14 x i8] c"charset.alias\00", align 1
@.str.5.132 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.6.133 = private unnamed_addr constant [10 x i8] c"%50s %50s\00", align 1
@.str.1.134 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @usage(i32) local_unnamed_addr #0 !dbg !627 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !631, metadata !632), !dbg !633
  %2 = icmp eq i32 %0, 0, !dbg !634
  br i1 %2, label %8, label %3, !dbg !636

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !637, !tbaa !640
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #10, !dbg !637
  %6 = load i8*, i8** @program_name, align 8, !dbg !637, !tbaa !640
  %7 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %4, i32 1, i8* %5, i8* %6) #10, !dbg !644
  br label %76, !dbg !646

; <label>:8:                                      ; preds = %1
  %9 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 5) #10, !dbg !648
  %10 = load i8*, i8** @program_name, align 8, !dbg !648, !tbaa !640
  %11 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %9, i8* %10) #10, !dbg !650
  %12 = load i32, i32* @uname_mode, align 4, !dbg !652, !tbaa !654
  %13 = icmp eq i32 %12, 1, !dbg !656
  br i1 %13, label %14, label %21, !dbg !657

; <label>:14:                                     ; preds = %8
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([362 x i8], [362 x i8]* @.str.2, i64 0, i64 0), i32 5) #10, !dbg !658
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !658, !tbaa !640
  %17 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %16) #10, !dbg !660
  %18 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([303 x i8], [303 x i8]* @.str.3, i64 0, i64 0), i32 5) #10, !dbg !662
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !662, !tbaa !640
  %20 = tail call i32 @fputs_unlocked(i8* %18, %struct._IO_FILE* %19) #10, !dbg !663
  br label %25, !dbg !664

; <label>:21:                                     ; preds = %8
  %22 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i32 5) #10, !dbg !665
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !665, !tbaa !640
  %24 = tail call i32 @fputs_unlocked(i8* %22, %struct._IO_FILE* %23) #10, !dbg !667
  br label %25

; <label>:25:                                     ; preds = %21, %14
  %26 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0), i32 5) #10, !dbg !669
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !669, !tbaa !640
  %28 = tail call i32 @fputs_unlocked(i8* %26, %struct._IO_FILE* %27) #10, !dbg !670
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.6, i64 0, i64 0), i32 5) #10, !dbg !671
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !671, !tbaa !640
  %31 = tail call i32 @fputs_unlocked(i8* %29, %struct._IO_FILE* %30) #10, !dbg !672
  %32 = load i32, i32* @uname_mode, align 4, !dbg !673, !tbaa !654
  %33 = icmp eq i32 %32, 1, !dbg !673
  %34 = select i1 %33, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), !dbg !673
  tail call void @llvm.dbg.value(metadata i8* %34, i64 0, metadata !86, metadata !632) #10, !dbg !674
  tail call void @llvm.dbg.value(metadata i8* %34, i64 0, metadata !87, metadata !632) #10, !dbg !676
  tail call void @llvm.dbg.value(metadata %struct.infomap* getelementptr inbounds ([7 x %struct.infomap], [7 x %struct.infomap]* @emit_ancillary_info.infomap, i64 0, i64 0), i64 0, metadata !88, metadata !632) #10, !dbg !677
  %35 = tail call i32 @strcmp(i8* %34, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0)) #10, !dbg !678
  %36 = icmp eq i32 %35, 0, !dbg !680
  br i1 %36, label %40, label %37, !dbg !682

; <label>:37:                                     ; preds = %25
  tail call void @llvm.dbg.value(metadata %struct.infomap* getelementptr inbounds ([7 x %struct.infomap], [7 x %struct.infomap]* @emit_ancillary_info.infomap, i64 0, i64 1), i64 0, metadata !88, metadata !632) #10, !dbg !677
  tail call void @llvm.dbg.value(metadata %struct.infomap* getelementptr inbounds ([7 x %struct.infomap], [7 x %struct.infomap]* @emit_ancillary_info.infomap, i64 0, i64 1), i64 0, metadata !88, metadata !632) #10, !dbg !677
  %38 = tail call i32 @strcmp(i8* %34, i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0)) #10, !dbg !678
  %39 = icmp eq i32 %38, 0, !dbg !680
  br i1 %39, label %40, label %56, !dbg !682

; <label>:40:                                     ; preds = %65, %62, %59, %56, %37, %25
  %41 = phi %struct.infomap* [ getelementptr inbounds ([7 x %struct.infomap], [7 x %struct.infomap]* @emit_ancillary_info.infomap, i64 0, i64 0), %25 ], [ getelementptr inbounds ([7 x %struct.infomap], [7 x %struct.infomap]* @emit_ancillary_info.infomap, i64 0, i64 1), %37 ], [ getelementptr inbounds ([7 x %struct.infomap], [7 x %struct.infomap]* @emit_ancillary_info.infomap, i64 0, i64 2), %56 ], [ getelementptr inbounds ([7 x %struct.infomap], [7 x %struct.infomap]* @emit_ancillary_info.infomap, i64 0, i64 3), %59 ], [ getelementptr inbounds ([7 x %struct.infomap], [7 x %struct.infomap]* @emit_ancillary_info.infomap, i64 0, i64 4), %62 ], [ %68, %65 ]
  %42 = getelementptr inbounds %struct.infomap, %struct.infomap* %41, i64 0, i32 1, !dbg !684
  %43 = load i8*, i8** %42, align 8, !dbg !684, !tbaa !686
  %44 = icmp eq i8* %43, null, !dbg !688
  tail call void @llvm.dbg.value(metadata i8* %43, i64 0, metadata !87, metadata !632) #10, !dbg !676
  %45 = select i1 %44, i8* %34, i8* %43, !dbg !689
  tail call void @llvm.dbg.value(metadata i8* %45, i64 0, metadata !87, metadata !632) #10, !dbg !676
  %46 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.22, i64 0, i64 0), i32 5) #10, !dbg !690
  %47 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %46, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.23, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.24, i64 0, i64 0)) #10, !dbg !691
  %48 = tail call i8* @setlocale(i32 5, i8* null) #10, !dbg !693
  tail call void @llvm.dbg.value(metadata i8* %48, i64 0, metadata !98, metadata !632) #10, !dbg !694
  %49 = icmp eq i8* %48, null, !dbg !695
  br i1 %49, label %69, label %50, !dbg !696

; <label>:50:                                     ; preds = %40
  %51 = tail call i32 @strncmp(i8* nonnull %48, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.25, i64 0, i64 0), i64 3) #13, !dbg !697
  %52 = icmp eq i32 %51, 0, !dbg !697
  br i1 %52, label %69, label %53, !dbg !699

; <label>:53:                                     ; preds = %50
  %54 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.26, i64 0, i64 0), i32 5) #10, !dbg !701
  %55 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %54, i8* %34) #10, !dbg !703
  br label %69, !dbg !705

; <label>:56:                                     ; preds = %37
  tail call void @llvm.dbg.value(metadata %struct.infomap* getelementptr inbounds ([7 x %struct.infomap], [7 x %struct.infomap]* @emit_ancillary_info.infomap, i64 0, i64 1), i64 0, metadata !88, metadata !632) #10, !dbg !677
  tail call void @llvm.dbg.value(metadata %struct.infomap* getelementptr inbounds ([7 x %struct.infomap], [7 x %struct.infomap]* @emit_ancillary_info.infomap, i64 0, i64 1), i64 0, metadata !88, metadata !632) #10, !dbg !677
  %57 = tail call i32 @strcmp(i8* %34, i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i64 0, i64 0)) #10, !dbg !678
  %58 = icmp eq i32 %57, 0, !dbg !680
  br i1 %58, label %40, label %59, !dbg !682

; <label>:59:                                     ; preds = %56
  tail call void @llvm.dbg.value(metadata %struct.infomap* getelementptr inbounds ([7 x %struct.infomap], [7 x %struct.infomap]* @emit_ancillary_info.infomap, i64 0, i64 1), i64 0, metadata !88, metadata !632) #10, !dbg !677
  tail call void @llvm.dbg.value(metadata %struct.infomap* getelementptr inbounds ([7 x %struct.infomap], [7 x %struct.infomap]* @emit_ancillary_info.infomap, i64 0, i64 1), i64 0, metadata !88, metadata !632) #10, !dbg !677
  %60 = tail call i32 @strcmp(i8* %34, i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i64 0, i64 0)) #10, !dbg !678
  %61 = icmp eq i32 %60, 0, !dbg !680
  br i1 %61, label %40, label %62, !dbg !682

; <label>:62:                                     ; preds = %59
  tail call void @llvm.dbg.value(metadata %struct.infomap* getelementptr inbounds ([7 x %struct.infomap], [7 x %struct.infomap]* @emit_ancillary_info.infomap, i64 0, i64 1), i64 0, metadata !88, metadata !632) #10, !dbg !677
  tail call void @llvm.dbg.value(metadata %struct.infomap* getelementptr inbounds ([7 x %struct.infomap], [7 x %struct.infomap]* @emit_ancillary_info.infomap, i64 0, i64 1), i64 0, metadata !88, metadata !632) #10, !dbg !677
  %63 = tail call i32 @strcmp(i8* %34, i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i64 0, i64 0)) #10, !dbg !678
  %64 = icmp eq i32 %63, 0, !dbg !680
  br i1 %64, label %40, label %65, !dbg !682

; <label>:65:                                     ; preds = %62
  tail call void @llvm.dbg.value(metadata %struct.infomap* getelementptr inbounds ([7 x %struct.infomap], [7 x %struct.infomap]* @emit_ancillary_info.infomap, i64 0, i64 1), i64 0, metadata !88, metadata !632) #10, !dbg !677
  tail call void @llvm.dbg.value(metadata %struct.infomap* getelementptr inbounds ([7 x %struct.infomap], [7 x %struct.infomap]* @emit_ancillary_info.infomap, i64 0, i64 1), i64 0, metadata !88, metadata !632) #10, !dbg !677
  %66 = tail call i32 @strcmp(i8* %34, i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i64 0, i64 0)) #10, !dbg !678
  %67 = icmp eq i32 %66, 0, !dbg !680
  tail call void @llvm.dbg.value(metadata %struct.infomap* getelementptr inbounds ([7 x %struct.infomap], [7 x %struct.infomap]* @emit_ancillary_info.infomap, i64 0, i64 1), i64 0, metadata !88, metadata !632) #10, !dbg !677
  tail call void @llvm.dbg.value(metadata %struct.infomap* getelementptr inbounds ([7 x %struct.infomap], [7 x %struct.infomap]* @emit_ancillary_info.infomap, i64 0, i64 1), i64 0, metadata !88, metadata !632) #10, !dbg !677
  %68 = select i1 %67, %struct.infomap* getelementptr inbounds ([7 x %struct.infomap], [7 x %struct.infomap]* @emit_ancillary_info.infomap, i64 0, i64 5), %struct.infomap* getelementptr inbounds ([7 x %struct.infomap], [7 x %struct.infomap]* @emit_ancillary_info.infomap, i64 0, i64 6), !dbg !682
  br label %40, !dbg !682

; <label>:69:                                     ; preds = %40, %50, %53
  %70 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.27, i64 0, i64 0), i32 5) #10, !dbg !706
  %71 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %70, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.24, i64 0, i64 0), i8* %34) #10, !dbg !707
  %72 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.28, i64 0, i64 0), i32 5) #10, !dbg !708
  %73 = icmp eq i8* %45, %34, !dbg !708
  %74 = select i1 %73, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.29, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i64 0, i64 0), !dbg !708
  %75 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %72, i8* %45, i8* %74) #10, !dbg !709
  br label %76

; <label>:76:                                     ; preds = %69, %3
  tail call void @exit(i32 %0) #14, !dbg !710
  unreachable, !dbg !710
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #1

; Function Attrs: nounwind
declare i8* @dcgettext(i8*, i8*, i32) local_unnamed_addr #2

declare i32 @__fprintf_chk(%struct._IO_FILE*, i32, i8*, ...) local_unnamed_addr #3

declare i32 @__printf_chk(i32, i8*, ...) local_unnamed_addr #3

declare i32 @fputs_unlocked(i8*, %struct._IO_FILE*) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind
declare i8* @setlocale(i32, i8*) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #4

; Function Attrs: noreturn nounwind
declare void @exit(i32) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define i32 @main(i32, i8**) local_unnamed_addr #6 !dbg !26 {
  %3 = alloca %struct.utsname, align 1
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !32, metadata !632), !dbg !711
  tail call void @llvm.dbg.value(metadata i8** %1, i64 0, metadata !33, metadata !632), !dbg !712
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !34, metadata !632), !dbg !713
  %4 = load i8*, i8** %1, align 8, !dbg !714, !tbaa !640
  tail call void @set_program_name(i8* %4) #10, !dbg !715
  %5 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i64 0, i64 0)) #10, !dbg !716
  %6 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i64 0, i64 0)) #10, !dbg !717
  %7 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0)) #10, !dbg !718
  %8 = tail call i32 @atexit(void ()* nonnull @close_stdout) #10, !dbg !719
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !720, metadata !632) #10, !dbg !726
  tail call void @llvm.dbg.value(metadata i8** %1, i64 0, metadata !723, metadata !632) #10, !dbg !728
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !725, metadata !632) #10, !dbg !729
  %9 = load i32, i32* @uname_mode, align 4, !dbg !730, !tbaa !654
  %10 = icmp eq i32 %9, 2, !dbg !732
  br i1 %10, label %12, label %11, !dbg !733

; <label>:11:                                     ; preds = %2
  br label %22, !dbg !729

; <label>:12:                                     ; preds = %2
  %13 = tail call i32 @getopt_long(i32 %0, i8** nonnull %1, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i64 0, i64 0), %struct.option* getelementptr inbounds ([3 x %struct.option], [3 x %struct.option]* @arch_long_options, i64 0, i64 0), i32* null) #10, !dbg !734
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !724, metadata !632) #10, !dbg !737
  switch i32 %13, label %21 [
    i32 -1, label %52
    i32 -130, label %14
    i32 -131, label %15
  ], !dbg !738

; <label>:14:                                     ; preds = %12
  tail call void @usage(i32 0) #14, !dbg !739
  unreachable, !dbg !739

; <label>:15:                                     ; preds = %12
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !742, !tbaa !640
  %17 = load i32, i32* @uname_mode, align 4, !dbg !742, !tbaa !654
  %18 = icmp eq i32 %17, 1, !dbg !742
  %19 = select i1 %18, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), !dbg !742
  %20 = load i8*, i8** @Version, align 8, !dbg !742, !tbaa !640
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %16, i8* %19, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.23, i64 0, i64 0), i8* %20, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.30, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.31, i64 0, i64 0), i8* null) #10, !dbg !742
  tail call void @exit(i32 0) #14, !dbg !743
  unreachable, !dbg !742

; <label>:21:                                     ; preds = %12
  tail call void @usage(i32 1) #14, !dbg !745
  unreachable, !dbg !745

; <label>:22:                                     ; preds = %25, %11
  %23 = phi i32 [ 0, %11 ], [ %26, %25 ]
  tail call void @llvm.dbg.value(metadata i32 %23, i64 0, metadata !725, metadata !632) #10, !dbg !729
  %24 = tail call i32 @getopt_long(i32 %0, i8** %1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.32, i64 0, i64 0), %struct.option* getelementptr inbounds ([14 x %struct.option], [14 x %struct.option]* @uname_long_options, i64 0, i64 0), i32* null) #10, !dbg !746
  tail call void @llvm.dbg.value(metadata i32 %24, i64 0, metadata !724, metadata !632) #10, !dbg !737
  switch i32 %24, label %50 [
    i32 -1, label %51
    i32 97, label %25
    i32 115, label %27
    i32 110, label %29
    i32 114, label %31
    i32 118, label %33
    i32 109, label %35
    i32 112, label %37
    i32 105, label %39
    i32 111, label %41
    i32 -130, label %43
    i32 -131, label %44
  ], !dbg !749

; <label>:25:                                     ; preds = %22, %27, %29, %31, %33, %35, %37, %39, %41
  %26 = phi i32 [ %42, %41 ], [ %40, %39 ], [ %38, %37 ], [ %36, %35 ], [ %34, %33 ], [ %32, %31 ], [ %30, %29 ], [ %28, %27 ], [ -1, %22 ]
  br label %22, !dbg !729, !llvm.loop !750

; <label>:27:                                     ; preds = %22
  %28 = or i32 %23, 1, !dbg !753
  tail call void @llvm.dbg.value(metadata i32 %28, i64 0, metadata !725, metadata !632) #10, !dbg !729
  br label %25, !dbg !756

; <label>:29:                                     ; preds = %22
  %30 = or i32 %23, 2, !dbg !757
  tail call void @llvm.dbg.value(metadata i32 %30, i64 0, metadata !725, metadata !632) #10, !dbg !729
  br label %25, !dbg !758

; <label>:31:                                     ; preds = %22
  %32 = or i32 %23, 4, !dbg !759
  tail call void @llvm.dbg.value(metadata i32 %32, i64 0, metadata !725, metadata !632) #10, !dbg !729
  br label %25, !dbg !760

; <label>:33:                                     ; preds = %22
  %34 = or i32 %23, 8, !dbg !761
  tail call void @llvm.dbg.value(metadata i32 %34, i64 0, metadata !725, metadata !632) #10, !dbg !729
  br label %25, !dbg !762

; <label>:35:                                     ; preds = %22
  %36 = or i32 %23, 16, !dbg !763
  tail call void @llvm.dbg.value(metadata i32 %36, i64 0, metadata !725, metadata !632) #10, !dbg !729
  br label %25, !dbg !764

; <label>:37:                                     ; preds = %22
  %38 = or i32 %23, 32, !dbg !765
  tail call void @llvm.dbg.value(metadata i32 %38, i64 0, metadata !725, metadata !632) #10, !dbg !729
  br label %25, !dbg !766

; <label>:39:                                     ; preds = %22
  %40 = or i32 %23, 64, !dbg !767
  tail call void @llvm.dbg.value(metadata i32 %40, i64 0, metadata !725, metadata !632) #10, !dbg !729
  br label %25, !dbg !768

; <label>:41:                                     ; preds = %22
  %42 = or i32 %23, 128, !dbg !769
  tail call void @llvm.dbg.value(metadata i32 %42, i64 0, metadata !725, metadata !632) #10, !dbg !729
  br label %25, !dbg !770

; <label>:43:                                     ; preds = %22
  tail call void @usage(i32 0) #14, !dbg !771
  unreachable, !dbg !771

; <label>:44:                                     ; preds = %22
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !772, !tbaa !640
  %46 = load i32, i32* @uname_mode, align 4, !dbg !772, !tbaa !654
  %47 = icmp eq i32 %46, 1, !dbg !772
  %48 = select i1 %47, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), !dbg !772
  %49 = load i8*, i8** @Version, align 8, !dbg !772, !tbaa !640
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %45, i8* %48, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.23, i64 0, i64 0), i8* %49, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.30, i64 0, i64 0), i8* null) #10, !dbg !772
  tail call void @exit(i32 0) #14, !dbg !773
  unreachable, !dbg !772

; <label>:50:                                     ; preds = %22
  tail call void @usage(i32 1) #14, !dbg !775
  unreachable, !dbg !775

; <label>:51:                                     ; preds = %22
  br label %52, !dbg !729

; <label>:52:                                     ; preds = %51, %12
  %53 = phi i32 [ 16, %12 ], [ %23, %51 ]
  tail call void @llvm.dbg.value(metadata i32 %53, i64 0, metadata !725, metadata !632) #10, !dbg !729
  %54 = load i32, i32* @optind, align 4, !dbg !776, !tbaa !654
  %55 = icmp eq i32 %54, %0, !dbg !778
  br i1 %55, label %63, label %56, !dbg !779

; <label>:56:                                     ; preds = %52
  %57 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.33, i64 0, i64 0), i32 5) #10, !dbg !780
  %58 = load i32, i32* @optind, align 4, !dbg !782, !tbaa !654
  %59 = sext i32 %58 to i64, !dbg !783
  %60 = getelementptr inbounds i8*, i8** %1, i64 %59, !dbg !783
  %61 = load i8*, i8** %60, align 8, !dbg !783, !tbaa !640
  %62 = tail call i8* @quote(i8* %61) #10, !dbg !784
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %57, i8* %62) #10, !dbg !786
  tail call void @usage(i32 1) #14, !dbg !788
  unreachable, !dbg !788

; <label>:63:                                     ; preds = %52
  tail call void @llvm.dbg.value(metadata i32 %53, i64 0, metadata !34, metadata !632), !dbg !713
  %64 = icmp eq i32 %53, 0, !dbg !789
  %65 = select i1 %64, i32 1, i32 %53, !dbg !791
  tail call void @llvm.dbg.value(metadata i32 %65, i64 0, metadata !34, metadata !632), !dbg !713
  %66 = and i32 %65, 31, !dbg !792
  %67 = icmp eq i32 %66, 0, !dbg !792
  br i1 %67, label %176, label %68, !dbg !793

; <label>:68:                                     ; preds = %63
  %69 = getelementptr inbounds %struct.utsname, %struct.utsname* %3, i64 0, i32 0, i64 0, !dbg !794
  call void @llvm.lifetime.start(i64 390, i8* nonnull %69) #10, !dbg !794
  tail call void @llvm.dbg.value(metadata %struct.utsname* %3, i64 0, metadata !36, metadata !795), !dbg !796
  %70 = call i32 @uname(%struct.utsname* nonnull %3) #10, !dbg !797
  %71 = icmp eq i32 %70, -1, !dbg !799
  br i1 %71, label %72, label %76, !dbg !800

; <label>:72:                                     ; preds = %68
  %73 = tail call i32* @__errno_location() #1, !dbg !801
  %74 = load i32, i32* %73, align 4, !dbg !801, !tbaa !654
  %75 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i64 0, i64 0), i32 5) #10, !dbg !802
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 %74, i8* %75) #10, !dbg !804
  unreachable, !dbg !801

; <label>:76:                                     ; preds = %68
  %77 = and i32 %65, 1, !dbg !806
  %78 = icmp eq i32 %77, 0, !dbg !806
  br i1 %78, label %95, label %79, !dbg !808

; <label>:79:                                     ; preds = %76
  tail call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !83, metadata !632) #10, !dbg !809
  %80 = load i1, i1* @print_element.printed, align 1
  br i1 %80, label %81, label %92, !dbg !811

; <label>:81:                                     ; preds = %79
  tail call void @llvm.dbg.value(metadata i32 32, i64 0, metadata !812, metadata !632) #10, !dbg !818
  %82 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !821, !tbaa !640
  %83 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %82, i64 0, i32 5, !dbg !821
  %84 = load i8*, i8** %83, align 8, !dbg !821, !tbaa !822
  %85 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %82, i64 0, i32 6, !dbg !821
  %86 = load i8*, i8** %85, align 8, !dbg !821, !tbaa !826
  %87 = icmp ult i8* %84, %86, !dbg !821
  br i1 %87, label %90, label %88, !dbg !821, !prof !827

; <label>:88:                                     ; preds = %81
  %89 = tail call i32 @__overflow(%struct._IO_FILE* %82, i32 32) #10, !dbg !828
  br label %92, !dbg !828

; <label>:90:                                     ; preds = %81
  %91 = getelementptr inbounds i8, i8* %84, i64 1, !dbg !830
  store i8* %91, i8** %83, align 8, !dbg !830, !tbaa !822
  store i8 32, i8* %84, align 1, !dbg !830, !tbaa !832
  br label %92, !dbg !830

; <label>:92:                                     ; preds = %79, %88, %90
  store i1 true, i1* @print_element.printed, align 1
  %93 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !833, !tbaa !640
  %94 = call i32 @fputs_unlocked(i8* nonnull %69, %struct._IO_FILE* %93) #10, !dbg !833
  br label %95, !dbg !834

; <label>:95:                                     ; preds = %76, %92
  %96 = and i32 %65, 2, !dbg !835
  %97 = icmp eq i32 %96, 0, !dbg !835
  br i1 %97, label %115, label %98, !dbg !837

; <label>:98:                                     ; preds = %95
  %99 = getelementptr inbounds %struct.utsname, %struct.utsname* %3, i64 0, i32 1, i64 0, !dbg !838
  call void @llvm.dbg.value(metadata i8* %99, i64 0, metadata !83, metadata !632) #10, !dbg !839
  %100 = load i1, i1* @print_element.printed, align 1
  br i1 %100, label %101, label %112, !dbg !841

; <label>:101:                                    ; preds = %98
  call void @llvm.dbg.value(metadata i32 32, i64 0, metadata !812, metadata !632) #10, !dbg !842
  %102 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !844, !tbaa !640
  %103 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %102, i64 0, i32 5, !dbg !844
  %104 = load i8*, i8** %103, align 8, !dbg !844, !tbaa !822
  %105 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %102, i64 0, i32 6, !dbg !844
  %106 = load i8*, i8** %105, align 8, !dbg !844, !tbaa !826
  %107 = icmp ult i8* %104, %106, !dbg !844
  br i1 %107, label %110, label %108, !dbg !844, !prof !827

; <label>:108:                                    ; preds = %101
  %109 = call i32 @__overflow(%struct._IO_FILE* %102, i32 32) #10, !dbg !845
  br label %112, !dbg !845

; <label>:110:                                    ; preds = %101
  %111 = getelementptr inbounds i8, i8* %104, i64 1, !dbg !846
  store i8* %111, i8** %103, align 8, !dbg !846, !tbaa !822
  store i8 32, i8* %104, align 1, !dbg !846, !tbaa !832
  br label %112, !dbg !846

; <label>:112:                                    ; preds = %98, %108, %110
  store i1 true, i1* @print_element.printed, align 1
  %113 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !847, !tbaa !640
  %114 = call i32 @fputs_unlocked(i8* %99, %struct._IO_FILE* %113) #10, !dbg !847
  br label %115, !dbg !848

; <label>:115:                                    ; preds = %95, %112
  %116 = and i32 %65, 4, !dbg !849
  %117 = icmp eq i32 %116, 0, !dbg !849
  br i1 %117, label %135, label %118, !dbg !851

; <label>:118:                                    ; preds = %115
  %119 = getelementptr inbounds %struct.utsname, %struct.utsname* %3, i64 0, i32 2, i64 0, !dbg !852
  call void @llvm.dbg.value(metadata i8* %119, i64 0, metadata !83, metadata !632) #10, !dbg !853
  %120 = load i1, i1* @print_element.printed, align 1
  br i1 %120, label %121, label %132, !dbg !855

; <label>:121:                                    ; preds = %118
  call void @llvm.dbg.value(metadata i32 32, i64 0, metadata !812, metadata !632) #10, !dbg !856
  %122 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !858, !tbaa !640
  %123 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %122, i64 0, i32 5, !dbg !858
  %124 = load i8*, i8** %123, align 8, !dbg !858, !tbaa !822
  %125 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %122, i64 0, i32 6, !dbg !858
  %126 = load i8*, i8** %125, align 8, !dbg !858, !tbaa !826
  %127 = icmp ult i8* %124, %126, !dbg !858
  br i1 %127, label %130, label %128, !dbg !858, !prof !827

; <label>:128:                                    ; preds = %121
  %129 = call i32 @__overflow(%struct._IO_FILE* %122, i32 32) #10, !dbg !859
  br label %132, !dbg !859

; <label>:130:                                    ; preds = %121
  %131 = getelementptr inbounds i8, i8* %124, i64 1, !dbg !860
  store i8* %131, i8** %123, align 8, !dbg !860, !tbaa !822
  store i8 32, i8* %124, align 1, !dbg !860, !tbaa !832
  br label %132, !dbg !860

; <label>:132:                                    ; preds = %118, %128, %130
  store i1 true, i1* @print_element.printed, align 1
  %133 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !861, !tbaa !640
  %134 = call i32 @fputs_unlocked(i8* %119, %struct._IO_FILE* %133) #10, !dbg !861
  br label %135, !dbg !862

; <label>:135:                                    ; preds = %115, %132
  %136 = and i32 %65, 8, !dbg !863
  %137 = icmp eq i32 %136, 0, !dbg !863
  br i1 %137, label %155, label %138, !dbg !865

; <label>:138:                                    ; preds = %135
  %139 = getelementptr inbounds %struct.utsname, %struct.utsname* %3, i64 0, i32 3, i64 0, !dbg !866
  call void @llvm.dbg.value(metadata i8* %139, i64 0, metadata !83, metadata !632) #10, !dbg !867
  %140 = load i1, i1* @print_element.printed, align 1
  br i1 %140, label %141, label %152, !dbg !869

; <label>:141:                                    ; preds = %138
  call void @llvm.dbg.value(metadata i32 32, i64 0, metadata !812, metadata !632) #10, !dbg !870
  %142 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !872, !tbaa !640
  %143 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %142, i64 0, i32 5, !dbg !872
  %144 = load i8*, i8** %143, align 8, !dbg !872, !tbaa !822
  %145 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %142, i64 0, i32 6, !dbg !872
  %146 = load i8*, i8** %145, align 8, !dbg !872, !tbaa !826
  %147 = icmp ult i8* %144, %146, !dbg !872
  br i1 %147, label %150, label %148, !dbg !872, !prof !827

; <label>:148:                                    ; preds = %141
  %149 = call i32 @__overflow(%struct._IO_FILE* %142, i32 32) #10, !dbg !873
  br label %152, !dbg !873

; <label>:150:                                    ; preds = %141
  %151 = getelementptr inbounds i8, i8* %144, i64 1, !dbg !874
  store i8* %151, i8** %143, align 8, !dbg !874, !tbaa !822
  store i8 32, i8* %144, align 1, !dbg !874, !tbaa !832
  br label %152, !dbg !874

; <label>:152:                                    ; preds = %138, %148, %150
  store i1 true, i1* @print_element.printed, align 1
  %153 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !875, !tbaa !640
  %154 = call i32 @fputs_unlocked(i8* %139, %struct._IO_FILE* %153) #10, !dbg !875
  br label %155, !dbg !876

; <label>:155:                                    ; preds = %135, %152
  %156 = and i32 %65, 16, !dbg !877
  %157 = icmp eq i32 %156, 0, !dbg !877
  br i1 %157, label %175, label %158, !dbg !879

; <label>:158:                                    ; preds = %155
  %159 = getelementptr inbounds %struct.utsname, %struct.utsname* %3, i64 0, i32 4, i64 0, !dbg !880
  call void @llvm.dbg.value(metadata i8* %159, i64 0, metadata !83, metadata !632) #10, !dbg !881
  %160 = load i1, i1* @print_element.printed, align 1
  br i1 %160, label %161, label %172, !dbg !883

; <label>:161:                                    ; preds = %158
  call void @llvm.dbg.value(metadata i32 32, i64 0, metadata !812, metadata !632) #10, !dbg !884
  %162 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !886, !tbaa !640
  %163 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %162, i64 0, i32 5, !dbg !886
  %164 = load i8*, i8** %163, align 8, !dbg !886, !tbaa !822
  %165 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %162, i64 0, i32 6, !dbg !886
  %166 = load i8*, i8** %165, align 8, !dbg !886, !tbaa !826
  %167 = icmp ult i8* %164, %166, !dbg !886
  br i1 %167, label %170, label %168, !dbg !886, !prof !827

; <label>:168:                                    ; preds = %161
  %169 = call i32 @__overflow(%struct._IO_FILE* %162, i32 32) #10, !dbg !887
  br label %172, !dbg !887

; <label>:170:                                    ; preds = %161
  %171 = getelementptr inbounds i8, i8* %164, i64 1, !dbg !888
  store i8* %171, i8** %163, align 8, !dbg !888, !tbaa !822
  store i8 32, i8* %164, align 1, !dbg !888, !tbaa !832
  br label %172, !dbg !888

; <label>:172:                                    ; preds = %158, %168, %170
  store i1 true, i1* @print_element.printed, align 1
  %173 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !889, !tbaa !640
  %174 = call i32 @fputs_unlocked(i8* %159, %struct._IO_FILE* %173) #10, !dbg !889
  br label %175, !dbg !890

; <label>:175:                                    ; preds = %155, %172
  call void @llvm.lifetime.end(i64 390, i8* nonnull %69) #10, !dbg !891
  br label %176, !dbg !892

; <label>:176:                                    ; preds = %63, %175
  %177 = and i32 %65, 32, !dbg !893
  %178 = icmp eq i32 %177, 0, !dbg !893
  %179 = icmp eq i32 %65, -1, !dbg !894
  %180 = or i1 %179, %178, !dbg !896
  br i1 %180, label %197, label %181, !dbg !896

; <label>:181:                                    ; preds = %176
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([8 x i8], [8 x i8]* @main.unknown, i64 0, i64 0), i64 0, metadata !83, metadata !632) #10, !dbg !897
  %182 = load i1, i1* @print_element.printed, align 1
  br i1 %182, label %183, label %194, !dbg !899

; <label>:183:                                    ; preds = %181
  call void @llvm.dbg.value(metadata i32 32, i64 0, metadata !812, metadata !632) #10, !dbg !900
  %184 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !902, !tbaa !640
  %185 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %184, i64 0, i32 5, !dbg !902
  %186 = load i8*, i8** %185, align 8, !dbg !902, !tbaa !822
  %187 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %184, i64 0, i32 6, !dbg !902
  %188 = load i8*, i8** %187, align 8, !dbg !902, !tbaa !826
  %189 = icmp ult i8* %186, %188, !dbg !902
  br i1 %189, label %192, label %190, !dbg !902, !prof !827

; <label>:190:                                    ; preds = %183
  %191 = call i32 @__overflow(%struct._IO_FILE* %184, i32 32) #10, !dbg !903
  br label %194, !dbg !903

; <label>:192:                                    ; preds = %183
  %193 = getelementptr inbounds i8, i8* %186, i64 1, !dbg !904
  store i8* %193, i8** %185, align 8, !dbg !904, !tbaa !822
  store i8 32, i8* %186, align 1, !dbg !904, !tbaa !832
  br label %194, !dbg !904

; <label>:194:                                    ; preds = %181, %190, %192
  store i1 true, i1* @print_element.printed, align 1
  %195 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !905, !tbaa !640
  %196 = call i32 @fputs_unlocked(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @main.unknown, i64 0, i64 0), %struct._IO_FILE* %195) #10, !dbg !905
  br label %197, !dbg !906

; <label>:197:                                    ; preds = %194, %176
  %198 = and i32 %65, 64, !dbg !907
  %199 = icmp eq i32 %198, 0, !dbg !907
  %200 = or i1 %179, %199, !dbg !908
  br i1 %200, label %217, label %201, !dbg !908

; <label>:201:                                    ; preds = %197
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([8 x i8], [8 x i8]* @main.unknown, i64 0, i64 0), i64 0, metadata !83, metadata !632) #10, !dbg !909
  %202 = load i1, i1* @print_element.printed, align 1
  br i1 %202, label %203, label %214, !dbg !912

; <label>:203:                                    ; preds = %201
  call void @llvm.dbg.value(metadata i32 32, i64 0, metadata !812, metadata !632) #10, !dbg !913
  %204 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !915, !tbaa !640
  %205 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %204, i64 0, i32 5, !dbg !915
  %206 = load i8*, i8** %205, align 8, !dbg !915, !tbaa !822
  %207 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %204, i64 0, i32 6, !dbg !915
  %208 = load i8*, i8** %207, align 8, !dbg !915, !tbaa !826
  %209 = icmp ult i8* %206, %208, !dbg !915
  br i1 %209, label %212, label %210, !dbg !915, !prof !827

; <label>:210:                                    ; preds = %203
  %211 = call i32 @__overflow(%struct._IO_FILE* %204, i32 32) #10, !dbg !916
  br label %214, !dbg !916

; <label>:212:                                    ; preds = %203
  %213 = getelementptr inbounds i8, i8* %206, i64 1, !dbg !917
  store i8* %213, i8** %205, align 8, !dbg !917, !tbaa !822
  store i8 32, i8* %206, align 1, !dbg !917, !tbaa !832
  br label %214, !dbg !917

; <label>:214:                                    ; preds = %201, %210, %212
  store i1 true, i1* @print_element.printed, align 1
  %215 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !918, !tbaa !640
  %216 = call i32 @fputs_unlocked(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @main.unknown, i64 0, i64 0), %struct._IO_FILE* %215) #10, !dbg !918
  br label %217, !dbg !919

; <label>:217:                                    ; preds = %214, %197
  %218 = trunc i32 %65 to i8, !dbg !920
  %219 = icmp slt i8 %218, 0, !dbg !920
  br i1 %219, label %220, label %236, !dbg !922

; <label>:220:                                    ; preds = %217
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i64 0, metadata !83, metadata !632) #10, !dbg !923
  %221 = load i1, i1* @print_element.printed, align 1
  br i1 %221, label %222, label %233, !dbg !925

; <label>:222:                                    ; preds = %220
  call void @llvm.dbg.value(metadata i32 32, i64 0, metadata !812, metadata !632) #10, !dbg !926
  %223 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !928, !tbaa !640
  %224 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %223, i64 0, i32 5, !dbg !928
  %225 = load i8*, i8** %224, align 8, !dbg !928, !tbaa !822
  %226 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %223, i64 0, i32 6, !dbg !928
  %227 = load i8*, i8** %226, align 8, !dbg !928, !tbaa !826
  %228 = icmp ult i8* %225, %227, !dbg !928
  br i1 %228, label %231, label %229, !dbg !928, !prof !827

; <label>:229:                                    ; preds = %222
  %230 = call i32 @__overflow(%struct._IO_FILE* %223, i32 32) #10, !dbg !929
  br label %233, !dbg !929

; <label>:231:                                    ; preds = %222
  %232 = getelementptr inbounds i8, i8* %225, i64 1, !dbg !930
  store i8* %232, i8** %224, align 8, !dbg !930, !tbaa !822
  store i8 32, i8* %225, align 1, !dbg !930, !tbaa !832
  br label %233, !dbg !930

; <label>:233:                                    ; preds = %220, %229, %231
  store i1 true, i1* @print_element.printed, align 1
  %234 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !931, !tbaa !640
  %235 = call i32 @fputs_unlocked(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), %struct._IO_FILE* %234) #10, !dbg !931
  br label %236, !dbg !932

; <label>:236:                                    ; preds = %233, %217
  call void @llvm.dbg.value(metadata i32 10, i64 0, metadata !812, metadata !632) #10, !dbg !933
  %237 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !935, !tbaa !640
  %238 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %237, i64 0, i32 5, !dbg !935
  %239 = load i8*, i8** %238, align 8, !dbg !935, !tbaa !822
  %240 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %237, i64 0, i32 6, !dbg !935
  %241 = load i8*, i8** %240, align 8, !dbg !935, !tbaa !826
  %242 = icmp ult i8* %239, %241, !dbg !935
  br i1 %242, label %245, label %243, !dbg !935, !prof !827

; <label>:243:                                    ; preds = %236
  %244 = call i32 @__overflow(%struct._IO_FILE* %237, i32 10) #10, !dbg !936
  br label %247, !dbg !936

; <label>:245:                                    ; preds = %236
  %246 = getelementptr inbounds i8, i8* %239, i64 1, !dbg !937
  store i8* %246, i8** %238, align 8, !dbg !937, !tbaa !822
  store i8 10, i8* %239, align 1, !dbg !937, !tbaa !832
  br label %247, !dbg !937

; <label>:247:                                    ; preds = %243, %245
  ret i32 0, !dbg !938
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

; Function Attrs: nounwind
declare i32 @uname(%struct.utsname* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #8

declare i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #7

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_file_name(i8*) local_unnamed_addr #6 !dbg !939 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !941, metadata !632), !dbg !942
  store i8* %0, i8** @file_name, align 8, !dbg !943, !tbaa !640
  ret void, !dbg !944
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_ignore_EPIPE(i1 zeroext) local_unnamed_addr #6 !dbg !945 {
  %2 = zext i1 %0 to i8
  tail call void @llvm.dbg.value(metadata i1 %0, i64 0, metadata !949, metadata !950), !dbg !951
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !952, !tbaa !953
  ret void, !dbg !955
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout() #6 !dbg !956 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !963, !tbaa !640
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #10, !dbg !964
  %3 = icmp eq i32 %2, 0, !dbg !965
  br i1 %3, label %21, label %4, !dbg !966

; <label>:4:                                      ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !967, !tbaa !953, !range !969
  %6 = icmp eq i8 %5, 0, !dbg !967
  %7 = tail call i32* @__errno_location() #1, !dbg !970
  br i1 %6, label %11, label %8, !dbg !972

; <label>:8:                                      ; preds = %4
  %9 = load i32, i32* %7, align 4, !dbg !973, !tbaa !654
  %10 = icmp eq i32 %9, 32, !dbg !975
  br i1 %10, label %21, label %11, !dbg !976

; <label>:11:                                     ; preds = %4, %8
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.50, i64 0, i64 0), i32 5) #10, !dbg !978
  tail call void @llvm.dbg.value(metadata i8* %12, i64 0, metadata !960, metadata !632), !dbg !979
  %13 = load i8*, i8** @file_name, align 8, !dbg !980, !tbaa !640
  %14 = icmp eq i8* %13, null, !dbg !980
  %15 = load i32, i32* %7, align 4, !tbaa !654
  br i1 %14, label %18, label %16, !dbg !981

; <label>:16:                                     ; preds = %11
  %17 = tail call i8* @quotearg_colon(i8* nonnull %13) #10, !dbg !982
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.51, i64 0, i64 0), i8* %17, i8* %12) #10, !dbg !984
  br label %19, !dbg !986

; <label>:18:                                     ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.52, i64 0, i64 0), i8* %12) #10, !dbg !987
  br label %19

; <label>:19:                                     ; preds = %18, %16
  %20 = load volatile i32, i32* @exit_failure, align 4, !dbg !988, !tbaa !654
  tail call void @_exit(i32 %20) #14, !dbg !989
  unreachable, !dbg !989

; <label>:21:                                     ; preds = %0, %8
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !990, !tbaa !640
  %23 = tail call i32 @close_stream(%struct._IO_FILE* %22) #10, !dbg !992
  %24 = icmp eq i32 %23, 0, !dbg !993
  br i1 %24, label %27, label %25, !dbg !994

; <label>:25:                                     ; preds = %21
  %26 = load volatile i32, i32* @exit_failure, align 4, !dbg !995, !tbaa !654
  tail call void @_exit(i32 %26) #14, !dbg !996
  unreachable, !dbg !996

; <label>:27:                                     ; preds = %21
  ret void, !dbg !997
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #9

; Function Attrs: nounwind sspstrong uwtable
define void @set_program_name(i8*) local_unnamed_addr #6 !dbg !998 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1000, metadata !632), !dbg !1003
  %2 = icmp eq i8* %0, null, !dbg !1004
  br i1 %2, label %3, label %6, !dbg !1006

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1007, !tbaa !640
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.59, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #15, !dbg !1009
  tail call void @abort() #14, !dbg !1010
  unreachable, !dbg !1010

; <label>:6:                                      ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #13, !dbg !1011
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !1001, metadata !632), !dbg !1012
  %8 = icmp ne i8* %7, null, !dbg !1013
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !1014
  %10 = select i1 %8, i8* %9, i8* %0, !dbg !1016
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !1002, metadata !632), !dbg !1017
  %11 = ptrtoint i8* %10 to i64, !dbg !1018
  %12 = ptrtoint i8* %0 to i64, !dbg !1018
  %13 = sub i64 %11, %12, !dbg !1018
  %14 = icmp sgt i64 %13, 6, !dbg !1020
  br i1 %14, label %15, label %24, !dbg !1021

; <label>:15:                                     ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !1022
  %17 = tail call i32 @strncmp(i8* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.60, i64 0, i64 0), i64 7) #13, !dbg !1022
  %18 = icmp eq i32 %17, 0, !dbg !1024
  br i1 %18, label %19, label %24, !dbg !1025

; <label>:19:                                     ; preds = %15
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !1000, metadata !632), !dbg !1003
  %20 = tail call i32 @strncmp(i8* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.61, i64 0, i64 0), i64 3) #13, !dbg !1026
  %21 = icmp eq i32 %20, 0, !dbg !1029
  br i1 %21, label %22, label %24, !dbg !1030

; <label>:22:                                     ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !1031
  tail call void @llvm.dbg.value(metadata i8* %23, i64 0, metadata !1000, metadata !632), !dbg !1003
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !1033, !tbaa !640
  br label %24, !dbg !1034

; <label>:24:                                     ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i8* %25, i64 0, metadata !1000, metadata !632), !dbg !1003
  store i8* %25, i8** @program_name, align 8, !dbg !1035, !tbaa !640
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !1036, !tbaa !640
  ret void, !dbg !1037
}

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #10

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #5

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define %struct.quoting_options* @clone_quoting_options(%struct.quoting_options*) local_unnamed_addr #6 !dbg !1038 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1043, metadata !632), !dbg !1046
  %2 = tail call i32* @__errno_location() #1, !dbg !1047
  %3 = load i32, i32* %2, align 4, !dbg !1047, !tbaa !654
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !1044, metadata !632), !dbg !1048
  %4 = icmp ne %struct.quoting_options* %0, null, !dbg !1049
  %5 = bitcast %struct.quoting_options* %0 to i8*, !dbg !1050
  %6 = select i1 %4, i8* %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), !dbg !1050
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #10, !dbg !1052
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !1052
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %8, i64 0, metadata !1045, metadata !632), !dbg !1053
  store i32 %3, i32* %2, align 4, !dbg !1054, !tbaa !654
  ret %struct.quoting_options* %8, !dbg !1055
}

; Function Attrs: nounwind readonly sspstrong uwtable
define i32 @get_quoting_style(%struct.quoting_options* readonly) local_unnamed_addr #11 !dbg !1056 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1062, metadata !632), !dbg !1063
  %2 = icmp ne %struct.quoting_options* %0, null, !dbg !1064
  %3 = select i1 %2, %struct.quoting_options* %0, %struct.quoting_options* @default_quoting_options, !dbg !1064
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1065
  %5 = load i32, i32* %4, align 8, !dbg !1065, !tbaa !1067
  ret i32 %5, !dbg !1069
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_quoting_style(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !1070 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1074, metadata !632), !dbg !1076
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1075, metadata !632), !dbg !1077
  %3 = icmp ne %struct.quoting_options* %0, null, !dbg !1078
  %4 = select i1 %3, %struct.quoting_options* %0, %struct.quoting_options* @default_quoting_options, !dbg !1078
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !1079
  store i32 %1, i32* %5, align 8, !dbg !1081, !tbaa !1067
  ret void, !dbg !1082
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_char_quoting(%struct.quoting_options*, i8 signext, i32) local_unnamed_addr #6 !dbg !1083 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1087, metadata !632), !dbg !1095
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1088, metadata !632), !dbg !1096
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !1089, metadata !632), !dbg !1097
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1090, metadata !632), !dbg !1098
  %4 = icmp ne %struct.quoting_options* %0, null, !dbg !1099
  %5 = select i1 %4, %struct.quoting_options* %0, %struct.quoting_options* @default_quoting_options, !dbg !1099
  %6 = lshr i8 %1, 5, !dbg !1100
  %7 = zext i8 %6 to i64, !dbg !1100
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !1102
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !1091, metadata !632), !dbg !1103
  %9 = and i8 %1, 31, !dbg !1104
  %10 = zext i8 %9 to i32, !dbg !1105
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !1093, metadata !632), !dbg !1106
  %11 = load i32, i32* %8, align 4, !dbg !1107, !tbaa !654
  %12 = lshr i32 %11, %10, !dbg !1108
  %13 = and i32 %12, 1, !dbg !1109
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !1094, metadata !632), !dbg !1110
  %14 = and i32 %2, 1, !dbg !1111
  %15 = xor i32 %13, %14, !dbg !1112
  %16 = shl i32 %15, %10, !dbg !1113
  %17 = xor i32 %16, %11, !dbg !1114
  store i32 %17, i32* %8, align 4, !dbg !1114, !tbaa !654
  ret i32 %13, !dbg !1115
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_quoting_flags(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !1116 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1120, metadata !632), !dbg !1123
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1121, metadata !632), !dbg !1124
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1125
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1120, metadata !632), !dbg !1123
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1127
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1120, metadata !632), !dbg !1123
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !1128
  %6 = load i32, i32* %5, align 4, !dbg !1128, !tbaa !1129
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !1122, metadata !632), !dbg !1130
  store i32 %1, i32* %5, align 4, !dbg !1131, !tbaa !1129
  ret i32 %6, !dbg !1132
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_custom_quoting(%struct.quoting_options*, i8*, i8*) local_unnamed_addr #6 !dbg !1133 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1137, metadata !632), !dbg !1140
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1138, metadata !632), !dbg !1141
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1139, metadata !632), !dbg !1142
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1143
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1137, metadata !632), !dbg !1140
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1145
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1137, metadata !632), !dbg !1140
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1146
  store i32 10, i32* %6, align 8, !dbg !1147, !tbaa !1067
  %7 = icmp ne i8* %1, null, !dbg !1148
  %8 = icmp ne i8* %2, null, !dbg !1150
  %9 = and i1 %7, %8, !dbg !1152
  br i1 %9, label %11, label %10, !dbg !1152

; <label>:10:                                     ; preds = %3
  tail call void @abort() #14, !dbg !1153
  unreachable, !dbg !1153

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1154
  store i8* %1, i8** %12, align 8, !dbg !1155, !tbaa !1156
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1157
  store i8* %2, i8** %13, align 8, !dbg !1158, !tbaa !1159
  ret void, !dbg !1160
}

; Function Attrs: nounwind sspstrong uwtable
define i64 @quotearg_buffer(i8*, i64, i8*, i64, %struct.quoting_options* readonly) local_unnamed_addr #6 !dbg !1161 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1165, metadata !632), !dbg !1173
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1166, metadata !632), !dbg !1174
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1167, metadata !632), !dbg !1175
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !1168, metadata !632), !dbg !1176
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1169, metadata !632), !dbg !1177
  %6 = icmp ne %struct.quoting_options* %4, null, !dbg !1178
  %7 = select i1 %6, %struct.quoting_options* %4, %struct.quoting_options* @default_quoting_options, !dbg !1178
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %7, i64 0, metadata !1170, metadata !632), !dbg !1179
  %8 = tail call i32* @__errno_location() #1, !dbg !1180
  %9 = load i32, i32* %8, align 4, !dbg !1180, !tbaa !654
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !1171, metadata !632), !dbg !1181
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !1182
  %11 = load i32, i32* %10, align 8, !dbg !1182, !tbaa !1067
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !1183
  %13 = load i32, i32* %12, align 4, !dbg !1183, !tbaa !1129
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !1184
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !1185
  %16 = load i8*, i8** %15, align 8, !dbg !1185, !tbaa !1156
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !1186
  %18 = load i8*, i8** %17, align 8, !dbg !1186, !tbaa !1159
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* %14, i8* %16, i8* %18), !dbg !1187
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !1172, metadata !632), !dbg !1188
  store i32 %9, i32* %8, align 4, !dbg !1189, !tbaa !654
  ret i64 %19, !dbg !1190
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8*, i64, i8*, i64, i32, i32, i32* readonly, i8* readonly, i8* readonly) unnamed_addr #6 !dbg !1191 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1197, metadata !632), !dbg !1260
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1198, metadata !632), !dbg !1261
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1199, metadata !632), !dbg !1262
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !1200, metadata !632), !dbg !1263
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !1201, metadata !632), !dbg !1264
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !1202, metadata !632), !dbg !1265
  tail call void @llvm.dbg.value(metadata i32* %6, i64 0, metadata !1203, metadata !632), !dbg !1266
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !1204, metadata !632), !dbg !1267
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !1205, metadata !632), !dbg !1268
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1207, metadata !632), !dbg !1269
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1208, metadata !632), !dbg !1270
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1209, metadata !632), !dbg !1271
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1210, metadata !632), !dbg !1272
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1211, metadata !632), !dbg !1273
  %13 = tail call i64 @__ctype_get_mb_cur_max() #10, !dbg !1274
  %14 = icmp eq i64 %13, 1, !dbg !1275
  %15 = lshr i32 %5, 1, !dbg !1276
  %16 = trunc i32 %15 to i8, !dbg !1276
  %17 = and i8 %16, 1, !dbg !1276
  tail call void @llvm.dbg.value(metadata i8 %17, i64 0, metadata !1213, metadata !632), !dbg !1276
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1214, metadata !632), !dbg !1277
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1215, metadata !632), !dbg !1278
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1216, metadata !632), !dbg !1279
  %18 = bitcast i64* %10 to i8*
  %19 = bitcast i32* %12 to i8*
  %20 = icmp eq i32* %6, null
  %21 = icmp ne i32* %6, null
  %22 = and i32 %5, 1
  %23 = icmp eq i32 %22, 0
  %24 = and i32 %5, 4
  %25 = icmp eq i32 %24, 0
  %26 = getelementptr inbounds i8, i8* %2, i64 1
  br label %27, !dbg !1280

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
  call void @llvm.dbg.value(metadata i64 %40, i64 0, metadata !1198, metadata !632), !dbg !1261
  call void @llvm.dbg.value(metadata i8 %39, i64 0, metadata !1216, metadata !632), !dbg !1279
  call void @llvm.dbg.value(metadata i8 %38, i64 0, metadata !1215, metadata !632), !dbg !1278
  call void @llvm.dbg.value(metadata i8 %37, i64 0, metadata !1214, metadata !632), !dbg !1277
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !1213, metadata !632), !dbg !1276
  call void @llvm.dbg.value(metadata i64 %35, i64 0, metadata !1200, metadata !632), !dbg !1263
  call void @llvm.dbg.value(metadata i8 %34, i64 0, metadata !1211, metadata !632), !dbg !1273
  call void @llvm.dbg.value(metadata i64 %33, i64 0, metadata !1210, metadata !632), !dbg !1272
  call void @llvm.dbg.value(metadata i8* %32, i64 0, metadata !1209, metadata !632), !dbg !1271
  call void @llvm.dbg.value(metadata i64 %31, i64 0, metadata !1208, metadata !632), !dbg !1270
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1207, metadata !632), !dbg !1269
  call void @llvm.dbg.value(metadata i8* %30, i64 0, metadata !1205, metadata !632), !dbg !1268
  call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !1204, metadata !632), !dbg !1267
  call void @llvm.dbg.value(metadata i32 %28, i64 0, metadata !1201, metadata !632), !dbg !1264
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
  ], !dbg !1281

; <label>:41:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !1201, metadata !632), !dbg !1264
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1213, metadata !632), !dbg !1276
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !1213, metadata !632), !dbg !1276
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !1201, metadata !632), !dbg !1264
  br label %95, !dbg !1282

; <label>:42:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !1213, metadata !632), !dbg !1276
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !1201, metadata !632), !dbg !1264
  %43 = and i8 %36, 1, !dbg !1284
  %44 = icmp eq i8 %43, 0, !dbg !1284
  br i1 %44, label %45, label %95, !dbg !1282

; <label>:45:                                     ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !1286
  br i1 %46, label %95, label %47, !dbg !1290

; <label>:47:                                     ; preds = %45
  store i8 34, i8* %0, align 1, !dbg !1292, !tbaa !832
  br label %95, !dbg !1292

; <label>:48:                                     ; preds = %27, %27
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.72, i64 0, i64 0), i32 %28), !dbg !1294
  call void @llvm.dbg.value(metadata i8* %49, i64 0, metadata !1204, metadata !632), !dbg !1267
  %50 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.73, i64 0, i64 0), i32 %28), !dbg !1298
  call void @llvm.dbg.value(metadata i8* %50, i64 0, metadata !1205, metadata !632), !dbg !1268
  br label %51, !dbg !1299

; <label>:51:                                     ; preds = %27, %48
  %52 = phi i8* [ %49, %48 ], [ %29, %27 ]
  %53 = phi i8* [ %50, %48 ], [ %30, %27 ]
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !1205, metadata !632), !dbg !1268
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !1204, metadata !632), !dbg !1267
  %54 = and i8 %36, 1, !dbg !1300
  %55 = icmp eq i8 %54, 0, !dbg !1300
  br i1 %55, label %56, label %73, !dbg !1302

; <label>:56:                                     ; preds = %51
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !1209, metadata !632), !dbg !1271
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1207, metadata !632), !dbg !1269
  %57 = load i8, i8* %52, align 1, !dbg !1303, !tbaa !832
  %58 = icmp eq i8 %57, 0, !dbg !1307
  br i1 %58, label %73, label %59, !dbg !1307

; <label>:59:                                     ; preds = %56
  br label %60, !dbg !1309

; <label>:60:                                     ; preds = %59, %67
  %61 = phi i8 [ %70, %67 ], [ %57, %59 ]
  %62 = phi i8* [ %69, %67 ], [ %52, %59 ]
  %63 = phi i64 [ %68, %67 ], [ 0, %59 ]
  %64 = icmp ult i64 %63, %40, !dbg !1309
  br i1 %64, label %65, label %67, !dbg !1313

; <label>:65:                                     ; preds = %60
  %66 = getelementptr inbounds i8, i8* %0, i64 %63, !dbg !1315
  store i8 %61, i8* %66, align 1, !dbg !1315, !tbaa !832
  br label %67, !dbg !1315

; <label>:67:                                     ; preds = %65, %60
  %68 = add i64 %63, 1, !dbg !1317
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !1207, metadata !632), !dbg !1269
  %69 = getelementptr inbounds i8, i8* %62, i64 1, !dbg !1319
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !1209, metadata !632), !dbg !1271
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !1209, metadata !632), !dbg !1271
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !1207, metadata !632), !dbg !1269
  %70 = load i8, i8* %69, align 1, !dbg !1303, !tbaa !832
  %71 = icmp eq i8 %70, 0, !dbg !1307
  br i1 %71, label %72, label %60, !dbg !1307, !llvm.loop !1321

; <label>:72:                                     ; preds = %67
  br label %73, !dbg !1269

; <label>:73:                                     ; preds = %72, %56, %51
  %74 = phi i64 [ 0, %51 ], [ 0, %56 ], [ %68, %72 ]
  call void @llvm.dbg.value(metadata i64 %74, i64 0, metadata !1207, metadata !632), !dbg !1269
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1211, metadata !632), !dbg !1273
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !1209, metadata !632), !dbg !1271
  %75 = call i64 @strlen(i8* %53) #13, !dbg !1324
  call void @llvm.dbg.value(metadata i64 %75, i64 0, metadata !1210, metadata !632), !dbg !1272
  br label %95, !dbg !1325

; <label>:76:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1211, metadata !632), !dbg !1273
  br label %77, !dbg !1326

; <label>:77:                                     ; preds = %27, %76
  %78 = phi i8 [ %34, %27 ], [ 1, %76 ]
  call void @llvm.dbg.value(metadata i8 %78, i64 0, metadata !1211, metadata !632), !dbg !1273
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1213, metadata !632), !dbg !1276
  br label %79, !dbg !1327

; <label>:79:                                     ; preds = %27, %77
  %80 = phi i8 [ %34, %27 ], [ %78, %77 ]
  %81 = phi i8 [ %36, %27 ], [ 1, %77 ]
  call void @llvm.dbg.value(metadata i8 %81, i64 0, metadata !1213, metadata !632), !dbg !1276
  call void @llvm.dbg.value(metadata i8 %80, i64 0, metadata !1211, metadata !632), !dbg !1273
  %82 = and i8 %81, 1, !dbg !1328
  %83 = icmp eq i8 %82, 0, !dbg !1328
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1211, metadata !632), !dbg !1273
  %84 = select i1 %83, i8 1, i8 %80, !dbg !1330
  br label %85, !dbg !1330

; <label>:85:                                     ; preds = %79, %27
  %86 = phi i8 [ %34, %27 ], [ %84, %79 ]
  %87 = phi i8 [ %36, %27 ], [ %81, %79 ]
  call void @llvm.dbg.value(metadata i8 %87, i64 0, metadata !1213, metadata !632), !dbg !1276
  call void @llvm.dbg.value(metadata i8 %86, i64 0, metadata !1211, metadata !632), !dbg !1273
  call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !1201, metadata !632), !dbg !1264
  %88 = and i8 %87, 1, !dbg !1331
  %89 = icmp eq i8 %88, 0, !dbg !1331
  br i1 %89, label %90, label %95, !dbg !1333

; <label>:90:                                     ; preds = %85
  %91 = icmp eq i64 %40, 0, !dbg !1334
  br i1 %91, label %95, label %92, !dbg !1338

; <label>:92:                                     ; preds = %90
  store i8 39, i8* %0, align 1, !dbg !1340, !tbaa !832
  br label %95, !dbg !1340

; <label>:93:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1213, metadata !632), !dbg !1276
  br label %95, !dbg !1342

; <label>:94:                                     ; preds = %27
  call void @abort() #14, !dbg !1343
  unreachable, !dbg !1343

; <label>:95:                                     ; preds = %41, %85, %90, %92, %27, %42, %45, %47, %93, %73
  %96 = phi i32 [ 0, %93 ], [ %28, %73 ], [ 5, %47 ], [ 5, %45 ], [ 5, %42 ], [ 7, %27 ], [ 2, %92 ], [ 2, %90 ], [ 2, %85 ], [ 5, %41 ]
  %97 = phi i8* [ %29, %93 ], [ %52, %73 ], [ %29, %47 ], [ %29, %45 ], [ %29, %42 ], [ %29, %27 ], [ %29, %92 ], [ %29, %90 ], [ %29, %85 ], [ %29, %41 ]
  %98 = phi i8* [ %30, %93 ], [ %53, %73 ], [ %30, %47 ], [ %30, %45 ], [ %30, %42 ], [ %30, %27 ], [ %30, %92 ], [ %30, %90 ], [ %30, %85 ], [ %30, %41 ]
  %99 = phi i64 [ 0, %93 ], [ %74, %73 ], [ 1, %47 ], [ 1, %45 ], [ 0, %42 ], [ 0, %27 ], [ 1, %92 ], [ 1, %90 ], [ 0, %85 ], [ 0, %41 ]
  %100 = phi i8* [ %32, %93 ], [ %53, %73 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.74, i64 0, i64 0), %47 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.74, i64 0, i64 0), %45 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.74, i64 0, i64 0), %42 ], [ %32, %27 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.73, i64 0, i64 0), %92 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.73, i64 0, i64 0), %90 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.73, i64 0, i64 0), %85 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.74, i64 0, i64 0), %41 ]
  %101 = phi i64 [ %33, %93 ], [ %75, %73 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ %33, %27 ], [ 1, %92 ], [ 1, %90 ], [ 1, %85 ], [ 1, %41 ]
  %102 = phi i8 [ %34, %93 ], [ 1, %73 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ 1, %27 ], [ %86, %92 ], [ %86, %90 ], [ %86, %85 ], [ 1, %41 ]
  %103 = phi i8 [ 0, %93 ], [ %36, %73 ], [ %36, %47 ], [ %36, %45 ], [ %36, %42 ], [ 0, %27 ], [ %87, %92 ], [ %87, %90 ], [ %87, %85 ], [ 1, %41 ]
  call void @llvm.dbg.value(metadata i8 %103, i64 0, metadata !1213, metadata !632), !dbg !1276
  call void @llvm.dbg.value(metadata i8 %102, i64 0, metadata !1211, metadata !632), !dbg !1273
  call void @llvm.dbg.value(metadata i64 %101, i64 0, metadata !1210, metadata !632), !dbg !1272
  call void @llvm.dbg.value(metadata i8* %100, i64 0, metadata !1209, metadata !632), !dbg !1271
  call void @llvm.dbg.value(metadata i64 %99, i64 0, metadata !1207, metadata !632), !dbg !1269
  call void @llvm.dbg.value(metadata i8* %98, i64 0, metadata !1205, metadata !632), !dbg !1268
  call void @llvm.dbg.value(metadata i8* %97, i64 0, metadata !1204, metadata !632), !dbg !1267
  call void @llvm.dbg.value(metadata i32 %96, i64 0, metadata !1201, metadata !632), !dbg !1264
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1206, metadata !632), !dbg !1344
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
  br label %123, !dbg !1345

; <label>:123:                                    ; preds = %587, %95
  %124 = phi i64 [ 0, %95 ], [ %596, %587 ]
  %125 = phi i64 [ %99, %95 ], [ %589, %587 ]
  %126 = phi i64 [ %31, %95 ], [ %590, %587 ]
  %127 = phi i64 [ %35, %95 ], [ %591, %587 ]
  %128 = phi i8 [ %37, %95 ], [ %592, %587 ]
  %129 = phi i8 [ %38, %95 ], [ %593, %587 ]
  %130 = phi i8 [ %39, %95 ], [ %594, %587 ]
  %131 = phi i64 [ %40, %95 ], [ %595, %587 ]
  call void @llvm.dbg.value(metadata i64 %131, i64 0, metadata !1198, metadata !632), !dbg !1261
  call void @llvm.dbg.value(metadata i8 %130, i64 0, metadata !1216, metadata !632), !dbg !1279
  call void @llvm.dbg.value(metadata i8 %129, i64 0, metadata !1215, metadata !632), !dbg !1278
  call void @llvm.dbg.value(metadata i8 %128, i64 0, metadata !1214, metadata !632), !dbg !1277
  call void @llvm.dbg.value(metadata i64 %127, i64 0, metadata !1200, metadata !632), !dbg !1263
  call void @llvm.dbg.value(metadata i64 %126, i64 0, metadata !1208, metadata !632), !dbg !1270
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !1207, metadata !632), !dbg !1269
  call void @llvm.dbg.value(metadata i64 %124, i64 0, metadata !1206, metadata !632), !dbg !1344
  %132 = icmp eq i64 %127, -1, !dbg !1346
  br i1 %132, label %135, label %133, !dbg !1348

; <label>:133:                                    ; preds = %123
  %134 = icmp eq i64 %124, %127, !dbg !1349
  br i1 %134, label %597, label %139, !dbg !1351

; <label>:135:                                    ; preds = %123
  %136 = getelementptr inbounds i8, i8* %2, i64 %124, !dbg !1353
  %137 = load i8, i8* %136, align 1, !dbg !1353, !tbaa !832
  %138 = icmp eq i8 %137, 0, !dbg !1355
  br i1 %138, label %597, label %139, !dbg !1351

; <label>:139:                                    ; preds = %133, %135
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1222, metadata !632), !dbg !1356
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1223, metadata !632), !dbg !1357
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1224, metadata !632), !dbg !1358
  br i1 %109, label %140, label %155, !dbg !1359

; <label>:140:                                    ; preds = %139
  %141 = add i64 %124, %101, !dbg !1361
  %142 = and i1 %110, %132, !dbg !1363
  br i1 %142, label %143, label %145, !dbg !1363

; <label>:143:                                    ; preds = %140
  %144 = call i64 @strlen(i8* %2) #13, !dbg !1364
  call void @llvm.dbg.value(metadata i64 %144, i64 0, metadata !1200, metadata !632), !dbg !1263
  br label %145, !dbg !1365

; <label>:145:                                    ; preds = %140, %143
  %146 = phi i64 [ %144, %143 ], [ %127, %140 ]
  call void @llvm.dbg.value(metadata i64 %146, i64 0, metadata !1200, metadata !632), !dbg !1263
  %147 = icmp ugt i64 %141, %146, !dbg !1367
  br i1 %147, label %155, label %148, !dbg !1369

; <label>:148:                                    ; preds = %145
  %149 = getelementptr inbounds i8, i8* %2, i64 %124, !dbg !1370
  %150 = call i32 @memcmp(i8* %149, i8* %100, i64 %101) #13, !dbg !1371
  %151 = icmp ne i32 %150, 0, !dbg !1372
  %152 = or i1 %151, %112, !dbg !1372
  %153 = xor i1 %151, true, !dbg !1372
  %154 = zext i1 %153 to i8, !dbg !1372
  br i1 %152, label %155, label %644, !dbg !1372

; <label>:155:                                    ; preds = %148, %145, %139
  %156 = phi i64 [ %146, %148 ], [ %146, %145 ], [ %127, %139 ]
  %157 = phi i8 [ %154, %148 ], [ 0, %145 ], [ 0, %139 ]
  call void @llvm.dbg.value(metadata i8 %157, i64 0, metadata !1222, metadata !632), !dbg !1356
  call void @llvm.dbg.value(metadata i64 %156, i64 0, metadata !1200, metadata !632), !dbg !1263
  %158 = getelementptr inbounds i8, i8* %2, i64 %124, !dbg !1374
  %159 = load i8, i8* %158, align 1, !dbg !1374, !tbaa !832
  call void @llvm.dbg.value(metadata i8 %159, i64 0, metadata !1217, metadata !632), !dbg !1375
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
  ], !dbg !1376

; <label>:160:                                    ; preds = %155
  br i1 %105, label %161, label %209, !dbg !1377

; <label>:161:                                    ; preds = %160
  br i1 %112, label %162, label %644, !dbg !1378

; <label>:162:                                    ; preds = %161
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1223, metadata !632), !dbg !1357
  %163 = and i8 %128, 1, !dbg !1383
  %164 = icmp eq i8 %163, 0, !dbg !1383
  %165 = and i1 %114, %164, !dbg !1386
  br i1 %165, label %166, label %182, !dbg !1386

; <label>:166:                                    ; preds = %162
  %167 = icmp ult i64 %125, %131, !dbg !1388
  br i1 %167, label %168, label %170, !dbg !1393

; <label>:168:                                    ; preds = %166
  %169 = getelementptr inbounds i8, i8* %0, i64 %125, !dbg !1395
  store i8 39, i8* %169, align 1, !dbg !1395, !tbaa !832
  br label %170, !dbg !1395

; <label>:170:                                    ; preds = %168, %166
  %171 = add i64 %125, 1, !dbg !1397
  call void @llvm.dbg.value(metadata i64 %171, i64 0, metadata !1207, metadata !632), !dbg !1269
  %172 = icmp ult i64 %171, %131, !dbg !1399
  br i1 %172, label %173, label %175, !dbg !1403

; <label>:173:                                    ; preds = %170
  %174 = getelementptr inbounds i8, i8* %0, i64 %171, !dbg !1405
  store i8 36, i8* %174, align 1, !dbg !1405, !tbaa !832
  br label %175, !dbg !1405

; <label>:175:                                    ; preds = %173, %170
  %176 = add i64 %125, 2, !dbg !1407
  call void @llvm.dbg.value(metadata i64 %176, i64 0, metadata !1207, metadata !632), !dbg !1269
  %177 = icmp ult i64 %176, %131, !dbg !1409
  br i1 %177, label %178, label %180, !dbg !1413

; <label>:178:                                    ; preds = %175
  %179 = getelementptr inbounds i8, i8* %0, i64 %176, !dbg !1415
  store i8 39, i8* %179, align 1, !dbg !1415, !tbaa !832
  br label %180, !dbg !1415

; <label>:180:                                    ; preds = %178, %175
  %181 = add i64 %125, 3, !dbg !1417
  call void @llvm.dbg.value(metadata i64 %181, i64 0, metadata !1207, metadata !632), !dbg !1269
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1214, metadata !632), !dbg !1277
  br label %182, !dbg !1419

; <label>:182:                                    ; preds = %162, %180
  %183 = phi i64 [ %181, %180 ], [ %125, %162 ]
  %184 = phi i8 [ 1, %180 ], [ %128, %162 ]
  call void @llvm.dbg.value(metadata i8 %184, i64 0, metadata !1214, metadata !632), !dbg !1277
  call void @llvm.dbg.value(metadata i64 %183, i64 0, metadata !1207, metadata !632), !dbg !1269
  %185 = icmp ult i64 %183, %131, !dbg !1421
  br i1 %185, label %186, label %188, !dbg !1425

; <label>:186:                                    ; preds = %182
  %187 = getelementptr inbounds i8, i8* %0, i64 %183, !dbg !1427
  store i8 92, i8* %187, align 1, !dbg !1427, !tbaa !832
  br label %188, !dbg !1427

; <label>:188:                                    ; preds = %186, %182
  %189 = add i64 %183, 1, !dbg !1429
  call void @llvm.dbg.value(metadata i64 %189, i64 0, metadata !1207, metadata !632), !dbg !1269
  br i1 %106, label %190, label %476, !dbg !1431

; <label>:190:                                    ; preds = %188
  %191 = add i64 %124, 1, !dbg !1433
  %192 = icmp ult i64 %191, %156, !dbg !1435
  br i1 %192, label %193, label %476, !dbg !1436

; <label>:193:                                    ; preds = %190
  %194 = getelementptr inbounds i8, i8* %2, i64 %191, !dbg !1437
  %195 = load i8, i8* %194, align 1, !dbg !1437, !tbaa !832
  %196 = add i8 %195, -48, !dbg !1439
  %197 = icmp ult i8 %196, 10, !dbg !1439
  br i1 %197, label %198, label %476, !dbg !1439

; <label>:198:                                    ; preds = %193
  %199 = icmp ult i64 %189, %131, !dbg !1440
  br i1 %199, label %200, label %202, !dbg !1445

; <label>:200:                                    ; preds = %198
  %201 = getelementptr inbounds i8, i8* %0, i64 %189, !dbg !1447
  store i8 48, i8* %201, align 1, !dbg !1447, !tbaa !832
  br label %202, !dbg !1447

; <label>:202:                                    ; preds = %200, %198
  %203 = add i64 %183, 2, !dbg !1449
  call void @llvm.dbg.value(metadata i64 %203, i64 0, metadata !1207, metadata !632), !dbg !1269
  %204 = icmp ult i64 %203, %131, !dbg !1451
  br i1 %204, label %205, label %207, !dbg !1455

; <label>:205:                                    ; preds = %202
  %206 = getelementptr inbounds i8, i8* %0, i64 %203, !dbg !1457
  store i8 48, i8* %206, align 1, !dbg !1457, !tbaa !832
  br label %207, !dbg !1457

; <label>:207:                                    ; preds = %205, %202
  %208 = add i64 %183, 3, !dbg !1459
  call void @llvm.dbg.value(metadata i64 %208, i64 0, metadata !1207, metadata !632), !dbg !1269
  br label %476, !dbg !1461

; <label>:209:                                    ; preds = %160
  br i1 %23, label %476, label %587, !dbg !1462

; <label>:210:                                    ; preds = %155
  switch i32 %96, label %476 [
    i32 2, label %211
    i32 5, label %212
  ], !dbg !1463

; <label>:211:                                    ; preds = %210
  br i1 %112, label %476, label %644, !dbg !1464

; <label>:212:                                    ; preds = %210
  br i1 %25, label %476, label %213, !dbg !1466

; <label>:213:                                    ; preds = %212
  %214 = add i64 %124, 2, !dbg !1468
  %215 = icmp ult i64 %214, %156, !dbg !1470
  br i1 %215, label %216, label %476, !dbg !1471

; <label>:216:                                    ; preds = %213
  %217 = add i64 %124, 1, !dbg !1472
  %218 = getelementptr inbounds i8, i8* %2, i64 %217, !dbg !1474
  %219 = load i8, i8* %218, align 1, !dbg !1474, !tbaa !832
  %220 = icmp eq i8 %219, 63, !dbg !1475
  br i1 %220, label %221, label %476, !dbg !1476

; <label>:221:                                    ; preds = %216
  %222 = getelementptr inbounds i8, i8* %2, i64 %214, !dbg !1478
  %223 = load i8, i8* %222, align 1, !dbg !1478, !tbaa !832
  %224 = sext i8 %223 to i32, !dbg !1478
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
  ], !dbg !1479

; <label>:225:                                    ; preds = %221, %221, %221, %221, %221, %221, %221, %221, %221
  br i1 %112, label %226, label %644, !dbg !1480

; <label>:226:                                    ; preds = %225
  call void @llvm.dbg.value(metadata i8 %223, i64 0, metadata !1217, metadata !632), !dbg !1375
  call void @llvm.dbg.value(metadata i64 %214, i64 0, metadata !1206, metadata !632), !dbg !1344
  %227 = icmp ult i64 %125, %131, !dbg !1482
  br i1 %227, label %228, label %230, !dbg !1486

; <label>:228:                                    ; preds = %226
  %229 = getelementptr inbounds i8, i8* %0, i64 %125, !dbg !1488
  store i8 63, i8* %229, align 1, !dbg !1488, !tbaa !832
  br label %230, !dbg !1488

; <label>:230:                                    ; preds = %228, %226
  %231 = add i64 %125, 1, !dbg !1490
  call void @llvm.dbg.value(metadata i64 %231, i64 0, metadata !1207, metadata !632), !dbg !1269
  %232 = icmp ult i64 %231, %131, !dbg !1492
  br i1 %232, label %233, label %235, !dbg !1496

; <label>:233:                                    ; preds = %230
  %234 = getelementptr inbounds i8, i8* %0, i64 %231, !dbg !1498
  store i8 34, i8* %234, align 1, !dbg !1498, !tbaa !832
  br label %235, !dbg !1498

; <label>:235:                                    ; preds = %233, %230
  %236 = add i64 %125, 2, !dbg !1500
  call void @llvm.dbg.value(metadata i64 %236, i64 0, metadata !1207, metadata !632), !dbg !1269
  %237 = icmp ult i64 %236, %131, !dbg !1502
  br i1 %237, label %238, label %240, !dbg !1506

; <label>:238:                                    ; preds = %235
  %239 = getelementptr inbounds i8, i8* %0, i64 %236, !dbg !1508
  store i8 34, i8* %239, align 1, !dbg !1508, !tbaa !832
  br label %240, !dbg !1508

; <label>:240:                                    ; preds = %238, %235
  %241 = add i64 %125, 3, !dbg !1510
  call void @llvm.dbg.value(metadata i64 %241, i64 0, metadata !1207, metadata !632), !dbg !1269
  %242 = icmp ult i64 %241, %131, !dbg !1512
  br i1 %242, label %243, label %245, !dbg !1516

; <label>:243:                                    ; preds = %240
  %244 = getelementptr inbounds i8, i8* %0, i64 %241, !dbg !1518
  store i8 63, i8* %244, align 1, !dbg !1518, !tbaa !832
  br label %245, !dbg !1518

; <label>:245:                                    ; preds = %243, %240
  %246 = add i64 %125, 4, !dbg !1520
  call void @llvm.dbg.value(metadata i64 %246, i64 0, metadata !1207, metadata !632), !dbg !1269
  br label %476, !dbg !1522

; <label>:247:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 98, i64 0, metadata !1221, metadata !632), !dbg !1523
  br label %257, !dbg !1524

; <label>:248:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 102, i64 0, metadata !1221, metadata !632), !dbg !1523
  br label %257, !dbg !1525

; <label>:249:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 114, i64 0, metadata !1221, metadata !632), !dbg !1523
  br label %255, !dbg !1526

; <label>:250:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 116, i64 0, metadata !1221, metadata !632), !dbg !1523
  br label %255, !dbg !1527

; <label>:251:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 118, i64 0, metadata !1221, metadata !632), !dbg !1523
  br label %257, !dbg !1528

; <label>:252:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 %159, i64 0, metadata !1221, metadata !632), !dbg !1523
  br i1 %114, label %253, label %254, !dbg !1529

; <label>:253:                                    ; preds = %252
  br i1 %112, label %542, label %644, !dbg !1530

; <label>:254:                                    ; preds = %252
  br i1 %122, label %542, label %255, !dbg !1533

; <label>:255:                                    ; preds = %254, %155, %250, %249
  %256 = phi i8 [ 92, %254 ], [ 116, %250 ], [ 114, %249 ], [ 110, %155 ]
  call void @llvm.dbg.value(metadata i8 %256, i64 0, metadata !1221, metadata !632), !dbg !1523
  br i1 %118, label %257, label %644, !dbg !1535

; <label>:257:                                    ; preds = %255, %155, %251, %248, %247
  %258 = phi i8 [ %256, %255 ], [ 118, %251 ], [ 102, %248 ], [ 98, %247 ], [ 97, %155 ]
  call void @llvm.dbg.value(metadata i8 %258, i64 0, metadata !1221, metadata !632), !dbg !1523
  br i1 %105, label %503, label %476, !dbg !1537

; <label>:259:                                    ; preds = %155, %155
  %260 = icmp eq i64 %156, -1, !dbg !1538
  br i1 %260, label %261, label %266, !dbg !1540

; <label>:261:                                    ; preds = %259
  %262 = load i8, i8* %26, align 1, !dbg !1541, !tbaa !832
  %263 = icmp ne i8 %262, 0, !dbg !1543
  %264 = icmp ne i64 %124, 0, !dbg !1544
  %265 = or i1 %264, %263, !dbg !1546
  br i1 %265, label %476, label %272, !dbg !1546

; <label>:266:                                    ; preds = %259
  %267 = icmp ne i64 %156, 1, !dbg !1547
  %268 = icmp ne i64 %124, 0, !dbg !1544
  %269 = or i1 %268, %267, !dbg !1549
  br i1 %269, label %476, label %272, !dbg !1549

; <label>:270:                                    ; preds = %155, %155
  %271 = icmp eq i64 %124, 0, !dbg !1544
  br i1 %271, label %272, label %476, !dbg !1551

; <label>:272:                                    ; preds = %270, %266, %261, %155
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1224, metadata !632), !dbg !1358
  br label %273, !dbg !1552

; <label>:273:                                    ; preds = %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %272
  %274 = phi i8 [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 1, %272 ]
  call void @llvm.dbg.value(metadata i8 %274, i64 0, metadata !1224, metadata !632), !dbg !1358
  br i1 %118, label %476, label %644, !dbg !1553

; <label>:275:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1215, metadata !632), !dbg !1278
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1224, metadata !632), !dbg !1358
  br i1 %114, label %276, label %476, !dbg !1555

; <label>:276:                                    ; preds = %275
  br i1 %112, label %277, label %644, !dbg !1556

; <label>:277:                                    ; preds = %276
  %278 = icmp eq i64 %131, 0, !dbg !1559
  %279 = icmp ne i64 %126, 0, !dbg !1561
  %280 = or i1 %279, %278, !dbg !1563
  call void @llvm.dbg.value(metadata i64 %131, i64 0, metadata !1208, metadata !632), !dbg !1270
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1198, metadata !632), !dbg !1261
  %281 = select i1 %280, i64 %126, i64 %131, !dbg !1563
  %282 = select i1 %280, i64 %131, i64 0, !dbg !1563
  call void @llvm.dbg.value(metadata i64 %282, i64 0, metadata !1198, metadata !632), !dbg !1261
  call void @llvm.dbg.value(metadata i64 %281, i64 0, metadata !1208, metadata !632), !dbg !1270
  %283 = icmp ult i64 %125, %282, !dbg !1564
  br i1 %283, label %284, label %286, !dbg !1568

; <label>:284:                                    ; preds = %277
  %285 = getelementptr inbounds i8, i8* %0, i64 %125, !dbg !1570
  store i8 39, i8* %285, align 1, !dbg !1570, !tbaa !832
  br label %286, !dbg !1570

; <label>:286:                                    ; preds = %284, %277
  %287 = add i64 %125, 1, !dbg !1572
  call void @llvm.dbg.value(metadata i64 %287, i64 0, metadata !1207, metadata !632), !dbg !1269
  %288 = icmp ult i64 %287, %282, !dbg !1574
  br i1 %288, label %289, label %291, !dbg !1578

; <label>:289:                                    ; preds = %286
  %290 = getelementptr inbounds i8, i8* %0, i64 %287, !dbg !1580
  store i8 92, i8* %290, align 1, !dbg !1580, !tbaa !832
  br label %291, !dbg !1580

; <label>:291:                                    ; preds = %289, %286
  %292 = add i64 %125, 2, !dbg !1582
  call void @llvm.dbg.value(metadata i64 %292, i64 0, metadata !1207, metadata !632), !dbg !1269
  %293 = icmp ult i64 %292, %282, !dbg !1584
  br i1 %293, label %294, label %296, !dbg !1588

; <label>:294:                                    ; preds = %291
  %295 = getelementptr inbounds i8, i8* %0, i64 %292, !dbg !1590
  store i8 39, i8* %295, align 1, !dbg !1590, !tbaa !832
  br label %296, !dbg !1590

; <label>:296:                                    ; preds = %294, %291
  %297 = add i64 %125, 3, !dbg !1592
  call void @llvm.dbg.value(metadata i64 %297, i64 0, metadata !1207, metadata !632), !dbg !1269
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1214, metadata !632), !dbg !1277
  br label %476, !dbg !1594

; <label>:298:                                    ; preds = %155
  br i1 %14, label %299, label %308, !dbg !1595

; <label>:299:                                    ; preds = %298
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1225, metadata !632), !dbg !1596
  %300 = tail call i16** @__ctype_b_loc() #1, !dbg !1597
  %301 = load i16*, i16** %300, align 8, !dbg !1597, !tbaa !640
  %302 = zext i8 %159 to i64, !dbg !1597
  %303 = getelementptr inbounds i16, i16* %301, i64 %302, !dbg !1597
  %304 = load i16, i16* %303, align 2, !dbg !1597, !tbaa !1599
  %305 = lshr i16 %304, 14, !dbg !1600
  %306 = trunc i16 %305 to i8, !dbg !1600
  %307 = and i8 %306, 1, !dbg !1600
  call void @llvm.dbg.value(metadata i8 %307, i64 0, metadata !1228, metadata !632), !dbg !1601
  br label %368, !dbg !1602

; <label>:308:                                    ; preds = %298
  call void @llvm.lifetime.start(i64 8, i8* nonnull %18) #10, !dbg !1603
  store i64 0, i64* %10, align 8, !dbg !1604
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1225, metadata !632), !dbg !1596
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1228, metadata !632), !dbg !1601
  %309 = icmp eq i64 %156, -1, !dbg !1605
  br i1 %309, label %310, label %312, !dbg !1607, !llvm.loop !1608

; <label>:310:                                    ; preds = %308
  %311 = call i64 @strlen(i8* nonnull %2) #13, !dbg !1611
  call void @llvm.dbg.value(metadata i64 %311, i64 0, metadata !1200, metadata !632), !dbg !1263
  br label %312, !dbg !1612, !llvm.loop !1608

; <label>:312:                                    ; preds = %310, %308
  %313 = phi i64 [ %156, %308 ], [ %311, %310 ]
  br label %314, !dbg !1601

; <label>:314:                                    ; preds = %312, %355
  %315 = phi i64 [ %360, %355 ], [ 0, %312 ]
  %316 = phi i8 [ %359, %355 ], [ 1, %312 ]
  call void @llvm.dbg.value(metadata i8 %316, i64 0, metadata !1228, metadata !632), !dbg !1601
  call void @llvm.dbg.value(metadata i64 %315, i64 0, metadata !1225, metadata !632), !dbg !1596
  call void @llvm.dbg.value(metadata i64 %313, i64 0, metadata !1200, metadata !632), !dbg !1263
  call void @llvm.lifetime.start(i64 4, i8* nonnull %19) #10, !dbg !1613
  %317 = add i64 %315, %124, !dbg !1614
  %318 = getelementptr inbounds i8, i8* %2, i64 %317, !dbg !1615
  %319 = sub i64 %313, %317, !dbg !1616
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !1229, metadata !795), !dbg !1617
  call void @llvm.dbg.value(metadata i32* %12, i64 0, metadata !1246, metadata !795), !dbg !1618
  %320 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %318, i64 %319, %struct.__mbstate_t* nonnull %11) #10, !dbg !1619
  call void @llvm.dbg.value(metadata i64 %320, i64 0, metadata !1249, metadata !632), !dbg !1620
  switch i64 %320, label %334 [
    i64 0, label %350
    i64 -1, label %347
    i64 -2, label %321
  ], !dbg !1621

; <label>:321:                                    ; preds = %314
  call void @llvm.dbg.value(metadata i64 %315, i64 0, metadata !1225, metadata !632), !dbg !1596
  %322 = icmp ugt i64 %313, %317, !dbg !1622
  br i1 %322, label %323, label %351, !dbg !1625

; <label>:323:                                    ; preds = %321
  br label %324, !dbg !1626

; <label>:324:                                    ; preds = %323, %330
  %325 = phi i64 [ %332, %330 ], [ %317, %323 ]
  %326 = phi i64 [ %331, %330 ], [ %315, %323 ]
  %327 = getelementptr inbounds i8, i8* %2, i64 %325, !dbg !1626
  %328 = load i8, i8* %327, align 1, !dbg !1626, !tbaa !832
  %329 = icmp eq i8 %328, 0, !dbg !1628
  br i1 %329, label %348, label %330, !dbg !1629

; <label>:330:                                    ; preds = %324
  %331 = add i64 %326, 1, !dbg !1631
  call void @llvm.dbg.value(metadata i64 %331, i64 0, metadata !1225, metadata !632), !dbg !1596
  call void @llvm.dbg.value(metadata i64 %331, i64 0, metadata !1225, metadata !632), !dbg !1596
  %332 = add i64 %331, %124, !dbg !1632
  %333 = icmp ult i64 %332, %313, !dbg !1622
  br i1 %333, label %324, label %348, !dbg !1625, !llvm.loop !1633

; <label>:334:                                    ; preds = %314
  %335 = icmp ugt i64 %320, 1, !dbg !1635
  %336 = and i1 %116, %335, !dbg !1639
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1250, metadata !632), !dbg !1640
  br i1 %336, label %337, label %355, !dbg !1639

; <label>:337:                                    ; preds = %334
  br label %338, !dbg !1641

; <label>:338:                                    ; preds = %337, %344
  %339 = phi i64 [ %345, %344 ], [ 1, %337 ]
  %340 = add i64 %339, %317, !dbg !1641
  %341 = getelementptr inbounds i8, i8* %2, i64 %340, !dbg !1642
  %342 = load i8, i8* %341, align 1, !dbg !1642, !tbaa !832
  %343 = sext i8 %342 to i32, !dbg !1642
  switch i32 %343, label %344 [
    i32 91, label %367
    i32 92, label %367
    i32 94, label %367
    i32 96, label %367
    i32 124, label %367
  ], !dbg !1643

; <label>:344:                                    ; preds = %338
  %345 = add nuw i64 %339, 1, !dbg !1644
  call void @llvm.dbg.value(metadata i64 %345, i64 0, metadata !1250, metadata !632), !dbg !1640
  call void @llvm.dbg.value(metadata i64 %345, i64 0, metadata !1250, metadata !632), !dbg !1640
  %346 = icmp ult i64 %345, %320, !dbg !1635
  br i1 %346, label %338, label %354, !dbg !1646, !llvm.loop !1648

; <label>:347:                                    ; preds = %314
  br label %351, !dbg !1601

; <label>:348:                                    ; preds = %324, %330
  %349 = phi i64 [ %331, %330 ], [ %326, %324 ]
  br label %351, !dbg !1601

; <label>:350:                                    ; preds = %314
  br label %351, !dbg !1601

; <label>:351:                                    ; preds = %350, %348, %347, %321
  %352 = phi i64 [ %315, %321 ], [ %315, %347 ], [ %349, %348 ], [ %315, %350 ]
  %353 = phi i8 [ 0, %321 ], [ 0, %347 ], [ 0, %348 ], [ %316, %350 ]
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !1228, metadata !632), !dbg !1601
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !1225, metadata !632), !dbg !1596
  call void @llvm.lifetime.end(i64 4, i8* nonnull %19) #10, !dbg !1651
  br label %364

; <label>:354:                                    ; preds = %344
  br label %355, !dbg !1652

; <label>:355:                                    ; preds = %354, %334
  %356 = load i32, i32* %12, align 4, !dbg !1652, !tbaa !654
  call void @llvm.dbg.value(metadata i32 %356, i64 0, metadata !1246, metadata !632), !dbg !1618
  %357 = call i32 @iswprint(i32 %356) #10, !dbg !1654
  %358 = icmp eq i32 %357, 0, !dbg !1654
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1228, metadata !632), !dbg !1601
  %359 = select i1 %358, i8 0, i8 %316, !dbg !1655
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !1228, metadata !632), !dbg !1601
  %360 = add i64 %320, %315, !dbg !1656
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !1225, metadata !632), !dbg !1596
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !1228, metadata !632), !dbg !1601
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !1225, metadata !632), !dbg !1596
  call void @llvm.lifetime.end(i64 4, i8* nonnull %19) #10, !dbg !1651
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !1229, metadata !795), !dbg !1617
  %361 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #13, !dbg !1657
  %362 = icmp eq i32 %361, 0, !dbg !1658
  br i1 %362, label %314, label %363, !dbg !1659, !llvm.loop !1608

; <label>:363:                                    ; preds = %355
  br label %364, !dbg !1661

; <label>:364:                                    ; preds = %363, %351
  %365 = phi i8 [ %353, %351 ], [ %359, %363 ]
  %366 = phi i64 [ %352, %351 ], [ %360, %363 ]
  call void @llvm.lifetime.end(i64 8, i8* nonnull %18) #10, !dbg !1661
  br label %368

; <label>:367:                                    ; preds = %338, %338, %338, %338, %338
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !1228, metadata !632), !dbg !1601
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !1225, metadata !632), !dbg !1596
  call void @llvm.lifetime.end(i64 4, i8* nonnull %19) #10, !dbg !1651
  call void @llvm.lifetime.end(i64 8, i8* nonnull %18) #10, !dbg !1661
  br label %649

; <label>:368:                                    ; preds = %364, %299
  %369 = phi i64 [ %156, %299 ], [ %313, %364 ]
  %370 = phi i64 [ 1, %299 ], [ %366, %364 ]
  %371 = phi i8 [ %307, %299 ], [ %365, %364 ]
  call void @llvm.dbg.value(metadata i8 %371, i64 0, metadata !1228, metadata !632), !dbg !1601
  call void @llvm.dbg.value(metadata i64 %370, i64 0, metadata !1225, metadata !632), !dbg !1596
  call void @llvm.dbg.value(metadata i64 %369, i64 0, metadata !1200, metadata !632), !dbg !1263
  %372 = and i8 %371, 1, !dbg !1662
  %373 = icmp ne i8 %372, 0, !dbg !1662
  call void @llvm.dbg.value(metadata i8 %372, i64 0, metadata !1224, metadata !632), !dbg !1358
  %374 = icmp ult i64 %370, 2, !dbg !1663
  %375 = or i1 %373, %113, !dbg !1664
  %376 = and i1 %374, %375, !dbg !1666
  br i1 %376, label %476, label %377, !dbg !1666

; <label>:377:                                    ; preds = %368
  %378 = add i64 %370, %124, !dbg !1667
  call void @llvm.dbg.value(metadata i64 %378, i64 0, metadata !1257, metadata !632), !dbg !1668
  br label %379, !dbg !1669

; <label>:379:                                    ; preds = %472, %377
  %380 = phi i64 [ %124, %377 ], [ %447, %472 ]
  %381 = phi i64 [ %125, %377 ], [ %473, %472 ]
  %382 = phi i8 [ %128, %377 ], [ %468, %472 ]
  %383 = phi i8 [ %159, %377 ], [ %475, %472 ]
  %384 = phi i8 [ %157, %377 ], [ %445, %472 ]
  %385 = phi i8 [ 0, %377 ], [ %446, %472 ]
  call void @llvm.dbg.value(metadata i8 %385, i64 0, metadata !1223, metadata !632), !dbg !1357
  call void @llvm.dbg.value(metadata i8 %384, i64 0, metadata !1222, metadata !632), !dbg !1356
  call void @llvm.dbg.value(metadata i8 %383, i64 0, metadata !1217, metadata !632), !dbg !1375
  call void @llvm.dbg.value(metadata i8 %382, i64 0, metadata !1214, metadata !632), !dbg !1277
  call void @llvm.dbg.value(metadata i64 %381, i64 0, metadata !1207, metadata !632), !dbg !1269
  call void @llvm.dbg.value(metadata i64 %380, i64 0, metadata !1206, metadata !632), !dbg !1344
  br i1 %375, label %432, label %386, !dbg !1670

; <label>:386:                                    ; preds = %379
  br i1 %112, label %387, label %643, !dbg !1675

; <label>:387:                                    ; preds = %386
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1223, metadata !632), !dbg !1357
  %388 = and i8 %382, 1, !dbg !1679
  %389 = icmp eq i8 %388, 0, !dbg !1679
  %390 = and i1 %114, %389, !dbg !1682
  br i1 %390, label %391, label %407, !dbg !1682

; <label>:391:                                    ; preds = %387
  %392 = icmp ult i64 %381, %131, !dbg !1684
  br i1 %392, label %393, label %395, !dbg !1689

; <label>:393:                                    ; preds = %391
  %394 = getelementptr inbounds i8, i8* %0, i64 %381, !dbg !1691
  store i8 39, i8* %394, align 1, !dbg !1691, !tbaa !832
  br label %395, !dbg !1691

; <label>:395:                                    ; preds = %393, %391
  %396 = add i64 %381, 1, !dbg !1693
  call void @llvm.dbg.value(metadata i64 %396, i64 0, metadata !1207, metadata !632), !dbg !1269
  %397 = icmp ult i64 %396, %131, !dbg !1695
  br i1 %397, label %398, label %400, !dbg !1699

; <label>:398:                                    ; preds = %395
  %399 = getelementptr inbounds i8, i8* %0, i64 %396, !dbg !1701
  store i8 36, i8* %399, align 1, !dbg !1701, !tbaa !832
  br label %400, !dbg !1701

; <label>:400:                                    ; preds = %398, %395
  %401 = add i64 %381, 2, !dbg !1703
  call void @llvm.dbg.value(metadata i64 %401, i64 0, metadata !1207, metadata !632), !dbg !1269
  %402 = icmp ult i64 %401, %131, !dbg !1705
  br i1 %402, label %403, label %405, !dbg !1709

; <label>:403:                                    ; preds = %400
  %404 = getelementptr inbounds i8, i8* %0, i64 %401, !dbg !1711
  store i8 39, i8* %404, align 1, !dbg !1711, !tbaa !832
  br label %405, !dbg !1711

; <label>:405:                                    ; preds = %403, %400
  %406 = add i64 %381, 3, !dbg !1713
  call void @llvm.dbg.value(metadata i64 %406, i64 0, metadata !1207, metadata !632), !dbg !1269
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1214, metadata !632), !dbg !1277
  br label %407, !dbg !1715

; <label>:407:                                    ; preds = %387, %405
  %408 = phi i64 [ %406, %405 ], [ %381, %387 ]
  %409 = phi i8 [ 1, %405 ], [ %382, %387 ]
  call void @llvm.dbg.value(metadata i8 %409, i64 0, metadata !1214, metadata !632), !dbg !1277
  call void @llvm.dbg.value(metadata i64 %408, i64 0, metadata !1207, metadata !632), !dbg !1269
  %410 = icmp ult i64 %408, %131, !dbg !1717
  br i1 %410, label %411, label %413, !dbg !1721

; <label>:411:                                    ; preds = %407
  %412 = getelementptr inbounds i8, i8* %0, i64 %408, !dbg !1723
  store i8 92, i8* %412, align 1, !dbg !1723, !tbaa !832
  br label %413, !dbg !1723

; <label>:413:                                    ; preds = %411, %407
  %414 = add i64 %408, 1, !dbg !1725
  call void @llvm.dbg.value(metadata i64 %414, i64 0, metadata !1207, metadata !632), !dbg !1269
  %415 = icmp ult i64 %414, %131, !dbg !1727
  br i1 %415, label %416, label %420, !dbg !1731

; <label>:416:                                    ; preds = %413
  %417 = lshr i8 %383, 6, !dbg !1733
  %418 = or i8 %417, 48, !dbg !1733
  %419 = getelementptr inbounds i8, i8* %0, i64 %414, !dbg !1733
  store i8 %418, i8* %419, align 1, !dbg !1733, !tbaa !832
  br label %420, !dbg !1733

; <label>:420:                                    ; preds = %416, %413
  %421 = add i64 %408, 2, !dbg !1735
  call void @llvm.dbg.value(metadata i64 %421, i64 0, metadata !1207, metadata !632), !dbg !1269
  %422 = icmp ult i64 %421, %131, !dbg !1737
  br i1 %422, label %423, label %428, !dbg !1741

; <label>:423:                                    ; preds = %420
  %424 = lshr i8 %383, 3, !dbg !1743
  %425 = and i8 %424, 7, !dbg !1743
  %426 = or i8 %425, 48, !dbg !1743
  %427 = getelementptr inbounds i8, i8* %0, i64 %421, !dbg !1743
  store i8 %426, i8* %427, align 1, !dbg !1743, !tbaa !832
  br label %428, !dbg !1743

; <label>:428:                                    ; preds = %423, %420
  %429 = add i64 %408, 3, !dbg !1745
  call void @llvm.dbg.value(metadata i64 %429, i64 0, metadata !1207, metadata !632), !dbg !1269
  %430 = and i8 %383, 7, !dbg !1747
  %431 = or i8 %430, 48, !dbg !1748
  call void @llvm.dbg.value(metadata i8 %431, i64 0, metadata !1217, metadata !632), !dbg !1375
  br label %441, !dbg !1749

; <label>:432:                                    ; preds = %379
  %433 = and i8 %384, 1, !dbg !1750
  %434 = icmp eq i8 %433, 0, !dbg !1750
  br i1 %434, label %441, label %435, !dbg !1752

; <label>:435:                                    ; preds = %432
  %436 = icmp ult i64 %381, %131, !dbg !1753
  br i1 %436, label %437, label %439, !dbg !1758

; <label>:437:                                    ; preds = %435
  %438 = getelementptr inbounds i8, i8* %0, i64 %381, !dbg !1760
  store i8 92, i8* %438, align 1, !dbg !1760, !tbaa !832
  br label %439, !dbg !1760

; <label>:439:                                    ; preds = %437, %435
  %440 = add i64 %381, 1, !dbg !1762
  call void @llvm.dbg.value(metadata i64 %440, i64 0, metadata !1207, metadata !632), !dbg !1269
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1222, metadata !632), !dbg !1356
  br label %441, !dbg !1764

; <label>:441:                                    ; preds = %432, %439, %428
  %442 = phi i64 [ %440, %439 ], [ %381, %432 ], [ %429, %428 ]
  %443 = phi i8 [ %382, %439 ], [ %382, %432 ], [ %409, %428 ]
  %444 = phi i8 [ %383, %439 ], [ %383, %432 ], [ %431, %428 ]
  %445 = phi i8 [ 0, %439 ], [ %384, %432 ], [ %384, %428 ]
  %446 = phi i8 [ %385, %439 ], [ %385, %432 ], [ 1, %428 ]
  call void @llvm.dbg.value(metadata i8 %446, i64 0, metadata !1223, metadata !632), !dbg !1357
  call void @llvm.dbg.value(metadata i8 %445, i64 0, metadata !1222, metadata !632), !dbg !1356
  call void @llvm.dbg.value(metadata i8 %444, i64 0, metadata !1217, metadata !632), !dbg !1375
  call void @llvm.dbg.value(metadata i8 %443, i64 0, metadata !1214, metadata !632), !dbg !1277
  call void @llvm.dbg.value(metadata i64 %442, i64 0, metadata !1207, metadata !632), !dbg !1269
  %447 = add i64 %380, 1, !dbg !1765
  %448 = icmp ugt i64 %378, %447, !dbg !1767
  br i1 %448, label %449, label %541, !dbg !1768

; <label>:449:                                    ; preds = %441
  %450 = and i8 %443, 1, !dbg !1769
  %451 = icmp ne i8 %450, 0, !dbg !1769
  %452 = and i8 %446, 1, !dbg !1773
  %453 = icmp eq i8 %452, 0, !dbg !1773
  %454 = and i1 %451, %453, !dbg !1769
  br i1 %454, label %455, label %466, !dbg !1769

; <label>:455:                                    ; preds = %449
  %456 = icmp ult i64 %442, %131, !dbg !1775
  br i1 %456, label %457, label %459, !dbg !1780

; <label>:457:                                    ; preds = %455
  %458 = getelementptr inbounds i8, i8* %0, i64 %442, !dbg !1782
  store i8 39, i8* %458, align 1, !dbg !1782, !tbaa !832
  br label %459, !dbg !1782

; <label>:459:                                    ; preds = %457, %455
  %460 = add i64 %442, 1, !dbg !1784
  call void @llvm.dbg.value(metadata i64 %460, i64 0, metadata !1207, metadata !632), !dbg !1269
  %461 = icmp ult i64 %460, %131, !dbg !1786
  br i1 %461, label %462, label %464, !dbg !1790

; <label>:462:                                    ; preds = %459
  %463 = getelementptr inbounds i8, i8* %0, i64 %460, !dbg !1792
  store i8 39, i8* %463, align 1, !dbg !1792, !tbaa !832
  br label %464, !dbg !1792

; <label>:464:                                    ; preds = %462, %459
  %465 = add i64 %442, 2, !dbg !1794
  call void @llvm.dbg.value(metadata i64 %465, i64 0, metadata !1207, metadata !632), !dbg !1269
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1214, metadata !632), !dbg !1277
  br label %466, !dbg !1796

; <label>:466:                                    ; preds = %449, %464
  %467 = phi i64 [ %465, %464 ], [ %442, %449 ]
  %468 = phi i8 [ 0, %464 ], [ %443, %449 ]
  call void @llvm.dbg.value(metadata i8 %468, i64 0, metadata !1214, metadata !632), !dbg !1277
  call void @llvm.dbg.value(metadata i64 %467, i64 0, metadata !1207, metadata !632), !dbg !1269
  %469 = icmp ult i64 %467, %131, !dbg !1798
  br i1 %469, label %470, label %472, !dbg !1802

; <label>:470:                                    ; preds = %466
  %471 = getelementptr inbounds i8, i8* %0, i64 %467, !dbg !1804
  store i8 %444, i8* %471, align 1, !dbg !1804, !tbaa !832
  br label %472, !dbg !1804

; <label>:472:                                    ; preds = %470, %466
  %473 = add i64 %467, 1, !dbg !1806
  call void @llvm.dbg.value(metadata i64 %473, i64 0, metadata !1207, metadata !632), !dbg !1269
  call void @llvm.dbg.value(metadata i64 %447, i64 0, metadata !1206, metadata !632), !dbg !1344
  %474 = getelementptr inbounds i8, i8* %2, i64 %447, !dbg !1808
  %475 = load i8, i8* %474, align 1, !dbg !1808, !tbaa !832
  call void @llvm.dbg.value(metadata i8 %475, i64 0, metadata !1217, metadata !632), !dbg !1375
  br label %379, !dbg !1809, !llvm.loop !1811

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
  call void @llvm.dbg.value(metadata i64 %486, i64 0, metadata !1198, metadata !632), !dbg !1261
  call void @llvm.dbg.value(metadata i8 %485, i64 0, metadata !1224, metadata !632), !dbg !1358
  call void @llvm.dbg.value(metadata i8 %484, i64 0, metadata !1223, metadata !632), !dbg !1357
  call void @llvm.dbg.value(metadata i8 %157, i64 0, metadata !1222, metadata !632), !dbg !1356
  call void @llvm.dbg.value(metadata i8 %483, i64 0, metadata !1217, metadata !632), !dbg !1375
  call void @llvm.dbg.value(metadata i8 %482, i64 0, metadata !1215, metadata !632), !dbg !1278
  call void @llvm.dbg.value(metadata i8 %481, i64 0, metadata !1214, metadata !632), !dbg !1277
  call void @llvm.dbg.value(metadata i64 %480, i64 0, metadata !1200, metadata !632), !dbg !1263
  call void @llvm.dbg.value(metadata i64 %479, i64 0, metadata !1208, metadata !632), !dbg !1270
  call void @llvm.dbg.value(metadata i64 %478, i64 0, metadata !1207, metadata !632), !dbg !1269
  call void @llvm.dbg.value(metadata i64 %477, i64 0, metadata !1206, metadata !632), !dbg !1344
  br i1 %107, label %488, label %487, !dbg !1814

; <label>:487:                                    ; preds = %476
  br i1 %117, label %489, label %501, !dbg !1816

; <label>:488:                                    ; preds = %476
  br i1 %20, label %501, label %489, !dbg !1817

; <label>:489:                                    ; preds = %488, %487
  %490 = lshr i8 %483, 5, !dbg !1818
  %491 = zext i8 %490 to i64, !dbg !1818
  %492 = getelementptr inbounds i32, i32* %6, i64 %491, !dbg !1820
  %493 = load i32, i32* %492, align 4, !dbg !1820, !tbaa !654
  %494 = and i8 %483, 31, !dbg !1821
  %495 = zext i8 %494 to i32, !dbg !1822
  %496 = shl i32 1, %495, !dbg !1823
  %497 = and i32 %493, %496, !dbg !1823
  %498 = icmp eq i32 %497, 0, !dbg !1823
  %499 = icmp eq i8 %157, 0, !dbg !1824
  %500 = and i1 %499, %498, !dbg !1825
  br i1 %500, label %542, label %503, !dbg !1825

; <label>:501:                                    ; preds = %488, %487
  %502 = icmp eq i8 %157, 0, !dbg !1824
  br i1 %502, label %542, label %503, !dbg !1826

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
  call void @llvm.dbg.value(metadata i64 %512, i64 0, metadata !1198, metadata !632), !dbg !1261
  call void @llvm.dbg.value(metadata i8 %511, i64 0, metadata !1224, metadata !632), !dbg !1358
  call void @llvm.dbg.value(metadata i8 %510, i64 0, metadata !1217, metadata !632), !dbg !1375
  call void @llvm.dbg.value(metadata i8 %509, i64 0, metadata !1215, metadata !632), !dbg !1278
  call void @llvm.dbg.value(metadata i8 %508, i64 0, metadata !1214, metadata !632), !dbg !1277
  call void @llvm.dbg.value(metadata i64 %507, i64 0, metadata !1200, metadata !632), !dbg !1263
  call void @llvm.dbg.value(metadata i64 %506, i64 0, metadata !1208, metadata !632), !dbg !1270
  call void @llvm.dbg.value(metadata i64 %505, i64 0, metadata !1207, metadata !632), !dbg !1269
  call void @llvm.dbg.value(metadata i64 %504, i64 0, metadata !1206, metadata !632), !dbg !1344
  br i1 %112, label %513, label %644, !dbg !1828

; <label>:513:                                    ; preds = %503
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1223, metadata !632), !dbg !1357
  %514 = and i8 %508, 1, !dbg !1831
  %515 = icmp eq i8 %514, 0, !dbg !1831
  %516 = and i1 %114, %515, !dbg !1834
  br i1 %516, label %517, label %533, !dbg !1834

; <label>:517:                                    ; preds = %513
  %518 = icmp ult i64 %505, %512, !dbg !1836
  br i1 %518, label %519, label %521, !dbg !1841

; <label>:519:                                    ; preds = %517
  %520 = getelementptr inbounds i8, i8* %0, i64 %505, !dbg !1843
  store i8 39, i8* %520, align 1, !dbg !1843, !tbaa !832
  br label %521, !dbg !1843

; <label>:521:                                    ; preds = %519, %517
  %522 = add i64 %505, 1, !dbg !1845
  call void @llvm.dbg.value(metadata i64 %522, i64 0, metadata !1207, metadata !632), !dbg !1269
  %523 = icmp ult i64 %522, %512, !dbg !1847
  br i1 %523, label %524, label %526, !dbg !1851

; <label>:524:                                    ; preds = %521
  %525 = getelementptr inbounds i8, i8* %0, i64 %522, !dbg !1853
  store i8 36, i8* %525, align 1, !dbg !1853, !tbaa !832
  br label %526, !dbg !1853

; <label>:526:                                    ; preds = %524, %521
  %527 = add i64 %505, 2, !dbg !1855
  call void @llvm.dbg.value(metadata i64 %527, i64 0, metadata !1207, metadata !632), !dbg !1269
  %528 = icmp ult i64 %527, %512, !dbg !1857
  br i1 %528, label %529, label %531, !dbg !1861

; <label>:529:                                    ; preds = %526
  %530 = getelementptr inbounds i8, i8* %0, i64 %527, !dbg !1863
  store i8 39, i8* %530, align 1, !dbg !1863, !tbaa !832
  br label %531, !dbg !1863

; <label>:531:                                    ; preds = %529, %526
  %532 = add i64 %505, 3, !dbg !1865
  call void @llvm.dbg.value(metadata i64 %532, i64 0, metadata !1207, metadata !632), !dbg !1269
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1214, metadata !632), !dbg !1277
  br label %533, !dbg !1867

; <label>:533:                                    ; preds = %513, %531
  %534 = phi i64 [ %532, %531 ], [ %505, %513 ]
  %535 = phi i8 [ 1, %531 ], [ %508, %513 ]
  call void @llvm.dbg.value(metadata i8 %535, i64 0, metadata !1214, metadata !632), !dbg !1277
  call void @llvm.dbg.value(metadata i64 %534, i64 0, metadata !1207, metadata !632), !dbg !1269
  %536 = icmp ult i64 %534, %512, !dbg !1869
  br i1 %536, label %537, label %539, !dbg !1873

; <label>:537:                                    ; preds = %533
  %538 = getelementptr inbounds i8, i8* %0, i64 %534, !dbg !1875
  store i8 92, i8* %538, align 1, !dbg !1875, !tbaa !832
  br label %539, !dbg !1875

; <label>:539:                                    ; preds = %533, %537
  %540 = add i64 %534, 1, !dbg !1877
  call void @llvm.dbg.value(metadata i64 %540, i64 0, metadata !1207, metadata !632), !dbg !1269
  call void @llvm.dbg.value(metadata i64 %552, i64 0, metadata !1198, metadata !632), !dbg !1261
  call void @llvm.dbg.value(metadata i8 %551, i64 0, metadata !1224, metadata !632), !dbg !1358
  call void @llvm.dbg.value(metadata i8 %550, i64 0, metadata !1223, metadata !632), !dbg !1357
  call void @llvm.dbg.value(metadata i8 %549, i64 0, metadata !1217, metadata !632), !dbg !1375
  call void @llvm.dbg.value(metadata i8 %548, i64 0, metadata !1215, metadata !632), !dbg !1278
  call void @llvm.dbg.value(metadata i8 %547, i64 0, metadata !1214, metadata !632), !dbg !1277
  call void @llvm.dbg.value(metadata i64 %546, i64 0, metadata !1200, metadata !632), !dbg !1263
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !1208, metadata !632), !dbg !1270
  call void @llvm.dbg.value(metadata i64 %544, i64 0, metadata !1207, metadata !632), !dbg !1269
  call void @llvm.dbg.value(metadata i64 %543, i64 0, metadata !1206, metadata !632), !dbg !1344
  br label %569, !dbg !1879

; <label>:541:                                    ; preds = %441
  br label %542, !dbg !1261

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
  call void @llvm.dbg.value(metadata i64 %552, i64 0, metadata !1198, metadata !632), !dbg !1261
  call void @llvm.dbg.value(metadata i8 %551, i64 0, metadata !1224, metadata !632), !dbg !1358
  call void @llvm.dbg.value(metadata i8 %550, i64 0, metadata !1223, metadata !632), !dbg !1357
  call void @llvm.dbg.value(metadata i8 %549, i64 0, metadata !1217, metadata !632), !dbg !1375
  call void @llvm.dbg.value(metadata i8 %548, i64 0, metadata !1215, metadata !632), !dbg !1278
  call void @llvm.dbg.value(metadata i8 %547, i64 0, metadata !1214, metadata !632), !dbg !1277
  call void @llvm.dbg.value(metadata i64 %546, i64 0, metadata !1200, metadata !632), !dbg !1263
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !1208, metadata !632), !dbg !1270
  call void @llvm.dbg.value(metadata i64 %544, i64 0, metadata !1207, metadata !632), !dbg !1269
  call void @llvm.dbg.value(metadata i64 %543, i64 0, metadata !1206, metadata !632), !dbg !1344
  %553 = and i8 %547, 1, !dbg !1879
  %554 = icmp ne i8 %553, 0, !dbg !1879
  %555 = and i8 %550, 1, !dbg !1883
  %556 = icmp eq i8 %555, 0, !dbg !1883
  %557 = and i1 %554, %556, !dbg !1879
  br i1 %557, label %558, label %569, !dbg !1879

; <label>:558:                                    ; preds = %542
  %559 = icmp ult i64 %544, %552, !dbg !1885
  br i1 %559, label %560, label %562, !dbg !1890

; <label>:560:                                    ; preds = %558
  %561 = getelementptr inbounds i8, i8* %0, i64 %544, !dbg !1892
  store i8 39, i8* %561, align 1, !dbg !1892, !tbaa !832
  br label %562, !dbg !1892

; <label>:562:                                    ; preds = %560, %558
  %563 = add i64 %544, 1, !dbg !1894
  call void @llvm.dbg.value(metadata i64 %563, i64 0, metadata !1207, metadata !632), !dbg !1269
  %564 = icmp ult i64 %563, %552, !dbg !1896
  br i1 %564, label %565, label %567, !dbg !1900

; <label>:565:                                    ; preds = %562
  %566 = getelementptr inbounds i8, i8* %0, i64 %563, !dbg !1902
  store i8 39, i8* %566, align 1, !dbg !1902, !tbaa !832
  br label %567, !dbg !1902

; <label>:567:                                    ; preds = %565, %562
  %568 = add i64 %544, 2, !dbg !1904
  call void @llvm.dbg.value(metadata i64 %568, i64 0, metadata !1207, metadata !632), !dbg !1269
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1214, metadata !632), !dbg !1277
  br label %569, !dbg !1906

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
  call void @llvm.dbg.value(metadata i8 %578, i64 0, metadata !1214, metadata !632), !dbg !1277
  call void @llvm.dbg.value(metadata i64 %577, i64 0, metadata !1207, metadata !632), !dbg !1269
  %579 = icmp ult i64 %577, %570, !dbg !1908
  br i1 %579, label %580, label %582, !dbg !1912

; <label>:580:                                    ; preds = %569
  %581 = getelementptr inbounds i8, i8* %0, i64 %577, !dbg !1914
  store i8 %572, i8* %581, align 1, !dbg !1914, !tbaa !832
  br label %582, !dbg !1914

; <label>:582:                                    ; preds = %580, %569
  %583 = add i64 %577, 1, !dbg !1916
  call void @llvm.dbg.value(metadata i64 %583, i64 0, metadata !1207, metadata !632), !dbg !1269
  %584 = and i8 %571, 1, !dbg !1918
  %585 = icmp eq i8 %584, 0, !dbg !1918
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1216, metadata !632), !dbg !1279
  %586 = select i1 %585, i8 0, i8 %130, !dbg !1920
  call void @llvm.dbg.value(metadata i8 %586, i64 0, metadata !1216, metadata !632), !dbg !1279
  br label %587, !dbg !1921

; <label>:587:                                    ; preds = %582, %209
  %588 = phi i64 [ %124, %209 ], [ %576, %582 ]
  %589 = phi i64 [ %125, %209 ], [ %583, %582 ]
  %590 = phi i64 [ %126, %209 ], [ %575, %582 ]
  %591 = phi i64 [ %156, %209 ], [ %574, %582 ]
  %592 = phi i8 [ %128, %209 ], [ %578, %582 ]
  %593 = phi i8 [ %129, %209 ], [ %573, %582 ]
  %594 = phi i8 [ %130, %209 ], [ %586, %582 ]
  %595 = phi i64 [ %131, %209 ], [ %570, %582 ]
  %596 = add i64 %588, 1, !dbg !1922
  call void @llvm.dbg.value(metadata i64 %596, i64 0, metadata !1206, metadata !632), !dbg !1344
  br label %123, !dbg !1924, !llvm.loop !1925

; <label>:597:                                    ; preds = %133, %135
  %598 = phi i64 [ %124, %133 ], [ -1, %135 ]
  %599 = icmp eq i64 %125, 0, !dbg !1928
  %600 = and i1 %114, %599, !dbg !1930
  %601 = xor i1 %600, true, !dbg !1930
  %602 = or i1 %112, %601, !dbg !1930
  br i1 %602, label %603, label %648, !dbg !1930

; <label>:603:                                    ; preds = %597
  %604 = and i1 %114, %112, !dbg !1931
  %605 = xor i1 %604, true, !dbg !1931
  %606 = and i8 %129, 1, !dbg !1933
  %607 = icmp eq i8 %606, 0, !dbg !1933
  %608 = or i1 %607, %605, !dbg !1931
  br i1 %608, label %618, label %609, !dbg !1931

; <label>:609:                                    ; preds = %603
  %610 = and i8 %130, 1, !dbg !1935
  %611 = icmp eq i8 %610, 0, !dbg !1935
  br i1 %611, label %614, label %612, !dbg !1938

; <label>:612:                                    ; preds = %609
  %613 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %126, i8* %2, i64 %598, i32 5, i32 %5, i32* %6, i8* %97, i8* %98), !dbg !1939
  br label %659, !dbg !1940

; <label>:614:                                    ; preds = %609
  %615 = icmp eq i64 %131, 0, !dbg !1941
  %616 = icmp ne i64 %126, 0, !dbg !1943
  %617 = and i1 %616, %615, !dbg !1945
  br i1 %617, label %27, label %618, !dbg !1945

; <label>:618:                                    ; preds = %603, %614
  %619 = icmp ne i8* %100, null, !dbg !1946
  %620 = and i1 %619, %112, !dbg !1948
  br i1 %620, label %621, label %638, !dbg !1948

; <label>:621:                                    ; preds = %618
  call void @llvm.dbg.value(metadata i8* %100, i64 0, metadata !1209, metadata !632), !dbg !1271
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !1207, metadata !632), !dbg !1269
  %622 = load i8, i8* %100, align 1, !dbg !1949, !tbaa !832
  %623 = icmp eq i8 %622, 0, !dbg !1953
  br i1 %623, label %638, label %624, !dbg !1953

; <label>:624:                                    ; preds = %621
  br label %625, !dbg !1955

; <label>:625:                                    ; preds = %624, %632
  %626 = phi i8 [ %635, %632 ], [ %622, %624 ]
  %627 = phi i8* [ %634, %632 ], [ %100, %624 ]
  %628 = phi i64 [ %633, %632 ], [ %125, %624 ]
  %629 = icmp ult i64 %628, %131, !dbg !1955
  br i1 %629, label %630, label %632, !dbg !1959

; <label>:630:                                    ; preds = %625
  %631 = getelementptr inbounds i8, i8* %0, i64 %628, !dbg !1961
  store i8 %626, i8* %631, align 1, !dbg !1961, !tbaa !832
  br label %632, !dbg !1961

; <label>:632:                                    ; preds = %630, %625
  %633 = add i64 %628, 1, !dbg !1963
  call void @llvm.dbg.value(metadata i64 %633, i64 0, metadata !1207, metadata !632), !dbg !1269
  %634 = getelementptr inbounds i8, i8* %627, i64 1, !dbg !1965
  call void @llvm.dbg.value(metadata i8* %634, i64 0, metadata !1209, metadata !632), !dbg !1271
  call void @llvm.dbg.value(metadata i8* %634, i64 0, metadata !1209, metadata !632), !dbg !1271
  call void @llvm.dbg.value(metadata i64 %633, i64 0, metadata !1207, metadata !632), !dbg !1269
  %635 = load i8, i8* %634, align 1, !dbg !1949, !tbaa !832
  %636 = icmp eq i8 %635, 0, !dbg !1953
  br i1 %636, label %637, label %625, !dbg !1953, !llvm.loop !1967

; <label>:637:                                    ; preds = %632
  br label %638, !dbg !1269

; <label>:638:                                    ; preds = %637, %621, %618
  %639 = phi i64 [ %125, %618 ], [ %125, %621 ], [ %633, %637 ]
  call void @llvm.dbg.value(metadata i64 %639, i64 0, metadata !1207, metadata !632), !dbg !1269
  %640 = icmp ult i64 %639, %131, !dbg !1970
  br i1 %640, label %641, label %659, !dbg !1972

; <label>:641:                                    ; preds = %638
  %642 = getelementptr inbounds i8, i8* %0, i64 %639, !dbg !1973
  store i8 0, i8* %642, align 1, !dbg !1974, !tbaa !832
  br label %659, !dbg !1973

; <label>:643:                                    ; preds = %386
  br label %649, !dbg !1261

; <label>:644:                                    ; preds = %148, %161, %211, %225, %253, %255, %273, %276, %503
  %645 = phi i32 [ %96, %148 ], [ %96, %161 ], [ 2, %211 ], [ 5, %225 ], [ 2, %253 ], [ 2, %255 ], [ 2, %273 ], [ 2, %276 ], [ %96, %503 ]
  %646 = phi i64 [ %146, %148 ], [ %156, %161 ], [ %156, %211 ], [ %156, %225 ], [ %156, %253 ], [ %156, %255 ], [ %156, %273 ], [ %156, %276 ], [ %507, %503 ]
  %647 = phi i64 [ %131, %148 ], [ %131, %161 ], [ %131, %211 ], [ %131, %225 ], [ %131, %253 ], [ %131, %255 ], [ %131, %273 ], [ %131, %276 ], [ %512, %503 ]
  br label %649, !dbg !1261

; <label>:648:                                    ; preds = %597
  br label %649, !dbg !1261

; <label>:649:                                    ; preds = %648, %644, %643, %367
  %650 = phi i32 [ 2, %367 ], [ %96, %643 ], [ %645, %644 ], [ %96, %648 ]
  %651 = phi i64 [ %313, %367 ], [ %369, %643 ], [ %646, %644 ], [ %598, %648 ]
  %652 = phi i64 [ %131, %367 ], [ %131, %643 ], [ %647, %644 ], [ %131, %648 ]
  call void @llvm.dbg.value(metadata i64 %652, i64 0, metadata !1198, metadata !632), !dbg !1261
  call void @llvm.dbg.value(metadata i64 %651, i64 0, metadata !1200, metadata !632), !dbg !1263
  %653 = icmp ne i32 %650, 2, !dbg !1975
  %654 = icmp eq i8 %104, 0, !dbg !1977
  %655 = or i1 %653, %654, !dbg !1979
  call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !1201, metadata !632), !dbg !1264
  %656 = select i1 %655, i32 %650, i32 4, !dbg !1979
  call void @llvm.dbg.value(metadata i32 %656, i64 0, metadata !1201, metadata !632), !dbg !1264
  %657 = and i32 %5, -3, !dbg !1980
  %658 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %652, i8* %2, i64 %651, i32 %656, i32 %657, i32* null, i8* %97, i8* %98), !dbg !1981
  br label %659, !dbg !1982

; <label>:659:                                    ; preds = %638, %641, %649, %612
  %660 = phi i64 [ %658, %649 ], [ %613, %612 ], [ %639, %641 ], [ %639, %638 ]
  ret i64 %660, !dbg !1983
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8*, i32) unnamed_addr #6 !dbg !1984 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1988, metadata !632), !dbg !1992
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1989, metadata !632), !dbg !1993
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #10, !dbg !1994
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !1990, metadata !632), !dbg !1995
  %4 = icmp eq i8* %3, %0, !dbg !1996
  br i1 %4, label %5, label %75, !dbg !1998

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @locale_charset() #10, !dbg !1999
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !1991, metadata !632), !dbg !2000
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2001, metadata !632), !dbg !2017
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2015, metadata !632), !dbg !2020
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2016, metadata !632), !dbg !2021
  %7 = load i8, i8* %6, align 1, !tbaa !832
  %8 = sext i8 %7 to i32
  %9 = and i32 %8, -33, !dbg !2022
  switch i32 %9, label %72 [
    i32 85, label %10
    i32 71, label %38
  ], !dbg !2022

; <label>:10:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2025, metadata !632), !dbg !2039
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2037, metadata !632), !dbg !2043
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2038, metadata !632), !dbg !2044
  %11 = getelementptr inbounds i8, i8* %6, i64 1
  %12 = load i8, i8* %11, align 1, !tbaa !832
  %13 = sext i8 %12 to i32
  %14 = and i32 %13, -33, !dbg !2045
  %15 = icmp eq i32 %14, 84, !dbg !2045
  br i1 %15, label %16, label %72, !dbg !2045

; <label>:16:                                     ; preds = %10
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2048, metadata !632), !dbg !2061
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2059, metadata !632), !dbg !2065
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2060, metadata !632), !dbg !2066
  %17 = getelementptr inbounds i8, i8* %6, i64 2
  %18 = load i8, i8* %17, align 1, !tbaa !832
  %19 = sext i8 %18 to i32
  %20 = and i32 %19, -33, !dbg !2067
  %21 = icmp eq i32 %20, 70, !dbg !2067
  br i1 %21, label %22, label %72, !dbg !2067

; <label>:22:                                     ; preds = %16
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2070, metadata !632), !dbg !2082
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2080, metadata !632), !dbg !2086
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2081, metadata !632), !dbg !2087
  %23 = getelementptr inbounds i8, i8* %6, i64 3
  %24 = load i8, i8* %23, align 1, !tbaa !832
  %25 = icmp eq i8 %24, 45, !dbg !2088
  br i1 %25, label %26, label %72, !dbg !2091

; <label>:26:                                     ; preds = %22
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2093, metadata !632), !dbg !2104
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2102, metadata !632), !dbg !2108
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2103, metadata !632), !dbg !2109
  %27 = getelementptr inbounds i8, i8* %6, i64 4
  %28 = load i8, i8* %27, align 1, !tbaa !832
  %29 = icmp eq i8 %28, 56, !dbg !2110
  br i1 %29, label %30, label %72, !dbg !2113

; <label>:30:                                     ; preds = %26
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2115, metadata !632), !dbg !2125
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2123, metadata !632), !dbg !2129
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2124, metadata !632), !dbg !2130
  %31 = getelementptr inbounds i8, i8* %6, i64 5
  %32 = load i8, i8* %31, align 1, !tbaa !832
  %33 = icmp eq i8 %32, 0, !dbg !2131
  br i1 %33, label %34, label %72, !dbg !2134

; <label>:34:                                     ; preds = %30
  %35 = load i8, i8* %0, align 1, !dbg !2136, !tbaa !832
  %36 = icmp eq i8 %35, 96, !dbg !2137
  %37 = select i1 %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.75, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.76, i64 0, i64 0), !dbg !2136
  br label %75, !dbg !2138

; <label>:38:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2025, metadata !632), !dbg !2139
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2037, metadata !632), !dbg !2143
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2038, metadata !632), !dbg !2144
  %39 = getelementptr inbounds i8, i8* %6, i64 1
  %40 = load i8, i8* %39, align 1, !tbaa !832
  %41 = sext i8 %40 to i32
  %42 = and i32 %41, -33, !dbg !2145
  %43 = icmp eq i32 %42, 66, !dbg !2145
  br i1 %43, label %44, label %72, !dbg !2145

; <label>:44:                                     ; preds = %38
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2048, metadata !632), !dbg !2146
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2059, metadata !632), !dbg !2148
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2060, metadata !632), !dbg !2149
  %45 = getelementptr inbounds i8, i8* %6, i64 2
  %46 = load i8, i8* %45, align 1, !tbaa !832
  %47 = icmp eq i8 %46, 49, !dbg !2150
  br i1 %47, label %48, label %72, !dbg !2152

; <label>:48:                                     ; preds = %44
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2070, metadata !632), !dbg !2154
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2080, metadata !632), !dbg !2156
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2081, metadata !632), !dbg !2157
  %49 = getelementptr inbounds i8, i8* %6, i64 3
  %50 = load i8, i8* %49, align 1, !tbaa !832
  %51 = icmp eq i8 %50, 56, !dbg !2158
  br i1 %51, label %52, label %72, !dbg !2159

; <label>:52:                                     ; preds = %48
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2093, metadata !632), !dbg !2160
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2102, metadata !632), !dbg !2162
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2103, metadata !632), !dbg !2163
  %53 = getelementptr inbounds i8, i8* %6, i64 4
  %54 = load i8, i8* %53, align 1, !tbaa !832
  %55 = icmp eq i8 %54, 48, !dbg !2164
  br i1 %55, label %56, label %72, !dbg !2165

; <label>:56:                                     ; preds = %52
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2115, metadata !632), !dbg !2166
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2123, metadata !632), !dbg !2168
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2124, metadata !632), !dbg !2169
  %57 = getelementptr inbounds i8, i8* %6, i64 5
  %58 = load i8, i8* %57, align 1, !tbaa !832
  %59 = icmp eq i8 %58, 51, !dbg !2170
  br i1 %59, label %60, label %72, !dbg !2171

; <label>:60:                                     ; preds = %56
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2172, metadata !632), !dbg !2181
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2179, metadata !632), !dbg !2185
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2180, metadata !632), !dbg !2186
  %61 = getelementptr inbounds i8, i8* %6, i64 6
  %62 = load i8, i8* %61, align 1, !tbaa !832
  %63 = icmp eq i8 %62, 48, !dbg !2187
  br i1 %63, label %64, label %72, !dbg !2190

; <label>:64:                                     ; preds = %60
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2192, metadata !632), !dbg !2200
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2198, metadata !632), !dbg !2204
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2199, metadata !632), !dbg !2205
  %65 = getelementptr inbounds i8, i8* %6, i64 7
  %66 = load i8, i8* %65, align 1, !tbaa !832
  %67 = icmp eq i8 %66, 0, !dbg !2206
  br i1 %67, label %68, label %72, !dbg !2209

; <label>:68:                                     ; preds = %64
  %69 = load i8, i8* %0, align 1, !dbg !2210, !tbaa !832
  %70 = icmp eq i8 %69, 96, !dbg !2211
  %71 = select i1 %70, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.77, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.78, i64 0, i64 0), !dbg !2210
  br label %75, !dbg !2212

; <label>:72:                                     ; preds = %5, %30, %26, %22, %16, %10, %64, %60, %56, %52, %48, %44, %38
  %73 = icmp eq i32 %1, 9, !dbg !2213
  %74 = select i1 %73, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.74, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.73, i64 0, i64 0), !dbg !2214
  br label %75, !dbg !2215

; <label>:75:                                     ; preds = %2, %72, %68, %34
  %76 = phi i8* [ %37, %34 ], [ %71, %68 ], [ %74, %72 ], [ %3, %2 ]
  ret i8* %76, !dbg !2216
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
define i8* @quotearg_alloc(i8*, i64, %struct.quoting_options*) local_unnamed_addr #6 !dbg !2217 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2221, metadata !632), !dbg !2224
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2222, metadata !632), !dbg !2225
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2223, metadata !632), !dbg !2226
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2227, metadata !632) #10, !dbg !2240
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2232, metadata !632) #10, !dbg !2242
  tail call void @llvm.dbg.value(metadata i64* null, i64 0, metadata !2233, metadata !632) #10, !dbg !2243
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2234, metadata !632) #10, !dbg !2244
  %4 = icmp ne %struct.quoting_options* %2, null, !dbg !2245
  %5 = select i1 %4, %struct.quoting_options* %2, %struct.quoting_options* @default_quoting_options, !dbg !2245
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2235, metadata !632) #10, !dbg !2246
  %6 = tail call i32* @__errno_location() #1, !dbg !2247
  %7 = load i32, i32* %6, align 4, !dbg !2247, !tbaa !654
  tail call void @llvm.dbg.value(metadata i32 %7, i64 0, metadata !2236, metadata !632) #10, !dbg !2248
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2249
  %9 = load i32, i32* %8, align 4, !dbg !2249, !tbaa !1129
  %10 = or i32 %9, 1, !dbg !2250
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !2237, metadata !632) #10, !dbg !2251
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2252
  %12 = load i32, i32* %11, align 8, !dbg !2252, !tbaa !1067
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !2253
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2254
  %15 = load i8*, i8** %14, align 8, !dbg !2254, !tbaa !1156
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2255
  %17 = load i8*, i8** %16, align 8, !dbg !2255, !tbaa !1159
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* %13, i8* %15, i8* %17) #10, !dbg !2256
  %19 = add i64 %18, 1, !dbg !2257
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !2238, metadata !632) #10, !dbg !2258
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !2259, metadata !632) #10, !dbg !2264
  %20 = tail call noalias i8* @xmalloc(i64 %19) #10, !dbg !2266
  tail call void @llvm.dbg.value(metadata i8* %20, i64 0, metadata !2239, metadata !632) #10, !dbg !2267
  %21 = load i32, i32* %11, align 8, !dbg !2268, !tbaa !1067
  %22 = load i8*, i8** %14, align 8, !dbg !2269, !tbaa !1156
  %23 = load i8*, i8** %16, align 8, !dbg !2270, !tbaa !1159
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* %13, i8* %22, i8* %23) #10, !dbg !2271
  store i32 %7, i32* %6, align 4, !dbg !2272, !tbaa !654
  ret i8* %20, !dbg !2273
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_alloc_mem(i8*, i64, i64*, %struct.quoting_options*) local_unnamed_addr #6 !dbg !2228 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2227, metadata !632), !dbg !2274
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2232, metadata !632), !dbg !2275
  tail call void @llvm.dbg.value(metadata i64* %2, i64 0, metadata !2233, metadata !632), !dbg !2276
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2234, metadata !632), !dbg !2277
  %5 = icmp ne %struct.quoting_options* %3, null, !dbg !2278
  %6 = select i1 %5, %struct.quoting_options* %3, %struct.quoting_options* @default_quoting_options, !dbg !2278
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2235, metadata !632), !dbg !2279
  %7 = tail call i32* @__errno_location() #1, !dbg !2280
  %8 = load i32, i32* %7, align 4, !dbg !2280, !tbaa !654
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !2236, metadata !632), !dbg !2281
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2282
  %10 = load i32, i32* %9, align 4, !dbg !2282, !tbaa !1129
  %11 = icmp ne i64* %2, null, !dbg !2283
  %12 = xor i1 %11, true, !dbg !2283
  %13 = zext i1 %12 to i32, !dbg !2283
  %14 = or i32 %10, %13, !dbg !2284
  tail call void @llvm.dbg.value(metadata i32 %14, i64 0, metadata !2237, metadata !632), !dbg !2285
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2286
  %16 = load i32, i32* %15, align 8, !dbg !2286, !tbaa !1067
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !2287
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2288
  %19 = load i8*, i8** %18, align 8, !dbg !2288, !tbaa !1156
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2289
  %21 = load i8*, i8** %20, align 8, !dbg !2289, !tbaa !1159
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* %17, i8* %19, i8* %21), !dbg !2290
  %23 = add i64 %22, 1, !dbg !2291
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !2238, metadata !632), !dbg !2292
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !2259, metadata !632) #10, !dbg !2293
  %24 = tail call noalias i8* @xmalloc(i64 %23) #10, !dbg !2295
  tail call void @llvm.dbg.value(metadata i8* %24, i64 0, metadata !2239, metadata !632), !dbg !2296
  %25 = load i32, i32* %15, align 8, !dbg !2297, !tbaa !1067
  %26 = load i8*, i8** %18, align 8, !dbg !2298, !tbaa !1156
  %27 = load i8*, i8** %20, align 8, !dbg !2299, !tbaa !1159
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* %17, i8* %26, i8* %27), !dbg !2300
  store i32 %8, i32* %7, align 4, !dbg !2301, !tbaa !654
  br i1 %11, label %29, label %30, !dbg !2302

; <label>:29:                                     ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !2303, !tbaa !2305
  br label %30, !dbg !2306

; <label>:30:                                     ; preds = %29, %4
  ret i8* %24, !dbg !2307
}

; Function Attrs: nounwind sspstrong uwtable
define void @quotearg_free() local_unnamed_addr #6 !dbg !2308 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2312, !tbaa !640
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %1, i64 0, metadata !2310, metadata !632), !dbg !2313
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2311, metadata !632), !dbg !2314
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2311, metadata !632), !dbg !2314
  %2 = load i32, i32* @nslots, align 4, !dbg !2315, !tbaa !654
  %3 = icmp sgt i32 %2, 1, !dbg !2319
  br i1 %3, label %4, label %14, !dbg !2320

; <label>:4:                                      ; preds = %0
  br label %5, !dbg !2322

; <label>:5:                                      ; preds = %4, %5
  %6 = phi i64 [ %9, %5 ], [ 1, %4 ]
  %7 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %6, i32 1, !dbg !2322
  %8 = load i8*, i8** %7, align 8, !dbg !2322, !tbaa !2323
  tail call void @free(i8* %8) #10, !dbg !2325
  %9 = add nuw i64 %6, 1, !dbg !2326
  %10 = load i32, i32* @nslots, align 4, !dbg !2315, !tbaa !654
  %11 = sext i32 %10 to i64, !dbg !2319
  %12 = icmp slt i64 %9, %11, !dbg !2319
  br i1 %12, label %5, label %13, !dbg !2320, !llvm.loop !2328

; <label>:13:                                     ; preds = %5
  br label %14, !dbg !2331

; <label>:14:                                     ; preds = %13, %0
  %15 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !2331
  %16 = load i8*, i8** %15, align 8, !dbg !2331, !tbaa !2323
  %17 = icmp eq i8* %16, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2333
  br i1 %17, label %19, label %18, !dbg !2334

; <label>:18:                                     ; preds = %14
  tail call void @free(i8* %16) #10, !dbg !2335
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !2337, !tbaa !2338
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !2339, !tbaa !2323
  br label %19, !dbg !2340

; <label>:19:                                     ; preds = %14, %18
  %20 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !2341
  br i1 %20, label %23, label %21, !dbg !2343

; <label>:21:                                     ; preds = %19
  %22 = bitcast %struct.slotvec* %1 to i8*, !dbg !2344
  tail call void @free(i8* %22) #10, !dbg !2346
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !2347, !tbaa !640
  br label %23, !dbg !2348

; <label>:23:                                     ; preds = %19, %21
  store i32 1, i32* @nslots, align 4, !dbg !2349, !tbaa !654
  ret void, !dbg !2350
}

; Function Attrs: nounwind
declare void @free(i8* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n(i32, i8*) local_unnamed_addr #6 !dbg !2351 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2355, metadata !632), !dbg !2357
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2356, metadata !632), !dbg !2358
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2359
  ret i8* %3, !dbg !2360
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32, i8*, i64, %struct.quoting_options*) unnamed_addr #6 !dbg !2361 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2365, metadata !632), !dbg !2379
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2366, metadata !632), !dbg !2380
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2367, metadata !632), !dbg !2381
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2368, metadata !632), !dbg !2382
  %5 = tail call i32* @__errno_location() #1, !dbg !2383
  %6 = load i32, i32* %5, align 4, !dbg !2383, !tbaa !654
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !2369, metadata !632), !dbg !2384
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2385, !tbaa !640
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %7, i64 0, metadata !2370, metadata !632), !dbg !2386
  %8 = icmp slt i32 %0, 0, !dbg !2387
  br i1 %8, label %9, label %10, !dbg !2389

; <label>:9:                                      ; preds = %4
  tail call void @abort() #14, !dbg !2390
  unreachable, !dbg !2390

; <label>:10:                                     ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !2391, !tbaa !654
  %12 = icmp sgt i32 %11, %0, !dbg !2392
  br i1 %12, label %34, label %13, !dbg !2393

; <label>:13:                                     ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !2394
  %15 = icmp ugt i32 %0, 2147483646, !dbg !2395
  br i1 %15, label %16, label %17, !dbg !2397

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #14, !dbg !2398
  unreachable, !dbg !2398

; <label>:17:                                     ; preds = %13
  %18 = bitcast %struct.slotvec* %7 to i8*, !dbg !2399
  %19 = select i1 %14, i8* null, i8* %18, !dbg !2399
  %20 = add nsw i32 %0, 1, !dbg !2401
  %21 = sext i32 %20 to i64, !dbg !2402
  %22 = shl nsw i64 %21, 4, !dbg !2403
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #10, !dbg !2404
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !2404
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %24, i64 0, metadata !2370, metadata !632), !dbg !2386
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !2405, !tbaa !640
  br i1 %14, label %25, label %26, !dbg !2406

; <label>:25:                                     ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i32 8, i1 false), !dbg !2407, !tbaa.struct !2409
  br label %26, !dbg !2410

; <label>:26:                                     ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !2411, !tbaa !654
  %28 = sext i32 %27 to i64, !dbg !2412
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !2412
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !2413
  %31 = sub nsw i32 %20, %27, !dbg !2414
  %32 = sext i32 %31 to i64, !dbg !2415
  %33 = shl nsw i64 %32, 4, !dbg !2416
  tail call void @llvm.memset.p0i8.i64(i8* %30, i8 0, i64 %33, i32 8, i1 false), !dbg !2413
  store i32 %20, i32* @nslots, align 4, !dbg !2417, !tbaa !654
  br label %34, !dbg !2418

; <label>:34:                                     ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ]
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %35, i64 0, metadata !2370, metadata !632), !dbg !2386
  %36 = sext i32 %0 to i64, !dbg !2419
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !2420
  %38 = load i64, i64* %37, align 8, !dbg !2420, !tbaa !2338
  tail call void @llvm.dbg.value(metadata i64 %38, i64 0, metadata !2374, metadata !632), !dbg !2421
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !2422
  %40 = load i8*, i8** %39, align 8, !dbg !2422, !tbaa !2323
  tail call void @llvm.dbg.value(metadata i8* %40, i64 0, metadata !2376, metadata !632), !dbg !2423
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !2424
  %42 = load i32, i32* %41, align 4, !dbg !2424, !tbaa !1129
  %43 = or i32 %42, 1, !dbg !2425
  tail call void @llvm.dbg.value(metadata i32 %43, i64 0, metadata !2377, metadata !632), !dbg !2426
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2427
  %45 = load i32, i32* %44, align 8, !dbg !2427, !tbaa !1067
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !2428
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !2429
  %48 = load i8*, i8** %47, align 8, !dbg !2429, !tbaa !1156
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !2430
  %50 = load i8*, i8** %49, align 8, !dbg !2430, !tbaa !1159
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* %46, i8* %48, i8* %50), !dbg !2431
  tail call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !2378, metadata !632), !dbg !2432
  %52 = icmp ugt i64 %38, %51, !dbg !2433
  br i1 %52, label %63, label %53, !dbg !2435

; <label>:53:                                     ; preds = %34
  %54 = add i64 %51, 1, !dbg !2436
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !2374, metadata !632), !dbg !2421
  store i64 %54, i64* %37, align 8, !dbg !2438, !tbaa !2338
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2439
  br i1 %55, label %57, label %56, !dbg !2441

; <label>:56:                                     ; preds = %53
  tail call void @free(i8* %40) #10, !dbg !2442
  br label %57, !dbg !2442

; <label>:57:                                     ; preds = %53, %56
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !2259, metadata !632) #10, !dbg !2443
  %58 = tail call noalias i8* @xmalloc(i64 %54) #10, !dbg !2445
  tail call void @llvm.dbg.value(metadata i8* %58, i64 0, metadata !2376, metadata !632), !dbg !2423
  store i8* %58, i8** %39, align 8, !dbg !2446, !tbaa !2323
  %59 = load i32, i32* %44, align 8, !dbg !2447, !tbaa !1067
  %60 = load i8*, i8** %47, align 8, !dbg !2448, !tbaa !1156
  %61 = load i8*, i8** %49, align 8, !dbg !2449, !tbaa !1159
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* %46, i8* %60, i8* %61), !dbg !2450
  br label %63, !dbg !2451

; <label>:63:                                     ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ]
  tail call void @llvm.dbg.value(metadata i8* %64, i64 0, metadata !2376, metadata !632), !dbg !2423
  store i32 %6, i32* %5, align 4, !dbg !2452, !tbaa !654
  ret i8* %64, !dbg !2453
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #7

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #7

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !2454 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2458, metadata !632), !dbg !2461
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2459, metadata !632), !dbg !2462
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2460, metadata !632), !dbg !2463
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2464
  ret i8* %4, !dbg !2465
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg(i8*) local_unnamed_addr #6 !dbg !2466 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2470, metadata !632), !dbg !2471
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2355, metadata !632) #10, !dbg !2472
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2356, metadata !632) #10, !dbg !2474
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #10, !dbg !2475
  ret i8* %2, !dbg !2476
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_mem(i8*, i64) local_unnamed_addr #6 !dbg !2477 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2481, metadata !632), !dbg !2483
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2482, metadata !632), !dbg !2484
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2458, metadata !632) #10, !dbg !2485
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2459, metadata !632) #10, !dbg !2487
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2460, metadata !632) #10, !dbg !2488
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #10, !dbg !2489
  ret i8* %3, !dbg !2490
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style(i32, i32, i8*) local_unnamed_addr #6 !dbg !2491 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !2499, metadata !2505), !dbg !2506
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2495, metadata !632), !dbg !2508
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2496, metadata !632), !dbg !2509
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2497, metadata !632), !dbg !2510
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2511
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #10, !dbg !2511
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2498, metadata !795), !dbg !2512
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2504, metadata !632) #10, !dbg !2513
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !2514
  call void @llvm.lifetime.start(i64 52, i8* nonnull %7), !dbg !2514
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2499, metadata !632) #10, !dbg !2506
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2499, metadata !2515) #10, !dbg !2506
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !2506
  %8 = icmp eq i32 %1, 10, !dbg !2516
  br i1 %8, label %9, label %10, !dbg !2518

; <label>:9:                                      ; preds = %3
  tail call void @abort() #14, !dbg !2519, !noalias !2520
  unreachable, !dbg !2519

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2499, metadata !2515) #10, !dbg !2506
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2523
  store i32 %1, i32* %11, align 8, !dbg !2523, !alias.scope !2520
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2523
  %13 = bitcast i32* %12 to i8*, !dbg !2523
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #10, !dbg !2523
  call void @llvm.lifetime.end(i64 52, i8* nonnull %7), !dbg !2524
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2498, metadata !795), !dbg !2512
  %14 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !2525
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #10, !dbg !2526
  ret i8* %14, !dbg !2527
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_mem(i32, i32, i8*, i64) local_unnamed_addr #6 !dbg !2528 {
  %5 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !2499, metadata !2505), !dbg !2537
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2532, metadata !632), !dbg !2539
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2533, metadata !632), !dbg !2540
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2534, metadata !632), !dbg !2541
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2535, metadata !632), !dbg !2542
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2543
  call void @llvm.lifetime.start(i64 56, i8* nonnull %7) #10, !dbg !2543
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2536, metadata !795), !dbg !2544
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2504, metadata !632) #10, !dbg !2545
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !2546
  call void @llvm.lifetime.start(i64 52, i8* nonnull %8), !dbg !2546
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2499, metadata !632) #10, !dbg !2537
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2499, metadata !2515) #10, !dbg !2537
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !2537
  %9 = icmp eq i32 %1, 10, !dbg !2547
  br i1 %9, label %10, label %11, !dbg !2548

; <label>:10:                                     ; preds = %4
  tail call void @abort() #14, !dbg !2549, !noalias !2550
  unreachable, !dbg !2549

; <label>:11:                                     ; preds = %4
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2499, metadata !2515) #10, !dbg !2537
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2553
  store i32 %1, i32* %12, align 8, !dbg !2553, !alias.scope !2550
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2553
  %14 = bitcast i32* %13 to i8*, !dbg !2553
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* nonnull %8, i64 52, i32 4, i1 false) #10, !dbg !2553
  call void @llvm.lifetime.end(i64 52, i8* nonnull %8), !dbg !2554
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2536, metadata !795), !dbg !2544
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %6), !dbg !2555
  call void @llvm.lifetime.end(i64 56, i8* nonnull %7) #10, !dbg !2556
  ret i8* %15, !dbg !2557
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style(i32, i8*) local_unnamed_addr #6 !dbg !2558 {
  %3 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %3, metadata !2499, metadata !2505), !dbg !2564
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2562, metadata !632), !dbg !2567
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2563, metadata !632), !dbg !2568
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2495, metadata !632) #10, !dbg !2569
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2496, metadata !632) #10, !dbg !2570
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2497, metadata !632) #10, !dbg !2571
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2572
  call void @llvm.lifetime.start(i64 56, i8* nonnull %5) #10, !dbg !2572
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2498, metadata !795) #10, !dbg !2573
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2504, metadata !632) #10, !dbg !2574
  %6 = getelementptr inbounds [52 x i8], [52 x i8]* %3, i64 0, i64 0, !dbg !2575
  call void @llvm.lifetime.start(i64 52, i8* nonnull %6), !dbg !2575
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2499, metadata !632) #10, !dbg !2564
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2499, metadata !2515) #10, !dbg !2564
  call void @llvm.memset.p0i8.i64(i8* nonnull %6, i8 0, i64 52, i32 4, i1 false), !dbg !2564
  %7 = icmp eq i32 %0, 10, !dbg !2576
  br i1 %7, label %8, label %9, !dbg !2577

; <label>:8:                                      ; preds = %2
  tail call void @abort() #14, !dbg !2578, !noalias !2579
  unreachable, !dbg !2578

; <label>:9:                                      ; preds = %2
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2499, metadata !2515) #10, !dbg !2564
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2582
  store i32 %0, i32* %10, align 8, !dbg !2582, !alias.scope !2579
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2582
  %12 = bitcast i32* %11 to i8*, !dbg !2582
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* nonnull %6, i64 52, i32 4, i1 false) #10, !dbg !2582
  call void @llvm.lifetime.end(i64 52, i8* nonnull %6), !dbg !2583
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2498, metadata !795) #10, !dbg !2573
  %13 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %4) #10, !dbg !2584
  call void @llvm.lifetime.end(i64 56, i8* nonnull %5) #10, !dbg !2585
  ret i8* %13, !dbg !2586
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !2587 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !2499, metadata !2505), !dbg !2594
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2591, metadata !632), !dbg !2597
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2592, metadata !632), !dbg !2598
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2593, metadata !632), !dbg !2599
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2532, metadata !632) #10, !dbg !2600
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2533, metadata !632) #10, !dbg !2601
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2534, metadata !632) #10, !dbg !2602
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2535, metadata !632) #10, !dbg !2603
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2604
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #10, !dbg !2604
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2536, metadata !795) #10, !dbg !2605
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2504, metadata !632) #10, !dbg !2606
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !2607
  call void @llvm.lifetime.start(i64 52, i8* nonnull %7), !dbg !2607
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2499, metadata !632) #10, !dbg !2594
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2499, metadata !2515) #10, !dbg !2594
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !2594
  %8 = icmp eq i32 %0, 10, !dbg !2608
  br i1 %8, label %9, label %10, !dbg !2609

; <label>:9:                                      ; preds = %3
  tail call void @abort() #14, !dbg !2610, !noalias !2611
  unreachable, !dbg !2610

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2499, metadata !2515) #10, !dbg !2594
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2614
  store i32 %0, i32* %11, align 8, !dbg !2614, !alias.scope !2611
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2614
  %13 = bitcast i32* %12 to i8*, !dbg !2614
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #10, !dbg !2614
  call void @llvm.lifetime.end(i64 52, i8* nonnull %7), !dbg !2615
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2536, metadata !795) #10, !dbg !2605
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %5) #10, !dbg !2616
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #10, !dbg !2617
  ret i8* %14, !dbg !2618
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char_mem(i8*, i64, i8 signext) local_unnamed_addr #6 !dbg !2619 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2623, metadata !632), !dbg !2627
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2624, metadata !632), !dbg !2628
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !2625, metadata !632), !dbg !2629
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2630
  call void @llvm.lifetime.start(i64 56, i8* nonnull %5) #10, !dbg !2630
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !2631, !tbaa.struct !2632
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2626, metadata !795), !dbg !2633
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1087, metadata !632), !dbg !2634
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !1088, metadata !632), !dbg !2636
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1089, metadata !632), !dbg !2637
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !1090, metadata !632), !dbg !2638
  %6 = lshr i8 %2, 5, !dbg !2639
  %7 = zext i8 %6 to i64, !dbg !2639
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !2640
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !1091, metadata !632), !dbg !2641
  %9 = and i8 %2, 31, !dbg !2642
  %10 = zext i8 %9 to i32, !dbg !2643
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !1093, metadata !632), !dbg !2644
  %11 = load i32, i32* %8, align 4, !dbg !2645, !tbaa !654
  %12 = lshr i32 %11, %10, !dbg !2646
  %13 = and i32 %12, 1, !dbg !2647
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !1094, metadata !632), !dbg !2648
  %14 = xor i32 %13, 1, !dbg !2649
  %15 = shl i32 %14, %10, !dbg !2650
  %16 = xor i32 %15, %11, !dbg !2651
  store i32 %16, i32* %8, align 4, !dbg !2651, !tbaa !654
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2626, metadata !795), !dbg !2633
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !2652
  call void @llvm.lifetime.end(i64 56, i8* nonnull %5) #10, !dbg !2653
  ret i8* %17, !dbg !2654
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char(i8*, i8 signext) local_unnamed_addr #6 !dbg !2655 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2659, metadata !632), !dbg !2661
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !2660, metadata !632), !dbg !2662
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2623, metadata !632) #10, !dbg !2663
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2624, metadata !632) #10, !dbg !2665
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !2625, metadata !632) #10, !dbg !2666
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2667
  call void @llvm.lifetime.start(i64 56, i8* nonnull %4) #10, !dbg !2667
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !2668, !tbaa.struct !2632
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2626, metadata !795) #10, !dbg !2669
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !1087, metadata !632) #10, !dbg !2670
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1088, metadata !632) #10, !dbg !2672
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1089, metadata !632) #10, !dbg !2673
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1090, metadata !632) #10, !dbg !2674
  %5 = lshr i8 %1, 5, !dbg !2675
  %6 = zext i8 %5 to i64, !dbg !2675
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !2676
  tail call void @llvm.dbg.value(metadata i32* %7, i64 0, metadata !1091, metadata !632) #10, !dbg !2677
  %8 = and i8 %1, 31, !dbg !2678
  %9 = zext i8 %8 to i32, !dbg !2679
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !1093, metadata !632) #10, !dbg !2680
  %10 = load i32, i32* %7, align 4, !dbg !2681, !tbaa !654
  %11 = lshr i32 %10, %9, !dbg !2682
  %12 = and i32 %11, 1, !dbg !2683
  tail call void @llvm.dbg.value(metadata i32 %12, i64 0, metadata !1094, metadata !632) #10, !dbg !2684
  %13 = xor i32 %12, 1, !dbg !2685
  %14 = shl i32 %13, %9, !dbg !2686
  %15 = xor i32 %14, %10, !dbg !2687
  store i32 %15, i32* %7, align 4, !dbg !2687, !tbaa !654
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2626, metadata !795) #10, !dbg !2669
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #10, !dbg !2688
  call void @llvm.lifetime.end(i64 56, i8* nonnull %4) #10, !dbg !2689
  ret i8* %16, !dbg !2690
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon(i8*) local_unnamed_addr #6 !dbg !2691 {
  %2 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2693, metadata !632), !dbg !2694
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2659, metadata !632) #10, !dbg !2695
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2660, metadata !632) #10, !dbg !2697
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2623, metadata !632) #10, !dbg !2698
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2624, metadata !632) #10, !dbg !2700
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2625, metadata !632) #10, !dbg !2701
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !2702
  call void @llvm.lifetime.start(i64 56, i8* nonnull %3) #10, !dbg !2702
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %3, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !2703, !tbaa.struct !2632
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2626, metadata !795) #10, !dbg !2704
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !1087, metadata !632) #10, !dbg !2705
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1088, metadata !632) #10, !dbg !2707
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1089, metadata !632) #10, !dbg !2708
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1090, metadata !632) #10, !dbg !2709
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !2710
  tail call void @llvm.dbg.value(metadata i32* %4, i64 0, metadata !1091, metadata !632) #10, !dbg !2711
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !1093, metadata !632) #10, !dbg !2712
  %5 = load i32, i32* %4, align 4, !dbg !2713, !tbaa !654
  %6 = or i32 %5, 67108864, !dbg !2714
  store i32 %6, i32* %4, align 4, !dbg !2714, !tbaa !654
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2626, metadata !795) #10, !dbg !2704
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #10, !dbg !2715
  call void @llvm.lifetime.end(i64 56, i8* nonnull %3) #10, !dbg !2716
  ret i8* %7, !dbg !2717
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon_mem(i8*, i64) local_unnamed_addr #6 !dbg !2718 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2720, metadata !632), !dbg !2722
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2721, metadata !632), !dbg !2723
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2623, metadata !632) #10, !dbg !2724
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2624, metadata !632) #10, !dbg !2726
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2625, metadata !632) #10, !dbg !2727
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2728
  call void @llvm.lifetime.start(i64 56, i8* nonnull %4) #10, !dbg !2728
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !2729, !tbaa.struct !2632
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2626, metadata !795) #10, !dbg !2730
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !1087, metadata !632) #10, !dbg !2731
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1088, metadata !632) #10, !dbg !2733
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1089, metadata !632) #10, !dbg !2734
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1090, metadata !632) #10, !dbg !2735
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !2736
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !1091, metadata !632) #10, !dbg !2737
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !1093, metadata !632) #10, !dbg !2738
  %6 = load i32, i32* %5, align 4, !dbg !2739, !tbaa !654
  %7 = or i32 %6, 67108864, !dbg !2740
  store i32 %7, i32* %5, align 4, !dbg !2740, !tbaa !654
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2626, metadata !795) #10, !dbg !2730
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #10, !dbg !2741
  call void @llvm.lifetime.end(i64 56, i8* nonnull %4) #10, !dbg !2742
  ret i8* %8, !dbg !2743
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_colon(i32, i32, i8*) local_unnamed_addr #6 !dbg !2744 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !2499, metadata !2505), !dbg !2750
  %5 = alloca %struct.quoting_options, align 8
  %6 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2746, metadata !632), !dbg !2752
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2747, metadata !632), !dbg !2753
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2748, metadata !632), !dbg !2754
  %7 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2755
  call void @llvm.lifetime.start(i64 56, i8* nonnull %7) #10, !dbg !2755
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2504, metadata !632) #10, !dbg !2756
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !2757
  call void @llvm.lifetime.start(i64 52, i8* nonnull %8), !dbg !2757
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2499, metadata !632) #10, !dbg !2750
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2499, metadata !2515) #10, !dbg !2750
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !2750
  %9 = icmp eq i32 %1, 10, !dbg !2758
  br i1 %9, label %10, label %11, !dbg !2759

; <label>:10:                                     ; preds = %3
  tail call void @abort() #14, !dbg !2760, !noalias !2761
  unreachable, !dbg !2760

; <label>:11:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2499, metadata !2515) #10, !dbg !2750
  %12 = getelementptr inbounds [52 x i8], [52 x i8]* %6, i64 0, i64 0, !dbg !2764
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %12, i8* nonnull %8, i64 52, i32 4, i1 false), !dbg !2764
  call void @llvm.lifetime.end(i64 52, i8* nonnull %8), !dbg !2765
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2766
  store i32 %1, i32* %13, align 8, !dbg !2766
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2766
  %15 = bitcast i32* %14 to i8*, !dbg !2766
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* nonnull %12, i64 52, i32 4, i1 false), !dbg !2766
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2749, metadata !795), !dbg !2767
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1087, metadata !632), !dbg !2768
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1088, metadata !632), !dbg !2770
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1089, metadata !632), !dbg !2771
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1090, metadata !632), !dbg !2772
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 1, !dbg !2773
  tail call void @llvm.dbg.value(metadata i32* %16, i64 0, metadata !1091, metadata !632), !dbg !2774
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !1093, metadata !632), !dbg !2775
  %17 = load i32, i32* %16, align 4, !dbg !2776, !tbaa !654
  %18 = or i32 %17, 67108864, !dbg !2777
  store i32 %18, i32* %16, align 4, !dbg !2777, !tbaa !654
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2749, metadata !795), !dbg !2767
  %19 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !2778
  call void @llvm.lifetime.end(i64 56, i8* nonnull %7) #10, !dbg !2779
  ret i8* %19, !dbg !2780
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom(i32, i8*, i8*, i8*) local_unnamed_addr #6 !dbg !2781 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2785, metadata !632), !dbg !2789
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2786, metadata !632), !dbg !2790
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2787, metadata !632), !dbg !2791
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2788, metadata !632), !dbg !2792
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2793, metadata !632) #10, !dbg !2803
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2798, metadata !632) #10, !dbg !2805
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2799, metadata !632) #10, !dbg !2806
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2800, metadata !632) #10, !dbg !2807
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2801, metadata !632) #10, !dbg !2808
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2809
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #10, !dbg !2809
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !2810, !tbaa.struct !2632
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2802, metadata !795) #10, !dbg !2811
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1137, metadata !632) #10, !dbg !2812
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1138, metadata !632) #10, !dbg !2814
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1139, metadata !632) #10, !dbg !2815
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1137, metadata !632) #10, !dbg !2812
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1137, metadata !632) #10, !dbg !2812
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2816
  store i32 10, i32* %7, align 8, !dbg !2817, !tbaa !1067
  %8 = icmp ne i8* %1, null, !dbg !2818
  %9 = icmp ne i8* %2, null, !dbg !2819
  %10 = and i1 %8, %9, !dbg !2820
  br i1 %10, label %12, label %11, !dbg !2820

; <label>:11:                                     ; preds = %4
  tail call void @abort() #14, !dbg !2821
  unreachable, !dbg !2821

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2822
  store i8* %1, i8** %13, align 8, !dbg !2823, !tbaa !1156
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2824
  store i8* %2, i8** %14, align 8, !dbg !2825, !tbaa !1159
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2802, metadata !795) #10, !dbg !2811
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #10, !dbg !2826
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #10, !dbg !2827
  ret i8* %15, !dbg !2828
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom_mem(i32, i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !2794 {
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2793, metadata !632), !dbg !2829
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2798, metadata !632), !dbg !2830
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2799, metadata !632), !dbg !2831
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2800, metadata !632), !dbg !2832
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !2801, metadata !632), !dbg !2833
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2834
  call void @llvm.lifetime.start(i64 56, i8* nonnull %7) #10, !dbg !2834
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %7, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !2835, !tbaa.struct !2632
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2802, metadata !795), !dbg !2836
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !1137, metadata !632) #10, !dbg !2837
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1138, metadata !632) #10, !dbg !2839
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1139, metadata !632) #10, !dbg !2840
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1137, metadata !632) #10, !dbg !2837
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !1137, metadata !632) #10, !dbg !2837
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2841
  store i32 10, i32* %8, align 8, !dbg !2842, !tbaa !1067
  %9 = icmp ne i8* %1, null, !dbg !2843
  %10 = icmp ne i8* %2, null, !dbg !2844
  %11 = and i1 %9, %10, !dbg !2845
  br i1 %11, label %13, label %12, !dbg !2845

; <label>:12:                                     ; preds = %5
  tail call void @abort() #14, !dbg !2846
  unreachable, !dbg !2846

; <label>:13:                                     ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2847
  store i8* %1, i8** %14, align 8, !dbg !2848, !tbaa !1156
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2849
  store i8* %2, i8** %15, align 8, !dbg !2850, !tbaa !1159
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2802, metadata !795), !dbg !2836
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !2851
  call void @llvm.lifetime.end(i64 56, i8* nonnull %7) #10, !dbg !2852
  ret i8* %16, !dbg !2853
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom(i8*, i8*, i8*) local_unnamed_addr #6 !dbg !2854 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2858, metadata !632), !dbg !2861
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2859, metadata !632), !dbg !2862
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2860, metadata !632), !dbg !2863
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2785, metadata !632) #10, !dbg !2864
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2786, metadata !632) #10, !dbg !2866
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2787, metadata !632) #10, !dbg !2867
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2788, metadata !632) #10, !dbg !2868
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2793, metadata !632) #10, !dbg !2869
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2798, metadata !632) #10, !dbg !2871
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2799, metadata !632) #10, !dbg !2872
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2800, metadata !632) #10, !dbg !2873
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2801, metadata !632) #10, !dbg !2874
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2875
  call void @llvm.lifetime.start(i64 56, i8* nonnull %5) #10, !dbg !2875
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !2876, !tbaa.struct !2632
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2802, metadata !795) #10, !dbg !2877
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1137, metadata !632) #10, !dbg !2878
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1138, metadata !632) #10, !dbg !2880
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1139, metadata !632) #10, !dbg !2881
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1137, metadata !632) #10, !dbg !2878
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1137, metadata !632) #10, !dbg !2878
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2882
  store i32 10, i32* %6, align 8, !dbg !2883, !tbaa !1067
  %7 = icmp ne i8* %0, null, !dbg !2884
  %8 = icmp ne i8* %1, null, !dbg !2885
  %9 = and i1 %7, %8, !dbg !2886
  br i1 %9, label %11, label %10, !dbg !2886

; <label>:10:                                     ; preds = %3
  tail call void @abort() #14, !dbg !2887
  unreachable, !dbg !2887

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !2888
  store i8* %0, i8** %12, align 8, !dbg !2889, !tbaa !1156
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !2890
  store i8* %1, i8** %13, align 8, !dbg !2891, !tbaa !1159
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2802, metadata !795) #10, !dbg !2877
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #10, !dbg !2892
  call void @llvm.lifetime.end(i64 56, i8* nonnull %5) #10, !dbg !2893
  ret i8* %14, !dbg !2894
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom_mem(i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !2895 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2899, metadata !632), !dbg !2903
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2900, metadata !632), !dbg !2904
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2901, metadata !632), !dbg !2905
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2902, metadata !632), !dbg !2906
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2793, metadata !632) #10, !dbg !2907
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2798, metadata !632) #10, !dbg !2909
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2799, metadata !632) #10, !dbg !2910
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2800, metadata !632) #10, !dbg !2911
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2801, metadata !632) #10, !dbg !2912
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2913
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #10, !dbg !2913
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !2914, !tbaa.struct !2632
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2802, metadata !795) #10, !dbg !2915
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1137, metadata !632) #10, !dbg !2916
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1138, metadata !632) #10, !dbg !2918
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1139, metadata !632) #10, !dbg !2919
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1137, metadata !632) #10, !dbg !2916
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1137, metadata !632) #10, !dbg !2916
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2920
  store i32 10, i32* %7, align 8, !dbg !2921, !tbaa !1067
  %8 = icmp ne i8* %0, null, !dbg !2922
  %9 = icmp ne i8* %1, null, !dbg !2923
  %10 = and i1 %8, %9, !dbg !2924
  br i1 %10, label %12, label %11, !dbg !2924

; <label>:11:                                     ; preds = %4
  tail call void @abort() #14, !dbg !2925
  unreachable, !dbg !2925

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2926
  store i8* %0, i8** %13, align 8, !dbg !2927, !tbaa !1156
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2928
  store i8* %1, i8** %14, align 8, !dbg !2929, !tbaa !1159
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2802, metadata !795) #10, !dbg !2915
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #10, !dbg !2930
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #10, !dbg !2931
  ret i8* %15, !dbg !2932
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !2933 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2937, metadata !632), !dbg !2940
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2938, metadata !632), !dbg !2941
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2939, metadata !632), !dbg !2942
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !2943
  ret i8* %4, !dbg !2944
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_mem(i8*, i64) local_unnamed_addr #6 !dbg !2945 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2949, metadata !632), !dbg !2951
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2950, metadata !632), !dbg !2952
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2937, metadata !632) #10, !dbg !2953
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2938, metadata !632) #10, !dbg !2955
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2939, metadata !632) #10, !dbg !2956
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !2957
  ret i8* %3, !dbg !2958
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n(i32, i8*) local_unnamed_addr #6 !dbg !2959 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2963, metadata !632), !dbg !2965
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2964, metadata !632), !dbg !2966
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2937, metadata !632) #10, !dbg !2967
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2938, metadata !632) #10, !dbg !2969
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2939, metadata !632) #10, !dbg !2970
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !2971
  ret i8* %3, !dbg !2972
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote(i8*) local_unnamed_addr #6 !dbg !2973 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2977, metadata !632), !dbg !2978
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2963, metadata !632) #10, !dbg !2979
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2964, metadata !632) #10, !dbg !2981
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2937, metadata !632) #10, !dbg !2982
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2938, metadata !632) #10, !dbg !2984
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2939, metadata !632) #10, !dbg !2985
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !2986
  ret i8* %2, !dbg !2987
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_arn(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly, i64) local_unnamed_addr #6 !dbg !2988 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3048, metadata !632), !dbg !3054
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3049, metadata !632), !dbg !3055
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3050, metadata !632), !dbg !3056
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3051, metadata !632), !dbg !3057
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !3052, metadata !632), !dbg !3058
  tail call void @llvm.dbg.value(metadata i64 %5, i64 0, metadata !3053, metadata !632), !dbg !3059
  %7 = icmp eq i8* %1, null, !dbg !3060
  br i1 %7, label %10, label %8, !dbg !3062

; <label>:8:                                      ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.83, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #10, !dbg !3063
  br label %12, !dbg !3063

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.84, i64 0, i64 0), i8* %2, i8* %3) #10, !dbg !3064
  br label %12

; <label>:12:                                     ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.85, i64 0, i64 0), i32 5) #10, !dbg !3065
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2017) #10, !dbg !3066
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([203 x i8], [203 x i8]* @.str.3.86, i64 0, i64 0), i32 5) #10, !dbg !3068
  %16 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %0) #10, !dbg !3069
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
  ], !dbg !3070

; <label>:17:                                     ; preds = %12
  tail call void @abort() #14, !dbg !3071
  unreachable, !dbg !3071

; <label>:18:                                     ; preds = %12
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4.87, i64 0, i64 0), i32 5) #10, !dbg !3073
  %20 = load i8*, i8** %4, align 8, !dbg !3073, !tbaa !640
  %21 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %19, i8* %20) #10, !dbg !3074
  br label %146, !dbg !3076

; <label>:22:                                     ; preds = %12
  %23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5.88, i64 0, i64 0), i32 5) #10, !dbg !3077
  %24 = load i8*, i8** %4, align 8, !dbg !3077, !tbaa !640
  %25 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3077
  %26 = load i8*, i8** %25, align 8, !dbg !3077, !tbaa !640
  %27 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %23, i8* %24, i8* %26) #10, !dbg !3078
  br label %146, !dbg !3079

; <label>:28:                                     ; preds = %12
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6.89, i64 0, i64 0), i32 5) #10, !dbg !3080
  %30 = load i8*, i8** %4, align 8, !dbg !3080, !tbaa !640
  %31 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3080
  %32 = load i8*, i8** %31, align 8, !dbg !3080, !tbaa !640
  %33 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3080
  %34 = load i8*, i8** %33, align 8, !dbg !3080, !tbaa !640
  %35 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %29, i8* %30, i8* %32, i8* %34) #10, !dbg !3081
  br label %146, !dbg !3082

; <label>:36:                                     ; preds = %12
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7.90, i64 0, i64 0), i32 5) #10, !dbg !3083
  %38 = load i8*, i8** %4, align 8, !dbg !3083, !tbaa !640
  %39 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3083
  %40 = load i8*, i8** %39, align 8, !dbg !3083, !tbaa !640
  %41 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3083
  %42 = load i8*, i8** %41, align 8, !dbg !3083, !tbaa !640
  %43 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3083
  %44 = load i8*, i8** %43, align 8, !dbg !3083, !tbaa !640
  %45 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %37, i8* %38, i8* %40, i8* %42, i8* %44) #10, !dbg !3084
  br label %146, !dbg !3085

; <label>:46:                                     ; preds = %12
  %47 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8.91, i64 0, i64 0), i32 5) #10, !dbg !3086
  %48 = load i8*, i8** %4, align 8, !dbg !3086, !tbaa !640
  %49 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3086
  %50 = load i8*, i8** %49, align 8, !dbg !3086, !tbaa !640
  %51 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3086
  %52 = load i8*, i8** %51, align 8, !dbg !3086, !tbaa !640
  %53 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3086
  %54 = load i8*, i8** %53, align 8, !dbg !3086, !tbaa !640
  %55 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3086
  %56 = load i8*, i8** %55, align 8, !dbg !3086, !tbaa !640
  %57 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %47, i8* %48, i8* %50, i8* %52, i8* %54, i8* %56) #10, !dbg !3087
  br label %146, !dbg !3088

; <label>:58:                                     ; preds = %12
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9.92, i64 0, i64 0), i32 5) #10, !dbg !3089
  %60 = load i8*, i8** %4, align 8, !dbg !3089, !tbaa !640
  %61 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3089
  %62 = load i8*, i8** %61, align 8, !dbg !3089, !tbaa !640
  %63 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3089
  %64 = load i8*, i8** %63, align 8, !dbg !3089, !tbaa !640
  %65 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3089
  %66 = load i8*, i8** %65, align 8, !dbg !3089, !tbaa !640
  %67 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3089
  %68 = load i8*, i8** %67, align 8, !dbg !3089, !tbaa !640
  %69 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3089
  %70 = load i8*, i8** %69, align 8, !dbg !3089, !tbaa !640
  %71 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %59, i8* %60, i8* %62, i8* %64, i8* %66, i8* %68, i8* %70) #10, !dbg !3090
  br label %146, !dbg !3091

; <label>:72:                                     ; preds = %12
  %73 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10.93, i64 0, i64 0), i32 5) #10, !dbg !3092
  %74 = load i8*, i8** %4, align 8, !dbg !3092, !tbaa !640
  %75 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3092
  %76 = load i8*, i8** %75, align 8, !dbg !3092, !tbaa !640
  %77 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3092
  %78 = load i8*, i8** %77, align 8, !dbg !3092, !tbaa !640
  %79 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3092
  %80 = load i8*, i8** %79, align 8, !dbg !3092, !tbaa !640
  %81 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3092
  %82 = load i8*, i8** %81, align 8, !dbg !3092, !tbaa !640
  %83 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3092
  %84 = load i8*, i8** %83, align 8, !dbg !3092, !tbaa !640
  %85 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3092
  %86 = load i8*, i8** %85, align 8, !dbg !3092, !tbaa !640
  %87 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %73, i8* %74, i8* %76, i8* %78, i8* %80, i8* %82, i8* %84, i8* %86) #10, !dbg !3093
  br label %146, !dbg !3094

; <label>:88:                                     ; preds = %12
  %89 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11.94, i64 0, i64 0), i32 5) #10, !dbg !3095
  %90 = load i8*, i8** %4, align 8, !dbg !3095, !tbaa !640
  %91 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3095
  %92 = load i8*, i8** %91, align 8, !dbg !3095, !tbaa !640
  %93 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3095
  %94 = load i8*, i8** %93, align 8, !dbg !3095, !tbaa !640
  %95 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3095
  %96 = load i8*, i8** %95, align 8, !dbg !3095, !tbaa !640
  %97 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3095
  %98 = load i8*, i8** %97, align 8, !dbg !3095, !tbaa !640
  %99 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3095
  %100 = load i8*, i8** %99, align 8, !dbg !3095, !tbaa !640
  %101 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3095
  %102 = load i8*, i8** %101, align 8, !dbg !3095, !tbaa !640
  %103 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3095
  %104 = load i8*, i8** %103, align 8, !dbg !3095, !tbaa !640
  %105 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %89, i8* %90, i8* %92, i8* %94, i8* %96, i8* %98, i8* %100, i8* %102, i8* %104) #10, !dbg !3096
  br label %146, !dbg !3097

; <label>:106:                                    ; preds = %12
  %107 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12.95, i64 0, i64 0), i32 5) #10, !dbg !3098
  %108 = load i8*, i8** %4, align 8, !dbg !3098, !tbaa !640
  %109 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3098
  %110 = load i8*, i8** %109, align 8, !dbg !3098, !tbaa !640
  %111 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3098
  %112 = load i8*, i8** %111, align 8, !dbg !3098, !tbaa !640
  %113 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3098
  %114 = load i8*, i8** %113, align 8, !dbg !3098, !tbaa !640
  %115 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3098
  %116 = load i8*, i8** %115, align 8, !dbg !3098, !tbaa !640
  %117 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3098
  %118 = load i8*, i8** %117, align 8, !dbg !3098, !tbaa !640
  %119 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3098
  %120 = load i8*, i8** %119, align 8, !dbg !3098, !tbaa !640
  %121 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3098
  %122 = load i8*, i8** %121, align 8, !dbg !3098, !tbaa !640
  %123 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3098
  %124 = load i8*, i8** %123, align 8, !dbg !3098, !tbaa !640
  %125 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %107, i8* %108, i8* %110, i8* %112, i8* %114, i8* %116, i8* %118, i8* %120, i8* %122, i8* %124) #10, !dbg !3099
  br label %146, !dbg !3100

; <label>:126:                                    ; preds = %12
  %127 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13.96, i64 0, i64 0), i32 5) #10, !dbg !3101
  %128 = load i8*, i8** %4, align 8, !dbg !3101, !tbaa !640
  %129 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3101
  %130 = load i8*, i8** %129, align 8, !dbg !3101, !tbaa !640
  %131 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3101
  %132 = load i8*, i8** %131, align 8, !dbg !3101, !tbaa !640
  %133 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3101
  %134 = load i8*, i8** %133, align 8, !dbg !3101, !tbaa !640
  %135 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3101
  %136 = load i8*, i8** %135, align 8, !dbg !3101, !tbaa !640
  %137 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3101
  %138 = load i8*, i8** %137, align 8, !dbg !3101, !tbaa !640
  %139 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3101
  %140 = load i8*, i8** %139, align 8, !dbg !3101, !tbaa !640
  %141 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3101
  %142 = load i8*, i8** %141, align 8, !dbg !3101, !tbaa !640
  %143 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3101
  %144 = load i8*, i8** %143, align 8, !dbg !3101, !tbaa !640
  %145 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %127, i8* %128, i8* %130, i8* %132, i8* %134, i8* %136, i8* %138, i8* %140, i8* %142, i8* %144) #10, !dbg !3102
  br label %146, !dbg !3103

; <label>:146:                                    ; preds = %126, %106, %88, %72, %58, %46, %36, %28, %22, %18
  ret void, !dbg !3104
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_ar(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly) local_unnamed_addr #6 !dbg !3105 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3109, metadata !632), !dbg !3115
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3110, metadata !632), !dbg !3116
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3111, metadata !632), !dbg !3117
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3112, metadata !632), !dbg !3118
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !3113, metadata !632), !dbg !3119
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3114, metadata !632), !dbg !3120
  br label %6, !dbg !3121

; <label>:6:                                      ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !3114, metadata !632), !dbg !3120
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !3123
  %9 = load i8*, i8** %8, align 8, !dbg !3123, !tbaa !640
  %10 = icmp eq i8* %9, null, !dbg !3126
  %11 = add i64 %7, 1, !dbg !3128
  tail call void @llvm.dbg.value(metadata i64 %11, i64 0, metadata !3114, metadata !632), !dbg !3120
  br i1 %10, label %12, label %6, !dbg !3126, !llvm.loop !3130

; <label>:12:                                     ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !3133
  ret void, !dbg !3134
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_va(%struct._IO_FILE*, i8*, i8*, i8*, %struct.__va_list_tag* nocapture) local_unnamed_addr #6 !dbg !3135 {
  %6 = alloca [10 x i8*], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3146, metadata !632), !dbg !3154
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3147, metadata !632), !dbg !3155
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3148, metadata !632), !dbg !3156
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3149, metadata !632), !dbg !3157
  tail call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, i64 0, metadata !3150, metadata !632), !dbg !3158
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !3159
  call void @llvm.lifetime.start(i64 80, i8* nonnull %7) #10, !dbg !3159
  tail call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !3152, metadata !632), !dbg !3160
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3151, metadata !632), !dbg !3161
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3151, metadata !632), !dbg !3161
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  %11 = load i32, i32* %8, align 8, !dbg !3162
  %12 = icmp ult i32 %11, 41, !dbg !3162
  br i1 %12, label %13, label %18, !dbg !3162

; <label>:13:                                     ; preds = %5
  %14 = load i8*, i8** %9, align 8, !dbg !3166
  %15 = sext i32 %11 to i64, !dbg !3166
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !3166
  %17 = add i32 %11, 8, !dbg !3166
  store i32 %17, i32* %8, align 8, !dbg !3166
  br label %21, !dbg !3166

; <label>:18:                                     ; preds = %5
  %19 = load i8*, i8** %10, align 8, !dbg !3168
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !3168
  store i8* %20, i8** %10, align 8, !dbg !3168
  br label %21, !dbg !3168

; <label>:21:                                     ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ], !dbg !3162
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !3170
  %25 = load i8*, i8** %24, align 8, !dbg !3170
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !3172
  store i8* %25, i8** %26, align 16, !dbg !3173, !tbaa !640
  %27 = icmp eq i8* %25, null, !dbg !3174
  br i1 %27, label %30, label %28, !dbg !3175

; <label>:28:                                     ; preds = %21
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3151, metadata !632), !dbg !3161
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3151, metadata !632), !dbg !3161
  %29 = icmp ult i32 %22, 41, !dbg !3162
  br i1 %29, label %35, label %32, !dbg !3162

; <label>:30:                                     ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ]
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !3177
  call void @llvm.lifetime.end(i64 80, i8* nonnull %7) #10, !dbg !3178
  ret void, !dbg !3178

; <label>:32:                                     ; preds = %28
  %33 = load i8*, i8** %10, align 8, !dbg !3168
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !3168
  store i8* %34, i8** %10, align 8, !dbg !3168
  br label %40, !dbg !3168

; <label>:35:                                     ; preds = %28
  %36 = load i8*, i8** %9, align 8, !dbg !3166
  %37 = sext i32 %22 to i64, !dbg !3166
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !3166
  %39 = add i32 %22, 8, !dbg !3166
  store i32 %39, i32* %8, align 8, !dbg !3166
  br label %40, !dbg !3166

; <label>:40:                                     ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ], !dbg !3162
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !3170
  %44 = load i8*, i8** %43, align 8, !dbg !3170
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !3172
  store i8* %44, i8** %45, align 8, !dbg !3173, !tbaa !640
  %46 = icmp eq i8* %44, null, !dbg !3174
  br i1 %46, label %30, label %47, !dbg !3175

; <label>:47:                                     ; preds = %40
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3151, metadata !632), !dbg !3161
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3151, metadata !632), !dbg !3161
  %48 = icmp ult i32 %41, 41, !dbg !3162
  br i1 %48, label %52, label %49, !dbg !3162

; <label>:49:                                     ; preds = %47
  %50 = load i8*, i8** %10, align 8, !dbg !3168
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !3168
  store i8* %51, i8** %10, align 8, !dbg !3168
  br label %57, !dbg !3168

; <label>:52:                                     ; preds = %47
  %53 = load i8*, i8** %9, align 8, !dbg !3166
  %54 = sext i32 %41 to i64, !dbg !3166
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !3166
  %56 = add i32 %41, 8, !dbg !3166
  store i32 %56, i32* %8, align 8, !dbg !3166
  br label %57, !dbg !3166

; <label>:57:                                     ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ], !dbg !3162
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !3170
  %61 = load i8*, i8** %60, align 8, !dbg !3170
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !3172
  store i8* %61, i8** %62, align 16, !dbg !3173, !tbaa !640
  %63 = icmp eq i8* %61, null, !dbg !3174
  br i1 %63, label %30, label %64, !dbg !3175

; <label>:64:                                     ; preds = %57
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3151, metadata !632), !dbg !3161
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3151, metadata !632), !dbg !3161
  %65 = icmp ult i32 %58, 41, !dbg !3162
  br i1 %65, label %69, label %66, !dbg !3162

; <label>:66:                                     ; preds = %64
  %67 = load i8*, i8** %10, align 8, !dbg !3168
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !3168
  store i8* %68, i8** %10, align 8, !dbg !3168
  br label %74, !dbg !3168

; <label>:69:                                     ; preds = %64
  %70 = load i8*, i8** %9, align 8, !dbg !3166
  %71 = sext i32 %58 to i64, !dbg !3166
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !3166
  %73 = add i32 %58, 8, !dbg !3166
  store i32 %73, i32* %8, align 8, !dbg !3166
  br label %74, !dbg !3166

; <label>:74:                                     ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ], !dbg !3162
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !3170
  %78 = load i8*, i8** %77, align 8, !dbg !3170
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !3172
  store i8* %78, i8** %79, align 8, !dbg !3173, !tbaa !640
  %80 = icmp eq i8* %78, null, !dbg !3174
  br i1 %80, label %30, label %81, !dbg !3175

; <label>:81:                                     ; preds = %74
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3151, metadata !632), !dbg !3161
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3151, metadata !632), !dbg !3161
  %82 = icmp ult i32 %75, 41, !dbg !3162
  br i1 %82, label %86, label %83, !dbg !3162

; <label>:83:                                     ; preds = %81
  %84 = load i8*, i8** %10, align 8, !dbg !3168
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !3168
  store i8* %85, i8** %10, align 8, !dbg !3168
  br label %91, !dbg !3168

; <label>:86:                                     ; preds = %81
  %87 = load i8*, i8** %9, align 8, !dbg !3166
  %88 = sext i32 %75 to i64, !dbg !3166
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !3166
  %90 = add i32 %75, 8, !dbg !3166
  store i32 %90, i32* %8, align 8, !dbg !3166
  br label %91, !dbg !3166

; <label>:91:                                     ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ], !dbg !3162
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !3170
  %95 = load i8*, i8** %94, align 8, !dbg !3170
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !3172
  store i8* %95, i8** %96, align 16, !dbg !3173, !tbaa !640
  %97 = icmp eq i8* %95, null, !dbg !3174
  br i1 %97, label %30, label %98, !dbg !3175

; <label>:98:                                     ; preds = %91
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3151, metadata !632), !dbg !3161
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3151, metadata !632), !dbg !3161
  %99 = icmp ult i32 %92, 41, !dbg !3162
  br i1 %99, label %103, label %100, !dbg !3162

; <label>:100:                                    ; preds = %98
  %101 = load i8*, i8** %10, align 8, !dbg !3168
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !3168
  store i8* %102, i8** %10, align 8, !dbg !3168
  br label %108, !dbg !3168

; <label>:103:                                    ; preds = %98
  %104 = load i8*, i8** %9, align 8, !dbg !3166
  %105 = sext i32 %92 to i64, !dbg !3166
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !3166
  %107 = add i32 %92, 8, !dbg !3166
  store i32 %107, i32* %8, align 8, !dbg !3166
  br label %108, !dbg !3166

; <label>:108:                                    ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !3170
  %111 = load i8*, i8** %110, align 8, !dbg !3170
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !3172
  store i8* %111, i8** %112, align 8, !dbg !3173, !tbaa !640
  %113 = icmp eq i8* %111, null, !dbg !3174
  br i1 %113, label %30, label %114, !dbg !3175

; <label>:114:                                    ; preds = %108
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3151, metadata !632), !dbg !3161
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3151, metadata !632), !dbg !3161
  %115 = load i8*, i8** %10, align 8, !dbg !3168
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !3168
  store i8* %116, i8** %10, align 8, !dbg !3168
  %117 = bitcast i8* %115 to i8**, !dbg !3170
  %118 = load i8*, i8** %117, align 8, !dbg !3170
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !3172
  store i8* %118, i8** %119, align 16, !dbg !3173, !tbaa !640
  %120 = icmp eq i8* %118, null, !dbg !3174
  br i1 %120, label %30, label %121, !dbg !3175

; <label>:121:                                    ; preds = %114
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3151, metadata !632), !dbg !3161
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3151, metadata !632), !dbg !3161
  %122 = load i8*, i8** %10, align 8, !dbg !3168
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !3168
  store i8* %123, i8** %10, align 8, !dbg !3168
  %124 = bitcast i8* %122 to i8**, !dbg !3170
  %125 = load i8*, i8** %124, align 8, !dbg !3170
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !3172
  store i8* %125, i8** %126, align 8, !dbg !3173, !tbaa !640
  %127 = icmp eq i8* %125, null, !dbg !3174
  br i1 %127, label %30, label %128, !dbg !3175

; <label>:128:                                    ; preds = %121
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3151, metadata !632), !dbg !3161
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3151, metadata !632), !dbg !3161
  %129 = load i8*, i8** %10, align 8, !dbg !3168
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !3168
  store i8* %130, i8** %10, align 8, !dbg !3168
  %131 = bitcast i8* %129 to i8**, !dbg !3170
  %132 = load i8*, i8** %131, align 8, !dbg !3170
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !3172
  store i8* %132, i8** %133, align 16, !dbg !3173, !tbaa !640
  %134 = icmp eq i8* %132, null, !dbg !3174
  br i1 %134, label %30, label %135, !dbg !3175

; <label>:135:                                    ; preds = %128
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3151, metadata !632), !dbg !3161
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3151, metadata !632), !dbg !3161
  %136 = load i8*, i8** %10, align 8, !dbg !3168
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !3168
  store i8* %137, i8** %10, align 8, !dbg !3168
  %138 = bitcast i8* %136 to i8**, !dbg !3170
  %139 = load i8*, i8** %138, align 8, !dbg !3170
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !3172
  store i8* %139, i8** %140, align 8, !dbg !3173, !tbaa !640
  %141 = icmp eq i8* %139, null, !dbg !3174
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3151, metadata !632), !dbg !3161
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3151, metadata !632), !dbg !3161
  %142 = select i1 %141, i64 9, i64 10, !dbg !3175
  br label %30, !dbg !3175
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc(%struct._IO_FILE*, i8*, i8*, i8*, ...) local_unnamed_addr #6 !dbg !3179 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3183, metadata !632), !dbg !3193
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3184, metadata !632), !dbg !3194
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3185, metadata !632), !dbg !3195
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3186, metadata !632), !dbg !3196
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !3197
  call void @llvm.lifetime.start(i64 24, i8* nonnull %6) #10, !dbg !3197
  tail call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !3187, metadata !632), !dbg !3198
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !3199
  call void @llvm.va_start(i8* nonnull %6), !dbg !3199
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !3200
  call void @llvm.va_end(i8* nonnull %6), !dbg !3201
  call void @llvm.lifetime.end(i64 24, i8* nonnull %6) #10, !dbg !3202
  ret void, !dbg !3202
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #10

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #10

; Function Attrs: nounwind sspstrong uwtable
define void @emit_bug_reporting_address() local_unnamed_addr #6 !dbg !3203 {
  %1 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14.99, i64 0, i64 0), i32 5) #10, !dbg !3204
  %2 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15.100, i64 0, i64 0)) #10, !dbg !3205
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.101, i64 0, i64 0), i32 5) #10, !dbg !3207
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17.102, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.18.103, i64 0, i64 0)) #10, !dbg !3208
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.19.104, i64 0, i64 0), i32 5) #10, !dbg !3209
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !3209, !tbaa !640
  %7 = tail call i32 @fputs_unlocked(i8* %5, %struct._IO_FILE* %6) #10, !dbg !3210
  ret void, !dbg !3211
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnmalloc(i64, i64) local_unnamed_addr #12 !dbg !3212 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3216, metadata !632), !dbg !3218
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3217, metadata !632), !dbg !3219
  %3 = udiv i64 9223372036854775807, %1, !dbg !3220
  %4 = icmp ult i64 %3, %0, !dbg !3220
  br i1 %4, label %5, label %6, !dbg !3222

; <label>:5:                                      ; preds = %2
  tail call void @xalloc_die() #14, !dbg !3223
  unreachable, !dbg !3223

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3224
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !3225, metadata !632) #10, !dbg !3232
  %8 = tail call noalias i8* @malloc(i64 %7) #10, !dbg !3234
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !3231, metadata !632) #10, !dbg !3235
  %9 = icmp eq i8* %8, null, !dbg !3236
  %10 = icmp ne i64 %7, 0, !dbg !3238
  %11 = and i1 %10, %9, !dbg !3240
  br i1 %11, label %12, label %13, !dbg !3240

; <label>:12:                                     ; preds = %6
  tail call void @xalloc_die() #14, !dbg !3241
  unreachable, !dbg !3241

; <label>:13:                                     ; preds = %6
  ret i8* %8, !dbg !3242
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmalloc(i64) local_unnamed_addr #6 !dbg !3226 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3225, metadata !632), !dbg !3243
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !3244
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3231, metadata !632), !dbg !3245
  %3 = icmp eq i8* %2, null, !dbg !3246
  %4 = icmp ne i64 %0, 0, !dbg !3247
  %5 = and i1 %4, %3, !dbg !3248
  br i1 %5, label %6, label %7, !dbg !3248

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #14, !dbg !3249
  unreachable, !dbg !3249

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !3250
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnrealloc(i8*, i64, i64) local_unnamed_addr #12 !dbg !3251 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3255, metadata !632), !dbg !3258
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3256, metadata !632), !dbg !3259
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3257, metadata !632), !dbg !3260
  %4 = udiv i64 9223372036854775807, %2, !dbg !3261
  %5 = icmp ult i64 %4, %1, !dbg !3261
  br i1 %5, label %6, label %7, !dbg !3263

; <label>:6:                                      ; preds = %3
  tail call void @xalloc_die() #14, !dbg !3264
  unreachable, !dbg !3264

; <label>:7:                                      ; preds = %3
  %8 = mul i64 %2, %1, !dbg !3265
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3266, metadata !632) #10, !dbg !3272
  tail call void @llvm.dbg.value(metadata i64 %8, i64 0, metadata !3271, metadata !632) #10, !dbg !3274
  %9 = icmp eq i64 %8, 0, !dbg !3275
  %10 = icmp ne i8* %0, null, !dbg !3277
  %11 = and i1 %10, %9, !dbg !3279
  br i1 %11, label %12, label %13, !dbg !3279

; <label>:12:                                     ; preds = %7
  tail call void @free(i8* nonnull %0) #10, !dbg !3280
  br label %19, !dbg !3282

; <label>:13:                                     ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #10, !dbg !3283
  tail call void @llvm.dbg.value(metadata i8* %14, i64 0, metadata !3266, metadata !632) #10, !dbg !3272
  %15 = icmp eq i8* %14, null, !dbg !3284
  %16 = icmp ne i64 %8, 0, !dbg !3286
  %17 = and i1 %16, %15, !dbg !3288
  br i1 %17, label %18, label %19, !dbg !3288

; <label>:18:                                     ; preds = %13
  tail call void @xalloc_die() #14, !dbg !3289
  unreachable, !dbg !3289

; <label>:19:                                     ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ]
  ret i8* %20, !dbg !3290
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xrealloc(i8*, i64) local_unnamed_addr #6 !dbg !3267 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3266, metadata !632), !dbg !3291
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3271, metadata !632), !dbg !3292
  %3 = icmp eq i64 %1, 0, !dbg !3293
  %4 = icmp ne i8* %0, null, !dbg !3294
  %5 = and i1 %4, %3, !dbg !3295
  br i1 %5, label %6, label %7, !dbg !3295

; <label>:6:                                      ; preds = %2
  tail call void @free(i8* nonnull %0) #10, !dbg !3296
  br label %13, !dbg !3297

; <label>:7:                                      ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #10, !dbg !3298
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !3266, metadata !632), !dbg !3291
  %9 = icmp eq i8* %8, null, !dbg !3299
  %10 = icmp ne i64 %1, 0, !dbg !3300
  %11 = and i1 %10, %9, !dbg !3301
  br i1 %11, label %12, label %13, !dbg !3301

; <label>:12:                                     ; preds = %7
  tail call void @xalloc_die() #14, !dbg !3302
  unreachable, !dbg !3302

; <label>:13:                                     ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ]
  ret i8* %14, !dbg !3303
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @x2nrealloc(i8*, i64* nocapture, i64) local_unnamed_addr #12 !dbg !592 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !597, metadata !632), !dbg !3304
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !598, metadata !632), !dbg !3305
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !599, metadata !632), !dbg !3306
  %4 = load i64, i64* %1, align 8, !dbg !3307, !tbaa !2305
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !600, metadata !632), !dbg !3308
  %5 = icmp eq i8* %0, null, !dbg !3309
  br i1 %5, label %6, label %13, !dbg !3311

; <label>:6:                                      ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3312
  br i1 %7, label %8, label %17, !dbg !3315

; <label>:8:                                      ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3316
  tail call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !600, metadata !632), !dbg !3308
  %10 = icmp ugt i64 %2, 128, !dbg !3318
  %11 = zext i1 %10 to i64, !dbg !3318
  %12 = add nuw nsw i64 %9, %11, !dbg !3319
  tail call void @llvm.dbg.value(metadata i64 %12, i64 0, metadata !600, metadata !632), !dbg !3308
  br label %17, !dbg !3320

; <label>:13:                                     ; preds = %3
  %14 = udiv i64 6148914691236517204, %2, !dbg !3321
  %15 = icmp ugt i64 %14, %4, !dbg !3324
  br i1 %15, label %20, label %16, !dbg !3325

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #14, !dbg !3326
  unreachable, !dbg !3326

; <label>:17:                                     ; preds = %6, %8
  %18 = phi i64 [ %12, %8 ], [ %4, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !600, metadata !632), !dbg !3308
  store i64 %18, i64* %1, align 8, !dbg !3327, !tbaa !2305
  %19 = mul i64 %18, %2, !dbg !3328
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3266, metadata !632) #10, !dbg !3329
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !3271, metadata !632) #10, !dbg !3331
  br label %27, !dbg !3332

; <label>:20:                                     ; preds = %13
  %21 = lshr i64 %4, 1, !dbg !3333
  %22 = add i64 %4, 1, !dbg !3334
  %23 = add i64 %22, %21, !dbg !3335
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !600, metadata !632), !dbg !3308
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !600, metadata !632), !dbg !3308
  store i64 %23, i64* %1, align 8, !dbg !3327, !tbaa !2305
  %24 = mul i64 %23, %2, !dbg !3328
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3266, metadata !632) #10, !dbg !3329
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !3271, metadata !632) #10, !dbg !3331
  %25 = icmp eq i64 %24, 0, !dbg !3336
  br i1 %25, label %26, label %27, !dbg !3332

; <label>:26:                                     ; preds = %20
  tail call void @free(i8* nonnull %0) #10, !dbg !3337
  br label %34, !dbg !3338

; <label>:27:                                     ; preds = %17, %20
  %28 = phi i64 [ %19, %17 ], [ %24, %20 ]
  %29 = tail call i8* @realloc(i8* %0, i64 %28) #10, !dbg !3339
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !3266, metadata !632) #10, !dbg !3329
  %30 = icmp eq i8* %29, null, !dbg !3340
  %31 = icmp ne i64 %28, 0, !dbg !3341
  %32 = and i1 %31, %30, !dbg !3342
  br i1 %32, label %33, label %34, !dbg !3342

; <label>:33:                                     ; preds = %27
  tail call void @xalloc_die() #14, !dbg !3343
  unreachable, !dbg !3343

; <label>:34:                                     ; preds = %26, %27
  %35 = phi i8* [ null, %26 ], [ %29, %27 ]
  ret i8* %35, !dbg !3344
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xcharalloc(i64) local_unnamed_addr #12 !dbg !3345 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3347, metadata !632), !dbg !3348
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3225, metadata !632) #10, !dbg !3349
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !3351
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3231, metadata !632) #10, !dbg !3352
  %3 = icmp eq i8* %2, null, !dbg !3353
  %4 = icmp ne i64 %0, 0, !dbg !3354
  %5 = and i1 %4, %3, !dbg !3355
  br i1 %5, label %6, label %7, !dbg !3355

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #14, !dbg !3356
  unreachable, !dbg !3356

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !3357
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @x2realloc(i8*, i64* nocapture) local_unnamed_addr #6 !dbg !3358 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3362, metadata !632), !dbg !3364
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !3363, metadata !632), !dbg !3365
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !597, metadata !632) #10, !dbg !3366
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !598, metadata !632) #10, !dbg !3368
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !599, metadata !632) #10, !dbg !3369
  %3 = load i64, i64* %1, align 8, !dbg !3370, !tbaa !2305
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !600, metadata !632) #10, !dbg !3371
  %4 = icmp eq i8* %0, null, !dbg !3372
  br i1 %4, label %5, label %8, !dbg !3373

; <label>:5:                                      ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3374
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !600, metadata !632) #10, !dbg !3371
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !600, metadata !632) #10, !dbg !3371
  %7 = select i1 %6, i64 128, i64 %3, !dbg !3375
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !600, metadata !632) #10, !dbg !3371
  store i64 %7, i64* %1, align 8, !dbg !3376, !tbaa !2305
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3266, metadata !632) #10, !dbg !3377
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3271, metadata !632) #10, !dbg !3379
  br label %17, !dbg !3380

; <label>:8:                                      ; preds = %2
  %9 = icmp ult i64 %3, 6148914691236517204, !dbg !3381
  br i1 %9, label %11, label %10, !dbg !3382

; <label>:10:                                     ; preds = %8
  tail call void @xalloc_die() #14, !dbg !3383
  unreachable, !dbg !3383

; <label>:11:                                     ; preds = %8
  %12 = lshr i64 %3, 1, !dbg !3384
  %13 = add i64 %3, 1, !dbg !3385
  %14 = add i64 %13, %12, !dbg !3386
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !600, metadata !632) #10, !dbg !3371
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !600, metadata !632) #10, !dbg !3371
  store i64 %14, i64* %1, align 8, !dbg !3376, !tbaa !2305
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3266, metadata !632) #10, !dbg !3377
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3271, metadata !632) #10, !dbg !3379
  %15 = icmp eq i64 %14, 0, !dbg !3387
  br i1 %15, label %16, label %17, !dbg !3380

; <label>:16:                                     ; preds = %11
  tail call void @free(i8* nonnull %0) #10, !dbg !3388
  br label %24, !dbg !3389

; <label>:17:                                     ; preds = %11, %5
  %18 = phi i64 [ %7, %5 ], [ %14, %11 ]
  %19 = tail call i8* @realloc(i8* %0, i64 %18) #10, !dbg !3390
  tail call void @llvm.dbg.value(metadata i8* %19, i64 0, metadata !3266, metadata !632) #10, !dbg !3377
  %20 = icmp eq i8* %19, null, !dbg !3391
  %21 = icmp ne i64 %18, 0, !dbg !3392
  %22 = and i1 %21, %20, !dbg !3393
  br i1 %22, label %23, label %24, !dbg !3393

; <label>:23:                                     ; preds = %17
  tail call void @xalloc_die() #14, !dbg !3394
  unreachable, !dbg !3394

; <label>:24:                                     ; preds = %16, %17
  %25 = phi i8* [ null, %16 ], [ %19, %17 ]
  ret i8* %25, !dbg !3395
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xzalloc(i64) local_unnamed_addr #6 !dbg !3396 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3398, metadata !632), !dbg !3399
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3225, metadata !632) #10, !dbg !3400
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !3402
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3231, metadata !632) #10, !dbg !3403
  %3 = icmp eq i8* %2, null, !dbg !3404
  %4 = icmp ne i64 %0, 0, !dbg !3405
  %5 = and i1 %4, %3, !dbg !3406
  br i1 %5, label %6, label %7, !dbg !3406

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #14, !dbg !3407
  unreachable, !dbg !3407

; <label>:7:                                      ; preds = %1
  tail call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 %0, i32 1, i1 false), !dbg !3408
  ret i8* %2, !dbg !3409
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xcalloc(i64, i64) local_unnamed_addr #6 !dbg !3410 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3412, metadata !632), !dbg !3415
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3413, metadata !632), !dbg !3416
  %3 = udiv i64 9223372036854775807, %1, !dbg !3417
  %4 = icmp ult i64 %3, %0, !dbg !3417
  br i1 %4, label %8, label %5, !dbg !3419

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #10, !dbg !3420
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !3414, metadata !632), !dbg !3422
  %7 = icmp eq i8* %6, null, !dbg !3423
  br i1 %7, label %8, label %9, !dbg !3424

; <label>:8:                                      ; preds = %5, %2
  tail call void @xalloc_die() #14, !dbg !3426
  unreachable, !dbg !3426

; <label>:9:                                      ; preds = %5
  ret i8* %6, !dbg !3427
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmemdup(i8* nocapture readonly, i64) local_unnamed_addr #6 !dbg !3428 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3432, metadata !632), !dbg !3434
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3433, metadata !632), !dbg !3435
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3225, metadata !632) #10, !dbg !3436
  %3 = tail call noalias i8* @malloc(i64 %1) #10, !dbg !3438
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3231, metadata !632) #10, !dbg !3439
  %4 = icmp eq i8* %3, null, !dbg !3440
  %5 = icmp ne i64 %1, 0, !dbg !3441
  %6 = and i1 %5, %4, !dbg !3442
  br i1 %6, label %7, label %8, !dbg !3442

; <label>:7:                                      ; preds = %2
  tail call void @xalloc_die() #14, !dbg !3443
  unreachable, !dbg !3443

; <label>:8:                                      ; preds = %2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %0, i64 %1, i32 1, i1 false), !dbg !3444
  ret i8* %3, !dbg !3445
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xstrdup(i8* nocapture readonly) local_unnamed_addr #6 !dbg !3446 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3448, metadata !632), !dbg !3449
  %2 = tail call i64 @strlen(i8* %0) #13, !dbg !3450
  %3 = add i64 %2, 1, !dbg !3451
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3432, metadata !632) #10, !dbg !3452
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3433, metadata !632) #10, !dbg !3455
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3225, metadata !632) #10, !dbg !3456
  %4 = tail call noalias i8* @malloc(i64 %3) #10, !dbg !3458
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !3231, metadata !632) #10, !dbg !3459
  %5 = icmp eq i8* %4, null, !dbg !3460
  %6 = icmp ne i64 %3, 0, !dbg !3461
  %7 = and i1 %6, %5, !dbg !3462
  br i1 %7, label %8, label %9, !dbg !3462

; <label>:8:                                      ; preds = %1
  tail call void @xalloc_die() #14, !dbg !3463
  unreachable, !dbg !3463

; <label>:9:                                      ; preds = %1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %0, i64 %3, i32 1, i1 false) #10, !dbg !3464
  ret i8* %4, !dbg !3465
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @xalloc_die() local_unnamed_addr #0 !dbg !3466 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !3468, !tbaa !654
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.115, i64 0, i64 0), i32 5) #10, !dbg !3469
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.116, i64 0, i64 0), i8* %2) #10, !dbg !3470
  tail call void @abort() #14, !dbg !3472
  unreachable, !dbg !3472
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @rpl_calloc(i64, i64) local_unnamed_addr #6 !dbg !3473 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3476, metadata !632), !dbg !3482
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3477, metadata !632), !dbg !3483
  %3 = icmp eq i64 %0, 0, !dbg !3484
  %4 = icmp eq i64 %1, 0, !dbg !3485
  %5 = or i1 %3, %4, !dbg !3487
  br i1 %5, label %12, label %6, !dbg !3487

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3488
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !3479, metadata !632), !dbg !3489
  %8 = udiv i64 %7, %1, !dbg !3490
  %9 = icmp eq i64 %8, %0, !dbg !3492
  br i1 %9, label %12, label %10, !dbg !3493

; <label>:10:                                     ; preds = %6
  %11 = tail call i32* @__errno_location() #1, !dbg !3494
  store i32 12, i32* %11, align 4, !dbg !3496, !tbaa !654
  br label %16

; <label>:12:                                     ; preds = %6, %2
  %13 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %14 = phi i64 [ 1, %2 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3476, metadata !632), !dbg !3482
  tail call void @llvm.dbg.value(metadata i64 %13, i64 0, metadata !3477, metadata !632), !dbg !3483
  %15 = tail call noalias i8* @calloc(i64 %14, i64 %13) #10, !dbg !3497
  tail call void @llvm.dbg.value(metadata i8* %15, i64 0, metadata !3478, metadata !632), !dbg !3498
  br label %16, !dbg !3499

; <label>:16:                                     ; preds = %10, %12
  %17 = phi i8* [ %15, %12 ], [ null, %10 ]
  ret i8* %17, !dbg !3500
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i64 @rpl_mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #6 !dbg !3501 {
  %5 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i32* %0, i64 0, metadata !3518, metadata !632), !dbg !3527
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3519, metadata !632), !dbg !3528
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3520, metadata !632), !dbg !3529
  tail call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, i64 0, metadata !3521, metadata !632), !dbg !3530
  %6 = bitcast i32* %5 to i8*, !dbg !3531
  call void @llvm.lifetime.start(i64 4, i8* nonnull %6) #10, !dbg !3531
  %7 = icmp eq i32* %0, null, !dbg !3532
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !3518, metadata !632), !dbg !3527
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !3534
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !3518, metadata !632), !dbg !3527
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #10, !dbg !3535
  call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !3522, metadata !632), !dbg !3536
  %10 = icmp ugt i64 %9, -3, !dbg !3537
  %11 = icmp ne i64 %2, 0, !dbg !3538
  %12 = and i1 %11, %10, !dbg !3540
  br i1 %12, label %13, label %18, !dbg !3540

; <label>:13:                                     ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #10, !dbg !3541
  br i1 %14, label %18, label %15, !dbg !3543

; <label>:15:                                     ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !3545, !tbaa !832
  call void @llvm.dbg.value(metadata i8 %16, i64 0, metadata !3524, metadata !632), !dbg !3546
  %17 = zext i8 %16 to i32, !dbg !3547
  store i32 %17, i32* %8, align 4, !dbg !3548, !tbaa !654
  br label %18

; <label>:18:                                     ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ]
  call void @llvm.lifetime.end(i64 4, i8* nonnull %6) #10, !dbg !3549
  ret i64 %19, !dbg !3549
}

; Function Attrs: nounwind
declare i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @close_stream(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !3550 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3595, metadata !632), !dbg !3600
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #10, !dbg !3601
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3602, metadata !632), !dbg !3605
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3607
  %4 = load i32, i32* %3, align 8, !dbg !3607, !tbaa !3608
  %5 = and i32 %4, 32, !dbg !3607
  %6 = icmp eq i32 %5, 0, !dbg !3609
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #10, !dbg !3610
  %8 = icmp ne i32 %7, 0, !dbg !3611
  br i1 %6, label %9, label %19, !dbg !3612

; <label>:9:                                      ; preds = %1
  %10 = xor i1 %8, true, !dbg !3614
  %11 = icmp ne i64 %2, 0, !dbg !3614
  %12 = or i1 %11, %10, !dbg !3614
  %13 = sext i1 %8 to i32, !dbg !3614
  br i1 %12, label %22, label %14, !dbg !3614

; <label>:14:                                     ; preds = %9
  %15 = tail call i32* @__errno_location() #1, !dbg !3616
  %16 = load i32, i32* %15, align 4, !dbg !3616, !tbaa !654
  %17 = icmp ne i32 %16, 9, !dbg !3618
  %18 = sext i1 %17 to i32, !dbg !3618
  br label %22, !dbg !3618

; <label>:19:                                     ; preds = %1
  br i1 %8, label %22, label %20, !dbg !3620

; <label>:20:                                     ; preds = %19
  %21 = tail call i32* @__errno_location() #1, !dbg !3622
  store i32 0, i32* %21, align 4, !dbg !3624, !tbaa !654
  br label %22, !dbg !3622

; <label>:22:                                     ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ]
  ret i32 %23, !dbg !3625
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define zeroext i1 @hard_locale(i32) local_unnamed_addr #6 !dbg !3626 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3631, metadata !632), !dbg !3651
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !3632, metadata !632), !dbg !3652
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #10, !dbg !3653
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3633, metadata !632), !dbg !3654
  %3 = icmp eq i8* %2, null, !dbg !3655
  br i1 %3, label %15, label %4, !dbg !3656

; <label>:4:                                      ; preds = %1
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3641, metadata !632), !dbg !3657
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3642, metadata !632), !dbg !3658
  %5 = load i8, i8* %2, align 1, !dbg !3659, !tbaa !832
  %6 = icmp eq i8 %5, 67, !dbg !3661
  br i1 %6, label %7, label %11, !dbg !3664

; <label>:7:                                      ; preds = %4
  %8 = getelementptr inbounds i8, i8* %2, i64 1, !dbg !3666
  %9 = load i8, i8* %8, align 1, !dbg !3666, !tbaa !832
  %10 = icmp eq i8 %9, 0, !dbg !3669
  br i1 %10, label %14, label %11, !dbg !3671

; <label>:11:                                     ; preds = %4, %7
  tail call void @llvm.dbg.value(metadata i64 5, i64 0, metadata !3647, metadata !632), !dbg !3673
  %12 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.125, i64 0, i64 0)) #10, !dbg !3674
  %13 = icmp eq i32 %12, 0, !dbg !3676
  br i1 %13, label %14, label %15, !dbg !3678

; <label>:14:                                     ; preds = %11, %7
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3632, metadata !632), !dbg !3652
  br label %15, !dbg !3680

; <label>:15:                                     ; preds = %1, %11, %14
  %16 = phi i1 [ false, %14 ], [ true, %11 ], [ true, %1 ]
  ret i1 %16, !dbg !3681
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @locale_charset() local_unnamed_addr #6 !dbg !3682 {
  %1 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %1, metadata !3694, metadata !632), !dbg !3768
  %2 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %2, metadata !3761, metadata !632), !dbg !3770
  %3 = tail call i8* @nl_langinfo(i32 14) #10, !dbg !3771
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3686, metadata !632), !dbg !3772
  %4 = icmp eq i8* %3, null, !dbg !3773
  %5 = select i1 %4, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.128, i64 0, i64 0), i8* %3, !dbg !3775
  tail call void @llvm.dbg.value(metadata i8* %5, i64 0, metadata !3686, metadata !632), !dbg !3772
  %6 = load volatile i8*, i8** @charset_aliases, align 8, !dbg !3776, !tbaa !640
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !3708, metadata !632) #10, !dbg !3777
  %7 = icmp eq i8* %6, null, !dbg !3778
  br i1 %7, label %8, label %127, !dbg !3779

; <label>:8:                                      ; preds = %0
  %9 = tail call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3.129, i64 0, i64 0)) #10, !dbg !3780
  tail call void @llvm.dbg.value(metadata i8* %9, i64 0, metadata !3709, metadata !632) #10, !dbg !3781
  %10 = icmp eq i8* %9, null, !dbg !3782
  br i1 %10, label %14, label %11, !dbg !3784

; <label>:11:                                     ; preds = %8
  %12 = load i8, i8* %9, align 1, !dbg !3785, !tbaa !832
  %13 = icmp eq i8 %12, 0, !dbg !3787
  br i1 %13, label %14, label %15, !dbg !3788

; <label>:14:                                     ; preds = %11, %8
  br label %15, !dbg !3790

; <label>:15:                                     ; preds = %14, %11
  %16 = phi i8* [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4.130, i64 0, i64 0), %14 ], [ %9, %11 ]
  tail call void @llvm.dbg.value(metadata i8* %16, i64 0, metadata !3709, metadata !632) #10, !dbg !3781
  %17 = tail call i64 @strlen(i8* nonnull %16) #13, !dbg !3791
  tail call void @llvm.dbg.value(metadata i64 %17, i64 0, metadata !3712, metadata !632) #10, !dbg !3792
  tail call void @llvm.dbg.value(metadata i64 13, i64 0, metadata !3714, metadata !632) #10, !dbg !3793
  %18 = icmp eq i64 %17, 0, !dbg !3794
  br i1 %18, label %24, label %19, !dbg !3795

; <label>:19:                                     ; preds = %15
  %20 = add i64 %17, -1, !dbg !3796
  %21 = getelementptr inbounds i8, i8* %16, i64 %20, !dbg !3796
  %22 = load i8, i8* %21, align 1, !dbg !3796, !tbaa !832
  %23 = icmp ne i8 %22, 47, !dbg !3798
  br label %24

; <label>:24:                                     ; preds = %19, %15
  %25 = phi i1 [ false, %15 ], [ %23, %19 ]
  %26 = zext i1 %25 to i64, !dbg !3799
  %27 = add i64 %17, 14, !dbg !3800
  %28 = add i64 %27, %26, !dbg !3801
  %29 = tail call noalias i8* @malloc(i64 %28) #10, !dbg !3802
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !3711, metadata !632) #10, !dbg !3803
  %30 = icmp eq i8* %29, null, !dbg !3804
  br i1 %30, label %125, label %31, !dbg !3804

; <label>:31:                                     ; preds = %24
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %29, i8* %16, i64 %17, i32 1, i1 false) #10, !dbg !3805
  %32 = getelementptr inbounds i8, i8* %29, i64 %17
  br i1 %25, label %33, label %35, !dbg !3808

; <label>:33:                                     ; preds = %31
  store i8 47, i8* %32, align 1, !dbg !3809, !tbaa !832
  %34 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !3811
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %34, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.131, i64 0, i64 0), i64 14, i32 1, i1 false) #10, !dbg !3812
  br label %37, !dbg !3813

; <label>:35:                                     ; preds = %31
  %36 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !3811
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.131, i64 0, i64 0), i64 14, i32 1, i1 false) #10, !dbg !3812
  br label %37, !dbg !3813

; <label>:37:                                     ; preds = %35, %33
  %38 = tail call i32 (i8*, i32, ...) @open(i8* nonnull %29, i32 131072) #10, !dbg !3814
  tail call void @llvm.dbg.value(metadata i32 %38, i64 0, metadata !3716, metadata !632) #10, !dbg !3815
  %39 = icmp slt i32 %38, 0, !dbg !3816
  br i1 %39, label %123, label %40, !dbg !3817

; <label>:40:                                     ; preds = %37
  %41 = tail call %struct._IO_FILE* @fdopen(i32 %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.132, i64 0, i64 0)) #10, !dbg !3818
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !3717, metadata !632) #10, !dbg !3819
  %42 = icmp eq %struct._IO_FILE* %41, null, !dbg !3820
  br i1 %42, label %48, label %43, !dbg !3821

; <label>:43:                                     ; preds = %40
  %44 = getelementptr inbounds [51 x i8], [51 x i8]* %1, i64 0, i64 0
  %45 = getelementptr inbounds [51 x i8], [51 x i8]* %2, i64 0, i64 0
  %46 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 1
  %47 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 2
  br label %50, !dbg !3822

; <label>:48:                                     ; preds = %40
  %49 = tail call i32 @close(i32 %38) #10, !dbg !3823
  br label %123, !dbg !3825

; <label>:50:                                     ; preds = %111, %43
  %51 = phi i64 [ %112, %111 ], [ 0, %43 ]
  %52 = phi i8* [ %113, %111 ], [ null, %43 ]
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !3758, metadata !632) #10, !dbg !3822
  call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !3759, metadata !632) #10, !dbg !3826
  call void @llvm.lifetime.start(i64 51, i8* nonnull %44) #10, !dbg !3827
  call void @llvm.lifetime.start(i64 51, i8* nonnull %45) #10, !dbg !3828
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !3829, metadata !632) #10, !dbg !3834
  %53 = load i8*, i8** %46, align 8, !dbg !3836, !tbaa !3837
  %54 = load i8*, i8** %47, align 8, !dbg !3836, !tbaa !3838
  %55 = icmp ult i8* %53, %54, !dbg !3836
  br i1 %55, label %58, label %56, !dbg !3836, !prof !827

; <label>:56:                                     ; preds = %50
  %57 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #10, !dbg !3839
  br label %62, !dbg !3839

; <label>:58:                                     ; preds = %50
  %59 = getelementptr inbounds i8, i8* %53, i64 1, !dbg !3841
  store i8* %59, i8** %46, align 8, !dbg !3841, !tbaa !3837
  %60 = load i8, i8* %53, align 1, !dbg !3841, !tbaa !832
  %61 = zext i8 %60 to i32, !dbg !3841
  br label %62, !dbg !3841

; <label>:62:                                     ; preds = %58, %56
  %63 = phi i32 [ %57, %56 ], [ %61, %58 ], !dbg !3843
  call void @llvm.dbg.value(metadata i32 %63, i64 0, metadata !3760, metadata !632) #10, !dbg !3845
  switch i32 %63, label %77 [
    i32 -1, label %115
    i32 32, label %111
    i32 10, label %111
    i32 9, label %111
    i32 35, label %64
  ], !dbg !3846

; <label>:64:                                     ; preds = %62
  br label %65, !dbg !3847

; <label>:65:                                     ; preds = %64, %75
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !3829, metadata !632) #10, !dbg !3847
  %66 = load i8*, i8** %46, align 8, !dbg !3851, !tbaa !3837
  %67 = load i8*, i8** %47, align 8, !dbg !3851, !tbaa !3838
  %68 = icmp ult i8* %66, %67, !dbg !3851
  br i1 %68, label %71, label %69, !dbg !3851, !prof !827

; <label>:69:                                     ; preds = %65
  %70 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #10, !dbg !3852
  br label %75, !dbg !3852

; <label>:71:                                     ; preds = %65
  %72 = getelementptr inbounds i8, i8* %66, i64 1, !dbg !3853
  store i8* %72, i8** %46, align 8, !dbg !3853, !tbaa !3837
  %73 = load i8, i8* %66, align 1, !dbg !3853, !tbaa !832
  %74 = zext i8 %73 to i32, !dbg !3853
  br label %75, !dbg !3853

; <label>:75:                                     ; preds = %71, %69
  %76 = phi i32 [ %70, %69 ], [ %74, %71 ], !dbg !3854
  call void @llvm.dbg.value(metadata i32 %76, i64 0, metadata !3760, metadata !632) #10, !dbg !3845
  switch i32 %76, label %65 [
    i32 -1, label %114
    i32 10, label %110
  ], !dbg !3855, !llvm.loop !3857

; <label>:77:                                     ; preds = %62
  %78 = call i32 @ungetc(i32 %63, %struct._IO_FILE* nonnull %41) #10, !dbg !3860
  %79 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* nonnull %41, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6.133, i64 0, i64 0), i8* nonnull %44, i8* nonnull %45) #10, !dbg !3861
  %80 = icmp slt i32 %79, 2, !dbg !3863
  br i1 %80, label %115, label %81, !dbg !3864

; <label>:81:                                     ; preds = %77
  %82 = call i64 @strlen(i8* nonnull %44) #13, !dbg !3865
  call void @llvm.dbg.value(metadata i64 %82, i64 0, metadata !3765, metadata !632) #10, !dbg !3866
  %83 = call i64 @strlen(i8* nonnull %45) #13, !dbg !3867
  call void @llvm.dbg.value(metadata i64 %83, i64 0, metadata !3766, metadata !632) #10, !dbg !3868
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !3767, metadata !632) #10, !dbg !3869
  %84 = icmp eq i64 %51, 0, !dbg !3870
  %85 = add i64 %82, 1
  %86 = add i64 %85, %83
  %87 = add i64 %86, 1
  br i1 %84, label %88, label %91, !dbg !3872

; <label>:88:                                     ; preds = %81
  call void @llvm.dbg.value(metadata i64 %87, i64 0, metadata !3759, metadata !632) #10, !dbg !3826
  %89 = add i64 %86, 2, !dbg !3873
  %90 = call noalias i8* @malloc(i64 %89) #10, !dbg !3875
  call void @llvm.dbg.value(metadata i8* %90, i64 0, metadata !3758, metadata !632) #10, !dbg !3822
  br label %95, !dbg !3876

; <label>:91:                                     ; preds = %81
  %92 = add i64 %87, %51, !dbg !3877
  call void @llvm.dbg.value(metadata i64 %92, i64 0, metadata !3759, metadata !632) #10, !dbg !3826
  %93 = add i64 %92, 1, !dbg !3879
  %94 = call i8* @realloc(i8* %52, i64 %93) #10, !dbg !3880
  call void @llvm.dbg.value(metadata i8* %94, i64 0, metadata !3758, metadata !632) #10, !dbg !3822
  br label %95

; <label>:95:                                     ; preds = %91, %88
  %96 = phi i64 [ %87, %88 ], [ %92, %91 ]
  %97 = phi i8* [ %90, %88 ], [ %94, %91 ]
  call void @llvm.dbg.value(metadata i8* %97, i64 0, metadata !3758, metadata !632) #10, !dbg !3822
  call void @llvm.dbg.value(metadata i64 %96, i64 0, metadata !3759, metadata !632) #10, !dbg !3826
  %98 = icmp eq i8* %97, null, !dbg !3881
  br i1 %98, label %99, label %100, !dbg !3883

; <label>:99:                                     ; preds = %95
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3759, metadata !632) #10, !dbg !3826
  call void @free(i8* %52) #10, !dbg !3884
  br label %116, !dbg !3886

; <label>:100:                                    ; preds = %95
  %101 = getelementptr inbounds i8, i8* %97, i64 %96, !dbg !3887
  %102 = xor i64 %83, -1, !dbg !3888
  %103 = getelementptr inbounds i8, i8* %101, i64 %102, !dbg !3888
  %104 = xor i64 %82, -1, !dbg !3889
  %105 = getelementptr inbounds i8, i8* %103, i64 %104, !dbg !3889
  call void @llvm.dbg.value(metadata i8* %105, i64 0, metadata !3890, metadata !632) #10, !dbg !3899
  call void @llvm.dbg.value(metadata i8* %44, i64 0, metadata !3898, metadata !632) #10, !dbg !3899
  %106 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %105, i1 false) #10, !dbg !3901
  %107 = call i8* @__strcpy_chk(i8* nonnull %105, i8* nonnull %44, i64 %106) #10, !dbg !3902
  call void @llvm.dbg.value(metadata i8* %103, i64 0, metadata !3890, metadata !632) #10, !dbg !3903
  call void @llvm.dbg.value(metadata i8* %45, i64 0, metadata !3898, metadata !632) #10, !dbg !3903
  %108 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %103, i1 false) #10, !dbg !3905
  %109 = call i8* @__strcpy_chk(i8* nonnull %103, i8* nonnull %45, i64 %108) #10, !dbg !3906
  br label %111, !dbg !3907

; <label>:110:                                    ; preds = %75
  br label %111, !dbg !3822

; <label>:111:                                    ; preds = %110, %100, %62, %62, %62
  %112 = phi i64 [ %96, %100 ], [ %51, %62 ], [ %51, %62 ], [ %51, %62 ], [ %51, %110 ]
  %113 = phi i8* [ %97, %100 ], [ %52, %62 ], [ %52, %62 ], [ %52, %62 ], [ %52, %110 ]
  call void @llvm.dbg.value(metadata i8* %113, i64 0, metadata !3758, metadata !632) #10, !dbg !3822
  call void @llvm.dbg.value(metadata i64 %112, i64 0, metadata !3759, metadata !632) #10, !dbg !3826
  call void @llvm.lifetime.end(i64 51, i8* nonnull %45) #10, !dbg !3907
  call void @llvm.lifetime.end(i64 51, i8* nonnull %44) #10, !dbg !3907
  br label %50

; <label>:114:                                    ; preds = %75
  br label %116, !dbg !3822

; <label>:115:                                    ; preds = %62, %77
  br label %116, !dbg !3822

; <label>:116:                                    ; preds = %115, %114, %99
  %117 = phi i64 [ 0, %99 ], [ %51, %114 ], [ %51, %115 ]
  %118 = phi i8* [ null, %99 ], [ %52, %114 ], [ %52, %115 ]
  call void @llvm.dbg.value(metadata i8* %113, i64 0, metadata !3758, metadata !632) #10, !dbg !3822
  call void @llvm.dbg.value(metadata i64 %112, i64 0, metadata !3759, metadata !632) #10, !dbg !3826
  call void @llvm.lifetime.end(i64 51, i8* nonnull %45) #10, !dbg !3907
  call void @llvm.lifetime.end(i64 51, i8* nonnull %44) #10, !dbg !3907
  %119 = call i32 @rpl_fclose(%struct._IO_FILE* nonnull %41) #10, !dbg !3908
  %120 = icmp eq i64 %117, 0, !dbg !3909
  br i1 %120, label %123, label %121, !dbg !3911

; <label>:121:                                    ; preds = %116
  %122 = getelementptr inbounds i8, i8* %118, i64 %117, !dbg !3912
  store i8 0, i8* %122, align 1, !dbg !3914, !tbaa !832
  call void @llvm.dbg.value(metadata i8* %113, i64 0, metadata !3708, metadata !632) #10, !dbg !3777
  br label %123

; <label>:123:                                    ; preds = %121, %116, %48, %37
  %124 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.128, i64 0, i64 0), %37 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.128, i64 0, i64 0), %48 ], [ %118, %121 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.128, i64 0, i64 0), %116 ]
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !3708, metadata !632) #10, !dbg !3777
  call void @free(i8* %29) #10, !dbg !3915
  br label %125

; <label>:125:                                    ; preds = %123, %24
  %126 = phi i8* [ %124, %123 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.128, i64 0, i64 0), %24 ]
  call void @llvm.dbg.value(metadata i8* %126, i64 0, metadata !3708, metadata !632) #10, !dbg !3777
  store volatile i8* %126, i8** @charset_aliases, align 8, !dbg !3916, !tbaa !640
  br label %127, !dbg !3917

; <label>:127:                                    ; preds = %0, %125
  %128 = phi i8* [ %6, %0 ], [ %126, %125 ]
  call void @llvm.dbg.value(metadata i8* %128, i64 0, metadata !3687, metadata !632), !dbg !3918
  %129 = load i8, i8* %128, align 1, !dbg !3919, !tbaa !832
  %130 = icmp eq i8 %129, 0, !dbg !3920
  br i1 %130, label %157, label %131, !dbg !3921

; <label>:131:                                    ; preds = %127
  br label %132, !dbg !3923

; <label>:132:                                    ; preds = %131, %147
  %133 = phi i8 [ %154, %147 ], [ %129, %131 ]
  %134 = phi i8* [ %153, %147 ], [ %128, %131 ]
  %135 = call i32 @strcmp(i8* %5, i8* %134) #10, !dbg !3923
  %136 = icmp eq i32 %135, 0, !dbg !3924
  br i1 %136, label %143, label %137, !dbg !3925

; <label>:137:                                    ; preds = %132
  %138 = icmp eq i8 %133, 42, !dbg !3926
  br i1 %138, label %139, label %147, !dbg !3928

; <label>:139:                                    ; preds = %137
  %140 = getelementptr inbounds i8, i8* %134, i64 1, !dbg !3929
  %141 = load i8, i8* %140, align 1, !dbg !3929, !tbaa !832
  %142 = icmp eq i8 %141, 0, !dbg !3931
  br i1 %142, label %143, label %147, !dbg !3932

; <label>:143:                                    ; preds = %139, %132
  %144 = call i64 @strlen(i8* %134) #13, !dbg !3934
  %145 = getelementptr inbounds i8, i8* %134, i64 %144, !dbg !3936
  %146 = getelementptr inbounds i8, i8* %145, i64 1, !dbg !3937
  call void @llvm.dbg.value(metadata i8* %146, i64 0, metadata !3686, metadata !632), !dbg !3772
  br label %157, !dbg !3938

; <label>:147:                                    ; preds = %137, %139
  %148 = call i64 @strlen(i8* %134) #13, !dbg !3939
  %149 = add i64 %148, 1, !dbg !3940
  %150 = getelementptr inbounds i8, i8* %134, i64 %149, !dbg !3941
  call void @llvm.dbg.value(metadata i8* %150, i64 0, metadata !3687, metadata !632), !dbg !3918
  %151 = call i64 @strlen(i8* %150) #13, !dbg !3942
  %152 = add i64 %151, 1, !dbg !3943
  %153 = getelementptr inbounds i8, i8* %150, i64 %152, !dbg !3944
  call void @llvm.dbg.value(metadata i8* %153, i64 0, metadata !3687, metadata !632), !dbg !3918
  call void @llvm.dbg.value(metadata i8* %153, i64 0, metadata !3687, metadata !632), !dbg !3918
  %154 = load i8, i8* %153, align 1, !dbg !3919, !tbaa !832
  %155 = icmp eq i8 %154, 0, !dbg !3920
  br i1 %155, label %156, label %132, !dbg !3921, !llvm.loop !3945

; <label>:156:                                    ; preds = %147
  br label %157, !dbg !3772

; <label>:157:                                    ; preds = %156, %127, %143
  %158 = phi i8* [ %146, %143 ], [ %5, %127 ], [ %5, %156 ]
  call void @llvm.dbg.value(metadata i8* %158, i64 0, metadata !3686, metadata !632), !dbg !3772
  %159 = load i8, i8* %158, align 1, !dbg !3948, !tbaa !832
  %160 = icmp eq i8 %159, 0, !dbg !3950
  %161 = select i1 %160, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.134, i64 0, i64 0), i8* %158, !dbg !3951
  call void @llvm.dbg.value(metadata i8* %161, i64 0, metadata !3686, metadata !632), !dbg !3772
  ret i8* %161, !dbg !3952
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
define i32 @rpl_fclose(%struct._IO_FILE* nonnull) local_unnamed_addr #6 !dbg !3953 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3998, metadata !632), !dbg !4002
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3999, metadata !632), !dbg !4003
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4001, metadata !632), !dbg !4004
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !4005
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !4000, metadata !632), !dbg !4006
  %3 = icmp slt i32 %2, 0, !dbg !4007
  br i1 %3, label %4, label %6, !dbg !4009

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4010
  br label %24, !dbg !4011

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #10, !dbg !4012
  %8 = icmp eq i32 %7, 0, !dbg !4012
  br i1 %8, label %13, label %9, !dbg !4014

; <label>:9:                                      ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !4015
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #10, !dbg !4017
  %12 = icmp eq i64 %11, -1, !dbg !4019
  br i1 %12, label %16, label %13, !dbg !4020

; <label>:13:                                     ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #10, !dbg !4021
  %15 = icmp eq i32 %14, 0, !dbg !4021
  br i1 %15, label %16, label %18, !dbg !4022

; <label>:16:                                     ; preds = %13, %9
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !3999, metadata !632), !dbg !4003
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4024
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !4001, metadata !632), !dbg !4004
  br label %24, !dbg !4025

; <label>:18:                                     ; preds = %13
  %19 = tail call i32* @__errno_location() #1, !dbg !4026
  %20 = load i32, i32* %19, align 4, !dbg !4026, !tbaa !654
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !3999, metadata !632), !dbg !4003
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !3999, metadata !632), !dbg !4003
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4024
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !4001, metadata !632), !dbg !4004
  %22 = icmp eq i32 %20, 0, !dbg !4027
  br i1 %22, label %24, label %23, !dbg !4025

; <label>:23:                                     ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !4029, !tbaa !654
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !4001, metadata !632), !dbg !4004
  br label %24, !dbg !4031

; <label>:24:                                     ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ]
  ret i32 %25, !dbg !4032
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
define i32 @rpl_fflush(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !4033 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4078, metadata !632), !dbg !4079
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !4080
  br i1 %2, label %6, label %3, !dbg !4082

; <label>:3:                                      ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #10, !dbg !4083
  %5 = icmp eq i32 %4, 0, !dbg !4083
  br i1 %5, label %6, label %8, !dbg !4085

; <label>:6:                                      ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !4087
  br label %17, !dbg !4088

; <label>:8:                                      ; preds = %3
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4089, metadata !632) #10, !dbg !4094
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4096
  %10 = load i32, i32* %9, align 8, !dbg !4096, !tbaa !3608
  %11 = and i32 %10, 256, !dbg !4098
  %12 = icmp eq i32 %11, 0, !dbg !4098
  br i1 %12, label %15, label %13, !dbg !4099

; <label>:13:                                     ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #10, !dbg !4100
  br label %15, !dbg !4100

; <label>:15:                                     ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !4101
  br label %17, !dbg !4102

; <label>:17:                                     ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ]
  ret i32 %18, !dbg !4103
}

; Function Attrs: nounwind
declare i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull, i64, i32) local_unnamed_addr #6 !dbg !4104 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4150, metadata !632), !dbg !4156
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4151, metadata !632), !dbg !4157
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !4152, metadata !632), !dbg !4158
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !4159
  %5 = load i8*, i8** %4, align 8, !dbg !4159, !tbaa !3838
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !4160
  %7 = load i8*, i8** %6, align 8, !dbg !4160, !tbaa !3837
  %8 = icmp eq i8* %5, %7, !dbg !4161
  br i1 %8, label %9, label %28, !dbg !4162

; <label>:9:                                      ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !4163
  %11 = load i8*, i8** %10, align 8, !dbg !4163, !tbaa !822
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !4165
  %13 = load i8*, i8** %12, align 8, !dbg !4165, !tbaa !4166
  %14 = icmp eq i8* %11, %13, !dbg !4167
  br i1 %14, label %15, label %28, !dbg !4168

; <label>:15:                                     ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !4169
  %17 = load i8*, i8** %16, align 8, !dbg !4169, !tbaa !4170
  %18 = icmp eq i8* %17, null, !dbg !4171
  br i1 %18, label %19, label %28, !dbg !4172

; <label>:19:                                     ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !4174
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #10, !dbg !4175
  tail call void @llvm.dbg.value(metadata i64 %21, i64 0, metadata !4153, metadata !632), !dbg !4177
  %22 = icmp eq i64 %21, -1, !dbg !4178
  br i1 %22, label %30, label %23, !dbg !4180

; <label>:23:                                     ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4181
  %25 = load i32, i32* %24, align 8, !dbg !4182, !tbaa !3608
  %26 = and i32 %25, -17, !dbg !4182
  store i32 %26, i32* %24, align 8, !dbg !4182, !tbaa !3608
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !4183
  store i64 %21, i64* %27, align 8, !dbg !4184, !tbaa !4185
  br label %30, !dbg !4186

; <label>:28:                                     ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !4187
  br label %30, !dbg !4188

; <label>:30:                                     ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ]
  ret i32 %31, !dbg !4189
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
attributes #15 = { cold }

!llvm.dbg.cu = !{!9, !111, !116, !121, !129, !136, !143, !579, !224, !587, !604, !606, !608, !611, !613, !233, !616, !618, !620}
!llvm.ident = !{!622, !622, !622, !622, !622, !622, !622, !622, !622, !622, !622, !622, !622, !622, !622, !622, !622, !622, !622}
!llvm.module.flags = !{!623, !624, !625, !626}

!0 = !DIGlobalVariableExpression(var: !1)
!1 = distinct !DIGlobalVariable(name: "infomap", scope: !2, file: !3, line: 632, type: !106, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !3, file: !3, line: 630, type: !4, isLocal: true, isDefinition: true, scopeLine: 631, flags: DIFlagPrototyped, isOptimized: true, unit: !9, variables: !85)
!3 = !DIFile(filename: "src/system.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4 = !DISubroutineType(types: !5)
!5 = !{null, !6}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !8)
!8 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!9 = distinct !DICompileUnit(language: DW_LANG_C99, file: !10, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !11, retainedTypes: !12, globals: !23)
!10 = !DIFile(filename: "src/uname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!11 = !{}
!12 = !{!13, !16, !18, !6, !21, !22, !20}
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !14, line: 62, baseType: !15)
!14 = !DIFile(filename: "/usr/bin/../lib/clang/4.0.1/include/stddef.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!15 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!17 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!19 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !20)
!20 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!23 = !{!24, !0, !60, !74, !79}
!24 = !DIGlobalVariableExpression(var: !25)
!25 = distinct !DIGlobalVariable(name: "unknown", scope: !26, file: !10, line: 262, type: !57, isLocal: true, isDefinition: true)
!26 = distinct !DISubprogram(name: "main", scope: !10, file: !10, line: 260, type: !27, isLocal: false, isDefinition: true, scopeLine: 261, flags: DIFlagPrototyped, isOptimized: true, unit: !9, variables: !31)
!27 = !DISubroutineType(types: !28)
!28 = !{!29, !29, !30}
!29 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!31 = !{!32, !33, !34, !36, !51, !54}
!32 = !DILocalVariable(name: "argc", arg: 1, scope: !26, file: !10, line: 260, type: !29)
!33 = !DILocalVariable(name: "argv", arg: 2, scope: !26, file: !10, line: 260, type: !30)
!34 = !DILocalVariable(name: "toprint", scope: !26, file: !10, line: 265, type: !35)
!35 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!36 = !DILocalVariable(name: "name", scope: !37, file: !10, line: 284, type: !39)
!37 = distinct !DILexicalBlock(scope: !38, file: !10, line: 283, column: 5)
!38 = distinct !DILexicalBlock(scope: !26, file: !10, line: 280, column: 7)
!39 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "utsname", file: !40, line: 48, size: 3120, elements: !41)
!40 = !DIFile(filename: "/usr/include/sys/utsname.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!41 = !{!42, !46, !47, !48, !49, !50}
!42 = !DIDerivedType(tag: DW_TAG_member, name: "sysname", scope: !39, file: !40, line: 51, baseType: !43, size: 520)
!43 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 520, elements: !44)
!44 = !{!45}
!45 = !DISubrange(count: 65)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "nodename", scope: !39, file: !40, line: 54, baseType: !43, size: 520, offset: 520)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !39, file: !40, line: 57, baseType: !43, size: 520, offset: 1040)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !39, file: !40, line: 59, baseType: !43, size: 520, offset: 1560)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "machine", scope: !39, file: !40, line: 62, baseType: !43, size: 520, offset: 2080)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "domainname", scope: !39, file: !40, line: 67, baseType: !43, size: 520, offset: 2600)
!51 = !DILocalVariable(name: "element", scope: !52, file: !10, line: 303, type: !6)
!52 = distinct !DILexicalBlock(scope: !53, file: !10, line: 302, column: 5)
!53 = distinct !DILexicalBlock(scope: !26, file: !10, line: 301, column: 7)
!54 = !DILocalVariable(name: "element", scope: !55, file: !10, line: 347, type: !6)
!55 = distinct !DILexicalBlock(scope: !56, file: !10, line: 346, column: 5)
!56 = distinct !DILexicalBlock(scope: !26, file: !10, line: 345, column: 7)
!57 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 64, elements: !58)
!58 = !{!59}
!59 = !DISubrange(count: 8)
!60 = !DIGlobalVariableExpression(var: !61)
!61 = distinct !DIGlobalVariable(name: "arch_long_options", scope: !9, file: !10, line: 107, type: !62, isLocal: true, isDefinition: true)
!62 = !DICompositeType(tag: DW_TAG_array_type, baseType: !63, size: 768, elements: !72)
!63 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !64)
!64 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !65, line: 104, size: 256, elements: !66)
!65 = !DIFile(filename: "/usr/include/getopt.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!66 = !{!67, !68, !69, !71}
!67 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !64, file: !65, line: 106, baseType: !6, size: 64)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !64, file: !65, line: 109, baseType: !29, size: 32, offset: 64)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !64, file: !65, line: 110, baseType: !70, size: 64, offset: 128)
!70 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !64, file: !65, line: 111, baseType: !29, size: 32, offset: 192)
!72 = !{!73}
!73 = !DISubrange(count: 3)
!74 = !DIGlobalVariableExpression(var: !75)
!75 = distinct !DIGlobalVariable(name: "uname_long_options", scope: !9, file: !10, line: 89, type: !76, isLocal: true, isDefinition: true)
!76 = !DICompositeType(tag: DW_TAG_array_type, baseType: !63, size: 3584, elements: !77)
!77 = !{!78}
!78 = !DISubrange(count: 14)
!79 = !DIGlobalVariableExpression(var: !80)
!80 = distinct !DIGlobalVariable(name: "printed", scope: !81, file: !10, line: 163, type: !84, isLocal: true, isDefinition: true)
!81 = distinct !DISubprogram(name: "print_element", scope: !10, file: !10, line: 161, type: !4, isLocal: true, isDefinition: true, scopeLine: 162, flags: DIFlagPrototyped, isOptimized: true, unit: !9, variables: !82)
!82 = !{!83}
!83 = !DILocalVariable(name: "element", arg: 1, scope: !81, file: !10, line: 161, type: !6)
!84 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!85 = !{!86, !87, !88, !95, !97, !98, !99, !102, !103, !105}
!86 = !DILocalVariable(name: "program", arg: 1, scope: !2, file: !3, line: 630, type: !6)
!87 = !DILocalVariable(name: "node", scope: !2, file: !3, line: 642, type: !6)
!88 = !DILocalVariable(name: "map_prog", scope: !2, file: !3, line: 643, type: !89)
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64)
!90 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !91)
!91 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !2, file: !3, line: 632, size: 128, elements: !92)
!92 = !{!93, !94}
!93 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !91, file: !3, line: 632, baseType: !6, size: 64)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !91, file: !3, line: 632, baseType: !6, size: 64, offset: 64)
!95 = !DILocalVariable(name: "__s1_len", scope: !96, file: !3, line: 645, type: !13)
!96 = distinct !DILexicalBlock(scope: !2, file: !3, line: 645, column: 33)
!97 = !DILocalVariable(name: "__s2_len", scope: !96, file: !3, line: 645, type: !13)
!98 = !DILocalVariable(name: "lc_messages", scope: !2, file: !3, line: 655, type: !6)
!99 = !DILocalVariable(name: "__s1_len", scope: !100, file: !3, line: 656, type: !13)
!100 = distinct !DILexicalBlock(scope: !101, file: !3, line: 656, column: 22)
!101 = distinct !DILexicalBlock(scope: !2, file: !3, line: 656, column: 7)
!102 = !DILocalVariable(name: "__s2_len", scope: !100, file: !3, line: 656, type: !13)
!103 = !DILocalVariable(name: "__s2", scope: !104, file: !3, line: 656, type: !18)
!104 = distinct !DILexicalBlock(scope: !100, file: !3, line: 656, column: 22)
!105 = !DILocalVariable(name: "__result", scope: !104, file: !3, line: 656, type: !29)
!106 = !DICompositeType(tag: DW_TAG_array_type, baseType: !90, size: 896, elements: !107)
!107 = !{!108}
!108 = !DISubrange(count: 7)
!109 = !DIGlobalVariableExpression(var: !110)
!110 = distinct !DIGlobalVariable(name: "uname_mode", scope: !111, file: !112, line: 2, type: !29, isLocal: false, isDefinition: true)
!111 = distinct !DICompileUnit(language: DW_LANG_C99, file: !112, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !11, globals: !113)
!112 = !DIFile(filename: "src/uname-uname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!113 = !{!109}
!114 = !DIGlobalVariableExpression(var: !115)
!115 = distinct !DIGlobalVariable(name: "Version", scope: !116, file: !117, line: 2, type: !6, isLocal: false, isDefinition: true)
!116 = distinct !DICompileUnit(language: DW_LANG_C99, file: !117, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !11, globals: !118)
!117 = !DIFile(filename: "src/version.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!118 = !{!114}
!119 = !DIGlobalVariableExpression(var: !120)
!120 = distinct !DIGlobalVariable(name: "file_name", scope: !121, file: !126, line: 36, type: !6, isLocal: true, isDefinition: true)
!121 = distinct !DICompileUnit(language: DW_LANG_C99, file: !122, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !11, globals: !123)
!122 = !DIFile(filename: "./lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!123 = !{!119, !124}
!124 = !DIGlobalVariableExpression(var: !125)
!125 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !121, file: !126, line: 46, type: !84, isLocal: true, isDefinition: true)
!126 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!127 = !DIGlobalVariableExpression(var: !128)
!128 = distinct !DIGlobalVariable(name: "exit_failure", scope: !129, file: !132, line: 24, type: !133, isLocal: false, isDefinition: true)
!129 = distinct !DICompileUnit(language: DW_LANG_C99, file: !130, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !11, globals: !131)
!130 = !DIFile(filename: "./lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!131 = !{!127}
!132 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!133 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !29)
!134 = !DIGlobalVariableExpression(var: !135)
!135 = distinct !DIGlobalVariable(name: "program_name", scope: !136, file: !140, line: 33, type: !6, isLocal: false, isDefinition: true)
!136 = distinct !DICompileUnit(language: DW_LANG_C99, file: !137, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !11, retainedTypes: !138, globals: !139)
!137 = !DIFile(filename: "./lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!138 = !{!22, !21}
!139 = !{!134}
!140 = !DIFile(filename: "lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!141 = !DIGlobalVariableExpression(var: !142)
!142 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !143, file: !185, line: 77, type: !218, isLocal: false, isDefinition: true)
!143 = distinct !DICompileUnit(language: DW_LANG_C99, file: !144, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !145, retainedTypes: !180, globals: !182)
!144 = !DIFile(filename: "./lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!145 = !{!146, !160, !165}
!146 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !147, line: 32, size: 32, elements: !148)
!147 = !DIFile(filename: "./lib/quotearg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!148 = !{!149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159}
!149 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!150 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!151 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!152 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!153 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!154 = !DIEnumerator(name: "c_quoting_style", value: 5)
!155 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!156 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!157 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!158 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!159 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!160 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !147, line: 242, size: 32, elements: !161)
!161 = !{!162, !163, !164}
!162 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!163 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!164 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!165 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !166, line: 46, size: 32, elements: !167)
!166 = !DIFile(filename: "/usr/include/ctype.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!167 = !{!168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179}
!168 = !DIEnumerator(name: "_ISupper", value: 256)
!169 = !DIEnumerator(name: "_ISlower", value: 512)
!170 = !DIEnumerator(name: "_ISalpha", value: 1024)
!171 = !DIEnumerator(name: "_ISdigit", value: 2048)
!172 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!173 = !DIEnumerator(name: "_ISspace", value: 8192)
!174 = !DIEnumerator(name: "_ISprint", value: 16384)
!175 = !DIEnumerator(name: "_ISgraph", value: 32768)
!176 = !DIEnumerator(name: "_ISblank", value: 1)
!177 = !DIEnumerator(name: "_IScntrl", value: 2)
!178 = !DIEnumerator(name: "_ISpunct", value: 4)
!179 = !DIEnumerator(name: "_ISalnum", value: 8)
!180 = !{!29, !181, !13, !21}
!181 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!182 = !{!141, !183, !190, !200, !202, !207, !214, !216}
!183 = !DIGlobalVariableExpression(var: !184)
!184 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !143, file: !185, line: 93, type: !186, isLocal: false, isDefinition: true)
!185 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!186 = !DICompositeType(tag: DW_TAG_array_type, baseType: !187, size: 320, elements: !188)
!187 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !146)
!188 = !{!189}
!189 = !DISubrange(count: 10)
!190 = !DIGlobalVariableExpression(var: !191)
!191 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !143, file: !185, line: 1043, type: !192, isLocal: false, isDefinition: true)
!192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !185, line: 57, size: 448, elements: !193)
!193 = !{!194, !195, !196, !198, !199}
!194 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !192, file: !185, line: 60, baseType: !146, size: 32)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !192, file: !185, line: 63, baseType: !29, size: 32, offset: 32)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !192, file: !185, line: 67, baseType: !197, size: 256, offset: 64)
!197 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 256, elements: !58)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !192, file: !185, line: 70, baseType: !6, size: 64, offset: 320)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !192, file: !185, line: 73, baseType: !6, size: 64, offset: 384)
!200 = !DIGlobalVariableExpression(var: !201)
!201 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !143, file: !185, line: 108, type: !192, isLocal: true, isDefinition: true)
!202 = !DIGlobalVariableExpression(var: !203)
!203 = distinct !DIGlobalVariable(name: "slot0", scope: !143, file: !185, line: 834, type: !204, isLocal: true, isDefinition: true)
!204 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 2048, elements: !205)
!205 = !{!206}
!206 = !DISubrange(count: 256)
!207 = !DIGlobalVariableExpression(var: !208)
!208 = distinct !DIGlobalVariable(name: "slotvec", scope: !143, file: !185, line: 837, type: !209, isLocal: true, isDefinition: true)
!209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 64)
!210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !185, line: 826, size: 128, elements: !211)
!211 = !{!212, !213}
!212 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !210, file: !185, line: 828, baseType: !13, size: 64)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !210, file: !185, line: 829, baseType: !21, size: 64, offset: 64)
!214 = !DIGlobalVariableExpression(var: !215)
!215 = distinct !DIGlobalVariable(name: "nslots", scope: !143, file: !185, line: 835, type: !29, isLocal: true, isDefinition: true)
!216 = !DIGlobalVariableExpression(var: !217)
!217 = distinct !DIGlobalVariable(name: "slotvec0", scope: !143, file: !185, line: 836, type: !210, isLocal: true, isDefinition: true)
!218 = !DICompositeType(tag: DW_TAG_array_type, baseType: !219, size: 704, elements: !220)
!219 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!220 = !{!221}
!221 = !DISubrange(count: 11)
!222 = !DIGlobalVariableExpression(var: !223)
!223 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !224, file: !227, line: 26, type: !228, isLocal: false, isDefinition: true)
!224 = distinct !DICompileUnit(language: DW_LANG_C99, file: !225, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !11, globals: !226)
!225 = !DIFile(filename: "./lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!226 = !{!222}
!227 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!228 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 376, elements: !229)
!229 = !{!230}
!230 = !DISubrange(count: 47)
!231 = !DIGlobalVariableExpression(var: !232)
!232 = distinct !DIGlobalVariable(name: "charset_aliases", scope: !233, file: !577, line: 120, type: !578, isLocal: true, isDefinition: true)
!233 = distinct !DICompileUnit(language: DW_LANG_C99, file: !234, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !235, retainedTypes: !574, globals: !576)
!234 = !DIFile(filename: "./lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!235 = !{!236}
!236 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !237, line: 41, size: 32, elements: !238)
!237 = !DIFile(filename: "/usr/include/langinfo.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!238 = !{!239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573}
!239 = !DIEnumerator(name: "ABDAY_1", value: 131072)
!240 = !DIEnumerator(name: "ABDAY_2", value: 131073)
!241 = !DIEnumerator(name: "ABDAY_3", value: 131074)
!242 = !DIEnumerator(name: "ABDAY_4", value: 131075)
!243 = !DIEnumerator(name: "ABDAY_5", value: 131076)
!244 = !DIEnumerator(name: "ABDAY_6", value: 131077)
!245 = !DIEnumerator(name: "ABDAY_7", value: 131078)
!246 = !DIEnumerator(name: "DAY_1", value: 131079)
!247 = !DIEnumerator(name: "DAY_2", value: 131080)
!248 = !DIEnumerator(name: "DAY_3", value: 131081)
!249 = !DIEnumerator(name: "DAY_4", value: 131082)
!250 = !DIEnumerator(name: "DAY_5", value: 131083)
!251 = !DIEnumerator(name: "DAY_6", value: 131084)
!252 = !DIEnumerator(name: "DAY_7", value: 131085)
!253 = !DIEnumerator(name: "ABMON_1", value: 131086)
!254 = !DIEnumerator(name: "ABMON_2", value: 131087)
!255 = !DIEnumerator(name: "ABMON_3", value: 131088)
!256 = !DIEnumerator(name: "ABMON_4", value: 131089)
!257 = !DIEnumerator(name: "ABMON_5", value: 131090)
!258 = !DIEnumerator(name: "ABMON_6", value: 131091)
!259 = !DIEnumerator(name: "ABMON_7", value: 131092)
!260 = !DIEnumerator(name: "ABMON_8", value: 131093)
!261 = !DIEnumerator(name: "ABMON_9", value: 131094)
!262 = !DIEnumerator(name: "ABMON_10", value: 131095)
!263 = !DIEnumerator(name: "ABMON_11", value: 131096)
!264 = !DIEnumerator(name: "ABMON_12", value: 131097)
!265 = !DIEnumerator(name: "MON_1", value: 131098)
!266 = !DIEnumerator(name: "MON_2", value: 131099)
!267 = !DIEnumerator(name: "MON_3", value: 131100)
!268 = !DIEnumerator(name: "MON_4", value: 131101)
!269 = !DIEnumerator(name: "MON_5", value: 131102)
!270 = !DIEnumerator(name: "MON_6", value: 131103)
!271 = !DIEnumerator(name: "MON_7", value: 131104)
!272 = !DIEnumerator(name: "MON_8", value: 131105)
!273 = !DIEnumerator(name: "MON_9", value: 131106)
!274 = !DIEnumerator(name: "MON_10", value: 131107)
!275 = !DIEnumerator(name: "MON_11", value: 131108)
!276 = !DIEnumerator(name: "MON_12", value: 131109)
!277 = !DIEnumerator(name: "AM_STR", value: 131110)
!278 = !DIEnumerator(name: "PM_STR", value: 131111)
!279 = !DIEnumerator(name: "D_T_FMT", value: 131112)
!280 = !DIEnumerator(name: "D_FMT", value: 131113)
!281 = !DIEnumerator(name: "T_FMT", value: 131114)
!282 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115)
!283 = !DIEnumerator(name: "ERA", value: 131116)
!284 = !DIEnumerator(name: "__ERA_YEAR", value: 131117)
!285 = !DIEnumerator(name: "ERA_D_FMT", value: 131118)
!286 = !DIEnumerator(name: "ALT_DIGITS", value: 131119)
!287 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120)
!288 = !DIEnumerator(name: "ERA_T_FMT", value: 131121)
!289 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122)
!290 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123)
!291 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124)
!292 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125)
!293 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126)
!294 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127)
!295 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128)
!296 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129)
!297 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130)
!298 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131)
!299 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132)
!300 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133)
!301 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134)
!302 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135)
!303 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136)
!304 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137)
!305 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138)
!306 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139)
!307 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140)
!308 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141)
!309 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142)
!310 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143)
!311 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144)
!312 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145)
!313 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146)
!314 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147)
!315 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148)
!316 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149)
!317 = !DIEnumerator(name: "_NL_WMON_1", value: 131150)
!318 = !DIEnumerator(name: "_NL_WMON_2", value: 131151)
!319 = !DIEnumerator(name: "_NL_WMON_3", value: 131152)
!320 = !DIEnumerator(name: "_NL_WMON_4", value: 131153)
!321 = !DIEnumerator(name: "_NL_WMON_5", value: 131154)
!322 = !DIEnumerator(name: "_NL_WMON_6", value: 131155)
!323 = !DIEnumerator(name: "_NL_WMON_7", value: 131156)
!324 = !DIEnumerator(name: "_NL_WMON_8", value: 131157)
!325 = !DIEnumerator(name: "_NL_WMON_9", value: 131158)
!326 = !DIEnumerator(name: "_NL_WMON_10", value: 131159)
!327 = !DIEnumerator(name: "_NL_WMON_11", value: 131160)
!328 = !DIEnumerator(name: "_NL_WMON_12", value: 131161)
!329 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162)
!330 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163)
!331 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164)
!332 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165)
!333 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166)
!334 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167)
!335 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168)
!336 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169)
!337 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170)
!338 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171)
!339 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172)
!340 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173)
!341 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174)
!342 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175)
!343 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176)
!344 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177)
!345 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178)
!346 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179)
!347 = !DIEnumerator(name: "_DATE_FMT", value: 131180)
!348 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181)
!349 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182)
!350 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131183)
!351 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608)
!352 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609)
!353 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610)
!354 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611)
!355 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612)
!356 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613)
!357 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614)
!358 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615)
!359 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616)
!360 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617)
!361 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618)
!362 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619)
!363 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620)
!364 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621)
!365 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622)
!366 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623)
!367 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624)
!368 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625)
!369 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626)
!370 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627)
!371 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0)
!372 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1)
!373 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2)
!374 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3)
!375 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4)
!376 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5)
!377 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6)
!378 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7)
!379 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8)
!380 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9)
!381 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10)
!382 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11)
!383 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12)
!384 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13)
!385 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14)
!386 = !DIEnumerator(name: "CODESET", value: 14)
!387 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15)
!388 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16)
!389 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17)
!390 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18)
!391 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19)
!392 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20)
!393 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21)
!394 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22)
!395 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23)
!396 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24)
!397 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25)
!398 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26)
!399 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27)
!400 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28)
!401 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29)
!402 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30)
!403 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31)
!404 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32)
!405 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33)
!406 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34)
!407 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35)
!408 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36)
!409 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37)
!410 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38)
!411 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39)
!412 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40)
!413 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41)
!414 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42)
!415 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43)
!416 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44)
!417 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45)
!418 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46)
!419 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47)
!420 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48)
!421 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49)
!422 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50)
!423 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51)
!424 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52)
!425 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53)
!426 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54)
!427 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55)
!428 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56)
!429 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57)
!430 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58)
!431 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59)
!432 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60)
!433 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61)
!434 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62)
!435 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63)
!436 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64)
!437 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65)
!438 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66)
!439 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67)
!440 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68)
!441 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69)
!442 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70)
!443 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71)
!444 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72)
!445 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73)
!446 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74)
!447 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75)
!448 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76)
!449 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77)
!450 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78)
!451 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79)
!452 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80)
!453 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81)
!454 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82)
!455 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83)
!456 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84)
!457 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85)
!458 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86)
!459 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144)
!460 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145)
!461 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146)
!462 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147)
!463 = !DIEnumerator(name: "__MON_GROUPING", value: 262148)
!464 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149)
!465 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150)
!466 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151)
!467 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152)
!468 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153)
!469 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154)
!470 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155)
!471 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156)
!472 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157)
!473 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158)
!474 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159)
!475 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160)
!476 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161)
!477 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162)
!478 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163)
!479 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164)
!480 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165)
!481 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166)
!482 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167)
!483 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168)
!484 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169)
!485 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170)
!486 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171)
!487 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172)
!488 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173)
!489 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174)
!490 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175)
!491 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176)
!492 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177)
!493 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178)
!494 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179)
!495 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180)
!496 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181)
!497 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182)
!498 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183)
!499 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184)
!500 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185)
!501 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186)
!502 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187)
!503 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188)
!504 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189)
!505 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190)
!506 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536)
!507 = !DIEnumerator(name: "RADIXCHAR", value: 65536)
!508 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537)
!509 = !DIEnumerator(name: "THOUSEP", value: 65537)
!510 = !DIEnumerator(name: "__GROUPING", value: 65538)
!511 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539)
!512 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540)
!513 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541)
!514 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542)
!515 = !DIEnumerator(name: "__YESEXPR", value: 327680)
!516 = !DIEnumerator(name: "__NOEXPR", value: 327681)
!517 = !DIEnumerator(name: "__YESSTR", value: 327682)
!518 = !DIEnumerator(name: "__NOSTR", value: 327683)
!519 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684)
!520 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685)
!521 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752)
!522 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753)
!523 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754)
!524 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755)
!525 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288)
!526 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289)
!527 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290)
!528 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291)
!529 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292)
!530 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293)
!531 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294)
!532 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295)
!533 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824)
!534 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825)
!535 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826)
!536 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827)
!537 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828)
!538 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829)
!539 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830)
!540 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831)
!541 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832)
!542 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833)
!543 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834)
!544 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835)
!545 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836)
!546 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837)
!547 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360)
!548 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361)
!549 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362)
!550 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363)
!551 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364)
!552 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365)
!553 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896)
!554 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897)
!555 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898)
!556 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432)
!557 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433)
!558 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434)
!559 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435)
!560 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436)
!561 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437)
!562 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438)
!563 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439)
!564 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440)
!565 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441)
!566 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442)
!567 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443)
!568 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444)
!569 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445)
!570 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446)
!571 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447)
!572 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448)
!573 = !DIEnumerator(name: "_NL_NUM", value: 786449)
!574 = !{!22, !21, !575}
!575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!576 = !{!231}
!577 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!578 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !6)
!579 = distinct !DICompileUnit(language: DW_LANG_C99, file: !580, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !581, retainedTypes: !586)
!580 = !DIFile(filename: "./lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!581 = !{!582}
!582 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !583, line: 41, size: 32, elements: !584)
!583 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!584 = !{!585}
!585 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2017)
!586 = !{!22}
!587 = distinct !DICompileUnit(language: DW_LANG_C99, file: !588, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !589, retainedTypes: !603)
!588 = !DIFile(filename: "./lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!589 = !{!590}
!590 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !592, file: !591, line: 192, size: 32, elements: !601)
!591 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!592 = distinct !DISubprogram(name: "x2nrealloc", scope: !591, file: !591, line: 180, type: !593, isLocal: false, isDefinition: true, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: true, unit: !587, variables: !596)
!593 = !DISubroutineType(types: !594)
!594 = !{!22, !22, !595, !13}
!595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!596 = !{!597, !598, !599, !600}
!597 = !DILocalVariable(name: "p", arg: 1, scope: !592, file: !591, line: 180, type: !22)
!598 = !DILocalVariable(name: "pn", arg: 2, scope: !592, file: !591, line: 180, type: !595)
!599 = !DILocalVariable(name: "s", arg: 3, scope: !592, file: !591, line: 180, type: !13)
!600 = !DILocalVariable(name: "n", scope: !592, file: !591, line: 182, type: !13)
!601 = !{!602}
!602 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!603 = !{!13, !21, !22}
!604 = distinct !DICompileUnit(language: DW_LANG_C99, file: !605, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !11)
!605 = !DIFile(filename: "./lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!606 = distinct !DICompileUnit(language: DW_LANG_C99, file: !607, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !11, retainedTypes: !586)
!607 = !DIFile(filename: "./lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!608 = distinct !DICompileUnit(language: DW_LANG_C99, file: !609, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !11, retainedTypes: !610)
!609 = !DIFile(filename: "./lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!610 = !{!13}
!611 = distinct !DICompileUnit(language: DW_LANG_C99, file: !612, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !11)
!612 = !DIFile(filename: "./lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!613 = distinct !DICompileUnit(language: DW_LANG_C99, file: !614, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !11, retainedTypes: !615)
!614 = !DIFile(filename: "./lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!615 = !{!13, !16, !18, !6}
!616 = distinct !DICompileUnit(language: DW_LANG_C99, file: !617, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !11)
!617 = !DIFile(filename: "./lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!618 = distinct !DICompileUnit(language: DW_LANG_C99, file: !619, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !11, retainedTypes: !586)
!619 = !DIFile(filename: "./lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!620 = distinct !DICompileUnit(language: DW_LANG_C99, file: !621, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !11, retainedTypes: !586)
!621 = !DIFile(filename: "./lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!622 = !{!"clang version 4.0.1 (tags/RELEASE_401/final)"}
!623 = !{i32 2, !"Dwarf Version", i32 4}
!624 = !{i32 2, !"Debug Info Version", i32 3}
!625 = !{i32 1, !"PIC Level", i32 2}
!626 = !{i32 1, !"PIE Level", i32 2}
!627 = distinct !DISubprogram(name: "usage", scope: !10, file: !10, line: 115, type: !628, isLocal: false, isDefinition: true, scopeLine: 116, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !9, variables: !630)
!628 = !DISubroutineType(types: !629)
!629 = !{null, !29}
!630 = !{!631}
!631 = !DILocalVariable(name: "status", arg: 1, scope: !627, file: !10, line: 115, type: !29)
!632 = !DIExpression()
!633 = !DILocation(line: 115, column: 12, scope: !627)
!634 = !DILocation(line: 117, column: 14, scope: !635)
!635 = distinct !DILexicalBlock(scope: !627, file: !10, line: 117, column: 7)
!636 = !DILocation(line: 117, column: 7, scope: !627)
!637 = !DILocation(line: 118, column: 5, scope: !638)
!638 = !DILexicalBlockFile(scope: !639, file: !10, discriminator: 1)
!639 = distinct !DILexicalBlock(scope: !635, file: !10, line: 118, column: 5)
!640 = !{!641, !641, i64 0}
!641 = !{!"any pointer", !642, i64 0}
!642 = !{!"omnipotent char", !643, i64 0}
!643 = !{!"Simple C/C++ TBAA"}
!644 = !DILocation(line: 118, column: 5, scope: !645)
!645 = !DILexicalBlockFile(scope: !639, file: !10, discriminator: 3)
!646 = !DILocation(line: 118, column: 5, scope: !647)
!647 = !DILexicalBlockFile(scope: !639, file: !10, discriminator: 2)
!648 = !DILocation(line: 121, column: 7, scope: !649)
!649 = distinct !DILexicalBlock(scope: !635, file: !10, line: 120, column: 5)
!650 = !DILocation(line: 121, column: 7, scope: !651)
!651 = !DILexicalBlockFile(scope: !649, file: !10, discriminator: 1)
!652 = !DILocation(line: 123, column: 11, scope: !653)
!653 = distinct !DILexicalBlock(scope: !649, file: !10, line: 123, column: 11)
!654 = !{!655, !655, i64 0}
!655 = !{!"int", !642, i64 0}
!656 = !DILocation(line: 123, column: 22, scope: !653)
!657 = !DILocation(line: 123, column: 11, scope: !649)
!658 = !DILocation(line: 125, column: 11, scope: !659)
!659 = distinct !DILexicalBlock(scope: !653, file: !10, line: 124, column: 9)
!660 = !DILocation(line: 125, column: 11, scope: !661)
!661 = !DILexicalBlockFile(scope: !659, file: !10, discriminator: 1)
!662 = !DILocation(line: 134, column: 11, scope: !659)
!663 = !DILocation(line: 134, column: 11, scope: !661)
!664 = !DILocation(line: 141, column: 9, scope: !659)
!665 = !DILocation(line: 144, column: 11, scope: !666)
!666 = distinct !DILexicalBlock(scope: !653, file: !10, line: 143, column: 9)
!667 = !DILocation(line: 144, column: 11, scope: !668)
!668 = !DILexicalBlockFile(scope: !666, file: !10, discriminator: 1)
!669 = !DILocation(line: 150, column: 7, scope: !649)
!670 = !DILocation(line: 150, column: 7, scope: !651)
!671 = !DILocation(line: 151, column: 7, scope: !649)
!672 = !DILocation(line: 151, column: 7, scope: !651)
!673 = !DILocation(line: 152, column: 28, scope: !649)
!674 = !DILocation(line: 630, column: 34, scope: !2, inlinedAt: !675)
!675 = distinct !DILocation(line: 152, column: 7, scope: !649)
!676 = !DILocation(line: 642, column: 15, scope: !2, inlinedAt: !675)
!677 = !DILocation(line: 643, column: 25, scope: !2, inlinedAt: !675)
!678 = !DILocation(line: 645, column: 33, scope: !679, inlinedAt: !675)
!679 = !DILexicalBlockFile(scope: !96, file: !3, discriminator: 2)
!680 = !DILocation(line: 645, column: 31, scope: !681, inlinedAt: !675)
!681 = !DILexicalBlockFile(scope: !2, file: !3, discriminator: 2)
!682 = !DILocation(line: 645, column: 3, scope: !683, inlinedAt: !675)
!683 = !DILexicalBlockFile(scope: !2, file: !3, discriminator: 3)
!684 = !DILocation(line: 648, column: 17, scope: !685, inlinedAt: !675)
!685 = distinct !DILexicalBlock(scope: !2, file: !3, line: 648, column: 7)
!686 = !{!687, !641, i64 8}
!687 = !{!"infomap", !641, i64 0, !641, i64 8}
!688 = !DILocation(line: 648, column: 7, scope: !685, inlinedAt: !675)
!689 = !DILocation(line: 648, column: 7, scope: !2, inlinedAt: !675)
!690 = !DILocation(line: 651, column: 3, scope: !2, inlinedAt: !675)
!691 = !DILocation(line: 651, column: 3, scope: !692, inlinedAt: !675)
!692 = !DILexicalBlockFile(scope: !2, file: !3, discriminator: 1)
!693 = !DILocation(line: 655, column: 29, scope: !2, inlinedAt: !675)
!694 = !DILocation(line: 655, column: 15, scope: !2, inlinedAt: !675)
!695 = !DILocation(line: 656, column: 7, scope: !101, inlinedAt: !675)
!696 = !DILocation(line: 656, column: 19, scope: !101, inlinedAt: !675)
!697 = !DILocation(line: 656, column: 22, scope: !698, inlinedAt: !675)
!698 = !DILexicalBlockFile(scope: !101, file: !3, discriminator: 16)
!699 = !DILocation(line: 656, column: 7, scope: !700, inlinedAt: !675)
!700 = !DILexicalBlockFile(scope: !2, file: !3, discriminator: 16)
!701 = !DILocation(line: 662, column: 7, scope: !702, inlinedAt: !675)
!702 = distinct !DILexicalBlock(scope: !101, file: !3, line: 657, column: 5)
!703 = !DILocation(line: 662, column: 7, scope: !704, inlinedAt: !675)
!704 = !DILexicalBlockFile(scope: !702, file: !3, discriminator: 1)
!705 = !DILocation(line: 664, column: 5, scope: !702, inlinedAt: !675)
!706 = !DILocation(line: 665, column: 3, scope: !2, inlinedAt: !675)
!707 = !DILocation(line: 665, column: 3, scope: !692, inlinedAt: !675)
!708 = !DILocation(line: 667, column: 3, scope: !2, inlinedAt: !675)
!709 = !DILocation(line: 667, column: 3, scope: !692, inlinedAt: !675)
!710 = !DILocation(line: 154, column: 3, scope: !627)
!711 = !DILocation(line: 260, column: 11, scope: !26)
!712 = !DILocation(line: 260, column: 24, scope: !26)
!713 = !DILocation(line: 265, column: 16, scope: !26)
!714 = !DILocation(line: 268, column: 21, scope: !26)
!715 = !DILocation(line: 268, column: 3, scope: !26)
!716 = !DILocation(line: 269, column: 3, scope: !26)
!717 = !DILocation(line: 270, column: 3, scope: !26)
!718 = !DILocation(line: 271, column: 3, scope: !26)
!719 = !DILocation(line: 273, column: 3, scope: !26)
!720 = !DILocalVariable(name: "argc", arg: 1, scope: !721, file: !10, line: 175, type: !29)
!721 = distinct !DISubprogram(name: "decode_switches", scope: !10, file: !10, line: 175, type: !27, isLocal: true, isDefinition: true, scopeLine: 176, flags: DIFlagPrototyped, isOptimized: true, unit: !9, variables: !722)
!722 = !{!720, !723, !724, !725}
!723 = !DILocalVariable(name: "argv", arg: 2, scope: !721, file: !10, line: 175, type: !30)
!724 = !DILocalVariable(name: "c", scope: !721, file: !10, line: 177, type: !29)
!725 = !DILocalVariable(name: "toprint", scope: !721, file: !10, line: 178, type: !35)
!726 = !DILocation(line: 175, column: 22, scope: !721, inlinedAt: !727)
!727 = distinct !DILocation(line: 275, column: 13, scope: !26)
!728 = !DILocation(line: 175, column: 35, scope: !721, inlinedAt: !727)
!729 = !DILocation(line: 178, column: 16, scope: !721, inlinedAt: !727)
!730 = !DILocation(line: 180, column: 7, scope: !731, inlinedAt: !727)
!731 = distinct !DILexicalBlock(scope: !721, file: !10, line: 180, column: 7)
!732 = !DILocation(line: 180, column: 18, scope: !731, inlinedAt: !727)
!733 = !DILocation(line: 180, column: 7, scope: !721, inlinedAt: !727)
!734 = !DILocation(line: 182, column: 19, scope: !735, inlinedAt: !727)
!735 = !DILexicalBlockFile(scope: !736, file: !10, discriminator: 1)
!736 = distinct !DILexicalBlock(scope: !731, file: !10, line: 181, column: 5)
!737 = !DILocation(line: 177, column: 7, scope: !721, inlinedAt: !727)
!738 = !DILocation(line: 182, column: 7, scope: !735, inlinedAt: !727)
!739 = !DILocation(line: 187, column: 13, scope: !740, inlinedAt: !727)
!740 = distinct !DILexicalBlock(scope: !741, file: !10, line: 186, column: 13)
!741 = distinct !DILexicalBlock(scope: !736, file: !10, line: 184, column: 9)
!742 = !DILocation(line: 189, column: 13, scope: !740, inlinedAt: !727)
!743 = !DILocation(line: 189, column: 13, scope: !744, inlinedAt: !727)
!744 = !DILexicalBlockFile(scope: !740, file: !10, discriminator: 1)
!745 = !DILocation(line: 192, column: 15, scope: !740, inlinedAt: !727)
!746 = !DILocation(line: 199, column: 19, scope: !747, inlinedAt: !727)
!747 = !DILexicalBlockFile(scope: !748, file: !10, discriminator: 1)
!748 = distinct !DILexicalBlock(scope: !731, file: !10, line: 198, column: 5)
!749 = !DILocation(line: 199, column: 7, scope: !747, inlinedAt: !727)
!750 = distinct !{!750, !751, !752}
!751 = !DILocation(line: 199, column: 7, scope: !748)
!752 = !DILocation(line: 247, column: 9, scope: !748)
!753 = !DILocation(line: 209, column: 23, scope: !754, inlinedAt: !727)
!754 = distinct !DILexicalBlock(scope: !755, file: !10, line: 203, column: 13)
!755 = distinct !DILexicalBlock(scope: !748, file: !10, line: 201, column: 9)
!756 = !DILocation(line: 210, column: 15, scope: !754, inlinedAt: !727)
!757 = !DILocation(line: 213, column: 23, scope: !754, inlinedAt: !727)
!758 = !DILocation(line: 214, column: 15, scope: !754, inlinedAt: !727)
!759 = !DILocation(line: 217, column: 23, scope: !754, inlinedAt: !727)
!760 = !DILocation(line: 218, column: 15, scope: !754, inlinedAt: !727)
!761 = !DILocation(line: 221, column: 23, scope: !754, inlinedAt: !727)
!762 = !DILocation(line: 222, column: 15, scope: !754, inlinedAt: !727)
!763 = !DILocation(line: 225, column: 23, scope: !754, inlinedAt: !727)
!764 = !DILocation(line: 226, column: 15, scope: !754, inlinedAt: !727)
!765 = !DILocation(line: 229, column: 23, scope: !754, inlinedAt: !727)
!766 = !DILocation(line: 230, column: 15, scope: !754, inlinedAt: !727)
!767 = !DILocation(line: 233, column: 23, scope: !754, inlinedAt: !727)
!768 = !DILocation(line: 234, column: 15, scope: !754, inlinedAt: !727)
!769 = !DILocation(line: 237, column: 23, scope: !754, inlinedAt: !727)
!770 = !DILocation(line: 238, column: 15, scope: !754, inlinedAt: !727)
!771 = !DILocation(line: 240, column: 13, scope: !754, inlinedAt: !727)
!772 = !DILocation(line: 242, column: 13, scope: !754, inlinedAt: !727)
!773 = !DILocation(line: 242, column: 13, scope: !774, inlinedAt: !727)
!774 = !DILexicalBlockFile(scope: !754, file: !10, discriminator: 1)
!775 = !DILocation(line: 245, column: 15, scope: !754, inlinedAt: !727)
!776 = !DILocation(line: 250, column: 15, scope: !777, inlinedAt: !727)
!777 = distinct !DILexicalBlock(scope: !721, file: !10, line: 250, column: 7)
!778 = !DILocation(line: 250, column: 12, scope: !777, inlinedAt: !727)
!779 = !DILocation(line: 250, column: 7, scope: !721, inlinedAt: !727)
!780 = !DILocation(line: 252, column: 20, scope: !781, inlinedAt: !727)
!781 = distinct !DILexicalBlock(scope: !777, file: !10, line: 251, column: 5)
!782 = !DILocation(line: 252, column: 55, scope: !781, inlinedAt: !727)
!783 = !DILocation(line: 252, column: 50, scope: !781, inlinedAt: !727)
!784 = !DILocation(line: 252, column: 43, scope: !785, inlinedAt: !727)
!785 = !DILexicalBlockFile(scope: !781, file: !10, discriminator: 1)
!786 = !DILocation(line: 252, column: 7, scope: !787, inlinedAt: !727)
!787 = !DILexicalBlockFile(scope: !781, file: !10, discriminator: 2)
!788 = !DILocation(line: 253, column: 7, scope: !781, inlinedAt: !727)
!789 = !DILocation(line: 277, column: 15, scope: !790)
!790 = distinct !DILexicalBlock(scope: !26, file: !10, line: 277, column: 7)
!791 = !DILocation(line: 277, column: 7, scope: !26)
!792 = !DILocation(line: 281, column: 8, scope: !38)
!793 = !DILocation(line: 280, column: 7, scope: !26)
!794 = !DILocation(line: 284, column: 7, scope: !37)
!795 = !DIExpression(DW_OP_deref)
!796 = !DILocation(line: 284, column: 22, scope: !37)
!797 = !DILocation(line: 286, column: 11, scope: !798)
!798 = distinct !DILexicalBlock(scope: !37, file: !10, line: 286, column: 11)
!799 = !DILocation(line: 286, column: 25, scope: !798)
!800 = !DILocation(line: 286, column: 11, scope: !37)
!801 = !DILocation(line: 287, column: 9, scope: !798)
!802 = !DILocation(line: 287, column: 9, scope: !803)
!803 = !DILexicalBlockFile(scope: !798, file: !10, discriminator: 1)
!804 = !DILocation(line: 287, column: 9, scope: !805)
!805 = !DILexicalBlockFile(scope: !798, file: !10, discriminator: 2)
!806 = !DILocation(line: 289, column: 19, scope: !807)
!807 = distinct !DILexicalBlock(scope: !37, file: !10, line: 289, column: 11)
!808 = !DILocation(line: 289, column: 11, scope: !37)
!809 = !DILocation(line: 161, column: 28, scope: !81, inlinedAt: !810)
!810 = distinct !DILocation(line: 290, column: 9, scope: !807)
!811 = !DILocation(line: 164, column: 7, scope: !81, inlinedAt: !810)
!812 = !DILocalVariable(name: "__c", arg: 1, scope: !813, file: !814, line: 105, type: !29)
!813 = distinct !DISubprogram(name: "putchar_unlocked", scope: !814, file: !814, line: 105, type: !815, isLocal: false, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: true, unit: !9, variables: !817)
!814 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!815 = !DISubroutineType(types: !816)
!816 = !{!29, !29}
!817 = !{!812}
!818 = !DILocation(line: 105, column: 23, scope: !813, inlinedAt: !819)
!819 = distinct !DILocation(line: 165, column: 5, scope: !820, inlinedAt: !810)
!820 = distinct !DILexicalBlock(scope: !81, file: !10, line: 164, column: 7)
!821 = !DILocation(line: 107, column: 10, scope: !813, inlinedAt: !819)
!822 = !{!823, !641, i64 40}
!823 = !{!"_IO_FILE", !655, i64 0, !641, i64 8, !641, i64 16, !641, i64 24, !641, i64 32, !641, i64 40, !641, i64 48, !641, i64 56, !641, i64 64, !641, i64 72, !641, i64 80, !641, i64 88, !641, i64 96, !641, i64 104, !655, i64 112, !655, i64 116, !824, i64 120, !825, i64 128, !642, i64 130, !642, i64 131, !641, i64 136, !824, i64 144, !641, i64 152, !641, i64 160, !641, i64 168, !641, i64 176, !824, i64 184, !655, i64 192, !642, i64 196}
!824 = !{!"long", !642, i64 0}
!825 = !{!"short", !642, i64 0}
!826 = !{!823, !641, i64 48}
!827 = !{!"branch_weights", i32 2000, i32 1}
!828 = !DILocation(line: 107, column: 10, scope: !829, inlinedAt: !819)
!829 = !DILexicalBlockFile(scope: !813, file: !814, discriminator: 1)
!830 = !DILocation(line: 107, column: 10, scope: !831, inlinedAt: !819)
!831 = !DILexicalBlockFile(scope: !813, file: !814, discriminator: 2)
!832 = !{!642, !642, i64 0}
!833 = !DILocation(line: 167, column: 3, scope: !81, inlinedAt: !810)
!834 = !DILocation(line: 290, column: 9, scope: !807)
!835 = !DILocation(line: 291, column: 19, scope: !836)
!836 = distinct !DILexicalBlock(scope: !37, file: !10, line: 291, column: 11)
!837 = !DILocation(line: 291, column: 11, scope: !37)
!838 = !DILocation(line: 292, column: 24, scope: !836)
!839 = !DILocation(line: 161, column: 28, scope: !81, inlinedAt: !840)
!840 = distinct !DILocation(line: 292, column: 9, scope: !836)
!841 = !DILocation(line: 164, column: 7, scope: !81, inlinedAt: !840)
!842 = !DILocation(line: 105, column: 23, scope: !813, inlinedAt: !843)
!843 = distinct !DILocation(line: 165, column: 5, scope: !820, inlinedAt: !840)
!844 = !DILocation(line: 107, column: 10, scope: !813, inlinedAt: !843)
!845 = !DILocation(line: 107, column: 10, scope: !829, inlinedAt: !843)
!846 = !DILocation(line: 107, column: 10, scope: !831, inlinedAt: !843)
!847 = !DILocation(line: 167, column: 3, scope: !81, inlinedAt: !840)
!848 = !DILocation(line: 292, column: 9, scope: !836)
!849 = !DILocation(line: 293, column: 19, scope: !850)
!850 = distinct !DILexicalBlock(scope: !37, file: !10, line: 293, column: 11)
!851 = !DILocation(line: 293, column: 11, scope: !37)
!852 = !DILocation(line: 294, column: 24, scope: !850)
!853 = !DILocation(line: 161, column: 28, scope: !81, inlinedAt: !854)
!854 = distinct !DILocation(line: 294, column: 9, scope: !850)
!855 = !DILocation(line: 164, column: 7, scope: !81, inlinedAt: !854)
!856 = !DILocation(line: 105, column: 23, scope: !813, inlinedAt: !857)
!857 = distinct !DILocation(line: 165, column: 5, scope: !820, inlinedAt: !854)
!858 = !DILocation(line: 107, column: 10, scope: !813, inlinedAt: !857)
!859 = !DILocation(line: 107, column: 10, scope: !829, inlinedAt: !857)
!860 = !DILocation(line: 107, column: 10, scope: !831, inlinedAt: !857)
!861 = !DILocation(line: 167, column: 3, scope: !81, inlinedAt: !854)
!862 = !DILocation(line: 294, column: 9, scope: !850)
!863 = !DILocation(line: 295, column: 19, scope: !864)
!864 = distinct !DILexicalBlock(scope: !37, file: !10, line: 295, column: 11)
!865 = !DILocation(line: 295, column: 11, scope: !37)
!866 = !DILocation(line: 296, column: 24, scope: !864)
!867 = !DILocation(line: 161, column: 28, scope: !81, inlinedAt: !868)
!868 = distinct !DILocation(line: 296, column: 9, scope: !864)
!869 = !DILocation(line: 164, column: 7, scope: !81, inlinedAt: !868)
!870 = !DILocation(line: 105, column: 23, scope: !813, inlinedAt: !871)
!871 = distinct !DILocation(line: 165, column: 5, scope: !820, inlinedAt: !868)
!872 = !DILocation(line: 107, column: 10, scope: !813, inlinedAt: !871)
!873 = !DILocation(line: 107, column: 10, scope: !829, inlinedAt: !871)
!874 = !DILocation(line: 107, column: 10, scope: !831, inlinedAt: !871)
!875 = !DILocation(line: 167, column: 3, scope: !81, inlinedAt: !868)
!876 = !DILocation(line: 296, column: 9, scope: !864)
!877 = !DILocation(line: 297, column: 19, scope: !878)
!878 = distinct !DILexicalBlock(scope: !37, file: !10, line: 297, column: 11)
!879 = !DILocation(line: 297, column: 11, scope: !37)
!880 = !DILocation(line: 298, column: 24, scope: !878)
!881 = !DILocation(line: 161, column: 28, scope: !81, inlinedAt: !882)
!882 = distinct !DILocation(line: 298, column: 9, scope: !878)
!883 = !DILocation(line: 164, column: 7, scope: !81, inlinedAt: !882)
!884 = !DILocation(line: 105, column: 23, scope: !813, inlinedAt: !885)
!885 = distinct !DILocation(line: 165, column: 5, scope: !820, inlinedAt: !882)
!886 = !DILocation(line: 107, column: 10, scope: !813, inlinedAt: !885)
!887 = !DILocation(line: 107, column: 10, scope: !829, inlinedAt: !885)
!888 = !DILocation(line: 107, column: 10, scope: !831, inlinedAt: !885)
!889 = !DILocation(line: 167, column: 3, scope: !81, inlinedAt: !882)
!890 = !DILocation(line: 298, column: 9, scope: !878)
!891 = !DILocation(line: 299, column: 5, scope: !38)
!892 = !DILocation(line: 299, column: 5, scope: !37)
!893 = !DILocation(line: 301, column: 15, scope: !53)
!894 = !DILocation(line: 341, column: 22, scope: !895)
!895 = distinct !DILexicalBlock(scope: !52, file: !10, line: 341, column: 11)
!896 = !DILocation(line: 301, column: 7, scope: !26)
!897 = !DILocation(line: 161, column: 28, scope: !81, inlinedAt: !898)
!898 = distinct !DILocation(line: 342, column: 9, scope: !895)
!899 = !DILocation(line: 164, column: 7, scope: !81, inlinedAt: !898)
!900 = !DILocation(line: 105, column: 23, scope: !813, inlinedAt: !901)
!901 = distinct !DILocation(line: 165, column: 5, scope: !820, inlinedAt: !898)
!902 = !DILocation(line: 107, column: 10, scope: !813, inlinedAt: !901)
!903 = !DILocation(line: 107, column: 10, scope: !829, inlinedAt: !901)
!904 = !DILocation(line: 107, column: 10, scope: !831, inlinedAt: !901)
!905 = !DILocation(line: 167, column: 3, scope: !81, inlinedAt: !898)
!906 = !DILocation(line: 342, column: 9, scope: !895)
!907 = !DILocation(line: 345, column: 15, scope: !56)
!908 = !DILocation(line: 345, column: 7, scope: !26)
!909 = !DILocation(line: 161, column: 28, scope: !81, inlinedAt: !910)
!910 = distinct !DILocation(line: 367, column: 9, scope: !911)
!911 = distinct !DILexicalBlock(scope: !55, file: !10, line: 366, column: 11)
!912 = !DILocation(line: 164, column: 7, scope: !81, inlinedAt: !910)
!913 = !DILocation(line: 105, column: 23, scope: !813, inlinedAt: !914)
!914 = distinct !DILocation(line: 165, column: 5, scope: !820, inlinedAt: !910)
!915 = !DILocation(line: 107, column: 10, scope: !813, inlinedAt: !914)
!916 = !DILocation(line: 107, column: 10, scope: !829, inlinedAt: !914)
!917 = !DILocation(line: 107, column: 10, scope: !831, inlinedAt: !914)
!918 = !DILocation(line: 167, column: 3, scope: !81, inlinedAt: !910)
!919 = !DILocation(line: 367, column: 9, scope: !911)
!920 = !DILocation(line: 370, column: 15, scope: !921)
!921 = distinct !DILexicalBlock(scope: !26, file: !10, line: 370, column: 7)
!922 = !DILocation(line: 370, column: 7, scope: !26)
!923 = !DILocation(line: 161, column: 28, scope: !81, inlinedAt: !924)
!924 = distinct !DILocation(line: 371, column: 5, scope: !921)
!925 = !DILocation(line: 164, column: 7, scope: !81, inlinedAt: !924)
!926 = !DILocation(line: 105, column: 23, scope: !813, inlinedAt: !927)
!927 = distinct !DILocation(line: 165, column: 5, scope: !820, inlinedAt: !924)
!928 = !DILocation(line: 107, column: 10, scope: !813, inlinedAt: !927)
!929 = !DILocation(line: 107, column: 10, scope: !829, inlinedAt: !927)
!930 = !DILocation(line: 107, column: 10, scope: !831, inlinedAt: !927)
!931 = !DILocation(line: 167, column: 3, scope: !81, inlinedAt: !924)
!932 = !DILocation(line: 371, column: 5, scope: !921)
!933 = !DILocation(line: 105, column: 23, scope: !813, inlinedAt: !934)
!934 = distinct !DILocation(line: 373, column: 3, scope: !26)
!935 = !DILocation(line: 107, column: 10, scope: !813, inlinedAt: !934)
!936 = !DILocation(line: 107, column: 10, scope: !829, inlinedAt: !934)
!937 = !DILocation(line: 107, column: 10, scope: !831, inlinedAt: !934)
!938 = !DILocation(line: 375, column: 3, scope: !26)
!939 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !126, file: !126, line: 41, type: !4, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !121, variables: !940)
!940 = !{!941}
!941 = !DILocalVariable(name: "file", arg: 1, scope: !939, file: !126, line: 41, type: !6)
!942 = !DILocation(line: 41, column: 41, scope: !939)
!943 = !DILocation(line: 43, column: 13, scope: !939)
!944 = !DILocation(line: 44, column: 1, scope: !939)
!945 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !126, file: !126, line: 78, type: !946, isLocal: false, isDefinition: true, scopeLine: 79, flags: DIFlagPrototyped, isOptimized: true, unit: !121, variables: !948)
!946 = !DISubroutineType(types: !947)
!947 = !{null, !84}
!948 = !{!949}
!949 = !DILocalVariable(name: "ignore", arg: 1, scope: !945, file: !126, line: 78, type: !84)
!950 = !DIExpression(DW_OP_LLVM_fragment, 0, 1)
!951 = !DILocation(line: 78, column: 37, scope: !945)
!952 = !DILocation(line: 80, column: 16, scope: !945)
!953 = !{!954, !954, i64 0}
!954 = !{!"_Bool", !642, i64 0}
!955 = !DILocation(line: 81, column: 1, scope: !945)
!956 = distinct !DISubprogram(name: "close_stdout", scope: !126, file: !126, line: 107, type: !957, isLocal: false, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: true, unit: !121, variables: !959)
!957 = !DISubroutineType(types: !958)
!958 = !{null}
!959 = !{!960}
!960 = !DILocalVariable(name: "write_error", scope: !961, file: !126, line: 112, type: !6)
!961 = distinct !DILexicalBlock(scope: !962, file: !126, line: 111, column: 5)
!962 = distinct !DILexicalBlock(scope: !956, file: !126, line: 109, column: 7)
!963 = !DILocation(line: 109, column: 21, scope: !962)
!964 = !DILocation(line: 109, column: 7, scope: !962)
!965 = !DILocation(line: 109, column: 29, scope: !962)
!966 = !DILocation(line: 110, column: 7, scope: !962)
!967 = !DILocation(line: 110, column: 12, scope: !968)
!968 = !DILexicalBlockFile(scope: !962, file: !126, discriminator: 1)
!969 = !{i8 0, i8 2}
!970 = !DILocation(line: 114, column: 19, scope: !971)
!971 = distinct !DILexicalBlock(scope: !961, file: !126, line: 113, column: 11)
!972 = !DILocation(line: 110, column: 25, scope: !968)
!973 = !DILocation(line: 110, column: 28, scope: !974)
!974 = !DILexicalBlockFile(scope: !962, file: !126, discriminator: 2)
!975 = !DILocation(line: 110, column: 34, scope: !974)
!976 = !DILocation(line: 109, column: 7, scope: !977)
!977 = !DILexicalBlockFile(scope: !956, file: !126, discriminator: 1)
!978 = !DILocation(line: 112, column: 33, scope: !961)
!979 = !DILocation(line: 112, column: 19, scope: !961)
!980 = !DILocation(line: 113, column: 11, scope: !971)
!981 = !DILocation(line: 113, column: 11, scope: !961)
!982 = !DILocation(line: 114, column: 36, scope: !983)
!983 = !DILexicalBlockFile(scope: !971, file: !126, discriminator: 1)
!984 = !DILocation(line: 114, column: 9, scope: !985)
!985 = !DILexicalBlockFile(scope: !971, file: !126, discriminator: 2)
!986 = !DILocation(line: 114, column: 9, scope: !971)
!987 = !DILocation(line: 117, column: 9, scope: !983)
!988 = !DILocation(line: 119, column: 14, scope: !961)
!989 = !DILocation(line: 119, column: 7, scope: !961)
!990 = !DILocation(line: 122, column: 22, scope: !991)
!991 = distinct !DILexicalBlock(scope: !956, file: !126, line: 122, column: 8)
!992 = !DILocation(line: 122, column: 8, scope: !991)
!993 = !DILocation(line: 122, column: 30, scope: !991)
!994 = !DILocation(line: 122, column: 8, scope: !956)
!995 = !DILocation(line: 123, column: 13, scope: !991)
!996 = !DILocation(line: 123, column: 6, scope: !991)
!997 = !DILocation(line: 124, column: 1, scope: !956)
!998 = distinct !DISubprogram(name: "set_program_name", scope: !140, file: !140, line: 39, type: !4, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !136, variables: !999)
!999 = !{!1000, !1001, !1002}
!1000 = !DILocalVariable(name: "argv0", arg: 1, scope: !998, file: !140, line: 39, type: !6)
!1001 = !DILocalVariable(name: "slash", scope: !998, file: !140, line: 46, type: !6)
!1002 = !DILocalVariable(name: "base", scope: !998, file: !140, line: 47, type: !6)
!1003 = !DILocation(line: 39, column: 31, scope: !998)
!1004 = !DILocation(line: 51, column: 13, scope: !1005)
!1005 = distinct !DILexicalBlock(scope: !998, file: !140, line: 51, column: 7)
!1006 = !DILocation(line: 51, column: 7, scope: !998)
!1007 = !DILocation(line: 55, column: 14, scope: !1008)
!1008 = distinct !DILexicalBlock(scope: !1005, file: !140, line: 52, column: 5)
!1009 = !DILocation(line: 54, column: 7, scope: !1008)
!1010 = !DILocation(line: 56, column: 7, scope: !1008)
!1011 = !DILocation(line: 59, column: 11, scope: !998)
!1012 = !DILocation(line: 46, column: 15, scope: !998)
!1013 = !DILocation(line: 60, column: 17, scope: !998)
!1014 = !DILocation(line: 60, column: 33, scope: !1015)
!1015 = !DILexicalBlockFile(scope: !998, file: !140, discriminator: 1)
!1016 = !DILocation(line: 60, column: 11, scope: !998)
!1017 = !DILocation(line: 47, column: 15, scope: !998)
!1018 = !DILocation(line: 61, column: 12, scope: !1019)
!1019 = distinct !DILexicalBlock(scope: !998, file: !140, line: 61, column: 7)
!1020 = !DILocation(line: 61, column: 20, scope: !1019)
!1021 = !DILocation(line: 61, column: 25, scope: !1019)
!1022 = !DILocation(line: 61, column: 28, scope: !1023)
!1023 = !DILexicalBlockFile(scope: !1019, file: !140, discriminator: 1)
!1024 = !DILocation(line: 61, column: 61, scope: !1023)
!1025 = !DILocation(line: 61, column: 7, scope: !1015)
!1026 = !DILocation(line: 64, column: 11, scope: !1027)
!1027 = distinct !DILexicalBlock(scope: !1028, file: !140, line: 64, column: 11)
!1028 = distinct !DILexicalBlock(scope: !1019, file: !140, line: 62, column: 5)
!1029 = !DILocation(line: 64, column: 36, scope: !1027)
!1030 = !DILocation(line: 64, column: 11, scope: !1028)
!1031 = !DILocation(line: 66, column: 24, scope: !1032)
!1032 = distinct !DILexicalBlock(scope: !1027, file: !140, line: 65, column: 9)
!1033 = !DILocation(line: 70, column: 41, scope: !1032)
!1034 = !DILocation(line: 72, column: 9, scope: !1032)
!1035 = !DILocation(line: 84, column: 16, scope: !998)
!1036 = !DILocation(line: 90, column: 27, scope: !998)
!1037 = !DILocation(line: 92, column: 1, scope: !998)
!1038 = distinct !DISubprogram(name: "clone_quoting_options", scope: !185, file: !185, line: 114, type: !1039, isLocal: false, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, unit: !143, variables: !1042)
!1039 = !DISubroutineType(types: !1040)
!1040 = !{!1041, !1041}
!1041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64)
!1042 = !{!1043, !1044, !1045}
!1043 = !DILocalVariable(name: "o", arg: 1, scope: !1038, file: !185, line: 114, type: !1041)
!1044 = !DILocalVariable(name: "e", scope: !1038, file: !185, line: 116, type: !29)
!1045 = !DILocalVariable(name: "p", scope: !1038, file: !185, line: 117, type: !1041)
!1046 = !DILocation(line: 114, column: 48, scope: !1038)
!1047 = !DILocation(line: 116, column: 11, scope: !1038)
!1048 = !DILocation(line: 116, column: 7, scope: !1038)
!1049 = !DILocation(line: 117, column: 40, scope: !1038)
!1050 = !DILocation(line: 117, column: 40, scope: !1051)
!1051 = !DILexicalBlockFile(scope: !1038, file: !185, discriminator: 3)
!1052 = !DILocation(line: 117, column: 31, scope: !1051)
!1053 = !DILocation(line: 117, column: 27, scope: !1038)
!1054 = !DILocation(line: 119, column: 9, scope: !1038)
!1055 = !DILocation(line: 120, column: 3, scope: !1038)
!1056 = distinct !DISubprogram(name: "get_quoting_style", scope: !185, file: !185, line: 125, type: !1057, isLocal: false, isDefinition: true, scopeLine: 126, flags: DIFlagPrototyped, isOptimized: true, unit: !143, variables: !1061)
!1057 = !DISubroutineType(types: !1058)
!1058 = !{!146, !1059}
!1059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1060, size: 64)
!1060 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !192)
!1061 = !{!1062}
!1062 = !DILocalVariable(name: "o", arg: 1, scope: !1056, file: !185, line: 125, type: !1059)
!1063 = !DILocation(line: 125, column: 50, scope: !1056)
!1064 = !DILocation(line: 127, column: 11, scope: !1056)
!1065 = !DILocation(line: 127, column: 46, scope: !1066)
!1066 = !DILexicalBlockFile(scope: !1056, file: !185, discriminator: 3)
!1067 = !{!1068, !642, i64 0}
!1068 = !{!"quoting_options", !642, i64 0, !655, i64 4, !642, i64 8, !641, i64 40, !641, i64 48}
!1069 = !DILocation(line: 127, column: 3, scope: !1066)
!1070 = distinct !DISubprogram(name: "set_quoting_style", scope: !185, file: !185, line: 133, type: !1071, isLocal: false, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: true, unit: !143, variables: !1073)
!1071 = !DISubroutineType(types: !1072)
!1072 = !{null, !1041, !146}
!1073 = !{!1074, !1075}
!1074 = !DILocalVariable(name: "o", arg: 1, scope: !1070, file: !185, line: 133, type: !1041)
!1075 = !DILocalVariable(name: "s", arg: 2, scope: !1070, file: !185, line: 133, type: !146)
!1076 = !DILocation(line: 133, column: 44, scope: !1070)
!1077 = !DILocation(line: 133, column: 66, scope: !1070)
!1078 = !DILocation(line: 135, column: 4, scope: !1070)
!1079 = !DILocation(line: 135, column: 39, scope: !1080)
!1080 = !DILexicalBlockFile(scope: !1070, file: !185, discriminator: 3)
!1081 = !DILocation(line: 135, column: 45, scope: !1080)
!1082 = !DILocation(line: 136, column: 1, scope: !1070)
!1083 = distinct !DISubprogram(name: "set_char_quoting", scope: !185, file: !185, line: 144, type: !1084, isLocal: false, isDefinition: true, scopeLine: 145, flags: DIFlagPrototyped, isOptimized: true, unit: !143, variables: !1086)
!1084 = !DISubroutineType(types: !1085)
!1085 = !{!29, !1041, !8, !29}
!1086 = !{!1087, !1088, !1089, !1090, !1091, !1093, !1094}
!1087 = !DILocalVariable(name: "o", arg: 1, scope: !1083, file: !185, line: 144, type: !1041)
!1088 = !DILocalVariable(name: "c", arg: 2, scope: !1083, file: !185, line: 144, type: !8)
!1089 = !DILocalVariable(name: "i", arg: 3, scope: !1083, file: !185, line: 144, type: !29)
!1090 = !DILocalVariable(name: "uc", scope: !1083, file: !185, line: 146, type: !20)
!1091 = !DILocalVariable(name: "p", scope: !1083, file: !185, line: 147, type: !1092)
!1092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!1093 = !DILocalVariable(name: "shift", scope: !1083, file: !185, line: 149, type: !29)
!1094 = !DILocalVariable(name: "r", scope: !1083, file: !185, line: 150, type: !29)
!1095 = !DILocation(line: 144, column: 43, scope: !1083)
!1096 = !DILocation(line: 144, column: 51, scope: !1083)
!1097 = !DILocation(line: 144, column: 58, scope: !1083)
!1098 = !DILocation(line: 146, column: 17, scope: !1083)
!1099 = !DILocation(line: 148, column: 6, scope: !1083)
!1100 = !DILocation(line: 148, column: 62, scope: !1101)
!1101 = !DILexicalBlockFile(scope: !1083, file: !185, discriminator: 3)
!1102 = !DILocation(line: 148, column: 57, scope: !1101)
!1103 = !DILocation(line: 147, column: 17, scope: !1083)
!1104 = !DILocation(line: 149, column: 18, scope: !1083)
!1105 = !DILocation(line: 149, column: 15, scope: !1083)
!1106 = !DILocation(line: 149, column: 7, scope: !1083)
!1107 = !DILocation(line: 150, column: 12, scope: !1083)
!1108 = !DILocation(line: 150, column: 15, scope: !1083)
!1109 = !DILocation(line: 150, column: 25, scope: !1083)
!1110 = !DILocation(line: 150, column: 7, scope: !1083)
!1111 = !DILocation(line: 151, column: 13, scope: !1083)
!1112 = !DILocation(line: 151, column: 18, scope: !1083)
!1113 = !DILocation(line: 151, column: 23, scope: !1083)
!1114 = !DILocation(line: 151, column: 6, scope: !1083)
!1115 = !DILocation(line: 152, column: 3, scope: !1083)
!1116 = distinct !DISubprogram(name: "set_quoting_flags", scope: !185, file: !185, line: 160, type: !1117, isLocal: false, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !143, variables: !1119)
!1117 = !DISubroutineType(types: !1118)
!1118 = !{!29, !1041, !29}
!1119 = !{!1120, !1121, !1122}
!1120 = !DILocalVariable(name: "o", arg: 1, scope: !1116, file: !185, line: 160, type: !1041)
!1121 = !DILocalVariable(name: "i", arg: 2, scope: !1116, file: !185, line: 160, type: !29)
!1122 = !DILocalVariable(name: "r", scope: !1116, file: !185, line: 162, type: !29)
!1123 = !DILocation(line: 160, column: 44, scope: !1116)
!1124 = !DILocation(line: 160, column: 51, scope: !1116)
!1125 = !DILocation(line: 163, column: 8, scope: !1126)
!1126 = distinct !DILexicalBlock(scope: !1116, file: !185, line: 163, column: 7)
!1127 = !DILocation(line: 163, column: 7, scope: !1116)
!1128 = !DILocation(line: 165, column: 10, scope: !1116)
!1129 = !{!1068, !655, i64 4}
!1130 = !DILocation(line: 162, column: 7, scope: !1116)
!1131 = !DILocation(line: 166, column: 12, scope: !1116)
!1132 = !DILocation(line: 167, column: 3, scope: !1116)
!1133 = distinct !DISubprogram(name: "set_custom_quoting", scope: !185, file: !185, line: 171, type: !1134, isLocal: false, isDefinition: true, scopeLine: 173, flags: DIFlagPrototyped, isOptimized: true, unit: !143, variables: !1136)
!1134 = !DISubroutineType(types: !1135)
!1135 = !{null, !1041, !6, !6}
!1136 = !{!1137, !1138, !1139}
!1137 = !DILocalVariable(name: "o", arg: 1, scope: !1133, file: !185, line: 171, type: !1041)
!1138 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1133, file: !185, line: 172, type: !6)
!1139 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1133, file: !185, line: 172, type: !6)
!1140 = !DILocation(line: 171, column: 45, scope: !1133)
!1141 = !DILocation(line: 172, column: 33, scope: !1133)
!1142 = !DILocation(line: 172, column: 57, scope: !1133)
!1143 = !DILocation(line: 174, column: 8, scope: !1144)
!1144 = distinct !DILexicalBlock(scope: !1133, file: !185, line: 174, column: 7)
!1145 = !DILocation(line: 174, column: 7, scope: !1133)
!1146 = !DILocation(line: 176, column: 6, scope: !1133)
!1147 = !DILocation(line: 176, column: 12, scope: !1133)
!1148 = !DILocation(line: 177, column: 8, scope: !1149)
!1149 = distinct !DILexicalBlock(scope: !1133, file: !185, line: 177, column: 7)
!1150 = !DILocation(line: 177, column: 23, scope: !1151)
!1151 = !DILexicalBlockFile(scope: !1149, file: !185, discriminator: 1)
!1152 = !DILocation(line: 177, column: 19, scope: !1149)
!1153 = !DILocation(line: 178, column: 5, scope: !1149)
!1154 = !DILocation(line: 179, column: 6, scope: !1133)
!1155 = !DILocation(line: 179, column: 17, scope: !1133)
!1156 = !{!1068, !641, i64 40}
!1157 = !DILocation(line: 180, column: 6, scope: !1133)
!1158 = !DILocation(line: 180, column: 18, scope: !1133)
!1159 = !{!1068, !641, i64 48}
!1160 = !DILocation(line: 181, column: 1, scope: !1133)
!1161 = distinct !DISubprogram(name: "quotearg_buffer", scope: !185, file: !185, line: 776, type: !1162, isLocal: false, isDefinition: true, scopeLine: 779, flags: DIFlagPrototyped, isOptimized: true, unit: !143, variables: !1164)
!1162 = !DISubroutineType(types: !1163)
!1163 = !{!13, !21, !13, !6, !13, !1059}
!1164 = !{!1165, !1166, !1167, !1168, !1169, !1170, !1171, !1172}
!1165 = !DILocalVariable(name: "buffer", arg: 1, scope: !1161, file: !185, line: 776, type: !21)
!1166 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1161, file: !185, line: 776, type: !13)
!1167 = !DILocalVariable(name: "arg", arg: 3, scope: !1161, file: !185, line: 777, type: !6)
!1168 = !DILocalVariable(name: "argsize", arg: 4, scope: !1161, file: !185, line: 777, type: !13)
!1169 = !DILocalVariable(name: "o", arg: 5, scope: !1161, file: !185, line: 778, type: !1059)
!1170 = !DILocalVariable(name: "p", scope: !1161, file: !185, line: 780, type: !1059)
!1171 = !DILocalVariable(name: "e", scope: !1161, file: !185, line: 781, type: !29)
!1172 = !DILocalVariable(name: "r", scope: !1161, file: !185, line: 782, type: !13)
!1173 = !DILocation(line: 776, column: 24, scope: !1161)
!1174 = !DILocation(line: 776, column: 39, scope: !1161)
!1175 = !DILocation(line: 777, column: 30, scope: !1161)
!1176 = !DILocation(line: 777, column: 42, scope: !1161)
!1177 = !DILocation(line: 778, column: 48, scope: !1161)
!1178 = !DILocation(line: 780, column: 37, scope: !1161)
!1179 = !DILocation(line: 780, column: 33, scope: !1161)
!1180 = !DILocation(line: 781, column: 11, scope: !1161)
!1181 = !DILocation(line: 781, column: 7, scope: !1161)
!1182 = !DILocation(line: 783, column: 43, scope: !1161)
!1183 = !DILocation(line: 783, column: 53, scope: !1161)
!1184 = !DILocation(line: 783, column: 60, scope: !1161)
!1185 = !DILocation(line: 784, column: 43, scope: !1161)
!1186 = !DILocation(line: 784, column: 58, scope: !1161)
!1187 = !DILocation(line: 782, column: 14, scope: !1161)
!1188 = !DILocation(line: 782, column: 10, scope: !1161)
!1189 = !DILocation(line: 785, column: 9, scope: !1161)
!1190 = !DILocation(line: 786, column: 3, scope: !1161)
!1191 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !185, file: !185, line: 248, type: !1192, isLocal: true, isDefinition: true, scopeLine: 254, flags: DIFlagPrototyped, isOptimized: true, unit: !143, variables: !1196)
!1192 = !DISubroutineType(types: !1193)
!1193 = !{!13, !21, !13, !6, !13, !146, !29, !1194, !6, !6}
!1194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1195, size: 64)
!1195 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !35)
!1196 = !{!1197, !1198, !1199, !1200, !1201, !1202, !1203, !1204, !1205, !1206, !1207, !1208, !1209, !1210, !1211, !1212, !1213, !1214, !1215, !1216, !1217, !1221, !1222, !1223, !1224, !1225, !1228, !1229, !1246, !1249, !1250, !1257}
!1197 = !DILocalVariable(name: "buffer", arg: 1, scope: !1191, file: !185, line: 248, type: !21)
!1198 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1191, file: !185, line: 248, type: !13)
!1199 = !DILocalVariable(name: "arg", arg: 3, scope: !1191, file: !185, line: 249, type: !6)
!1200 = !DILocalVariable(name: "argsize", arg: 4, scope: !1191, file: !185, line: 249, type: !13)
!1201 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1191, file: !185, line: 250, type: !146)
!1202 = !DILocalVariable(name: "flags", arg: 6, scope: !1191, file: !185, line: 250, type: !29)
!1203 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1191, file: !185, line: 251, type: !1194)
!1204 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1191, file: !185, line: 252, type: !6)
!1205 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1191, file: !185, line: 253, type: !6)
!1206 = !DILocalVariable(name: "i", scope: !1191, file: !185, line: 255, type: !13)
!1207 = !DILocalVariable(name: "len", scope: !1191, file: !185, line: 256, type: !13)
!1208 = !DILocalVariable(name: "orig_buffersize", scope: !1191, file: !185, line: 257, type: !13)
!1209 = !DILocalVariable(name: "quote_string", scope: !1191, file: !185, line: 258, type: !6)
!1210 = !DILocalVariable(name: "quote_string_len", scope: !1191, file: !185, line: 259, type: !13)
!1211 = !DILocalVariable(name: "backslash_escapes", scope: !1191, file: !185, line: 260, type: !84)
!1212 = !DILocalVariable(name: "unibyte_locale", scope: !1191, file: !185, line: 261, type: !84)
!1213 = !DILocalVariable(name: "elide_outer_quotes", scope: !1191, file: !185, line: 262, type: !84)
!1214 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1191, file: !185, line: 263, type: !84)
!1215 = !DILocalVariable(name: "encountered_single_quote", scope: !1191, file: !185, line: 264, type: !84)
!1216 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1191, file: !185, line: 265, type: !84)
!1217 = !DILocalVariable(name: "c", scope: !1218, file: !185, line: 394, type: !20)
!1218 = distinct !DILexicalBlock(scope: !1219, file: !185, line: 393, column: 5)
!1219 = distinct !DILexicalBlock(scope: !1220, file: !185, line: 392, column: 3)
!1220 = distinct !DILexicalBlock(scope: !1191, file: !185, line: 392, column: 3)
!1221 = !DILocalVariable(name: "esc", scope: !1218, file: !185, line: 395, type: !20)
!1222 = !DILocalVariable(name: "is_right_quote", scope: !1218, file: !185, line: 396, type: !84)
!1223 = !DILocalVariable(name: "escaping", scope: !1218, file: !185, line: 397, type: !84)
!1224 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1218, file: !185, line: 398, type: !84)
!1225 = !DILocalVariable(name: "m", scope: !1226, file: !185, line: 602, type: !13)
!1226 = distinct !DILexicalBlock(scope: !1227, file: !185, line: 600, column: 11)
!1227 = distinct !DILexicalBlock(scope: !1218, file: !185, line: 418, column: 9)
!1228 = !DILocalVariable(name: "printable", scope: !1226, file: !185, line: 604, type: !84)
!1229 = !DILocalVariable(name: "mbstate", scope: !1230, file: !185, line: 613, type: !1232)
!1230 = distinct !DILexicalBlock(scope: !1231, file: !185, line: 612, column: 15)
!1231 = distinct !DILexicalBlock(scope: !1226, file: !185, line: 606, column: 17)
!1232 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1233, line: 107, baseType: !1234)
!1233 = !DIFile(filename: "/usr/include/wchar.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1234 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1233, line: 95, baseType: !1235)
!1235 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1233, line: 83, size: 64, elements: !1236)
!1236 = !{!1237, !1238}
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1235, file: !1233, line: 85, baseType: !29, size: 32)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1235, file: !1233, line: 94, baseType: !1239, size: 32, offset: 32)
!1239 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1235, file: !1233, line: 86, size: 32, elements: !1240)
!1240 = !{!1241, !1242}
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1239, file: !1233, line: 89, baseType: !35, size: 32)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1239, file: !1233, line: 93, baseType: !1243, size: 32)
!1243 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 32, elements: !1244)
!1244 = !{!1245}
!1245 = !DISubrange(count: 4)
!1246 = !DILocalVariable(name: "w", scope: !1247, file: !185, line: 623, type: !1248)
!1247 = distinct !DILexicalBlock(scope: !1230, file: !185, line: 622, column: 19)
!1248 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !14, line: 90, baseType: !29)
!1249 = !DILocalVariable(name: "bytes", scope: !1247, file: !185, line: 624, type: !13)
!1250 = !DILocalVariable(name: "j", scope: !1251, file: !185, line: 649, type: !13)
!1251 = distinct !DILexicalBlock(scope: !1252, file: !185, line: 648, column: 27)
!1252 = distinct !DILexicalBlock(scope: !1253, file: !185, line: 646, column: 29)
!1253 = distinct !DILexicalBlock(scope: !1254, file: !185, line: 641, column: 23)
!1254 = distinct !DILexicalBlock(scope: !1255, file: !185, line: 633, column: 30)
!1255 = distinct !DILexicalBlock(scope: !1256, file: !185, line: 628, column: 30)
!1256 = distinct !DILexicalBlock(scope: !1247, file: !185, line: 626, column: 25)
!1257 = !DILocalVariable(name: "ilim", scope: !1258, file: !185, line: 676, type: !13)
!1258 = distinct !DILexicalBlock(scope: !1259, file: !185, line: 673, column: 15)
!1259 = distinct !DILexicalBlock(scope: !1226, file: !185, line: 672, column: 17)
!1260 = !DILocation(line: 248, column: 33, scope: !1191)
!1261 = !DILocation(line: 248, column: 48, scope: !1191)
!1262 = !DILocation(line: 249, column: 39, scope: !1191)
!1263 = !DILocation(line: 249, column: 51, scope: !1191)
!1264 = !DILocation(line: 250, column: 46, scope: !1191)
!1265 = !DILocation(line: 250, column: 65, scope: !1191)
!1266 = !DILocation(line: 251, column: 47, scope: !1191)
!1267 = !DILocation(line: 252, column: 39, scope: !1191)
!1268 = !DILocation(line: 253, column: 39, scope: !1191)
!1269 = !DILocation(line: 256, column: 10, scope: !1191)
!1270 = !DILocation(line: 257, column: 10, scope: !1191)
!1271 = !DILocation(line: 258, column: 15, scope: !1191)
!1272 = !DILocation(line: 259, column: 10, scope: !1191)
!1273 = !DILocation(line: 260, column: 8, scope: !1191)
!1274 = !DILocation(line: 261, column: 25, scope: !1191)
!1275 = !DILocation(line: 261, column: 36, scope: !1191)
!1276 = !DILocation(line: 262, column: 8, scope: !1191)
!1277 = !DILocation(line: 263, column: 8, scope: !1191)
!1278 = !DILocation(line: 264, column: 8, scope: !1191)
!1279 = !DILocation(line: 265, column: 8, scope: !1191)
!1280 = !DILocation(line: 265, column: 3, scope: !1191)
!1281 = !DILocation(line: 308, column: 3, scope: !1191)
!1282 = !DILocation(line: 315, column: 11, scope: !1283)
!1283 = distinct !DILexicalBlock(scope: !1191, file: !185, line: 309, column: 5)
!1284 = !DILocation(line: 315, column: 12, scope: !1285)
!1285 = distinct !DILexicalBlock(scope: !1283, file: !185, line: 315, column: 11)
!1286 = !DILocation(line: 316, column: 9, scope: !1287)
!1287 = !DILexicalBlockFile(scope: !1288, file: !185, discriminator: 1)
!1288 = distinct !DILexicalBlock(scope: !1289, file: !185, line: 316, column: 9)
!1289 = distinct !DILexicalBlock(scope: !1285, file: !185, line: 316, column: 9)
!1290 = !DILocation(line: 316, column: 9, scope: !1291)
!1291 = !DILexicalBlockFile(scope: !1289, file: !185, discriminator: 1)
!1292 = !DILocation(line: 316, column: 9, scope: !1293)
!1293 = !DILexicalBlockFile(scope: !1288, file: !185, discriminator: 2)
!1294 = !DILocation(line: 354, column: 26, scope: !1295)
!1295 = distinct !DILexicalBlock(scope: !1296, file: !185, line: 332, column: 11)
!1296 = distinct !DILexicalBlock(scope: !1297, file: !185, line: 331, column: 13)
!1297 = distinct !DILexicalBlock(scope: !1283, file: !185, line: 330, column: 7)
!1298 = !DILocation(line: 355, column: 27, scope: !1295)
!1299 = !DILocation(line: 356, column: 11, scope: !1295)
!1300 = !DILocation(line: 357, column: 14, scope: !1301)
!1301 = distinct !DILexicalBlock(scope: !1297, file: !185, line: 357, column: 13)
!1302 = !DILocation(line: 357, column: 13, scope: !1297)
!1303 = !DILocation(line: 358, column: 43, scope: !1304)
!1304 = !DILexicalBlockFile(scope: !1305, file: !185, discriminator: 1)
!1305 = distinct !DILexicalBlock(scope: !1306, file: !185, line: 358, column: 11)
!1306 = distinct !DILexicalBlock(scope: !1301, file: !185, line: 358, column: 11)
!1307 = !DILocation(line: 358, column: 11, scope: !1308)
!1308 = !DILexicalBlockFile(scope: !1306, file: !185, discriminator: 1)
!1309 = !DILocation(line: 359, column: 13, scope: !1310)
!1310 = !DILexicalBlockFile(scope: !1311, file: !185, discriminator: 1)
!1311 = distinct !DILexicalBlock(scope: !1312, file: !185, line: 359, column: 13)
!1312 = distinct !DILexicalBlock(scope: !1305, file: !185, line: 359, column: 13)
!1313 = !DILocation(line: 359, column: 13, scope: !1314)
!1314 = !DILexicalBlockFile(scope: !1312, file: !185, discriminator: 1)
!1315 = !DILocation(line: 359, column: 13, scope: !1316)
!1316 = !DILexicalBlockFile(scope: !1311, file: !185, discriminator: 2)
!1317 = !DILocation(line: 359, column: 13, scope: !1318)
!1318 = !DILexicalBlockFile(scope: !1312, file: !185, discriminator: 3)
!1319 = !DILocation(line: 358, column: 70, scope: !1320)
!1320 = !DILexicalBlockFile(scope: !1305, file: !185, discriminator: 2)
!1321 = distinct !{!1321, !1322, !1323}
!1322 = !DILocation(line: 358, column: 11, scope: !1306)
!1323 = !DILocation(line: 359, column: 13, scope: !1306)
!1324 = !DILocation(line: 362, column: 28, scope: !1297)
!1325 = !DILocation(line: 364, column: 7, scope: !1283)
!1326 = !DILocation(line: 367, column: 7, scope: !1283)
!1327 = !DILocation(line: 370, column: 7, scope: !1283)
!1328 = !DILocation(line: 373, column: 12, scope: !1329)
!1329 = distinct !DILexicalBlock(scope: !1283, file: !185, line: 373, column: 11)
!1330 = !DILocation(line: 373, column: 11, scope: !1283)
!1331 = !DILocation(line: 378, column: 12, scope: !1332)
!1332 = distinct !DILexicalBlock(scope: !1283, file: !185, line: 378, column: 11)
!1333 = !DILocation(line: 378, column: 11, scope: !1283)
!1334 = !DILocation(line: 379, column: 9, scope: !1335)
!1335 = !DILexicalBlockFile(scope: !1336, file: !185, discriminator: 1)
!1336 = distinct !DILexicalBlock(scope: !1337, file: !185, line: 379, column: 9)
!1337 = distinct !DILexicalBlock(scope: !1332, file: !185, line: 379, column: 9)
!1338 = !DILocation(line: 379, column: 9, scope: !1339)
!1339 = !DILexicalBlockFile(scope: !1337, file: !185, discriminator: 1)
!1340 = !DILocation(line: 379, column: 9, scope: !1341)
!1341 = !DILexicalBlockFile(scope: !1336, file: !185, discriminator: 2)
!1342 = !DILocation(line: 386, column: 7, scope: !1283)
!1343 = !DILocation(line: 389, column: 7, scope: !1283)
!1344 = !DILocation(line: 255, column: 10, scope: !1191)
!1345 = !DILocation(line: 392, column: 8, scope: !1220)
!1346 = !DILocation(line: 392, column: 27, scope: !1347)
!1347 = !DILexicalBlockFile(scope: !1219, file: !185, discriminator: 1)
!1348 = !DILocation(line: 392, column: 19, scope: !1347)
!1349 = !DILocation(line: 392, column: 60, scope: !1350)
!1350 = !DILexicalBlockFile(scope: !1219, file: !185, discriminator: 3)
!1351 = !DILocation(line: 392, column: 3, scope: !1352)
!1352 = !DILexicalBlockFile(scope: !1220, file: !185, discriminator: 4)
!1353 = !DILocation(line: 392, column: 41, scope: !1354)
!1354 = !DILexicalBlockFile(scope: !1219, file: !185, discriminator: 2)
!1355 = !DILocation(line: 392, column: 48, scope: !1354)
!1356 = !DILocation(line: 396, column: 12, scope: !1218)
!1357 = !DILocation(line: 397, column: 12, scope: !1218)
!1358 = !DILocation(line: 398, column: 12, scope: !1218)
!1359 = !DILocation(line: 401, column: 11, scope: !1360)
!1360 = distinct !DILexicalBlock(scope: !1218, file: !185, line: 400, column: 11)
!1361 = !DILocation(line: 403, column: 17, scope: !1362)
!1362 = !DILexicalBlockFile(scope: !1360, file: !185, discriminator: 1)
!1363 = !DILocation(line: 404, column: 39, scope: !1360)
!1364 = !DILocation(line: 408, column: 32, scope: !1360)
!1365 = !DILocation(line: 404, column: 19, scope: !1366)
!1366 = !DILexicalBlockFile(scope: !1360, file: !185, discriminator: 2)
!1367 = !DILocation(line: 404, column: 15, scope: !1368)
!1368 = !DILexicalBlockFile(scope: !1360, file: !185, discriminator: 4)
!1369 = !DILocation(line: 409, column: 11, scope: !1360)
!1370 = !DILocation(line: 409, column: 26, scope: !1362)
!1371 = !DILocation(line: 409, column: 14, scope: !1362)
!1372 = !DILocation(line: 400, column: 11, scope: !1373)
!1373 = !DILexicalBlockFile(scope: !1218, file: !185, discriminator: 1)
!1374 = !DILocation(line: 416, column: 11, scope: !1218)
!1375 = !DILocation(line: 394, column: 21, scope: !1218)
!1376 = !DILocation(line: 417, column: 7, scope: !1218)
!1377 = !DILocation(line: 420, column: 15, scope: !1227)
!1378 = !DILocation(line: 422, column: 15, scope: !1379)
!1379 = !DILexicalBlockFile(scope: !1380, file: !185, discriminator: 1)
!1380 = distinct !DILexicalBlock(scope: !1381, file: !185, line: 422, column: 15)
!1381 = distinct !DILexicalBlock(scope: !1382, file: !185, line: 421, column: 13)
!1382 = distinct !DILexicalBlock(scope: !1227, file: !185, line: 420, column: 15)
!1383 = !DILocation(line: 422, column: 15, scope: !1384)
!1384 = !DILexicalBlockFile(scope: !1385, file: !185, discriminator: 4)
!1385 = distinct !DILexicalBlock(scope: !1380, file: !185, line: 422, column: 15)
!1386 = !DILocation(line: 422, column: 15, scope: !1387)
!1387 = !DILexicalBlockFile(scope: !1385, file: !185, discriminator: 3)
!1388 = !DILocation(line: 422, column: 15, scope: !1389)
!1389 = !DILexicalBlockFile(scope: !1390, file: !185, discriminator: 6)
!1390 = distinct !DILexicalBlock(scope: !1391, file: !185, line: 422, column: 15)
!1391 = distinct !DILexicalBlock(scope: !1392, file: !185, line: 422, column: 15)
!1392 = distinct !DILexicalBlock(scope: !1385, file: !185, line: 422, column: 15)
!1393 = !DILocation(line: 422, column: 15, scope: !1394)
!1394 = !DILexicalBlockFile(scope: !1391, file: !185, discriminator: 6)
!1395 = !DILocation(line: 422, column: 15, scope: !1396)
!1396 = !DILexicalBlockFile(scope: !1390, file: !185, discriminator: 7)
!1397 = !DILocation(line: 422, column: 15, scope: !1398)
!1398 = !DILexicalBlockFile(scope: !1391, file: !185, discriminator: 8)
!1399 = !DILocation(line: 422, column: 15, scope: !1400)
!1400 = !DILexicalBlockFile(scope: !1401, file: !185, discriminator: 11)
!1401 = distinct !DILexicalBlock(scope: !1402, file: !185, line: 422, column: 15)
!1402 = distinct !DILexicalBlock(scope: !1392, file: !185, line: 422, column: 15)
!1403 = !DILocation(line: 422, column: 15, scope: !1404)
!1404 = !DILexicalBlockFile(scope: !1402, file: !185, discriminator: 11)
!1405 = !DILocation(line: 422, column: 15, scope: !1406)
!1406 = !DILexicalBlockFile(scope: !1401, file: !185, discriminator: 12)
!1407 = !DILocation(line: 422, column: 15, scope: !1408)
!1408 = !DILexicalBlockFile(scope: !1402, file: !185, discriminator: 13)
!1409 = !DILocation(line: 422, column: 15, scope: !1410)
!1410 = !DILexicalBlockFile(scope: !1411, file: !185, discriminator: 16)
!1411 = distinct !DILexicalBlock(scope: !1412, file: !185, line: 422, column: 15)
!1412 = distinct !DILexicalBlock(scope: !1392, file: !185, line: 422, column: 15)
!1413 = !DILocation(line: 422, column: 15, scope: !1414)
!1414 = !DILexicalBlockFile(scope: !1412, file: !185, discriminator: 16)
!1415 = !DILocation(line: 422, column: 15, scope: !1416)
!1416 = !DILexicalBlockFile(scope: !1411, file: !185, discriminator: 17)
!1417 = !DILocation(line: 422, column: 15, scope: !1418)
!1418 = !DILexicalBlockFile(scope: !1412, file: !185, discriminator: 18)
!1419 = !DILocation(line: 422, column: 15, scope: !1420)
!1420 = !DILexicalBlockFile(scope: !1392, file: !185, discriminator: 20)
!1421 = !DILocation(line: 422, column: 15, scope: !1422)
!1422 = !DILexicalBlockFile(scope: !1423, file: !185, discriminator: 22)
!1423 = distinct !DILexicalBlock(scope: !1424, file: !185, line: 422, column: 15)
!1424 = distinct !DILexicalBlock(scope: !1380, file: !185, line: 422, column: 15)
!1425 = !DILocation(line: 422, column: 15, scope: !1426)
!1426 = !DILexicalBlockFile(scope: !1424, file: !185, discriminator: 22)
!1427 = !DILocation(line: 422, column: 15, scope: !1428)
!1428 = !DILexicalBlockFile(scope: !1423, file: !185, discriminator: 23)
!1429 = !DILocation(line: 422, column: 15, scope: !1430)
!1430 = !DILexicalBlockFile(scope: !1424, file: !185, discriminator: 24)
!1431 = !DILocation(line: 430, column: 19, scope: !1432)
!1432 = distinct !DILexicalBlock(scope: !1381, file: !185, line: 429, column: 19)
!1433 = !DILocation(line: 430, column: 24, scope: !1434)
!1434 = !DILexicalBlockFile(scope: !1432, file: !185, discriminator: 1)
!1435 = !DILocation(line: 430, column: 28, scope: !1434)
!1436 = !DILocation(line: 430, column: 38, scope: !1434)
!1437 = !DILocation(line: 430, column: 48, scope: !1438)
!1438 = !DILexicalBlockFile(scope: !1432, file: !185, discriminator: 2)
!1439 = !DILocation(line: 430, column: 59, scope: !1438)
!1440 = !DILocation(line: 432, column: 19, scope: !1441)
!1441 = !DILexicalBlockFile(scope: !1442, file: !185, discriminator: 1)
!1442 = distinct !DILexicalBlock(scope: !1443, file: !185, line: 432, column: 19)
!1443 = distinct !DILexicalBlock(scope: !1444, file: !185, line: 432, column: 19)
!1444 = distinct !DILexicalBlock(scope: !1432, file: !185, line: 431, column: 17)
!1445 = !DILocation(line: 432, column: 19, scope: !1446)
!1446 = !DILexicalBlockFile(scope: !1443, file: !185, discriminator: 1)
!1447 = !DILocation(line: 432, column: 19, scope: !1448)
!1448 = !DILexicalBlockFile(scope: !1442, file: !185, discriminator: 2)
!1449 = !DILocation(line: 432, column: 19, scope: !1450)
!1450 = !DILexicalBlockFile(scope: !1443, file: !185, discriminator: 3)
!1451 = !DILocation(line: 433, column: 19, scope: !1452)
!1452 = !DILexicalBlockFile(scope: !1453, file: !185, discriminator: 1)
!1453 = distinct !DILexicalBlock(scope: !1454, file: !185, line: 433, column: 19)
!1454 = distinct !DILexicalBlock(scope: !1444, file: !185, line: 433, column: 19)
!1455 = !DILocation(line: 433, column: 19, scope: !1456)
!1456 = !DILexicalBlockFile(scope: !1454, file: !185, discriminator: 1)
!1457 = !DILocation(line: 433, column: 19, scope: !1458)
!1458 = !DILexicalBlockFile(scope: !1453, file: !185, discriminator: 2)
!1459 = !DILocation(line: 433, column: 19, scope: !1460)
!1460 = !DILexicalBlockFile(scope: !1454, file: !185, discriminator: 3)
!1461 = !DILocation(line: 434, column: 17, scope: !1444)
!1462 = !DILocation(line: 441, column: 20, scope: !1382)
!1463 = !DILocation(line: 446, column: 11, scope: !1227)
!1464 = !DILocation(line: 449, column: 19, scope: !1465)
!1465 = distinct !DILexicalBlock(scope: !1227, file: !185, line: 447, column: 13)
!1466 = !DILocation(line: 455, column: 19, scope: !1467)
!1467 = distinct !DILexicalBlock(scope: !1465, file: !185, line: 454, column: 19)
!1468 = !DILocation(line: 455, column: 24, scope: !1469)
!1469 = !DILexicalBlockFile(scope: !1467, file: !185, discriminator: 1)
!1470 = !DILocation(line: 455, column: 28, scope: !1469)
!1471 = !DILocation(line: 455, column: 38, scope: !1469)
!1472 = !DILocation(line: 455, column: 47, scope: !1473)
!1473 = !DILexicalBlockFile(scope: !1467, file: !185, discriminator: 2)
!1474 = !DILocation(line: 455, column: 41, scope: !1473)
!1475 = !DILocation(line: 455, column: 52, scope: !1473)
!1476 = !DILocation(line: 454, column: 19, scope: !1477)
!1477 = !DILexicalBlockFile(scope: !1465, file: !185, discriminator: 1)
!1478 = !DILocation(line: 456, column: 25, scope: !1467)
!1479 = !DILocation(line: 456, column: 17, scope: !1467)
!1480 = !DILocation(line: 463, column: 25, scope: !1481)
!1481 = distinct !DILexicalBlock(scope: !1467, file: !185, line: 457, column: 19)
!1482 = !DILocation(line: 467, column: 21, scope: !1483)
!1483 = !DILexicalBlockFile(scope: !1484, file: !185, discriminator: 1)
!1484 = distinct !DILexicalBlock(scope: !1485, file: !185, line: 467, column: 21)
!1485 = distinct !DILexicalBlock(scope: !1481, file: !185, line: 467, column: 21)
!1486 = !DILocation(line: 467, column: 21, scope: !1487)
!1487 = !DILexicalBlockFile(scope: !1485, file: !185, discriminator: 1)
!1488 = !DILocation(line: 467, column: 21, scope: !1489)
!1489 = !DILexicalBlockFile(scope: !1484, file: !185, discriminator: 2)
!1490 = !DILocation(line: 467, column: 21, scope: !1491)
!1491 = !DILexicalBlockFile(scope: !1485, file: !185, discriminator: 3)
!1492 = !DILocation(line: 468, column: 21, scope: !1493)
!1493 = !DILexicalBlockFile(scope: !1494, file: !185, discriminator: 1)
!1494 = distinct !DILexicalBlock(scope: !1495, file: !185, line: 468, column: 21)
!1495 = distinct !DILexicalBlock(scope: !1481, file: !185, line: 468, column: 21)
!1496 = !DILocation(line: 468, column: 21, scope: !1497)
!1497 = !DILexicalBlockFile(scope: !1495, file: !185, discriminator: 1)
!1498 = !DILocation(line: 468, column: 21, scope: !1499)
!1499 = !DILexicalBlockFile(scope: !1494, file: !185, discriminator: 2)
!1500 = !DILocation(line: 468, column: 21, scope: !1501)
!1501 = !DILexicalBlockFile(scope: !1495, file: !185, discriminator: 3)
!1502 = !DILocation(line: 469, column: 21, scope: !1503)
!1503 = !DILexicalBlockFile(scope: !1504, file: !185, discriminator: 1)
!1504 = distinct !DILexicalBlock(scope: !1505, file: !185, line: 469, column: 21)
!1505 = distinct !DILexicalBlock(scope: !1481, file: !185, line: 469, column: 21)
!1506 = !DILocation(line: 469, column: 21, scope: !1507)
!1507 = !DILexicalBlockFile(scope: !1505, file: !185, discriminator: 1)
!1508 = !DILocation(line: 469, column: 21, scope: !1509)
!1509 = !DILexicalBlockFile(scope: !1504, file: !185, discriminator: 2)
!1510 = !DILocation(line: 469, column: 21, scope: !1511)
!1511 = !DILexicalBlockFile(scope: !1505, file: !185, discriminator: 3)
!1512 = !DILocation(line: 470, column: 21, scope: !1513)
!1513 = !DILexicalBlockFile(scope: !1514, file: !185, discriminator: 1)
!1514 = distinct !DILexicalBlock(scope: !1515, file: !185, line: 470, column: 21)
!1515 = distinct !DILexicalBlock(scope: !1481, file: !185, line: 470, column: 21)
!1516 = !DILocation(line: 470, column: 21, scope: !1517)
!1517 = !DILexicalBlockFile(scope: !1515, file: !185, discriminator: 1)
!1518 = !DILocation(line: 470, column: 21, scope: !1519)
!1519 = !DILexicalBlockFile(scope: !1514, file: !185, discriminator: 2)
!1520 = !DILocation(line: 470, column: 21, scope: !1521)
!1521 = !DILexicalBlockFile(scope: !1515, file: !185, discriminator: 3)
!1522 = !DILocation(line: 471, column: 21, scope: !1481)
!1523 = !DILocation(line: 395, column: 21, scope: !1218)
!1524 = !DILocation(line: 484, column: 31, scope: !1227)
!1525 = !DILocation(line: 485, column: 31, scope: !1227)
!1526 = !DILocation(line: 487, column: 31, scope: !1227)
!1527 = !DILocation(line: 488, column: 31, scope: !1227)
!1528 = !DILocation(line: 489, column: 31, scope: !1227)
!1529 = !DILocation(line: 492, column: 15, scope: !1227)
!1530 = !DILocation(line: 494, column: 19, scope: !1531)
!1531 = distinct !DILexicalBlock(scope: !1532, file: !185, line: 493, column: 13)
!1532 = distinct !DILexicalBlock(scope: !1227, file: !185, line: 492, column: 15)
!1533 = !DILocation(line: 501, column: 33, scope: !1534)
!1534 = distinct !DILexicalBlock(scope: !1227, file: !185, line: 501, column: 15)
!1535 = !DILocation(line: 506, column: 15, scope: !1536)
!1536 = distinct !DILexicalBlock(scope: !1227, file: !185, line: 505, column: 15)
!1537 = !DILocation(line: 510, column: 15, scope: !1227)
!1538 = !DILocation(line: 518, column: 26, scope: !1539)
!1539 = distinct !DILexicalBlock(scope: !1227, file: !185, line: 518, column: 15)
!1540 = !DILocation(line: 518, column: 15, scope: !1227)
!1541 = !DILocation(line: 518, column: 40, scope: !1542)
!1542 = !DILexicalBlockFile(scope: !1539, file: !185, discriminator: 1)
!1543 = !DILocation(line: 518, column: 47, scope: !1542)
!1544 = !DILocation(line: 522, column: 17, scope: !1545)
!1545 = distinct !DILexicalBlock(scope: !1227, file: !185, line: 522, column: 15)
!1546 = !DILocation(line: 518, column: 18, scope: !1542)
!1547 = !DILocation(line: 518, column: 65, scope: !1548)
!1548 = !DILexicalBlockFile(scope: !1539, file: !185, discriminator: 2)
!1549 = !DILocation(line: 518, column: 15, scope: !1550)
!1550 = !DILexicalBlockFile(scope: !1227, file: !185, discriminator: 2)
!1551 = !DILocation(line: 522, column: 15, scope: !1227)
!1552 = !DILocation(line: 526, column: 11, scope: !1227)
!1553 = !DILocation(line: 541, column: 15, scope: !1554)
!1554 = distinct !DILexicalBlock(scope: !1227, file: !185, line: 540, column: 15)
!1555 = !DILocation(line: 548, column: 15, scope: !1227)
!1556 = !DILocation(line: 550, column: 19, scope: !1557)
!1557 = distinct !DILexicalBlock(scope: !1558, file: !185, line: 549, column: 13)
!1558 = distinct !DILexicalBlock(scope: !1227, file: !185, line: 548, column: 15)
!1559 = !DILocation(line: 553, column: 19, scope: !1560)
!1560 = distinct !DILexicalBlock(scope: !1557, file: !185, line: 553, column: 19)
!1561 = !DILocation(line: 553, column: 35, scope: !1562)
!1562 = !DILexicalBlockFile(scope: !1560, file: !185, discriminator: 1)
!1563 = !DILocation(line: 553, column: 30, scope: !1560)
!1564 = !DILocation(line: 562, column: 15, scope: !1565)
!1565 = !DILexicalBlockFile(scope: !1566, file: !185, discriminator: 1)
!1566 = distinct !DILexicalBlock(scope: !1567, file: !185, line: 562, column: 15)
!1567 = distinct !DILexicalBlock(scope: !1557, file: !185, line: 562, column: 15)
!1568 = !DILocation(line: 562, column: 15, scope: !1569)
!1569 = !DILexicalBlockFile(scope: !1567, file: !185, discriminator: 1)
!1570 = !DILocation(line: 562, column: 15, scope: !1571)
!1571 = !DILexicalBlockFile(scope: !1566, file: !185, discriminator: 2)
!1572 = !DILocation(line: 562, column: 15, scope: !1573)
!1573 = !DILexicalBlockFile(scope: !1567, file: !185, discriminator: 3)
!1574 = !DILocation(line: 563, column: 15, scope: !1575)
!1575 = !DILexicalBlockFile(scope: !1576, file: !185, discriminator: 1)
!1576 = distinct !DILexicalBlock(scope: !1577, file: !185, line: 563, column: 15)
!1577 = distinct !DILexicalBlock(scope: !1557, file: !185, line: 563, column: 15)
!1578 = !DILocation(line: 563, column: 15, scope: !1579)
!1579 = !DILexicalBlockFile(scope: !1577, file: !185, discriminator: 1)
!1580 = !DILocation(line: 563, column: 15, scope: !1581)
!1581 = !DILexicalBlockFile(scope: !1576, file: !185, discriminator: 2)
!1582 = !DILocation(line: 563, column: 15, scope: !1583)
!1583 = !DILexicalBlockFile(scope: !1577, file: !185, discriminator: 3)
!1584 = !DILocation(line: 564, column: 15, scope: !1585)
!1585 = !DILexicalBlockFile(scope: !1586, file: !185, discriminator: 1)
!1586 = distinct !DILexicalBlock(scope: !1587, file: !185, line: 564, column: 15)
!1587 = distinct !DILexicalBlock(scope: !1557, file: !185, line: 564, column: 15)
!1588 = !DILocation(line: 564, column: 15, scope: !1589)
!1589 = !DILexicalBlockFile(scope: !1587, file: !185, discriminator: 1)
!1590 = !DILocation(line: 564, column: 15, scope: !1591)
!1591 = !DILexicalBlockFile(scope: !1586, file: !185, discriminator: 2)
!1592 = !DILocation(line: 564, column: 15, scope: !1593)
!1593 = !DILexicalBlockFile(scope: !1587, file: !185, discriminator: 3)
!1594 = !DILocation(line: 566, column: 13, scope: !1557)
!1595 = !DILocation(line: 606, column: 17, scope: !1226)
!1596 = !DILocation(line: 602, column: 20, scope: !1226)
!1597 = !DILocation(line: 609, column: 29, scope: !1598)
!1598 = distinct !DILexicalBlock(scope: !1231, file: !185, line: 607, column: 15)
!1599 = !{!825, !825, i64 0}
!1600 = !DILocation(line: 609, column: 27, scope: !1598)
!1601 = !DILocation(line: 604, column: 18, scope: !1226)
!1602 = !DILocation(line: 610, column: 15, scope: !1598)
!1603 = !DILocation(line: 613, column: 17, scope: !1230)
!1604 = !DILocation(line: 614, column: 17, scope: !1230)
!1605 = !DILocation(line: 618, column: 29, scope: !1606)
!1606 = distinct !DILexicalBlock(scope: !1230, file: !185, line: 618, column: 21)
!1607 = !DILocation(line: 618, column: 21, scope: !1230)
!1608 = distinct !{!1608, !1609, !1610}
!1609 = !DILocation(line: 621, column: 17, scope: !1230)
!1610 = !DILocation(line: 667, column: 44, scope: !1230)
!1611 = !DILocation(line: 619, column: 29, scope: !1606)
!1612 = !DILocation(line: 619, column: 19, scope: !1606)
!1613 = !DILocation(line: 623, column: 21, scope: !1247)
!1614 = !DILocation(line: 624, column: 56, scope: !1247)
!1615 = !DILocation(line: 624, column: 50, scope: !1247)
!1616 = !DILocation(line: 625, column: 53, scope: !1247)
!1617 = !DILocation(line: 613, column: 27, scope: !1230)
!1618 = !DILocation(line: 623, column: 29, scope: !1247)
!1619 = !DILocation(line: 624, column: 36, scope: !1247)
!1620 = !DILocation(line: 624, column: 28, scope: !1247)
!1621 = !DILocation(line: 626, column: 25, scope: !1247)
!1622 = !DILocation(line: 636, column: 38, scope: !1623)
!1623 = !DILexicalBlockFile(scope: !1624, file: !185, discriminator: 1)
!1624 = distinct !DILexicalBlock(scope: !1254, file: !185, line: 634, column: 23)
!1625 = !DILocation(line: 636, column: 48, scope: !1623)
!1626 = !DILocation(line: 636, column: 51, scope: !1627)
!1627 = !DILexicalBlockFile(scope: !1624, file: !185, discriminator: 2)
!1628 = !DILocation(line: 636, column: 48, scope: !1627)
!1629 = !DILocation(line: 636, column: 25, scope: !1630)
!1630 = !DILexicalBlockFile(scope: !1624, file: !185, discriminator: 3)
!1631 = !DILocation(line: 637, column: 28, scope: !1624)
!1632 = !DILocation(line: 636, column: 34, scope: !1623)
!1633 = distinct !{!1633, !1634, !1631}
!1634 = !DILocation(line: 636, column: 25, scope: !1624)
!1635 = !DILocation(line: 650, column: 43, scope: !1636)
!1636 = !DILexicalBlockFile(scope: !1637, file: !185, discriminator: 1)
!1637 = distinct !DILexicalBlock(scope: !1638, file: !185, line: 650, column: 29)
!1638 = distinct !DILexicalBlock(scope: !1251, file: !185, line: 650, column: 29)
!1639 = !DILocation(line: 647, column: 29, scope: !1252)
!1640 = !DILocation(line: 649, column: 36, scope: !1251)
!1641 = !DILocation(line: 651, column: 49, scope: !1637)
!1642 = !DILocation(line: 651, column: 39, scope: !1637)
!1643 = !DILocation(line: 651, column: 31, scope: !1637)
!1644 = !DILocation(line: 650, column: 53, scope: !1645)
!1645 = !DILexicalBlockFile(scope: !1637, file: !185, discriminator: 2)
!1646 = !DILocation(line: 650, column: 29, scope: !1647)
!1647 = !DILexicalBlockFile(scope: !1638, file: !185, discriminator: 1)
!1648 = distinct !{!1648, !1649, !1650}
!1649 = !DILocation(line: 650, column: 29, scope: !1638)
!1650 = !DILocation(line: 659, column: 33, scope: !1638)
!1651 = !DILocation(line: 666, column: 19, scope: !1230)
!1652 = !DILocation(line: 662, column: 41, scope: !1653)
!1653 = distinct !DILexicalBlock(scope: !1253, file: !185, line: 662, column: 29)
!1654 = !DILocation(line: 662, column: 31, scope: !1653)
!1655 = !DILocation(line: 662, column: 29, scope: !1253)
!1656 = !DILocation(line: 664, column: 27, scope: !1253)
!1657 = !DILocation(line: 667, column: 26, scope: !1230)
!1658 = !DILocation(line: 667, column: 24, scope: !1230)
!1659 = !DILocation(line: 666, column: 19, scope: !1660)
!1660 = !DILexicalBlockFile(scope: !1247, file: !185, discriminator: 3)
!1661 = !DILocation(line: 668, column: 15, scope: !1231)
!1662 = !DILocation(line: 670, column: 40, scope: !1226)
!1663 = !DILocation(line: 672, column: 19, scope: !1259)
!1664 = !DILocation(line: 672, column: 45, scope: !1665)
!1665 = !DILexicalBlockFile(scope: !1259, file: !185, discriminator: 1)
!1666 = !DILocation(line: 672, column: 23, scope: !1259)
!1667 = !DILocation(line: 676, column: 33, scope: !1258)
!1668 = !DILocation(line: 676, column: 24, scope: !1258)
!1669 = !DILocation(line: 678, column: 17, scope: !1258)
!1670 = !DILocation(line: 680, column: 43, scope: !1671)
!1671 = distinct !DILexicalBlock(scope: !1672, file: !185, line: 680, column: 25)
!1672 = distinct !DILexicalBlock(scope: !1673, file: !185, line: 679, column: 19)
!1673 = distinct !DILexicalBlock(scope: !1674, file: !185, line: 678, column: 17)
!1674 = distinct !DILexicalBlock(scope: !1258, file: !185, line: 678, column: 17)
!1675 = !DILocation(line: 682, column: 25, scope: !1676)
!1676 = !DILexicalBlockFile(scope: !1677, file: !185, discriminator: 1)
!1677 = distinct !DILexicalBlock(scope: !1678, file: !185, line: 682, column: 25)
!1678 = distinct !DILexicalBlock(scope: !1671, file: !185, line: 681, column: 23)
!1679 = !DILocation(line: 682, column: 25, scope: !1680)
!1680 = !DILexicalBlockFile(scope: !1681, file: !185, discriminator: 4)
!1681 = distinct !DILexicalBlock(scope: !1677, file: !185, line: 682, column: 25)
!1682 = !DILocation(line: 682, column: 25, scope: !1683)
!1683 = !DILexicalBlockFile(scope: !1681, file: !185, discriminator: 3)
!1684 = !DILocation(line: 682, column: 25, scope: !1685)
!1685 = !DILexicalBlockFile(scope: !1686, file: !185, discriminator: 6)
!1686 = distinct !DILexicalBlock(scope: !1687, file: !185, line: 682, column: 25)
!1687 = distinct !DILexicalBlock(scope: !1688, file: !185, line: 682, column: 25)
!1688 = distinct !DILexicalBlock(scope: !1681, file: !185, line: 682, column: 25)
!1689 = !DILocation(line: 682, column: 25, scope: !1690)
!1690 = !DILexicalBlockFile(scope: !1687, file: !185, discriminator: 6)
!1691 = !DILocation(line: 682, column: 25, scope: !1692)
!1692 = !DILexicalBlockFile(scope: !1686, file: !185, discriminator: 7)
!1693 = !DILocation(line: 682, column: 25, scope: !1694)
!1694 = !DILexicalBlockFile(scope: !1687, file: !185, discriminator: 8)
!1695 = !DILocation(line: 682, column: 25, scope: !1696)
!1696 = !DILexicalBlockFile(scope: !1697, file: !185, discriminator: 11)
!1697 = distinct !DILexicalBlock(scope: !1698, file: !185, line: 682, column: 25)
!1698 = distinct !DILexicalBlock(scope: !1688, file: !185, line: 682, column: 25)
!1699 = !DILocation(line: 682, column: 25, scope: !1700)
!1700 = !DILexicalBlockFile(scope: !1698, file: !185, discriminator: 11)
!1701 = !DILocation(line: 682, column: 25, scope: !1702)
!1702 = !DILexicalBlockFile(scope: !1697, file: !185, discriminator: 12)
!1703 = !DILocation(line: 682, column: 25, scope: !1704)
!1704 = !DILexicalBlockFile(scope: !1698, file: !185, discriminator: 13)
!1705 = !DILocation(line: 682, column: 25, scope: !1706)
!1706 = !DILexicalBlockFile(scope: !1707, file: !185, discriminator: 16)
!1707 = distinct !DILexicalBlock(scope: !1708, file: !185, line: 682, column: 25)
!1708 = distinct !DILexicalBlock(scope: !1688, file: !185, line: 682, column: 25)
!1709 = !DILocation(line: 682, column: 25, scope: !1710)
!1710 = !DILexicalBlockFile(scope: !1708, file: !185, discriminator: 16)
!1711 = !DILocation(line: 682, column: 25, scope: !1712)
!1712 = !DILexicalBlockFile(scope: !1707, file: !185, discriminator: 17)
!1713 = !DILocation(line: 682, column: 25, scope: !1714)
!1714 = !DILexicalBlockFile(scope: !1708, file: !185, discriminator: 18)
!1715 = !DILocation(line: 682, column: 25, scope: !1716)
!1716 = !DILexicalBlockFile(scope: !1688, file: !185, discriminator: 20)
!1717 = !DILocation(line: 682, column: 25, scope: !1718)
!1718 = !DILexicalBlockFile(scope: !1719, file: !185, discriminator: 22)
!1719 = distinct !DILexicalBlock(scope: !1720, file: !185, line: 682, column: 25)
!1720 = distinct !DILexicalBlock(scope: !1677, file: !185, line: 682, column: 25)
!1721 = !DILocation(line: 682, column: 25, scope: !1722)
!1722 = !DILexicalBlockFile(scope: !1720, file: !185, discriminator: 22)
!1723 = !DILocation(line: 682, column: 25, scope: !1724)
!1724 = !DILexicalBlockFile(scope: !1719, file: !185, discriminator: 23)
!1725 = !DILocation(line: 682, column: 25, scope: !1726)
!1726 = !DILexicalBlockFile(scope: !1720, file: !185, discriminator: 24)
!1727 = !DILocation(line: 683, column: 25, scope: !1728)
!1728 = !DILexicalBlockFile(scope: !1729, file: !185, discriminator: 1)
!1729 = distinct !DILexicalBlock(scope: !1730, file: !185, line: 683, column: 25)
!1730 = distinct !DILexicalBlock(scope: !1678, file: !185, line: 683, column: 25)
!1731 = !DILocation(line: 683, column: 25, scope: !1732)
!1732 = !DILexicalBlockFile(scope: !1730, file: !185, discriminator: 1)
!1733 = !DILocation(line: 683, column: 25, scope: !1734)
!1734 = !DILexicalBlockFile(scope: !1729, file: !185, discriminator: 2)
!1735 = !DILocation(line: 683, column: 25, scope: !1736)
!1736 = !DILexicalBlockFile(scope: !1730, file: !185, discriminator: 3)
!1737 = !DILocation(line: 684, column: 25, scope: !1738)
!1738 = !DILexicalBlockFile(scope: !1739, file: !185, discriminator: 1)
!1739 = distinct !DILexicalBlock(scope: !1740, file: !185, line: 684, column: 25)
!1740 = distinct !DILexicalBlock(scope: !1678, file: !185, line: 684, column: 25)
!1741 = !DILocation(line: 684, column: 25, scope: !1742)
!1742 = !DILexicalBlockFile(scope: !1740, file: !185, discriminator: 1)
!1743 = !DILocation(line: 684, column: 25, scope: !1744)
!1744 = !DILexicalBlockFile(scope: !1739, file: !185, discriminator: 2)
!1745 = !DILocation(line: 684, column: 25, scope: !1746)
!1746 = !DILexicalBlockFile(scope: !1740, file: !185, discriminator: 3)
!1747 = !DILocation(line: 685, column: 38, scope: !1678)
!1748 = !DILocation(line: 685, column: 33, scope: !1678)
!1749 = !DILocation(line: 686, column: 23, scope: !1678)
!1750 = !DILocation(line: 687, column: 30, scope: !1751)
!1751 = distinct !DILexicalBlock(scope: !1671, file: !185, line: 687, column: 30)
!1752 = !DILocation(line: 687, column: 30, scope: !1671)
!1753 = !DILocation(line: 689, column: 25, scope: !1754)
!1754 = !DILexicalBlockFile(scope: !1755, file: !185, discriminator: 1)
!1755 = distinct !DILexicalBlock(scope: !1756, file: !185, line: 689, column: 25)
!1756 = distinct !DILexicalBlock(scope: !1757, file: !185, line: 689, column: 25)
!1757 = distinct !DILexicalBlock(scope: !1751, file: !185, line: 688, column: 23)
!1758 = !DILocation(line: 689, column: 25, scope: !1759)
!1759 = !DILexicalBlockFile(scope: !1756, file: !185, discriminator: 1)
!1760 = !DILocation(line: 689, column: 25, scope: !1761)
!1761 = !DILexicalBlockFile(scope: !1755, file: !185, discriminator: 2)
!1762 = !DILocation(line: 689, column: 25, scope: !1763)
!1763 = !DILexicalBlockFile(scope: !1756, file: !185, discriminator: 3)
!1764 = !DILocation(line: 691, column: 23, scope: !1757)
!1765 = !DILocation(line: 692, column: 35, scope: !1766)
!1766 = distinct !DILexicalBlock(scope: !1672, file: !185, line: 692, column: 25)
!1767 = !DILocation(line: 692, column: 30, scope: !1766)
!1768 = !DILocation(line: 692, column: 25, scope: !1672)
!1769 = !DILocation(line: 694, column: 21, scope: !1770)
!1770 = !DILexicalBlockFile(scope: !1771, file: !185, discriminator: 1)
!1771 = distinct !DILexicalBlock(scope: !1772, file: !185, line: 694, column: 21)
!1772 = distinct !DILexicalBlock(scope: !1672, file: !185, line: 694, column: 21)
!1773 = !DILocation(line: 694, column: 21, scope: !1774)
!1774 = !DILexicalBlockFile(scope: !1771, file: !185, discriminator: 2)
!1775 = !DILocation(line: 694, column: 21, scope: !1776)
!1776 = !DILexicalBlockFile(scope: !1777, file: !185, discriminator: 4)
!1777 = distinct !DILexicalBlock(scope: !1778, file: !185, line: 694, column: 21)
!1778 = distinct !DILexicalBlock(scope: !1779, file: !185, line: 694, column: 21)
!1779 = distinct !DILexicalBlock(scope: !1771, file: !185, line: 694, column: 21)
!1780 = !DILocation(line: 694, column: 21, scope: !1781)
!1781 = !DILexicalBlockFile(scope: !1778, file: !185, discriminator: 4)
!1782 = !DILocation(line: 694, column: 21, scope: !1783)
!1783 = !DILexicalBlockFile(scope: !1777, file: !185, discriminator: 5)
!1784 = !DILocation(line: 694, column: 21, scope: !1785)
!1785 = !DILexicalBlockFile(scope: !1778, file: !185, discriminator: 6)
!1786 = !DILocation(line: 694, column: 21, scope: !1787)
!1787 = !DILexicalBlockFile(scope: !1788, file: !185, discriminator: 9)
!1788 = distinct !DILexicalBlock(scope: !1789, file: !185, line: 694, column: 21)
!1789 = distinct !DILexicalBlock(scope: !1779, file: !185, line: 694, column: 21)
!1790 = !DILocation(line: 694, column: 21, scope: !1791)
!1791 = !DILexicalBlockFile(scope: !1789, file: !185, discriminator: 9)
!1792 = !DILocation(line: 694, column: 21, scope: !1793)
!1793 = !DILexicalBlockFile(scope: !1788, file: !185, discriminator: 10)
!1794 = !DILocation(line: 694, column: 21, scope: !1795)
!1795 = !DILexicalBlockFile(scope: !1789, file: !185, discriminator: 11)
!1796 = !DILocation(line: 694, column: 21, scope: !1797)
!1797 = !DILexicalBlockFile(scope: !1779, file: !185, discriminator: 13)
!1798 = !DILocation(line: 695, column: 21, scope: !1799)
!1799 = !DILexicalBlockFile(scope: !1800, file: !185, discriminator: 1)
!1800 = distinct !DILexicalBlock(scope: !1801, file: !185, line: 695, column: 21)
!1801 = distinct !DILexicalBlock(scope: !1672, file: !185, line: 695, column: 21)
!1802 = !DILocation(line: 695, column: 21, scope: !1803)
!1803 = !DILexicalBlockFile(scope: !1801, file: !185, discriminator: 1)
!1804 = !DILocation(line: 695, column: 21, scope: !1805)
!1805 = !DILexicalBlockFile(scope: !1800, file: !185, discriminator: 2)
!1806 = !DILocation(line: 695, column: 21, scope: !1807)
!1807 = !DILexicalBlockFile(scope: !1801, file: !185, discriminator: 3)
!1808 = !DILocation(line: 696, column: 25, scope: !1672)
!1809 = !DILocation(line: 678, column: 17, scope: !1810)
!1810 = !DILexicalBlockFile(scope: !1673, file: !185, discriminator: 1)
!1811 = distinct !{!1811, !1812, !1813}
!1812 = !DILocation(line: 678, column: 17, scope: !1674)
!1813 = !DILocation(line: 697, column: 19, scope: !1674)
!1814 = !DILocation(line: 704, column: 34, scope: !1815)
!1815 = distinct !DILexicalBlock(scope: !1218, file: !185, line: 704, column: 11)
!1816 = !DILocation(line: 706, column: 14, scope: !1815)
!1817 = !DILocation(line: 707, column: 14, scope: !1815)
!1818 = !DILocation(line: 707, column: 35, scope: !1819)
!1819 = !DILexicalBlockFile(scope: !1815, file: !185, discriminator: 1)
!1820 = !DILocation(line: 707, column: 17, scope: !1819)
!1821 = !DILocation(line: 707, column: 53, scope: !1819)
!1822 = !DILocation(line: 707, column: 47, scope: !1819)
!1823 = !DILocation(line: 707, column: 65, scope: !1819)
!1824 = !DILocation(line: 708, column: 15, scope: !1819)
!1825 = !DILocation(line: 708, column: 11, scope: !1815)
!1826 = !DILocation(line: 704, column: 11, scope: !1827)
!1827 = !DILexicalBlockFile(scope: !1218, file: !185, discriminator: 2)
!1828 = !DILocation(line: 712, column: 7, scope: !1829)
!1829 = !DILexicalBlockFile(scope: !1830, file: !185, discriminator: 1)
!1830 = distinct !DILexicalBlock(scope: !1218, file: !185, line: 712, column: 7)
!1831 = !DILocation(line: 712, column: 7, scope: !1832)
!1832 = !DILexicalBlockFile(scope: !1833, file: !185, discriminator: 4)
!1833 = distinct !DILexicalBlock(scope: !1830, file: !185, line: 712, column: 7)
!1834 = !DILocation(line: 712, column: 7, scope: !1835)
!1835 = !DILexicalBlockFile(scope: !1833, file: !185, discriminator: 3)
!1836 = !DILocation(line: 712, column: 7, scope: !1837)
!1837 = !DILexicalBlockFile(scope: !1838, file: !185, discriminator: 6)
!1838 = distinct !DILexicalBlock(scope: !1839, file: !185, line: 712, column: 7)
!1839 = distinct !DILexicalBlock(scope: !1840, file: !185, line: 712, column: 7)
!1840 = distinct !DILexicalBlock(scope: !1833, file: !185, line: 712, column: 7)
!1841 = !DILocation(line: 712, column: 7, scope: !1842)
!1842 = !DILexicalBlockFile(scope: !1839, file: !185, discriminator: 6)
!1843 = !DILocation(line: 712, column: 7, scope: !1844)
!1844 = !DILexicalBlockFile(scope: !1838, file: !185, discriminator: 7)
!1845 = !DILocation(line: 712, column: 7, scope: !1846)
!1846 = !DILexicalBlockFile(scope: !1839, file: !185, discriminator: 8)
!1847 = !DILocation(line: 712, column: 7, scope: !1848)
!1848 = !DILexicalBlockFile(scope: !1849, file: !185, discriminator: 11)
!1849 = distinct !DILexicalBlock(scope: !1850, file: !185, line: 712, column: 7)
!1850 = distinct !DILexicalBlock(scope: !1840, file: !185, line: 712, column: 7)
!1851 = !DILocation(line: 712, column: 7, scope: !1852)
!1852 = !DILexicalBlockFile(scope: !1850, file: !185, discriminator: 11)
!1853 = !DILocation(line: 712, column: 7, scope: !1854)
!1854 = !DILexicalBlockFile(scope: !1849, file: !185, discriminator: 12)
!1855 = !DILocation(line: 712, column: 7, scope: !1856)
!1856 = !DILexicalBlockFile(scope: !1850, file: !185, discriminator: 13)
!1857 = !DILocation(line: 712, column: 7, scope: !1858)
!1858 = !DILexicalBlockFile(scope: !1859, file: !185, discriminator: 16)
!1859 = distinct !DILexicalBlock(scope: !1860, file: !185, line: 712, column: 7)
!1860 = distinct !DILexicalBlock(scope: !1840, file: !185, line: 712, column: 7)
!1861 = !DILocation(line: 712, column: 7, scope: !1862)
!1862 = !DILexicalBlockFile(scope: !1860, file: !185, discriminator: 16)
!1863 = !DILocation(line: 712, column: 7, scope: !1864)
!1864 = !DILexicalBlockFile(scope: !1859, file: !185, discriminator: 17)
!1865 = !DILocation(line: 712, column: 7, scope: !1866)
!1866 = !DILexicalBlockFile(scope: !1860, file: !185, discriminator: 18)
!1867 = !DILocation(line: 712, column: 7, scope: !1868)
!1868 = !DILexicalBlockFile(scope: !1840, file: !185, discriminator: 20)
!1869 = !DILocation(line: 712, column: 7, scope: !1870)
!1870 = !DILexicalBlockFile(scope: !1871, file: !185, discriminator: 22)
!1871 = distinct !DILexicalBlock(scope: !1872, file: !185, line: 712, column: 7)
!1872 = distinct !DILexicalBlock(scope: !1830, file: !185, line: 712, column: 7)
!1873 = !DILocation(line: 712, column: 7, scope: !1874)
!1874 = !DILexicalBlockFile(scope: !1872, file: !185, discriminator: 22)
!1875 = !DILocation(line: 712, column: 7, scope: !1876)
!1876 = !DILexicalBlockFile(scope: !1871, file: !185, discriminator: 23)
!1877 = !DILocation(line: 712, column: 7, scope: !1878)
!1878 = !DILexicalBlockFile(scope: !1872, file: !185, discriminator: 24)
!1879 = !DILocation(line: 715, column: 7, scope: !1880)
!1880 = !DILexicalBlockFile(scope: !1881, file: !185, discriminator: 1)
!1881 = distinct !DILexicalBlock(scope: !1882, file: !185, line: 715, column: 7)
!1882 = distinct !DILexicalBlock(scope: !1218, file: !185, line: 715, column: 7)
!1883 = !DILocation(line: 715, column: 7, scope: !1884)
!1884 = !DILexicalBlockFile(scope: !1881, file: !185, discriminator: 2)
!1885 = !DILocation(line: 715, column: 7, scope: !1886)
!1886 = !DILexicalBlockFile(scope: !1887, file: !185, discriminator: 4)
!1887 = distinct !DILexicalBlock(scope: !1888, file: !185, line: 715, column: 7)
!1888 = distinct !DILexicalBlock(scope: !1889, file: !185, line: 715, column: 7)
!1889 = distinct !DILexicalBlock(scope: !1881, file: !185, line: 715, column: 7)
!1890 = !DILocation(line: 715, column: 7, scope: !1891)
!1891 = !DILexicalBlockFile(scope: !1888, file: !185, discriminator: 4)
!1892 = !DILocation(line: 715, column: 7, scope: !1893)
!1893 = !DILexicalBlockFile(scope: !1887, file: !185, discriminator: 5)
!1894 = !DILocation(line: 715, column: 7, scope: !1895)
!1895 = !DILexicalBlockFile(scope: !1888, file: !185, discriminator: 6)
!1896 = !DILocation(line: 715, column: 7, scope: !1897)
!1897 = !DILexicalBlockFile(scope: !1898, file: !185, discriminator: 9)
!1898 = distinct !DILexicalBlock(scope: !1899, file: !185, line: 715, column: 7)
!1899 = distinct !DILexicalBlock(scope: !1889, file: !185, line: 715, column: 7)
!1900 = !DILocation(line: 715, column: 7, scope: !1901)
!1901 = !DILexicalBlockFile(scope: !1899, file: !185, discriminator: 9)
!1902 = !DILocation(line: 715, column: 7, scope: !1903)
!1903 = !DILexicalBlockFile(scope: !1898, file: !185, discriminator: 10)
!1904 = !DILocation(line: 715, column: 7, scope: !1905)
!1905 = !DILexicalBlockFile(scope: !1899, file: !185, discriminator: 11)
!1906 = !DILocation(line: 715, column: 7, scope: !1907)
!1907 = !DILexicalBlockFile(scope: !1889, file: !185, discriminator: 13)
!1908 = !DILocation(line: 716, column: 7, scope: !1909)
!1909 = !DILexicalBlockFile(scope: !1910, file: !185, discriminator: 1)
!1910 = distinct !DILexicalBlock(scope: !1911, file: !185, line: 716, column: 7)
!1911 = distinct !DILexicalBlock(scope: !1218, file: !185, line: 716, column: 7)
!1912 = !DILocation(line: 716, column: 7, scope: !1913)
!1913 = !DILexicalBlockFile(scope: !1911, file: !185, discriminator: 1)
!1914 = !DILocation(line: 716, column: 7, scope: !1915)
!1915 = !DILexicalBlockFile(scope: !1910, file: !185, discriminator: 2)
!1916 = !DILocation(line: 716, column: 7, scope: !1917)
!1917 = !DILexicalBlockFile(scope: !1911, file: !185, discriminator: 3)
!1918 = !DILocation(line: 718, column: 13, scope: !1919)
!1919 = distinct !DILexicalBlock(scope: !1218, file: !185, line: 718, column: 11)
!1920 = !DILocation(line: 718, column: 11, scope: !1218)
!1921 = !DILocation(line: 720, column: 5, scope: !1219)
!1922 = !DILocation(line: 392, column: 75, scope: !1923)
!1923 = !DILexicalBlockFile(scope: !1219, file: !185, discriminator: 5)
!1924 = !DILocation(line: 392, column: 3, scope: !1923)
!1925 = distinct !{!1925, !1926, !1927}
!1926 = !DILocation(line: 392, column: 3, scope: !1220)
!1927 = !DILocation(line: 720, column: 5, scope: !1220)
!1928 = !DILocation(line: 722, column: 11, scope: !1929)
!1929 = distinct !DILexicalBlock(scope: !1191, file: !185, line: 722, column: 7)
!1930 = !DILocation(line: 722, column: 16, scope: !1929)
!1931 = !DILocation(line: 730, column: 51, scope: !1932)
!1932 = distinct !DILexicalBlock(scope: !1191, file: !185, line: 730, column: 7)
!1933 = !DILocation(line: 731, column: 10, scope: !1934)
!1934 = !DILexicalBlockFile(scope: !1932, file: !185, discriminator: 1)
!1935 = !DILocation(line: 733, column: 11, scope: !1936)
!1936 = distinct !DILexicalBlock(scope: !1937, file: !185, line: 733, column: 11)
!1937 = distinct !DILexicalBlock(scope: !1932, file: !185, line: 732, column: 5)
!1938 = !DILocation(line: 733, column: 11, scope: !1937)
!1939 = !DILocation(line: 734, column: 16, scope: !1936)
!1940 = !DILocation(line: 734, column: 9, scope: !1936)
!1941 = !DILocation(line: 738, column: 18, scope: !1942)
!1942 = distinct !DILexicalBlock(scope: !1936, file: !185, line: 738, column: 16)
!1943 = !DILocation(line: 738, column: 32, scope: !1944)
!1944 = !DILexicalBlockFile(scope: !1942, file: !185, discriminator: 1)
!1945 = !DILocation(line: 738, column: 29, scope: !1942)
!1946 = !DILocation(line: 747, column: 7, scope: !1947)
!1947 = distinct !DILexicalBlock(scope: !1191, file: !185, line: 747, column: 7)
!1948 = !DILocation(line: 747, column: 20, scope: !1947)
!1949 = !DILocation(line: 748, column: 12, scope: !1950)
!1950 = !DILexicalBlockFile(scope: !1951, file: !185, discriminator: 1)
!1951 = distinct !DILexicalBlock(scope: !1952, file: !185, line: 748, column: 5)
!1952 = distinct !DILexicalBlock(scope: !1947, file: !185, line: 748, column: 5)
!1953 = !DILocation(line: 748, column: 5, scope: !1954)
!1954 = !DILexicalBlockFile(scope: !1952, file: !185, discriminator: 1)
!1955 = !DILocation(line: 749, column: 7, scope: !1956)
!1956 = !DILexicalBlockFile(scope: !1957, file: !185, discriminator: 1)
!1957 = distinct !DILexicalBlock(scope: !1958, file: !185, line: 749, column: 7)
!1958 = distinct !DILexicalBlock(scope: !1951, file: !185, line: 749, column: 7)
!1959 = !DILocation(line: 749, column: 7, scope: !1960)
!1960 = !DILexicalBlockFile(scope: !1958, file: !185, discriminator: 1)
!1961 = !DILocation(line: 749, column: 7, scope: !1962)
!1962 = !DILexicalBlockFile(scope: !1957, file: !185, discriminator: 2)
!1963 = !DILocation(line: 749, column: 7, scope: !1964)
!1964 = !DILexicalBlockFile(scope: !1958, file: !185, discriminator: 3)
!1965 = !DILocation(line: 748, column: 39, scope: !1966)
!1966 = !DILexicalBlockFile(scope: !1951, file: !185, discriminator: 2)
!1967 = distinct !{!1967, !1968, !1969}
!1968 = !DILocation(line: 748, column: 5, scope: !1952)
!1969 = !DILocation(line: 749, column: 7, scope: !1952)
!1970 = !DILocation(line: 751, column: 11, scope: !1971)
!1971 = distinct !DILexicalBlock(scope: !1191, file: !185, line: 751, column: 7)
!1972 = !DILocation(line: 751, column: 7, scope: !1191)
!1973 = !DILocation(line: 752, column: 5, scope: !1971)
!1974 = !DILocation(line: 752, column: 17, scope: !1971)
!1975 = !DILocation(line: 758, column: 21, scope: !1976)
!1976 = distinct !DILexicalBlock(scope: !1191, file: !185, line: 758, column: 7)
!1977 = !DILocation(line: 758, column: 54, scope: !1978)
!1978 = !DILexicalBlockFile(scope: !1976, file: !185, discriminator: 1)
!1979 = !DILocation(line: 758, column: 51, scope: !1976)
!1980 = !DILocation(line: 762, column: 42, scope: !1191)
!1981 = !DILocation(line: 760, column: 10, scope: !1191)
!1982 = !DILocation(line: 760, column: 3, scope: !1191)
!1983 = !DILocation(line: 764, column: 1, scope: !1191)
!1984 = distinct !DISubprogram(name: "gettext_quote", scope: !185, file: !185, line: 199, type: !1985, isLocal: true, isDefinition: true, scopeLine: 200, flags: DIFlagPrototyped, isOptimized: true, unit: !143, variables: !1987)
!1985 = !DISubroutineType(types: !1986)
!1986 = !{!6, !6, !146}
!1987 = !{!1988, !1989, !1990, !1991}
!1988 = !DILocalVariable(name: "msgid", arg: 1, scope: !1984, file: !185, line: 199, type: !6)
!1989 = !DILocalVariable(name: "s", arg: 2, scope: !1984, file: !185, line: 199, type: !146)
!1990 = !DILocalVariable(name: "translation", scope: !1984, file: !185, line: 201, type: !6)
!1991 = !DILocalVariable(name: "locale_code", scope: !1984, file: !185, line: 202, type: !6)
!1992 = !DILocation(line: 199, column: 28, scope: !1984)
!1993 = !DILocation(line: 199, column: 54, scope: !1984)
!1994 = !DILocation(line: 201, column: 29, scope: !1984)
!1995 = !DILocation(line: 201, column: 15, scope: !1984)
!1996 = !DILocation(line: 204, column: 19, scope: !1997)
!1997 = distinct !DILexicalBlock(scope: !1984, file: !185, line: 204, column: 7)
!1998 = !DILocation(line: 204, column: 7, scope: !1984)
!1999 = !DILocation(line: 225, column: 17, scope: !1984)
!2000 = !DILocation(line: 202, column: 15, scope: !1984)
!2001 = !DILocalVariable(name: "s2", arg: 2, scope: !2002, file: !2003, line: 160, type: !6)
!2002 = distinct !DISubprogram(name: "strcaseeq0", scope: !2003, file: !2003, line: 160, type: !2004, isLocal: true, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !143, variables: !2006)
!2003 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2004 = !DISubroutineType(types: !2005)
!2005 = !{!29, !6, !6, !8, !8, !8, !8, !8, !8, !8, !8, !8}
!2006 = !{!2007, !2001, !2008, !2009, !2010, !2011, !2012, !2013, !2014, !2015, !2016}
!2007 = !DILocalVariable(name: "s1", arg: 1, scope: !2002, file: !2003, line: 160, type: !6)
!2008 = !DILocalVariable(name: "s20", arg: 3, scope: !2002, file: !2003, line: 160, type: !8)
!2009 = !DILocalVariable(name: "s21", arg: 4, scope: !2002, file: !2003, line: 160, type: !8)
!2010 = !DILocalVariable(name: "s22", arg: 5, scope: !2002, file: !2003, line: 160, type: !8)
!2011 = !DILocalVariable(name: "s23", arg: 6, scope: !2002, file: !2003, line: 160, type: !8)
!2012 = !DILocalVariable(name: "s24", arg: 7, scope: !2002, file: !2003, line: 160, type: !8)
!2013 = !DILocalVariable(name: "s25", arg: 8, scope: !2002, file: !2003, line: 160, type: !8)
!2014 = !DILocalVariable(name: "s26", arg: 9, scope: !2002, file: !2003, line: 160, type: !8)
!2015 = !DILocalVariable(name: "s27", arg: 10, scope: !2002, file: !2003, line: 160, type: !8)
!2016 = !DILocalVariable(name: "s28", arg: 11, scope: !2002, file: !2003, line: 160, type: !8)
!2017 = !DILocation(line: 160, column: 41, scope: !2002, inlinedAt: !2018)
!2018 = distinct !DILocation(line: 226, column: 7, scope: !2019)
!2019 = distinct !DILexicalBlock(scope: !1984, file: !185, line: 226, column: 7)
!2020 = !DILocation(line: 160, column: 120, scope: !2002, inlinedAt: !2018)
!2021 = !DILocation(line: 160, column: 130, scope: !2002, inlinedAt: !2018)
!2022 = !DILocation(line: 162, column: 7, scope: !2023, inlinedAt: !2018)
!2023 = !DILexicalBlockFile(scope: !2024, file: !2003, discriminator: 1)
!2024 = distinct !DILexicalBlock(scope: !2002, file: !2003, line: 162, column: 7)
!2025 = !DILocalVariable(name: "s2", arg: 2, scope: !2026, file: !2003, line: 146, type: !6)
!2026 = distinct !DISubprogram(name: "strcaseeq1", scope: !2003, file: !2003, line: 146, type: !2027, isLocal: true, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: true, unit: !143, variables: !2029)
!2027 = !DISubroutineType(types: !2028)
!2028 = !{!29, !6, !6, !8, !8, !8, !8, !8, !8, !8, !8}
!2029 = !{!2030, !2025, !2031, !2032, !2033, !2034, !2035, !2036, !2037, !2038}
!2030 = !DILocalVariable(name: "s1", arg: 1, scope: !2026, file: !2003, line: 146, type: !6)
!2031 = !DILocalVariable(name: "s21", arg: 3, scope: !2026, file: !2003, line: 146, type: !8)
!2032 = !DILocalVariable(name: "s22", arg: 4, scope: !2026, file: !2003, line: 146, type: !8)
!2033 = !DILocalVariable(name: "s23", arg: 5, scope: !2026, file: !2003, line: 146, type: !8)
!2034 = !DILocalVariable(name: "s24", arg: 6, scope: !2026, file: !2003, line: 146, type: !8)
!2035 = !DILocalVariable(name: "s25", arg: 7, scope: !2026, file: !2003, line: 146, type: !8)
!2036 = !DILocalVariable(name: "s26", arg: 8, scope: !2026, file: !2003, line: 146, type: !8)
!2037 = !DILocalVariable(name: "s27", arg: 9, scope: !2026, file: !2003, line: 146, type: !8)
!2038 = !DILocalVariable(name: "s28", arg: 10, scope: !2026, file: !2003, line: 146, type: !8)
!2039 = !DILocation(line: 146, column: 41, scope: !2026, inlinedAt: !2040)
!2040 = distinct !DILocation(line: 167, column: 16, scope: !2041, inlinedAt: !2018)
!2041 = distinct !DILexicalBlock(scope: !2042, file: !2003, line: 164, column: 11)
!2042 = distinct !DILexicalBlock(scope: !2024, file: !2003, line: 163, column: 5)
!2043 = !DILocation(line: 146, column: 110, scope: !2026, inlinedAt: !2040)
!2044 = !DILocation(line: 146, column: 120, scope: !2026, inlinedAt: !2040)
!2045 = !DILocation(line: 148, column: 7, scope: !2046, inlinedAt: !2040)
!2046 = !DILexicalBlockFile(scope: !2047, file: !2003, discriminator: 1)
!2047 = distinct !DILexicalBlock(scope: !2026, file: !2003, line: 148, column: 7)
!2048 = !DILocalVariable(name: "s2", arg: 2, scope: !2049, file: !2003, line: 132, type: !6)
!2049 = distinct !DISubprogram(name: "strcaseeq2", scope: !2003, file: !2003, line: 132, type: !2050, isLocal: true, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !143, variables: !2052)
!2050 = !DISubroutineType(types: !2051)
!2051 = !{!29, !6, !6, !8, !8, !8, !8, !8, !8, !8}
!2052 = !{!2053, !2048, !2054, !2055, !2056, !2057, !2058, !2059, !2060}
!2053 = !DILocalVariable(name: "s1", arg: 1, scope: !2049, file: !2003, line: 132, type: !6)
!2054 = !DILocalVariable(name: "s22", arg: 3, scope: !2049, file: !2003, line: 132, type: !8)
!2055 = !DILocalVariable(name: "s23", arg: 4, scope: !2049, file: !2003, line: 132, type: !8)
!2056 = !DILocalVariable(name: "s24", arg: 5, scope: !2049, file: !2003, line: 132, type: !8)
!2057 = !DILocalVariable(name: "s25", arg: 6, scope: !2049, file: !2003, line: 132, type: !8)
!2058 = !DILocalVariable(name: "s26", arg: 7, scope: !2049, file: !2003, line: 132, type: !8)
!2059 = !DILocalVariable(name: "s27", arg: 8, scope: !2049, file: !2003, line: 132, type: !8)
!2060 = !DILocalVariable(name: "s28", arg: 9, scope: !2049, file: !2003, line: 132, type: !8)
!2061 = !DILocation(line: 132, column: 41, scope: !2049, inlinedAt: !2062)
!2062 = distinct !DILocation(line: 153, column: 16, scope: !2063, inlinedAt: !2040)
!2063 = distinct !DILexicalBlock(scope: !2064, file: !2003, line: 150, column: 11)
!2064 = distinct !DILexicalBlock(scope: !2047, file: !2003, line: 149, column: 5)
!2065 = !DILocation(line: 132, column: 100, scope: !2049, inlinedAt: !2062)
!2066 = !DILocation(line: 132, column: 110, scope: !2049, inlinedAt: !2062)
!2067 = !DILocation(line: 134, column: 7, scope: !2068, inlinedAt: !2062)
!2068 = !DILexicalBlockFile(scope: !2069, file: !2003, discriminator: 1)
!2069 = distinct !DILexicalBlock(scope: !2049, file: !2003, line: 134, column: 7)
!2070 = !DILocalVariable(name: "s2", arg: 2, scope: !2071, file: !2003, line: 118, type: !6)
!2071 = distinct !DISubprogram(name: "strcaseeq3", scope: !2003, file: !2003, line: 118, type: !2072, isLocal: true, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !143, variables: !2074)
!2072 = !DISubroutineType(types: !2073)
!2073 = !{!29, !6, !6, !8, !8, !8, !8, !8, !8}
!2074 = !{!2075, !2070, !2076, !2077, !2078, !2079, !2080, !2081}
!2075 = !DILocalVariable(name: "s1", arg: 1, scope: !2071, file: !2003, line: 118, type: !6)
!2076 = !DILocalVariable(name: "s23", arg: 3, scope: !2071, file: !2003, line: 118, type: !8)
!2077 = !DILocalVariable(name: "s24", arg: 4, scope: !2071, file: !2003, line: 118, type: !8)
!2078 = !DILocalVariable(name: "s25", arg: 5, scope: !2071, file: !2003, line: 118, type: !8)
!2079 = !DILocalVariable(name: "s26", arg: 6, scope: !2071, file: !2003, line: 118, type: !8)
!2080 = !DILocalVariable(name: "s27", arg: 7, scope: !2071, file: !2003, line: 118, type: !8)
!2081 = !DILocalVariable(name: "s28", arg: 8, scope: !2071, file: !2003, line: 118, type: !8)
!2082 = !DILocation(line: 118, column: 41, scope: !2071, inlinedAt: !2083)
!2083 = distinct !DILocation(line: 139, column: 16, scope: !2084, inlinedAt: !2062)
!2084 = distinct !DILexicalBlock(scope: !2085, file: !2003, line: 136, column: 11)
!2085 = distinct !DILexicalBlock(scope: !2069, file: !2003, line: 135, column: 5)
!2086 = !DILocation(line: 118, column: 90, scope: !2071, inlinedAt: !2083)
!2087 = !DILocation(line: 118, column: 100, scope: !2071, inlinedAt: !2083)
!2088 = !DILocation(line: 120, column: 7, scope: !2089, inlinedAt: !2083)
!2089 = !DILexicalBlockFile(scope: !2090, file: !2003, discriminator: 2)
!2090 = distinct !DILexicalBlock(scope: !2071, file: !2003, line: 120, column: 7)
!2091 = !DILocation(line: 120, column: 7, scope: !2092, inlinedAt: !2083)
!2092 = !DILexicalBlockFile(scope: !2071, file: !2003, discriminator: 2)
!2093 = !DILocalVariable(name: "s2", arg: 2, scope: !2094, file: !2003, line: 104, type: !6)
!2094 = distinct !DISubprogram(name: "strcaseeq4", scope: !2003, file: !2003, line: 104, type: !2095, isLocal: true, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, unit: !143, variables: !2097)
!2095 = !DISubroutineType(types: !2096)
!2096 = !{!29, !6, !6, !8, !8, !8, !8, !8}
!2097 = !{!2098, !2093, !2099, !2100, !2101, !2102, !2103}
!2098 = !DILocalVariable(name: "s1", arg: 1, scope: !2094, file: !2003, line: 104, type: !6)
!2099 = !DILocalVariable(name: "s24", arg: 3, scope: !2094, file: !2003, line: 104, type: !8)
!2100 = !DILocalVariable(name: "s25", arg: 4, scope: !2094, file: !2003, line: 104, type: !8)
!2101 = !DILocalVariable(name: "s26", arg: 5, scope: !2094, file: !2003, line: 104, type: !8)
!2102 = !DILocalVariable(name: "s27", arg: 6, scope: !2094, file: !2003, line: 104, type: !8)
!2103 = !DILocalVariable(name: "s28", arg: 7, scope: !2094, file: !2003, line: 104, type: !8)
!2104 = !DILocation(line: 104, column: 41, scope: !2094, inlinedAt: !2105)
!2105 = distinct !DILocation(line: 125, column: 16, scope: !2106, inlinedAt: !2083)
!2106 = distinct !DILexicalBlock(scope: !2107, file: !2003, line: 122, column: 11)
!2107 = distinct !DILexicalBlock(scope: !2090, file: !2003, line: 121, column: 5)
!2108 = !DILocation(line: 104, column: 80, scope: !2094, inlinedAt: !2105)
!2109 = !DILocation(line: 104, column: 90, scope: !2094, inlinedAt: !2105)
!2110 = !DILocation(line: 106, column: 7, scope: !2111, inlinedAt: !2105)
!2111 = !DILexicalBlockFile(scope: !2112, file: !2003, discriminator: 2)
!2112 = distinct !DILexicalBlock(scope: !2094, file: !2003, line: 106, column: 7)
!2113 = !DILocation(line: 106, column: 7, scope: !2114, inlinedAt: !2105)
!2114 = !DILexicalBlockFile(scope: !2094, file: !2003, discriminator: 2)
!2115 = !DILocalVariable(name: "s2", arg: 2, scope: !2116, file: !2003, line: 90, type: !6)
!2116 = distinct !DISubprogram(name: "strcaseeq5", scope: !2003, file: !2003, line: 90, type: !2117, isLocal: true, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: true, unit: !143, variables: !2119)
!2117 = !DISubroutineType(types: !2118)
!2118 = !{!29, !6, !6, !8, !8, !8, !8}
!2119 = !{!2120, !2115, !2121, !2122, !2123, !2124}
!2120 = !DILocalVariable(name: "s1", arg: 1, scope: !2116, file: !2003, line: 90, type: !6)
!2121 = !DILocalVariable(name: "s25", arg: 3, scope: !2116, file: !2003, line: 90, type: !8)
!2122 = !DILocalVariable(name: "s26", arg: 4, scope: !2116, file: !2003, line: 90, type: !8)
!2123 = !DILocalVariable(name: "s27", arg: 5, scope: !2116, file: !2003, line: 90, type: !8)
!2124 = !DILocalVariable(name: "s28", arg: 6, scope: !2116, file: !2003, line: 90, type: !8)
!2125 = !DILocation(line: 90, column: 41, scope: !2116, inlinedAt: !2126)
!2126 = distinct !DILocation(line: 111, column: 16, scope: !2127, inlinedAt: !2105)
!2127 = distinct !DILexicalBlock(scope: !2128, file: !2003, line: 108, column: 11)
!2128 = distinct !DILexicalBlock(scope: !2112, file: !2003, line: 107, column: 5)
!2129 = !DILocation(line: 90, column: 70, scope: !2116, inlinedAt: !2126)
!2130 = !DILocation(line: 90, column: 80, scope: !2116, inlinedAt: !2126)
!2131 = !DILocation(line: 92, column: 7, scope: !2132, inlinedAt: !2126)
!2132 = !DILexicalBlockFile(scope: !2133, file: !2003, discriminator: 2)
!2133 = distinct !DILexicalBlock(scope: !2116, file: !2003, line: 92, column: 7)
!2134 = !DILocation(line: 92, column: 7, scope: !2135, inlinedAt: !2126)
!2135 = !DILexicalBlockFile(scope: !2116, file: !2003, discriminator: 2)
!2136 = !DILocation(line: 227, column: 12, scope: !2019)
!2137 = !DILocation(line: 227, column: 21, scope: !2019)
!2138 = !DILocation(line: 227, column: 5, scope: !2019)
!2139 = !DILocation(line: 146, column: 41, scope: !2026, inlinedAt: !2140)
!2140 = distinct !DILocation(line: 167, column: 16, scope: !2041, inlinedAt: !2141)
!2141 = distinct !DILocation(line: 228, column: 7, scope: !2142)
!2142 = distinct !DILexicalBlock(scope: !1984, file: !185, line: 228, column: 7)
!2143 = !DILocation(line: 146, column: 110, scope: !2026, inlinedAt: !2140)
!2144 = !DILocation(line: 146, column: 120, scope: !2026, inlinedAt: !2140)
!2145 = !DILocation(line: 148, column: 7, scope: !2046, inlinedAt: !2140)
!2146 = !DILocation(line: 132, column: 41, scope: !2049, inlinedAt: !2147)
!2147 = distinct !DILocation(line: 153, column: 16, scope: !2063, inlinedAt: !2140)
!2148 = !DILocation(line: 132, column: 100, scope: !2049, inlinedAt: !2147)
!2149 = !DILocation(line: 132, column: 110, scope: !2049, inlinedAt: !2147)
!2150 = !DILocation(line: 134, column: 7, scope: !2151, inlinedAt: !2147)
!2151 = !DILexicalBlockFile(scope: !2069, file: !2003, discriminator: 2)
!2152 = !DILocation(line: 134, column: 7, scope: !2153, inlinedAt: !2147)
!2153 = !DILexicalBlockFile(scope: !2049, file: !2003, discriminator: 2)
!2154 = !DILocation(line: 118, column: 41, scope: !2071, inlinedAt: !2155)
!2155 = distinct !DILocation(line: 139, column: 16, scope: !2084, inlinedAt: !2147)
!2156 = !DILocation(line: 118, column: 90, scope: !2071, inlinedAt: !2155)
!2157 = !DILocation(line: 118, column: 100, scope: !2071, inlinedAt: !2155)
!2158 = !DILocation(line: 120, column: 7, scope: !2089, inlinedAt: !2155)
!2159 = !DILocation(line: 120, column: 7, scope: !2092, inlinedAt: !2155)
!2160 = !DILocation(line: 104, column: 41, scope: !2094, inlinedAt: !2161)
!2161 = distinct !DILocation(line: 125, column: 16, scope: !2106, inlinedAt: !2155)
!2162 = !DILocation(line: 104, column: 80, scope: !2094, inlinedAt: !2161)
!2163 = !DILocation(line: 104, column: 90, scope: !2094, inlinedAt: !2161)
!2164 = !DILocation(line: 106, column: 7, scope: !2111, inlinedAt: !2161)
!2165 = !DILocation(line: 106, column: 7, scope: !2114, inlinedAt: !2161)
!2166 = !DILocation(line: 90, column: 41, scope: !2116, inlinedAt: !2167)
!2167 = distinct !DILocation(line: 111, column: 16, scope: !2127, inlinedAt: !2161)
!2168 = !DILocation(line: 90, column: 70, scope: !2116, inlinedAt: !2167)
!2169 = !DILocation(line: 90, column: 80, scope: !2116, inlinedAt: !2167)
!2170 = !DILocation(line: 92, column: 7, scope: !2132, inlinedAt: !2167)
!2171 = !DILocation(line: 92, column: 7, scope: !2135, inlinedAt: !2167)
!2172 = !DILocalVariable(name: "s2", arg: 2, scope: !2173, file: !2003, line: 76, type: !6)
!2173 = distinct !DISubprogram(name: "strcaseeq6", scope: !2003, file: !2003, line: 76, type: !2174, isLocal: true, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: true, unit: !143, variables: !2176)
!2174 = !DISubroutineType(types: !2175)
!2175 = !{!29, !6, !6, !8, !8, !8}
!2176 = !{!2177, !2172, !2178, !2179, !2180}
!2177 = !DILocalVariable(name: "s1", arg: 1, scope: !2173, file: !2003, line: 76, type: !6)
!2178 = !DILocalVariable(name: "s26", arg: 3, scope: !2173, file: !2003, line: 76, type: !8)
!2179 = !DILocalVariable(name: "s27", arg: 4, scope: !2173, file: !2003, line: 76, type: !8)
!2180 = !DILocalVariable(name: "s28", arg: 5, scope: !2173, file: !2003, line: 76, type: !8)
!2181 = !DILocation(line: 76, column: 41, scope: !2173, inlinedAt: !2182)
!2182 = distinct !DILocation(line: 97, column: 16, scope: !2183, inlinedAt: !2167)
!2183 = distinct !DILexicalBlock(scope: !2184, file: !2003, line: 94, column: 11)
!2184 = distinct !DILexicalBlock(scope: !2133, file: !2003, line: 93, column: 5)
!2185 = !DILocation(line: 76, column: 60, scope: !2173, inlinedAt: !2182)
!2186 = !DILocation(line: 76, column: 70, scope: !2173, inlinedAt: !2182)
!2187 = !DILocation(line: 78, column: 7, scope: !2188, inlinedAt: !2182)
!2188 = !DILexicalBlockFile(scope: !2189, file: !2003, discriminator: 2)
!2189 = distinct !DILexicalBlock(scope: !2173, file: !2003, line: 78, column: 7)
!2190 = !DILocation(line: 78, column: 7, scope: !2191, inlinedAt: !2182)
!2191 = !DILexicalBlockFile(scope: !2173, file: !2003, discriminator: 2)
!2192 = !DILocalVariable(name: "s2", arg: 2, scope: !2193, file: !2003, line: 62, type: !6)
!2193 = distinct !DISubprogram(name: "strcaseeq7", scope: !2003, file: !2003, line: 62, type: !2194, isLocal: true, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: true, unit: !143, variables: !2196)
!2194 = !DISubroutineType(types: !2195)
!2195 = !{!29, !6, !6, !8, !8}
!2196 = !{!2197, !2192, !2198, !2199}
!2197 = !DILocalVariable(name: "s1", arg: 1, scope: !2193, file: !2003, line: 62, type: !6)
!2198 = !DILocalVariable(name: "s27", arg: 3, scope: !2193, file: !2003, line: 62, type: !8)
!2199 = !DILocalVariable(name: "s28", arg: 4, scope: !2193, file: !2003, line: 62, type: !8)
!2200 = !DILocation(line: 62, column: 41, scope: !2193, inlinedAt: !2201)
!2201 = distinct !DILocation(line: 83, column: 16, scope: !2202, inlinedAt: !2182)
!2202 = distinct !DILexicalBlock(scope: !2203, file: !2003, line: 80, column: 11)
!2203 = distinct !DILexicalBlock(scope: !2189, file: !2003, line: 79, column: 5)
!2204 = !DILocation(line: 62, column: 50, scope: !2193, inlinedAt: !2201)
!2205 = !DILocation(line: 62, column: 60, scope: !2193, inlinedAt: !2201)
!2206 = !DILocation(line: 64, column: 7, scope: !2207, inlinedAt: !2201)
!2207 = !DILexicalBlockFile(scope: !2208, file: !2003, discriminator: 2)
!2208 = distinct !DILexicalBlock(scope: !2193, file: !2003, line: 64, column: 7)
!2209 = !DILocation(line: 228, column: 7, scope: !1984)
!2210 = !DILocation(line: 229, column: 12, scope: !2142)
!2211 = !DILocation(line: 229, column: 21, scope: !2142)
!2212 = !DILocation(line: 229, column: 5, scope: !2142)
!2213 = !DILocation(line: 231, column: 13, scope: !1984)
!2214 = !DILocation(line: 231, column: 11, scope: !1984)
!2215 = !DILocation(line: 231, column: 3, scope: !1984)
!2216 = !DILocation(line: 232, column: 1, scope: !1984)
!2217 = distinct !DISubprogram(name: "quotearg_alloc", scope: !185, file: !185, line: 791, type: !2218, isLocal: false, isDefinition: true, scopeLine: 793, flags: DIFlagPrototyped, isOptimized: true, unit: !143, variables: !2220)
!2218 = !DISubroutineType(types: !2219)
!2219 = !{!21, !6, !13, !1059}
!2220 = !{!2221, !2222, !2223}
!2221 = !DILocalVariable(name: "arg", arg: 1, scope: !2217, file: !185, line: 791, type: !6)
!2222 = !DILocalVariable(name: "argsize", arg: 2, scope: !2217, file: !185, line: 791, type: !13)
!2223 = !DILocalVariable(name: "o", arg: 3, scope: !2217, file: !185, line: 792, type: !1059)
!2224 = !DILocation(line: 791, column: 29, scope: !2217)
!2225 = !DILocation(line: 791, column: 41, scope: !2217)
!2226 = !DILocation(line: 792, column: 47, scope: !2217)
!2227 = !DILocalVariable(name: "arg", arg: 1, scope: !2228, file: !185, line: 804, type: !6)
!2228 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !185, file: !185, line: 804, type: !2229, isLocal: false, isDefinition: true, scopeLine: 806, flags: DIFlagPrototyped, isOptimized: true, unit: !143, variables: !2231)
!2229 = !DISubroutineType(types: !2230)
!2230 = !{!21, !6, !13, !595, !1059}
!2231 = !{!2227, !2232, !2233, !2234, !2235, !2236, !2237, !2238, !2239}
!2232 = !DILocalVariable(name: "argsize", arg: 2, scope: !2228, file: !185, line: 804, type: !13)
!2233 = !DILocalVariable(name: "size", arg: 3, scope: !2228, file: !185, line: 804, type: !595)
!2234 = !DILocalVariable(name: "o", arg: 4, scope: !2228, file: !185, line: 805, type: !1059)
!2235 = !DILocalVariable(name: "p", scope: !2228, file: !185, line: 807, type: !1059)
!2236 = !DILocalVariable(name: "e", scope: !2228, file: !185, line: 808, type: !29)
!2237 = !DILocalVariable(name: "flags", scope: !2228, file: !185, line: 810, type: !29)
!2238 = !DILocalVariable(name: "bufsize", scope: !2228, file: !185, line: 811, type: !13)
!2239 = !DILocalVariable(name: "buf", scope: !2228, file: !185, line: 815, type: !21)
!2240 = !DILocation(line: 804, column: 33, scope: !2228, inlinedAt: !2241)
!2241 = distinct !DILocation(line: 794, column: 10, scope: !2217)
!2242 = !DILocation(line: 804, column: 45, scope: !2228, inlinedAt: !2241)
!2243 = !DILocation(line: 804, column: 62, scope: !2228, inlinedAt: !2241)
!2244 = !DILocation(line: 805, column: 51, scope: !2228, inlinedAt: !2241)
!2245 = !DILocation(line: 807, column: 37, scope: !2228, inlinedAt: !2241)
!2246 = !DILocation(line: 807, column: 33, scope: !2228, inlinedAt: !2241)
!2247 = !DILocation(line: 808, column: 11, scope: !2228, inlinedAt: !2241)
!2248 = !DILocation(line: 808, column: 7, scope: !2228, inlinedAt: !2241)
!2249 = !DILocation(line: 810, column: 18, scope: !2228, inlinedAt: !2241)
!2250 = !DILocation(line: 810, column: 24, scope: !2228, inlinedAt: !2241)
!2251 = !DILocation(line: 810, column: 7, scope: !2228, inlinedAt: !2241)
!2252 = !DILocation(line: 811, column: 69, scope: !2228, inlinedAt: !2241)
!2253 = !DILocation(line: 812, column: 53, scope: !2228, inlinedAt: !2241)
!2254 = !DILocation(line: 813, column: 49, scope: !2228, inlinedAt: !2241)
!2255 = !DILocation(line: 814, column: 49, scope: !2228, inlinedAt: !2241)
!2256 = !DILocation(line: 811, column: 20, scope: !2228, inlinedAt: !2241)
!2257 = !DILocation(line: 814, column: 62, scope: !2228, inlinedAt: !2241)
!2258 = !DILocation(line: 811, column: 10, scope: !2228, inlinedAt: !2241)
!2259 = !DILocalVariable(name: "n", arg: 1, scope: !2260, file: !591, line: 220, type: !13)
!2260 = distinct !DISubprogram(name: "xcharalloc", scope: !591, file: !591, line: 220, type: !2261, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !143, variables: !2263)
!2261 = !DISubroutineType(types: !2262)
!2262 = !{!21, !13}
!2263 = !{!2259}
!2264 = !DILocation(line: 220, column: 20, scope: !2260, inlinedAt: !2265)
!2265 = distinct !DILocation(line: 815, column: 15, scope: !2228, inlinedAt: !2241)
!2266 = !DILocation(line: 222, column: 10, scope: !2260, inlinedAt: !2265)
!2267 = !DILocation(line: 815, column: 9, scope: !2228, inlinedAt: !2241)
!2268 = !DILocation(line: 816, column: 60, scope: !2228, inlinedAt: !2241)
!2269 = !DILocation(line: 818, column: 32, scope: !2228, inlinedAt: !2241)
!2270 = !DILocation(line: 818, column: 47, scope: !2228, inlinedAt: !2241)
!2271 = !DILocation(line: 816, column: 3, scope: !2228, inlinedAt: !2241)
!2272 = !DILocation(line: 819, column: 9, scope: !2228, inlinedAt: !2241)
!2273 = !DILocation(line: 794, column: 3, scope: !2217)
!2274 = !DILocation(line: 804, column: 33, scope: !2228)
!2275 = !DILocation(line: 804, column: 45, scope: !2228)
!2276 = !DILocation(line: 804, column: 62, scope: !2228)
!2277 = !DILocation(line: 805, column: 51, scope: !2228)
!2278 = !DILocation(line: 807, column: 37, scope: !2228)
!2279 = !DILocation(line: 807, column: 33, scope: !2228)
!2280 = !DILocation(line: 808, column: 11, scope: !2228)
!2281 = !DILocation(line: 808, column: 7, scope: !2228)
!2282 = !DILocation(line: 810, column: 18, scope: !2228)
!2283 = !DILocation(line: 810, column: 27, scope: !2228)
!2284 = !DILocation(line: 810, column: 24, scope: !2228)
!2285 = !DILocation(line: 810, column: 7, scope: !2228)
!2286 = !DILocation(line: 811, column: 69, scope: !2228)
!2287 = !DILocation(line: 812, column: 53, scope: !2228)
!2288 = !DILocation(line: 813, column: 49, scope: !2228)
!2289 = !DILocation(line: 814, column: 49, scope: !2228)
!2290 = !DILocation(line: 811, column: 20, scope: !2228)
!2291 = !DILocation(line: 814, column: 62, scope: !2228)
!2292 = !DILocation(line: 811, column: 10, scope: !2228)
!2293 = !DILocation(line: 220, column: 20, scope: !2260, inlinedAt: !2294)
!2294 = distinct !DILocation(line: 815, column: 15, scope: !2228)
!2295 = !DILocation(line: 222, column: 10, scope: !2260, inlinedAt: !2294)
!2296 = !DILocation(line: 815, column: 9, scope: !2228)
!2297 = !DILocation(line: 816, column: 60, scope: !2228)
!2298 = !DILocation(line: 818, column: 32, scope: !2228)
!2299 = !DILocation(line: 818, column: 47, scope: !2228)
!2300 = !DILocation(line: 816, column: 3, scope: !2228)
!2301 = !DILocation(line: 819, column: 9, scope: !2228)
!2302 = !DILocation(line: 820, column: 7, scope: !2228)
!2303 = !DILocation(line: 821, column: 11, scope: !2304)
!2304 = distinct !DILexicalBlock(scope: !2228, file: !185, line: 820, column: 7)
!2305 = !{!824, !824, i64 0}
!2306 = !DILocation(line: 821, column: 5, scope: !2304)
!2307 = !DILocation(line: 822, column: 3, scope: !2228)
!2308 = distinct !DISubprogram(name: "quotearg_free", scope: !185, file: !185, line: 840, type: !957, isLocal: false, isDefinition: true, scopeLine: 841, flags: DIFlagPrototyped, isOptimized: true, unit: !143, variables: !2309)
!2309 = !{!2310, !2311}
!2310 = !DILocalVariable(name: "sv", scope: !2308, file: !185, line: 842, type: !209)
!2311 = !DILocalVariable(name: "i", scope: !2308, file: !185, line: 843, type: !29)
!2312 = !DILocation(line: 842, column: 24, scope: !2308)
!2313 = !DILocation(line: 842, column: 19, scope: !2308)
!2314 = !DILocation(line: 843, column: 7, scope: !2308)
!2315 = !DILocation(line: 844, column: 19, scope: !2316)
!2316 = !DILexicalBlockFile(scope: !2317, file: !185, discriminator: 1)
!2317 = distinct !DILexicalBlock(scope: !2318, file: !185, line: 844, column: 3)
!2318 = distinct !DILexicalBlock(scope: !2308, file: !185, line: 844, column: 3)
!2319 = !DILocation(line: 844, column: 17, scope: !2316)
!2320 = !DILocation(line: 844, column: 3, scope: !2321)
!2321 = !DILexicalBlockFile(scope: !2318, file: !185, discriminator: 1)
!2322 = !DILocation(line: 845, column: 17, scope: !2317)
!2323 = !{!2324, !641, i64 8}
!2324 = !{!"slotvec", !824, i64 0, !641, i64 8}
!2325 = !DILocation(line: 845, column: 5, scope: !2317)
!2326 = !DILocation(line: 844, column: 28, scope: !2327)
!2327 = !DILexicalBlockFile(scope: !2317, file: !185, discriminator: 2)
!2328 = distinct !{!2328, !2329, !2330}
!2329 = !DILocation(line: 844, column: 3, scope: !2318)
!2330 = !DILocation(line: 845, column: 20, scope: !2318)
!2331 = !DILocation(line: 846, column: 13, scope: !2332)
!2332 = distinct !DILexicalBlock(scope: !2308, file: !185, line: 846, column: 7)
!2333 = !DILocation(line: 846, column: 17, scope: !2332)
!2334 = !DILocation(line: 846, column: 7, scope: !2308)
!2335 = !DILocation(line: 848, column: 7, scope: !2336)
!2336 = distinct !DILexicalBlock(scope: !2332, file: !185, line: 847, column: 5)
!2337 = !DILocation(line: 849, column: 21, scope: !2336)
!2338 = !{!2324, !824, i64 0}
!2339 = !DILocation(line: 850, column: 20, scope: !2336)
!2340 = !DILocation(line: 851, column: 5, scope: !2336)
!2341 = !DILocation(line: 852, column: 10, scope: !2342)
!2342 = distinct !DILexicalBlock(scope: !2308, file: !185, line: 852, column: 7)
!2343 = !DILocation(line: 852, column: 7, scope: !2308)
!2344 = !DILocation(line: 854, column: 13, scope: !2345)
!2345 = distinct !DILexicalBlock(scope: !2342, file: !185, line: 853, column: 5)
!2346 = !DILocation(line: 854, column: 7, scope: !2345)
!2347 = !DILocation(line: 855, column: 15, scope: !2345)
!2348 = !DILocation(line: 856, column: 5, scope: !2345)
!2349 = !DILocation(line: 857, column: 10, scope: !2308)
!2350 = !DILocation(line: 858, column: 1, scope: !2308)
!2351 = distinct !DISubprogram(name: "quotearg_n", scope: !185, file: !185, line: 922, type: !2352, isLocal: false, isDefinition: true, scopeLine: 923, flags: DIFlagPrototyped, isOptimized: true, unit: !143, variables: !2354)
!2352 = !DISubroutineType(types: !2353)
!2353 = !{!21, !29, !6}
!2354 = !{!2355, !2356}
!2355 = !DILocalVariable(name: "n", arg: 1, scope: !2351, file: !185, line: 922, type: !29)
!2356 = !DILocalVariable(name: "arg", arg: 2, scope: !2351, file: !185, line: 922, type: !6)
!2357 = !DILocation(line: 922, column: 17, scope: !2351)
!2358 = !DILocation(line: 922, column: 32, scope: !2351)
!2359 = !DILocation(line: 924, column: 10, scope: !2351)
!2360 = !DILocation(line: 924, column: 3, scope: !2351)
!2361 = distinct !DISubprogram(name: "quotearg_n_options", scope: !185, file: !185, line: 869, type: !2362, isLocal: true, isDefinition: true, scopeLine: 871, flags: DIFlagPrototyped, isOptimized: true, unit: !143, variables: !2364)
!2362 = !DISubroutineType(types: !2363)
!2363 = !{!21, !29, !6, !13, !1059}
!2364 = !{!2365, !2366, !2367, !2368, !2369, !2370, !2371, !2374, !2376, !2377, !2378}
!2365 = !DILocalVariable(name: "n", arg: 1, scope: !2361, file: !185, line: 869, type: !29)
!2366 = !DILocalVariable(name: "arg", arg: 2, scope: !2361, file: !185, line: 869, type: !6)
!2367 = !DILocalVariable(name: "argsize", arg: 3, scope: !2361, file: !185, line: 869, type: !13)
!2368 = !DILocalVariable(name: "options", arg: 4, scope: !2361, file: !185, line: 870, type: !1059)
!2369 = !DILocalVariable(name: "e", scope: !2361, file: !185, line: 872, type: !29)
!2370 = !DILocalVariable(name: "sv", scope: !2361, file: !185, line: 874, type: !209)
!2371 = !DILocalVariable(name: "preallocated", scope: !2372, file: !185, line: 881, type: !84)
!2372 = distinct !DILexicalBlock(scope: !2373, file: !185, line: 880, column: 5)
!2373 = distinct !DILexicalBlock(scope: !2361, file: !185, line: 879, column: 7)
!2374 = !DILocalVariable(name: "size", scope: !2375, file: !185, line: 894, type: !13)
!2375 = distinct !DILexicalBlock(scope: !2361, file: !185, line: 893, column: 3)
!2376 = !DILocalVariable(name: "val", scope: !2375, file: !185, line: 895, type: !21)
!2377 = !DILocalVariable(name: "flags", scope: !2375, file: !185, line: 897, type: !29)
!2378 = !DILocalVariable(name: "qsize", scope: !2375, file: !185, line: 898, type: !13)
!2379 = !DILocation(line: 869, column: 25, scope: !2361)
!2380 = !DILocation(line: 869, column: 40, scope: !2361)
!2381 = !DILocation(line: 869, column: 52, scope: !2361)
!2382 = !DILocation(line: 870, column: 51, scope: !2361)
!2383 = !DILocation(line: 872, column: 11, scope: !2361)
!2384 = !DILocation(line: 872, column: 7, scope: !2361)
!2385 = !DILocation(line: 874, column: 24, scope: !2361)
!2386 = !DILocation(line: 874, column: 19, scope: !2361)
!2387 = !DILocation(line: 876, column: 9, scope: !2388)
!2388 = distinct !DILexicalBlock(scope: !2361, file: !185, line: 876, column: 7)
!2389 = !DILocation(line: 876, column: 7, scope: !2361)
!2390 = !DILocation(line: 877, column: 5, scope: !2388)
!2391 = !DILocation(line: 879, column: 7, scope: !2373)
!2392 = !DILocation(line: 879, column: 14, scope: !2373)
!2393 = !DILocation(line: 879, column: 7, scope: !2361)
!2394 = !DILocation(line: 881, column: 31, scope: !2372)
!2395 = !DILocation(line: 883, column: 67, scope: !2396)
!2396 = distinct !DILexicalBlock(scope: !2372, file: !185, line: 883, column: 11)
!2397 = !DILocation(line: 883, column: 11, scope: !2372)
!2398 = !DILocation(line: 884, column: 9, scope: !2396)
!2399 = !DILocation(line: 886, column: 32, scope: !2400)
!2400 = !DILexicalBlockFile(scope: !2372, file: !185, discriminator: 3)
!2401 = !DILocation(line: 886, column: 61, scope: !2400)
!2402 = !DILocation(line: 886, column: 58, scope: !2400)
!2403 = !DILocation(line: 886, column: 66, scope: !2400)
!2404 = !DILocation(line: 886, column: 22, scope: !2400)
!2405 = !DILocation(line: 886, column: 15, scope: !2400)
!2406 = !DILocation(line: 887, column: 11, scope: !2372)
!2407 = !DILocation(line: 888, column: 15, scope: !2408)
!2408 = distinct !DILexicalBlock(scope: !2372, file: !185, line: 887, column: 11)
!2409 = !{i64 0, i64 8, !2305, i64 8, i64 8, !640}
!2410 = !DILocation(line: 888, column: 9, scope: !2408)
!2411 = !DILocation(line: 889, column: 20, scope: !2372)
!2412 = !DILocation(line: 889, column: 18, scope: !2372)
!2413 = !DILocation(line: 889, column: 7, scope: !2372)
!2414 = !DILocation(line: 889, column: 38, scope: !2372)
!2415 = !DILocation(line: 889, column: 31, scope: !2372)
!2416 = !DILocation(line: 889, column: 48, scope: !2372)
!2417 = !DILocation(line: 890, column: 14, scope: !2372)
!2418 = !DILocation(line: 891, column: 5, scope: !2372)
!2419 = !DILocation(line: 894, column: 19, scope: !2375)
!2420 = !DILocation(line: 894, column: 25, scope: !2375)
!2421 = !DILocation(line: 894, column: 12, scope: !2375)
!2422 = !DILocation(line: 895, column: 23, scope: !2375)
!2423 = !DILocation(line: 895, column: 11, scope: !2375)
!2424 = !DILocation(line: 897, column: 26, scope: !2375)
!2425 = !DILocation(line: 897, column: 32, scope: !2375)
!2426 = !DILocation(line: 897, column: 9, scope: !2375)
!2427 = !DILocation(line: 899, column: 55, scope: !2375)
!2428 = !DILocation(line: 900, column: 46, scope: !2375)
!2429 = !DILocation(line: 901, column: 55, scope: !2375)
!2430 = !DILocation(line: 902, column: 55, scope: !2375)
!2431 = !DILocation(line: 898, column: 20, scope: !2375)
!2432 = !DILocation(line: 898, column: 12, scope: !2375)
!2433 = !DILocation(line: 904, column: 14, scope: !2434)
!2434 = distinct !DILexicalBlock(scope: !2375, file: !185, line: 904, column: 9)
!2435 = !DILocation(line: 904, column: 9, scope: !2375)
!2436 = !DILocation(line: 906, column: 35, scope: !2437)
!2437 = distinct !DILexicalBlock(scope: !2434, file: !185, line: 905, column: 7)
!2438 = !DILocation(line: 906, column: 20, scope: !2437)
!2439 = !DILocation(line: 907, column: 17, scope: !2440)
!2440 = distinct !DILexicalBlock(scope: !2437, file: !185, line: 907, column: 13)
!2441 = !DILocation(line: 907, column: 13, scope: !2437)
!2442 = !DILocation(line: 908, column: 11, scope: !2440)
!2443 = !DILocation(line: 220, column: 20, scope: !2260, inlinedAt: !2444)
!2444 = distinct !DILocation(line: 909, column: 27, scope: !2437)
!2445 = !DILocation(line: 222, column: 10, scope: !2260, inlinedAt: !2444)
!2446 = !DILocation(line: 909, column: 19, scope: !2437)
!2447 = !DILocation(line: 910, column: 69, scope: !2437)
!2448 = !DILocation(line: 912, column: 44, scope: !2437)
!2449 = !DILocation(line: 913, column: 44, scope: !2437)
!2450 = !DILocation(line: 910, column: 9, scope: !2437)
!2451 = !DILocation(line: 914, column: 7, scope: !2437)
!2452 = !DILocation(line: 916, column: 11, scope: !2375)
!2453 = !DILocation(line: 917, column: 5, scope: !2375)
!2454 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !185, file: !185, line: 928, type: !2455, isLocal: false, isDefinition: true, scopeLine: 929, flags: DIFlagPrototyped, isOptimized: true, unit: !143, variables: !2457)
!2455 = !DISubroutineType(types: !2456)
!2456 = !{!21, !29, !6, !13}
!2457 = !{!2458, !2459, !2460}
!2458 = !DILocalVariable(name: "n", arg: 1, scope: !2454, file: !185, line: 928, type: !29)
!2459 = !DILocalVariable(name: "arg", arg: 2, scope: !2454, file: !185, line: 928, type: !6)
!2460 = !DILocalVariable(name: "argsize", arg: 3, scope: !2454, file: !185, line: 928, type: !13)
!2461 = !DILocation(line: 928, column: 21, scope: !2454)
!2462 = !DILocation(line: 928, column: 36, scope: !2454)
!2463 = !DILocation(line: 928, column: 48, scope: !2454)
!2464 = !DILocation(line: 930, column: 10, scope: !2454)
!2465 = !DILocation(line: 930, column: 3, scope: !2454)
!2466 = distinct !DISubprogram(name: "quotearg", scope: !185, file: !185, line: 934, type: !2467, isLocal: false, isDefinition: true, scopeLine: 935, flags: DIFlagPrototyped, isOptimized: true, unit: !143, variables: !2469)
!2467 = !DISubroutineType(types: !2468)
!2468 = !{!21, !6}
!2469 = !{!2470}
!2470 = !DILocalVariable(name: "arg", arg: 1, scope: !2466, file: !185, line: 934, type: !6)
!2471 = !DILocation(line: 934, column: 23, scope: !2466)
!2472 = !DILocation(line: 922, column: 17, scope: !2351, inlinedAt: !2473)
!2473 = distinct !DILocation(line: 936, column: 10, scope: !2466)
!2474 = !DILocation(line: 922, column: 32, scope: !2351, inlinedAt: !2473)
!2475 = !DILocation(line: 924, column: 10, scope: !2351, inlinedAt: !2473)
!2476 = !DILocation(line: 936, column: 3, scope: !2466)
!2477 = distinct !DISubprogram(name: "quotearg_mem", scope: !185, file: !185, line: 940, type: !2478, isLocal: false, isDefinition: true, scopeLine: 941, flags: DIFlagPrototyped, isOptimized: true, unit: !143, variables: !2480)
!2478 = !DISubroutineType(types: !2479)
!2479 = !{!21, !6, !13}
!2480 = !{!2481, !2482}
!2481 = !DILocalVariable(name: "arg", arg: 1, scope: !2477, file: !185, line: 940, type: !6)
!2482 = !DILocalVariable(name: "argsize", arg: 2, scope: !2477, file: !185, line: 940, type: !13)
!2483 = !DILocation(line: 940, column: 27, scope: !2477)
!2484 = !DILocation(line: 940, column: 39, scope: !2477)
!2485 = !DILocation(line: 928, column: 21, scope: !2454, inlinedAt: !2486)
!2486 = distinct !DILocation(line: 942, column: 10, scope: !2477)
!2487 = !DILocation(line: 928, column: 36, scope: !2454, inlinedAt: !2486)
!2488 = !DILocation(line: 928, column: 48, scope: !2454, inlinedAt: !2486)
!2489 = !DILocation(line: 930, column: 10, scope: !2454, inlinedAt: !2486)
!2490 = !DILocation(line: 942, column: 3, scope: !2477)
!2491 = distinct !DISubprogram(name: "quotearg_n_style", scope: !185, file: !185, line: 946, type: !2492, isLocal: false, isDefinition: true, scopeLine: 947, flags: DIFlagPrototyped, isOptimized: true, unit: !143, variables: !2494)
!2492 = !DISubroutineType(types: !2493)
!2493 = !{!21, !29, !146, !6}
!2494 = !{!2495, !2496, !2497, !2498}
!2495 = !DILocalVariable(name: "n", arg: 1, scope: !2491, file: !185, line: 946, type: !29)
!2496 = !DILocalVariable(name: "s", arg: 2, scope: !2491, file: !185, line: 946, type: !146)
!2497 = !DILocalVariable(name: "arg", arg: 3, scope: !2491, file: !185, line: 946, type: !6)
!2498 = !DILocalVariable(name: "o", scope: !2491, file: !185, line: 948, type: !1060)
!2499 = !DILocalVariable(name: "o", scope: !2500, file: !185, line: 187, type: !192)
!2500 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !185, file: !185, line: 185, type: !2501, isLocal: true, isDefinition: true, scopeLine: 186, flags: DIFlagPrototyped, isOptimized: true, unit: !143, variables: !2503)
!2501 = !DISubroutineType(types: !2502)
!2502 = !{!192, !146}
!2503 = !{!2504, !2499}
!2504 = !DILocalVariable(name: "style", arg: 1, scope: !2500, file: !185, line: 185, type: !146)
!2505 = !DIExpression(DW_OP_LLVM_fragment, 32, 416)
!2506 = !DILocation(line: 187, column: 26, scope: !2500, inlinedAt: !2507)
!2507 = distinct !DILocation(line: 948, column: 36, scope: !2491)
!2508 = !DILocation(line: 946, column: 23, scope: !2491)
!2509 = !DILocation(line: 946, column: 45, scope: !2491)
!2510 = !DILocation(line: 946, column: 60, scope: !2491)
!2511 = !DILocation(line: 948, column: 3, scope: !2491)
!2512 = !DILocation(line: 948, column: 32, scope: !2491)
!2513 = !DILocation(line: 185, column: 48, scope: !2500, inlinedAt: !2507)
!2514 = !DILocation(line: 187, column: 3, scope: !2500, inlinedAt: !2507)
!2515 = !DIExpression(DW_OP_LLVM_fragment, 0, 32)
!2516 = !DILocation(line: 188, column: 13, scope: !2517, inlinedAt: !2507)
!2517 = distinct !DILexicalBlock(scope: !2500, file: !185, line: 188, column: 7)
!2518 = !DILocation(line: 188, column: 7, scope: !2500, inlinedAt: !2507)
!2519 = !DILocation(line: 189, column: 5, scope: !2517, inlinedAt: !2507)
!2520 = !{!2521}
!2521 = distinct !{!2521, !2522, !"quoting_options_from_style: argument 0"}
!2522 = distinct !{!2522, !"quoting_options_from_style"}
!2523 = !DILocation(line: 191, column: 10, scope: !2500, inlinedAt: !2507)
!2524 = !DILocation(line: 192, column: 1, scope: !2500, inlinedAt: !2507)
!2525 = !DILocation(line: 949, column: 10, scope: !2491)
!2526 = !DILocation(line: 950, column: 1, scope: !2491)
!2527 = !DILocation(line: 949, column: 3, scope: !2491)
!2528 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !185, file: !185, line: 953, type: !2529, isLocal: false, isDefinition: true, scopeLine: 955, flags: DIFlagPrototyped, isOptimized: true, unit: !143, variables: !2531)
!2529 = !DISubroutineType(types: !2530)
!2530 = !{!21, !29, !146, !6, !13}
!2531 = !{!2532, !2533, !2534, !2535, !2536}
!2532 = !DILocalVariable(name: "n", arg: 1, scope: !2528, file: !185, line: 953, type: !29)
!2533 = !DILocalVariable(name: "s", arg: 2, scope: !2528, file: !185, line: 953, type: !146)
!2534 = !DILocalVariable(name: "arg", arg: 3, scope: !2528, file: !185, line: 954, type: !6)
!2535 = !DILocalVariable(name: "argsize", arg: 4, scope: !2528, file: !185, line: 954, type: !13)
!2536 = !DILocalVariable(name: "o", scope: !2528, file: !185, line: 956, type: !1060)
!2537 = !DILocation(line: 187, column: 26, scope: !2500, inlinedAt: !2538)
!2538 = distinct !DILocation(line: 956, column: 36, scope: !2528)
!2539 = !DILocation(line: 953, column: 27, scope: !2528)
!2540 = !DILocation(line: 953, column: 49, scope: !2528)
!2541 = !DILocation(line: 954, column: 35, scope: !2528)
!2542 = !DILocation(line: 954, column: 47, scope: !2528)
!2543 = !DILocation(line: 956, column: 3, scope: !2528)
!2544 = !DILocation(line: 956, column: 32, scope: !2528)
!2545 = !DILocation(line: 185, column: 48, scope: !2500, inlinedAt: !2538)
!2546 = !DILocation(line: 187, column: 3, scope: !2500, inlinedAt: !2538)
!2547 = !DILocation(line: 188, column: 13, scope: !2517, inlinedAt: !2538)
!2548 = !DILocation(line: 188, column: 7, scope: !2500, inlinedAt: !2538)
!2549 = !DILocation(line: 189, column: 5, scope: !2517, inlinedAt: !2538)
!2550 = !{!2551}
!2551 = distinct !{!2551, !2552, !"quoting_options_from_style: argument 0"}
!2552 = distinct !{!2552, !"quoting_options_from_style"}
!2553 = !DILocation(line: 191, column: 10, scope: !2500, inlinedAt: !2538)
!2554 = !DILocation(line: 192, column: 1, scope: !2500, inlinedAt: !2538)
!2555 = !DILocation(line: 957, column: 10, scope: !2528)
!2556 = !DILocation(line: 958, column: 1, scope: !2528)
!2557 = !DILocation(line: 957, column: 3, scope: !2528)
!2558 = distinct !DISubprogram(name: "quotearg_style", scope: !185, file: !185, line: 961, type: !2559, isLocal: false, isDefinition: true, scopeLine: 962, flags: DIFlagPrototyped, isOptimized: true, unit: !143, variables: !2561)
!2559 = !DISubroutineType(types: !2560)
!2560 = !{!21, !146, !6}
!2561 = !{!2562, !2563}
!2562 = !DILocalVariable(name: "s", arg: 1, scope: !2558, file: !185, line: 961, type: !146)
!2563 = !DILocalVariable(name: "arg", arg: 2, scope: !2558, file: !185, line: 961, type: !6)
!2564 = !DILocation(line: 187, column: 26, scope: !2500, inlinedAt: !2565)
!2565 = distinct !DILocation(line: 948, column: 36, scope: !2491, inlinedAt: !2566)
!2566 = distinct !DILocation(line: 963, column: 10, scope: !2558)
!2567 = !DILocation(line: 961, column: 36, scope: !2558)
!2568 = !DILocation(line: 961, column: 51, scope: !2558)
!2569 = !DILocation(line: 946, column: 23, scope: !2491, inlinedAt: !2566)
!2570 = !DILocation(line: 946, column: 45, scope: !2491, inlinedAt: !2566)
!2571 = !DILocation(line: 946, column: 60, scope: !2491, inlinedAt: !2566)
!2572 = !DILocation(line: 948, column: 3, scope: !2491, inlinedAt: !2566)
!2573 = !DILocation(line: 948, column: 32, scope: !2491, inlinedAt: !2566)
!2574 = !DILocation(line: 185, column: 48, scope: !2500, inlinedAt: !2565)
!2575 = !DILocation(line: 187, column: 3, scope: !2500, inlinedAt: !2565)
!2576 = !DILocation(line: 188, column: 13, scope: !2517, inlinedAt: !2565)
!2577 = !DILocation(line: 188, column: 7, scope: !2500, inlinedAt: !2565)
!2578 = !DILocation(line: 189, column: 5, scope: !2517, inlinedAt: !2565)
!2579 = !{!2580}
!2580 = distinct !{!2580, !2581, !"quoting_options_from_style: argument 0"}
!2581 = distinct !{!2581, !"quoting_options_from_style"}
!2582 = !DILocation(line: 191, column: 10, scope: !2500, inlinedAt: !2565)
!2583 = !DILocation(line: 192, column: 1, scope: !2500, inlinedAt: !2565)
!2584 = !DILocation(line: 949, column: 10, scope: !2491, inlinedAt: !2566)
!2585 = !DILocation(line: 950, column: 1, scope: !2491, inlinedAt: !2566)
!2586 = !DILocation(line: 963, column: 3, scope: !2558)
!2587 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !185, file: !185, line: 967, type: !2588, isLocal: false, isDefinition: true, scopeLine: 968, flags: DIFlagPrototyped, isOptimized: true, unit: !143, variables: !2590)
!2588 = !DISubroutineType(types: !2589)
!2589 = !{!21, !146, !6, !13}
!2590 = !{!2591, !2592, !2593}
!2591 = !DILocalVariable(name: "s", arg: 1, scope: !2587, file: !185, line: 967, type: !146)
!2592 = !DILocalVariable(name: "arg", arg: 2, scope: !2587, file: !185, line: 967, type: !6)
!2593 = !DILocalVariable(name: "argsize", arg: 3, scope: !2587, file: !185, line: 967, type: !13)
!2594 = !DILocation(line: 187, column: 26, scope: !2500, inlinedAt: !2595)
!2595 = distinct !DILocation(line: 956, column: 36, scope: !2528, inlinedAt: !2596)
!2596 = distinct !DILocation(line: 969, column: 10, scope: !2587)
!2597 = !DILocation(line: 967, column: 40, scope: !2587)
!2598 = !DILocation(line: 967, column: 55, scope: !2587)
!2599 = !DILocation(line: 967, column: 67, scope: !2587)
!2600 = !DILocation(line: 953, column: 27, scope: !2528, inlinedAt: !2596)
!2601 = !DILocation(line: 953, column: 49, scope: !2528, inlinedAt: !2596)
!2602 = !DILocation(line: 954, column: 35, scope: !2528, inlinedAt: !2596)
!2603 = !DILocation(line: 954, column: 47, scope: !2528, inlinedAt: !2596)
!2604 = !DILocation(line: 956, column: 3, scope: !2528, inlinedAt: !2596)
!2605 = !DILocation(line: 956, column: 32, scope: !2528, inlinedAt: !2596)
!2606 = !DILocation(line: 185, column: 48, scope: !2500, inlinedAt: !2595)
!2607 = !DILocation(line: 187, column: 3, scope: !2500, inlinedAt: !2595)
!2608 = !DILocation(line: 188, column: 13, scope: !2517, inlinedAt: !2595)
!2609 = !DILocation(line: 188, column: 7, scope: !2500, inlinedAt: !2595)
!2610 = !DILocation(line: 189, column: 5, scope: !2517, inlinedAt: !2595)
!2611 = !{!2612}
!2612 = distinct !{!2612, !2613, !"quoting_options_from_style: argument 0"}
!2613 = distinct !{!2613, !"quoting_options_from_style"}
!2614 = !DILocation(line: 191, column: 10, scope: !2500, inlinedAt: !2595)
!2615 = !DILocation(line: 192, column: 1, scope: !2500, inlinedAt: !2595)
!2616 = !DILocation(line: 957, column: 10, scope: !2528, inlinedAt: !2596)
!2617 = !DILocation(line: 958, column: 1, scope: !2528, inlinedAt: !2596)
!2618 = !DILocation(line: 969, column: 3, scope: !2587)
!2619 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !185, file: !185, line: 973, type: !2620, isLocal: false, isDefinition: true, scopeLine: 974, flags: DIFlagPrototyped, isOptimized: true, unit: !143, variables: !2622)
!2620 = !DISubroutineType(types: !2621)
!2621 = !{!21, !6, !13, !8}
!2622 = !{!2623, !2624, !2625, !2626}
!2623 = !DILocalVariable(name: "arg", arg: 1, scope: !2619, file: !185, line: 973, type: !6)
!2624 = !DILocalVariable(name: "argsize", arg: 2, scope: !2619, file: !185, line: 973, type: !13)
!2625 = !DILocalVariable(name: "ch", arg: 3, scope: !2619, file: !185, line: 973, type: !8)
!2626 = !DILocalVariable(name: "options", scope: !2619, file: !185, line: 975, type: !192)
!2627 = !DILocation(line: 973, column: 32, scope: !2619)
!2628 = !DILocation(line: 973, column: 44, scope: !2619)
!2629 = !DILocation(line: 973, column: 58, scope: !2619)
!2630 = !DILocation(line: 975, column: 3, scope: !2619)
!2631 = !DILocation(line: 976, column: 13, scope: !2619)
!2632 = !{i64 0, i64 4, !832, i64 4, i64 4, !654, i64 8, i64 32, !832, i64 40, i64 8, !640, i64 48, i64 8, !640}
!2633 = !DILocation(line: 975, column: 26, scope: !2619)
!2634 = !DILocation(line: 144, column: 43, scope: !1083, inlinedAt: !2635)
!2635 = distinct !DILocation(line: 977, column: 3, scope: !2619)
!2636 = !DILocation(line: 144, column: 51, scope: !1083, inlinedAt: !2635)
!2637 = !DILocation(line: 144, column: 58, scope: !1083, inlinedAt: !2635)
!2638 = !DILocation(line: 146, column: 17, scope: !1083, inlinedAt: !2635)
!2639 = !DILocation(line: 148, column: 62, scope: !1101, inlinedAt: !2635)
!2640 = !DILocation(line: 148, column: 57, scope: !1101, inlinedAt: !2635)
!2641 = !DILocation(line: 147, column: 17, scope: !1083, inlinedAt: !2635)
!2642 = !DILocation(line: 149, column: 18, scope: !1083, inlinedAt: !2635)
!2643 = !DILocation(line: 149, column: 15, scope: !1083, inlinedAt: !2635)
!2644 = !DILocation(line: 149, column: 7, scope: !1083, inlinedAt: !2635)
!2645 = !DILocation(line: 150, column: 12, scope: !1083, inlinedAt: !2635)
!2646 = !DILocation(line: 150, column: 15, scope: !1083, inlinedAt: !2635)
!2647 = !DILocation(line: 150, column: 25, scope: !1083, inlinedAt: !2635)
!2648 = !DILocation(line: 150, column: 7, scope: !1083, inlinedAt: !2635)
!2649 = !DILocation(line: 151, column: 18, scope: !1083, inlinedAt: !2635)
!2650 = !DILocation(line: 151, column: 23, scope: !1083, inlinedAt: !2635)
!2651 = !DILocation(line: 151, column: 6, scope: !1083, inlinedAt: !2635)
!2652 = !DILocation(line: 978, column: 10, scope: !2619)
!2653 = !DILocation(line: 979, column: 1, scope: !2619)
!2654 = !DILocation(line: 978, column: 3, scope: !2619)
!2655 = distinct !DISubprogram(name: "quotearg_char", scope: !185, file: !185, line: 982, type: !2656, isLocal: false, isDefinition: true, scopeLine: 983, flags: DIFlagPrototyped, isOptimized: true, unit: !143, variables: !2658)
!2656 = !DISubroutineType(types: !2657)
!2657 = !{!21, !6, !8}
!2658 = !{!2659, !2660}
!2659 = !DILocalVariable(name: "arg", arg: 1, scope: !2655, file: !185, line: 982, type: !6)
!2660 = !DILocalVariable(name: "ch", arg: 2, scope: !2655, file: !185, line: 982, type: !8)
!2661 = !DILocation(line: 982, column: 28, scope: !2655)
!2662 = !DILocation(line: 982, column: 38, scope: !2655)
!2663 = !DILocation(line: 973, column: 32, scope: !2619, inlinedAt: !2664)
!2664 = distinct !DILocation(line: 984, column: 10, scope: !2655)
!2665 = !DILocation(line: 973, column: 44, scope: !2619, inlinedAt: !2664)
!2666 = !DILocation(line: 973, column: 58, scope: !2619, inlinedAt: !2664)
!2667 = !DILocation(line: 975, column: 3, scope: !2619, inlinedAt: !2664)
!2668 = !DILocation(line: 976, column: 13, scope: !2619, inlinedAt: !2664)
!2669 = !DILocation(line: 975, column: 26, scope: !2619, inlinedAt: !2664)
!2670 = !DILocation(line: 144, column: 43, scope: !1083, inlinedAt: !2671)
!2671 = distinct !DILocation(line: 977, column: 3, scope: !2619, inlinedAt: !2664)
!2672 = !DILocation(line: 144, column: 51, scope: !1083, inlinedAt: !2671)
!2673 = !DILocation(line: 144, column: 58, scope: !1083, inlinedAt: !2671)
!2674 = !DILocation(line: 146, column: 17, scope: !1083, inlinedAt: !2671)
!2675 = !DILocation(line: 148, column: 62, scope: !1101, inlinedAt: !2671)
!2676 = !DILocation(line: 148, column: 57, scope: !1101, inlinedAt: !2671)
!2677 = !DILocation(line: 147, column: 17, scope: !1083, inlinedAt: !2671)
!2678 = !DILocation(line: 149, column: 18, scope: !1083, inlinedAt: !2671)
!2679 = !DILocation(line: 149, column: 15, scope: !1083, inlinedAt: !2671)
!2680 = !DILocation(line: 149, column: 7, scope: !1083, inlinedAt: !2671)
!2681 = !DILocation(line: 150, column: 12, scope: !1083, inlinedAt: !2671)
!2682 = !DILocation(line: 150, column: 15, scope: !1083, inlinedAt: !2671)
!2683 = !DILocation(line: 150, column: 25, scope: !1083, inlinedAt: !2671)
!2684 = !DILocation(line: 150, column: 7, scope: !1083, inlinedAt: !2671)
!2685 = !DILocation(line: 151, column: 18, scope: !1083, inlinedAt: !2671)
!2686 = !DILocation(line: 151, column: 23, scope: !1083, inlinedAt: !2671)
!2687 = !DILocation(line: 151, column: 6, scope: !1083, inlinedAt: !2671)
!2688 = !DILocation(line: 978, column: 10, scope: !2619, inlinedAt: !2664)
!2689 = !DILocation(line: 979, column: 1, scope: !2619, inlinedAt: !2664)
!2690 = !DILocation(line: 984, column: 3, scope: !2655)
!2691 = distinct !DISubprogram(name: "quotearg_colon", scope: !185, file: !185, line: 988, type: !2467, isLocal: false, isDefinition: true, scopeLine: 989, flags: DIFlagPrototyped, isOptimized: true, unit: !143, variables: !2692)
!2692 = !{!2693}
!2693 = !DILocalVariable(name: "arg", arg: 1, scope: !2691, file: !185, line: 988, type: !6)
!2694 = !DILocation(line: 988, column: 29, scope: !2691)
!2695 = !DILocation(line: 982, column: 28, scope: !2655, inlinedAt: !2696)
!2696 = distinct !DILocation(line: 990, column: 10, scope: !2691)
!2697 = !DILocation(line: 982, column: 38, scope: !2655, inlinedAt: !2696)
!2698 = !DILocation(line: 973, column: 32, scope: !2619, inlinedAt: !2699)
!2699 = distinct !DILocation(line: 984, column: 10, scope: !2655, inlinedAt: !2696)
!2700 = !DILocation(line: 973, column: 44, scope: !2619, inlinedAt: !2699)
!2701 = !DILocation(line: 973, column: 58, scope: !2619, inlinedAt: !2699)
!2702 = !DILocation(line: 975, column: 3, scope: !2619, inlinedAt: !2699)
!2703 = !DILocation(line: 976, column: 13, scope: !2619, inlinedAt: !2699)
!2704 = !DILocation(line: 975, column: 26, scope: !2619, inlinedAt: !2699)
!2705 = !DILocation(line: 144, column: 43, scope: !1083, inlinedAt: !2706)
!2706 = distinct !DILocation(line: 977, column: 3, scope: !2619, inlinedAt: !2699)
!2707 = !DILocation(line: 144, column: 51, scope: !1083, inlinedAt: !2706)
!2708 = !DILocation(line: 144, column: 58, scope: !1083, inlinedAt: !2706)
!2709 = !DILocation(line: 146, column: 17, scope: !1083, inlinedAt: !2706)
!2710 = !DILocation(line: 148, column: 57, scope: !1101, inlinedAt: !2706)
!2711 = !DILocation(line: 147, column: 17, scope: !1083, inlinedAt: !2706)
!2712 = !DILocation(line: 149, column: 7, scope: !1083, inlinedAt: !2706)
!2713 = !DILocation(line: 150, column: 12, scope: !1083, inlinedAt: !2706)
!2714 = !DILocation(line: 151, column: 6, scope: !1083, inlinedAt: !2706)
!2715 = !DILocation(line: 978, column: 10, scope: !2619, inlinedAt: !2699)
!2716 = !DILocation(line: 979, column: 1, scope: !2619, inlinedAt: !2699)
!2717 = !DILocation(line: 990, column: 3, scope: !2691)
!2718 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !185, file: !185, line: 994, type: !2478, isLocal: false, isDefinition: true, scopeLine: 995, flags: DIFlagPrototyped, isOptimized: true, unit: !143, variables: !2719)
!2719 = !{!2720, !2721}
!2720 = !DILocalVariable(name: "arg", arg: 1, scope: !2718, file: !185, line: 994, type: !6)
!2721 = !DILocalVariable(name: "argsize", arg: 2, scope: !2718, file: !185, line: 994, type: !13)
!2722 = !DILocation(line: 994, column: 33, scope: !2718)
!2723 = !DILocation(line: 994, column: 45, scope: !2718)
!2724 = !DILocation(line: 973, column: 32, scope: !2619, inlinedAt: !2725)
!2725 = distinct !DILocation(line: 996, column: 10, scope: !2718)
!2726 = !DILocation(line: 973, column: 44, scope: !2619, inlinedAt: !2725)
!2727 = !DILocation(line: 973, column: 58, scope: !2619, inlinedAt: !2725)
!2728 = !DILocation(line: 975, column: 3, scope: !2619, inlinedAt: !2725)
!2729 = !DILocation(line: 976, column: 13, scope: !2619, inlinedAt: !2725)
!2730 = !DILocation(line: 975, column: 26, scope: !2619, inlinedAt: !2725)
!2731 = !DILocation(line: 144, column: 43, scope: !1083, inlinedAt: !2732)
!2732 = distinct !DILocation(line: 977, column: 3, scope: !2619, inlinedAt: !2725)
!2733 = !DILocation(line: 144, column: 51, scope: !1083, inlinedAt: !2732)
!2734 = !DILocation(line: 144, column: 58, scope: !1083, inlinedAt: !2732)
!2735 = !DILocation(line: 146, column: 17, scope: !1083, inlinedAt: !2732)
!2736 = !DILocation(line: 148, column: 57, scope: !1101, inlinedAt: !2732)
!2737 = !DILocation(line: 147, column: 17, scope: !1083, inlinedAt: !2732)
!2738 = !DILocation(line: 149, column: 7, scope: !1083, inlinedAt: !2732)
!2739 = !DILocation(line: 150, column: 12, scope: !1083, inlinedAt: !2732)
!2740 = !DILocation(line: 151, column: 6, scope: !1083, inlinedAt: !2732)
!2741 = !DILocation(line: 978, column: 10, scope: !2619, inlinedAt: !2725)
!2742 = !DILocation(line: 979, column: 1, scope: !2619, inlinedAt: !2725)
!2743 = !DILocation(line: 996, column: 3, scope: !2718)
!2744 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !185, file: !185, line: 1000, type: !2492, isLocal: false, isDefinition: true, scopeLine: 1001, flags: DIFlagPrototyped, isOptimized: true, unit: !143, variables: !2745)
!2745 = !{!2746, !2747, !2748, !2749}
!2746 = !DILocalVariable(name: "n", arg: 1, scope: !2744, file: !185, line: 1000, type: !29)
!2747 = !DILocalVariable(name: "s", arg: 2, scope: !2744, file: !185, line: 1000, type: !146)
!2748 = !DILocalVariable(name: "arg", arg: 3, scope: !2744, file: !185, line: 1000, type: !6)
!2749 = !DILocalVariable(name: "options", scope: !2744, file: !185, line: 1002, type: !192)
!2750 = !DILocation(line: 187, column: 26, scope: !2500, inlinedAt: !2751)
!2751 = distinct !DILocation(line: 1003, column: 13, scope: !2744)
!2752 = !DILocation(line: 1000, column: 29, scope: !2744)
!2753 = !DILocation(line: 1000, column: 51, scope: !2744)
!2754 = !DILocation(line: 1000, column: 66, scope: !2744)
!2755 = !DILocation(line: 1002, column: 3, scope: !2744)
!2756 = !DILocation(line: 185, column: 48, scope: !2500, inlinedAt: !2751)
!2757 = !DILocation(line: 187, column: 3, scope: !2500, inlinedAt: !2751)
!2758 = !DILocation(line: 188, column: 13, scope: !2517, inlinedAt: !2751)
!2759 = !DILocation(line: 188, column: 7, scope: !2500, inlinedAt: !2751)
!2760 = !DILocation(line: 189, column: 5, scope: !2517, inlinedAt: !2751)
!2761 = !{!2762}
!2762 = distinct !{!2762, !2763, !"quoting_options_from_style: argument 0"}
!2763 = distinct !{!2763, !"quoting_options_from_style"}
!2764 = !DILocation(line: 191, column: 10, scope: !2500, inlinedAt: !2751)
!2765 = !DILocation(line: 192, column: 1, scope: !2500, inlinedAt: !2751)
!2766 = !DILocation(line: 1003, column: 13, scope: !2744)
!2767 = !DILocation(line: 1002, column: 26, scope: !2744)
!2768 = !DILocation(line: 144, column: 43, scope: !1083, inlinedAt: !2769)
!2769 = distinct !DILocation(line: 1004, column: 3, scope: !2744)
!2770 = !DILocation(line: 144, column: 51, scope: !1083, inlinedAt: !2769)
!2771 = !DILocation(line: 144, column: 58, scope: !1083, inlinedAt: !2769)
!2772 = !DILocation(line: 146, column: 17, scope: !1083, inlinedAt: !2769)
!2773 = !DILocation(line: 148, column: 57, scope: !1101, inlinedAt: !2769)
!2774 = !DILocation(line: 147, column: 17, scope: !1083, inlinedAt: !2769)
!2775 = !DILocation(line: 149, column: 7, scope: !1083, inlinedAt: !2769)
!2776 = !DILocation(line: 150, column: 12, scope: !1083, inlinedAt: !2769)
!2777 = !DILocation(line: 151, column: 6, scope: !1083, inlinedAt: !2769)
!2778 = !DILocation(line: 1005, column: 10, scope: !2744)
!2779 = !DILocation(line: 1006, column: 1, scope: !2744)
!2780 = !DILocation(line: 1005, column: 3, scope: !2744)
!2781 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !185, file: !185, line: 1009, type: !2782, isLocal: false, isDefinition: true, scopeLine: 1011, flags: DIFlagPrototyped, isOptimized: true, unit: !143, variables: !2784)
!2782 = !DISubroutineType(types: !2783)
!2783 = !{!21, !29, !6, !6, !6}
!2784 = !{!2785, !2786, !2787, !2788}
!2785 = !DILocalVariable(name: "n", arg: 1, scope: !2781, file: !185, line: 1009, type: !29)
!2786 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2781, file: !185, line: 1009, type: !6)
!2787 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2781, file: !185, line: 1010, type: !6)
!2788 = !DILocalVariable(name: "arg", arg: 4, scope: !2781, file: !185, line: 1010, type: !6)
!2789 = !DILocation(line: 1009, column: 24, scope: !2781)
!2790 = !DILocation(line: 1009, column: 39, scope: !2781)
!2791 = !DILocation(line: 1010, column: 32, scope: !2781)
!2792 = !DILocation(line: 1010, column: 57, scope: !2781)
!2793 = !DILocalVariable(name: "n", arg: 1, scope: !2794, file: !185, line: 1017, type: !29)
!2794 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !185, file: !185, line: 1017, type: !2795, isLocal: false, isDefinition: true, scopeLine: 1020, flags: DIFlagPrototyped, isOptimized: true, unit: !143, variables: !2797)
!2795 = !DISubroutineType(types: !2796)
!2796 = !{!21, !29, !6, !6, !6, !13}
!2797 = !{!2793, !2798, !2799, !2800, !2801, !2802}
!2798 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2794, file: !185, line: 1017, type: !6)
!2799 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2794, file: !185, line: 1018, type: !6)
!2800 = !DILocalVariable(name: "arg", arg: 4, scope: !2794, file: !185, line: 1019, type: !6)
!2801 = !DILocalVariable(name: "argsize", arg: 5, scope: !2794, file: !185, line: 1019, type: !13)
!2802 = !DILocalVariable(name: "o", scope: !2794, file: !185, line: 1021, type: !192)
!2803 = !DILocation(line: 1017, column: 28, scope: !2794, inlinedAt: !2804)
!2804 = distinct !DILocation(line: 1012, column: 10, scope: !2781)
!2805 = !DILocation(line: 1017, column: 43, scope: !2794, inlinedAt: !2804)
!2806 = !DILocation(line: 1018, column: 36, scope: !2794, inlinedAt: !2804)
!2807 = !DILocation(line: 1019, column: 36, scope: !2794, inlinedAt: !2804)
!2808 = !DILocation(line: 1019, column: 48, scope: !2794, inlinedAt: !2804)
!2809 = !DILocation(line: 1021, column: 3, scope: !2794, inlinedAt: !2804)
!2810 = !DILocation(line: 1021, column: 30, scope: !2794, inlinedAt: !2804)
!2811 = !DILocation(line: 1021, column: 26, scope: !2794, inlinedAt: !2804)
!2812 = !DILocation(line: 171, column: 45, scope: !1133, inlinedAt: !2813)
!2813 = distinct !DILocation(line: 1022, column: 3, scope: !2794, inlinedAt: !2804)
!2814 = !DILocation(line: 172, column: 33, scope: !1133, inlinedAt: !2813)
!2815 = !DILocation(line: 172, column: 57, scope: !1133, inlinedAt: !2813)
!2816 = !DILocation(line: 176, column: 6, scope: !1133, inlinedAt: !2813)
!2817 = !DILocation(line: 176, column: 12, scope: !1133, inlinedAt: !2813)
!2818 = !DILocation(line: 177, column: 8, scope: !1149, inlinedAt: !2813)
!2819 = !DILocation(line: 177, column: 23, scope: !1151, inlinedAt: !2813)
!2820 = !DILocation(line: 177, column: 19, scope: !1149, inlinedAt: !2813)
!2821 = !DILocation(line: 178, column: 5, scope: !1149, inlinedAt: !2813)
!2822 = !DILocation(line: 179, column: 6, scope: !1133, inlinedAt: !2813)
!2823 = !DILocation(line: 179, column: 17, scope: !1133, inlinedAt: !2813)
!2824 = !DILocation(line: 180, column: 6, scope: !1133, inlinedAt: !2813)
!2825 = !DILocation(line: 180, column: 18, scope: !1133, inlinedAt: !2813)
!2826 = !DILocation(line: 1023, column: 10, scope: !2794, inlinedAt: !2804)
!2827 = !DILocation(line: 1024, column: 1, scope: !2794, inlinedAt: !2804)
!2828 = !DILocation(line: 1012, column: 3, scope: !2781)
!2829 = !DILocation(line: 1017, column: 28, scope: !2794)
!2830 = !DILocation(line: 1017, column: 43, scope: !2794)
!2831 = !DILocation(line: 1018, column: 36, scope: !2794)
!2832 = !DILocation(line: 1019, column: 36, scope: !2794)
!2833 = !DILocation(line: 1019, column: 48, scope: !2794)
!2834 = !DILocation(line: 1021, column: 3, scope: !2794)
!2835 = !DILocation(line: 1021, column: 30, scope: !2794)
!2836 = !DILocation(line: 1021, column: 26, scope: !2794)
!2837 = !DILocation(line: 171, column: 45, scope: !1133, inlinedAt: !2838)
!2838 = distinct !DILocation(line: 1022, column: 3, scope: !2794)
!2839 = !DILocation(line: 172, column: 33, scope: !1133, inlinedAt: !2838)
!2840 = !DILocation(line: 172, column: 57, scope: !1133, inlinedAt: !2838)
!2841 = !DILocation(line: 176, column: 6, scope: !1133, inlinedAt: !2838)
!2842 = !DILocation(line: 176, column: 12, scope: !1133, inlinedAt: !2838)
!2843 = !DILocation(line: 177, column: 8, scope: !1149, inlinedAt: !2838)
!2844 = !DILocation(line: 177, column: 23, scope: !1151, inlinedAt: !2838)
!2845 = !DILocation(line: 177, column: 19, scope: !1149, inlinedAt: !2838)
!2846 = !DILocation(line: 178, column: 5, scope: !1149, inlinedAt: !2838)
!2847 = !DILocation(line: 179, column: 6, scope: !1133, inlinedAt: !2838)
!2848 = !DILocation(line: 179, column: 17, scope: !1133, inlinedAt: !2838)
!2849 = !DILocation(line: 180, column: 6, scope: !1133, inlinedAt: !2838)
!2850 = !DILocation(line: 180, column: 18, scope: !1133, inlinedAt: !2838)
!2851 = !DILocation(line: 1023, column: 10, scope: !2794)
!2852 = !DILocation(line: 1024, column: 1, scope: !2794)
!2853 = !DILocation(line: 1023, column: 3, scope: !2794)
!2854 = distinct !DISubprogram(name: "quotearg_custom", scope: !185, file: !185, line: 1027, type: !2855, isLocal: false, isDefinition: true, scopeLine: 1029, flags: DIFlagPrototyped, isOptimized: true, unit: !143, variables: !2857)
!2855 = !DISubroutineType(types: !2856)
!2856 = !{!21, !6, !6, !6}
!2857 = !{!2858, !2859, !2860}
!2858 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2854, file: !185, line: 1027, type: !6)
!2859 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2854, file: !185, line: 1027, type: !6)
!2860 = !DILocalVariable(name: "arg", arg: 3, scope: !2854, file: !185, line: 1028, type: !6)
!2861 = !DILocation(line: 1027, column: 30, scope: !2854)
!2862 = !DILocation(line: 1027, column: 54, scope: !2854)
!2863 = !DILocation(line: 1028, column: 30, scope: !2854)
!2864 = !DILocation(line: 1009, column: 24, scope: !2781, inlinedAt: !2865)
!2865 = distinct !DILocation(line: 1030, column: 10, scope: !2854)
!2866 = !DILocation(line: 1009, column: 39, scope: !2781, inlinedAt: !2865)
!2867 = !DILocation(line: 1010, column: 32, scope: !2781, inlinedAt: !2865)
!2868 = !DILocation(line: 1010, column: 57, scope: !2781, inlinedAt: !2865)
!2869 = !DILocation(line: 1017, column: 28, scope: !2794, inlinedAt: !2870)
!2870 = distinct !DILocation(line: 1012, column: 10, scope: !2781, inlinedAt: !2865)
!2871 = !DILocation(line: 1017, column: 43, scope: !2794, inlinedAt: !2870)
!2872 = !DILocation(line: 1018, column: 36, scope: !2794, inlinedAt: !2870)
!2873 = !DILocation(line: 1019, column: 36, scope: !2794, inlinedAt: !2870)
!2874 = !DILocation(line: 1019, column: 48, scope: !2794, inlinedAt: !2870)
!2875 = !DILocation(line: 1021, column: 3, scope: !2794, inlinedAt: !2870)
!2876 = !DILocation(line: 1021, column: 30, scope: !2794, inlinedAt: !2870)
!2877 = !DILocation(line: 1021, column: 26, scope: !2794, inlinedAt: !2870)
!2878 = !DILocation(line: 171, column: 45, scope: !1133, inlinedAt: !2879)
!2879 = distinct !DILocation(line: 1022, column: 3, scope: !2794, inlinedAt: !2870)
!2880 = !DILocation(line: 172, column: 33, scope: !1133, inlinedAt: !2879)
!2881 = !DILocation(line: 172, column: 57, scope: !1133, inlinedAt: !2879)
!2882 = !DILocation(line: 176, column: 6, scope: !1133, inlinedAt: !2879)
!2883 = !DILocation(line: 176, column: 12, scope: !1133, inlinedAt: !2879)
!2884 = !DILocation(line: 177, column: 8, scope: !1149, inlinedAt: !2879)
!2885 = !DILocation(line: 177, column: 23, scope: !1151, inlinedAt: !2879)
!2886 = !DILocation(line: 177, column: 19, scope: !1149, inlinedAt: !2879)
!2887 = !DILocation(line: 178, column: 5, scope: !1149, inlinedAt: !2879)
!2888 = !DILocation(line: 179, column: 6, scope: !1133, inlinedAt: !2879)
!2889 = !DILocation(line: 179, column: 17, scope: !1133, inlinedAt: !2879)
!2890 = !DILocation(line: 180, column: 6, scope: !1133, inlinedAt: !2879)
!2891 = !DILocation(line: 180, column: 18, scope: !1133, inlinedAt: !2879)
!2892 = !DILocation(line: 1023, column: 10, scope: !2794, inlinedAt: !2870)
!2893 = !DILocation(line: 1024, column: 1, scope: !2794, inlinedAt: !2870)
!2894 = !DILocation(line: 1030, column: 3, scope: !2854)
!2895 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !185, file: !185, line: 1034, type: !2896, isLocal: false, isDefinition: true, scopeLine: 1036, flags: DIFlagPrototyped, isOptimized: true, unit: !143, variables: !2898)
!2896 = !DISubroutineType(types: !2897)
!2897 = !{!21, !6, !6, !6, !13}
!2898 = !{!2899, !2900, !2901, !2902}
!2899 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2895, file: !185, line: 1034, type: !6)
!2900 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2895, file: !185, line: 1034, type: !6)
!2901 = !DILocalVariable(name: "arg", arg: 3, scope: !2895, file: !185, line: 1035, type: !6)
!2902 = !DILocalVariable(name: "argsize", arg: 4, scope: !2895, file: !185, line: 1035, type: !13)
!2903 = !DILocation(line: 1034, column: 34, scope: !2895)
!2904 = !DILocation(line: 1034, column: 58, scope: !2895)
!2905 = !DILocation(line: 1035, column: 34, scope: !2895)
!2906 = !DILocation(line: 1035, column: 46, scope: !2895)
!2907 = !DILocation(line: 1017, column: 28, scope: !2794, inlinedAt: !2908)
!2908 = distinct !DILocation(line: 1037, column: 10, scope: !2895)
!2909 = !DILocation(line: 1017, column: 43, scope: !2794, inlinedAt: !2908)
!2910 = !DILocation(line: 1018, column: 36, scope: !2794, inlinedAt: !2908)
!2911 = !DILocation(line: 1019, column: 36, scope: !2794, inlinedAt: !2908)
!2912 = !DILocation(line: 1019, column: 48, scope: !2794, inlinedAt: !2908)
!2913 = !DILocation(line: 1021, column: 3, scope: !2794, inlinedAt: !2908)
!2914 = !DILocation(line: 1021, column: 30, scope: !2794, inlinedAt: !2908)
!2915 = !DILocation(line: 1021, column: 26, scope: !2794, inlinedAt: !2908)
!2916 = !DILocation(line: 171, column: 45, scope: !1133, inlinedAt: !2917)
!2917 = distinct !DILocation(line: 1022, column: 3, scope: !2794, inlinedAt: !2908)
!2918 = !DILocation(line: 172, column: 33, scope: !1133, inlinedAt: !2917)
!2919 = !DILocation(line: 172, column: 57, scope: !1133, inlinedAt: !2917)
!2920 = !DILocation(line: 176, column: 6, scope: !1133, inlinedAt: !2917)
!2921 = !DILocation(line: 176, column: 12, scope: !1133, inlinedAt: !2917)
!2922 = !DILocation(line: 177, column: 8, scope: !1149, inlinedAt: !2917)
!2923 = !DILocation(line: 177, column: 23, scope: !1151, inlinedAt: !2917)
!2924 = !DILocation(line: 177, column: 19, scope: !1149, inlinedAt: !2917)
!2925 = !DILocation(line: 178, column: 5, scope: !1149, inlinedAt: !2917)
!2926 = !DILocation(line: 179, column: 6, scope: !1133, inlinedAt: !2917)
!2927 = !DILocation(line: 179, column: 17, scope: !1133, inlinedAt: !2917)
!2928 = !DILocation(line: 180, column: 6, scope: !1133, inlinedAt: !2917)
!2929 = !DILocation(line: 180, column: 18, scope: !1133, inlinedAt: !2917)
!2930 = !DILocation(line: 1023, column: 10, scope: !2794, inlinedAt: !2908)
!2931 = !DILocation(line: 1024, column: 1, scope: !2794, inlinedAt: !2908)
!2932 = !DILocation(line: 1037, column: 3, scope: !2895)
!2933 = distinct !DISubprogram(name: "quote_n_mem", scope: !185, file: !185, line: 1052, type: !2934, isLocal: false, isDefinition: true, scopeLine: 1053, flags: DIFlagPrototyped, isOptimized: true, unit: !143, variables: !2936)
!2934 = !DISubroutineType(types: !2935)
!2935 = !{!6, !29, !6, !13}
!2936 = !{!2937, !2938, !2939}
!2937 = !DILocalVariable(name: "n", arg: 1, scope: !2933, file: !185, line: 1052, type: !29)
!2938 = !DILocalVariable(name: "arg", arg: 2, scope: !2933, file: !185, line: 1052, type: !6)
!2939 = !DILocalVariable(name: "argsize", arg: 3, scope: !2933, file: !185, line: 1052, type: !13)
!2940 = !DILocation(line: 1052, column: 18, scope: !2933)
!2941 = !DILocation(line: 1052, column: 33, scope: !2933)
!2942 = !DILocation(line: 1052, column: 45, scope: !2933)
!2943 = !DILocation(line: 1054, column: 10, scope: !2933)
!2944 = !DILocation(line: 1054, column: 3, scope: !2933)
!2945 = distinct !DISubprogram(name: "quote_mem", scope: !185, file: !185, line: 1058, type: !2946, isLocal: false, isDefinition: true, scopeLine: 1059, flags: DIFlagPrototyped, isOptimized: true, unit: !143, variables: !2948)
!2946 = !DISubroutineType(types: !2947)
!2947 = !{!6, !6, !13}
!2948 = !{!2949, !2950}
!2949 = !DILocalVariable(name: "arg", arg: 1, scope: !2945, file: !185, line: 1058, type: !6)
!2950 = !DILocalVariable(name: "argsize", arg: 2, scope: !2945, file: !185, line: 1058, type: !13)
!2951 = !DILocation(line: 1058, column: 24, scope: !2945)
!2952 = !DILocation(line: 1058, column: 36, scope: !2945)
!2953 = !DILocation(line: 1052, column: 18, scope: !2933, inlinedAt: !2954)
!2954 = distinct !DILocation(line: 1060, column: 10, scope: !2945)
!2955 = !DILocation(line: 1052, column: 33, scope: !2933, inlinedAt: !2954)
!2956 = !DILocation(line: 1052, column: 45, scope: !2933, inlinedAt: !2954)
!2957 = !DILocation(line: 1054, column: 10, scope: !2933, inlinedAt: !2954)
!2958 = !DILocation(line: 1060, column: 3, scope: !2945)
!2959 = distinct !DISubprogram(name: "quote_n", scope: !185, file: !185, line: 1064, type: !2960, isLocal: false, isDefinition: true, scopeLine: 1065, flags: DIFlagPrototyped, isOptimized: true, unit: !143, variables: !2962)
!2960 = !DISubroutineType(types: !2961)
!2961 = !{!6, !29, !6}
!2962 = !{!2963, !2964}
!2963 = !DILocalVariable(name: "n", arg: 1, scope: !2959, file: !185, line: 1064, type: !29)
!2964 = !DILocalVariable(name: "arg", arg: 2, scope: !2959, file: !185, line: 1064, type: !6)
!2965 = !DILocation(line: 1064, column: 14, scope: !2959)
!2966 = !DILocation(line: 1064, column: 29, scope: !2959)
!2967 = !DILocation(line: 1052, column: 18, scope: !2933, inlinedAt: !2968)
!2968 = distinct !DILocation(line: 1066, column: 10, scope: !2959)
!2969 = !DILocation(line: 1052, column: 33, scope: !2933, inlinedAt: !2968)
!2970 = !DILocation(line: 1052, column: 45, scope: !2933, inlinedAt: !2968)
!2971 = !DILocation(line: 1054, column: 10, scope: !2933, inlinedAt: !2968)
!2972 = !DILocation(line: 1066, column: 3, scope: !2959)
!2973 = distinct !DISubprogram(name: "quote", scope: !185, file: !185, line: 1070, type: !2974, isLocal: false, isDefinition: true, scopeLine: 1071, flags: DIFlagPrototyped, isOptimized: true, unit: !143, variables: !2976)
!2974 = !DISubroutineType(types: !2975)
!2975 = !{!6, !6}
!2976 = !{!2977}
!2977 = !DILocalVariable(name: "arg", arg: 1, scope: !2973, file: !185, line: 1070, type: !6)
!2978 = !DILocation(line: 1070, column: 20, scope: !2973)
!2979 = !DILocation(line: 1064, column: 14, scope: !2959, inlinedAt: !2980)
!2980 = distinct !DILocation(line: 1072, column: 10, scope: !2973)
!2981 = !DILocation(line: 1064, column: 29, scope: !2959, inlinedAt: !2980)
!2982 = !DILocation(line: 1052, column: 18, scope: !2933, inlinedAt: !2983)
!2983 = distinct !DILocation(line: 1066, column: 10, scope: !2959, inlinedAt: !2980)
!2984 = !DILocation(line: 1052, column: 33, scope: !2933, inlinedAt: !2983)
!2985 = !DILocation(line: 1052, column: 45, scope: !2933, inlinedAt: !2983)
!2986 = !DILocation(line: 1054, column: 10, scope: !2933, inlinedAt: !2983)
!2987 = !DILocation(line: 1072, column: 3, scope: !2973)
!2988 = distinct !DISubprogram(name: "version_etc_arn", scope: !583, file: !583, line: 62, type: !2989, isLocal: false, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: true, unit: !579, variables: !3047)
!2989 = !DISubroutineType(types: !2990)
!2990 = !{null, !2991, !6, !6, !6, !3046, !13}
!2991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2992, size: 64)
!2992 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2993, line: 49, baseType: !2994)
!2993 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2994 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2995, line: 241, size: 1728, elements: !2996)
!2995 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2996 = !{!2997, !2998, !2999, !3000, !3001, !3002, !3003, !3004, !3005, !3006, !3007, !3008, !3009, !3017, !3018, !3019, !3020, !3024, !3025, !3027, !3031, !3034, !3036, !3037, !3038, !3039, !3040, !3041, !3042}
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2994, file: !2995, line: 242, baseType: !29, size: 32)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2994, file: !2995, line: 247, baseType: !21, size: 64, offset: 64)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2994, file: !2995, line: 248, baseType: !21, size: 64, offset: 128)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2994, file: !2995, line: 249, baseType: !21, size: 64, offset: 192)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2994, file: !2995, line: 250, baseType: !21, size: 64, offset: 256)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2994, file: !2995, line: 251, baseType: !21, size: 64, offset: 320)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2994, file: !2995, line: 252, baseType: !21, size: 64, offset: 384)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2994, file: !2995, line: 253, baseType: !21, size: 64, offset: 448)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2994, file: !2995, line: 254, baseType: !21, size: 64, offset: 512)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2994, file: !2995, line: 256, baseType: !21, size: 64, offset: 576)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2994, file: !2995, line: 257, baseType: !21, size: 64, offset: 640)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2994, file: !2995, line: 258, baseType: !21, size: 64, offset: 704)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2994, file: !2995, line: 260, baseType: !3010, size: 64, offset: 768)
!3010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3011, size: 64)
!3011 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2995, line: 156, size: 192, elements: !3012)
!3012 = !{!3013, !3014, !3016}
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3011, file: !2995, line: 157, baseType: !3010, size: 64)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3011, file: !2995, line: 158, baseType: !3015, size: 64, offset: 64)
!3015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2994, size: 64)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3011, file: !2995, line: 162, baseType: !29, size: 32, offset: 128)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2994, file: !2995, line: 262, baseType: !3015, size: 64, offset: 832)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2994, file: !2995, line: 264, baseType: !29, size: 32, offset: 896)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2994, file: !2995, line: 268, baseType: !29, size: 32, offset: 928)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2994, file: !2995, line: 270, baseType: !3021, size: 64, offset: 960)
!3021 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !3022, line: 140, baseType: !3023)
!3022 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3023 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2994, file: !2995, line: 274, baseType: !181, size: 16, offset: 1024)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2994, file: !2995, line: 275, baseType: !3026, size: 8, offset: 1040)
!3026 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2994, file: !2995, line: 276, baseType: !3028, size: 8, offset: 1048)
!3028 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 8, elements: !3029)
!3029 = !{!3030}
!3030 = !DISubrange(count: 1)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2994, file: !2995, line: 280, baseType: !3032, size: 64, offset: 1088)
!3032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3033, size: 64)
!3033 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !2995, line: 150, baseType: null)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2994, file: !2995, line: 289, baseType: !3035, size: 64, offset: 1152)
!3035 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !3022, line: 141, baseType: !3023)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !2994, file: !2995, line: 297, baseType: !22, size: 64, offset: 1216)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !2994, file: !2995, line: 298, baseType: !22, size: 64, offset: 1280)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !2994, file: !2995, line: 299, baseType: !22, size: 64, offset: 1344)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !2994, file: !2995, line: 300, baseType: !22, size: 64, offset: 1408)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2994, file: !2995, line: 302, baseType: !13, size: 64, offset: 1472)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2994, file: !2995, line: 303, baseType: !29, size: 32, offset: 1536)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2994, file: !2995, line: 305, baseType: !3043, size: 160, offset: 1568)
!3043 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 160, elements: !3044)
!3044 = !{!3045}
!3045 = !DISubrange(count: 20)
!3046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 64)
!3047 = !{!3048, !3049, !3050, !3051, !3052, !3053}
!3048 = !DILocalVariable(name: "stream", arg: 1, scope: !2988, file: !583, line: 62, type: !2991)
!3049 = !DILocalVariable(name: "command_name", arg: 2, scope: !2988, file: !583, line: 63, type: !6)
!3050 = !DILocalVariable(name: "package", arg: 3, scope: !2988, file: !583, line: 63, type: !6)
!3051 = !DILocalVariable(name: "version", arg: 4, scope: !2988, file: !583, line: 64, type: !6)
!3052 = !DILocalVariable(name: "authors", arg: 5, scope: !2988, file: !583, line: 65, type: !3046)
!3053 = !DILocalVariable(name: "n_authors", arg: 6, scope: !2988, file: !583, line: 65, type: !13)
!3054 = !DILocation(line: 62, column: 24, scope: !2988)
!3055 = !DILocation(line: 63, column: 30, scope: !2988)
!3056 = !DILocation(line: 63, column: 56, scope: !2988)
!3057 = !DILocation(line: 64, column: 30, scope: !2988)
!3058 = !DILocation(line: 65, column: 39, scope: !2988)
!3059 = !DILocation(line: 65, column: 55, scope: !2988)
!3060 = !DILocation(line: 67, column: 7, scope: !3061)
!3061 = distinct !DILexicalBlock(scope: !2988, file: !583, line: 67, column: 7)
!3062 = !DILocation(line: 67, column: 7, scope: !2988)
!3063 = !DILocation(line: 68, column: 5, scope: !3061)
!3064 = !DILocation(line: 70, column: 5, scope: !3061)
!3065 = !DILocation(line: 84, column: 3, scope: !2988)
!3066 = !DILocation(line: 84, column: 3, scope: !3067)
!3067 = !DILexicalBlockFile(scope: !2988, file: !583, discriminator: 1)
!3068 = !DILocation(line: 86, column: 3, scope: !2988)
!3069 = !DILocation(line: 86, column: 3, scope: !3067)
!3070 = !DILocation(line: 95, column: 3, scope: !2988)
!3071 = !DILocation(line: 99, column: 7, scope: !3072)
!3072 = distinct !DILexicalBlock(scope: !2988, file: !583, line: 96, column: 5)
!3073 = !DILocation(line: 102, column: 7, scope: !3072)
!3074 = !DILocation(line: 102, column: 7, scope: !3075)
!3075 = !DILexicalBlockFile(scope: !3072, file: !583, discriminator: 1)
!3076 = !DILocation(line: 103, column: 7, scope: !3072)
!3077 = !DILocation(line: 106, column: 7, scope: !3072)
!3078 = !DILocation(line: 106, column: 7, scope: !3075)
!3079 = !DILocation(line: 107, column: 7, scope: !3072)
!3080 = !DILocation(line: 110, column: 7, scope: !3072)
!3081 = !DILocation(line: 110, column: 7, scope: !3075)
!3082 = !DILocation(line: 112, column: 7, scope: !3072)
!3083 = !DILocation(line: 117, column: 7, scope: !3072)
!3084 = !DILocation(line: 117, column: 7, scope: !3075)
!3085 = !DILocation(line: 119, column: 7, scope: !3072)
!3086 = !DILocation(line: 124, column: 7, scope: !3072)
!3087 = !DILocation(line: 124, column: 7, scope: !3075)
!3088 = !DILocation(line: 126, column: 7, scope: !3072)
!3089 = !DILocation(line: 131, column: 7, scope: !3072)
!3090 = !DILocation(line: 131, column: 7, scope: !3075)
!3091 = !DILocation(line: 134, column: 7, scope: !3072)
!3092 = !DILocation(line: 139, column: 7, scope: !3072)
!3093 = !DILocation(line: 139, column: 7, scope: !3075)
!3094 = !DILocation(line: 142, column: 7, scope: !3072)
!3095 = !DILocation(line: 147, column: 7, scope: !3072)
!3096 = !DILocation(line: 147, column: 7, scope: !3075)
!3097 = !DILocation(line: 151, column: 7, scope: !3072)
!3098 = !DILocation(line: 156, column: 7, scope: !3072)
!3099 = !DILocation(line: 156, column: 7, scope: !3075)
!3100 = !DILocation(line: 160, column: 7, scope: !3072)
!3101 = !DILocation(line: 167, column: 7, scope: !3072)
!3102 = !DILocation(line: 167, column: 7, scope: !3075)
!3103 = !DILocation(line: 171, column: 7, scope: !3072)
!3104 = !DILocation(line: 173, column: 1, scope: !2988)
!3105 = distinct !DISubprogram(name: "version_etc_ar", scope: !583, file: !583, line: 180, type: !3106, isLocal: false, isDefinition: true, scopeLine: 183, flags: DIFlagPrototyped, isOptimized: true, unit: !579, variables: !3108)
!3106 = !DISubroutineType(types: !3107)
!3107 = !{null, !2991, !6, !6, !6, !3046}
!3108 = !{!3109, !3110, !3111, !3112, !3113, !3114}
!3109 = !DILocalVariable(name: "stream", arg: 1, scope: !3105, file: !583, line: 180, type: !2991)
!3110 = !DILocalVariable(name: "command_name", arg: 2, scope: !3105, file: !583, line: 181, type: !6)
!3111 = !DILocalVariable(name: "package", arg: 3, scope: !3105, file: !583, line: 181, type: !6)
!3112 = !DILocalVariable(name: "version", arg: 4, scope: !3105, file: !583, line: 182, type: !6)
!3113 = !DILocalVariable(name: "authors", arg: 5, scope: !3105, file: !583, line: 182, type: !3046)
!3114 = !DILocalVariable(name: "n_authors", scope: !3105, file: !583, line: 184, type: !13)
!3115 = !DILocation(line: 180, column: 23, scope: !3105)
!3116 = !DILocation(line: 181, column: 29, scope: !3105)
!3117 = !DILocation(line: 181, column: 55, scope: !3105)
!3118 = !DILocation(line: 182, column: 29, scope: !3105)
!3119 = !DILocation(line: 182, column: 59, scope: !3105)
!3120 = !DILocation(line: 184, column: 10, scope: !3105)
!3121 = !DILocation(line: 186, column: 8, scope: !3122)
!3122 = distinct !DILexicalBlock(scope: !3105, file: !583, line: 186, column: 3)
!3123 = !DILocation(line: 186, column: 23, scope: !3124)
!3124 = !DILexicalBlockFile(scope: !3125, file: !583, discriminator: 1)
!3125 = distinct !DILexicalBlock(scope: !3122, file: !583, line: 186, column: 3)
!3126 = !DILocation(line: 186, column: 3, scope: !3127)
!3127 = !DILexicalBlockFile(scope: !3122, file: !583, discriminator: 1)
!3128 = !DILocation(line: 186, column: 52, scope: !3129)
!3129 = !DILexicalBlockFile(scope: !3125, file: !583, discriminator: 3)
!3130 = distinct !{!3130, !3131, !3132}
!3131 = !DILocation(line: 186, column: 3, scope: !3122)
!3132 = !DILocation(line: 187, column: 5, scope: !3122)
!3133 = !DILocation(line: 188, column: 3, scope: !3105)
!3134 = !DILocation(line: 189, column: 1, scope: !3105)
!3135 = distinct !DISubprogram(name: "version_etc_va", scope: !583, file: !583, line: 196, type: !3136, isLocal: false, isDefinition: true, scopeLine: 199, flags: DIFlagPrototyped, isOptimized: true, unit: !579, variables: !3145)
!3136 = !DISubroutineType(types: !3137)
!3137 = !{null, !2991, !6, !6, !6, !3138}
!3138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3139, size: 64)
!3139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !580, line: 189, size: 192, elements: !3140)
!3140 = !{!3141, !3142, !3143, !3144}
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !3139, file: !580, line: 189, baseType: !35, size: 32)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !3139, file: !580, line: 189, baseType: !35, size: 32, offset: 32)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !3139, file: !580, line: 189, baseType: !22, size: 64, offset: 64)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !3139, file: !580, line: 189, baseType: !22, size: 64, offset: 128)
!3145 = !{!3146, !3147, !3148, !3149, !3150, !3151, !3152}
!3146 = !DILocalVariable(name: "stream", arg: 1, scope: !3135, file: !583, line: 196, type: !2991)
!3147 = !DILocalVariable(name: "command_name", arg: 2, scope: !3135, file: !583, line: 197, type: !6)
!3148 = !DILocalVariable(name: "package", arg: 3, scope: !3135, file: !583, line: 197, type: !6)
!3149 = !DILocalVariable(name: "version", arg: 4, scope: !3135, file: !583, line: 198, type: !6)
!3150 = !DILocalVariable(name: "authors", arg: 5, scope: !3135, file: !583, line: 198, type: !3138)
!3151 = !DILocalVariable(name: "n_authors", scope: !3135, file: !583, line: 200, type: !13)
!3152 = !DILocalVariable(name: "authtab", scope: !3135, file: !583, line: 201, type: !3153)
!3153 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 640, elements: !188)
!3154 = !DILocation(line: 196, column: 23, scope: !3135)
!3155 = !DILocation(line: 197, column: 29, scope: !3135)
!3156 = !DILocation(line: 197, column: 55, scope: !3135)
!3157 = !DILocation(line: 198, column: 29, scope: !3135)
!3158 = !DILocation(line: 198, column: 46, scope: !3135)
!3159 = !DILocation(line: 201, column: 3, scope: !3135)
!3160 = !DILocation(line: 201, column: 15, scope: !3135)
!3161 = !DILocation(line: 200, column: 10, scope: !3135)
!3162 = !DILocation(line: 205, column: 35, scope: !3163)
!3163 = !DILexicalBlockFile(scope: !3164, file: !583, discriminator: 1)
!3164 = distinct !DILexicalBlock(scope: !3165, file: !583, line: 203, column: 3)
!3165 = distinct !DILexicalBlock(scope: !3135, file: !583, line: 203, column: 3)
!3166 = !DILocation(line: 205, column: 35, scope: !3167)
!3167 = !DILexicalBlockFile(scope: !3164, file: !583, discriminator: 2)
!3168 = !DILocation(line: 205, column: 35, scope: !3169)
!3169 = !DILexicalBlockFile(scope: !3164, file: !583, discriminator: 3)
!3170 = !DILocation(line: 205, column: 35, scope: !3171)
!3171 = !DILexicalBlockFile(scope: !3164, file: !583, discriminator: 4)
!3172 = !DILocation(line: 205, column: 14, scope: !3171)
!3173 = !DILocation(line: 205, column: 33, scope: !3171)
!3174 = !DILocation(line: 205, column: 67, scope: !3171)
!3175 = !DILocation(line: 203, column: 3, scope: !3176)
!3176 = !DILexicalBlockFile(scope: !3165, file: !583, discriminator: 1)
!3177 = !DILocation(line: 208, column: 3, scope: !3135)
!3178 = !DILocation(line: 210, column: 1, scope: !3135)
!3179 = distinct !DISubprogram(name: "version_etc", scope: !583, file: !583, line: 227, type: !3180, isLocal: false, isDefinition: true, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: true, unit: !579, variables: !3182)
!3180 = !DISubroutineType(types: !3181)
!3181 = !{null, !2991, !6, !6, !6, null}
!3182 = !{!3183, !3184, !3185, !3186, !3187}
!3183 = !DILocalVariable(name: "stream", arg: 1, scope: !3179, file: !583, line: 227, type: !2991)
!3184 = !DILocalVariable(name: "command_name", arg: 2, scope: !3179, file: !583, line: 228, type: !6)
!3185 = !DILocalVariable(name: "package", arg: 3, scope: !3179, file: !583, line: 228, type: !6)
!3186 = !DILocalVariable(name: "version", arg: 4, scope: !3179, file: !583, line: 229, type: !6)
!3187 = !DILocalVariable(name: "authors", scope: !3179, file: !583, line: 231, type: !3188)
!3188 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !2993, line: 80, baseType: !3189)
!3189 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !3190, line: 50, baseType: !3191)
!3190 = !DIFile(filename: "/usr/bin/../lib/clang/4.0.1/include/stdarg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3191 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !580, line: 231, baseType: !3192)
!3192 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3139, size: 192, elements: !3029)
!3193 = !DILocation(line: 227, column: 20, scope: !3179)
!3194 = !DILocation(line: 228, column: 26, scope: !3179)
!3195 = !DILocation(line: 228, column: 52, scope: !3179)
!3196 = !DILocation(line: 229, column: 26, scope: !3179)
!3197 = !DILocation(line: 231, column: 3, scope: !3179)
!3198 = !DILocation(line: 231, column: 11, scope: !3179)
!3199 = !DILocation(line: 233, column: 3, scope: !3179)
!3200 = !DILocation(line: 234, column: 3, scope: !3179)
!3201 = !DILocation(line: 235, column: 3, scope: !3179)
!3202 = !DILocation(line: 236, column: 1, scope: !3179)
!3203 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !583, file: !583, line: 239, type: !957, isLocal: false, isDefinition: true, scopeLine: 240, flags: DIFlagPrototyped, isOptimized: true, unit: !579, variables: !11)
!3204 = !DILocation(line: 245, column: 3, scope: !3203)
!3205 = !DILocation(line: 245, column: 3, scope: !3206)
!3206 = !DILexicalBlockFile(scope: !3203, file: !583, discriminator: 1)
!3207 = !DILocation(line: 251, column: 3, scope: !3203)
!3208 = !DILocation(line: 251, column: 3, scope: !3206)
!3209 = !DILocation(line: 256, column: 3, scope: !3203)
!3210 = !DILocation(line: 256, column: 3, scope: !3206)
!3211 = !DILocation(line: 258, column: 1, scope: !3203)
!3212 = distinct !DISubprogram(name: "xnmalloc", scope: !591, file: !591, line: 105, type: !3213, isLocal: false, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: true, unit: !587, variables: !3215)
!3213 = !DISubroutineType(types: !3214)
!3214 = !{!22, !13, !13}
!3215 = !{!3216, !3217}
!3216 = !DILocalVariable(name: "n", arg: 1, scope: !3212, file: !591, line: 105, type: !13)
!3217 = !DILocalVariable(name: "s", arg: 2, scope: !3212, file: !591, line: 105, type: !13)
!3218 = !DILocation(line: 105, column: 18, scope: !3212)
!3219 = !DILocation(line: 105, column: 28, scope: !3212)
!3220 = !DILocation(line: 107, column: 7, scope: !3221)
!3221 = distinct !DILexicalBlock(scope: !3212, file: !591, line: 107, column: 7)
!3222 = !DILocation(line: 107, column: 7, scope: !3212)
!3223 = !DILocation(line: 108, column: 5, scope: !3221)
!3224 = !DILocation(line: 109, column: 21, scope: !3212)
!3225 = !DILocalVariable(name: "n", arg: 1, scope: !3226, file: !3227, line: 39, type: !13)
!3226 = distinct !DISubprogram(name: "xmalloc", scope: !3227, file: !3227, line: 39, type: !3228, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !587, variables: !3230)
!3227 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3228 = !DISubroutineType(types: !3229)
!3229 = !{!22, !13}
!3230 = !{!3225, !3231}
!3231 = !DILocalVariable(name: "p", scope: !3226, file: !3227, line: 41, type: !22)
!3232 = !DILocation(line: 39, column: 17, scope: !3226, inlinedAt: !3233)
!3233 = distinct !DILocation(line: 109, column: 10, scope: !3212)
!3234 = !DILocation(line: 41, column: 13, scope: !3226, inlinedAt: !3233)
!3235 = !DILocation(line: 41, column: 9, scope: !3226, inlinedAt: !3233)
!3236 = !DILocation(line: 42, column: 8, scope: !3237, inlinedAt: !3233)
!3237 = distinct !DILexicalBlock(scope: !3226, file: !3227, line: 42, column: 7)
!3238 = !DILocation(line: 42, column: 15, scope: !3239, inlinedAt: !3233)
!3239 = !DILexicalBlockFile(scope: !3237, file: !3227, discriminator: 1)
!3240 = !DILocation(line: 42, column: 10, scope: !3237, inlinedAt: !3233)
!3241 = !DILocation(line: 43, column: 5, scope: !3237, inlinedAt: !3233)
!3242 = !DILocation(line: 109, column: 3, scope: !3212)
!3243 = !DILocation(line: 39, column: 17, scope: !3226)
!3244 = !DILocation(line: 41, column: 13, scope: !3226)
!3245 = !DILocation(line: 41, column: 9, scope: !3226)
!3246 = !DILocation(line: 42, column: 8, scope: !3237)
!3247 = !DILocation(line: 42, column: 15, scope: !3239)
!3248 = !DILocation(line: 42, column: 10, scope: !3237)
!3249 = !DILocation(line: 43, column: 5, scope: !3237)
!3250 = !DILocation(line: 44, column: 3, scope: !3226)
!3251 = distinct !DISubprogram(name: "xnrealloc", scope: !591, file: !591, line: 118, type: !3252, isLocal: false, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !587, variables: !3254)
!3252 = !DISubroutineType(types: !3253)
!3253 = !{!22, !22, !13, !13}
!3254 = !{!3255, !3256, !3257}
!3255 = !DILocalVariable(name: "p", arg: 1, scope: !3251, file: !591, line: 118, type: !22)
!3256 = !DILocalVariable(name: "n", arg: 2, scope: !3251, file: !591, line: 118, type: !13)
!3257 = !DILocalVariable(name: "s", arg: 3, scope: !3251, file: !591, line: 118, type: !13)
!3258 = !DILocation(line: 118, column: 18, scope: !3251)
!3259 = !DILocation(line: 118, column: 28, scope: !3251)
!3260 = !DILocation(line: 118, column: 38, scope: !3251)
!3261 = !DILocation(line: 120, column: 7, scope: !3262)
!3262 = distinct !DILexicalBlock(scope: !3251, file: !591, line: 120, column: 7)
!3263 = !DILocation(line: 120, column: 7, scope: !3251)
!3264 = !DILocation(line: 121, column: 5, scope: !3262)
!3265 = !DILocation(line: 122, column: 25, scope: !3251)
!3266 = !DILocalVariable(name: "p", arg: 1, scope: !3267, file: !3227, line: 51, type: !22)
!3267 = distinct !DISubprogram(name: "xrealloc", scope: !3227, file: !3227, line: 51, type: !3268, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !587, variables: !3270)
!3268 = !DISubroutineType(types: !3269)
!3269 = !{!22, !22, !13}
!3270 = !{!3266, !3271}
!3271 = !DILocalVariable(name: "n", arg: 2, scope: !3267, file: !3227, line: 51, type: !13)
!3272 = !DILocation(line: 51, column: 17, scope: !3267, inlinedAt: !3273)
!3273 = distinct !DILocation(line: 122, column: 10, scope: !3251)
!3274 = !DILocation(line: 51, column: 27, scope: !3267, inlinedAt: !3273)
!3275 = !DILocation(line: 53, column: 8, scope: !3276, inlinedAt: !3273)
!3276 = distinct !DILexicalBlock(scope: !3267, file: !3227, line: 53, column: 7)
!3277 = !DILocation(line: 53, column: 13, scope: !3278, inlinedAt: !3273)
!3278 = !DILexicalBlockFile(scope: !3276, file: !3227, discriminator: 1)
!3279 = !DILocation(line: 53, column: 10, scope: !3276, inlinedAt: !3273)
!3280 = !DILocation(line: 57, column: 7, scope: !3281, inlinedAt: !3273)
!3281 = distinct !DILexicalBlock(scope: !3276, file: !3227, line: 54, column: 5)
!3282 = !DILocation(line: 58, column: 7, scope: !3281, inlinedAt: !3273)
!3283 = !DILocation(line: 61, column: 7, scope: !3267, inlinedAt: !3273)
!3284 = !DILocation(line: 62, column: 8, scope: !3285, inlinedAt: !3273)
!3285 = distinct !DILexicalBlock(scope: !3267, file: !3227, line: 62, column: 7)
!3286 = !DILocation(line: 62, column: 13, scope: !3287, inlinedAt: !3273)
!3287 = !DILexicalBlockFile(scope: !3285, file: !3227, discriminator: 1)
!3288 = !DILocation(line: 62, column: 10, scope: !3285, inlinedAt: !3273)
!3289 = !DILocation(line: 63, column: 5, scope: !3285, inlinedAt: !3273)
!3290 = !DILocation(line: 122, column: 3, scope: !3251)
!3291 = !DILocation(line: 51, column: 17, scope: !3267)
!3292 = !DILocation(line: 51, column: 27, scope: !3267)
!3293 = !DILocation(line: 53, column: 8, scope: !3276)
!3294 = !DILocation(line: 53, column: 13, scope: !3278)
!3295 = !DILocation(line: 53, column: 10, scope: !3276)
!3296 = !DILocation(line: 57, column: 7, scope: !3281)
!3297 = !DILocation(line: 58, column: 7, scope: !3281)
!3298 = !DILocation(line: 61, column: 7, scope: !3267)
!3299 = !DILocation(line: 62, column: 8, scope: !3285)
!3300 = !DILocation(line: 62, column: 13, scope: !3287)
!3301 = !DILocation(line: 62, column: 10, scope: !3285)
!3302 = !DILocation(line: 63, column: 5, scope: !3285)
!3303 = !DILocation(line: 65, column: 1, scope: !3267)
!3304 = !DILocation(line: 180, column: 19, scope: !592)
!3305 = !DILocation(line: 180, column: 30, scope: !592)
!3306 = !DILocation(line: 180, column: 41, scope: !592)
!3307 = !DILocation(line: 182, column: 14, scope: !592)
!3308 = !DILocation(line: 182, column: 10, scope: !592)
!3309 = !DILocation(line: 184, column: 9, scope: !3310)
!3310 = distinct !DILexicalBlock(scope: !592, file: !591, line: 184, column: 7)
!3311 = !DILocation(line: 184, column: 7, scope: !592)
!3312 = !DILocation(line: 186, column: 13, scope: !3313)
!3313 = distinct !DILexicalBlock(scope: !3314, file: !591, line: 186, column: 11)
!3314 = distinct !DILexicalBlock(scope: !3310, file: !591, line: 185, column: 5)
!3315 = !DILocation(line: 186, column: 11, scope: !3314)
!3316 = !DILocation(line: 194, column: 30, scope: !3317)
!3317 = distinct !DILexicalBlock(scope: !3313, file: !591, line: 187, column: 9)
!3318 = !DILocation(line: 195, column: 16, scope: !3317)
!3319 = !DILocation(line: 195, column: 13, scope: !3317)
!3320 = !DILocation(line: 196, column: 9, scope: !3317)
!3321 = !DILocation(line: 204, column: 69, scope: !3322)
!3322 = distinct !DILexicalBlock(scope: !3323, file: !591, line: 204, column: 11)
!3323 = distinct !DILexicalBlock(scope: !3310, file: !591, line: 199, column: 5)
!3324 = !DILocation(line: 205, column: 11, scope: !3322)
!3325 = !DILocation(line: 204, column: 11, scope: !3323)
!3326 = !DILocation(line: 206, column: 9, scope: !3322)
!3327 = !DILocation(line: 210, column: 7, scope: !592)
!3328 = !DILocation(line: 211, column: 25, scope: !592)
!3329 = !DILocation(line: 51, column: 17, scope: !3267, inlinedAt: !3330)
!3330 = distinct !DILocation(line: 211, column: 10, scope: !592)
!3331 = !DILocation(line: 51, column: 27, scope: !3267, inlinedAt: !3330)
!3332 = !DILocation(line: 53, column: 10, scope: !3276, inlinedAt: !3330)
!3333 = !DILocation(line: 207, column: 14, scope: !3323)
!3334 = !DILocation(line: 207, column: 18, scope: !3323)
!3335 = !DILocation(line: 207, column: 9, scope: !3323)
!3336 = !DILocation(line: 53, column: 8, scope: !3276, inlinedAt: !3330)
!3337 = !DILocation(line: 57, column: 7, scope: !3281, inlinedAt: !3330)
!3338 = !DILocation(line: 58, column: 7, scope: !3281, inlinedAt: !3330)
!3339 = !DILocation(line: 61, column: 7, scope: !3267, inlinedAt: !3330)
!3340 = !DILocation(line: 62, column: 8, scope: !3285, inlinedAt: !3330)
!3341 = !DILocation(line: 62, column: 13, scope: !3287, inlinedAt: !3330)
!3342 = !DILocation(line: 62, column: 10, scope: !3285, inlinedAt: !3330)
!3343 = !DILocation(line: 63, column: 5, scope: !3285, inlinedAt: !3330)
!3344 = !DILocation(line: 211, column: 3, scope: !592)
!3345 = distinct !DISubprogram(name: "xcharalloc", scope: !591, file: !591, line: 220, type: !2261, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !587, variables: !3346)
!3346 = !{!3347}
!3347 = !DILocalVariable(name: "n", arg: 1, scope: !3345, file: !591, line: 220, type: !13)
!3348 = !DILocation(line: 220, column: 20, scope: !3345)
!3349 = !DILocation(line: 39, column: 17, scope: !3226, inlinedAt: !3350)
!3350 = distinct !DILocation(line: 222, column: 10, scope: !3345)
!3351 = !DILocation(line: 41, column: 13, scope: !3226, inlinedAt: !3350)
!3352 = !DILocation(line: 41, column: 9, scope: !3226, inlinedAt: !3350)
!3353 = !DILocation(line: 42, column: 8, scope: !3237, inlinedAt: !3350)
!3354 = !DILocation(line: 42, column: 15, scope: !3239, inlinedAt: !3350)
!3355 = !DILocation(line: 42, column: 10, scope: !3237, inlinedAt: !3350)
!3356 = !DILocation(line: 43, column: 5, scope: !3237, inlinedAt: !3350)
!3357 = !DILocation(line: 222, column: 3, scope: !3345)
!3358 = distinct !DISubprogram(name: "x2realloc", scope: !3227, file: !3227, line: 74, type: !3359, isLocal: false, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, unit: !587, variables: !3361)
!3359 = !DISubroutineType(types: !3360)
!3360 = !{!22, !22, !595}
!3361 = !{!3362, !3363}
!3362 = !DILocalVariable(name: "p", arg: 1, scope: !3358, file: !3227, line: 74, type: !22)
!3363 = !DILocalVariable(name: "pn", arg: 2, scope: !3358, file: !3227, line: 74, type: !595)
!3364 = !DILocation(line: 74, column: 18, scope: !3358)
!3365 = !DILocation(line: 74, column: 29, scope: !3358)
!3366 = !DILocation(line: 180, column: 19, scope: !592, inlinedAt: !3367)
!3367 = distinct !DILocation(line: 76, column: 10, scope: !3358)
!3368 = !DILocation(line: 180, column: 30, scope: !592, inlinedAt: !3367)
!3369 = !DILocation(line: 180, column: 41, scope: !592, inlinedAt: !3367)
!3370 = !DILocation(line: 182, column: 14, scope: !592, inlinedAt: !3367)
!3371 = !DILocation(line: 182, column: 10, scope: !592, inlinedAt: !3367)
!3372 = !DILocation(line: 184, column: 9, scope: !3310, inlinedAt: !3367)
!3373 = !DILocation(line: 184, column: 7, scope: !592, inlinedAt: !3367)
!3374 = !DILocation(line: 186, column: 13, scope: !3313, inlinedAt: !3367)
!3375 = !DILocation(line: 186, column: 11, scope: !3314, inlinedAt: !3367)
!3376 = !DILocation(line: 210, column: 7, scope: !592, inlinedAt: !3367)
!3377 = !DILocation(line: 51, column: 17, scope: !3267, inlinedAt: !3378)
!3378 = distinct !DILocation(line: 211, column: 10, scope: !592, inlinedAt: !3367)
!3379 = !DILocation(line: 51, column: 27, scope: !3267, inlinedAt: !3378)
!3380 = !DILocation(line: 53, column: 10, scope: !3276, inlinedAt: !3378)
!3381 = !DILocation(line: 205, column: 11, scope: !3322, inlinedAt: !3367)
!3382 = !DILocation(line: 204, column: 11, scope: !3323, inlinedAt: !3367)
!3383 = !DILocation(line: 206, column: 9, scope: !3322, inlinedAt: !3367)
!3384 = !DILocation(line: 207, column: 14, scope: !3323, inlinedAt: !3367)
!3385 = !DILocation(line: 207, column: 18, scope: !3323, inlinedAt: !3367)
!3386 = !DILocation(line: 207, column: 9, scope: !3323, inlinedAt: !3367)
!3387 = !DILocation(line: 53, column: 8, scope: !3276, inlinedAt: !3378)
!3388 = !DILocation(line: 57, column: 7, scope: !3281, inlinedAt: !3378)
!3389 = !DILocation(line: 58, column: 7, scope: !3281, inlinedAt: !3378)
!3390 = !DILocation(line: 61, column: 7, scope: !3267, inlinedAt: !3378)
!3391 = !DILocation(line: 62, column: 8, scope: !3285, inlinedAt: !3378)
!3392 = !DILocation(line: 62, column: 13, scope: !3287, inlinedAt: !3378)
!3393 = !DILocation(line: 62, column: 10, scope: !3285, inlinedAt: !3378)
!3394 = !DILocation(line: 63, column: 5, scope: !3285, inlinedAt: !3378)
!3395 = !DILocation(line: 76, column: 3, scope: !3358)
!3396 = distinct !DISubprogram(name: "xzalloc", scope: !3227, file: !3227, line: 84, type: !3228, isLocal: false, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: true, unit: !587, variables: !3397)
!3397 = !{!3398}
!3398 = !DILocalVariable(name: "s", arg: 1, scope: !3396, file: !3227, line: 84, type: !13)
!3399 = !DILocation(line: 84, column: 17, scope: !3396)
!3400 = !DILocation(line: 39, column: 17, scope: !3226, inlinedAt: !3401)
!3401 = distinct !DILocation(line: 86, column: 18, scope: !3396)
!3402 = !DILocation(line: 41, column: 13, scope: !3226, inlinedAt: !3401)
!3403 = !DILocation(line: 41, column: 9, scope: !3226, inlinedAt: !3401)
!3404 = !DILocation(line: 42, column: 8, scope: !3237, inlinedAt: !3401)
!3405 = !DILocation(line: 42, column: 15, scope: !3239, inlinedAt: !3401)
!3406 = !DILocation(line: 42, column: 10, scope: !3237, inlinedAt: !3401)
!3407 = !DILocation(line: 43, column: 5, scope: !3237, inlinedAt: !3401)
!3408 = !DILocation(line: 86, column: 10, scope: !3396)
!3409 = !DILocation(line: 86, column: 3, scope: !3396)
!3410 = distinct !DISubprogram(name: "xcalloc", scope: !3227, file: !3227, line: 93, type: !3213, isLocal: false, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: true, unit: !587, variables: !3411)
!3411 = !{!3412, !3413, !3414}
!3412 = !DILocalVariable(name: "n", arg: 1, scope: !3410, file: !3227, line: 93, type: !13)
!3413 = !DILocalVariable(name: "s", arg: 2, scope: !3410, file: !3227, line: 93, type: !13)
!3414 = !DILocalVariable(name: "p", scope: !3410, file: !3227, line: 95, type: !22)
!3415 = !DILocation(line: 93, column: 17, scope: !3410)
!3416 = !DILocation(line: 93, column: 27, scope: !3410)
!3417 = !DILocation(line: 100, column: 7, scope: !3418)
!3418 = distinct !DILexicalBlock(scope: !3410, file: !3227, line: 100, column: 7)
!3419 = !DILocation(line: 101, column: 7, scope: !3418)
!3420 = !DILocation(line: 101, column: 18, scope: !3421)
!3421 = !DILexicalBlockFile(scope: !3418, file: !3227, discriminator: 1)
!3422 = !DILocation(line: 95, column: 9, scope: !3410)
!3423 = !DILocation(line: 101, column: 16, scope: !3421)
!3424 = !DILocation(line: 100, column: 7, scope: !3425)
!3425 = !DILexicalBlockFile(scope: !3410, file: !3227, discriminator: 1)
!3426 = !DILocation(line: 102, column: 5, scope: !3418)
!3427 = !DILocation(line: 103, column: 3, scope: !3410)
!3428 = distinct !DISubprogram(name: "xmemdup", scope: !3227, file: !3227, line: 111, type: !3429, isLocal: false, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: true, unit: !587, variables: !3431)
!3429 = !DISubroutineType(types: !3430)
!3430 = !{!22, !16, !13}
!3431 = !{!3432, !3433}
!3432 = !DILocalVariable(name: "p", arg: 1, scope: !3428, file: !3227, line: 111, type: !16)
!3433 = !DILocalVariable(name: "s", arg: 2, scope: !3428, file: !3227, line: 111, type: !13)
!3434 = !DILocation(line: 111, column: 22, scope: !3428)
!3435 = !DILocation(line: 111, column: 32, scope: !3428)
!3436 = !DILocation(line: 39, column: 17, scope: !3226, inlinedAt: !3437)
!3437 = distinct !DILocation(line: 113, column: 18, scope: !3428)
!3438 = !DILocation(line: 41, column: 13, scope: !3226, inlinedAt: !3437)
!3439 = !DILocation(line: 41, column: 9, scope: !3226, inlinedAt: !3437)
!3440 = !DILocation(line: 42, column: 8, scope: !3237, inlinedAt: !3437)
!3441 = !DILocation(line: 42, column: 15, scope: !3239, inlinedAt: !3437)
!3442 = !DILocation(line: 42, column: 10, scope: !3237, inlinedAt: !3437)
!3443 = !DILocation(line: 43, column: 5, scope: !3237, inlinedAt: !3437)
!3444 = !DILocation(line: 113, column: 10, scope: !3428)
!3445 = !DILocation(line: 113, column: 3, scope: !3428)
!3446 = distinct !DISubprogram(name: "xstrdup", scope: !3227, file: !3227, line: 119, type: !2467, isLocal: false, isDefinition: true, scopeLine: 120, flags: DIFlagPrototyped, isOptimized: true, unit: !587, variables: !3447)
!3447 = !{!3448}
!3448 = !DILocalVariable(name: "string", arg: 1, scope: !3446, file: !3227, line: 119, type: !6)
!3449 = !DILocation(line: 119, column: 22, scope: !3446)
!3450 = !DILocation(line: 121, column: 27, scope: !3446)
!3451 = !DILocation(line: 121, column: 43, scope: !3446)
!3452 = !DILocation(line: 111, column: 22, scope: !3428, inlinedAt: !3453)
!3453 = distinct !DILocation(line: 121, column: 10, scope: !3454)
!3454 = !DILexicalBlockFile(scope: !3446, file: !3227, discriminator: 1)
!3455 = !DILocation(line: 111, column: 32, scope: !3428, inlinedAt: !3453)
!3456 = !DILocation(line: 39, column: 17, scope: !3226, inlinedAt: !3457)
!3457 = distinct !DILocation(line: 113, column: 18, scope: !3428, inlinedAt: !3453)
!3458 = !DILocation(line: 41, column: 13, scope: !3226, inlinedAt: !3457)
!3459 = !DILocation(line: 41, column: 9, scope: !3226, inlinedAt: !3457)
!3460 = !DILocation(line: 42, column: 8, scope: !3237, inlinedAt: !3457)
!3461 = !DILocation(line: 42, column: 15, scope: !3239, inlinedAt: !3457)
!3462 = !DILocation(line: 42, column: 10, scope: !3237, inlinedAt: !3457)
!3463 = !DILocation(line: 43, column: 5, scope: !3237, inlinedAt: !3457)
!3464 = !DILocation(line: 113, column: 10, scope: !3428, inlinedAt: !3453)
!3465 = !DILocation(line: 121, column: 3, scope: !3446)
!3466 = distinct !DISubprogram(name: "xalloc_die", scope: !3467, file: !3467, line: 32, type: !957, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !604, variables: !11)
!3467 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3468 = !DILocation(line: 34, column: 10, scope: !3466)
!3469 = !DILocation(line: 34, column: 33, scope: !3466)
!3470 = !DILocation(line: 34, column: 3, scope: !3471)
!3471 = !DILexicalBlockFile(scope: !3466, file: !3467, discriminator: 1)
!3472 = !DILocation(line: 40, column: 3, scope: !3466)
!3473 = distinct !DISubprogram(name: "rpl_calloc", scope: !3474, file: !3474, line: 42, type: !3213, isLocal: false, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: true, unit: !606, variables: !3475)
!3474 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3475 = !{!3476, !3477, !3478, !3479}
!3476 = !DILocalVariable(name: "n", arg: 1, scope: !3473, file: !3474, line: 42, type: !13)
!3477 = !DILocalVariable(name: "s", arg: 2, scope: !3473, file: !3474, line: 42, type: !13)
!3478 = !DILocalVariable(name: "result", scope: !3473, file: !3474, line: 44, type: !22)
!3479 = !DILocalVariable(name: "bytes", scope: !3480, file: !3474, line: 56, type: !13)
!3480 = distinct !DILexicalBlock(scope: !3481, file: !3474, line: 53, column: 5)
!3481 = distinct !DILexicalBlock(scope: !3473, file: !3474, line: 47, column: 7)
!3482 = !DILocation(line: 42, column: 20, scope: !3473)
!3483 = !DILocation(line: 42, column: 30, scope: !3473)
!3484 = !DILocation(line: 47, column: 9, scope: !3481)
!3485 = !DILocation(line: 47, column: 19, scope: !3486)
!3486 = !DILexicalBlockFile(scope: !3481, file: !3474, discriminator: 1)
!3487 = !DILocation(line: 47, column: 14, scope: !3481)
!3488 = !DILocation(line: 56, column: 24, scope: !3480)
!3489 = !DILocation(line: 56, column: 14, scope: !3480)
!3490 = !DILocation(line: 57, column: 17, scope: !3491)
!3491 = distinct !DILexicalBlock(scope: !3480, file: !3474, line: 57, column: 11)
!3492 = !DILocation(line: 57, column: 21, scope: !3491)
!3493 = !DILocation(line: 57, column: 11, scope: !3480)
!3494 = !DILocation(line: 59, column: 11, scope: !3495)
!3495 = distinct !DILexicalBlock(scope: !3491, file: !3474, line: 58, column: 9)
!3496 = !DILocation(line: 59, column: 17, scope: !3495)
!3497 = !DILocation(line: 65, column: 12, scope: !3473)
!3498 = !DILocation(line: 44, column: 9, scope: !3473)
!3499 = !DILocation(line: 72, column: 3, scope: !3473)
!3500 = !DILocation(line: 73, column: 1, scope: !3473)
!3501 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !3502, file: !3502, line: 334, type: !3503, isLocal: false, isDefinition: true, scopeLine: 335, flags: DIFlagPrototyped, isOptimized: true, unit: !608, variables: !3517)
!3502 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3503 = !DISubroutineType(types: !3504)
!3504 = !{!13, !3505, !6, !13, !3506}
!3505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1248, size: 64)
!3506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3507, size: 64)
!3507 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1233, line: 107, baseType: !3508)
!3508 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1233, line: 95, baseType: !3509)
!3509 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1233, line: 83, size: 64, elements: !3510)
!3510 = !{!3511, !3512}
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !3509, file: !1233, line: 85, baseType: !29, size: 32)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !3509, file: !1233, line: 94, baseType: !3513, size: 32, offset: 32)
!3513 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3509, file: !1233, line: 86, size: 32, elements: !3514)
!3514 = !{!3515, !3516}
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !3513, file: !1233, line: 89, baseType: !35, size: 32)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !3513, file: !1233, line: 93, baseType: !1243, size: 32)
!3517 = !{!3518, !3519, !3520, !3521, !3522, !3523, !3524}
!3518 = !DILocalVariable(name: "pwc", arg: 1, scope: !3501, file: !3502, line: 334, type: !3505)
!3519 = !DILocalVariable(name: "s", arg: 2, scope: !3501, file: !3502, line: 334, type: !6)
!3520 = !DILocalVariable(name: "n", arg: 3, scope: !3501, file: !3502, line: 334, type: !13)
!3521 = !DILocalVariable(name: "ps", arg: 4, scope: !3501, file: !3502, line: 334, type: !3506)
!3522 = !DILocalVariable(name: "ret", scope: !3501, file: !3502, line: 336, type: !13)
!3523 = !DILocalVariable(name: "wc", scope: !3501, file: !3502, line: 337, type: !1248)
!3524 = !DILocalVariable(name: "uc", scope: !3525, file: !3502, line: 398, type: !20)
!3525 = distinct !DILexicalBlock(scope: !3526, file: !3502, line: 397, column: 5)
!3526 = distinct !DILexicalBlock(scope: !3501, file: !3502, line: 396, column: 7)
!3527 = !DILocation(line: 334, column: 23, scope: !3501)
!3528 = !DILocation(line: 334, column: 40, scope: !3501)
!3529 = !DILocation(line: 334, column: 50, scope: !3501)
!3530 = !DILocation(line: 334, column: 64, scope: !3501)
!3531 = !DILocation(line: 337, column: 3, scope: !3501)
!3532 = !DILocation(line: 353, column: 9, scope: !3533)
!3533 = distinct !DILexicalBlock(scope: !3501, file: !3502, line: 353, column: 7)
!3534 = !DILocation(line: 353, column: 7, scope: !3501)
!3535 = !DILocation(line: 388, column: 9, scope: !3501)
!3536 = !DILocation(line: 336, column: 10, scope: !3501)
!3537 = !DILocation(line: 396, column: 19, scope: !3526)
!3538 = !DILocation(line: 396, column: 31, scope: !3539)
!3539 = !DILexicalBlockFile(scope: !3526, file: !3502, discriminator: 1)
!3540 = !DILocation(line: 396, column: 26, scope: !3526)
!3541 = !DILocation(line: 396, column: 41, scope: !3542)
!3542 = !DILexicalBlockFile(scope: !3526, file: !3502, discriminator: 2)
!3543 = !DILocation(line: 396, column: 7, scope: !3544)
!3544 = !DILexicalBlockFile(scope: !3501, file: !3502, discriminator: 2)
!3545 = !DILocation(line: 398, column: 26, scope: !3525)
!3546 = !DILocation(line: 398, column: 21, scope: !3525)
!3547 = !DILocation(line: 399, column: 14, scope: !3525)
!3548 = !DILocation(line: 399, column: 12, scope: !3525)
!3549 = !DILocation(line: 405, column: 1, scope: !3501)
!3550 = distinct !DISubprogram(name: "close_stream", scope: !3551, file: !3551, line: 56, type: !3552, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !611, variables: !3594)
!3551 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3552 = !DISubroutineType(types: !3553)
!3553 = !{!29, !3554}
!3554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3555, size: 64)
!3555 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2993, line: 49, baseType: !3556)
!3556 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2995, line: 241, size: 1728, elements: !3557)
!3557 = !{!3558, !3559, !3560, !3561, !3562, !3563, !3564, !3565, !3566, !3567, !3568, !3569, !3570, !3578, !3579, !3580, !3581, !3582, !3583, !3584, !3585, !3586, !3587, !3588, !3589, !3590, !3591, !3592, !3593}
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3556, file: !2995, line: 242, baseType: !29, size: 32)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3556, file: !2995, line: 247, baseType: !21, size: 64, offset: 64)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3556, file: !2995, line: 248, baseType: !21, size: 64, offset: 128)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3556, file: !2995, line: 249, baseType: !21, size: 64, offset: 192)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3556, file: !2995, line: 250, baseType: !21, size: 64, offset: 256)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3556, file: !2995, line: 251, baseType: !21, size: 64, offset: 320)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3556, file: !2995, line: 252, baseType: !21, size: 64, offset: 384)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3556, file: !2995, line: 253, baseType: !21, size: 64, offset: 448)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3556, file: !2995, line: 254, baseType: !21, size: 64, offset: 512)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3556, file: !2995, line: 256, baseType: !21, size: 64, offset: 576)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3556, file: !2995, line: 257, baseType: !21, size: 64, offset: 640)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3556, file: !2995, line: 258, baseType: !21, size: 64, offset: 704)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3556, file: !2995, line: 260, baseType: !3571, size: 64, offset: 768)
!3571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3572, size: 64)
!3572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2995, line: 156, size: 192, elements: !3573)
!3573 = !{!3574, !3575, !3577}
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3572, file: !2995, line: 157, baseType: !3571, size: 64)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3572, file: !2995, line: 158, baseType: !3576, size: 64, offset: 64)
!3576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3556, size: 64)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3572, file: !2995, line: 162, baseType: !29, size: 32, offset: 128)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3556, file: !2995, line: 262, baseType: !3576, size: 64, offset: 832)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3556, file: !2995, line: 264, baseType: !29, size: 32, offset: 896)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3556, file: !2995, line: 268, baseType: !29, size: 32, offset: 928)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3556, file: !2995, line: 270, baseType: !3021, size: 64, offset: 960)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3556, file: !2995, line: 274, baseType: !181, size: 16, offset: 1024)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3556, file: !2995, line: 275, baseType: !3026, size: 8, offset: 1040)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3556, file: !2995, line: 276, baseType: !3028, size: 8, offset: 1048)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3556, file: !2995, line: 280, baseType: !3032, size: 64, offset: 1088)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3556, file: !2995, line: 289, baseType: !3035, size: 64, offset: 1152)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3556, file: !2995, line: 297, baseType: !22, size: 64, offset: 1216)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3556, file: !2995, line: 298, baseType: !22, size: 64, offset: 1280)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3556, file: !2995, line: 299, baseType: !22, size: 64, offset: 1344)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3556, file: !2995, line: 300, baseType: !22, size: 64, offset: 1408)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3556, file: !2995, line: 302, baseType: !13, size: 64, offset: 1472)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3556, file: !2995, line: 303, baseType: !29, size: 32, offset: 1536)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3556, file: !2995, line: 305, baseType: !3043, size: 160, offset: 1568)
!3594 = !{!3595, !3596, !3598, !3599}
!3595 = !DILocalVariable(name: "stream", arg: 1, scope: !3550, file: !3551, line: 56, type: !3554)
!3596 = !DILocalVariable(name: "some_pending", scope: !3550, file: !3551, line: 58, type: !3597)
!3597 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !84)
!3598 = !DILocalVariable(name: "prev_fail", scope: !3550, file: !3551, line: 59, type: !3597)
!3599 = !DILocalVariable(name: "fclose_fail", scope: !3550, file: !3551, line: 60, type: !3597)
!3600 = !DILocation(line: 56, column: 21, scope: !3550)
!3601 = !DILocation(line: 58, column: 30, scope: !3550)
!3602 = !DILocalVariable(name: "__stream", arg: 1, scope: !3603, file: !814, line: 132, type: !3554)
!3603 = distinct !DISubprogram(name: "ferror_unlocked", scope: !814, file: !814, line: 132, type: !3552, isLocal: false, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !611, variables: !3604)
!3604 = !{!3602}
!3605 = !DILocation(line: 132, column: 1, scope: !3603, inlinedAt: !3606)
!3606 = distinct !DILocation(line: 59, column: 27, scope: !3550)
!3607 = !DILocation(line: 134, column: 10, scope: !3603, inlinedAt: !3606)
!3608 = !{!823, !655, i64 0}
!3609 = !DILocation(line: 59, column: 43, scope: !3550)
!3610 = !DILocation(line: 60, column: 29, scope: !3550)
!3611 = !DILocation(line: 60, column: 45, scope: !3550)
!3612 = !DILocation(line: 70, column: 17, scope: !3613)
!3613 = distinct !DILexicalBlock(scope: !3550, file: !3551, line: 70, column: 7)
!3614 = !DILocation(line: 70, column: 33, scope: !3615)
!3615 = !DILexicalBlockFile(scope: !3613, file: !3551, discriminator: 1)
!3616 = !DILocation(line: 70, column: 53, scope: !3617)
!3617 = !DILexicalBlockFile(scope: !3613, file: !3551, discriminator: 3)
!3618 = !DILocation(line: 70, column: 7, scope: !3619)
!3619 = !DILexicalBlockFile(scope: !3550, file: !3551, discriminator: 3)
!3620 = !DILocation(line: 72, column: 11, scope: !3621)
!3621 = distinct !DILexicalBlock(scope: !3613, file: !3551, line: 71, column: 5)
!3622 = !DILocation(line: 73, column: 9, scope: !3623)
!3623 = distinct !DILexicalBlock(scope: !3621, file: !3551, line: 72, column: 11)
!3624 = !DILocation(line: 73, column: 15, scope: !3623)
!3625 = !DILocation(line: 78, column: 1, scope: !3550)
!3626 = distinct !DISubprogram(name: "hard_locale", scope: !3627, file: !3627, line: 38, type: !3628, isLocal: false, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, unit: !613, variables: !3630)
!3627 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3628 = !DISubroutineType(types: !3629)
!3629 = !{!84, !29}
!3630 = !{!3631, !3632, !3633, !3634, !3641, !3642, !3644, !3645, !3647, !3648, !3650}
!3631 = !DILocalVariable(name: "category", arg: 1, scope: !3626, file: !3627, line: 38, type: !29)
!3632 = !DILocalVariable(name: "hard", scope: !3626, file: !3627, line: 40, type: !84)
!3633 = !DILocalVariable(name: "p", scope: !3626, file: !3627, line: 41, type: !6)
!3634 = !DILocalVariable(name: "__s1_len", scope: !3635, file: !3627, line: 47, type: !13)
!3635 = distinct !DILexicalBlock(scope: !3636, file: !3627, line: 47, column: 15)
!3636 = distinct !DILexicalBlock(scope: !3637, file: !3627, line: 47, column: 15)
!3637 = distinct !DILexicalBlock(scope: !3638, file: !3627, line: 46, column: 9)
!3638 = distinct !DILexicalBlock(scope: !3639, file: !3627, line: 45, column: 11)
!3639 = distinct !DILexicalBlock(scope: !3640, file: !3627, line: 44, column: 5)
!3640 = distinct !DILexicalBlock(scope: !3626, file: !3627, line: 43, column: 7)
!3641 = !DILocalVariable(name: "__s2_len", scope: !3635, file: !3627, line: 47, type: !13)
!3642 = !DILocalVariable(name: "__s2", scope: !3643, file: !3627, line: 47, type: !18)
!3643 = distinct !DILexicalBlock(scope: !3635, file: !3627, line: 47, column: 15)
!3644 = !DILocalVariable(name: "__result", scope: !3643, file: !3627, line: 47, type: !29)
!3645 = !DILocalVariable(name: "__s1_len", scope: !3646, file: !3627, line: 47, type: !13)
!3646 = distinct !DILexicalBlock(scope: !3636, file: !3627, line: 47, column: 39)
!3647 = !DILocalVariable(name: "__s2_len", scope: !3646, file: !3627, line: 47, type: !13)
!3648 = !DILocalVariable(name: "__s2", scope: !3649, file: !3627, line: 47, type: !18)
!3649 = distinct !DILexicalBlock(scope: !3646, file: !3627, line: 47, column: 39)
!3650 = !DILocalVariable(name: "__result", scope: !3649, file: !3627, line: 47, type: !29)
!3651 = !DILocation(line: 38, column: 18, scope: !3626)
!3652 = !DILocation(line: 40, column: 8, scope: !3626)
!3653 = !DILocation(line: 41, column: 19, scope: !3626)
!3654 = !DILocation(line: 41, column: 15, scope: !3626)
!3655 = !DILocation(line: 43, column: 7, scope: !3640)
!3656 = !DILocation(line: 43, column: 7, scope: !3626)
!3657 = !DILocation(line: 47, column: 15, scope: !3635)
!3658 = !DILocation(line: 47, column: 15, scope: !3643)
!3659 = !DILocation(line: 47, column: 15, scope: !3660)
!3660 = !DILexicalBlockFile(scope: !3643, file: !3627, discriminator: 2)
!3661 = !DILocation(line: 47, column: 15, scope: !3662)
!3662 = !DILexicalBlockFile(scope: !3663, file: !3627, discriminator: 3)
!3663 = distinct !DILexicalBlock(scope: !3643, file: !3627, line: 47, column: 15)
!3664 = !DILocation(line: 47, column: 15, scope: !3665)
!3665 = !DILexicalBlockFile(scope: !3663, file: !3627, discriminator: 2)
!3666 = !DILocation(line: 47, column: 15, scope: !3667)
!3667 = !DILexicalBlockFile(scope: !3668, file: !3627, discriminator: 4)
!3668 = distinct !DILexicalBlock(scope: !3663, file: !3627, line: 47, column: 15)
!3669 = !DILocation(line: 47, column: 15, scope: !3670)
!3670 = !DILexicalBlockFile(scope: !3635, file: !3627, discriminator: 11)
!3671 = !DILocation(line: 47, column: 36, scope: !3672)
!3672 = !DILexicalBlockFile(scope: !3636, file: !3627, discriminator: 13)
!3673 = !DILocation(line: 47, column: 39, scope: !3646)
!3674 = !DILocation(line: 47, column: 39, scope: !3675)
!3675 = !DILexicalBlockFile(scope: !3646, file: !3627, discriminator: 26)
!3676 = !DILocation(line: 47, column: 59, scope: !3677)
!3677 = !DILexicalBlockFile(scope: !3636, file: !3627, discriminator: 27)
!3678 = !DILocation(line: 47, column: 15, scope: !3679)
!3679 = !DILexicalBlockFile(scope: !3637, file: !3627, discriminator: 27)
!3680 = !DILocation(line: 48, column: 13, scope: !3636)
!3681 = !DILocation(line: 71, column: 3, scope: !3626)
!3682 = distinct !DISubprogram(name: "locale_charset", scope: !577, file: !577, line: 393, type: !3683, isLocal: false, isDefinition: true, scopeLine: 394, flags: DIFlagPrototyped, isOptimized: true, unit: !233, variables: !3685)
!3683 = !DISubroutineType(types: !3684)
!3684 = !{!6}
!3685 = !{!3686, !3687, !3688, !3693}
!3686 = !DILocalVariable(name: "codeset", scope: !3682, file: !577, line: 395, type: !6)
!3687 = !DILocalVariable(name: "aliases", scope: !3682, file: !577, line: 396, type: !6)
!3688 = !DILocalVariable(name: "__s1_len", scope: !3689, file: !577, line: 592, type: !13)
!3689 = distinct !DILexicalBlock(scope: !3690, file: !577, line: 592, column: 9)
!3690 = distinct !DILexicalBlock(scope: !3691, file: !577, line: 592, column: 9)
!3691 = distinct !DILexicalBlock(scope: !3692, file: !577, line: 589, column: 3)
!3692 = distinct !DILexicalBlock(scope: !3682, file: !577, line: 589, column: 3)
!3693 = !DILocalVariable(name: "__s2_len", scope: !3689, file: !577, line: 592, type: !13)
!3694 = !DILocalVariable(name: "buf1", scope: !3695, file: !577, line: 196, type: !3762)
!3695 = distinct !DILexicalBlock(scope: !3696, file: !577, line: 194, column: 21)
!3696 = distinct !DILexicalBlock(scope: !3697, file: !577, line: 193, column: 19)
!3697 = distinct !DILexicalBlock(scope: !3698, file: !577, line: 193, column: 19)
!3698 = distinct !DILexicalBlock(scope: !3699, file: !577, line: 188, column: 17)
!3699 = distinct !DILexicalBlock(scope: !3700, file: !577, line: 181, column: 19)
!3700 = distinct !DILexicalBlock(scope: !3701, file: !577, line: 177, column: 13)
!3701 = distinct !DILexicalBlock(scope: !3702, file: !577, line: 173, column: 15)
!3702 = distinct !DILexicalBlock(scope: !3703, file: !577, line: 161, column: 9)
!3703 = distinct !DILexicalBlock(scope: !3704, file: !577, line: 157, column: 11)
!3704 = distinct !DILexicalBlock(scope: !3705, file: !577, line: 130, column: 5)
!3705 = distinct !DILexicalBlock(scope: !3706, file: !577, line: 129, column: 7)
!3706 = distinct !DISubprogram(name: "get_charset_aliases", scope: !577, file: !577, line: 124, type: !3683, isLocal: true, isDefinition: true, scopeLine: 125, flags: DIFlagPrototyped, isOptimized: true, unit: !233, variables: !3707)
!3707 = !{!3708, !3709, !3710, !3711, !3712, !3714, !3715, !3716, !3717, !3758, !3759, !3760, !3694, !3761, !3765, !3766, !3767}
!3708 = !DILocalVariable(name: "cp", scope: !3706, file: !577, line: 126, type: !6)
!3709 = !DILocalVariable(name: "dir", scope: !3704, file: !577, line: 132, type: !6)
!3710 = !DILocalVariable(name: "base", scope: !3704, file: !577, line: 133, type: !6)
!3711 = !DILocalVariable(name: "file_name", scope: !3704, file: !577, line: 134, type: !21)
!3712 = !DILocalVariable(name: "dir_len", scope: !3713, file: !577, line: 144, type: !13)
!3713 = distinct !DILexicalBlock(scope: !3704, file: !577, line: 143, column: 7)
!3714 = !DILocalVariable(name: "base_len", scope: !3713, file: !577, line: 145, type: !13)
!3715 = !DILocalVariable(name: "add_slash", scope: !3713, file: !577, line: 146, type: !29)
!3716 = !DILocalVariable(name: "fd", scope: !3702, file: !577, line: 162, type: !29)
!3717 = !DILocalVariable(name: "fp", scope: !3700, file: !577, line: 178, type: !3718)
!3718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3719, size: 64)
!3719 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2993, line: 49, baseType: !3720)
!3720 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2995, line: 241, size: 1728, elements: !3721)
!3721 = !{!3722, !3723, !3724, !3725, !3726, !3727, !3728, !3729, !3730, !3731, !3732, !3733, !3734, !3742, !3743, !3744, !3745, !3746, !3747, !3748, !3749, !3750, !3751, !3752, !3753, !3754, !3755, !3756, !3757}
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3720, file: !2995, line: 242, baseType: !29, size: 32)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3720, file: !2995, line: 247, baseType: !21, size: 64, offset: 64)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3720, file: !2995, line: 248, baseType: !21, size: 64, offset: 128)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3720, file: !2995, line: 249, baseType: !21, size: 64, offset: 192)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3720, file: !2995, line: 250, baseType: !21, size: 64, offset: 256)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3720, file: !2995, line: 251, baseType: !21, size: 64, offset: 320)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3720, file: !2995, line: 252, baseType: !21, size: 64, offset: 384)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3720, file: !2995, line: 253, baseType: !21, size: 64, offset: 448)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3720, file: !2995, line: 254, baseType: !21, size: 64, offset: 512)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3720, file: !2995, line: 256, baseType: !21, size: 64, offset: 576)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3720, file: !2995, line: 257, baseType: !21, size: 64, offset: 640)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3720, file: !2995, line: 258, baseType: !21, size: 64, offset: 704)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3720, file: !2995, line: 260, baseType: !3735, size: 64, offset: 768)
!3735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3736, size: 64)
!3736 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2995, line: 156, size: 192, elements: !3737)
!3737 = !{!3738, !3739, !3741}
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3736, file: !2995, line: 157, baseType: !3735, size: 64)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3736, file: !2995, line: 158, baseType: !3740, size: 64, offset: 64)
!3740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3720, size: 64)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3736, file: !2995, line: 162, baseType: !29, size: 32, offset: 128)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3720, file: !2995, line: 262, baseType: !3740, size: 64, offset: 832)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3720, file: !2995, line: 264, baseType: !29, size: 32, offset: 896)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3720, file: !2995, line: 268, baseType: !29, size: 32, offset: 928)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3720, file: !2995, line: 270, baseType: !3021, size: 64, offset: 960)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3720, file: !2995, line: 274, baseType: !181, size: 16, offset: 1024)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3720, file: !2995, line: 275, baseType: !3026, size: 8, offset: 1040)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3720, file: !2995, line: 276, baseType: !3028, size: 8, offset: 1048)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3720, file: !2995, line: 280, baseType: !3032, size: 64, offset: 1088)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3720, file: !2995, line: 289, baseType: !3035, size: 64, offset: 1152)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3720, file: !2995, line: 297, baseType: !22, size: 64, offset: 1216)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3720, file: !2995, line: 298, baseType: !22, size: 64, offset: 1280)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3720, file: !2995, line: 299, baseType: !22, size: 64, offset: 1344)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3720, file: !2995, line: 300, baseType: !22, size: 64, offset: 1408)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3720, file: !2995, line: 302, baseType: !13, size: 64, offset: 1472)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3720, file: !2995, line: 303, baseType: !29, size: 32, offset: 1536)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3720, file: !2995, line: 305, baseType: !3043, size: 160, offset: 1568)
!3758 = !DILocalVariable(name: "res_ptr", scope: !3698, file: !577, line: 190, type: !21)
!3759 = !DILocalVariable(name: "res_size", scope: !3698, file: !577, line: 191, type: !13)
!3760 = !DILocalVariable(name: "c", scope: !3695, file: !577, line: 195, type: !29)
!3761 = !DILocalVariable(name: "buf2", scope: !3695, file: !577, line: 197, type: !3762)
!3762 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 408, elements: !3763)
!3763 = !{!3764}
!3764 = !DISubrange(count: 51)
!3765 = !DILocalVariable(name: "l1", scope: !3695, file: !577, line: 198, type: !13)
!3766 = !DILocalVariable(name: "l2", scope: !3695, file: !577, line: 198, type: !13)
!3767 = !DILocalVariable(name: "old_res_ptr", scope: !3695, file: !577, line: 199, type: !21)
!3768 = !DILocation(line: 196, column: 28, scope: !3695, inlinedAt: !3769)
!3769 = distinct !DILocation(line: 589, column: 18, scope: !3692)
!3770 = !DILocation(line: 197, column: 28, scope: !3695, inlinedAt: !3769)
!3771 = !DILocation(line: 403, column: 13, scope: !3682)
!3772 = !DILocation(line: 395, column: 15, scope: !3682)
!3773 = !DILocation(line: 584, column: 15, scope: !3774)
!3774 = distinct !DILexicalBlock(scope: !3682, file: !577, line: 584, column: 7)
!3775 = !DILocation(line: 584, column: 7, scope: !3682)
!3776 = !DILocation(line: 128, column: 8, scope: !3706, inlinedAt: !3769)
!3777 = !DILocation(line: 126, column: 15, scope: !3706, inlinedAt: !3769)
!3778 = !DILocation(line: 129, column: 10, scope: !3705, inlinedAt: !3769)
!3779 = !DILocation(line: 129, column: 7, scope: !3706, inlinedAt: !3769)
!3780 = !DILocation(line: 138, column: 13, scope: !3704, inlinedAt: !3769)
!3781 = !DILocation(line: 132, column: 19, scope: !3704, inlinedAt: !3769)
!3782 = !DILocation(line: 139, column: 15, scope: !3783, inlinedAt: !3769)
!3783 = distinct !DILexicalBlock(scope: !3704, file: !577, line: 139, column: 11)
!3784 = !DILocation(line: 139, column: 23, scope: !3783, inlinedAt: !3769)
!3785 = !DILocation(line: 139, column: 26, scope: !3786, inlinedAt: !3769)
!3786 = !DILexicalBlockFile(scope: !3783, file: !577, discriminator: 1)
!3787 = !DILocation(line: 139, column: 33, scope: !3786, inlinedAt: !3769)
!3788 = !DILocation(line: 139, column: 11, scope: !3789, inlinedAt: !3769)
!3789 = !DILexicalBlockFile(scope: !3704, file: !577, discriminator: 1)
!3790 = !DILocation(line: 140, column: 9, scope: !3783, inlinedAt: !3769)
!3791 = !DILocation(line: 144, column: 26, scope: !3713, inlinedAt: !3769)
!3792 = !DILocation(line: 144, column: 16, scope: !3713, inlinedAt: !3769)
!3793 = !DILocation(line: 145, column: 16, scope: !3713, inlinedAt: !3769)
!3794 = !DILocation(line: 146, column: 34, scope: !3713, inlinedAt: !3769)
!3795 = !DILocation(line: 146, column: 38, scope: !3713, inlinedAt: !3769)
!3796 = !DILocation(line: 146, column: 42, scope: !3797, inlinedAt: !3769)
!3797 = !DILexicalBlockFile(scope: !3713, file: !577, discriminator: 1)
!3798 = !DILocation(line: 146, column: 41, scope: !3797, inlinedAt: !3769)
!3799 = !DILocation(line: 147, column: 48, scope: !3713, inlinedAt: !3769)
!3800 = !DILocation(line: 147, column: 46, scope: !3713, inlinedAt: !3769)
!3801 = !DILocation(line: 147, column: 69, scope: !3713, inlinedAt: !3769)
!3802 = !DILocation(line: 147, column: 30, scope: !3713, inlinedAt: !3769)
!3803 = !DILocation(line: 134, column: 13, scope: !3704, inlinedAt: !3769)
!3804 = !DILocation(line: 148, column: 13, scope: !3713, inlinedAt: !3769)
!3805 = !DILocation(line: 150, column: 13, scope: !3806, inlinedAt: !3769)
!3806 = distinct !DILexicalBlock(scope: !3807, file: !577, line: 149, column: 11)
!3807 = distinct !DILexicalBlock(scope: !3713, file: !577, line: 148, column: 13)
!3808 = !DILocation(line: 151, column: 17, scope: !3806, inlinedAt: !3769)
!3809 = !DILocation(line: 152, column: 34, scope: !3810, inlinedAt: !3769)
!3810 = distinct !DILexicalBlock(scope: !3806, file: !577, line: 151, column: 17)
!3811 = !DILocation(line: 153, column: 41, scope: !3806, inlinedAt: !3769)
!3812 = !DILocation(line: 153, column: 13, scope: !3806, inlinedAt: !3769)
!3813 = !DILocation(line: 157, column: 11, scope: !3704, inlinedAt: !3769)
!3814 = !DILocation(line: 171, column: 16, scope: !3702, inlinedAt: !3769)
!3815 = !DILocation(line: 162, column: 15, scope: !3702, inlinedAt: !3769)
!3816 = !DILocation(line: 173, column: 18, scope: !3701, inlinedAt: !3769)
!3817 = !DILocation(line: 173, column: 15, scope: !3702, inlinedAt: !3769)
!3818 = !DILocation(line: 180, column: 20, scope: !3700, inlinedAt: !3769)
!3819 = !DILocation(line: 178, column: 21, scope: !3700, inlinedAt: !3769)
!3820 = !DILocation(line: 181, column: 22, scope: !3699, inlinedAt: !3769)
!3821 = !DILocation(line: 181, column: 19, scope: !3700, inlinedAt: !3769)
!3822 = !DILocation(line: 190, column: 25, scope: !3698, inlinedAt: !3769)
!3823 = !DILocation(line: 184, column: 19, scope: !3824, inlinedAt: !3769)
!3824 = distinct !DILexicalBlock(scope: !3699, file: !577, line: 182, column: 17)
!3825 = !DILocation(line: 186, column: 17, scope: !3824, inlinedAt: !3769)
!3826 = !DILocation(line: 191, column: 26, scope: !3698, inlinedAt: !3769)
!3827 = !DILocation(line: 196, column: 23, scope: !3695, inlinedAt: !3769)
!3828 = !DILocation(line: 197, column: 23, scope: !3695, inlinedAt: !3769)
!3829 = !DILocalVariable(name: "__fp", arg: 1, scope: !3830, file: !814, line: 63, type: !3718)
!3830 = distinct !DISubprogram(name: "getc_unlocked", scope: !814, file: !814, line: 63, type: !3831, isLocal: false, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: true, unit: !233, variables: !3833)
!3831 = !DISubroutineType(types: !3832)
!3832 = !{!29, !3718}
!3833 = !{!3829}
!3834 = !DILocation(line: 63, column: 22, scope: !3830, inlinedAt: !3835)
!3835 = distinct !DILocation(line: 201, column: 27, scope: !3695, inlinedAt: !3769)
!3836 = !DILocation(line: 65, column: 10, scope: !3830, inlinedAt: !3835)
!3837 = !{!823, !641, i64 8}
!3838 = !{!823, !641, i64 16}
!3839 = !DILocation(line: 65, column: 10, scope: !3840, inlinedAt: !3835)
!3840 = !DILexicalBlockFile(scope: !3830, file: !814, discriminator: 1)
!3841 = !DILocation(line: 65, column: 10, scope: !3842, inlinedAt: !3835)
!3842 = !DILexicalBlockFile(scope: !3830, file: !814, discriminator: 2)
!3843 = !DILocation(line: 65, column: 10, scope: !3844, inlinedAt: !3835)
!3844 = !DILexicalBlockFile(scope: !3830, file: !814, discriminator: 3)
!3845 = !DILocation(line: 195, column: 27, scope: !3695, inlinedAt: !3769)
!3846 = !DILocation(line: 202, column: 27, scope: !3695, inlinedAt: !3769)
!3847 = !DILocation(line: 63, column: 22, scope: !3830, inlinedAt: !3848)
!3848 = distinct !DILocation(line: 210, column: 33, scope: !3849, inlinedAt: !3769)
!3849 = distinct !DILexicalBlock(scope: !3850, file: !577, line: 207, column: 25)
!3850 = distinct !DILexicalBlock(scope: !3695, file: !577, line: 206, column: 27)
!3851 = !DILocation(line: 65, column: 10, scope: !3830, inlinedAt: !3848)
!3852 = !DILocation(line: 65, column: 10, scope: !3840, inlinedAt: !3848)
!3853 = !DILocation(line: 65, column: 10, scope: !3842, inlinedAt: !3848)
!3854 = !DILocation(line: 65, column: 10, scope: !3844, inlinedAt: !3848)
!3855 = !DILocation(line: 210, column: 29, scope: !3856, inlinedAt: !3769)
!3856 = !DILexicalBlockFile(scope: !3849, file: !577, discriminator: 1)
!3857 = distinct !{!3857, !3858, !3859}
!3858 = !DILocation(line: 193, column: 19, scope: !3697)
!3859 = !DILocation(line: 241, column: 21, scope: !3697)
!3860 = !DILocation(line: 216, column: 23, scope: !3695, inlinedAt: !3769)
!3861 = !DILocation(line: 217, column: 27, scope: !3862, inlinedAt: !3769)
!3862 = distinct !DILexicalBlock(scope: !3695, file: !577, line: 217, column: 27)
!3863 = !DILocation(line: 217, column: 64, scope: !3862, inlinedAt: !3769)
!3864 = !DILocation(line: 217, column: 27, scope: !3695, inlinedAt: !3769)
!3865 = !DILocation(line: 219, column: 28, scope: !3695, inlinedAt: !3769)
!3866 = !DILocation(line: 198, column: 30, scope: !3695, inlinedAt: !3769)
!3867 = !DILocation(line: 220, column: 28, scope: !3695, inlinedAt: !3769)
!3868 = !DILocation(line: 198, column: 34, scope: !3695, inlinedAt: !3769)
!3869 = !DILocation(line: 199, column: 29, scope: !3695, inlinedAt: !3769)
!3870 = !DILocation(line: 222, column: 36, scope: !3871, inlinedAt: !3769)
!3871 = distinct !DILexicalBlock(scope: !3695, file: !577, line: 222, column: 27)
!3872 = !DILocation(line: 222, column: 27, scope: !3695, inlinedAt: !3769)
!3873 = !DILocation(line: 225, column: 63, scope: !3874, inlinedAt: !3769)
!3874 = distinct !DILexicalBlock(scope: !3871, file: !577, line: 223, column: 25)
!3875 = !DILocation(line: 225, column: 46, scope: !3874, inlinedAt: !3769)
!3876 = !DILocation(line: 226, column: 25, scope: !3874, inlinedAt: !3769)
!3877 = !DILocation(line: 229, column: 36, scope: !3878, inlinedAt: !3769)
!3878 = distinct !DILexicalBlock(scope: !3871, file: !577, line: 228, column: 25)
!3879 = !DILocation(line: 230, column: 73, scope: !3878, inlinedAt: !3769)
!3880 = !DILocation(line: 230, column: 46, scope: !3878, inlinedAt: !3769)
!3881 = !DILocation(line: 232, column: 35, scope: !3882, inlinedAt: !3769)
!3882 = distinct !DILexicalBlock(scope: !3695, file: !577, line: 232, column: 27)
!3883 = !DILocation(line: 232, column: 27, scope: !3695, inlinedAt: !3769)
!3884 = !DILocation(line: 236, column: 27, scope: !3885, inlinedAt: !3769)
!3885 = distinct !DILexicalBlock(scope: !3882, file: !577, line: 233, column: 25)
!3886 = !DILocation(line: 237, column: 27, scope: !3885, inlinedAt: !3769)
!3887 = !DILocation(line: 239, column: 39, scope: !3695, inlinedAt: !3769)
!3888 = !DILocation(line: 239, column: 50, scope: !3695, inlinedAt: !3769)
!3889 = !DILocation(line: 239, column: 61, scope: !3695, inlinedAt: !3769)
!3890 = !DILocalVariable(name: "__dest", arg: 1, scope: !3891, file: !3892, line: 107, type: !3895)
!3891 = distinct !DISubprogram(name: "strcpy", scope: !3892, file: !3892, line: 107, type: !3893, isLocal: false, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: true, unit: !233, variables: !3897)
!3892 = !DIFile(filename: "/usr/include/bits/string3.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3893 = !DISubroutineType(types: !3894)
!3894 = !{!21, !3895, !3896}
!3895 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !21)
!3896 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !6)
!3897 = !{!3890, !3898}
!3898 = !DILocalVariable(name: "__src", arg: 2, scope: !3891, file: !3892, line: 107, type: !3896)
!3899 = !DILocation(line: 107, column: 1, scope: !3891, inlinedAt: !3900)
!3900 = distinct !DILocation(line: 239, column: 23, scope: !3695, inlinedAt: !3769)
!3901 = !DILocation(line: 109, column: 49, scope: !3891, inlinedAt: !3900)
!3902 = !DILocation(line: 109, column: 10, scope: !3891, inlinedAt: !3900)
!3903 = !DILocation(line: 107, column: 1, scope: !3891, inlinedAt: !3904)
!3904 = distinct !DILocation(line: 240, column: 23, scope: !3695, inlinedAt: !3769)
!3905 = !DILocation(line: 109, column: 49, scope: !3891, inlinedAt: !3904)
!3906 = !DILocation(line: 109, column: 10, scope: !3891, inlinedAt: !3904)
!3907 = !DILocation(line: 241, column: 21, scope: !3696, inlinedAt: !3769)
!3908 = !DILocation(line: 242, column: 19, scope: !3698, inlinedAt: !3769)
!3909 = !DILocation(line: 243, column: 32, scope: !3910, inlinedAt: !3769)
!3910 = distinct !DILexicalBlock(scope: !3698, file: !577, line: 243, column: 23)
!3911 = !DILocation(line: 243, column: 23, scope: !3698, inlinedAt: !3769)
!3912 = !DILocation(line: 247, column: 33, scope: !3913, inlinedAt: !3769)
!3913 = distinct !DILexicalBlock(scope: !3910, file: !577, line: 246, column: 21)
!3914 = !DILocation(line: 247, column: 45, scope: !3913, inlinedAt: !3769)
!3915 = !DILocation(line: 253, column: 11, scope: !3702, inlinedAt: !3769)
!3916 = !DILocation(line: 377, column: 23, scope: !3704, inlinedAt: !3769)
!3917 = !DILocation(line: 378, column: 5, scope: !3704, inlinedAt: !3769)
!3918 = !DILocation(line: 396, column: 15, scope: !3682)
!3919 = !DILocation(line: 590, column: 8, scope: !3691)
!3920 = !DILocation(line: 590, column: 17, scope: !3691)
!3921 = !DILocation(line: 589, column: 3, scope: !3922)
!3922 = !DILexicalBlockFile(scope: !3692, file: !577, discriminator: 1)
!3923 = !DILocation(line: 592, column: 9, scope: !3689)
!3924 = !DILocation(line: 592, column: 35, scope: !3690)
!3925 = !DILocation(line: 593, column: 9, scope: !3690)
!3926 = !DILocation(line: 593, column: 24, scope: !3927)
!3927 = !DILexicalBlockFile(scope: !3690, file: !577, discriminator: 1)
!3928 = !DILocation(line: 593, column: 31, scope: !3927)
!3929 = !DILocation(line: 593, column: 34, scope: !3930)
!3930 = !DILexicalBlockFile(scope: !3690, file: !577, discriminator: 2)
!3931 = !DILocation(line: 593, column: 45, scope: !3930)
!3932 = !DILocation(line: 592, column: 9, scope: !3933)
!3933 = !DILexicalBlockFile(scope: !3691, file: !577, discriminator: 1)
!3934 = !DILocation(line: 595, column: 29, scope: !3935)
!3935 = distinct !DILexicalBlock(scope: !3690, file: !577, line: 594, column: 7)
!3936 = !DILocation(line: 595, column: 27, scope: !3935)
!3937 = !DILocation(line: 595, column: 46, scope: !3935)
!3938 = !DILocation(line: 596, column: 9, scope: !3935)
!3939 = !DILocation(line: 591, column: 19, scope: !3691)
!3940 = !DILocation(line: 591, column: 36, scope: !3691)
!3941 = !DILocation(line: 591, column: 16, scope: !3691)
!3942 = !DILocation(line: 591, column: 52, scope: !3933)
!3943 = !DILocation(line: 591, column: 69, scope: !3691)
!3944 = !DILocation(line: 591, column: 49, scope: !3691)
!3945 = distinct !{!3945, !3946, !3947}
!3946 = !DILocation(line: 589, column: 3, scope: !3692)
!3947 = !DILocation(line: 597, column: 7, scope: !3692)
!3948 = !DILocation(line: 602, column: 7, scope: !3949)
!3949 = distinct !DILexicalBlock(scope: !3682, file: !577, line: 602, column: 7)
!3950 = !DILocation(line: 602, column: 18, scope: !3949)
!3951 = !DILocation(line: 602, column: 7, scope: !3682)
!3952 = !DILocation(line: 612, column: 3, scope: !3682)
!3953 = distinct !DISubprogram(name: "rpl_fclose", scope: !3954, file: !3954, line: 56, type: !3955, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !616, variables: !3997)
!3954 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3955 = !DISubroutineType(types: !3956)
!3956 = !{!29, !3957}
!3957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3958, size: 64)
!3958 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2993, line: 49, baseType: !3959)
!3959 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2995, line: 241, size: 1728, elements: !3960)
!3960 = !{!3961, !3962, !3963, !3964, !3965, !3966, !3967, !3968, !3969, !3970, !3971, !3972, !3973, !3981, !3982, !3983, !3984, !3985, !3986, !3987, !3988, !3989, !3990, !3991, !3992, !3993, !3994, !3995, !3996}
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3959, file: !2995, line: 242, baseType: !29, size: 32)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3959, file: !2995, line: 247, baseType: !21, size: 64, offset: 64)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3959, file: !2995, line: 248, baseType: !21, size: 64, offset: 128)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3959, file: !2995, line: 249, baseType: !21, size: 64, offset: 192)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3959, file: !2995, line: 250, baseType: !21, size: 64, offset: 256)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3959, file: !2995, line: 251, baseType: !21, size: 64, offset: 320)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3959, file: !2995, line: 252, baseType: !21, size: 64, offset: 384)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3959, file: !2995, line: 253, baseType: !21, size: 64, offset: 448)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3959, file: !2995, line: 254, baseType: !21, size: 64, offset: 512)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3959, file: !2995, line: 256, baseType: !21, size: 64, offset: 576)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3959, file: !2995, line: 257, baseType: !21, size: 64, offset: 640)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3959, file: !2995, line: 258, baseType: !21, size: 64, offset: 704)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3959, file: !2995, line: 260, baseType: !3974, size: 64, offset: 768)
!3974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3975, size: 64)
!3975 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2995, line: 156, size: 192, elements: !3976)
!3976 = !{!3977, !3978, !3980}
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3975, file: !2995, line: 157, baseType: !3974, size: 64)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3975, file: !2995, line: 158, baseType: !3979, size: 64, offset: 64)
!3979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3959, size: 64)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3975, file: !2995, line: 162, baseType: !29, size: 32, offset: 128)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3959, file: !2995, line: 262, baseType: !3979, size: 64, offset: 832)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3959, file: !2995, line: 264, baseType: !29, size: 32, offset: 896)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3959, file: !2995, line: 268, baseType: !29, size: 32, offset: 928)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3959, file: !2995, line: 270, baseType: !3021, size: 64, offset: 960)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3959, file: !2995, line: 274, baseType: !181, size: 16, offset: 1024)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3959, file: !2995, line: 275, baseType: !3026, size: 8, offset: 1040)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3959, file: !2995, line: 276, baseType: !3028, size: 8, offset: 1048)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3959, file: !2995, line: 280, baseType: !3032, size: 64, offset: 1088)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3959, file: !2995, line: 289, baseType: !3035, size: 64, offset: 1152)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3959, file: !2995, line: 297, baseType: !22, size: 64, offset: 1216)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3959, file: !2995, line: 298, baseType: !22, size: 64, offset: 1280)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3959, file: !2995, line: 299, baseType: !22, size: 64, offset: 1344)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3959, file: !2995, line: 300, baseType: !22, size: 64, offset: 1408)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3959, file: !2995, line: 302, baseType: !13, size: 64, offset: 1472)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3959, file: !2995, line: 303, baseType: !29, size: 32, offset: 1536)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3959, file: !2995, line: 305, baseType: !3043, size: 160, offset: 1568)
!3997 = !{!3998, !3999, !4000, !4001}
!3998 = !DILocalVariable(name: "fp", arg: 1, scope: !3953, file: !3954, line: 56, type: !3957)
!3999 = !DILocalVariable(name: "saved_errno", scope: !3953, file: !3954, line: 58, type: !29)
!4000 = !DILocalVariable(name: "fd", scope: !3953, file: !3954, line: 59, type: !29)
!4001 = !DILocalVariable(name: "result", scope: !3953, file: !3954, line: 60, type: !29)
!4002 = !DILocation(line: 56, column: 19, scope: !3953)
!4003 = !DILocation(line: 58, column: 7, scope: !3953)
!4004 = !DILocation(line: 60, column: 7, scope: !3953)
!4005 = !DILocation(line: 63, column: 8, scope: !3953)
!4006 = !DILocation(line: 59, column: 7, scope: !3953)
!4007 = !DILocation(line: 64, column: 10, scope: !4008)
!4008 = distinct !DILexicalBlock(scope: !3953, file: !3954, line: 64, column: 7)
!4009 = !DILocation(line: 64, column: 7, scope: !3953)
!4010 = !DILocation(line: 65, column: 12, scope: !4008)
!4011 = !DILocation(line: 65, column: 5, scope: !4008)
!4012 = !DILocation(line: 70, column: 9, scope: !4013)
!4013 = distinct !DILexicalBlock(scope: !3953, file: !3954, line: 70, column: 7)
!4014 = !DILocation(line: 70, column: 23, scope: !4013)
!4015 = !DILocation(line: 70, column: 33, scope: !4016)
!4016 = !DILexicalBlockFile(scope: !4013, file: !3954, discriminator: 1)
!4017 = !DILocation(line: 70, column: 26, scope: !4018)
!4018 = !DILexicalBlockFile(scope: !4013, file: !3954, discriminator: 3)
!4019 = !DILocation(line: 70, column: 59, scope: !4016)
!4020 = !DILocation(line: 71, column: 7, scope: !4013)
!4021 = !DILocation(line: 71, column: 10, scope: !4016)
!4022 = !DILocation(line: 70, column: 7, scope: !4023)
!4023 = !DILexicalBlockFile(scope: !3953, file: !3954, discriminator: 2)
!4024 = !DILocation(line: 98, column: 12, scope: !3953)
!4025 = !DILocation(line: 103, column: 7, scope: !3953)
!4026 = !DILocation(line: 72, column: 19, scope: !4013)
!4027 = !DILocation(line: 103, column: 19, scope: !4028)
!4028 = distinct !DILexicalBlock(scope: !3953, file: !3954, line: 103, column: 7)
!4029 = !DILocation(line: 105, column: 13, scope: !4030)
!4030 = distinct !DILexicalBlock(scope: !4028, file: !3954, line: 104, column: 5)
!4031 = !DILocation(line: 107, column: 5, scope: !4030)
!4032 = !DILocation(line: 110, column: 1, scope: !3953)
!4033 = distinct !DISubprogram(name: "rpl_fflush", scope: !4034, file: !4034, line: 127, type: !4035, isLocal: false, isDefinition: true, scopeLine: 128, flags: DIFlagPrototyped, isOptimized: true, unit: !618, variables: !4077)
!4034 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4035 = !DISubroutineType(types: !4036)
!4036 = !{!29, !4037}
!4037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4038, size: 64)
!4038 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2993, line: 49, baseType: !4039)
!4039 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2995, line: 241, size: 1728, elements: !4040)
!4040 = !{!4041, !4042, !4043, !4044, !4045, !4046, !4047, !4048, !4049, !4050, !4051, !4052, !4053, !4061, !4062, !4063, !4064, !4065, !4066, !4067, !4068, !4069, !4070, !4071, !4072, !4073, !4074, !4075, !4076}
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4039, file: !2995, line: 242, baseType: !29, size: 32)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4039, file: !2995, line: 247, baseType: !21, size: 64, offset: 64)
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4039, file: !2995, line: 248, baseType: !21, size: 64, offset: 128)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4039, file: !2995, line: 249, baseType: !21, size: 64, offset: 192)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4039, file: !2995, line: 250, baseType: !21, size: 64, offset: 256)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4039, file: !2995, line: 251, baseType: !21, size: 64, offset: 320)
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4039, file: !2995, line: 252, baseType: !21, size: 64, offset: 384)
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4039, file: !2995, line: 253, baseType: !21, size: 64, offset: 448)
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4039, file: !2995, line: 254, baseType: !21, size: 64, offset: 512)
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4039, file: !2995, line: 256, baseType: !21, size: 64, offset: 576)
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4039, file: !2995, line: 257, baseType: !21, size: 64, offset: 640)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4039, file: !2995, line: 258, baseType: !21, size: 64, offset: 704)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4039, file: !2995, line: 260, baseType: !4054, size: 64, offset: 768)
!4054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4055, size: 64)
!4055 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2995, line: 156, size: 192, elements: !4056)
!4056 = !{!4057, !4058, !4060}
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4055, file: !2995, line: 157, baseType: !4054, size: 64)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4055, file: !2995, line: 158, baseType: !4059, size: 64, offset: 64)
!4059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4039, size: 64)
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4055, file: !2995, line: 162, baseType: !29, size: 32, offset: 128)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4039, file: !2995, line: 262, baseType: !4059, size: 64, offset: 832)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4039, file: !2995, line: 264, baseType: !29, size: 32, offset: 896)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4039, file: !2995, line: 268, baseType: !29, size: 32, offset: 928)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4039, file: !2995, line: 270, baseType: !3021, size: 64, offset: 960)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4039, file: !2995, line: 274, baseType: !181, size: 16, offset: 1024)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4039, file: !2995, line: 275, baseType: !3026, size: 8, offset: 1040)
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4039, file: !2995, line: 276, baseType: !3028, size: 8, offset: 1048)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4039, file: !2995, line: 280, baseType: !3032, size: 64, offset: 1088)
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4039, file: !2995, line: 289, baseType: !3035, size: 64, offset: 1152)
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4039, file: !2995, line: 297, baseType: !22, size: 64, offset: 1216)
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4039, file: !2995, line: 298, baseType: !22, size: 64, offset: 1280)
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4039, file: !2995, line: 299, baseType: !22, size: 64, offset: 1344)
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4039, file: !2995, line: 300, baseType: !22, size: 64, offset: 1408)
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4039, file: !2995, line: 302, baseType: !13, size: 64, offset: 1472)
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4039, file: !2995, line: 303, baseType: !29, size: 32, offset: 1536)
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4039, file: !2995, line: 305, baseType: !3043, size: 160, offset: 1568)
!4077 = !{!4078}
!4078 = !DILocalVariable(name: "stream", arg: 1, scope: !4033, file: !4034, line: 127, type: !4037)
!4079 = !DILocation(line: 127, column: 19, scope: !4033)
!4080 = !DILocation(line: 148, column: 14, scope: !4081)
!4081 = distinct !DILexicalBlock(scope: !4033, file: !4034, line: 148, column: 7)
!4082 = !DILocation(line: 148, column: 22, scope: !4081)
!4083 = !DILocation(line: 148, column: 27, scope: !4084)
!4084 = !DILexicalBlockFile(scope: !4081, file: !4034, discriminator: 1)
!4085 = !DILocation(line: 148, column: 7, scope: !4086)
!4086 = !DILexicalBlockFile(scope: !4033, file: !4034, discriminator: 1)
!4087 = !DILocation(line: 149, column: 12, scope: !4081)
!4088 = !DILocation(line: 149, column: 5, scope: !4081)
!4089 = !DILocalVariable(name: "fp", arg: 1, scope: !4090, file: !4034, line: 40, type: !4037)
!4090 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !4034, file: !4034, line: 40, type: !4091, isLocal: true, isDefinition: true, scopeLine: 41, flags: DIFlagPrototyped, isOptimized: true, unit: !618, variables: !4093)
!4091 = !DISubroutineType(types: !4092)
!4092 = !{null, !4037}
!4093 = !{!4089}
!4094 = !DILocation(line: 40, column: 48, scope: !4090, inlinedAt: !4095)
!4095 = distinct !DILocation(line: 153, column: 3, scope: !4033)
!4096 = !DILocation(line: 42, column: 11, scope: !4097, inlinedAt: !4095)
!4097 = distinct !DILexicalBlock(scope: !4090, file: !4034, line: 42, column: 7)
!4098 = !DILocation(line: 42, column: 18, scope: !4097, inlinedAt: !4095)
!4099 = !DILocation(line: 42, column: 7, scope: !4090, inlinedAt: !4095)
!4100 = !DILocation(line: 44, column: 5, scope: !4097, inlinedAt: !4095)
!4101 = !DILocation(line: 155, column: 10, scope: !4033)
!4102 = !DILocation(line: 155, column: 3, scope: !4033)
!4103 = !DILocation(line: 229, column: 1, scope: !4033)
!4104 = distinct !DISubprogram(name: "rpl_fseeko", scope: !4105, file: !4105, line: 28, type: !4106, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !620, variables: !4149)
!4105 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4106 = !DISubroutineType(types: !4107)
!4107 = !{!29, !4108, !4148, !29}
!4108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4109, size: 64)
!4109 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2993, line: 49, baseType: !4110)
!4110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2995, line: 241, size: 1728, elements: !4111)
!4111 = !{!4112, !4113, !4114, !4115, !4116, !4117, !4118, !4119, !4120, !4121, !4122, !4123, !4124, !4132, !4133, !4134, !4135, !4136, !4137, !4138, !4139, !4140, !4141, !4142, !4143, !4144, !4145, !4146, !4147}
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4110, file: !2995, line: 242, baseType: !29, size: 32)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4110, file: !2995, line: 247, baseType: !21, size: 64, offset: 64)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4110, file: !2995, line: 248, baseType: !21, size: 64, offset: 128)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4110, file: !2995, line: 249, baseType: !21, size: 64, offset: 192)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4110, file: !2995, line: 250, baseType: !21, size: 64, offset: 256)
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4110, file: !2995, line: 251, baseType: !21, size: 64, offset: 320)
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4110, file: !2995, line: 252, baseType: !21, size: 64, offset: 384)
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4110, file: !2995, line: 253, baseType: !21, size: 64, offset: 448)
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4110, file: !2995, line: 254, baseType: !21, size: 64, offset: 512)
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4110, file: !2995, line: 256, baseType: !21, size: 64, offset: 576)
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4110, file: !2995, line: 257, baseType: !21, size: 64, offset: 640)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4110, file: !2995, line: 258, baseType: !21, size: 64, offset: 704)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4110, file: !2995, line: 260, baseType: !4125, size: 64, offset: 768)
!4125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4126, size: 64)
!4126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2995, line: 156, size: 192, elements: !4127)
!4127 = !{!4128, !4129, !4131}
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4126, file: !2995, line: 157, baseType: !4125, size: 64)
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4126, file: !2995, line: 158, baseType: !4130, size: 64, offset: 64)
!4130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4110, size: 64)
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4126, file: !2995, line: 162, baseType: !29, size: 32, offset: 128)
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4110, file: !2995, line: 262, baseType: !4130, size: 64, offset: 832)
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4110, file: !2995, line: 264, baseType: !29, size: 32, offset: 896)
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4110, file: !2995, line: 268, baseType: !29, size: 32, offset: 928)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4110, file: !2995, line: 270, baseType: !3021, size: 64, offset: 960)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4110, file: !2995, line: 274, baseType: !181, size: 16, offset: 1024)
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4110, file: !2995, line: 275, baseType: !3026, size: 8, offset: 1040)
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4110, file: !2995, line: 276, baseType: !3028, size: 8, offset: 1048)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4110, file: !2995, line: 280, baseType: !3032, size: 64, offset: 1088)
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4110, file: !2995, line: 289, baseType: !3035, size: 64, offset: 1152)
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4110, file: !2995, line: 297, baseType: !22, size: 64, offset: 1216)
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4110, file: !2995, line: 298, baseType: !22, size: 64, offset: 1280)
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4110, file: !2995, line: 299, baseType: !22, size: 64, offset: 1344)
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4110, file: !2995, line: 300, baseType: !22, size: 64, offset: 1408)
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4110, file: !2995, line: 302, baseType: !13, size: 64, offset: 1472)
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4110, file: !2995, line: 303, baseType: !29, size: 32, offset: 1536)
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4110, file: !2995, line: 305, baseType: !3043, size: 160, offset: 1568)
!4148 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !2993, line: 91, baseType: !3021)
!4149 = !{!4150, !4151, !4152, !4153}
!4150 = !DILocalVariable(name: "fp", arg: 1, scope: !4104, file: !4105, line: 28, type: !4108)
!4151 = !DILocalVariable(name: "offset", arg: 2, scope: !4104, file: !4105, line: 28, type: !4148)
!4152 = !DILocalVariable(name: "whence", arg: 3, scope: !4104, file: !4105, line: 28, type: !29)
!4153 = !DILocalVariable(name: "pos", scope: !4154, file: !4105, line: 116, type: !4148)
!4154 = distinct !DILexicalBlock(scope: !4155, file: !4105, line: 112, column: 5)
!4155 = distinct !DILexicalBlock(scope: !4104, file: !4105, line: 51, column: 7)
!4156 = !DILocation(line: 28, column: 15, scope: !4104)
!4157 = !DILocation(line: 28, column: 25, scope: !4104)
!4158 = !DILocation(line: 28, column: 37, scope: !4104)
!4159 = !DILocation(line: 51, column: 11, scope: !4155)
!4160 = !DILocation(line: 51, column: 31, scope: !4155)
!4161 = !DILocation(line: 51, column: 24, scope: !4155)
!4162 = !DILocation(line: 52, column: 7, scope: !4155)
!4163 = !DILocation(line: 52, column: 14, scope: !4164)
!4164 = !DILexicalBlockFile(scope: !4155, file: !4105, discriminator: 1)
!4165 = !DILocation(line: 52, column: 35, scope: !4164)
!4166 = !{!823, !641, i64 32}
!4167 = !DILocation(line: 52, column: 28, scope: !4164)
!4168 = !DILocation(line: 53, column: 7, scope: !4155)
!4169 = !DILocation(line: 53, column: 14, scope: !4164)
!4170 = !{!823, !641, i64 72}
!4171 = !DILocation(line: 53, column: 28, scope: !4164)
!4172 = !DILocation(line: 51, column: 7, scope: !4173)
!4173 = !DILexicalBlockFile(scope: !4104, file: !4105, discriminator: 1)
!4174 = !DILocation(line: 116, column: 26, scope: !4154)
!4175 = !DILocation(line: 116, column: 19, scope: !4176)
!4176 = !DILexicalBlockFile(scope: !4154, file: !4105, discriminator: 1)
!4177 = !DILocation(line: 116, column: 13, scope: !4154)
!4178 = !DILocation(line: 117, column: 15, scope: !4179)
!4179 = distinct !DILexicalBlock(scope: !4154, file: !4105, line: 117, column: 11)
!4180 = !DILocation(line: 117, column: 11, scope: !4154)
!4181 = !DILocation(line: 127, column: 11, scope: !4154)
!4182 = !DILocation(line: 127, column: 18, scope: !4154)
!4183 = !DILocation(line: 128, column: 11, scope: !4154)
!4184 = !DILocation(line: 128, column: 19, scope: !4154)
!4185 = !{!823, !824, i64 144}
!4186 = !DILocation(line: 159, column: 7, scope: !4154)
!4187 = !DILocation(line: 161, column: 10, scope: !4104)
!4188 = !DILocation(line: 161, column: 3, scope: !4104)
!4189 = !DILocation(line: 162, column: 1, scope: !4104)
