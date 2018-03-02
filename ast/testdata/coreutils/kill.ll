; ModuleID = 'coreutils-8.27/src/kill.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.option = type { i8*, i32, i32*, i32 }
%struct.quoting_options = type { i32, i32, [8 x i32], i8*, i8* }
%struct.slotvec = type { i64, i8* }
%struct.numname = type { i32, [8 x i8] }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [90 x i8] c"Usage: %s [-s SIGNAL | -SIGNAL] PID...\0A  or:  %s -l [SIGNAL]...\0A  or:  %s -t [SIGNAL]...\0A\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"Send signals to processes, or list signals.\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.19 = private unnamed_addr constant [75 x i8] c"\0AMandatory arguments to long options are mandatory for short options too.\0A\00", align 1
@.str.3 = private unnamed_addr constant [236 x i8] c"  -s, --signal=SIGNAL, -SIGNAL\0A                   specify the name or number of the signal to be sent\0A  -l, --list       list signal names, or convert signal names to/from numbers\0A  -t, --table      print a table of signal information\0A\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.5 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.6 = private unnamed_addr constant [189 x i8] c"\0ASIGNAL may be a signal name like 'HUP', or a signal number like '1',\0Aor the exit status of a process terminated by a signal.\0APID is an integer; if negative it identifies a process group.\0A\00", align 1
@.str.7 = private unnamed_addr constant [191 x i8] c"\0ANOTE: your shell may have its own version of %s, which usually supersedes\0Athe version described here.  Please refer to your shell's documentation\0Afor details about the options it supports.\0A\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"kill\00", align 1
@.str.28 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.29 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.30 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.31 = private unnamed_addr constant [69 x i8] c"Report %s translation bugs to <http://translationproject.org/team/>\0A\00", align 1
@.str.32 = private unnamed_addr constant [31 x i8] c"Full documentation at: <%s%s>\0A\00", align 1
@.str.33 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.34 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.9 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@short_options = internal constant [113 x i8] c"0::1::2::3::4::5::6::7::8::9::A::B::C::D::E::F::G::H::I::J::K::M::N::O::P::Q::R::S::T::U::V::W::X::Y::Z::Lln:s:t\00", align 16, !dbg !0
@long_options = internal constant [6 x %struct.option] [%struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.35, i32 0, i32 0), i32 0, i32* null, i32 108 }, %struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.36, i32 0, i32 0), i32 1, i32* null, i32 115 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.37, i32 0, i32 0), i32 0, i32* null, i32 116 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.38, i32 0, i32 0), i32 0, i32* null, i32 -130 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.39, i32 0, i32 0), i32 0, i32* null, i32 -131 }, %struct.option zeroinitializer], align 16, !dbg !52
@optind = external local_unnamed_addr global i32, align 4
@optarg = external local_unnamed_addr global i8*, align 8
@.str.12 = private unnamed_addr constant [21 x i8] c"invalid option -- %c\00", align 1
@.str.13 = private unnamed_addr constant [31 x i8] c"%s: multiple signals specified\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"Paul Eggert\00", align 1
@.str.17 = private unnamed_addr constant [36 x i8] c"cannot combine signal with -l or -t\00", align 1
@.str.18 = private unnamed_addr constant [24 x i8] c"no process ID specified\00", align 1
@.str.42 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.41 = private unnamed_addr constant [13 x i8] c"%*d %-*s %s\0A\00", align 1
@.str.40 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.43 = private unnamed_addr constant [23 x i8] c"%s: invalid process id\00", align 1
@.str.44 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.14 = private unnamed_addr constant [36 x i8] c"multiple -l or -t options specified\00", align 1
@.str.35 = private unnamed_addr constant [5 x i8] c"list\00", align 1
@.str.36 = private unnamed_addr constant [7 x i8] c"signal\00", align 1
@.str.37 = private unnamed_addr constant [6 x i8] c"table\00", align 1
@.str.38 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.39 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.20 = private unnamed_addr constant [27 x i8] c"abcdefghijklmnopqrstuvwxyz\00", align 1
@.str.1.21 = private unnamed_addr constant [19 x i8] c"%s: invalid signal\00", align 1
@Version = local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0), align 8, !dbg !69
@.str.24 = private unnamed_addr constant [5 x i8] c"8.27\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !74
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !79
@.str.27 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.28 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.29 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = global i32 1, align 4, !dbg !83
@program_name = local_unnamed_addr global i8* null, align 8, !dbg !90
@.str.45 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.46 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.47 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.48, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.49, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.50, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.51, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.52, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.53, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.54, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.55, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.56, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.57, i32 0, i32 0), i8* null], align 16, !dbg !97
@.str.48 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.49 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.50 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.51 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.52 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.53 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.54 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.55 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.56 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.57 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_vals = local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !139
@quote_quoting_options = global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !146
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !158
@.str.11.58 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.59 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.60 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.61 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.62 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.63 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.64 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !165
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !172
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !160
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !174
@.str.69 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.70 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.71 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.3.72 = private unnamed_addr constant [203 x i8] c"\0ALicense GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\0A\00", align 1
@.str.4.73 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.5.74 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.6.75 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.7.76 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.8.77 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.9.78 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.10.79 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.11.80 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.12.81 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.13.82 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@.str.14.85 = private unnamed_addr constant [21 x i8] c"\0AReport bugs to: %s\0A\00", align 1
@.str.15.86 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.16.87 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.17.88 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.18.89 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.19.90 = private unnamed_addr constant [64 x i8] c"General help using GNU software: <http://www.gnu.org/gethelp/>\0A\00", align 1
@version_etc_copyright = constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !180
@.str.1.103 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.104 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@numname_table = internal global [35 x %struct.numname] [%struct.numname { i32 1, [8 x i8] c"HUP\00\00\00\00\00" }, %struct.numname { i32 2, [8 x i8] c"INT\00\00\00\00\00" }, %struct.numname { i32 3, [8 x i8] c"QUIT\00\00\00\00" }, %struct.numname { i32 4, [8 x i8] c"ILL\00\00\00\00\00" }, %struct.numname { i32 5, [8 x i8] c"TRAP\00\00\00\00" }, %struct.numname { i32 6, [8 x i8] c"ABRT\00\00\00\00" }, %struct.numname { i32 8, [8 x i8] c"FPE\00\00\00\00\00" }, %struct.numname { i32 9, [8 x i8] c"KILL\00\00\00\00" }, %struct.numname { i32 11, [8 x i8] c"SEGV\00\00\00\00" }, %struct.numname { i32 7, [8 x i8] c"BUS\00\00\00\00\00" }, %struct.numname { i32 13, [8 x i8] c"PIPE\00\00\00\00" }, %struct.numname { i32 14, [8 x i8] c"ALRM\00\00\00\00" }, %struct.numname { i32 15, [8 x i8] c"TERM\00\00\00\00" }, %struct.numname { i32 10, [8 x i8] c"USR1\00\00\00\00" }, %struct.numname { i32 12, [8 x i8] c"USR2\00\00\00\00" }, %struct.numname { i32 17, [8 x i8] c"CHLD\00\00\00\00" }, %struct.numname { i32 23, [8 x i8] c"URG\00\00\00\00\00" }, %struct.numname { i32 19, [8 x i8] c"STOP\00\00\00\00" }, %struct.numname { i32 20, [8 x i8] c"TSTP\00\00\00\00" }, %struct.numname { i32 18, [8 x i8] c"CONT\00\00\00\00" }, %struct.numname { i32 21, [8 x i8] c"TTIN\00\00\00\00" }, %struct.numname { i32 22, [8 x i8] c"TTOU\00\00\00\00" }, %struct.numname { i32 31, [8 x i8] c"SYS\00\00\00\00\00" }, %struct.numname { i32 29, [8 x i8] c"POLL\00\00\00\00" }, %struct.numname { i32 26, [8 x i8] c"VTALRM\00\00" }, %struct.numname { i32 27, [8 x i8] c"PROF\00\00\00\00" }, %struct.numname { i32 24, [8 x i8] c"XCPU\00\00\00\00" }, %struct.numname { i32 25, [8 x i8] c"XFSZ\00\00\00\00" }, %struct.numname { i32 6, [8 x i8] c"IOT\00\00\00\00\00" }, %struct.numname { i32 17, [8 x i8] c"CLD\00\00\00\00\00" }, %struct.numname { i32 30, [8 x i8] c"PWR\00\00\00\00\00" }, %struct.numname { i32 28, [8 x i8] c"WINCH\00\00\00" }, %struct.numname { i32 29, [8 x i8] c"IO\00\00\00\00\00\00" }, %struct.numname { i32 16, [8 x i8] c"STKFLT\00\00" }, %struct.numname { i32 0, [8 x i8] c"EXIT\00\00\00\00" }], align 16, !dbg !189
@.str.111 = private unnamed_addr constant [6 x i8] c"RTMIN\00", align 1
@.str.1.112 = private unnamed_addr constant [6 x i8] c"RTMAX\00", align 1
@.str.2.115 = private unnamed_addr constant [4 x i8] c"%+d\00", align 1
@.str.1.120 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.123 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@charset_aliases = internal global i8* null, align 8, !dbg !204
@.str.3.124 = private unnamed_addr constant [16 x i8] c"CHARSETALIASDIR\00", align 1
@.str.4.125 = private unnamed_addr constant [15 x i8] c"/usr/local/lib\00", align 1
@.str.2.126 = private unnamed_addr constant [14 x i8] c"charset.alias\00", align 1
@.str.5.127 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.6.128 = private unnamed_addr constant [10 x i8] c"%50s %50s\00", align 1
@.str.1.129 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @usage(i32) local_unnamed_addr #0 !dbg !604 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !608, metadata !609), !dbg !610
  %2 = icmp eq i32 %0, 0, !dbg !611
  br i1 %2, label %8, label %3, !dbg !613

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !614, !tbaa !617
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #11, !dbg !614
  %6 = load i8*, i8** @program_name, align 8, !dbg !614, !tbaa !617
  %7 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %4, i32 1, i8* %5, i8* %6) #11, !dbg !621
  br label %47, !dbg !623

; <label>:8:                                      ; preds = %1
  %9 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.1, i64 0, i64 0), i32 5) #11, !dbg !625
  %10 = load i8*, i8** @program_name, align 8, !dbg !625, !tbaa !617
  %11 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %9, i8* %10, i8* %10, i8* %10) #11, !dbg !627
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i32 5) #11, !dbg !629
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !629, !tbaa !617
  %14 = tail call i32 @fputs_unlocked(i8* %12, %struct._IO_FILE* %13) #11, !dbg !630
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.19, i64 0, i64 0), i32 5) #11, !dbg !631
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !631, !tbaa !617
  %17 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %16) #11, !dbg !636
  %18 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([236 x i8], [236 x i8]* @.str.3, i64 0, i64 0), i32 5) #11, !dbg !638
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !638, !tbaa !617
  %20 = tail call i32 @fputs_unlocked(i8* %18, %struct._IO_FILE* %19) #11, !dbg !639
  %21 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i32 5) #11, !dbg !640
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !640, !tbaa !617
  %23 = tail call i32 @fputs_unlocked(i8* %21, %struct._IO_FILE* %22) #11, !dbg !641
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.5, i64 0, i64 0), i32 5) #11, !dbg !642
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !642, !tbaa !617
  %26 = tail call i32 @fputs_unlocked(i8* %24, %struct._IO_FILE* %25) #11, !dbg !643
  %27 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([189 x i8], [189 x i8]* @.str.6, i64 0, i64 0), i32 5) #11, !dbg !644
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !644, !tbaa !617
  %29 = tail call i32 @fputs_unlocked(i8* %27, %struct._IO_FILE* %28) #11, !dbg !645
  %30 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([191 x i8], [191 x i8]* @.str.7, i64 0, i64 0), i32 5) #11, !dbg !646
  %31 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %30, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0)) #11, !dbg !647
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !29, metadata !609) #11, !dbg !648
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 0, metadata !29, metadata !609) #11, !dbg !648
  %32 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.28, i64 0, i64 0), i32 5) #11, !dbg !650
  %33 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %32, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.29, i64 0, i64 0)) #11, !dbg !651
  %34 = tail call i8* @setlocale(i32 5, i8* null) #11, !dbg !653
  tail call void @llvm.dbg.value(metadata i8* %34, i64 0, metadata !40, metadata !609) #11, !dbg !654
  %35 = icmp eq i8* %34, null, !dbg !655
  br i1 %35, label %42, label %36, !dbg !656

; <label>:36:                                     ; preds = %8
  %37 = tail call i32 @strncmp(i8* nonnull %34, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.30, i64 0, i64 0), i64 3) #9, !dbg !657
  %38 = icmp eq i32 %37, 0, !dbg !657
  br i1 %38, label %42, label %39, !dbg !659

; <label>:39:                                     ; preds = %36
  %40 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.31, i64 0, i64 0), i32 5) #11, !dbg !661
  %41 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %40, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0)) #11, !dbg !663
  br label %42, !dbg !665

; <label>:42:                                     ; preds = %8, %36, %39
  %43 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.32, i64 0, i64 0), i32 5) #11, !dbg !666
  %44 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %43, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.29, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0)) #11, !dbg !667
  %45 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.33, i64 0, i64 0), i32 5) #11, !dbg !668
  %46 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %45, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.34, i64 0, i64 0)) #11, !dbg !669
  br label %47

; <label>:47:                                     ; preds = %42, %3
  tail call void @exit(i32 %0) #14, !dbg !670
  unreachable, !dbg !670
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
define i32 @main(i32, i8**) local_unnamed_addr #6 !dbg !671 {
  %3 = alloca i8*, align 8
  %4 = alloca [19 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [19 x i8]* %4, metadata !686, metadata !609), !dbg !706
  %5 = alloca [19 x i8], align 16
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !676, metadata !609), !dbg !709
  tail call void @llvm.dbg.value(metadata i8** %1, i64 0, metadata !677, metadata !609), !dbg !710
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !679, metadata !609), !dbg !711
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !680, metadata !609), !dbg !712
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !681, metadata !609), !dbg !713
  %6 = getelementptr inbounds [19 x i8], [19 x i8]* %5, i64 0, i64 0, !dbg !714
  call void @llvm.lifetime.start(i64 19, i8* nonnull %6) #11, !dbg !714
  tail call void @llvm.dbg.declare(metadata [19 x i8]* %5, metadata !682, metadata !609), !dbg !715
  %7 = load i8*, i8** %1, align 8, !dbg !716, !tbaa !617
  tail call void @set_program_name(i8* %7) #11, !dbg !717
  %8 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i64 0, i64 0)) #11, !dbg !718
  %9 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i64 0, i64 0)) #11, !dbg !719
  %10 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0)) #11, !dbg !720
  %11 = tail call i32 @atexit(void ()* nonnull @close_stdout) #11, !dbg !721
  br label %12, !dbg !713

; <label>:12:                                     ; preds = %2, %60
  %13 = phi i32 [ %62, %60 ], [ -1, %2 ]
  call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !681, metadata !609), !dbg !713
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !680, metadata !609), !dbg !712
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !679, metadata !609), !dbg !711
  %14 = call i32 @getopt_long(i32 %0, i8** %1, i8* getelementptr inbounds ([113 x i8], [113 x i8]* @short_options, i64 0, i64 0), %struct.option* getelementptr inbounds ([6 x %struct.option], [6 x %struct.option]* @long_options, i64 0, i64 0), i32* null) #11, !dbg !722
  call void @llvm.dbg.value(metadata i32 %14, i64 0, metadata !678, metadata !609), !dbg !724
  switch i32 %14, label %80 [
    i32 -1, label %83
    i32 48, label %15
    i32 49, label %15
    i32 50, label %15
    i32 51, label %15
    i32 52, label %15
    i32 53, label %15
    i32 54, label %15
    i32 55, label %15
    i32 56, label %15
    i32 57, label %15
    i32 65, label %26
    i32 66, label %26
    i32 67, label %26
    i32 68, label %26
    i32 69, label %26
    i32 70, label %26
    i32 71, label %26
    i32 72, label %26
    i32 73, label %26
    i32 74, label %26
    i32 75, label %26
    i32 77, label %26
    i32 78, label %26
    i32 79, label %26
    i32 80, label %26
    i32 81, label %26
    i32 82, label %26
    i32 83, label %26
    i32 84, label %26
    i32 85, label %26
    i32 86, label %26
    i32 87, label %26
    i32 88, label %26
    i32 89, label %26
    i32 90, label %26
    i32 110, label %52
    i32 115, label %52
    i32 76, label %67
    i32 116, label %67
    i32 108, label %68
    i32 -130, label %72
    i32 -131, label %75
  ], !dbg !725

; <label>:15:                                     ; preds = %12, %12, %12, %12, %12, %12, %12, %12, %12, %12
  %16 = load i32, i32* @optind, align 4, !dbg !726, !tbaa !729
  %17 = icmp eq i32 %16, 2, !dbg !731
  br i1 %17, label %26, label %19, !dbg !732

; <label>:18:                                     ; preds = %249
  br label %20, !dbg !733

; <label>:19:                                     ; preds = %15
  br label %20, !dbg !733

; <label>:20:                                     ; preds = %19, %18
  %21 = phi i8 [ 1, %18 ], [ 0, %19 ]
  %22 = phi i8 [ %70, %18 ], [ 0, %19 ]
  %23 = phi i32 [ %245, %18 ], [ %13, %19 ]
  %24 = phi i32 [ %250, %18 ], [ %16, %19 ]
  %25 = add nsw i32 %24, -1, !dbg !733
  store i32 %25, i32* @optind, align 4, !dbg !733, !tbaa !729
  br label %84, !dbg !735

; <label>:26:                                     ; preds = %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %15
  %27 = load i8*, i8** @optarg, align 8, !dbg !736, !tbaa !617
  %28 = icmp eq i8* %27, null, !dbg !736
  %29 = load i32, i32* @optind, align 4, !tbaa !729
  br i1 %28, label %30, label %37, !dbg !738

; <label>:30:                                     ; preds = %26
  %31 = add nsw i32 %29, -1, !dbg !739
  %32 = sext i32 %31 to i64, !dbg !740
  %33 = getelementptr inbounds i8*, i8** %1, i64 %32, !dbg !740
  %34 = load i8*, i8** %33, align 8, !dbg !740, !tbaa !617
  %35 = call i64 @strlen(i8* %34) #9, !dbg !741
  %36 = getelementptr inbounds i8, i8* %34, i64 %35, !dbg !742
  store i8* %36, i8** @optarg, align 8, !dbg !743, !tbaa !617
  br label %37, !dbg !744

; <label>:37:                                     ; preds = %26, %30
  %38 = phi i8* [ %36, %30 ], [ %27, %26 ], !dbg !745
  %39 = add nsw i32 %29, -1, !dbg !747
  %40 = sext i32 %39 to i64, !dbg !748
  %41 = getelementptr inbounds i8*, i8** %1, i64 %40, !dbg !748
  %42 = load i8*, i8** %41, align 8, !dbg !748, !tbaa !617
  %43 = getelementptr inbounds i8, i8* %42, i64 2, !dbg !749
  %44 = icmp eq i8* %38, %43, !dbg !750
  br i1 %44, label %50, label %46, !dbg !751

; <label>:45:                                     ; preds = %263
  br label %47, !dbg !752

; <label>:46:                                     ; preds = %37
  br label %47, !dbg !752

; <label>:47:                                     ; preds = %46, %45
  %48 = phi i32 [ %246, %45 ], [ %14, %46 ]
  %49 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i64 0, i64 0), i32 5) #11, !dbg !752
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %49, i32 %48) #11, !dbg !754
  call void @usage(i32 1) #15, !dbg !756
  unreachable, !dbg !756

; <label>:50:                                     ; preds = %37
  %51 = getelementptr inbounds i8, i8* %38, i64 -1, !dbg !757
  store i8* %51, i8** @optarg, align 8, !dbg !757, !tbaa !617
  br label %52, !dbg !758

; <label>:52:                                     ; preds = %12, %12, %50
  %53 = icmp sgt i32 %13, -1, !dbg !759
  br i1 %53, label %55, label %60, !dbg !761

; <label>:54:                                     ; preds = %273
  br label %56, !dbg !762

; <label>:55:                                     ; preds = %52
  br label %56, !dbg !762

; <label>:56:                                     ; preds = %55, %54
  %57 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.13, i64 0, i64 0), i32 5) #11, !dbg !762
  %58 = load i8*, i8** @optarg, align 8, !dbg !764, !tbaa !617
  %59 = call i8* @quote(i8* %58) #11, !dbg !765
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %57, i8* %59) #11, !dbg !767
  call void @usage(i32 1) #15, !dbg !769
  unreachable, !dbg !769

; <label>:60:                                     ; preds = %52
  %61 = load i8*, i8** @optarg, align 8, !dbg !770, !tbaa !617
  %62 = call i32 @operand2sig(i8* %61, i8* nonnull %6) #11, !dbg !771
  call void @llvm.dbg.value(metadata i32 %62, i64 0, metadata !681, metadata !609), !dbg !713
  %63 = icmp slt i32 %62, 0, !dbg !772
  br i1 %63, label %65, label %12, !dbg !774, !llvm.loop !775

; <label>:64:                                     ; preds = %275
  br label %66, !dbg !778

; <label>:65:                                     ; preds = %60
  br label %66, !dbg !778

; <label>:66:                                     ; preds = %65, %64
  call void @usage(i32 1) #15, !dbg !778
  unreachable, !dbg !778

; <label>:67:                                     ; preds = %12, %12
  br label %69, !dbg !712

; <label>:68:                                     ; preds = %12
  br label %69, !dbg !712

; <label>:69:                                     ; preds = %68, %67
  %70 = phi i8 [ 1, %67 ], [ 0, %68 ]
  call void @llvm.dbg.value(metadata i8 %70, i64 0, metadata !680, metadata !609), !dbg !712
  br label %244, !dbg !713

; <label>:71:                                     ; preds = %244
  br label %73, !dbg !779

; <label>:72:                                     ; preds = %12
  br label %73, !dbg !779

; <label>:73:                                     ; preds = %72, %71
  call void @usage(i32 0) #15, !dbg !779
  unreachable, !dbg !779

; <label>:74:                                     ; preds = %244
  br label %76, !dbg !780

; <label>:75:                                     ; preds = %12
  br label %76, !dbg !780

; <label>:76:                                     ; preds = %75, %74
  %77 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !780, !tbaa !617
  %78 = load i8*, i8** @Version, align 8, !dbg !780, !tbaa !617
  call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %77, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i64 0, i64 0), i8* %78, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i64 0, i64 0), i8* null) #11, !dbg !780
  call void @exit(i32 0) #14, !dbg !781
  unreachable, !dbg !780

; <label>:79:                                     ; preds = %244
  br label %81, !dbg !783

; <label>:80:                                     ; preds = %12
  br label %81, !dbg !783

; <label>:81:                                     ; preds = %80, %79
  call void @usage(i32 1) #15, !dbg !783
  unreachable, !dbg !783

; <label>:82:                                     ; preds = %244
  br label %84, !dbg !784

; <label>:83:                                     ; preds = %12
  br label %84, !dbg !784

; <label>:84:                                     ; preds = %83, %82, %20
  %85 = phi i8 [ %21, %20 ], [ 1, %82 ], [ 0, %83 ]
  %86 = phi i8 [ %22, %20 ], [ %70, %82 ], [ 0, %83 ]
  %87 = phi i32 [ %23, %20 ], [ %245, %82 ], [ %13, %83 ]
  %88 = icmp slt i32 %87, 0, !dbg !784
  br i1 %88, label %93, label %89, !dbg !786

; <label>:89:                                     ; preds = %84
  %90 = icmp eq i8 %85, 0, !dbg !787
  br i1 %90, label %93, label %91, !dbg !789

; <label>:91:                                     ; preds = %89
  %92 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.17, i64 0, i64 0), i32 5) #11, !dbg !790
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %92) #11, !dbg !792
  call void @usage(i32 1) #15, !dbg !794
  unreachable, !dbg !794

; <label>:93:                                     ; preds = %84, %89
  %94 = phi i32 [ %87, %89 ], [ 15, %84 ]
  call void @llvm.dbg.value(metadata i32 %94, i64 0, metadata !681, metadata !609), !dbg !713
  %95 = icmp ne i8 %85, 0, !dbg !795
  %96 = load i32, i32* @optind, align 4, !dbg !797
  %97 = icmp slt i32 %96, %0, !dbg !799
  %98 = or i1 %95, %97, !dbg !800
  br i1 %98, label %101, label %99, !dbg !800

; <label>:99:                                     ; preds = %93
  %100 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.18, i64 0, i64 0), i32 5) #11, !dbg !801
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %100) #11, !dbg !803
  call void @usage(i32 1) #15, !dbg !805
  unreachable, !dbg !805

; <label>:101:                                    ; preds = %93
  br i1 %95, label %102, label %203, !dbg !806

; <label>:102:                                    ; preds = %101
  %103 = and i8 %86, 1, !dbg !807
  %104 = icmp eq i8 %103, 0, !dbg !807
  %105 = sext i32 %96 to i64, !dbg !808
  %106 = getelementptr inbounds i8*, i8** %1, i64 %105, !dbg !808
  %107 = select i1 %97, i8** %106, i8** null, !dbg !809
  call void @llvm.dbg.value(metadata i1 %104, i64 0, metadata !693, metadata !810) #11, !dbg !811
  call void @llvm.dbg.value(metadata i8** %107, i64 0, metadata !694, metadata !609) #11, !dbg !812
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !696, metadata !609) #11, !dbg !813
  %108 = getelementptr inbounds [19 x i8], [19 x i8]* %4, i64 0, i64 0, !dbg !814
  call void @llvm.lifetime.start(i64 19, i8* nonnull %108) #11, !dbg !814
  br i1 %104, label %160, label %109, !dbg !815

; <label>:109:                                    ; preds = %102
  br label %110, !dbg !816

; <label>:110:                                    ; preds = %109, %121
  %111 = phi i32 [ %122, %121 ], [ 0, %109 ]
  %112 = phi i32 [ %123, %121 ], [ 1, %109 ]
  %113 = call i32 @sig2str(i32 %112, i8* nonnull %108) #11, !dbg !816
  %114 = icmp eq i32 %113, 0, !dbg !817
  br i1 %114, label %115, label %121, !dbg !818

; <label>:115:                                    ; preds = %110
  %116 = call i64 @strlen(i8* nonnull %108) #9, !dbg !819
  call void @llvm.dbg.value(metadata i64 %116, i64 0, metadata !701, metadata !609) #11, !dbg !820
  %117 = zext i32 %111 to i64, !dbg !821
  %118 = icmp ult i64 %117, %116, !dbg !823
  %119 = trunc i64 %116 to i32, !dbg !824
  call void @llvm.dbg.value(metadata i32 %119, i64 0, metadata !697, metadata !609) #11, !dbg !825
  %120 = select i1 %118, i32 %119, i32 %111, !dbg !826
  call void @llvm.dbg.value(metadata i32 %120, i64 0, metadata !697, metadata !609) #11, !dbg !825
  br label %121, !dbg !827

; <label>:121:                                    ; preds = %115, %110
  %122 = phi i32 [ %120, %115 ], [ %111, %110 ]
  call void @llvm.dbg.value(metadata i32 %122, i64 0, metadata !697, metadata !609) #11, !dbg !825
  %123 = add nuw nsw i32 %112, 1, !dbg !828
  call void @llvm.dbg.value(metadata i32 %123, i64 0, metadata !695, metadata !609) #11, !dbg !830
  call void @llvm.dbg.value(metadata i32 %122, i64 0, metadata !697, metadata !609) #11, !dbg !825
  call void @llvm.dbg.value(metadata i32 %123, i64 0, metadata !695, metadata !609) #11, !dbg !830
  %124 = icmp eq i32 %123, 65, !dbg !831
  br i1 %124, label %125, label %110, !dbg !833, !llvm.loop !835

; <label>:125:                                    ; preds = %121
  %126 = icmp eq i8** %107, null, !dbg !838
  br i1 %126, label %127, label %128, !dbg !840

; <label>:127:                                    ; preds = %125
  br label %148, !dbg !841

; <label>:128:                                    ; preds = %125
  call void @llvm.dbg.value(metadata i8** %107, i64 0, metadata !694, metadata !609) #11, !dbg !812
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !696, metadata !609) #11, !dbg !813
  %129 = load i8*, i8** %107, align 8, !dbg !845, !tbaa !617
  %130 = icmp eq i8* %129, null, !dbg !849
  br i1 %130, label %201, label %131, !dbg !849

; <label>:131:                                    ; preds = %128
  br label %132, !dbg !851

; <label>:132:                                    ; preds = %131, %143
  %133 = phi i8* [ %146, %143 ], [ %129, %131 ]
  %134 = phi i8** [ %145, %143 ], [ %106, %131 ]
  %135 = phi i32 [ %144, %143 ], [ 0, %131 ]
  %136 = call i32 @operand2sig(i8* nonnull %133, i8* nonnull %108) #11, !dbg !851
  call void @llvm.dbg.value(metadata i32 %136, i64 0, metadata !695, metadata !609) #11, !dbg !830
  %137 = icmp slt i32 %136, 0, !dbg !853
  br i1 %137, label %143, label %138, !dbg !855

; <label>:138:                                    ; preds = %132
  call void @llvm.dbg.value(metadata i32 undef, i64 0, metadata !856, metadata !609) #11, !dbg !865
  call void @llvm.dbg.value(metadata i32 %136, i64 0, metadata !861, metadata !609) #11, !dbg !867
  call void @llvm.dbg.value(metadata i32 undef, i64 0, metadata !862, metadata !609) #11, !dbg !868
  call void @llvm.dbg.value(metadata i8* %108, i64 0, metadata !863, metadata !609) #11, !dbg !869
  %139 = call i8* @strsignal(i32 %136) #11, !dbg !870
  call void @llvm.dbg.value(metadata i8* %139, i64 0, metadata !864, metadata !609) #11, !dbg !871
  %140 = icmp ne i8* %139, null, !dbg !872
  %141 = select i1 %140, i8* %139, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.42, i64 0, i64 0), !dbg !872
  %142 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.41, i64 0, i64 0), i32 2, i32 %136, i32 %122, i8* nonnull %108, i8* %141) #11, !dbg !873
  br label %143

; <label>:143:                                    ; preds = %138, %132
  %144 = phi i32 [ %135, %138 ], [ 1, %132 ]
  call void @llvm.dbg.value(metadata i32 %144, i64 0, metadata !696, metadata !609) #11, !dbg !813
  %145 = getelementptr inbounds i8*, i8** %134, i64 1, !dbg !875
  call void @llvm.dbg.value(metadata i8** %145, i64 0, metadata !694, metadata !609) #11, !dbg !812
  call void @llvm.dbg.value(metadata i8** %145, i64 0, metadata !694, metadata !609) #11, !dbg !812
  call void @llvm.dbg.value(metadata i32 %144, i64 0, metadata !696, metadata !609) #11, !dbg !813
  %146 = load i8*, i8** %145, align 8, !dbg !845, !tbaa !617
  %147 = icmp eq i8* %146, null, !dbg !849
  br i1 %147, label %200, label %132, !dbg !849, !llvm.loop !877

; <label>:148:                                    ; preds = %127, %157
  %149 = phi i32 [ %158, %157 ], [ 1, %127 ]
  %150 = call i32 @sig2str(i32 %149, i8* nonnull %108) #11, !dbg !841
  %151 = icmp eq i32 %150, 0, !dbg !880
  br i1 %151, label %152, label %157, !dbg !881

; <label>:152:                                    ; preds = %148
  call void @llvm.dbg.value(metadata i32 undef, i64 0, metadata !856, metadata !609) #11, !dbg !882
  call void @llvm.dbg.value(metadata i32 %149, i64 0, metadata !861, metadata !609) #11, !dbg !884
  call void @llvm.dbg.value(metadata i32 undef, i64 0, metadata !862, metadata !609) #11, !dbg !885
  call void @llvm.dbg.value(metadata i8* %108, i64 0, metadata !863, metadata !609) #11, !dbg !886
  %153 = call i8* @strsignal(i32 %149) #11, !dbg !887
  call void @llvm.dbg.value(metadata i8* %153, i64 0, metadata !864, metadata !609) #11, !dbg !888
  %154 = icmp ne i8* %153, null, !dbg !889
  %155 = select i1 %154, i8* %153, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.42, i64 0, i64 0), !dbg !889
  %156 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.41, i64 0, i64 0), i32 2, i32 %149, i32 %122, i8* nonnull %108, i8* %155) #11, !dbg !890
  br label %157, !dbg !891

; <label>:157:                                    ; preds = %152, %148
  %158 = add nuw nsw i32 %149, 1, !dbg !892
  call void @llvm.dbg.value(metadata i32 %158, i64 0, metadata !695, metadata !609) #11, !dbg !830
  call void @llvm.dbg.value(metadata i32 %158, i64 0, metadata !695, metadata !609) #11, !dbg !830
  %159 = icmp eq i32 %158, 65, !dbg !894
  br i1 %159, label %199, label %148, !dbg !896, !llvm.loop !898

; <label>:160:                                    ; preds = %102
  %161 = icmp eq i8** %107, null, !dbg !901
  br i1 %161, label %162, label %163, !dbg !904

; <label>:162:                                    ; preds = %160
  br label %188, !dbg !905

; <label>:163:                                    ; preds = %160
  call void @llvm.dbg.value(metadata i8** %107, i64 0, metadata !694, metadata !609) #11, !dbg !812
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !696, metadata !609) #11, !dbg !813
  %164 = load i8*, i8** %107, align 8, !dbg !909, !tbaa !617
  %165 = icmp eq i8* %164, null, !dbg !913
  br i1 %165, label %201, label %166, !dbg !913

; <label>:166:                                    ; preds = %163
  br label %167, !dbg !915

; <label>:167:                                    ; preds = %166, %183
  %168 = phi i8* [ %186, %183 ], [ %164, %166 ]
  %169 = phi i8** [ %185, %183 ], [ %106, %166 ]
  %170 = phi i32 [ %184, %183 ], [ 0, %166 ]
  %171 = call i32 @operand2sig(i8* nonnull %168, i8* nonnull %108) #11, !dbg !915
  call void @llvm.dbg.value(metadata i32 %171, i64 0, metadata !695, metadata !609) #11, !dbg !830
  %172 = icmp slt i32 %171, 0, !dbg !917
  br i1 %172, label %183, label %173, !dbg !919

; <label>:173:                                    ; preds = %167
  %174 = load i8*, i8** %169, align 8, !dbg !920, !tbaa !617
  %175 = load i8, i8* %174, align 1, !dbg !920, !tbaa !923
  %176 = sext i8 %175 to i32, !dbg !920
  %177 = add nsw i32 %176, -48, !dbg !920
  %178 = icmp ult i32 %177, 10, !dbg !920
  br i1 %178, label %179, label %181, !dbg !924

; <label>:179:                                    ; preds = %173
  %180 = call i32 @puts(i8* nonnull %108) #11, !dbg !925
  br label %183, !dbg !925

; <label>:181:                                    ; preds = %173
  %182 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.40, i64 0, i64 0), i32 %171) #11, !dbg !926
  br label %183

; <label>:183:                                    ; preds = %181, %179, %167
  %184 = phi i32 [ %170, %179 ], [ %170, %181 ], [ 1, %167 ]
  call void @llvm.dbg.value(metadata i32 %184, i64 0, metadata !696, metadata !609) #11, !dbg !813
  %185 = getelementptr inbounds i8*, i8** %169, i64 1, !dbg !927
  call void @llvm.dbg.value(metadata i8** %185, i64 0, metadata !694, metadata !609) #11, !dbg !812
  call void @llvm.dbg.value(metadata i8** %185, i64 0, metadata !694, metadata !609) #11, !dbg !812
  call void @llvm.dbg.value(metadata i32 %184, i64 0, metadata !696, metadata !609) #11, !dbg !813
  %186 = load i8*, i8** %185, align 8, !dbg !909, !tbaa !617
  %187 = icmp eq i8* %186, null, !dbg !913
  br i1 %187, label %198, label %167, !dbg !913, !llvm.loop !929

; <label>:188:                                    ; preds = %162, %194
  %189 = phi i32 [ %195, %194 ], [ 1, %162 ]
  %190 = call i32 @sig2str(i32 %189, i8* nonnull %108) #11, !dbg !905
  %191 = icmp eq i32 %190, 0, !dbg !932
  br i1 %191, label %192, label %194, !dbg !933

; <label>:192:                                    ; preds = %188
  %193 = call i32 @puts(i8* nonnull %108) #11, !dbg !934
  br label %194, !dbg !934

; <label>:194:                                    ; preds = %192, %188
  %195 = add nuw nsw i32 %189, 1, !dbg !935
  call void @llvm.dbg.value(metadata i32 %195, i64 0, metadata !695, metadata !609) #11, !dbg !830
  call void @llvm.dbg.value(metadata i32 %195, i64 0, metadata !695, metadata !609) #11, !dbg !830
  %196 = icmp eq i32 %195, 65, !dbg !937
  br i1 %196, label %197, label %188, !dbg !939, !llvm.loop !941

; <label>:197:                                    ; preds = %194
  br label %201, !dbg !813

; <label>:198:                                    ; preds = %183
  br label %201, !dbg !813

; <label>:199:                                    ; preds = %157
  br label %201, !dbg !813

; <label>:200:                                    ; preds = %143
  br label %201, !dbg !813

; <label>:201:                                    ; preds = %200, %199, %198, %197, %128, %163
  %202 = phi i32 [ 0, %128 ], [ 0, %163 ], [ 0, %197 ], [ %184, %198 ], [ 0, %199 ], [ %144, %200 ]
  call void @llvm.dbg.value(metadata i32 %202, i64 0, metadata !696, metadata !609) #11, !dbg !813
  call void @llvm.lifetime.end(i64 19, i8* nonnull %108) #11, !dbg !944
  br label %242, !dbg !945

; <label>:203:                                    ; preds = %101
  %204 = sext i32 %96 to i64, !dbg !946
  %205 = getelementptr inbounds i8*, i8** %1, i64 %204, !dbg !946
  call void @llvm.dbg.value(metadata i32 %94, i64 0, metadata !947, metadata !609) #11, !dbg !967
  call void @llvm.dbg.value(metadata i8** %205, i64 0, metadata !952, metadata !609) #11, !dbg !969
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !953, metadata !609) #11, !dbg !970
  %206 = load i8*, i8** %205, align 8, !dbg !971, !tbaa !617
  call void @llvm.dbg.value(metadata i8* %206, i64 0, metadata !954, metadata !609) #11, !dbg !972
  %207 = bitcast i8** %3 to i8*
  br label %208, !dbg !973, !llvm.loop !974

; <label>:208:                                    ; preds = %236, %203
  %209 = phi i8* [ %206, %203 ], [ %239, %236 ]
  %210 = phi i32 [ 0, %203 ], [ %237, %236 ]
  %211 = phi i8** [ %205, %203 ], [ %238, %236 ]
  call void @llvm.dbg.value(metadata i8** %211, i64 0, metadata !952, metadata !609) #11, !dbg !969
  call void @llvm.dbg.value(metadata i32 %210, i64 0, metadata !953, metadata !609) #11, !dbg !970
  call void @llvm.dbg.value(metadata i8* %209, i64 0, metadata !954, metadata !609) #11, !dbg !972
  call void @llvm.lifetime.start(i64 8, i8* nonnull %207) #11, !dbg !977
  %212 = tail call i32* @__errno_location() #1, !dbg !978
  store i32 0, i32* %212, align 4, !dbg !979, !tbaa !729
  call void @llvm.dbg.value(metadata i8** %3, i64 0, metadata !955, metadata !980) #11, !dbg !981
  call void @llvm.dbg.value(metadata i8* %209, i64 0, metadata !982, metadata !609) #11, !dbg !992
  call void @llvm.dbg.value(metadata i8** %3, i64 0, metadata !990, metadata !609) #11, !dbg !992
  call void @llvm.dbg.value(metadata i32 10, i64 0, metadata !991, metadata !609) #11, !dbg !992
  %213 = call i64 @__strtol_internal(i8* %209, i8** nonnull %3, i32 10, i32 0) #11, !dbg !995
  call void @llvm.dbg.value(metadata i64 %213, i64 0, metadata !957, metadata !609) #11, !dbg !996
  %214 = trunc i64 %213 to i32, !dbg !997
  call void @llvm.dbg.value(metadata i32 %214, i64 0, metadata !963, metadata !609) #11, !dbg !998
  %215 = load i32, i32* %212, align 4, !dbg !999, !tbaa !729
  %216 = icmp eq i32 %215, 34, !dbg !1001
  br i1 %216, label %227, label %217, !dbg !1002

; <label>:217:                                    ; preds = %208
  %218 = shl i64 %213, 32, !dbg !1003
  %219 = ashr exact i64 %218, 32, !dbg !1003
  %220 = icmp eq i64 %219, %213, !dbg !1005
  br i1 %220, label %221, label %227, !dbg !1006

; <label>:221:                                    ; preds = %217
  %222 = load i8*, i8** %3, align 8, !dbg !1007, !tbaa !617
  call void @llvm.dbg.value(metadata i8* %222, i64 0, metadata !955, metadata !609) #11, !dbg !981
  %223 = icmp eq i8* %209, %222, !dbg !1009
  br i1 %223, label %227, label %224, !dbg !1010

; <label>:224:                                    ; preds = %221
  %225 = load i8, i8* %222, align 1, !dbg !1011, !tbaa !923
  %226 = icmp eq i8 %225, 0, !dbg !1011
  br i1 %226, label %230, label %227, !dbg !1013

; <label>:227:                                    ; preds = %224, %221, %217, %208
  %228 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.43, i64 0, i64 0), i32 5) #11, !dbg !1015
  %229 = call i8* @quote(i8* %209) #11, !dbg !1017
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %228, i8* %229) #11, !dbg !1019
  call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !953, metadata !609) #11, !dbg !970
  br label %236, !dbg !1021

; <label>:230:                                    ; preds = %224
  %231 = call i32 @kill(i32 %214, i32 %94) #11, !dbg !1022
  %232 = icmp eq i32 %231, 0, !dbg !1024
  br i1 %232, label %236, label %233, !dbg !1025

; <label>:233:                                    ; preds = %230
  %234 = load i32, i32* %212, align 4, !dbg !1026, !tbaa !729
  %235 = call i8* @quote(i8* %209) #11, !dbg !1028
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %234, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.44, i64 0, i64 0), i8* %235) #11, !dbg !1030
  call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !953, metadata !609) #11, !dbg !970
  br label %236, !dbg !1032

; <label>:236:                                    ; preds = %233, %230, %227
  %237 = phi i32 [ 1, %227 ], [ 1, %233 ], [ %210, %230 ]
  call void @llvm.dbg.value(metadata i32 %237, i64 0, metadata !953, metadata !609) #11, !dbg !970
  call void @llvm.lifetime.end(i64 8, i8* nonnull %207) #11, !dbg !1033
  %238 = getelementptr inbounds i8*, i8** %211, i64 1, !dbg !1034
  call void @llvm.dbg.value(metadata i8** %238, i64 0, metadata !952, metadata !609) #11, !dbg !969
  %239 = load i8*, i8** %238, align 8, !dbg !1035, !tbaa !617
  call void @llvm.dbg.value(metadata i8* %239, i64 0, metadata !954, metadata !609) #11, !dbg !972
  %240 = icmp eq i8* %239, null, !dbg !1036
  br i1 %240, label %241, label %208, !dbg !1036, !llvm.loop !974

; <label>:241:                                    ; preds = %236
  br label %242, !dbg !1037

; <label>:242:                                    ; preds = %241, %201
  %243 = phi i32 [ %202, %201 ], [ %237, %241 ], !dbg !1038
  call void @llvm.lifetime.end(i64 19, i8* nonnull %6) #11, !dbg !1037
  ret i32 %243, !dbg !1037

; <label>:244:                                    ; preds = %275, %69
  %245 = phi i32 [ %277, %275 ], [ %13, %69 ]
  call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !681, metadata !609), !dbg !713
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !680, metadata !609), !dbg !712
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !679, metadata !609), !dbg !711
  %246 = call i32 @getopt_long(i32 %0, i8** %1, i8* getelementptr inbounds ([113 x i8], [113 x i8]* @short_options, i64 0, i64 0), %struct.option* getelementptr inbounds ([6 x %struct.option], [6 x %struct.option]* @long_options, i64 0, i64 0), i32* null) #11, !dbg !722
  call void @llvm.dbg.value(metadata i32 %14, i64 0, metadata !678, metadata !609), !dbg !724
  switch i32 %246, label %79 [
    i32 -1, label %82
    i32 48, label %249
    i32 49, label %249
    i32 50, label %249
    i32 51, label %249
    i32 52, label %249
    i32 53, label %249
    i32 54, label %249
    i32 55, label %249
    i32 56, label %249
    i32 57, label %249
    i32 65, label %252
    i32 66, label %252
    i32 67, label %252
    i32 68, label %252
    i32 69, label %252
    i32 70, label %252
    i32 71, label %252
    i32 72, label %252
    i32 73, label %252
    i32 74, label %252
    i32 75, label %252
    i32 77, label %252
    i32 78, label %252
    i32 79, label %252
    i32 80, label %252
    i32 81, label %252
    i32 82, label %252
    i32 83, label %252
    i32 84, label %252
    i32 85, label %252
    i32 86, label %252
    i32 87, label %252
    i32 88, label %252
    i32 89, label %252
    i32 90, label %252
    i32 110, label %273
    i32 115, label %273
    i32 76, label %247
    i32 116, label %247
    i32 108, label %247
    i32 -130, label %71
    i32 -131, label %74
  ], !dbg !725

; <label>:247:                                    ; preds = %244, %244, %244
  call void @llvm.dbg.value(metadata i8 %70, i64 0, metadata !680, metadata !609), !dbg !712
  %248 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.14, i64 0, i64 0), i32 5) #11, !dbg !1039
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %248) #11, !dbg !1042
  call void @usage(i32 1) #15, !dbg !1044
  unreachable, !dbg !1044

; <label>:249:                                    ; preds = %244, %244, %244, %244, %244, %244, %244, %244, %244, %244
  %250 = load i32, i32* @optind, align 4, !dbg !726, !tbaa !729
  %251 = icmp eq i32 %250, 2, !dbg !731
  br i1 %251, label %252, label %18, !dbg !732

; <label>:252:                                    ; preds = %249, %244, %244, %244, %244, %244, %244, %244, %244, %244, %244, %244, %244, %244, %244, %244, %244, %244, %244, %244, %244, %244, %244, %244, %244, %244
  %253 = load i8*, i8** @optarg, align 8, !dbg !736, !tbaa !617
  %254 = icmp eq i8* %253, null, !dbg !736
  %255 = load i32, i32* @optind, align 4, !tbaa !729
  br i1 %254, label %256, label %263, !dbg !738

; <label>:256:                                    ; preds = %252
  %257 = add nsw i32 %255, -1, !dbg !739
  %258 = sext i32 %257 to i64, !dbg !740
  %259 = getelementptr inbounds i8*, i8** %1, i64 %258, !dbg !740
  %260 = load i8*, i8** %259, align 8, !dbg !740, !tbaa !617
  %261 = call i64 @strlen(i8* %260) #9, !dbg !741
  %262 = getelementptr inbounds i8, i8* %260, i64 %261, !dbg !742
  store i8* %262, i8** @optarg, align 8, !dbg !743, !tbaa !617
  br label %263, !dbg !744

; <label>:263:                                    ; preds = %252, %256
  %264 = phi i8* [ %262, %256 ], [ %253, %252 ], !dbg !745
  %265 = add nsw i32 %255, -1, !dbg !747
  %266 = sext i32 %265 to i64, !dbg !748
  %267 = getelementptr inbounds i8*, i8** %1, i64 %266, !dbg !748
  %268 = load i8*, i8** %267, align 8, !dbg !748, !tbaa !617
  %269 = getelementptr inbounds i8, i8* %268, i64 2, !dbg !749
  %270 = icmp eq i8* %264, %269, !dbg !750
  br i1 %270, label %271, label %45, !dbg !751

; <label>:271:                                    ; preds = %263
  %272 = getelementptr inbounds i8, i8* %264, i64 -1, !dbg !757
  store i8* %272, i8** @optarg, align 8, !dbg !757, !tbaa !617
  br label %273, !dbg !758

; <label>:273:                                    ; preds = %271, %244, %244
  %274 = icmp sgt i32 %245, -1, !dbg !759
  br i1 %274, label %54, label %275, !dbg !761

; <label>:275:                                    ; preds = %273
  %276 = load i8*, i8** @optarg, align 8, !dbg !770, !tbaa !617
  %277 = call i32 @operand2sig(i8* %276, i8* nonnull %6) #11, !dbg !771
  call void @llvm.dbg.value(metadata i32 %62, i64 0, metadata !681, metadata !609), !dbg !713
  %278 = icmp slt i32 %277, 0, !dbg !772
  br i1 %278, label %64, label %244, !dbg !774, !llvm.loop !775
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #7

; Function Attrs: nounwind
declare i8* @bindtextdomain(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i8* @textdomain(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @atexit(void ()*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i64 @strlen(i8* nocapture) local_unnamed_addr #4

declare void @error(i32, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare i8* @strsignal(i32) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @puts(i8* nocapture readonly) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #7

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #8

; Function Attrs: nounwind
declare i64 @__strtol_internal(i8*, i8**, i32, i32) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @kill(i32, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @operand2sig(i8*, i8*) local_unnamed_addr #6 !dbg !1045 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1049, metadata !609), !dbg !1060
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1050, metadata !609), !dbg !1061
  %5 = bitcast i32* %3 to i8*, !dbg !1062
  call void @llvm.lifetime.start(i64 4, i8* nonnull %5) #11, !dbg !1062
  %6 = load i8, i8* %0, align 1, !dbg !1063, !tbaa !923
  %7 = sext i8 %6 to i32, !dbg !1063
  %8 = add nsw i32 %7, -48, !dbg !1063
  %9 = icmp ult i32 %8, 10, !dbg !1063
  br i1 %9, label %10, label %36, !dbg !1064

; <label>:10:                                     ; preds = %2
  %11 = bitcast i8** %4 to i8*, !dbg !1065
  call void @llvm.lifetime.start(i64 8, i8* nonnull %11) #11, !dbg !1065
  %12 = tail call i32* @__errno_location() #1, !dbg !1066
  store i32 0, i32* %12, align 4, !dbg !1067, !tbaa !729
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !1052, metadata !980), !dbg !1068
  %13 = call i64 @strtol(i8* nonnull %0, i8** nonnull %4, i32 10) #11, !dbg !1069
  tail call void @llvm.dbg.value(metadata i64 %13, i64 0, metadata !1055, metadata !609), !dbg !1071
  %14 = trunc i64 %13 to i32, !dbg !1072
  tail call void @llvm.dbg.value(metadata i32 %14, i64 0, metadata !1056, metadata !609), !dbg !1073
  %15 = load i8*, i8** %4, align 8, !dbg !1074, !tbaa !617
  tail call void @llvm.dbg.value(metadata i8* %15, i64 0, metadata !1052, metadata !609), !dbg !1068
  %16 = icmp eq i8* %15, %0, !dbg !1075
  br i1 %16, label %34, label %17, !dbg !1076

; <label>:17:                                     ; preds = %10
  %18 = load i8, i8* %15, align 1, !dbg !1077, !tbaa !923
  %19 = icmp eq i8 %18, 0, !dbg !1077
  br i1 %19, label %20, label %34, !dbg !1078

; <label>:20:                                     ; preds = %17
  %21 = load i32, i32* %12, align 4, !dbg !1079, !tbaa !729
  %22 = icmp eq i32 %21, 0, !dbg !1079
  br i1 %22, label %23, label %34, !dbg !1081

; <label>:23:                                     ; preds = %20
  %24 = shl i64 %13, 32, !dbg !1082
  %25 = ashr exact i64 %24, 32, !dbg !1082
  %26 = icmp eq i64 %25, %13, !dbg !1084
  br i1 %26, label %27, label %34, !dbg !1085

; <label>:27:                                     ; preds = %23
  %28 = and i32 %14, 127, !dbg !1086
  %29 = shl nuw nsw i32 %28, 24, !dbg !1086
  %30 = add nuw i32 %29, 16777216, !dbg !1086
  %31 = ashr i32 %30, 25, !dbg !1086
  %32 = icmp sgt i32 %31, 0, !dbg !1086
  %33 = select i1 %32, i32 %28, i32 %14, !dbg !1086
  br label %34, !dbg !1086

; <label>:34:                                     ; preds = %23, %20, %17, %27, %10
  %35 = phi i32 [ -1, %23 ], [ -1, %20 ], [ -1, %17 ], [ -1, %10 ], [ %33, %27 ], !dbg !1087
  tail call void @llvm.dbg.value(metadata i32 %35, i64 0, metadata !1051, metadata !609), !dbg !1089
  store i32 %35, i32* %3, align 4, !dbg !1090, !tbaa !729
  call void @llvm.lifetime.end(i64 8, i8* nonnull %11) #11, !dbg !1091
  br label %75, !dbg !1092

; <label>:36:                                     ; preds = %2
  %37 = tail call noalias i8* @xstrdup(i8* nonnull %0) #11, !dbg !1093
  tail call void @llvm.dbg.value(metadata i8* %37, i64 0, metadata !1057, metadata !609), !dbg !1094
  tail call void @llvm.dbg.value(metadata i8* %37, i64 0, metadata !1059, metadata !609), !dbg !1095
  tail call void @llvm.dbg.value(metadata i8* %37, i64 0, metadata !1059, metadata !609), !dbg !1095
  %38 = load i8, i8* %37, align 1, !dbg !1096, !tbaa !923
  %39 = icmp eq i8 %38, 0, !dbg !1100
  br i1 %39, label %54, label %40, !dbg !1100

; <label>:40:                                     ; preds = %36
  br label %41, !dbg !1102

; <label>:41:                                     ; preds = %40, %49
  %42 = phi i8 [ %51, %49 ], [ %38, %40 ]
  %43 = phi i8* [ %50, %49 ], [ %37, %40 ]
  %44 = sext i8 %42 to i32, !dbg !1102
  %45 = tail call i8* @memchr(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.20, i64 0, i64 0), i32 %44, i64 27), !dbg !1102
  %46 = icmp eq i8* %45, null, !dbg !1102
  br i1 %46, label %49, label %47, !dbg !1105

; <label>:47:                                     ; preds = %41
  %48 = add i8 %42, -32, !dbg !1107
  store i8 %48, i8* %43, align 1, !dbg !1107, !tbaa !923
  br label %49, !dbg !1108

; <label>:49:                                     ; preds = %41, %47
  %50 = getelementptr inbounds i8, i8* %43, i64 1, !dbg !1109
  tail call void @llvm.dbg.value(metadata i8* %50, i64 0, metadata !1059, metadata !609), !dbg !1095
  tail call void @llvm.dbg.value(metadata i8* %50, i64 0, metadata !1059, metadata !609), !dbg !1095
  %51 = load i8, i8* %50, align 1, !dbg !1096, !tbaa !923
  %52 = icmp eq i8 %51, 0, !dbg !1100
  br i1 %52, label %53, label %41, !dbg !1100, !llvm.loop !1111

; <label>:53:                                     ; preds = %49
  br label %54, !dbg !1089

; <label>:54:                                     ; preds = %53, %36
  tail call void @llvm.dbg.value(metadata i32* %3, i64 0, metadata !1051, metadata !980), !dbg !1089
  %55 = call i32 @str2sig(i8* %37, i32* nonnull %3) #11, !dbg !1114
  %56 = icmp eq i32 %55, 0, !dbg !1116
  br i1 %56, label %73, label %57, !dbg !1117

; <label>:57:                                     ; preds = %54
  %58 = load i8, i8* %37, align 1, !dbg !1118, !tbaa !923
  %59 = icmp eq i8 %58, 83, !dbg !1120
  br i1 %59, label %60, label %72, !dbg !1121

; <label>:60:                                     ; preds = %57
  %61 = getelementptr inbounds i8, i8* %37, i64 1, !dbg !1122
  %62 = load i8, i8* %61, align 1, !dbg !1122, !tbaa !923
  %63 = icmp eq i8 %62, 73, !dbg !1124
  br i1 %63, label %64, label %72, !dbg !1125

; <label>:64:                                     ; preds = %60
  %65 = getelementptr inbounds i8, i8* %37, i64 2, !dbg !1126
  %66 = load i8, i8* %65, align 1, !dbg !1126, !tbaa !923
  %67 = icmp eq i8 %66, 71, !dbg !1128
  br i1 %67, label %68, label %72, !dbg !1129

; <label>:68:                                     ; preds = %64
  %69 = getelementptr inbounds i8, i8* %37, i64 3, !dbg !1130
  call void @llvm.dbg.value(metadata i32* %3, i64 0, metadata !1051, metadata !980), !dbg !1089
  %70 = call i32 @str2sig(i8* %69, i32* nonnull %3) #11, !dbg !1131
  %71 = icmp eq i32 %70, 0, !dbg !1132
  br i1 %71, label %73, label %72, !dbg !1133

; <label>:72:                                     ; preds = %68, %64, %60, %57
  call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !1051, metadata !609), !dbg !1089
  store i32 -1, i32* %3, align 4, !dbg !1135, !tbaa !729
  br label %73, !dbg !1136

; <label>:73:                                     ; preds = %72, %68, %54
  call void @free(i8* %37) #11, !dbg !1137
  %74 = load i32, i32* %3, align 4, !tbaa !729
  br label %75

; <label>:75:                                     ; preds = %73, %34
  %76 = phi i32 [ %74, %73 ], [ %35, %34 ], !dbg !1138
  call void @llvm.dbg.value(metadata i32 %76, i64 0, metadata !1051, metadata !609), !dbg !1089
  %77 = icmp slt i32 %76, 0, !dbg !1140
  br i1 %77, label %81, label %78, !dbg !1141

; <label>:78:                                     ; preds = %75
  %79 = call i32 @sig2str(i32 %76, i8* %1) #11, !dbg !1142
  %80 = icmp eq i32 %79, 0, !dbg !1144
  br i1 %80, label %84, label %81, !dbg !1145

; <label>:81:                                     ; preds = %78, %75
  %82 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1.21, i64 0, i64 0), i32 5) #11, !dbg !1147
  %83 = call i8* @quote(i8* %0) #11, !dbg !1149
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %82, i8* %83) #11, !dbg !1151
  br label %86, !dbg !1153

; <label>:84:                                     ; preds = %78
  %85 = load i32, i32* %3, align 4, !dbg !1154, !tbaa !729
  call void @llvm.dbg.value(metadata i32 %85, i64 0, metadata !1051, metadata !609), !dbg !1089
  br label %86, !dbg !1155

; <label>:86:                                     ; preds = %84, %81
  %87 = phi i32 [ -1, %81 ], [ %85, %84 ]
  call void @llvm.lifetime.end(i64 4, i8* nonnull %5) #11, !dbg !1156
  ret i32 %87, !dbg !1156
}

; Function Attrs: nounwind
declare i64 @strtol(i8* readonly, i8** nocapture, i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i8* @memchr(i8*, i32, i64) #9

; Function Attrs: nounwind
declare void @free(i8* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_file_name(i8*) local_unnamed_addr #6 !dbg !1157 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1159, metadata !609), !dbg !1160
  store i8* %0, i8** @file_name, align 8, !dbg !1161, !tbaa !617
  ret void, !dbg !1162
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_ignore_EPIPE(i1 zeroext) local_unnamed_addr #6 !dbg !1163 {
  %2 = zext i1 %0 to i8
  tail call void @llvm.dbg.value(metadata i1 %0, i64 0, metadata !1167, metadata !810), !dbg !1168
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !1169, !tbaa !1170
  ret void, !dbg !1172
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout() #6 !dbg !1173 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1178, !tbaa !617
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #11, !dbg !1179
  %3 = icmp eq i32 %2, 0, !dbg !1180
  br i1 %3, label %21, label %4, !dbg !1181

; <label>:4:                                      ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !1182, !tbaa !1170, !range !1184
  %6 = icmp eq i8 %5, 0, !dbg !1182
  %7 = tail call i32* @__errno_location() #1, !dbg !1185
  br i1 %6, label %11, label %8, !dbg !1187

; <label>:8:                                      ; preds = %4
  %9 = load i32, i32* %7, align 4, !dbg !1188, !tbaa !729
  %10 = icmp eq i32 %9, 32, !dbg !1190
  br i1 %10, label %21, label %11, !dbg !1191

; <label>:11:                                     ; preds = %4, %8
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.27, i64 0, i64 0), i32 5) #11, !dbg !1193
  tail call void @llvm.dbg.value(metadata i8* %12, i64 0, metadata !1175, metadata !609), !dbg !1194
  %13 = load i8*, i8** @file_name, align 8, !dbg !1195, !tbaa !617
  %14 = icmp eq i8* %13, null, !dbg !1195
  %15 = load i32, i32* %7, align 4, !tbaa !729
  br i1 %14, label %18, label %16, !dbg !1196

; <label>:16:                                     ; preds = %11
  %17 = tail call i8* @quotearg_colon(i8* nonnull %13) #11, !dbg !1197
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.28, i64 0, i64 0), i8* %17, i8* %12) #11, !dbg !1199
  br label %19, !dbg !1201

; <label>:18:                                     ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.29, i64 0, i64 0), i8* %12) #11, !dbg !1202
  br label %19

; <label>:19:                                     ; preds = %18, %16
  %20 = load volatile i32, i32* @exit_failure, align 4, !dbg !1203, !tbaa !729
  tail call void @_exit(i32 %20) #14, !dbg !1204
  unreachable, !dbg !1204

; <label>:21:                                     ; preds = %0, %8
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1205, !tbaa !617
  %23 = tail call i32 @close_stream(%struct._IO_FILE* %22) #11, !dbg !1207
  %24 = icmp eq i32 %23, 0, !dbg !1208
  br i1 %24, label %27, label %25, !dbg !1209

; <label>:25:                                     ; preds = %21
  %26 = load volatile i32, i32* @exit_failure, align 4, !dbg !1210, !tbaa !729
  tail call void @_exit(i32 %26) #14, !dbg !1211
  unreachable, !dbg !1211

; <label>:27:                                     ; preds = %21
  ret void, !dbg !1212
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #10

; Function Attrs: nounwind sspstrong uwtable
define void @set_program_name(i8*) local_unnamed_addr #6 !dbg !1213 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1215, metadata !609), !dbg !1218
  %2 = icmp eq i8* %0, null, !dbg !1219
  br i1 %2, label %3, label %6, !dbg !1221

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1222, !tbaa !617
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.45, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #16, !dbg !1224
  tail call void @abort() #14, !dbg !1225
  unreachable, !dbg !1225

; <label>:6:                                      ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #9, !dbg !1226
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !1216, metadata !609), !dbg !1227
  %8 = icmp ne i8* %7, null, !dbg !1228
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !1229
  %10 = select i1 %8, i8* %9, i8* %0, !dbg !1231
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !1217, metadata !609), !dbg !1232
  %11 = ptrtoint i8* %10 to i64, !dbg !1233
  %12 = ptrtoint i8* %0 to i64, !dbg !1233
  %13 = sub i64 %11, %12, !dbg !1233
  %14 = icmp sgt i64 %13, 6, !dbg !1235
  br i1 %14, label %15, label %24, !dbg !1236

; <label>:15:                                     ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !1237
  %17 = tail call i32 @strncmp(i8* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.46, i64 0, i64 0), i64 7) #9, !dbg !1237
  %18 = icmp eq i32 %17, 0, !dbg !1239
  br i1 %18, label %19, label %24, !dbg !1240

; <label>:19:                                     ; preds = %15
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !1215, metadata !609), !dbg !1218
  %20 = tail call i32 @strncmp(i8* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.47, i64 0, i64 0), i64 3) #9, !dbg !1241
  %21 = icmp eq i32 %20, 0, !dbg !1244
  br i1 %21, label %22, label %24, !dbg !1245

; <label>:22:                                     ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !1246
  tail call void @llvm.dbg.value(metadata i8* %23, i64 0, metadata !1215, metadata !609), !dbg !1218
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !1248, !tbaa !617
  br label %24, !dbg !1249

; <label>:24:                                     ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i8* %25, i64 0, metadata !1215, metadata !609), !dbg !1218
  store i8* %25, i8** @program_name, align 8, !dbg !1250, !tbaa !617
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !1251, !tbaa !617
  ret void, !dbg !1252
}

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #11

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #5

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define %struct.quoting_options* @clone_quoting_options(%struct.quoting_options*) local_unnamed_addr #6 !dbg !1253 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1258, metadata !609), !dbg !1261
  %2 = tail call i32* @__errno_location() #1, !dbg !1262
  %3 = load i32, i32* %2, align 4, !dbg !1262, !tbaa !729
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !1259, metadata !609), !dbg !1263
  %4 = icmp ne %struct.quoting_options* %0, null, !dbg !1264
  %5 = bitcast %struct.quoting_options* %0 to i8*, !dbg !1265
  %6 = select i1 %4, i8* %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), !dbg !1265
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #11, !dbg !1267
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !1267
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %8, i64 0, metadata !1260, metadata !609), !dbg !1268
  store i32 %3, i32* %2, align 4, !dbg !1269, !tbaa !729
  ret %struct.quoting_options* %8, !dbg !1270
}

; Function Attrs: nounwind readonly sspstrong uwtable
define i32 @get_quoting_style(%struct.quoting_options* readonly) local_unnamed_addr #12 !dbg !1271 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1277, metadata !609), !dbg !1278
  %2 = icmp ne %struct.quoting_options* %0, null, !dbg !1279
  %3 = select i1 %2, %struct.quoting_options* %0, %struct.quoting_options* @default_quoting_options, !dbg !1279
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1280
  %5 = load i32, i32* %4, align 8, !dbg !1280, !tbaa !1282
  ret i32 %5, !dbg !1284
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_quoting_style(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !1285 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1289, metadata !609), !dbg !1291
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1290, metadata !609), !dbg !1292
  %3 = icmp ne %struct.quoting_options* %0, null, !dbg !1293
  %4 = select i1 %3, %struct.quoting_options* %0, %struct.quoting_options* @default_quoting_options, !dbg !1293
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !1294
  store i32 %1, i32* %5, align 8, !dbg !1296, !tbaa !1282
  ret void, !dbg !1297
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_char_quoting(%struct.quoting_options*, i8 signext, i32) local_unnamed_addr #6 !dbg !1298 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1302, metadata !609), !dbg !1310
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1303, metadata !609), !dbg !1311
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !1304, metadata !609), !dbg !1312
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1305, metadata !609), !dbg !1313
  %4 = icmp ne %struct.quoting_options* %0, null, !dbg !1314
  %5 = select i1 %4, %struct.quoting_options* %0, %struct.quoting_options* @default_quoting_options, !dbg !1314
  %6 = lshr i8 %1, 5, !dbg !1315
  %7 = zext i8 %6 to i64, !dbg !1315
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !1317
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !1306, metadata !609), !dbg !1318
  %9 = and i8 %1, 31, !dbg !1319
  %10 = zext i8 %9 to i32, !dbg !1320
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !1308, metadata !609), !dbg !1321
  %11 = load i32, i32* %8, align 4, !dbg !1322, !tbaa !729
  %12 = lshr i32 %11, %10, !dbg !1323
  %13 = and i32 %12, 1, !dbg !1324
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !1309, metadata !609), !dbg !1325
  %14 = and i32 %2, 1, !dbg !1326
  %15 = xor i32 %13, %14, !dbg !1327
  %16 = shl i32 %15, %10, !dbg !1328
  %17 = xor i32 %16, %11, !dbg !1329
  store i32 %17, i32* %8, align 4, !dbg !1329, !tbaa !729
  ret i32 %13, !dbg !1330
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_quoting_flags(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !1331 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1335, metadata !609), !dbg !1338
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1336, metadata !609), !dbg !1339
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1340
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1335, metadata !609), !dbg !1338
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1342
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1335, metadata !609), !dbg !1338
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !1343
  %6 = load i32, i32* %5, align 4, !dbg !1343, !tbaa !1344
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !1337, metadata !609), !dbg !1345
  store i32 %1, i32* %5, align 4, !dbg !1346, !tbaa !1344
  ret i32 %6, !dbg !1347
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_custom_quoting(%struct.quoting_options*, i8*, i8*) local_unnamed_addr #6 !dbg !1348 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1352, metadata !609), !dbg !1355
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1353, metadata !609), !dbg !1356
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1354, metadata !609), !dbg !1357
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1358
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1352, metadata !609), !dbg !1355
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1360
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1352, metadata !609), !dbg !1355
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1361
  store i32 10, i32* %6, align 8, !dbg !1362, !tbaa !1282
  %7 = icmp ne i8* %1, null, !dbg !1363
  %8 = icmp ne i8* %2, null, !dbg !1365
  %9 = and i1 %7, %8, !dbg !1367
  br i1 %9, label %11, label %10, !dbg !1367

; <label>:10:                                     ; preds = %3
  tail call void @abort() #14, !dbg !1368
  unreachable, !dbg !1368

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1369
  store i8* %1, i8** %12, align 8, !dbg !1370, !tbaa !1371
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1372
  store i8* %2, i8** %13, align 8, !dbg !1373, !tbaa !1374
  ret void, !dbg !1375
}

; Function Attrs: nounwind sspstrong uwtable
define i64 @quotearg_buffer(i8*, i64, i8*, i64, %struct.quoting_options* readonly) local_unnamed_addr #6 !dbg !1376 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1380, metadata !609), !dbg !1388
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1381, metadata !609), !dbg !1389
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1382, metadata !609), !dbg !1390
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !1383, metadata !609), !dbg !1391
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1384, metadata !609), !dbg !1392
  %6 = icmp ne %struct.quoting_options* %4, null, !dbg !1393
  %7 = select i1 %6, %struct.quoting_options* %4, %struct.quoting_options* @default_quoting_options, !dbg !1393
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %7, i64 0, metadata !1385, metadata !609), !dbg !1394
  %8 = tail call i32* @__errno_location() #1, !dbg !1395
  %9 = load i32, i32* %8, align 4, !dbg !1395, !tbaa !729
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !1386, metadata !609), !dbg !1396
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !1397
  %11 = load i32, i32* %10, align 8, !dbg !1397, !tbaa !1282
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !1398
  %13 = load i32, i32* %12, align 4, !dbg !1398, !tbaa !1344
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !1399
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !1400
  %16 = load i8*, i8** %15, align 8, !dbg !1400, !tbaa !1371
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !1401
  %18 = load i8*, i8** %17, align 8, !dbg !1401, !tbaa !1374
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* %14, i8* %16, i8* %18), !dbg !1402
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !1387, metadata !609), !dbg !1403
  store i32 %9, i32* %8, align 4, !dbg !1404, !tbaa !729
  ret i64 %19, !dbg !1405
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8*, i64, i8*, i64, i32, i32, i32* readonly, i8* readonly, i8* readonly) unnamed_addr #6 !dbg !1406 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1412, metadata !609), !dbg !1475
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1413, metadata !609), !dbg !1476
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1414, metadata !609), !dbg !1477
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !1415, metadata !609), !dbg !1478
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !1416, metadata !609), !dbg !1479
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !1417, metadata !609), !dbg !1480
  tail call void @llvm.dbg.value(metadata i32* %6, i64 0, metadata !1418, metadata !609), !dbg !1481
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !1419, metadata !609), !dbg !1482
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !1420, metadata !609), !dbg !1483
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1422, metadata !609), !dbg !1484
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1423, metadata !609), !dbg !1485
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1424, metadata !609), !dbg !1486
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1425, metadata !609), !dbg !1487
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1426, metadata !609), !dbg !1488
  %13 = tail call i64 @__ctype_get_mb_cur_max() #11, !dbg !1489
  %14 = icmp eq i64 %13, 1, !dbg !1490
  %15 = lshr i32 %5, 1, !dbg !1491
  %16 = trunc i32 %15 to i8, !dbg !1491
  %17 = and i8 %16, 1, !dbg !1491
  tail call void @llvm.dbg.value(metadata i8 %17, i64 0, metadata !1428, metadata !609), !dbg !1491
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1429, metadata !609), !dbg !1492
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1430, metadata !609), !dbg !1493
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1431, metadata !609), !dbg !1494
  %18 = bitcast i64* %10 to i8*
  %19 = bitcast i32* %12 to i8*
  %20 = icmp eq i32* %6, null
  %21 = icmp ne i32* %6, null
  %22 = and i32 %5, 1
  %23 = icmp eq i32 %22, 0
  %24 = and i32 %5, 4
  %25 = icmp eq i32 %24, 0
  %26 = getelementptr inbounds i8, i8* %2, i64 1
  br label %27, !dbg !1495

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
  call void @llvm.dbg.value(metadata i64 %40, i64 0, metadata !1413, metadata !609), !dbg !1476
  call void @llvm.dbg.value(metadata i8 %39, i64 0, metadata !1431, metadata !609), !dbg !1494
  call void @llvm.dbg.value(metadata i8 %38, i64 0, metadata !1430, metadata !609), !dbg !1493
  call void @llvm.dbg.value(metadata i8 %37, i64 0, metadata !1429, metadata !609), !dbg !1492
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !1428, metadata !609), !dbg !1491
  call void @llvm.dbg.value(metadata i64 %35, i64 0, metadata !1415, metadata !609), !dbg !1478
  call void @llvm.dbg.value(metadata i8 %34, i64 0, metadata !1426, metadata !609), !dbg !1488
  call void @llvm.dbg.value(metadata i64 %33, i64 0, metadata !1425, metadata !609), !dbg !1487
  call void @llvm.dbg.value(metadata i8* %32, i64 0, metadata !1424, metadata !609), !dbg !1486
  call void @llvm.dbg.value(metadata i64 %31, i64 0, metadata !1423, metadata !609), !dbg !1485
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1422, metadata !609), !dbg !1484
  call void @llvm.dbg.value(metadata i8* %30, i64 0, metadata !1420, metadata !609), !dbg !1483
  call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !1419, metadata !609), !dbg !1482
  call void @llvm.dbg.value(metadata i32 %28, i64 0, metadata !1416, metadata !609), !dbg !1479
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
  ], !dbg !1496

; <label>:41:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !1416, metadata !609), !dbg !1479
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1428, metadata !609), !dbg !1491
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !1428, metadata !609), !dbg !1491
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !1416, metadata !609), !dbg !1479
  br label %95, !dbg !1497

; <label>:42:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !1428, metadata !609), !dbg !1491
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !1416, metadata !609), !dbg !1479
  %43 = and i8 %36, 1, !dbg !1499
  %44 = icmp eq i8 %43, 0, !dbg !1499
  br i1 %44, label %45, label %95, !dbg !1497

; <label>:45:                                     ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !1501
  br i1 %46, label %95, label %47, !dbg !1505

; <label>:47:                                     ; preds = %45
  store i8 34, i8* %0, align 1, !dbg !1507, !tbaa !923
  br label %95, !dbg !1507

; <label>:48:                                     ; preds = %27, %27
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.58, i64 0, i64 0), i32 %28), !dbg !1509
  call void @llvm.dbg.value(metadata i8* %49, i64 0, metadata !1419, metadata !609), !dbg !1482
  %50 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.59, i64 0, i64 0), i32 %28), !dbg !1513
  call void @llvm.dbg.value(metadata i8* %50, i64 0, metadata !1420, metadata !609), !dbg !1483
  br label %51, !dbg !1514

; <label>:51:                                     ; preds = %27, %48
  %52 = phi i8* [ %49, %48 ], [ %29, %27 ]
  %53 = phi i8* [ %50, %48 ], [ %30, %27 ]
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !1420, metadata !609), !dbg !1483
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !1419, metadata !609), !dbg !1482
  %54 = and i8 %36, 1, !dbg !1515
  %55 = icmp eq i8 %54, 0, !dbg !1515
  br i1 %55, label %56, label %73, !dbg !1517

; <label>:56:                                     ; preds = %51
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !1424, metadata !609), !dbg !1486
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1422, metadata !609), !dbg !1484
  %57 = load i8, i8* %52, align 1, !dbg !1518, !tbaa !923
  %58 = icmp eq i8 %57, 0, !dbg !1522
  br i1 %58, label %73, label %59, !dbg !1522

; <label>:59:                                     ; preds = %56
  br label %60, !dbg !1524

; <label>:60:                                     ; preds = %59, %67
  %61 = phi i8 [ %70, %67 ], [ %57, %59 ]
  %62 = phi i8* [ %69, %67 ], [ %52, %59 ]
  %63 = phi i64 [ %68, %67 ], [ 0, %59 ]
  %64 = icmp ult i64 %63, %40, !dbg !1524
  br i1 %64, label %65, label %67, !dbg !1528

; <label>:65:                                     ; preds = %60
  %66 = getelementptr inbounds i8, i8* %0, i64 %63, !dbg !1530
  store i8 %61, i8* %66, align 1, !dbg !1530, !tbaa !923
  br label %67, !dbg !1530

; <label>:67:                                     ; preds = %65, %60
  %68 = add i64 %63, 1, !dbg !1532
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !1422, metadata !609), !dbg !1484
  %69 = getelementptr inbounds i8, i8* %62, i64 1, !dbg !1534
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !1424, metadata !609), !dbg !1486
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !1424, metadata !609), !dbg !1486
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !1422, metadata !609), !dbg !1484
  %70 = load i8, i8* %69, align 1, !dbg !1518, !tbaa !923
  %71 = icmp eq i8 %70, 0, !dbg !1522
  br i1 %71, label %72, label %60, !dbg !1522, !llvm.loop !1536

; <label>:72:                                     ; preds = %67
  br label %73, !dbg !1484

; <label>:73:                                     ; preds = %72, %56, %51
  %74 = phi i64 [ 0, %51 ], [ 0, %56 ], [ %68, %72 ]
  call void @llvm.dbg.value(metadata i64 %74, i64 0, metadata !1422, metadata !609), !dbg !1484
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1426, metadata !609), !dbg !1488
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !1424, metadata !609), !dbg !1486
  %75 = call i64 @strlen(i8* %53) #9, !dbg !1539
  call void @llvm.dbg.value(metadata i64 %75, i64 0, metadata !1425, metadata !609), !dbg !1487
  br label %95, !dbg !1540

; <label>:76:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1426, metadata !609), !dbg !1488
  br label %77, !dbg !1541

; <label>:77:                                     ; preds = %27, %76
  %78 = phi i8 [ %34, %27 ], [ 1, %76 ]
  call void @llvm.dbg.value(metadata i8 %78, i64 0, metadata !1426, metadata !609), !dbg !1488
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1428, metadata !609), !dbg !1491
  br label %79, !dbg !1542

; <label>:79:                                     ; preds = %27, %77
  %80 = phi i8 [ %34, %27 ], [ %78, %77 ]
  %81 = phi i8 [ %36, %27 ], [ 1, %77 ]
  call void @llvm.dbg.value(metadata i8 %81, i64 0, metadata !1428, metadata !609), !dbg !1491
  call void @llvm.dbg.value(metadata i8 %80, i64 0, metadata !1426, metadata !609), !dbg !1488
  %82 = and i8 %81, 1, !dbg !1543
  %83 = icmp eq i8 %82, 0, !dbg !1543
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1426, metadata !609), !dbg !1488
  %84 = select i1 %83, i8 1, i8 %80, !dbg !1545
  br label %85, !dbg !1545

; <label>:85:                                     ; preds = %79, %27
  %86 = phi i8 [ %34, %27 ], [ %84, %79 ]
  %87 = phi i8 [ %36, %27 ], [ %81, %79 ]
  call void @llvm.dbg.value(metadata i8 %87, i64 0, metadata !1428, metadata !609), !dbg !1491
  call void @llvm.dbg.value(metadata i8 %86, i64 0, metadata !1426, metadata !609), !dbg !1488
  call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !1416, metadata !609), !dbg !1479
  %88 = and i8 %87, 1, !dbg !1546
  %89 = icmp eq i8 %88, 0, !dbg !1546
  br i1 %89, label %90, label %95, !dbg !1548

; <label>:90:                                     ; preds = %85
  %91 = icmp eq i64 %40, 0, !dbg !1549
  br i1 %91, label %95, label %92, !dbg !1553

; <label>:92:                                     ; preds = %90
  store i8 39, i8* %0, align 1, !dbg !1555, !tbaa !923
  br label %95, !dbg !1555

; <label>:93:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1428, metadata !609), !dbg !1491
  br label %95, !dbg !1557

; <label>:94:                                     ; preds = %27
  call void @abort() #14, !dbg !1558
  unreachable, !dbg !1558

; <label>:95:                                     ; preds = %41, %85, %90, %92, %27, %42, %45, %47, %93, %73
  %96 = phi i32 [ 0, %93 ], [ %28, %73 ], [ 5, %47 ], [ 5, %45 ], [ 5, %42 ], [ 7, %27 ], [ 2, %92 ], [ 2, %90 ], [ 2, %85 ], [ 5, %41 ]
  %97 = phi i8* [ %29, %93 ], [ %52, %73 ], [ %29, %47 ], [ %29, %45 ], [ %29, %42 ], [ %29, %27 ], [ %29, %92 ], [ %29, %90 ], [ %29, %85 ], [ %29, %41 ]
  %98 = phi i8* [ %30, %93 ], [ %53, %73 ], [ %30, %47 ], [ %30, %45 ], [ %30, %42 ], [ %30, %27 ], [ %30, %92 ], [ %30, %90 ], [ %30, %85 ], [ %30, %41 ]
  %99 = phi i64 [ 0, %93 ], [ %74, %73 ], [ 1, %47 ], [ 1, %45 ], [ 0, %42 ], [ 0, %27 ], [ 1, %92 ], [ 1, %90 ], [ 0, %85 ], [ 0, %41 ]
  %100 = phi i8* [ %32, %93 ], [ %53, %73 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.60, i64 0, i64 0), %47 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.60, i64 0, i64 0), %45 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.60, i64 0, i64 0), %42 ], [ %32, %27 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.59, i64 0, i64 0), %92 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.59, i64 0, i64 0), %90 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.59, i64 0, i64 0), %85 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.60, i64 0, i64 0), %41 ]
  %101 = phi i64 [ %33, %93 ], [ %75, %73 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ %33, %27 ], [ 1, %92 ], [ 1, %90 ], [ 1, %85 ], [ 1, %41 ]
  %102 = phi i8 [ %34, %93 ], [ 1, %73 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ 1, %27 ], [ %86, %92 ], [ %86, %90 ], [ %86, %85 ], [ 1, %41 ]
  %103 = phi i8 [ 0, %93 ], [ %36, %73 ], [ %36, %47 ], [ %36, %45 ], [ %36, %42 ], [ 0, %27 ], [ %87, %92 ], [ %87, %90 ], [ %87, %85 ], [ 1, %41 ]
  call void @llvm.dbg.value(metadata i8 %103, i64 0, metadata !1428, metadata !609), !dbg !1491
  call void @llvm.dbg.value(metadata i8 %102, i64 0, metadata !1426, metadata !609), !dbg !1488
  call void @llvm.dbg.value(metadata i64 %101, i64 0, metadata !1425, metadata !609), !dbg !1487
  call void @llvm.dbg.value(metadata i8* %100, i64 0, metadata !1424, metadata !609), !dbg !1486
  call void @llvm.dbg.value(metadata i64 %99, i64 0, metadata !1422, metadata !609), !dbg !1484
  call void @llvm.dbg.value(metadata i8* %98, i64 0, metadata !1420, metadata !609), !dbg !1483
  call void @llvm.dbg.value(metadata i8* %97, i64 0, metadata !1419, metadata !609), !dbg !1482
  call void @llvm.dbg.value(metadata i32 %96, i64 0, metadata !1416, metadata !609), !dbg !1479
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1421, metadata !609), !dbg !1559
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
  br label %123, !dbg !1560

; <label>:123:                                    ; preds = %587, %95
  %124 = phi i64 [ 0, %95 ], [ %596, %587 ]
  %125 = phi i64 [ %99, %95 ], [ %589, %587 ]
  %126 = phi i64 [ %31, %95 ], [ %590, %587 ]
  %127 = phi i64 [ %35, %95 ], [ %591, %587 ]
  %128 = phi i8 [ %37, %95 ], [ %592, %587 ]
  %129 = phi i8 [ %38, %95 ], [ %593, %587 ]
  %130 = phi i8 [ %39, %95 ], [ %594, %587 ]
  %131 = phi i64 [ %40, %95 ], [ %595, %587 ]
  call void @llvm.dbg.value(metadata i64 %131, i64 0, metadata !1413, metadata !609), !dbg !1476
  call void @llvm.dbg.value(metadata i8 %130, i64 0, metadata !1431, metadata !609), !dbg !1494
  call void @llvm.dbg.value(metadata i8 %129, i64 0, metadata !1430, metadata !609), !dbg !1493
  call void @llvm.dbg.value(metadata i8 %128, i64 0, metadata !1429, metadata !609), !dbg !1492
  call void @llvm.dbg.value(metadata i64 %127, i64 0, metadata !1415, metadata !609), !dbg !1478
  call void @llvm.dbg.value(metadata i64 %126, i64 0, metadata !1423, metadata !609), !dbg !1485
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !1422, metadata !609), !dbg !1484
  call void @llvm.dbg.value(metadata i64 %124, i64 0, metadata !1421, metadata !609), !dbg !1559
  %132 = icmp eq i64 %127, -1, !dbg !1561
  br i1 %132, label %135, label %133, !dbg !1563

; <label>:133:                                    ; preds = %123
  %134 = icmp eq i64 %124, %127, !dbg !1564
  br i1 %134, label %597, label %139, !dbg !1566

; <label>:135:                                    ; preds = %123
  %136 = getelementptr inbounds i8, i8* %2, i64 %124, !dbg !1568
  %137 = load i8, i8* %136, align 1, !dbg !1568, !tbaa !923
  %138 = icmp eq i8 %137, 0, !dbg !1570
  br i1 %138, label %597, label %139, !dbg !1566

; <label>:139:                                    ; preds = %133, %135
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1437, metadata !609), !dbg !1571
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1438, metadata !609), !dbg !1572
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1439, metadata !609), !dbg !1573
  br i1 %109, label %140, label %155, !dbg !1574

; <label>:140:                                    ; preds = %139
  %141 = add i64 %124, %101, !dbg !1576
  %142 = and i1 %110, %132, !dbg !1578
  br i1 %142, label %143, label %145, !dbg !1578

; <label>:143:                                    ; preds = %140
  %144 = call i64 @strlen(i8* %2) #9, !dbg !1579
  call void @llvm.dbg.value(metadata i64 %144, i64 0, metadata !1415, metadata !609), !dbg !1478
  br label %145, !dbg !1580

; <label>:145:                                    ; preds = %140, %143
  %146 = phi i64 [ %144, %143 ], [ %127, %140 ]
  call void @llvm.dbg.value(metadata i64 %146, i64 0, metadata !1415, metadata !609), !dbg !1478
  %147 = icmp ugt i64 %141, %146, !dbg !1582
  br i1 %147, label %155, label %148, !dbg !1584

; <label>:148:                                    ; preds = %145
  %149 = getelementptr inbounds i8, i8* %2, i64 %124, !dbg !1585
  %150 = call i32 @memcmp(i8* %149, i8* %100, i64 %101) #9, !dbg !1586
  %151 = icmp ne i32 %150, 0, !dbg !1587
  %152 = or i1 %151, %112, !dbg !1587
  %153 = xor i1 %151, true, !dbg !1587
  %154 = zext i1 %153 to i8, !dbg !1587
  br i1 %152, label %155, label %644, !dbg !1587

; <label>:155:                                    ; preds = %148, %145, %139
  %156 = phi i64 [ %146, %148 ], [ %146, %145 ], [ %127, %139 ]
  %157 = phi i8 [ %154, %148 ], [ 0, %145 ], [ 0, %139 ]
  call void @llvm.dbg.value(metadata i8 %157, i64 0, metadata !1437, metadata !609), !dbg !1571
  call void @llvm.dbg.value(metadata i64 %156, i64 0, metadata !1415, metadata !609), !dbg !1478
  %158 = getelementptr inbounds i8, i8* %2, i64 %124, !dbg !1589
  %159 = load i8, i8* %158, align 1, !dbg !1589, !tbaa !923
  call void @llvm.dbg.value(metadata i8 %159, i64 0, metadata !1432, metadata !609), !dbg !1590
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
  ], !dbg !1591

; <label>:160:                                    ; preds = %155
  br i1 %105, label %161, label %209, !dbg !1592

; <label>:161:                                    ; preds = %160
  br i1 %112, label %162, label %644, !dbg !1593

; <label>:162:                                    ; preds = %161
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1438, metadata !609), !dbg !1572
  %163 = and i8 %128, 1, !dbg !1598
  %164 = icmp eq i8 %163, 0, !dbg !1598
  %165 = and i1 %114, %164, !dbg !1601
  br i1 %165, label %166, label %182, !dbg !1601

; <label>:166:                                    ; preds = %162
  %167 = icmp ult i64 %125, %131, !dbg !1603
  br i1 %167, label %168, label %170, !dbg !1608

; <label>:168:                                    ; preds = %166
  %169 = getelementptr inbounds i8, i8* %0, i64 %125, !dbg !1610
  store i8 39, i8* %169, align 1, !dbg !1610, !tbaa !923
  br label %170, !dbg !1610

; <label>:170:                                    ; preds = %168, %166
  %171 = add i64 %125, 1, !dbg !1612
  call void @llvm.dbg.value(metadata i64 %171, i64 0, metadata !1422, metadata !609), !dbg !1484
  %172 = icmp ult i64 %171, %131, !dbg !1614
  br i1 %172, label %173, label %175, !dbg !1618

; <label>:173:                                    ; preds = %170
  %174 = getelementptr inbounds i8, i8* %0, i64 %171, !dbg !1620
  store i8 36, i8* %174, align 1, !dbg !1620, !tbaa !923
  br label %175, !dbg !1620

; <label>:175:                                    ; preds = %173, %170
  %176 = add i64 %125, 2, !dbg !1622
  call void @llvm.dbg.value(metadata i64 %176, i64 0, metadata !1422, metadata !609), !dbg !1484
  %177 = icmp ult i64 %176, %131, !dbg !1624
  br i1 %177, label %178, label %180, !dbg !1628

; <label>:178:                                    ; preds = %175
  %179 = getelementptr inbounds i8, i8* %0, i64 %176, !dbg !1630
  store i8 39, i8* %179, align 1, !dbg !1630, !tbaa !923
  br label %180, !dbg !1630

; <label>:180:                                    ; preds = %178, %175
  %181 = add i64 %125, 3, !dbg !1632
  call void @llvm.dbg.value(metadata i64 %181, i64 0, metadata !1422, metadata !609), !dbg !1484
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1429, metadata !609), !dbg !1492
  br label %182, !dbg !1634

; <label>:182:                                    ; preds = %162, %180
  %183 = phi i64 [ %181, %180 ], [ %125, %162 ]
  %184 = phi i8 [ 1, %180 ], [ %128, %162 ]
  call void @llvm.dbg.value(metadata i8 %184, i64 0, metadata !1429, metadata !609), !dbg !1492
  call void @llvm.dbg.value(metadata i64 %183, i64 0, metadata !1422, metadata !609), !dbg !1484
  %185 = icmp ult i64 %183, %131, !dbg !1636
  br i1 %185, label %186, label %188, !dbg !1640

; <label>:186:                                    ; preds = %182
  %187 = getelementptr inbounds i8, i8* %0, i64 %183, !dbg !1642
  store i8 92, i8* %187, align 1, !dbg !1642, !tbaa !923
  br label %188, !dbg !1642

; <label>:188:                                    ; preds = %186, %182
  %189 = add i64 %183, 1, !dbg !1644
  call void @llvm.dbg.value(metadata i64 %189, i64 0, metadata !1422, metadata !609), !dbg !1484
  br i1 %106, label %190, label %476, !dbg !1646

; <label>:190:                                    ; preds = %188
  %191 = add i64 %124, 1, !dbg !1648
  %192 = icmp ult i64 %191, %156, !dbg !1650
  br i1 %192, label %193, label %476, !dbg !1651

; <label>:193:                                    ; preds = %190
  %194 = getelementptr inbounds i8, i8* %2, i64 %191, !dbg !1652
  %195 = load i8, i8* %194, align 1, !dbg !1652, !tbaa !923
  %196 = add i8 %195, -48, !dbg !1654
  %197 = icmp ult i8 %196, 10, !dbg !1654
  br i1 %197, label %198, label %476, !dbg !1654

; <label>:198:                                    ; preds = %193
  %199 = icmp ult i64 %189, %131, !dbg !1655
  br i1 %199, label %200, label %202, !dbg !1660

; <label>:200:                                    ; preds = %198
  %201 = getelementptr inbounds i8, i8* %0, i64 %189, !dbg !1662
  store i8 48, i8* %201, align 1, !dbg !1662, !tbaa !923
  br label %202, !dbg !1662

; <label>:202:                                    ; preds = %200, %198
  %203 = add i64 %183, 2, !dbg !1664
  call void @llvm.dbg.value(metadata i64 %203, i64 0, metadata !1422, metadata !609), !dbg !1484
  %204 = icmp ult i64 %203, %131, !dbg !1666
  br i1 %204, label %205, label %207, !dbg !1670

; <label>:205:                                    ; preds = %202
  %206 = getelementptr inbounds i8, i8* %0, i64 %203, !dbg !1672
  store i8 48, i8* %206, align 1, !dbg !1672, !tbaa !923
  br label %207, !dbg !1672

; <label>:207:                                    ; preds = %205, %202
  %208 = add i64 %183, 3, !dbg !1674
  call void @llvm.dbg.value(metadata i64 %208, i64 0, metadata !1422, metadata !609), !dbg !1484
  br label %476, !dbg !1676

; <label>:209:                                    ; preds = %160
  br i1 %23, label %476, label %587, !dbg !1677

; <label>:210:                                    ; preds = %155
  switch i32 %96, label %476 [
    i32 2, label %211
    i32 5, label %212
  ], !dbg !1678

; <label>:211:                                    ; preds = %210
  br i1 %112, label %476, label %644, !dbg !1679

; <label>:212:                                    ; preds = %210
  br i1 %25, label %476, label %213, !dbg !1681

; <label>:213:                                    ; preds = %212
  %214 = add i64 %124, 2, !dbg !1683
  %215 = icmp ult i64 %214, %156, !dbg !1685
  br i1 %215, label %216, label %476, !dbg !1686

; <label>:216:                                    ; preds = %213
  %217 = add i64 %124, 1, !dbg !1687
  %218 = getelementptr inbounds i8, i8* %2, i64 %217, !dbg !1689
  %219 = load i8, i8* %218, align 1, !dbg !1689, !tbaa !923
  %220 = icmp eq i8 %219, 63, !dbg !1690
  br i1 %220, label %221, label %476, !dbg !1691

; <label>:221:                                    ; preds = %216
  %222 = getelementptr inbounds i8, i8* %2, i64 %214, !dbg !1693
  %223 = load i8, i8* %222, align 1, !dbg !1693, !tbaa !923
  %224 = sext i8 %223 to i32, !dbg !1693
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
  ], !dbg !1694

; <label>:225:                                    ; preds = %221, %221, %221, %221, %221, %221, %221, %221, %221
  br i1 %112, label %226, label %644, !dbg !1695

; <label>:226:                                    ; preds = %225
  call void @llvm.dbg.value(metadata i8 %223, i64 0, metadata !1432, metadata !609), !dbg !1590
  call void @llvm.dbg.value(metadata i64 %214, i64 0, metadata !1421, metadata !609), !dbg !1559
  %227 = icmp ult i64 %125, %131, !dbg !1697
  br i1 %227, label %228, label %230, !dbg !1701

; <label>:228:                                    ; preds = %226
  %229 = getelementptr inbounds i8, i8* %0, i64 %125, !dbg !1703
  store i8 63, i8* %229, align 1, !dbg !1703, !tbaa !923
  br label %230, !dbg !1703

; <label>:230:                                    ; preds = %228, %226
  %231 = add i64 %125, 1, !dbg !1705
  call void @llvm.dbg.value(metadata i64 %231, i64 0, metadata !1422, metadata !609), !dbg !1484
  %232 = icmp ult i64 %231, %131, !dbg !1707
  br i1 %232, label %233, label %235, !dbg !1711

; <label>:233:                                    ; preds = %230
  %234 = getelementptr inbounds i8, i8* %0, i64 %231, !dbg !1713
  store i8 34, i8* %234, align 1, !dbg !1713, !tbaa !923
  br label %235, !dbg !1713

; <label>:235:                                    ; preds = %233, %230
  %236 = add i64 %125, 2, !dbg !1715
  call void @llvm.dbg.value(metadata i64 %236, i64 0, metadata !1422, metadata !609), !dbg !1484
  %237 = icmp ult i64 %236, %131, !dbg !1717
  br i1 %237, label %238, label %240, !dbg !1721

; <label>:238:                                    ; preds = %235
  %239 = getelementptr inbounds i8, i8* %0, i64 %236, !dbg !1723
  store i8 34, i8* %239, align 1, !dbg !1723, !tbaa !923
  br label %240, !dbg !1723

; <label>:240:                                    ; preds = %238, %235
  %241 = add i64 %125, 3, !dbg !1725
  call void @llvm.dbg.value(metadata i64 %241, i64 0, metadata !1422, metadata !609), !dbg !1484
  %242 = icmp ult i64 %241, %131, !dbg !1727
  br i1 %242, label %243, label %245, !dbg !1731

; <label>:243:                                    ; preds = %240
  %244 = getelementptr inbounds i8, i8* %0, i64 %241, !dbg !1733
  store i8 63, i8* %244, align 1, !dbg !1733, !tbaa !923
  br label %245, !dbg !1733

; <label>:245:                                    ; preds = %243, %240
  %246 = add i64 %125, 4, !dbg !1735
  call void @llvm.dbg.value(metadata i64 %246, i64 0, metadata !1422, metadata !609), !dbg !1484
  br label %476, !dbg !1737

; <label>:247:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 98, i64 0, metadata !1436, metadata !609), !dbg !1738
  br label %257, !dbg !1739

; <label>:248:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 102, i64 0, metadata !1436, metadata !609), !dbg !1738
  br label %257, !dbg !1740

; <label>:249:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 114, i64 0, metadata !1436, metadata !609), !dbg !1738
  br label %255, !dbg !1741

; <label>:250:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 116, i64 0, metadata !1436, metadata !609), !dbg !1738
  br label %255, !dbg !1742

; <label>:251:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 118, i64 0, metadata !1436, metadata !609), !dbg !1738
  br label %257, !dbg !1743

; <label>:252:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 %159, i64 0, metadata !1436, metadata !609), !dbg !1738
  br i1 %114, label %253, label %254, !dbg !1744

; <label>:253:                                    ; preds = %252
  br i1 %112, label %542, label %644, !dbg !1745

; <label>:254:                                    ; preds = %252
  br i1 %122, label %542, label %255, !dbg !1748

; <label>:255:                                    ; preds = %254, %155, %250, %249
  %256 = phi i8 [ 92, %254 ], [ 116, %250 ], [ 114, %249 ], [ 110, %155 ]
  call void @llvm.dbg.value(metadata i8 %256, i64 0, metadata !1436, metadata !609), !dbg !1738
  br i1 %118, label %257, label %644, !dbg !1750

; <label>:257:                                    ; preds = %255, %155, %251, %248, %247
  %258 = phi i8 [ %256, %255 ], [ 118, %251 ], [ 102, %248 ], [ 98, %247 ], [ 97, %155 ]
  call void @llvm.dbg.value(metadata i8 %258, i64 0, metadata !1436, metadata !609), !dbg !1738
  br i1 %105, label %503, label %476, !dbg !1752

; <label>:259:                                    ; preds = %155, %155
  %260 = icmp eq i64 %156, -1, !dbg !1753
  br i1 %260, label %261, label %266, !dbg !1755

; <label>:261:                                    ; preds = %259
  %262 = load i8, i8* %26, align 1, !dbg !1756, !tbaa !923
  %263 = icmp ne i8 %262, 0, !dbg !1758
  %264 = icmp ne i64 %124, 0, !dbg !1759
  %265 = or i1 %264, %263, !dbg !1761
  br i1 %265, label %476, label %272, !dbg !1761

; <label>:266:                                    ; preds = %259
  %267 = icmp ne i64 %156, 1, !dbg !1762
  %268 = icmp ne i64 %124, 0, !dbg !1759
  %269 = or i1 %268, %267, !dbg !1764
  br i1 %269, label %476, label %272, !dbg !1764

; <label>:270:                                    ; preds = %155, %155
  %271 = icmp eq i64 %124, 0, !dbg !1759
  br i1 %271, label %272, label %476, !dbg !1766

; <label>:272:                                    ; preds = %270, %266, %261, %155
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1439, metadata !609), !dbg !1573
  br label %273, !dbg !1767

; <label>:273:                                    ; preds = %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %272
  %274 = phi i8 [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 1, %272 ]
  call void @llvm.dbg.value(metadata i8 %274, i64 0, metadata !1439, metadata !609), !dbg !1573
  br i1 %118, label %476, label %644, !dbg !1768

; <label>:275:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1430, metadata !609), !dbg !1493
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1439, metadata !609), !dbg !1573
  br i1 %114, label %276, label %476, !dbg !1770

; <label>:276:                                    ; preds = %275
  br i1 %112, label %277, label %644, !dbg !1771

; <label>:277:                                    ; preds = %276
  %278 = icmp eq i64 %131, 0, !dbg !1774
  %279 = icmp ne i64 %126, 0, !dbg !1776
  %280 = or i1 %279, %278, !dbg !1778
  call void @llvm.dbg.value(metadata i64 %131, i64 0, metadata !1423, metadata !609), !dbg !1485
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1413, metadata !609), !dbg !1476
  %281 = select i1 %280, i64 %126, i64 %131, !dbg !1778
  %282 = select i1 %280, i64 %131, i64 0, !dbg !1778
  call void @llvm.dbg.value(metadata i64 %282, i64 0, metadata !1413, metadata !609), !dbg !1476
  call void @llvm.dbg.value(metadata i64 %281, i64 0, metadata !1423, metadata !609), !dbg !1485
  %283 = icmp ult i64 %125, %282, !dbg !1779
  br i1 %283, label %284, label %286, !dbg !1783

; <label>:284:                                    ; preds = %277
  %285 = getelementptr inbounds i8, i8* %0, i64 %125, !dbg !1785
  store i8 39, i8* %285, align 1, !dbg !1785, !tbaa !923
  br label %286, !dbg !1785

; <label>:286:                                    ; preds = %284, %277
  %287 = add i64 %125, 1, !dbg !1787
  call void @llvm.dbg.value(metadata i64 %287, i64 0, metadata !1422, metadata !609), !dbg !1484
  %288 = icmp ult i64 %287, %282, !dbg !1789
  br i1 %288, label %289, label %291, !dbg !1793

; <label>:289:                                    ; preds = %286
  %290 = getelementptr inbounds i8, i8* %0, i64 %287, !dbg !1795
  store i8 92, i8* %290, align 1, !dbg !1795, !tbaa !923
  br label %291, !dbg !1795

; <label>:291:                                    ; preds = %289, %286
  %292 = add i64 %125, 2, !dbg !1797
  call void @llvm.dbg.value(metadata i64 %292, i64 0, metadata !1422, metadata !609), !dbg !1484
  %293 = icmp ult i64 %292, %282, !dbg !1799
  br i1 %293, label %294, label %296, !dbg !1803

; <label>:294:                                    ; preds = %291
  %295 = getelementptr inbounds i8, i8* %0, i64 %292, !dbg !1805
  store i8 39, i8* %295, align 1, !dbg !1805, !tbaa !923
  br label %296, !dbg !1805

; <label>:296:                                    ; preds = %294, %291
  %297 = add i64 %125, 3, !dbg !1807
  call void @llvm.dbg.value(metadata i64 %297, i64 0, metadata !1422, metadata !609), !dbg !1484
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1429, metadata !609), !dbg !1492
  br label %476, !dbg !1809

; <label>:298:                                    ; preds = %155
  br i1 %14, label %299, label %308, !dbg !1810

; <label>:299:                                    ; preds = %298
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1440, metadata !609), !dbg !1811
  %300 = tail call i16** @__ctype_b_loc() #1, !dbg !1812
  %301 = load i16*, i16** %300, align 8, !dbg !1812, !tbaa !617
  %302 = zext i8 %159 to i64, !dbg !1812
  %303 = getelementptr inbounds i16, i16* %301, i64 %302, !dbg !1812
  %304 = load i16, i16* %303, align 2, !dbg !1812, !tbaa !1814
  %305 = lshr i16 %304, 14, !dbg !1816
  %306 = trunc i16 %305 to i8, !dbg !1816
  %307 = and i8 %306, 1, !dbg !1816
  call void @llvm.dbg.value(metadata i8 %307, i64 0, metadata !1443, metadata !609), !dbg !1817
  br label %368, !dbg !1818

; <label>:308:                                    ; preds = %298
  call void @llvm.lifetime.start(i64 8, i8* nonnull %18) #11, !dbg !1819
  store i64 0, i64* %10, align 8, !dbg !1820
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1440, metadata !609), !dbg !1811
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1443, metadata !609), !dbg !1817
  %309 = icmp eq i64 %156, -1, !dbg !1821
  br i1 %309, label %310, label %312, !dbg !1823, !llvm.loop !1824

; <label>:310:                                    ; preds = %308
  %311 = call i64 @strlen(i8* nonnull %2) #9, !dbg !1827
  call void @llvm.dbg.value(metadata i64 %311, i64 0, metadata !1415, metadata !609), !dbg !1478
  br label %312, !dbg !1828, !llvm.loop !1824

; <label>:312:                                    ; preds = %310, %308
  %313 = phi i64 [ %156, %308 ], [ %311, %310 ]
  br label %314, !dbg !1817

; <label>:314:                                    ; preds = %312, %355
  %315 = phi i64 [ %360, %355 ], [ 0, %312 ]
  %316 = phi i8 [ %359, %355 ], [ 1, %312 ]
  call void @llvm.dbg.value(metadata i8 %316, i64 0, metadata !1443, metadata !609), !dbg !1817
  call void @llvm.dbg.value(metadata i64 %315, i64 0, metadata !1440, metadata !609), !dbg !1811
  call void @llvm.dbg.value(metadata i64 %313, i64 0, metadata !1415, metadata !609), !dbg !1478
  call void @llvm.lifetime.start(i64 4, i8* nonnull %19) #11, !dbg !1829
  %317 = add i64 %315, %124, !dbg !1830
  %318 = getelementptr inbounds i8, i8* %2, i64 %317, !dbg !1831
  %319 = sub i64 %313, %317, !dbg !1832
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !1444, metadata !980), !dbg !1833
  call void @llvm.dbg.value(metadata i32* %12, i64 0, metadata !1461, metadata !980), !dbg !1834
  %320 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %318, i64 %319, %struct.__mbstate_t* nonnull %11) #11, !dbg !1835
  call void @llvm.dbg.value(metadata i64 %320, i64 0, metadata !1464, metadata !609), !dbg !1836
  switch i64 %320, label %334 [
    i64 0, label %350
    i64 -1, label %347
    i64 -2, label %321
  ], !dbg !1837

; <label>:321:                                    ; preds = %314
  call void @llvm.dbg.value(metadata i64 %315, i64 0, metadata !1440, metadata !609), !dbg !1811
  %322 = icmp ugt i64 %313, %317, !dbg !1838
  br i1 %322, label %323, label %351, !dbg !1841

; <label>:323:                                    ; preds = %321
  br label %324, !dbg !1842

; <label>:324:                                    ; preds = %323, %330
  %325 = phi i64 [ %332, %330 ], [ %317, %323 ]
  %326 = phi i64 [ %331, %330 ], [ %315, %323 ]
  %327 = getelementptr inbounds i8, i8* %2, i64 %325, !dbg !1842
  %328 = load i8, i8* %327, align 1, !dbg !1842, !tbaa !923
  %329 = icmp eq i8 %328, 0, !dbg !1844
  br i1 %329, label %348, label %330, !dbg !1845

; <label>:330:                                    ; preds = %324
  %331 = add i64 %326, 1, !dbg !1847
  call void @llvm.dbg.value(metadata i64 %331, i64 0, metadata !1440, metadata !609), !dbg !1811
  call void @llvm.dbg.value(metadata i64 %331, i64 0, metadata !1440, metadata !609), !dbg !1811
  %332 = add i64 %331, %124, !dbg !1848
  %333 = icmp ult i64 %332, %313, !dbg !1838
  br i1 %333, label %324, label %348, !dbg !1841, !llvm.loop !1849

; <label>:334:                                    ; preds = %314
  %335 = icmp ugt i64 %320, 1, !dbg !1851
  %336 = and i1 %116, %335, !dbg !1855
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1465, metadata !609), !dbg !1856
  br i1 %336, label %337, label %355, !dbg !1855

; <label>:337:                                    ; preds = %334
  br label %338, !dbg !1857

; <label>:338:                                    ; preds = %337, %344
  %339 = phi i64 [ %345, %344 ], [ 1, %337 ]
  %340 = add i64 %339, %317, !dbg !1857
  %341 = getelementptr inbounds i8, i8* %2, i64 %340, !dbg !1858
  %342 = load i8, i8* %341, align 1, !dbg !1858, !tbaa !923
  %343 = sext i8 %342 to i32, !dbg !1858
  switch i32 %343, label %344 [
    i32 91, label %367
    i32 92, label %367
    i32 94, label %367
    i32 96, label %367
    i32 124, label %367
  ], !dbg !1859

; <label>:344:                                    ; preds = %338
  %345 = add nuw i64 %339, 1, !dbg !1860
  call void @llvm.dbg.value(metadata i64 %345, i64 0, metadata !1465, metadata !609), !dbg !1856
  call void @llvm.dbg.value(metadata i64 %345, i64 0, metadata !1465, metadata !609), !dbg !1856
  %346 = icmp ult i64 %345, %320, !dbg !1851
  br i1 %346, label %338, label %354, !dbg !1862, !llvm.loop !1864

; <label>:347:                                    ; preds = %314
  br label %351, !dbg !1817

; <label>:348:                                    ; preds = %324, %330
  %349 = phi i64 [ %331, %330 ], [ %326, %324 ]
  br label %351, !dbg !1817

; <label>:350:                                    ; preds = %314
  br label %351, !dbg !1817

; <label>:351:                                    ; preds = %350, %348, %347, %321
  %352 = phi i64 [ %315, %321 ], [ %315, %347 ], [ %349, %348 ], [ %315, %350 ]
  %353 = phi i8 [ 0, %321 ], [ 0, %347 ], [ 0, %348 ], [ %316, %350 ]
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !1443, metadata !609), !dbg !1817
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !1440, metadata !609), !dbg !1811
  call void @llvm.lifetime.end(i64 4, i8* nonnull %19) #11, !dbg !1867
  br label %364

; <label>:354:                                    ; preds = %344
  br label %355, !dbg !1868

; <label>:355:                                    ; preds = %354, %334
  %356 = load i32, i32* %12, align 4, !dbg !1868, !tbaa !729
  call void @llvm.dbg.value(metadata i32 %356, i64 0, metadata !1461, metadata !609), !dbg !1834
  %357 = call i32 @iswprint(i32 %356) #11, !dbg !1870
  %358 = icmp eq i32 %357, 0, !dbg !1870
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1443, metadata !609), !dbg !1817
  %359 = select i1 %358, i8 0, i8 %316, !dbg !1871
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !1443, metadata !609), !dbg !1817
  %360 = add i64 %320, %315, !dbg !1872
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !1440, metadata !609), !dbg !1811
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !1443, metadata !609), !dbg !1817
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !1440, metadata !609), !dbg !1811
  call void @llvm.lifetime.end(i64 4, i8* nonnull %19) #11, !dbg !1867
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !1444, metadata !980), !dbg !1833
  %361 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #9, !dbg !1873
  %362 = icmp eq i32 %361, 0, !dbg !1874
  br i1 %362, label %314, label %363, !dbg !1875, !llvm.loop !1824

; <label>:363:                                    ; preds = %355
  br label %364, !dbg !1877

; <label>:364:                                    ; preds = %363, %351
  %365 = phi i8 [ %353, %351 ], [ %359, %363 ]
  %366 = phi i64 [ %352, %351 ], [ %360, %363 ]
  call void @llvm.lifetime.end(i64 8, i8* nonnull %18) #11, !dbg !1877
  br label %368

; <label>:367:                                    ; preds = %338, %338, %338, %338, %338
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !1443, metadata !609), !dbg !1817
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !1440, metadata !609), !dbg !1811
  call void @llvm.lifetime.end(i64 4, i8* nonnull %19) #11, !dbg !1867
  call void @llvm.lifetime.end(i64 8, i8* nonnull %18) #11, !dbg !1877
  br label %649

; <label>:368:                                    ; preds = %364, %299
  %369 = phi i64 [ %156, %299 ], [ %313, %364 ]
  %370 = phi i64 [ 1, %299 ], [ %366, %364 ]
  %371 = phi i8 [ %307, %299 ], [ %365, %364 ]
  call void @llvm.dbg.value(metadata i8 %371, i64 0, metadata !1443, metadata !609), !dbg !1817
  call void @llvm.dbg.value(metadata i64 %370, i64 0, metadata !1440, metadata !609), !dbg !1811
  call void @llvm.dbg.value(metadata i64 %369, i64 0, metadata !1415, metadata !609), !dbg !1478
  %372 = and i8 %371, 1, !dbg !1878
  %373 = icmp ne i8 %372, 0, !dbg !1878
  call void @llvm.dbg.value(metadata i8 %372, i64 0, metadata !1439, metadata !609), !dbg !1573
  %374 = icmp ult i64 %370, 2, !dbg !1879
  %375 = or i1 %373, %113, !dbg !1880
  %376 = and i1 %374, %375, !dbg !1882
  br i1 %376, label %476, label %377, !dbg !1882

; <label>:377:                                    ; preds = %368
  %378 = add i64 %370, %124, !dbg !1883
  call void @llvm.dbg.value(metadata i64 %378, i64 0, metadata !1472, metadata !609), !dbg !1884
  br label %379, !dbg !1885

; <label>:379:                                    ; preds = %472, %377
  %380 = phi i64 [ %124, %377 ], [ %447, %472 ]
  %381 = phi i64 [ %125, %377 ], [ %473, %472 ]
  %382 = phi i8 [ %128, %377 ], [ %468, %472 ]
  %383 = phi i8 [ %159, %377 ], [ %475, %472 ]
  %384 = phi i8 [ %157, %377 ], [ %445, %472 ]
  %385 = phi i8 [ 0, %377 ], [ %446, %472 ]
  call void @llvm.dbg.value(metadata i8 %385, i64 0, metadata !1438, metadata !609), !dbg !1572
  call void @llvm.dbg.value(metadata i8 %384, i64 0, metadata !1437, metadata !609), !dbg !1571
  call void @llvm.dbg.value(metadata i8 %383, i64 0, metadata !1432, metadata !609), !dbg !1590
  call void @llvm.dbg.value(metadata i8 %382, i64 0, metadata !1429, metadata !609), !dbg !1492
  call void @llvm.dbg.value(metadata i64 %381, i64 0, metadata !1422, metadata !609), !dbg !1484
  call void @llvm.dbg.value(metadata i64 %380, i64 0, metadata !1421, metadata !609), !dbg !1559
  br i1 %375, label %432, label %386, !dbg !1886

; <label>:386:                                    ; preds = %379
  br i1 %112, label %387, label %643, !dbg !1891

; <label>:387:                                    ; preds = %386
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1438, metadata !609), !dbg !1572
  %388 = and i8 %382, 1, !dbg !1895
  %389 = icmp eq i8 %388, 0, !dbg !1895
  %390 = and i1 %114, %389, !dbg !1898
  br i1 %390, label %391, label %407, !dbg !1898

; <label>:391:                                    ; preds = %387
  %392 = icmp ult i64 %381, %131, !dbg !1900
  br i1 %392, label %393, label %395, !dbg !1905

; <label>:393:                                    ; preds = %391
  %394 = getelementptr inbounds i8, i8* %0, i64 %381, !dbg !1907
  store i8 39, i8* %394, align 1, !dbg !1907, !tbaa !923
  br label %395, !dbg !1907

; <label>:395:                                    ; preds = %393, %391
  %396 = add i64 %381, 1, !dbg !1909
  call void @llvm.dbg.value(metadata i64 %396, i64 0, metadata !1422, metadata !609), !dbg !1484
  %397 = icmp ult i64 %396, %131, !dbg !1911
  br i1 %397, label %398, label %400, !dbg !1915

; <label>:398:                                    ; preds = %395
  %399 = getelementptr inbounds i8, i8* %0, i64 %396, !dbg !1917
  store i8 36, i8* %399, align 1, !dbg !1917, !tbaa !923
  br label %400, !dbg !1917

; <label>:400:                                    ; preds = %398, %395
  %401 = add i64 %381, 2, !dbg !1919
  call void @llvm.dbg.value(metadata i64 %401, i64 0, metadata !1422, metadata !609), !dbg !1484
  %402 = icmp ult i64 %401, %131, !dbg !1921
  br i1 %402, label %403, label %405, !dbg !1925

; <label>:403:                                    ; preds = %400
  %404 = getelementptr inbounds i8, i8* %0, i64 %401, !dbg !1927
  store i8 39, i8* %404, align 1, !dbg !1927, !tbaa !923
  br label %405, !dbg !1927

; <label>:405:                                    ; preds = %403, %400
  %406 = add i64 %381, 3, !dbg !1929
  call void @llvm.dbg.value(metadata i64 %406, i64 0, metadata !1422, metadata !609), !dbg !1484
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1429, metadata !609), !dbg !1492
  br label %407, !dbg !1931

; <label>:407:                                    ; preds = %387, %405
  %408 = phi i64 [ %406, %405 ], [ %381, %387 ]
  %409 = phi i8 [ 1, %405 ], [ %382, %387 ]
  call void @llvm.dbg.value(metadata i8 %409, i64 0, metadata !1429, metadata !609), !dbg !1492
  call void @llvm.dbg.value(metadata i64 %408, i64 0, metadata !1422, metadata !609), !dbg !1484
  %410 = icmp ult i64 %408, %131, !dbg !1933
  br i1 %410, label %411, label %413, !dbg !1937

; <label>:411:                                    ; preds = %407
  %412 = getelementptr inbounds i8, i8* %0, i64 %408, !dbg !1939
  store i8 92, i8* %412, align 1, !dbg !1939, !tbaa !923
  br label %413, !dbg !1939

; <label>:413:                                    ; preds = %411, %407
  %414 = add i64 %408, 1, !dbg !1941
  call void @llvm.dbg.value(metadata i64 %414, i64 0, metadata !1422, metadata !609), !dbg !1484
  %415 = icmp ult i64 %414, %131, !dbg !1943
  br i1 %415, label %416, label %420, !dbg !1947

; <label>:416:                                    ; preds = %413
  %417 = lshr i8 %383, 6, !dbg !1949
  %418 = or i8 %417, 48, !dbg !1949
  %419 = getelementptr inbounds i8, i8* %0, i64 %414, !dbg !1949
  store i8 %418, i8* %419, align 1, !dbg !1949, !tbaa !923
  br label %420, !dbg !1949

; <label>:420:                                    ; preds = %416, %413
  %421 = add i64 %408, 2, !dbg !1951
  call void @llvm.dbg.value(metadata i64 %421, i64 0, metadata !1422, metadata !609), !dbg !1484
  %422 = icmp ult i64 %421, %131, !dbg !1953
  br i1 %422, label %423, label %428, !dbg !1957

; <label>:423:                                    ; preds = %420
  %424 = lshr i8 %383, 3, !dbg !1959
  %425 = and i8 %424, 7, !dbg !1959
  %426 = or i8 %425, 48, !dbg !1959
  %427 = getelementptr inbounds i8, i8* %0, i64 %421, !dbg !1959
  store i8 %426, i8* %427, align 1, !dbg !1959, !tbaa !923
  br label %428, !dbg !1959

; <label>:428:                                    ; preds = %423, %420
  %429 = add i64 %408, 3, !dbg !1961
  call void @llvm.dbg.value(metadata i64 %429, i64 0, metadata !1422, metadata !609), !dbg !1484
  %430 = and i8 %383, 7, !dbg !1963
  %431 = or i8 %430, 48, !dbg !1964
  call void @llvm.dbg.value(metadata i8 %431, i64 0, metadata !1432, metadata !609), !dbg !1590
  br label %441, !dbg !1965

; <label>:432:                                    ; preds = %379
  %433 = and i8 %384, 1, !dbg !1966
  %434 = icmp eq i8 %433, 0, !dbg !1966
  br i1 %434, label %441, label %435, !dbg !1968

; <label>:435:                                    ; preds = %432
  %436 = icmp ult i64 %381, %131, !dbg !1969
  br i1 %436, label %437, label %439, !dbg !1974

; <label>:437:                                    ; preds = %435
  %438 = getelementptr inbounds i8, i8* %0, i64 %381, !dbg !1976
  store i8 92, i8* %438, align 1, !dbg !1976, !tbaa !923
  br label %439, !dbg !1976

; <label>:439:                                    ; preds = %437, %435
  %440 = add i64 %381, 1, !dbg !1978
  call void @llvm.dbg.value(metadata i64 %440, i64 0, metadata !1422, metadata !609), !dbg !1484
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1437, metadata !609), !dbg !1571
  br label %441, !dbg !1980

; <label>:441:                                    ; preds = %432, %439, %428
  %442 = phi i64 [ %440, %439 ], [ %381, %432 ], [ %429, %428 ]
  %443 = phi i8 [ %382, %439 ], [ %382, %432 ], [ %409, %428 ]
  %444 = phi i8 [ %383, %439 ], [ %383, %432 ], [ %431, %428 ]
  %445 = phi i8 [ 0, %439 ], [ %384, %432 ], [ %384, %428 ]
  %446 = phi i8 [ %385, %439 ], [ %385, %432 ], [ 1, %428 ]
  call void @llvm.dbg.value(metadata i8 %446, i64 0, metadata !1438, metadata !609), !dbg !1572
  call void @llvm.dbg.value(metadata i8 %445, i64 0, metadata !1437, metadata !609), !dbg !1571
  call void @llvm.dbg.value(metadata i8 %444, i64 0, metadata !1432, metadata !609), !dbg !1590
  call void @llvm.dbg.value(metadata i8 %443, i64 0, metadata !1429, metadata !609), !dbg !1492
  call void @llvm.dbg.value(metadata i64 %442, i64 0, metadata !1422, metadata !609), !dbg !1484
  %447 = add i64 %380, 1, !dbg !1981
  %448 = icmp ugt i64 %378, %447, !dbg !1983
  br i1 %448, label %449, label %541, !dbg !1984

; <label>:449:                                    ; preds = %441
  %450 = and i8 %443, 1, !dbg !1985
  %451 = icmp ne i8 %450, 0, !dbg !1985
  %452 = and i8 %446, 1, !dbg !1989
  %453 = icmp eq i8 %452, 0, !dbg !1989
  %454 = and i1 %451, %453, !dbg !1985
  br i1 %454, label %455, label %466, !dbg !1985

; <label>:455:                                    ; preds = %449
  %456 = icmp ult i64 %442, %131, !dbg !1991
  br i1 %456, label %457, label %459, !dbg !1996

; <label>:457:                                    ; preds = %455
  %458 = getelementptr inbounds i8, i8* %0, i64 %442, !dbg !1998
  store i8 39, i8* %458, align 1, !dbg !1998, !tbaa !923
  br label %459, !dbg !1998

; <label>:459:                                    ; preds = %457, %455
  %460 = add i64 %442, 1, !dbg !2000
  call void @llvm.dbg.value(metadata i64 %460, i64 0, metadata !1422, metadata !609), !dbg !1484
  %461 = icmp ult i64 %460, %131, !dbg !2002
  br i1 %461, label %462, label %464, !dbg !2006

; <label>:462:                                    ; preds = %459
  %463 = getelementptr inbounds i8, i8* %0, i64 %460, !dbg !2008
  store i8 39, i8* %463, align 1, !dbg !2008, !tbaa !923
  br label %464, !dbg !2008

; <label>:464:                                    ; preds = %462, %459
  %465 = add i64 %442, 2, !dbg !2010
  call void @llvm.dbg.value(metadata i64 %465, i64 0, metadata !1422, metadata !609), !dbg !1484
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1429, metadata !609), !dbg !1492
  br label %466, !dbg !2012

; <label>:466:                                    ; preds = %449, %464
  %467 = phi i64 [ %465, %464 ], [ %442, %449 ]
  %468 = phi i8 [ 0, %464 ], [ %443, %449 ]
  call void @llvm.dbg.value(metadata i8 %468, i64 0, metadata !1429, metadata !609), !dbg !1492
  call void @llvm.dbg.value(metadata i64 %467, i64 0, metadata !1422, metadata !609), !dbg !1484
  %469 = icmp ult i64 %467, %131, !dbg !2014
  br i1 %469, label %470, label %472, !dbg !2018

; <label>:470:                                    ; preds = %466
  %471 = getelementptr inbounds i8, i8* %0, i64 %467, !dbg !2020
  store i8 %444, i8* %471, align 1, !dbg !2020, !tbaa !923
  br label %472, !dbg !2020

; <label>:472:                                    ; preds = %470, %466
  %473 = add i64 %467, 1, !dbg !2022
  call void @llvm.dbg.value(metadata i64 %473, i64 0, metadata !1422, metadata !609), !dbg !1484
  call void @llvm.dbg.value(metadata i64 %447, i64 0, metadata !1421, metadata !609), !dbg !1559
  %474 = getelementptr inbounds i8, i8* %2, i64 %447, !dbg !2024
  %475 = load i8, i8* %474, align 1, !dbg !2024, !tbaa !923
  call void @llvm.dbg.value(metadata i8 %475, i64 0, metadata !1432, metadata !609), !dbg !1590
  br label %379, !dbg !2025, !llvm.loop !2027

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
  call void @llvm.dbg.value(metadata i64 %486, i64 0, metadata !1413, metadata !609), !dbg !1476
  call void @llvm.dbg.value(metadata i8 %485, i64 0, metadata !1439, metadata !609), !dbg !1573
  call void @llvm.dbg.value(metadata i8 %484, i64 0, metadata !1438, metadata !609), !dbg !1572
  call void @llvm.dbg.value(metadata i8 %157, i64 0, metadata !1437, metadata !609), !dbg !1571
  call void @llvm.dbg.value(metadata i8 %483, i64 0, metadata !1432, metadata !609), !dbg !1590
  call void @llvm.dbg.value(metadata i8 %482, i64 0, metadata !1430, metadata !609), !dbg !1493
  call void @llvm.dbg.value(metadata i8 %481, i64 0, metadata !1429, metadata !609), !dbg !1492
  call void @llvm.dbg.value(metadata i64 %480, i64 0, metadata !1415, metadata !609), !dbg !1478
  call void @llvm.dbg.value(metadata i64 %479, i64 0, metadata !1423, metadata !609), !dbg !1485
  call void @llvm.dbg.value(metadata i64 %478, i64 0, metadata !1422, metadata !609), !dbg !1484
  call void @llvm.dbg.value(metadata i64 %477, i64 0, metadata !1421, metadata !609), !dbg !1559
  br i1 %107, label %488, label %487, !dbg !2030

; <label>:487:                                    ; preds = %476
  br i1 %117, label %489, label %501, !dbg !2032

; <label>:488:                                    ; preds = %476
  br i1 %20, label %501, label %489, !dbg !2033

; <label>:489:                                    ; preds = %488, %487
  %490 = lshr i8 %483, 5, !dbg !2034
  %491 = zext i8 %490 to i64, !dbg !2034
  %492 = getelementptr inbounds i32, i32* %6, i64 %491, !dbg !2036
  %493 = load i32, i32* %492, align 4, !dbg !2036, !tbaa !729
  %494 = and i8 %483, 31, !dbg !2037
  %495 = zext i8 %494 to i32, !dbg !2038
  %496 = shl i32 1, %495, !dbg !2039
  %497 = and i32 %493, %496, !dbg !2039
  %498 = icmp eq i32 %497, 0, !dbg !2039
  %499 = icmp eq i8 %157, 0, !dbg !2040
  %500 = and i1 %499, %498, !dbg !2041
  br i1 %500, label %542, label %503, !dbg !2041

; <label>:501:                                    ; preds = %488, %487
  %502 = icmp eq i8 %157, 0, !dbg !2040
  br i1 %502, label %542, label %503, !dbg !2042

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
  call void @llvm.dbg.value(metadata i64 %512, i64 0, metadata !1413, metadata !609), !dbg !1476
  call void @llvm.dbg.value(metadata i8 %511, i64 0, metadata !1439, metadata !609), !dbg !1573
  call void @llvm.dbg.value(metadata i8 %510, i64 0, metadata !1432, metadata !609), !dbg !1590
  call void @llvm.dbg.value(metadata i8 %509, i64 0, metadata !1430, metadata !609), !dbg !1493
  call void @llvm.dbg.value(metadata i8 %508, i64 0, metadata !1429, metadata !609), !dbg !1492
  call void @llvm.dbg.value(metadata i64 %507, i64 0, metadata !1415, metadata !609), !dbg !1478
  call void @llvm.dbg.value(metadata i64 %506, i64 0, metadata !1423, metadata !609), !dbg !1485
  call void @llvm.dbg.value(metadata i64 %505, i64 0, metadata !1422, metadata !609), !dbg !1484
  call void @llvm.dbg.value(metadata i64 %504, i64 0, metadata !1421, metadata !609), !dbg !1559
  br i1 %112, label %513, label %644, !dbg !2044

; <label>:513:                                    ; preds = %503
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1438, metadata !609), !dbg !1572
  %514 = and i8 %508, 1, !dbg !2047
  %515 = icmp eq i8 %514, 0, !dbg !2047
  %516 = and i1 %114, %515, !dbg !2050
  br i1 %516, label %517, label %533, !dbg !2050

; <label>:517:                                    ; preds = %513
  %518 = icmp ult i64 %505, %512, !dbg !2052
  br i1 %518, label %519, label %521, !dbg !2057

; <label>:519:                                    ; preds = %517
  %520 = getelementptr inbounds i8, i8* %0, i64 %505, !dbg !2059
  store i8 39, i8* %520, align 1, !dbg !2059, !tbaa !923
  br label %521, !dbg !2059

; <label>:521:                                    ; preds = %519, %517
  %522 = add i64 %505, 1, !dbg !2061
  call void @llvm.dbg.value(metadata i64 %522, i64 0, metadata !1422, metadata !609), !dbg !1484
  %523 = icmp ult i64 %522, %512, !dbg !2063
  br i1 %523, label %524, label %526, !dbg !2067

; <label>:524:                                    ; preds = %521
  %525 = getelementptr inbounds i8, i8* %0, i64 %522, !dbg !2069
  store i8 36, i8* %525, align 1, !dbg !2069, !tbaa !923
  br label %526, !dbg !2069

; <label>:526:                                    ; preds = %524, %521
  %527 = add i64 %505, 2, !dbg !2071
  call void @llvm.dbg.value(metadata i64 %527, i64 0, metadata !1422, metadata !609), !dbg !1484
  %528 = icmp ult i64 %527, %512, !dbg !2073
  br i1 %528, label %529, label %531, !dbg !2077

; <label>:529:                                    ; preds = %526
  %530 = getelementptr inbounds i8, i8* %0, i64 %527, !dbg !2079
  store i8 39, i8* %530, align 1, !dbg !2079, !tbaa !923
  br label %531, !dbg !2079

; <label>:531:                                    ; preds = %529, %526
  %532 = add i64 %505, 3, !dbg !2081
  call void @llvm.dbg.value(metadata i64 %532, i64 0, metadata !1422, metadata !609), !dbg !1484
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1429, metadata !609), !dbg !1492
  br label %533, !dbg !2083

; <label>:533:                                    ; preds = %513, %531
  %534 = phi i64 [ %532, %531 ], [ %505, %513 ]
  %535 = phi i8 [ 1, %531 ], [ %508, %513 ]
  call void @llvm.dbg.value(metadata i8 %535, i64 0, metadata !1429, metadata !609), !dbg !1492
  call void @llvm.dbg.value(metadata i64 %534, i64 0, metadata !1422, metadata !609), !dbg !1484
  %536 = icmp ult i64 %534, %512, !dbg !2085
  br i1 %536, label %537, label %539, !dbg !2089

; <label>:537:                                    ; preds = %533
  %538 = getelementptr inbounds i8, i8* %0, i64 %534, !dbg !2091
  store i8 92, i8* %538, align 1, !dbg !2091, !tbaa !923
  br label %539, !dbg !2091

; <label>:539:                                    ; preds = %533, %537
  %540 = add i64 %534, 1, !dbg !2093
  call void @llvm.dbg.value(metadata i64 %540, i64 0, metadata !1422, metadata !609), !dbg !1484
  call void @llvm.dbg.value(metadata i64 %552, i64 0, metadata !1413, metadata !609), !dbg !1476
  call void @llvm.dbg.value(metadata i8 %551, i64 0, metadata !1439, metadata !609), !dbg !1573
  call void @llvm.dbg.value(metadata i8 %550, i64 0, metadata !1438, metadata !609), !dbg !1572
  call void @llvm.dbg.value(metadata i8 %549, i64 0, metadata !1432, metadata !609), !dbg !1590
  call void @llvm.dbg.value(metadata i8 %548, i64 0, metadata !1430, metadata !609), !dbg !1493
  call void @llvm.dbg.value(metadata i8 %547, i64 0, metadata !1429, metadata !609), !dbg !1492
  call void @llvm.dbg.value(metadata i64 %546, i64 0, metadata !1415, metadata !609), !dbg !1478
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !1423, metadata !609), !dbg !1485
  call void @llvm.dbg.value(metadata i64 %544, i64 0, metadata !1422, metadata !609), !dbg !1484
  call void @llvm.dbg.value(metadata i64 %543, i64 0, metadata !1421, metadata !609), !dbg !1559
  br label %569, !dbg !2095

; <label>:541:                                    ; preds = %441
  br label %542, !dbg !1476

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
  call void @llvm.dbg.value(metadata i64 %552, i64 0, metadata !1413, metadata !609), !dbg !1476
  call void @llvm.dbg.value(metadata i8 %551, i64 0, metadata !1439, metadata !609), !dbg !1573
  call void @llvm.dbg.value(metadata i8 %550, i64 0, metadata !1438, metadata !609), !dbg !1572
  call void @llvm.dbg.value(metadata i8 %549, i64 0, metadata !1432, metadata !609), !dbg !1590
  call void @llvm.dbg.value(metadata i8 %548, i64 0, metadata !1430, metadata !609), !dbg !1493
  call void @llvm.dbg.value(metadata i8 %547, i64 0, metadata !1429, metadata !609), !dbg !1492
  call void @llvm.dbg.value(metadata i64 %546, i64 0, metadata !1415, metadata !609), !dbg !1478
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !1423, metadata !609), !dbg !1485
  call void @llvm.dbg.value(metadata i64 %544, i64 0, metadata !1422, metadata !609), !dbg !1484
  call void @llvm.dbg.value(metadata i64 %543, i64 0, metadata !1421, metadata !609), !dbg !1559
  %553 = and i8 %547, 1, !dbg !2095
  %554 = icmp ne i8 %553, 0, !dbg !2095
  %555 = and i8 %550, 1, !dbg !2099
  %556 = icmp eq i8 %555, 0, !dbg !2099
  %557 = and i1 %554, %556, !dbg !2095
  br i1 %557, label %558, label %569, !dbg !2095

; <label>:558:                                    ; preds = %542
  %559 = icmp ult i64 %544, %552, !dbg !2101
  br i1 %559, label %560, label %562, !dbg !2106

; <label>:560:                                    ; preds = %558
  %561 = getelementptr inbounds i8, i8* %0, i64 %544, !dbg !2108
  store i8 39, i8* %561, align 1, !dbg !2108, !tbaa !923
  br label %562, !dbg !2108

; <label>:562:                                    ; preds = %560, %558
  %563 = add i64 %544, 1, !dbg !2110
  call void @llvm.dbg.value(metadata i64 %563, i64 0, metadata !1422, metadata !609), !dbg !1484
  %564 = icmp ult i64 %563, %552, !dbg !2112
  br i1 %564, label %565, label %567, !dbg !2116

; <label>:565:                                    ; preds = %562
  %566 = getelementptr inbounds i8, i8* %0, i64 %563, !dbg !2118
  store i8 39, i8* %566, align 1, !dbg !2118, !tbaa !923
  br label %567, !dbg !2118

; <label>:567:                                    ; preds = %565, %562
  %568 = add i64 %544, 2, !dbg !2120
  call void @llvm.dbg.value(metadata i64 %568, i64 0, metadata !1422, metadata !609), !dbg !1484
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1429, metadata !609), !dbg !1492
  br label %569, !dbg !2122

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
  call void @llvm.dbg.value(metadata i8 %578, i64 0, metadata !1429, metadata !609), !dbg !1492
  call void @llvm.dbg.value(metadata i64 %577, i64 0, metadata !1422, metadata !609), !dbg !1484
  %579 = icmp ult i64 %577, %570, !dbg !2124
  br i1 %579, label %580, label %582, !dbg !2128

; <label>:580:                                    ; preds = %569
  %581 = getelementptr inbounds i8, i8* %0, i64 %577, !dbg !2130
  store i8 %572, i8* %581, align 1, !dbg !2130, !tbaa !923
  br label %582, !dbg !2130

; <label>:582:                                    ; preds = %580, %569
  %583 = add i64 %577, 1, !dbg !2132
  call void @llvm.dbg.value(metadata i64 %583, i64 0, metadata !1422, metadata !609), !dbg !1484
  %584 = and i8 %571, 1, !dbg !2134
  %585 = icmp eq i8 %584, 0, !dbg !2134
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1431, metadata !609), !dbg !1494
  %586 = select i1 %585, i8 0, i8 %130, !dbg !2136
  call void @llvm.dbg.value(metadata i8 %586, i64 0, metadata !1431, metadata !609), !dbg !1494
  br label %587, !dbg !2137

; <label>:587:                                    ; preds = %582, %209
  %588 = phi i64 [ %124, %209 ], [ %576, %582 ]
  %589 = phi i64 [ %125, %209 ], [ %583, %582 ]
  %590 = phi i64 [ %126, %209 ], [ %575, %582 ]
  %591 = phi i64 [ %156, %209 ], [ %574, %582 ]
  %592 = phi i8 [ %128, %209 ], [ %578, %582 ]
  %593 = phi i8 [ %129, %209 ], [ %573, %582 ]
  %594 = phi i8 [ %130, %209 ], [ %586, %582 ]
  %595 = phi i64 [ %131, %209 ], [ %570, %582 ]
  %596 = add i64 %588, 1, !dbg !2138
  call void @llvm.dbg.value(metadata i64 %596, i64 0, metadata !1421, metadata !609), !dbg !1559
  br label %123, !dbg !2140, !llvm.loop !2141

; <label>:597:                                    ; preds = %133, %135
  %598 = phi i64 [ %124, %133 ], [ -1, %135 ]
  %599 = icmp eq i64 %125, 0, !dbg !2144
  %600 = and i1 %114, %599, !dbg !2146
  %601 = xor i1 %600, true, !dbg !2146
  %602 = or i1 %112, %601, !dbg !2146
  br i1 %602, label %603, label %648, !dbg !2146

; <label>:603:                                    ; preds = %597
  %604 = and i1 %114, %112, !dbg !2147
  %605 = xor i1 %604, true, !dbg !2147
  %606 = and i8 %129, 1, !dbg !2149
  %607 = icmp eq i8 %606, 0, !dbg !2149
  %608 = or i1 %607, %605, !dbg !2147
  br i1 %608, label %618, label %609, !dbg !2147

; <label>:609:                                    ; preds = %603
  %610 = and i8 %130, 1, !dbg !2151
  %611 = icmp eq i8 %610, 0, !dbg !2151
  br i1 %611, label %614, label %612, !dbg !2154

; <label>:612:                                    ; preds = %609
  %613 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %126, i8* %2, i64 %598, i32 5, i32 %5, i32* %6, i8* %97, i8* %98), !dbg !2155
  br label %659, !dbg !2156

; <label>:614:                                    ; preds = %609
  %615 = icmp eq i64 %131, 0, !dbg !2157
  %616 = icmp ne i64 %126, 0, !dbg !2159
  %617 = and i1 %616, %615, !dbg !2161
  br i1 %617, label %27, label %618, !dbg !2161

; <label>:618:                                    ; preds = %603, %614
  %619 = icmp ne i8* %100, null, !dbg !2162
  %620 = and i1 %619, %112, !dbg !2164
  br i1 %620, label %621, label %638, !dbg !2164

; <label>:621:                                    ; preds = %618
  call void @llvm.dbg.value(metadata i8* %100, i64 0, metadata !1424, metadata !609), !dbg !1486
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !1422, metadata !609), !dbg !1484
  %622 = load i8, i8* %100, align 1, !dbg !2165, !tbaa !923
  %623 = icmp eq i8 %622, 0, !dbg !2169
  br i1 %623, label %638, label %624, !dbg !2169

; <label>:624:                                    ; preds = %621
  br label %625, !dbg !2171

; <label>:625:                                    ; preds = %624, %632
  %626 = phi i8 [ %635, %632 ], [ %622, %624 ]
  %627 = phi i8* [ %634, %632 ], [ %100, %624 ]
  %628 = phi i64 [ %633, %632 ], [ %125, %624 ]
  %629 = icmp ult i64 %628, %131, !dbg !2171
  br i1 %629, label %630, label %632, !dbg !2175

; <label>:630:                                    ; preds = %625
  %631 = getelementptr inbounds i8, i8* %0, i64 %628, !dbg !2177
  store i8 %626, i8* %631, align 1, !dbg !2177, !tbaa !923
  br label %632, !dbg !2177

; <label>:632:                                    ; preds = %630, %625
  %633 = add i64 %628, 1, !dbg !2179
  call void @llvm.dbg.value(metadata i64 %633, i64 0, metadata !1422, metadata !609), !dbg !1484
  %634 = getelementptr inbounds i8, i8* %627, i64 1, !dbg !2181
  call void @llvm.dbg.value(metadata i8* %634, i64 0, metadata !1424, metadata !609), !dbg !1486
  call void @llvm.dbg.value(metadata i8* %634, i64 0, metadata !1424, metadata !609), !dbg !1486
  call void @llvm.dbg.value(metadata i64 %633, i64 0, metadata !1422, metadata !609), !dbg !1484
  %635 = load i8, i8* %634, align 1, !dbg !2165, !tbaa !923
  %636 = icmp eq i8 %635, 0, !dbg !2169
  br i1 %636, label %637, label %625, !dbg !2169, !llvm.loop !2183

; <label>:637:                                    ; preds = %632
  br label %638, !dbg !1484

; <label>:638:                                    ; preds = %637, %621, %618
  %639 = phi i64 [ %125, %618 ], [ %125, %621 ], [ %633, %637 ]
  call void @llvm.dbg.value(metadata i64 %639, i64 0, metadata !1422, metadata !609), !dbg !1484
  %640 = icmp ult i64 %639, %131, !dbg !2186
  br i1 %640, label %641, label %659, !dbg !2188

; <label>:641:                                    ; preds = %638
  %642 = getelementptr inbounds i8, i8* %0, i64 %639, !dbg !2189
  store i8 0, i8* %642, align 1, !dbg !2190, !tbaa !923
  br label %659, !dbg !2189

; <label>:643:                                    ; preds = %386
  br label %649, !dbg !1476

; <label>:644:                                    ; preds = %148, %161, %211, %225, %253, %255, %273, %276, %503
  %645 = phi i32 [ %96, %148 ], [ %96, %161 ], [ 2, %211 ], [ 5, %225 ], [ 2, %253 ], [ 2, %255 ], [ 2, %273 ], [ 2, %276 ], [ %96, %503 ]
  %646 = phi i64 [ %146, %148 ], [ %156, %161 ], [ %156, %211 ], [ %156, %225 ], [ %156, %253 ], [ %156, %255 ], [ %156, %273 ], [ %156, %276 ], [ %507, %503 ]
  %647 = phi i64 [ %131, %148 ], [ %131, %161 ], [ %131, %211 ], [ %131, %225 ], [ %131, %253 ], [ %131, %255 ], [ %131, %273 ], [ %131, %276 ], [ %512, %503 ]
  br label %649, !dbg !1476

; <label>:648:                                    ; preds = %597
  br label %649, !dbg !1476

; <label>:649:                                    ; preds = %648, %644, %643, %367
  %650 = phi i32 [ 2, %367 ], [ %96, %643 ], [ %645, %644 ], [ %96, %648 ]
  %651 = phi i64 [ %313, %367 ], [ %369, %643 ], [ %646, %644 ], [ %598, %648 ]
  %652 = phi i64 [ %131, %367 ], [ %131, %643 ], [ %647, %644 ], [ %131, %648 ]
  call void @llvm.dbg.value(metadata i64 %652, i64 0, metadata !1413, metadata !609), !dbg !1476
  call void @llvm.dbg.value(metadata i64 %651, i64 0, metadata !1415, metadata !609), !dbg !1478
  %653 = icmp ne i32 %650, 2, !dbg !2191
  %654 = icmp eq i8 %104, 0, !dbg !2193
  %655 = or i1 %653, %654, !dbg !2195
  call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !1416, metadata !609), !dbg !1479
  %656 = select i1 %655, i32 %650, i32 4, !dbg !2195
  call void @llvm.dbg.value(metadata i32 %656, i64 0, metadata !1416, metadata !609), !dbg !1479
  %657 = and i32 %5, -3, !dbg !2196
  %658 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %652, i8* %2, i64 %651, i32 %656, i32 %657, i32* null, i8* %97, i8* %98), !dbg !2197
  br label %659, !dbg !2198

; <label>:659:                                    ; preds = %638, %641, %649, %612
  %660 = phi i64 [ %658, %649 ], [ %613, %612 ], [ %639, %641 ], [ %639, %638 ]
  ret i64 %660, !dbg !2199
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8*, i32) unnamed_addr #6 !dbg !2200 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2204, metadata !609), !dbg !2208
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2205, metadata !609), !dbg !2209
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #11, !dbg !2210
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2206, metadata !609), !dbg !2211
  %4 = icmp eq i8* %3, %0, !dbg !2212
  br i1 %4, label %5, label %75, !dbg !2214

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @locale_charset() #11, !dbg !2215
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !2207, metadata !609), !dbg !2216
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2217, metadata !609), !dbg !2233
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2231, metadata !609), !dbg !2236
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2232, metadata !609), !dbg !2237
  %7 = load i8, i8* %6, align 1, !tbaa !923
  %8 = sext i8 %7 to i32
  %9 = and i32 %8, -33, !dbg !2238
  switch i32 %9, label %72 [
    i32 85, label %10
    i32 71, label %38
  ], !dbg !2238

; <label>:10:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2241, metadata !609), !dbg !2255
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2253, metadata !609), !dbg !2259
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2254, metadata !609), !dbg !2260
  %11 = getelementptr inbounds i8, i8* %6, i64 1
  %12 = load i8, i8* %11, align 1, !tbaa !923
  %13 = sext i8 %12 to i32
  %14 = and i32 %13, -33, !dbg !2261
  %15 = icmp eq i32 %14, 84, !dbg !2261
  br i1 %15, label %16, label %72, !dbg !2261

; <label>:16:                                     ; preds = %10
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2264, metadata !609), !dbg !2277
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2275, metadata !609), !dbg !2281
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2276, metadata !609), !dbg !2282
  %17 = getelementptr inbounds i8, i8* %6, i64 2
  %18 = load i8, i8* %17, align 1, !tbaa !923
  %19 = sext i8 %18 to i32
  %20 = and i32 %19, -33, !dbg !2283
  %21 = icmp eq i32 %20, 70, !dbg !2283
  br i1 %21, label %22, label %72, !dbg !2283

; <label>:22:                                     ; preds = %16
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2286, metadata !609), !dbg !2298
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2296, metadata !609), !dbg !2302
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2297, metadata !609), !dbg !2303
  %23 = getelementptr inbounds i8, i8* %6, i64 3
  %24 = load i8, i8* %23, align 1, !tbaa !923
  %25 = icmp eq i8 %24, 45, !dbg !2304
  br i1 %25, label %26, label %72, !dbg !2307

; <label>:26:                                     ; preds = %22
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2309, metadata !609), !dbg !2320
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2318, metadata !609), !dbg !2324
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2319, metadata !609), !dbg !2325
  %27 = getelementptr inbounds i8, i8* %6, i64 4
  %28 = load i8, i8* %27, align 1, !tbaa !923
  %29 = icmp eq i8 %28, 56, !dbg !2326
  br i1 %29, label %30, label %72, !dbg !2329

; <label>:30:                                     ; preds = %26
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2331, metadata !609), !dbg !2341
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2339, metadata !609), !dbg !2345
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2340, metadata !609), !dbg !2346
  %31 = getelementptr inbounds i8, i8* %6, i64 5
  %32 = load i8, i8* %31, align 1, !tbaa !923
  %33 = icmp eq i8 %32, 0, !dbg !2347
  br i1 %33, label %34, label %72, !dbg !2350

; <label>:34:                                     ; preds = %30
  %35 = load i8, i8* %0, align 1, !dbg !2352, !tbaa !923
  %36 = icmp eq i8 %35, 96, !dbg !2353
  %37 = select i1 %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.61, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.62, i64 0, i64 0), !dbg !2352
  br label %75, !dbg !2354

; <label>:38:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2241, metadata !609), !dbg !2355
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2253, metadata !609), !dbg !2359
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2254, metadata !609), !dbg !2360
  %39 = getelementptr inbounds i8, i8* %6, i64 1
  %40 = load i8, i8* %39, align 1, !tbaa !923
  %41 = sext i8 %40 to i32
  %42 = and i32 %41, -33, !dbg !2361
  %43 = icmp eq i32 %42, 66, !dbg !2361
  br i1 %43, label %44, label %72, !dbg !2361

; <label>:44:                                     ; preds = %38
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2264, metadata !609), !dbg !2362
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2275, metadata !609), !dbg !2364
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2276, metadata !609), !dbg !2365
  %45 = getelementptr inbounds i8, i8* %6, i64 2
  %46 = load i8, i8* %45, align 1, !tbaa !923
  %47 = icmp eq i8 %46, 49, !dbg !2366
  br i1 %47, label %48, label %72, !dbg !2368

; <label>:48:                                     ; preds = %44
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2286, metadata !609), !dbg !2370
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2296, metadata !609), !dbg !2372
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2297, metadata !609), !dbg !2373
  %49 = getelementptr inbounds i8, i8* %6, i64 3
  %50 = load i8, i8* %49, align 1, !tbaa !923
  %51 = icmp eq i8 %50, 56, !dbg !2374
  br i1 %51, label %52, label %72, !dbg !2375

; <label>:52:                                     ; preds = %48
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2309, metadata !609), !dbg !2376
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2318, metadata !609), !dbg !2378
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2319, metadata !609), !dbg !2379
  %53 = getelementptr inbounds i8, i8* %6, i64 4
  %54 = load i8, i8* %53, align 1, !tbaa !923
  %55 = icmp eq i8 %54, 48, !dbg !2380
  br i1 %55, label %56, label %72, !dbg !2381

; <label>:56:                                     ; preds = %52
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2331, metadata !609), !dbg !2382
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2339, metadata !609), !dbg !2384
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2340, metadata !609), !dbg !2385
  %57 = getelementptr inbounds i8, i8* %6, i64 5
  %58 = load i8, i8* %57, align 1, !tbaa !923
  %59 = icmp eq i8 %58, 51, !dbg !2386
  br i1 %59, label %60, label %72, !dbg !2387

; <label>:60:                                     ; preds = %56
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2388, metadata !609), !dbg !2397
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2395, metadata !609), !dbg !2401
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2396, metadata !609), !dbg !2402
  %61 = getelementptr inbounds i8, i8* %6, i64 6
  %62 = load i8, i8* %61, align 1, !tbaa !923
  %63 = icmp eq i8 %62, 48, !dbg !2403
  br i1 %63, label %64, label %72, !dbg !2406

; <label>:64:                                     ; preds = %60
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2408, metadata !609), !dbg !2416
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2414, metadata !609), !dbg !2420
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2415, metadata !609), !dbg !2421
  %65 = getelementptr inbounds i8, i8* %6, i64 7
  %66 = load i8, i8* %65, align 1, !tbaa !923
  %67 = icmp eq i8 %66, 0, !dbg !2422
  br i1 %67, label %68, label %72, !dbg !2425

; <label>:68:                                     ; preds = %64
  %69 = load i8, i8* %0, align 1, !dbg !2426, !tbaa !923
  %70 = icmp eq i8 %69, 96, !dbg !2427
  %71 = select i1 %70, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.63, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.64, i64 0, i64 0), !dbg !2426
  br label %75, !dbg !2428

; <label>:72:                                     ; preds = %5, %30, %26, %22, %16, %10, %64, %60, %56, %52, %48, %44, %38
  %73 = icmp eq i32 %1, 9, !dbg !2429
  %74 = select i1 %73, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.60, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.59, i64 0, i64 0), !dbg !2430
  br label %75, !dbg !2431

; <label>:75:                                     ; preds = %2, %72, %68, %34
  %76 = phi i8* [ %37, %34 ], [ %71, %68 ], [ %74, %72 ], [ %3, %2 ]
  ret i8* %76, !dbg !2432
}

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #4

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() local_unnamed_addr #8

; Function Attrs: nounwind
declare i32 @iswprint(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @mbsinit(%struct.__mbstate_t*) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_alloc(i8*, i64, %struct.quoting_options*) local_unnamed_addr #6 !dbg !2433 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2437, metadata !609), !dbg !2440
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2438, metadata !609), !dbg !2441
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2439, metadata !609), !dbg !2442
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2443, metadata !609) #11, !dbg !2456
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2448, metadata !609) #11, !dbg !2458
  tail call void @llvm.dbg.value(metadata i64* null, i64 0, metadata !2449, metadata !609) #11, !dbg !2459
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2450, metadata !609) #11, !dbg !2460
  %4 = icmp ne %struct.quoting_options* %2, null, !dbg !2461
  %5 = select i1 %4, %struct.quoting_options* %2, %struct.quoting_options* @default_quoting_options, !dbg !2461
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2451, metadata !609) #11, !dbg !2462
  %6 = tail call i32* @__errno_location() #1, !dbg !2463
  %7 = load i32, i32* %6, align 4, !dbg !2463, !tbaa !729
  tail call void @llvm.dbg.value(metadata i32 %7, i64 0, metadata !2452, metadata !609) #11, !dbg !2464
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2465
  %9 = load i32, i32* %8, align 4, !dbg !2465, !tbaa !1344
  %10 = or i32 %9, 1, !dbg !2466
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !2453, metadata !609) #11, !dbg !2467
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2468
  %12 = load i32, i32* %11, align 8, !dbg !2468, !tbaa !1282
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !2469
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2470
  %15 = load i8*, i8** %14, align 8, !dbg !2470, !tbaa !1371
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2471
  %17 = load i8*, i8** %16, align 8, !dbg !2471, !tbaa !1374
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* %13, i8* %15, i8* %17) #11, !dbg !2472
  %19 = add i64 %18, 1, !dbg !2473
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !2454, metadata !609) #11, !dbg !2474
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !2475, metadata !609) #11, !dbg !2480
  %20 = tail call noalias i8* @xmalloc(i64 %19) #11, !dbg !2482
  tail call void @llvm.dbg.value(metadata i8* %20, i64 0, metadata !2455, metadata !609) #11, !dbg !2483
  %21 = load i32, i32* %11, align 8, !dbg !2484, !tbaa !1282
  %22 = load i8*, i8** %14, align 8, !dbg !2485, !tbaa !1371
  %23 = load i8*, i8** %16, align 8, !dbg !2486, !tbaa !1374
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* %13, i8* %22, i8* %23) #11, !dbg !2487
  store i32 %7, i32* %6, align 4, !dbg !2488, !tbaa !729
  ret i8* %20, !dbg !2489
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_alloc_mem(i8*, i64, i64*, %struct.quoting_options*) local_unnamed_addr #6 !dbg !2444 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2443, metadata !609), !dbg !2490
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2448, metadata !609), !dbg !2491
  tail call void @llvm.dbg.value(metadata i64* %2, i64 0, metadata !2449, metadata !609), !dbg !2492
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2450, metadata !609), !dbg !2493
  %5 = icmp ne %struct.quoting_options* %3, null, !dbg !2494
  %6 = select i1 %5, %struct.quoting_options* %3, %struct.quoting_options* @default_quoting_options, !dbg !2494
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2451, metadata !609), !dbg !2495
  %7 = tail call i32* @__errno_location() #1, !dbg !2496
  %8 = load i32, i32* %7, align 4, !dbg !2496, !tbaa !729
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !2452, metadata !609), !dbg !2497
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2498
  %10 = load i32, i32* %9, align 4, !dbg !2498, !tbaa !1344
  %11 = icmp ne i64* %2, null, !dbg !2499
  %12 = xor i1 %11, true, !dbg !2499
  %13 = zext i1 %12 to i32, !dbg !2499
  %14 = or i32 %10, %13, !dbg !2500
  tail call void @llvm.dbg.value(metadata i32 %14, i64 0, metadata !2453, metadata !609), !dbg !2501
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2502
  %16 = load i32, i32* %15, align 8, !dbg !2502, !tbaa !1282
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !2503
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2504
  %19 = load i8*, i8** %18, align 8, !dbg !2504, !tbaa !1371
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2505
  %21 = load i8*, i8** %20, align 8, !dbg !2505, !tbaa !1374
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* %17, i8* %19, i8* %21), !dbg !2506
  %23 = add i64 %22, 1, !dbg !2507
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !2454, metadata !609), !dbg !2508
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !2475, metadata !609) #11, !dbg !2509
  %24 = tail call noalias i8* @xmalloc(i64 %23) #11, !dbg !2511
  tail call void @llvm.dbg.value(metadata i8* %24, i64 0, metadata !2455, metadata !609), !dbg !2512
  %25 = load i32, i32* %15, align 8, !dbg !2513, !tbaa !1282
  %26 = load i8*, i8** %18, align 8, !dbg !2514, !tbaa !1371
  %27 = load i8*, i8** %20, align 8, !dbg !2515, !tbaa !1374
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* %17, i8* %26, i8* %27), !dbg !2516
  store i32 %8, i32* %7, align 4, !dbg !2517, !tbaa !729
  br i1 %11, label %29, label %30, !dbg !2518

; <label>:29:                                     ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !2519, !tbaa !2521
  br label %30, !dbg !2523

; <label>:30:                                     ; preds = %29, %4
  ret i8* %24, !dbg !2524
}

; Function Attrs: nounwind sspstrong uwtable
define void @quotearg_free() local_unnamed_addr #6 !dbg !2525 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2529, !tbaa !617
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %1, i64 0, metadata !2527, metadata !609), !dbg !2530
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2528, metadata !609), !dbg !2531
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2528, metadata !609), !dbg !2531
  %2 = load i32, i32* @nslots, align 4, !dbg !2532, !tbaa !729
  %3 = icmp sgt i32 %2, 1, !dbg !2536
  br i1 %3, label %4, label %14, !dbg !2537

; <label>:4:                                      ; preds = %0
  br label %5, !dbg !2539

; <label>:5:                                      ; preds = %4, %5
  %6 = phi i64 [ %9, %5 ], [ 1, %4 ]
  %7 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %6, i32 1, !dbg !2539
  %8 = load i8*, i8** %7, align 8, !dbg !2539, !tbaa !2540
  tail call void @free(i8* %8) #11, !dbg !2542
  %9 = add nuw i64 %6, 1, !dbg !2543
  %10 = load i32, i32* @nslots, align 4, !dbg !2532, !tbaa !729
  %11 = sext i32 %10 to i64, !dbg !2536
  %12 = icmp slt i64 %9, %11, !dbg !2536
  br i1 %12, label %5, label %13, !dbg !2537, !llvm.loop !2545

; <label>:13:                                     ; preds = %5
  br label %14, !dbg !2548

; <label>:14:                                     ; preds = %13, %0
  %15 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !2548
  %16 = load i8*, i8** %15, align 8, !dbg !2548, !tbaa !2540
  %17 = icmp eq i8* %16, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2550
  br i1 %17, label %19, label %18, !dbg !2551

; <label>:18:                                     ; preds = %14
  tail call void @free(i8* %16) #11, !dbg !2552
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !2554, !tbaa !2555
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !2556, !tbaa !2540
  br label %19, !dbg !2557

; <label>:19:                                     ; preds = %14, %18
  %20 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !2558
  br i1 %20, label %23, label %21, !dbg !2560

; <label>:21:                                     ; preds = %19
  %22 = bitcast %struct.slotvec* %1 to i8*, !dbg !2561
  tail call void @free(i8* %22) #11, !dbg !2563
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !2564, !tbaa !617
  br label %23, !dbg !2565

; <label>:23:                                     ; preds = %19, %21
  store i32 1, i32* @nslots, align 4, !dbg !2566, !tbaa !729
  ret void, !dbg !2567
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n(i32, i8*) local_unnamed_addr #6 !dbg !2568 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2572, metadata !609), !dbg !2574
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2573, metadata !609), !dbg !2575
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2576
  ret i8* %3, !dbg !2577
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32, i8*, i64, %struct.quoting_options*) unnamed_addr #6 !dbg !2578 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2582, metadata !609), !dbg !2596
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2583, metadata !609), !dbg !2597
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2584, metadata !609), !dbg !2598
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2585, metadata !609), !dbg !2599
  %5 = tail call i32* @__errno_location() #1, !dbg !2600
  %6 = load i32, i32* %5, align 4, !dbg !2600, !tbaa !729
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !2586, metadata !609), !dbg !2601
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2602, !tbaa !617
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %7, i64 0, metadata !2587, metadata !609), !dbg !2603
  %8 = icmp slt i32 %0, 0, !dbg !2604
  br i1 %8, label %9, label %10, !dbg !2606

; <label>:9:                                      ; preds = %4
  tail call void @abort() #14, !dbg !2607
  unreachable, !dbg !2607

; <label>:10:                                     ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !2608, !tbaa !729
  %12 = icmp sgt i32 %11, %0, !dbg !2609
  br i1 %12, label %34, label %13, !dbg !2610

; <label>:13:                                     ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !2611
  %15 = icmp ugt i32 %0, 2147483646, !dbg !2612
  br i1 %15, label %16, label %17, !dbg !2614

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #14, !dbg !2615
  unreachable, !dbg !2615

; <label>:17:                                     ; preds = %13
  %18 = bitcast %struct.slotvec* %7 to i8*, !dbg !2616
  %19 = select i1 %14, i8* null, i8* %18, !dbg !2616
  %20 = add nsw i32 %0, 1, !dbg !2618
  %21 = sext i32 %20 to i64, !dbg !2619
  %22 = shl nsw i64 %21, 4, !dbg !2620
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #11, !dbg !2621
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !2621
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %24, i64 0, metadata !2587, metadata !609), !dbg !2603
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !2622, !tbaa !617
  br i1 %14, label %25, label %26, !dbg !2623

; <label>:25:                                     ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i32 8, i1 false), !dbg !2624, !tbaa.struct !2626
  br label %26, !dbg !2627

; <label>:26:                                     ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !2628, !tbaa !729
  %28 = sext i32 %27 to i64, !dbg !2629
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !2629
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !2630
  %31 = sub nsw i32 %20, %27, !dbg !2631
  %32 = sext i32 %31 to i64, !dbg !2632
  %33 = shl nsw i64 %32, 4, !dbg !2633
  tail call void @llvm.memset.p0i8.i64(i8* %30, i8 0, i64 %33, i32 8, i1 false), !dbg !2630
  store i32 %20, i32* @nslots, align 4, !dbg !2634, !tbaa !729
  br label %34, !dbg !2635

; <label>:34:                                     ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ]
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %35, i64 0, metadata !2587, metadata !609), !dbg !2603
  %36 = sext i32 %0 to i64, !dbg !2636
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !2637
  %38 = load i64, i64* %37, align 8, !dbg !2637, !tbaa !2555
  tail call void @llvm.dbg.value(metadata i64 %38, i64 0, metadata !2591, metadata !609), !dbg !2638
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !2639
  %40 = load i8*, i8** %39, align 8, !dbg !2639, !tbaa !2540
  tail call void @llvm.dbg.value(metadata i8* %40, i64 0, metadata !2593, metadata !609), !dbg !2640
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !2641
  %42 = load i32, i32* %41, align 4, !dbg !2641, !tbaa !1344
  %43 = or i32 %42, 1, !dbg !2642
  tail call void @llvm.dbg.value(metadata i32 %43, i64 0, metadata !2594, metadata !609), !dbg !2643
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2644
  %45 = load i32, i32* %44, align 8, !dbg !2644, !tbaa !1282
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !2645
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !2646
  %48 = load i8*, i8** %47, align 8, !dbg !2646, !tbaa !1371
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !2647
  %50 = load i8*, i8** %49, align 8, !dbg !2647, !tbaa !1374
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* %46, i8* %48, i8* %50), !dbg !2648
  tail call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !2595, metadata !609), !dbg !2649
  %52 = icmp ugt i64 %38, %51, !dbg !2650
  br i1 %52, label %63, label %53, !dbg !2652

; <label>:53:                                     ; preds = %34
  %54 = add i64 %51, 1, !dbg !2653
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !2591, metadata !609), !dbg !2638
  store i64 %54, i64* %37, align 8, !dbg !2655, !tbaa !2555
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2656
  br i1 %55, label %57, label %56, !dbg !2658

; <label>:56:                                     ; preds = %53
  tail call void @free(i8* %40) #11, !dbg !2659
  br label %57, !dbg !2659

; <label>:57:                                     ; preds = %53, %56
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !2475, metadata !609) #11, !dbg !2660
  %58 = tail call noalias i8* @xmalloc(i64 %54) #11, !dbg !2662
  tail call void @llvm.dbg.value(metadata i8* %58, i64 0, metadata !2593, metadata !609), !dbg !2640
  store i8* %58, i8** %39, align 8, !dbg !2663, !tbaa !2540
  %59 = load i32, i32* %44, align 8, !dbg !2664, !tbaa !1282
  %60 = load i8*, i8** %47, align 8, !dbg !2665, !tbaa !1371
  %61 = load i8*, i8** %49, align 8, !dbg !2666, !tbaa !1374
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* %46, i8* %60, i8* %61), !dbg !2667
  br label %63, !dbg !2668

; <label>:63:                                     ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ]
  tail call void @llvm.dbg.value(metadata i8* %64, i64 0, metadata !2593, metadata !609), !dbg !2640
  store i32 %6, i32* %5, align 4, !dbg !2669, !tbaa !729
  ret i8* %64, !dbg !2670
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #7

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #7

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !2671 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2675, metadata !609), !dbg !2678
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2676, metadata !609), !dbg !2679
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2677, metadata !609), !dbg !2680
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2681
  ret i8* %4, !dbg !2682
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg(i8*) local_unnamed_addr #6 !dbg !2683 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2687, metadata !609), !dbg !2688
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2572, metadata !609) #11, !dbg !2689
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2573, metadata !609) #11, !dbg !2691
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #11, !dbg !2692
  ret i8* %2, !dbg !2693
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_mem(i8*, i64) local_unnamed_addr #6 !dbg !2694 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2698, metadata !609), !dbg !2700
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2699, metadata !609), !dbg !2701
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2675, metadata !609) #11, !dbg !2702
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2676, metadata !609) #11, !dbg !2704
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2677, metadata !609) #11, !dbg !2705
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #11, !dbg !2706
  ret i8* %3, !dbg !2707
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style(i32, i32, i8*) local_unnamed_addr #6 !dbg !2708 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !2716, metadata !2722), !dbg !2723
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2712, metadata !609), !dbg !2725
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2713, metadata !609), !dbg !2726
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2714, metadata !609), !dbg !2727
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2728
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #11, !dbg !2728
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2715, metadata !980), !dbg !2729
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2721, metadata !609) #11, !dbg !2730
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !2731
  call void @llvm.lifetime.start(i64 52, i8* nonnull %7), !dbg !2731
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2716, metadata !609) #11, !dbg !2723
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2716, metadata !2732) #11, !dbg !2723
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !2723
  %8 = icmp eq i32 %1, 10, !dbg !2733
  br i1 %8, label %9, label %10, !dbg !2735

; <label>:9:                                      ; preds = %3
  tail call void @abort() #14, !dbg !2736, !noalias !2737
  unreachable, !dbg !2736

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2716, metadata !2732) #11, !dbg !2723
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2740
  store i32 %1, i32* %11, align 8, !dbg !2740, !alias.scope !2737
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2740
  %13 = bitcast i32* %12 to i8*, !dbg !2740
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #11, !dbg !2740
  call void @llvm.lifetime.end(i64 52, i8* nonnull %7), !dbg !2741
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2715, metadata !980), !dbg !2729
  %14 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !2742
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #11, !dbg !2743
  ret i8* %14, !dbg !2744
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_mem(i32, i32, i8*, i64) local_unnamed_addr #6 !dbg !2745 {
  %5 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !2716, metadata !2722), !dbg !2754
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2749, metadata !609), !dbg !2756
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2750, metadata !609), !dbg !2757
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2751, metadata !609), !dbg !2758
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2752, metadata !609), !dbg !2759
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2760
  call void @llvm.lifetime.start(i64 56, i8* nonnull %7) #11, !dbg !2760
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2753, metadata !980), !dbg !2761
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2721, metadata !609) #11, !dbg !2762
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !2763
  call void @llvm.lifetime.start(i64 52, i8* nonnull %8), !dbg !2763
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2716, metadata !609) #11, !dbg !2754
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2716, metadata !2732) #11, !dbg !2754
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !2754
  %9 = icmp eq i32 %1, 10, !dbg !2764
  br i1 %9, label %10, label %11, !dbg !2765

; <label>:10:                                     ; preds = %4
  tail call void @abort() #14, !dbg !2766, !noalias !2767
  unreachable, !dbg !2766

; <label>:11:                                     ; preds = %4
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2716, metadata !2732) #11, !dbg !2754
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2770
  store i32 %1, i32* %12, align 8, !dbg !2770, !alias.scope !2767
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2770
  %14 = bitcast i32* %13 to i8*, !dbg !2770
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* nonnull %8, i64 52, i32 4, i1 false) #11, !dbg !2770
  call void @llvm.lifetime.end(i64 52, i8* nonnull %8), !dbg !2771
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2753, metadata !980), !dbg !2761
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %6), !dbg !2772
  call void @llvm.lifetime.end(i64 56, i8* nonnull %7) #11, !dbg !2773
  ret i8* %15, !dbg !2774
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style(i32, i8*) local_unnamed_addr #6 !dbg !2775 {
  %3 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %3, metadata !2716, metadata !2722), !dbg !2781
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2779, metadata !609), !dbg !2784
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2780, metadata !609), !dbg !2785
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2712, metadata !609) #11, !dbg !2786
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2713, metadata !609) #11, !dbg !2787
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2714, metadata !609) #11, !dbg !2788
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2789
  call void @llvm.lifetime.start(i64 56, i8* nonnull %5) #11, !dbg !2789
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2715, metadata !980) #11, !dbg !2790
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2721, metadata !609) #11, !dbg !2791
  %6 = getelementptr inbounds [52 x i8], [52 x i8]* %3, i64 0, i64 0, !dbg !2792
  call void @llvm.lifetime.start(i64 52, i8* nonnull %6), !dbg !2792
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2716, metadata !609) #11, !dbg !2781
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2716, metadata !2732) #11, !dbg !2781
  call void @llvm.memset.p0i8.i64(i8* nonnull %6, i8 0, i64 52, i32 4, i1 false), !dbg !2781
  %7 = icmp eq i32 %0, 10, !dbg !2793
  br i1 %7, label %8, label %9, !dbg !2794

; <label>:8:                                      ; preds = %2
  tail call void @abort() #14, !dbg !2795, !noalias !2796
  unreachable, !dbg !2795

; <label>:9:                                      ; preds = %2
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2716, metadata !2732) #11, !dbg !2781
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2799
  store i32 %0, i32* %10, align 8, !dbg !2799, !alias.scope !2796
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2799
  %12 = bitcast i32* %11 to i8*, !dbg !2799
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* nonnull %6, i64 52, i32 4, i1 false) #11, !dbg !2799
  call void @llvm.lifetime.end(i64 52, i8* nonnull %6), !dbg !2800
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2715, metadata !980) #11, !dbg !2790
  %13 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %4) #11, !dbg !2801
  call void @llvm.lifetime.end(i64 56, i8* nonnull %5) #11, !dbg !2802
  ret i8* %13, !dbg !2803
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !2804 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !2716, metadata !2722), !dbg !2811
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2808, metadata !609), !dbg !2814
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2809, metadata !609), !dbg !2815
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2810, metadata !609), !dbg !2816
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2749, metadata !609) #11, !dbg !2817
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2750, metadata !609) #11, !dbg !2818
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2751, metadata !609) #11, !dbg !2819
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2752, metadata !609) #11, !dbg !2820
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2821
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #11, !dbg !2821
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2753, metadata !980) #11, !dbg !2822
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2721, metadata !609) #11, !dbg !2823
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !2824
  call void @llvm.lifetime.start(i64 52, i8* nonnull %7), !dbg !2824
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2716, metadata !609) #11, !dbg !2811
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2716, metadata !2732) #11, !dbg !2811
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !2811
  %8 = icmp eq i32 %0, 10, !dbg !2825
  br i1 %8, label %9, label %10, !dbg !2826

; <label>:9:                                      ; preds = %3
  tail call void @abort() #14, !dbg !2827, !noalias !2828
  unreachable, !dbg !2827

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2716, metadata !2732) #11, !dbg !2811
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2831
  store i32 %0, i32* %11, align 8, !dbg !2831, !alias.scope !2828
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2831
  %13 = bitcast i32* %12 to i8*, !dbg !2831
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #11, !dbg !2831
  call void @llvm.lifetime.end(i64 52, i8* nonnull %7), !dbg !2832
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2753, metadata !980) #11, !dbg !2822
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %5) #11, !dbg !2833
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #11, !dbg !2834
  ret i8* %14, !dbg !2835
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char_mem(i8*, i64, i8 signext) local_unnamed_addr #6 !dbg !2836 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2840, metadata !609), !dbg !2844
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2841, metadata !609), !dbg !2845
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !2842, metadata !609), !dbg !2846
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2847
  call void @llvm.lifetime.start(i64 56, i8* nonnull %5) #11, !dbg !2847
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !2848, !tbaa.struct !2849
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2843, metadata !980), !dbg !2850
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1302, metadata !609), !dbg !2851
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !1303, metadata !609), !dbg !2853
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1304, metadata !609), !dbg !2854
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !1305, metadata !609), !dbg !2855
  %6 = lshr i8 %2, 5, !dbg !2856
  %7 = zext i8 %6 to i64, !dbg !2856
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !2857
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !1306, metadata !609), !dbg !2858
  %9 = and i8 %2, 31, !dbg !2859
  %10 = zext i8 %9 to i32, !dbg !2860
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !1308, metadata !609), !dbg !2861
  %11 = load i32, i32* %8, align 4, !dbg !2862, !tbaa !729
  %12 = lshr i32 %11, %10, !dbg !2863
  %13 = and i32 %12, 1, !dbg !2864
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !1309, metadata !609), !dbg !2865
  %14 = xor i32 %13, 1, !dbg !2866
  %15 = shl i32 %14, %10, !dbg !2867
  %16 = xor i32 %15, %11, !dbg !2868
  store i32 %16, i32* %8, align 4, !dbg !2868, !tbaa !729
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2843, metadata !980), !dbg !2850
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !2869
  call void @llvm.lifetime.end(i64 56, i8* nonnull %5) #11, !dbg !2870
  ret i8* %17, !dbg !2871
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char(i8*, i8 signext) local_unnamed_addr #6 !dbg !2872 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2876, metadata !609), !dbg !2878
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !2877, metadata !609), !dbg !2879
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2840, metadata !609) #11, !dbg !2880
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2841, metadata !609) #11, !dbg !2882
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !2842, metadata !609) #11, !dbg !2883
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2884
  call void @llvm.lifetime.start(i64 56, i8* nonnull %4) #11, !dbg !2884
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #11, !dbg !2885, !tbaa.struct !2849
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2843, metadata !980) #11, !dbg !2886
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !1302, metadata !609) #11, !dbg !2887
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1303, metadata !609) #11, !dbg !2889
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1304, metadata !609) #11, !dbg !2890
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1305, metadata !609) #11, !dbg !2891
  %5 = lshr i8 %1, 5, !dbg !2892
  %6 = zext i8 %5 to i64, !dbg !2892
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !2893
  tail call void @llvm.dbg.value(metadata i32* %7, i64 0, metadata !1306, metadata !609) #11, !dbg !2894
  %8 = and i8 %1, 31, !dbg !2895
  %9 = zext i8 %8 to i32, !dbg !2896
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !1308, metadata !609) #11, !dbg !2897
  %10 = load i32, i32* %7, align 4, !dbg !2898, !tbaa !729
  %11 = lshr i32 %10, %9, !dbg !2899
  %12 = and i32 %11, 1, !dbg !2900
  tail call void @llvm.dbg.value(metadata i32 %12, i64 0, metadata !1309, metadata !609) #11, !dbg !2901
  %13 = xor i32 %12, 1, !dbg !2902
  %14 = shl i32 %13, %9, !dbg !2903
  %15 = xor i32 %14, %10, !dbg !2904
  store i32 %15, i32* %7, align 4, !dbg !2904, !tbaa !729
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2843, metadata !980) #11, !dbg !2886
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #11, !dbg !2905
  call void @llvm.lifetime.end(i64 56, i8* nonnull %4) #11, !dbg !2906
  ret i8* %16, !dbg !2907
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon(i8*) local_unnamed_addr #6 !dbg !2908 {
  %2 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2910, metadata !609), !dbg !2911
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2876, metadata !609) #11, !dbg !2912
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2877, metadata !609) #11, !dbg !2914
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2840, metadata !609) #11, !dbg !2915
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2841, metadata !609) #11, !dbg !2917
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2842, metadata !609) #11, !dbg !2918
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !2919
  call void @llvm.lifetime.start(i64 56, i8* nonnull %3) #11, !dbg !2919
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %3, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #11, !dbg !2920, !tbaa.struct !2849
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2843, metadata !980) #11, !dbg !2921
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !1302, metadata !609) #11, !dbg !2922
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1303, metadata !609) #11, !dbg !2924
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1304, metadata !609) #11, !dbg !2925
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1305, metadata !609) #11, !dbg !2926
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !2927
  tail call void @llvm.dbg.value(metadata i32* %4, i64 0, metadata !1306, metadata !609) #11, !dbg !2928
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !1308, metadata !609) #11, !dbg !2929
  %5 = load i32, i32* %4, align 4, !dbg !2930, !tbaa !729
  %6 = or i32 %5, 67108864, !dbg !2931
  store i32 %6, i32* %4, align 4, !dbg !2931, !tbaa !729
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2843, metadata !980) #11, !dbg !2921
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #11, !dbg !2932
  call void @llvm.lifetime.end(i64 56, i8* nonnull %3) #11, !dbg !2933
  ret i8* %7, !dbg !2934
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon_mem(i8*, i64) local_unnamed_addr #6 !dbg !2935 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2937, metadata !609), !dbg !2939
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2938, metadata !609), !dbg !2940
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2840, metadata !609) #11, !dbg !2941
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2841, metadata !609) #11, !dbg !2943
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2842, metadata !609) #11, !dbg !2944
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2945
  call void @llvm.lifetime.start(i64 56, i8* nonnull %4) #11, !dbg !2945
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #11, !dbg !2946, !tbaa.struct !2849
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2843, metadata !980) #11, !dbg !2947
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !1302, metadata !609) #11, !dbg !2948
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1303, metadata !609) #11, !dbg !2950
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1304, metadata !609) #11, !dbg !2951
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1305, metadata !609) #11, !dbg !2952
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !2953
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !1306, metadata !609) #11, !dbg !2954
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !1308, metadata !609) #11, !dbg !2955
  %6 = load i32, i32* %5, align 4, !dbg !2956, !tbaa !729
  %7 = or i32 %6, 67108864, !dbg !2957
  store i32 %7, i32* %5, align 4, !dbg !2957, !tbaa !729
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2843, metadata !980) #11, !dbg !2947
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #11, !dbg !2958
  call void @llvm.lifetime.end(i64 56, i8* nonnull %4) #11, !dbg !2959
  ret i8* %8, !dbg !2960
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_colon(i32, i32, i8*) local_unnamed_addr #6 !dbg !2961 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !2716, metadata !2722), !dbg !2967
  %5 = alloca %struct.quoting_options, align 8
  %6 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2963, metadata !609), !dbg !2969
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2964, metadata !609), !dbg !2970
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2965, metadata !609), !dbg !2971
  %7 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2972
  call void @llvm.lifetime.start(i64 56, i8* nonnull %7) #11, !dbg !2972
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2721, metadata !609) #11, !dbg !2973
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !2974
  call void @llvm.lifetime.start(i64 52, i8* nonnull %8), !dbg !2974
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2716, metadata !609) #11, !dbg !2967
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2716, metadata !2732) #11, !dbg !2967
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !2967
  %9 = icmp eq i32 %1, 10, !dbg !2975
  br i1 %9, label %10, label %11, !dbg !2976

; <label>:10:                                     ; preds = %3
  tail call void @abort() #14, !dbg !2977, !noalias !2978
  unreachable, !dbg !2977

; <label>:11:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2716, metadata !2732) #11, !dbg !2967
  %12 = getelementptr inbounds [52 x i8], [52 x i8]* %6, i64 0, i64 0, !dbg !2981
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %12, i8* nonnull %8, i64 52, i32 4, i1 false), !dbg !2981
  call void @llvm.lifetime.end(i64 52, i8* nonnull %8), !dbg !2982
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2983
  store i32 %1, i32* %13, align 8, !dbg !2983
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2983
  %15 = bitcast i32* %14 to i8*, !dbg !2983
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* nonnull %12, i64 52, i32 4, i1 false), !dbg !2983
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2966, metadata !980), !dbg !2984
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1302, metadata !609), !dbg !2985
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1303, metadata !609), !dbg !2987
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1304, metadata !609), !dbg !2988
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1305, metadata !609), !dbg !2989
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 1, !dbg !2990
  tail call void @llvm.dbg.value(metadata i32* %16, i64 0, metadata !1306, metadata !609), !dbg !2991
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !1308, metadata !609), !dbg !2992
  %17 = load i32, i32* %16, align 4, !dbg !2993, !tbaa !729
  %18 = or i32 %17, 67108864, !dbg !2994
  store i32 %18, i32* %16, align 4, !dbg !2994, !tbaa !729
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2966, metadata !980), !dbg !2984
  %19 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !2995
  call void @llvm.lifetime.end(i64 56, i8* nonnull %7) #11, !dbg !2996
  ret i8* %19, !dbg !2997
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom(i32, i8*, i8*, i8*) local_unnamed_addr #6 !dbg !2998 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3002, metadata !609), !dbg !3006
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3003, metadata !609), !dbg !3007
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3004, metadata !609), !dbg !3008
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3005, metadata !609), !dbg !3009
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3010, metadata !609) #11, !dbg !3020
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3015, metadata !609) #11, !dbg !3022
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3016, metadata !609) #11, !dbg !3023
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3017, metadata !609) #11, !dbg !3024
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3018, metadata !609) #11, !dbg !3025
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3026
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #11, !dbg !3026
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #11, !dbg !3027, !tbaa.struct !2849
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3019, metadata !980) #11, !dbg !3028
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1352, metadata !609) #11, !dbg !3029
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1353, metadata !609) #11, !dbg !3031
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1354, metadata !609) #11, !dbg !3032
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1352, metadata !609) #11, !dbg !3029
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1352, metadata !609) #11, !dbg !3029
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3033
  store i32 10, i32* %7, align 8, !dbg !3034, !tbaa !1282
  %8 = icmp ne i8* %1, null, !dbg !3035
  %9 = icmp ne i8* %2, null, !dbg !3036
  %10 = and i1 %8, %9, !dbg !3037
  br i1 %10, label %12, label %11, !dbg !3037

; <label>:11:                                     ; preds = %4
  tail call void @abort() #14, !dbg !3038
  unreachable, !dbg !3038

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3039
  store i8* %1, i8** %13, align 8, !dbg !3040, !tbaa !1371
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3041
  store i8* %2, i8** %14, align 8, !dbg !3042, !tbaa !1374
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3019, metadata !980) #11, !dbg !3028
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #11, !dbg !3043
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #11, !dbg !3044
  ret i8* %15, !dbg !3045
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom_mem(i32, i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !3011 {
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3010, metadata !609), !dbg !3046
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3015, metadata !609), !dbg !3047
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3016, metadata !609), !dbg !3048
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3017, metadata !609), !dbg !3049
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !3018, metadata !609), !dbg !3050
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !3051
  call void @llvm.lifetime.start(i64 56, i8* nonnull %7) #11, !dbg !3051
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %7, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !3052, !tbaa.struct !2849
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !3019, metadata !980), !dbg !3053
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !1352, metadata !609) #11, !dbg !3054
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1353, metadata !609) #11, !dbg !3056
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1354, metadata !609) #11, !dbg !3057
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1352, metadata !609) #11, !dbg !3054
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !1352, metadata !609) #11, !dbg !3054
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3058
  store i32 10, i32* %8, align 8, !dbg !3059, !tbaa !1282
  %9 = icmp ne i8* %1, null, !dbg !3060
  %10 = icmp ne i8* %2, null, !dbg !3061
  %11 = and i1 %9, %10, !dbg !3062
  br i1 %11, label %13, label %12, !dbg !3062

; <label>:12:                                     ; preds = %5
  tail call void @abort() #14, !dbg !3063
  unreachable, !dbg !3063

; <label>:13:                                     ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3064
  store i8* %1, i8** %14, align 8, !dbg !3065, !tbaa !1371
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3066
  store i8* %2, i8** %15, align 8, !dbg !3067, !tbaa !1374
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !3019, metadata !980), !dbg !3053
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !3068
  call void @llvm.lifetime.end(i64 56, i8* nonnull %7) #11, !dbg !3069
  ret i8* %16, !dbg !3070
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom(i8*, i8*, i8*) local_unnamed_addr #6 !dbg !3071 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3075, metadata !609), !dbg !3078
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3076, metadata !609), !dbg !3079
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3077, metadata !609), !dbg !3080
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3002, metadata !609) #11, !dbg !3081
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3003, metadata !609) #11, !dbg !3083
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3004, metadata !609) #11, !dbg !3084
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3005, metadata !609) #11, !dbg !3085
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3010, metadata !609) #11, !dbg !3086
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3015, metadata !609) #11, !dbg !3088
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3016, metadata !609) #11, !dbg !3089
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3017, metadata !609) #11, !dbg !3090
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3018, metadata !609) #11, !dbg !3091
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3092
  call void @llvm.lifetime.start(i64 56, i8* nonnull %5) #11, !dbg !3092
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #11, !dbg !3093, !tbaa.struct !2849
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3019, metadata !980) #11, !dbg !3094
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1352, metadata !609) #11, !dbg !3095
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1353, metadata !609) #11, !dbg !3097
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1354, metadata !609) #11, !dbg !3098
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1352, metadata !609) #11, !dbg !3095
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1352, metadata !609) #11, !dbg !3095
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3099
  store i32 10, i32* %6, align 8, !dbg !3100, !tbaa !1282
  %7 = icmp ne i8* %0, null, !dbg !3101
  %8 = icmp ne i8* %1, null, !dbg !3102
  %9 = and i1 %7, %8, !dbg !3103
  br i1 %9, label %11, label %10, !dbg !3103

; <label>:10:                                     ; preds = %3
  tail call void @abort() #14, !dbg !3104
  unreachable, !dbg !3104

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !3105
  store i8* %0, i8** %12, align 8, !dbg !3106, !tbaa !1371
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !3107
  store i8* %1, i8** %13, align 8, !dbg !3108, !tbaa !1374
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3019, metadata !980) #11, !dbg !3094
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #11, !dbg !3109
  call void @llvm.lifetime.end(i64 56, i8* nonnull %5) #11, !dbg !3110
  ret i8* %14, !dbg !3111
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom_mem(i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !3112 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3116, metadata !609), !dbg !3120
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3117, metadata !609), !dbg !3121
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3118, metadata !609), !dbg !3122
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3119, metadata !609), !dbg !3123
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3010, metadata !609) #11, !dbg !3124
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3015, metadata !609) #11, !dbg !3126
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3016, metadata !609) #11, !dbg !3127
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3017, metadata !609) #11, !dbg !3128
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3018, metadata !609) #11, !dbg !3129
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3130
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #11, !dbg !3130
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #11, !dbg !3131, !tbaa.struct !2849
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3019, metadata !980) #11, !dbg !3132
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1352, metadata !609) #11, !dbg !3133
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1353, metadata !609) #11, !dbg !3135
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1354, metadata !609) #11, !dbg !3136
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1352, metadata !609) #11, !dbg !3133
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1352, metadata !609) #11, !dbg !3133
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3137
  store i32 10, i32* %7, align 8, !dbg !3138, !tbaa !1282
  %8 = icmp ne i8* %0, null, !dbg !3139
  %9 = icmp ne i8* %1, null, !dbg !3140
  %10 = and i1 %8, %9, !dbg !3141
  br i1 %10, label %12, label %11, !dbg !3141

; <label>:11:                                     ; preds = %4
  tail call void @abort() #14, !dbg !3142
  unreachable, !dbg !3142

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3143
  store i8* %0, i8** %13, align 8, !dbg !3144, !tbaa !1371
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3145
  store i8* %1, i8** %14, align 8, !dbg !3146, !tbaa !1374
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3019, metadata !980) #11, !dbg !3132
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #11, !dbg !3147
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #11, !dbg !3148
  ret i8* %15, !dbg !3149
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !3150 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3154, metadata !609), !dbg !3157
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3155, metadata !609), !dbg !3158
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3156, metadata !609), !dbg !3159
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !3160
  ret i8* %4, !dbg !3161
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_mem(i8*, i64) local_unnamed_addr #6 !dbg !3162 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3166, metadata !609), !dbg !3168
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3167, metadata !609), !dbg !3169
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3154, metadata !609) #11, !dbg !3170
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3155, metadata !609) #11, !dbg !3172
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3156, metadata !609) #11, !dbg !3173
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #11, !dbg !3174
  ret i8* %3, !dbg !3175
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n(i32, i8*) local_unnamed_addr #6 !dbg !3176 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3180, metadata !609), !dbg !3182
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3181, metadata !609), !dbg !3183
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3154, metadata !609) #11, !dbg !3184
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3155, metadata !609) #11, !dbg !3186
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3156, metadata !609) #11, !dbg !3187
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #11, !dbg !3188
  ret i8* %3, !dbg !3189
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote(i8*) local_unnamed_addr #6 !dbg !3190 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3194, metadata !609), !dbg !3195
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3180, metadata !609) #11, !dbg !3196
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3181, metadata !609) #11, !dbg !3198
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3154, metadata !609) #11, !dbg !3199
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3155, metadata !609) #11, !dbg !3201
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3156, metadata !609) #11, !dbg !3202
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #11, !dbg !3203
  ret i8* %2, !dbg !3204
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_arn(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly, i64) local_unnamed_addr #6 !dbg !3205 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3262, metadata !609), !dbg !3268
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3263, metadata !609), !dbg !3269
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3264, metadata !609), !dbg !3270
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3265, metadata !609), !dbg !3271
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !3266, metadata !609), !dbg !3272
  tail call void @llvm.dbg.value(metadata i64 %5, i64 0, metadata !3267, metadata !609), !dbg !3273
  %7 = icmp eq i8* %1, null, !dbg !3274
  br i1 %7, label %10, label %8, !dbg !3276

; <label>:8:                                      ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.69, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #11, !dbg !3277
  br label %12, !dbg !3277

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.70, i64 0, i64 0), i8* %2, i8* %3) #11, !dbg !3278
  br label %12

; <label>:12:                                     ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.71, i64 0, i64 0), i32 5) #11, !dbg !3279
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2017) #11, !dbg !3280
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([203 x i8], [203 x i8]* @.str.3.72, i64 0, i64 0), i32 5) #11, !dbg !3282
  %16 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %0) #11, !dbg !3283
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
  ], !dbg !3284

; <label>:17:                                     ; preds = %12
  tail call void @abort() #14, !dbg !3285
  unreachable, !dbg !3285

; <label>:18:                                     ; preds = %12
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4.73, i64 0, i64 0), i32 5) #11, !dbg !3287
  %20 = load i8*, i8** %4, align 8, !dbg !3287, !tbaa !617
  %21 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %19, i8* %20) #11, !dbg !3288
  br label %146, !dbg !3290

; <label>:22:                                     ; preds = %12
  %23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5.74, i64 0, i64 0), i32 5) #11, !dbg !3291
  %24 = load i8*, i8** %4, align 8, !dbg !3291, !tbaa !617
  %25 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3291
  %26 = load i8*, i8** %25, align 8, !dbg !3291, !tbaa !617
  %27 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %23, i8* %24, i8* %26) #11, !dbg !3292
  br label %146, !dbg !3293

; <label>:28:                                     ; preds = %12
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6.75, i64 0, i64 0), i32 5) #11, !dbg !3294
  %30 = load i8*, i8** %4, align 8, !dbg !3294, !tbaa !617
  %31 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3294
  %32 = load i8*, i8** %31, align 8, !dbg !3294, !tbaa !617
  %33 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3294
  %34 = load i8*, i8** %33, align 8, !dbg !3294, !tbaa !617
  %35 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %29, i8* %30, i8* %32, i8* %34) #11, !dbg !3295
  br label %146, !dbg !3296

; <label>:36:                                     ; preds = %12
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7.76, i64 0, i64 0), i32 5) #11, !dbg !3297
  %38 = load i8*, i8** %4, align 8, !dbg !3297, !tbaa !617
  %39 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3297
  %40 = load i8*, i8** %39, align 8, !dbg !3297, !tbaa !617
  %41 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3297
  %42 = load i8*, i8** %41, align 8, !dbg !3297, !tbaa !617
  %43 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3297
  %44 = load i8*, i8** %43, align 8, !dbg !3297, !tbaa !617
  %45 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %37, i8* %38, i8* %40, i8* %42, i8* %44) #11, !dbg !3298
  br label %146, !dbg !3299

; <label>:46:                                     ; preds = %12
  %47 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8.77, i64 0, i64 0), i32 5) #11, !dbg !3300
  %48 = load i8*, i8** %4, align 8, !dbg !3300, !tbaa !617
  %49 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3300
  %50 = load i8*, i8** %49, align 8, !dbg !3300, !tbaa !617
  %51 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3300
  %52 = load i8*, i8** %51, align 8, !dbg !3300, !tbaa !617
  %53 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3300
  %54 = load i8*, i8** %53, align 8, !dbg !3300, !tbaa !617
  %55 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3300
  %56 = load i8*, i8** %55, align 8, !dbg !3300, !tbaa !617
  %57 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %47, i8* %48, i8* %50, i8* %52, i8* %54, i8* %56) #11, !dbg !3301
  br label %146, !dbg !3302

; <label>:58:                                     ; preds = %12
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9.78, i64 0, i64 0), i32 5) #11, !dbg !3303
  %60 = load i8*, i8** %4, align 8, !dbg !3303, !tbaa !617
  %61 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3303
  %62 = load i8*, i8** %61, align 8, !dbg !3303, !tbaa !617
  %63 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3303
  %64 = load i8*, i8** %63, align 8, !dbg !3303, !tbaa !617
  %65 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3303
  %66 = load i8*, i8** %65, align 8, !dbg !3303, !tbaa !617
  %67 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3303
  %68 = load i8*, i8** %67, align 8, !dbg !3303, !tbaa !617
  %69 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3303
  %70 = load i8*, i8** %69, align 8, !dbg !3303, !tbaa !617
  %71 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %59, i8* %60, i8* %62, i8* %64, i8* %66, i8* %68, i8* %70) #11, !dbg !3304
  br label %146, !dbg !3305

; <label>:72:                                     ; preds = %12
  %73 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10.79, i64 0, i64 0), i32 5) #11, !dbg !3306
  %74 = load i8*, i8** %4, align 8, !dbg !3306, !tbaa !617
  %75 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3306
  %76 = load i8*, i8** %75, align 8, !dbg !3306, !tbaa !617
  %77 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3306
  %78 = load i8*, i8** %77, align 8, !dbg !3306, !tbaa !617
  %79 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3306
  %80 = load i8*, i8** %79, align 8, !dbg !3306, !tbaa !617
  %81 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3306
  %82 = load i8*, i8** %81, align 8, !dbg !3306, !tbaa !617
  %83 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3306
  %84 = load i8*, i8** %83, align 8, !dbg !3306, !tbaa !617
  %85 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3306
  %86 = load i8*, i8** %85, align 8, !dbg !3306, !tbaa !617
  %87 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %73, i8* %74, i8* %76, i8* %78, i8* %80, i8* %82, i8* %84, i8* %86) #11, !dbg !3307
  br label %146, !dbg !3308

; <label>:88:                                     ; preds = %12
  %89 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11.80, i64 0, i64 0), i32 5) #11, !dbg !3309
  %90 = load i8*, i8** %4, align 8, !dbg !3309, !tbaa !617
  %91 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3309
  %92 = load i8*, i8** %91, align 8, !dbg !3309, !tbaa !617
  %93 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3309
  %94 = load i8*, i8** %93, align 8, !dbg !3309, !tbaa !617
  %95 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3309
  %96 = load i8*, i8** %95, align 8, !dbg !3309, !tbaa !617
  %97 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3309
  %98 = load i8*, i8** %97, align 8, !dbg !3309, !tbaa !617
  %99 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3309
  %100 = load i8*, i8** %99, align 8, !dbg !3309, !tbaa !617
  %101 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3309
  %102 = load i8*, i8** %101, align 8, !dbg !3309, !tbaa !617
  %103 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3309
  %104 = load i8*, i8** %103, align 8, !dbg !3309, !tbaa !617
  %105 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %89, i8* %90, i8* %92, i8* %94, i8* %96, i8* %98, i8* %100, i8* %102, i8* %104) #11, !dbg !3310
  br label %146, !dbg !3311

; <label>:106:                                    ; preds = %12
  %107 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12.81, i64 0, i64 0), i32 5) #11, !dbg !3312
  %108 = load i8*, i8** %4, align 8, !dbg !3312, !tbaa !617
  %109 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3312
  %110 = load i8*, i8** %109, align 8, !dbg !3312, !tbaa !617
  %111 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3312
  %112 = load i8*, i8** %111, align 8, !dbg !3312, !tbaa !617
  %113 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3312
  %114 = load i8*, i8** %113, align 8, !dbg !3312, !tbaa !617
  %115 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3312
  %116 = load i8*, i8** %115, align 8, !dbg !3312, !tbaa !617
  %117 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3312
  %118 = load i8*, i8** %117, align 8, !dbg !3312, !tbaa !617
  %119 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3312
  %120 = load i8*, i8** %119, align 8, !dbg !3312, !tbaa !617
  %121 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3312
  %122 = load i8*, i8** %121, align 8, !dbg !3312, !tbaa !617
  %123 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3312
  %124 = load i8*, i8** %123, align 8, !dbg !3312, !tbaa !617
  %125 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %107, i8* %108, i8* %110, i8* %112, i8* %114, i8* %116, i8* %118, i8* %120, i8* %122, i8* %124) #11, !dbg !3313
  br label %146, !dbg !3314

; <label>:126:                                    ; preds = %12
  %127 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13.82, i64 0, i64 0), i32 5) #11, !dbg !3315
  %128 = load i8*, i8** %4, align 8, !dbg !3315, !tbaa !617
  %129 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3315
  %130 = load i8*, i8** %129, align 8, !dbg !3315, !tbaa !617
  %131 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3315
  %132 = load i8*, i8** %131, align 8, !dbg !3315, !tbaa !617
  %133 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3315
  %134 = load i8*, i8** %133, align 8, !dbg !3315, !tbaa !617
  %135 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3315
  %136 = load i8*, i8** %135, align 8, !dbg !3315, !tbaa !617
  %137 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3315
  %138 = load i8*, i8** %137, align 8, !dbg !3315, !tbaa !617
  %139 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3315
  %140 = load i8*, i8** %139, align 8, !dbg !3315, !tbaa !617
  %141 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3315
  %142 = load i8*, i8** %141, align 8, !dbg !3315, !tbaa !617
  %143 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3315
  %144 = load i8*, i8** %143, align 8, !dbg !3315, !tbaa !617
  %145 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %127, i8* %128, i8* %130, i8* %132, i8* %134, i8* %136, i8* %138, i8* %140, i8* %142, i8* %144) #11, !dbg !3316
  br label %146, !dbg !3317

; <label>:146:                                    ; preds = %126, %106, %88, %72, %58, %46, %36, %28, %22, %18
  ret void, !dbg !3318
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_ar(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly) local_unnamed_addr #6 !dbg !3319 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3323, metadata !609), !dbg !3329
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3324, metadata !609), !dbg !3330
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3325, metadata !609), !dbg !3331
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3326, metadata !609), !dbg !3332
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !3327, metadata !609), !dbg !3333
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3328, metadata !609), !dbg !3334
  br label %6, !dbg !3335

; <label>:6:                                      ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !3328, metadata !609), !dbg !3334
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !3337
  %9 = load i8*, i8** %8, align 8, !dbg !3337, !tbaa !617
  %10 = icmp eq i8* %9, null, !dbg !3340
  %11 = add i64 %7, 1, !dbg !3342
  tail call void @llvm.dbg.value(metadata i64 %11, i64 0, metadata !3328, metadata !609), !dbg !3334
  br i1 %10, label %12, label %6, !dbg !3340, !llvm.loop !3344

; <label>:12:                                     ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !3347
  ret void, !dbg !3348
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_va(%struct._IO_FILE*, i8*, i8*, i8*, %struct.__va_list_tag* nocapture) local_unnamed_addr #6 !dbg !3349 {
  %6 = alloca [10 x i8*], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3360, metadata !609), !dbg !3368
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3361, metadata !609), !dbg !3369
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3362, metadata !609), !dbg !3370
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3363, metadata !609), !dbg !3371
  tail call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, i64 0, metadata !3364, metadata !609), !dbg !3372
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !3373
  call void @llvm.lifetime.start(i64 80, i8* nonnull %7) #11, !dbg !3373
  tail call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !3366, metadata !609), !dbg !3374
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3365, metadata !609), !dbg !3375
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3365, metadata !609), !dbg !3375
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  %11 = load i32, i32* %8, align 8, !dbg !3376
  %12 = icmp ult i32 %11, 41, !dbg !3376
  br i1 %12, label %13, label %18, !dbg !3376

; <label>:13:                                     ; preds = %5
  %14 = load i8*, i8** %9, align 8, !dbg !3380
  %15 = sext i32 %11 to i64, !dbg !3380
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !3380
  %17 = add i32 %11, 8, !dbg !3380
  store i32 %17, i32* %8, align 8, !dbg !3380
  br label %21, !dbg !3380

; <label>:18:                                     ; preds = %5
  %19 = load i8*, i8** %10, align 8, !dbg !3382
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !3382
  store i8* %20, i8** %10, align 8, !dbg !3382
  br label %21, !dbg !3382

; <label>:21:                                     ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ], !dbg !3376
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !3384
  %25 = load i8*, i8** %24, align 8, !dbg !3384
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !3386
  store i8* %25, i8** %26, align 16, !dbg !3387, !tbaa !617
  %27 = icmp eq i8* %25, null, !dbg !3388
  br i1 %27, label %30, label %28, !dbg !3389

; <label>:28:                                     ; preds = %21
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3365, metadata !609), !dbg !3375
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3365, metadata !609), !dbg !3375
  %29 = icmp ult i32 %22, 41, !dbg !3376
  br i1 %29, label %35, label %32, !dbg !3376

; <label>:30:                                     ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ]
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !3391
  call void @llvm.lifetime.end(i64 80, i8* nonnull %7) #11, !dbg !3392
  ret void, !dbg !3392

; <label>:32:                                     ; preds = %28
  %33 = load i8*, i8** %10, align 8, !dbg !3382
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !3382
  store i8* %34, i8** %10, align 8, !dbg !3382
  br label %40, !dbg !3382

; <label>:35:                                     ; preds = %28
  %36 = load i8*, i8** %9, align 8, !dbg !3380
  %37 = sext i32 %22 to i64, !dbg !3380
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !3380
  %39 = add i32 %22, 8, !dbg !3380
  store i32 %39, i32* %8, align 8, !dbg !3380
  br label %40, !dbg !3380

; <label>:40:                                     ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ], !dbg !3376
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !3384
  %44 = load i8*, i8** %43, align 8, !dbg !3384
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !3386
  store i8* %44, i8** %45, align 8, !dbg !3387, !tbaa !617
  %46 = icmp eq i8* %44, null, !dbg !3388
  br i1 %46, label %30, label %47, !dbg !3389

; <label>:47:                                     ; preds = %40
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3365, metadata !609), !dbg !3375
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3365, metadata !609), !dbg !3375
  %48 = icmp ult i32 %41, 41, !dbg !3376
  br i1 %48, label %52, label %49, !dbg !3376

; <label>:49:                                     ; preds = %47
  %50 = load i8*, i8** %10, align 8, !dbg !3382
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !3382
  store i8* %51, i8** %10, align 8, !dbg !3382
  br label %57, !dbg !3382

; <label>:52:                                     ; preds = %47
  %53 = load i8*, i8** %9, align 8, !dbg !3380
  %54 = sext i32 %41 to i64, !dbg !3380
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !3380
  %56 = add i32 %41, 8, !dbg !3380
  store i32 %56, i32* %8, align 8, !dbg !3380
  br label %57, !dbg !3380

; <label>:57:                                     ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ], !dbg !3376
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !3384
  %61 = load i8*, i8** %60, align 8, !dbg !3384
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !3386
  store i8* %61, i8** %62, align 16, !dbg !3387, !tbaa !617
  %63 = icmp eq i8* %61, null, !dbg !3388
  br i1 %63, label %30, label %64, !dbg !3389

; <label>:64:                                     ; preds = %57
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3365, metadata !609), !dbg !3375
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3365, metadata !609), !dbg !3375
  %65 = icmp ult i32 %58, 41, !dbg !3376
  br i1 %65, label %69, label %66, !dbg !3376

; <label>:66:                                     ; preds = %64
  %67 = load i8*, i8** %10, align 8, !dbg !3382
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !3382
  store i8* %68, i8** %10, align 8, !dbg !3382
  br label %74, !dbg !3382

; <label>:69:                                     ; preds = %64
  %70 = load i8*, i8** %9, align 8, !dbg !3380
  %71 = sext i32 %58 to i64, !dbg !3380
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !3380
  %73 = add i32 %58, 8, !dbg !3380
  store i32 %73, i32* %8, align 8, !dbg !3380
  br label %74, !dbg !3380

; <label>:74:                                     ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ], !dbg !3376
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !3384
  %78 = load i8*, i8** %77, align 8, !dbg !3384
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !3386
  store i8* %78, i8** %79, align 8, !dbg !3387, !tbaa !617
  %80 = icmp eq i8* %78, null, !dbg !3388
  br i1 %80, label %30, label %81, !dbg !3389

; <label>:81:                                     ; preds = %74
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3365, metadata !609), !dbg !3375
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3365, metadata !609), !dbg !3375
  %82 = icmp ult i32 %75, 41, !dbg !3376
  br i1 %82, label %86, label %83, !dbg !3376

; <label>:83:                                     ; preds = %81
  %84 = load i8*, i8** %10, align 8, !dbg !3382
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !3382
  store i8* %85, i8** %10, align 8, !dbg !3382
  br label %91, !dbg !3382

; <label>:86:                                     ; preds = %81
  %87 = load i8*, i8** %9, align 8, !dbg !3380
  %88 = sext i32 %75 to i64, !dbg !3380
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !3380
  %90 = add i32 %75, 8, !dbg !3380
  store i32 %90, i32* %8, align 8, !dbg !3380
  br label %91, !dbg !3380

; <label>:91:                                     ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ], !dbg !3376
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !3384
  %95 = load i8*, i8** %94, align 8, !dbg !3384
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !3386
  store i8* %95, i8** %96, align 16, !dbg !3387, !tbaa !617
  %97 = icmp eq i8* %95, null, !dbg !3388
  br i1 %97, label %30, label %98, !dbg !3389

; <label>:98:                                     ; preds = %91
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3365, metadata !609), !dbg !3375
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3365, metadata !609), !dbg !3375
  %99 = icmp ult i32 %92, 41, !dbg !3376
  br i1 %99, label %103, label %100, !dbg !3376

; <label>:100:                                    ; preds = %98
  %101 = load i8*, i8** %10, align 8, !dbg !3382
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !3382
  store i8* %102, i8** %10, align 8, !dbg !3382
  br label %108, !dbg !3382

; <label>:103:                                    ; preds = %98
  %104 = load i8*, i8** %9, align 8, !dbg !3380
  %105 = sext i32 %92 to i64, !dbg !3380
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !3380
  %107 = add i32 %92, 8, !dbg !3380
  store i32 %107, i32* %8, align 8, !dbg !3380
  br label %108, !dbg !3380

; <label>:108:                                    ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !3384
  %111 = load i8*, i8** %110, align 8, !dbg !3384
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !3386
  store i8* %111, i8** %112, align 8, !dbg !3387, !tbaa !617
  %113 = icmp eq i8* %111, null, !dbg !3388
  br i1 %113, label %30, label %114, !dbg !3389

; <label>:114:                                    ; preds = %108
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3365, metadata !609), !dbg !3375
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3365, metadata !609), !dbg !3375
  %115 = load i8*, i8** %10, align 8, !dbg !3382
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !3382
  store i8* %116, i8** %10, align 8, !dbg !3382
  %117 = bitcast i8* %115 to i8**, !dbg !3384
  %118 = load i8*, i8** %117, align 8, !dbg !3384
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !3386
  store i8* %118, i8** %119, align 16, !dbg !3387, !tbaa !617
  %120 = icmp eq i8* %118, null, !dbg !3388
  br i1 %120, label %30, label %121, !dbg !3389

; <label>:121:                                    ; preds = %114
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3365, metadata !609), !dbg !3375
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3365, metadata !609), !dbg !3375
  %122 = load i8*, i8** %10, align 8, !dbg !3382
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !3382
  store i8* %123, i8** %10, align 8, !dbg !3382
  %124 = bitcast i8* %122 to i8**, !dbg !3384
  %125 = load i8*, i8** %124, align 8, !dbg !3384
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !3386
  store i8* %125, i8** %126, align 8, !dbg !3387, !tbaa !617
  %127 = icmp eq i8* %125, null, !dbg !3388
  br i1 %127, label %30, label %128, !dbg !3389

; <label>:128:                                    ; preds = %121
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3365, metadata !609), !dbg !3375
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3365, metadata !609), !dbg !3375
  %129 = load i8*, i8** %10, align 8, !dbg !3382
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !3382
  store i8* %130, i8** %10, align 8, !dbg !3382
  %131 = bitcast i8* %129 to i8**, !dbg !3384
  %132 = load i8*, i8** %131, align 8, !dbg !3384
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !3386
  store i8* %132, i8** %133, align 16, !dbg !3387, !tbaa !617
  %134 = icmp eq i8* %132, null, !dbg !3388
  br i1 %134, label %30, label %135, !dbg !3389

; <label>:135:                                    ; preds = %128
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3365, metadata !609), !dbg !3375
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3365, metadata !609), !dbg !3375
  %136 = load i8*, i8** %10, align 8, !dbg !3382
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !3382
  store i8* %137, i8** %10, align 8, !dbg !3382
  %138 = bitcast i8* %136 to i8**, !dbg !3384
  %139 = load i8*, i8** %138, align 8, !dbg !3384
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !3386
  store i8* %139, i8** %140, align 8, !dbg !3387, !tbaa !617
  %141 = icmp eq i8* %139, null, !dbg !3388
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3365, metadata !609), !dbg !3375
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3365, metadata !609), !dbg !3375
  %142 = select i1 %141, i64 9, i64 10, !dbg !3389
  br label %30, !dbg !3389
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc(%struct._IO_FILE*, i8*, i8*, i8*, ...) local_unnamed_addr #6 !dbg !3393 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3397, metadata !609), !dbg !3407
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3398, metadata !609), !dbg !3408
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3399, metadata !609), !dbg !3409
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3400, metadata !609), !dbg !3410
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !3411
  call void @llvm.lifetime.start(i64 24, i8* nonnull %6) #11, !dbg !3411
  tail call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !3401, metadata !609), !dbg !3412
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !3413
  call void @llvm.va_start(i8* nonnull %6), !dbg !3413
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !3414
  call void @llvm.va_end(i8* nonnull %6), !dbg !3415
  call void @llvm.lifetime.end(i64 24, i8* nonnull %6) #11, !dbg !3416
  ret void, !dbg !3416
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #11

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #11

; Function Attrs: nounwind sspstrong uwtable
define void @emit_bug_reporting_address() local_unnamed_addr #6 !dbg !3417 {
  %1 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14.85, i64 0, i64 0), i32 5) #11, !dbg !3418
  %2 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15.86, i64 0, i64 0)) #11, !dbg !3419
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.87, i64 0, i64 0), i32 5) #11, !dbg !3421
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17.88, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.18.89, i64 0, i64 0)) #11, !dbg !3422
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.19.90, i64 0, i64 0), i32 5) #11, !dbg !3423
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !3423, !tbaa !617
  %7 = tail call i32 @fputs_unlocked(i8* %5, %struct._IO_FILE* %6) #11, !dbg !3424
  ret void, !dbg !3425
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnmalloc(i64, i64) local_unnamed_addr #13 !dbg !3426 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3430, metadata !609), !dbg !3432
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3431, metadata !609), !dbg !3433
  %3 = udiv i64 9223372036854775807, %1, !dbg !3434
  %4 = icmp ult i64 %3, %0, !dbg !3434
  br i1 %4, label %5, label %6, !dbg !3436

; <label>:5:                                      ; preds = %2
  tail call void @xalloc_die() #14, !dbg !3437
  unreachable, !dbg !3437

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3438
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !3439, metadata !609) #11, !dbg !3446
  %8 = tail call noalias i8* @malloc(i64 %7) #11, !dbg !3448
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !3445, metadata !609) #11, !dbg !3449
  %9 = icmp eq i8* %8, null, !dbg !3450
  %10 = icmp ne i64 %7, 0, !dbg !3452
  %11 = and i1 %10, %9, !dbg !3454
  br i1 %11, label %12, label %13, !dbg !3454

; <label>:12:                                     ; preds = %6
  tail call void @xalloc_die() #14, !dbg !3455
  unreachable, !dbg !3455

; <label>:13:                                     ; preds = %6
  ret i8* %8, !dbg !3456
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmalloc(i64) local_unnamed_addr #6 !dbg !3440 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3439, metadata !609), !dbg !3457
  %2 = tail call noalias i8* @malloc(i64 %0) #11, !dbg !3458
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3445, metadata !609), !dbg !3459
  %3 = icmp eq i8* %2, null, !dbg !3460
  %4 = icmp ne i64 %0, 0, !dbg !3461
  %5 = and i1 %4, %3, !dbg !3462
  br i1 %5, label %6, label %7, !dbg !3462

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #14, !dbg !3463
  unreachable, !dbg !3463

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !3464
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnrealloc(i8*, i64, i64) local_unnamed_addr #13 !dbg !3465 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3469, metadata !609), !dbg !3472
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3470, metadata !609), !dbg !3473
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3471, metadata !609), !dbg !3474
  %4 = udiv i64 9223372036854775807, %2, !dbg !3475
  %5 = icmp ult i64 %4, %1, !dbg !3475
  br i1 %5, label %6, label %7, !dbg !3477

; <label>:6:                                      ; preds = %3
  tail call void @xalloc_die() #14, !dbg !3478
  unreachable, !dbg !3478

; <label>:7:                                      ; preds = %3
  %8 = mul i64 %2, %1, !dbg !3479
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3480, metadata !609) #11, !dbg !3486
  tail call void @llvm.dbg.value(metadata i64 %8, i64 0, metadata !3485, metadata !609) #11, !dbg !3488
  %9 = icmp eq i64 %8, 0, !dbg !3489
  %10 = icmp ne i8* %0, null, !dbg !3491
  %11 = and i1 %10, %9, !dbg !3493
  br i1 %11, label %12, label %13, !dbg !3493

; <label>:12:                                     ; preds = %7
  tail call void @free(i8* nonnull %0) #11, !dbg !3494
  br label %19, !dbg !3496

; <label>:13:                                     ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #11, !dbg !3497
  tail call void @llvm.dbg.value(metadata i8* %14, i64 0, metadata !3480, metadata !609) #11, !dbg !3486
  %15 = icmp eq i8* %14, null, !dbg !3498
  %16 = icmp ne i64 %8, 0, !dbg !3500
  %17 = and i1 %16, %15, !dbg !3502
  br i1 %17, label %18, label %19, !dbg !3502

; <label>:18:                                     ; preds = %13
  tail call void @xalloc_die() #14, !dbg !3503
  unreachable, !dbg !3503

; <label>:19:                                     ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ]
  ret i8* %20, !dbg !3504
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xrealloc(i8*, i64) local_unnamed_addr #6 !dbg !3481 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3480, metadata !609), !dbg !3505
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3485, metadata !609), !dbg !3506
  %3 = icmp eq i64 %1, 0, !dbg !3507
  %4 = icmp ne i8* %0, null, !dbg !3508
  %5 = and i1 %4, %3, !dbg !3509
  br i1 %5, label %6, label %7, !dbg !3509

; <label>:6:                                      ; preds = %2
  tail call void @free(i8* nonnull %0) #11, !dbg !3510
  br label %13, !dbg !3511

; <label>:7:                                      ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #11, !dbg !3512
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !3480, metadata !609), !dbg !3505
  %9 = icmp eq i8* %8, null, !dbg !3513
  %10 = icmp ne i64 %1, 0, !dbg !3514
  %11 = and i1 %10, %9, !dbg !3515
  br i1 %11, label %12, label %13, !dbg !3515

; <label>:12:                                     ; preds = %7
  tail call void @xalloc_die() #14, !dbg !3516
  unreachable, !dbg !3516

; <label>:13:                                     ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ]
  ret i8* %14, !dbg !3517
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @x2nrealloc(i8*, i64* nocapture, i64) local_unnamed_addr #13 !dbg !569 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !574, metadata !609), !dbg !3518
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !575, metadata !609), !dbg !3519
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !576, metadata !609), !dbg !3520
  %4 = load i64, i64* %1, align 8, !dbg !3521, !tbaa !2521
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !577, metadata !609), !dbg !3522
  %5 = icmp eq i8* %0, null, !dbg !3523
  br i1 %5, label %6, label %13, !dbg !3525

; <label>:6:                                      ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3526
  br i1 %7, label %8, label %17, !dbg !3529

; <label>:8:                                      ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3530
  tail call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !577, metadata !609), !dbg !3522
  %10 = icmp ugt i64 %2, 128, !dbg !3532
  %11 = zext i1 %10 to i64, !dbg !3532
  %12 = add nuw nsw i64 %9, %11, !dbg !3533
  tail call void @llvm.dbg.value(metadata i64 %12, i64 0, metadata !577, metadata !609), !dbg !3522
  br label %17, !dbg !3534

; <label>:13:                                     ; preds = %3
  %14 = udiv i64 6148914691236517204, %2, !dbg !3535
  %15 = icmp ugt i64 %14, %4, !dbg !3538
  br i1 %15, label %20, label %16, !dbg !3539

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #14, !dbg !3540
  unreachable, !dbg !3540

; <label>:17:                                     ; preds = %6, %8
  %18 = phi i64 [ %12, %8 ], [ %4, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !577, metadata !609), !dbg !3522
  store i64 %18, i64* %1, align 8, !dbg !3541, !tbaa !2521
  %19 = mul i64 %18, %2, !dbg !3542
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3480, metadata !609) #11, !dbg !3543
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !3485, metadata !609) #11, !dbg !3545
  br label %27, !dbg !3546

; <label>:20:                                     ; preds = %13
  %21 = lshr i64 %4, 1, !dbg !3547
  %22 = add i64 %4, 1, !dbg !3548
  %23 = add i64 %22, %21, !dbg !3549
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !577, metadata !609), !dbg !3522
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !577, metadata !609), !dbg !3522
  store i64 %23, i64* %1, align 8, !dbg !3541, !tbaa !2521
  %24 = mul i64 %23, %2, !dbg !3542
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3480, metadata !609) #11, !dbg !3543
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !3485, metadata !609) #11, !dbg !3545
  %25 = icmp eq i64 %24, 0, !dbg !3550
  br i1 %25, label %26, label %27, !dbg !3546

; <label>:26:                                     ; preds = %20
  tail call void @free(i8* nonnull %0) #11, !dbg !3551
  br label %34, !dbg !3552

; <label>:27:                                     ; preds = %17, %20
  %28 = phi i64 [ %19, %17 ], [ %24, %20 ]
  %29 = tail call i8* @realloc(i8* %0, i64 %28) #11, !dbg !3553
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !3480, metadata !609) #11, !dbg !3543
  %30 = icmp eq i8* %29, null, !dbg !3554
  %31 = icmp ne i64 %28, 0, !dbg !3555
  %32 = and i1 %31, %30, !dbg !3556
  br i1 %32, label %33, label %34, !dbg !3556

; <label>:33:                                     ; preds = %27
  tail call void @xalloc_die() #14, !dbg !3557
  unreachable, !dbg !3557

; <label>:34:                                     ; preds = %26, %27
  %35 = phi i8* [ null, %26 ], [ %29, %27 ]
  ret i8* %35, !dbg !3558
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xcharalloc(i64) local_unnamed_addr #13 !dbg !3559 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3561, metadata !609), !dbg !3562
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3439, metadata !609) #11, !dbg !3563
  %2 = tail call noalias i8* @malloc(i64 %0) #11, !dbg !3565
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3445, metadata !609) #11, !dbg !3566
  %3 = icmp eq i8* %2, null, !dbg !3567
  %4 = icmp ne i64 %0, 0, !dbg !3568
  %5 = and i1 %4, %3, !dbg !3569
  br i1 %5, label %6, label %7, !dbg !3569

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #14, !dbg !3570
  unreachable, !dbg !3570

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !3571
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @x2realloc(i8*, i64* nocapture) local_unnamed_addr #6 !dbg !3572 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3576, metadata !609), !dbg !3578
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !3577, metadata !609), !dbg !3579
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !574, metadata !609) #11, !dbg !3580
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !575, metadata !609) #11, !dbg !3582
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !576, metadata !609) #11, !dbg !3583
  %3 = load i64, i64* %1, align 8, !dbg !3584, !tbaa !2521
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !577, metadata !609) #11, !dbg !3585
  %4 = icmp eq i8* %0, null, !dbg !3586
  br i1 %4, label %5, label %8, !dbg !3587

; <label>:5:                                      ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3588
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !577, metadata !609) #11, !dbg !3585
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !577, metadata !609) #11, !dbg !3585
  %7 = select i1 %6, i64 128, i64 %3, !dbg !3589
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !577, metadata !609) #11, !dbg !3585
  store i64 %7, i64* %1, align 8, !dbg !3590, !tbaa !2521
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3480, metadata !609) #11, !dbg !3591
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3485, metadata !609) #11, !dbg !3593
  br label %17, !dbg !3594

; <label>:8:                                      ; preds = %2
  %9 = icmp ult i64 %3, 6148914691236517204, !dbg !3595
  br i1 %9, label %11, label %10, !dbg !3596

; <label>:10:                                     ; preds = %8
  tail call void @xalloc_die() #14, !dbg !3597
  unreachable, !dbg !3597

; <label>:11:                                     ; preds = %8
  %12 = lshr i64 %3, 1, !dbg !3598
  %13 = add i64 %3, 1, !dbg !3599
  %14 = add i64 %13, %12, !dbg !3600
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !577, metadata !609) #11, !dbg !3585
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !577, metadata !609) #11, !dbg !3585
  store i64 %14, i64* %1, align 8, !dbg !3590, !tbaa !2521
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3480, metadata !609) #11, !dbg !3591
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3485, metadata !609) #11, !dbg !3593
  %15 = icmp eq i64 %14, 0, !dbg !3601
  br i1 %15, label %16, label %17, !dbg !3594

; <label>:16:                                     ; preds = %11
  tail call void @free(i8* nonnull %0) #11, !dbg !3602
  br label %24, !dbg !3603

; <label>:17:                                     ; preds = %11, %5
  %18 = phi i64 [ %7, %5 ], [ %14, %11 ]
  %19 = tail call i8* @realloc(i8* %0, i64 %18) #11, !dbg !3604
  tail call void @llvm.dbg.value(metadata i8* %19, i64 0, metadata !3480, metadata !609) #11, !dbg !3591
  %20 = icmp eq i8* %19, null, !dbg !3605
  %21 = icmp ne i64 %18, 0, !dbg !3606
  %22 = and i1 %21, %20, !dbg !3607
  br i1 %22, label %23, label %24, !dbg !3607

; <label>:23:                                     ; preds = %17
  tail call void @xalloc_die() #14, !dbg !3608
  unreachable, !dbg !3608

; <label>:24:                                     ; preds = %16, %17
  %25 = phi i8* [ null, %16 ], [ %19, %17 ]
  ret i8* %25, !dbg !3609
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xzalloc(i64) local_unnamed_addr #6 !dbg !3610 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3612, metadata !609), !dbg !3613
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3439, metadata !609) #11, !dbg !3614
  %2 = tail call noalias i8* @malloc(i64 %0) #11, !dbg !3616
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3445, metadata !609) #11, !dbg !3617
  %3 = icmp eq i8* %2, null, !dbg !3618
  %4 = icmp ne i64 %0, 0, !dbg !3619
  %5 = and i1 %4, %3, !dbg !3620
  br i1 %5, label %6, label %7, !dbg !3620

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #14, !dbg !3621
  unreachable, !dbg !3621

; <label>:7:                                      ; preds = %1
  tail call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 %0, i32 1, i1 false), !dbg !3622
  ret i8* %2, !dbg !3623
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xcalloc(i64, i64) local_unnamed_addr #6 !dbg !3624 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3626, metadata !609), !dbg !3629
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3627, metadata !609), !dbg !3630
  %3 = udiv i64 9223372036854775807, %1, !dbg !3631
  %4 = icmp ult i64 %3, %0, !dbg !3631
  br i1 %4, label %8, label %5, !dbg !3633

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #11, !dbg !3634
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !3628, metadata !609), !dbg !3636
  %7 = icmp eq i8* %6, null, !dbg !3637
  br i1 %7, label %8, label %9, !dbg !3638

; <label>:8:                                      ; preds = %5, %2
  tail call void @xalloc_die() #14, !dbg !3640
  unreachable, !dbg !3640

; <label>:9:                                      ; preds = %5
  ret i8* %6, !dbg !3641
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmemdup(i8* nocapture readonly, i64) local_unnamed_addr #6 !dbg !3642 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3646, metadata !609), !dbg !3648
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3647, metadata !609), !dbg !3649
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3439, metadata !609) #11, !dbg !3650
  %3 = tail call noalias i8* @malloc(i64 %1) #11, !dbg !3652
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3445, metadata !609) #11, !dbg !3653
  %4 = icmp eq i8* %3, null, !dbg !3654
  %5 = icmp ne i64 %1, 0, !dbg !3655
  %6 = and i1 %5, %4, !dbg !3656
  br i1 %6, label %7, label %8, !dbg !3656

; <label>:7:                                      ; preds = %2
  tail call void @xalloc_die() #14, !dbg !3657
  unreachable, !dbg !3657

; <label>:8:                                      ; preds = %2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %0, i64 %1, i32 1, i1 false), !dbg !3658
  ret i8* %3, !dbg !3659
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xstrdup(i8* nocapture readonly) local_unnamed_addr #6 !dbg !3660 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3662, metadata !609), !dbg !3663
  %2 = tail call i64 @strlen(i8* %0) #9, !dbg !3664
  %3 = add i64 %2, 1, !dbg !3665
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3646, metadata !609) #11, !dbg !3666
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3647, metadata !609) #11, !dbg !3669
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3439, metadata !609) #11, !dbg !3670
  %4 = tail call noalias i8* @malloc(i64 %3) #11, !dbg !3672
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !3445, metadata !609) #11, !dbg !3673
  %5 = icmp eq i8* %4, null, !dbg !3674
  %6 = icmp ne i64 %3, 0, !dbg !3675
  %7 = and i1 %6, %5, !dbg !3676
  br i1 %7, label %8, label %9, !dbg !3676

; <label>:8:                                      ; preds = %1
  tail call void @xalloc_die() #14, !dbg !3677
  unreachable, !dbg !3677

; <label>:9:                                      ; preds = %1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %0, i64 %3, i32 1, i1 false) #11, !dbg !3678
  ret i8* %4, !dbg !3679
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @xalloc_die() local_unnamed_addr #0 !dbg !3680 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !3682, !tbaa !729
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.103, i64 0, i64 0), i32 5) #11, !dbg !3683
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.104, i64 0, i64 0), i8* %2) #11, !dbg !3684
  tail call void @abort() #14, !dbg !3686
  unreachable, !dbg !3686
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @rpl_calloc(i64, i64) local_unnamed_addr #6 !dbg !3687 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3690, metadata !609), !dbg !3696
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3691, metadata !609), !dbg !3697
  %3 = icmp eq i64 %0, 0, !dbg !3698
  %4 = icmp eq i64 %1, 0, !dbg !3699
  %5 = or i1 %3, %4, !dbg !3701
  br i1 %5, label %12, label %6, !dbg !3701

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3702
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !3693, metadata !609), !dbg !3703
  %8 = udiv i64 %7, %1, !dbg !3704
  %9 = icmp eq i64 %8, %0, !dbg !3706
  br i1 %9, label %12, label %10, !dbg !3707

; <label>:10:                                     ; preds = %6
  %11 = tail call i32* @__errno_location() #1, !dbg !3708
  store i32 12, i32* %11, align 4, !dbg !3710, !tbaa !729
  br label %16

; <label>:12:                                     ; preds = %6, %2
  %13 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %14 = phi i64 [ 1, %2 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3690, metadata !609), !dbg !3696
  tail call void @llvm.dbg.value(metadata i64 %13, i64 0, metadata !3691, metadata !609), !dbg !3697
  %15 = tail call noalias i8* @calloc(i64 %14, i64 %13) #11, !dbg !3711
  tail call void @llvm.dbg.value(metadata i8* %15, i64 0, metadata !3692, metadata !609), !dbg !3712
  br label %16, !dbg !3713

; <label>:16:                                     ; preds = %10, %12
  %17 = phi i8* [ %15, %12 ], [ null, %10 ]
  ret i8* %17, !dbg !3714
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i64 @rpl_mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #6 !dbg !3715 {
  %5 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i32* %0, i64 0, metadata !3732, metadata !609), !dbg !3741
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3733, metadata !609), !dbg !3742
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3734, metadata !609), !dbg !3743
  tail call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, i64 0, metadata !3735, metadata !609), !dbg !3744
  %6 = bitcast i32* %5 to i8*, !dbg !3745
  call void @llvm.lifetime.start(i64 4, i8* nonnull %6) #11, !dbg !3745
  %7 = icmp eq i32* %0, null, !dbg !3746
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !3732, metadata !609), !dbg !3741
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !3748
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !3732, metadata !609), !dbg !3741
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #11, !dbg !3749
  call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !3736, metadata !609), !dbg !3750
  %10 = icmp ugt i64 %9, -3, !dbg !3751
  %11 = icmp ne i64 %2, 0, !dbg !3752
  %12 = and i1 %11, %10, !dbg !3754
  br i1 %12, label %13, label %18, !dbg !3754

; <label>:13:                                     ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #11, !dbg !3755
  br i1 %14, label %18, label %15, !dbg !3757

; <label>:15:                                     ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !3759, !tbaa !923
  call void @llvm.dbg.value(metadata i8 %16, i64 0, metadata !3738, metadata !609), !dbg !3760
  %17 = zext i8 %16 to i32, !dbg !3761
  store i32 %17, i32* %8, align 4, !dbg !3762, !tbaa !729
  br label %18

; <label>:18:                                     ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ]
  call void @llvm.lifetime.end(i64 4, i8* nonnull %6) #11, !dbg !3763
  ret i64 %19, !dbg !3763
}

; Function Attrs: nounwind
declare i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @str2sig(i8*, i32* nocapture) local_unnamed_addr #6 !dbg !3764 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3768, metadata !609), !dbg !3770
  tail call void @llvm.dbg.value(metadata i32* %1, i64 0, metadata !3769, metadata !609), !dbg !3771
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3772, metadata !609) #11, !dbg !3799
  %5 = load i8, i8* %0, align 1, !dbg !3801, !tbaa !923
  %6 = sext i8 %5 to i32, !dbg !3801
  %7 = add nsw i32 %6, -48, !dbg !3801
  %8 = icmp ult i32 %7, 10, !dbg !3801
  br i1 %8, label %10, label %9, !dbg !3802

; <label>:9:                                      ; preds = %2
  br label %21, !dbg !3803

; <label>:10:                                     ; preds = %2
  %11 = bitcast i8** %3 to i8*, !dbg !3804
  call void @llvm.lifetime.start(i64 8, i8* nonnull %11) #11, !dbg !3804
  tail call void @llvm.dbg.value(metadata i8** %3, i64 0, metadata !3777, metadata !980) #11, !dbg !3805
  %12 = call i64 @strtol(i8* nonnull %0, i8** nonnull %3, i32 10) #11, !dbg !3806
  tail call void @llvm.dbg.value(metadata i64 %12, i64 0, metadata !3780, metadata !609) #11, !dbg !3807
  %13 = load i8*, i8** %3, align 8, !dbg !3808, !tbaa !617
  tail call void @llvm.dbg.value(metadata i8* %13, i64 0, metadata !3777, metadata !609) #11, !dbg !3805
  %14 = load i8, i8* %13, align 1, !dbg !3810, !tbaa !923
  %15 = trunc i64 %12 to i32, !dbg !3811
  %16 = icmp ne i8 %14, 0, !dbg !3812
  %17 = icmp sgt i64 %12, 64, !dbg !3812
  %18 = or i1 %17, %16, !dbg !3812
  call void @llvm.lifetime.end(i64 8, i8* nonnull %11) #11, !dbg !3813
  br i1 %18, label %74, label %75

; <label>:19:                                     ; preds = %21
  %20 = icmp ult i64 %26, 35, !dbg !3814
  br i1 %20, label %21, label %30, !dbg !3816, !llvm.loop !3818

; <label>:21:                                     ; preds = %9, %19
  %22 = phi i64 [ %26, %19 ], [ 0, %9 ]
  %23 = getelementptr inbounds [35 x %struct.numname], [35 x %struct.numname]* @numname_table, i64 0, i64 %22, i32 1, i64 0, !dbg !3803
  %24 = tail call i32 @strcmp(i8* %23, i8* %0) #11, !dbg !3803
  %25 = icmp eq i32 %24, 0, !dbg !3821
  %26 = add nuw nsw i64 %22, 1, !dbg !3822
  br i1 %25, label %27, label %19, !dbg !3824

; <label>:27:                                     ; preds = %21
  %28 = getelementptr inbounds [35 x %struct.numname], [35 x %struct.numname]* @numname_table, i64 0, i64 %22, i32 0, !dbg !3825
  %29 = load i32, i32* %28, align 4, !dbg !3825, !tbaa !3826
  br label %75

; <label>:30:                                     ; preds = %19
  %31 = bitcast i8** %4 to i8*, !dbg !3828
  call void @llvm.lifetime.start(i64 8, i8* nonnull %31) #11, !dbg !3828
  %32 = tail call i32 @__libc_current_sigrtmin() #11, !dbg !3829
  tail call void @llvm.dbg.value(metadata i32 %32, i64 0, metadata !3791, metadata !609) #11, !dbg !3830
  %33 = tail call i32 @__libc_current_sigrtmax() #11, !dbg !3831
  tail call void @llvm.dbg.value(metadata i32 %33, i64 0, metadata !3792, metadata !609) #11, !dbg !3832
  %34 = icmp sgt i32 %32, 0, !dbg !3833
  br i1 %34, label %35, label %50, !dbg !3834

; <label>:35:                                     ; preds = %30
  %36 = tail call i32 @strncmp(i8* %0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.111, i64 0, i64 0), i64 5) #9, !dbg !3835
  %37 = icmp eq i32 %36, 0, !dbg !3837
  br i1 %37, label %38, label %50, !dbg !3838

; <label>:38:                                     ; preds = %35
  %39 = getelementptr inbounds i8, i8* %0, i64 5, !dbg !3840
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !3789, metadata !980) #11, !dbg !3841
  %40 = call i64 @strtol(i8* %39, i8** nonnull %4, i32 10) #11, !dbg !3842
  tail call void @llvm.dbg.value(metadata i64 %40, i64 0, metadata !3793, metadata !609) #11, !dbg !3843
  %41 = load i8*, i8** %4, align 8, !dbg !3844, !tbaa !617
  tail call void @llvm.dbg.value(metadata i8* %41, i64 0, metadata !3789, metadata !609) #11, !dbg !3841
  %42 = load i8, i8* %41, align 1, !dbg !3846, !tbaa !923
  %43 = icmp eq i8 %42, 0, !dbg !3846
  %44 = icmp sgt i64 %40, -1, !dbg !3847
  %45 = and i1 %44, %43, !dbg !3849
  br i1 %45, label %46, label %67, !dbg !3849

; <label>:46:                                     ; preds = %38
  %47 = sub nsw i32 %33, %32, !dbg !3850
  %48 = sext i32 %47 to i64, !dbg !3852
  %49 = icmp sgt i64 %40, %48, !dbg !3853
  br i1 %49, label %67, label %68, !dbg !3854

; <label>:50:                                     ; preds = %35, %30
  %51 = icmp sgt i32 %33, 0, !dbg !3856
  br i1 %51, label %52, label %67, !dbg !3857

; <label>:52:                                     ; preds = %50
  %53 = tail call i32 @strncmp(i8* %0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.112, i64 0, i64 0), i64 5) #9, !dbg !3858
  %54 = icmp eq i32 %53, 0, !dbg !3860
  br i1 %54, label %55, label %67, !dbg !3861

; <label>:55:                                     ; preds = %52
  %56 = getelementptr inbounds i8, i8* %0, i64 5, !dbg !3862
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !3789, metadata !980) #11, !dbg !3841
  %57 = call i64 @strtol(i8* %56, i8** nonnull %4, i32 10) #11, !dbg !3863
  tail call void @llvm.dbg.value(metadata i64 %57, i64 0, metadata !3796, metadata !609) #11, !dbg !3864
  %58 = load i8*, i8** %4, align 8, !dbg !3865, !tbaa !617
  tail call void @llvm.dbg.value(metadata i8* %58, i64 0, metadata !3789, metadata !609) #11, !dbg !3841
  %59 = load i8, i8* %58, align 1, !dbg !3867, !tbaa !923
  %60 = icmp eq i8 %59, 0, !dbg !3867
  br i1 %60, label %61, label %67, !dbg !3868

; <label>:61:                                     ; preds = %55
  %62 = sub nsw i32 %32, %33, !dbg !3869
  %63 = sext i32 %62 to i64, !dbg !3871
  %64 = icmp sle i64 %63, %57, !dbg !3872
  %65 = icmp slt i64 %57, 1, !dbg !3873
  %66 = and i1 %64, %65, !dbg !3875
  br i1 %66, label %68, label %67, !dbg !3875

; <label>:67:                                     ; preds = %61, %55, %52, %50, %46, %38
  call void @llvm.lifetime.end(i64 8, i8* nonnull %31) #11, !dbg !3876
  br label %74

; <label>:68:                                     ; preds = %61, %46
  %69 = phi i32 [ %33, %61 ], [ %32, %46 ]
  %70 = phi i64 [ %57, %61 ], [ %40, %46 ]
  %71 = zext i32 %69 to i64
  %72 = add i64 %71, %70
  %73 = trunc i64 %72 to i32
  call void @llvm.lifetime.end(i64 8, i8* nonnull %31) #11, !dbg !3876
  br label %75

; <label>:74:                                     ; preds = %67, %10
  br label %75, !dbg !3877

; <label>:75:                                     ; preds = %10, %27, %68, %74
  %76 = phi i32 [ -1, %74 ], [ %15, %10 ], [ %73, %68 ], [ %29, %27 ]
  store i32 %76, i32* %1, align 4, !dbg !3878, !tbaa !729
  %77 = ashr i32 %76, 31, !dbg !3879
  ret i32 %77, !dbg !3880
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @__libc_current_sigrtmin() local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @__libc_current_sigrtmax() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @sig2str(i32, i8*) local_unnamed_addr #6 !dbg !3881 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3885, metadata !609), !dbg !3893
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3886, metadata !609), !dbg !3894
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3887, metadata !609), !dbg !3895
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3887, metadata !609), !dbg !3895
  br label %9, !dbg !3896

; <label>:3:                                      ; preds = %9
  %4 = add nsw i32 %10, 1, !dbg !3899
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !3887, metadata !609), !dbg !3895
  %5 = zext i32 %4 to i64, !dbg !3902
  %6 = getelementptr inbounds [35 x %struct.numname], [35 x %struct.numname]* @numname_table, i64 0, i64 %5, i32 0, !dbg !3904
  %7 = load i32, i32* %6, align 4, !dbg !3904, !tbaa !3826
  %8 = icmp eq i32 %7, %0, !dbg !3906
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !3887, metadata !609), !dbg !3895
  br i1 %8, label %15, label %43, !dbg !3907

; <label>:9:                                      ; preds = %62, %2
  %10 = phi i32 [ 0, %2 ], [ %61, %62 ]
  %11 = zext i32 %10 to i64, !dbg !3902
  %12 = getelementptr inbounds [35 x %struct.numname], [35 x %struct.numname]* @numname_table, i64 0, i64 %11, i32 0, !dbg !3904
  %13 = load i32, i32* %12, align 4, !dbg !3904, !tbaa !3826
  %14 = icmp eq i32 %13, %0, !dbg !3906
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !3887, metadata !609), !dbg !3895
  br i1 %14, label %15, label %3, !dbg !3907

; <label>:15:                                     ; preds = %55, %49, %43, %3, %9
  %16 = phi i64 [ %11, %9 ], [ %5, %3 ], [ %45, %43 ], [ %51, %49 ], [ %57, %55 ]
  %17 = getelementptr inbounds [35 x %struct.numname], [35 x %struct.numname]* @numname_table, i64 0, i64 %16, i32 1, i64 0, !dbg !3908
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3910, metadata !609) #11, !dbg !3918
  tail call void @llvm.dbg.value(metadata i8* %17, i64 0, metadata !3917, metadata !609) #11, !dbg !3918
  %18 = tail call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %1, i1 false) #11, !dbg !3920
  %19 = tail call i8* @__strcpy_chk(i8* nonnull %1, i8* nonnull %17, i64 %18) #11, !dbg !3921
  br label %41, !dbg !3922

; <label>:20:                                     ; preds = %62
  %21 = tail call i32 @__libc_current_sigrtmin() #11, !dbg !3923
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !3888, metadata !609), !dbg !3924
  %22 = tail call i32 @__libc_current_sigrtmax() #11, !dbg !3925
  tail call void @llvm.dbg.value(metadata i32 %22, i64 0, metadata !3890, metadata !609), !dbg !3926
  %23 = icmp sgt i32 %21, %0, !dbg !3927
  %24 = icmp slt i32 %22, %0, !dbg !3929
  %25 = or i1 %23, %24, !dbg !3931
  br i1 %25, label %41, label %26, !dbg !3931

; <label>:26:                                     ; preds = %20
  %27 = sub nsw i32 %22, %21, !dbg !3932
  %28 = sdiv i32 %27, 2, !dbg !3934
  %29 = add nsw i32 %28, %21, !dbg !3935
  %30 = icmp slt i32 %29, %0, !dbg !3936
  br i1 %30, label %32, label %31, !dbg !3937

; <label>:31:                                     ; preds = %26
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.111, i64 0, i64 0), i64 6, i32 1, i1 false), !dbg !3938
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !3891, metadata !609), !dbg !3940
  br label %33, !dbg !3941

; <label>:32:                                     ; preds = %26
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.112, i64 0, i64 0), i64 6, i32 1, i1 false), !dbg !3942
  tail call void @llvm.dbg.value(metadata i32 %22, i64 0, metadata !3891, metadata !609), !dbg !3940
  br label %33

; <label>:33:                                     ; preds = %32, %31
  %34 = phi i32 [ %21, %31 ], [ %22, %32 ]
  tail call void @llvm.dbg.value(metadata i32 %34, i64 0, metadata !3891, metadata !609), !dbg !3940
  %35 = sub nsw i32 %0, %34, !dbg !3944
  tail call void @llvm.dbg.value(metadata i32 %35, i64 0, metadata !3892, metadata !609), !dbg !3945
  %36 = icmp eq i32 %35, 0, !dbg !3946
  br i1 %36, label %41, label %37, !dbg !3948

; <label>:37:                                     ; preds = %33
  %38 = getelementptr inbounds i8, i8* %1, i64 5, !dbg !3949
  %39 = tail call i64 @llvm.objectsize.i64.p0i8(i8* %38, i1 false), !dbg !3949
  %40 = tail call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* %38, i32 1, i64 %39, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.115, i64 0, i64 0), i32 %35) #11, !dbg !3949
  br label %41, !dbg !3949

; <label>:41:                                     ; preds = %20, %33, %37, %15
  %42 = phi i32 [ 0, %15 ], [ -1, %20 ], [ 0, %33 ], [ 0, %37 ]
  ret i32 %42, !dbg !3950

; <label>:43:                                     ; preds = %3
  %44 = add nsw i32 %10, 2, !dbg !3899
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !3887, metadata !609), !dbg !3895
  %45 = zext i32 %44 to i64, !dbg !3902
  %46 = getelementptr inbounds [35 x %struct.numname], [35 x %struct.numname]* @numname_table, i64 0, i64 %45, i32 0, !dbg !3904
  %47 = load i32, i32* %46, align 4, !dbg !3904, !tbaa !3826
  %48 = icmp eq i32 %47, %0, !dbg !3906
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !3887, metadata !609), !dbg !3895
  br i1 %48, label %15, label %49, !dbg !3907

; <label>:49:                                     ; preds = %43
  %50 = add nsw i32 %10, 3, !dbg !3899
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !3887, metadata !609), !dbg !3895
  %51 = zext i32 %50 to i64, !dbg !3902
  %52 = getelementptr inbounds [35 x %struct.numname], [35 x %struct.numname]* @numname_table, i64 0, i64 %51, i32 0, !dbg !3904
  %53 = load i32, i32* %52, align 4, !dbg !3904, !tbaa !3826
  %54 = icmp eq i32 %53, %0, !dbg !3906
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !3887, metadata !609), !dbg !3895
  br i1 %54, label %15, label %55, !dbg !3907

; <label>:55:                                     ; preds = %49
  %56 = add nsw i32 %10, 4, !dbg !3899
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !3887, metadata !609), !dbg !3895
  %57 = zext i32 %56 to i64, !dbg !3902
  %58 = getelementptr inbounds [35 x %struct.numname], [35 x %struct.numname]* @numname_table, i64 0, i64 %57, i32 0, !dbg !3904
  %59 = load i32, i32* %58, align 4, !dbg !3904, !tbaa !3826
  %60 = icmp eq i32 %59, %0, !dbg !3906
  %61 = add nsw i32 %10, 5, !dbg !3899
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !3887, metadata !609), !dbg !3895
  br i1 %60, label %15, label %62, !dbg !3907

; <label>:62:                                     ; preds = %55
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !3887, metadata !609), !dbg !3895
  %63 = icmp ult i32 %61, 35, !dbg !3951
  br i1 %63, label %9, label %20, !dbg !3896, !llvm.loop !3952
}

; Function Attrs: nounwind readnone
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1) #1

; Function Attrs: nounwind
declare i8* @__strcpy_chk(i8*, i8*, i64) local_unnamed_addr #2

declare i32 @__sprintf_chk(i8*, i32, i64, i8*, ...) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define i32 @close_stream(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !3955 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4000, metadata !609), !dbg !4005
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #11, !dbg !4006
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4007, metadata !609), !dbg !4011
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4013
  %4 = load i32, i32* %3, align 8, !dbg !4013, !tbaa !4014
  %5 = and i32 %4, 32, !dbg !4013
  %6 = icmp eq i32 %5, 0, !dbg !4016
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #11, !dbg !4017
  %8 = icmp ne i32 %7, 0, !dbg !4018
  br i1 %6, label %9, label %19, !dbg !4019

; <label>:9:                                      ; preds = %1
  %10 = xor i1 %8, true, !dbg !4021
  %11 = icmp ne i64 %2, 0, !dbg !4021
  %12 = or i1 %11, %10, !dbg !4021
  %13 = sext i1 %8 to i32, !dbg !4021
  br i1 %12, label %22, label %14, !dbg !4021

; <label>:14:                                     ; preds = %9
  %15 = tail call i32* @__errno_location() #1, !dbg !4023
  %16 = load i32, i32* %15, align 4, !dbg !4023, !tbaa !729
  %17 = icmp ne i32 %16, 9, !dbg !4025
  %18 = sext i1 %17 to i32, !dbg !4025
  br label %22, !dbg !4025

; <label>:19:                                     ; preds = %1
  br i1 %8, label %22, label %20, !dbg !4027

; <label>:20:                                     ; preds = %19
  %21 = tail call i32* @__errno_location() #1, !dbg !4029
  store i32 0, i32* %21, align 4, !dbg !4031, !tbaa !729
  br label %22, !dbg !4029

; <label>:22:                                     ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ]
  ret i32 %23, !dbg !4032
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define zeroext i1 @hard_locale(i32) local_unnamed_addr #6 !dbg !4033 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4038, metadata !609), !dbg !4058
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !4039, metadata !609), !dbg !4059
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #11, !dbg !4060
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4040, metadata !609), !dbg !4061
  %3 = icmp eq i8* %2, null, !dbg !4062
  br i1 %3, label %15, label %4, !dbg !4063

; <label>:4:                                      ; preds = %1
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4048, metadata !609), !dbg !4064
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4049, metadata !609), !dbg !4065
  %5 = load i8, i8* %2, align 1, !dbg !4066, !tbaa !923
  %6 = icmp eq i8 %5, 67, !dbg !4068
  br i1 %6, label %7, label %11, !dbg !4071

; <label>:7:                                      ; preds = %4
  %8 = getelementptr inbounds i8, i8* %2, i64 1, !dbg !4073
  %9 = load i8, i8* %8, align 1, !dbg !4073, !tbaa !923
  %10 = icmp eq i8 %9, 0, !dbg !4076
  br i1 %10, label %14, label %11, !dbg !4078

; <label>:11:                                     ; preds = %4, %7
  tail call void @llvm.dbg.value(metadata i64 5, i64 0, metadata !4054, metadata !609), !dbg !4080
  %12 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.120, i64 0, i64 0)) #11, !dbg !4081
  %13 = icmp eq i32 %12, 0, !dbg !4083
  br i1 %13, label %14, label %15, !dbg !4085

; <label>:14:                                     ; preds = %11, %7
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !4039, metadata !609), !dbg !4059
  br label %15, !dbg !4087

; <label>:15:                                     ; preds = %1, %11, %14
  %16 = phi i1 [ false, %14 ], [ true, %11 ], [ true, %1 ]
  ret i1 %16, !dbg !4088
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @locale_charset() local_unnamed_addr #6 !dbg !4089 {
  %1 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %1, metadata !4101, metadata !609), !dbg !4175
  %2 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %2, metadata !4168, metadata !609), !dbg !4177
  %3 = tail call i8* @nl_langinfo(i32 14) #11, !dbg !4178
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !4093, metadata !609), !dbg !4179
  %4 = icmp eq i8* %3, null, !dbg !4180
  %5 = select i1 %4, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.123, i64 0, i64 0), i8* %3, !dbg !4182
  tail call void @llvm.dbg.value(metadata i8* %5, i64 0, metadata !4093, metadata !609), !dbg !4179
  %6 = load volatile i8*, i8** @charset_aliases, align 8, !dbg !4183, !tbaa !617
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !4115, metadata !609) #11, !dbg !4184
  %7 = icmp eq i8* %6, null, !dbg !4185
  br i1 %7, label %8, label %127, !dbg !4186

; <label>:8:                                      ; preds = %0
  %9 = tail call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3.124, i64 0, i64 0)) #11, !dbg !4187
  tail call void @llvm.dbg.value(metadata i8* %9, i64 0, metadata !4116, metadata !609) #11, !dbg !4188
  %10 = icmp eq i8* %9, null, !dbg !4189
  br i1 %10, label %14, label %11, !dbg !4191

; <label>:11:                                     ; preds = %8
  %12 = load i8, i8* %9, align 1, !dbg !4192, !tbaa !923
  %13 = icmp eq i8 %12, 0, !dbg !4194
  br i1 %13, label %14, label %15, !dbg !4195

; <label>:14:                                     ; preds = %11, %8
  br label %15, !dbg !4197

; <label>:15:                                     ; preds = %14, %11
  %16 = phi i8* [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4.125, i64 0, i64 0), %14 ], [ %9, %11 ]
  tail call void @llvm.dbg.value(metadata i8* %16, i64 0, metadata !4116, metadata !609) #11, !dbg !4188
  %17 = tail call i64 @strlen(i8* nonnull %16) #9, !dbg !4198
  tail call void @llvm.dbg.value(metadata i64 %17, i64 0, metadata !4119, metadata !609) #11, !dbg !4199
  tail call void @llvm.dbg.value(metadata i64 13, i64 0, metadata !4121, metadata !609) #11, !dbg !4200
  %18 = icmp eq i64 %17, 0, !dbg !4201
  br i1 %18, label %24, label %19, !dbg !4202

; <label>:19:                                     ; preds = %15
  %20 = add i64 %17, -1, !dbg !4203
  %21 = getelementptr inbounds i8, i8* %16, i64 %20, !dbg !4203
  %22 = load i8, i8* %21, align 1, !dbg !4203, !tbaa !923
  %23 = icmp ne i8 %22, 47, !dbg !4205
  br label %24

; <label>:24:                                     ; preds = %19, %15
  %25 = phi i1 [ false, %15 ], [ %23, %19 ]
  %26 = zext i1 %25 to i64, !dbg !4206
  %27 = add i64 %17, 14, !dbg !4207
  %28 = add i64 %27, %26, !dbg !4208
  %29 = tail call noalias i8* @malloc(i64 %28) #11, !dbg !4209
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !4118, metadata !609) #11, !dbg !4210
  %30 = icmp eq i8* %29, null, !dbg !4211
  br i1 %30, label %125, label %31, !dbg !4211

; <label>:31:                                     ; preds = %24
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %29, i8* %16, i64 %17, i32 1, i1 false) #11, !dbg !4212
  %32 = getelementptr inbounds i8, i8* %29, i64 %17
  br i1 %25, label %33, label %35, !dbg !4215

; <label>:33:                                     ; preds = %31
  store i8 47, i8* %32, align 1, !dbg !4216, !tbaa !923
  %34 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !4218
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %34, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.126, i64 0, i64 0), i64 14, i32 1, i1 false) #11, !dbg !4219
  br label %37, !dbg !4220

; <label>:35:                                     ; preds = %31
  %36 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !4218
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.126, i64 0, i64 0), i64 14, i32 1, i1 false) #11, !dbg !4219
  br label %37, !dbg !4220

; <label>:37:                                     ; preds = %35, %33
  %38 = tail call i32 (i8*, i32, ...) @open(i8* nonnull %29, i32 131072) #11, !dbg !4221
  tail call void @llvm.dbg.value(metadata i32 %38, i64 0, metadata !4123, metadata !609) #11, !dbg !4222
  %39 = icmp slt i32 %38, 0, !dbg !4223
  br i1 %39, label %123, label %40, !dbg !4224

; <label>:40:                                     ; preds = %37
  %41 = tail call %struct._IO_FILE* @fdopen(i32 %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.127, i64 0, i64 0)) #11, !dbg !4225
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !4124, metadata !609) #11, !dbg !4226
  %42 = icmp eq %struct._IO_FILE* %41, null, !dbg !4227
  br i1 %42, label %48, label %43, !dbg !4228

; <label>:43:                                     ; preds = %40
  %44 = getelementptr inbounds [51 x i8], [51 x i8]* %1, i64 0, i64 0
  %45 = getelementptr inbounds [51 x i8], [51 x i8]* %2, i64 0, i64 0
  %46 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 1
  %47 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 2
  br label %50, !dbg !4229

; <label>:48:                                     ; preds = %40
  %49 = tail call i32 @close(i32 %38) #11, !dbg !4230
  br label %123, !dbg !4232

; <label>:50:                                     ; preds = %111, %43
  %51 = phi i64 [ %112, %111 ], [ 0, %43 ]
  %52 = phi i8* [ %113, %111 ], [ null, %43 ]
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !4165, metadata !609) #11, !dbg !4229
  call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !4166, metadata !609) #11, !dbg !4233
  call void @llvm.lifetime.start(i64 51, i8* nonnull %44) #11, !dbg !4234
  call void @llvm.lifetime.start(i64 51, i8* nonnull %45) #11, !dbg !4235
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !4236, metadata !609) #11, !dbg !4241
  %53 = load i8*, i8** %46, align 8, !dbg !4243, !tbaa !4244
  %54 = load i8*, i8** %47, align 8, !dbg !4243, !tbaa !4245
  %55 = icmp ult i8* %53, %54, !dbg !4243
  br i1 %55, label %58, label %56, !dbg !4243, !prof !4246

; <label>:56:                                     ; preds = %50
  %57 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #11, !dbg !4247
  br label %62, !dbg !4247

; <label>:58:                                     ; preds = %50
  %59 = getelementptr inbounds i8, i8* %53, i64 1, !dbg !4249
  store i8* %59, i8** %46, align 8, !dbg !4249, !tbaa !4244
  %60 = load i8, i8* %53, align 1, !dbg !4249, !tbaa !923
  %61 = zext i8 %60 to i32, !dbg !4249
  br label %62, !dbg !4249

; <label>:62:                                     ; preds = %58, %56
  %63 = phi i32 [ %57, %56 ], [ %61, %58 ], !dbg !4251
  call void @llvm.dbg.value(metadata i32 %63, i64 0, metadata !4167, metadata !609) #11, !dbg !4253
  switch i32 %63, label %77 [
    i32 -1, label %115
    i32 32, label %111
    i32 10, label %111
    i32 9, label %111
    i32 35, label %64
  ], !dbg !4254

; <label>:64:                                     ; preds = %62
  br label %65, !dbg !4255

; <label>:65:                                     ; preds = %64, %75
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !4236, metadata !609) #11, !dbg !4255
  %66 = load i8*, i8** %46, align 8, !dbg !4259, !tbaa !4244
  %67 = load i8*, i8** %47, align 8, !dbg !4259, !tbaa !4245
  %68 = icmp ult i8* %66, %67, !dbg !4259
  br i1 %68, label %71, label %69, !dbg !4259, !prof !4246

; <label>:69:                                     ; preds = %65
  %70 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #11, !dbg !4260
  br label %75, !dbg !4260

; <label>:71:                                     ; preds = %65
  %72 = getelementptr inbounds i8, i8* %66, i64 1, !dbg !4261
  store i8* %72, i8** %46, align 8, !dbg !4261, !tbaa !4244
  %73 = load i8, i8* %66, align 1, !dbg !4261, !tbaa !923
  %74 = zext i8 %73 to i32, !dbg !4261
  br label %75, !dbg !4261

; <label>:75:                                     ; preds = %71, %69
  %76 = phi i32 [ %70, %69 ], [ %74, %71 ], !dbg !4262
  call void @llvm.dbg.value(metadata i32 %76, i64 0, metadata !4167, metadata !609) #11, !dbg !4253
  switch i32 %76, label %65 [
    i32 -1, label %114
    i32 10, label %110
  ], !dbg !4263, !llvm.loop !4265

; <label>:77:                                     ; preds = %62
  %78 = call i32 @ungetc(i32 %63, %struct._IO_FILE* nonnull %41) #11, !dbg !4268
  %79 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* nonnull %41, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6.128, i64 0, i64 0), i8* nonnull %44, i8* nonnull %45) #11, !dbg !4269
  %80 = icmp slt i32 %79, 2, !dbg !4271
  br i1 %80, label %115, label %81, !dbg !4272

; <label>:81:                                     ; preds = %77
  %82 = call i64 @strlen(i8* nonnull %44) #9, !dbg !4273
  call void @llvm.dbg.value(metadata i64 %82, i64 0, metadata !4172, metadata !609) #11, !dbg !4274
  %83 = call i64 @strlen(i8* nonnull %45) #9, !dbg !4275
  call void @llvm.dbg.value(metadata i64 %83, i64 0, metadata !4173, metadata !609) #11, !dbg !4276
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !4174, metadata !609) #11, !dbg !4277
  %84 = icmp eq i64 %51, 0, !dbg !4278
  %85 = add i64 %82, 1
  %86 = add i64 %85, %83
  %87 = add i64 %86, 1
  br i1 %84, label %88, label %91, !dbg !4280

; <label>:88:                                     ; preds = %81
  call void @llvm.dbg.value(metadata i64 %87, i64 0, metadata !4166, metadata !609) #11, !dbg !4233
  %89 = add i64 %86, 2, !dbg !4281
  %90 = call noalias i8* @malloc(i64 %89) #11, !dbg !4283
  call void @llvm.dbg.value(metadata i8* %90, i64 0, metadata !4165, metadata !609) #11, !dbg !4229
  br label %95, !dbg !4284

; <label>:91:                                     ; preds = %81
  %92 = add i64 %87, %51, !dbg !4285
  call void @llvm.dbg.value(metadata i64 %92, i64 0, metadata !4166, metadata !609) #11, !dbg !4233
  %93 = add i64 %92, 1, !dbg !4287
  %94 = call i8* @realloc(i8* %52, i64 %93) #11, !dbg !4288
  call void @llvm.dbg.value(metadata i8* %94, i64 0, metadata !4165, metadata !609) #11, !dbg !4229
  br label %95

; <label>:95:                                     ; preds = %91, %88
  %96 = phi i64 [ %87, %88 ], [ %92, %91 ]
  %97 = phi i8* [ %90, %88 ], [ %94, %91 ]
  call void @llvm.dbg.value(metadata i8* %97, i64 0, metadata !4165, metadata !609) #11, !dbg !4229
  call void @llvm.dbg.value(metadata i64 %96, i64 0, metadata !4166, metadata !609) #11, !dbg !4233
  %98 = icmp eq i8* %97, null, !dbg !4289
  br i1 %98, label %99, label %100, !dbg !4291

; <label>:99:                                     ; preds = %95
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4166, metadata !609) #11, !dbg !4233
  call void @free(i8* %52) #11, !dbg !4292
  br label %116, !dbg !4294

; <label>:100:                                    ; preds = %95
  %101 = getelementptr inbounds i8, i8* %97, i64 %96, !dbg !4295
  %102 = xor i64 %83, -1, !dbg !4296
  %103 = getelementptr inbounds i8, i8* %101, i64 %102, !dbg !4296
  %104 = xor i64 %82, -1, !dbg !4297
  %105 = getelementptr inbounds i8, i8* %103, i64 %104, !dbg !4297
  call void @llvm.dbg.value(metadata i8* %105, i64 0, metadata !4298, metadata !609) #11, !dbg !4302
  call void @llvm.dbg.value(metadata i8* %44, i64 0, metadata !4301, metadata !609) #11, !dbg !4302
  %106 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %105, i1 false) #11, !dbg !4304
  %107 = call i8* @__strcpy_chk(i8* nonnull %105, i8* nonnull %44, i64 %106) #11, !dbg !4305
  call void @llvm.dbg.value(metadata i8* %103, i64 0, metadata !4298, metadata !609) #11, !dbg !4306
  call void @llvm.dbg.value(metadata i8* %45, i64 0, metadata !4301, metadata !609) #11, !dbg !4306
  %108 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %103, i1 false) #11, !dbg !4308
  %109 = call i8* @__strcpy_chk(i8* nonnull %103, i8* nonnull %45, i64 %108) #11, !dbg !4309
  br label %111, !dbg !4310

; <label>:110:                                    ; preds = %75
  br label %111, !dbg !4229

; <label>:111:                                    ; preds = %110, %100, %62, %62, %62
  %112 = phi i64 [ %96, %100 ], [ %51, %62 ], [ %51, %62 ], [ %51, %62 ], [ %51, %110 ]
  %113 = phi i8* [ %97, %100 ], [ %52, %62 ], [ %52, %62 ], [ %52, %62 ], [ %52, %110 ]
  call void @llvm.dbg.value(metadata i8* %113, i64 0, metadata !4165, metadata !609) #11, !dbg !4229
  call void @llvm.dbg.value(metadata i64 %112, i64 0, metadata !4166, metadata !609) #11, !dbg !4233
  call void @llvm.lifetime.end(i64 51, i8* nonnull %45) #11, !dbg !4310
  call void @llvm.lifetime.end(i64 51, i8* nonnull %44) #11, !dbg !4310
  br label %50

; <label>:114:                                    ; preds = %75
  br label %116, !dbg !4229

; <label>:115:                                    ; preds = %62, %77
  br label %116, !dbg !4229

; <label>:116:                                    ; preds = %115, %114, %99
  %117 = phi i64 [ 0, %99 ], [ %51, %114 ], [ %51, %115 ]
  %118 = phi i8* [ null, %99 ], [ %52, %114 ], [ %52, %115 ]
  call void @llvm.dbg.value(metadata i8* %113, i64 0, metadata !4165, metadata !609) #11, !dbg !4229
  call void @llvm.dbg.value(metadata i64 %112, i64 0, metadata !4166, metadata !609) #11, !dbg !4233
  call void @llvm.lifetime.end(i64 51, i8* nonnull %45) #11, !dbg !4310
  call void @llvm.lifetime.end(i64 51, i8* nonnull %44) #11, !dbg !4310
  %119 = call i32 @rpl_fclose(%struct._IO_FILE* nonnull %41) #11, !dbg !4311
  %120 = icmp eq i64 %117, 0, !dbg !4312
  br i1 %120, label %123, label %121, !dbg !4314

; <label>:121:                                    ; preds = %116
  %122 = getelementptr inbounds i8, i8* %118, i64 %117, !dbg !4315
  store i8 0, i8* %122, align 1, !dbg !4317, !tbaa !923
  call void @llvm.dbg.value(metadata i8* %113, i64 0, metadata !4115, metadata !609) #11, !dbg !4184
  br label %123

; <label>:123:                                    ; preds = %121, %116, %48, %37
  %124 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.123, i64 0, i64 0), %37 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.123, i64 0, i64 0), %48 ], [ %118, %121 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.123, i64 0, i64 0), %116 ]
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !4115, metadata !609) #11, !dbg !4184
  call void @free(i8* %29) #11, !dbg !4318
  br label %125

; <label>:125:                                    ; preds = %123, %24
  %126 = phi i8* [ %124, %123 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.123, i64 0, i64 0), %24 ]
  call void @llvm.dbg.value(metadata i8* %126, i64 0, metadata !4115, metadata !609) #11, !dbg !4184
  store volatile i8* %126, i8** @charset_aliases, align 8, !dbg !4319, !tbaa !617
  br label %127, !dbg !4320

; <label>:127:                                    ; preds = %0, %125
  %128 = phi i8* [ %6, %0 ], [ %126, %125 ]
  call void @llvm.dbg.value(metadata i8* %128, i64 0, metadata !4094, metadata !609), !dbg !4321
  %129 = load i8, i8* %128, align 1, !dbg !4322, !tbaa !923
  %130 = icmp eq i8 %129, 0, !dbg !4323
  br i1 %130, label %157, label %131, !dbg !4324

; <label>:131:                                    ; preds = %127
  br label %132, !dbg !4326

; <label>:132:                                    ; preds = %131, %147
  %133 = phi i8 [ %154, %147 ], [ %129, %131 ]
  %134 = phi i8* [ %153, %147 ], [ %128, %131 ]
  %135 = call i32 @strcmp(i8* %5, i8* %134) #11, !dbg !4326
  %136 = icmp eq i32 %135, 0, !dbg !4327
  br i1 %136, label %143, label %137, !dbg !4328

; <label>:137:                                    ; preds = %132
  %138 = icmp eq i8 %133, 42, !dbg !4329
  br i1 %138, label %139, label %147, !dbg !4331

; <label>:139:                                    ; preds = %137
  %140 = getelementptr inbounds i8, i8* %134, i64 1, !dbg !4332
  %141 = load i8, i8* %140, align 1, !dbg !4332, !tbaa !923
  %142 = icmp eq i8 %141, 0, !dbg !4334
  br i1 %142, label %143, label %147, !dbg !4335

; <label>:143:                                    ; preds = %139, %132
  %144 = call i64 @strlen(i8* %134) #9, !dbg !4337
  %145 = getelementptr inbounds i8, i8* %134, i64 %144, !dbg !4339
  %146 = getelementptr inbounds i8, i8* %145, i64 1, !dbg !4340
  call void @llvm.dbg.value(metadata i8* %146, i64 0, metadata !4093, metadata !609), !dbg !4179
  br label %157, !dbg !4341

; <label>:147:                                    ; preds = %137, %139
  %148 = call i64 @strlen(i8* %134) #9, !dbg !4342
  %149 = add i64 %148, 1, !dbg !4343
  %150 = getelementptr inbounds i8, i8* %134, i64 %149, !dbg !4344
  call void @llvm.dbg.value(metadata i8* %150, i64 0, metadata !4094, metadata !609), !dbg !4321
  %151 = call i64 @strlen(i8* %150) #9, !dbg !4345
  %152 = add i64 %151, 1, !dbg !4346
  %153 = getelementptr inbounds i8, i8* %150, i64 %152, !dbg !4347
  call void @llvm.dbg.value(metadata i8* %153, i64 0, metadata !4094, metadata !609), !dbg !4321
  call void @llvm.dbg.value(metadata i8* %153, i64 0, metadata !4094, metadata !609), !dbg !4321
  %154 = load i8, i8* %153, align 1, !dbg !4322, !tbaa !923
  %155 = icmp eq i8 %154, 0, !dbg !4323
  br i1 %155, label %156, label %132, !dbg !4324, !llvm.loop !4348

; <label>:156:                                    ; preds = %147
  br label %157, !dbg !4179

; <label>:157:                                    ; preds = %156, %127, %143
  %158 = phi i8* [ %146, %143 ], [ %5, %127 ], [ %5, %156 ]
  call void @llvm.dbg.value(metadata i8* %158, i64 0, metadata !4093, metadata !609), !dbg !4179
  %159 = load i8, i8* %158, align 1, !dbg !4351, !tbaa !923
  %160 = icmp eq i8 %159, 0, !dbg !4353
  %161 = select i1 %160, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.129, i64 0, i64 0), i8* %158, !dbg !4354
  call void @llvm.dbg.value(metadata i8* %161, i64 0, metadata !4093, metadata !609), !dbg !4179
  ret i8* %161, !dbg !4355
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

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fclose(%struct._IO_FILE* nonnull) local_unnamed_addr #6 !dbg !4356 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4401, metadata !609), !dbg !4405
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4402, metadata !609), !dbg !4406
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4404, metadata !609), !dbg !4407
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #11, !dbg !4408
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !4403, metadata !609), !dbg !4409
  %3 = icmp slt i32 %2, 0, !dbg !4410
  br i1 %3, label %4, label %6, !dbg !4412

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4413
  br label %24, !dbg !4414

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #11, !dbg !4415
  %8 = icmp eq i32 %7, 0, !dbg !4415
  br i1 %8, label %13, label %9, !dbg !4417

; <label>:9:                                      ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #11, !dbg !4418
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #11, !dbg !4420
  %12 = icmp eq i64 %11, -1, !dbg !4422
  br i1 %12, label %16, label %13, !dbg !4423

; <label>:13:                                     ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #11, !dbg !4424
  %15 = icmp eq i32 %14, 0, !dbg !4424
  br i1 %15, label %16, label %18, !dbg !4425

; <label>:16:                                     ; preds = %13, %9
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !4402, metadata !609), !dbg !4406
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4427
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !4404, metadata !609), !dbg !4407
  br label %24, !dbg !4428

; <label>:18:                                     ; preds = %13
  %19 = tail call i32* @__errno_location() #1, !dbg !4429
  %20 = load i32, i32* %19, align 4, !dbg !4429, !tbaa !729
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !4402, metadata !609), !dbg !4406
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !4402, metadata !609), !dbg !4406
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4427
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !4404, metadata !609), !dbg !4407
  %22 = icmp eq i32 %20, 0, !dbg !4430
  br i1 %22, label %24, label %23, !dbg !4428

; <label>:23:                                     ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !4432, !tbaa !729
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !4404, metadata !609), !dbg !4407
  br label %24, !dbg !4434

; <label>:24:                                     ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ]
  ret i32 %25, !dbg !4435
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
define i32 @rpl_fflush(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !4436 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4481, metadata !609), !dbg !4482
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !4483
  br i1 %2, label %6, label %3, !dbg !4485

; <label>:3:                                      ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #11, !dbg !4486
  %5 = icmp eq i32 %4, 0, !dbg !4486
  br i1 %5, label %6, label %8, !dbg !4488

; <label>:6:                                      ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !4490
  br label %17, !dbg !4491

; <label>:8:                                      ; preds = %3
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4492, metadata !609) #11, !dbg !4497
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4499
  %10 = load i32, i32* %9, align 8, !dbg !4499, !tbaa !4014
  %11 = and i32 %10, 256, !dbg !4501
  %12 = icmp eq i32 %11, 0, !dbg !4501
  br i1 %12, label %15, label %13, !dbg !4502

; <label>:13:                                     ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #11, !dbg !4503
  br label %15, !dbg !4503

; <label>:15:                                     ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !4504
  br label %17, !dbg !4505

; <label>:17:                                     ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ]
  ret i32 %18, !dbg !4506
}

; Function Attrs: nounwind
declare i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull, i64, i32) local_unnamed_addr #6 !dbg !4507 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4553, metadata !609), !dbg !4559
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4554, metadata !609), !dbg !4560
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !4555, metadata !609), !dbg !4561
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !4562
  %5 = load i8*, i8** %4, align 8, !dbg !4562, !tbaa !4245
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !4563
  %7 = load i8*, i8** %6, align 8, !dbg !4563, !tbaa !4244
  %8 = icmp eq i8* %5, %7, !dbg !4564
  br i1 %8, label %9, label %28, !dbg !4565

; <label>:9:                                      ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !4566
  %11 = load i8*, i8** %10, align 8, !dbg !4566, !tbaa !4568
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !4569
  %13 = load i8*, i8** %12, align 8, !dbg !4569, !tbaa !4570
  %14 = icmp eq i8* %11, %13, !dbg !4571
  br i1 %14, label %15, label %28, !dbg !4572

; <label>:15:                                     ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !4573
  %17 = load i8*, i8** %16, align 8, !dbg !4573, !tbaa !4574
  %18 = icmp eq i8* %17, null, !dbg !4575
  br i1 %18, label %19, label %28, !dbg !4576

; <label>:19:                                     ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #11, !dbg !4578
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #11, !dbg !4579
  tail call void @llvm.dbg.value(metadata i64 %21, i64 0, metadata !4556, metadata !609), !dbg !4581
  %22 = icmp eq i64 %21, -1, !dbg !4582
  br i1 %22, label %30, label %23, !dbg !4584

; <label>:23:                                     ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4585
  %25 = load i32, i32* %24, align 8, !dbg !4586, !tbaa !4014
  %26 = and i32 %25, -17, !dbg !4586
  store i32 %26, i32* %24, align 8, !dbg !4586, !tbaa !4014
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !4587
  store i64 %21, i64* %27, align 8, !dbg !4588, !tbaa !4589
  br label %30, !dbg !4590

; <label>:28:                                     ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !4591
  br label %30, !dbg !4592

; <label>:30:                                     ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ]
  ret i32 %31, !dbg !4593
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
attributes #9 = { nounwind readonly }
attributes #10 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { nounwind }
attributes #12 = { nounwind readonly sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #13 = { inlinehint nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #14 = { noreturn nounwind }
attributes #15 = { noreturn }
attributes #16 = { cold }

!llvm.dbg.cu = !{!2, !552, !71, !76, !85, !92, !99, !556, !182, !564, !581, !583, !585, !191, !588, !590, !206, !593, !595, !597}
!llvm.ident = !{!599, !599, !599, !599, !599, !599, !599, !599, !599, !599, !599, !599, !599, !599, !599, !599, !599, !599, !599, !599}
!llvm.module.flags = !{!600, !601, !602, !603}

!0 = !DIGlobalVariableExpression(var: !1)
!1 = distinct !DIGlobalVariable(name: "short_options", scope: !2, file: !3, line: 54, type: !66, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !20)
!3 = !DIFile(filename: "src/kill.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4 = !{}
!5 = !{!6, !8, !9, !12, !14, !17, !19}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !10, line: 62, baseType: !11)
!10 = !DIFile(filename: "/usr/bin/../lib/clang/4.0.1/include/stddef.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!11 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !16)
!16 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!18 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!19 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!20 = !{!21, !0, !52}
!21 = !DIGlobalVariableExpression(var: !22)
!22 = distinct !DIGlobalVariable(name: "infomap", scope: !23, file: !24, line: 632, type: !49, isLocal: true, isDefinition: true)
!23 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !24, file: !24, line: 630, type: !25, isLocal: true, isDefinition: true, scopeLine: 631, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !27)
!24 = !DIFile(filename: "src/system.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!25 = !DISubroutineType(types: !26)
!26 = !{null, !17}
!27 = !{!28, !29, !30, !37, !39, !40, !41, !44, !45, !47}
!28 = !DILocalVariable(name: "program", arg: 1, scope: !23, file: !24, line: 630, type: !17)
!29 = !DILocalVariable(name: "node", scope: !23, file: !24, line: 642, type: !17)
!30 = !DILocalVariable(name: "map_prog", scope: !23, file: !24, line: 643, type: !31)
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!32 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !33)
!33 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !23, file: !24, line: 632, size: 128, elements: !34)
!34 = !{!35, !36}
!35 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !33, file: !24, line: 632, baseType: !17, size: 64)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !33, file: !24, line: 632, baseType: !17, size: 64, offset: 64)
!37 = !DILocalVariable(name: "__s1_len", scope: !38, file: !24, line: 645, type: !9)
!38 = distinct !DILexicalBlock(scope: !23, file: !24, line: 645, column: 33)
!39 = !DILocalVariable(name: "__s2_len", scope: !38, file: !24, line: 645, type: !9)
!40 = !DILocalVariable(name: "lc_messages", scope: !23, file: !24, line: 655, type: !17)
!41 = !DILocalVariable(name: "__s1_len", scope: !42, file: !24, line: 656, type: !9)
!42 = distinct !DILexicalBlock(scope: !43, file: !24, line: 656, column: 22)
!43 = distinct !DILexicalBlock(scope: !23, file: !24, line: 656, column: 7)
!44 = !DILocalVariable(name: "__s2_len", scope: !42, file: !24, line: 656, type: !9)
!45 = !DILocalVariable(name: "__s2", scope: !46, file: !24, line: 656, type: !14)
!46 = distinct !DILexicalBlock(scope: !42, file: !24, line: 656, column: 22)
!47 = !DILocalVariable(name: "__result", scope: !46, file: !24, line: 656, type: !48)
!48 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!49 = !DICompositeType(tag: DW_TAG_array_type, baseType: !32, size: 896, elements: !50)
!50 = !{!51}
!51 = !DISubrange(count: 7)
!52 = !DIGlobalVariableExpression(var: !53)
!53 = distinct !DIGlobalVariable(name: "long_options", scope: !2, file: !3, line: 60, type: !54, isLocal: true, isDefinition: true)
!54 = !DICompositeType(tag: DW_TAG_array_type, baseType: !55, size: 1536, elements: !64)
!55 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !56)
!56 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !57, line: 104, size: 256, elements: !58)
!57 = !DIFile(filename: "/usr/include/getopt.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!58 = !{!59, !60, !61, !63}
!59 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !56, file: !57, line: 106, baseType: !17, size: 64)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !56, file: !57, line: 109, baseType: !48, size: 32, offset: 64)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !56, file: !57, line: 110, baseType: !62, size: 64, offset: 128)
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !56, file: !57, line: 111, baseType: !48, size: 32, offset: 192)
!64 = !{!65}
!65 = !DISubrange(count: 6)
!66 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 904, elements: !67)
!67 = !{!68}
!68 = !DISubrange(count: 113)
!69 = !DIGlobalVariableExpression(var: !70)
!70 = distinct !DIGlobalVariable(name: "Version", scope: !71, file: !72, line: 2, type: !17, isLocal: false, isDefinition: true)
!71 = distinct !DICompileUnit(language: DW_LANG_C99, file: !72, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !73)
!72 = !DIFile(filename: "src/version.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!73 = !{!69}
!74 = !DIGlobalVariableExpression(var: !75)
!75 = distinct !DIGlobalVariable(name: "file_name", scope: !76, file: !81, line: 36, type: !17, isLocal: true, isDefinition: true)
!76 = distinct !DICompileUnit(language: DW_LANG_C99, file: !77, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !78)
!77 = !DIFile(filename: "./lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!78 = !{!74, !79}
!79 = !DIGlobalVariableExpression(var: !80)
!80 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !76, file: !81, line: 46, type: !82, isLocal: true, isDefinition: true)
!81 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!82 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!83 = !DIGlobalVariableExpression(var: !84)
!84 = distinct !DIGlobalVariable(name: "exit_failure", scope: !85, file: !88, line: 24, type: !89, isLocal: false, isDefinition: true)
!85 = distinct !DICompileUnit(language: DW_LANG_C99, file: !86, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !87)
!86 = !DIFile(filename: "./lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!87 = !{!83}
!88 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!89 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !48)
!90 = !DIGlobalVariableExpression(var: !91)
!91 = distinct !DIGlobalVariable(name: "program_name", scope: !92, file: !96, line: 33, type: !17, isLocal: false, isDefinition: true)
!92 = distinct !DICompileUnit(language: DW_LANG_C99, file: !93, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !94, globals: !95)
!93 = !DIFile(filename: "./lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!94 = !{!8, !6}
!95 = !{!90}
!96 = !DIFile(filename: "lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!97 = !DIGlobalVariableExpression(var: !98)
!98 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !99, file: !141, line: 77, type: !176, isLocal: false, isDefinition: true)
!99 = distinct !DICompileUnit(language: DW_LANG_C99, file: !100, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !101, retainedTypes: !136, globals: !138)
!100 = !DIFile(filename: "./lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!101 = !{!102, !116, !121}
!102 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !103, line: 32, size: 32, elements: !104)
!103 = !DIFile(filename: "./lib/quotearg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!104 = !{!105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115}
!105 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!106 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!107 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!108 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!109 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!110 = !DIEnumerator(name: "c_quoting_style", value: 5)
!111 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!112 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!113 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!114 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!115 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!116 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !103, line: 242, size: 32, elements: !117)
!117 = !{!118, !119, !120}
!118 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!119 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!120 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!121 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !122, line: 46, size: 32, elements: !123)
!122 = !DIFile(filename: "/usr/include/ctype.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!123 = !{!124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135}
!124 = !DIEnumerator(name: "_ISupper", value: 256)
!125 = !DIEnumerator(name: "_ISlower", value: 512)
!126 = !DIEnumerator(name: "_ISalpha", value: 1024)
!127 = !DIEnumerator(name: "_ISdigit", value: 2048)
!128 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!129 = !DIEnumerator(name: "_ISspace", value: 8192)
!130 = !DIEnumerator(name: "_ISprint", value: 16384)
!131 = !DIEnumerator(name: "_ISgraph", value: 32768)
!132 = !DIEnumerator(name: "_ISblank", value: 1)
!133 = !DIEnumerator(name: "_IScntrl", value: 2)
!134 = !DIEnumerator(name: "_ISpunct", value: 4)
!135 = !DIEnumerator(name: "_ISalnum", value: 8)
!136 = !{!48, !137, !9, !6}
!137 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!138 = !{!97, !139, !146, !158, !160, !165, !172, !174}
!139 = !DIGlobalVariableExpression(var: !140)
!140 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !99, file: !141, line: 93, type: !142, isLocal: false, isDefinition: true)
!141 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!142 = !DICompositeType(tag: DW_TAG_array_type, baseType: !143, size: 320, elements: !144)
!143 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !102)
!144 = !{!145}
!145 = !DISubrange(count: 10)
!146 = !DIGlobalVariableExpression(var: !147)
!147 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !99, file: !141, line: 1043, type: !148, isLocal: false, isDefinition: true)
!148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !141, line: 57, size: 448, elements: !149)
!149 = !{!150, !151, !152, !156, !157}
!150 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !148, file: !141, line: 60, baseType: !102, size: 32)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !148, file: !141, line: 63, baseType: !48, size: 32, offset: 32)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !148, file: !141, line: 67, baseType: !153, size: 256, offset: 64)
!153 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 256, elements: !154)
!154 = !{!155}
!155 = !DISubrange(count: 8)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !148, file: !141, line: 70, baseType: !17, size: 64, offset: 320)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !148, file: !141, line: 73, baseType: !17, size: 64, offset: 384)
!158 = !DIGlobalVariableExpression(var: !159)
!159 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !99, file: !141, line: 108, type: !148, isLocal: true, isDefinition: true)
!160 = !DIGlobalVariableExpression(var: !161)
!161 = distinct !DIGlobalVariable(name: "slot0", scope: !99, file: !141, line: 834, type: !162, isLocal: true, isDefinition: true)
!162 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 2048, elements: !163)
!163 = !{!164}
!164 = !DISubrange(count: 256)
!165 = !DIGlobalVariableExpression(var: !166)
!166 = distinct !DIGlobalVariable(name: "slotvec", scope: !99, file: !141, line: 837, type: !167, isLocal: true, isDefinition: true)
!167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !168, size: 64)
!168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !141, line: 826, size: 128, elements: !169)
!169 = !{!170, !171}
!170 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !168, file: !141, line: 828, baseType: !9, size: 64)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !168, file: !141, line: 829, baseType: !6, size: 64, offset: 64)
!172 = !DIGlobalVariableExpression(var: !173)
!173 = distinct !DIGlobalVariable(name: "nslots", scope: !99, file: !141, line: 835, type: !48, isLocal: true, isDefinition: true)
!174 = !DIGlobalVariableExpression(var: !175)
!175 = distinct !DIGlobalVariable(name: "slotvec0", scope: !99, file: !141, line: 836, type: !168, isLocal: true, isDefinition: true)
!176 = !DICompositeType(tag: DW_TAG_array_type, baseType: !177, size: 704, elements: !178)
!177 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !17)
!178 = !{!179}
!179 = !DISubrange(count: 11)
!180 = !DIGlobalVariableExpression(var: !181)
!181 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !182, file: !185, line: 26, type: !186, isLocal: false, isDefinition: true)
!182 = distinct !DICompileUnit(language: DW_LANG_C99, file: !183, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !184)
!183 = !DIFile(filename: "./lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!184 = !{!180}
!185 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!186 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 376, elements: !187)
!187 = !{!188}
!188 = !DISubrange(count: 47)
!189 = !DIGlobalVariableExpression(var: !190)
!190 = distinct !DIGlobalVariable(name: "numname_table", scope: !191, file: !195, line: 41, type: !196, isLocal: true, isDefinition: true)
!191 = distinct !DICompileUnit(language: DW_LANG_C99, file: !192, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !193, globals: !194)
!192 = !DIFile(filename: "./lib/sig2str.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!193 = !{!19}
!194 = !{!189}
!195 = !DIFile(filename: "lib/sig2str.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!196 = !DICompositeType(tag: DW_TAG_array_type, baseType: !197, size: 3360, elements: !202)
!197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "numname", file: !195, line: 41, size: 96, elements: !198)
!198 = !{!199, !200}
!199 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !197, file: !195, line: 41, baseType: !48, size: 32)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !197, file: !195, line: 41, baseType: !201, size: 64, offset: 32)
!201 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 64, elements: !154)
!202 = !{!203}
!203 = !DISubrange(count: 35)
!204 = !DIGlobalVariableExpression(var: !205)
!205 = distinct !DIGlobalVariable(name: "charset_aliases", scope: !206, file: !550, line: 120, type: !551, isLocal: true, isDefinition: true)
!206 = distinct !DICompileUnit(language: DW_LANG_C99, file: !207, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !208, retainedTypes: !547, globals: !549)
!207 = !DIFile(filename: "./lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!208 = !{!209}
!209 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !210, line: 41, size: 32, elements: !211)
!210 = !DIFile(filename: "/usr/include/langinfo.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!211 = !{!212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546}
!212 = !DIEnumerator(name: "ABDAY_1", value: 131072)
!213 = !DIEnumerator(name: "ABDAY_2", value: 131073)
!214 = !DIEnumerator(name: "ABDAY_3", value: 131074)
!215 = !DIEnumerator(name: "ABDAY_4", value: 131075)
!216 = !DIEnumerator(name: "ABDAY_5", value: 131076)
!217 = !DIEnumerator(name: "ABDAY_6", value: 131077)
!218 = !DIEnumerator(name: "ABDAY_7", value: 131078)
!219 = !DIEnumerator(name: "DAY_1", value: 131079)
!220 = !DIEnumerator(name: "DAY_2", value: 131080)
!221 = !DIEnumerator(name: "DAY_3", value: 131081)
!222 = !DIEnumerator(name: "DAY_4", value: 131082)
!223 = !DIEnumerator(name: "DAY_5", value: 131083)
!224 = !DIEnumerator(name: "DAY_6", value: 131084)
!225 = !DIEnumerator(name: "DAY_7", value: 131085)
!226 = !DIEnumerator(name: "ABMON_1", value: 131086)
!227 = !DIEnumerator(name: "ABMON_2", value: 131087)
!228 = !DIEnumerator(name: "ABMON_3", value: 131088)
!229 = !DIEnumerator(name: "ABMON_4", value: 131089)
!230 = !DIEnumerator(name: "ABMON_5", value: 131090)
!231 = !DIEnumerator(name: "ABMON_6", value: 131091)
!232 = !DIEnumerator(name: "ABMON_7", value: 131092)
!233 = !DIEnumerator(name: "ABMON_8", value: 131093)
!234 = !DIEnumerator(name: "ABMON_9", value: 131094)
!235 = !DIEnumerator(name: "ABMON_10", value: 131095)
!236 = !DIEnumerator(name: "ABMON_11", value: 131096)
!237 = !DIEnumerator(name: "ABMON_12", value: 131097)
!238 = !DIEnumerator(name: "MON_1", value: 131098)
!239 = !DIEnumerator(name: "MON_2", value: 131099)
!240 = !DIEnumerator(name: "MON_3", value: 131100)
!241 = !DIEnumerator(name: "MON_4", value: 131101)
!242 = !DIEnumerator(name: "MON_5", value: 131102)
!243 = !DIEnumerator(name: "MON_6", value: 131103)
!244 = !DIEnumerator(name: "MON_7", value: 131104)
!245 = !DIEnumerator(name: "MON_8", value: 131105)
!246 = !DIEnumerator(name: "MON_9", value: 131106)
!247 = !DIEnumerator(name: "MON_10", value: 131107)
!248 = !DIEnumerator(name: "MON_11", value: 131108)
!249 = !DIEnumerator(name: "MON_12", value: 131109)
!250 = !DIEnumerator(name: "AM_STR", value: 131110)
!251 = !DIEnumerator(name: "PM_STR", value: 131111)
!252 = !DIEnumerator(name: "D_T_FMT", value: 131112)
!253 = !DIEnumerator(name: "D_FMT", value: 131113)
!254 = !DIEnumerator(name: "T_FMT", value: 131114)
!255 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115)
!256 = !DIEnumerator(name: "ERA", value: 131116)
!257 = !DIEnumerator(name: "__ERA_YEAR", value: 131117)
!258 = !DIEnumerator(name: "ERA_D_FMT", value: 131118)
!259 = !DIEnumerator(name: "ALT_DIGITS", value: 131119)
!260 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120)
!261 = !DIEnumerator(name: "ERA_T_FMT", value: 131121)
!262 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122)
!263 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123)
!264 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124)
!265 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125)
!266 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126)
!267 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127)
!268 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128)
!269 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129)
!270 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130)
!271 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131)
!272 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132)
!273 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133)
!274 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134)
!275 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135)
!276 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136)
!277 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137)
!278 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138)
!279 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139)
!280 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140)
!281 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141)
!282 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142)
!283 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143)
!284 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144)
!285 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145)
!286 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146)
!287 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147)
!288 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148)
!289 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149)
!290 = !DIEnumerator(name: "_NL_WMON_1", value: 131150)
!291 = !DIEnumerator(name: "_NL_WMON_2", value: 131151)
!292 = !DIEnumerator(name: "_NL_WMON_3", value: 131152)
!293 = !DIEnumerator(name: "_NL_WMON_4", value: 131153)
!294 = !DIEnumerator(name: "_NL_WMON_5", value: 131154)
!295 = !DIEnumerator(name: "_NL_WMON_6", value: 131155)
!296 = !DIEnumerator(name: "_NL_WMON_7", value: 131156)
!297 = !DIEnumerator(name: "_NL_WMON_8", value: 131157)
!298 = !DIEnumerator(name: "_NL_WMON_9", value: 131158)
!299 = !DIEnumerator(name: "_NL_WMON_10", value: 131159)
!300 = !DIEnumerator(name: "_NL_WMON_11", value: 131160)
!301 = !DIEnumerator(name: "_NL_WMON_12", value: 131161)
!302 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162)
!303 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163)
!304 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164)
!305 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165)
!306 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166)
!307 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167)
!308 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168)
!309 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169)
!310 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170)
!311 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171)
!312 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172)
!313 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173)
!314 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174)
!315 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175)
!316 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176)
!317 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177)
!318 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178)
!319 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179)
!320 = !DIEnumerator(name: "_DATE_FMT", value: 131180)
!321 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181)
!322 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182)
!323 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131183)
!324 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608)
!325 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609)
!326 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610)
!327 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611)
!328 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612)
!329 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613)
!330 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614)
!331 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615)
!332 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616)
!333 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617)
!334 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618)
!335 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619)
!336 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620)
!337 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621)
!338 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622)
!339 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623)
!340 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624)
!341 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625)
!342 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626)
!343 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627)
!344 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0)
!345 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1)
!346 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2)
!347 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3)
!348 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4)
!349 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5)
!350 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6)
!351 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7)
!352 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8)
!353 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9)
!354 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10)
!355 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11)
!356 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12)
!357 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13)
!358 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14)
!359 = !DIEnumerator(name: "CODESET", value: 14)
!360 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15)
!361 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16)
!362 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17)
!363 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18)
!364 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19)
!365 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20)
!366 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21)
!367 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22)
!368 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23)
!369 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24)
!370 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25)
!371 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26)
!372 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27)
!373 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28)
!374 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29)
!375 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30)
!376 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31)
!377 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32)
!378 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33)
!379 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34)
!380 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35)
!381 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36)
!382 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37)
!383 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38)
!384 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39)
!385 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40)
!386 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41)
!387 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42)
!388 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43)
!389 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44)
!390 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45)
!391 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46)
!392 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47)
!393 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48)
!394 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49)
!395 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50)
!396 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51)
!397 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52)
!398 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53)
!399 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54)
!400 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55)
!401 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56)
!402 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57)
!403 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58)
!404 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59)
!405 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60)
!406 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61)
!407 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62)
!408 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63)
!409 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64)
!410 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65)
!411 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66)
!412 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67)
!413 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68)
!414 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69)
!415 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70)
!416 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71)
!417 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72)
!418 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73)
!419 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74)
!420 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75)
!421 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76)
!422 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77)
!423 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78)
!424 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79)
!425 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80)
!426 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81)
!427 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82)
!428 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83)
!429 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84)
!430 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85)
!431 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86)
!432 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144)
!433 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145)
!434 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146)
!435 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147)
!436 = !DIEnumerator(name: "__MON_GROUPING", value: 262148)
!437 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149)
!438 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150)
!439 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151)
!440 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152)
!441 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153)
!442 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154)
!443 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155)
!444 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156)
!445 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157)
!446 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158)
!447 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159)
!448 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160)
!449 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161)
!450 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162)
!451 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163)
!452 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164)
!453 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165)
!454 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166)
!455 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167)
!456 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168)
!457 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169)
!458 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170)
!459 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171)
!460 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172)
!461 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173)
!462 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174)
!463 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175)
!464 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176)
!465 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177)
!466 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178)
!467 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179)
!468 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180)
!469 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181)
!470 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182)
!471 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183)
!472 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184)
!473 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185)
!474 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186)
!475 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187)
!476 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188)
!477 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189)
!478 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190)
!479 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536)
!480 = !DIEnumerator(name: "RADIXCHAR", value: 65536)
!481 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537)
!482 = !DIEnumerator(name: "THOUSEP", value: 65537)
!483 = !DIEnumerator(name: "__GROUPING", value: 65538)
!484 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539)
!485 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540)
!486 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541)
!487 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542)
!488 = !DIEnumerator(name: "__YESEXPR", value: 327680)
!489 = !DIEnumerator(name: "__NOEXPR", value: 327681)
!490 = !DIEnumerator(name: "__YESSTR", value: 327682)
!491 = !DIEnumerator(name: "__NOSTR", value: 327683)
!492 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684)
!493 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685)
!494 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752)
!495 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753)
!496 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754)
!497 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755)
!498 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288)
!499 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289)
!500 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290)
!501 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291)
!502 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292)
!503 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293)
!504 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294)
!505 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295)
!506 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824)
!507 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825)
!508 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826)
!509 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827)
!510 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828)
!511 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829)
!512 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830)
!513 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831)
!514 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832)
!515 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833)
!516 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834)
!517 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835)
!518 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836)
!519 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837)
!520 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360)
!521 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361)
!522 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362)
!523 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363)
!524 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364)
!525 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365)
!526 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896)
!527 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897)
!528 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898)
!529 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432)
!530 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433)
!531 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434)
!532 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435)
!533 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436)
!534 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437)
!535 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438)
!536 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439)
!537 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440)
!538 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441)
!539 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442)
!540 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443)
!541 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444)
!542 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445)
!543 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446)
!544 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447)
!545 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448)
!546 = !DIEnumerator(name: "_NL_NUM", value: 786449)
!547 = !{!8, !6, !548}
!548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!549 = !{!204}
!550 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!551 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !17)
!552 = distinct !DICompileUnit(language: DW_LANG_C99, file: !553, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !554)
!553 = !DIFile(filename: "src/operand2sig.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!554 = !{!19, !555, !6}
!555 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!556 = distinct !DICompileUnit(language: DW_LANG_C99, file: !557, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !558, retainedTypes: !563)
!557 = !DIFile(filename: "./lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!558 = !{!559}
!559 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !560, line: 41, size: 32, elements: !561)
!560 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!561 = !{!562}
!562 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2017)
!563 = !{!8}
!564 = distinct !DICompileUnit(language: DW_LANG_C99, file: !565, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !566, retainedTypes: !580)
!565 = !DIFile(filename: "./lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!566 = !{!567}
!567 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !569, file: !568, line: 192, size: 32, elements: !578)
!568 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!569 = distinct !DISubprogram(name: "x2nrealloc", scope: !568, file: !568, line: 180, type: !570, isLocal: false, isDefinition: true, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: true, unit: !564, variables: !573)
!570 = !DISubroutineType(types: !571)
!571 = !{!8, !8, !572, !9}
!572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!573 = !{!574, !575, !576, !577}
!574 = !DILocalVariable(name: "p", arg: 1, scope: !569, file: !568, line: 180, type: !8)
!575 = !DILocalVariable(name: "pn", arg: 2, scope: !569, file: !568, line: 180, type: !572)
!576 = !DILocalVariable(name: "s", arg: 3, scope: !569, file: !568, line: 180, type: !9)
!577 = !DILocalVariable(name: "n", scope: !569, file: !568, line: 182, type: !9)
!578 = !{!579}
!579 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!580 = !{!9, !6, !8}
!581 = distinct !DICompileUnit(language: DW_LANG_C99, file: !582, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4)
!582 = !DIFile(filename: "./lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!583 = distinct !DICompileUnit(language: DW_LANG_C99, file: !584, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !563)
!584 = !DIFile(filename: "./lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!585 = distinct !DICompileUnit(language: DW_LANG_C99, file: !586, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !587)
!586 = !DIFile(filename: "./lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!587 = !{!9}
!588 = distinct !DICompileUnit(language: DW_LANG_C99, file: !589, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4)
!589 = !DIFile(filename: "./lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!590 = distinct !DICompileUnit(language: DW_LANG_C99, file: !591, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !592)
!591 = !DIFile(filename: "./lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!592 = !{!9, !12, !14, !17}
!593 = distinct !DICompileUnit(language: DW_LANG_C99, file: !594, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4)
!594 = !DIFile(filename: "./lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!595 = distinct !DICompileUnit(language: DW_LANG_C99, file: !596, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !563)
!596 = !DIFile(filename: "./lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!597 = distinct !DICompileUnit(language: DW_LANG_C99, file: !598, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !563)
!598 = !DIFile(filename: "./lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!599 = !{!"clang version 4.0.1 (tags/RELEASE_401/final)"}
!600 = !{i32 2, !"Dwarf Version", i32 4}
!601 = !{i32 2, !"Debug Info Version", i32 3}
!602 = !{i32 1, !"PIC Level", i32 2}
!603 = !{i32 1, !"PIE Level", i32 2}
!604 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 71, type: !605, isLocal: false, isDefinition: true, scopeLine: 72, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !2, variables: !607)
!605 = !DISubroutineType(types: !606)
!606 = !{null, !48}
!607 = !{!608}
!608 = !DILocalVariable(name: "status", arg: 1, scope: !604, file: !3, line: 71, type: !48)
!609 = !DIExpression()
!610 = !DILocation(line: 71, column: 12, scope: !604)
!611 = !DILocation(line: 73, column: 14, scope: !612)
!612 = distinct !DILexicalBlock(scope: !604, file: !3, line: 73, column: 7)
!613 = !DILocation(line: 73, column: 7, scope: !604)
!614 = !DILocation(line: 74, column: 5, scope: !615)
!615 = !DILexicalBlockFile(scope: !616, file: !3, discriminator: 1)
!616 = distinct !DILexicalBlock(scope: !612, file: !3, line: 74, column: 5)
!617 = !{!618, !618, i64 0}
!618 = !{!"any pointer", !619, i64 0}
!619 = !{!"omnipotent char", !620, i64 0}
!620 = !{!"Simple C/C++ TBAA"}
!621 = !DILocation(line: 74, column: 5, scope: !622)
!622 = !DILexicalBlockFile(scope: !616, file: !3, discriminator: 3)
!623 = !DILocation(line: 74, column: 5, scope: !624)
!624 = !DILexicalBlockFile(scope: !616, file: !3, discriminator: 2)
!625 = !DILocation(line: 77, column: 7, scope: !626)
!626 = distinct !DILexicalBlock(scope: !612, file: !3, line: 76, column: 5)
!627 = !DILocation(line: 77, column: 7, scope: !628)
!628 = !DILexicalBlockFile(scope: !626, file: !3, discriminator: 1)
!629 = !DILocation(line: 83, column: 7, scope: !626)
!630 = !DILocation(line: 83, column: 7, scope: !628)
!631 = !DILocation(line: 587, column: 3, scope: !632, inlinedAt: !635)
!632 = distinct !DISubprogram(name: "emit_mandatory_arg_note", scope: !24, file: !24, line: 585, type: !633, isLocal: true, isDefinition: true, scopeLine: 586, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !4)
!633 = !DISubroutineType(types: !634)
!634 = !{null}
!635 = distinct !DILocation(line: 87, column: 7, scope: !626)
!636 = !DILocation(line: 587, column: 3, scope: !637, inlinedAt: !635)
!637 = !DILexicalBlockFile(scope: !632, file: !24, discriminator: 1)
!638 = !DILocation(line: 89, column: 7, scope: !626)
!639 = !DILocation(line: 89, column: 7, scope: !628)
!640 = !DILocation(line: 95, column: 7, scope: !626)
!641 = !DILocation(line: 95, column: 7, scope: !628)
!642 = !DILocation(line: 96, column: 7, scope: !626)
!643 = !DILocation(line: 96, column: 7, scope: !628)
!644 = !DILocation(line: 97, column: 7, scope: !626)
!645 = !DILocation(line: 97, column: 7, scope: !628)
!646 = !DILocation(line: 102, column: 7, scope: !626)
!647 = !DILocation(line: 102, column: 7, scope: !628)
!648 = !DILocation(line: 642, column: 15, scope: !23, inlinedAt: !649)
!649 = distinct !DILocation(line: 103, column: 7, scope: !626)
!650 = !DILocation(line: 651, column: 3, scope: !23, inlinedAt: !649)
!651 = !DILocation(line: 651, column: 3, scope: !652, inlinedAt: !649)
!652 = !DILexicalBlockFile(scope: !23, file: !24, discriminator: 1)
!653 = !DILocation(line: 655, column: 29, scope: !23, inlinedAt: !649)
!654 = !DILocation(line: 655, column: 15, scope: !23, inlinedAt: !649)
!655 = !DILocation(line: 656, column: 7, scope: !43, inlinedAt: !649)
!656 = !DILocation(line: 656, column: 19, scope: !43, inlinedAt: !649)
!657 = !DILocation(line: 656, column: 22, scope: !658, inlinedAt: !649)
!658 = !DILexicalBlockFile(scope: !43, file: !24, discriminator: 16)
!659 = !DILocation(line: 656, column: 7, scope: !660, inlinedAt: !649)
!660 = !DILexicalBlockFile(scope: !23, file: !24, discriminator: 16)
!661 = !DILocation(line: 662, column: 7, scope: !662, inlinedAt: !649)
!662 = distinct !DILexicalBlock(scope: !43, file: !24, line: 657, column: 5)
!663 = !DILocation(line: 662, column: 7, scope: !664, inlinedAt: !649)
!664 = !DILexicalBlockFile(scope: !662, file: !24, discriminator: 1)
!665 = !DILocation(line: 664, column: 5, scope: !662, inlinedAt: !649)
!666 = !DILocation(line: 665, column: 3, scope: !23, inlinedAt: !649)
!667 = !DILocation(line: 665, column: 3, scope: !652, inlinedAt: !649)
!668 = !DILocation(line: 667, column: 3, scope: !23, inlinedAt: !649)
!669 = !DILocation(line: 667, column: 3, scope: !652, inlinedAt: !649)
!670 = !DILocation(line: 105, column: 3, scope: !604)
!671 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 221, type: !672, isLocal: false, isDefinition: true, scopeLine: 222, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !675)
!672 = !DISubroutineType(types: !673)
!673 = !{!48, !48, !674}
!674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!675 = !{!676, !677, !678, !679, !680, !681, !682}
!676 = !DILocalVariable(name: "argc", arg: 1, scope: !671, file: !3, line: 221, type: !48)
!677 = !DILocalVariable(name: "argv", arg: 2, scope: !671, file: !3, line: 221, type: !674)
!678 = !DILocalVariable(name: "optc", scope: !671, file: !3, line: 223, type: !48)
!679 = !DILocalVariable(name: "list", scope: !671, file: !3, line: 224, type: !82)
!680 = !DILocalVariable(name: "table", scope: !671, file: !3, line: 225, type: !82)
!681 = !DILocalVariable(name: "signum", scope: !671, file: !3, line: 226, type: !48)
!682 = !DILocalVariable(name: "signame", scope: !671, file: !3, line: 227, type: !683)
!683 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 152, elements: !684)
!684 = !{!685}
!685 = !DISubrange(count: 19)
!686 = !DILocalVariable(name: "signame", scope: !687, file: !3, line: 130, type: !683)
!687 = distinct !DISubprogram(name: "list_signals", scope: !3, file: !3, line: 126, type: !688, isLocal: true, isDefinition: true, scopeLine: 127, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !692)
!688 = !DISubroutineType(types: !689)
!689 = !{!48, !82, !690}
!690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !691, size: 64)
!691 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!692 = !{!693, !694, !695, !696, !686, !697, !700, !701}
!693 = !DILocalVariable(name: "table", arg: 1, scope: !687, file: !3, line: 126, type: !82)
!694 = !DILocalVariable(name: "argv", arg: 2, scope: !687, file: !3, line: 126, type: !690)
!695 = !DILocalVariable(name: "signum", scope: !687, file: !3, line: 128, type: !48)
!696 = !DILocalVariable(name: "status", scope: !687, file: !3, line: 129, type: !48)
!697 = !DILocalVariable(name: "name_width", scope: !698, file: !3, line: 134, type: !19)
!698 = distinct !DILexicalBlock(scope: !699, file: !3, line: 133, column: 5)
!699 = distinct !DILexicalBlock(scope: !687, file: !3, line: 132, column: 7)
!700 = !DILocalVariable(name: "num_width", scope: !698, file: !3, line: 137, type: !19)
!701 = !DILocalVariable(name: "len", scope: !702, file: !3, line: 145, type: !9)
!702 = distinct !DILexicalBlock(scope: !703, file: !3, line: 144, column: 11)
!703 = distinct !DILexicalBlock(scope: !704, file: !3, line: 143, column: 13)
!704 = distinct !DILexicalBlock(scope: !705, file: !3, line: 142, column: 7)
!705 = distinct !DILexicalBlock(scope: !698, file: !3, line: 142, column: 7)
!706 = !DILocation(line: 130, column: 8, scope: !687, inlinedAt: !707)
!707 = distinct !DILocation(line: 312, column: 13, scope: !708)
!708 = !DILexicalBlockFile(scope: !671, file: !3, discriminator: 3)
!709 = !DILocation(line: 221, column: 11, scope: !671)
!710 = !DILocation(line: 221, column: 24, scope: !671)
!711 = !DILocation(line: 224, column: 8, scope: !671)
!712 = !DILocation(line: 225, column: 8, scope: !671)
!713 = !DILocation(line: 226, column: 7, scope: !671)
!714 = !DILocation(line: 227, column: 3, scope: !671)
!715 = !DILocation(line: 227, column: 8, scope: !671)
!716 = !DILocation(line: 230, column: 21, scope: !671)
!717 = !DILocation(line: 230, column: 3, scope: !671)
!718 = !DILocation(line: 231, column: 3, scope: !671)
!719 = !DILocation(line: 232, column: 3, scope: !671)
!720 = !DILocation(line: 233, column: 3, scope: !671)
!721 = !DILocation(line: 235, column: 3, scope: !671)
!722 = !DILocation(line: 237, column: 18, scope: !723)
!723 = !DILexicalBlockFile(scope: !671, file: !3, discriminator: 1)
!724 = !DILocation(line: 223, column: 7, scope: !671)
!725 = !DILocation(line: 237, column: 3, scope: !723)
!726 = !DILocation(line: 243, column: 13, scope: !727)
!727 = distinct !DILexicalBlock(scope: !728, file: !3, line: 243, column: 13)
!728 = distinct !DILexicalBlock(scope: !671, file: !3, line: 240, column: 7)
!729 = !{!730, !730, i64 0}
!730 = !{!"int", !619, i64 0}
!731 = !DILocation(line: 243, column: 20, scope: !727)
!732 = !DILocation(line: 243, column: 13, scope: !728)
!733 = !DILocation(line: 246, column: 19, scope: !734)
!734 = distinct !DILexicalBlock(scope: !727, file: !3, line: 244, column: 11)
!735 = !DILocation(line: 247, column: 13, scope: !734)
!736 = !DILocation(line: 256, column: 15, scope: !737)
!737 = distinct !DILexicalBlock(scope: !728, file: !3, line: 256, column: 13)
!738 = !DILocation(line: 256, column: 13, scope: !728)
!739 = !DILocation(line: 257, column: 32, scope: !737)
!740 = !DILocation(line: 257, column: 20, scope: !737)
!741 = !DILocation(line: 257, column: 39, scope: !737)
!742 = !DILocation(line: 257, column: 37, scope: !737)
!743 = !DILocation(line: 257, column: 18, scope: !737)
!744 = !DILocation(line: 257, column: 11, scope: !737)
!745 = !DILocation(line: 258, column: 13, scope: !746)
!746 = distinct !DILexicalBlock(scope: !728, file: !3, line: 258, column: 13)
!747 = !DILocation(line: 258, column: 35, scope: !746)
!748 = !DILocation(line: 258, column: 23, scope: !746)
!749 = !DILocation(line: 258, column: 40, scope: !746)
!750 = !DILocation(line: 258, column: 20, scope: !746)
!751 = !DILocation(line: 258, column: 13, scope: !728)
!752 = !DILocation(line: 260, column: 26, scope: !753)
!753 = distinct !DILexicalBlock(scope: !746, file: !3, line: 259, column: 11)
!754 = !DILocation(line: 260, column: 13, scope: !755)
!755 = !DILexicalBlockFile(scope: !753, file: !3, discriminator: 1)
!756 = !DILocation(line: 261, column: 13, scope: !753)
!757 = !DILocation(line: 263, column: 15, scope: !728)
!758 = !DILocation(line: 263, column: 9, scope: !728)
!759 = !DILocation(line: 267, column: 15, scope: !760)
!760 = distinct !DILexicalBlock(scope: !728, file: !3, line: 267, column: 13)
!761 = !DILocation(line: 267, column: 13, scope: !728)
!762 = !DILocation(line: 269, column: 26, scope: !763)
!763 = distinct !DILexicalBlock(scope: !760, file: !3, line: 268, column: 11)
!764 = !DILocation(line: 269, column: 70, scope: !763)
!765 = !DILocation(line: 269, column: 63, scope: !766)
!766 = !DILexicalBlockFile(scope: !763, file: !3, discriminator: 1)
!767 = !DILocation(line: 269, column: 13, scope: !768)
!768 = !DILexicalBlockFile(scope: !763, file: !3, discriminator: 2)
!769 = !DILocation(line: 270, column: 13, scope: !763)
!770 = !DILocation(line: 272, column: 31, scope: !728)
!771 = !DILocation(line: 272, column: 18, scope: !728)
!772 = !DILocation(line: 273, column: 20, scope: !773)
!773 = distinct !DILexicalBlock(scope: !728, file: !3, line: 273, column: 13)
!774 = !DILocation(line: 273, column: 13, scope: !728)
!775 = distinct !{!775, !776, !777}
!776 = !DILocation(line: 237, column: 3, scope: !671)
!777 = !DILocation(line: 294, column: 7, scope: !671)
!778 = !DILocation(line: 274, column: 11, scope: !773)
!779 = !DILocation(line: 290, column: 7, scope: !728)
!780 = !DILocation(line: 291, column: 7, scope: !728)
!781 = !DILocation(line: 291, column: 7, scope: !782)
!782 = !DILexicalBlockFile(scope: !728, file: !3, discriminator: 1)
!783 = !DILocation(line: 293, column: 9, scope: !728)
!784 = !DILocation(line: 297, column: 14, scope: !785)
!785 = distinct !DILexicalBlock(scope: !671, file: !3, line: 297, column: 7)
!786 = !DILocation(line: 297, column: 7, scope: !671)
!787 = !DILocation(line: 299, column: 12, scope: !788)
!788 = distinct !DILexicalBlock(scope: !785, file: !3, line: 299, column: 12)
!789 = !DILocation(line: 299, column: 12, scope: !785)
!790 = !DILocation(line: 301, column: 20, scope: !791)
!791 = distinct !DILexicalBlock(scope: !788, file: !3, line: 300, column: 5)
!792 = !DILocation(line: 301, column: 7, scope: !793)
!793 = !DILexicalBlockFile(scope: !791, file: !3, discriminator: 1)
!794 = !DILocation(line: 302, column: 7, scope: !791)
!795 = !DILocation(line: 305, column: 10, scope: !796)
!796 = distinct !DILexicalBlock(scope: !671, file: !3, line: 305, column: 8)
!797 = !DILocation(line: 305, column: 26, scope: !798)
!798 = !DILexicalBlockFile(scope: !796, file: !3, discriminator: 1)
!799 = !DILocation(line: 305, column: 23, scope: !798)
!800 = !DILocation(line: 305, column: 15, scope: !796)
!801 = !DILocation(line: 307, column: 20, scope: !802)
!802 = distinct !DILexicalBlock(scope: !796, file: !3, line: 306, column: 5)
!803 = !DILocation(line: 307, column: 7, scope: !804)
!804 = !DILexicalBlockFile(scope: !802, file: !3, discriminator: 1)
!805 = !DILocation(line: 308, column: 7, scope: !802)
!806 = !DILocation(line: 311, column: 11, scope: !671)
!807 = !DILocation(line: 312, column: 27, scope: !671)
!808 = !DILocation(line: 312, column: 55, scope: !723)
!809 = !DILocation(line: 312, column: 34, scope: !671)
!810 = !DIExpression(DW_OP_LLVM_fragment, 0, 1)
!811 = !DILocation(line: 126, column: 20, scope: !687, inlinedAt: !707)
!812 = !DILocation(line: 126, column: 40, scope: !687, inlinedAt: !707)
!813 = !DILocation(line: 129, column: 7, scope: !687, inlinedAt: !707)
!814 = !DILocation(line: 130, column: 3, scope: !687, inlinedAt: !707)
!815 = !DILocation(line: 132, column: 7, scope: !687, inlinedAt: !707)
!816 = !DILocation(line: 143, column: 13, scope: !703, inlinedAt: !707)
!817 = !DILocation(line: 143, column: 39, scope: !703, inlinedAt: !707)
!818 = !DILocation(line: 143, column: 13, scope: !704, inlinedAt: !707)
!819 = !DILocation(line: 145, column: 26, scope: !702, inlinedAt: !707)
!820 = !DILocation(line: 145, column: 20, scope: !702, inlinedAt: !707)
!821 = !DILocation(line: 146, column: 17, scope: !822, inlinedAt: !707)
!822 = distinct !DILexicalBlock(scope: !702, file: !3, line: 146, column: 17)
!823 = !DILocation(line: 146, column: 28, scope: !822, inlinedAt: !707)
!824 = !DILocation(line: 147, column: 28, scope: !822, inlinedAt: !707)
!825 = !DILocation(line: 134, column: 20, scope: !698, inlinedAt: !707)
!826 = !DILocation(line: 146, column: 17, scope: !702, inlinedAt: !707)
!827 = !DILocation(line: 148, column: 11, scope: !702, inlinedAt: !707)
!828 = !DILocation(line: 142, column: 54, scope: !829, inlinedAt: !707)
!829 = !DILexicalBlockFile(scope: !704, file: !3, discriminator: 2)
!830 = !DILocation(line: 128, column: 7, scope: !687, inlinedAt: !707)
!831 = !DILocation(line: 142, column: 31, scope: !832, inlinedAt: !707)
!832 = !DILexicalBlockFile(scope: !704, file: !3, discriminator: 1)
!833 = !DILocation(line: 142, column: 7, scope: !834, inlinedAt: !707)
!834 = !DILexicalBlockFile(scope: !705, file: !3, discriminator: 1)
!835 = distinct !{!835, !836, !837}
!836 = !DILocation(line: 142, column: 7, scope: !705)
!837 = !DILocation(line: 148, column: 11, scope: !705)
!838 = !DILocation(line: 150, column: 11, scope: !839, inlinedAt: !707)
!839 = distinct !DILexicalBlock(scope: !698, file: !3, line: 150, column: 11)
!840 = !DILocation(line: 150, column: 11, scope: !698, inlinedAt: !707)
!841 = !DILocation(line: 161, column: 15, scope: !842, inlinedAt: !707)
!842 = distinct !DILexicalBlock(scope: !843, file: !3, line: 161, column: 15)
!843 = distinct !DILexicalBlock(scope: !844, file: !3, line: 160, column: 9)
!844 = distinct !DILexicalBlock(scope: !839, file: !3, line: 160, column: 9)
!845 = !DILocation(line: 151, column: 16, scope: !846, inlinedAt: !707)
!846 = !DILexicalBlockFile(scope: !847, file: !3, discriminator: 1)
!847 = distinct !DILexicalBlock(scope: !848, file: !3, line: 151, column: 9)
!848 = distinct !DILexicalBlock(scope: !839, file: !3, line: 151, column: 9)
!849 = !DILocation(line: 151, column: 9, scope: !850, inlinedAt: !707)
!850 = !DILexicalBlockFile(scope: !848, file: !3, discriminator: 1)
!851 = !DILocation(line: 153, column: 22, scope: !852, inlinedAt: !707)
!852 = distinct !DILexicalBlock(scope: !847, file: !3, line: 152, column: 11)
!853 = !DILocation(line: 154, column: 24, scope: !854, inlinedAt: !707)
!854 = distinct !DILexicalBlock(scope: !852, file: !3, line: 154, column: 17)
!855 = !DILocation(line: 154, column: 17, scope: !852, inlinedAt: !707)
!856 = !DILocalVariable(name: "num_width", arg: 1, scope: !857, file: !3, line: 113, type: !48)
!857 = distinct !DISubprogram(name: "print_table_row", scope: !3, file: !3, line: 113, type: !858, isLocal: true, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !860)
!858 = !DISubroutineType(types: !859)
!859 = !{null, !48, !48, !48, !17}
!860 = !{!856, !861, !862, !863, !864}
!861 = !DILocalVariable(name: "signum", arg: 2, scope: !857, file: !3, line: 113, type: !48)
!862 = !DILocalVariable(name: "name_width", arg: 3, scope: !857, file: !3, line: 114, type: !48)
!863 = !DILocalVariable(name: "signame", arg: 4, scope: !857, file: !3, line: 114, type: !17)
!864 = !DILocalVariable(name: "description", scope: !857, file: !3, line: 116, type: !17)
!865 = !DILocation(line: 113, column: 22, scope: !857, inlinedAt: !866)
!866 = distinct !DILocation(line: 157, column: 15, scope: !854, inlinedAt: !707)
!867 = !DILocation(line: 113, column: 37, scope: !857, inlinedAt: !866)
!868 = !DILocation(line: 114, column: 22, scope: !857, inlinedAt: !866)
!869 = !DILocation(line: 114, column: 46, scope: !857, inlinedAt: !866)
!870 = !DILocation(line: 116, column: 29, scope: !857, inlinedAt: !866)
!871 = !DILocation(line: 116, column: 15, scope: !857, inlinedAt: !866)
!872 = !DILocation(line: 117, column: 3, scope: !857, inlinedAt: !866)
!873 = !DILocation(line: 117, column: 3, scope: !874, inlinedAt: !866)
!874 = !DILexicalBlockFile(scope: !857, file: !3, discriminator: 3)
!875 = !DILocation(line: 151, column: 27, scope: !876, inlinedAt: !707)
!876 = !DILexicalBlockFile(scope: !847, file: !3, discriminator: 2)
!877 = distinct !{!877, !878, !879}
!878 = !DILocation(line: 151, column: 9, scope: !848)
!879 = !DILocation(line: 158, column: 11, scope: !848)
!880 = !DILocation(line: 161, column: 41, scope: !842, inlinedAt: !707)
!881 = !DILocation(line: 161, column: 15, scope: !843, inlinedAt: !707)
!882 = !DILocation(line: 113, column: 22, scope: !857, inlinedAt: !883)
!883 = distinct !DILocation(line: 162, column: 13, scope: !842, inlinedAt: !707)
!884 = !DILocation(line: 113, column: 37, scope: !857, inlinedAt: !883)
!885 = !DILocation(line: 114, column: 22, scope: !857, inlinedAt: !883)
!886 = !DILocation(line: 114, column: 46, scope: !857, inlinedAt: !883)
!887 = !DILocation(line: 116, column: 29, scope: !857, inlinedAt: !883)
!888 = !DILocation(line: 116, column: 15, scope: !857, inlinedAt: !883)
!889 = !DILocation(line: 117, column: 3, scope: !857, inlinedAt: !883)
!890 = !DILocation(line: 117, column: 3, scope: !874, inlinedAt: !883)
!891 = !DILocation(line: 162, column: 13, scope: !842, inlinedAt: !707)
!892 = !DILocation(line: 160, column: 56, scope: !893, inlinedAt: !707)
!893 = !DILexicalBlockFile(scope: !843, file: !3, discriminator: 2)
!894 = !DILocation(line: 160, column: 33, scope: !895, inlinedAt: !707)
!895 = !DILexicalBlockFile(scope: !843, file: !3, discriminator: 1)
!896 = !DILocation(line: 160, column: 9, scope: !897, inlinedAt: !707)
!897 = !DILexicalBlockFile(scope: !844, file: !3, discriminator: 1)
!898 = distinct !{!898, !899, !900}
!899 = !DILocation(line: 160, column: 9, scope: !844)
!900 = !DILocation(line: 162, column: 68, scope: !844)
!901 = !DILocation(line: 166, column: 11, scope: !902, inlinedAt: !707)
!902 = distinct !DILexicalBlock(scope: !903, file: !3, line: 166, column: 11)
!903 = distinct !DILexicalBlock(scope: !699, file: !3, line: 165, column: 5)
!904 = !DILocation(line: 166, column: 11, scope: !903, inlinedAt: !707)
!905 = !DILocation(line: 182, column: 15, scope: !906, inlinedAt: !707)
!906 = distinct !DILexicalBlock(scope: !907, file: !3, line: 182, column: 15)
!907 = distinct !DILexicalBlock(scope: !908, file: !3, line: 181, column: 9)
!908 = distinct !DILexicalBlock(scope: !902, file: !3, line: 181, column: 9)
!909 = !DILocation(line: 167, column: 16, scope: !910, inlinedAt: !707)
!910 = !DILexicalBlockFile(scope: !911, file: !3, discriminator: 1)
!911 = distinct !DILexicalBlock(scope: !912, file: !3, line: 167, column: 9)
!912 = distinct !DILexicalBlock(scope: !902, file: !3, line: 167, column: 9)
!913 = !DILocation(line: 167, column: 9, scope: !914, inlinedAt: !707)
!914 = !DILexicalBlockFile(scope: !912, file: !3, discriminator: 1)
!915 = !DILocation(line: 169, column: 22, scope: !916, inlinedAt: !707)
!916 = distinct !DILexicalBlock(scope: !911, file: !3, line: 168, column: 11)
!917 = !DILocation(line: 170, column: 24, scope: !918, inlinedAt: !707)
!918 = distinct !DILexicalBlock(scope: !916, file: !3, line: 170, column: 17)
!919 = !DILocation(line: 170, column: 17, scope: !916, inlinedAt: !707)
!920 = !DILocation(line: 174, column: 21, scope: !921, inlinedAt: !707)
!921 = distinct !DILexicalBlock(scope: !922, file: !3, line: 174, column: 21)
!922 = distinct !DILexicalBlock(scope: !918, file: !3, line: 173, column: 15)
!923 = !{!619, !619, i64 0}
!924 = !DILocation(line: 174, column: 21, scope: !922, inlinedAt: !707)
!925 = !DILocation(line: 175, column: 19, scope: !921, inlinedAt: !707)
!926 = !DILocation(line: 177, column: 19, scope: !921, inlinedAt: !707)
!927 = !DILocation(line: 167, column: 27, scope: !928, inlinedAt: !707)
!928 = !DILexicalBlockFile(scope: !911, file: !3, discriminator: 2)
!929 = distinct !{!929, !930, !931}
!930 = !DILocation(line: 167, column: 9, scope: !912)
!931 = !DILocation(line: 179, column: 11, scope: !912)
!932 = !DILocation(line: 182, column: 41, scope: !906, inlinedAt: !707)
!933 = !DILocation(line: 182, column: 15, scope: !907, inlinedAt: !707)
!934 = !DILocation(line: 183, column: 13, scope: !906, inlinedAt: !707)
!935 = !DILocation(line: 181, column: 56, scope: !936, inlinedAt: !707)
!936 = !DILexicalBlockFile(scope: !907, file: !3, discriminator: 2)
!937 = !DILocation(line: 181, column: 33, scope: !938, inlinedAt: !707)
!938 = !DILexicalBlockFile(scope: !907, file: !3, discriminator: 1)
!939 = !DILocation(line: 181, column: 9, scope: !940, inlinedAt: !707)
!940 = !DILexicalBlockFile(scope: !908, file: !3, discriminator: 1)
!941 = distinct !{!941, !942, !943}
!942 = !DILocation(line: 181, column: 9, scope: !908)
!943 = !DILocation(line: 183, column: 26, scope: !908)
!944 = !DILocation(line: 187, column: 1, scope: !687, inlinedAt: !707)
!945 = !DILocation(line: 311, column: 11, scope: !723)
!946 = !DILocation(line: 313, column: 40, scope: !671)
!947 = !DILocalVariable(name: "signum", arg: 1, scope: !948, file: !3, line: 193, type: !48)
!948 = distinct !DISubprogram(name: "send_signals", scope: !3, file: !3, line: 193, type: !949, isLocal: true, isDefinition: true, scopeLine: 194, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !951)
!949 = !DISubroutineType(types: !950)
!950 = !{!48, !48, !690}
!951 = !{!947, !952, !953, !954, !955, !957, !963}
!952 = !DILocalVariable(name: "argv", arg: 2, scope: !948, file: !3, line: 193, type: !690)
!953 = !DILocalVariable(name: "status", scope: !948, file: !3, line: 195, type: !48)
!954 = !DILocalVariable(name: "arg", scope: !948, file: !3, line: 196, type: !17)
!955 = !DILocalVariable(name: "endp", scope: !956, file: !3, line: 200, type: !6)
!956 = distinct !DILexicalBlock(scope: !948, file: !3, line: 199, column: 5)
!957 = !DILocalVariable(name: "n", scope: !956, file: !3, line: 201, type: !958)
!958 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !959, line: 135, baseType: !960)
!959 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!960 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !961, line: 61, baseType: !962)
!961 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!962 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!963 = !DILocalVariable(name: "pid", scope: !956, file: !3, line: 202, type: !964)
!964 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !965, line: 98, baseType: !966)
!965 = !DIFile(filename: "/usr/include/sys/types.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!966 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pid_t", file: !961, line: 142, baseType: !48)
!967 = !DILocation(line: 193, column: 19, scope: !948, inlinedAt: !968)
!968 = distinct !DILocation(line: 313, column: 13, scope: !671)
!969 = !DILocation(line: 193, column: 40, scope: !948, inlinedAt: !968)
!970 = !DILocation(line: 195, column: 7, scope: !948, inlinedAt: !968)
!971 = !DILocation(line: 196, column: 21, scope: !948, inlinedAt: !968)
!972 = !DILocation(line: 196, column: 15, scope: !948, inlinedAt: !968)
!973 = !DILocation(line: 198, column: 3, scope: !948, inlinedAt: !968)
!974 = distinct !{!974, !975, !976}
!975 = !DILocation(line: 198, column: 3, scope: !948)
!976 = !DILocation(line: 215, column: 25, scope: !948)
!977 = !DILocation(line: 200, column: 7, scope: !956, inlinedAt: !968)
!978 = !DILocation(line: 201, column: 21, scope: !956, inlinedAt: !968)
!979 = !DILocation(line: 201, column: 27, scope: !956, inlinedAt: !968)
!980 = !DIExpression(DW_OP_deref)
!981 = !DILocation(line: 200, column: 13, scope: !956, inlinedAt: !968)
!982 = !DILocalVariable(name: "nptr", arg: 1, scope: !983, file: !984, line: 324, type: !987)
!983 = distinct !DISubprogram(name: "strtoimax", scope: !984, file: !984, line: 324, type: !985, isLocal: false, isDefinition: true, scopeLine: 326, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !989)
!984 = !DIFile(filename: "/usr/include/inttypes.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!985 = !DISubroutineType(types: !986)
!986 = !{!958, !987, !988, !48}
!987 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !17)
!988 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !674)
!989 = !{!982, !990, !991}
!990 = !DILocalVariable(name: "endptr", arg: 2, scope: !983, file: !984, line: 324, type: !988)
!991 = !DILocalVariable(name: "base", arg: 3, scope: !983, file: !984, line: 324, type: !48)
!992 = !DILocation(line: 324, column: 1, scope: !983, inlinedAt: !993)
!993 = distinct !DILocation(line: 201, column: 32, scope: !994, inlinedAt: !968)
!994 = !DILexicalBlockFile(scope: !956, file: !3, discriminator: 1)
!995 = !DILocation(line: 327, column: 10, scope: !983, inlinedAt: !993)
!996 = !DILocation(line: 201, column: 16, scope: !956, inlinedAt: !968)
!997 = !DILocation(line: 202, column: 19, scope: !956, inlinedAt: !968)
!998 = !DILocation(line: 202, column: 13, scope: !956, inlinedAt: !968)
!999 = !DILocation(line: 204, column: 11, scope: !1000, inlinedAt: !968)
!1000 = distinct !DILexicalBlock(scope: !956, file: !3, line: 204, column: 11)
!1001 = !DILocation(line: 204, column: 17, scope: !1000, inlinedAt: !968)
!1002 = !DILocation(line: 204, column: 27, scope: !1000, inlinedAt: !968)
!1003 = !DILocation(line: 204, column: 30, scope: !1004, inlinedAt: !968)
!1004 = !DILexicalBlockFile(scope: !1000, file: !3, discriminator: 1)
!1005 = !DILocation(line: 204, column: 34, scope: !1004, inlinedAt: !968)
!1006 = !DILocation(line: 204, column: 39, scope: !1004, inlinedAt: !968)
!1007 = !DILocation(line: 204, column: 49, scope: !1008, inlinedAt: !968)
!1008 = !DILexicalBlockFile(scope: !1000, file: !3, discriminator: 2)
!1009 = !DILocation(line: 204, column: 46, scope: !1008, inlinedAt: !968)
!1010 = !DILocation(line: 204, column: 54, scope: !1008, inlinedAt: !968)
!1011 = !DILocation(line: 204, column: 57, scope: !1012, inlinedAt: !968)
!1012 = !DILexicalBlockFile(scope: !1000, file: !3, discriminator: 3)
!1013 = !DILocation(line: 204, column: 11, scope: !1014, inlinedAt: !968)
!1014 = !DILexicalBlockFile(scope: !956, file: !3, discriminator: 3)
!1015 = !DILocation(line: 206, column: 24, scope: !1016, inlinedAt: !968)
!1016 = distinct !DILexicalBlock(scope: !1000, file: !3, line: 205, column: 9)
!1017 = !DILocation(line: 206, column: 53, scope: !1018, inlinedAt: !968)
!1018 = !DILexicalBlockFile(scope: !1016, file: !3, discriminator: 1)
!1019 = !DILocation(line: 206, column: 11, scope: !1020, inlinedAt: !968)
!1020 = !DILexicalBlockFile(scope: !1016, file: !3, discriminator: 2)
!1021 = !DILocation(line: 208, column: 9, scope: !1016, inlinedAt: !968)
!1022 = !DILocation(line: 209, column: 16, scope: !1023, inlinedAt: !968)
!1023 = distinct !DILexicalBlock(scope: !1000, file: !3, line: 209, column: 16)
!1024 = !DILocation(line: 209, column: 35, scope: !1023, inlinedAt: !968)
!1025 = !DILocation(line: 209, column: 16, scope: !1000, inlinedAt: !968)
!1026 = !DILocation(line: 211, column: 21, scope: !1027, inlinedAt: !968)
!1027 = distinct !DILexicalBlock(scope: !1023, file: !3, line: 210, column: 9)
!1028 = !DILocation(line: 211, column: 34, scope: !1029, inlinedAt: !968)
!1029 = !DILexicalBlockFile(scope: !1027, file: !3, discriminator: 1)
!1030 = !DILocation(line: 211, column: 11, scope: !1031, inlinedAt: !968)
!1031 = !DILexicalBlockFile(scope: !1027, file: !3, discriminator: 2)
!1032 = !DILocation(line: 213, column: 9, scope: !1027, inlinedAt: !968)
!1033 = !DILocation(line: 214, column: 5, scope: !948, inlinedAt: !968)
!1034 = !DILocation(line: 215, column: 18, scope: !948, inlinedAt: !968)
!1035 = !DILocation(line: 215, column: 17, scope: !948, inlinedAt: !968)
!1036 = !DILocation(line: 214, column: 5, scope: !994, inlinedAt: !968)
!1037 = !DILocation(line: 314, column: 1, scope: !671)
!1038 = !DILocation(line: 311, column: 11, scope: !708)
!1039 = !DILocation(line: 284, column: 26, scope: !1040)
!1040 = distinct !DILexicalBlock(scope: !1041, file: !3, line: 283, column: 11)
!1041 = distinct !DILexicalBlock(scope: !728, file: !3, line: 282, column: 13)
!1042 = !DILocation(line: 284, column: 13, scope: !1043)
!1043 = !DILexicalBlockFile(scope: !1040, file: !3, discriminator: 1)
!1044 = !DILocation(line: 285, column: 13, scope: !1040)
!1045 = distinct !DISubprogram(name: "operand2sig", scope: !553, file: !553, line: 36, type: !1046, isLocal: false, isDefinition: true, scopeLine: 37, flags: DIFlagPrototyped, isOptimized: true, unit: !552, variables: !1048)
!1046 = !DISubroutineType(types: !1047)
!1047 = !{!48, !17, !6}
!1048 = !{!1049, !1050, !1051, !1052, !1055, !1056, !1057, !1059}
!1049 = !DILocalVariable(name: "operand", arg: 1, scope: !1045, file: !553, line: 36, type: !17)
!1050 = !DILocalVariable(name: "signame", arg: 2, scope: !1045, file: !553, line: 36, type: !6)
!1051 = !DILocalVariable(name: "signum", scope: !1045, file: !553, line: 38, type: !48)
!1052 = !DILocalVariable(name: "endp", scope: !1053, file: !553, line: 53, type: !6)
!1053 = distinct !DILexicalBlock(scope: !1054, file: !553, line: 41, column: 5)
!1054 = distinct !DILexicalBlock(scope: !1045, file: !553, line: 40, column: 7)
!1055 = !DILocalVariable(name: "l", scope: !1053, file: !553, line: 54, type: !962)
!1056 = !DILocalVariable(name: "i", scope: !1053, file: !553, line: 55, type: !48)
!1057 = !DILocalVariable(name: "upcased", scope: !1058, file: !553, line: 63, type: !6)
!1058 = distinct !DILexicalBlock(scope: !1054, file: !553, line: 60, column: 5)
!1059 = !DILocalVariable(name: "p", scope: !1058, file: !553, line: 64, type: !6)
!1060 = !DILocation(line: 36, column: 26, scope: !1045)
!1061 = !DILocation(line: 36, column: 41, scope: !1045)
!1062 = !DILocation(line: 38, column: 3, scope: !1045)
!1063 = !DILocation(line: 40, column: 7, scope: !1054)
!1064 = !DILocation(line: 40, column: 7, scope: !1045)
!1065 = !DILocation(line: 53, column: 7, scope: !1053)
!1066 = !DILocation(line: 54, column: 21, scope: !1053)
!1067 = !DILocation(line: 54, column: 27, scope: !1053)
!1068 = !DILocation(line: 53, column: 13, scope: !1053)
!1069 = !DILocation(line: 54, column: 32, scope: !1070)
!1070 = !DILexicalBlockFile(scope: !1053, file: !553, discriminator: 1)
!1071 = !DILocation(line: 54, column: 16, scope: !1053)
!1072 = !DILocation(line: 55, column: 15, scope: !1053)
!1073 = !DILocation(line: 55, column: 11, scope: !1053)
!1074 = !DILocation(line: 56, column: 28, scope: !1053)
!1075 = !DILocation(line: 56, column: 25, scope: !1053)
!1076 = !DILocation(line: 56, column: 33, scope: !1053)
!1077 = !DILocation(line: 56, column: 36, scope: !1070)
!1078 = !DILocation(line: 56, column: 42, scope: !1070)
!1079 = !DILocation(line: 56, column: 45, scope: !1080)
!1080 = !DILexicalBlockFile(scope: !1053, file: !553, discriminator: 2)
!1081 = !DILocation(line: 56, column: 51, scope: !1080)
!1082 = !DILocation(line: 56, column: 54, scope: !1083)
!1083 = !DILexicalBlockFile(scope: !1053, file: !553, discriminator: 3)
!1084 = !DILocation(line: 56, column: 56, scope: !1083)
!1085 = !DILocation(line: 56, column: 17, scope: !1083)
!1086 = !DILocation(line: 57, column: 19, scope: !1053)
!1087 = !DILocation(line: 56, column: 17, scope: !1088)
!1088 = !DILexicalBlockFile(scope: !1053, file: !553, discriminator: 6)
!1089 = !DILocation(line: 38, column: 7, scope: !1045)
!1090 = !DILocation(line: 56, column: 14, scope: !1088)
!1091 = !DILocation(line: 58, column: 5, scope: !1054)
!1092 = !DILocation(line: 58, column: 5, scope: !1053)
!1093 = !DILocation(line: 63, column: 23, scope: !1058)
!1094 = !DILocation(line: 63, column: 13, scope: !1058)
!1095 = !DILocation(line: 64, column: 13, scope: !1058)
!1096 = !DILocation(line: 65, column: 25, scope: !1097)
!1097 = !DILexicalBlockFile(scope: !1098, file: !553, discriminator: 1)
!1098 = distinct !DILexicalBlock(scope: !1099, file: !553, line: 65, column: 7)
!1099 = distinct !DILexicalBlock(scope: !1058, file: !553, line: 65, column: 7)
!1100 = !DILocation(line: 65, column: 7, scope: !1101)
!1101 = !DILexicalBlockFile(scope: !1099, file: !553, discriminator: 1)
!1102 = !DILocation(line: 66, column: 13, scope: !1103)
!1103 = !DILexicalBlockFile(scope: !1104, file: !553, discriminator: 4)
!1104 = distinct !DILexicalBlock(scope: !1098, file: !553, line: 66, column: 13)
!1105 = !DILocation(line: 66, column: 13, scope: !1106)
!1106 = !DILexicalBlockFile(scope: !1098, file: !553, discriminator: 4)
!1107 = !DILocation(line: 67, column: 14, scope: !1104)
!1108 = !DILocation(line: 67, column: 11, scope: !1104)
!1109 = !DILocation(line: 65, column: 30, scope: !1110)
!1110 = !DILexicalBlockFile(scope: !1098, file: !553, discriminator: 2)
!1111 = distinct !{!1111, !1112, !1113}
!1112 = !DILocation(line: 65, column: 7, scope: !1099)
!1113 = !DILocation(line: 67, column: 23, scope: !1099)
!1114 = !DILocation(line: 71, column: 13, scope: !1115)
!1115 = distinct !DILexicalBlock(scope: !1058, file: !553, line: 71, column: 11)
!1116 = !DILocation(line: 71, column: 40, scope: !1115)
!1117 = !DILocation(line: 72, column: 13, scope: !1115)
!1118 = !DILocation(line: 72, column: 17, scope: !1119)
!1119 = !DILexicalBlockFile(scope: !1115, file: !553, discriminator: 1)
!1120 = !DILocation(line: 72, column: 28, scope: !1119)
!1121 = !DILocation(line: 72, column: 35, scope: !1119)
!1122 = !DILocation(line: 72, column: 38, scope: !1123)
!1123 = !DILexicalBlockFile(scope: !1115, file: !553, discriminator: 2)
!1124 = !DILocation(line: 72, column: 49, scope: !1123)
!1125 = !DILocation(line: 72, column: 56, scope: !1123)
!1126 = !DILocation(line: 72, column: 59, scope: !1127)
!1127 = !DILexicalBlockFile(scope: !1115, file: !553, discriminator: 3)
!1128 = !DILocation(line: 72, column: 70, scope: !1127)
!1129 = !DILocation(line: 73, column: 17, scope: !1115)
!1130 = !DILocation(line: 73, column: 37, scope: !1119)
!1131 = !DILocation(line: 73, column: 20, scope: !1119)
!1132 = !DILocation(line: 73, column: 51, scope: !1119)
!1133 = !DILocation(line: 71, column: 11, scope: !1134)
!1134 = !DILexicalBlockFile(scope: !1058, file: !553, discriminator: 1)
!1135 = !DILocation(line: 74, column: 16, scope: !1115)
!1136 = !DILocation(line: 74, column: 9, scope: !1115)
!1137 = !DILocation(line: 76, column: 7, scope: !1058)
!1138 = !DILocation(line: 79, column: 7, scope: !1139)
!1139 = distinct !DILexicalBlock(scope: !1045, file: !553, line: 79, column: 7)
!1140 = !DILocation(line: 79, column: 14, scope: !1139)
!1141 = !DILocation(line: 79, column: 18, scope: !1139)
!1142 = !DILocation(line: 79, column: 21, scope: !1143)
!1143 = !DILexicalBlockFile(scope: !1139, file: !553, discriminator: 1)
!1144 = !DILocation(line: 79, column: 47, scope: !1143)
!1145 = !DILocation(line: 79, column: 7, scope: !1146)
!1146 = !DILexicalBlockFile(scope: !1045, file: !553, discriminator: 1)
!1147 = !DILocation(line: 81, column: 20, scope: !1148)
!1148 = distinct !DILexicalBlock(scope: !1139, file: !553, line: 80, column: 5)
!1149 = !DILocation(line: 81, column: 45, scope: !1150)
!1150 = !DILexicalBlockFile(scope: !1148, file: !553, discriminator: 1)
!1151 = !DILocation(line: 81, column: 7, scope: !1152)
!1152 = !DILexicalBlockFile(scope: !1148, file: !553, discriminator: 2)
!1153 = !DILocation(line: 82, column: 7, scope: !1148)
!1154 = !DILocation(line: 85, column: 10, scope: !1045)
!1155 = !DILocation(line: 85, column: 3, scope: !1045)
!1156 = !DILocation(line: 86, column: 1, scope: !1045)
!1157 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !81, file: !81, line: 41, type: !25, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !76, variables: !1158)
!1158 = !{!1159}
!1159 = !DILocalVariable(name: "file", arg: 1, scope: !1157, file: !81, line: 41, type: !17)
!1160 = !DILocation(line: 41, column: 41, scope: !1157)
!1161 = !DILocation(line: 43, column: 13, scope: !1157)
!1162 = !DILocation(line: 44, column: 1, scope: !1157)
!1163 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !81, file: !81, line: 78, type: !1164, isLocal: false, isDefinition: true, scopeLine: 79, flags: DIFlagPrototyped, isOptimized: true, unit: !76, variables: !1166)
!1164 = !DISubroutineType(types: !1165)
!1165 = !{null, !82}
!1166 = !{!1167}
!1167 = !DILocalVariable(name: "ignore", arg: 1, scope: !1163, file: !81, line: 78, type: !82)
!1168 = !DILocation(line: 78, column: 37, scope: !1163)
!1169 = !DILocation(line: 80, column: 16, scope: !1163)
!1170 = !{!1171, !1171, i64 0}
!1171 = !{!"_Bool", !619, i64 0}
!1172 = !DILocation(line: 81, column: 1, scope: !1163)
!1173 = distinct !DISubprogram(name: "close_stdout", scope: !81, file: !81, line: 107, type: !633, isLocal: false, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: true, unit: !76, variables: !1174)
!1174 = !{!1175}
!1175 = !DILocalVariable(name: "write_error", scope: !1176, file: !81, line: 112, type: !17)
!1176 = distinct !DILexicalBlock(scope: !1177, file: !81, line: 111, column: 5)
!1177 = distinct !DILexicalBlock(scope: !1173, file: !81, line: 109, column: 7)
!1178 = !DILocation(line: 109, column: 21, scope: !1177)
!1179 = !DILocation(line: 109, column: 7, scope: !1177)
!1180 = !DILocation(line: 109, column: 29, scope: !1177)
!1181 = !DILocation(line: 110, column: 7, scope: !1177)
!1182 = !DILocation(line: 110, column: 12, scope: !1183)
!1183 = !DILexicalBlockFile(scope: !1177, file: !81, discriminator: 1)
!1184 = !{i8 0, i8 2}
!1185 = !DILocation(line: 114, column: 19, scope: !1186)
!1186 = distinct !DILexicalBlock(scope: !1176, file: !81, line: 113, column: 11)
!1187 = !DILocation(line: 110, column: 25, scope: !1183)
!1188 = !DILocation(line: 110, column: 28, scope: !1189)
!1189 = !DILexicalBlockFile(scope: !1177, file: !81, discriminator: 2)
!1190 = !DILocation(line: 110, column: 34, scope: !1189)
!1191 = !DILocation(line: 109, column: 7, scope: !1192)
!1192 = !DILexicalBlockFile(scope: !1173, file: !81, discriminator: 1)
!1193 = !DILocation(line: 112, column: 33, scope: !1176)
!1194 = !DILocation(line: 112, column: 19, scope: !1176)
!1195 = !DILocation(line: 113, column: 11, scope: !1186)
!1196 = !DILocation(line: 113, column: 11, scope: !1176)
!1197 = !DILocation(line: 114, column: 36, scope: !1198)
!1198 = !DILexicalBlockFile(scope: !1186, file: !81, discriminator: 1)
!1199 = !DILocation(line: 114, column: 9, scope: !1200)
!1200 = !DILexicalBlockFile(scope: !1186, file: !81, discriminator: 2)
!1201 = !DILocation(line: 114, column: 9, scope: !1186)
!1202 = !DILocation(line: 117, column: 9, scope: !1198)
!1203 = !DILocation(line: 119, column: 14, scope: !1176)
!1204 = !DILocation(line: 119, column: 7, scope: !1176)
!1205 = !DILocation(line: 122, column: 22, scope: !1206)
!1206 = distinct !DILexicalBlock(scope: !1173, file: !81, line: 122, column: 8)
!1207 = !DILocation(line: 122, column: 8, scope: !1206)
!1208 = !DILocation(line: 122, column: 30, scope: !1206)
!1209 = !DILocation(line: 122, column: 8, scope: !1173)
!1210 = !DILocation(line: 123, column: 13, scope: !1206)
!1211 = !DILocation(line: 123, column: 6, scope: !1206)
!1212 = !DILocation(line: 124, column: 1, scope: !1173)
!1213 = distinct !DISubprogram(name: "set_program_name", scope: !96, file: !96, line: 39, type: !25, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !92, variables: !1214)
!1214 = !{!1215, !1216, !1217}
!1215 = !DILocalVariable(name: "argv0", arg: 1, scope: !1213, file: !96, line: 39, type: !17)
!1216 = !DILocalVariable(name: "slash", scope: !1213, file: !96, line: 46, type: !17)
!1217 = !DILocalVariable(name: "base", scope: !1213, file: !96, line: 47, type: !17)
!1218 = !DILocation(line: 39, column: 31, scope: !1213)
!1219 = !DILocation(line: 51, column: 13, scope: !1220)
!1220 = distinct !DILexicalBlock(scope: !1213, file: !96, line: 51, column: 7)
!1221 = !DILocation(line: 51, column: 7, scope: !1213)
!1222 = !DILocation(line: 55, column: 14, scope: !1223)
!1223 = distinct !DILexicalBlock(scope: !1220, file: !96, line: 52, column: 5)
!1224 = !DILocation(line: 54, column: 7, scope: !1223)
!1225 = !DILocation(line: 56, column: 7, scope: !1223)
!1226 = !DILocation(line: 59, column: 11, scope: !1213)
!1227 = !DILocation(line: 46, column: 15, scope: !1213)
!1228 = !DILocation(line: 60, column: 17, scope: !1213)
!1229 = !DILocation(line: 60, column: 33, scope: !1230)
!1230 = !DILexicalBlockFile(scope: !1213, file: !96, discriminator: 1)
!1231 = !DILocation(line: 60, column: 11, scope: !1213)
!1232 = !DILocation(line: 47, column: 15, scope: !1213)
!1233 = !DILocation(line: 61, column: 12, scope: !1234)
!1234 = distinct !DILexicalBlock(scope: !1213, file: !96, line: 61, column: 7)
!1235 = !DILocation(line: 61, column: 20, scope: !1234)
!1236 = !DILocation(line: 61, column: 25, scope: !1234)
!1237 = !DILocation(line: 61, column: 28, scope: !1238)
!1238 = !DILexicalBlockFile(scope: !1234, file: !96, discriminator: 1)
!1239 = !DILocation(line: 61, column: 61, scope: !1238)
!1240 = !DILocation(line: 61, column: 7, scope: !1230)
!1241 = !DILocation(line: 64, column: 11, scope: !1242)
!1242 = distinct !DILexicalBlock(scope: !1243, file: !96, line: 64, column: 11)
!1243 = distinct !DILexicalBlock(scope: !1234, file: !96, line: 62, column: 5)
!1244 = !DILocation(line: 64, column: 36, scope: !1242)
!1245 = !DILocation(line: 64, column: 11, scope: !1243)
!1246 = !DILocation(line: 66, column: 24, scope: !1247)
!1247 = distinct !DILexicalBlock(scope: !1242, file: !96, line: 65, column: 9)
!1248 = !DILocation(line: 70, column: 41, scope: !1247)
!1249 = !DILocation(line: 72, column: 9, scope: !1247)
!1250 = !DILocation(line: 84, column: 16, scope: !1213)
!1251 = !DILocation(line: 90, column: 27, scope: !1213)
!1252 = !DILocation(line: 92, column: 1, scope: !1213)
!1253 = distinct !DISubprogram(name: "clone_quoting_options", scope: !141, file: !141, line: 114, type: !1254, isLocal: false, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, unit: !99, variables: !1257)
!1254 = !DISubroutineType(types: !1255)
!1255 = !{!1256, !1256}
!1256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 64)
!1257 = !{!1258, !1259, !1260}
!1258 = !DILocalVariable(name: "o", arg: 1, scope: !1253, file: !141, line: 114, type: !1256)
!1259 = !DILocalVariable(name: "e", scope: !1253, file: !141, line: 116, type: !48)
!1260 = !DILocalVariable(name: "p", scope: !1253, file: !141, line: 117, type: !1256)
!1261 = !DILocation(line: 114, column: 48, scope: !1253)
!1262 = !DILocation(line: 116, column: 11, scope: !1253)
!1263 = !DILocation(line: 116, column: 7, scope: !1253)
!1264 = !DILocation(line: 117, column: 40, scope: !1253)
!1265 = !DILocation(line: 117, column: 40, scope: !1266)
!1266 = !DILexicalBlockFile(scope: !1253, file: !141, discriminator: 3)
!1267 = !DILocation(line: 117, column: 31, scope: !1266)
!1268 = !DILocation(line: 117, column: 27, scope: !1253)
!1269 = !DILocation(line: 119, column: 9, scope: !1253)
!1270 = !DILocation(line: 120, column: 3, scope: !1253)
!1271 = distinct !DISubprogram(name: "get_quoting_style", scope: !141, file: !141, line: 125, type: !1272, isLocal: false, isDefinition: true, scopeLine: 126, flags: DIFlagPrototyped, isOptimized: true, unit: !99, variables: !1276)
!1272 = !DISubroutineType(types: !1273)
!1273 = !{!102, !1274}
!1274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1275, size: 64)
!1275 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !148)
!1276 = !{!1277}
!1277 = !DILocalVariable(name: "o", arg: 1, scope: !1271, file: !141, line: 125, type: !1274)
!1278 = !DILocation(line: 125, column: 50, scope: !1271)
!1279 = !DILocation(line: 127, column: 11, scope: !1271)
!1280 = !DILocation(line: 127, column: 46, scope: !1281)
!1281 = !DILexicalBlockFile(scope: !1271, file: !141, discriminator: 3)
!1282 = !{!1283, !619, i64 0}
!1283 = !{!"quoting_options", !619, i64 0, !730, i64 4, !619, i64 8, !618, i64 40, !618, i64 48}
!1284 = !DILocation(line: 127, column: 3, scope: !1281)
!1285 = distinct !DISubprogram(name: "set_quoting_style", scope: !141, file: !141, line: 133, type: !1286, isLocal: false, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: true, unit: !99, variables: !1288)
!1286 = !DISubroutineType(types: !1287)
!1287 = !{null, !1256, !102}
!1288 = !{!1289, !1290}
!1289 = !DILocalVariable(name: "o", arg: 1, scope: !1285, file: !141, line: 133, type: !1256)
!1290 = !DILocalVariable(name: "s", arg: 2, scope: !1285, file: !141, line: 133, type: !102)
!1291 = !DILocation(line: 133, column: 44, scope: !1285)
!1292 = !DILocation(line: 133, column: 66, scope: !1285)
!1293 = !DILocation(line: 135, column: 4, scope: !1285)
!1294 = !DILocation(line: 135, column: 39, scope: !1295)
!1295 = !DILexicalBlockFile(scope: !1285, file: !141, discriminator: 3)
!1296 = !DILocation(line: 135, column: 45, scope: !1295)
!1297 = !DILocation(line: 136, column: 1, scope: !1285)
!1298 = distinct !DISubprogram(name: "set_char_quoting", scope: !141, file: !141, line: 144, type: !1299, isLocal: false, isDefinition: true, scopeLine: 145, flags: DIFlagPrototyped, isOptimized: true, unit: !99, variables: !1301)
!1299 = !DISubroutineType(types: !1300)
!1300 = !{!48, !1256, !7, !48}
!1301 = !{!1302, !1303, !1304, !1305, !1306, !1308, !1309}
!1302 = !DILocalVariable(name: "o", arg: 1, scope: !1298, file: !141, line: 144, type: !1256)
!1303 = !DILocalVariable(name: "c", arg: 2, scope: !1298, file: !141, line: 144, type: !7)
!1304 = !DILocalVariable(name: "i", arg: 3, scope: !1298, file: !141, line: 144, type: !48)
!1305 = !DILocalVariable(name: "uc", scope: !1298, file: !141, line: 146, type: !16)
!1306 = !DILocalVariable(name: "p", scope: !1298, file: !141, line: 147, type: !1307)
!1307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!1308 = !DILocalVariable(name: "shift", scope: !1298, file: !141, line: 149, type: !48)
!1309 = !DILocalVariable(name: "r", scope: !1298, file: !141, line: 150, type: !48)
!1310 = !DILocation(line: 144, column: 43, scope: !1298)
!1311 = !DILocation(line: 144, column: 51, scope: !1298)
!1312 = !DILocation(line: 144, column: 58, scope: !1298)
!1313 = !DILocation(line: 146, column: 17, scope: !1298)
!1314 = !DILocation(line: 148, column: 6, scope: !1298)
!1315 = !DILocation(line: 148, column: 62, scope: !1316)
!1316 = !DILexicalBlockFile(scope: !1298, file: !141, discriminator: 3)
!1317 = !DILocation(line: 148, column: 57, scope: !1316)
!1318 = !DILocation(line: 147, column: 17, scope: !1298)
!1319 = !DILocation(line: 149, column: 18, scope: !1298)
!1320 = !DILocation(line: 149, column: 15, scope: !1298)
!1321 = !DILocation(line: 149, column: 7, scope: !1298)
!1322 = !DILocation(line: 150, column: 12, scope: !1298)
!1323 = !DILocation(line: 150, column: 15, scope: !1298)
!1324 = !DILocation(line: 150, column: 25, scope: !1298)
!1325 = !DILocation(line: 150, column: 7, scope: !1298)
!1326 = !DILocation(line: 151, column: 13, scope: !1298)
!1327 = !DILocation(line: 151, column: 18, scope: !1298)
!1328 = !DILocation(line: 151, column: 23, scope: !1298)
!1329 = !DILocation(line: 151, column: 6, scope: !1298)
!1330 = !DILocation(line: 152, column: 3, scope: !1298)
!1331 = distinct !DISubprogram(name: "set_quoting_flags", scope: !141, file: !141, line: 160, type: !1332, isLocal: false, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !99, variables: !1334)
!1332 = !DISubroutineType(types: !1333)
!1333 = !{!48, !1256, !48}
!1334 = !{!1335, !1336, !1337}
!1335 = !DILocalVariable(name: "o", arg: 1, scope: !1331, file: !141, line: 160, type: !1256)
!1336 = !DILocalVariable(name: "i", arg: 2, scope: !1331, file: !141, line: 160, type: !48)
!1337 = !DILocalVariable(name: "r", scope: !1331, file: !141, line: 162, type: !48)
!1338 = !DILocation(line: 160, column: 44, scope: !1331)
!1339 = !DILocation(line: 160, column: 51, scope: !1331)
!1340 = !DILocation(line: 163, column: 8, scope: !1341)
!1341 = distinct !DILexicalBlock(scope: !1331, file: !141, line: 163, column: 7)
!1342 = !DILocation(line: 163, column: 7, scope: !1331)
!1343 = !DILocation(line: 165, column: 10, scope: !1331)
!1344 = !{!1283, !730, i64 4}
!1345 = !DILocation(line: 162, column: 7, scope: !1331)
!1346 = !DILocation(line: 166, column: 12, scope: !1331)
!1347 = !DILocation(line: 167, column: 3, scope: !1331)
!1348 = distinct !DISubprogram(name: "set_custom_quoting", scope: !141, file: !141, line: 171, type: !1349, isLocal: false, isDefinition: true, scopeLine: 173, flags: DIFlagPrototyped, isOptimized: true, unit: !99, variables: !1351)
!1349 = !DISubroutineType(types: !1350)
!1350 = !{null, !1256, !17, !17}
!1351 = !{!1352, !1353, !1354}
!1352 = !DILocalVariable(name: "o", arg: 1, scope: !1348, file: !141, line: 171, type: !1256)
!1353 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1348, file: !141, line: 172, type: !17)
!1354 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1348, file: !141, line: 172, type: !17)
!1355 = !DILocation(line: 171, column: 45, scope: !1348)
!1356 = !DILocation(line: 172, column: 33, scope: !1348)
!1357 = !DILocation(line: 172, column: 57, scope: !1348)
!1358 = !DILocation(line: 174, column: 8, scope: !1359)
!1359 = distinct !DILexicalBlock(scope: !1348, file: !141, line: 174, column: 7)
!1360 = !DILocation(line: 174, column: 7, scope: !1348)
!1361 = !DILocation(line: 176, column: 6, scope: !1348)
!1362 = !DILocation(line: 176, column: 12, scope: !1348)
!1363 = !DILocation(line: 177, column: 8, scope: !1364)
!1364 = distinct !DILexicalBlock(scope: !1348, file: !141, line: 177, column: 7)
!1365 = !DILocation(line: 177, column: 23, scope: !1366)
!1366 = !DILexicalBlockFile(scope: !1364, file: !141, discriminator: 1)
!1367 = !DILocation(line: 177, column: 19, scope: !1364)
!1368 = !DILocation(line: 178, column: 5, scope: !1364)
!1369 = !DILocation(line: 179, column: 6, scope: !1348)
!1370 = !DILocation(line: 179, column: 17, scope: !1348)
!1371 = !{!1283, !618, i64 40}
!1372 = !DILocation(line: 180, column: 6, scope: !1348)
!1373 = !DILocation(line: 180, column: 18, scope: !1348)
!1374 = !{!1283, !618, i64 48}
!1375 = !DILocation(line: 181, column: 1, scope: !1348)
!1376 = distinct !DISubprogram(name: "quotearg_buffer", scope: !141, file: !141, line: 776, type: !1377, isLocal: false, isDefinition: true, scopeLine: 779, flags: DIFlagPrototyped, isOptimized: true, unit: !99, variables: !1379)
!1377 = !DISubroutineType(types: !1378)
!1378 = !{!9, !6, !9, !17, !9, !1274}
!1379 = !{!1380, !1381, !1382, !1383, !1384, !1385, !1386, !1387}
!1380 = !DILocalVariable(name: "buffer", arg: 1, scope: !1376, file: !141, line: 776, type: !6)
!1381 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1376, file: !141, line: 776, type: !9)
!1382 = !DILocalVariable(name: "arg", arg: 3, scope: !1376, file: !141, line: 777, type: !17)
!1383 = !DILocalVariable(name: "argsize", arg: 4, scope: !1376, file: !141, line: 777, type: !9)
!1384 = !DILocalVariable(name: "o", arg: 5, scope: !1376, file: !141, line: 778, type: !1274)
!1385 = !DILocalVariable(name: "p", scope: !1376, file: !141, line: 780, type: !1274)
!1386 = !DILocalVariable(name: "e", scope: !1376, file: !141, line: 781, type: !48)
!1387 = !DILocalVariable(name: "r", scope: !1376, file: !141, line: 782, type: !9)
!1388 = !DILocation(line: 776, column: 24, scope: !1376)
!1389 = !DILocation(line: 776, column: 39, scope: !1376)
!1390 = !DILocation(line: 777, column: 30, scope: !1376)
!1391 = !DILocation(line: 777, column: 42, scope: !1376)
!1392 = !DILocation(line: 778, column: 48, scope: !1376)
!1393 = !DILocation(line: 780, column: 37, scope: !1376)
!1394 = !DILocation(line: 780, column: 33, scope: !1376)
!1395 = !DILocation(line: 781, column: 11, scope: !1376)
!1396 = !DILocation(line: 781, column: 7, scope: !1376)
!1397 = !DILocation(line: 783, column: 43, scope: !1376)
!1398 = !DILocation(line: 783, column: 53, scope: !1376)
!1399 = !DILocation(line: 783, column: 60, scope: !1376)
!1400 = !DILocation(line: 784, column: 43, scope: !1376)
!1401 = !DILocation(line: 784, column: 58, scope: !1376)
!1402 = !DILocation(line: 782, column: 14, scope: !1376)
!1403 = !DILocation(line: 782, column: 10, scope: !1376)
!1404 = !DILocation(line: 785, column: 9, scope: !1376)
!1405 = !DILocation(line: 786, column: 3, scope: !1376)
!1406 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !141, file: !141, line: 248, type: !1407, isLocal: true, isDefinition: true, scopeLine: 254, flags: DIFlagPrototyped, isOptimized: true, unit: !99, variables: !1411)
!1407 = !DISubroutineType(types: !1408)
!1408 = !{!9, !6, !9, !17, !9, !102, !48, !1409, !17, !17}
!1409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1410, size: 64)
!1410 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !19)
!1411 = !{!1412, !1413, !1414, !1415, !1416, !1417, !1418, !1419, !1420, !1421, !1422, !1423, !1424, !1425, !1426, !1427, !1428, !1429, !1430, !1431, !1432, !1436, !1437, !1438, !1439, !1440, !1443, !1444, !1461, !1464, !1465, !1472}
!1412 = !DILocalVariable(name: "buffer", arg: 1, scope: !1406, file: !141, line: 248, type: !6)
!1413 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1406, file: !141, line: 248, type: !9)
!1414 = !DILocalVariable(name: "arg", arg: 3, scope: !1406, file: !141, line: 249, type: !17)
!1415 = !DILocalVariable(name: "argsize", arg: 4, scope: !1406, file: !141, line: 249, type: !9)
!1416 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1406, file: !141, line: 250, type: !102)
!1417 = !DILocalVariable(name: "flags", arg: 6, scope: !1406, file: !141, line: 250, type: !48)
!1418 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1406, file: !141, line: 251, type: !1409)
!1419 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1406, file: !141, line: 252, type: !17)
!1420 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1406, file: !141, line: 253, type: !17)
!1421 = !DILocalVariable(name: "i", scope: !1406, file: !141, line: 255, type: !9)
!1422 = !DILocalVariable(name: "len", scope: !1406, file: !141, line: 256, type: !9)
!1423 = !DILocalVariable(name: "orig_buffersize", scope: !1406, file: !141, line: 257, type: !9)
!1424 = !DILocalVariable(name: "quote_string", scope: !1406, file: !141, line: 258, type: !17)
!1425 = !DILocalVariable(name: "quote_string_len", scope: !1406, file: !141, line: 259, type: !9)
!1426 = !DILocalVariable(name: "backslash_escapes", scope: !1406, file: !141, line: 260, type: !82)
!1427 = !DILocalVariable(name: "unibyte_locale", scope: !1406, file: !141, line: 261, type: !82)
!1428 = !DILocalVariable(name: "elide_outer_quotes", scope: !1406, file: !141, line: 262, type: !82)
!1429 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1406, file: !141, line: 263, type: !82)
!1430 = !DILocalVariable(name: "encountered_single_quote", scope: !1406, file: !141, line: 264, type: !82)
!1431 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1406, file: !141, line: 265, type: !82)
!1432 = !DILocalVariable(name: "c", scope: !1433, file: !141, line: 394, type: !16)
!1433 = distinct !DILexicalBlock(scope: !1434, file: !141, line: 393, column: 5)
!1434 = distinct !DILexicalBlock(scope: !1435, file: !141, line: 392, column: 3)
!1435 = distinct !DILexicalBlock(scope: !1406, file: !141, line: 392, column: 3)
!1436 = !DILocalVariable(name: "esc", scope: !1433, file: !141, line: 395, type: !16)
!1437 = !DILocalVariable(name: "is_right_quote", scope: !1433, file: !141, line: 396, type: !82)
!1438 = !DILocalVariable(name: "escaping", scope: !1433, file: !141, line: 397, type: !82)
!1439 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1433, file: !141, line: 398, type: !82)
!1440 = !DILocalVariable(name: "m", scope: !1441, file: !141, line: 602, type: !9)
!1441 = distinct !DILexicalBlock(scope: !1442, file: !141, line: 600, column: 11)
!1442 = distinct !DILexicalBlock(scope: !1433, file: !141, line: 418, column: 9)
!1443 = !DILocalVariable(name: "printable", scope: !1441, file: !141, line: 604, type: !82)
!1444 = !DILocalVariable(name: "mbstate", scope: !1445, file: !141, line: 613, type: !1447)
!1445 = distinct !DILexicalBlock(scope: !1446, file: !141, line: 612, column: 15)
!1446 = distinct !DILexicalBlock(scope: !1441, file: !141, line: 606, column: 17)
!1447 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1448, line: 107, baseType: !1449)
!1448 = !DIFile(filename: "/usr/include/wchar.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1449 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1448, line: 95, baseType: !1450)
!1450 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1448, line: 83, size: 64, elements: !1451)
!1451 = !{!1452, !1453}
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1450, file: !1448, line: 85, baseType: !48, size: 32)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1450, file: !1448, line: 94, baseType: !1454, size: 32, offset: 32)
!1454 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1450, file: !1448, line: 86, size: 32, elements: !1455)
!1455 = !{!1456, !1457}
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1454, file: !1448, line: 89, baseType: !19, size: 32)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1454, file: !1448, line: 93, baseType: !1458, size: 32)
!1458 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 32, elements: !1459)
!1459 = !{!1460}
!1460 = !DISubrange(count: 4)
!1461 = !DILocalVariable(name: "w", scope: !1462, file: !141, line: 623, type: !1463)
!1462 = distinct !DILexicalBlock(scope: !1445, file: !141, line: 622, column: 19)
!1463 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !10, line: 90, baseType: !48)
!1464 = !DILocalVariable(name: "bytes", scope: !1462, file: !141, line: 624, type: !9)
!1465 = !DILocalVariable(name: "j", scope: !1466, file: !141, line: 649, type: !9)
!1466 = distinct !DILexicalBlock(scope: !1467, file: !141, line: 648, column: 27)
!1467 = distinct !DILexicalBlock(scope: !1468, file: !141, line: 646, column: 29)
!1468 = distinct !DILexicalBlock(scope: !1469, file: !141, line: 641, column: 23)
!1469 = distinct !DILexicalBlock(scope: !1470, file: !141, line: 633, column: 30)
!1470 = distinct !DILexicalBlock(scope: !1471, file: !141, line: 628, column: 30)
!1471 = distinct !DILexicalBlock(scope: !1462, file: !141, line: 626, column: 25)
!1472 = !DILocalVariable(name: "ilim", scope: !1473, file: !141, line: 676, type: !9)
!1473 = distinct !DILexicalBlock(scope: !1474, file: !141, line: 673, column: 15)
!1474 = distinct !DILexicalBlock(scope: !1441, file: !141, line: 672, column: 17)
!1475 = !DILocation(line: 248, column: 33, scope: !1406)
!1476 = !DILocation(line: 248, column: 48, scope: !1406)
!1477 = !DILocation(line: 249, column: 39, scope: !1406)
!1478 = !DILocation(line: 249, column: 51, scope: !1406)
!1479 = !DILocation(line: 250, column: 46, scope: !1406)
!1480 = !DILocation(line: 250, column: 65, scope: !1406)
!1481 = !DILocation(line: 251, column: 47, scope: !1406)
!1482 = !DILocation(line: 252, column: 39, scope: !1406)
!1483 = !DILocation(line: 253, column: 39, scope: !1406)
!1484 = !DILocation(line: 256, column: 10, scope: !1406)
!1485 = !DILocation(line: 257, column: 10, scope: !1406)
!1486 = !DILocation(line: 258, column: 15, scope: !1406)
!1487 = !DILocation(line: 259, column: 10, scope: !1406)
!1488 = !DILocation(line: 260, column: 8, scope: !1406)
!1489 = !DILocation(line: 261, column: 25, scope: !1406)
!1490 = !DILocation(line: 261, column: 36, scope: !1406)
!1491 = !DILocation(line: 262, column: 8, scope: !1406)
!1492 = !DILocation(line: 263, column: 8, scope: !1406)
!1493 = !DILocation(line: 264, column: 8, scope: !1406)
!1494 = !DILocation(line: 265, column: 8, scope: !1406)
!1495 = !DILocation(line: 265, column: 3, scope: !1406)
!1496 = !DILocation(line: 308, column: 3, scope: !1406)
!1497 = !DILocation(line: 315, column: 11, scope: !1498)
!1498 = distinct !DILexicalBlock(scope: !1406, file: !141, line: 309, column: 5)
!1499 = !DILocation(line: 315, column: 12, scope: !1500)
!1500 = distinct !DILexicalBlock(scope: !1498, file: !141, line: 315, column: 11)
!1501 = !DILocation(line: 316, column: 9, scope: !1502)
!1502 = !DILexicalBlockFile(scope: !1503, file: !141, discriminator: 1)
!1503 = distinct !DILexicalBlock(scope: !1504, file: !141, line: 316, column: 9)
!1504 = distinct !DILexicalBlock(scope: !1500, file: !141, line: 316, column: 9)
!1505 = !DILocation(line: 316, column: 9, scope: !1506)
!1506 = !DILexicalBlockFile(scope: !1504, file: !141, discriminator: 1)
!1507 = !DILocation(line: 316, column: 9, scope: !1508)
!1508 = !DILexicalBlockFile(scope: !1503, file: !141, discriminator: 2)
!1509 = !DILocation(line: 354, column: 26, scope: !1510)
!1510 = distinct !DILexicalBlock(scope: !1511, file: !141, line: 332, column: 11)
!1511 = distinct !DILexicalBlock(scope: !1512, file: !141, line: 331, column: 13)
!1512 = distinct !DILexicalBlock(scope: !1498, file: !141, line: 330, column: 7)
!1513 = !DILocation(line: 355, column: 27, scope: !1510)
!1514 = !DILocation(line: 356, column: 11, scope: !1510)
!1515 = !DILocation(line: 357, column: 14, scope: !1516)
!1516 = distinct !DILexicalBlock(scope: !1512, file: !141, line: 357, column: 13)
!1517 = !DILocation(line: 357, column: 13, scope: !1512)
!1518 = !DILocation(line: 358, column: 43, scope: !1519)
!1519 = !DILexicalBlockFile(scope: !1520, file: !141, discriminator: 1)
!1520 = distinct !DILexicalBlock(scope: !1521, file: !141, line: 358, column: 11)
!1521 = distinct !DILexicalBlock(scope: !1516, file: !141, line: 358, column: 11)
!1522 = !DILocation(line: 358, column: 11, scope: !1523)
!1523 = !DILexicalBlockFile(scope: !1521, file: !141, discriminator: 1)
!1524 = !DILocation(line: 359, column: 13, scope: !1525)
!1525 = !DILexicalBlockFile(scope: !1526, file: !141, discriminator: 1)
!1526 = distinct !DILexicalBlock(scope: !1527, file: !141, line: 359, column: 13)
!1527 = distinct !DILexicalBlock(scope: !1520, file: !141, line: 359, column: 13)
!1528 = !DILocation(line: 359, column: 13, scope: !1529)
!1529 = !DILexicalBlockFile(scope: !1527, file: !141, discriminator: 1)
!1530 = !DILocation(line: 359, column: 13, scope: !1531)
!1531 = !DILexicalBlockFile(scope: !1526, file: !141, discriminator: 2)
!1532 = !DILocation(line: 359, column: 13, scope: !1533)
!1533 = !DILexicalBlockFile(scope: !1527, file: !141, discriminator: 3)
!1534 = !DILocation(line: 358, column: 70, scope: !1535)
!1535 = !DILexicalBlockFile(scope: !1520, file: !141, discriminator: 2)
!1536 = distinct !{!1536, !1537, !1538}
!1537 = !DILocation(line: 358, column: 11, scope: !1521)
!1538 = !DILocation(line: 359, column: 13, scope: !1521)
!1539 = !DILocation(line: 362, column: 28, scope: !1512)
!1540 = !DILocation(line: 364, column: 7, scope: !1498)
!1541 = !DILocation(line: 367, column: 7, scope: !1498)
!1542 = !DILocation(line: 370, column: 7, scope: !1498)
!1543 = !DILocation(line: 373, column: 12, scope: !1544)
!1544 = distinct !DILexicalBlock(scope: !1498, file: !141, line: 373, column: 11)
!1545 = !DILocation(line: 373, column: 11, scope: !1498)
!1546 = !DILocation(line: 378, column: 12, scope: !1547)
!1547 = distinct !DILexicalBlock(scope: !1498, file: !141, line: 378, column: 11)
!1548 = !DILocation(line: 378, column: 11, scope: !1498)
!1549 = !DILocation(line: 379, column: 9, scope: !1550)
!1550 = !DILexicalBlockFile(scope: !1551, file: !141, discriminator: 1)
!1551 = distinct !DILexicalBlock(scope: !1552, file: !141, line: 379, column: 9)
!1552 = distinct !DILexicalBlock(scope: !1547, file: !141, line: 379, column: 9)
!1553 = !DILocation(line: 379, column: 9, scope: !1554)
!1554 = !DILexicalBlockFile(scope: !1552, file: !141, discriminator: 1)
!1555 = !DILocation(line: 379, column: 9, scope: !1556)
!1556 = !DILexicalBlockFile(scope: !1551, file: !141, discriminator: 2)
!1557 = !DILocation(line: 386, column: 7, scope: !1498)
!1558 = !DILocation(line: 389, column: 7, scope: !1498)
!1559 = !DILocation(line: 255, column: 10, scope: !1406)
!1560 = !DILocation(line: 392, column: 8, scope: !1435)
!1561 = !DILocation(line: 392, column: 27, scope: !1562)
!1562 = !DILexicalBlockFile(scope: !1434, file: !141, discriminator: 1)
!1563 = !DILocation(line: 392, column: 19, scope: !1562)
!1564 = !DILocation(line: 392, column: 60, scope: !1565)
!1565 = !DILexicalBlockFile(scope: !1434, file: !141, discriminator: 3)
!1566 = !DILocation(line: 392, column: 3, scope: !1567)
!1567 = !DILexicalBlockFile(scope: !1435, file: !141, discriminator: 4)
!1568 = !DILocation(line: 392, column: 41, scope: !1569)
!1569 = !DILexicalBlockFile(scope: !1434, file: !141, discriminator: 2)
!1570 = !DILocation(line: 392, column: 48, scope: !1569)
!1571 = !DILocation(line: 396, column: 12, scope: !1433)
!1572 = !DILocation(line: 397, column: 12, scope: !1433)
!1573 = !DILocation(line: 398, column: 12, scope: !1433)
!1574 = !DILocation(line: 401, column: 11, scope: !1575)
!1575 = distinct !DILexicalBlock(scope: !1433, file: !141, line: 400, column: 11)
!1576 = !DILocation(line: 403, column: 17, scope: !1577)
!1577 = !DILexicalBlockFile(scope: !1575, file: !141, discriminator: 1)
!1578 = !DILocation(line: 404, column: 39, scope: !1575)
!1579 = !DILocation(line: 408, column: 32, scope: !1575)
!1580 = !DILocation(line: 404, column: 19, scope: !1581)
!1581 = !DILexicalBlockFile(scope: !1575, file: !141, discriminator: 2)
!1582 = !DILocation(line: 404, column: 15, scope: !1583)
!1583 = !DILexicalBlockFile(scope: !1575, file: !141, discriminator: 4)
!1584 = !DILocation(line: 409, column: 11, scope: !1575)
!1585 = !DILocation(line: 409, column: 26, scope: !1577)
!1586 = !DILocation(line: 409, column: 14, scope: !1577)
!1587 = !DILocation(line: 400, column: 11, scope: !1588)
!1588 = !DILexicalBlockFile(scope: !1433, file: !141, discriminator: 1)
!1589 = !DILocation(line: 416, column: 11, scope: !1433)
!1590 = !DILocation(line: 394, column: 21, scope: !1433)
!1591 = !DILocation(line: 417, column: 7, scope: !1433)
!1592 = !DILocation(line: 420, column: 15, scope: !1442)
!1593 = !DILocation(line: 422, column: 15, scope: !1594)
!1594 = !DILexicalBlockFile(scope: !1595, file: !141, discriminator: 1)
!1595 = distinct !DILexicalBlock(scope: !1596, file: !141, line: 422, column: 15)
!1596 = distinct !DILexicalBlock(scope: !1597, file: !141, line: 421, column: 13)
!1597 = distinct !DILexicalBlock(scope: !1442, file: !141, line: 420, column: 15)
!1598 = !DILocation(line: 422, column: 15, scope: !1599)
!1599 = !DILexicalBlockFile(scope: !1600, file: !141, discriminator: 4)
!1600 = distinct !DILexicalBlock(scope: !1595, file: !141, line: 422, column: 15)
!1601 = !DILocation(line: 422, column: 15, scope: !1602)
!1602 = !DILexicalBlockFile(scope: !1600, file: !141, discriminator: 3)
!1603 = !DILocation(line: 422, column: 15, scope: !1604)
!1604 = !DILexicalBlockFile(scope: !1605, file: !141, discriminator: 6)
!1605 = distinct !DILexicalBlock(scope: !1606, file: !141, line: 422, column: 15)
!1606 = distinct !DILexicalBlock(scope: !1607, file: !141, line: 422, column: 15)
!1607 = distinct !DILexicalBlock(scope: !1600, file: !141, line: 422, column: 15)
!1608 = !DILocation(line: 422, column: 15, scope: !1609)
!1609 = !DILexicalBlockFile(scope: !1606, file: !141, discriminator: 6)
!1610 = !DILocation(line: 422, column: 15, scope: !1611)
!1611 = !DILexicalBlockFile(scope: !1605, file: !141, discriminator: 7)
!1612 = !DILocation(line: 422, column: 15, scope: !1613)
!1613 = !DILexicalBlockFile(scope: !1606, file: !141, discriminator: 8)
!1614 = !DILocation(line: 422, column: 15, scope: !1615)
!1615 = !DILexicalBlockFile(scope: !1616, file: !141, discriminator: 11)
!1616 = distinct !DILexicalBlock(scope: !1617, file: !141, line: 422, column: 15)
!1617 = distinct !DILexicalBlock(scope: !1607, file: !141, line: 422, column: 15)
!1618 = !DILocation(line: 422, column: 15, scope: !1619)
!1619 = !DILexicalBlockFile(scope: !1617, file: !141, discriminator: 11)
!1620 = !DILocation(line: 422, column: 15, scope: !1621)
!1621 = !DILexicalBlockFile(scope: !1616, file: !141, discriminator: 12)
!1622 = !DILocation(line: 422, column: 15, scope: !1623)
!1623 = !DILexicalBlockFile(scope: !1617, file: !141, discriminator: 13)
!1624 = !DILocation(line: 422, column: 15, scope: !1625)
!1625 = !DILexicalBlockFile(scope: !1626, file: !141, discriminator: 16)
!1626 = distinct !DILexicalBlock(scope: !1627, file: !141, line: 422, column: 15)
!1627 = distinct !DILexicalBlock(scope: !1607, file: !141, line: 422, column: 15)
!1628 = !DILocation(line: 422, column: 15, scope: !1629)
!1629 = !DILexicalBlockFile(scope: !1627, file: !141, discriminator: 16)
!1630 = !DILocation(line: 422, column: 15, scope: !1631)
!1631 = !DILexicalBlockFile(scope: !1626, file: !141, discriminator: 17)
!1632 = !DILocation(line: 422, column: 15, scope: !1633)
!1633 = !DILexicalBlockFile(scope: !1627, file: !141, discriminator: 18)
!1634 = !DILocation(line: 422, column: 15, scope: !1635)
!1635 = !DILexicalBlockFile(scope: !1607, file: !141, discriminator: 20)
!1636 = !DILocation(line: 422, column: 15, scope: !1637)
!1637 = !DILexicalBlockFile(scope: !1638, file: !141, discriminator: 22)
!1638 = distinct !DILexicalBlock(scope: !1639, file: !141, line: 422, column: 15)
!1639 = distinct !DILexicalBlock(scope: !1595, file: !141, line: 422, column: 15)
!1640 = !DILocation(line: 422, column: 15, scope: !1641)
!1641 = !DILexicalBlockFile(scope: !1639, file: !141, discriminator: 22)
!1642 = !DILocation(line: 422, column: 15, scope: !1643)
!1643 = !DILexicalBlockFile(scope: !1638, file: !141, discriminator: 23)
!1644 = !DILocation(line: 422, column: 15, scope: !1645)
!1645 = !DILexicalBlockFile(scope: !1639, file: !141, discriminator: 24)
!1646 = !DILocation(line: 430, column: 19, scope: !1647)
!1647 = distinct !DILexicalBlock(scope: !1596, file: !141, line: 429, column: 19)
!1648 = !DILocation(line: 430, column: 24, scope: !1649)
!1649 = !DILexicalBlockFile(scope: !1647, file: !141, discriminator: 1)
!1650 = !DILocation(line: 430, column: 28, scope: !1649)
!1651 = !DILocation(line: 430, column: 38, scope: !1649)
!1652 = !DILocation(line: 430, column: 48, scope: !1653)
!1653 = !DILexicalBlockFile(scope: !1647, file: !141, discriminator: 2)
!1654 = !DILocation(line: 430, column: 59, scope: !1653)
!1655 = !DILocation(line: 432, column: 19, scope: !1656)
!1656 = !DILexicalBlockFile(scope: !1657, file: !141, discriminator: 1)
!1657 = distinct !DILexicalBlock(scope: !1658, file: !141, line: 432, column: 19)
!1658 = distinct !DILexicalBlock(scope: !1659, file: !141, line: 432, column: 19)
!1659 = distinct !DILexicalBlock(scope: !1647, file: !141, line: 431, column: 17)
!1660 = !DILocation(line: 432, column: 19, scope: !1661)
!1661 = !DILexicalBlockFile(scope: !1658, file: !141, discriminator: 1)
!1662 = !DILocation(line: 432, column: 19, scope: !1663)
!1663 = !DILexicalBlockFile(scope: !1657, file: !141, discriminator: 2)
!1664 = !DILocation(line: 432, column: 19, scope: !1665)
!1665 = !DILexicalBlockFile(scope: !1658, file: !141, discriminator: 3)
!1666 = !DILocation(line: 433, column: 19, scope: !1667)
!1667 = !DILexicalBlockFile(scope: !1668, file: !141, discriminator: 1)
!1668 = distinct !DILexicalBlock(scope: !1669, file: !141, line: 433, column: 19)
!1669 = distinct !DILexicalBlock(scope: !1659, file: !141, line: 433, column: 19)
!1670 = !DILocation(line: 433, column: 19, scope: !1671)
!1671 = !DILexicalBlockFile(scope: !1669, file: !141, discriminator: 1)
!1672 = !DILocation(line: 433, column: 19, scope: !1673)
!1673 = !DILexicalBlockFile(scope: !1668, file: !141, discriminator: 2)
!1674 = !DILocation(line: 433, column: 19, scope: !1675)
!1675 = !DILexicalBlockFile(scope: !1669, file: !141, discriminator: 3)
!1676 = !DILocation(line: 434, column: 17, scope: !1659)
!1677 = !DILocation(line: 441, column: 20, scope: !1597)
!1678 = !DILocation(line: 446, column: 11, scope: !1442)
!1679 = !DILocation(line: 449, column: 19, scope: !1680)
!1680 = distinct !DILexicalBlock(scope: !1442, file: !141, line: 447, column: 13)
!1681 = !DILocation(line: 455, column: 19, scope: !1682)
!1682 = distinct !DILexicalBlock(scope: !1680, file: !141, line: 454, column: 19)
!1683 = !DILocation(line: 455, column: 24, scope: !1684)
!1684 = !DILexicalBlockFile(scope: !1682, file: !141, discriminator: 1)
!1685 = !DILocation(line: 455, column: 28, scope: !1684)
!1686 = !DILocation(line: 455, column: 38, scope: !1684)
!1687 = !DILocation(line: 455, column: 47, scope: !1688)
!1688 = !DILexicalBlockFile(scope: !1682, file: !141, discriminator: 2)
!1689 = !DILocation(line: 455, column: 41, scope: !1688)
!1690 = !DILocation(line: 455, column: 52, scope: !1688)
!1691 = !DILocation(line: 454, column: 19, scope: !1692)
!1692 = !DILexicalBlockFile(scope: !1680, file: !141, discriminator: 1)
!1693 = !DILocation(line: 456, column: 25, scope: !1682)
!1694 = !DILocation(line: 456, column: 17, scope: !1682)
!1695 = !DILocation(line: 463, column: 25, scope: !1696)
!1696 = distinct !DILexicalBlock(scope: !1682, file: !141, line: 457, column: 19)
!1697 = !DILocation(line: 467, column: 21, scope: !1698)
!1698 = !DILexicalBlockFile(scope: !1699, file: !141, discriminator: 1)
!1699 = distinct !DILexicalBlock(scope: !1700, file: !141, line: 467, column: 21)
!1700 = distinct !DILexicalBlock(scope: !1696, file: !141, line: 467, column: 21)
!1701 = !DILocation(line: 467, column: 21, scope: !1702)
!1702 = !DILexicalBlockFile(scope: !1700, file: !141, discriminator: 1)
!1703 = !DILocation(line: 467, column: 21, scope: !1704)
!1704 = !DILexicalBlockFile(scope: !1699, file: !141, discriminator: 2)
!1705 = !DILocation(line: 467, column: 21, scope: !1706)
!1706 = !DILexicalBlockFile(scope: !1700, file: !141, discriminator: 3)
!1707 = !DILocation(line: 468, column: 21, scope: !1708)
!1708 = !DILexicalBlockFile(scope: !1709, file: !141, discriminator: 1)
!1709 = distinct !DILexicalBlock(scope: !1710, file: !141, line: 468, column: 21)
!1710 = distinct !DILexicalBlock(scope: !1696, file: !141, line: 468, column: 21)
!1711 = !DILocation(line: 468, column: 21, scope: !1712)
!1712 = !DILexicalBlockFile(scope: !1710, file: !141, discriminator: 1)
!1713 = !DILocation(line: 468, column: 21, scope: !1714)
!1714 = !DILexicalBlockFile(scope: !1709, file: !141, discriminator: 2)
!1715 = !DILocation(line: 468, column: 21, scope: !1716)
!1716 = !DILexicalBlockFile(scope: !1710, file: !141, discriminator: 3)
!1717 = !DILocation(line: 469, column: 21, scope: !1718)
!1718 = !DILexicalBlockFile(scope: !1719, file: !141, discriminator: 1)
!1719 = distinct !DILexicalBlock(scope: !1720, file: !141, line: 469, column: 21)
!1720 = distinct !DILexicalBlock(scope: !1696, file: !141, line: 469, column: 21)
!1721 = !DILocation(line: 469, column: 21, scope: !1722)
!1722 = !DILexicalBlockFile(scope: !1720, file: !141, discriminator: 1)
!1723 = !DILocation(line: 469, column: 21, scope: !1724)
!1724 = !DILexicalBlockFile(scope: !1719, file: !141, discriminator: 2)
!1725 = !DILocation(line: 469, column: 21, scope: !1726)
!1726 = !DILexicalBlockFile(scope: !1720, file: !141, discriminator: 3)
!1727 = !DILocation(line: 470, column: 21, scope: !1728)
!1728 = !DILexicalBlockFile(scope: !1729, file: !141, discriminator: 1)
!1729 = distinct !DILexicalBlock(scope: !1730, file: !141, line: 470, column: 21)
!1730 = distinct !DILexicalBlock(scope: !1696, file: !141, line: 470, column: 21)
!1731 = !DILocation(line: 470, column: 21, scope: !1732)
!1732 = !DILexicalBlockFile(scope: !1730, file: !141, discriminator: 1)
!1733 = !DILocation(line: 470, column: 21, scope: !1734)
!1734 = !DILexicalBlockFile(scope: !1729, file: !141, discriminator: 2)
!1735 = !DILocation(line: 470, column: 21, scope: !1736)
!1736 = !DILexicalBlockFile(scope: !1730, file: !141, discriminator: 3)
!1737 = !DILocation(line: 471, column: 21, scope: !1696)
!1738 = !DILocation(line: 395, column: 21, scope: !1433)
!1739 = !DILocation(line: 484, column: 31, scope: !1442)
!1740 = !DILocation(line: 485, column: 31, scope: !1442)
!1741 = !DILocation(line: 487, column: 31, scope: !1442)
!1742 = !DILocation(line: 488, column: 31, scope: !1442)
!1743 = !DILocation(line: 489, column: 31, scope: !1442)
!1744 = !DILocation(line: 492, column: 15, scope: !1442)
!1745 = !DILocation(line: 494, column: 19, scope: !1746)
!1746 = distinct !DILexicalBlock(scope: !1747, file: !141, line: 493, column: 13)
!1747 = distinct !DILexicalBlock(scope: !1442, file: !141, line: 492, column: 15)
!1748 = !DILocation(line: 501, column: 33, scope: !1749)
!1749 = distinct !DILexicalBlock(scope: !1442, file: !141, line: 501, column: 15)
!1750 = !DILocation(line: 506, column: 15, scope: !1751)
!1751 = distinct !DILexicalBlock(scope: !1442, file: !141, line: 505, column: 15)
!1752 = !DILocation(line: 510, column: 15, scope: !1442)
!1753 = !DILocation(line: 518, column: 26, scope: !1754)
!1754 = distinct !DILexicalBlock(scope: !1442, file: !141, line: 518, column: 15)
!1755 = !DILocation(line: 518, column: 15, scope: !1442)
!1756 = !DILocation(line: 518, column: 40, scope: !1757)
!1757 = !DILexicalBlockFile(scope: !1754, file: !141, discriminator: 1)
!1758 = !DILocation(line: 518, column: 47, scope: !1757)
!1759 = !DILocation(line: 522, column: 17, scope: !1760)
!1760 = distinct !DILexicalBlock(scope: !1442, file: !141, line: 522, column: 15)
!1761 = !DILocation(line: 518, column: 18, scope: !1757)
!1762 = !DILocation(line: 518, column: 65, scope: !1763)
!1763 = !DILexicalBlockFile(scope: !1754, file: !141, discriminator: 2)
!1764 = !DILocation(line: 518, column: 15, scope: !1765)
!1765 = !DILexicalBlockFile(scope: !1442, file: !141, discriminator: 2)
!1766 = !DILocation(line: 522, column: 15, scope: !1442)
!1767 = !DILocation(line: 526, column: 11, scope: !1442)
!1768 = !DILocation(line: 541, column: 15, scope: !1769)
!1769 = distinct !DILexicalBlock(scope: !1442, file: !141, line: 540, column: 15)
!1770 = !DILocation(line: 548, column: 15, scope: !1442)
!1771 = !DILocation(line: 550, column: 19, scope: !1772)
!1772 = distinct !DILexicalBlock(scope: !1773, file: !141, line: 549, column: 13)
!1773 = distinct !DILexicalBlock(scope: !1442, file: !141, line: 548, column: 15)
!1774 = !DILocation(line: 553, column: 19, scope: !1775)
!1775 = distinct !DILexicalBlock(scope: !1772, file: !141, line: 553, column: 19)
!1776 = !DILocation(line: 553, column: 35, scope: !1777)
!1777 = !DILexicalBlockFile(scope: !1775, file: !141, discriminator: 1)
!1778 = !DILocation(line: 553, column: 30, scope: !1775)
!1779 = !DILocation(line: 562, column: 15, scope: !1780)
!1780 = !DILexicalBlockFile(scope: !1781, file: !141, discriminator: 1)
!1781 = distinct !DILexicalBlock(scope: !1782, file: !141, line: 562, column: 15)
!1782 = distinct !DILexicalBlock(scope: !1772, file: !141, line: 562, column: 15)
!1783 = !DILocation(line: 562, column: 15, scope: !1784)
!1784 = !DILexicalBlockFile(scope: !1782, file: !141, discriminator: 1)
!1785 = !DILocation(line: 562, column: 15, scope: !1786)
!1786 = !DILexicalBlockFile(scope: !1781, file: !141, discriminator: 2)
!1787 = !DILocation(line: 562, column: 15, scope: !1788)
!1788 = !DILexicalBlockFile(scope: !1782, file: !141, discriminator: 3)
!1789 = !DILocation(line: 563, column: 15, scope: !1790)
!1790 = !DILexicalBlockFile(scope: !1791, file: !141, discriminator: 1)
!1791 = distinct !DILexicalBlock(scope: !1792, file: !141, line: 563, column: 15)
!1792 = distinct !DILexicalBlock(scope: !1772, file: !141, line: 563, column: 15)
!1793 = !DILocation(line: 563, column: 15, scope: !1794)
!1794 = !DILexicalBlockFile(scope: !1792, file: !141, discriminator: 1)
!1795 = !DILocation(line: 563, column: 15, scope: !1796)
!1796 = !DILexicalBlockFile(scope: !1791, file: !141, discriminator: 2)
!1797 = !DILocation(line: 563, column: 15, scope: !1798)
!1798 = !DILexicalBlockFile(scope: !1792, file: !141, discriminator: 3)
!1799 = !DILocation(line: 564, column: 15, scope: !1800)
!1800 = !DILexicalBlockFile(scope: !1801, file: !141, discriminator: 1)
!1801 = distinct !DILexicalBlock(scope: !1802, file: !141, line: 564, column: 15)
!1802 = distinct !DILexicalBlock(scope: !1772, file: !141, line: 564, column: 15)
!1803 = !DILocation(line: 564, column: 15, scope: !1804)
!1804 = !DILexicalBlockFile(scope: !1802, file: !141, discriminator: 1)
!1805 = !DILocation(line: 564, column: 15, scope: !1806)
!1806 = !DILexicalBlockFile(scope: !1801, file: !141, discriminator: 2)
!1807 = !DILocation(line: 564, column: 15, scope: !1808)
!1808 = !DILexicalBlockFile(scope: !1802, file: !141, discriminator: 3)
!1809 = !DILocation(line: 566, column: 13, scope: !1772)
!1810 = !DILocation(line: 606, column: 17, scope: !1441)
!1811 = !DILocation(line: 602, column: 20, scope: !1441)
!1812 = !DILocation(line: 609, column: 29, scope: !1813)
!1813 = distinct !DILexicalBlock(scope: !1446, file: !141, line: 607, column: 15)
!1814 = !{!1815, !1815, i64 0}
!1815 = !{!"short", !619, i64 0}
!1816 = !DILocation(line: 609, column: 27, scope: !1813)
!1817 = !DILocation(line: 604, column: 18, scope: !1441)
!1818 = !DILocation(line: 610, column: 15, scope: !1813)
!1819 = !DILocation(line: 613, column: 17, scope: !1445)
!1820 = !DILocation(line: 614, column: 17, scope: !1445)
!1821 = !DILocation(line: 618, column: 29, scope: !1822)
!1822 = distinct !DILexicalBlock(scope: !1445, file: !141, line: 618, column: 21)
!1823 = !DILocation(line: 618, column: 21, scope: !1445)
!1824 = distinct !{!1824, !1825, !1826}
!1825 = !DILocation(line: 621, column: 17, scope: !1445)
!1826 = !DILocation(line: 667, column: 44, scope: !1445)
!1827 = !DILocation(line: 619, column: 29, scope: !1822)
!1828 = !DILocation(line: 619, column: 19, scope: !1822)
!1829 = !DILocation(line: 623, column: 21, scope: !1462)
!1830 = !DILocation(line: 624, column: 56, scope: !1462)
!1831 = !DILocation(line: 624, column: 50, scope: !1462)
!1832 = !DILocation(line: 625, column: 53, scope: !1462)
!1833 = !DILocation(line: 613, column: 27, scope: !1445)
!1834 = !DILocation(line: 623, column: 29, scope: !1462)
!1835 = !DILocation(line: 624, column: 36, scope: !1462)
!1836 = !DILocation(line: 624, column: 28, scope: !1462)
!1837 = !DILocation(line: 626, column: 25, scope: !1462)
!1838 = !DILocation(line: 636, column: 38, scope: !1839)
!1839 = !DILexicalBlockFile(scope: !1840, file: !141, discriminator: 1)
!1840 = distinct !DILexicalBlock(scope: !1469, file: !141, line: 634, column: 23)
!1841 = !DILocation(line: 636, column: 48, scope: !1839)
!1842 = !DILocation(line: 636, column: 51, scope: !1843)
!1843 = !DILexicalBlockFile(scope: !1840, file: !141, discriminator: 2)
!1844 = !DILocation(line: 636, column: 48, scope: !1843)
!1845 = !DILocation(line: 636, column: 25, scope: !1846)
!1846 = !DILexicalBlockFile(scope: !1840, file: !141, discriminator: 3)
!1847 = !DILocation(line: 637, column: 28, scope: !1840)
!1848 = !DILocation(line: 636, column: 34, scope: !1839)
!1849 = distinct !{!1849, !1850, !1847}
!1850 = !DILocation(line: 636, column: 25, scope: !1840)
!1851 = !DILocation(line: 650, column: 43, scope: !1852)
!1852 = !DILexicalBlockFile(scope: !1853, file: !141, discriminator: 1)
!1853 = distinct !DILexicalBlock(scope: !1854, file: !141, line: 650, column: 29)
!1854 = distinct !DILexicalBlock(scope: !1466, file: !141, line: 650, column: 29)
!1855 = !DILocation(line: 647, column: 29, scope: !1467)
!1856 = !DILocation(line: 649, column: 36, scope: !1466)
!1857 = !DILocation(line: 651, column: 49, scope: !1853)
!1858 = !DILocation(line: 651, column: 39, scope: !1853)
!1859 = !DILocation(line: 651, column: 31, scope: !1853)
!1860 = !DILocation(line: 650, column: 53, scope: !1861)
!1861 = !DILexicalBlockFile(scope: !1853, file: !141, discriminator: 2)
!1862 = !DILocation(line: 650, column: 29, scope: !1863)
!1863 = !DILexicalBlockFile(scope: !1854, file: !141, discriminator: 1)
!1864 = distinct !{!1864, !1865, !1866}
!1865 = !DILocation(line: 650, column: 29, scope: !1854)
!1866 = !DILocation(line: 659, column: 33, scope: !1854)
!1867 = !DILocation(line: 666, column: 19, scope: !1445)
!1868 = !DILocation(line: 662, column: 41, scope: !1869)
!1869 = distinct !DILexicalBlock(scope: !1468, file: !141, line: 662, column: 29)
!1870 = !DILocation(line: 662, column: 31, scope: !1869)
!1871 = !DILocation(line: 662, column: 29, scope: !1468)
!1872 = !DILocation(line: 664, column: 27, scope: !1468)
!1873 = !DILocation(line: 667, column: 26, scope: !1445)
!1874 = !DILocation(line: 667, column: 24, scope: !1445)
!1875 = !DILocation(line: 666, column: 19, scope: !1876)
!1876 = !DILexicalBlockFile(scope: !1462, file: !141, discriminator: 3)
!1877 = !DILocation(line: 668, column: 15, scope: !1446)
!1878 = !DILocation(line: 670, column: 40, scope: !1441)
!1879 = !DILocation(line: 672, column: 19, scope: !1474)
!1880 = !DILocation(line: 672, column: 45, scope: !1881)
!1881 = !DILexicalBlockFile(scope: !1474, file: !141, discriminator: 1)
!1882 = !DILocation(line: 672, column: 23, scope: !1474)
!1883 = !DILocation(line: 676, column: 33, scope: !1473)
!1884 = !DILocation(line: 676, column: 24, scope: !1473)
!1885 = !DILocation(line: 678, column: 17, scope: !1473)
!1886 = !DILocation(line: 680, column: 43, scope: !1887)
!1887 = distinct !DILexicalBlock(scope: !1888, file: !141, line: 680, column: 25)
!1888 = distinct !DILexicalBlock(scope: !1889, file: !141, line: 679, column: 19)
!1889 = distinct !DILexicalBlock(scope: !1890, file: !141, line: 678, column: 17)
!1890 = distinct !DILexicalBlock(scope: !1473, file: !141, line: 678, column: 17)
!1891 = !DILocation(line: 682, column: 25, scope: !1892)
!1892 = !DILexicalBlockFile(scope: !1893, file: !141, discriminator: 1)
!1893 = distinct !DILexicalBlock(scope: !1894, file: !141, line: 682, column: 25)
!1894 = distinct !DILexicalBlock(scope: !1887, file: !141, line: 681, column: 23)
!1895 = !DILocation(line: 682, column: 25, scope: !1896)
!1896 = !DILexicalBlockFile(scope: !1897, file: !141, discriminator: 4)
!1897 = distinct !DILexicalBlock(scope: !1893, file: !141, line: 682, column: 25)
!1898 = !DILocation(line: 682, column: 25, scope: !1899)
!1899 = !DILexicalBlockFile(scope: !1897, file: !141, discriminator: 3)
!1900 = !DILocation(line: 682, column: 25, scope: !1901)
!1901 = !DILexicalBlockFile(scope: !1902, file: !141, discriminator: 6)
!1902 = distinct !DILexicalBlock(scope: !1903, file: !141, line: 682, column: 25)
!1903 = distinct !DILexicalBlock(scope: !1904, file: !141, line: 682, column: 25)
!1904 = distinct !DILexicalBlock(scope: !1897, file: !141, line: 682, column: 25)
!1905 = !DILocation(line: 682, column: 25, scope: !1906)
!1906 = !DILexicalBlockFile(scope: !1903, file: !141, discriminator: 6)
!1907 = !DILocation(line: 682, column: 25, scope: !1908)
!1908 = !DILexicalBlockFile(scope: !1902, file: !141, discriminator: 7)
!1909 = !DILocation(line: 682, column: 25, scope: !1910)
!1910 = !DILexicalBlockFile(scope: !1903, file: !141, discriminator: 8)
!1911 = !DILocation(line: 682, column: 25, scope: !1912)
!1912 = !DILexicalBlockFile(scope: !1913, file: !141, discriminator: 11)
!1913 = distinct !DILexicalBlock(scope: !1914, file: !141, line: 682, column: 25)
!1914 = distinct !DILexicalBlock(scope: !1904, file: !141, line: 682, column: 25)
!1915 = !DILocation(line: 682, column: 25, scope: !1916)
!1916 = !DILexicalBlockFile(scope: !1914, file: !141, discriminator: 11)
!1917 = !DILocation(line: 682, column: 25, scope: !1918)
!1918 = !DILexicalBlockFile(scope: !1913, file: !141, discriminator: 12)
!1919 = !DILocation(line: 682, column: 25, scope: !1920)
!1920 = !DILexicalBlockFile(scope: !1914, file: !141, discriminator: 13)
!1921 = !DILocation(line: 682, column: 25, scope: !1922)
!1922 = !DILexicalBlockFile(scope: !1923, file: !141, discriminator: 16)
!1923 = distinct !DILexicalBlock(scope: !1924, file: !141, line: 682, column: 25)
!1924 = distinct !DILexicalBlock(scope: !1904, file: !141, line: 682, column: 25)
!1925 = !DILocation(line: 682, column: 25, scope: !1926)
!1926 = !DILexicalBlockFile(scope: !1924, file: !141, discriminator: 16)
!1927 = !DILocation(line: 682, column: 25, scope: !1928)
!1928 = !DILexicalBlockFile(scope: !1923, file: !141, discriminator: 17)
!1929 = !DILocation(line: 682, column: 25, scope: !1930)
!1930 = !DILexicalBlockFile(scope: !1924, file: !141, discriminator: 18)
!1931 = !DILocation(line: 682, column: 25, scope: !1932)
!1932 = !DILexicalBlockFile(scope: !1904, file: !141, discriminator: 20)
!1933 = !DILocation(line: 682, column: 25, scope: !1934)
!1934 = !DILexicalBlockFile(scope: !1935, file: !141, discriminator: 22)
!1935 = distinct !DILexicalBlock(scope: !1936, file: !141, line: 682, column: 25)
!1936 = distinct !DILexicalBlock(scope: !1893, file: !141, line: 682, column: 25)
!1937 = !DILocation(line: 682, column: 25, scope: !1938)
!1938 = !DILexicalBlockFile(scope: !1936, file: !141, discriminator: 22)
!1939 = !DILocation(line: 682, column: 25, scope: !1940)
!1940 = !DILexicalBlockFile(scope: !1935, file: !141, discriminator: 23)
!1941 = !DILocation(line: 682, column: 25, scope: !1942)
!1942 = !DILexicalBlockFile(scope: !1936, file: !141, discriminator: 24)
!1943 = !DILocation(line: 683, column: 25, scope: !1944)
!1944 = !DILexicalBlockFile(scope: !1945, file: !141, discriminator: 1)
!1945 = distinct !DILexicalBlock(scope: !1946, file: !141, line: 683, column: 25)
!1946 = distinct !DILexicalBlock(scope: !1894, file: !141, line: 683, column: 25)
!1947 = !DILocation(line: 683, column: 25, scope: !1948)
!1948 = !DILexicalBlockFile(scope: !1946, file: !141, discriminator: 1)
!1949 = !DILocation(line: 683, column: 25, scope: !1950)
!1950 = !DILexicalBlockFile(scope: !1945, file: !141, discriminator: 2)
!1951 = !DILocation(line: 683, column: 25, scope: !1952)
!1952 = !DILexicalBlockFile(scope: !1946, file: !141, discriminator: 3)
!1953 = !DILocation(line: 684, column: 25, scope: !1954)
!1954 = !DILexicalBlockFile(scope: !1955, file: !141, discriminator: 1)
!1955 = distinct !DILexicalBlock(scope: !1956, file: !141, line: 684, column: 25)
!1956 = distinct !DILexicalBlock(scope: !1894, file: !141, line: 684, column: 25)
!1957 = !DILocation(line: 684, column: 25, scope: !1958)
!1958 = !DILexicalBlockFile(scope: !1956, file: !141, discriminator: 1)
!1959 = !DILocation(line: 684, column: 25, scope: !1960)
!1960 = !DILexicalBlockFile(scope: !1955, file: !141, discriminator: 2)
!1961 = !DILocation(line: 684, column: 25, scope: !1962)
!1962 = !DILexicalBlockFile(scope: !1956, file: !141, discriminator: 3)
!1963 = !DILocation(line: 685, column: 38, scope: !1894)
!1964 = !DILocation(line: 685, column: 33, scope: !1894)
!1965 = !DILocation(line: 686, column: 23, scope: !1894)
!1966 = !DILocation(line: 687, column: 30, scope: !1967)
!1967 = distinct !DILexicalBlock(scope: !1887, file: !141, line: 687, column: 30)
!1968 = !DILocation(line: 687, column: 30, scope: !1887)
!1969 = !DILocation(line: 689, column: 25, scope: !1970)
!1970 = !DILexicalBlockFile(scope: !1971, file: !141, discriminator: 1)
!1971 = distinct !DILexicalBlock(scope: !1972, file: !141, line: 689, column: 25)
!1972 = distinct !DILexicalBlock(scope: !1973, file: !141, line: 689, column: 25)
!1973 = distinct !DILexicalBlock(scope: !1967, file: !141, line: 688, column: 23)
!1974 = !DILocation(line: 689, column: 25, scope: !1975)
!1975 = !DILexicalBlockFile(scope: !1972, file: !141, discriminator: 1)
!1976 = !DILocation(line: 689, column: 25, scope: !1977)
!1977 = !DILexicalBlockFile(scope: !1971, file: !141, discriminator: 2)
!1978 = !DILocation(line: 689, column: 25, scope: !1979)
!1979 = !DILexicalBlockFile(scope: !1972, file: !141, discriminator: 3)
!1980 = !DILocation(line: 691, column: 23, scope: !1973)
!1981 = !DILocation(line: 692, column: 35, scope: !1982)
!1982 = distinct !DILexicalBlock(scope: !1888, file: !141, line: 692, column: 25)
!1983 = !DILocation(line: 692, column: 30, scope: !1982)
!1984 = !DILocation(line: 692, column: 25, scope: !1888)
!1985 = !DILocation(line: 694, column: 21, scope: !1986)
!1986 = !DILexicalBlockFile(scope: !1987, file: !141, discriminator: 1)
!1987 = distinct !DILexicalBlock(scope: !1988, file: !141, line: 694, column: 21)
!1988 = distinct !DILexicalBlock(scope: !1888, file: !141, line: 694, column: 21)
!1989 = !DILocation(line: 694, column: 21, scope: !1990)
!1990 = !DILexicalBlockFile(scope: !1987, file: !141, discriminator: 2)
!1991 = !DILocation(line: 694, column: 21, scope: !1992)
!1992 = !DILexicalBlockFile(scope: !1993, file: !141, discriminator: 4)
!1993 = distinct !DILexicalBlock(scope: !1994, file: !141, line: 694, column: 21)
!1994 = distinct !DILexicalBlock(scope: !1995, file: !141, line: 694, column: 21)
!1995 = distinct !DILexicalBlock(scope: !1987, file: !141, line: 694, column: 21)
!1996 = !DILocation(line: 694, column: 21, scope: !1997)
!1997 = !DILexicalBlockFile(scope: !1994, file: !141, discriminator: 4)
!1998 = !DILocation(line: 694, column: 21, scope: !1999)
!1999 = !DILexicalBlockFile(scope: !1993, file: !141, discriminator: 5)
!2000 = !DILocation(line: 694, column: 21, scope: !2001)
!2001 = !DILexicalBlockFile(scope: !1994, file: !141, discriminator: 6)
!2002 = !DILocation(line: 694, column: 21, scope: !2003)
!2003 = !DILexicalBlockFile(scope: !2004, file: !141, discriminator: 9)
!2004 = distinct !DILexicalBlock(scope: !2005, file: !141, line: 694, column: 21)
!2005 = distinct !DILexicalBlock(scope: !1995, file: !141, line: 694, column: 21)
!2006 = !DILocation(line: 694, column: 21, scope: !2007)
!2007 = !DILexicalBlockFile(scope: !2005, file: !141, discriminator: 9)
!2008 = !DILocation(line: 694, column: 21, scope: !2009)
!2009 = !DILexicalBlockFile(scope: !2004, file: !141, discriminator: 10)
!2010 = !DILocation(line: 694, column: 21, scope: !2011)
!2011 = !DILexicalBlockFile(scope: !2005, file: !141, discriminator: 11)
!2012 = !DILocation(line: 694, column: 21, scope: !2013)
!2013 = !DILexicalBlockFile(scope: !1995, file: !141, discriminator: 13)
!2014 = !DILocation(line: 695, column: 21, scope: !2015)
!2015 = !DILexicalBlockFile(scope: !2016, file: !141, discriminator: 1)
!2016 = distinct !DILexicalBlock(scope: !2017, file: !141, line: 695, column: 21)
!2017 = distinct !DILexicalBlock(scope: !1888, file: !141, line: 695, column: 21)
!2018 = !DILocation(line: 695, column: 21, scope: !2019)
!2019 = !DILexicalBlockFile(scope: !2017, file: !141, discriminator: 1)
!2020 = !DILocation(line: 695, column: 21, scope: !2021)
!2021 = !DILexicalBlockFile(scope: !2016, file: !141, discriminator: 2)
!2022 = !DILocation(line: 695, column: 21, scope: !2023)
!2023 = !DILexicalBlockFile(scope: !2017, file: !141, discriminator: 3)
!2024 = !DILocation(line: 696, column: 25, scope: !1888)
!2025 = !DILocation(line: 678, column: 17, scope: !2026)
!2026 = !DILexicalBlockFile(scope: !1889, file: !141, discriminator: 1)
!2027 = distinct !{!2027, !2028, !2029}
!2028 = !DILocation(line: 678, column: 17, scope: !1890)
!2029 = !DILocation(line: 697, column: 19, scope: !1890)
!2030 = !DILocation(line: 704, column: 34, scope: !2031)
!2031 = distinct !DILexicalBlock(scope: !1433, file: !141, line: 704, column: 11)
!2032 = !DILocation(line: 706, column: 14, scope: !2031)
!2033 = !DILocation(line: 707, column: 14, scope: !2031)
!2034 = !DILocation(line: 707, column: 35, scope: !2035)
!2035 = !DILexicalBlockFile(scope: !2031, file: !141, discriminator: 1)
!2036 = !DILocation(line: 707, column: 17, scope: !2035)
!2037 = !DILocation(line: 707, column: 53, scope: !2035)
!2038 = !DILocation(line: 707, column: 47, scope: !2035)
!2039 = !DILocation(line: 707, column: 65, scope: !2035)
!2040 = !DILocation(line: 708, column: 15, scope: !2035)
!2041 = !DILocation(line: 708, column: 11, scope: !2031)
!2042 = !DILocation(line: 704, column: 11, scope: !2043)
!2043 = !DILexicalBlockFile(scope: !1433, file: !141, discriminator: 2)
!2044 = !DILocation(line: 712, column: 7, scope: !2045)
!2045 = !DILexicalBlockFile(scope: !2046, file: !141, discriminator: 1)
!2046 = distinct !DILexicalBlock(scope: !1433, file: !141, line: 712, column: 7)
!2047 = !DILocation(line: 712, column: 7, scope: !2048)
!2048 = !DILexicalBlockFile(scope: !2049, file: !141, discriminator: 4)
!2049 = distinct !DILexicalBlock(scope: !2046, file: !141, line: 712, column: 7)
!2050 = !DILocation(line: 712, column: 7, scope: !2051)
!2051 = !DILexicalBlockFile(scope: !2049, file: !141, discriminator: 3)
!2052 = !DILocation(line: 712, column: 7, scope: !2053)
!2053 = !DILexicalBlockFile(scope: !2054, file: !141, discriminator: 6)
!2054 = distinct !DILexicalBlock(scope: !2055, file: !141, line: 712, column: 7)
!2055 = distinct !DILexicalBlock(scope: !2056, file: !141, line: 712, column: 7)
!2056 = distinct !DILexicalBlock(scope: !2049, file: !141, line: 712, column: 7)
!2057 = !DILocation(line: 712, column: 7, scope: !2058)
!2058 = !DILexicalBlockFile(scope: !2055, file: !141, discriminator: 6)
!2059 = !DILocation(line: 712, column: 7, scope: !2060)
!2060 = !DILexicalBlockFile(scope: !2054, file: !141, discriminator: 7)
!2061 = !DILocation(line: 712, column: 7, scope: !2062)
!2062 = !DILexicalBlockFile(scope: !2055, file: !141, discriminator: 8)
!2063 = !DILocation(line: 712, column: 7, scope: !2064)
!2064 = !DILexicalBlockFile(scope: !2065, file: !141, discriminator: 11)
!2065 = distinct !DILexicalBlock(scope: !2066, file: !141, line: 712, column: 7)
!2066 = distinct !DILexicalBlock(scope: !2056, file: !141, line: 712, column: 7)
!2067 = !DILocation(line: 712, column: 7, scope: !2068)
!2068 = !DILexicalBlockFile(scope: !2066, file: !141, discriminator: 11)
!2069 = !DILocation(line: 712, column: 7, scope: !2070)
!2070 = !DILexicalBlockFile(scope: !2065, file: !141, discriminator: 12)
!2071 = !DILocation(line: 712, column: 7, scope: !2072)
!2072 = !DILexicalBlockFile(scope: !2066, file: !141, discriminator: 13)
!2073 = !DILocation(line: 712, column: 7, scope: !2074)
!2074 = !DILexicalBlockFile(scope: !2075, file: !141, discriminator: 16)
!2075 = distinct !DILexicalBlock(scope: !2076, file: !141, line: 712, column: 7)
!2076 = distinct !DILexicalBlock(scope: !2056, file: !141, line: 712, column: 7)
!2077 = !DILocation(line: 712, column: 7, scope: !2078)
!2078 = !DILexicalBlockFile(scope: !2076, file: !141, discriminator: 16)
!2079 = !DILocation(line: 712, column: 7, scope: !2080)
!2080 = !DILexicalBlockFile(scope: !2075, file: !141, discriminator: 17)
!2081 = !DILocation(line: 712, column: 7, scope: !2082)
!2082 = !DILexicalBlockFile(scope: !2076, file: !141, discriminator: 18)
!2083 = !DILocation(line: 712, column: 7, scope: !2084)
!2084 = !DILexicalBlockFile(scope: !2056, file: !141, discriminator: 20)
!2085 = !DILocation(line: 712, column: 7, scope: !2086)
!2086 = !DILexicalBlockFile(scope: !2087, file: !141, discriminator: 22)
!2087 = distinct !DILexicalBlock(scope: !2088, file: !141, line: 712, column: 7)
!2088 = distinct !DILexicalBlock(scope: !2046, file: !141, line: 712, column: 7)
!2089 = !DILocation(line: 712, column: 7, scope: !2090)
!2090 = !DILexicalBlockFile(scope: !2088, file: !141, discriminator: 22)
!2091 = !DILocation(line: 712, column: 7, scope: !2092)
!2092 = !DILexicalBlockFile(scope: !2087, file: !141, discriminator: 23)
!2093 = !DILocation(line: 712, column: 7, scope: !2094)
!2094 = !DILexicalBlockFile(scope: !2088, file: !141, discriminator: 24)
!2095 = !DILocation(line: 715, column: 7, scope: !2096)
!2096 = !DILexicalBlockFile(scope: !2097, file: !141, discriminator: 1)
!2097 = distinct !DILexicalBlock(scope: !2098, file: !141, line: 715, column: 7)
!2098 = distinct !DILexicalBlock(scope: !1433, file: !141, line: 715, column: 7)
!2099 = !DILocation(line: 715, column: 7, scope: !2100)
!2100 = !DILexicalBlockFile(scope: !2097, file: !141, discriminator: 2)
!2101 = !DILocation(line: 715, column: 7, scope: !2102)
!2102 = !DILexicalBlockFile(scope: !2103, file: !141, discriminator: 4)
!2103 = distinct !DILexicalBlock(scope: !2104, file: !141, line: 715, column: 7)
!2104 = distinct !DILexicalBlock(scope: !2105, file: !141, line: 715, column: 7)
!2105 = distinct !DILexicalBlock(scope: !2097, file: !141, line: 715, column: 7)
!2106 = !DILocation(line: 715, column: 7, scope: !2107)
!2107 = !DILexicalBlockFile(scope: !2104, file: !141, discriminator: 4)
!2108 = !DILocation(line: 715, column: 7, scope: !2109)
!2109 = !DILexicalBlockFile(scope: !2103, file: !141, discriminator: 5)
!2110 = !DILocation(line: 715, column: 7, scope: !2111)
!2111 = !DILexicalBlockFile(scope: !2104, file: !141, discriminator: 6)
!2112 = !DILocation(line: 715, column: 7, scope: !2113)
!2113 = !DILexicalBlockFile(scope: !2114, file: !141, discriminator: 9)
!2114 = distinct !DILexicalBlock(scope: !2115, file: !141, line: 715, column: 7)
!2115 = distinct !DILexicalBlock(scope: !2105, file: !141, line: 715, column: 7)
!2116 = !DILocation(line: 715, column: 7, scope: !2117)
!2117 = !DILexicalBlockFile(scope: !2115, file: !141, discriminator: 9)
!2118 = !DILocation(line: 715, column: 7, scope: !2119)
!2119 = !DILexicalBlockFile(scope: !2114, file: !141, discriminator: 10)
!2120 = !DILocation(line: 715, column: 7, scope: !2121)
!2121 = !DILexicalBlockFile(scope: !2115, file: !141, discriminator: 11)
!2122 = !DILocation(line: 715, column: 7, scope: !2123)
!2123 = !DILexicalBlockFile(scope: !2105, file: !141, discriminator: 13)
!2124 = !DILocation(line: 716, column: 7, scope: !2125)
!2125 = !DILexicalBlockFile(scope: !2126, file: !141, discriminator: 1)
!2126 = distinct !DILexicalBlock(scope: !2127, file: !141, line: 716, column: 7)
!2127 = distinct !DILexicalBlock(scope: !1433, file: !141, line: 716, column: 7)
!2128 = !DILocation(line: 716, column: 7, scope: !2129)
!2129 = !DILexicalBlockFile(scope: !2127, file: !141, discriminator: 1)
!2130 = !DILocation(line: 716, column: 7, scope: !2131)
!2131 = !DILexicalBlockFile(scope: !2126, file: !141, discriminator: 2)
!2132 = !DILocation(line: 716, column: 7, scope: !2133)
!2133 = !DILexicalBlockFile(scope: !2127, file: !141, discriminator: 3)
!2134 = !DILocation(line: 718, column: 13, scope: !2135)
!2135 = distinct !DILexicalBlock(scope: !1433, file: !141, line: 718, column: 11)
!2136 = !DILocation(line: 718, column: 11, scope: !1433)
!2137 = !DILocation(line: 720, column: 5, scope: !1434)
!2138 = !DILocation(line: 392, column: 75, scope: !2139)
!2139 = !DILexicalBlockFile(scope: !1434, file: !141, discriminator: 5)
!2140 = !DILocation(line: 392, column: 3, scope: !2139)
!2141 = distinct !{!2141, !2142, !2143}
!2142 = !DILocation(line: 392, column: 3, scope: !1435)
!2143 = !DILocation(line: 720, column: 5, scope: !1435)
!2144 = !DILocation(line: 722, column: 11, scope: !2145)
!2145 = distinct !DILexicalBlock(scope: !1406, file: !141, line: 722, column: 7)
!2146 = !DILocation(line: 722, column: 16, scope: !2145)
!2147 = !DILocation(line: 730, column: 51, scope: !2148)
!2148 = distinct !DILexicalBlock(scope: !1406, file: !141, line: 730, column: 7)
!2149 = !DILocation(line: 731, column: 10, scope: !2150)
!2150 = !DILexicalBlockFile(scope: !2148, file: !141, discriminator: 1)
!2151 = !DILocation(line: 733, column: 11, scope: !2152)
!2152 = distinct !DILexicalBlock(scope: !2153, file: !141, line: 733, column: 11)
!2153 = distinct !DILexicalBlock(scope: !2148, file: !141, line: 732, column: 5)
!2154 = !DILocation(line: 733, column: 11, scope: !2153)
!2155 = !DILocation(line: 734, column: 16, scope: !2152)
!2156 = !DILocation(line: 734, column: 9, scope: !2152)
!2157 = !DILocation(line: 738, column: 18, scope: !2158)
!2158 = distinct !DILexicalBlock(scope: !2152, file: !141, line: 738, column: 16)
!2159 = !DILocation(line: 738, column: 32, scope: !2160)
!2160 = !DILexicalBlockFile(scope: !2158, file: !141, discriminator: 1)
!2161 = !DILocation(line: 738, column: 29, scope: !2158)
!2162 = !DILocation(line: 747, column: 7, scope: !2163)
!2163 = distinct !DILexicalBlock(scope: !1406, file: !141, line: 747, column: 7)
!2164 = !DILocation(line: 747, column: 20, scope: !2163)
!2165 = !DILocation(line: 748, column: 12, scope: !2166)
!2166 = !DILexicalBlockFile(scope: !2167, file: !141, discriminator: 1)
!2167 = distinct !DILexicalBlock(scope: !2168, file: !141, line: 748, column: 5)
!2168 = distinct !DILexicalBlock(scope: !2163, file: !141, line: 748, column: 5)
!2169 = !DILocation(line: 748, column: 5, scope: !2170)
!2170 = !DILexicalBlockFile(scope: !2168, file: !141, discriminator: 1)
!2171 = !DILocation(line: 749, column: 7, scope: !2172)
!2172 = !DILexicalBlockFile(scope: !2173, file: !141, discriminator: 1)
!2173 = distinct !DILexicalBlock(scope: !2174, file: !141, line: 749, column: 7)
!2174 = distinct !DILexicalBlock(scope: !2167, file: !141, line: 749, column: 7)
!2175 = !DILocation(line: 749, column: 7, scope: !2176)
!2176 = !DILexicalBlockFile(scope: !2174, file: !141, discriminator: 1)
!2177 = !DILocation(line: 749, column: 7, scope: !2178)
!2178 = !DILexicalBlockFile(scope: !2173, file: !141, discriminator: 2)
!2179 = !DILocation(line: 749, column: 7, scope: !2180)
!2180 = !DILexicalBlockFile(scope: !2174, file: !141, discriminator: 3)
!2181 = !DILocation(line: 748, column: 39, scope: !2182)
!2182 = !DILexicalBlockFile(scope: !2167, file: !141, discriminator: 2)
!2183 = distinct !{!2183, !2184, !2185}
!2184 = !DILocation(line: 748, column: 5, scope: !2168)
!2185 = !DILocation(line: 749, column: 7, scope: !2168)
!2186 = !DILocation(line: 751, column: 11, scope: !2187)
!2187 = distinct !DILexicalBlock(scope: !1406, file: !141, line: 751, column: 7)
!2188 = !DILocation(line: 751, column: 7, scope: !1406)
!2189 = !DILocation(line: 752, column: 5, scope: !2187)
!2190 = !DILocation(line: 752, column: 17, scope: !2187)
!2191 = !DILocation(line: 758, column: 21, scope: !2192)
!2192 = distinct !DILexicalBlock(scope: !1406, file: !141, line: 758, column: 7)
!2193 = !DILocation(line: 758, column: 54, scope: !2194)
!2194 = !DILexicalBlockFile(scope: !2192, file: !141, discriminator: 1)
!2195 = !DILocation(line: 758, column: 51, scope: !2192)
!2196 = !DILocation(line: 762, column: 42, scope: !1406)
!2197 = !DILocation(line: 760, column: 10, scope: !1406)
!2198 = !DILocation(line: 760, column: 3, scope: !1406)
!2199 = !DILocation(line: 764, column: 1, scope: !1406)
!2200 = distinct !DISubprogram(name: "gettext_quote", scope: !141, file: !141, line: 199, type: !2201, isLocal: true, isDefinition: true, scopeLine: 200, flags: DIFlagPrototyped, isOptimized: true, unit: !99, variables: !2203)
!2201 = !DISubroutineType(types: !2202)
!2202 = !{!17, !17, !102}
!2203 = !{!2204, !2205, !2206, !2207}
!2204 = !DILocalVariable(name: "msgid", arg: 1, scope: !2200, file: !141, line: 199, type: !17)
!2205 = !DILocalVariable(name: "s", arg: 2, scope: !2200, file: !141, line: 199, type: !102)
!2206 = !DILocalVariable(name: "translation", scope: !2200, file: !141, line: 201, type: !17)
!2207 = !DILocalVariable(name: "locale_code", scope: !2200, file: !141, line: 202, type: !17)
!2208 = !DILocation(line: 199, column: 28, scope: !2200)
!2209 = !DILocation(line: 199, column: 54, scope: !2200)
!2210 = !DILocation(line: 201, column: 29, scope: !2200)
!2211 = !DILocation(line: 201, column: 15, scope: !2200)
!2212 = !DILocation(line: 204, column: 19, scope: !2213)
!2213 = distinct !DILexicalBlock(scope: !2200, file: !141, line: 204, column: 7)
!2214 = !DILocation(line: 204, column: 7, scope: !2200)
!2215 = !DILocation(line: 225, column: 17, scope: !2200)
!2216 = !DILocation(line: 202, column: 15, scope: !2200)
!2217 = !DILocalVariable(name: "s2", arg: 2, scope: !2218, file: !2219, line: 160, type: !17)
!2218 = distinct !DISubprogram(name: "strcaseeq0", scope: !2219, file: !2219, line: 160, type: !2220, isLocal: true, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !99, variables: !2222)
!2219 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2220 = !DISubroutineType(types: !2221)
!2221 = !{!48, !17, !17, !7, !7, !7, !7, !7, !7, !7, !7, !7}
!2222 = !{!2223, !2217, !2224, !2225, !2226, !2227, !2228, !2229, !2230, !2231, !2232}
!2223 = !DILocalVariable(name: "s1", arg: 1, scope: !2218, file: !2219, line: 160, type: !17)
!2224 = !DILocalVariable(name: "s20", arg: 3, scope: !2218, file: !2219, line: 160, type: !7)
!2225 = !DILocalVariable(name: "s21", arg: 4, scope: !2218, file: !2219, line: 160, type: !7)
!2226 = !DILocalVariable(name: "s22", arg: 5, scope: !2218, file: !2219, line: 160, type: !7)
!2227 = !DILocalVariable(name: "s23", arg: 6, scope: !2218, file: !2219, line: 160, type: !7)
!2228 = !DILocalVariable(name: "s24", arg: 7, scope: !2218, file: !2219, line: 160, type: !7)
!2229 = !DILocalVariable(name: "s25", arg: 8, scope: !2218, file: !2219, line: 160, type: !7)
!2230 = !DILocalVariable(name: "s26", arg: 9, scope: !2218, file: !2219, line: 160, type: !7)
!2231 = !DILocalVariable(name: "s27", arg: 10, scope: !2218, file: !2219, line: 160, type: !7)
!2232 = !DILocalVariable(name: "s28", arg: 11, scope: !2218, file: !2219, line: 160, type: !7)
!2233 = !DILocation(line: 160, column: 41, scope: !2218, inlinedAt: !2234)
!2234 = distinct !DILocation(line: 226, column: 7, scope: !2235)
!2235 = distinct !DILexicalBlock(scope: !2200, file: !141, line: 226, column: 7)
!2236 = !DILocation(line: 160, column: 120, scope: !2218, inlinedAt: !2234)
!2237 = !DILocation(line: 160, column: 130, scope: !2218, inlinedAt: !2234)
!2238 = !DILocation(line: 162, column: 7, scope: !2239, inlinedAt: !2234)
!2239 = !DILexicalBlockFile(scope: !2240, file: !2219, discriminator: 1)
!2240 = distinct !DILexicalBlock(scope: !2218, file: !2219, line: 162, column: 7)
!2241 = !DILocalVariable(name: "s2", arg: 2, scope: !2242, file: !2219, line: 146, type: !17)
!2242 = distinct !DISubprogram(name: "strcaseeq1", scope: !2219, file: !2219, line: 146, type: !2243, isLocal: true, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: true, unit: !99, variables: !2245)
!2243 = !DISubroutineType(types: !2244)
!2244 = !{!48, !17, !17, !7, !7, !7, !7, !7, !7, !7, !7}
!2245 = !{!2246, !2241, !2247, !2248, !2249, !2250, !2251, !2252, !2253, !2254}
!2246 = !DILocalVariable(name: "s1", arg: 1, scope: !2242, file: !2219, line: 146, type: !17)
!2247 = !DILocalVariable(name: "s21", arg: 3, scope: !2242, file: !2219, line: 146, type: !7)
!2248 = !DILocalVariable(name: "s22", arg: 4, scope: !2242, file: !2219, line: 146, type: !7)
!2249 = !DILocalVariable(name: "s23", arg: 5, scope: !2242, file: !2219, line: 146, type: !7)
!2250 = !DILocalVariable(name: "s24", arg: 6, scope: !2242, file: !2219, line: 146, type: !7)
!2251 = !DILocalVariable(name: "s25", arg: 7, scope: !2242, file: !2219, line: 146, type: !7)
!2252 = !DILocalVariable(name: "s26", arg: 8, scope: !2242, file: !2219, line: 146, type: !7)
!2253 = !DILocalVariable(name: "s27", arg: 9, scope: !2242, file: !2219, line: 146, type: !7)
!2254 = !DILocalVariable(name: "s28", arg: 10, scope: !2242, file: !2219, line: 146, type: !7)
!2255 = !DILocation(line: 146, column: 41, scope: !2242, inlinedAt: !2256)
!2256 = distinct !DILocation(line: 167, column: 16, scope: !2257, inlinedAt: !2234)
!2257 = distinct !DILexicalBlock(scope: !2258, file: !2219, line: 164, column: 11)
!2258 = distinct !DILexicalBlock(scope: !2240, file: !2219, line: 163, column: 5)
!2259 = !DILocation(line: 146, column: 110, scope: !2242, inlinedAt: !2256)
!2260 = !DILocation(line: 146, column: 120, scope: !2242, inlinedAt: !2256)
!2261 = !DILocation(line: 148, column: 7, scope: !2262, inlinedAt: !2256)
!2262 = !DILexicalBlockFile(scope: !2263, file: !2219, discriminator: 1)
!2263 = distinct !DILexicalBlock(scope: !2242, file: !2219, line: 148, column: 7)
!2264 = !DILocalVariable(name: "s2", arg: 2, scope: !2265, file: !2219, line: 132, type: !17)
!2265 = distinct !DISubprogram(name: "strcaseeq2", scope: !2219, file: !2219, line: 132, type: !2266, isLocal: true, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !99, variables: !2268)
!2266 = !DISubroutineType(types: !2267)
!2267 = !{!48, !17, !17, !7, !7, !7, !7, !7, !7, !7}
!2268 = !{!2269, !2264, !2270, !2271, !2272, !2273, !2274, !2275, !2276}
!2269 = !DILocalVariable(name: "s1", arg: 1, scope: !2265, file: !2219, line: 132, type: !17)
!2270 = !DILocalVariable(name: "s22", arg: 3, scope: !2265, file: !2219, line: 132, type: !7)
!2271 = !DILocalVariable(name: "s23", arg: 4, scope: !2265, file: !2219, line: 132, type: !7)
!2272 = !DILocalVariable(name: "s24", arg: 5, scope: !2265, file: !2219, line: 132, type: !7)
!2273 = !DILocalVariable(name: "s25", arg: 6, scope: !2265, file: !2219, line: 132, type: !7)
!2274 = !DILocalVariable(name: "s26", arg: 7, scope: !2265, file: !2219, line: 132, type: !7)
!2275 = !DILocalVariable(name: "s27", arg: 8, scope: !2265, file: !2219, line: 132, type: !7)
!2276 = !DILocalVariable(name: "s28", arg: 9, scope: !2265, file: !2219, line: 132, type: !7)
!2277 = !DILocation(line: 132, column: 41, scope: !2265, inlinedAt: !2278)
!2278 = distinct !DILocation(line: 153, column: 16, scope: !2279, inlinedAt: !2256)
!2279 = distinct !DILexicalBlock(scope: !2280, file: !2219, line: 150, column: 11)
!2280 = distinct !DILexicalBlock(scope: !2263, file: !2219, line: 149, column: 5)
!2281 = !DILocation(line: 132, column: 100, scope: !2265, inlinedAt: !2278)
!2282 = !DILocation(line: 132, column: 110, scope: !2265, inlinedAt: !2278)
!2283 = !DILocation(line: 134, column: 7, scope: !2284, inlinedAt: !2278)
!2284 = !DILexicalBlockFile(scope: !2285, file: !2219, discriminator: 1)
!2285 = distinct !DILexicalBlock(scope: !2265, file: !2219, line: 134, column: 7)
!2286 = !DILocalVariable(name: "s2", arg: 2, scope: !2287, file: !2219, line: 118, type: !17)
!2287 = distinct !DISubprogram(name: "strcaseeq3", scope: !2219, file: !2219, line: 118, type: !2288, isLocal: true, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !99, variables: !2290)
!2288 = !DISubroutineType(types: !2289)
!2289 = !{!48, !17, !17, !7, !7, !7, !7, !7, !7}
!2290 = !{!2291, !2286, !2292, !2293, !2294, !2295, !2296, !2297}
!2291 = !DILocalVariable(name: "s1", arg: 1, scope: !2287, file: !2219, line: 118, type: !17)
!2292 = !DILocalVariable(name: "s23", arg: 3, scope: !2287, file: !2219, line: 118, type: !7)
!2293 = !DILocalVariable(name: "s24", arg: 4, scope: !2287, file: !2219, line: 118, type: !7)
!2294 = !DILocalVariable(name: "s25", arg: 5, scope: !2287, file: !2219, line: 118, type: !7)
!2295 = !DILocalVariable(name: "s26", arg: 6, scope: !2287, file: !2219, line: 118, type: !7)
!2296 = !DILocalVariable(name: "s27", arg: 7, scope: !2287, file: !2219, line: 118, type: !7)
!2297 = !DILocalVariable(name: "s28", arg: 8, scope: !2287, file: !2219, line: 118, type: !7)
!2298 = !DILocation(line: 118, column: 41, scope: !2287, inlinedAt: !2299)
!2299 = distinct !DILocation(line: 139, column: 16, scope: !2300, inlinedAt: !2278)
!2300 = distinct !DILexicalBlock(scope: !2301, file: !2219, line: 136, column: 11)
!2301 = distinct !DILexicalBlock(scope: !2285, file: !2219, line: 135, column: 5)
!2302 = !DILocation(line: 118, column: 90, scope: !2287, inlinedAt: !2299)
!2303 = !DILocation(line: 118, column: 100, scope: !2287, inlinedAt: !2299)
!2304 = !DILocation(line: 120, column: 7, scope: !2305, inlinedAt: !2299)
!2305 = !DILexicalBlockFile(scope: !2306, file: !2219, discriminator: 2)
!2306 = distinct !DILexicalBlock(scope: !2287, file: !2219, line: 120, column: 7)
!2307 = !DILocation(line: 120, column: 7, scope: !2308, inlinedAt: !2299)
!2308 = !DILexicalBlockFile(scope: !2287, file: !2219, discriminator: 2)
!2309 = !DILocalVariable(name: "s2", arg: 2, scope: !2310, file: !2219, line: 104, type: !17)
!2310 = distinct !DISubprogram(name: "strcaseeq4", scope: !2219, file: !2219, line: 104, type: !2311, isLocal: true, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, unit: !99, variables: !2313)
!2311 = !DISubroutineType(types: !2312)
!2312 = !{!48, !17, !17, !7, !7, !7, !7, !7}
!2313 = !{!2314, !2309, !2315, !2316, !2317, !2318, !2319}
!2314 = !DILocalVariable(name: "s1", arg: 1, scope: !2310, file: !2219, line: 104, type: !17)
!2315 = !DILocalVariable(name: "s24", arg: 3, scope: !2310, file: !2219, line: 104, type: !7)
!2316 = !DILocalVariable(name: "s25", arg: 4, scope: !2310, file: !2219, line: 104, type: !7)
!2317 = !DILocalVariable(name: "s26", arg: 5, scope: !2310, file: !2219, line: 104, type: !7)
!2318 = !DILocalVariable(name: "s27", arg: 6, scope: !2310, file: !2219, line: 104, type: !7)
!2319 = !DILocalVariable(name: "s28", arg: 7, scope: !2310, file: !2219, line: 104, type: !7)
!2320 = !DILocation(line: 104, column: 41, scope: !2310, inlinedAt: !2321)
!2321 = distinct !DILocation(line: 125, column: 16, scope: !2322, inlinedAt: !2299)
!2322 = distinct !DILexicalBlock(scope: !2323, file: !2219, line: 122, column: 11)
!2323 = distinct !DILexicalBlock(scope: !2306, file: !2219, line: 121, column: 5)
!2324 = !DILocation(line: 104, column: 80, scope: !2310, inlinedAt: !2321)
!2325 = !DILocation(line: 104, column: 90, scope: !2310, inlinedAt: !2321)
!2326 = !DILocation(line: 106, column: 7, scope: !2327, inlinedAt: !2321)
!2327 = !DILexicalBlockFile(scope: !2328, file: !2219, discriminator: 2)
!2328 = distinct !DILexicalBlock(scope: !2310, file: !2219, line: 106, column: 7)
!2329 = !DILocation(line: 106, column: 7, scope: !2330, inlinedAt: !2321)
!2330 = !DILexicalBlockFile(scope: !2310, file: !2219, discriminator: 2)
!2331 = !DILocalVariable(name: "s2", arg: 2, scope: !2332, file: !2219, line: 90, type: !17)
!2332 = distinct !DISubprogram(name: "strcaseeq5", scope: !2219, file: !2219, line: 90, type: !2333, isLocal: true, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: true, unit: !99, variables: !2335)
!2333 = !DISubroutineType(types: !2334)
!2334 = !{!48, !17, !17, !7, !7, !7, !7}
!2335 = !{!2336, !2331, !2337, !2338, !2339, !2340}
!2336 = !DILocalVariable(name: "s1", arg: 1, scope: !2332, file: !2219, line: 90, type: !17)
!2337 = !DILocalVariable(name: "s25", arg: 3, scope: !2332, file: !2219, line: 90, type: !7)
!2338 = !DILocalVariable(name: "s26", arg: 4, scope: !2332, file: !2219, line: 90, type: !7)
!2339 = !DILocalVariable(name: "s27", arg: 5, scope: !2332, file: !2219, line: 90, type: !7)
!2340 = !DILocalVariable(name: "s28", arg: 6, scope: !2332, file: !2219, line: 90, type: !7)
!2341 = !DILocation(line: 90, column: 41, scope: !2332, inlinedAt: !2342)
!2342 = distinct !DILocation(line: 111, column: 16, scope: !2343, inlinedAt: !2321)
!2343 = distinct !DILexicalBlock(scope: !2344, file: !2219, line: 108, column: 11)
!2344 = distinct !DILexicalBlock(scope: !2328, file: !2219, line: 107, column: 5)
!2345 = !DILocation(line: 90, column: 70, scope: !2332, inlinedAt: !2342)
!2346 = !DILocation(line: 90, column: 80, scope: !2332, inlinedAt: !2342)
!2347 = !DILocation(line: 92, column: 7, scope: !2348, inlinedAt: !2342)
!2348 = !DILexicalBlockFile(scope: !2349, file: !2219, discriminator: 2)
!2349 = distinct !DILexicalBlock(scope: !2332, file: !2219, line: 92, column: 7)
!2350 = !DILocation(line: 92, column: 7, scope: !2351, inlinedAt: !2342)
!2351 = !DILexicalBlockFile(scope: !2332, file: !2219, discriminator: 2)
!2352 = !DILocation(line: 227, column: 12, scope: !2235)
!2353 = !DILocation(line: 227, column: 21, scope: !2235)
!2354 = !DILocation(line: 227, column: 5, scope: !2235)
!2355 = !DILocation(line: 146, column: 41, scope: !2242, inlinedAt: !2356)
!2356 = distinct !DILocation(line: 167, column: 16, scope: !2257, inlinedAt: !2357)
!2357 = distinct !DILocation(line: 228, column: 7, scope: !2358)
!2358 = distinct !DILexicalBlock(scope: !2200, file: !141, line: 228, column: 7)
!2359 = !DILocation(line: 146, column: 110, scope: !2242, inlinedAt: !2356)
!2360 = !DILocation(line: 146, column: 120, scope: !2242, inlinedAt: !2356)
!2361 = !DILocation(line: 148, column: 7, scope: !2262, inlinedAt: !2356)
!2362 = !DILocation(line: 132, column: 41, scope: !2265, inlinedAt: !2363)
!2363 = distinct !DILocation(line: 153, column: 16, scope: !2279, inlinedAt: !2356)
!2364 = !DILocation(line: 132, column: 100, scope: !2265, inlinedAt: !2363)
!2365 = !DILocation(line: 132, column: 110, scope: !2265, inlinedAt: !2363)
!2366 = !DILocation(line: 134, column: 7, scope: !2367, inlinedAt: !2363)
!2367 = !DILexicalBlockFile(scope: !2285, file: !2219, discriminator: 2)
!2368 = !DILocation(line: 134, column: 7, scope: !2369, inlinedAt: !2363)
!2369 = !DILexicalBlockFile(scope: !2265, file: !2219, discriminator: 2)
!2370 = !DILocation(line: 118, column: 41, scope: !2287, inlinedAt: !2371)
!2371 = distinct !DILocation(line: 139, column: 16, scope: !2300, inlinedAt: !2363)
!2372 = !DILocation(line: 118, column: 90, scope: !2287, inlinedAt: !2371)
!2373 = !DILocation(line: 118, column: 100, scope: !2287, inlinedAt: !2371)
!2374 = !DILocation(line: 120, column: 7, scope: !2305, inlinedAt: !2371)
!2375 = !DILocation(line: 120, column: 7, scope: !2308, inlinedAt: !2371)
!2376 = !DILocation(line: 104, column: 41, scope: !2310, inlinedAt: !2377)
!2377 = distinct !DILocation(line: 125, column: 16, scope: !2322, inlinedAt: !2371)
!2378 = !DILocation(line: 104, column: 80, scope: !2310, inlinedAt: !2377)
!2379 = !DILocation(line: 104, column: 90, scope: !2310, inlinedAt: !2377)
!2380 = !DILocation(line: 106, column: 7, scope: !2327, inlinedAt: !2377)
!2381 = !DILocation(line: 106, column: 7, scope: !2330, inlinedAt: !2377)
!2382 = !DILocation(line: 90, column: 41, scope: !2332, inlinedAt: !2383)
!2383 = distinct !DILocation(line: 111, column: 16, scope: !2343, inlinedAt: !2377)
!2384 = !DILocation(line: 90, column: 70, scope: !2332, inlinedAt: !2383)
!2385 = !DILocation(line: 90, column: 80, scope: !2332, inlinedAt: !2383)
!2386 = !DILocation(line: 92, column: 7, scope: !2348, inlinedAt: !2383)
!2387 = !DILocation(line: 92, column: 7, scope: !2351, inlinedAt: !2383)
!2388 = !DILocalVariable(name: "s2", arg: 2, scope: !2389, file: !2219, line: 76, type: !17)
!2389 = distinct !DISubprogram(name: "strcaseeq6", scope: !2219, file: !2219, line: 76, type: !2390, isLocal: true, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: true, unit: !99, variables: !2392)
!2390 = !DISubroutineType(types: !2391)
!2391 = !{!48, !17, !17, !7, !7, !7}
!2392 = !{!2393, !2388, !2394, !2395, !2396}
!2393 = !DILocalVariable(name: "s1", arg: 1, scope: !2389, file: !2219, line: 76, type: !17)
!2394 = !DILocalVariable(name: "s26", arg: 3, scope: !2389, file: !2219, line: 76, type: !7)
!2395 = !DILocalVariable(name: "s27", arg: 4, scope: !2389, file: !2219, line: 76, type: !7)
!2396 = !DILocalVariable(name: "s28", arg: 5, scope: !2389, file: !2219, line: 76, type: !7)
!2397 = !DILocation(line: 76, column: 41, scope: !2389, inlinedAt: !2398)
!2398 = distinct !DILocation(line: 97, column: 16, scope: !2399, inlinedAt: !2383)
!2399 = distinct !DILexicalBlock(scope: !2400, file: !2219, line: 94, column: 11)
!2400 = distinct !DILexicalBlock(scope: !2349, file: !2219, line: 93, column: 5)
!2401 = !DILocation(line: 76, column: 60, scope: !2389, inlinedAt: !2398)
!2402 = !DILocation(line: 76, column: 70, scope: !2389, inlinedAt: !2398)
!2403 = !DILocation(line: 78, column: 7, scope: !2404, inlinedAt: !2398)
!2404 = !DILexicalBlockFile(scope: !2405, file: !2219, discriminator: 2)
!2405 = distinct !DILexicalBlock(scope: !2389, file: !2219, line: 78, column: 7)
!2406 = !DILocation(line: 78, column: 7, scope: !2407, inlinedAt: !2398)
!2407 = !DILexicalBlockFile(scope: !2389, file: !2219, discriminator: 2)
!2408 = !DILocalVariable(name: "s2", arg: 2, scope: !2409, file: !2219, line: 62, type: !17)
!2409 = distinct !DISubprogram(name: "strcaseeq7", scope: !2219, file: !2219, line: 62, type: !2410, isLocal: true, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: true, unit: !99, variables: !2412)
!2410 = !DISubroutineType(types: !2411)
!2411 = !{!48, !17, !17, !7, !7}
!2412 = !{!2413, !2408, !2414, !2415}
!2413 = !DILocalVariable(name: "s1", arg: 1, scope: !2409, file: !2219, line: 62, type: !17)
!2414 = !DILocalVariable(name: "s27", arg: 3, scope: !2409, file: !2219, line: 62, type: !7)
!2415 = !DILocalVariable(name: "s28", arg: 4, scope: !2409, file: !2219, line: 62, type: !7)
!2416 = !DILocation(line: 62, column: 41, scope: !2409, inlinedAt: !2417)
!2417 = distinct !DILocation(line: 83, column: 16, scope: !2418, inlinedAt: !2398)
!2418 = distinct !DILexicalBlock(scope: !2419, file: !2219, line: 80, column: 11)
!2419 = distinct !DILexicalBlock(scope: !2405, file: !2219, line: 79, column: 5)
!2420 = !DILocation(line: 62, column: 50, scope: !2409, inlinedAt: !2417)
!2421 = !DILocation(line: 62, column: 60, scope: !2409, inlinedAt: !2417)
!2422 = !DILocation(line: 64, column: 7, scope: !2423, inlinedAt: !2417)
!2423 = !DILexicalBlockFile(scope: !2424, file: !2219, discriminator: 2)
!2424 = distinct !DILexicalBlock(scope: !2409, file: !2219, line: 64, column: 7)
!2425 = !DILocation(line: 228, column: 7, scope: !2200)
!2426 = !DILocation(line: 229, column: 12, scope: !2358)
!2427 = !DILocation(line: 229, column: 21, scope: !2358)
!2428 = !DILocation(line: 229, column: 5, scope: !2358)
!2429 = !DILocation(line: 231, column: 13, scope: !2200)
!2430 = !DILocation(line: 231, column: 11, scope: !2200)
!2431 = !DILocation(line: 231, column: 3, scope: !2200)
!2432 = !DILocation(line: 232, column: 1, scope: !2200)
!2433 = distinct !DISubprogram(name: "quotearg_alloc", scope: !141, file: !141, line: 791, type: !2434, isLocal: false, isDefinition: true, scopeLine: 793, flags: DIFlagPrototyped, isOptimized: true, unit: !99, variables: !2436)
!2434 = !DISubroutineType(types: !2435)
!2435 = !{!6, !17, !9, !1274}
!2436 = !{!2437, !2438, !2439}
!2437 = !DILocalVariable(name: "arg", arg: 1, scope: !2433, file: !141, line: 791, type: !17)
!2438 = !DILocalVariable(name: "argsize", arg: 2, scope: !2433, file: !141, line: 791, type: !9)
!2439 = !DILocalVariable(name: "o", arg: 3, scope: !2433, file: !141, line: 792, type: !1274)
!2440 = !DILocation(line: 791, column: 29, scope: !2433)
!2441 = !DILocation(line: 791, column: 41, scope: !2433)
!2442 = !DILocation(line: 792, column: 47, scope: !2433)
!2443 = !DILocalVariable(name: "arg", arg: 1, scope: !2444, file: !141, line: 804, type: !17)
!2444 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !141, file: !141, line: 804, type: !2445, isLocal: false, isDefinition: true, scopeLine: 806, flags: DIFlagPrototyped, isOptimized: true, unit: !99, variables: !2447)
!2445 = !DISubroutineType(types: !2446)
!2446 = !{!6, !17, !9, !572, !1274}
!2447 = !{!2443, !2448, !2449, !2450, !2451, !2452, !2453, !2454, !2455}
!2448 = !DILocalVariable(name: "argsize", arg: 2, scope: !2444, file: !141, line: 804, type: !9)
!2449 = !DILocalVariable(name: "size", arg: 3, scope: !2444, file: !141, line: 804, type: !572)
!2450 = !DILocalVariable(name: "o", arg: 4, scope: !2444, file: !141, line: 805, type: !1274)
!2451 = !DILocalVariable(name: "p", scope: !2444, file: !141, line: 807, type: !1274)
!2452 = !DILocalVariable(name: "e", scope: !2444, file: !141, line: 808, type: !48)
!2453 = !DILocalVariable(name: "flags", scope: !2444, file: !141, line: 810, type: !48)
!2454 = !DILocalVariable(name: "bufsize", scope: !2444, file: !141, line: 811, type: !9)
!2455 = !DILocalVariable(name: "buf", scope: !2444, file: !141, line: 815, type: !6)
!2456 = !DILocation(line: 804, column: 33, scope: !2444, inlinedAt: !2457)
!2457 = distinct !DILocation(line: 794, column: 10, scope: !2433)
!2458 = !DILocation(line: 804, column: 45, scope: !2444, inlinedAt: !2457)
!2459 = !DILocation(line: 804, column: 62, scope: !2444, inlinedAt: !2457)
!2460 = !DILocation(line: 805, column: 51, scope: !2444, inlinedAt: !2457)
!2461 = !DILocation(line: 807, column: 37, scope: !2444, inlinedAt: !2457)
!2462 = !DILocation(line: 807, column: 33, scope: !2444, inlinedAt: !2457)
!2463 = !DILocation(line: 808, column: 11, scope: !2444, inlinedAt: !2457)
!2464 = !DILocation(line: 808, column: 7, scope: !2444, inlinedAt: !2457)
!2465 = !DILocation(line: 810, column: 18, scope: !2444, inlinedAt: !2457)
!2466 = !DILocation(line: 810, column: 24, scope: !2444, inlinedAt: !2457)
!2467 = !DILocation(line: 810, column: 7, scope: !2444, inlinedAt: !2457)
!2468 = !DILocation(line: 811, column: 69, scope: !2444, inlinedAt: !2457)
!2469 = !DILocation(line: 812, column: 53, scope: !2444, inlinedAt: !2457)
!2470 = !DILocation(line: 813, column: 49, scope: !2444, inlinedAt: !2457)
!2471 = !DILocation(line: 814, column: 49, scope: !2444, inlinedAt: !2457)
!2472 = !DILocation(line: 811, column: 20, scope: !2444, inlinedAt: !2457)
!2473 = !DILocation(line: 814, column: 62, scope: !2444, inlinedAt: !2457)
!2474 = !DILocation(line: 811, column: 10, scope: !2444, inlinedAt: !2457)
!2475 = !DILocalVariable(name: "n", arg: 1, scope: !2476, file: !568, line: 220, type: !9)
!2476 = distinct !DISubprogram(name: "xcharalloc", scope: !568, file: !568, line: 220, type: !2477, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !99, variables: !2479)
!2477 = !DISubroutineType(types: !2478)
!2478 = !{!6, !9}
!2479 = !{!2475}
!2480 = !DILocation(line: 220, column: 20, scope: !2476, inlinedAt: !2481)
!2481 = distinct !DILocation(line: 815, column: 15, scope: !2444, inlinedAt: !2457)
!2482 = !DILocation(line: 222, column: 10, scope: !2476, inlinedAt: !2481)
!2483 = !DILocation(line: 815, column: 9, scope: !2444, inlinedAt: !2457)
!2484 = !DILocation(line: 816, column: 60, scope: !2444, inlinedAt: !2457)
!2485 = !DILocation(line: 818, column: 32, scope: !2444, inlinedAt: !2457)
!2486 = !DILocation(line: 818, column: 47, scope: !2444, inlinedAt: !2457)
!2487 = !DILocation(line: 816, column: 3, scope: !2444, inlinedAt: !2457)
!2488 = !DILocation(line: 819, column: 9, scope: !2444, inlinedAt: !2457)
!2489 = !DILocation(line: 794, column: 3, scope: !2433)
!2490 = !DILocation(line: 804, column: 33, scope: !2444)
!2491 = !DILocation(line: 804, column: 45, scope: !2444)
!2492 = !DILocation(line: 804, column: 62, scope: !2444)
!2493 = !DILocation(line: 805, column: 51, scope: !2444)
!2494 = !DILocation(line: 807, column: 37, scope: !2444)
!2495 = !DILocation(line: 807, column: 33, scope: !2444)
!2496 = !DILocation(line: 808, column: 11, scope: !2444)
!2497 = !DILocation(line: 808, column: 7, scope: !2444)
!2498 = !DILocation(line: 810, column: 18, scope: !2444)
!2499 = !DILocation(line: 810, column: 27, scope: !2444)
!2500 = !DILocation(line: 810, column: 24, scope: !2444)
!2501 = !DILocation(line: 810, column: 7, scope: !2444)
!2502 = !DILocation(line: 811, column: 69, scope: !2444)
!2503 = !DILocation(line: 812, column: 53, scope: !2444)
!2504 = !DILocation(line: 813, column: 49, scope: !2444)
!2505 = !DILocation(line: 814, column: 49, scope: !2444)
!2506 = !DILocation(line: 811, column: 20, scope: !2444)
!2507 = !DILocation(line: 814, column: 62, scope: !2444)
!2508 = !DILocation(line: 811, column: 10, scope: !2444)
!2509 = !DILocation(line: 220, column: 20, scope: !2476, inlinedAt: !2510)
!2510 = distinct !DILocation(line: 815, column: 15, scope: !2444)
!2511 = !DILocation(line: 222, column: 10, scope: !2476, inlinedAt: !2510)
!2512 = !DILocation(line: 815, column: 9, scope: !2444)
!2513 = !DILocation(line: 816, column: 60, scope: !2444)
!2514 = !DILocation(line: 818, column: 32, scope: !2444)
!2515 = !DILocation(line: 818, column: 47, scope: !2444)
!2516 = !DILocation(line: 816, column: 3, scope: !2444)
!2517 = !DILocation(line: 819, column: 9, scope: !2444)
!2518 = !DILocation(line: 820, column: 7, scope: !2444)
!2519 = !DILocation(line: 821, column: 11, scope: !2520)
!2520 = distinct !DILexicalBlock(scope: !2444, file: !141, line: 820, column: 7)
!2521 = !{!2522, !2522, i64 0}
!2522 = !{!"long", !619, i64 0}
!2523 = !DILocation(line: 821, column: 5, scope: !2520)
!2524 = !DILocation(line: 822, column: 3, scope: !2444)
!2525 = distinct !DISubprogram(name: "quotearg_free", scope: !141, file: !141, line: 840, type: !633, isLocal: false, isDefinition: true, scopeLine: 841, flags: DIFlagPrototyped, isOptimized: true, unit: !99, variables: !2526)
!2526 = !{!2527, !2528}
!2527 = !DILocalVariable(name: "sv", scope: !2525, file: !141, line: 842, type: !167)
!2528 = !DILocalVariable(name: "i", scope: !2525, file: !141, line: 843, type: !48)
!2529 = !DILocation(line: 842, column: 24, scope: !2525)
!2530 = !DILocation(line: 842, column: 19, scope: !2525)
!2531 = !DILocation(line: 843, column: 7, scope: !2525)
!2532 = !DILocation(line: 844, column: 19, scope: !2533)
!2533 = !DILexicalBlockFile(scope: !2534, file: !141, discriminator: 1)
!2534 = distinct !DILexicalBlock(scope: !2535, file: !141, line: 844, column: 3)
!2535 = distinct !DILexicalBlock(scope: !2525, file: !141, line: 844, column: 3)
!2536 = !DILocation(line: 844, column: 17, scope: !2533)
!2537 = !DILocation(line: 844, column: 3, scope: !2538)
!2538 = !DILexicalBlockFile(scope: !2535, file: !141, discriminator: 1)
!2539 = !DILocation(line: 845, column: 17, scope: !2534)
!2540 = !{!2541, !618, i64 8}
!2541 = !{!"slotvec", !2522, i64 0, !618, i64 8}
!2542 = !DILocation(line: 845, column: 5, scope: !2534)
!2543 = !DILocation(line: 844, column: 28, scope: !2544)
!2544 = !DILexicalBlockFile(scope: !2534, file: !141, discriminator: 2)
!2545 = distinct !{!2545, !2546, !2547}
!2546 = !DILocation(line: 844, column: 3, scope: !2535)
!2547 = !DILocation(line: 845, column: 20, scope: !2535)
!2548 = !DILocation(line: 846, column: 13, scope: !2549)
!2549 = distinct !DILexicalBlock(scope: !2525, file: !141, line: 846, column: 7)
!2550 = !DILocation(line: 846, column: 17, scope: !2549)
!2551 = !DILocation(line: 846, column: 7, scope: !2525)
!2552 = !DILocation(line: 848, column: 7, scope: !2553)
!2553 = distinct !DILexicalBlock(scope: !2549, file: !141, line: 847, column: 5)
!2554 = !DILocation(line: 849, column: 21, scope: !2553)
!2555 = !{!2541, !2522, i64 0}
!2556 = !DILocation(line: 850, column: 20, scope: !2553)
!2557 = !DILocation(line: 851, column: 5, scope: !2553)
!2558 = !DILocation(line: 852, column: 10, scope: !2559)
!2559 = distinct !DILexicalBlock(scope: !2525, file: !141, line: 852, column: 7)
!2560 = !DILocation(line: 852, column: 7, scope: !2525)
!2561 = !DILocation(line: 854, column: 13, scope: !2562)
!2562 = distinct !DILexicalBlock(scope: !2559, file: !141, line: 853, column: 5)
!2563 = !DILocation(line: 854, column: 7, scope: !2562)
!2564 = !DILocation(line: 855, column: 15, scope: !2562)
!2565 = !DILocation(line: 856, column: 5, scope: !2562)
!2566 = !DILocation(line: 857, column: 10, scope: !2525)
!2567 = !DILocation(line: 858, column: 1, scope: !2525)
!2568 = distinct !DISubprogram(name: "quotearg_n", scope: !141, file: !141, line: 922, type: !2569, isLocal: false, isDefinition: true, scopeLine: 923, flags: DIFlagPrototyped, isOptimized: true, unit: !99, variables: !2571)
!2569 = !DISubroutineType(types: !2570)
!2570 = !{!6, !48, !17}
!2571 = !{!2572, !2573}
!2572 = !DILocalVariable(name: "n", arg: 1, scope: !2568, file: !141, line: 922, type: !48)
!2573 = !DILocalVariable(name: "arg", arg: 2, scope: !2568, file: !141, line: 922, type: !17)
!2574 = !DILocation(line: 922, column: 17, scope: !2568)
!2575 = !DILocation(line: 922, column: 32, scope: !2568)
!2576 = !DILocation(line: 924, column: 10, scope: !2568)
!2577 = !DILocation(line: 924, column: 3, scope: !2568)
!2578 = distinct !DISubprogram(name: "quotearg_n_options", scope: !141, file: !141, line: 869, type: !2579, isLocal: true, isDefinition: true, scopeLine: 871, flags: DIFlagPrototyped, isOptimized: true, unit: !99, variables: !2581)
!2579 = !DISubroutineType(types: !2580)
!2580 = !{!6, !48, !17, !9, !1274}
!2581 = !{!2582, !2583, !2584, !2585, !2586, !2587, !2588, !2591, !2593, !2594, !2595}
!2582 = !DILocalVariable(name: "n", arg: 1, scope: !2578, file: !141, line: 869, type: !48)
!2583 = !DILocalVariable(name: "arg", arg: 2, scope: !2578, file: !141, line: 869, type: !17)
!2584 = !DILocalVariable(name: "argsize", arg: 3, scope: !2578, file: !141, line: 869, type: !9)
!2585 = !DILocalVariable(name: "options", arg: 4, scope: !2578, file: !141, line: 870, type: !1274)
!2586 = !DILocalVariable(name: "e", scope: !2578, file: !141, line: 872, type: !48)
!2587 = !DILocalVariable(name: "sv", scope: !2578, file: !141, line: 874, type: !167)
!2588 = !DILocalVariable(name: "preallocated", scope: !2589, file: !141, line: 881, type: !82)
!2589 = distinct !DILexicalBlock(scope: !2590, file: !141, line: 880, column: 5)
!2590 = distinct !DILexicalBlock(scope: !2578, file: !141, line: 879, column: 7)
!2591 = !DILocalVariable(name: "size", scope: !2592, file: !141, line: 894, type: !9)
!2592 = distinct !DILexicalBlock(scope: !2578, file: !141, line: 893, column: 3)
!2593 = !DILocalVariable(name: "val", scope: !2592, file: !141, line: 895, type: !6)
!2594 = !DILocalVariable(name: "flags", scope: !2592, file: !141, line: 897, type: !48)
!2595 = !DILocalVariable(name: "qsize", scope: !2592, file: !141, line: 898, type: !9)
!2596 = !DILocation(line: 869, column: 25, scope: !2578)
!2597 = !DILocation(line: 869, column: 40, scope: !2578)
!2598 = !DILocation(line: 869, column: 52, scope: !2578)
!2599 = !DILocation(line: 870, column: 51, scope: !2578)
!2600 = !DILocation(line: 872, column: 11, scope: !2578)
!2601 = !DILocation(line: 872, column: 7, scope: !2578)
!2602 = !DILocation(line: 874, column: 24, scope: !2578)
!2603 = !DILocation(line: 874, column: 19, scope: !2578)
!2604 = !DILocation(line: 876, column: 9, scope: !2605)
!2605 = distinct !DILexicalBlock(scope: !2578, file: !141, line: 876, column: 7)
!2606 = !DILocation(line: 876, column: 7, scope: !2578)
!2607 = !DILocation(line: 877, column: 5, scope: !2605)
!2608 = !DILocation(line: 879, column: 7, scope: !2590)
!2609 = !DILocation(line: 879, column: 14, scope: !2590)
!2610 = !DILocation(line: 879, column: 7, scope: !2578)
!2611 = !DILocation(line: 881, column: 31, scope: !2589)
!2612 = !DILocation(line: 883, column: 67, scope: !2613)
!2613 = distinct !DILexicalBlock(scope: !2589, file: !141, line: 883, column: 11)
!2614 = !DILocation(line: 883, column: 11, scope: !2589)
!2615 = !DILocation(line: 884, column: 9, scope: !2613)
!2616 = !DILocation(line: 886, column: 32, scope: !2617)
!2617 = !DILexicalBlockFile(scope: !2589, file: !141, discriminator: 3)
!2618 = !DILocation(line: 886, column: 61, scope: !2617)
!2619 = !DILocation(line: 886, column: 58, scope: !2617)
!2620 = !DILocation(line: 886, column: 66, scope: !2617)
!2621 = !DILocation(line: 886, column: 22, scope: !2617)
!2622 = !DILocation(line: 886, column: 15, scope: !2617)
!2623 = !DILocation(line: 887, column: 11, scope: !2589)
!2624 = !DILocation(line: 888, column: 15, scope: !2625)
!2625 = distinct !DILexicalBlock(scope: !2589, file: !141, line: 887, column: 11)
!2626 = !{i64 0, i64 8, !2521, i64 8, i64 8, !617}
!2627 = !DILocation(line: 888, column: 9, scope: !2625)
!2628 = !DILocation(line: 889, column: 20, scope: !2589)
!2629 = !DILocation(line: 889, column: 18, scope: !2589)
!2630 = !DILocation(line: 889, column: 7, scope: !2589)
!2631 = !DILocation(line: 889, column: 38, scope: !2589)
!2632 = !DILocation(line: 889, column: 31, scope: !2589)
!2633 = !DILocation(line: 889, column: 48, scope: !2589)
!2634 = !DILocation(line: 890, column: 14, scope: !2589)
!2635 = !DILocation(line: 891, column: 5, scope: !2589)
!2636 = !DILocation(line: 894, column: 19, scope: !2592)
!2637 = !DILocation(line: 894, column: 25, scope: !2592)
!2638 = !DILocation(line: 894, column: 12, scope: !2592)
!2639 = !DILocation(line: 895, column: 23, scope: !2592)
!2640 = !DILocation(line: 895, column: 11, scope: !2592)
!2641 = !DILocation(line: 897, column: 26, scope: !2592)
!2642 = !DILocation(line: 897, column: 32, scope: !2592)
!2643 = !DILocation(line: 897, column: 9, scope: !2592)
!2644 = !DILocation(line: 899, column: 55, scope: !2592)
!2645 = !DILocation(line: 900, column: 46, scope: !2592)
!2646 = !DILocation(line: 901, column: 55, scope: !2592)
!2647 = !DILocation(line: 902, column: 55, scope: !2592)
!2648 = !DILocation(line: 898, column: 20, scope: !2592)
!2649 = !DILocation(line: 898, column: 12, scope: !2592)
!2650 = !DILocation(line: 904, column: 14, scope: !2651)
!2651 = distinct !DILexicalBlock(scope: !2592, file: !141, line: 904, column: 9)
!2652 = !DILocation(line: 904, column: 9, scope: !2592)
!2653 = !DILocation(line: 906, column: 35, scope: !2654)
!2654 = distinct !DILexicalBlock(scope: !2651, file: !141, line: 905, column: 7)
!2655 = !DILocation(line: 906, column: 20, scope: !2654)
!2656 = !DILocation(line: 907, column: 17, scope: !2657)
!2657 = distinct !DILexicalBlock(scope: !2654, file: !141, line: 907, column: 13)
!2658 = !DILocation(line: 907, column: 13, scope: !2654)
!2659 = !DILocation(line: 908, column: 11, scope: !2657)
!2660 = !DILocation(line: 220, column: 20, scope: !2476, inlinedAt: !2661)
!2661 = distinct !DILocation(line: 909, column: 27, scope: !2654)
!2662 = !DILocation(line: 222, column: 10, scope: !2476, inlinedAt: !2661)
!2663 = !DILocation(line: 909, column: 19, scope: !2654)
!2664 = !DILocation(line: 910, column: 69, scope: !2654)
!2665 = !DILocation(line: 912, column: 44, scope: !2654)
!2666 = !DILocation(line: 913, column: 44, scope: !2654)
!2667 = !DILocation(line: 910, column: 9, scope: !2654)
!2668 = !DILocation(line: 914, column: 7, scope: !2654)
!2669 = !DILocation(line: 916, column: 11, scope: !2592)
!2670 = !DILocation(line: 917, column: 5, scope: !2592)
!2671 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !141, file: !141, line: 928, type: !2672, isLocal: false, isDefinition: true, scopeLine: 929, flags: DIFlagPrototyped, isOptimized: true, unit: !99, variables: !2674)
!2672 = !DISubroutineType(types: !2673)
!2673 = !{!6, !48, !17, !9}
!2674 = !{!2675, !2676, !2677}
!2675 = !DILocalVariable(name: "n", arg: 1, scope: !2671, file: !141, line: 928, type: !48)
!2676 = !DILocalVariable(name: "arg", arg: 2, scope: !2671, file: !141, line: 928, type: !17)
!2677 = !DILocalVariable(name: "argsize", arg: 3, scope: !2671, file: !141, line: 928, type: !9)
!2678 = !DILocation(line: 928, column: 21, scope: !2671)
!2679 = !DILocation(line: 928, column: 36, scope: !2671)
!2680 = !DILocation(line: 928, column: 48, scope: !2671)
!2681 = !DILocation(line: 930, column: 10, scope: !2671)
!2682 = !DILocation(line: 930, column: 3, scope: !2671)
!2683 = distinct !DISubprogram(name: "quotearg", scope: !141, file: !141, line: 934, type: !2684, isLocal: false, isDefinition: true, scopeLine: 935, flags: DIFlagPrototyped, isOptimized: true, unit: !99, variables: !2686)
!2684 = !DISubroutineType(types: !2685)
!2685 = !{!6, !17}
!2686 = !{!2687}
!2687 = !DILocalVariable(name: "arg", arg: 1, scope: !2683, file: !141, line: 934, type: !17)
!2688 = !DILocation(line: 934, column: 23, scope: !2683)
!2689 = !DILocation(line: 922, column: 17, scope: !2568, inlinedAt: !2690)
!2690 = distinct !DILocation(line: 936, column: 10, scope: !2683)
!2691 = !DILocation(line: 922, column: 32, scope: !2568, inlinedAt: !2690)
!2692 = !DILocation(line: 924, column: 10, scope: !2568, inlinedAt: !2690)
!2693 = !DILocation(line: 936, column: 3, scope: !2683)
!2694 = distinct !DISubprogram(name: "quotearg_mem", scope: !141, file: !141, line: 940, type: !2695, isLocal: false, isDefinition: true, scopeLine: 941, flags: DIFlagPrototyped, isOptimized: true, unit: !99, variables: !2697)
!2695 = !DISubroutineType(types: !2696)
!2696 = !{!6, !17, !9}
!2697 = !{!2698, !2699}
!2698 = !DILocalVariable(name: "arg", arg: 1, scope: !2694, file: !141, line: 940, type: !17)
!2699 = !DILocalVariable(name: "argsize", arg: 2, scope: !2694, file: !141, line: 940, type: !9)
!2700 = !DILocation(line: 940, column: 27, scope: !2694)
!2701 = !DILocation(line: 940, column: 39, scope: !2694)
!2702 = !DILocation(line: 928, column: 21, scope: !2671, inlinedAt: !2703)
!2703 = distinct !DILocation(line: 942, column: 10, scope: !2694)
!2704 = !DILocation(line: 928, column: 36, scope: !2671, inlinedAt: !2703)
!2705 = !DILocation(line: 928, column: 48, scope: !2671, inlinedAt: !2703)
!2706 = !DILocation(line: 930, column: 10, scope: !2671, inlinedAt: !2703)
!2707 = !DILocation(line: 942, column: 3, scope: !2694)
!2708 = distinct !DISubprogram(name: "quotearg_n_style", scope: !141, file: !141, line: 946, type: !2709, isLocal: false, isDefinition: true, scopeLine: 947, flags: DIFlagPrototyped, isOptimized: true, unit: !99, variables: !2711)
!2709 = !DISubroutineType(types: !2710)
!2710 = !{!6, !48, !102, !17}
!2711 = !{!2712, !2713, !2714, !2715}
!2712 = !DILocalVariable(name: "n", arg: 1, scope: !2708, file: !141, line: 946, type: !48)
!2713 = !DILocalVariable(name: "s", arg: 2, scope: !2708, file: !141, line: 946, type: !102)
!2714 = !DILocalVariable(name: "arg", arg: 3, scope: !2708, file: !141, line: 946, type: !17)
!2715 = !DILocalVariable(name: "o", scope: !2708, file: !141, line: 948, type: !1275)
!2716 = !DILocalVariable(name: "o", scope: !2717, file: !141, line: 187, type: !148)
!2717 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !141, file: !141, line: 185, type: !2718, isLocal: true, isDefinition: true, scopeLine: 186, flags: DIFlagPrototyped, isOptimized: true, unit: !99, variables: !2720)
!2718 = !DISubroutineType(types: !2719)
!2719 = !{!148, !102}
!2720 = !{!2721, !2716}
!2721 = !DILocalVariable(name: "style", arg: 1, scope: !2717, file: !141, line: 185, type: !102)
!2722 = !DIExpression(DW_OP_LLVM_fragment, 32, 416)
!2723 = !DILocation(line: 187, column: 26, scope: !2717, inlinedAt: !2724)
!2724 = distinct !DILocation(line: 948, column: 36, scope: !2708)
!2725 = !DILocation(line: 946, column: 23, scope: !2708)
!2726 = !DILocation(line: 946, column: 45, scope: !2708)
!2727 = !DILocation(line: 946, column: 60, scope: !2708)
!2728 = !DILocation(line: 948, column: 3, scope: !2708)
!2729 = !DILocation(line: 948, column: 32, scope: !2708)
!2730 = !DILocation(line: 185, column: 48, scope: !2717, inlinedAt: !2724)
!2731 = !DILocation(line: 187, column: 3, scope: !2717, inlinedAt: !2724)
!2732 = !DIExpression(DW_OP_LLVM_fragment, 0, 32)
!2733 = !DILocation(line: 188, column: 13, scope: !2734, inlinedAt: !2724)
!2734 = distinct !DILexicalBlock(scope: !2717, file: !141, line: 188, column: 7)
!2735 = !DILocation(line: 188, column: 7, scope: !2717, inlinedAt: !2724)
!2736 = !DILocation(line: 189, column: 5, scope: !2734, inlinedAt: !2724)
!2737 = !{!2738}
!2738 = distinct !{!2738, !2739, !"quoting_options_from_style: argument 0"}
!2739 = distinct !{!2739, !"quoting_options_from_style"}
!2740 = !DILocation(line: 191, column: 10, scope: !2717, inlinedAt: !2724)
!2741 = !DILocation(line: 192, column: 1, scope: !2717, inlinedAt: !2724)
!2742 = !DILocation(line: 949, column: 10, scope: !2708)
!2743 = !DILocation(line: 950, column: 1, scope: !2708)
!2744 = !DILocation(line: 949, column: 3, scope: !2708)
!2745 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !141, file: !141, line: 953, type: !2746, isLocal: false, isDefinition: true, scopeLine: 955, flags: DIFlagPrototyped, isOptimized: true, unit: !99, variables: !2748)
!2746 = !DISubroutineType(types: !2747)
!2747 = !{!6, !48, !102, !17, !9}
!2748 = !{!2749, !2750, !2751, !2752, !2753}
!2749 = !DILocalVariable(name: "n", arg: 1, scope: !2745, file: !141, line: 953, type: !48)
!2750 = !DILocalVariable(name: "s", arg: 2, scope: !2745, file: !141, line: 953, type: !102)
!2751 = !DILocalVariable(name: "arg", arg: 3, scope: !2745, file: !141, line: 954, type: !17)
!2752 = !DILocalVariable(name: "argsize", arg: 4, scope: !2745, file: !141, line: 954, type: !9)
!2753 = !DILocalVariable(name: "o", scope: !2745, file: !141, line: 956, type: !1275)
!2754 = !DILocation(line: 187, column: 26, scope: !2717, inlinedAt: !2755)
!2755 = distinct !DILocation(line: 956, column: 36, scope: !2745)
!2756 = !DILocation(line: 953, column: 27, scope: !2745)
!2757 = !DILocation(line: 953, column: 49, scope: !2745)
!2758 = !DILocation(line: 954, column: 35, scope: !2745)
!2759 = !DILocation(line: 954, column: 47, scope: !2745)
!2760 = !DILocation(line: 956, column: 3, scope: !2745)
!2761 = !DILocation(line: 956, column: 32, scope: !2745)
!2762 = !DILocation(line: 185, column: 48, scope: !2717, inlinedAt: !2755)
!2763 = !DILocation(line: 187, column: 3, scope: !2717, inlinedAt: !2755)
!2764 = !DILocation(line: 188, column: 13, scope: !2734, inlinedAt: !2755)
!2765 = !DILocation(line: 188, column: 7, scope: !2717, inlinedAt: !2755)
!2766 = !DILocation(line: 189, column: 5, scope: !2734, inlinedAt: !2755)
!2767 = !{!2768}
!2768 = distinct !{!2768, !2769, !"quoting_options_from_style: argument 0"}
!2769 = distinct !{!2769, !"quoting_options_from_style"}
!2770 = !DILocation(line: 191, column: 10, scope: !2717, inlinedAt: !2755)
!2771 = !DILocation(line: 192, column: 1, scope: !2717, inlinedAt: !2755)
!2772 = !DILocation(line: 957, column: 10, scope: !2745)
!2773 = !DILocation(line: 958, column: 1, scope: !2745)
!2774 = !DILocation(line: 957, column: 3, scope: !2745)
!2775 = distinct !DISubprogram(name: "quotearg_style", scope: !141, file: !141, line: 961, type: !2776, isLocal: false, isDefinition: true, scopeLine: 962, flags: DIFlagPrototyped, isOptimized: true, unit: !99, variables: !2778)
!2776 = !DISubroutineType(types: !2777)
!2777 = !{!6, !102, !17}
!2778 = !{!2779, !2780}
!2779 = !DILocalVariable(name: "s", arg: 1, scope: !2775, file: !141, line: 961, type: !102)
!2780 = !DILocalVariable(name: "arg", arg: 2, scope: !2775, file: !141, line: 961, type: !17)
!2781 = !DILocation(line: 187, column: 26, scope: !2717, inlinedAt: !2782)
!2782 = distinct !DILocation(line: 948, column: 36, scope: !2708, inlinedAt: !2783)
!2783 = distinct !DILocation(line: 963, column: 10, scope: !2775)
!2784 = !DILocation(line: 961, column: 36, scope: !2775)
!2785 = !DILocation(line: 961, column: 51, scope: !2775)
!2786 = !DILocation(line: 946, column: 23, scope: !2708, inlinedAt: !2783)
!2787 = !DILocation(line: 946, column: 45, scope: !2708, inlinedAt: !2783)
!2788 = !DILocation(line: 946, column: 60, scope: !2708, inlinedAt: !2783)
!2789 = !DILocation(line: 948, column: 3, scope: !2708, inlinedAt: !2783)
!2790 = !DILocation(line: 948, column: 32, scope: !2708, inlinedAt: !2783)
!2791 = !DILocation(line: 185, column: 48, scope: !2717, inlinedAt: !2782)
!2792 = !DILocation(line: 187, column: 3, scope: !2717, inlinedAt: !2782)
!2793 = !DILocation(line: 188, column: 13, scope: !2734, inlinedAt: !2782)
!2794 = !DILocation(line: 188, column: 7, scope: !2717, inlinedAt: !2782)
!2795 = !DILocation(line: 189, column: 5, scope: !2734, inlinedAt: !2782)
!2796 = !{!2797}
!2797 = distinct !{!2797, !2798, !"quoting_options_from_style: argument 0"}
!2798 = distinct !{!2798, !"quoting_options_from_style"}
!2799 = !DILocation(line: 191, column: 10, scope: !2717, inlinedAt: !2782)
!2800 = !DILocation(line: 192, column: 1, scope: !2717, inlinedAt: !2782)
!2801 = !DILocation(line: 949, column: 10, scope: !2708, inlinedAt: !2783)
!2802 = !DILocation(line: 950, column: 1, scope: !2708, inlinedAt: !2783)
!2803 = !DILocation(line: 963, column: 3, scope: !2775)
!2804 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !141, file: !141, line: 967, type: !2805, isLocal: false, isDefinition: true, scopeLine: 968, flags: DIFlagPrototyped, isOptimized: true, unit: !99, variables: !2807)
!2805 = !DISubroutineType(types: !2806)
!2806 = !{!6, !102, !17, !9}
!2807 = !{!2808, !2809, !2810}
!2808 = !DILocalVariable(name: "s", arg: 1, scope: !2804, file: !141, line: 967, type: !102)
!2809 = !DILocalVariable(name: "arg", arg: 2, scope: !2804, file: !141, line: 967, type: !17)
!2810 = !DILocalVariable(name: "argsize", arg: 3, scope: !2804, file: !141, line: 967, type: !9)
!2811 = !DILocation(line: 187, column: 26, scope: !2717, inlinedAt: !2812)
!2812 = distinct !DILocation(line: 956, column: 36, scope: !2745, inlinedAt: !2813)
!2813 = distinct !DILocation(line: 969, column: 10, scope: !2804)
!2814 = !DILocation(line: 967, column: 40, scope: !2804)
!2815 = !DILocation(line: 967, column: 55, scope: !2804)
!2816 = !DILocation(line: 967, column: 67, scope: !2804)
!2817 = !DILocation(line: 953, column: 27, scope: !2745, inlinedAt: !2813)
!2818 = !DILocation(line: 953, column: 49, scope: !2745, inlinedAt: !2813)
!2819 = !DILocation(line: 954, column: 35, scope: !2745, inlinedAt: !2813)
!2820 = !DILocation(line: 954, column: 47, scope: !2745, inlinedAt: !2813)
!2821 = !DILocation(line: 956, column: 3, scope: !2745, inlinedAt: !2813)
!2822 = !DILocation(line: 956, column: 32, scope: !2745, inlinedAt: !2813)
!2823 = !DILocation(line: 185, column: 48, scope: !2717, inlinedAt: !2812)
!2824 = !DILocation(line: 187, column: 3, scope: !2717, inlinedAt: !2812)
!2825 = !DILocation(line: 188, column: 13, scope: !2734, inlinedAt: !2812)
!2826 = !DILocation(line: 188, column: 7, scope: !2717, inlinedAt: !2812)
!2827 = !DILocation(line: 189, column: 5, scope: !2734, inlinedAt: !2812)
!2828 = !{!2829}
!2829 = distinct !{!2829, !2830, !"quoting_options_from_style: argument 0"}
!2830 = distinct !{!2830, !"quoting_options_from_style"}
!2831 = !DILocation(line: 191, column: 10, scope: !2717, inlinedAt: !2812)
!2832 = !DILocation(line: 192, column: 1, scope: !2717, inlinedAt: !2812)
!2833 = !DILocation(line: 957, column: 10, scope: !2745, inlinedAt: !2813)
!2834 = !DILocation(line: 958, column: 1, scope: !2745, inlinedAt: !2813)
!2835 = !DILocation(line: 969, column: 3, scope: !2804)
!2836 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !141, file: !141, line: 973, type: !2837, isLocal: false, isDefinition: true, scopeLine: 974, flags: DIFlagPrototyped, isOptimized: true, unit: !99, variables: !2839)
!2837 = !DISubroutineType(types: !2838)
!2838 = !{!6, !17, !9, !7}
!2839 = !{!2840, !2841, !2842, !2843}
!2840 = !DILocalVariable(name: "arg", arg: 1, scope: !2836, file: !141, line: 973, type: !17)
!2841 = !DILocalVariable(name: "argsize", arg: 2, scope: !2836, file: !141, line: 973, type: !9)
!2842 = !DILocalVariable(name: "ch", arg: 3, scope: !2836, file: !141, line: 973, type: !7)
!2843 = !DILocalVariable(name: "options", scope: !2836, file: !141, line: 975, type: !148)
!2844 = !DILocation(line: 973, column: 32, scope: !2836)
!2845 = !DILocation(line: 973, column: 44, scope: !2836)
!2846 = !DILocation(line: 973, column: 58, scope: !2836)
!2847 = !DILocation(line: 975, column: 3, scope: !2836)
!2848 = !DILocation(line: 976, column: 13, scope: !2836)
!2849 = !{i64 0, i64 4, !923, i64 4, i64 4, !729, i64 8, i64 32, !923, i64 40, i64 8, !617, i64 48, i64 8, !617}
!2850 = !DILocation(line: 975, column: 26, scope: !2836)
!2851 = !DILocation(line: 144, column: 43, scope: !1298, inlinedAt: !2852)
!2852 = distinct !DILocation(line: 977, column: 3, scope: !2836)
!2853 = !DILocation(line: 144, column: 51, scope: !1298, inlinedAt: !2852)
!2854 = !DILocation(line: 144, column: 58, scope: !1298, inlinedAt: !2852)
!2855 = !DILocation(line: 146, column: 17, scope: !1298, inlinedAt: !2852)
!2856 = !DILocation(line: 148, column: 62, scope: !1316, inlinedAt: !2852)
!2857 = !DILocation(line: 148, column: 57, scope: !1316, inlinedAt: !2852)
!2858 = !DILocation(line: 147, column: 17, scope: !1298, inlinedAt: !2852)
!2859 = !DILocation(line: 149, column: 18, scope: !1298, inlinedAt: !2852)
!2860 = !DILocation(line: 149, column: 15, scope: !1298, inlinedAt: !2852)
!2861 = !DILocation(line: 149, column: 7, scope: !1298, inlinedAt: !2852)
!2862 = !DILocation(line: 150, column: 12, scope: !1298, inlinedAt: !2852)
!2863 = !DILocation(line: 150, column: 15, scope: !1298, inlinedAt: !2852)
!2864 = !DILocation(line: 150, column: 25, scope: !1298, inlinedAt: !2852)
!2865 = !DILocation(line: 150, column: 7, scope: !1298, inlinedAt: !2852)
!2866 = !DILocation(line: 151, column: 18, scope: !1298, inlinedAt: !2852)
!2867 = !DILocation(line: 151, column: 23, scope: !1298, inlinedAt: !2852)
!2868 = !DILocation(line: 151, column: 6, scope: !1298, inlinedAt: !2852)
!2869 = !DILocation(line: 978, column: 10, scope: !2836)
!2870 = !DILocation(line: 979, column: 1, scope: !2836)
!2871 = !DILocation(line: 978, column: 3, scope: !2836)
!2872 = distinct !DISubprogram(name: "quotearg_char", scope: !141, file: !141, line: 982, type: !2873, isLocal: false, isDefinition: true, scopeLine: 983, flags: DIFlagPrototyped, isOptimized: true, unit: !99, variables: !2875)
!2873 = !DISubroutineType(types: !2874)
!2874 = !{!6, !17, !7}
!2875 = !{!2876, !2877}
!2876 = !DILocalVariable(name: "arg", arg: 1, scope: !2872, file: !141, line: 982, type: !17)
!2877 = !DILocalVariable(name: "ch", arg: 2, scope: !2872, file: !141, line: 982, type: !7)
!2878 = !DILocation(line: 982, column: 28, scope: !2872)
!2879 = !DILocation(line: 982, column: 38, scope: !2872)
!2880 = !DILocation(line: 973, column: 32, scope: !2836, inlinedAt: !2881)
!2881 = distinct !DILocation(line: 984, column: 10, scope: !2872)
!2882 = !DILocation(line: 973, column: 44, scope: !2836, inlinedAt: !2881)
!2883 = !DILocation(line: 973, column: 58, scope: !2836, inlinedAt: !2881)
!2884 = !DILocation(line: 975, column: 3, scope: !2836, inlinedAt: !2881)
!2885 = !DILocation(line: 976, column: 13, scope: !2836, inlinedAt: !2881)
!2886 = !DILocation(line: 975, column: 26, scope: !2836, inlinedAt: !2881)
!2887 = !DILocation(line: 144, column: 43, scope: !1298, inlinedAt: !2888)
!2888 = distinct !DILocation(line: 977, column: 3, scope: !2836, inlinedAt: !2881)
!2889 = !DILocation(line: 144, column: 51, scope: !1298, inlinedAt: !2888)
!2890 = !DILocation(line: 144, column: 58, scope: !1298, inlinedAt: !2888)
!2891 = !DILocation(line: 146, column: 17, scope: !1298, inlinedAt: !2888)
!2892 = !DILocation(line: 148, column: 62, scope: !1316, inlinedAt: !2888)
!2893 = !DILocation(line: 148, column: 57, scope: !1316, inlinedAt: !2888)
!2894 = !DILocation(line: 147, column: 17, scope: !1298, inlinedAt: !2888)
!2895 = !DILocation(line: 149, column: 18, scope: !1298, inlinedAt: !2888)
!2896 = !DILocation(line: 149, column: 15, scope: !1298, inlinedAt: !2888)
!2897 = !DILocation(line: 149, column: 7, scope: !1298, inlinedAt: !2888)
!2898 = !DILocation(line: 150, column: 12, scope: !1298, inlinedAt: !2888)
!2899 = !DILocation(line: 150, column: 15, scope: !1298, inlinedAt: !2888)
!2900 = !DILocation(line: 150, column: 25, scope: !1298, inlinedAt: !2888)
!2901 = !DILocation(line: 150, column: 7, scope: !1298, inlinedAt: !2888)
!2902 = !DILocation(line: 151, column: 18, scope: !1298, inlinedAt: !2888)
!2903 = !DILocation(line: 151, column: 23, scope: !1298, inlinedAt: !2888)
!2904 = !DILocation(line: 151, column: 6, scope: !1298, inlinedAt: !2888)
!2905 = !DILocation(line: 978, column: 10, scope: !2836, inlinedAt: !2881)
!2906 = !DILocation(line: 979, column: 1, scope: !2836, inlinedAt: !2881)
!2907 = !DILocation(line: 984, column: 3, scope: !2872)
!2908 = distinct !DISubprogram(name: "quotearg_colon", scope: !141, file: !141, line: 988, type: !2684, isLocal: false, isDefinition: true, scopeLine: 989, flags: DIFlagPrototyped, isOptimized: true, unit: !99, variables: !2909)
!2909 = !{!2910}
!2910 = !DILocalVariable(name: "arg", arg: 1, scope: !2908, file: !141, line: 988, type: !17)
!2911 = !DILocation(line: 988, column: 29, scope: !2908)
!2912 = !DILocation(line: 982, column: 28, scope: !2872, inlinedAt: !2913)
!2913 = distinct !DILocation(line: 990, column: 10, scope: !2908)
!2914 = !DILocation(line: 982, column: 38, scope: !2872, inlinedAt: !2913)
!2915 = !DILocation(line: 973, column: 32, scope: !2836, inlinedAt: !2916)
!2916 = distinct !DILocation(line: 984, column: 10, scope: !2872, inlinedAt: !2913)
!2917 = !DILocation(line: 973, column: 44, scope: !2836, inlinedAt: !2916)
!2918 = !DILocation(line: 973, column: 58, scope: !2836, inlinedAt: !2916)
!2919 = !DILocation(line: 975, column: 3, scope: !2836, inlinedAt: !2916)
!2920 = !DILocation(line: 976, column: 13, scope: !2836, inlinedAt: !2916)
!2921 = !DILocation(line: 975, column: 26, scope: !2836, inlinedAt: !2916)
!2922 = !DILocation(line: 144, column: 43, scope: !1298, inlinedAt: !2923)
!2923 = distinct !DILocation(line: 977, column: 3, scope: !2836, inlinedAt: !2916)
!2924 = !DILocation(line: 144, column: 51, scope: !1298, inlinedAt: !2923)
!2925 = !DILocation(line: 144, column: 58, scope: !1298, inlinedAt: !2923)
!2926 = !DILocation(line: 146, column: 17, scope: !1298, inlinedAt: !2923)
!2927 = !DILocation(line: 148, column: 57, scope: !1316, inlinedAt: !2923)
!2928 = !DILocation(line: 147, column: 17, scope: !1298, inlinedAt: !2923)
!2929 = !DILocation(line: 149, column: 7, scope: !1298, inlinedAt: !2923)
!2930 = !DILocation(line: 150, column: 12, scope: !1298, inlinedAt: !2923)
!2931 = !DILocation(line: 151, column: 6, scope: !1298, inlinedAt: !2923)
!2932 = !DILocation(line: 978, column: 10, scope: !2836, inlinedAt: !2916)
!2933 = !DILocation(line: 979, column: 1, scope: !2836, inlinedAt: !2916)
!2934 = !DILocation(line: 990, column: 3, scope: !2908)
!2935 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !141, file: !141, line: 994, type: !2695, isLocal: false, isDefinition: true, scopeLine: 995, flags: DIFlagPrototyped, isOptimized: true, unit: !99, variables: !2936)
!2936 = !{!2937, !2938}
!2937 = !DILocalVariable(name: "arg", arg: 1, scope: !2935, file: !141, line: 994, type: !17)
!2938 = !DILocalVariable(name: "argsize", arg: 2, scope: !2935, file: !141, line: 994, type: !9)
!2939 = !DILocation(line: 994, column: 33, scope: !2935)
!2940 = !DILocation(line: 994, column: 45, scope: !2935)
!2941 = !DILocation(line: 973, column: 32, scope: !2836, inlinedAt: !2942)
!2942 = distinct !DILocation(line: 996, column: 10, scope: !2935)
!2943 = !DILocation(line: 973, column: 44, scope: !2836, inlinedAt: !2942)
!2944 = !DILocation(line: 973, column: 58, scope: !2836, inlinedAt: !2942)
!2945 = !DILocation(line: 975, column: 3, scope: !2836, inlinedAt: !2942)
!2946 = !DILocation(line: 976, column: 13, scope: !2836, inlinedAt: !2942)
!2947 = !DILocation(line: 975, column: 26, scope: !2836, inlinedAt: !2942)
!2948 = !DILocation(line: 144, column: 43, scope: !1298, inlinedAt: !2949)
!2949 = distinct !DILocation(line: 977, column: 3, scope: !2836, inlinedAt: !2942)
!2950 = !DILocation(line: 144, column: 51, scope: !1298, inlinedAt: !2949)
!2951 = !DILocation(line: 144, column: 58, scope: !1298, inlinedAt: !2949)
!2952 = !DILocation(line: 146, column: 17, scope: !1298, inlinedAt: !2949)
!2953 = !DILocation(line: 148, column: 57, scope: !1316, inlinedAt: !2949)
!2954 = !DILocation(line: 147, column: 17, scope: !1298, inlinedAt: !2949)
!2955 = !DILocation(line: 149, column: 7, scope: !1298, inlinedAt: !2949)
!2956 = !DILocation(line: 150, column: 12, scope: !1298, inlinedAt: !2949)
!2957 = !DILocation(line: 151, column: 6, scope: !1298, inlinedAt: !2949)
!2958 = !DILocation(line: 978, column: 10, scope: !2836, inlinedAt: !2942)
!2959 = !DILocation(line: 979, column: 1, scope: !2836, inlinedAt: !2942)
!2960 = !DILocation(line: 996, column: 3, scope: !2935)
!2961 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !141, file: !141, line: 1000, type: !2709, isLocal: false, isDefinition: true, scopeLine: 1001, flags: DIFlagPrototyped, isOptimized: true, unit: !99, variables: !2962)
!2962 = !{!2963, !2964, !2965, !2966}
!2963 = !DILocalVariable(name: "n", arg: 1, scope: !2961, file: !141, line: 1000, type: !48)
!2964 = !DILocalVariable(name: "s", arg: 2, scope: !2961, file: !141, line: 1000, type: !102)
!2965 = !DILocalVariable(name: "arg", arg: 3, scope: !2961, file: !141, line: 1000, type: !17)
!2966 = !DILocalVariable(name: "options", scope: !2961, file: !141, line: 1002, type: !148)
!2967 = !DILocation(line: 187, column: 26, scope: !2717, inlinedAt: !2968)
!2968 = distinct !DILocation(line: 1003, column: 13, scope: !2961)
!2969 = !DILocation(line: 1000, column: 29, scope: !2961)
!2970 = !DILocation(line: 1000, column: 51, scope: !2961)
!2971 = !DILocation(line: 1000, column: 66, scope: !2961)
!2972 = !DILocation(line: 1002, column: 3, scope: !2961)
!2973 = !DILocation(line: 185, column: 48, scope: !2717, inlinedAt: !2968)
!2974 = !DILocation(line: 187, column: 3, scope: !2717, inlinedAt: !2968)
!2975 = !DILocation(line: 188, column: 13, scope: !2734, inlinedAt: !2968)
!2976 = !DILocation(line: 188, column: 7, scope: !2717, inlinedAt: !2968)
!2977 = !DILocation(line: 189, column: 5, scope: !2734, inlinedAt: !2968)
!2978 = !{!2979}
!2979 = distinct !{!2979, !2980, !"quoting_options_from_style: argument 0"}
!2980 = distinct !{!2980, !"quoting_options_from_style"}
!2981 = !DILocation(line: 191, column: 10, scope: !2717, inlinedAt: !2968)
!2982 = !DILocation(line: 192, column: 1, scope: !2717, inlinedAt: !2968)
!2983 = !DILocation(line: 1003, column: 13, scope: !2961)
!2984 = !DILocation(line: 1002, column: 26, scope: !2961)
!2985 = !DILocation(line: 144, column: 43, scope: !1298, inlinedAt: !2986)
!2986 = distinct !DILocation(line: 1004, column: 3, scope: !2961)
!2987 = !DILocation(line: 144, column: 51, scope: !1298, inlinedAt: !2986)
!2988 = !DILocation(line: 144, column: 58, scope: !1298, inlinedAt: !2986)
!2989 = !DILocation(line: 146, column: 17, scope: !1298, inlinedAt: !2986)
!2990 = !DILocation(line: 148, column: 57, scope: !1316, inlinedAt: !2986)
!2991 = !DILocation(line: 147, column: 17, scope: !1298, inlinedAt: !2986)
!2992 = !DILocation(line: 149, column: 7, scope: !1298, inlinedAt: !2986)
!2993 = !DILocation(line: 150, column: 12, scope: !1298, inlinedAt: !2986)
!2994 = !DILocation(line: 151, column: 6, scope: !1298, inlinedAt: !2986)
!2995 = !DILocation(line: 1005, column: 10, scope: !2961)
!2996 = !DILocation(line: 1006, column: 1, scope: !2961)
!2997 = !DILocation(line: 1005, column: 3, scope: !2961)
!2998 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !141, file: !141, line: 1009, type: !2999, isLocal: false, isDefinition: true, scopeLine: 1011, flags: DIFlagPrototyped, isOptimized: true, unit: !99, variables: !3001)
!2999 = !DISubroutineType(types: !3000)
!3000 = !{!6, !48, !17, !17, !17}
!3001 = !{!3002, !3003, !3004, !3005}
!3002 = !DILocalVariable(name: "n", arg: 1, scope: !2998, file: !141, line: 1009, type: !48)
!3003 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2998, file: !141, line: 1009, type: !17)
!3004 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2998, file: !141, line: 1010, type: !17)
!3005 = !DILocalVariable(name: "arg", arg: 4, scope: !2998, file: !141, line: 1010, type: !17)
!3006 = !DILocation(line: 1009, column: 24, scope: !2998)
!3007 = !DILocation(line: 1009, column: 39, scope: !2998)
!3008 = !DILocation(line: 1010, column: 32, scope: !2998)
!3009 = !DILocation(line: 1010, column: 57, scope: !2998)
!3010 = !DILocalVariable(name: "n", arg: 1, scope: !3011, file: !141, line: 1017, type: !48)
!3011 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !141, file: !141, line: 1017, type: !3012, isLocal: false, isDefinition: true, scopeLine: 1020, flags: DIFlagPrototyped, isOptimized: true, unit: !99, variables: !3014)
!3012 = !DISubroutineType(types: !3013)
!3013 = !{!6, !48, !17, !17, !17, !9}
!3014 = !{!3010, !3015, !3016, !3017, !3018, !3019}
!3015 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3011, file: !141, line: 1017, type: !17)
!3016 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3011, file: !141, line: 1018, type: !17)
!3017 = !DILocalVariable(name: "arg", arg: 4, scope: !3011, file: !141, line: 1019, type: !17)
!3018 = !DILocalVariable(name: "argsize", arg: 5, scope: !3011, file: !141, line: 1019, type: !9)
!3019 = !DILocalVariable(name: "o", scope: !3011, file: !141, line: 1021, type: !148)
!3020 = !DILocation(line: 1017, column: 28, scope: !3011, inlinedAt: !3021)
!3021 = distinct !DILocation(line: 1012, column: 10, scope: !2998)
!3022 = !DILocation(line: 1017, column: 43, scope: !3011, inlinedAt: !3021)
!3023 = !DILocation(line: 1018, column: 36, scope: !3011, inlinedAt: !3021)
!3024 = !DILocation(line: 1019, column: 36, scope: !3011, inlinedAt: !3021)
!3025 = !DILocation(line: 1019, column: 48, scope: !3011, inlinedAt: !3021)
!3026 = !DILocation(line: 1021, column: 3, scope: !3011, inlinedAt: !3021)
!3027 = !DILocation(line: 1021, column: 30, scope: !3011, inlinedAt: !3021)
!3028 = !DILocation(line: 1021, column: 26, scope: !3011, inlinedAt: !3021)
!3029 = !DILocation(line: 171, column: 45, scope: !1348, inlinedAt: !3030)
!3030 = distinct !DILocation(line: 1022, column: 3, scope: !3011, inlinedAt: !3021)
!3031 = !DILocation(line: 172, column: 33, scope: !1348, inlinedAt: !3030)
!3032 = !DILocation(line: 172, column: 57, scope: !1348, inlinedAt: !3030)
!3033 = !DILocation(line: 176, column: 6, scope: !1348, inlinedAt: !3030)
!3034 = !DILocation(line: 176, column: 12, scope: !1348, inlinedAt: !3030)
!3035 = !DILocation(line: 177, column: 8, scope: !1364, inlinedAt: !3030)
!3036 = !DILocation(line: 177, column: 23, scope: !1366, inlinedAt: !3030)
!3037 = !DILocation(line: 177, column: 19, scope: !1364, inlinedAt: !3030)
!3038 = !DILocation(line: 178, column: 5, scope: !1364, inlinedAt: !3030)
!3039 = !DILocation(line: 179, column: 6, scope: !1348, inlinedAt: !3030)
!3040 = !DILocation(line: 179, column: 17, scope: !1348, inlinedAt: !3030)
!3041 = !DILocation(line: 180, column: 6, scope: !1348, inlinedAt: !3030)
!3042 = !DILocation(line: 180, column: 18, scope: !1348, inlinedAt: !3030)
!3043 = !DILocation(line: 1023, column: 10, scope: !3011, inlinedAt: !3021)
!3044 = !DILocation(line: 1024, column: 1, scope: !3011, inlinedAt: !3021)
!3045 = !DILocation(line: 1012, column: 3, scope: !2998)
!3046 = !DILocation(line: 1017, column: 28, scope: !3011)
!3047 = !DILocation(line: 1017, column: 43, scope: !3011)
!3048 = !DILocation(line: 1018, column: 36, scope: !3011)
!3049 = !DILocation(line: 1019, column: 36, scope: !3011)
!3050 = !DILocation(line: 1019, column: 48, scope: !3011)
!3051 = !DILocation(line: 1021, column: 3, scope: !3011)
!3052 = !DILocation(line: 1021, column: 30, scope: !3011)
!3053 = !DILocation(line: 1021, column: 26, scope: !3011)
!3054 = !DILocation(line: 171, column: 45, scope: !1348, inlinedAt: !3055)
!3055 = distinct !DILocation(line: 1022, column: 3, scope: !3011)
!3056 = !DILocation(line: 172, column: 33, scope: !1348, inlinedAt: !3055)
!3057 = !DILocation(line: 172, column: 57, scope: !1348, inlinedAt: !3055)
!3058 = !DILocation(line: 176, column: 6, scope: !1348, inlinedAt: !3055)
!3059 = !DILocation(line: 176, column: 12, scope: !1348, inlinedAt: !3055)
!3060 = !DILocation(line: 177, column: 8, scope: !1364, inlinedAt: !3055)
!3061 = !DILocation(line: 177, column: 23, scope: !1366, inlinedAt: !3055)
!3062 = !DILocation(line: 177, column: 19, scope: !1364, inlinedAt: !3055)
!3063 = !DILocation(line: 178, column: 5, scope: !1364, inlinedAt: !3055)
!3064 = !DILocation(line: 179, column: 6, scope: !1348, inlinedAt: !3055)
!3065 = !DILocation(line: 179, column: 17, scope: !1348, inlinedAt: !3055)
!3066 = !DILocation(line: 180, column: 6, scope: !1348, inlinedAt: !3055)
!3067 = !DILocation(line: 180, column: 18, scope: !1348, inlinedAt: !3055)
!3068 = !DILocation(line: 1023, column: 10, scope: !3011)
!3069 = !DILocation(line: 1024, column: 1, scope: !3011)
!3070 = !DILocation(line: 1023, column: 3, scope: !3011)
!3071 = distinct !DISubprogram(name: "quotearg_custom", scope: !141, file: !141, line: 1027, type: !3072, isLocal: false, isDefinition: true, scopeLine: 1029, flags: DIFlagPrototyped, isOptimized: true, unit: !99, variables: !3074)
!3072 = !DISubroutineType(types: !3073)
!3073 = !{!6, !17, !17, !17}
!3074 = !{!3075, !3076, !3077}
!3075 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3071, file: !141, line: 1027, type: !17)
!3076 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3071, file: !141, line: 1027, type: !17)
!3077 = !DILocalVariable(name: "arg", arg: 3, scope: !3071, file: !141, line: 1028, type: !17)
!3078 = !DILocation(line: 1027, column: 30, scope: !3071)
!3079 = !DILocation(line: 1027, column: 54, scope: !3071)
!3080 = !DILocation(line: 1028, column: 30, scope: !3071)
!3081 = !DILocation(line: 1009, column: 24, scope: !2998, inlinedAt: !3082)
!3082 = distinct !DILocation(line: 1030, column: 10, scope: !3071)
!3083 = !DILocation(line: 1009, column: 39, scope: !2998, inlinedAt: !3082)
!3084 = !DILocation(line: 1010, column: 32, scope: !2998, inlinedAt: !3082)
!3085 = !DILocation(line: 1010, column: 57, scope: !2998, inlinedAt: !3082)
!3086 = !DILocation(line: 1017, column: 28, scope: !3011, inlinedAt: !3087)
!3087 = distinct !DILocation(line: 1012, column: 10, scope: !2998, inlinedAt: !3082)
!3088 = !DILocation(line: 1017, column: 43, scope: !3011, inlinedAt: !3087)
!3089 = !DILocation(line: 1018, column: 36, scope: !3011, inlinedAt: !3087)
!3090 = !DILocation(line: 1019, column: 36, scope: !3011, inlinedAt: !3087)
!3091 = !DILocation(line: 1019, column: 48, scope: !3011, inlinedAt: !3087)
!3092 = !DILocation(line: 1021, column: 3, scope: !3011, inlinedAt: !3087)
!3093 = !DILocation(line: 1021, column: 30, scope: !3011, inlinedAt: !3087)
!3094 = !DILocation(line: 1021, column: 26, scope: !3011, inlinedAt: !3087)
!3095 = !DILocation(line: 171, column: 45, scope: !1348, inlinedAt: !3096)
!3096 = distinct !DILocation(line: 1022, column: 3, scope: !3011, inlinedAt: !3087)
!3097 = !DILocation(line: 172, column: 33, scope: !1348, inlinedAt: !3096)
!3098 = !DILocation(line: 172, column: 57, scope: !1348, inlinedAt: !3096)
!3099 = !DILocation(line: 176, column: 6, scope: !1348, inlinedAt: !3096)
!3100 = !DILocation(line: 176, column: 12, scope: !1348, inlinedAt: !3096)
!3101 = !DILocation(line: 177, column: 8, scope: !1364, inlinedAt: !3096)
!3102 = !DILocation(line: 177, column: 23, scope: !1366, inlinedAt: !3096)
!3103 = !DILocation(line: 177, column: 19, scope: !1364, inlinedAt: !3096)
!3104 = !DILocation(line: 178, column: 5, scope: !1364, inlinedAt: !3096)
!3105 = !DILocation(line: 179, column: 6, scope: !1348, inlinedAt: !3096)
!3106 = !DILocation(line: 179, column: 17, scope: !1348, inlinedAt: !3096)
!3107 = !DILocation(line: 180, column: 6, scope: !1348, inlinedAt: !3096)
!3108 = !DILocation(line: 180, column: 18, scope: !1348, inlinedAt: !3096)
!3109 = !DILocation(line: 1023, column: 10, scope: !3011, inlinedAt: !3087)
!3110 = !DILocation(line: 1024, column: 1, scope: !3011, inlinedAt: !3087)
!3111 = !DILocation(line: 1030, column: 3, scope: !3071)
!3112 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !141, file: !141, line: 1034, type: !3113, isLocal: false, isDefinition: true, scopeLine: 1036, flags: DIFlagPrototyped, isOptimized: true, unit: !99, variables: !3115)
!3113 = !DISubroutineType(types: !3114)
!3114 = !{!6, !17, !17, !17, !9}
!3115 = !{!3116, !3117, !3118, !3119}
!3116 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3112, file: !141, line: 1034, type: !17)
!3117 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3112, file: !141, line: 1034, type: !17)
!3118 = !DILocalVariable(name: "arg", arg: 3, scope: !3112, file: !141, line: 1035, type: !17)
!3119 = !DILocalVariable(name: "argsize", arg: 4, scope: !3112, file: !141, line: 1035, type: !9)
!3120 = !DILocation(line: 1034, column: 34, scope: !3112)
!3121 = !DILocation(line: 1034, column: 58, scope: !3112)
!3122 = !DILocation(line: 1035, column: 34, scope: !3112)
!3123 = !DILocation(line: 1035, column: 46, scope: !3112)
!3124 = !DILocation(line: 1017, column: 28, scope: !3011, inlinedAt: !3125)
!3125 = distinct !DILocation(line: 1037, column: 10, scope: !3112)
!3126 = !DILocation(line: 1017, column: 43, scope: !3011, inlinedAt: !3125)
!3127 = !DILocation(line: 1018, column: 36, scope: !3011, inlinedAt: !3125)
!3128 = !DILocation(line: 1019, column: 36, scope: !3011, inlinedAt: !3125)
!3129 = !DILocation(line: 1019, column: 48, scope: !3011, inlinedAt: !3125)
!3130 = !DILocation(line: 1021, column: 3, scope: !3011, inlinedAt: !3125)
!3131 = !DILocation(line: 1021, column: 30, scope: !3011, inlinedAt: !3125)
!3132 = !DILocation(line: 1021, column: 26, scope: !3011, inlinedAt: !3125)
!3133 = !DILocation(line: 171, column: 45, scope: !1348, inlinedAt: !3134)
!3134 = distinct !DILocation(line: 1022, column: 3, scope: !3011, inlinedAt: !3125)
!3135 = !DILocation(line: 172, column: 33, scope: !1348, inlinedAt: !3134)
!3136 = !DILocation(line: 172, column: 57, scope: !1348, inlinedAt: !3134)
!3137 = !DILocation(line: 176, column: 6, scope: !1348, inlinedAt: !3134)
!3138 = !DILocation(line: 176, column: 12, scope: !1348, inlinedAt: !3134)
!3139 = !DILocation(line: 177, column: 8, scope: !1364, inlinedAt: !3134)
!3140 = !DILocation(line: 177, column: 23, scope: !1366, inlinedAt: !3134)
!3141 = !DILocation(line: 177, column: 19, scope: !1364, inlinedAt: !3134)
!3142 = !DILocation(line: 178, column: 5, scope: !1364, inlinedAt: !3134)
!3143 = !DILocation(line: 179, column: 6, scope: !1348, inlinedAt: !3134)
!3144 = !DILocation(line: 179, column: 17, scope: !1348, inlinedAt: !3134)
!3145 = !DILocation(line: 180, column: 6, scope: !1348, inlinedAt: !3134)
!3146 = !DILocation(line: 180, column: 18, scope: !1348, inlinedAt: !3134)
!3147 = !DILocation(line: 1023, column: 10, scope: !3011, inlinedAt: !3125)
!3148 = !DILocation(line: 1024, column: 1, scope: !3011, inlinedAt: !3125)
!3149 = !DILocation(line: 1037, column: 3, scope: !3112)
!3150 = distinct !DISubprogram(name: "quote_n_mem", scope: !141, file: !141, line: 1052, type: !3151, isLocal: false, isDefinition: true, scopeLine: 1053, flags: DIFlagPrototyped, isOptimized: true, unit: !99, variables: !3153)
!3151 = !DISubroutineType(types: !3152)
!3152 = !{!17, !48, !17, !9}
!3153 = !{!3154, !3155, !3156}
!3154 = !DILocalVariable(name: "n", arg: 1, scope: !3150, file: !141, line: 1052, type: !48)
!3155 = !DILocalVariable(name: "arg", arg: 2, scope: !3150, file: !141, line: 1052, type: !17)
!3156 = !DILocalVariable(name: "argsize", arg: 3, scope: !3150, file: !141, line: 1052, type: !9)
!3157 = !DILocation(line: 1052, column: 18, scope: !3150)
!3158 = !DILocation(line: 1052, column: 33, scope: !3150)
!3159 = !DILocation(line: 1052, column: 45, scope: !3150)
!3160 = !DILocation(line: 1054, column: 10, scope: !3150)
!3161 = !DILocation(line: 1054, column: 3, scope: !3150)
!3162 = distinct !DISubprogram(name: "quote_mem", scope: !141, file: !141, line: 1058, type: !3163, isLocal: false, isDefinition: true, scopeLine: 1059, flags: DIFlagPrototyped, isOptimized: true, unit: !99, variables: !3165)
!3163 = !DISubroutineType(types: !3164)
!3164 = !{!17, !17, !9}
!3165 = !{!3166, !3167}
!3166 = !DILocalVariable(name: "arg", arg: 1, scope: !3162, file: !141, line: 1058, type: !17)
!3167 = !DILocalVariable(name: "argsize", arg: 2, scope: !3162, file: !141, line: 1058, type: !9)
!3168 = !DILocation(line: 1058, column: 24, scope: !3162)
!3169 = !DILocation(line: 1058, column: 36, scope: !3162)
!3170 = !DILocation(line: 1052, column: 18, scope: !3150, inlinedAt: !3171)
!3171 = distinct !DILocation(line: 1060, column: 10, scope: !3162)
!3172 = !DILocation(line: 1052, column: 33, scope: !3150, inlinedAt: !3171)
!3173 = !DILocation(line: 1052, column: 45, scope: !3150, inlinedAt: !3171)
!3174 = !DILocation(line: 1054, column: 10, scope: !3150, inlinedAt: !3171)
!3175 = !DILocation(line: 1060, column: 3, scope: !3162)
!3176 = distinct !DISubprogram(name: "quote_n", scope: !141, file: !141, line: 1064, type: !3177, isLocal: false, isDefinition: true, scopeLine: 1065, flags: DIFlagPrototyped, isOptimized: true, unit: !99, variables: !3179)
!3177 = !DISubroutineType(types: !3178)
!3178 = !{!17, !48, !17}
!3179 = !{!3180, !3181}
!3180 = !DILocalVariable(name: "n", arg: 1, scope: !3176, file: !141, line: 1064, type: !48)
!3181 = !DILocalVariable(name: "arg", arg: 2, scope: !3176, file: !141, line: 1064, type: !17)
!3182 = !DILocation(line: 1064, column: 14, scope: !3176)
!3183 = !DILocation(line: 1064, column: 29, scope: !3176)
!3184 = !DILocation(line: 1052, column: 18, scope: !3150, inlinedAt: !3185)
!3185 = distinct !DILocation(line: 1066, column: 10, scope: !3176)
!3186 = !DILocation(line: 1052, column: 33, scope: !3150, inlinedAt: !3185)
!3187 = !DILocation(line: 1052, column: 45, scope: !3150, inlinedAt: !3185)
!3188 = !DILocation(line: 1054, column: 10, scope: !3150, inlinedAt: !3185)
!3189 = !DILocation(line: 1066, column: 3, scope: !3176)
!3190 = distinct !DISubprogram(name: "quote", scope: !141, file: !141, line: 1070, type: !3191, isLocal: false, isDefinition: true, scopeLine: 1071, flags: DIFlagPrototyped, isOptimized: true, unit: !99, variables: !3193)
!3191 = !DISubroutineType(types: !3192)
!3192 = !{!17, !17}
!3193 = !{!3194}
!3194 = !DILocalVariable(name: "arg", arg: 1, scope: !3190, file: !141, line: 1070, type: !17)
!3195 = !DILocation(line: 1070, column: 20, scope: !3190)
!3196 = !DILocation(line: 1064, column: 14, scope: !3176, inlinedAt: !3197)
!3197 = distinct !DILocation(line: 1072, column: 10, scope: !3190)
!3198 = !DILocation(line: 1064, column: 29, scope: !3176, inlinedAt: !3197)
!3199 = !DILocation(line: 1052, column: 18, scope: !3150, inlinedAt: !3200)
!3200 = distinct !DILocation(line: 1066, column: 10, scope: !3176, inlinedAt: !3197)
!3201 = !DILocation(line: 1052, column: 33, scope: !3150, inlinedAt: !3200)
!3202 = !DILocation(line: 1052, column: 45, scope: !3150, inlinedAt: !3200)
!3203 = !DILocation(line: 1054, column: 10, scope: !3150, inlinedAt: !3200)
!3204 = !DILocation(line: 1072, column: 3, scope: !3190)
!3205 = distinct !DISubprogram(name: "version_etc_arn", scope: !560, file: !560, line: 62, type: !3206, isLocal: false, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: true, unit: !556, variables: !3261)
!3206 = !DISubroutineType(types: !3207)
!3207 = !{null, !3208, !17, !17, !17, !3260, !9}
!3208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3209, size: 64)
!3209 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3210, line: 49, baseType: !3211)
!3210 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3212, line: 241, size: 1728, elements: !3213)
!3212 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3213 = !{!3214, !3215, !3216, !3217, !3218, !3219, !3220, !3221, !3222, !3223, !3224, !3225, !3226, !3234, !3235, !3236, !3237, !3239, !3240, !3241, !3245, !3248, !3250, !3251, !3252, !3253, !3254, !3255, !3256}
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3211, file: !3212, line: 242, baseType: !48, size: 32)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3211, file: !3212, line: 247, baseType: !6, size: 64, offset: 64)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3211, file: !3212, line: 248, baseType: !6, size: 64, offset: 128)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3211, file: !3212, line: 249, baseType: !6, size: 64, offset: 192)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3211, file: !3212, line: 250, baseType: !6, size: 64, offset: 256)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3211, file: !3212, line: 251, baseType: !6, size: 64, offset: 320)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3211, file: !3212, line: 252, baseType: !6, size: 64, offset: 384)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3211, file: !3212, line: 253, baseType: !6, size: 64, offset: 448)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3211, file: !3212, line: 254, baseType: !6, size: 64, offset: 512)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3211, file: !3212, line: 256, baseType: !6, size: 64, offset: 576)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3211, file: !3212, line: 257, baseType: !6, size: 64, offset: 640)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3211, file: !3212, line: 258, baseType: !6, size: 64, offset: 704)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3211, file: !3212, line: 260, baseType: !3227, size: 64, offset: 768)
!3227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3228, size: 64)
!3228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !3212, line: 156, size: 192, elements: !3229)
!3229 = !{!3230, !3231, !3233}
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3228, file: !3212, line: 157, baseType: !3227, size: 64)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3228, file: !3212, line: 158, baseType: !3232, size: 64, offset: 64)
!3232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3211, size: 64)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3228, file: !3212, line: 162, baseType: !48, size: 32, offset: 128)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3211, file: !3212, line: 262, baseType: !3232, size: 64, offset: 832)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3211, file: !3212, line: 264, baseType: !48, size: 32, offset: 896)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3211, file: !3212, line: 268, baseType: !48, size: 32, offset: 928)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3211, file: !3212, line: 270, baseType: !3238, size: 64, offset: 960)
!3238 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !961, line: 140, baseType: !962)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3211, file: !3212, line: 274, baseType: !137, size: 16, offset: 1024)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3211, file: !3212, line: 275, baseType: !555, size: 8, offset: 1040)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3211, file: !3212, line: 276, baseType: !3242, size: 8, offset: 1048)
!3242 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 8, elements: !3243)
!3243 = !{!3244}
!3244 = !DISubrange(count: 1)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3211, file: !3212, line: 280, baseType: !3246, size: 64, offset: 1088)
!3246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3247, size: 64)
!3247 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !3212, line: 150, baseType: null)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3211, file: !3212, line: 289, baseType: !3249, size: 64, offset: 1152)
!3249 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !961, line: 141, baseType: !962)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3211, file: !3212, line: 297, baseType: !8, size: 64, offset: 1216)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3211, file: !3212, line: 298, baseType: !8, size: 64, offset: 1280)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3211, file: !3212, line: 299, baseType: !8, size: 64, offset: 1344)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3211, file: !3212, line: 300, baseType: !8, size: 64, offset: 1408)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3211, file: !3212, line: 302, baseType: !9, size: 64, offset: 1472)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3211, file: !3212, line: 303, baseType: !48, size: 32, offset: 1536)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3211, file: !3212, line: 305, baseType: !3257, size: 160, offset: 1568)
!3257 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 160, elements: !3258)
!3258 = !{!3259}
!3259 = !DISubrange(count: 20)
!3260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64)
!3261 = !{!3262, !3263, !3264, !3265, !3266, !3267}
!3262 = !DILocalVariable(name: "stream", arg: 1, scope: !3205, file: !560, line: 62, type: !3208)
!3263 = !DILocalVariable(name: "command_name", arg: 2, scope: !3205, file: !560, line: 63, type: !17)
!3264 = !DILocalVariable(name: "package", arg: 3, scope: !3205, file: !560, line: 63, type: !17)
!3265 = !DILocalVariable(name: "version", arg: 4, scope: !3205, file: !560, line: 64, type: !17)
!3266 = !DILocalVariable(name: "authors", arg: 5, scope: !3205, file: !560, line: 65, type: !3260)
!3267 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3205, file: !560, line: 65, type: !9)
!3268 = !DILocation(line: 62, column: 24, scope: !3205)
!3269 = !DILocation(line: 63, column: 30, scope: !3205)
!3270 = !DILocation(line: 63, column: 56, scope: !3205)
!3271 = !DILocation(line: 64, column: 30, scope: !3205)
!3272 = !DILocation(line: 65, column: 39, scope: !3205)
!3273 = !DILocation(line: 65, column: 55, scope: !3205)
!3274 = !DILocation(line: 67, column: 7, scope: !3275)
!3275 = distinct !DILexicalBlock(scope: !3205, file: !560, line: 67, column: 7)
!3276 = !DILocation(line: 67, column: 7, scope: !3205)
!3277 = !DILocation(line: 68, column: 5, scope: !3275)
!3278 = !DILocation(line: 70, column: 5, scope: !3275)
!3279 = !DILocation(line: 84, column: 3, scope: !3205)
!3280 = !DILocation(line: 84, column: 3, scope: !3281)
!3281 = !DILexicalBlockFile(scope: !3205, file: !560, discriminator: 1)
!3282 = !DILocation(line: 86, column: 3, scope: !3205)
!3283 = !DILocation(line: 86, column: 3, scope: !3281)
!3284 = !DILocation(line: 95, column: 3, scope: !3205)
!3285 = !DILocation(line: 99, column: 7, scope: !3286)
!3286 = distinct !DILexicalBlock(scope: !3205, file: !560, line: 96, column: 5)
!3287 = !DILocation(line: 102, column: 7, scope: !3286)
!3288 = !DILocation(line: 102, column: 7, scope: !3289)
!3289 = !DILexicalBlockFile(scope: !3286, file: !560, discriminator: 1)
!3290 = !DILocation(line: 103, column: 7, scope: !3286)
!3291 = !DILocation(line: 106, column: 7, scope: !3286)
!3292 = !DILocation(line: 106, column: 7, scope: !3289)
!3293 = !DILocation(line: 107, column: 7, scope: !3286)
!3294 = !DILocation(line: 110, column: 7, scope: !3286)
!3295 = !DILocation(line: 110, column: 7, scope: !3289)
!3296 = !DILocation(line: 112, column: 7, scope: !3286)
!3297 = !DILocation(line: 117, column: 7, scope: !3286)
!3298 = !DILocation(line: 117, column: 7, scope: !3289)
!3299 = !DILocation(line: 119, column: 7, scope: !3286)
!3300 = !DILocation(line: 124, column: 7, scope: !3286)
!3301 = !DILocation(line: 124, column: 7, scope: !3289)
!3302 = !DILocation(line: 126, column: 7, scope: !3286)
!3303 = !DILocation(line: 131, column: 7, scope: !3286)
!3304 = !DILocation(line: 131, column: 7, scope: !3289)
!3305 = !DILocation(line: 134, column: 7, scope: !3286)
!3306 = !DILocation(line: 139, column: 7, scope: !3286)
!3307 = !DILocation(line: 139, column: 7, scope: !3289)
!3308 = !DILocation(line: 142, column: 7, scope: !3286)
!3309 = !DILocation(line: 147, column: 7, scope: !3286)
!3310 = !DILocation(line: 147, column: 7, scope: !3289)
!3311 = !DILocation(line: 151, column: 7, scope: !3286)
!3312 = !DILocation(line: 156, column: 7, scope: !3286)
!3313 = !DILocation(line: 156, column: 7, scope: !3289)
!3314 = !DILocation(line: 160, column: 7, scope: !3286)
!3315 = !DILocation(line: 167, column: 7, scope: !3286)
!3316 = !DILocation(line: 167, column: 7, scope: !3289)
!3317 = !DILocation(line: 171, column: 7, scope: !3286)
!3318 = !DILocation(line: 173, column: 1, scope: !3205)
!3319 = distinct !DISubprogram(name: "version_etc_ar", scope: !560, file: !560, line: 180, type: !3320, isLocal: false, isDefinition: true, scopeLine: 183, flags: DIFlagPrototyped, isOptimized: true, unit: !556, variables: !3322)
!3320 = !DISubroutineType(types: !3321)
!3321 = !{null, !3208, !17, !17, !17, !3260}
!3322 = !{!3323, !3324, !3325, !3326, !3327, !3328}
!3323 = !DILocalVariable(name: "stream", arg: 1, scope: !3319, file: !560, line: 180, type: !3208)
!3324 = !DILocalVariable(name: "command_name", arg: 2, scope: !3319, file: !560, line: 181, type: !17)
!3325 = !DILocalVariable(name: "package", arg: 3, scope: !3319, file: !560, line: 181, type: !17)
!3326 = !DILocalVariable(name: "version", arg: 4, scope: !3319, file: !560, line: 182, type: !17)
!3327 = !DILocalVariable(name: "authors", arg: 5, scope: !3319, file: !560, line: 182, type: !3260)
!3328 = !DILocalVariable(name: "n_authors", scope: !3319, file: !560, line: 184, type: !9)
!3329 = !DILocation(line: 180, column: 23, scope: !3319)
!3330 = !DILocation(line: 181, column: 29, scope: !3319)
!3331 = !DILocation(line: 181, column: 55, scope: !3319)
!3332 = !DILocation(line: 182, column: 29, scope: !3319)
!3333 = !DILocation(line: 182, column: 59, scope: !3319)
!3334 = !DILocation(line: 184, column: 10, scope: !3319)
!3335 = !DILocation(line: 186, column: 8, scope: !3336)
!3336 = distinct !DILexicalBlock(scope: !3319, file: !560, line: 186, column: 3)
!3337 = !DILocation(line: 186, column: 23, scope: !3338)
!3338 = !DILexicalBlockFile(scope: !3339, file: !560, discriminator: 1)
!3339 = distinct !DILexicalBlock(scope: !3336, file: !560, line: 186, column: 3)
!3340 = !DILocation(line: 186, column: 3, scope: !3341)
!3341 = !DILexicalBlockFile(scope: !3336, file: !560, discriminator: 1)
!3342 = !DILocation(line: 186, column: 52, scope: !3343)
!3343 = !DILexicalBlockFile(scope: !3339, file: !560, discriminator: 3)
!3344 = distinct !{!3344, !3345, !3346}
!3345 = !DILocation(line: 186, column: 3, scope: !3336)
!3346 = !DILocation(line: 187, column: 5, scope: !3336)
!3347 = !DILocation(line: 188, column: 3, scope: !3319)
!3348 = !DILocation(line: 189, column: 1, scope: !3319)
!3349 = distinct !DISubprogram(name: "version_etc_va", scope: !560, file: !560, line: 196, type: !3350, isLocal: false, isDefinition: true, scopeLine: 199, flags: DIFlagPrototyped, isOptimized: true, unit: !556, variables: !3359)
!3350 = !DISubroutineType(types: !3351)
!3351 = !{null, !3208, !17, !17, !17, !3352}
!3352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3353, size: 64)
!3353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !557, line: 189, size: 192, elements: !3354)
!3354 = !{!3355, !3356, !3357, !3358}
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !3353, file: !557, line: 189, baseType: !19, size: 32)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !3353, file: !557, line: 189, baseType: !19, size: 32, offset: 32)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !3353, file: !557, line: 189, baseType: !8, size: 64, offset: 64)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !3353, file: !557, line: 189, baseType: !8, size: 64, offset: 128)
!3359 = !{!3360, !3361, !3362, !3363, !3364, !3365, !3366}
!3360 = !DILocalVariable(name: "stream", arg: 1, scope: !3349, file: !560, line: 196, type: !3208)
!3361 = !DILocalVariable(name: "command_name", arg: 2, scope: !3349, file: !560, line: 197, type: !17)
!3362 = !DILocalVariable(name: "package", arg: 3, scope: !3349, file: !560, line: 197, type: !17)
!3363 = !DILocalVariable(name: "version", arg: 4, scope: !3349, file: !560, line: 198, type: !17)
!3364 = !DILocalVariable(name: "authors", arg: 5, scope: !3349, file: !560, line: 198, type: !3352)
!3365 = !DILocalVariable(name: "n_authors", scope: !3349, file: !560, line: 200, type: !9)
!3366 = !DILocalVariable(name: "authtab", scope: !3349, file: !560, line: 201, type: !3367)
!3367 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 640, elements: !144)
!3368 = !DILocation(line: 196, column: 23, scope: !3349)
!3369 = !DILocation(line: 197, column: 29, scope: !3349)
!3370 = !DILocation(line: 197, column: 55, scope: !3349)
!3371 = !DILocation(line: 198, column: 29, scope: !3349)
!3372 = !DILocation(line: 198, column: 46, scope: !3349)
!3373 = !DILocation(line: 201, column: 3, scope: !3349)
!3374 = !DILocation(line: 201, column: 15, scope: !3349)
!3375 = !DILocation(line: 200, column: 10, scope: !3349)
!3376 = !DILocation(line: 205, column: 35, scope: !3377)
!3377 = !DILexicalBlockFile(scope: !3378, file: !560, discriminator: 1)
!3378 = distinct !DILexicalBlock(scope: !3379, file: !560, line: 203, column: 3)
!3379 = distinct !DILexicalBlock(scope: !3349, file: !560, line: 203, column: 3)
!3380 = !DILocation(line: 205, column: 35, scope: !3381)
!3381 = !DILexicalBlockFile(scope: !3378, file: !560, discriminator: 2)
!3382 = !DILocation(line: 205, column: 35, scope: !3383)
!3383 = !DILexicalBlockFile(scope: !3378, file: !560, discriminator: 3)
!3384 = !DILocation(line: 205, column: 35, scope: !3385)
!3385 = !DILexicalBlockFile(scope: !3378, file: !560, discriminator: 4)
!3386 = !DILocation(line: 205, column: 14, scope: !3385)
!3387 = !DILocation(line: 205, column: 33, scope: !3385)
!3388 = !DILocation(line: 205, column: 67, scope: !3385)
!3389 = !DILocation(line: 203, column: 3, scope: !3390)
!3390 = !DILexicalBlockFile(scope: !3379, file: !560, discriminator: 1)
!3391 = !DILocation(line: 208, column: 3, scope: !3349)
!3392 = !DILocation(line: 210, column: 1, scope: !3349)
!3393 = distinct !DISubprogram(name: "version_etc", scope: !560, file: !560, line: 227, type: !3394, isLocal: false, isDefinition: true, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: true, unit: !556, variables: !3396)
!3394 = !DISubroutineType(types: !3395)
!3395 = !{null, !3208, !17, !17, !17, null}
!3396 = !{!3397, !3398, !3399, !3400, !3401}
!3397 = !DILocalVariable(name: "stream", arg: 1, scope: !3393, file: !560, line: 227, type: !3208)
!3398 = !DILocalVariable(name: "command_name", arg: 2, scope: !3393, file: !560, line: 228, type: !17)
!3399 = !DILocalVariable(name: "package", arg: 3, scope: !3393, file: !560, line: 228, type: !17)
!3400 = !DILocalVariable(name: "version", arg: 4, scope: !3393, file: !560, line: 229, type: !17)
!3401 = !DILocalVariable(name: "authors", scope: !3393, file: !560, line: 231, type: !3402)
!3402 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !3210, line: 80, baseType: !3403)
!3403 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !3404, line: 50, baseType: !3405)
!3404 = !DIFile(filename: "/usr/bin/../lib/clang/4.0.1/include/stdarg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3405 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !557, line: 231, baseType: !3406)
!3406 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3353, size: 192, elements: !3243)
!3407 = !DILocation(line: 227, column: 20, scope: !3393)
!3408 = !DILocation(line: 228, column: 26, scope: !3393)
!3409 = !DILocation(line: 228, column: 52, scope: !3393)
!3410 = !DILocation(line: 229, column: 26, scope: !3393)
!3411 = !DILocation(line: 231, column: 3, scope: !3393)
!3412 = !DILocation(line: 231, column: 11, scope: !3393)
!3413 = !DILocation(line: 233, column: 3, scope: !3393)
!3414 = !DILocation(line: 234, column: 3, scope: !3393)
!3415 = !DILocation(line: 235, column: 3, scope: !3393)
!3416 = !DILocation(line: 236, column: 1, scope: !3393)
!3417 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !560, file: !560, line: 239, type: !633, isLocal: false, isDefinition: true, scopeLine: 240, flags: DIFlagPrototyped, isOptimized: true, unit: !556, variables: !4)
!3418 = !DILocation(line: 245, column: 3, scope: !3417)
!3419 = !DILocation(line: 245, column: 3, scope: !3420)
!3420 = !DILexicalBlockFile(scope: !3417, file: !560, discriminator: 1)
!3421 = !DILocation(line: 251, column: 3, scope: !3417)
!3422 = !DILocation(line: 251, column: 3, scope: !3420)
!3423 = !DILocation(line: 256, column: 3, scope: !3417)
!3424 = !DILocation(line: 256, column: 3, scope: !3420)
!3425 = !DILocation(line: 258, column: 1, scope: !3417)
!3426 = distinct !DISubprogram(name: "xnmalloc", scope: !568, file: !568, line: 105, type: !3427, isLocal: false, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: true, unit: !564, variables: !3429)
!3427 = !DISubroutineType(types: !3428)
!3428 = !{!8, !9, !9}
!3429 = !{!3430, !3431}
!3430 = !DILocalVariable(name: "n", arg: 1, scope: !3426, file: !568, line: 105, type: !9)
!3431 = !DILocalVariable(name: "s", arg: 2, scope: !3426, file: !568, line: 105, type: !9)
!3432 = !DILocation(line: 105, column: 18, scope: !3426)
!3433 = !DILocation(line: 105, column: 28, scope: !3426)
!3434 = !DILocation(line: 107, column: 7, scope: !3435)
!3435 = distinct !DILexicalBlock(scope: !3426, file: !568, line: 107, column: 7)
!3436 = !DILocation(line: 107, column: 7, scope: !3426)
!3437 = !DILocation(line: 108, column: 5, scope: !3435)
!3438 = !DILocation(line: 109, column: 21, scope: !3426)
!3439 = !DILocalVariable(name: "n", arg: 1, scope: !3440, file: !3441, line: 39, type: !9)
!3440 = distinct !DISubprogram(name: "xmalloc", scope: !3441, file: !3441, line: 39, type: !3442, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !564, variables: !3444)
!3441 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3442 = !DISubroutineType(types: !3443)
!3443 = !{!8, !9}
!3444 = !{!3439, !3445}
!3445 = !DILocalVariable(name: "p", scope: !3440, file: !3441, line: 41, type: !8)
!3446 = !DILocation(line: 39, column: 17, scope: !3440, inlinedAt: !3447)
!3447 = distinct !DILocation(line: 109, column: 10, scope: !3426)
!3448 = !DILocation(line: 41, column: 13, scope: !3440, inlinedAt: !3447)
!3449 = !DILocation(line: 41, column: 9, scope: !3440, inlinedAt: !3447)
!3450 = !DILocation(line: 42, column: 8, scope: !3451, inlinedAt: !3447)
!3451 = distinct !DILexicalBlock(scope: !3440, file: !3441, line: 42, column: 7)
!3452 = !DILocation(line: 42, column: 15, scope: !3453, inlinedAt: !3447)
!3453 = !DILexicalBlockFile(scope: !3451, file: !3441, discriminator: 1)
!3454 = !DILocation(line: 42, column: 10, scope: !3451, inlinedAt: !3447)
!3455 = !DILocation(line: 43, column: 5, scope: !3451, inlinedAt: !3447)
!3456 = !DILocation(line: 109, column: 3, scope: !3426)
!3457 = !DILocation(line: 39, column: 17, scope: !3440)
!3458 = !DILocation(line: 41, column: 13, scope: !3440)
!3459 = !DILocation(line: 41, column: 9, scope: !3440)
!3460 = !DILocation(line: 42, column: 8, scope: !3451)
!3461 = !DILocation(line: 42, column: 15, scope: !3453)
!3462 = !DILocation(line: 42, column: 10, scope: !3451)
!3463 = !DILocation(line: 43, column: 5, scope: !3451)
!3464 = !DILocation(line: 44, column: 3, scope: !3440)
!3465 = distinct !DISubprogram(name: "xnrealloc", scope: !568, file: !568, line: 118, type: !3466, isLocal: false, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !564, variables: !3468)
!3466 = !DISubroutineType(types: !3467)
!3467 = !{!8, !8, !9, !9}
!3468 = !{!3469, !3470, !3471}
!3469 = !DILocalVariable(name: "p", arg: 1, scope: !3465, file: !568, line: 118, type: !8)
!3470 = !DILocalVariable(name: "n", arg: 2, scope: !3465, file: !568, line: 118, type: !9)
!3471 = !DILocalVariable(name: "s", arg: 3, scope: !3465, file: !568, line: 118, type: !9)
!3472 = !DILocation(line: 118, column: 18, scope: !3465)
!3473 = !DILocation(line: 118, column: 28, scope: !3465)
!3474 = !DILocation(line: 118, column: 38, scope: !3465)
!3475 = !DILocation(line: 120, column: 7, scope: !3476)
!3476 = distinct !DILexicalBlock(scope: !3465, file: !568, line: 120, column: 7)
!3477 = !DILocation(line: 120, column: 7, scope: !3465)
!3478 = !DILocation(line: 121, column: 5, scope: !3476)
!3479 = !DILocation(line: 122, column: 25, scope: !3465)
!3480 = !DILocalVariable(name: "p", arg: 1, scope: !3481, file: !3441, line: 51, type: !8)
!3481 = distinct !DISubprogram(name: "xrealloc", scope: !3441, file: !3441, line: 51, type: !3482, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !564, variables: !3484)
!3482 = !DISubroutineType(types: !3483)
!3483 = !{!8, !8, !9}
!3484 = !{!3480, !3485}
!3485 = !DILocalVariable(name: "n", arg: 2, scope: !3481, file: !3441, line: 51, type: !9)
!3486 = !DILocation(line: 51, column: 17, scope: !3481, inlinedAt: !3487)
!3487 = distinct !DILocation(line: 122, column: 10, scope: !3465)
!3488 = !DILocation(line: 51, column: 27, scope: !3481, inlinedAt: !3487)
!3489 = !DILocation(line: 53, column: 8, scope: !3490, inlinedAt: !3487)
!3490 = distinct !DILexicalBlock(scope: !3481, file: !3441, line: 53, column: 7)
!3491 = !DILocation(line: 53, column: 13, scope: !3492, inlinedAt: !3487)
!3492 = !DILexicalBlockFile(scope: !3490, file: !3441, discriminator: 1)
!3493 = !DILocation(line: 53, column: 10, scope: !3490, inlinedAt: !3487)
!3494 = !DILocation(line: 57, column: 7, scope: !3495, inlinedAt: !3487)
!3495 = distinct !DILexicalBlock(scope: !3490, file: !3441, line: 54, column: 5)
!3496 = !DILocation(line: 58, column: 7, scope: !3495, inlinedAt: !3487)
!3497 = !DILocation(line: 61, column: 7, scope: !3481, inlinedAt: !3487)
!3498 = !DILocation(line: 62, column: 8, scope: !3499, inlinedAt: !3487)
!3499 = distinct !DILexicalBlock(scope: !3481, file: !3441, line: 62, column: 7)
!3500 = !DILocation(line: 62, column: 13, scope: !3501, inlinedAt: !3487)
!3501 = !DILexicalBlockFile(scope: !3499, file: !3441, discriminator: 1)
!3502 = !DILocation(line: 62, column: 10, scope: !3499, inlinedAt: !3487)
!3503 = !DILocation(line: 63, column: 5, scope: !3499, inlinedAt: !3487)
!3504 = !DILocation(line: 122, column: 3, scope: !3465)
!3505 = !DILocation(line: 51, column: 17, scope: !3481)
!3506 = !DILocation(line: 51, column: 27, scope: !3481)
!3507 = !DILocation(line: 53, column: 8, scope: !3490)
!3508 = !DILocation(line: 53, column: 13, scope: !3492)
!3509 = !DILocation(line: 53, column: 10, scope: !3490)
!3510 = !DILocation(line: 57, column: 7, scope: !3495)
!3511 = !DILocation(line: 58, column: 7, scope: !3495)
!3512 = !DILocation(line: 61, column: 7, scope: !3481)
!3513 = !DILocation(line: 62, column: 8, scope: !3499)
!3514 = !DILocation(line: 62, column: 13, scope: !3501)
!3515 = !DILocation(line: 62, column: 10, scope: !3499)
!3516 = !DILocation(line: 63, column: 5, scope: !3499)
!3517 = !DILocation(line: 65, column: 1, scope: !3481)
!3518 = !DILocation(line: 180, column: 19, scope: !569)
!3519 = !DILocation(line: 180, column: 30, scope: !569)
!3520 = !DILocation(line: 180, column: 41, scope: !569)
!3521 = !DILocation(line: 182, column: 14, scope: !569)
!3522 = !DILocation(line: 182, column: 10, scope: !569)
!3523 = !DILocation(line: 184, column: 9, scope: !3524)
!3524 = distinct !DILexicalBlock(scope: !569, file: !568, line: 184, column: 7)
!3525 = !DILocation(line: 184, column: 7, scope: !569)
!3526 = !DILocation(line: 186, column: 13, scope: !3527)
!3527 = distinct !DILexicalBlock(scope: !3528, file: !568, line: 186, column: 11)
!3528 = distinct !DILexicalBlock(scope: !3524, file: !568, line: 185, column: 5)
!3529 = !DILocation(line: 186, column: 11, scope: !3528)
!3530 = !DILocation(line: 194, column: 30, scope: !3531)
!3531 = distinct !DILexicalBlock(scope: !3527, file: !568, line: 187, column: 9)
!3532 = !DILocation(line: 195, column: 16, scope: !3531)
!3533 = !DILocation(line: 195, column: 13, scope: !3531)
!3534 = !DILocation(line: 196, column: 9, scope: !3531)
!3535 = !DILocation(line: 204, column: 69, scope: !3536)
!3536 = distinct !DILexicalBlock(scope: !3537, file: !568, line: 204, column: 11)
!3537 = distinct !DILexicalBlock(scope: !3524, file: !568, line: 199, column: 5)
!3538 = !DILocation(line: 205, column: 11, scope: !3536)
!3539 = !DILocation(line: 204, column: 11, scope: !3537)
!3540 = !DILocation(line: 206, column: 9, scope: !3536)
!3541 = !DILocation(line: 210, column: 7, scope: !569)
!3542 = !DILocation(line: 211, column: 25, scope: !569)
!3543 = !DILocation(line: 51, column: 17, scope: !3481, inlinedAt: !3544)
!3544 = distinct !DILocation(line: 211, column: 10, scope: !569)
!3545 = !DILocation(line: 51, column: 27, scope: !3481, inlinedAt: !3544)
!3546 = !DILocation(line: 53, column: 10, scope: !3490, inlinedAt: !3544)
!3547 = !DILocation(line: 207, column: 14, scope: !3537)
!3548 = !DILocation(line: 207, column: 18, scope: !3537)
!3549 = !DILocation(line: 207, column: 9, scope: !3537)
!3550 = !DILocation(line: 53, column: 8, scope: !3490, inlinedAt: !3544)
!3551 = !DILocation(line: 57, column: 7, scope: !3495, inlinedAt: !3544)
!3552 = !DILocation(line: 58, column: 7, scope: !3495, inlinedAt: !3544)
!3553 = !DILocation(line: 61, column: 7, scope: !3481, inlinedAt: !3544)
!3554 = !DILocation(line: 62, column: 8, scope: !3499, inlinedAt: !3544)
!3555 = !DILocation(line: 62, column: 13, scope: !3501, inlinedAt: !3544)
!3556 = !DILocation(line: 62, column: 10, scope: !3499, inlinedAt: !3544)
!3557 = !DILocation(line: 63, column: 5, scope: !3499, inlinedAt: !3544)
!3558 = !DILocation(line: 211, column: 3, scope: !569)
!3559 = distinct !DISubprogram(name: "xcharalloc", scope: !568, file: !568, line: 220, type: !2477, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !564, variables: !3560)
!3560 = !{!3561}
!3561 = !DILocalVariable(name: "n", arg: 1, scope: !3559, file: !568, line: 220, type: !9)
!3562 = !DILocation(line: 220, column: 20, scope: !3559)
!3563 = !DILocation(line: 39, column: 17, scope: !3440, inlinedAt: !3564)
!3564 = distinct !DILocation(line: 222, column: 10, scope: !3559)
!3565 = !DILocation(line: 41, column: 13, scope: !3440, inlinedAt: !3564)
!3566 = !DILocation(line: 41, column: 9, scope: !3440, inlinedAt: !3564)
!3567 = !DILocation(line: 42, column: 8, scope: !3451, inlinedAt: !3564)
!3568 = !DILocation(line: 42, column: 15, scope: !3453, inlinedAt: !3564)
!3569 = !DILocation(line: 42, column: 10, scope: !3451, inlinedAt: !3564)
!3570 = !DILocation(line: 43, column: 5, scope: !3451, inlinedAt: !3564)
!3571 = !DILocation(line: 222, column: 3, scope: !3559)
!3572 = distinct !DISubprogram(name: "x2realloc", scope: !3441, file: !3441, line: 74, type: !3573, isLocal: false, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, unit: !564, variables: !3575)
!3573 = !DISubroutineType(types: !3574)
!3574 = !{!8, !8, !572}
!3575 = !{!3576, !3577}
!3576 = !DILocalVariable(name: "p", arg: 1, scope: !3572, file: !3441, line: 74, type: !8)
!3577 = !DILocalVariable(name: "pn", arg: 2, scope: !3572, file: !3441, line: 74, type: !572)
!3578 = !DILocation(line: 74, column: 18, scope: !3572)
!3579 = !DILocation(line: 74, column: 29, scope: !3572)
!3580 = !DILocation(line: 180, column: 19, scope: !569, inlinedAt: !3581)
!3581 = distinct !DILocation(line: 76, column: 10, scope: !3572)
!3582 = !DILocation(line: 180, column: 30, scope: !569, inlinedAt: !3581)
!3583 = !DILocation(line: 180, column: 41, scope: !569, inlinedAt: !3581)
!3584 = !DILocation(line: 182, column: 14, scope: !569, inlinedAt: !3581)
!3585 = !DILocation(line: 182, column: 10, scope: !569, inlinedAt: !3581)
!3586 = !DILocation(line: 184, column: 9, scope: !3524, inlinedAt: !3581)
!3587 = !DILocation(line: 184, column: 7, scope: !569, inlinedAt: !3581)
!3588 = !DILocation(line: 186, column: 13, scope: !3527, inlinedAt: !3581)
!3589 = !DILocation(line: 186, column: 11, scope: !3528, inlinedAt: !3581)
!3590 = !DILocation(line: 210, column: 7, scope: !569, inlinedAt: !3581)
!3591 = !DILocation(line: 51, column: 17, scope: !3481, inlinedAt: !3592)
!3592 = distinct !DILocation(line: 211, column: 10, scope: !569, inlinedAt: !3581)
!3593 = !DILocation(line: 51, column: 27, scope: !3481, inlinedAt: !3592)
!3594 = !DILocation(line: 53, column: 10, scope: !3490, inlinedAt: !3592)
!3595 = !DILocation(line: 205, column: 11, scope: !3536, inlinedAt: !3581)
!3596 = !DILocation(line: 204, column: 11, scope: !3537, inlinedAt: !3581)
!3597 = !DILocation(line: 206, column: 9, scope: !3536, inlinedAt: !3581)
!3598 = !DILocation(line: 207, column: 14, scope: !3537, inlinedAt: !3581)
!3599 = !DILocation(line: 207, column: 18, scope: !3537, inlinedAt: !3581)
!3600 = !DILocation(line: 207, column: 9, scope: !3537, inlinedAt: !3581)
!3601 = !DILocation(line: 53, column: 8, scope: !3490, inlinedAt: !3592)
!3602 = !DILocation(line: 57, column: 7, scope: !3495, inlinedAt: !3592)
!3603 = !DILocation(line: 58, column: 7, scope: !3495, inlinedAt: !3592)
!3604 = !DILocation(line: 61, column: 7, scope: !3481, inlinedAt: !3592)
!3605 = !DILocation(line: 62, column: 8, scope: !3499, inlinedAt: !3592)
!3606 = !DILocation(line: 62, column: 13, scope: !3501, inlinedAt: !3592)
!3607 = !DILocation(line: 62, column: 10, scope: !3499, inlinedAt: !3592)
!3608 = !DILocation(line: 63, column: 5, scope: !3499, inlinedAt: !3592)
!3609 = !DILocation(line: 76, column: 3, scope: !3572)
!3610 = distinct !DISubprogram(name: "xzalloc", scope: !3441, file: !3441, line: 84, type: !3442, isLocal: false, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: true, unit: !564, variables: !3611)
!3611 = !{!3612}
!3612 = !DILocalVariable(name: "s", arg: 1, scope: !3610, file: !3441, line: 84, type: !9)
!3613 = !DILocation(line: 84, column: 17, scope: !3610)
!3614 = !DILocation(line: 39, column: 17, scope: !3440, inlinedAt: !3615)
!3615 = distinct !DILocation(line: 86, column: 18, scope: !3610)
!3616 = !DILocation(line: 41, column: 13, scope: !3440, inlinedAt: !3615)
!3617 = !DILocation(line: 41, column: 9, scope: !3440, inlinedAt: !3615)
!3618 = !DILocation(line: 42, column: 8, scope: !3451, inlinedAt: !3615)
!3619 = !DILocation(line: 42, column: 15, scope: !3453, inlinedAt: !3615)
!3620 = !DILocation(line: 42, column: 10, scope: !3451, inlinedAt: !3615)
!3621 = !DILocation(line: 43, column: 5, scope: !3451, inlinedAt: !3615)
!3622 = !DILocation(line: 86, column: 10, scope: !3610)
!3623 = !DILocation(line: 86, column: 3, scope: !3610)
!3624 = distinct !DISubprogram(name: "xcalloc", scope: !3441, file: !3441, line: 93, type: !3427, isLocal: false, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: true, unit: !564, variables: !3625)
!3625 = !{!3626, !3627, !3628}
!3626 = !DILocalVariable(name: "n", arg: 1, scope: !3624, file: !3441, line: 93, type: !9)
!3627 = !DILocalVariable(name: "s", arg: 2, scope: !3624, file: !3441, line: 93, type: !9)
!3628 = !DILocalVariable(name: "p", scope: !3624, file: !3441, line: 95, type: !8)
!3629 = !DILocation(line: 93, column: 17, scope: !3624)
!3630 = !DILocation(line: 93, column: 27, scope: !3624)
!3631 = !DILocation(line: 100, column: 7, scope: !3632)
!3632 = distinct !DILexicalBlock(scope: !3624, file: !3441, line: 100, column: 7)
!3633 = !DILocation(line: 101, column: 7, scope: !3632)
!3634 = !DILocation(line: 101, column: 18, scope: !3635)
!3635 = !DILexicalBlockFile(scope: !3632, file: !3441, discriminator: 1)
!3636 = !DILocation(line: 95, column: 9, scope: !3624)
!3637 = !DILocation(line: 101, column: 16, scope: !3635)
!3638 = !DILocation(line: 100, column: 7, scope: !3639)
!3639 = !DILexicalBlockFile(scope: !3624, file: !3441, discriminator: 1)
!3640 = !DILocation(line: 102, column: 5, scope: !3632)
!3641 = !DILocation(line: 103, column: 3, scope: !3624)
!3642 = distinct !DISubprogram(name: "xmemdup", scope: !3441, file: !3441, line: 111, type: !3643, isLocal: false, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: true, unit: !564, variables: !3645)
!3643 = !DISubroutineType(types: !3644)
!3644 = !{!8, !12, !9}
!3645 = !{!3646, !3647}
!3646 = !DILocalVariable(name: "p", arg: 1, scope: !3642, file: !3441, line: 111, type: !12)
!3647 = !DILocalVariable(name: "s", arg: 2, scope: !3642, file: !3441, line: 111, type: !9)
!3648 = !DILocation(line: 111, column: 22, scope: !3642)
!3649 = !DILocation(line: 111, column: 32, scope: !3642)
!3650 = !DILocation(line: 39, column: 17, scope: !3440, inlinedAt: !3651)
!3651 = distinct !DILocation(line: 113, column: 18, scope: !3642)
!3652 = !DILocation(line: 41, column: 13, scope: !3440, inlinedAt: !3651)
!3653 = !DILocation(line: 41, column: 9, scope: !3440, inlinedAt: !3651)
!3654 = !DILocation(line: 42, column: 8, scope: !3451, inlinedAt: !3651)
!3655 = !DILocation(line: 42, column: 15, scope: !3453, inlinedAt: !3651)
!3656 = !DILocation(line: 42, column: 10, scope: !3451, inlinedAt: !3651)
!3657 = !DILocation(line: 43, column: 5, scope: !3451, inlinedAt: !3651)
!3658 = !DILocation(line: 113, column: 10, scope: !3642)
!3659 = !DILocation(line: 113, column: 3, scope: !3642)
!3660 = distinct !DISubprogram(name: "xstrdup", scope: !3441, file: !3441, line: 119, type: !2684, isLocal: false, isDefinition: true, scopeLine: 120, flags: DIFlagPrototyped, isOptimized: true, unit: !564, variables: !3661)
!3661 = !{!3662}
!3662 = !DILocalVariable(name: "string", arg: 1, scope: !3660, file: !3441, line: 119, type: !17)
!3663 = !DILocation(line: 119, column: 22, scope: !3660)
!3664 = !DILocation(line: 121, column: 27, scope: !3660)
!3665 = !DILocation(line: 121, column: 43, scope: !3660)
!3666 = !DILocation(line: 111, column: 22, scope: !3642, inlinedAt: !3667)
!3667 = distinct !DILocation(line: 121, column: 10, scope: !3668)
!3668 = !DILexicalBlockFile(scope: !3660, file: !3441, discriminator: 1)
!3669 = !DILocation(line: 111, column: 32, scope: !3642, inlinedAt: !3667)
!3670 = !DILocation(line: 39, column: 17, scope: !3440, inlinedAt: !3671)
!3671 = distinct !DILocation(line: 113, column: 18, scope: !3642, inlinedAt: !3667)
!3672 = !DILocation(line: 41, column: 13, scope: !3440, inlinedAt: !3671)
!3673 = !DILocation(line: 41, column: 9, scope: !3440, inlinedAt: !3671)
!3674 = !DILocation(line: 42, column: 8, scope: !3451, inlinedAt: !3671)
!3675 = !DILocation(line: 42, column: 15, scope: !3453, inlinedAt: !3671)
!3676 = !DILocation(line: 42, column: 10, scope: !3451, inlinedAt: !3671)
!3677 = !DILocation(line: 43, column: 5, scope: !3451, inlinedAt: !3671)
!3678 = !DILocation(line: 113, column: 10, scope: !3642, inlinedAt: !3667)
!3679 = !DILocation(line: 121, column: 3, scope: !3660)
!3680 = distinct !DISubprogram(name: "xalloc_die", scope: !3681, file: !3681, line: 32, type: !633, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !581, variables: !4)
!3681 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3682 = !DILocation(line: 34, column: 10, scope: !3680)
!3683 = !DILocation(line: 34, column: 33, scope: !3680)
!3684 = !DILocation(line: 34, column: 3, scope: !3685)
!3685 = !DILexicalBlockFile(scope: !3680, file: !3681, discriminator: 1)
!3686 = !DILocation(line: 40, column: 3, scope: !3680)
!3687 = distinct !DISubprogram(name: "rpl_calloc", scope: !3688, file: !3688, line: 42, type: !3427, isLocal: false, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: true, unit: !583, variables: !3689)
!3688 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3689 = !{!3690, !3691, !3692, !3693}
!3690 = !DILocalVariable(name: "n", arg: 1, scope: !3687, file: !3688, line: 42, type: !9)
!3691 = !DILocalVariable(name: "s", arg: 2, scope: !3687, file: !3688, line: 42, type: !9)
!3692 = !DILocalVariable(name: "result", scope: !3687, file: !3688, line: 44, type: !8)
!3693 = !DILocalVariable(name: "bytes", scope: !3694, file: !3688, line: 56, type: !9)
!3694 = distinct !DILexicalBlock(scope: !3695, file: !3688, line: 53, column: 5)
!3695 = distinct !DILexicalBlock(scope: !3687, file: !3688, line: 47, column: 7)
!3696 = !DILocation(line: 42, column: 20, scope: !3687)
!3697 = !DILocation(line: 42, column: 30, scope: !3687)
!3698 = !DILocation(line: 47, column: 9, scope: !3695)
!3699 = !DILocation(line: 47, column: 19, scope: !3700)
!3700 = !DILexicalBlockFile(scope: !3695, file: !3688, discriminator: 1)
!3701 = !DILocation(line: 47, column: 14, scope: !3695)
!3702 = !DILocation(line: 56, column: 24, scope: !3694)
!3703 = !DILocation(line: 56, column: 14, scope: !3694)
!3704 = !DILocation(line: 57, column: 17, scope: !3705)
!3705 = distinct !DILexicalBlock(scope: !3694, file: !3688, line: 57, column: 11)
!3706 = !DILocation(line: 57, column: 21, scope: !3705)
!3707 = !DILocation(line: 57, column: 11, scope: !3694)
!3708 = !DILocation(line: 59, column: 11, scope: !3709)
!3709 = distinct !DILexicalBlock(scope: !3705, file: !3688, line: 58, column: 9)
!3710 = !DILocation(line: 59, column: 17, scope: !3709)
!3711 = !DILocation(line: 65, column: 12, scope: !3687)
!3712 = !DILocation(line: 44, column: 9, scope: !3687)
!3713 = !DILocation(line: 72, column: 3, scope: !3687)
!3714 = !DILocation(line: 73, column: 1, scope: !3687)
!3715 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !3716, file: !3716, line: 334, type: !3717, isLocal: false, isDefinition: true, scopeLine: 335, flags: DIFlagPrototyped, isOptimized: true, unit: !585, variables: !3731)
!3716 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3717 = !DISubroutineType(types: !3718)
!3718 = !{!9, !3719, !17, !9, !3720}
!3719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1463, size: 64)
!3720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3721, size: 64)
!3721 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1448, line: 107, baseType: !3722)
!3722 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1448, line: 95, baseType: !3723)
!3723 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1448, line: 83, size: 64, elements: !3724)
!3724 = !{!3725, !3726}
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !3723, file: !1448, line: 85, baseType: !48, size: 32)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !3723, file: !1448, line: 94, baseType: !3727, size: 32, offset: 32)
!3727 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3723, file: !1448, line: 86, size: 32, elements: !3728)
!3728 = !{!3729, !3730}
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !3727, file: !1448, line: 89, baseType: !19, size: 32)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !3727, file: !1448, line: 93, baseType: !1458, size: 32)
!3731 = !{!3732, !3733, !3734, !3735, !3736, !3737, !3738}
!3732 = !DILocalVariable(name: "pwc", arg: 1, scope: !3715, file: !3716, line: 334, type: !3719)
!3733 = !DILocalVariable(name: "s", arg: 2, scope: !3715, file: !3716, line: 334, type: !17)
!3734 = !DILocalVariable(name: "n", arg: 3, scope: !3715, file: !3716, line: 334, type: !9)
!3735 = !DILocalVariable(name: "ps", arg: 4, scope: !3715, file: !3716, line: 334, type: !3720)
!3736 = !DILocalVariable(name: "ret", scope: !3715, file: !3716, line: 336, type: !9)
!3737 = !DILocalVariable(name: "wc", scope: !3715, file: !3716, line: 337, type: !1463)
!3738 = !DILocalVariable(name: "uc", scope: !3739, file: !3716, line: 398, type: !16)
!3739 = distinct !DILexicalBlock(scope: !3740, file: !3716, line: 397, column: 5)
!3740 = distinct !DILexicalBlock(scope: !3715, file: !3716, line: 396, column: 7)
!3741 = !DILocation(line: 334, column: 23, scope: !3715)
!3742 = !DILocation(line: 334, column: 40, scope: !3715)
!3743 = !DILocation(line: 334, column: 50, scope: !3715)
!3744 = !DILocation(line: 334, column: 64, scope: !3715)
!3745 = !DILocation(line: 337, column: 3, scope: !3715)
!3746 = !DILocation(line: 353, column: 9, scope: !3747)
!3747 = distinct !DILexicalBlock(scope: !3715, file: !3716, line: 353, column: 7)
!3748 = !DILocation(line: 353, column: 7, scope: !3715)
!3749 = !DILocation(line: 388, column: 9, scope: !3715)
!3750 = !DILocation(line: 336, column: 10, scope: !3715)
!3751 = !DILocation(line: 396, column: 19, scope: !3740)
!3752 = !DILocation(line: 396, column: 31, scope: !3753)
!3753 = !DILexicalBlockFile(scope: !3740, file: !3716, discriminator: 1)
!3754 = !DILocation(line: 396, column: 26, scope: !3740)
!3755 = !DILocation(line: 396, column: 41, scope: !3756)
!3756 = !DILexicalBlockFile(scope: !3740, file: !3716, discriminator: 2)
!3757 = !DILocation(line: 396, column: 7, scope: !3758)
!3758 = !DILexicalBlockFile(scope: !3715, file: !3716, discriminator: 2)
!3759 = !DILocation(line: 398, column: 26, scope: !3739)
!3760 = !DILocation(line: 398, column: 21, scope: !3739)
!3761 = !DILocation(line: 399, column: 14, scope: !3739)
!3762 = !DILocation(line: 399, column: 12, scope: !3739)
!3763 = !DILocation(line: 405, column: 1, scope: !3715)
!3764 = distinct !DISubprogram(name: "str2sig", scope: !195, file: !195, line: 304, type: !3765, isLocal: false, isDefinition: true, scopeLine: 305, flags: DIFlagPrototyped, isOptimized: true, unit: !191, variables: !3767)
!3765 = !DISubroutineType(types: !3766)
!3766 = !{!48, !17, !62}
!3767 = !{!3768, !3769}
!3768 = !DILocalVariable(name: "signame", arg: 1, scope: !3764, file: !195, line: 304, type: !17)
!3769 = !DILocalVariable(name: "signum", arg: 2, scope: !3764, file: !195, line: 304, type: !62)
!3770 = !DILocation(line: 304, column: 22, scope: !3764)
!3771 = !DILocation(line: 304, column: 36, scope: !3764)
!3772 = !DILocalVariable(name: "signame", arg: 1, scope: !3773, file: !195, line: 261, type: !17)
!3773 = distinct !DISubprogram(name: "str2signum", scope: !195, file: !195, line: 261, type: !3774, isLocal: true, isDefinition: true, scopeLine: 262, flags: DIFlagPrototyped, isOptimized: true, unit: !191, variables: !3776)
!3774 = !DISubroutineType(types: !3775)
!3775 = !{!48, !17}
!3776 = !{!3772, !3777, !3780, !3781, !3783, !3788, !3789, !3791, !3792, !3793, !3796}
!3777 = !DILocalVariable(name: "endp", scope: !3778, file: !195, line: 265, type: !6)
!3778 = distinct !DILexicalBlock(scope: !3779, file: !195, line: 264, column: 5)
!3779 = distinct !DILexicalBlock(scope: !3773, file: !195, line: 263, column: 7)
!3780 = !DILocalVariable(name: "n", scope: !3778, file: !195, line: 266, type: !962)
!3781 = !DILocalVariable(name: "i", scope: !3782, file: !195, line: 272, type: !19)
!3782 = distinct !DILexicalBlock(scope: !3779, file: !195, line: 271, column: 5)
!3783 = !DILocalVariable(name: "__s1_len", scope: !3784, file: !195, line: 274, type: !9)
!3784 = distinct !DILexicalBlock(scope: !3785, file: !195, line: 274, column: 13)
!3785 = distinct !DILexicalBlock(scope: !3786, file: !195, line: 274, column: 13)
!3786 = distinct !DILexicalBlock(scope: !3787, file: !195, line: 273, column: 7)
!3787 = distinct !DILexicalBlock(scope: !3782, file: !195, line: 273, column: 7)
!3788 = !DILocalVariable(name: "__s2_len", scope: !3784, file: !195, line: 274, type: !9)
!3789 = !DILocalVariable(name: "endp", scope: !3790, file: !195, line: 278, type: !6)
!3790 = distinct !DILexicalBlock(scope: !3782, file: !195, line: 277, column: 7)
!3791 = !DILocalVariable(name: "rtmin", scope: !3790, file: !195, line: 279, type: !48)
!3792 = !DILocalVariable(name: "rtmax", scope: !3790, file: !195, line: 280, type: !48)
!3793 = !DILocalVariable(name: "n", scope: !3794, file: !195, line: 284, type: !962)
!3794 = distinct !DILexicalBlock(scope: !3795, file: !195, line: 283, column: 11)
!3795 = distinct !DILexicalBlock(scope: !3790, file: !195, line: 282, column: 13)
!3796 = !DILocalVariable(name: "n", scope: !3797, file: !195, line: 290, type: !962)
!3797 = distinct !DILexicalBlock(scope: !3798, file: !195, line: 289, column: 11)
!3798 = distinct !DILexicalBlock(scope: !3795, file: !195, line: 288, column: 18)
!3799 = !DILocation(line: 261, column: 25, scope: !3773, inlinedAt: !3800)
!3800 = distinct !DILocation(line: 306, column: 13, scope: !3764)
!3801 = !DILocation(line: 263, column: 7, scope: !3779, inlinedAt: !3800)
!3802 = !DILocation(line: 263, column: 7, scope: !3773, inlinedAt: !3800)
!3803 = !DILocation(line: 274, column: 13, scope: !3784, inlinedAt: !3800)
!3804 = !DILocation(line: 265, column: 7, scope: !3778, inlinedAt: !3800)
!3805 = !DILocation(line: 265, column: 13, scope: !3778, inlinedAt: !3800)
!3806 = !DILocation(line: 266, column: 20, scope: !3778, inlinedAt: !3800)
!3807 = !DILocation(line: 266, column: 16, scope: !3778, inlinedAt: !3800)
!3808 = !DILocation(line: 267, column: 14, scope: !3809, inlinedAt: !3800)
!3809 = distinct !DILexicalBlock(scope: !3778, file: !195, line: 267, column: 11)
!3810 = !DILocation(line: 267, column: 13, scope: !3809, inlinedAt: !3800)
!3811 = !DILocation(line: 268, column: 16, scope: !3809, inlinedAt: !3800)
!3812 = !DILocation(line: 267, column: 19, scope: !3809, inlinedAt: !3800)
!3813 = !DILocation(line: 269, column: 5, scope: !3779, inlinedAt: !3800)
!3814 = !DILocation(line: 273, column: 21, scope: !3815, inlinedAt: !3800)
!3815 = !DILexicalBlockFile(scope: !3786, file: !195, discriminator: 1)
!3816 = !DILocation(line: 273, column: 7, scope: !3817, inlinedAt: !3800)
!3817 = !DILexicalBlockFile(scope: !3787, file: !195, discriminator: 1)
!3818 = distinct !{!3818, !3819, !3820}
!3819 = !DILocation(line: 273, column: 7, scope: !3787)
!3820 = !DILocation(line: 275, column: 35, scope: !3787)
!3821 = !DILocation(line: 274, column: 53, scope: !3785, inlinedAt: !3800)
!3822 = !DILocation(line: 273, column: 41, scope: !3823, inlinedAt: !3800)
!3823 = !DILexicalBlockFile(scope: !3786, file: !195, discriminator: 2)
!3824 = !DILocation(line: 274, column: 13, scope: !3786, inlinedAt: !3800)
!3825 = !DILocation(line: 275, column: 35, scope: !3785, inlinedAt: !3800)
!3826 = !{!3827, !730, i64 0}
!3827 = !{!"numname", !730, i64 0, !619, i64 4}
!3828 = !DILocation(line: 278, column: 9, scope: !3790, inlinedAt: !3800)
!3829 = !DILocation(line: 279, column: 21, scope: !3790, inlinedAt: !3800)
!3830 = !DILocation(line: 279, column: 13, scope: !3790, inlinedAt: !3800)
!3831 = !DILocation(line: 280, column: 21, scope: !3790, inlinedAt: !3800)
!3832 = !DILocation(line: 280, column: 13, scope: !3790, inlinedAt: !3800)
!3833 = !DILocation(line: 282, column: 15, scope: !3795, inlinedAt: !3800)
!3834 = !DILocation(line: 282, column: 23, scope: !3795, inlinedAt: !3800)
!3835 = !DILocation(line: 282, column: 26, scope: !3836, inlinedAt: !3800)
!3836 = !DILexicalBlockFile(scope: !3795, file: !195, discriminator: 1)
!3837 = !DILocation(line: 282, column: 56, scope: !3836, inlinedAt: !3800)
!3838 = !DILocation(line: 282, column: 13, scope: !3839, inlinedAt: !3800)
!3839 = !DILexicalBlockFile(scope: !3790, file: !195, discriminator: 1)
!3840 = !DILocation(line: 284, column: 42, scope: !3794, inlinedAt: !3800)
!3841 = !DILocation(line: 278, column: 15, scope: !3790, inlinedAt: !3800)
!3842 = !DILocation(line: 284, column: 26, scope: !3794, inlinedAt: !3800)
!3843 = !DILocation(line: 284, column: 22, scope: !3794, inlinedAt: !3800)
!3844 = !DILocation(line: 285, column: 20, scope: !3845, inlinedAt: !3800)
!3845 = distinct !DILexicalBlock(scope: !3794, file: !195, line: 285, column: 17)
!3846 = !DILocation(line: 285, column: 19, scope: !3845, inlinedAt: !3800)
!3847 = !DILocation(line: 285, column: 30, scope: !3848, inlinedAt: !3800)
!3848 = !DILexicalBlockFile(scope: !3845, file: !195, discriminator: 1)
!3849 = !DILocation(line: 285, column: 25, scope: !3845, inlinedAt: !3800)
!3850 = !DILocation(line: 285, column: 49, scope: !3851, inlinedAt: !3800)
!3851 = !DILexicalBlockFile(scope: !3845, file: !195, discriminator: 2)
!3852 = !DILocation(line: 285, column: 43, scope: !3851, inlinedAt: !3800)
!3853 = !DILocation(line: 285, column: 40, scope: !3851, inlinedAt: !3800)
!3854 = !DILocation(line: 285, column: 17, scope: !3855, inlinedAt: !3800)
!3855 = !DILexicalBlockFile(scope: !3794, file: !195, discriminator: 2)
!3856 = !DILocation(line: 288, column: 20, scope: !3798, inlinedAt: !3800)
!3857 = !DILocation(line: 288, column: 28, scope: !3798, inlinedAt: !3800)
!3858 = !DILocation(line: 288, column: 31, scope: !3859, inlinedAt: !3800)
!3859 = !DILexicalBlockFile(scope: !3798, file: !195, discriminator: 1)
!3860 = !DILocation(line: 288, column: 61, scope: !3859, inlinedAt: !3800)
!3861 = !DILocation(line: 288, column: 18, scope: !3836, inlinedAt: !3800)
!3862 = !DILocation(line: 290, column: 42, scope: !3797, inlinedAt: !3800)
!3863 = !DILocation(line: 290, column: 26, scope: !3797, inlinedAt: !3800)
!3864 = !DILocation(line: 290, column: 22, scope: !3797, inlinedAt: !3800)
!3865 = !DILocation(line: 291, column: 20, scope: !3866, inlinedAt: !3800)
!3866 = distinct !DILexicalBlock(scope: !3797, file: !195, line: 291, column: 17)
!3867 = !DILocation(line: 291, column: 19, scope: !3866, inlinedAt: !3800)
!3868 = !DILocation(line: 291, column: 25, scope: !3866, inlinedAt: !3800)
!3869 = !DILocation(line: 291, column: 34, scope: !3870, inlinedAt: !3800)
!3870 = !DILexicalBlockFile(scope: !3866, file: !195, discriminator: 1)
!3871 = !DILocation(line: 291, column: 28, scope: !3870, inlinedAt: !3800)
!3872 = !DILocation(line: 291, column: 42, scope: !3870, inlinedAt: !3800)
!3873 = !DILocation(line: 291, column: 52, scope: !3874, inlinedAt: !3800)
!3874 = !DILexicalBlockFile(scope: !3866, file: !195, discriminator: 2)
!3875 = !DILocation(line: 291, column: 47, scope: !3870, inlinedAt: !3800)
!3876 = !DILocation(line: 294, column: 7, scope: !3782, inlinedAt: !3800)
!3877 = !DILocation(line: 297, column: 3, scope: !3773, inlinedAt: !3800)
!3878 = !DILocation(line: 306, column: 11, scope: !3764)
!3879 = !DILocation(line: 307, column: 10, scope: !3764)
!3880 = !DILocation(line: 307, column: 3, scope: !3764)
!3881 = distinct !DISubprogram(name: "sig2str", scope: !195, file: !195, line: 315, type: !3882, isLocal: false, isDefinition: true, scopeLine: 316, flags: DIFlagPrototyped, isOptimized: true, unit: !191, variables: !3884)
!3882 = !DISubroutineType(types: !3883)
!3883 = !{!48, !48, !6}
!3884 = !{!3885, !3886, !3887, !3888, !3890, !3891, !3892}
!3885 = !DILocalVariable(name: "signum", arg: 1, scope: !3881, file: !195, line: 315, type: !48)
!3886 = !DILocalVariable(name: "signame", arg: 2, scope: !3881, file: !195, line: 315, type: !6)
!3887 = !DILocalVariable(name: "i", scope: !3881, file: !195, line: 317, type: !19)
!3888 = !DILocalVariable(name: "rtmin", scope: !3889, file: !195, line: 326, type: !48)
!3889 = distinct !DILexicalBlock(scope: !3881, file: !195, line: 325, column: 3)
!3890 = !DILocalVariable(name: "rtmax", scope: !3889, file: !195, line: 327, type: !48)
!3891 = !DILocalVariable(name: "base", scope: !3889, file: !195, line: 328, type: !48)
!3892 = !DILocalVariable(name: "delta", scope: !3889, file: !195, line: 328, type: !48)
!3893 = !DILocation(line: 315, column: 14, scope: !3881)
!3894 = !DILocation(line: 315, column: 28, scope: !3881)
!3895 = !DILocation(line: 317, column: 16, scope: !3881)
!3896 = !DILocation(line: 318, column: 3, scope: !3897)
!3897 = !DILexicalBlockFile(scope: !3898, file: !195, discriminator: 1)
!3898 = distinct !DILexicalBlock(scope: !3881, file: !195, line: 318, column: 3)
!3899 = !DILocation(line: 318, column: 37, scope: !3900)
!3900 = !DILexicalBlockFile(scope: !3901, file: !195, discriminator: 2)
!3901 = distinct !DILexicalBlock(scope: !3898, file: !195, line: 318, column: 3)
!3902 = !DILocation(line: 318, column: 15, scope: !3903)
!3903 = !DILexicalBlockFile(scope: !3901, file: !195, discriminator: 1)
!3904 = !DILocation(line: 319, column: 26, scope: !3905)
!3905 = distinct !DILexicalBlock(scope: !3901, file: !195, line: 319, column: 9)
!3906 = !DILocation(line: 319, column: 30, scope: !3905)
!3907 = !DILocation(line: 319, column: 9, scope: !3901)
!3908 = !DILocation(line: 321, column: 26, scope: !3909)
!3909 = distinct !DILexicalBlock(scope: !3905, file: !195, line: 320, column: 7)
!3910 = !DILocalVariable(name: "__dest", arg: 1, scope: !3911, file: !3912, line: 107, type: !3915)
!3911 = distinct !DISubprogram(name: "strcpy", scope: !3912, file: !3912, line: 107, type: !3913, isLocal: false, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: true, unit: !191, variables: !3916)
!3912 = !DIFile(filename: "/usr/include/bits/string3.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3913 = !DISubroutineType(types: !3914)
!3914 = !{!6, !3915, !987}
!3915 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !6)
!3916 = !{!3910, !3917}
!3917 = !DILocalVariable(name: "__src", arg: 2, scope: !3911, file: !3912, line: 107, type: !987)
!3918 = !DILocation(line: 107, column: 1, scope: !3911, inlinedAt: !3919)
!3919 = distinct !DILocation(line: 321, column: 9, scope: !3909)
!3920 = !DILocation(line: 109, column: 49, scope: !3911, inlinedAt: !3919)
!3921 = !DILocation(line: 109, column: 10, scope: !3911, inlinedAt: !3919)
!3922 = !DILocation(line: 322, column: 9, scope: !3909)
!3923 = !DILocation(line: 326, column: 17, scope: !3889)
!3924 = !DILocation(line: 326, column: 9, scope: !3889)
!3925 = !DILocation(line: 327, column: 17, scope: !3889)
!3926 = !DILocation(line: 327, column: 9, scope: !3889)
!3927 = !DILocation(line: 330, column: 18, scope: !3928)
!3928 = distinct !DILexicalBlock(scope: !3889, file: !195, line: 330, column: 9)
!3929 = !DILocation(line: 330, column: 38, scope: !3930)
!3930 = !DILexicalBlockFile(scope: !3928, file: !195, discriminator: 1)
!3931 = !DILocation(line: 330, column: 28, scope: !3928)
!3932 = !DILocation(line: 333, column: 34, scope: !3933)
!3933 = distinct !DILexicalBlock(scope: !3889, file: !195, line: 333, column: 9)
!3934 = !DILocation(line: 333, column: 43, scope: !3933)
!3935 = !DILocation(line: 333, column: 25, scope: !3933)
!3936 = !DILocation(line: 333, column: 16, scope: !3933)
!3937 = !DILocation(line: 333, column: 9, scope: !3889)
!3938 = !DILocation(line: 335, column: 9, scope: !3939)
!3939 = distinct !DILexicalBlock(scope: !3933, file: !195, line: 334, column: 7)
!3940 = !DILocation(line: 328, column: 9, scope: !3889)
!3941 = !DILocation(line: 337, column: 7, scope: !3939)
!3942 = !DILocation(line: 340, column: 9, scope: !3943)
!3943 = distinct !DILexicalBlock(scope: !3933, file: !195, line: 339, column: 7)
!3944 = !DILocation(line: 344, column: 20, scope: !3889)
!3945 = !DILocation(line: 328, column: 15, scope: !3889)
!3946 = !DILocation(line: 345, column: 15, scope: !3947)
!3947 = distinct !DILexicalBlock(scope: !3889, file: !195, line: 345, column: 9)
!3948 = !DILocation(line: 345, column: 9, scope: !3889)
!3949 = !DILocation(line: 346, column: 7, scope: !3947)
!3950 = !DILocation(line: 349, column: 1, scope: !3881)
!3951 = !DILocation(line: 318, column: 17, scope: !3903)
!3952 = distinct !{!3952, !3953, !3954}
!3953 = !DILocation(line: 318, column: 3, scope: !3898)
!3954 = !DILocation(line: 323, column: 7, scope: !3898)
!3955 = distinct !DISubprogram(name: "close_stream", scope: !3956, file: !3956, line: 56, type: !3957, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !588, variables: !3999)
!3956 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3957 = !DISubroutineType(types: !3958)
!3958 = !{!48, !3959}
!3959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3960, size: 64)
!3960 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3210, line: 49, baseType: !3961)
!3961 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3212, line: 241, size: 1728, elements: !3962)
!3962 = !{!3963, !3964, !3965, !3966, !3967, !3968, !3969, !3970, !3971, !3972, !3973, !3974, !3975, !3983, !3984, !3985, !3986, !3987, !3988, !3989, !3990, !3991, !3992, !3993, !3994, !3995, !3996, !3997, !3998}
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3961, file: !3212, line: 242, baseType: !48, size: 32)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3961, file: !3212, line: 247, baseType: !6, size: 64, offset: 64)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3961, file: !3212, line: 248, baseType: !6, size: 64, offset: 128)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3961, file: !3212, line: 249, baseType: !6, size: 64, offset: 192)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3961, file: !3212, line: 250, baseType: !6, size: 64, offset: 256)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3961, file: !3212, line: 251, baseType: !6, size: 64, offset: 320)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3961, file: !3212, line: 252, baseType: !6, size: 64, offset: 384)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3961, file: !3212, line: 253, baseType: !6, size: 64, offset: 448)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3961, file: !3212, line: 254, baseType: !6, size: 64, offset: 512)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3961, file: !3212, line: 256, baseType: !6, size: 64, offset: 576)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3961, file: !3212, line: 257, baseType: !6, size: 64, offset: 640)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3961, file: !3212, line: 258, baseType: !6, size: 64, offset: 704)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3961, file: !3212, line: 260, baseType: !3976, size: 64, offset: 768)
!3976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3977, size: 64)
!3977 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !3212, line: 156, size: 192, elements: !3978)
!3978 = !{!3979, !3980, !3982}
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3977, file: !3212, line: 157, baseType: !3976, size: 64)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3977, file: !3212, line: 158, baseType: !3981, size: 64, offset: 64)
!3981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3961, size: 64)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3977, file: !3212, line: 162, baseType: !48, size: 32, offset: 128)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3961, file: !3212, line: 262, baseType: !3981, size: 64, offset: 832)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3961, file: !3212, line: 264, baseType: !48, size: 32, offset: 896)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3961, file: !3212, line: 268, baseType: !48, size: 32, offset: 928)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3961, file: !3212, line: 270, baseType: !3238, size: 64, offset: 960)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3961, file: !3212, line: 274, baseType: !137, size: 16, offset: 1024)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3961, file: !3212, line: 275, baseType: !555, size: 8, offset: 1040)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3961, file: !3212, line: 276, baseType: !3242, size: 8, offset: 1048)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3961, file: !3212, line: 280, baseType: !3246, size: 64, offset: 1088)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3961, file: !3212, line: 289, baseType: !3249, size: 64, offset: 1152)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3961, file: !3212, line: 297, baseType: !8, size: 64, offset: 1216)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3961, file: !3212, line: 298, baseType: !8, size: 64, offset: 1280)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3961, file: !3212, line: 299, baseType: !8, size: 64, offset: 1344)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3961, file: !3212, line: 300, baseType: !8, size: 64, offset: 1408)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3961, file: !3212, line: 302, baseType: !9, size: 64, offset: 1472)
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3961, file: !3212, line: 303, baseType: !48, size: 32, offset: 1536)
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3961, file: !3212, line: 305, baseType: !3257, size: 160, offset: 1568)
!3999 = !{!4000, !4001, !4003, !4004}
!4000 = !DILocalVariable(name: "stream", arg: 1, scope: !3955, file: !3956, line: 56, type: !3959)
!4001 = !DILocalVariable(name: "some_pending", scope: !3955, file: !3956, line: 58, type: !4002)
!4002 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !82)
!4003 = !DILocalVariable(name: "prev_fail", scope: !3955, file: !3956, line: 59, type: !4002)
!4004 = !DILocalVariable(name: "fclose_fail", scope: !3955, file: !3956, line: 60, type: !4002)
!4005 = !DILocation(line: 56, column: 21, scope: !3955)
!4006 = !DILocation(line: 58, column: 30, scope: !3955)
!4007 = !DILocalVariable(name: "__stream", arg: 1, scope: !4008, file: !4009, line: 132, type: !3959)
!4008 = distinct !DISubprogram(name: "ferror_unlocked", scope: !4009, file: !4009, line: 132, type: !3957, isLocal: false, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !588, variables: !4010)
!4009 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4010 = !{!4007}
!4011 = !DILocation(line: 132, column: 1, scope: !4008, inlinedAt: !4012)
!4012 = distinct !DILocation(line: 59, column: 27, scope: !3955)
!4013 = !DILocation(line: 134, column: 10, scope: !4008, inlinedAt: !4012)
!4014 = !{!4015, !730, i64 0}
!4015 = !{!"_IO_FILE", !730, i64 0, !618, i64 8, !618, i64 16, !618, i64 24, !618, i64 32, !618, i64 40, !618, i64 48, !618, i64 56, !618, i64 64, !618, i64 72, !618, i64 80, !618, i64 88, !618, i64 96, !618, i64 104, !730, i64 112, !730, i64 116, !2522, i64 120, !1815, i64 128, !619, i64 130, !619, i64 131, !618, i64 136, !2522, i64 144, !618, i64 152, !618, i64 160, !618, i64 168, !618, i64 176, !2522, i64 184, !730, i64 192, !619, i64 196}
!4016 = !DILocation(line: 59, column: 43, scope: !3955)
!4017 = !DILocation(line: 60, column: 29, scope: !3955)
!4018 = !DILocation(line: 60, column: 45, scope: !3955)
!4019 = !DILocation(line: 70, column: 17, scope: !4020)
!4020 = distinct !DILexicalBlock(scope: !3955, file: !3956, line: 70, column: 7)
!4021 = !DILocation(line: 70, column: 33, scope: !4022)
!4022 = !DILexicalBlockFile(scope: !4020, file: !3956, discriminator: 1)
!4023 = !DILocation(line: 70, column: 53, scope: !4024)
!4024 = !DILexicalBlockFile(scope: !4020, file: !3956, discriminator: 3)
!4025 = !DILocation(line: 70, column: 7, scope: !4026)
!4026 = !DILexicalBlockFile(scope: !3955, file: !3956, discriminator: 3)
!4027 = !DILocation(line: 72, column: 11, scope: !4028)
!4028 = distinct !DILexicalBlock(scope: !4020, file: !3956, line: 71, column: 5)
!4029 = !DILocation(line: 73, column: 9, scope: !4030)
!4030 = distinct !DILexicalBlock(scope: !4028, file: !3956, line: 72, column: 11)
!4031 = !DILocation(line: 73, column: 15, scope: !4030)
!4032 = !DILocation(line: 78, column: 1, scope: !3955)
!4033 = distinct !DISubprogram(name: "hard_locale", scope: !4034, file: !4034, line: 38, type: !4035, isLocal: false, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, unit: !590, variables: !4037)
!4034 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4035 = !DISubroutineType(types: !4036)
!4036 = !{!82, !48}
!4037 = !{!4038, !4039, !4040, !4041, !4048, !4049, !4051, !4052, !4054, !4055, !4057}
!4038 = !DILocalVariable(name: "category", arg: 1, scope: !4033, file: !4034, line: 38, type: !48)
!4039 = !DILocalVariable(name: "hard", scope: !4033, file: !4034, line: 40, type: !82)
!4040 = !DILocalVariable(name: "p", scope: !4033, file: !4034, line: 41, type: !17)
!4041 = !DILocalVariable(name: "__s1_len", scope: !4042, file: !4034, line: 47, type: !9)
!4042 = distinct !DILexicalBlock(scope: !4043, file: !4034, line: 47, column: 15)
!4043 = distinct !DILexicalBlock(scope: !4044, file: !4034, line: 47, column: 15)
!4044 = distinct !DILexicalBlock(scope: !4045, file: !4034, line: 46, column: 9)
!4045 = distinct !DILexicalBlock(scope: !4046, file: !4034, line: 45, column: 11)
!4046 = distinct !DILexicalBlock(scope: !4047, file: !4034, line: 44, column: 5)
!4047 = distinct !DILexicalBlock(scope: !4033, file: !4034, line: 43, column: 7)
!4048 = !DILocalVariable(name: "__s2_len", scope: !4042, file: !4034, line: 47, type: !9)
!4049 = !DILocalVariable(name: "__s2", scope: !4050, file: !4034, line: 47, type: !14)
!4050 = distinct !DILexicalBlock(scope: !4042, file: !4034, line: 47, column: 15)
!4051 = !DILocalVariable(name: "__result", scope: !4050, file: !4034, line: 47, type: !48)
!4052 = !DILocalVariable(name: "__s1_len", scope: !4053, file: !4034, line: 47, type: !9)
!4053 = distinct !DILexicalBlock(scope: !4043, file: !4034, line: 47, column: 39)
!4054 = !DILocalVariable(name: "__s2_len", scope: !4053, file: !4034, line: 47, type: !9)
!4055 = !DILocalVariable(name: "__s2", scope: !4056, file: !4034, line: 47, type: !14)
!4056 = distinct !DILexicalBlock(scope: !4053, file: !4034, line: 47, column: 39)
!4057 = !DILocalVariable(name: "__result", scope: !4056, file: !4034, line: 47, type: !48)
!4058 = !DILocation(line: 38, column: 18, scope: !4033)
!4059 = !DILocation(line: 40, column: 8, scope: !4033)
!4060 = !DILocation(line: 41, column: 19, scope: !4033)
!4061 = !DILocation(line: 41, column: 15, scope: !4033)
!4062 = !DILocation(line: 43, column: 7, scope: !4047)
!4063 = !DILocation(line: 43, column: 7, scope: !4033)
!4064 = !DILocation(line: 47, column: 15, scope: !4042)
!4065 = !DILocation(line: 47, column: 15, scope: !4050)
!4066 = !DILocation(line: 47, column: 15, scope: !4067)
!4067 = !DILexicalBlockFile(scope: !4050, file: !4034, discriminator: 2)
!4068 = !DILocation(line: 47, column: 15, scope: !4069)
!4069 = !DILexicalBlockFile(scope: !4070, file: !4034, discriminator: 3)
!4070 = distinct !DILexicalBlock(scope: !4050, file: !4034, line: 47, column: 15)
!4071 = !DILocation(line: 47, column: 15, scope: !4072)
!4072 = !DILexicalBlockFile(scope: !4070, file: !4034, discriminator: 2)
!4073 = !DILocation(line: 47, column: 15, scope: !4074)
!4074 = !DILexicalBlockFile(scope: !4075, file: !4034, discriminator: 4)
!4075 = distinct !DILexicalBlock(scope: !4070, file: !4034, line: 47, column: 15)
!4076 = !DILocation(line: 47, column: 15, scope: !4077)
!4077 = !DILexicalBlockFile(scope: !4042, file: !4034, discriminator: 11)
!4078 = !DILocation(line: 47, column: 36, scope: !4079)
!4079 = !DILexicalBlockFile(scope: !4043, file: !4034, discriminator: 13)
!4080 = !DILocation(line: 47, column: 39, scope: !4053)
!4081 = !DILocation(line: 47, column: 39, scope: !4082)
!4082 = !DILexicalBlockFile(scope: !4053, file: !4034, discriminator: 26)
!4083 = !DILocation(line: 47, column: 59, scope: !4084)
!4084 = !DILexicalBlockFile(scope: !4043, file: !4034, discriminator: 27)
!4085 = !DILocation(line: 47, column: 15, scope: !4086)
!4086 = !DILexicalBlockFile(scope: !4044, file: !4034, discriminator: 27)
!4087 = !DILocation(line: 48, column: 13, scope: !4043)
!4088 = !DILocation(line: 71, column: 3, scope: !4033)
!4089 = distinct !DISubprogram(name: "locale_charset", scope: !550, file: !550, line: 393, type: !4090, isLocal: false, isDefinition: true, scopeLine: 394, flags: DIFlagPrototyped, isOptimized: true, unit: !206, variables: !4092)
!4090 = !DISubroutineType(types: !4091)
!4091 = !{!17}
!4092 = !{!4093, !4094, !4095, !4100}
!4093 = !DILocalVariable(name: "codeset", scope: !4089, file: !550, line: 395, type: !17)
!4094 = !DILocalVariable(name: "aliases", scope: !4089, file: !550, line: 396, type: !17)
!4095 = !DILocalVariable(name: "__s1_len", scope: !4096, file: !550, line: 592, type: !9)
!4096 = distinct !DILexicalBlock(scope: !4097, file: !550, line: 592, column: 9)
!4097 = distinct !DILexicalBlock(scope: !4098, file: !550, line: 592, column: 9)
!4098 = distinct !DILexicalBlock(scope: !4099, file: !550, line: 589, column: 3)
!4099 = distinct !DILexicalBlock(scope: !4089, file: !550, line: 589, column: 3)
!4100 = !DILocalVariable(name: "__s2_len", scope: !4096, file: !550, line: 592, type: !9)
!4101 = !DILocalVariable(name: "buf1", scope: !4102, file: !550, line: 196, type: !4169)
!4102 = distinct !DILexicalBlock(scope: !4103, file: !550, line: 194, column: 21)
!4103 = distinct !DILexicalBlock(scope: !4104, file: !550, line: 193, column: 19)
!4104 = distinct !DILexicalBlock(scope: !4105, file: !550, line: 193, column: 19)
!4105 = distinct !DILexicalBlock(scope: !4106, file: !550, line: 188, column: 17)
!4106 = distinct !DILexicalBlock(scope: !4107, file: !550, line: 181, column: 19)
!4107 = distinct !DILexicalBlock(scope: !4108, file: !550, line: 177, column: 13)
!4108 = distinct !DILexicalBlock(scope: !4109, file: !550, line: 173, column: 15)
!4109 = distinct !DILexicalBlock(scope: !4110, file: !550, line: 161, column: 9)
!4110 = distinct !DILexicalBlock(scope: !4111, file: !550, line: 157, column: 11)
!4111 = distinct !DILexicalBlock(scope: !4112, file: !550, line: 130, column: 5)
!4112 = distinct !DILexicalBlock(scope: !4113, file: !550, line: 129, column: 7)
!4113 = distinct !DISubprogram(name: "get_charset_aliases", scope: !550, file: !550, line: 124, type: !4090, isLocal: true, isDefinition: true, scopeLine: 125, flags: DIFlagPrototyped, isOptimized: true, unit: !206, variables: !4114)
!4114 = !{!4115, !4116, !4117, !4118, !4119, !4121, !4122, !4123, !4124, !4165, !4166, !4167, !4101, !4168, !4172, !4173, !4174}
!4115 = !DILocalVariable(name: "cp", scope: !4113, file: !550, line: 126, type: !17)
!4116 = !DILocalVariable(name: "dir", scope: !4111, file: !550, line: 132, type: !17)
!4117 = !DILocalVariable(name: "base", scope: !4111, file: !550, line: 133, type: !17)
!4118 = !DILocalVariable(name: "file_name", scope: !4111, file: !550, line: 134, type: !6)
!4119 = !DILocalVariable(name: "dir_len", scope: !4120, file: !550, line: 144, type: !9)
!4120 = distinct !DILexicalBlock(scope: !4111, file: !550, line: 143, column: 7)
!4121 = !DILocalVariable(name: "base_len", scope: !4120, file: !550, line: 145, type: !9)
!4122 = !DILocalVariable(name: "add_slash", scope: !4120, file: !550, line: 146, type: !48)
!4123 = !DILocalVariable(name: "fd", scope: !4109, file: !550, line: 162, type: !48)
!4124 = !DILocalVariable(name: "fp", scope: !4107, file: !550, line: 178, type: !4125)
!4125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4126, size: 64)
!4126 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3210, line: 49, baseType: !4127)
!4127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3212, line: 241, size: 1728, elements: !4128)
!4128 = !{!4129, !4130, !4131, !4132, !4133, !4134, !4135, !4136, !4137, !4138, !4139, !4140, !4141, !4149, !4150, !4151, !4152, !4153, !4154, !4155, !4156, !4157, !4158, !4159, !4160, !4161, !4162, !4163, !4164}
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4127, file: !3212, line: 242, baseType: !48, size: 32)
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4127, file: !3212, line: 247, baseType: !6, size: 64, offset: 64)
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4127, file: !3212, line: 248, baseType: !6, size: 64, offset: 128)
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4127, file: !3212, line: 249, baseType: !6, size: 64, offset: 192)
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4127, file: !3212, line: 250, baseType: !6, size: 64, offset: 256)
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4127, file: !3212, line: 251, baseType: !6, size: 64, offset: 320)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4127, file: !3212, line: 252, baseType: !6, size: 64, offset: 384)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4127, file: !3212, line: 253, baseType: !6, size: 64, offset: 448)
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4127, file: !3212, line: 254, baseType: !6, size: 64, offset: 512)
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4127, file: !3212, line: 256, baseType: !6, size: 64, offset: 576)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4127, file: !3212, line: 257, baseType: !6, size: 64, offset: 640)
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4127, file: !3212, line: 258, baseType: !6, size: 64, offset: 704)
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4127, file: !3212, line: 260, baseType: !4142, size: 64, offset: 768)
!4142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4143, size: 64)
!4143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !3212, line: 156, size: 192, elements: !4144)
!4144 = !{!4145, !4146, !4148}
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4143, file: !3212, line: 157, baseType: !4142, size: 64)
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4143, file: !3212, line: 158, baseType: !4147, size: 64, offset: 64)
!4147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4127, size: 64)
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4143, file: !3212, line: 162, baseType: !48, size: 32, offset: 128)
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4127, file: !3212, line: 262, baseType: !4147, size: 64, offset: 832)
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4127, file: !3212, line: 264, baseType: !48, size: 32, offset: 896)
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4127, file: !3212, line: 268, baseType: !48, size: 32, offset: 928)
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4127, file: !3212, line: 270, baseType: !3238, size: 64, offset: 960)
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4127, file: !3212, line: 274, baseType: !137, size: 16, offset: 1024)
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4127, file: !3212, line: 275, baseType: !555, size: 8, offset: 1040)
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4127, file: !3212, line: 276, baseType: !3242, size: 8, offset: 1048)
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4127, file: !3212, line: 280, baseType: !3246, size: 64, offset: 1088)
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4127, file: !3212, line: 289, baseType: !3249, size: 64, offset: 1152)
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4127, file: !3212, line: 297, baseType: !8, size: 64, offset: 1216)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4127, file: !3212, line: 298, baseType: !8, size: 64, offset: 1280)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4127, file: !3212, line: 299, baseType: !8, size: 64, offset: 1344)
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4127, file: !3212, line: 300, baseType: !8, size: 64, offset: 1408)
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4127, file: !3212, line: 302, baseType: !9, size: 64, offset: 1472)
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4127, file: !3212, line: 303, baseType: !48, size: 32, offset: 1536)
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4127, file: !3212, line: 305, baseType: !3257, size: 160, offset: 1568)
!4165 = !DILocalVariable(name: "res_ptr", scope: !4105, file: !550, line: 190, type: !6)
!4166 = !DILocalVariable(name: "res_size", scope: !4105, file: !550, line: 191, type: !9)
!4167 = !DILocalVariable(name: "c", scope: !4102, file: !550, line: 195, type: !48)
!4168 = !DILocalVariable(name: "buf2", scope: !4102, file: !550, line: 197, type: !4169)
!4169 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 408, elements: !4170)
!4170 = !{!4171}
!4171 = !DISubrange(count: 51)
!4172 = !DILocalVariable(name: "l1", scope: !4102, file: !550, line: 198, type: !9)
!4173 = !DILocalVariable(name: "l2", scope: !4102, file: !550, line: 198, type: !9)
!4174 = !DILocalVariable(name: "old_res_ptr", scope: !4102, file: !550, line: 199, type: !6)
!4175 = !DILocation(line: 196, column: 28, scope: !4102, inlinedAt: !4176)
!4176 = distinct !DILocation(line: 589, column: 18, scope: !4099)
!4177 = !DILocation(line: 197, column: 28, scope: !4102, inlinedAt: !4176)
!4178 = !DILocation(line: 403, column: 13, scope: !4089)
!4179 = !DILocation(line: 395, column: 15, scope: !4089)
!4180 = !DILocation(line: 584, column: 15, scope: !4181)
!4181 = distinct !DILexicalBlock(scope: !4089, file: !550, line: 584, column: 7)
!4182 = !DILocation(line: 584, column: 7, scope: !4089)
!4183 = !DILocation(line: 128, column: 8, scope: !4113, inlinedAt: !4176)
!4184 = !DILocation(line: 126, column: 15, scope: !4113, inlinedAt: !4176)
!4185 = !DILocation(line: 129, column: 10, scope: !4112, inlinedAt: !4176)
!4186 = !DILocation(line: 129, column: 7, scope: !4113, inlinedAt: !4176)
!4187 = !DILocation(line: 138, column: 13, scope: !4111, inlinedAt: !4176)
!4188 = !DILocation(line: 132, column: 19, scope: !4111, inlinedAt: !4176)
!4189 = !DILocation(line: 139, column: 15, scope: !4190, inlinedAt: !4176)
!4190 = distinct !DILexicalBlock(scope: !4111, file: !550, line: 139, column: 11)
!4191 = !DILocation(line: 139, column: 23, scope: !4190, inlinedAt: !4176)
!4192 = !DILocation(line: 139, column: 26, scope: !4193, inlinedAt: !4176)
!4193 = !DILexicalBlockFile(scope: !4190, file: !550, discriminator: 1)
!4194 = !DILocation(line: 139, column: 33, scope: !4193, inlinedAt: !4176)
!4195 = !DILocation(line: 139, column: 11, scope: !4196, inlinedAt: !4176)
!4196 = !DILexicalBlockFile(scope: !4111, file: !550, discriminator: 1)
!4197 = !DILocation(line: 140, column: 9, scope: !4190, inlinedAt: !4176)
!4198 = !DILocation(line: 144, column: 26, scope: !4120, inlinedAt: !4176)
!4199 = !DILocation(line: 144, column: 16, scope: !4120, inlinedAt: !4176)
!4200 = !DILocation(line: 145, column: 16, scope: !4120, inlinedAt: !4176)
!4201 = !DILocation(line: 146, column: 34, scope: !4120, inlinedAt: !4176)
!4202 = !DILocation(line: 146, column: 38, scope: !4120, inlinedAt: !4176)
!4203 = !DILocation(line: 146, column: 42, scope: !4204, inlinedAt: !4176)
!4204 = !DILexicalBlockFile(scope: !4120, file: !550, discriminator: 1)
!4205 = !DILocation(line: 146, column: 41, scope: !4204, inlinedAt: !4176)
!4206 = !DILocation(line: 147, column: 48, scope: !4120, inlinedAt: !4176)
!4207 = !DILocation(line: 147, column: 46, scope: !4120, inlinedAt: !4176)
!4208 = !DILocation(line: 147, column: 69, scope: !4120, inlinedAt: !4176)
!4209 = !DILocation(line: 147, column: 30, scope: !4120, inlinedAt: !4176)
!4210 = !DILocation(line: 134, column: 13, scope: !4111, inlinedAt: !4176)
!4211 = !DILocation(line: 148, column: 13, scope: !4120, inlinedAt: !4176)
!4212 = !DILocation(line: 150, column: 13, scope: !4213, inlinedAt: !4176)
!4213 = distinct !DILexicalBlock(scope: !4214, file: !550, line: 149, column: 11)
!4214 = distinct !DILexicalBlock(scope: !4120, file: !550, line: 148, column: 13)
!4215 = !DILocation(line: 151, column: 17, scope: !4213, inlinedAt: !4176)
!4216 = !DILocation(line: 152, column: 34, scope: !4217, inlinedAt: !4176)
!4217 = distinct !DILexicalBlock(scope: !4213, file: !550, line: 151, column: 17)
!4218 = !DILocation(line: 153, column: 41, scope: !4213, inlinedAt: !4176)
!4219 = !DILocation(line: 153, column: 13, scope: !4213, inlinedAt: !4176)
!4220 = !DILocation(line: 157, column: 11, scope: !4111, inlinedAt: !4176)
!4221 = !DILocation(line: 171, column: 16, scope: !4109, inlinedAt: !4176)
!4222 = !DILocation(line: 162, column: 15, scope: !4109, inlinedAt: !4176)
!4223 = !DILocation(line: 173, column: 18, scope: !4108, inlinedAt: !4176)
!4224 = !DILocation(line: 173, column: 15, scope: !4109, inlinedAt: !4176)
!4225 = !DILocation(line: 180, column: 20, scope: !4107, inlinedAt: !4176)
!4226 = !DILocation(line: 178, column: 21, scope: !4107, inlinedAt: !4176)
!4227 = !DILocation(line: 181, column: 22, scope: !4106, inlinedAt: !4176)
!4228 = !DILocation(line: 181, column: 19, scope: !4107, inlinedAt: !4176)
!4229 = !DILocation(line: 190, column: 25, scope: !4105, inlinedAt: !4176)
!4230 = !DILocation(line: 184, column: 19, scope: !4231, inlinedAt: !4176)
!4231 = distinct !DILexicalBlock(scope: !4106, file: !550, line: 182, column: 17)
!4232 = !DILocation(line: 186, column: 17, scope: !4231, inlinedAt: !4176)
!4233 = !DILocation(line: 191, column: 26, scope: !4105, inlinedAt: !4176)
!4234 = !DILocation(line: 196, column: 23, scope: !4102, inlinedAt: !4176)
!4235 = !DILocation(line: 197, column: 23, scope: !4102, inlinedAt: !4176)
!4236 = !DILocalVariable(name: "__fp", arg: 1, scope: !4237, file: !4009, line: 63, type: !4125)
!4237 = distinct !DISubprogram(name: "getc_unlocked", scope: !4009, file: !4009, line: 63, type: !4238, isLocal: false, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: true, unit: !206, variables: !4240)
!4238 = !DISubroutineType(types: !4239)
!4239 = !{!48, !4125}
!4240 = !{!4236}
!4241 = !DILocation(line: 63, column: 22, scope: !4237, inlinedAt: !4242)
!4242 = distinct !DILocation(line: 201, column: 27, scope: !4102, inlinedAt: !4176)
!4243 = !DILocation(line: 65, column: 10, scope: !4237, inlinedAt: !4242)
!4244 = !{!4015, !618, i64 8}
!4245 = !{!4015, !618, i64 16}
!4246 = !{!"branch_weights", i32 2000, i32 1}
!4247 = !DILocation(line: 65, column: 10, scope: !4248, inlinedAt: !4242)
!4248 = !DILexicalBlockFile(scope: !4237, file: !4009, discriminator: 1)
!4249 = !DILocation(line: 65, column: 10, scope: !4250, inlinedAt: !4242)
!4250 = !DILexicalBlockFile(scope: !4237, file: !4009, discriminator: 2)
!4251 = !DILocation(line: 65, column: 10, scope: !4252, inlinedAt: !4242)
!4252 = !DILexicalBlockFile(scope: !4237, file: !4009, discriminator: 3)
!4253 = !DILocation(line: 195, column: 27, scope: !4102, inlinedAt: !4176)
!4254 = !DILocation(line: 202, column: 27, scope: !4102, inlinedAt: !4176)
!4255 = !DILocation(line: 63, column: 22, scope: !4237, inlinedAt: !4256)
!4256 = distinct !DILocation(line: 210, column: 33, scope: !4257, inlinedAt: !4176)
!4257 = distinct !DILexicalBlock(scope: !4258, file: !550, line: 207, column: 25)
!4258 = distinct !DILexicalBlock(scope: !4102, file: !550, line: 206, column: 27)
!4259 = !DILocation(line: 65, column: 10, scope: !4237, inlinedAt: !4256)
!4260 = !DILocation(line: 65, column: 10, scope: !4248, inlinedAt: !4256)
!4261 = !DILocation(line: 65, column: 10, scope: !4250, inlinedAt: !4256)
!4262 = !DILocation(line: 65, column: 10, scope: !4252, inlinedAt: !4256)
!4263 = !DILocation(line: 210, column: 29, scope: !4264, inlinedAt: !4176)
!4264 = !DILexicalBlockFile(scope: !4257, file: !550, discriminator: 1)
!4265 = distinct !{!4265, !4266, !4267}
!4266 = !DILocation(line: 193, column: 19, scope: !4104)
!4267 = !DILocation(line: 241, column: 21, scope: !4104)
!4268 = !DILocation(line: 216, column: 23, scope: !4102, inlinedAt: !4176)
!4269 = !DILocation(line: 217, column: 27, scope: !4270, inlinedAt: !4176)
!4270 = distinct !DILexicalBlock(scope: !4102, file: !550, line: 217, column: 27)
!4271 = !DILocation(line: 217, column: 64, scope: !4270, inlinedAt: !4176)
!4272 = !DILocation(line: 217, column: 27, scope: !4102, inlinedAt: !4176)
!4273 = !DILocation(line: 219, column: 28, scope: !4102, inlinedAt: !4176)
!4274 = !DILocation(line: 198, column: 30, scope: !4102, inlinedAt: !4176)
!4275 = !DILocation(line: 220, column: 28, scope: !4102, inlinedAt: !4176)
!4276 = !DILocation(line: 198, column: 34, scope: !4102, inlinedAt: !4176)
!4277 = !DILocation(line: 199, column: 29, scope: !4102, inlinedAt: !4176)
!4278 = !DILocation(line: 222, column: 36, scope: !4279, inlinedAt: !4176)
!4279 = distinct !DILexicalBlock(scope: !4102, file: !550, line: 222, column: 27)
!4280 = !DILocation(line: 222, column: 27, scope: !4102, inlinedAt: !4176)
!4281 = !DILocation(line: 225, column: 63, scope: !4282, inlinedAt: !4176)
!4282 = distinct !DILexicalBlock(scope: !4279, file: !550, line: 223, column: 25)
!4283 = !DILocation(line: 225, column: 46, scope: !4282, inlinedAt: !4176)
!4284 = !DILocation(line: 226, column: 25, scope: !4282, inlinedAt: !4176)
!4285 = !DILocation(line: 229, column: 36, scope: !4286, inlinedAt: !4176)
!4286 = distinct !DILexicalBlock(scope: !4279, file: !550, line: 228, column: 25)
!4287 = !DILocation(line: 230, column: 73, scope: !4286, inlinedAt: !4176)
!4288 = !DILocation(line: 230, column: 46, scope: !4286, inlinedAt: !4176)
!4289 = !DILocation(line: 232, column: 35, scope: !4290, inlinedAt: !4176)
!4290 = distinct !DILexicalBlock(scope: !4102, file: !550, line: 232, column: 27)
!4291 = !DILocation(line: 232, column: 27, scope: !4102, inlinedAt: !4176)
!4292 = !DILocation(line: 236, column: 27, scope: !4293, inlinedAt: !4176)
!4293 = distinct !DILexicalBlock(scope: !4290, file: !550, line: 233, column: 25)
!4294 = !DILocation(line: 237, column: 27, scope: !4293, inlinedAt: !4176)
!4295 = !DILocation(line: 239, column: 39, scope: !4102, inlinedAt: !4176)
!4296 = !DILocation(line: 239, column: 50, scope: !4102, inlinedAt: !4176)
!4297 = !DILocation(line: 239, column: 61, scope: !4102, inlinedAt: !4176)
!4298 = !DILocalVariable(name: "__dest", arg: 1, scope: !4299, file: !3912, line: 107, type: !3915)
!4299 = distinct !DISubprogram(name: "strcpy", scope: !3912, file: !3912, line: 107, type: !3913, isLocal: false, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: true, unit: !206, variables: !4300)
!4300 = !{!4298, !4301}
!4301 = !DILocalVariable(name: "__src", arg: 2, scope: !4299, file: !3912, line: 107, type: !987)
!4302 = !DILocation(line: 107, column: 1, scope: !4299, inlinedAt: !4303)
!4303 = distinct !DILocation(line: 239, column: 23, scope: !4102, inlinedAt: !4176)
!4304 = !DILocation(line: 109, column: 49, scope: !4299, inlinedAt: !4303)
!4305 = !DILocation(line: 109, column: 10, scope: !4299, inlinedAt: !4303)
!4306 = !DILocation(line: 107, column: 1, scope: !4299, inlinedAt: !4307)
!4307 = distinct !DILocation(line: 240, column: 23, scope: !4102, inlinedAt: !4176)
!4308 = !DILocation(line: 109, column: 49, scope: !4299, inlinedAt: !4307)
!4309 = !DILocation(line: 109, column: 10, scope: !4299, inlinedAt: !4307)
!4310 = !DILocation(line: 241, column: 21, scope: !4103, inlinedAt: !4176)
!4311 = !DILocation(line: 242, column: 19, scope: !4105, inlinedAt: !4176)
!4312 = !DILocation(line: 243, column: 32, scope: !4313, inlinedAt: !4176)
!4313 = distinct !DILexicalBlock(scope: !4105, file: !550, line: 243, column: 23)
!4314 = !DILocation(line: 243, column: 23, scope: !4105, inlinedAt: !4176)
!4315 = !DILocation(line: 247, column: 33, scope: !4316, inlinedAt: !4176)
!4316 = distinct !DILexicalBlock(scope: !4313, file: !550, line: 246, column: 21)
!4317 = !DILocation(line: 247, column: 45, scope: !4316, inlinedAt: !4176)
!4318 = !DILocation(line: 253, column: 11, scope: !4109, inlinedAt: !4176)
!4319 = !DILocation(line: 377, column: 23, scope: !4111, inlinedAt: !4176)
!4320 = !DILocation(line: 378, column: 5, scope: !4111, inlinedAt: !4176)
!4321 = !DILocation(line: 396, column: 15, scope: !4089)
!4322 = !DILocation(line: 590, column: 8, scope: !4098)
!4323 = !DILocation(line: 590, column: 17, scope: !4098)
!4324 = !DILocation(line: 589, column: 3, scope: !4325)
!4325 = !DILexicalBlockFile(scope: !4099, file: !550, discriminator: 1)
!4326 = !DILocation(line: 592, column: 9, scope: !4096)
!4327 = !DILocation(line: 592, column: 35, scope: !4097)
!4328 = !DILocation(line: 593, column: 9, scope: !4097)
!4329 = !DILocation(line: 593, column: 24, scope: !4330)
!4330 = !DILexicalBlockFile(scope: !4097, file: !550, discriminator: 1)
!4331 = !DILocation(line: 593, column: 31, scope: !4330)
!4332 = !DILocation(line: 593, column: 34, scope: !4333)
!4333 = !DILexicalBlockFile(scope: !4097, file: !550, discriminator: 2)
!4334 = !DILocation(line: 593, column: 45, scope: !4333)
!4335 = !DILocation(line: 592, column: 9, scope: !4336)
!4336 = !DILexicalBlockFile(scope: !4098, file: !550, discriminator: 1)
!4337 = !DILocation(line: 595, column: 29, scope: !4338)
!4338 = distinct !DILexicalBlock(scope: !4097, file: !550, line: 594, column: 7)
!4339 = !DILocation(line: 595, column: 27, scope: !4338)
!4340 = !DILocation(line: 595, column: 46, scope: !4338)
!4341 = !DILocation(line: 596, column: 9, scope: !4338)
!4342 = !DILocation(line: 591, column: 19, scope: !4098)
!4343 = !DILocation(line: 591, column: 36, scope: !4098)
!4344 = !DILocation(line: 591, column: 16, scope: !4098)
!4345 = !DILocation(line: 591, column: 52, scope: !4336)
!4346 = !DILocation(line: 591, column: 69, scope: !4098)
!4347 = !DILocation(line: 591, column: 49, scope: !4098)
!4348 = distinct !{!4348, !4349, !4350}
!4349 = !DILocation(line: 589, column: 3, scope: !4099)
!4350 = !DILocation(line: 597, column: 7, scope: !4099)
!4351 = !DILocation(line: 602, column: 7, scope: !4352)
!4352 = distinct !DILexicalBlock(scope: !4089, file: !550, line: 602, column: 7)
!4353 = !DILocation(line: 602, column: 18, scope: !4352)
!4354 = !DILocation(line: 602, column: 7, scope: !4089)
!4355 = !DILocation(line: 612, column: 3, scope: !4089)
!4356 = distinct !DISubprogram(name: "rpl_fclose", scope: !4357, file: !4357, line: 56, type: !4358, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !593, variables: !4400)
!4357 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4358 = !DISubroutineType(types: !4359)
!4359 = !{!48, !4360}
!4360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4361, size: 64)
!4361 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3210, line: 49, baseType: !4362)
!4362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3212, line: 241, size: 1728, elements: !4363)
!4363 = !{!4364, !4365, !4366, !4367, !4368, !4369, !4370, !4371, !4372, !4373, !4374, !4375, !4376, !4384, !4385, !4386, !4387, !4388, !4389, !4390, !4391, !4392, !4393, !4394, !4395, !4396, !4397, !4398, !4399}
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4362, file: !3212, line: 242, baseType: !48, size: 32)
!4365 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4362, file: !3212, line: 247, baseType: !6, size: 64, offset: 64)
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4362, file: !3212, line: 248, baseType: !6, size: 64, offset: 128)
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4362, file: !3212, line: 249, baseType: !6, size: 64, offset: 192)
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4362, file: !3212, line: 250, baseType: !6, size: 64, offset: 256)
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4362, file: !3212, line: 251, baseType: !6, size: 64, offset: 320)
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4362, file: !3212, line: 252, baseType: !6, size: 64, offset: 384)
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4362, file: !3212, line: 253, baseType: !6, size: 64, offset: 448)
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4362, file: !3212, line: 254, baseType: !6, size: 64, offset: 512)
!4373 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4362, file: !3212, line: 256, baseType: !6, size: 64, offset: 576)
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4362, file: !3212, line: 257, baseType: !6, size: 64, offset: 640)
!4375 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4362, file: !3212, line: 258, baseType: !6, size: 64, offset: 704)
!4376 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4362, file: !3212, line: 260, baseType: !4377, size: 64, offset: 768)
!4377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4378, size: 64)
!4378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !3212, line: 156, size: 192, elements: !4379)
!4379 = !{!4380, !4381, !4383}
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4378, file: !3212, line: 157, baseType: !4377, size: 64)
!4381 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4378, file: !3212, line: 158, baseType: !4382, size: 64, offset: 64)
!4382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4362, size: 64)
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4378, file: !3212, line: 162, baseType: !48, size: 32, offset: 128)
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4362, file: !3212, line: 262, baseType: !4382, size: 64, offset: 832)
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4362, file: !3212, line: 264, baseType: !48, size: 32, offset: 896)
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4362, file: !3212, line: 268, baseType: !48, size: 32, offset: 928)
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4362, file: !3212, line: 270, baseType: !3238, size: 64, offset: 960)
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4362, file: !3212, line: 274, baseType: !137, size: 16, offset: 1024)
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4362, file: !3212, line: 275, baseType: !555, size: 8, offset: 1040)
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4362, file: !3212, line: 276, baseType: !3242, size: 8, offset: 1048)
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4362, file: !3212, line: 280, baseType: !3246, size: 64, offset: 1088)
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4362, file: !3212, line: 289, baseType: !3249, size: 64, offset: 1152)
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4362, file: !3212, line: 297, baseType: !8, size: 64, offset: 1216)
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4362, file: !3212, line: 298, baseType: !8, size: 64, offset: 1280)
!4395 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4362, file: !3212, line: 299, baseType: !8, size: 64, offset: 1344)
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4362, file: !3212, line: 300, baseType: !8, size: 64, offset: 1408)
!4397 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4362, file: !3212, line: 302, baseType: !9, size: 64, offset: 1472)
!4398 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4362, file: !3212, line: 303, baseType: !48, size: 32, offset: 1536)
!4399 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4362, file: !3212, line: 305, baseType: !3257, size: 160, offset: 1568)
!4400 = !{!4401, !4402, !4403, !4404}
!4401 = !DILocalVariable(name: "fp", arg: 1, scope: !4356, file: !4357, line: 56, type: !4360)
!4402 = !DILocalVariable(name: "saved_errno", scope: !4356, file: !4357, line: 58, type: !48)
!4403 = !DILocalVariable(name: "fd", scope: !4356, file: !4357, line: 59, type: !48)
!4404 = !DILocalVariable(name: "result", scope: !4356, file: !4357, line: 60, type: !48)
!4405 = !DILocation(line: 56, column: 19, scope: !4356)
!4406 = !DILocation(line: 58, column: 7, scope: !4356)
!4407 = !DILocation(line: 60, column: 7, scope: !4356)
!4408 = !DILocation(line: 63, column: 8, scope: !4356)
!4409 = !DILocation(line: 59, column: 7, scope: !4356)
!4410 = !DILocation(line: 64, column: 10, scope: !4411)
!4411 = distinct !DILexicalBlock(scope: !4356, file: !4357, line: 64, column: 7)
!4412 = !DILocation(line: 64, column: 7, scope: !4356)
!4413 = !DILocation(line: 65, column: 12, scope: !4411)
!4414 = !DILocation(line: 65, column: 5, scope: !4411)
!4415 = !DILocation(line: 70, column: 9, scope: !4416)
!4416 = distinct !DILexicalBlock(scope: !4356, file: !4357, line: 70, column: 7)
!4417 = !DILocation(line: 70, column: 23, scope: !4416)
!4418 = !DILocation(line: 70, column: 33, scope: !4419)
!4419 = !DILexicalBlockFile(scope: !4416, file: !4357, discriminator: 1)
!4420 = !DILocation(line: 70, column: 26, scope: !4421)
!4421 = !DILexicalBlockFile(scope: !4416, file: !4357, discriminator: 3)
!4422 = !DILocation(line: 70, column: 59, scope: !4419)
!4423 = !DILocation(line: 71, column: 7, scope: !4416)
!4424 = !DILocation(line: 71, column: 10, scope: !4419)
!4425 = !DILocation(line: 70, column: 7, scope: !4426)
!4426 = !DILexicalBlockFile(scope: !4356, file: !4357, discriminator: 2)
!4427 = !DILocation(line: 98, column: 12, scope: !4356)
!4428 = !DILocation(line: 103, column: 7, scope: !4356)
!4429 = !DILocation(line: 72, column: 19, scope: !4416)
!4430 = !DILocation(line: 103, column: 19, scope: !4431)
!4431 = distinct !DILexicalBlock(scope: !4356, file: !4357, line: 103, column: 7)
!4432 = !DILocation(line: 105, column: 13, scope: !4433)
!4433 = distinct !DILexicalBlock(scope: !4431, file: !4357, line: 104, column: 5)
!4434 = !DILocation(line: 107, column: 5, scope: !4433)
!4435 = !DILocation(line: 110, column: 1, scope: !4356)
!4436 = distinct !DISubprogram(name: "rpl_fflush", scope: !4437, file: !4437, line: 127, type: !4438, isLocal: false, isDefinition: true, scopeLine: 128, flags: DIFlagPrototyped, isOptimized: true, unit: !595, variables: !4480)
!4437 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4438 = !DISubroutineType(types: !4439)
!4439 = !{!48, !4440}
!4440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4441, size: 64)
!4441 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3210, line: 49, baseType: !4442)
!4442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3212, line: 241, size: 1728, elements: !4443)
!4443 = !{!4444, !4445, !4446, !4447, !4448, !4449, !4450, !4451, !4452, !4453, !4454, !4455, !4456, !4464, !4465, !4466, !4467, !4468, !4469, !4470, !4471, !4472, !4473, !4474, !4475, !4476, !4477, !4478, !4479}
!4444 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4442, file: !3212, line: 242, baseType: !48, size: 32)
!4445 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4442, file: !3212, line: 247, baseType: !6, size: 64, offset: 64)
!4446 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4442, file: !3212, line: 248, baseType: !6, size: 64, offset: 128)
!4447 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4442, file: !3212, line: 249, baseType: !6, size: 64, offset: 192)
!4448 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4442, file: !3212, line: 250, baseType: !6, size: 64, offset: 256)
!4449 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4442, file: !3212, line: 251, baseType: !6, size: 64, offset: 320)
!4450 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4442, file: !3212, line: 252, baseType: !6, size: 64, offset: 384)
!4451 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4442, file: !3212, line: 253, baseType: !6, size: 64, offset: 448)
!4452 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4442, file: !3212, line: 254, baseType: !6, size: 64, offset: 512)
!4453 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4442, file: !3212, line: 256, baseType: !6, size: 64, offset: 576)
!4454 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4442, file: !3212, line: 257, baseType: !6, size: 64, offset: 640)
!4455 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4442, file: !3212, line: 258, baseType: !6, size: 64, offset: 704)
!4456 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4442, file: !3212, line: 260, baseType: !4457, size: 64, offset: 768)
!4457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4458, size: 64)
!4458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !3212, line: 156, size: 192, elements: !4459)
!4459 = !{!4460, !4461, !4463}
!4460 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4458, file: !3212, line: 157, baseType: !4457, size: 64)
!4461 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4458, file: !3212, line: 158, baseType: !4462, size: 64, offset: 64)
!4462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4442, size: 64)
!4463 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4458, file: !3212, line: 162, baseType: !48, size: 32, offset: 128)
!4464 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4442, file: !3212, line: 262, baseType: !4462, size: 64, offset: 832)
!4465 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4442, file: !3212, line: 264, baseType: !48, size: 32, offset: 896)
!4466 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4442, file: !3212, line: 268, baseType: !48, size: 32, offset: 928)
!4467 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4442, file: !3212, line: 270, baseType: !3238, size: 64, offset: 960)
!4468 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4442, file: !3212, line: 274, baseType: !137, size: 16, offset: 1024)
!4469 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4442, file: !3212, line: 275, baseType: !555, size: 8, offset: 1040)
!4470 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4442, file: !3212, line: 276, baseType: !3242, size: 8, offset: 1048)
!4471 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4442, file: !3212, line: 280, baseType: !3246, size: 64, offset: 1088)
!4472 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4442, file: !3212, line: 289, baseType: !3249, size: 64, offset: 1152)
!4473 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4442, file: !3212, line: 297, baseType: !8, size: 64, offset: 1216)
!4474 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4442, file: !3212, line: 298, baseType: !8, size: 64, offset: 1280)
!4475 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4442, file: !3212, line: 299, baseType: !8, size: 64, offset: 1344)
!4476 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4442, file: !3212, line: 300, baseType: !8, size: 64, offset: 1408)
!4477 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4442, file: !3212, line: 302, baseType: !9, size: 64, offset: 1472)
!4478 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4442, file: !3212, line: 303, baseType: !48, size: 32, offset: 1536)
!4479 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4442, file: !3212, line: 305, baseType: !3257, size: 160, offset: 1568)
!4480 = !{!4481}
!4481 = !DILocalVariable(name: "stream", arg: 1, scope: !4436, file: !4437, line: 127, type: !4440)
!4482 = !DILocation(line: 127, column: 19, scope: !4436)
!4483 = !DILocation(line: 148, column: 14, scope: !4484)
!4484 = distinct !DILexicalBlock(scope: !4436, file: !4437, line: 148, column: 7)
!4485 = !DILocation(line: 148, column: 22, scope: !4484)
!4486 = !DILocation(line: 148, column: 27, scope: !4487)
!4487 = !DILexicalBlockFile(scope: !4484, file: !4437, discriminator: 1)
!4488 = !DILocation(line: 148, column: 7, scope: !4489)
!4489 = !DILexicalBlockFile(scope: !4436, file: !4437, discriminator: 1)
!4490 = !DILocation(line: 149, column: 12, scope: !4484)
!4491 = !DILocation(line: 149, column: 5, scope: !4484)
!4492 = !DILocalVariable(name: "fp", arg: 1, scope: !4493, file: !4437, line: 40, type: !4440)
!4493 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !4437, file: !4437, line: 40, type: !4494, isLocal: true, isDefinition: true, scopeLine: 41, flags: DIFlagPrototyped, isOptimized: true, unit: !595, variables: !4496)
!4494 = !DISubroutineType(types: !4495)
!4495 = !{null, !4440}
!4496 = !{!4492}
!4497 = !DILocation(line: 40, column: 48, scope: !4493, inlinedAt: !4498)
!4498 = distinct !DILocation(line: 153, column: 3, scope: !4436)
!4499 = !DILocation(line: 42, column: 11, scope: !4500, inlinedAt: !4498)
!4500 = distinct !DILexicalBlock(scope: !4493, file: !4437, line: 42, column: 7)
!4501 = !DILocation(line: 42, column: 18, scope: !4500, inlinedAt: !4498)
!4502 = !DILocation(line: 42, column: 7, scope: !4493, inlinedAt: !4498)
!4503 = !DILocation(line: 44, column: 5, scope: !4500, inlinedAt: !4498)
!4504 = !DILocation(line: 155, column: 10, scope: !4436)
!4505 = !DILocation(line: 155, column: 3, scope: !4436)
!4506 = !DILocation(line: 229, column: 1, scope: !4436)
!4507 = distinct !DISubprogram(name: "rpl_fseeko", scope: !4508, file: !4508, line: 28, type: !4509, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !597, variables: !4552)
!4508 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4509 = !DISubroutineType(types: !4510)
!4510 = !{!48, !4511, !4551, !48}
!4511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4512, size: 64)
!4512 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3210, line: 49, baseType: !4513)
!4513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3212, line: 241, size: 1728, elements: !4514)
!4514 = !{!4515, !4516, !4517, !4518, !4519, !4520, !4521, !4522, !4523, !4524, !4525, !4526, !4527, !4535, !4536, !4537, !4538, !4539, !4540, !4541, !4542, !4543, !4544, !4545, !4546, !4547, !4548, !4549, !4550}
!4515 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4513, file: !3212, line: 242, baseType: !48, size: 32)
!4516 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4513, file: !3212, line: 247, baseType: !6, size: 64, offset: 64)
!4517 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4513, file: !3212, line: 248, baseType: !6, size: 64, offset: 128)
!4518 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4513, file: !3212, line: 249, baseType: !6, size: 64, offset: 192)
!4519 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4513, file: !3212, line: 250, baseType: !6, size: 64, offset: 256)
!4520 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4513, file: !3212, line: 251, baseType: !6, size: 64, offset: 320)
!4521 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4513, file: !3212, line: 252, baseType: !6, size: 64, offset: 384)
!4522 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4513, file: !3212, line: 253, baseType: !6, size: 64, offset: 448)
!4523 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4513, file: !3212, line: 254, baseType: !6, size: 64, offset: 512)
!4524 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4513, file: !3212, line: 256, baseType: !6, size: 64, offset: 576)
!4525 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4513, file: !3212, line: 257, baseType: !6, size: 64, offset: 640)
!4526 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4513, file: !3212, line: 258, baseType: !6, size: 64, offset: 704)
!4527 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4513, file: !3212, line: 260, baseType: !4528, size: 64, offset: 768)
!4528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4529, size: 64)
!4529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !3212, line: 156, size: 192, elements: !4530)
!4530 = !{!4531, !4532, !4534}
!4531 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4529, file: !3212, line: 157, baseType: !4528, size: 64)
!4532 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4529, file: !3212, line: 158, baseType: !4533, size: 64, offset: 64)
!4533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4513, size: 64)
!4534 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4529, file: !3212, line: 162, baseType: !48, size: 32, offset: 128)
!4535 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4513, file: !3212, line: 262, baseType: !4533, size: 64, offset: 832)
!4536 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4513, file: !3212, line: 264, baseType: !48, size: 32, offset: 896)
!4537 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4513, file: !3212, line: 268, baseType: !48, size: 32, offset: 928)
!4538 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4513, file: !3212, line: 270, baseType: !3238, size: 64, offset: 960)
!4539 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4513, file: !3212, line: 274, baseType: !137, size: 16, offset: 1024)
!4540 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4513, file: !3212, line: 275, baseType: !555, size: 8, offset: 1040)
!4541 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4513, file: !3212, line: 276, baseType: !3242, size: 8, offset: 1048)
!4542 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4513, file: !3212, line: 280, baseType: !3246, size: 64, offset: 1088)
!4543 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4513, file: !3212, line: 289, baseType: !3249, size: 64, offset: 1152)
!4544 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4513, file: !3212, line: 297, baseType: !8, size: 64, offset: 1216)
!4545 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4513, file: !3212, line: 298, baseType: !8, size: 64, offset: 1280)
!4546 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4513, file: !3212, line: 299, baseType: !8, size: 64, offset: 1344)
!4547 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4513, file: !3212, line: 300, baseType: !8, size: 64, offset: 1408)
!4548 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4513, file: !3212, line: 302, baseType: !9, size: 64, offset: 1472)
!4549 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4513, file: !3212, line: 303, baseType: !48, size: 32, offset: 1536)
!4550 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4513, file: !3212, line: 305, baseType: !3257, size: 160, offset: 1568)
!4551 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !3210, line: 91, baseType: !3238)
!4552 = !{!4553, !4554, !4555, !4556}
!4553 = !DILocalVariable(name: "fp", arg: 1, scope: !4507, file: !4508, line: 28, type: !4511)
!4554 = !DILocalVariable(name: "offset", arg: 2, scope: !4507, file: !4508, line: 28, type: !4551)
!4555 = !DILocalVariable(name: "whence", arg: 3, scope: !4507, file: !4508, line: 28, type: !48)
!4556 = !DILocalVariable(name: "pos", scope: !4557, file: !4508, line: 116, type: !4551)
!4557 = distinct !DILexicalBlock(scope: !4558, file: !4508, line: 112, column: 5)
!4558 = distinct !DILexicalBlock(scope: !4507, file: !4508, line: 51, column: 7)
!4559 = !DILocation(line: 28, column: 15, scope: !4507)
!4560 = !DILocation(line: 28, column: 25, scope: !4507)
!4561 = !DILocation(line: 28, column: 37, scope: !4507)
!4562 = !DILocation(line: 51, column: 11, scope: !4558)
!4563 = !DILocation(line: 51, column: 31, scope: !4558)
!4564 = !DILocation(line: 51, column: 24, scope: !4558)
!4565 = !DILocation(line: 52, column: 7, scope: !4558)
!4566 = !DILocation(line: 52, column: 14, scope: !4567)
!4567 = !DILexicalBlockFile(scope: !4558, file: !4508, discriminator: 1)
!4568 = !{!4015, !618, i64 40}
!4569 = !DILocation(line: 52, column: 35, scope: !4567)
!4570 = !{!4015, !618, i64 32}
!4571 = !DILocation(line: 52, column: 28, scope: !4567)
!4572 = !DILocation(line: 53, column: 7, scope: !4558)
!4573 = !DILocation(line: 53, column: 14, scope: !4567)
!4574 = !{!4015, !618, i64 72}
!4575 = !DILocation(line: 53, column: 28, scope: !4567)
!4576 = !DILocation(line: 51, column: 7, scope: !4577)
!4577 = !DILexicalBlockFile(scope: !4507, file: !4508, discriminator: 1)
!4578 = !DILocation(line: 116, column: 26, scope: !4557)
!4579 = !DILocation(line: 116, column: 19, scope: !4580)
!4580 = !DILexicalBlockFile(scope: !4557, file: !4508, discriminator: 1)
!4581 = !DILocation(line: 116, column: 13, scope: !4557)
!4582 = !DILocation(line: 117, column: 15, scope: !4583)
!4583 = distinct !DILexicalBlock(scope: !4557, file: !4508, line: 117, column: 11)
!4584 = !DILocation(line: 117, column: 11, scope: !4557)
!4585 = !DILocation(line: 127, column: 11, scope: !4557)
!4586 = !DILocation(line: 127, column: 18, scope: !4557)
!4587 = !DILocation(line: 128, column: 11, scope: !4557)
!4588 = !DILocation(line: 128, column: 19, scope: !4557)
!4589 = !{!4015, !2522, i64 144}
!4590 = !DILocation(line: 159, column: 7, scope: !4557)
!4591 = !DILocation(line: 161, column: 10, scope: !4507)
!4592 = !DILocation(line: 161, column: 3, scope: !4507)
!4593 = !DILocation(line: 162, column: 1, scope: !4507)
