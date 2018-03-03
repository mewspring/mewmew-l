; ModuleID = 'coreutils-8.27/src/timeout.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.option = type { i8*, i32, i32*, i32 }
%struct.__locale_struct = type { [13 x %struct.__locale_data*], i16*, i32*, i32*, [13 x i8*] }
%struct.__locale_data = type opaque
%struct.quoting_options = type { i32, i32, [8 x i32], i8*, i8* }
%struct.slotvec = type { i64, i8* }
%struct.numname = type { i32, [8 x i8] }
%struct.__sigset_t = type { [16 x i64] }
%struct.sigaction = type { %union.anon, %struct.__sigset_t, i32, void ()* }
%union.anon = type { void (i32)* }
%struct.itimerspec = type { %struct.timespec, %struct.timespec }
%struct.timespec = type { i64, i64 }
%struct.sigevent = type { %union.sigval, i32, i32, %union.anon.8 }
%union.sigval = type { i8* }
%union.anon.8 = type { %struct.anon.9, [32 x i8] }
%struct.anon.9 = type { void (i8*)*, %union.pthread_attr_t* }
%union.pthread_attr_t = type { i64, [48 x i8] }
%struct.__mbstate_t = type { i32, %union.anon.5 }
%union.anon.5 = type { i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [65 x i8] c"Usage: %s [OPTION] DURATION COMMAND [ARG]...\0A  or:  %s [OPTION]\0A\00", align 1
@.str.2 = private unnamed_addr constant [61 x i8] c"Start COMMAND, and kill it if still running after DURATION.\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.20 = private unnamed_addr constant [75 x i8] c"\0AMandatory arguments to long options are mandatory for short options too.\0A\00", align 1
@.str.3 = private unnamed_addr constant [732 x i8] c"      --preserve-status\0A                 exit with the same status as COMMAND, even when the\0A                   command times out\0A      --foreground\0A                 when not running timeout directly from a shell prompt,\0A                   allow COMMAND to read from the TTY and get TTY signals;\0A                   in this mode, children of COMMAND will not be timed out\0A  -k, --kill-after=DURATION\0A                 also send a KILL signal if COMMAND is still running\0A                   this long after the initial signal was sent\0A  -s, --signal=SIGNAL\0A                 specify the signal to be sent on timeout;\0A                   SIGNAL may be a name like 'HUP' or a number;\0A                   see 'kill -l' for a list of signals\0A\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.5 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.6 = private unnamed_addr constant [142 x i8] c"\0ADURATION is a floating point number with an optional suffix:\0A's' for seconds (the default), 'm' for minutes, 'h' for hours or 'd' for days.\0A\00", align 1
@.str.7 = private unnamed_addr constant [415 x i8] c"\0AIf the command times out, and --preserve-status is not set, then exit with\0Astatus 124.  Otherwise, exit with the status of COMMAND.  If no signal\0Ais specified, send the TERM signal upon timeout.  The TERM signal kills\0Aany process that does not block or catch that signal.  It may be necessary\0Ato use the KILL (9) signal, since this signal cannot be caught, in which\0Acase the exit status is 128+9 rather than 124.\0A\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"timeout\00", align 1
@.str.29 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.30 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.31 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.32 = private unnamed_addr constant [69 x i8] c"Report %s translation bugs to <http://translationproject.org/team/>\0A\00", align 1
@.str.33 = private unnamed_addr constant [31 x i8] c"Full documentation at: <%s%s>\0A\00", align 1
@.str.34 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.35 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.9 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"+k:s:\00", align 1
@long_options = internal constant [7 x %struct.option] [%struct.option { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.36, i32 0, i32 0), i32 1, i32* null, i32 107 }, %struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.37, i32 0, i32 0), i32 1, i32* null, i32 115 }, %struct.option { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.38, i32 0, i32 0), i32 0, i32* null, i32 128 }, %struct.option { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.39, i32 0, i32 0), i32 0, i32* null, i32 129 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.40, i32 0, i32 0), i32 0, i32* null, i32 -130 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.41, i32 0, i32 0), i32 0, i32* null, i32 -131 }, %struct.option zeroinitializer], align 16, !dbg !0
@optarg = external local_unnamed_addr global i8*, align 8
@kill_after = internal unnamed_addr global double 0.000000e+00, align 8, !dbg !42
@term_signal = internal unnamed_addr global i32 15, align 4, !dbg !79
@foreground = internal unnamed_addr global i1 false, align 1
@preserve_status = internal unnamed_addr global i1 false, align 1
@.str.14 = private unnamed_addr constant [14 x i8] c"Padraig Brady\00", align 1
@optind = external local_unnamed_addr global i32, align 4
@monitored_pid = internal unnamed_addr global i32 0, align 4, !dbg !36
@.str.15 = private unnamed_addr constant [24 x i8] c"fork system call failed\00", align 1
@.str.16 = private unnamed_addr constant [25 x i8] c"failed to run command %s\00", align 1
@.str.43 = private unnamed_addr constant [21 x i8] c"warning: sigprocmask\00", align 1
@.str.17 = private unnamed_addr constant [26 x i8] c"error waiting for command\00", align 1
@.str.18 = private unnamed_addr constant [34 x i8] c"the monitored command dumped core\00", align 1
@timed_out = internal unnamed_addr global i1 false, align 4
@.str.46 = private unnamed_addr constant [37 x i8] c"warning: disabling core dumps failed\00", align 1
@.str.19 = private unnamed_addr constant [33 x i8] c"unknown status from command (%d)\00", align 1
@.str.44 = private unnamed_addr constant [23 x i8] c"warning: timer_settime\00", align 1
@.str.45 = private unnamed_addr constant [22 x i8] c"warning: timer_create\00", align 1
@.str.42 = private unnamed_addr constant [25 x i8] c"invalid time interval %s\00", align 1
@.str.36 = private unnamed_addr constant [11 x i8] c"kill-after\00", align 1
@.str.37 = private unnamed_addr constant [7 x i8] c"signal\00", align 1
@.str.38 = private unnamed_addr constant [11 x i8] c"foreground\00", align 1
@.str.39 = private unnamed_addr constant [16 x i8] c"preserve-status\00", align 1
@.str.40 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.41 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.21 = private unnamed_addr constant [27 x i8] c"abcdefghijklmnopqrstuvwxyz\00", align 1
@.str.1.22 = private unnamed_addr constant [19 x i8] c"%s: invalid signal\00", align 1
@Version = local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i64 0, i64 0), align 8, !dbg !91
@.str.25 = private unnamed_addr constant [5 x i8] c"8.27\00", align 1
@c_locale_cache = internal global %struct.__locale_struct* null, align 8, !dbg !97
@.str.28 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !127
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !132
@.str.47 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.48 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.49 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = global i32 1, align 4, !dbg !135
@program_name = local_unnamed_addr global i8* null, align 8, !dbg !142
@.str.58 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.59 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.60 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.61, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.62, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.63, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.64, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.65, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.66, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.67, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.68, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.69, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.70, i32 0, i32 0), i8* null], align 16, !dbg !149
@.str.61 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.62 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.63 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.64 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.65 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.66 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.67 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.68 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.69 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.70 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_vals = local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !190
@quote_quoting_options = global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !197
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !210
@.str.11.71 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.72 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.73 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.74 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.75 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.76 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.77 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !217
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !224
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !212
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !226
@.str.82 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.83 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.84 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.3.85 = private unnamed_addr constant [203 x i8] c"\0ALicense GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\0A\00", align 1
@.str.4.86 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.5.87 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.6.88 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.7.89 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.8.90 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.9.91 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.10.92 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.11.93 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.12.94 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.13.95 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@.str.14.98 = private unnamed_addr constant [21 x i8] c"\0AReport bugs to: %s\0A\00", align 1
@.str.15.99 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.16.100 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.17.101 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.18.102 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.19.103 = private unnamed_addr constant [64 x i8] c"General help using GNU software: <http://www.gnu.org/gethelp/>\0A\00", align 1
@version_etc_copyright = constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !232
@.str.1.116 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.117 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@numname_table = internal global [35 x %struct.numname] [%struct.numname { i32 1, [8 x i8] c"HUP\00\00\00\00\00" }, %struct.numname { i32 2, [8 x i8] c"INT\00\00\00\00\00" }, %struct.numname { i32 3, [8 x i8] c"QUIT\00\00\00\00" }, %struct.numname { i32 4, [8 x i8] c"ILL\00\00\00\00\00" }, %struct.numname { i32 5, [8 x i8] c"TRAP\00\00\00\00" }, %struct.numname { i32 6, [8 x i8] c"ABRT\00\00\00\00" }, %struct.numname { i32 8, [8 x i8] c"FPE\00\00\00\00\00" }, %struct.numname { i32 9, [8 x i8] c"KILL\00\00\00\00" }, %struct.numname { i32 11, [8 x i8] c"SEGV\00\00\00\00" }, %struct.numname { i32 7, [8 x i8] c"BUS\00\00\00\00\00" }, %struct.numname { i32 13, [8 x i8] c"PIPE\00\00\00\00" }, %struct.numname { i32 14, [8 x i8] c"ALRM\00\00\00\00" }, %struct.numname { i32 15, [8 x i8] c"TERM\00\00\00\00" }, %struct.numname { i32 10, [8 x i8] c"USR1\00\00\00\00" }, %struct.numname { i32 12, [8 x i8] c"USR2\00\00\00\00" }, %struct.numname { i32 17, [8 x i8] c"CHLD\00\00\00\00" }, %struct.numname { i32 23, [8 x i8] c"URG\00\00\00\00\00" }, %struct.numname { i32 19, [8 x i8] c"STOP\00\00\00\00" }, %struct.numname { i32 20, [8 x i8] c"TSTP\00\00\00\00" }, %struct.numname { i32 18, [8 x i8] c"CONT\00\00\00\00" }, %struct.numname { i32 21, [8 x i8] c"TTIN\00\00\00\00" }, %struct.numname { i32 22, [8 x i8] c"TTOU\00\00\00\00" }, %struct.numname { i32 31, [8 x i8] c"SYS\00\00\00\00\00" }, %struct.numname { i32 29, [8 x i8] c"POLL\00\00\00\00" }, %struct.numname { i32 26, [8 x i8] c"VTALRM\00\00" }, %struct.numname { i32 27, [8 x i8] c"PROF\00\00\00\00" }, %struct.numname { i32 24, [8 x i8] c"XCPU\00\00\00\00" }, %struct.numname { i32 25, [8 x i8] c"XFSZ\00\00\00\00" }, %struct.numname { i32 6, [8 x i8] c"IOT\00\00\00\00\00" }, %struct.numname { i32 17, [8 x i8] c"CLD\00\00\00\00\00" }, %struct.numname { i32 30, [8 x i8] c"PWR\00\00\00\00\00" }, %struct.numname { i32 28, [8 x i8] c"WINCH\00\00\00" }, %struct.numname { i32 29, [8 x i8] c"IO\00\00\00\00\00\00" }, %struct.numname { i32 16, [8 x i8] c"STKFLT\00\00" }, %struct.numname { i32 0, [8 x i8] c"EXIT\00\00\00\00" }], align 16, !dbg !241
@.str.126 = private unnamed_addr constant [6 x i8] c"RTMIN\00", align 1
@.str.1.127 = private unnamed_addr constant [6 x i8] c"RTMAX\00", align 1
@.str.2.130 = private unnamed_addr constant [4 x i8] c"%+d\00", align 1
@.str.1.135 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.138 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@charset_aliases = internal global i8* null, align 8, !dbg !256
@.str.3.139 = private unnamed_addr constant [16 x i8] c"CHARSETALIASDIR\00", align 1
@.str.4.140 = private unnamed_addr constant [15 x i8] c"/usr/local/lib\00", align 1
@.str.2.141 = private unnamed_addr constant [14 x i8] c"charset.alias\00", align 1
@.str.5.142 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.6.143 = private unnamed_addr constant [10 x i8] c"%50s %50s\00", align 1
@.str.1.144 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @usage(i32) local_unnamed_addr #0 !dbg !669 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !671, metadata !672), !dbg !673
  %2 = icmp eq i32 %0, 0, !dbg !674
  br i1 %2, label %8, label %3, !dbg !676

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !677, !tbaa !680
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #12, !dbg !677
  %6 = load i8*, i8** @program_name, align 8, !dbg !677, !tbaa !680
  %7 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %4, i32 1, i8* %5, i8* %6) #12, !dbg !684
  br label %48, !dbg !686

; <label>:8:                                      ; preds = %1
  %9 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.1, i64 0, i64 0), i32 5) #12, !dbg !688
  %10 = load i8*, i8** @program_name, align 8, !dbg !688, !tbaa !680
  %11 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %9, i8* %10, i8* %10) #12, !dbg !690
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.2, i64 0, i64 0), i32 5) #12, !dbg !692
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !692, !tbaa !680
  %14 = tail call i32 @fputs_unlocked(i8* %12, %struct._IO_FILE* %13) #12, !dbg !693
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.20, i64 0, i64 0), i32 5) #12, !dbg !694
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !694, !tbaa !680
  %17 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %16) #12, !dbg !699
  %18 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([732 x i8], [732 x i8]* @.str.3, i64 0, i64 0), i32 5) #12, !dbg !701
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !701, !tbaa !680
  %20 = tail call i32 @fputs_unlocked(i8* %18, %struct._IO_FILE* %19) #12, !dbg !702
  %21 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i32 5) #12, !dbg !703
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !703, !tbaa !680
  %23 = tail call i32 @fputs_unlocked(i8* %21, %struct._IO_FILE* %22) #12, !dbg !704
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.5, i64 0, i64 0), i32 5) #12, !dbg !705
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !705, !tbaa !680
  %26 = tail call i32 @fputs_unlocked(i8* %24, %struct._IO_FILE* %25) #12, !dbg !706
  %27 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([142 x i8], [142 x i8]* @.str.6, i64 0, i64 0), i32 5) #12, !dbg !707
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !707, !tbaa !680
  %29 = tail call i32 @fputs_unlocked(i8* %27, %struct._IO_FILE* %28) #12, !dbg !708
  %30 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([415 x i8], [415 x i8]* @.str.7, i64 0, i64 0), i32 5) #12, !dbg !709
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !709, !tbaa !680
  %32 = tail call i32 @fputs_unlocked(i8* %30, %struct._IO_FILE* %31) #12, !dbg !710
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !57, metadata !672) #12, !dbg !711
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i64 0, metadata !57, metadata !672) #12, !dbg !711
  %33 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.29, i64 0, i64 0), i32 5) #12, !dbg !713
  %34 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %33, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.30, i64 0, i64 0)) #12, !dbg !714
  %35 = tail call i8* @setlocale(i32 5, i8* null) #12, !dbg !716
  tail call void @llvm.dbg.value(metadata i8* %35, i64 0, metadata !68, metadata !672) #12, !dbg !717
  %36 = icmp eq i8* %35, null, !dbg !718
  br i1 %36, label %43, label %37, !dbg !719

; <label>:37:                                     ; preds = %8
  %38 = tail call i32 @strncmp(i8* nonnull %35, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.31, i64 0, i64 0), i64 3) #11, !dbg !720
  %39 = icmp eq i32 %38, 0, !dbg !720
  br i1 %39, label %43, label %40, !dbg !722

; <label>:40:                                     ; preds = %37
  %41 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.32, i64 0, i64 0), i32 5) #12, !dbg !724
  %42 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %41, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0)) #12, !dbg !726
  br label %43, !dbg !728

; <label>:43:                                     ; preds = %8, %37, %40
  %44 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.33, i64 0, i64 0), i32 5) #12, !dbg !729
  %45 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %44, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.30, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0)) #12, !dbg !730
  %46 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.34, i64 0, i64 0), i32 5) #12, !dbg !731
  %47 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %46, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.35, i64 0, i64 0)) #12, !dbg !732
  br label %48

; <label>:48:                                     ; preds = %43, %3
  tail call void @exit(i32 %0) #15, !dbg !733
  unreachable, !dbg !733
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
define i32 @main(i32, i8**) local_unnamed_addr #6 !dbg !734 {
  %3 = alloca %struct.__sigset_t, align 8
  %4 = alloca %struct.sigaction, align 8
  %5 = alloca %struct.sigaction, align 8
  %6 = alloca [19 x i8], align 16
  %7 = alloca i32, align 4
  %8 = alloca %struct.__sigset_t, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !739, metadata !672), !dbg !771
  tail call void @llvm.dbg.value(metadata i8** %1, i64 0, metadata !740, metadata !672), !dbg !772
  %9 = getelementptr inbounds [19 x i8], [19 x i8]* %6, i64 0, i64 0, !dbg !773
  call void @llvm.lifetime.start(i64 19, i8* nonnull %9) #12, !dbg !773
  tail call void @llvm.dbg.declare(metadata [19 x i8]* %6, metadata !742, metadata !672), !dbg !774
  %10 = load i8*, i8** %1, align 8, !dbg !775, !tbaa !680
  tail call void @set_program_name(i8* %10) #12, !dbg !776
  %11 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i64 0, i64 0)) #12, !dbg !777
  %12 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i64 0, i64 0)) #12, !dbg !778
  %13 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0)) #12, !dbg !779
  tail call void @llvm.dbg.value(metadata i32 125, i64 0, metadata !780, metadata !672), !dbg !783
  store volatile i32 125, i32* @exit_failure, align 4, !dbg !785, !tbaa !787
  %14 = tail call i32 @atexit(void ()* nonnull @close_stdout) #12, !dbg !789
  br label %15, !dbg !790

; <label>:15:                                     ; preds = %24, %2
  %16 = call i32 @getopt_long(i32 %0, i8** %1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0), %struct.option* getelementptr inbounds ([7 x %struct.option], [7 x %struct.option]* @long_options, i64 0, i64 0), i32* null) #12, !dbg !791
  call void @llvm.dbg.value(metadata i32 %16, i64 0, metadata !746, metadata !672), !dbg !793
  switch i32 %16, label %32 [
    i32 -1, label %33
    i32 107, label %17
    i32 115, label %20
    i32 128, label %26
    i32 129, label %27
    i32 -130, label %28
    i32 -131, label %29
  ], !dbg !794

; <label>:17:                                     ; preds = %15
  %18 = load i8*, i8** @optarg, align 8, !dbg !795, !tbaa !680
  %19 = call fastcc double @parse_duration(i8* %18), !dbg !798
  store double %19, double* @kill_after, align 8, !dbg !799, !tbaa !800
  br label %24, !dbg !802

; <label>:20:                                     ; preds = %15
  %21 = load i8*, i8** @optarg, align 8, !dbg !803, !tbaa !680
  %22 = call i32 @operand2sig(i8* %21, i8* nonnull %9) #12, !dbg !804
  store i32 %22, i32* @term_signal, align 4, !dbg !805, !tbaa !787
  %23 = icmp eq i32 %22, -1, !dbg !806
  br i1 %23, label %25, label %24, !dbg !808

; <label>:24:                                     ; preds = %20, %27, %26, %17
  br label %15, !dbg !791, !llvm.loop !809

; <label>:25:                                     ; preds = %20
  call void @usage(i32 125) #16, !dbg !811
  unreachable, !dbg !811

; <label>:26:                                     ; preds = %15
  store i1 true, i1* @foreground, align 1
  br label %24, !dbg !812

; <label>:27:                                     ; preds = %15
  store i1 true, i1* @preserve_status, align 1
  br label %24, !dbg !813

; <label>:28:                                     ; preds = %15
  call void @usage(i32 0) #16, !dbg !814
  unreachable, !dbg !814

; <label>:29:                                     ; preds = %15
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !815, !tbaa !680
  %31 = load i8*, i8** @Version, align 8, !dbg !815, !tbaa !680
  call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %30, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0), i8* %31, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i64 0, i64 0), i8* null) #12, !dbg !815
  call void @exit(i32 0) #15, !dbg !816
  unreachable, !dbg !815

; <label>:32:                                     ; preds = %15
  call void @usage(i32 125) #16, !dbg !818
  unreachable, !dbg !818

; <label>:33:                                     ; preds = %15
  %34 = load i32, i32* @optind, align 4, !dbg !819, !tbaa !787
  %35 = sub nsw i32 %0, %34, !dbg !821
  %36 = icmp slt i32 %35, 2, !dbg !822
  br i1 %36, label %37, label %38, !dbg !823

; <label>:37:                                     ; preds = %33
  call void @usage(i32 125) #16, !dbg !824
  unreachable, !dbg !824

; <label>:38:                                     ; preds = %33
  %39 = add nsw i32 %34, 1, !dbg !825
  store i32 %39, i32* @optind, align 4, !dbg !825, !tbaa !787
  %40 = sext i32 %34 to i64, !dbg !826
  %41 = getelementptr inbounds i8*, i8** %1, i64 %40, !dbg !826
  %42 = load i8*, i8** %41, align 8, !dbg !826, !tbaa !680
  %43 = call fastcc double @parse_duration(i8* %42), !dbg !827
  call void @llvm.dbg.value(metadata double %43, i64 0, metadata !741, metadata !672), !dbg !828
  %44 = load i32, i32* @optind, align 4, !dbg !829, !tbaa !787
  %45 = sext i32 %44 to i64, !dbg !830
  %46 = getelementptr inbounds i8*, i8** %1, i64 %45, !dbg !830
  call void @llvm.dbg.value(metadata i8** %46, i64 0, metadata !740, metadata !672), !dbg !772
  %47 = load i1, i1* @foreground, align 1
  br i1 %47, label %50, label %48, !dbg !831

; <label>:48:                                     ; preds = %38
  %49 = call i32 @setpgid(i32 0, i32 0) #12, !dbg !832
  br label %50, !dbg !832

; <label>:50:                                     ; preds = %48, %38
  %51 = load i32, i32* @term_signal, align 4, !dbg !834, !tbaa !787
  call void @llvm.dbg.value(metadata i32 %51, i64 0, metadata !835, metadata !672) #12, !dbg !924
  %52 = bitcast %struct.sigaction* %5 to i8*, !dbg !926
  call void @llvm.lifetime.start(i64 152, i8* nonnull %52) #12, !dbg !926
  %53 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %5, i64 0, i32 1, !dbg !927
  %54 = call i32 @sigemptyset(%struct.__sigset_t* %53) #12, !dbg !928
  %55 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %5, i64 0, i32 0, i32 0, !dbg !929
  store void (i32)* @cleanup, void (i32)** %55, align 8, !dbg !930, !tbaa !680
  %56 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %5, i64 0, i32 2, !dbg !931
  store i32 268435456, i32* %56, align 8, !dbg !932, !tbaa !933
  call void @llvm.dbg.value(metadata %struct.sigaction* %5, i64 0, metadata !838, metadata !936) #12, !dbg !937
  %57 = call i32 @sigaction(i32 14, %struct.sigaction* nonnull %5, %struct.sigaction* null) #12, !dbg !938
  call void @llvm.dbg.value(metadata %struct.sigaction* %5, i64 0, metadata !838, metadata !936) #12, !dbg !937
  %58 = call i32 @sigaction(i32 2, %struct.sigaction* nonnull %5, %struct.sigaction* null) #12, !dbg !939
  call void @llvm.dbg.value(metadata %struct.sigaction* %5, i64 0, metadata !838, metadata !936) #12, !dbg !937
  %59 = call i32 @sigaction(i32 3, %struct.sigaction* nonnull %5, %struct.sigaction* null) #12, !dbg !940
  call void @llvm.dbg.value(metadata %struct.sigaction* %5, i64 0, metadata !838, metadata !936) #12, !dbg !937
  %60 = call i32 @sigaction(i32 1, %struct.sigaction* nonnull %5, %struct.sigaction* null) #12, !dbg !941
  call void @llvm.dbg.value(metadata %struct.sigaction* %5, i64 0, metadata !838, metadata !936) #12, !dbg !937
  %61 = call i32 @sigaction(i32 15, %struct.sigaction* nonnull %5, %struct.sigaction* null) #12, !dbg !942
  call void @llvm.dbg.value(metadata %struct.sigaction* %5, i64 0, metadata !838, metadata !936) #12, !dbg !937
  %62 = call i32 @sigaction(i32 %51, %struct.sigaction* nonnull %5, %struct.sigaction* null) #12, !dbg !943
  call void @llvm.lifetime.end(i64 152, i8* nonnull %52) #12, !dbg !944
  %63 = call void (i32)* @signal(i32 21, void (i32)* inttoptr (i64 1 to void (i32)*)) #12, !dbg !945
  %64 = call void (i32)* @signal(i32 22, void (i32)* inttoptr (i64 1 to void (i32)*)) #12, !dbg !946
  %65 = bitcast %struct.sigaction* %4 to i8*, !dbg !947
  call void @llvm.lifetime.start(i64 152, i8* nonnull %65) #12, !dbg !947
  %66 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %4, i64 0, i32 1, !dbg !952
  %67 = call i32 @sigemptyset(%struct.__sigset_t* %66) #12, !dbg !953
  %68 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %4, i64 0, i32 0, i32 0, !dbg !954
  store void (i32)* @chld, void (i32)** %68, align 8, !dbg !955, !tbaa !680
  %69 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %4, i64 0, i32 2, !dbg !956
  store i32 268435456, i32* %69, align 8, !dbg !957, !tbaa !933
  call void @llvm.dbg.value(metadata %struct.sigaction* %4, i64 0, metadata !950, metadata !936) #12, !dbg !958
  %70 = call i32 @sigaction(i32 17, %struct.sigaction* nonnull %4, %struct.sigaction* null) #12, !dbg !959
  call void @llvm.lifetime.end(i64 152, i8* nonnull %65) #12, !dbg !960
  %71 = call i32 @fork() #12, !dbg !961
  store i32 %71, i32* @monitored_pid, align 4, !dbg !962, !tbaa !787
  switch i32 %71, label %88 [
    i32 -1, label %72
    i32 0, label %76
  ], !dbg !963

; <label>:72:                                     ; preds = %50
  %73 = tail call i32* @__errno_location() #1, !dbg !964
  %74 = load i32, i32* %73, align 4, !dbg !964, !tbaa !787
  %75 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.15, i64 0, i64 0), i32 5) #12, !dbg !966
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %74, i8* %75) #12, !dbg !968
  br label %166, !dbg !970

; <label>:76:                                     ; preds = %50
  %77 = call void (i32)* @signal(i32 21, void (i32)* null) #12, !dbg !971
  %78 = call void (i32)* @signal(i32 22, void (i32)* null) #12, !dbg !972
  %79 = load i8*, i8** %46, align 8, !dbg !973, !tbaa !680
  %80 = call i32 @execvp(i8* %79, i8** %46) #12, !dbg !974
  %81 = tail call i32* @__errno_location() #1, !dbg !975
  %82 = load i32, i32* %81, align 4, !dbg !975, !tbaa !787
  %83 = icmp eq i32 %82, 2, !dbg !976
  %84 = select i1 %83, i32 127, i32 126, !dbg !975
  call void @llvm.dbg.value(metadata i32 %84, i64 0, metadata !747, metadata !672), !dbg !977
  %85 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.16, i64 0, i64 0), i32 5) #12, !dbg !978
  %86 = load i8*, i8** %46, align 8, !dbg !980, !tbaa !680
  %87 = call i8* @quote(i8* %86) #12, !dbg !981
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %82, i8* %85, i8* %87) #12, !dbg !983
  br label %166

; <label>:88:                                     ; preds = %50
  %89 = bitcast i32* %7 to i8*, !dbg !985
  call void @llvm.lifetime.start(i64 4, i8* nonnull %89) #12, !dbg !985
  call fastcc void @unblock_signal(i32 14), !dbg !986
  call fastcc void @settimeout(double %43, i1 zeroext true), !dbg !987
  %90 = bitcast %struct.__sigset_t* %8 to i8*, !dbg !988
  call void @llvm.lifetime.start(i64 128, i8* nonnull %90) #12, !dbg !988
  %91 = load i32, i32* @term_signal, align 4, !dbg !989, !tbaa !787
  call void @llvm.dbg.value(metadata %struct.__sigset_t* %8, i64 0, metadata !754, metadata !936), !dbg !990
  call void @llvm.dbg.value(metadata i32 %91, i64 0, metadata !991, metadata !672) #12, !dbg !999
  call void @llvm.dbg.value(metadata %struct.__sigset_t* %8, i64 0, metadata !997, metadata !672) #12, !dbg !1001
  %92 = bitcast %struct.__sigset_t* %3 to i8*, !dbg !1002
  call void @llvm.lifetime.start(i64 128, i8* nonnull %92) #12, !dbg !1002
  call void @llvm.dbg.value(metadata %struct.__sigset_t* %3, i64 0, metadata !998, metadata !936) #12, !dbg !1003
  %93 = call i32 @sigemptyset(%struct.__sigset_t* nonnull %3) #12, !dbg !1004
  call void @llvm.dbg.value(metadata %struct.__sigset_t* %3, i64 0, metadata !998, metadata !936) #12, !dbg !1003
  %94 = call i32 @sigaddset(%struct.__sigset_t* nonnull %3, i32 14) #12, !dbg !1005
  call void @llvm.dbg.value(metadata %struct.__sigset_t* %3, i64 0, metadata !998, metadata !936) #12, !dbg !1003
  %95 = call i32 @sigaddset(%struct.__sigset_t* nonnull %3, i32 2) #12, !dbg !1006
  call void @llvm.dbg.value(metadata %struct.__sigset_t* %3, i64 0, metadata !998, metadata !936) #12, !dbg !1003
  %96 = call i32 @sigaddset(%struct.__sigset_t* nonnull %3, i32 3) #12, !dbg !1007
  call void @llvm.dbg.value(metadata %struct.__sigset_t* %3, i64 0, metadata !998, metadata !936) #12, !dbg !1003
  %97 = call i32 @sigaddset(%struct.__sigset_t* nonnull %3, i32 1) #12, !dbg !1008
  call void @llvm.dbg.value(metadata %struct.__sigset_t* %3, i64 0, metadata !998, metadata !936) #12, !dbg !1003
  %98 = call i32 @sigaddset(%struct.__sigset_t* nonnull %3, i32 15) #12, !dbg !1009
  call void @llvm.dbg.value(metadata %struct.__sigset_t* %3, i64 0, metadata !998, metadata !936) #12, !dbg !1003
  %99 = call i32 @sigaddset(%struct.__sigset_t* nonnull %3, i32 %91) #12, !dbg !1010
  call void @llvm.dbg.value(metadata %struct.__sigset_t* %3, i64 0, metadata !998, metadata !936) #12, !dbg !1003
  %100 = call i32 @sigprocmask(i32 0, %struct.__sigset_t* nonnull %3, %struct.__sigset_t* nonnull %8) #12, !dbg !1011
  %101 = icmp eq i32 %100, 0, !dbg !1013
  br i1 %101, label %106, label %102, !dbg !1014

; <label>:102:                                    ; preds = %88
  %103 = tail call i32* @__errno_location() #1, !dbg !1015
  %104 = load i32, i32* %103, align 4, !dbg !1015, !tbaa !787
  %105 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.43, i64 0, i64 0), i32 5) #12, !dbg !1016
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %104, i8* %105) #12, !dbg !1018
  br label %106, !dbg !1020

; <label>:106:                                    ; preds = %88, %102
  call void @llvm.lifetime.end(i64 128, i8* nonnull %92) #12, !dbg !1021
  %107 = load i32, i32* @monitored_pid, align 4, !dbg !1022, !tbaa !787
  call void @llvm.dbg.value(metadata i32* %7, i64 0, metadata !753, metadata !936), !dbg !1024
  %108 = call i32 @waitpid(i32 %107, i32* nonnull %7, i32 1) #12, !dbg !1025
  call void @llvm.dbg.value(metadata i32 %108, i64 0, metadata !751, metadata !672), !dbg !1026
  %109 = icmp eq i32 %108, 0, !dbg !1027
  br i1 %109, label %110, label %117, !dbg !1028

; <label>:110:                                    ; preds = %106
  br label %111, !dbg !990

; <label>:111:                                    ; preds = %110, %111
  call void @llvm.dbg.value(metadata %struct.__sigset_t* %8, i64 0, metadata !754, metadata !936), !dbg !990
  %112 = call i32 @sigsuspend(%struct.__sigset_t* nonnull %8) #12, !dbg !1029
  %113 = load i32, i32* @monitored_pid, align 4, !dbg !1022, !tbaa !787
  call void @llvm.dbg.value(metadata i32* %7, i64 0, metadata !753, metadata !936), !dbg !1024
  %114 = call i32 @waitpid(i32 %113, i32* nonnull %7, i32 1) #12, !dbg !1025
  call void @llvm.dbg.value(metadata i32 %114, i64 0, metadata !751, metadata !672), !dbg !1026
  %115 = icmp eq i32 %114, 0, !dbg !1027
  br i1 %115, label %111, label %116, !dbg !1028, !llvm.loop !1030

; <label>:116:                                    ; preds = %111
  br label %117, !dbg !1033

; <label>:117:                                    ; preds = %116, %106
  %118 = phi i32 [ %108, %106 ], [ %114, %116 ]
  %119 = icmp slt i32 %118, 0, !dbg !1033
  br i1 %119, label %120, label %124, !dbg !1034

; <label>:120:                                    ; preds = %117
  %121 = tail call i32* @__errno_location() #1, !dbg !1035
  %122 = load i32, i32* %121, align 4, !dbg !1035, !tbaa !787
  %123 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.17, i64 0, i64 0), i32 5) #12, !dbg !1037
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %122, i8* %123) #12, !dbg !1039
  call void @llvm.dbg.value(metadata i32 125, i64 0, metadata !753, metadata !672), !dbg !1024
  store i32 125, i32* %7, align 4, !dbg !1041, !tbaa !787
  br label %158, !dbg !1042

; <label>:124:                                    ; preds = %117
  %125 = load i32, i32* %7, align 4, !dbg !1043, !tbaa !787
  call void @llvm.dbg.value(metadata i32 %125, i64 0, metadata !753, metadata !672), !dbg !1024
  %126 = and i32 %125, 127, !dbg !1043
  %127 = icmp eq i32 %126, 0, !dbg !1043
  br i1 %127, label %128, label %131, !dbg !1044

; <label>:128:                                    ; preds = %124
  %129 = lshr i32 %125, 8, !dbg !1045
  %130 = and i32 %129, 255, !dbg !1045
  call void @llvm.dbg.value(metadata i32 %130, i64 0, metadata !753, metadata !672), !dbg !1024
  store i32 %130, i32* %7, align 4, !dbg !1046, !tbaa !787
  br label %158, !dbg !1047

; <label>:131:                                    ; preds = %124
  %132 = shl nuw nsw i32 %126, 24, !dbg !1048
  %133 = add nuw i32 %132, 16777216, !dbg !1048
  %134 = ashr i32 %133, 25, !dbg !1048
  %135 = icmp sgt i32 %134, 0, !dbg !1048
  br i1 %135, label %136, label %155, !dbg !1049

; <label>:136:                                    ; preds = %131
  call void @llvm.dbg.value(metadata i32 %126, i64 0, metadata !765, metadata !672), !dbg !1050
  %137 = trunc i32 %125 to i8, !dbg !1051
  %138 = icmp slt i8 %137, 0, !dbg !1051
  br i1 %138, label %139, label %141, !dbg !1053

; <label>:139:                                    ; preds = %136
  %140 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.18, i64 0, i64 0), i32 5) #12, !dbg !1054
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %140) #12, !dbg !1055
  br label %141, !dbg !1057

; <label>:141:                                    ; preds = %139, %136
  %142 = load i1, i1* @timed_out, align 4
  br i1 %142, label %153, label %143, !dbg !1058

; <label>:143:                                    ; preds = %141
  %144 = call i32 (i32, ...) @prctl(i32 4, i32 0) #12, !dbg !1060
  %145 = icmp eq i32 %144, 0, !dbg !1067
  br i1 %145, label %150, label %146, !dbg !1068

; <label>:146:                                    ; preds = %143
  %147 = tail call i32* @__errno_location() #1, !dbg !1069
  %148 = load i32, i32* %147, align 4, !dbg !1069, !tbaa !787
  %149 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.46, i64 0, i64 0), i32 5) #12, !dbg !1070
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %148, i8* %149) #12, !dbg !1072
  br label %153, !dbg !1074

; <label>:150:                                    ; preds = %143
  %151 = call void (i32)* @signal(i32 %126, void (i32)* null) #12, !dbg !1076
  call fastcc void @unblock_signal(i32 %126), !dbg !1078
  %152 = call i32 @raise(i32 %126) #12, !dbg !1079
  br label %153, !dbg !1080

; <label>:153:                                    ; preds = %146, %150, %141
  %154 = or i32 %126, 128, !dbg !1081
  call void @llvm.dbg.value(metadata i32 %154, i64 0, metadata !753, metadata !672), !dbg !1024
  store i32 %154, i32* %7, align 4, !dbg !1082, !tbaa !787
  br label %158, !dbg !1083

; <label>:155:                                    ; preds = %131
  %156 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.19, i64 0, i64 0), i32 5) #12, !dbg !1084
  %157 = load i32, i32* %7, align 4, !dbg !1086, !tbaa !787
  call void @llvm.dbg.value(metadata i32 %157, i64 0, metadata !753, metadata !672), !dbg !1024
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %156, i32 %157) #12, !dbg !1087
  call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !753, metadata !672), !dbg !1024
  store i32 1, i32* %7, align 4, !dbg !1089, !tbaa !787
  br label %158

; <label>:158:                                    ; preds = %128, %155, %153, %120
  %159 = phi i32 [ %130, %128 ], [ 1, %155 ], [ %154, %153 ], [ 125, %120 ]
  %160 = load i1, i1* @timed_out, align 4
  br i1 %160, label %161, label %164, !dbg !1090

; <label>:161:                                    ; preds = %158
  %162 = load i1, i1* @preserve_status, align 1
  br i1 %162, label %164, label %163, !dbg !1092

; <label>:163:                                    ; preds = %161
  call void @llvm.dbg.value(metadata i32 124, i64 0, metadata !753, metadata !672), !dbg !1024
  store i32 124, i32* %7, align 4, !dbg !1093, !tbaa !787
  br label %164, !dbg !1094

; <label>:164:                                    ; preds = %163, %161, %158
  %165 = phi i32 [ 124, %163 ], [ %159, %161 ], [ %159, %158 ], !dbg !1095
  call void @llvm.dbg.value(metadata i32 %165, i64 0, metadata !753, metadata !672), !dbg !1024
  call void @llvm.lifetime.end(i64 128, i8* nonnull %90) #12, !dbg !1096
  call void @llvm.lifetime.end(i64 4, i8* nonnull %89) #12, !dbg !1096
  br label %166

; <label>:166:                                    ; preds = %164, %76, %72
  %167 = phi i32 [ 125, %72 ], [ %84, %76 ], [ %165, %164 ]
  call void @llvm.lifetime.end(i64 19, i8* nonnull %9) #12, !dbg !1097
  ret i32 %167, !dbg !1097
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #7

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

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc double @parse_duration(i8*) unnamed_addr #6 !dbg !1098 {
  %2 = alloca double, align 8
  %3 = alloca i8*, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1102, metadata !672), !dbg !1105
  %4 = bitcast double* %2 to i8*, !dbg !1106
  call void @llvm.lifetime.start(i64 8, i8* nonnull %4) #12, !dbg !1106
  %5 = bitcast i8** %3 to i8*, !dbg !1107
  call void @llvm.lifetime.start(i64 8, i8* nonnull %5) #12, !dbg !1107
  tail call void @llvm.dbg.value(metadata double* %2, i64 0, metadata !1103, metadata !936), !dbg !1108
  tail call void @llvm.dbg.value(metadata i8** %3, i64 0, metadata !1104, metadata !936), !dbg !1109
  %6 = call zeroext i1 @xstrtod(i8* %0, i8** nonnull %3, double* nonnull %2, double (i8*, i8**)* nonnull @c_strtod) #12, !dbg !1110
  br i1 %6, label %14, label %7, !dbg !1112

; <label>:7:                                      ; preds = %1
  %8 = tail call i32* @__errno_location() #1, !dbg !1113
  %9 = load i32, i32* %8, align 4, !dbg !1113, !tbaa !787
  %10 = icmp eq i32 %9, 34, !dbg !1115
  %11 = load double, double* %2, align 8, !dbg !1116
  call void @llvm.dbg.value(metadata double %11, i64 0, metadata !1103, metadata !672), !dbg !1108
  %12 = fcmp oge double %11, 0.000000e+00, !dbg !1117
  %13 = and i1 %10, %12, !dbg !1118
  br i1 %13, label %17, label %31, !dbg !1118

; <label>:14:                                     ; preds = %1
  %15 = load double, double* %2, align 8, !dbg !1116, !tbaa !800
  call void @llvm.dbg.value(metadata double %15, i64 0, metadata !1103, metadata !672), !dbg !1108
  %16 = fcmp ult double %15, 0.000000e+00, !dbg !1117
  br i1 %16, label %31, label %17, !dbg !1119

; <label>:17:                                     ; preds = %14, %7
  %18 = phi double [ %15, %14 ], [ %11, %7 ], !dbg !1120
  %19 = load i8*, i8** %3, align 8, !dbg !1130, !tbaa !680
  call void @llvm.dbg.value(metadata i8* %19, i64 0, metadata !1104, metadata !672), !dbg !1109
  %20 = load i8, i8* %19, align 1, !dbg !1131, !tbaa !1132
  %21 = icmp eq i8 %20, 0, !dbg !1131
  br i1 %21, label %26, label %22, !dbg !1133

; <label>:22:                                     ; preds = %17
  %23 = getelementptr inbounds i8, i8* %19, i64 1, !dbg !1134
  %24 = load i8, i8* %23, align 1, !dbg !1136, !tbaa !1132
  %25 = icmp eq i8 %24, 0, !dbg !1136
  br i1 %25, label %26, label %31, !dbg !1137

; <label>:26:                                     ; preds = %22, %17
  call void @llvm.dbg.value(metadata i8* %19, i64 0, metadata !1104, metadata !672), !dbg !1109
  call void @llvm.dbg.value(metadata double* %2, i64 0, metadata !1103, metadata !936), !dbg !1108
  tail call void @llvm.dbg.value(metadata double* %2, i64 0, metadata !1126, metadata !672), !dbg !1138
  tail call void @llvm.dbg.value(metadata i8 %20, i64 0, metadata !1127, metadata !672), !dbg !1139
  %27 = sext i8 %20 to i32, !dbg !1140
  switch i32 %27, label %31 [
    i32 0, label %34
    i32 115, label %34
    i32 109, label %28
    i32 104, label %29
    i32 100, label %30
  ], !dbg !1141

; <label>:28:                                     ; preds = %26
  tail call void @llvm.dbg.value(metadata i32 60, i64 0, metadata !1128, metadata !672), !dbg !1142
  br label %34, !dbg !1143

; <label>:29:                                     ; preds = %26
  tail call void @llvm.dbg.value(metadata i32 3600, i64 0, metadata !1128, metadata !672), !dbg !1142
  br label %34, !dbg !1145

; <label>:30:                                     ; preds = %26
  tail call void @llvm.dbg.value(metadata i32 86400, i64 0, metadata !1128, metadata !672), !dbg !1142
  br label %34, !dbg !1146

; <label>:31:                                     ; preds = %26, %14, %22, %7
  %32 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.42, i64 0, i64 0), i32 5) #12, !dbg !1147
  %33 = call i8* @quote(i8* %0) #12, !dbg !1149
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %32, i8* %33) #12, !dbg !1151
  call void @usage(i32 125) #16, !dbg !1153
  unreachable, !dbg !1153

; <label>:34:                                     ; preds = %26, %26, %28, %29, %30
  %35 = phi double [ 8.640000e+04, %30 ], [ 3.600000e+03, %29 ], [ 6.000000e+01, %28 ], [ 1.000000e+00, %26 ], [ 1.000000e+00, %26 ]
  %36 = fmul double %35, %18, !dbg !1120
  call void @llvm.dbg.value(metadata double %36, i64 0, metadata !1103, metadata !672), !dbg !1108
  call void @llvm.lifetime.end(i64 8, i8* nonnull %5) #12, !dbg !1154
  call void @llvm.lifetime.end(i64 8, i8* nonnull %4) #12, !dbg !1154
  ret double %36, !dbg !1155
}

; Function Attrs: nounwind
declare i32 @setpgid(i32, i32) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @sigemptyset(%struct.__sigset_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal void @cleanup(i32) #6 !dbg !1156 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !1158, metadata !672), !dbg !1164
  %2 = icmp eq i32 %0, 14, !dbg !1165
  br i1 %2, label %3, label %5, !dbg !1167

; <label>:3:                                      ; preds = %1
  store i1 true, i1* @timed_out, align 4
  %4 = load i32, i32* @term_signal, align 4, !dbg !1168, !tbaa !787
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !1158, metadata !672), !dbg !1164
  br label %5, !dbg !1170

; <label>:5:                                      ; preds = %3, %1
  %6 = phi i32 [ %4, %3 ], [ %0, %1 ]
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !1158, metadata !672), !dbg !1164
  %7 = load i32, i32* @monitored_pid, align 4, !dbg !1171, !tbaa !787
  %8 = icmp eq i32 %7, 0, !dbg !1171
  br i1 %8, label %35, label %9, !dbg !1172

; <label>:9:                                      ; preds = %5
  %10 = load double, double* @kill_after, align 8, !dbg !1173, !tbaa !800
  %11 = fcmp une double %10, 0.000000e+00, !dbg !1173
  br i1 %11, label %12, label %19, !dbg !1174

; <label>:12:                                     ; preds = %9
  %13 = tail call i32* @__errno_location() #1, !dbg !1175
  %14 = load i32, i32* %13, align 4, !dbg !1175, !tbaa !787
  tail call void @llvm.dbg.value(metadata i32 %14, i64 0, metadata !1159, metadata !672), !dbg !1176
  store i32 9, i32* @term_signal, align 4, !dbg !1177, !tbaa !787
  tail call fastcc void @settimeout(double %10, i1 zeroext false), !dbg !1178
  store double 0.000000e+00, double* @kill_after, align 8, !dbg !1179, !tbaa !800
  store i32 %14, i32* %13, align 4, !dbg !1180, !tbaa !787
  %15 = load i32, i32* @monitored_pid, align 4, !tbaa !787
  %16 = icmp eq i32 %15, 0, !dbg !1181
  br i1 %16, label %17, label %19, !dbg !1190

; <label>:17:                                     ; preds = %12
  %18 = tail call void (i32)* @signal(i32 %6, void (i32)* inttoptr (i64 1 to void (i32)*)) #12, !dbg !1191
  br label %19, !dbg !1191

; <label>:19:                                     ; preds = %9, %12, %17
  %20 = phi i32 [ %15, %12 ], [ 0, %17 ], [ %7, %9 ]
  %21 = tail call i32 @kill(i32 %20, i32 %6) #12, !dbg !1192
  %22 = load i1, i1* @foreground, align 1
  br i1 %22, label %37, label %23, !dbg !1193

; <label>:23:                                     ; preds = %19
  %24 = tail call void (i32)* @signal(i32 %6, void (i32)* inttoptr (i64 1 to void (i32)*)) #12, !dbg !1194
  %25 = tail call i32 @kill(i32 0, i32 %6) #12, !dbg !1198
  switch i32 %6, label %26 [
    i32 18, label %37
    i32 9, label %37
  ], !dbg !1199

; <label>:26:                                     ; preds = %23
  %27 = load i32, i32* @monitored_pid, align 4, !dbg !1201, !tbaa !787
  %28 = icmp eq i32 %27, 0, !dbg !1203
  br i1 %28, label %29, label %31, !dbg !1205

; <label>:29:                                     ; preds = %26
  %30 = tail call void (i32)* @signal(i32 18, void (i32)* inttoptr (i64 1 to void (i32)*)) #12, !dbg !1206
  br label %31, !dbg !1206

; <label>:31:                                     ; preds = %26, %29
  %32 = tail call i32 @kill(i32 %27, i32 18) #12, !dbg !1207
  %33 = tail call void (i32)* @signal(i32 18, void (i32)* inttoptr (i64 1 to void (i32)*)) #12, !dbg !1208
  %34 = tail call i32 @kill(i32 0, i32 18) #12, !dbg !1210
  br label %37, !dbg !1211

; <label>:35:                                     ; preds = %5
  %36 = add nsw i32 %6, 128, !dbg !1212
  tail call void @_exit(i32 %36) #15, !dbg !1213
  unreachable, !dbg !1213

; <label>:37:                                     ; preds = %23, %23, %19, %31
  ret void, !dbg !1214
}

; Function Attrs: nounwind
declare i32 @sigaction(i32, %struct.sigaction*, %struct.sigaction*) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #7

; Function Attrs: nounwind
declare void (i32)* @signal(i32, void (i32)*) local_unnamed_addr #2

; Function Attrs: nounwind readnone sspstrong uwtable
define internal void @chld(i32) #8 !dbg !1215 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !1217, metadata !672), !dbg !1218
  ret void, !dbg !1219
}

; Function Attrs: nounwind
declare i32 @fork() local_unnamed_addr #2

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #9

declare void @error(i32, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @execvp(i8*, i8**) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @unblock_signal(i32) unnamed_addr #6 !dbg !1220 {
  %2 = alloca %struct.__sigset_t, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !1222, metadata !672), !dbg !1224
  %3 = bitcast %struct.__sigset_t* %2 to i8*, !dbg !1225
  call void @llvm.lifetime.start(i64 128, i8* nonnull %3) #12, !dbg !1225
  tail call void @llvm.dbg.value(metadata %struct.__sigset_t* %2, i64 0, metadata !1223, metadata !936), !dbg !1226
  %4 = call i32 @sigemptyset(%struct.__sigset_t* nonnull %2) #12, !dbg !1227
  call void @llvm.dbg.value(metadata %struct.__sigset_t* %2, i64 0, metadata !1223, metadata !936), !dbg !1226
  %5 = call i32 @sigaddset(%struct.__sigset_t* nonnull %2, i32 %0) #12, !dbg !1228
  call void @llvm.dbg.value(metadata %struct.__sigset_t* %2, i64 0, metadata !1223, metadata !936), !dbg !1226
  %6 = call i32 @sigprocmask(i32 1, %struct.__sigset_t* nonnull %2, %struct.__sigset_t* null) #12, !dbg !1229
  %7 = icmp eq i32 %6, 0, !dbg !1231
  br i1 %7, label %12, label %8, !dbg !1232

; <label>:8:                                      ; preds = %1
  %9 = tail call i32* @__errno_location() #1, !dbg !1233
  %10 = load i32, i32* %9, align 4, !dbg !1233, !tbaa !787
  %11 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.43, i64 0, i64 0), i32 5) #12, !dbg !1234
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %10, i8* %11) #12, !dbg !1236
  br label %12, !dbg !1238

; <label>:12:                                     ; preds = %1, %8
  call void @llvm.lifetime.end(i64 128, i8* nonnull %3) #12, !dbg !1239
  ret void, !dbg !1239
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @settimeout(double, i1 zeroext) unnamed_addr #6 !dbg !1240 {
  %3 = alloca %struct.itimerspec, align 8
  %4 = alloca i8*, align 8
  tail call void @llvm.dbg.value(metadata double %0, i64 0, metadata !1244, metadata !672), !dbg !1267
  tail call void @llvm.dbg.value(metadata i1 %1, i64 0, metadata !1245, metadata !1268), !dbg !1269
  tail call void @llvm.dbg.declare(metadata %struct.timespec* undef, metadata !1246, metadata !672), !dbg !1270
  %5 = tail call { i64, i64 } @dtotimespec(double %0) #1, !dbg !1271
  %6 = extractvalue { i64, i64 } %5, 0, !dbg !1271
  tail call void @llvm.dbg.value(metadata i64 %6, i64 0, metadata !1246, metadata !1272), !dbg !1270
  %7 = extractvalue { i64, i64 } %5, 1, !dbg !1271
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !1246, metadata !1273), !dbg !1270
  %8 = bitcast %struct.itimerspec* %3 to i8*, !dbg !1274
  call void @llvm.lifetime.start(i64 32, i8* nonnull %8) #12, !dbg !1274
  %9 = getelementptr inbounds %struct.itimerspec, %struct.itimerspec* %3, i64 0, i32 1, i32 0, !dbg !1275
  %10 = bitcast %struct.itimerspec* %3 to i8*, !dbg !1275
  call void @llvm.memset.p0i8.i64(i8* nonnull %10, i8 0, i64 16, i32 8, i1 false), !dbg !1276
  store i64 %6, i64* %9, align 8, !dbg !1275
  %11 = getelementptr inbounds %struct.itimerspec, %struct.itimerspec* %3, i64 0, i32 1, i32 1, !dbg !1275
  store i64 %7, i64* %11, align 8, !dbg !1275
  %12 = bitcast i8** %4 to i8*, !dbg !1277
  call void @llvm.lifetime.start(i64 8, i8* nonnull %12) #12, !dbg !1277
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !1259, metadata !936), !dbg !1278
  %13 = call i32 @timer_create(i32 0, %struct.sigevent* null, i8** nonnull %4) #12, !dbg !1279
  %14 = icmp eq i32 %13, 0, !dbg !1281
  br i1 %14, label %15, label %27, !dbg !1282

; <label>:15:                                     ; preds = %2
  %16 = load i8*, i8** %4, align 8, !dbg !1283, !tbaa !680
  call void @llvm.dbg.value(metadata i8* %16, i64 0, metadata !1259, metadata !672), !dbg !1278
  call void @llvm.dbg.value(metadata %struct.itimerspec* %3, i64 0, metadata !1253, metadata !936), !dbg !1286
  %17 = call i32 @timer_settime(i8* %16, i32 0, %struct.itimerspec* nonnull %3, %struct.itimerspec* null) #12, !dbg !1287
  %18 = icmp eq i32 %17, 0, !dbg !1288
  br i1 %18, label %45, label %19, !dbg !1289

; <label>:19:                                     ; preds = %15
  br i1 %1, label %20, label %24, !dbg !1290

; <label>:20:                                     ; preds = %19
  %21 = tail call i32* @__errno_location() #1, !dbg !1292
  %22 = load i32, i32* %21, align 4, !dbg !1292, !tbaa !787
  %23 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.44, i64 0, i64 0), i32 5) #12, !dbg !1294
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %22, i8* %23) #12, !dbg !1296
  br label %24, !dbg !1298

; <label>:24:                                     ; preds = %20, %19
  %25 = load i8*, i8** %4, align 8, !dbg !1299, !tbaa !680
  call void @llvm.dbg.value(metadata i8* %25, i64 0, metadata !1259, metadata !672), !dbg !1278
  %26 = call i32 @timer_delete(i8* %25) #12, !dbg !1300
  br label %34, !dbg !1301

; <label>:27:                                     ; preds = %2
  br i1 %1, label %28, label %34, !dbg !1302

; <label>:28:                                     ; preds = %27
  %29 = tail call i32* @__errno_location() #1, !dbg !1304
  %30 = load i32, i32* %29, align 4, !dbg !1304, !tbaa !787
  %31 = icmp eq i32 %30, 38, !dbg !1306
  br i1 %31, label %34, label %32, !dbg !1307

; <label>:32:                                     ; preds = %28
  %33 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.45, i64 0, i64 0), i32 5) #12, !dbg !1309
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %30, i8* %33) #12, !dbg !1310
  br label %34, !dbg !1312

; <label>:34:                                     ; preds = %28, %27, %32, %24
  %35 = fcmp ult double %0, 0x41EFFFFFFFE00000, !dbg !1313
  br i1 %35, label %36, label %42, !dbg !1314

; <label>:36:                                     ; preds = %34
  %37 = fptoui double %0 to i32, !dbg !1315
  call void @llvm.dbg.value(metadata i32 %37, i64 0, metadata !1264, metadata !672), !dbg !1316
  %38 = uitofp i32 %37 to double, !dbg !1317
  %39 = fcmp olt double %38, %0, !dbg !1318
  %40 = zext i1 %39 to i32, !dbg !1318
  %41 = add i32 %40, %37, !dbg !1319
  call void @llvm.dbg.value(metadata i32 %41, i64 0, metadata !1263, metadata !672), !dbg !1320
  br label %42

; <label>:42:                                     ; preds = %34, %36
  %43 = phi i32 [ %41, %36 ], [ -1, %34 ]
  call void @llvm.dbg.value(metadata i32 %43, i64 0, metadata !1263, metadata !672), !dbg !1320
  %44 = call i32 @alarm(i32 %43) #12, !dbg !1321
  br label %45, !dbg !1322

; <label>:45:                                     ; preds = %15, %42
  call void @llvm.lifetime.end(i64 8, i8* nonnull %12) #12, !dbg !1322
  call void @llvm.lifetime.end(i64 32, i8* nonnull %8) #12, !dbg !1322
  ret void, !dbg !1323
}

; Function Attrs: nounwind
declare i32 @sigaddset(%struct.__sigset_t*, i32) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @sigprocmask(i32, %struct.__sigset_t*, %struct.__sigset_t*) local_unnamed_addr #2

declare i32 @waitpid(i32, i32*, i32) local_unnamed_addr #3

declare i32 @sigsuspend(%struct.__sigset_t*) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @prctl(i32, ...) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @raise(i32) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #7

; Function Attrs: nounwind
declare i32 @timer_create(i32, %struct.sigevent*, i8**) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @timer_settime(i8*, i32, %struct.itimerspec*, %struct.itimerspec*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @timer_delete(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @alarm(i32) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @kill(i32, i32) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #10

; Function Attrs: nounwind sspstrong uwtable
define i32 @operand2sig(i8*, i8*) local_unnamed_addr #6 !dbg !1325 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1329, metadata !672), !dbg !1340
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1330, metadata !672), !dbg !1341
  %5 = bitcast i32* %3 to i8*, !dbg !1342
  call void @llvm.lifetime.start(i64 4, i8* nonnull %5) #12, !dbg !1342
  %6 = load i8, i8* %0, align 1, !dbg !1343, !tbaa !1132
  %7 = sext i8 %6 to i32, !dbg !1343
  %8 = add nsw i32 %7, -48, !dbg !1343
  %9 = icmp ult i32 %8, 10, !dbg !1343
  br i1 %9, label %10, label %36, !dbg !1344

; <label>:10:                                     ; preds = %2
  %11 = bitcast i8** %4 to i8*, !dbg !1345
  call void @llvm.lifetime.start(i64 8, i8* nonnull %11) #12, !dbg !1345
  %12 = tail call i32* @__errno_location() #1, !dbg !1346
  store i32 0, i32* %12, align 4, !dbg !1347, !tbaa !787
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !1332, metadata !936), !dbg !1348
  %13 = call i64 @strtol(i8* nonnull %0, i8** nonnull %4, i32 10) #12, !dbg !1349
  tail call void @llvm.dbg.value(metadata i64 %13, i64 0, metadata !1335, metadata !672), !dbg !1351
  %14 = trunc i64 %13 to i32, !dbg !1352
  tail call void @llvm.dbg.value(metadata i32 %14, i64 0, metadata !1336, metadata !672), !dbg !1353
  %15 = load i8*, i8** %4, align 8, !dbg !1354, !tbaa !680
  tail call void @llvm.dbg.value(metadata i8* %15, i64 0, metadata !1332, metadata !672), !dbg !1348
  %16 = icmp eq i8* %15, %0, !dbg !1355
  br i1 %16, label %34, label %17, !dbg !1356

; <label>:17:                                     ; preds = %10
  %18 = load i8, i8* %15, align 1, !dbg !1357, !tbaa !1132
  %19 = icmp eq i8 %18, 0, !dbg !1357
  br i1 %19, label %20, label %34, !dbg !1358

; <label>:20:                                     ; preds = %17
  %21 = load i32, i32* %12, align 4, !dbg !1359, !tbaa !787
  %22 = icmp eq i32 %21, 0, !dbg !1359
  br i1 %22, label %23, label %34, !dbg !1361

; <label>:23:                                     ; preds = %20
  %24 = shl i64 %13, 32, !dbg !1362
  %25 = ashr exact i64 %24, 32, !dbg !1362
  %26 = icmp eq i64 %25, %13, !dbg !1364
  br i1 %26, label %27, label %34, !dbg !1365

; <label>:27:                                     ; preds = %23
  %28 = and i32 %14, 127, !dbg !1366
  %29 = shl nuw nsw i32 %28, 24, !dbg !1366
  %30 = add nuw i32 %29, 16777216, !dbg !1366
  %31 = ashr i32 %30, 25, !dbg !1366
  %32 = icmp sgt i32 %31, 0, !dbg !1366
  %33 = select i1 %32, i32 %28, i32 %14, !dbg !1366
  br label %34, !dbg !1366

; <label>:34:                                     ; preds = %23, %20, %17, %27, %10
  %35 = phi i32 [ -1, %23 ], [ -1, %20 ], [ -1, %17 ], [ -1, %10 ], [ %33, %27 ], !dbg !1367
  tail call void @llvm.dbg.value(metadata i32 %35, i64 0, metadata !1331, metadata !672), !dbg !1369
  store i32 %35, i32* %3, align 4, !dbg !1370, !tbaa !787
  call void @llvm.lifetime.end(i64 8, i8* nonnull %11) #12, !dbg !1371
  br label %75, !dbg !1372

; <label>:36:                                     ; preds = %2
  %37 = tail call noalias i8* @xstrdup(i8* nonnull %0) #12, !dbg !1373
  tail call void @llvm.dbg.value(metadata i8* %37, i64 0, metadata !1337, metadata !672), !dbg !1374
  tail call void @llvm.dbg.value(metadata i8* %37, i64 0, metadata !1339, metadata !672), !dbg !1375
  tail call void @llvm.dbg.value(metadata i8* %37, i64 0, metadata !1339, metadata !672), !dbg !1375
  %38 = load i8, i8* %37, align 1, !dbg !1376, !tbaa !1132
  %39 = icmp eq i8 %38, 0, !dbg !1380
  br i1 %39, label %54, label %40, !dbg !1380

; <label>:40:                                     ; preds = %36
  br label %41, !dbg !1382

; <label>:41:                                     ; preds = %40, %49
  %42 = phi i8 [ %51, %49 ], [ %38, %40 ]
  %43 = phi i8* [ %50, %49 ], [ %37, %40 ]
  %44 = sext i8 %42 to i32, !dbg !1382
  %45 = tail call i8* @memchr(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.21, i64 0, i64 0), i32 %44, i64 27), !dbg !1382
  %46 = icmp eq i8* %45, null, !dbg !1382
  br i1 %46, label %49, label %47, !dbg !1385

; <label>:47:                                     ; preds = %41
  %48 = add i8 %42, -32, !dbg !1387
  store i8 %48, i8* %43, align 1, !dbg !1387, !tbaa !1132
  br label %49, !dbg !1388

; <label>:49:                                     ; preds = %41, %47
  %50 = getelementptr inbounds i8, i8* %43, i64 1, !dbg !1389
  tail call void @llvm.dbg.value(metadata i8* %50, i64 0, metadata !1339, metadata !672), !dbg !1375
  tail call void @llvm.dbg.value(metadata i8* %50, i64 0, metadata !1339, metadata !672), !dbg !1375
  %51 = load i8, i8* %50, align 1, !dbg !1376, !tbaa !1132
  %52 = icmp eq i8 %51, 0, !dbg !1380
  br i1 %52, label %53, label %41, !dbg !1380, !llvm.loop !1391

; <label>:53:                                     ; preds = %49
  br label %54, !dbg !1369

; <label>:54:                                     ; preds = %53, %36
  tail call void @llvm.dbg.value(metadata i32* %3, i64 0, metadata !1331, metadata !936), !dbg !1369
  %55 = call i32 @str2sig(i8* %37, i32* nonnull %3) #12, !dbg !1394
  %56 = icmp eq i32 %55, 0, !dbg !1396
  br i1 %56, label %73, label %57, !dbg !1397

; <label>:57:                                     ; preds = %54
  %58 = load i8, i8* %37, align 1, !dbg !1398, !tbaa !1132
  %59 = icmp eq i8 %58, 83, !dbg !1400
  br i1 %59, label %60, label %72, !dbg !1401

; <label>:60:                                     ; preds = %57
  %61 = getelementptr inbounds i8, i8* %37, i64 1, !dbg !1402
  %62 = load i8, i8* %61, align 1, !dbg !1402, !tbaa !1132
  %63 = icmp eq i8 %62, 73, !dbg !1404
  br i1 %63, label %64, label %72, !dbg !1405

; <label>:64:                                     ; preds = %60
  %65 = getelementptr inbounds i8, i8* %37, i64 2, !dbg !1406
  %66 = load i8, i8* %65, align 1, !dbg !1406, !tbaa !1132
  %67 = icmp eq i8 %66, 71, !dbg !1408
  br i1 %67, label %68, label %72, !dbg !1409

; <label>:68:                                     ; preds = %64
  %69 = getelementptr inbounds i8, i8* %37, i64 3, !dbg !1410
  call void @llvm.dbg.value(metadata i32* %3, i64 0, metadata !1331, metadata !936), !dbg !1369
  %70 = call i32 @str2sig(i8* %69, i32* nonnull %3) #12, !dbg !1411
  %71 = icmp eq i32 %70, 0, !dbg !1412
  br i1 %71, label %73, label %72, !dbg !1413

; <label>:72:                                     ; preds = %68, %64, %60, %57
  call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !1331, metadata !672), !dbg !1369
  store i32 -1, i32* %3, align 4, !dbg !1415, !tbaa !787
  br label %73, !dbg !1416

; <label>:73:                                     ; preds = %72, %68, %54
  call void @free(i8* %37) #12, !dbg !1417
  %74 = load i32, i32* %3, align 4, !tbaa !787
  br label %75

; <label>:75:                                     ; preds = %73, %34
  %76 = phi i32 [ %74, %73 ], [ %35, %34 ], !dbg !1418
  call void @llvm.dbg.value(metadata i32 %76, i64 0, metadata !1331, metadata !672), !dbg !1369
  %77 = icmp slt i32 %76, 0, !dbg !1420
  br i1 %77, label %81, label %78, !dbg !1421

; <label>:78:                                     ; preds = %75
  %79 = call i32 @sig2str(i32 %76, i8* %1) #12, !dbg !1422
  %80 = icmp eq i32 %79, 0, !dbg !1424
  br i1 %80, label %84, label %81, !dbg !1425

; <label>:81:                                     ; preds = %78, %75
  %82 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1.22, i64 0, i64 0), i32 5) #12, !dbg !1427
  %83 = call i8* @quote(i8* %0) #12, !dbg !1429
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %82, i8* %83) #12, !dbg !1431
  br label %86, !dbg !1433

; <label>:84:                                     ; preds = %78
  %85 = load i32, i32* %3, align 4, !dbg !1434, !tbaa !787
  call void @llvm.dbg.value(metadata i32 %85, i64 0, metadata !1331, metadata !672), !dbg !1369
  br label %86, !dbg !1435

; <label>:86:                                     ; preds = %84, %81
  %87 = phi i32 [ -1, %81 ], [ %85, %84 ]
  call void @llvm.lifetime.end(i64 4, i8* nonnull %5) #12, !dbg !1436
  ret i32 %87, !dbg !1436
}

; Function Attrs: nounwind
declare i64 @strtol(i8* readonly, i8** nocapture, i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i8* @memchr(i8*, i32, i64) #11

; Function Attrs: nounwind
declare void @free(i8* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define double @c_strtod(i8*, i8**) #6 !dbg !1437 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1441, metadata !672), !dbg !1445
  tail call void @llvm.dbg.value(metadata i8** %1, i64 0, metadata !1442, metadata !672), !dbg !1446
  %3 = load volatile %struct.__locale_struct*, %struct.__locale_struct** @c_locale_cache, align 8, !dbg !1447, !tbaa !680
  %4 = icmp eq %struct.__locale_struct* %3, null, !dbg !1447
  br i1 %4, label %5, label %7, !dbg !1453

; <label>:5:                                      ; preds = %2
  %6 = tail call %struct.__locale_struct* @newlocale(i32 8127, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.28, i64 0, i64 0), %struct.__locale_struct* null) #12, !dbg !1454
  store volatile %struct.__locale_struct* %6, %struct.__locale_struct** @c_locale_cache, align 8, !dbg !1455, !tbaa !680
  br label %7, !dbg !1456

; <label>:7:                                      ; preds = %2, %5
  %8 = load volatile %struct.__locale_struct*, %struct.__locale_struct** @c_locale_cache, align 8, !dbg !1457, !tbaa !680
  tail call void @llvm.dbg.value(metadata %struct.__locale_struct* %8, i64 0, metadata !1444, metadata !672), !dbg !1458
  %9 = icmp eq %struct.__locale_struct* %8, null, !dbg !1459
  br i1 %9, label %10, label %13, !dbg !1461

; <label>:10:                                     ; preds = %7
  %11 = icmp eq i8** %1, null, !dbg !1462
  br i1 %11, label %15, label %12, !dbg !1465

; <label>:12:                                     ; preds = %10
  store i8* %0, i8** %1, align 8, !dbg !1466, !tbaa !680
  br label %15, !dbg !1467

; <label>:13:                                     ; preds = %7
  %14 = tail call double @strtod_l(i8* %0, i8** %1, %struct.__locale_struct* nonnull %8) #12, !dbg !1468
  tail call void @llvm.dbg.value(metadata double %14, i64 0, metadata !1443, metadata !672), !dbg !1469
  br label %15, !dbg !1470

; <label>:15:                                     ; preds = %12, %10, %13
  %16 = phi double [ %14, %13 ], [ 0.000000e+00, %10 ], [ 0.000000e+00, %12 ]
  ret double %16, !dbg !1471
}

; Function Attrs: nounwind
declare %struct.__locale_struct* @newlocale(i32, i8*, %struct.__locale_struct*) local_unnamed_addr #2

; Function Attrs: nounwind
declare double @strtod_l(i8*, i8**, %struct.__locale_struct*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_file_name(i8*) local_unnamed_addr #6 !dbg !1472 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1474, metadata !672), !dbg !1475
  store i8* %0, i8** @file_name, align 8, !dbg !1476, !tbaa !680
  ret void, !dbg !1477
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_ignore_EPIPE(i1 zeroext) local_unnamed_addr #6 !dbg !1478 {
  %2 = zext i1 %0 to i8
  tail call void @llvm.dbg.value(metadata i1 %0, i64 0, metadata !1482, metadata !1268), !dbg !1483
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !1484, !tbaa !1485
  ret void, !dbg !1487
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout() #6 !dbg !1488 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1493, !tbaa !680
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #12, !dbg !1494
  %3 = icmp eq i32 %2, 0, !dbg !1495
  br i1 %3, label %21, label %4, !dbg !1496

; <label>:4:                                      ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !1497, !tbaa !1485, !range !1499
  %6 = icmp eq i8 %5, 0, !dbg !1497
  %7 = tail call i32* @__errno_location() #1, !dbg !1500
  br i1 %6, label %11, label %8, !dbg !1502

; <label>:8:                                      ; preds = %4
  %9 = load i32, i32* %7, align 4, !dbg !1503, !tbaa !787
  %10 = icmp eq i32 %9, 32, !dbg !1505
  br i1 %10, label %21, label %11, !dbg !1506

; <label>:11:                                     ; preds = %4, %8
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.47, i64 0, i64 0), i32 5) #12, !dbg !1508
  tail call void @llvm.dbg.value(metadata i8* %12, i64 0, metadata !1490, metadata !672), !dbg !1509
  %13 = load i8*, i8** @file_name, align 8, !dbg !1510, !tbaa !680
  %14 = icmp eq i8* %13, null, !dbg !1510
  %15 = load i32, i32* %7, align 4, !tbaa !787
  br i1 %14, label %18, label %16, !dbg !1511

; <label>:16:                                     ; preds = %11
  %17 = tail call i8* @quotearg_colon(i8* nonnull %13) #12, !dbg !1512
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.48, i64 0, i64 0), i8* %17, i8* %12) #12, !dbg !1514
  br label %19, !dbg !1516

; <label>:18:                                     ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.49, i64 0, i64 0), i8* %12) #12, !dbg !1517
  br label %19

; <label>:19:                                     ; preds = %18, %16
  %20 = load volatile i32, i32* @exit_failure, align 4, !dbg !1518, !tbaa !787
  tail call void @_exit(i32 %20) #15, !dbg !1519
  unreachable, !dbg !1519

; <label>:21:                                     ; preds = %0, %8
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1520, !tbaa !680
  %23 = tail call i32 @close_stream(%struct._IO_FILE* %22) #12, !dbg !1522
  %24 = icmp eq i32 %23, 0, !dbg !1523
  br i1 %24, label %27, label %25, !dbg !1524

; <label>:25:                                     ; preds = %21
  %26 = load volatile i32, i32* @exit_failure, align 4, !dbg !1525, !tbaa !787
  tail call void @_exit(i32 %26) #15, !dbg !1526
  unreachable, !dbg !1526

; <label>:27:                                     ; preds = %21
  ret void, !dbg !1527
}

; Function Attrs: nounwind readnone sspstrong uwtable
define { i64, i64 } @dtotimespec(double) local_unnamed_addr #8 !dbg !1528 {
  tail call void @llvm.dbg.value(metadata double %0, i64 0, metadata !1537, metadata !672), !dbg !1544
  %2 = fcmp ogt double %0, 0xC3E0000000000000, !dbg !1545
  br i1 %2, label %3, label %25, !dbg !1546

; <label>:3:                                      ; preds = %1
  %4 = fcmp olt double %0, 0x43E0000000000000, !dbg !1547
  br i1 %4, label %5, label %25, !dbg !1548

; <label>:5:                                      ; preds = %3
  %6 = fptosi double %0 to i64, !dbg !1549
  tail call void @llvm.dbg.value(metadata i64 %6, i64 0, metadata !1538, metadata !672), !dbg !1550
  %7 = sitofp i64 %6 to double, !dbg !1551
  %8 = fsub double %0, %7, !dbg !1552
  %9 = fmul double %8, 1.000000e+09, !dbg !1553
  tail call void @llvm.dbg.value(metadata double %9, i64 0, metadata !1542, metadata !672), !dbg !1554
  %10 = fptosi double %9 to i64, !dbg !1555
  tail call void @llvm.dbg.value(metadata i64 %10, i64 0, metadata !1543, metadata !672), !dbg !1556
  %11 = sitofp i64 %10 to double, !dbg !1557
  %12 = fcmp olt double %11, %9, !dbg !1558
  %13 = zext i1 %12 to i64, !dbg !1557
  %14 = add nsw i64 %13, %10, !dbg !1559
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !1543, metadata !672), !dbg !1556
  %15 = sdiv i64 %14, 1000000000, !dbg !1560
  %16 = add nsw i64 %15, %6, !dbg !1561
  tail call void @llvm.dbg.value(metadata i64 %16, i64 0, metadata !1538, metadata !672), !dbg !1550
  %17 = srem i64 %14, 1000000000, !dbg !1562
  tail call void @llvm.dbg.value(metadata i64 %17, i64 0, metadata !1543, metadata !672), !dbg !1556
  %18 = icmp slt i64 %17, 0, !dbg !1563
  %19 = add nsw i64 %17, 1000000000, !dbg !1565
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !1543, metadata !672), !dbg !1556
  %20 = ashr i64 %17, 63, !dbg !1567
  %21 = add nsw i64 %16, %20, !dbg !1567
  %22 = select i1 %18, i64 %19, i64 %17, !dbg !1567
  tail call void @llvm.dbg.value(metadata i64 %22, i64 0, metadata !1543, metadata !672), !dbg !1556
  tail call void @llvm.dbg.value(metadata i64 %21, i64 0, metadata !1538, metadata !672), !dbg !1550
  tail call void @llvm.dbg.value(metadata i64 %21, i64 0, metadata !1568, metadata !672), !dbg !1575
  tail call void @llvm.dbg.value(metadata i64 %22, i64 0, metadata !1573, metadata !672), !dbg !1577
  tail call void @llvm.dbg.declare(metadata %struct.timespec* undef, metadata !1574, metadata !672), !dbg !1578
  tail call void @llvm.dbg.value(metadata i64 %21, i64 0, metadata !1574, metadata !1272), !dbg !1578
  tail call void @llvm.dbg.value(metadata i64 %22, i64 0, metadata !1574, metadata !1273), !dbg !1578
  %23 = insertvalue { i64, i64 } undef, i64 %21, 0, !dbg !1579
  %24 = insertvalue { i64, i64 } %23, i64 %22, 1, !dbg !1579
  br label %25

; <label>:25:                                     ; preds = %3, %1, %5
  %26 = phi { i64, i64 } [ %24, %5 ], [ { i64 -9223372036854775808, i64 0 }, %1 ], [ { i64 9223372036854775807, i64 999999999 }, %3 ]
  ret { i64, i64 } %26, !dbg !1580
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_program_name(i8*) local_unnamed_addr #6 !dbg !1581 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1583, metadata !672), !dbg !1586
  %2 = icmp eq i8* %0, null, !dbg !1587
  br i1 %2, label %3, label %6, !dbg !1589

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1590, !tbaa !680
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.58, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #17, !dbg !1592
  tail call void @abort() #15, !dbg !1593
  unreachable, !dbg !1593

; <label>:6:                                      ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #11, !dbg !1594
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !1584, metadata !672), !dbg !1595
  %8 = icmp ne i8* %7, null, !dbg !1596
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !1597
  %10 = select i1 %8, i8* %9, i8* %0, !dbg !1599
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !1585, metadata !672), !dbg !1600
  %11 = ptrtoint i8* %10 to i64, !dbg !1601
  %12 = ptrtoint i8* %0 to i64, !dbg !1601
  %13 = sub i64 %11, %12, !dbg !1601
  %14 = icmp sgt i64 %13, 6, !dbg !1603
  br i1 %14, label %15, label %24, !dbg !1604

; <label>:15:                                     ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !1605
  %17 = tail call i32 @strncmp(i8* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.59, i64 0, i64 0), i64 7) #11, !dbg !1605
  %18 = icmp eq i32 %17, 0, !dbg !1607
  br i1 %18, label %19, label %24, !dbg !1608

; <label>:19:                                     ; preds = %15
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !1583, metadata !672), !dbg !1586
  %20 = tail call i32 @strncmp(i8* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.60, i64 0, i64 0), i64 3) #11, !dbg !1609
  %21 = icmp eq i32 %20, 0, !dbg !1612
  br i1 %21, label %22, label %24, !dbg !1613

; <label>:22:                                     ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !1614
  tail call void @llvm.dbg.value(metadata i8* %23, i64 0, metadata !1583, metadata !672), !dbg !1586
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !1616, !tbaa !680
  br label %24, !dbg !1617

; <label>:24:                                     ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i8* %25, i64 0, metadata !1583, metadata !672), !dbg !1586
  store i8* %25, i8** @program_name, align 8, !dbg !1618, !tbaa !680
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !1619, !tbaa !680
  ret void, !dbg !1620
}

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #12

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #5

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define %struct.quoting_options* @clone_quoting_options(%struct.quoting_options*) local_unnamed_addr #6 !dbg !1621 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1626, metadata !672), !dbg !1629
  %2 = tail call i32* @__errno_location() #1, !dbg !1630
  %3 = load i32, i32* %2, align 4, !dbg !1630, !tbaa !787
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !1627, metadata !672), !dbg !1631
  %4 = icmp ne %struct.quoting_options* %0, null, !dbg !1632
  %5 = bitcast %struct.quoting_options* %0 to i8*, !dbg !1633
  %6 = select i1 %4, i8* %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), !dbg !1633
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #12, !dbg !1635
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !1635
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %8, i64 0, metadata !1628, metadata !672), !dbg !1636
  store i32 %3, i32* %2, align 4, !dbg !1637, !tbaa !787
  ret %struct.quoting_options* %8, !dbg !1638
}

; Function Attrs: nounwind readonly sspstrong uwtable
define i32 @get_quoting_style(%struct.quoting_options* readonly) local_unnamed_addr #13 !dbg !1639 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1645, metadata !672), !dbg !1646
  %2 = icmp ne %struct.quoting_options* %0, null, !dbg !1647
  %3 = select i1 %2, %struct.quoting_options* %0, %struct.quoting_options* @default_quoting_options, !dbg !1647
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1648
  %5 = load i32, i32* %4, align 8, !dbg !1648, !tbaa !1650
  ret i32 %5, !dbg !1652
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_quoting_style(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !1653 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1657, metadata !672), !dbg !1659
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1658, metadata !672), !dbg !1660
  %3 = icmp ne %struct.quoting_options* %0, null, !dbg !1661
  %4 = select i1 %3, %struct.quoting_options* %0, %struct.quoting_options* @default_quoting_options, !dbg !1661
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !1662
  store i32 %1, i32* %5, align 8, !dbg !1664, !tbaa !1650
  ret void, !dbg !1665
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_char_quoting(%struct.quoting_options*, i8 signext, i32) local_unnamed_addr #6 !dbg !1666 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1670, metadata !672), !dbg !1678
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1671, metadata !672), !dbg !1679
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !1672, metadata !672), !dbg !1680
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1673, metadata !672), !dbg !1681
  %4 = icmp ne %struct.quoting_options* %0, null, !dbg !1682
  %5 = select i1 %4, %struct.quoting_options* %0, %struct.quoting_options* @default_quoting_options, !dbg !1682
  %6 = lshr i8 %1, 5, !dbg !1683
  %7 = zext i8 %6 to i64, !dbg !1683
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !1685
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !1674, metadata !672), !dbg !1686
  %9 = and i8 %1, 31, !dbg !1687
  %10 = zext i8 %9 to i32, !dbg !1688
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !1676, metadata !672), !dbg !1689
  %11 = load i32, i32* %8, align 4, !dbg !1690, !tbaa !787
  %12 = lshr i32 %11, %10, !dbg !1691
  %13 = and i32 %12, 1, !dbg !1692
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !1677, metadata !672), !dbg !1693
  %14 = and i32 %2, 1, !dbg !1694
  %15 = xor i32 %13, %14, !dbg !1695
  %16 = shl i32 %15, %10, !dbg !1696
  %17 = xor i32 %16, %11, !dbg !1697
  store i32 %17, i32* %8, align 4, !dbg !1697, !tbaa !787
  ret i32 %13, !dbg !1698
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_quoting_flags(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !1699 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1703, metadata !672), !dbg !1706
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1704, metadata !672), !dbg !1707
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1708
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1703, metadata !672), !dbg !1706
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1710
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1703, metadata !672), !dbg !1706
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !1711
  %6 = load i32, i32* %5, align 4, !dbg !1711, !tbaa !1712
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !1705, metadata !672), !dbg !1713
  store i32 %1, i32* %5, align 4, !dbg !1714, !tbaa !1712
  ret i32 %6, !dbg !1715
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_custom_quoting(%struct.quoting_options*, i8*, i8*) local_unnamed_addr #6 !dbg !1716 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1720, metadata !672), !dbg !1723
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1721, metadata !672), !dbg !1724
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1722, metadata !672), !dbg !1725
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1726
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1720, metadata !672), !dbg !1723
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1728
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1720, metadata !672), !dbg !1723
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1729
  store i32 10, i32* %6, align 8, !dbg !1730, !tbaa !1650
  %7 = icmp ne i8* %1, null, !dbg !1731
  %8 = icmp ne i8* %2, null, !dbg !1733
  %9 = and i1 %7, %8, !dbg !1735
  br i1 %9, label %11, label %10, !dbg !1735

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !1736
  unreachable, !dbg !1736

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1737
  store i8* %1, i8** %12, align 8, !dbg !1738, !tbaa !1739
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1740
  store i8* %2, i8** %13, align 8, !dbg !1741, !tbaa !1742
  ret void, !dbg !1743
}

; Function Attrs: nounwind sspstrong uwtable
define i64 @quotearg_buffer(i8*, i64, i8*, i64, %struct.quoting_options* readonly) local_unnamed_addr #6 !dbg !1744 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1748, metadata !672), !dbg !1756
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1749, metadata !672), !dbg !1757
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1750, metadata !672), !dbg !1758
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !1751, metadata !672), !dbg !1759
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1752, metadata !672), !dbg !1760
  %6 = icmp ne %struct.quoting_options* %4, null, !dbg !1761
  %7 = select i1 %6, %struct.quoting_options* %4, %struct.quoting_options* @default_quoting_options, !dbg !1761
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %7, i64 0, metadata !1753, metadata !672), !dbg !1762
  %8 = tail call i32* @__errno_location() #1, !dbg !1763
  %9 = load i32, i32* %8, align 4, !dbg !1763, !tbaa !787
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !1754, metadata !672), !dbg !1764
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !1765
  %11 = load i32, i32* %10, align 8, !dbg !1765, !tbaa !1650
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !1766
  %13 = load i32, i32* %12, align 4, !dbg !1766, !tbaa !1712
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !1767
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !1768
  %16 = load i8*, i8** %15, align 8, !dbg !1768, !tbaa !1739
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !1769
  %18 = load i8*, i8** %17, align 8, !dbg !1769, !tbaa !1742
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* %14, i8* %16, i8* %18), !dbg !1770
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !1755, metadata !672), !dbg !1771
  store i32 %9, i32* %8, align 4, !dbg !1772, !tbaa !787
  ret i64 %19, !dbg !1773
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8*, i64, i8*, i64, i32, i32, i32* readonly, i8* readonly, i8* readonly) unnamed_addr #6 !dbg !1774 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1780, metadata !672), !dbg !1843
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1781, metadata !672), !dbg !1844
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1782, metadata !672), !dbg !1845
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !1783, metadata !672), !dbg !1846
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !1784, metadata !672), !dbg !1847
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !1785, metadata !672), !dbg !1848
  tail call void @llvm.dbg.value(metadata i32* %6, i64 0, metadata !1786, metadata !672), !dbg !1849
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !1787, metadata !672), !dbg !1850
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !1788, metadata !672), !dbg !1851
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1790, metadata !672), !dbg !1852
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1791, metadata !672), !dbg !1853
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1792, metadata !672), !dbg !1854
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1793, metadata !672), !dbg !1855
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1794, metadata !672), !dbg !1856
  %13 = tail call i64 @__ctype_get_mb_cur_max() #12, !dbg !1857
  %14 = icmp eq i64 %13, 1, !dbg !1858
  %15 = lshr i32 %5, 1, !dbg !1859
  %16 = trunc i32 %15 to i8, !dbg !1859
  %17 = and i8 %16, 1, !dbg !1859
  tail call void @llvm.dbg.value(metadata i8 %17, i64 0, metadata !1796, metadata !672), !dbg !1859
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1797, metadata !672), !dbg !1860
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1798, metadata !672), !dbg !1861
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1799, metadata !672), !dbg !1862
  %18 = bitcast i64* %10 to i8*
  %19 = bitcast i32* %12 to i8*
  %20 = icmp eq i32* %6, null
  %21 = icmp ne i32* %6, null
  %22 = and i32 %5, 1
  %23 = icmp eq i32 %22, 0
  %24 = and i32 %5, 4
  %25 = icmp eq i32 %24, 0
  %26 = getelementptr inbounds i8, i8* %2, i64 1
  br label %27, !dbg !1863

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
  call void @llvm.dbg.value(metadata i64 %40, i64 0, metadata !1781, metadata !672), !dbg !1844
  call void @llvm.dbg.value(metadata i8 %39, i64 0, metadata !1799, metadata !672), !dbg !1862
  call void @llvm.dbg.value(metadata i8 %38, i64 0, metadata !1798, metadata !672), !dbg !1861
  call void @llvm.dbg.value(metadata i8 %37, i64 0, metadata !1797, metadata !672), !dbg !1860
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !1796, metadata !672), !dbg !1859
  call void @llvm.dbg.value(metadata i64 %35, i64 0, metadata !1783, metadata !672), !dbg !1846
  call void @llvm.dbg.value(metadata i8 %34, i64 0, metadata !1794, metadata !672), !dbg !1856
  call void @llvm.dbg.value(metadata i64 %33, i64 0, metadata !1793, metadata !672), !dbg !1855
  call void @llvm.dbg.value(metadata i8* %32, i64 0, metadata !1792, metadata !672), !dbg !1854
  call void @llvm.dbg.value(metadata i64 %31, i64 0, metadata !1791, metadata !672), !dbg !1853
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1790, metadata !672), !dbg !1852
  call void @llvm.dbg.value(metadata i8* %30, i64 0, metadata !1788, metadata !672), !dbg !1851
  call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !1787, metadata !672), !dbg !1850
  call void @llvm.dbg.value(metadata i32 %28, i64 0, metadata !1784, metadata !672), !dbg !1847
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
  ], !dbg !1864

; <label>:41:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !1784, metadata !672), !dbg !1847
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1796, metadata !672), !dbg !1859
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !1796, metadata !672), !dbg !1859
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !1784, metadata !672), !dbg !1847
  br label %95, !dbg !1865

; <label>:42:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !1796, metadata !672), !dbg !1859
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !1784, metadata !672), !dbg !1847
  %43 = and i8 %36, 1, !dbg !1867
  %44 = icmp eq i8 %43, 0, !dbg !1867
  br i1 %44, label %45, label %95, !dbg !1865

; <label>:45:                                     ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !1869
  br i1 %46, label %95, label %47, !dbg !1873

; <label>:47:                                     ; preds = %45
  store i8 34, i8* %0, align 1, !dbg !1875, !tbaa !1132
  br label %95, !dbg !1875

; <label>:48:                                     ; preds = %27, %27
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.71, i64 0, i64 0), i32 %28), !dbg !1877
  call void @llvm.dbg.value(metadata i8* %49, i64 0, metadata !1787, metadata !672), !dbg !1850
  %50 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.72, i64 0, i64 0), i32 %28), !dbg !1881
  call void @llvm.dbg.value(metadata i8* %50, i64 0, metadata !1788, metadata !672), !dbg !1851
  br label %51, !dbg !1882

; <label>:51:                                     ; preds = %27, %48
  %52 = phi i8* [ %49, %48 ], [ %29, %27 ]
  %53 = phi i8* [ %50, %48 ], [ %30, %27 ]
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !1788, metadata !672), !dbg !1851
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !1787, metadata !672), !dbg !1850
  %54 = and i8 %36, 1, !dbg !1883
  %55 = icmp eq i8 %54, 0, !dbg !1883
  br i1 %55, label %56, label %73, !dbg !1885

; <label>:56:                                     ; preds = %51
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !1792, metadata !672), !dbg !1854
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1790, metadata !672), !dbg !1852
  %57 = load i8, i8* %52, align 1, !dbg !1886, !tbaa !1132
  %58 = icmp eq i8 %57, 0, !dbg !1890
  br i1 %58, label %73, label %59, !dbg !1890

; <label>:59:                                     ; preds = %56
  br label %60, !dbg !1892

; <label>:60:                                     ; preds = %59, %67
  %61 = phi i8 [ %70, %67 ], [ %57, %59 ]
  %62 = phi i8* [ %69, %67 ], [ %52, %59 ]
  %63 = phi i64 [ %68, %67 ], [ 0, %59 ]
  %64 = icmp ult i64 %63, %40, !dbg !1892
  br i1 %64, label %65, label %67, !dbg !1896

; <label>:65:                                     ; preds = %60
  %66 = getelementptr inbounds i8, i8* %0, i64 %63, !dbg !1898
  store i8 %61, i8* %66, align 1, !dbg !1898, !tbaa !1132
  br label %67, !dbg !1898

; <label>:67:                                     ; preds = %65, %60
  %68 = add i64 %63, 1, !dbg !1900
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !1790, metadata !672), !dbg !1852
  %69 = getelementptr inbounds i8, i8* %62, i64 1, !dbg !1902
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !1792, metadata !672), !dbg !1854
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !1792, metadata !672), !dbg !1854
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !1790, metadata !672), !dbg !1852
  %70 = load i8, i8* %69, align 1, !dbg !1886, !tbaa !1132
  %71 = icmp eq i8 %70, 0, !dbg !1890
  br i1 %71, label %72, label %60, !dbg !1890, !llvm.loop !1904

; <label>:72:                                     ; preds = %67
  br label %73, !dbg !1852

; <label>:73:                                     ; preds = %72, %56, %51
  %74 = phi i64 [ 0, %51 ], [ 0, %56 ], [ %68, %72 ]
  call void @llvm.dbg.value(metadata i64 %74, i64 0, metadata !1790, metadata !672), !dbg !1852
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1794, metadata !672), !dbg !1856
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !1792, metadata !672), !dbg !1854
  %75 = call i64 @strlen(i8* %53) #11, !dbg !1907
  call void @llvm.dbg.value(metadata i64 %75, i64 0, metadata !1793, metadata !672), !dbg !1855
  br label %95, !dbg !1908

; <label>:76:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1794, metadata !672), !dbg !1856
  br label %77, !dbg !1909

; <label>:77:                                     ; preds = %27, %76
  %78 = phi i8 [ %34, %27 ], [ 1, %76 ]
  call void @llvm.dbg.value(metadata i8 %78, i64 0, metadata !1794, metadata !672), !dbg !1856
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1796, metadata !672), !dbg !1859
  br label %79, !dbg !1910

; <label>:79:                                     ; preds = %27, %77
  %80 = phi i8 [ %34, %27 ], [ %78, %77 ]
  %81 = phi i8 [ %36, %27 ], [ 1, %77 ]
  call void @llvm.dbg.value(metadata i8 %81, i64 0, metadata !1796, metadata !672), !dbg !1859
  call void @llvm.dbg.value(metadata i8 %80, i64 0, metadata !1794, metadata !672), !dbg !1856
  %82 = and i8 %81, 1, !dbg !1911
  %83 = icmp eq i8 %82, 0, !dbg !1911
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1794, metadata !672), !dbg !1856
  %84 = select i1 %83, i8 1, i8 %80, !dbg !1913
  br label %85, !dbg !1913

; <label>:85:                                     ; preds = %79, %27
  %86 = phi i8 [ %34, %27 ], [ %84, %79 ]
  %87 = phi i8 [ %36, %27 ], [ %81, %79 ]
  call void @llvm.dbg.value(metadata i8 %87, i64 0, metadata !1796, metadata !672), !dbg !1859
  call void @llvm.dbg.value(metadata i8 %86, i64 0, metadata !1794, metadata !672), !dbg !1856
  call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !1784, metadata !672), !dbg !1847
  %88 = and i8 %87, 1, !dbg !1914
  %89 = icmp eq i8 %88, 0, !dbg !1914
  br i1 %89, label %90, label %95, !dbg !1916

; <label>:90:                                     ; preds = %85
  %91 = icmp eq i64 %40, 0, !dbg !1917
  br i1 %91, label %95, label %92, !dbg !1921

; <label>:92:                                     ; preds = %90
  store i8 39, i8* %0, align 1, !dbg !1923, !tbaa !1132
  br label %95, !dbg !1923

; <label>:93:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1796, metadata !672), !dbg !1859
  br label %95, !dbg !1925

; <label>:94:                                     ; preds = %27
  call void @abort() #15, !dbg !1926
  unreachable, !dbg !1926

; <label>:95:                                     ; preds = %41, %85, %90, %92, %27, %42, %45, %47, %93, %73
  %96 = phi i32 [ 0, %93 ], [ %28, %73 ], [ 5, %47 ], [ 5, %45 ], [ 5, %42 ], [ 7, %27 ], [ 2, %92 ], [ 2, %90 ], [ 2, %85 ], [ 5, %41 ]
  %97 = phi i8* [ %29, %93 ], [ %52, %73 ], [ %29, %47 ], [ %29, %45 ], [ %29, %42 ], [ %29, %27 ], [ %29, %92 ], [ %29, %90 ], [ %29, %85 ], [ %29, %41 ]
  %98 = phi i8* [ %30, %93 ], [ %53, %73 ], [ %30, %47 ], [ %30, %45 ], [ %30, %42 ], [ %30, %27 ], [ %30, %92 ], [ %30, %90 ], [ %30, %85 ], [ %30, %41 ]
  %99 = phi i64 [ 0, %93 ], [ %74, %73 ], [ 1, %47 ], [ 1, %45 ], [ 0, %42 ], [ 0, %27 ], [ 1, %92 ], [ 1, %90 ], [ 0, %85 ], [ 0, %41 ]
  %100 = phi i8* [ %32, %93 ], [ %53, %73 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.73, i64 0, i64 0), %47 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.73, i64 0, i64 0), %45 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.73, i64 0, i64 0), %42 ], [ %32, %27 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.72, i64 0, i64 0), %92 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.72, i64 0, i64 0), %90 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.72, i64 0, i64 0), %85 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.73, i64 0, i64 0), %41 ]
  %101 = phi i64 [ %33, %93 ], [ %75, %73 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ %33, %27 ], [ 1, %92 ], [ 1, %90 ], [ 1, %85 ], [ 1, %41 ]
  %102 = phi i8 [ %34, %93 ], [ 1, %73 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ 1, %27 ], [ %86, %92 ], [ %86, %90 ], [ %86, %85 ], [ 1, %41 ]
  %103 = phi i8 [ 0, %93 ], [ %36, %73 ], [ %36, %47 ], [ %36, %45 ], [ %36, %42 ], [ 0, %27 ], [ %87, %92 ], [ %87, %90 ], [ %87, %85 ], [ 1, %41 ]
  call void @llvm.dbg.value(metadata i8 %103, i64 0, metadata !1796, metadata !672), !dbg !1859
  call void @llvm.dbg.value(metadata i8 %102, i64 0, metadata !1794, metadata !672), !dbg !1856
  call void @llvm.dbg.value(metadata i64 %101, i64 0, metadata !1793, metadata !672), !dbg !1855
  call void @llvm.dbg.value(metadata i8* %100, i64 0, metadata !1792, metadata !672), !dbg !1854
  call void @llvm.dbg.value(metadata i64 %99, i64 0, metadata !1790, metadata !672), !dbg !1852
  call void @llvm.dbg.value(metadata i8* %98, i64 0, metadata !1788, metadata !672), !dbg !1851
  call void @llvm.dbg.value(metadata i8* %97, i64 0, metadata !1787, metadata !672), !dbg !1850
  call void @llvm.dbg.value(metadata i32 %96, i64 0, metadata !1784, metadata !672), !dbg !1847
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1789, metadata !672), !dbg !1927
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
  br label %123, !dbg !1928

; <label>:123:                                    ; preds = %587, %95
  %124 = phi i64 [ 0, %95 ], [ %596, %587 ]
  %125 = phi i64 [ %99, %95 ], [ %589, %587 ]
  %126 = phi i64 [ %31, %95 ], [ %590, %587 ]
  %127 = phi i64 [ %35, %95 ], [ %591, %587 ]
  %128 = phi i8 [ %37, %95 ], [ %592, %587 ]
  %129 = phi i8 [ %38, %95 ], [ %593, %587 ]
  %130 = phi i8 [ %39, %95 ], [ %594, %587 ]
  %131 = phi i64 [ %40, %95 ], [ %595, %587 ]
  call void @llvm.dbg.value(metadata i64 %131, i64 0, metadata !1781, metadata !672), !dbg !1844
  call void @llvm.dbg.value(metadata i8 %130, i64 0, metadata !1799, metadata !672), !dbg !1862
  call void @llvm.dbg.value(metadata i8 %129, i64 0, metadata !1798, metadata !672), !dbg !1861
  call void @llvm.dbg.value(metadata i8 %128, i64 0, metadata !1797, metadata !672), !dbg !1860
  call void @llvm.dbg.value(metadata i64 %127, i64 0, metadata !1783, metadata !672), !dbg !1846
  call void @llvm.dbg.value(metadata i64 %126, i64 0, metadata !1791, metadata !672), !dbg !1853
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !1790, metadata !672), !dbg !1852
  call void @llvm.dbg.value(metadata i64 %124, i64 0, metadata !1789, metadata !672), !dbg !1927
  %132 = icmp eq i64 %127, -1, !dbg !1929
  br i1 %132, label %135, label %133, !dbg !1931

; <label>:133:                                    ; preds = %123
  %134 = icmp eq i64 %124, %127, !dbg !1932
  br i1 %134, label %597, label %139, !dbg !1934

; <label>:135:                                    ; preds = %123
  %136 = getelementptr inbounds i8, i8* %2, i64 %124, !dbg !1936
  %137 = load i8, i8* %136, align 1, !dbg !1936, !tbaa !1132
  %138 = icmp eq i8 %137, 0, !dbg !1938
  br i1 %138, label %597, label %139, !dbg !1934

; <label>:139:                                    ; preds = %133, %135
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1805, metadata !672), !dbg !1939
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1806, metadata !672), !dbg !1940
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1807, metadata !672), !dbg !1941
  br i1 %109, label %140, label %155, !dbg !1942

; <label>:140:                                    ; preds = %139
  %141 = add i64 %124, %101, !dbg !1944
  %142 = and i1 %110, %132, !dbg !1946
  br i1 %142, label %143, label %145, !dbg !1946

; <label>:143:                                    ; preds = %140
  %144 = call i64 @strlen(i8* %2) #11, !dbg !1947
  call void @llvm.dbg.value(metadata i64 %144, i64 0, metadata !1783, metadata !672), !dbg !1846
  br label %145, !dbg !1948

; <label>:145:                                    ; preds = %140, %143
  %146 = phi i64 [ %144, %143 ], [ %127, %140 ]
  call void @llvm.dbg.value(metadata i64 %146, i64 0, metadata !1783, metadata !672), !dbg !1846
  %147 = icmp ugt i64 %141, %146, !dbg !1950
  br i1 %147, label %155, label %148, !dbg !1952

; <label>:148:                                    ; preds = %145
  %149 = getelementptr inbounds i8, i8* %2, i64 %124, !dbg !1953
  %150 = call i32 @memcmp(i8* %149, i8* %100, i64 %101) #11, !dbg !1954
  %151 = icmp ne i32 %150, 0, !dbg !1955
  %152 = or i1 %151, %112, !dbg !1955
  %153 = xor i1 %151, true, !dbg !1955
  %154 = zext i1 %153 to i8, !dbg !1955
  br i1 %152, label %155, label %644, !dbg !1955

; <label>:155:                                    ; preds = %148, %145, %139
  %156 = phi i64 [ %146, %148 ], [ %146, %145 ], [ %127, %139 ]
  %157 = phi i8 [ %154, %148 ], [ 0, %145 ], [ 0, %139 ]
  call void @llvm.dbg.value(metadata i8 %157, i64 0, metadata !1805, metadata !672), !dbg !1939
  call void @llvm.dbg.value(metadata i64 %156, i64 0, metadata !1783, metadata !672), !dbg !1846
  %158 = getelementptr inbounds i8, i8* %2, i64 %124, !dbg !1957
  %159 = load i8, i8* %158, align 1, !dbg !1957, !tbaa !1132
  call void @llvm.dbg.value(metadata i8 %159, i64 0, metadata !1800, metadata !672), !dbg !1958
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
  ], !dbg !1959

; <label>:160:                                    ; preds = %155
  br i1 %105, label %161, label %209, !dbg !1960

; <label>:161:                                    ; preds = %160
  br i1 %112, label %162, label %644, !dbg !1961

; <label>:162:                                    ; preds = %161
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1806, metadata !672), !dbg !1940
  %163 = and i8 %128, 1, !dbg !1966
  %164 = icmp eq i8 %163, 0, !dbg !1966
  %165 = and i1 %114, %164, !dbg !1969
  br i1 %165, label %166, label %182, !dbg !1969

; <label>:166:                                    ; preds = %162
  %167 = icmp ult i64 %125, %131, !dbg !1971
  br i1 %167, label %168, label %170, !dbg !1976

; <label>:168:                                    ; preds = %166
  %169 = getelementptr inbounds i8, i8* %0, i64 %125, !dbg !1978
  store i8 39, i8* %169, align 1, !dbg !1978, !tbaa !1132
  br label %170, !dbg !1978

; <label>:170:                                    ; preds = %168, %166
  %171 = add i64 %125, 1, !dbg !1980
  call void @llvm.dbg.value(metadata i64 %171, i64 0, metadata !1790, metadata !672), !dbg !1852
  %172 = icmp ult i64 %171, %131, !dbg !1982
  br i1 %172, label %173, label %175, !dbg !1986

; <label>:173:                                    ; preds = %170
  %174 = getelementptr inbounds i8, i8* %0, i64 %171, !dbg !1988
  store i8 36, i8* %174, align 1, !dbg !1988, !tbaa !1132
  br label %175, !dbg !1988

; <label>:175:                                    ; preds = %173, %170
  %176 = add i64 %125, 2, !dbg !1990
  call void @llvm.dbg.value(metadata i64 %176, i64 0, metadata !1790, metadata !672), !dbg !1852
  %177 = icmp ult i64 %176, %131, !dbg !1992
  br i1 %177, label %178, label %180, !dbg !1996

; <label>:178:                                    ; preds = %175
  %179 = getelementptr inbounds i8, i8* %0, i64 %176, !dbg !1998
  store i8 39, i8* %179, align 1, !dbg !1998, !tbaa !1132
  br label %180, !dbg !1998

; <label>:180:                                    ; preds = %178, %175
  %181 = add i64 %125, 3, !dbg !2000
  call void @llvm.dbg.value(metadata i64 %181, i64 0, metadata !1790, metadata !672), !dbg !1852
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1797, metadata !672), !dbg !1860
  br label %182, !dbg !2002

; <label>:182:                                    ; preds = %162, %180
  %183 = phi i64 [ %181, %180 ], [ %125, %162 ]
  %184 = phi i8 [ 1, %180 ], [ %128, %162 ]
  call void @llvm.dbg.value(metadata i8 %184, i64 0, metadata !1797, metadata !672), !dbg !1860
  call void @llvm.dbg.value(metadata i64 %183, i64 0, metadata !1790, metadata !672), !dbg !1852
  %185 = icmp ult i64 %183, %131, !dbg !2004
  br i1 %185, label %186, label %188, !dbg !2008

; <label>:186:                                    ; preds = %182
  %187 = getelementptr inbounds i8, i8* %0, i64 %183, !dbg !2010
  store i8 92, i8* %187, align 1, !dbg !2010, !tbaa !1132
  br label %188, !dbg !2010

; <label>:188:                                    ; preds = %186, %182
  %189 = add i64 %183, 1, !dbg !2012
  call void @llvm.dbg.value(metadata i64 %189, i64 0, metadata !1790, metadata !672), !dbg !1852
  br i1 %106, label %190, label %476, !dbg !2014

; <label>:190:                                    ; preds = %188
  %191 = add i64 %124, 1, !dbg !2016
  %192 = icmp ult i64 %191, %156, !dbg !2018
  br i1 %192, label %193, label %476, !dbg !2019

; <label>:193:                                    ; preds = %190
  %194 = getelementptr inbounds i8, i8* %2, i64 %191, !dbg !2020
  %195 = load i8, i8* %194, align 1, !dbg !2020, !tbaa !1132
  %196 = add i8 %195, -48, !dbg !2022
  %197 = icmp ult i8 %196, 10, !dbg !2022
  br i1 %197, label %198, label %476, !dbg !2022

; <label>:198:                                    ; preds = %193
  %199 = icmp ult i64 %189, %131, !dbg !2023
  br i1 %199, label %200, label %202, !dbg !2028

; <label>:200:                                    ; preds = %198
  %201 = getelementptr inbounds i8, i8* %0, i64 %189, !dbg !2030
  store i8 48, i8* %201, align 1, !dbg !2030, !tbaa !1132
  br label %202, !dbg !2030

; <label>:202:                                    ; preds = %200, %198
  %203 = add i64 %183, 2, !dbg !2032
  call void @llvm.dbg.value(metadata i64 %203, i64 0, metadata !1790, metadata !672), !dbg !1852
  %204 = icmp ult i64 %203, %131, !dbg !2034
  br i1 %204, label %205, label %207, !dbg !2038

; <label>:205:                                    ; preds = %202
  %206 = getelementptr inbounds i8, i8* %0, i64 %203, !dbg !2040
  store i8 48, i8* %206, align 1, !dbg !2040, !tbaa !1132
  br label %207, !dbg !2040

; <label>:207:                                    ; preds = %205, %202
  %208 = add i64 %183, 3, !dbg !2042
  call void @llvm.dbg.value(metadata i64 %208, i64 0, metadata !1790, metadata !672), !dbg !1852
  br label %476, !dbg !2044

; <label>:209:                                    ; preds = %160
  br i1 %23, label %476, label %587, !dbg !2045

; <label>:210:                                    ; preds = %155
  switch i32 %96, label %476 [
    i32 2, label %211
    i32 5, label %212
  ], !dbg !2046

; <label>:211:                                    ; preds = %210
  br i1 %112, label %476, label %644, !dbg !2047

; <label>:212:                                    ; preds = %210
  br i1 %25, label %476, label %213, !dbg !2049

; <label>:213:                                    ; preds = %212
  %214 = add i64 %124, 2, !dbg !2051
  %215 = icmp ult i64 %214, %156, !dbg !2053
  br i1 %215, label %216, label %476, !dbg !2054

; <label>:216:                                    ; preds = %213
  %217 = add i64 %124, 1, !dbg !2055
  %218 = getelementptr inbounds i8, i8* %2, i64 %217, !dbg !2057
  %219 = load i8, i8* %218, align 1, !dbg !2057, !tbaa !1132
  %220 = icmp eq i8 %219, 63, !dbg !2058
  br i1 %220, label %221, label %476, !dbg !2059

; <label>:221:                                    ; preds = %216
  %222 = getelementptr inbounds i8, i8* %2, i64 %214, !dbg !2061
  %223 = load i8, i8* %222, align 1, !dbg !2061, !tbaa !1132
  %224 = sext i8 %223 to i32, !dbg !2061
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
  ], !dbg !2062

; <label>:225:                                    ; preds = %221, %221, %221, %221, %221, %221, %221, %221, %221
  br i1 %112, label %226, label %644, !dbg !2063

; <label>:226:                                    ; preds = %225
  call void @llvm.dbg.value(metadata i8 %223, i64 0, metadata !1800, metadata !672), !dbg !1958
  call void @llvm.dbg.value(metadata i64 %214, i64 0, metadata !1789, metadata !672), !dbg !1927
  %227 = icmp ult i64 %125, %131, !dbg !2065
  br i1 %227, label %228, label %230, !dbg !2069

; <label>:228:                                    ; preds = %226
  %229 = getelementptr inbounds i8, i8* %0, i64 %125, !dbg !2071
  store i8 63, i8* %229, align 1, !dbg !2071, !tbaa !1132
  br label %230, !dbg !2071

; <label>:230:                                    ; preds = %228, %226
  %231 = add i64 %125, 1, !dbg !2073
  call void @llvm.dbg.value(metadata i64 %231, i64 0, metadata !1790, metadata !672), !dbg !1852
  %232 = icmp ult i64 %231, %131, !dbg !2075
  br i1 %232, label %233, label %235, !dbg !2079

; <label>:233:                                    ; preds = %230
  %234 = getelementptr inbounds i8, i8* %0, i64 %231, !dbg !2081
  store i8 34, i8* %234, align 1, !dbg !2081, !tbaa !1132
  br label %235, !dbg !2081

; <label>:235:                                    ; preds = %233, %230
  %236 = add i64 %125, 2, !dbg !2083
  call void @llvm.dbg.value(metadata i64 %236, i64 0, metadata !1790, metadata !672), !dbg !1852
  %237 = icmp ult i64 %236, %131, !dbg !2085
  br i1 %237, label %238, label %240, !dbg !2089

; <label>:238:                                    ; preds = %235
  %239 = getelementptr inbounds i8, i8* %0, i64 %236, !dbg !2091
  store i8 34, i8* %239, align 1, !dbg !2091, !tbaa !1132
  br label %240, !dbg !2091

; <label>:240:                                    ; preds = %238, %235
  %241 = add i64 %125, 3, !dbg !2093
  call void @llvm.dbg.value(metadata i64 %241, i64 0, metadata !1790, metadata !672), !dbg !1852
  %242 = icmp ult i64 %241, %131, !dbg !2095
  br i1 %242, label %243, label %245, !dbg !2099

; <label>:243:                                    ; preds = %240
  %244 = getelementptr inbounds i8, i8* %0, i64 %241, !dbg !2101
  store i8 63, i8* %244, align 1, !dbg !2101, !tbaa !1132
  br label %245, !dbg !2101

; <label>:245:                                    ; preds = %243, %240
  %246 = add i64 %125, 4, !dbg !2103
  call void @llvm.dbg.value(metadata i64 %246, i64 0, metadata !1790, metadata !672), !dbg !1852
  br label %476, !dbg !2105

; <label>:247:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 98, i64 0, metadata !1804, metadata !672), !dbg !2106
  br label %257, !dbg !2107

; <label>:248:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 102, i64 0, metadata !1804, metadata !672), !dbg !2106
  br label %257, !dbg !2108

; <label>:249:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 114, i64 0, metadata !1804, metadata !672), !dbg !2106
  br label %255, !dbg !2109

; <label>:250:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 116, i64 0, metadata !1804, metadata !672), !dbg !2106
  br label %255, !dbg !2110

; <label>:251:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 118, i64 0, metadata !1804, metadata !672), !dbg !2106
  br label %257, !dbg !2111

; <label>:252:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 %159, i64 0, metadata !1804, metadata !672), !dbg !2106
  br i1 %114, label %253, label %254, !dbg !2112

; <label>:253:                                    ; preds = %252
  br i1 %112, label %542, label %644, !dbg !2113

; <label>:254:                                    ; preds = %252
  br i1 %122, label %542, label %255, !dbg !2116

; <label>:255:                                    ; preds = %254, %155, %250, %249
  %256 = phi i8 [ 92, %254 ], [ 116, %250 ], [ 114, %249 ], [ 110, %155 ]
  call void @llvm.dbg.value(metadata i8 %256, i64 0, metadata !1804, metadata !672), !dbg !2106
  br i1 %118, label %257, label %644, !dbg !2118

; <label>:257:                                    ; preds = %255, %155, %251, %248, %247
  %258 = phi i8 [ %256, %255 ], [ 118, %251 ], [ 102, %248 ], [ 98, %247 ], [ 97, %155 ]
  call void @llvm.dbg.value(metadata i8 %258, i64 0, metadata !1804, metadata !672), !dbg !2106
  br i1 %105, label %503, label %476, !dbg !2120

; <label>:259:                                    ; preds = %155, %155
  %260 = icmp eq i64 %156, -1, !dbg !2121
  br i1 %260, label %261, label %266, !dbg !2123

; <label>:261:                                    ; preds = %259
  %262 = load i8, i8* %26, align 1, !dbg !2124, !tbaa !1132
  %263 = icmp ne i8 %262, 0, !dbg !2126
  %264 = icmp ne i64 %124, 0, !dbg !2127
  %265 = or i1 %264, %263, !dbg !2129
  br i1 %265, label %476, label %272, !dbg !2129

; <label>:266:                                    ; preds = %259
  %267 = icmp ne i64 %156, 1, !dbg !2130
  %268 = icmp ne i64 %124, 0, !dbg !2127
  %269 = or i1 %268, %267, !dbg !2132
  br i1 %269, label %476, label %272, !dbg !2132

; <label>:270:                                    ; preds = %155, %155
  %271 = icmp eq i64 %124, 0, !dbg !2127
  br i1 %271, label %272, label %476, !dbg !2134

; <label>:272:                                    ; preds = %270, %266, %261, %155
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1807, metadata !672), !dbg !1941
  br label %273, !dbg !2135

; <label>:273:                                    ; preds = %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %272
  %274 = phi i8 [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 1, %272 ]
  call void @llvm.dbg.value(metadata i8 %274, i64 0, metadata !1807, metadata !672), !dbg !1941
  br i1 %118, label %476, label %644, !dbg !2136

; <label>:275:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1798, metadata !672), !dbg !1861
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1807, metadata !672), !dbg !1941
  br i1 %114, label %276, label %476, !dbg !2138

; <label>:276:                                    ; preds = %275
  br i1 %112, label %277, label %644, !dbg !2139

; <label>:277:                                    ; preds = %276
  %278 = icmp eq i64 %131, 0, !dbg !2142
  %279 = icmp ne i64 %126, 0, !dbg !2144
  %280 = or i1 %279, %278, !dbg !2146
  call void @llvm.dbg.value(metadata i64 %131, i64 0, metadata !1791, metadata !672), !dbg !1853
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1781, metadata !672), !dbg !1844
  %281 = select i1 %280, i64 %126, i64 %131, !dbg !2146
  %282 = select i1 %280, i64 %131, i64 0, !dbg !2146
  call void @llvm.dbg.value(metadata i64 %282, i64 0, metadata !1781, metadata !672), !dbg !1844
  call void @llvm.dbg.value(metadata i64 %281, i64 0, metadata !1791, metadata !672), !dbg !1853
  %283 = icmp ult i64 %125, %282, !dbg !2147
  br i1 %283, label %284, label %286, !dbg !2151

; <label>:284:                                    ; preds = %277
  %285 = getelementptr inbounds i8, i8* %0, i64 %125, !dbg !2153
  store i8 39, i8* %285, align 1, !dbg !2153, !tbaa !1132
  br label %286, !dbg !2153

; <label>:286:                                    ; preds = %284, %277
  %287 = add i64 %125, 1, !dbg !2155
  call void @llvm.dbg.value(metadata i64 %287, i64 0, metadata !1790, metadata !672), !dbg !1852
  %288 = icmp ult i64 %287, %282, !dbg !2157
  br i1 %288, label %289, label %291, !dbg !2161

; <label>:289:                                    ; preds = %286
  %290 = getelementptr inbounds i8, i8* %0, i64 %287, !dbg !2163
  store i8 92, i8* %290, align 1, !dbg !2163, !tbaa !1132
  br label %291, !dbg !2163

; <label>:291:                                    ; preds = %289, %286
  %292 = add i64 %125, 2, !dbg !2165
  call void @llvm.dbg.value(metadata i64 %292, i64 0, metadata !1790, metadata !672), !dbg !1852
  %293 = icmp ult i64 %292, %282, !dbg !2167
  br i1 %293, label %294, label %296, !dbg !2171

; <label>:294:                                    ; preds = %291
  %295 = getelementptr inbounds i8, i8* %0, i64 %292, !dbg !2173
  store i8 39, i8* %295, align 1, !dbg !2173, !tbaa !1132
  br label %296, !dbg !2173

; <label>:296:                                    ; preds = %294, %291
  %297 = add i64 %125, 3, !dbg !2175
  call void @llvm.dbg.value(metadata i64 %297, i64 0, metadata !1790, metadata !672), !dbg !1852
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1797, metadata !672), !dbg !1860
  br label %476, !dbg !2177

; <label>:298:                                    ; preds = %155
  br i1 %14, label %299, label %308, !dbg !2178

; <label>:299:                                    ; preds = %298
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1808, metadata !672), !dbg !2179
  %300 = tail call i16** @__ctype_b_loc() #1, !dbg !2180
  %301 = load i16*, i16** %300, align 8, !dbg !2180, !tbaa !680
  %302 = zext i8 %159 to i64, !dbg !2180
  %303 = getelementptr inbounds i16, i16* %301, i64 %302, !dbg !2180
  %304 = load i16, i16* %303, align 2, !dbg !2180, !tbaa !2182
  %305 = lshr i16 %304, 14, !dbg !2184
  %306 = trunc i16 %305 to i8, !dbg !2184
  %307 = and i8 %306, 1, !dbg !2184
  call void @llvm.dbg.value(metadata i8 %307, i64 0, metadata !1811, metadata !672), !dbg !2185
  br label %368, !dbg !2186

; <label>:308:                                    ; preds = %298
  call void @llvm.lifetime.start(i64 8, i8* nonnull %18) #12, !dbg !2187
  store i64 0, i64* %10, align 8, !dbg !2188
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1808, metadata !672), !dbg !2179
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1811, metadata !672), !dbg !2185
  %309 = icmp eq i64 %156, -1, !dbg !2189
  br i1 %309, label %310, label %312, !dbg !2191, !llvm.loop !2192

; <label>:310:                                    ; preds = %308
  %311 = call i64 @strlen(i8* nonnull %2) #11, !dbg !2195
  call void @llvm.dbg.value(metadata i64 %311, i64 0, metadata !1783, metadata !672), !dbg !1846
  br label %312, !dbg !2196, !llvm.loop !2192

; <label>:312:                                    ; preds = %310, %308
  %313 = phi i64 [ %156, %308 ], [ %311, %310 ]
  br label %314, !dbg !2185

; <label>:314:                                    ; preds = %312, %355
  %315 = phi i64 [ %360, %355 ], [ 0, %312 ]
  %316 = phi i8 [ %359, %355 ], [ 1, %312 ]
  call void @llvm.dbg.value(metadata i8 %316, i64 0, metadata !1811, metadata !672), !dbg !2185
  call void @llvm.dbg.value(metadata i64 %315, i64 0, metadata !1808, metadata !672), !dbg !2179
  call void @llvm.dbg.value(metadata i64 %313, i64 0, metadata !1783, metadata !672), !dbg !1846
  call void @llvm.lifetime.start(i64 4, i8* nonnull %19) #12, !dbg !2197
  %317 = add i64 %315, %124, !dbg !2198
  %318 = getelementptr inbounds i8, i8* %2, i64 %317, !dbg !2199
  %319 = sub i64 %313, %317, !dbg !2200
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !1812, metadata !936), !dbg !2201
  call void @llvm.dbg.value(metadata i32* %12, i64 0, metadata !1829, metadata !936), !dbg !2202
  %320 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %318, i64 %319, %struct.__mbstate_t* nonnull %11) #12, !dbg !2203
  call void @llvm.dbg.value(metadata i64 %320, i64 0, metadata !1832, metadata !672), !dbg !2204
  switch i64 %320, label %334 [
    i64 0, label %350
    i64 -1, label %347
    i64 -2, label %321
  ], !dbg !2205

; <label>:321:                                    ; preds = %314
  call void @llvm.dbg.value(metadata i64 %315, i64 0, metadata !1808, metadata !672), !dbg !2179
  %322 = icmp ugt i64 %313, %317, !dbg !2206
  br i1 %322, label %323, label %351, !dbg !2209

; <label>:323:                                    ; preds = %321
  br label %324, !dbg !2210

; <label>:324:                                    ; preds = %323, %330
  %325 = phi i64 [ %332, %330 ], [ %317, %323 ]
  %326 = phi i64 [ %331, %330 ], [ %315, %323 ]
  %327 = getelementptr inbounds i8, i8* %2, i64 %325, !dbg !2210
  %328 = load i8, i8* %327, align 1, !dbg !2210, !tbaa !1132
  %329 = icmp eq i8 %328, 0, !dbg !2212
  br i1 %329, label %348, label %330, !dbg !2213

; <label>:330:                                    ; preds = %324
  %331 = add i64 %326, 1, !dbg !2215
  call void @llvm.dbg.value(metadata i64 %331, i64 0, metadata !1808, metadata !672), !dbg !2179
  call void @llvm.dbg.value(metadata i64 %331, i64 0, metadata !1808, metadata !672), !dbg !2179
  %332 = add i64 %331, %124, !dbg !2216
  %333 = icmp ult i64 %332, %313, !dbg !2206
  br i1 %333, label %324, label %348, !dbg !2209, !llvm.loop !2217

; <label>:334:                                    ; preds = %314
  %335 = icmp ugt i64 %320, 1, !dbg !2219
  %336 = and i1 %116, %335, !dbg !2223
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1833, metadata !672), !dbg !2224
  br i1 %336, label %337, label %355, !dbg !2223

; <label>:337:                                    ; preds = %334
  br label %338, !dbg !2225

; <label>:338:                                    ; preds = %337, %344
  %339 = phi i64 [ %345, %344 ], [ 1, %337 ]
  %340 = add i64 %339, %317, !dbg !2225
  %341 = getelementptr inbounds i8, i8* %2, i64 %340, !dbg !2226
  %342 = load i8, i8* %341, align 1, !dbg !2226, !tbaa !1132
  %343 = sext i8 %342 to i32, !dbg !2226
  switch i32 %343, label %344 [
    i32 91, label %367
    i32 92, label %367
    i32 94, label %367
    i32 96, label %367
    i32 124, label %367
  ], !dbg !2227

; <label>:344:                                    ; preds = %338
  %345 = add nuw i64 %339, 1, !dbg !2228
  call void @llvm.dbg.value(metadata i64 %345, i64 0, metadata !1833, metadata !672), !dbg !2224
  call void @llvm.dbg.value(metadata i64 %345, i64 0, metadata !1833, metadata !672), !dbg !2224
  %346 = icmp ult i64 %345, %320, !dbg !2219
  br i1 %346, label %338, label %354, !dbg !2230, !llvm.loop !2232

; <label>:347:                                    ; preds = %314
  br label %351, !dbg !2185

; <label>:348:                                    ; preds = %324, %330
  %349 = phi i64 [ %331, %330 ], [ %326, %324 ]
  br label %351, !dbg !2185

; <label>:350:                                    ; preds = %314
  br label %351, !dbg !2185

; <label>:351:                                    ; preds = %350, %348, %347, %321
  %352 = phi i64 [ %315, %321 ], [ %315, %347 ], [ %349, %348 ], [ %315, %350 ]
  %353 = phi i8 [ 0, %321 ], [ 0, %347 ], [ 0, %348 ], [ %316, %350 ]
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !1811, metadata !672), !dbg !2185
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !1808, metadata !672), !dbg !2179
  call void @llvm.lifetime.end(i64 4, i8* nonnull %19) #12, !dbg !2235
  br label %364

; <label>:354:                                    ; preds = %344
  br label %355, !dbg !2236

; <label>:355:                                    ; preds = %354, %334
  %356 = load i32, i32* %12, align 4, !dbg !2236, !tbaa !787
  call void @llvm.dbg.value(metadata i32 %356, i64 0, metadata !1829, metadata !672), !dbg !2202
  %357 = call i32 @iswprint(i32 %356) #12, !dbg !2238
  %358 = icmp eq i32 %357, 0, !dbg !2238
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1811, metadata !672), !dbg !2185
  %359 = select i1 %358, i8 0, i8 %316, !dbg !2239
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !1811, metadata !672), !dbg !2185
  %360 = add i64 %320, %315, !dbg !2240
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !1808, metadata !672), !dbg !2179
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !1811, metadata !672), !dbg !2185
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !1808, metadata !672), !dbg !2179
  call void @llvm.lifetime.end(i64 4, i8* nonnull %19) #12, !dbg !2235
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !1812, metadata !936), !dbg !2201
  %361 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #11, !dbg !2241
  %362 = icmp eq i32 %361, 0, !dbg !2242
  br i1 %362, label %314, label %363, !dbg !2243, !llvm.loop !2192

; <label>:363:                                    ; preds = %355
  br label %364, !dbg !2245

; <label>:364:                                    ; preds = %363, %351
  %365 = phi i8 [ %353, %351 ], [ %359, %363 ]
  %366 = phi i64 [ %352, %351 ], [ %360, %363 ]
  call void @llvm.lifetime.end(i64 8, i8* nonnull %18) #12, !dbg !2245
  br label %368

; <label>:367:                                    ; preds = %338, %338, %338, %338, %338
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !1811, metadata !672), !dbg !2185
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !1808, metadata !672), !dbg !2179
  call void @llvm.lifetime.end(i64 4, i8* nonnull %19) #12, !dbg !2235
  call void @llvm.lifetime.end(i64 8, i8* nonnull %18) #12, !dbg !2245
  br label %649

; <label>:368:                                    ; preds = %364, %299
  %369 = phi i64 [ %156, %299 ], [ %313, %364 ]
  %370 = phi i64 [ 1, %299 ], [ %366, %364 ]
  %371 = phi i8 [ %307, %299 ], [ %365, %364 ]
  call void @llvm.dbg.value(metadata i8 %371, i64 0, metadata !1811, metadata !672), !dbg !2185
  call void @llvm.dbg.value(metadata i64 %370, i64 0, metadata !1808, metadata !672), !dbg !2179
  call void @llvm.dbg.value(metadata i64 %369, i64 0, metadata !1783, metadata !672), !dbg !1846
  %372 = and i8 %371, 1, !dbg !2246
  %373 = icmp ne i8 %372, 0, !dbg !2246
  call void @llvm.dbg.value(metadata i8 %372, i64 0, metadata !1807, metadata !672), !dbg !1941
  %374 = icmp ult i64 %370, 2, !dbg !2247
  %375 = or i1 %373, %113, !dbg !2248
  %376 = and i1 %374, %375, !dbg !2250
  br i1 %376, label %476, label %377, !dbg !2250

; <label>:377:                                    ; preds = %368
  %378 = add i64 %370, %124, !dbg !2251
  call void @llvm.dbg.value(metadata i64 %378, i64 0, metadata !1840, metadata !672), !dbg !2252
  br label %379, !dbg !2253

; <label>:379:                                    ; preds = %472, %377
  %380 = phi i64 [ %124, %377 ], [ %447, %472 ]
  %381 = phi i64 [ %125, %377 ], [ %473, %472 ]
  %382 = phi i8 [ %128, %377 ], [ %468, %472 ]
  %383 = phi i8 [ %159, %377 ], [ %475, %472 ]
  %384 = phi i8 [ %157, %377 ], [ %445, %472 ]
  %385 = phi i8 [ 0, %377 ], [ %446, %472 ]
  call void @llvm.dbg.value(metadata i8 %385, i64 0, metadata !1806, metadata !672), !dbg !1940
  call void @llvm.dbg.value(metadata i8 %384, i64 0, metadata !1805, metadata !672), !dbg !1939
  call void @llvm.dbg.value(metadata i8 %383, i64 0, metadata !1800, metadata !672), !dbg !1958
  call void @llvm.dbg.value(metadata i8 %382, i64 0, metadata !1797, metadata !672), !dbg !1860
  call void @llvm.dbg.value(metadata i64 %381, i64 0, metadata !1790, metadata !672), !dbg !1852
  call void @llvm.dbg.value(metadata i64 %380, i64 0, metadata !1789, metadata !672), !dbg !1927
  br i1 %375, label %432, label %386, !dbg !2254

; <label>:386:                                    ; preds = %379
  br i1 %112, label %387, label %643, !dbg !2259

; <label>:387:                                    ; preds = %386
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1806, metadata !672), !dbg !1940
  %388 = and i8 %382, 1, !dbg !2263
  %389 = icmp eq i8 %388, 0, !dbg !2263
  %390 = and i1 %114, %389, !dbg !2266
  br i1 %390, label %391, label %407, !dbg !2266

; <label>:391:                                    ; preds = %387
  %392 = icmp ult i64 %381, %131, !dbg !2268
  br i1 %392, label %393, label %395, !dbg !2273

; <label>:393:                                    ; preds = %391
  %394 = getelementptr inbounds i8, i8* %0, i64 %381, !dbg !2275
  store i8 39, i8* %394, align 1, !dbg !2275, !tbaa !1132
  br label %395, !dbg !2275

; <label>:395:                                    ; preds = %393, %391
  %396 = add i64 %381, 1, !dbg !2277
  call void @llvm.dbg.value(metadata i64 %396, i64 0, metadata !1790, metadata !672), !dbg !1852
  %397 = icmp ult i64 %396, %131, !dbg !2279
  br i1 %397, label %398, label %400, !dbg !2283

; <label>:398:                                    ; preds = %395
  %399 = getelementptr inbounds i8, i8* %0, i64 %396, !dbg !2285
  store i8 36, i8* %399, align 1, !dbg !2285, !tbaa !1132
  br label %400, !dbg !2285

; <label>:400:                                    ; preds = %398, %395
  %401 = add i64 %381, 2, !dbg !2287
  call void @llvm.dbg.value(metadata i64 %401, i64 0, metadata !1790, metadata !672), !dbg !1852
  %402 = icmp ult i64 %401, %131, !dbg !2289
  br i1 %402, label %403, label %405, !dbg !2293

; <label>:403:                                    ; preds = %400
  %404 = getelementptr inbounds i8, i8* %0, i64 %401, !dbg !2295
  store i8 39, i8* %404, align 1, !dbg !2295, !tbaa !1132
  br label %405, !dbg !2295

; <label>:405:                                    ; preds = %403, %400
  %406 = add i64 %381, 3, !dbg !2297
  call void @llvm.dbg.value(metadata i64 %406, i64 0, metadata !1790, metadata !672), !dbg !1852
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1797, metadata !672), !dbg !1860
  br label %407, !dbg !2299

; <label>:407:                                    ; preds = %387, %405
  %408 = phi i64 [ %406, %405 ], [ %381, %387 ]
  %409 = phi i8 [ 1, %405 ], [ %382, %387 ]
  call void @llvm.dbg.value(metadata i8 %409, i64 0, metadata !1797, metadata !672), !dbg !1860
  call void @llvm.dbg.value(metadata i64 %408, i64 0, metadata !1790, metadata !672), !dbg !1852
  %410 = icmp ult i64 %408, %131, !dbg !2301
  br i1 %410, label %411, label %413, !dbg !2305

; <label>:411:                                    ; preds = %407
  %412 = getelementptr inbounds i8, i8* %0, i64 %408, !dbg !2307
  store i8 92, i8* %412, align 1, !dbg !2307, !tbaa !1132
  br label %413, !dbg !2307

; <label>:413:                                    ; preds = %411, %407
  %414 = add i64 %408, 1, !dbg !2309
  call void @llvm.dbg.value(metadata i64 %414, i64 0, metadata !1790, metadata !672), !dbg !1852
  %415 = icmp ult i64 %414, %131, !dbg !2311
  br i1 %415, label %416, label %420, !dbg !2315

; <label>:416:                                    ; preds = %413
  %417 = lshr i8 %383, 6, !dbg !2317
  %418 = or i8 %417, 48, !dbg !2317
  %419 = getelementptr inbounds i8, i8* %0, i64 %414, !dbg !2317
  store i8 %418, i8* %419, align 1, !dbg !2317, !tbaa !1132
  br label %420, !dbg !2317

; <label>:420:                                    ; preds = %416, %413
  %421 = add i64 %408, 2, !dbg !2319
  call void @llvm.dbg.value(metadata i64 %421, i64 0, metadata !1790, metadata !672), !dbg !1852
  %422 = icmp ult i64 %421, %131, !dbg !2321
  br i1 %422, label %423, label %428, !dbg !2325

; <label>:423:                                    ; preds = %420
  %424 = lshr i8 %383, 3, !dbg !2327
  %425 = and i8 %424, 7, !dbg !2327
  %426 = or i8 %425, 48, !dbg !2327
  %427 = getelementptr inbounds i8, i8* %0, i64 %421, !dbg !2327
  store i8 %426, i8* %427, align 1, !dbg !2327, !tbaa !1132
  br label %428, !dbg !2327

; <label>:428:                                    ; preds = %423, %420
  %429 = add i64 %408, 3, !dbg !2329
  call void @llvm.dbg.value(metadata i64 %429, i64 0, metadata !1790, metadata !672), !dbg !1852
  %430 = and i8 %383, 7, !dbg !2331
  %431 = or i8 %430, 48, !dbg !2332
  call void @llvm.dbg.value(metadata i8 %431, i64 0, metadata !1800, metadata !672), !dbg !1958
  br label %441, !dbg !2333

; <label>:432:                                    ; preds = %379
  %433 = and i8 %384, 1, !dbg !2334
  %434 = icmp eq i8 %433, 0, !dbg !2334
  br i1 %434, label %441, label %435, !dbg !2336

; <label>:435:                                    ; preds = %432
  %436 = icmp ult i64 %381, %131, !dbg !2337
  br i1 %436, label %437, label %439, !dbg !2342

; <label>:437:                                    ; preds = %435
  %438 = getelementptr inbounds i8, i8* %0, i64 %381, !dbg !2344
  store i8 92, i8* %438, align 1, !dbg !2344, !tbaa !1132
  br label %439, !dbg !2344

; <label>:439:                                    ; preds = %437, %435
  %440 = add i64 %381, 1, !dbg !2346
  call void @llvm.dbg.value(metadata i64 %440, i64 0, metadata !1790, metadata !672), !dbg !1852
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1805, metadata !672), !dbg !1939
  br label %441, !dbg !2348

; <label>:441:                                    ; preds = %432, %439, %428
  %442 = phi i64 [ %440, %439 ], [ %381, %432 ], [ %429, %428 ]
  %443 = phi i8 [ %382, %439 ], [ %382, %432 ], [ %409, %428 ]
  %444 = phi i8 [ %383, %439 ], [ %383, %432 ], [ %431, %428 ]
  %445 = phi i8 [ 0, %439 ], [ %384, %432 ], [ %384, %428 ]
  %446 = phi i8 [ %385, %439 ], [ %385, %432 ], [ 1, %428 ]
  call void @llvm.dbg.value(metadata i8 %446, i64 0, metadata !1806, metadata !672), !dbg !1940
  call void @llvm.dbg.value(metadata i8 %445, i64 0, metadata !1805, metadata !672), !dbg !1939
  call void @llvm.dbg.value(metadata i8 %444, i64 0, metadata !1800, metadata !672), !dbg !1958
  call void @llvm.dbg.value(metadata i8 %443, i64 0, metadata !1797, metadata !672), !dbg !1860
  call void @llvm.dbg.value(metadata i64 %442, i64 0, metadata !1790, metadata !672), !dbg !1852
  %447 = add i64 %380, 1, !dbg !2349
  %448 = icmp ugt i64 %378, %447, !dbg !2351
  br i1 %448, label %449, label %541, !dbg !2352

; <label>:449:                                    ; preds = %441
  %450 = and i8 %443, 1, !dbg !2353
  %451 = icmp ne i8 %450, 0, !dbg !2353
  %452 = and i8 %446, 1, !dbg !2357
  %453 = icmp eq i8 %452, 0, !dbg !2357
  %454 = and i1 %451, %453, !dbg !2353
  br i1 %454, label %455, label %466, !dbg !2353

; <label>:455:                                    ; preds = %449
  %456 = icmp ult i64 %442, %131, !dbg !2359
  br i1 %456, label %457, label %459, !dbg !2364

; <label>:457:                                    ; preds = %455
  %458 = getelementptr inbounds i8, i8* %0, i64 %442, !dbg !2366
  store i8 39, i8* %458, align 1, !dbg !2366, !tbaa !1132
  br label %459, !dbg !2366

; <label>:459:                                    ; preds = %457, %455
  %460 = add i64 %442, 1, !dbg !2368
  call void @llvm.dbg.value(metadata i64 %460, i64 0, metadata !1790, metadata !672), !dbg !1852
  %461 = icmp ult i64 %460, %131, !dbg !2370
  br i1 %461, label %462, label %464, !dbg !2374

; <label>:462:                                    ; preds = %459
  %463 = getelementptr inbounds i8, i8* %0, i64 %460, !dbg !2376
  store i8 39, i8* %463, align 1, !dbg !2376, !tbaa !1132
  br label %464, !dbg !2376

; <label>:464:                                    ; preds = %462, %459
  %465 = add i64 %442, 2, !dbg !2378
  call void @llvm.dbg.value(metadata i64 %465, i64 0, metadata !1790, metadata !672), !dbg !1852
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1797, metadata !672), !dbg !1860
  br label %466, !dbg !2380

; <label>:466:                                    ; preds = %449, %464
  %467 = phi i64 [ %465, %464 ], [ %442, %449 ]
  %468 = phi i8 [ 0, %464 ], [ %443, %449 ]
  call void @llvm.dbg.value(metadata i8 %468, i64 0, metadata !1797, metadata !672), !dbg !1860
  call void @llvm.dbg.value(metadata i64 %467, i64 0, metadata !1790, metadata !672), !dbg !1852
  %469 = icmp ult i64 %467, %131, !dbg !2382
  br i1 %469, label %470, label %472, !dbg !2386

; <label>:470:                                    ; preds = %466
  %471 = getelementptr inbounds i8, i8* %0, i64 %467, !dbg !2388
  store i8 %444, i8* %471, align 1, !dbg !2388, !tbaa !1132
  br label %472, !dbg !2388

; <label>:472:                                    ; preds = %470, %466
  %473 = add i64 %467, 1, !dbg !2390
  call void @llvm.dbg.value(metadata i64 %473, i64 0, metadata !1790, metadata !672), !dbg !1852
  call void @llvm.dbg.value(metadata i64 %447, i64 0, metadata !1789, metadata !672), !dbg !1927
  %474 = getelementptr inbounds i8, i8* %2, i64 %447, !dbg !2392
  %475 = load i8, i8* %474, align 1, !dbg !2392, !tbaa !1132
  call void @llvm.dbg.value(metadata i8 %475, i64 0, metadata !1800, metadata !672), !dbg !1958
  br label %379, !dbg !2393, !llvm.loop !2395

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
  call void @llvm.dbg.value(metadata i64 %486, i64 0, metadata !1781, metadata !672), !dbg !1844
  call void @llvm.dbg.value(metadata i8 %485, i64 0, metadata !1807, metadata !672), !dbg !1941
  call void @llvm.dbg.value(metadata i8 %484, i64 0, metadata !1806, metadata !672), !dbg !1940
  call void @llvm.dbg.value(metadata i8 %157, i64 0, metadata !1805, metadata !672), !dbg !1939
  call void @llvm.dbg.value(metadata i8 %483, i64 0, metadata !1800, metadata !672), !dbg !1958
  call void @llvm.dbg.value(metadata i8 %482, i64 0, metadata !1798, metadata !672), !dbg !1861
  call void @llvm.dbg.value(metadata i8 %481, i64 0, metadata !1797, metadata !672), !dbg !1860
  call void @llvm.dbg.value(metadata i64 %480, i64 0, metadata !1783, metadata !672), !dbg !1846
  call void @llvm.dbg.value(metadata i64 %479, i64 0, metadata !1791, metadata !672), !dbg !1853
  call void @llvm.dbg.value(metadata i64 %478, i64 0, metadata !1790, metadata !672), !dbg !1852
  call void @llvm.dbg.value(metadata i64 %477, i64 0, metadata !1789, metadata !672), !dbg !1927
  br i1 %107, label %488, label %487, !dbg !2398

; <label>:487:                                    ; preds = %476
  br i1 %117, label %489, label %501, !dbg !2400

; <label>:488:                                    ; preds = %476
  br i1 %20, label %501, label %489, !dbg !2401

; <label>:489:                                    ; preds = %488, %487
  %490 = lshr i8 %483, 5, !dbg !2402
  %491 = zext i8 %490 to i64, !dbg !2402
  %492 = getelementptr inbounds i32, i32* %6, i64 %491, !dbg !2404
  %493 = load i32, i32* %492, align 4, !dbg !2404, !tbaa !787
  %494 = and i8 %483, 31, !dbg !2405
  %495 = zext i8 %494 to i32, !dbg !2406
  %496 = shl i32 1, %495, !dbg !2407
  %497 = and i32 %493, %496, !dbg !2407
  %498 = icmp eq i32 %497, 0, !dbg !2407
  %499 = icmp eq i8 %157, 0, !dbg !2408
  %500 = and i1 %499, %498, !dbg !2409
  br i1 %500, label %542, label %503, !dbg !2409

; <label>:501:                                    ; preds = %488, %487
  %502 = icmp eq i8 %157, 0, !dbg !2408
  br i1 %502, label %542, label %503, !dbg !2410

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
  call void @llvm.dbg.value(metadata i64 %512, i64 0, metadata !1781, metadata !672), !dbg !1844
  call void @llvm.dbg.value(metadata i8 %511, i64 0, metadata !1807, metadata !672), !dbg !1941
  call void @llvm.dbg.value(metadata i8 %510, i64 0, metadata !1800, metadata !672), !dbg !1958
  call void @llvm.dbg.value(metadata i8 %509, i64 0, metadata !1798, metadata !672), !dbg !1861
  call void @llvm.dbg.value(metadata i8 %508, i64 0, metadata !1797, metadata !672), !dbg !1860
  call void @llvm.dbg.value(metadata i64 %507, i64 0, metadata !1783, metadata !672), !dbg !1846
  call void @llvm.dbg.value(metadata i64 %506, i64 0, metadata !1791, metadata !672), !dbg !1853
  call void @llvm.dbg.value(metadata i64 %505, i64 0, metadata !1790, metadata !672), !dbg !1852
  call void @llvm.dbg.value(metadata i64 %504, i64 0, metadata !1789, metadata !672), !dbg !1927
  br i1 %112, label %513, label %644, !dbg !2412

; <label>:513:                                    ; preds = %503
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1806, metadata !672), !dbg !1940
  %514 = and i8 %508, 1, !dbg !2415
  %515 = icmp eq i8 %514, 0, !dbg !2415
  %516 = and i1 %114, %515, !dbg !2418
  br i1 %516, label %517, label %533, !dbg !2418

; <label>:517:                                    ; preds = %513
  %518 = icmp ult i64 %505, %512, !dbg !2420
  br i1 %518, label %519, label %521, !dbg !2425

; <label>:519:                                    ; preds = %517
  %520 = getelementptr inbounds i8, i8* %0, i64 %505, !dbg !2427
  store i8 39, i8* %520, align 1, !dbg !2427, !tbaa !1132
  br label %521, !dbg !2427

; <label>:521:                                    ; preds = %519, %517
  %522 = add i64 %505, 1, !dbg !2429
  call void @llvm.dbg.value(metadata i64 %522, i64 0, metadata !1790, metadata !672), !dbg !1852
  %523 = icmp ult i64 %522, %512, !dbg !2431
  br i1 %523, label %524, label %526, !dbg !2435

; <label>:524:                                    ; preds = %521
  %525 = getelementptr inbounds i8, i8* %0, i64 %522, !dbg !2437
  store i8 36, i8* %525, align 1, !dbg !2437, !tbaa !1132
  br label %526, !dbg !2437

; <label>:526:                                    ; preds = %524, %521
  %527 = add i64 %505, 2, !dbg !2439
  call void @llvm.dbg.value(metadata i64 %527, i64 0, metadata !1790, metadata !672), !dbg !1852
  %528 = icmp ult i64 %527, %512, !dbg !2441
  br i1 %528, label %529, label %531, !dbg !2445

; <label>:529:                                    ; preds = %526
  %530 = getelementptr inbounds i8, i8* %0, i64 %527, !dbg !2447
  store i8 39, i8* %530, align 1, !dbg !2447, !tbaa !1132
  br label %531, !dbg !2447

; <label>:531:                                    ; preds = %529, %526
  %532 = add i64 %505, 3, !dbg !2449
  call void @llvm.dbg.value(metadata i64 %532, i64 0, metadata !1790, metadata !672), !dbg !1852
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1797, metadata !672), !dbg !1860
  br label %533, !dbg !2451

; <label>:533:                                    ; preds = %513, %531
  %534 = phi i64 [ %532, %531 ], [ %505, %513 ]
  %535 = phi i8 [ 1, %531 ], [ %508, %513 ]
  call void @llvm.dbg.value(metadata i8 %535, i64 0, metadata !1797, metadata !672), !dbg !1860
  call void @llvm.dbg.value(metadata i64 %534, i64 0, metadata !1790, metadata !672), !dbg !1852
  %536 = icmp ult i64 %534, %512, !dbg !2453
  br i1 %536, label %537, label %539, !dbg !2457

; <label>:537:                                    ; preds = %533
  %538 = getelementptr inbounds i8, i8* %0, i64 %534, !dbg !2459
  store i8 92, i8* %538, align 1, !dbg !2459, !tbaa !1132
  br label %539, !dbg !2459

; <label>:539:                                    ; preds = %533, %537
  %540 = add i64 %534, 1, !dbg !2461
  call void @llvm.dbg.value(metadata i64 %540, i64 0, metadata !1790, metadata !672), !dbg !1852
  call void @llvm.dbg.value(metadata i64 %552, i64 0, metadata !1781, metadata !672), !dbg !1844
  call void @llvm.dbg.value(metadata i8 %551, i64 0, metadata !1807, metadata !672), !dbg !1941
  call void @llvm.dbg.value(metadata i8 %550, i64 0, metadata !1806, metadata !672), !dbg !1940
  call void @llvm.dbg.value(metadata i8 %549, i64 0, metadata !1800, metadata !672), !dbg !1958
  call void @llvm.dbg.value(metadata i8 %548, i64 0, metadata !1798, metadata !672), !dbg !1861
  call void @llvm.dbg.value(metadata i8 %547, i64 0, metadata !1797, metadata !672), !dbg !1860
  call void @llvm.dbg.value(metadata i64 %546, i64 0, metadata !1783, metadata !672), !dbg !1846
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !1791, metadata !672), !dbg !1853
  call void @llvm.dbg.value(metadata i64 %544, i64 0, metadata !1790, metadata !672), !dbg !1852
  call void @llvm.dbg.value(metadata i64 %543, i64 0, metadata !1789, metadata !672), !dbg !1927
  br label %569, !dbg !2463

; <label>:541:                                    ; preds = %441
  br label %542, !dbg !1844

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
  call void @llvm.dbg.value(metadata i64 %552, i64 0, metadata !1781, metadata !672), !dbg !1844
  call void @llvm.dbg.value(metadata i8 %551, i64 0, metadata !1807, metadata !672), !dbg !1941
  call void @llvm.dbg.value(metadata i8 %550, i64 0, metadata !1806, metadata !672), !dbg !1940
  call void @llvm.dbg.value(metadata i8 %549, i64 0, metadata !1800, metadata !672), !dbg !1958
  call void @llvm.dbg.value(metadata i8 %548, i64 0, metadata !1798, metadata !672), !dbg !1861
  call void @llvm.dbg.value(metadata i8 %547, i64 0, metadata !1797, metadata !672), !dbg !1860
  call void @llvm.dbg.value(metadata i64 %546, i64 0, metadata !1783, metadata !672), !dbg !1846
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !1791, metadata !672), !dbg !1853
  call void @llvm.dbg.value(metadata i64 %544, i64 0, metadata !1790, metadata !672), !dbg !1852
  call void @llvm.dbg.value(metadata i64 %543, i64 0, metadata !1789, metadata !672), !dbg !1927
  %553 = and i8 %547, 1, !dbg !2463
  %554 = icmp ne i8 %553, 0, !dbg !2463
  %555 = and i8 %550, 1, !dbg !2467
  %556 = icmp eq i8 %555, 0, !dbg !2467
  %557 = and i1 %554, %556, !dbg !2463
  br i1 %557, label %558, label %569, !dbg !2463

; <label>:558:                                    ; preds = %542
  %559 = icmp ult i64 %544, %552, !dbg !2469
  br i1 %559, label %560, label %562, !dbg !2474

; <label>:560:                                    ; preds = %558
  %561 = getelementptr inbounds i8, i8* %0, i64 %544, !dbg !2476
  store i8 39, i8* %561, align 1, !dbg !2476, !tbaa !1132
  br label %562, !dbg !2476

; <label>:562:                                    ; preds = %560, %558
  %563 = add i64 %544, 1, !dbg !2478
  call void @llvm.dbg.value(metadata i64 %563, i64 0, metadata !1790, metadata !672), !dbg !1852
  %564 = icmp ult i64 %563, %552, !dbg !2480
  br i1 %564, label %565, label %567, !dbg !2484

; <label>:565:                                    ; preds = %562
  %566 = getelementptr inbounds i8, i8* %0, i64 %563, !dbg !2486
  store i8 39, i8* %566, align 1, !dbg !2486, !tbaa !1132
  br label %567, !dbg !2486

; <label>:567:                                    ; preds = %565, %562
  %568 = add i64 %544, 2, !dbg !2488
  call void @llvm.dbg.value(metadata i64 %568, i64 0, metadata !1790, metadata !672), !dbg !1852
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1797, metadata !672), !dbg !1860
  br label %569, !dbg !2490

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
  call void @llvm.dbg.value(metadata i8 %578, i64 0, metadata !1797, metadata !672), !dbg !1860
  call void @llvm.dbg.value(metadata i64 %577, i64 0, metadata !1790, metadata !672), !dbg !1852
  %579 = icmp ult i64 %577, %570, !dbg !2492
  br i1 %579, label %580, label %582, !dbg !2496

; <label>:580:                                    ; preds = %569
  %581 = getelementptr inbounds i8, i8* %0, i64 %577, !dbg !2498
  store i8 %572, i8* %581, align 1, !dbg !2498, !tbaa !1132
  br label %582, !dbg !2498

; <label>:582:                                    ; preds = %580, %569
  %583 = add i64 %577, 1, !dbg !2500
  call void @llvm.dbg.value(metadata i64 %583, i64 0, metadata !1790, metadata !672), !dbg !1852
  %584 = and i8 %571, 1, !dbg !2502
  %585 = icmp eq i8 %584, 0, !dbg !2502
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1799, metadata !672), !dbg !1862
  %586 = select i1 %585, i8 0, i8 %130, !dbg !2504
  call void @llvm.dbg.value(metadata i8 %586, i64 0, metadata !1799, metadata !672), !dbg !1862
  br label %587, !dbg !2505

; <label>:587:                                    ; preds = %582, %209
  %588 = phi i64 [ %124, %209 ], [ %576, %582 ]
  %589 = phi i64 [ %125, %209 ], [ %583, %582 ]
  %590 = phi i64 [ %126, %209 ], [ %575, %582 ]
  %591 = phi i64 [ %156, %209 ], [ %574, %582 ]
  %592 = phi i8 [ %128, %209 ], [ %578, %582 ]
  %593 = phi i8 [ %129, %209 ], [ %573, %582 ]
  %594 = phi i8 [ %130, %209 ], [ %586, %582 ]
  %595 = phi i64 [ %131, %209 ], [ %570, %582 ]
  %596 = add i64 %588, 1, !dbg !2506
  call void @llvm.dbg.value(metadata i64 %596, i64 0, metadata !1789, metadata !672), !dbg !1927
  br label %123, !dbg !2508, !llvm.loop !2509

; <label>:597:                                    ; preds = %133, %135
  %598 = phi i64 [ %124, %133 ], [ -1, %135 ]
  %599 = icmp eq i64 %125, 0, !dbg !2512
  %600 = and i1 %114, %599, !dbg !2514
  %601 = xor i1 %600, true, !dbg !2514
  %602 = or i1 %112, %601, !dbg !2514
  br i1 %602, label %603, label %648, !dbg !2514

; <label>:603:                                    ; preds = %597
  %604 = and i1 %114, %112, !dbg !2515
  %605 = xor i1 %604, true, !dbg !2515
  %606 = and i8 %129, 1, !dbg !2517
  %607 = icmp eq i8 %606, 0, !dbg !2517
  %608 = or i1 %607, %605, !dbg !2515
  br i1 %608, label %618, label %609, !dbg !2515

; <label>:609:                                    ; preds = %603
  %610 = and i8 %130, 1, !dbg !2519
  %611 = icmp eq i8 %610, 0, !dbg !2519
  br i1 %611, label %614, label %612, !dbg !2522

; <label>:612:                                    ; preds = %609
  %613 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %126, i8* %2, i64 %598, i32 5, i32 %5, i32* %6, i8* %97, i8* %98), !dbg !2523
  br label %659, !dbg !2524

; <label>:614:                                    ; preds = %609
  %615 = icmp eq i64 %131, 0, !dbg !2525
  %616 = icmp ne i64 %126, 0, !dbg !2527
  %617 = and i1 %616, %615, !dbg !2529
  br i1 %617, label %27, label %618, !dbg !2529

; <label>:618:                                    ; preds = %603, %614
  %619 = icmp ne i8* %100, null, !dbg !2530
  %620 = and i1 %619, %112, !dbg !2532
  br i1 %620, label %621, label %638, !dbg !2532

; <label>:621:                                    ; preds = %618
  call void @llvm.dbg.value(metadata i8* %100, i64 0, metadata !1792, metadata !672), !dbg !1854
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !1790, metadata !672), !dbg !1852
  %622 = load i8, i8* %100, align 1, !dbg !2533, !tbaa !1132
  %623 = icmp eq i8 %622, 0, !dbg !2537
  br i1 %623, label %638, label %624, !dbg !2537

; <label>:624:                                    ; preds = %621
  br label %625, !dbg !2539

; <label>:625:                                    ; preds = %624, %632
  %626 = phi i8 [ %635, %632 ], [ %622, %624 ]
  %627 = phi i8* [ %634, %632 ], [ %100, %624 ]
  %628 = phi i64 [ %633, %632 ], [ %125, %624 ]
  %629 = icmp ult i64 %628, %131, !dbg !2539
  br i1 %629, label %630, label %632, !dbg !2543

; <label>:630:                                    ; preds = %625
  %631 = getelementptr inbounds i8, i8* %0, i64 %628, !dbg !2545
  store i8 %626, i8* %631, align 1, !dbg !2545, !tbaa !1132
  br label %632, !dbg !2545

; <label>:632:                                    ; preds = %630, %625
  %633 = add i64 %628, 1, !dbg !2547
  call void @llvm.dbg.value(metadata i64 %633, i64 0, metadata !1790, metadata !672), !dbg !1852
  %634 = getelementptr inbounds i8, i8* %627, i64 1, !dbg !2549
  call void @llvm.dbg.value(metadata i8* %634, i64 0, metadata !1792, metadata !672), !dbg !1854
  call void @llvm.dbg.value(metadata i8* %634, i64 0, metadata !1792, metadata !672), !dbg !1854
  call void @llvm.dbg.value(metadata i64 %633, i64 0, metadata !1790, metadata !672), !dbg !1852
  %635 = load i8, i8* %634, align 1, !dbg !2533, !tbaa !1132
  %636 = icmp eq i8 %635, 0, !dbg !2537
  br i1 %636, label %637, label %625, !dbg !2537, !llvm.loop !2551

; <label>:637:                                    ; preds = %632
  br label %638, !dbg !1852

; <label>:638:                                    ; preds = %637, %621, %618
  %639 = phi i64 [ %125, %618 ], [ %125, %621 ], [ %633, %637 ]
  call void @llvm.dbg.value(metadata i64 %639, i64 0, metadata !1790, metadata !672), !dbg !1852
  %640 = icmp ult i64 %639, %131, !dbg !2554
  br i1 %640, label %641, label %659, !dbg !2556

; <label>:641:                                    ; preds = %638
  %642 = getelementptr inbounds i8, i8* %0, i64 %639, !dbg !2557
  store i8 0, i8* %642, align 1, !dbg !2558, !tbaa !1132
  br label %659, !dbg !2557

; <label>:643:                                    ; preds = %386
  br label %649, !dbg !1844

; <label>:644:                                    ; preds = %148, %161, %211, %225, %253, %255, %273, %276, %503
  %645 = phi i32 [ %96, %148 ], [ %96, %161 ], [ 2, %211 ], [ 5, %225 ], [ 2, %253 ], [ 2, %255 ], [ 2, %273 ], [ 2, %276 ], [ %96, %503 ]
  %646 = phi i64 [ %146, %148 ], [ %156, %161 ], [ %156, %211 ], [ %156, %225 ], [ %156, %253 ], [ %156, %255 ], [ %156, %273 ], [ %156, %276 ], [ %507, %503 ]
  %647 = phi i64 [ %131, %148 ], [ %131, %161 ], [ %131, %211 ], [ %131, %225 ], [ %131, %253 ], [ %131, %255 ], [ %131, %273 ], [ %131, %276 ], [ %512, %503 ]
  br label %649, !dbg !1844

; <label>:648:                                    ; preds = %597
  br label %649, !dbg !1844

; <label>:649:                                    ; preds = %648, %644, %643, %367
  %650 = phi i32 [ 2, %367 ], [ %96, %643 ], [ %645, %644 ], [ %96, %648 ]
  %651 = phi i64 [ %313, %367 ], [ %369, %643 ], [ %646, %644 ], [ %598, %648 ]
  %652 = phi i64 [ %131, %367 ], [ %131, %643 ], [ %647, %644 ], [ %131, %648 ]
  call void @llvm.dbg.value(metadata i64 %652, i64 0, metadata !1781, metadata !672), !dbg !1844
  call void @llvm.dbg.value(metadata i64 %651, i64 0, metadata !1783, metadata !672), !dbg !1846
  %653 = icmp ne i32 %650, 2, !dbg !2559
  %654 = icmp eq i8 %104, 0, !dbg !2561
  %655 = or i1 %653, %654, !dbg !2563
  call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !1784, metadata !672), !dbg !1847
  %656 = select i1 %655, i32 %650, i32 4, !dbg !2563
  call void @llvm.dbg.value(metadata i32 %656, i64 0, metadata !1784, metadata !672), !dbg !1847
  %657 = and i32 %5, -3, !dbg !2564
  %658 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %652, i8* %2, i64 %651, i32 %656, i32 %657, i32* null, i8* %97, i8* %98), !dbg !2565
  br label %659, !dbg !2566

; <label>:659:                                    ; preds = %638, %641, %649, %612
  %660 = phi i64 [ %658, %649 ], [ %613, %612 ], [ %639, %641 ], [ %639, %638 ]
  ret i64 %660, !dbg !2567
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8*, i32) unnamed_addr #6 !dbg !2568 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2572, metadata !672), !dbg !2576
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2573, metadata !672), !dbg !2577
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #12, !dbg !2578
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2574, metadata !672), !dbg !2579
  %4 = icmp eq i8* %3, %0, !dbg !2580
  br i1 %4, label %5, label %75, !dbg !2582

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @locale_charset() #12, !dbg !2583
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !2575, metadata !672), !dbg !2584
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2585, metadata !672), !dbg !2601
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2599, metadata !672), !dbg !2604
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2600, metadata !672), !dbg !2605
  %7 = load i8, i8* %6, align 1, !tbaa !1132
  %8 = sext i8 %7 to i32
  %9 = and i32 %8, -33, !dbg !2606
  switch i32 %9, label %72 [
    i32 85, label %10
    i32 71, label %38
  ], !dbg !2606

; <label>:10:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2609, metadata !672), !dbg !2623
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2621, metadata !672), !dbg !2627
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2622, metadata !672), !dbg !2628
  %11 = getelementptr inbounds i8, i8* %6, i64 1
  %12 = load i8, i8* %11, align 1, !tbaa !1132
  %13 = sext i8 %12 to i32
  %14 = and i32 %13, -33, !dbg !2629
  %15 = icmp eq i32 %14, 84, !dbg !2629
  br i1 %15, label %16, label %72, !dbg !2629

; <label>:16:                                     ; preds = %10
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2632, metadata !672), !dbg !2645
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2643, metadata !672), !dbg !2649
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2644, metadata !672), !dbg !2650
  %17 = getelementptr inbounds i8, i8* %6, i64 2
  %18 = load i8, i8* %17, align 1, !tbaa !1132
  %19 = sext i8 %18 to i32
  %20 = and i32 %19, -33, !dbg !2651
  %21 = icmp eq i32 %20, 70, !dbg !2651
  br i1 %21, label %22, label %72, !dbg !2651

; <label>:22:                                     ; preds = %16
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2654, metadata !672), !dbg !2666
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2664, metadata !672), !dbg !2670
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2665, metadata !672), !dbg !2671
  %23 = getelementptr inbounds i8, i8* %6, i64 3
  %24 = load i8, i8* %23, align 1, !tbaa !1132
  %25 = icmp eq i8 %24, 45, !dbg !2672
  br i1 %25, label %26, label %72, !dbg !2675

; <label>:26:                                     ; preds = %22
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2677, metadata !672), !dbg !2688
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2686, metadata !672), !dbg !2692
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2687, metadata !672), !dbg !2693
  %27 = getelementptr inbounds i8, i8* %6, i64 4
  %28 = load i8, i8* %27, align 1, !tbaa !1132
  %29 = icmp eq i8 %28, 56, !dbg !2694
  br i1 %29, label %30, label %72, !dbg !2697

; <label>:30:                                     ; preds = %26
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2699, metadata !672), !dbg !2709
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2707, metadata !672), !dbg !2713
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2708, metadata !672), !dbg !2714
  %31 = getelementptr inbounds i8, i8* %6, i64 5
  %32 = load i8, i8* %31, align 1, !tbaa !1132
  %33 = icmp eq i8 %32, 0, !dbg !2715
  br i1 %33, label %34, label %72, !dbg !2718

; <label>:34:                                     ; preds = %30
  %35 = load i8, i8* %0, align 1, !dbg !2720, !tbaa !1132
  %36 = icmp eq i8 %35, 96, !dbg !2721
  %37 = select i1 %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.74, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.75, i64 0, i64 0), !dbg !2720
  br label %75, !dbg !2722

; <label>:38:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2609, metadata !672), !dbg !2723
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2621, metadata !672), !dbg !2727
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2622, metadata !672), !dbg !2728
  %39 = getelementptr inbounds i8, i8* %6, i64 1
  %40 = load i8, i8* %39, align 1, !tbaa !1132
  %41 = sext i8 %40 to i32
  %42 = and i32 %41, -33, !dbg !2729
  %43 = icmp eq i32 %42, 66, !dbg !2729
  br i1 %43, label %44, label %72, !dbg !2729

; <label>:44:                                     ; preds = %38
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2632, metadata !672), !dbg !2730
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2643, metadata !672), !dbg !2732
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2644, metadata !672), !dbg !2733
  %45 = getelementptr inbounds i8, i8* %6, i64 2
  %46 = load i8, i8* %45, align 1, !tbaa !1132
  %47 = icmp eq i8 %46, 49, !dbg !2734
  br i1 %47, label %48, label %72, !dbg !2736

; <label>:48:                                     ; preds = %44
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2654, metadata !672), !dbg !2738
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2664, metadata !672), !dbg !2740
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2665, metadata !672), !dbg !2741
  %49 = getelementptr inbounds i8, i8* %6, i64 3
  %50 = load i8, i8* %49, align 1, !tbaa !1132
  %51 = icmp eq i8 %50, 56, !dbg !2742
  br i1 %51, label %52, label %72, !dbg !2743

; <label>:52:                                     ; preds = %48
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2677, metadata !672), !dbg !2744
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2686, metadata !672), !dbg !2746
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2687, metadata !672), !dbg !2747
  %53 = getelementptr inbounds i8, i8* %6, i64 4
  %54 = load i8, i8* %53, align 1, !tbaa !1132
  %55 = icmp eq i8 %54, 48, !dbg !2748
  br i1 %55, label %56, label %72, !dbg !2749

; <label>:56:                                     ; preds = %52
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2699, metadata !672), !dbg !2750
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2707, metadata !672), !dbg !2752
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2708, metadata !672), !dbg !2753
  %57 = getelementptr inbounds i8, i8* %6, i64 5
  %58 = load i8, i8* %57, align 1, !tbaa !1132
  %59 = icmp eq i8 %58, 51, !dbg !2754
  br i1 %59, label %60, label %72, !dbg !2755

; <label>:60:                                     ; preds = %56
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2756, metadata !672), !dbg !2765
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2763, metadata !672), !dbg !2769
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2764, metadata !672), !dbg !2770
  %61 = getelementptr inbounds i8, i8* %6, i64 6
  %62 = load i8, i8* %61, align 1, !tbaa !1132
  %63 = icmp eq i8 %62, 48, !dbg !2771
  br i1 %63, label %64, label %72, !dbg !2774

; <label>:64:                                     ; preds = %60
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2776, metadata !672), !dbg !2784
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2782, metadata !672), !dbg !2788
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2783, metadata !672), !dbg !2789
  %65 = getelementptr inbounds i8, i8* %6, i64 7
  %66 = load i8, i8* %65, align 1, !tbaa !1132
  %67 = icmp eq i8 %66, 0, !dbg !2790
  br i1 %67, label %68, label %72, !dbg !2793

; <label>:68:                                     ; preds = %64
  %69 = load i8, i8* %0, align 1, !dbg !2794, !tbaa !1132
  %70 = icmp eq i8 %69, 96, !dbg !2795
  %71 = select i1 %70, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.76, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.77, i64 0, i64 0), !dbg !2794
  br label %75, !dbg !2796

; <label>:72:                                     ; preds = %5, %30, %26, %22, %16, %10, %64, %60, %56, %52, %48, %44, %38
  %73 = icmp eq i32 %1, 9, !dbg !2797
  %74 = select i1 %73, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.73, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.72, i64 0, i64 0), !dbg !2798
  br label %75, !dbg !2799

; <label>:75:                                     ; preds = %2, %72, %68, %34
  %76 = phi i8* [ %37, %34 ], [ %71, %68 ], [ %74, %72 ], [ %3, %2 ]
  ret i8* %76, !dbg !2800
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #4

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: nounwind
declare i32 @iswprint(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @mbsinit(%struct.__mbstate_t*) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_alloc(i8*, i64, %struct.quoting_options*) local_unnamed_addr #6 !dbg !2801 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2805, metadata !672), !dbg !2808
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2806, metadata !672), !dbg !2809
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2807, metadata !672), !dbg !2810
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2811, metadata !672) #12, !dbg !2824
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2816, metadata !672) #12, !dbg !2826
  tail call void @llvm.dbg.value(metadata i64* null, i64 0, metadata !2817, metadata !672) #12, !dbg !2827
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2818, metadata !672) #12, !dbg !2828
  %4 = icmp ne %struct.quoting_options* %2, null, !dbg !2829
  %5 = select i1 %4, %struct.quoting_options* %2, %struct.quoting_options* @default_quoting_options, !dbg !2829
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2819, metadata !672) #12, !dbg !2830
  %6 = tail call i32* @__errno_location() #1, !dbg !2831
  %7 = load i32, i32* %6, align 4, !dbg !2831, !tbaa !787
  tail call void @llvm.dbg.value(metadata i32 %7, i64 0, metadata !2820, metadata !672) #12, !dbg !2832
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2833
  %9 = load i32, i32* %8, align 4, !dbg !2833, !tbaa !1712
  %10 = or i32 %9, 1, !dbg !2834
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !2821, metadata !672) #12, !dbg !2835
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2836
  %12 = load i32, i32* %11, align 8, !dbg !2836, !tbaa !1650
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !2837
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2838
  %15 = load i8*, i8** %14, align 8, !dbg !2838, !tbaa !1739
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2839
  %17 = load i8*, i8** %16, align 8, !dbg !2839, !tbaa !1742
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* %13, i8* %15, i8* %17) #12, !dbg !2840
  %19 = add i64 %18, 1, !dbg !2841
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !2822, metadata !672) #12, !dbg !2842
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !2843, metadata !672) #12, !dbg !2848
  %20 = tail call noalias i8* @xmalloc(i64 %19) #12, !dbg !2850
  tail call void @llvm.dbg.value(metadata i8* %20, i64 0, metadata !2823, metadata !672) #12, !dbg !2851
  %21 = load i32, i32* %11, align 8, !dbg !2852, !tbaa !1650
  %22 = load i8*, i8** %14, align 8, !dbg !2853, !tbaa !1739
  %23 = load i8*, i8** %16, align 8, !dbg !2854, !tbaa !1742
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* %13, i8* %22, i8* %23) #12, !dbg !2855
  store i32 %7, i32* %6, align 4, !dbg !2856, !tbaa !787
  ret i8* %20, !dbg !2857
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_alloc_mem(i8*, i64, i64*, %struct.quoting_options*) local_unnamed_addr #6 !dbg !2812 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2811, metadata !672), !dbg !2858
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2816, metadata !672), !dbg !2859
  tail call void @llvm.dbg.value(metadata i64* %2, i64 0, metadata !2817, metadata !672), !dbg !2860
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2818, metadata !672), !dbg !2861
  %5 = icmp ne %struct.quoting_options* %3, null, !dbg !2862
  %6 = select i1 %5, %struct.quoting_options* %3, %struct.quoting_options* @default_quoting_options, !dbg !2862
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2819, metadata !672), !dbg !2863
  %7 = tail call i32* @__errno_location() #1, !dbg !2864
  %8 = load i32, i32* %7, align 4, !dbg !2864, !tbaa !787
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !2820, metadata !672), !dbg !2865
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2866
  %10 = load i32, i32* %9, align 4, !dbg !2866, !tbaa !1712
  %11 = icmp ne i64* %2, null, !dbg !2867
  %12 = xor i1 %11, true, !dbg !2867
  %13 = zext i1 %12 to i32, !dbg !2867
  %14 = or i32 %10, %13, !dbg !2868
  tail call void @llvm.dbg.value(metadata i32 %14, i64 0, metadata !2821, metadata !672), !dbg !2869
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2870
  %16 = load i32, i32* %15, align 8, !dbg !2870, !tbaa !1650
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !2871
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2872
  %19 = load i8*, i8** %18, align 8, !dbg !2872, !tbaa !1739
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2873
  %21 = load i8*, i8** %20, align 8, !dbg !2873, !tbaa !1742
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* %17, i8* %19, i8* %21), !dbg !2874
  %23 = add i64 %22, 1, !dbg !2875
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !2822, metadata !672), !dbg !2876
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !2843, metadata !672) #12, !dbg !2877
  %24 = tail call noalias i8* @xmalloc(i64 %23) #12, !dbg !2879
  tail call void @llvm.dbg.value(metadata i8* %24, i64 0, metadata !2823, metadata !672), !dbg !2880
  %25 = load i32, i32* %15, align 8, !dbg !2881, !tbaa !1650
  %26 = load i8*, i8** %18, align 8, !dbg !2882, !tbaa !1739
  %27 = load i8*, i8** %20, align 8, !dbg !2883, !tbaa !1742
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* %17, i8* %26, i8* %27), !dbg !2884
  store i32 %8, i32* %7, align 4, !dbg !2885, !tbaa !787
  br i1 %11, label %29, label %30, !dbg !2886

; <label>:29:                                     ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !2887, !tbaa !2889
  br label %30, !dbg !2891

; <label>:30:                                     ; preds = %29, %4
  ret i8* %24, !dbg !2892
}

; Function Attrs: nounwind sspstrong uwtable
define void @quotearg_free() local_unnamed_addr #6 !dbg !2893 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2897, !tbaa !680
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %1, i64 0, metadata !2895, metadata !672), !dbg !2898
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2896, metadata !672), !dbg !2899
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2896, metadata !672), !dbg !2899
  %2 = load i32, i32* @nslots, align 4, !dbg !2900, !tbaa !787
  %3 = icmp sgt i32 %2, 1, !dbg !2904
  br i1 %3, label %4, label %14, !dbg !2905

; <label>:4:                                      ; preds = %0
  br label %5, !dbg !2907

; <label>:5:                                      ; preds = %4, %5
  %6 = phi i64 [ %9, %5 ], [ 1, %4 ]
  %7 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %6, i32 1, !dbg !2907
  %8 = load i8*, i8** %7, align 8, !dbg !2907, !tbaa !2908
  tail call void @free(i8* %8) #12, !dbg !2910
  %9 = add nuw i64 %6, 1, !dbg !2911
  %10 = load i32, i32* @nslots, align 4, !dbg !2900, !tbaa !787
  %11 = sext i32 %10 to i64, !dbg !2904
  %12 = icmp slt i64 %9, %11, !dbg !2904
  br i1 %12, label %5, label %13, !dbg !2905, !llvm.loop !2913

; <label>:13:                                     ; preds = %5
  br label %14, !dbg !2916

; <label>:14:                                     ; preds = %13, %0
  %15 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !2916
  %16 = load i8*, i8** %15, align 8, !dbg !2916, !tbaa !2908
  %17 = icmp eq i8* %16, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2918
  br i1 %17, label %19, label %18, !dbg !2919

; <label>:18:                                     ; preds = %14
  tail call void @free(i8* %16) #12, !dbg !2920
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !2922, !tbaa !2923
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !2924, !tbaa !2908
  br label %19, !dbg !2925

; <label>:19:                                     ; preds = %14, %18
  %20 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !2926
  br i1 %20, label %23, label %21, !dbg !2928

; <label>:21:                                     ; preds = %19
  %22 = bitcast %struct.slotvec* %1 to i8*, !dbg !2929
  tail call void @free(i8* %22) #12, !dbg !2931
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !2932, !tbaa !680
  br label %23, !dbg !2933

; <label>:23:                                     ; preds = %19, %21
  store i32 1, i32* @nslots, align 4, !dbg !2934, !tbaa !787
  ret void, !dbg !2935
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n(i32, i8*) local_unnamed_addr #6 !dbg !2936 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2940, metadata !672), !dbg !2942
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2941, metadata !672), !dbg !2943
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2944
  ret i8* %3, !dbg !2945
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32, i8*, i64, %struct.quoting_options*) unnamed_addr #6 !dbg !2946 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2950, metadata !672), !dbg !2964
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2951, metadata !672), !dbg !2965
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2952, metadata !672), !dbg !2966
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2953, metadata !672), !dbg !2967
  %5 = tail call i32* @__errno_location() #1, !dbg !2968
  %6 = load i32, i32* %5, align 4, !dbg !2968, !tbaa !787
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !2954, metadata !672), !dbg !2969
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2970, !tbaa !680
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %7, i64 0, metadata !2955, metadata !672), !dbg !2971
  %8 = icmp slt i32 %0, 0, !dbg !2972
  br i1 %8, label %9, label %10, !dbg !2974

; <label>:9:                                      ; preds = %4
  tail call void @abort() #15, !dbg !2975
  unreachable, !dbg !2975

; <label>:10:                                     ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !2976, !tbaa !787
  %12 = icmp sgt i32 %11, %0, !dbg !2977
  br i1 %12, label %34, label %13, !dbg !2978

; <label>:13:                                     ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !2979
  %15 = icmp ugt i32 %0, 2147483646, !dbg !2980
  br i1 %15, label %16, label %17, !dbg !2982

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !2983
  unreachable, !dbg !2983

; <label>:17:                                     ; preds = %13
  %18 = bitcast %struct.slotvec* %7 to i8*, !dbg !2984
  %19 = select i1 %14, i8* null, i8* %18, !dbg !2984
  %20 = add nsw i32 %0, 1, !dbg !2986
  %21 = sext i32 %20 to i64, !dbg !2987
  %22 = shl nsw i64 %21, 4, !dbg !2988
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #12, !dbg !2989
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !2989
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %24, i64 0, metadata !2955, metadata !672), !dbg !2971
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !2990, !tbaa !680
  br i1 %14, label %25, label %26, !dbg !2991

; <label>:25:                                     ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i32 8, i1 false), !dbg !2992, !tbaa.struct !2994
  br label %26, !dbg !2995

; <label>:26:                                     ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !2996, !tbaa !787
  %28 = sext i32 %27 to i64, !dbg !2997
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !2997
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !2998
  %31 = sub nsw i32 %20, %27, !dbg !2999
  %32 = sext i32 %31 to i64, !dbg !3000
  %33 = shl nsw i64 %32, 4, !dbg !3001
  tail call void @llvm.memset.p0i8.i64(i8* %30, i8 0, i64 %33, i32 8, i1 false), !dbg !2998
  store i32 %20, i32* @nslots, align 4, !dbg !3002, !tbaa !787
  br label %34, !dbg !3003

; <label>:34:                                     ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ]
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %35, i64 0, metadata !2955, metadata !672), !dbg !2971
  %36 = sext i32 %0 to i64, !dbg !3004
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !3005
  %38 = load i64, i64* %37, align 8, !dbg !3005, !tbaa !2923
  tail call void @llvm.dbg.value(metadata i64 %38, i64 0, metadata !2959, metadata !672), !dbg !3006
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !3007
  %40 = load i8*, i8** %39, align 8, !dbg !3007, !tbaa !2908
  tail call void @llvm.dbg.value(metadata i8* %40, i64 0, metadata !2961, metadata !672), !dbg !3008
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !3009
  %42 = load i32, i32* %41, align 4, !dbg !3009, !tbaa !1712
  %43 = or i32 %42, 1, !dbg !3010
  tail call void @llvm.dbg.value(metadata i32 %43, i64 0, metadata !2962, metadata !672), !dbg !3011
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !3012
  %45 = load i32, i32* %44, align 8, !dbg !3012, !tbaa !1650
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !3013
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !3014
  %48 = load i8*, i8** %47, align 8, !dbg !3014, !tbaa !1739
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !3015
  %50 = load i8*, i8** %49, align 8, !dbg !3015, !tbaa !1742
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* %46, i8* %48, i8* %50), !dbg !3016
  tail call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !2963, metadata !672), !dbg !3017
  %52 = icmp ugt i64 %38, %51, !dbg !3018
  br i1 %52, label %63, label %53, !dbg !3020

; <label>:53:                                     ; preds = %34
  %54 = add i64 %51, 1, !dbg !3021
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !2959, metadata !672), !dbg !3006
  store i64 %54, i64* %37, align 8, !dbg !3023, !tbaa !2923
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !3024
  br i1 %55, label %57, label %56, !dbg !3026

; <label>:56:                                     ; preds = %53
  tail call void @free(i8* %40) #12, !dbg !3027
  br label %57, !dbg !3027

; <label>:57:                                     ; preds = %53, %56
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !2843, metadata !672) #12, !dbg !3028
  %58 = tail call noalias i8* @xmalloc(i64 %54) #12, !dbg !3030
  tail call void @llvm.dbg.value(metadata i8* %58, i64 0, metadata !2961, metadata !672), !dbg !3008
  store i8* %58, i8** %39, align 8, !dbg !3031, !tbaa !2908
  %59 = load i32, i32* %44, align 8, !dbg !3032, !tbaa !1650
  %60 = load i8*, i8** %47, align 8, !dbg !3033, !tbaa !1739
  %61 = load i8*, i8** %49, align 8, !dbg !3034, !tbaa !1742
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* %46, i8* %60, i8* %61), !dbg !3035
  br label %63, !dbg !3036

; <label>:63:                                     ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ]
  tail call void @llvm.dbg.value(metadata i8* %64, i64 0, metadata !2961, metadata !672), !dbg !3008
  store i32 %6, i32* %5, align 4, !dbg !3037, !tbaa !787
  ret i8* %64, !dbg !3038
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #7

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !3039 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3043, metadata !672), !dbg !3046
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3044, metadata !672), !dbg !3047
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3045, metadata !672), !dbg !3048
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !3049
  ret i8* %4, !dbg !3050
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg(i8*) local_unnamed_addr #6 !dbg !3051 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3055, metadata !672), !dbg !3056
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2940, metadata !672) #12, !dbg !3057
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2941, metadata !672) #12, !dbg !3059
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #12, !dbg !3060
  ret i8* %2, !dbg !3061
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_mem(i8*, i64) local_unnamed_addr #6 !dbg !3062 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3066, metadata !672), !dbg !3068
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3067, metadata !672), !dbg !3069
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3043, metadata !672) #12, !dbg !3070
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3044, metadata !672) #12, !dbg !3072
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3045, metadata !672) #12, !dbg !3073
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #12, !dbg !3074
  ret i8* %3, !dbg !3075
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style(i32, i32, i8*) local_unnamed_addr #6 !dbg !3076 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !3084, metadata !3090), !dbg !3091
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3080, metadata !672), !dbg !3093
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3081, metadata !672), !dbg !3094
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3082, metadata !672), !dbg !3095
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3096
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #12, !dbg !3096
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3083, metadata !936), !dbg !3097
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3089, metadata !672) #12, !dbg !3098
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !3099
  call void @llvm.lifetime.start(i64 52, i8* nonnull %7), !dbg !3099
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !3084, metadata !672) #12, !dbg !3091
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3084, metadata !3100) #12, !dbg !3091
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !3091
  %8 = icmp eq i32 %1, 10, !dbg !3101
  br i1 %8, label %9, label %10, !dbg !3103

; <label>:9:                                      ; preds = %3
  tail call void @abort() #15, !dbg !3104, !noalias !3105
  unreachable, !dbg !3104

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3084, metadata !3100) #12, !dbg !3091
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3108
  store i32 %1, i32* %11, align 8, !dbg !3108, !alias.scope !3105
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !3108
  %13 = bitcast i32* %12 to i8*, !dbg !3108
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #12, !dbg !3108
  call void @llvm.lifetime.end(i64 52, i8* nonnull %7), !dbg !3109
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3083, metadata !936), !dbg !3097
  %14 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !3110
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #12, !dbg !3111
  ret i8* %14, !dbg !3112
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_mem(i32, i32, i8*, i64) local_unnamed_addr #6 !dbg !3113 {
  %5 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !3084, metadata !3090), !dbg !3122
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3117, metadata !672), !dbg !3124
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3118, metadata !672), !dbg !3125
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3119, metadata !672), !dbg !3126
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3120, metadata !672), !dbg !3127
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !3128
  call void @llvm.lifetime.start(i64 56, i8* nonnull %7) #12, !dbg !3128
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !3121, metadata !936), !dbg !3129
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3089, metadata !672) #12, !dbg !3130
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !3131
  call void @llvm.lifetime.start(i64 52, i8* nonnull %8), !dbg !3131
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !3084, metadata !672) #12, !dbg !3122
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3084, metadata !3100) #12, !dbg !3122
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !3122
  %9 = icmp eq i32 %1, 10, !dbg !3132
  br i1 %9, label %10, label %11, !dbg !3133

; <label>:10:                                     ; preds = %4
  tail call void @abort() #15, !dbg !3134, !noalias !3135
  unreachable, !dbg !3134

; <label>:11:                                     ; preds = %4
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3084, metadata !3100) #12, !dbg !3122
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3138
  store i32 %1, i32* %12, align 8, !dbg !3138, !alias.scope !3135
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !3138
  %14 = bitcast i32* %13 to i8*, !dbg !3138
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* nonnull %8, i64 52, i32 4, i1 false) #12, !dbg !3138
  call void @llvm.lifetime.end(i64 52, i8* nonnull %8), !dbg !3139
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !3121, metadata !936), !dbg !3129
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %6), !dbg !3140
  call void @llvm.lifetime.end(i64 56, i8* nonnull %7) #12, !dbg !3141
  ret i8* %15, !dbg !3142
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style(i32, i8*) local_unnamed_addr #6 !dbg !3143 {
  %3 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %3, metadata !3084, metadata !3090), !dbg !3149
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3147, metadata !672), !dbg !3152
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3148, metadata !672), !dbg !3153
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3080, metadata !672) #12, !dbg !3154
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3081, metadata !672) #12, !dbg !3155
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3082, metadata !672) #12, !dbg !3156
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3157
  call void @llvm.lifetime.start(i64 56, i8* nonnull %5) #12, !dbg !3157
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3083, metadata !936) #12, !dbg !3158
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3089, metadata !672) #12, !dbg !3159
  %6 = getelementptr inbounds [52 x i8], [52 x i8]* %3, i64 0, i64 0, !dbg !3160
  call void @llvm.lifetime.start(i64 52, i8* nonnull %6), !dbg !3160
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !3084, metadata !672) #12, !dbg !3149
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3084, metadata !3100) #12, !dbg !3149
  call void @llvm.memset.p0i8.i64(i8* nonnull %6, i8 0, i64 52, i32 4, i1 false), !dbg !3149
  %7 = icmp eq i32 %0, 10, !dbg !3161
  br i1 %7, label %8, label %9, !dbg !3162

; <label>:8:                                      ; preds = %2
  tail call void @abort() #15, !dbg !3163, !noalias !3164
  unreachable, !dbg !3163

; <label>:9:                                      ; preds = %2
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3084, metadata !3100) #12, !dbg !3149
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3167
  store i32 %0, i32* %10, align 8, !dbg !3167, !alias.scope !3164
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !3167
  %12 = bitcast i32* %11 to i8*, !dbg !3167
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* nonnull %6, i64 52, i32 4, i1 false) #12, !dbg !3167
  call void @llvm.lifetime.end(i64 52, i8* nonnull %6), !dbg !3168
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3083, metadata !936) #12, !dbg !3158
  %13 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %4) #12, !dbg !3169
  call void @llvm.lifetime.end(i64 56, i8* nonnull %5) #12, !dbg !3170
  ret i8* %13, !dbg !3171
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !3172 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !3084, metadata !3090), !dbg !3179
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3176, metadata !672), !dbg !3182
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3177, metadata !672), !dbg !3183
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3178, metadata !672), !dbg !3184
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3117, metadata !672) #12, !dbg !3185
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3118, metadata !672) #12, !dbg !3186
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3119, metadata !672) #12, !dbg !3187
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3120, metadata !672) #12, !dbg !3188
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3189
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #12, !dbg !3189
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3121, metadata !936) #12, !dbg !3190
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3089, metadata !672) #12, !dbg !3191
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !3192
  call void @llvm.lifetime.start(i64 52, i8* nonnull %7), !dbg !3192
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !3084, metadata !672) #12, !dbg !3179
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3084, metadata !3100) #12, !dbg !3179
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !3179
  %8 = icmp eq i32 %0, 10, !dbg !3193
  br i1 %8, label %9, label %10, !dbg !3194

; <label>:9:                                      ; preds = %3
  tail call void @abort() #15, !dbg !3195, !noalias !3196
  unreachable, !dbg !3195

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3084, metadata !3100) #12, !dbg !3179
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3199
  store i32 %0, i32* %11, align 8, !dbg !3199, !alias.scope !3196
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !3199
  %13 = bitcast i32* %12 to i8*, !dbg !3199
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #12, !dbg !3199
  call void @llvm.lifetime.end(i64 52, i8* nonnull %7), !dbg !3200
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3121, metadata !936) #12, !dbg !3190
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %5) #12, !dbg !3201
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #12, !dbg !3202
  ret i8* %14, !dbg !3203
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char_mem(i8*, i64, i8 signext) local_unnamed_addr #6 !dbg !3204 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3208, metadata !672), !dbg !3212
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3209, metadata !672), !dbg !3213
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !3210, metadata !672), !dbg !3214
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3215
  call void @llvm.lifetime.start(i64 56, i8* nonnull %5) #12, !dbg !3215
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !3216, !tbaa.struct !3217
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3211, metadata !936), !dbg !3218
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1670, metadata !672), !dbg !3219
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !1671, metadata !672), !dbg !3221
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1672, metadata !672), !dbg !3222
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !1673, metadata !672), !dbg !3223
  %6 = lshr i8 %2, 5, !dbg !3224
  %7 = zext i8 %6 to i64, !dbg !3224
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !3225
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !1674, metadata !672), !dbg !3226
  %9 = and i8 %2, 31, !dbg !3227
  %10 = zext i8 %9 to i32, !dbg !3228
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !1676, metadata !672), !dbg !3229
  %11 = load i32, i32* %8, align 4, !dbg !3230, !tbaa !787
  %12 = lshr i32 %11, %10, !dbg !3231
  %13 = and i32 %12, 1, !dbg !3232
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !1677, metadata !672), !dbg !3233
  %14 = xor i32 %13, 1, !dbg !3234
  %15 = shl i32 %14, %10, !dbg !3235
  %16 = xor i32 %15, %11, !dbg !3236
  store i32 %16, i32* %8, align 4, !dbg !3236, !tbaa !787
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3211, metadata !936), !dbg !3218
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !3237
  call void @llvm.lifetime.end(i64 56, i8* nonnull %5) #12, !dbg !3238
  ret i8* %17, !dbg !3239
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char(i8*, i8 signext) local_unnamed_addr #6 !dbg !3240 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3244, metadata !672), !dbg !3246
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !3245, metadata !672), !dbg !3247
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3208, metadata !672) #12, !dbg !3248
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3209, metadata !672) #12, !dbg !3250
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !3210, metadata !672) #12, !dbg !3251
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3252
  call void @llvm.lifetime.start(i64 56, i8* nonnull %4) #12, !dbg !3252
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #12, !dbg !3253, !tbaa.struct !3217
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !3211, metadata !936) #12, !dbg !3254
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !1670, metadata !672) #12, !dbg !3255
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1671, metadata !672) #12, !dbg !3257
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1672, metadata !672) #12, !dbg !3258
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1673, metadata !672) #12, !dbg !3259
  %5 = lshr i8 %1, 5, !dbg !3260
  %6 = zext i8 %5 to i64, !dbg !3260
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !3261
  tail call void @llvm.dbg.value(metadata i32* %7, i64 0, metadata !1674, metadata !672) #12, !dbg !3262
  %8 = and i8 %1, 31, !dbg !3263
  %9 = zext i8 %8 to i32, !dbg !3264
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !1676, metadata !672) #12, !dbg !3265
  %10 = load i32, i32* %7, align 4, !dbg !3266, !tbaa !787
  %11 = lshr i32 %10, %9, !dbg !3267
  %12 = and i32 %11, 1, !dbg !3268
  tail call void @llvm.dbg.value(metadata i32 %12, i64 0, metadata !1677, metadata !672) #12, !dbg !3269
  %13 = xor i32 %12, 1, !dbg !3270
  %14 = shl i32 %13, %9, !dbg !3271
  %15 = xor i32 %14, %10, !dbg !3272
  store i32 %15, i32* %7, align 4, !dbg !3272, !tbaa !787
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !3211, metadata !936) #12, !dbg !3254
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #12, !dbg !3273
  call void @llvm.lifetime.end(i64 56, i8* nonnull %4) #12, !dbg !3274
  ret i8* %16, !dbg !3275
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon(i8*) local_unnamed_addr #6 !dbg !3276 {
  %2 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3278, metadata !672), !dbg !3279
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3244, metadata !672) #12, !dbg !3280
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !3245, metadata !672) #12, !dbg !3282
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3208, metadata !672) #12, !dbg !3283
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3209, metadata !672) #12, !dbg !3285
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !3210, metadata !672) #12, !dbg !3286
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !3287
  call void @llvm.lifetime.start(i64 56, i8* nonnull %3) #12, !dbg !3287
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %3, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #12, !dbg !3288, !tbaa.struct !3217
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !3211, metadata !936) #12, !dbg !3289
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !1670, metadata !672) #12, !dbg !3290
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1671, metadata !672) #12, !dbg !3292
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1672, metadata !672) #12, !dbg !3293
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1673, metadata !672) #12, !dbg !3294
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !3295
  tail call void @llvm.dbg.value(metadata i32* %4, i64 0, metadata !1674, metadata !672) #12, !dbg !3296
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !1676, metadata !672) #12, !dbg !3297
  %5 = load i32, i32* %4, align 4, !dbg !3298, !tbaa !787
  %6 = or i32 %5, 67108864, !dbg !3299
  store i32 %6, i32* %4, align 4, !dbg !3299, !tbaa !787
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !3211, metadata !936) #12, !dbg !3289
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #12, !dbg !3300
  call void @llvm.lifetime.end(i64 56, i8* nonnull %3) #12, !dbg !3301
  ret i8* %7, !dbg !3302
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon_mem(i8*, i64) local_unnamed_addr #6 !dbg !3303 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3305, metadata !672), !dbg !3307
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3306, metadata !672), !dbg !3308
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3208, metadata !672) #12, !dbg !3309
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3209, metadata !672) #12, !dbg !3311
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !3210, metadata !672) #12, !dbg !3312
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3313
  call void @llvm.lifetime.start(i64 56, i8* nonnull %4) #12, !dbg !3313
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #12, !dbg !3314, !tbaa.struct !3217
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !3211, metadata !936) #12, !dbg !3315
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !1670, metadata !672) #12, !dbg !3316
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1671, metadata !672) #12, !dbg !3318
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1672, metadata !672) #12, !dbg !3319
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1673, metadata !672) #12, !dbg !3320
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !3321
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !1674, metadata !672) #12, !dbg !3322
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !1676, metadata !672) #12, !dbg !3323
  %6 = load i32, i32* %5, align 4, !dbg !3324, !tbaa !787
  %7 = or i32 %6, 67108864, !dbg !3325
  store i32 %7, i32* %5, align 4, !dbg !3325, !tbaa !787
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !3211, metadata !936) #12, !dbg !3315
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #12, !dbg !3326
  call void @llvm.lifetime.end(i64 56, i8* nonnull %4) #12, !dbg !3327
  ret i8* %8, !dbg !3328
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_colon(i32, i32, i8*) local_unnamed_addr #6 !dbg !3329 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !3084, metadata !3090), !dbg !3335
  %5 = alloca %struct.quoting_options, align 8
  %6 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3331, metadata !672), !dbg !3337
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3332, metadata !672), !dbg !3338
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3333, metadata !672), !dbg !3339
  %7 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3340
  call void @llvm.lifetime.start(i64 56, i8* nonnull %7) #12, !dbg !3340
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3089, metadata !672) #12, !dbg !3341
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !3342
  call void @llvm.lifetime.start(i64 52, i8* nonnull %8), !dbg !3342
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !3084, metadata !672) #12, !dbg !3335
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3084, metadata !3100) #12, !dbg !3335
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !3335
  %9 = icmp eq i32 %1, 10, !dbg !3343
  br i1 %9, label %10, label %11, !dbg !3344

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !3345, !noalias !3346
  unreachable, !dbg !3345

; <label>:11:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3084, metadata !3100) #12, !dbg !3335
  %12 = getelementptr inbounds [52 x i8], [52 x i8]* %6, i64 0, i64 0, !dbg !3349
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %12, i8* nonnull %8, i64 52, i32 4, i1 false), !dbg !3349
  call void @llvm.lifetime.end(i64 52, i8* nonnull %8), !dbg !3350
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3351
  store i32 %1, i32* %13, align 8, !dbg !3351
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !3351
  %15 = bitcast i32* %14 to i8*, !dbg !3351
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* nonnull %12, i64 52, i32 4, i1 false), !dbg !3351
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3334, metadata !936), !dbg !3352
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1670, metadata !672), !dbg !3353
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1671, metadata !672), !dbg !3355
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1672, metadata !672), !dbg !3356
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1673, metadata !672), !dbg !3357
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 1, !dbg !3358
  tail call void @llvm.dbg.value(metadata i32* %16, i64 0, metadata !1674, metadata !672), !dbg !3359
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !1676, metadata !672), !dbg !3360
  %17 = load i32, i32* %16, align 4, !dbg !3361, !tbaa !787
  %18 = or i32 %17, 67108864, !dbg !3362
  store i32 %18, i32* %16, align 4, !dbg !3362, !tbaa !787
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3334, metadata !936), !dbg !3352
  %19 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !3363
  call void @llvm.lifetime.end(i64 56, i8* nonnull %7) #12, !dbg !3364
  ret i8* %19, !dbg !3365
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom(i32, i8*, i8*, i8*) local_unnamed_addr #6 !dbg !3366 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3370, metadata !672), !dbg !3374
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3371, metadata !672), !dbg !3375
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3372, metadata !672), !dbg !3376
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3373, metadata !672), !dbg !3377
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3378, metadata !672) #12, !dbg !3388
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3383, metadata !672) #12, !dbg !3390
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3384, metadata !672) #12, !dbg !3391
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3385, metadata !672) #12, !dbg !3392
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3386, metadata !672) #12, !dbg !3393
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3394
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #12, !dbg !3394
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #12, !dbg !3395, !tbaa.struct !3217
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3387, metadata !936) #12, !dbg !3396
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1720, metadata !672) #12, !dbg !3397
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1721, metadata !672) #12, !dbg !3399
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1722, metadata !672) #12, !dbg !3400
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1720, metadata !672) #12, !dbg !3397
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1720, metadata !672) #12, !dbg !3397
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3401
  store i32 10, i32* %7, align 8, !dbg !3402, !tbaa !1650
  %8 = icmp ne i8* %1, null, !dbg !3403
  %9 = icmp ne i8* %2, null, !dbg !3404
  %10 = and i1 %8, %9, !dbg !3405
  br i1 %10, label %12, label %11, !dbg !3405

; <label>:11:                                     ; preds = %4
  tail call void @abort() #15, !dbg !3406
  unreachable, !dbg !3406

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3407
  store i8* %1, i8** %13, align 8, !dbg !3408, !tbaa !1739
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3409
  store i8* %2, i8** %14, align 8, !dbg !3410, !tbaa !1742
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3387, metadata !936) #12, !dbg !3396
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #12, !dbg !3411
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #12, !dbg !3412
  ret i8* %15, !dbg !3413
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom_mem(i32, i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !3379 {
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3378, metadata !672), !dbg !3414
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3383, metadata !672), !dbg !3415
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3384, metadata !672), !dbg !3416
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3385, metadata !672), !dbg !3417
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !3386, metadata !672), !dbg !3418
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !3419
  call void @llvm.lifetime.start(i64 56, i8* nonnull %7) #12, !dbg !3419
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %7, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !3420, !tbaa.struct !3217
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !3387, metadata !936), !dbg !3421
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !1720, metadata !672) #12, !dbg !3422
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1721, metadata !672) #12, !dbg !3424
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1722, metadata !672) #12, !dbg !3425
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1720, metadata !672) #12, !dbg !3422
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !1720, metadata !672) #12, !dbg !3422
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3426
  store i32 10, i32* %8, align 8, !dbg !3427, !tbaa !1650
  %9 = icmp ne i8* %1, null, !dbg !3428
  %10 = icmp ne i8* %2, null, !dbg !3429
  %11 = and i1 %9, %10, !dbg !3430
  br i1 %11, label %13, label %12, !dbg !3430

; <label>:12:                                     ; preds = %5
  tail call void @abort() #15, !dbg !3431
  unreachable, !dbg !3431

; <label>:13:                                     ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3432
  store i8* %1, i8** %14, align 8, !dbg !3433, !tbaa !1739
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3434
  store i8* %2, i8** %15, align 8, !dbg !3435, !tbaa !1742
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !3387, metadata !936), !dbg !3421
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !3436
  call void @llvm.lifetime.end(i64 56, i8* nonnull %7) #12, !dbg !3437
  ret i8* %16, !dbg !3438
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom(i8*, i8*, i8*) local_unnamed_addr #6 !dbg !3439 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3443, metadata !672), !dbg !3446
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3444, metadata !672), !dbg !3447
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3445, metadata !672), !dbg !3448
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3370, metadata !672) #12, !dbg !3449
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3371, metadata !672) #12, !dbg !3451
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3372, metadata !672) #12, !dbg !3452
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3373, metadata !672) #12, !dbg !3453
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3378, metadata !672) #12, !dbg !3454
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3383, metadata !672) #12, !dbg !3456
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3384, metadata !672) #12, !dbg !3457
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3385, metadata !672) #12, !dbg !3458
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3386, metadata !672) #12, !dbg !3459
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3460
  call void @llvm.lifetime.start(i64 56, i8* nonnull %5) #12, !dbg !3460
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #12, !dbg !3461, !tbaa.struct !3217
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3387, metadata !936) #12, !dbg !3462
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1720, metadata !672) #12, !dbg !3463
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1721, metadata !672) #12, !dbg !3465
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1722, metadata !672) #12, !dbg !3466
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1720, metadata !672) #12, !dbg !3463
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1720, metadata !672) #12, !dbg !3463
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3467
  store i32 10, i32* %6, align 8, !dbg !3468, !tbaa !1650
  %7 = icmp ne i8* %0, null, !dbg !3469
  %8 = icmp ne i8* %1, null, !dbg !3470
  %9 = and i1 %7, %8, !dbg !3471
  br i1 %9, label %11, label %10, !dbg !3471

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !3472
  unreachable, !dbg !3472

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !3473
  store i8* %0, i8** %12, align 8, !dbg !3474, !tbaa !1739
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !3475
  store i8* %1, i8** %13, align 8, !dbg !3476, !tbaa !1742
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3387, metadata !936) #12, !dbg !3462
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #12, !dbg !3477
  call void @llvm.lifetime.end(i64 56, i8* nonnull %5) #12, !dbg !3478
  ret i8* %14, !dbg !3479
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom_mem(i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !3480 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3484, metadata !672), !dbg !3488
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3485, metadata !672), !dbg !3489
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3486, metadata !672), !dbg !3490
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3487, metadata !672), !dbg !3491
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3378, metadata !672) #12, !dbg !3492
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3383, metadata !672) #12, !dbg !3494
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3384, metadata !672) #12, !dbg !3495
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3385, metadata !672) #12, !dbg !3496
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3386, metadata !672) #12, !dbg !3497
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3498
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #12, !dbg !3498
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #12, !dbg !3499, !tbaa.struct !3217
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3387, metadata !936) #12, !dbg !3500
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1720, metadata !672) #12, !dbg !3501
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1721, metadata !672) #12, !dbg !3503
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1722, metadata !672) #12, !dbg !3504
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1720, metadata !672) #12, !dbg !3501
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1720, metadata !672) #12, !dbg !3501
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3505
  store i32 10, i32* %7, align 8, !dbg !3506, !tbaa !1650
  %8 = icmp ne i8* %0, null, !dbg !3507
  %9 = icmp ne i8* %1, null, !dbg !3508
  %10 = and i1 %8, %9, !dbg !3509
  br i1 %10, label %12, label %11, !dbg !3509

; <label>:11:                                     ; preds = %4
  tail call void @abort() #15, !dbg !3510
  unreachable, !dbg !3510

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3511
  store i8* %0, i8** %13, align 8, !dbg !3512, !tbaa !1739
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3513
  store i8* %1, i8** %14, align 8, !dbg !3514, !tbaa !1742
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3387, metadata !936) #12, !dbg !3500
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #12, !dbg !3515
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #12, !dbg !3516
  ret i8* %15, !dbg !3517
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !3518 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3522, metadata !672), !dbg !3525
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3523, metadata !672), !dbg !3526
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3524, metadata !672), !dbg !3527
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !3528
  ret i8* %4, !dbg !3529
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_mem(i8*, i64) local_unnamed_addr #6 !dbg !3530 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3534, metadata !672), !dbg !3536
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3535, metadata !672), !dbg !3537
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3522, metadata !672) #12, !dbg !3538
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3523, metadata !672) #12, !dbg !3540
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3524, metadata !672) #12, !dbg !3541
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #12, !dbg !3542
  ret i8* %3, !dbg !3543
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n(i32, i8*) local_unnamed_addr #6 !dbg !3544 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3548, metadata !672), !dbg !3550
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3549, metadata !672), !dbg !3551
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3522, metadata !672) #12, !dbg !3552
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3523, metadata !672) #12, !dbg !3554
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3524, metadata !672) #12, !dbg !3555
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #12, !dbg !3556
  ret i8* %3, !dbg !3557
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote(i8*) local_unnamed_addr #6 !dbg !3558 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3562, metadata !672), !dbg !3563
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3548, metadata !672) #12, !dbg !3564
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3549, metadata !672) #12, !dbg !3566
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3522, metadata !672) #12, !dbg !3567
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3523, metadata !672) #12, !dbg !3569
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3524, metadata !672) #12, !dbg !3570
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #12, !dbg !3571
  ret i8* %2, !dbg !3572
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_arn(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly, i64) local_unnamed_addr #6 !dbg !3573 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3630, metadata !672), !dbg !3636
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3631, metadata !672), !dbg !3637
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3632, metadata !672), !dbg !3638
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3633, metadata !672), !dbg !3639
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !3634, metadata !672), !dbg !3640
  tail call void @llvm.dbg.value(metadata i64 %5, i64 0, metadata !3635, metadata !672), !dbg !3641
  %7 = icmp eq i8* %1, null, !dbg !3642
  br i1 %7, label %10, label %8, !dbg !3644

; <label>:8:                                      ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.82, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #12, !dbg !3645
  br label %12, !dbg !3645

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.83, i64 0, i64 0), i8* %2, i8* %3) #12, !dbg !3646
  br label %12

; <label>:12:                                     ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.84, i64 0, i64 0), i32 5) #12, !dbg !3647
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2017) #12, !dbg !3648
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([203 x i8], [203 x i8]* @.str.3.85, i64 0, i64 0), i32 5) #12, !dbg !3650
  %16 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %0) #12, !dbg !3651
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
  ], !dbg !3652

; <label>:17:                                     ; preds = %12
  tail call void @abort() #15, !dbg !3653
  unreachable, !dbg !3653

; <label>:18:                                     ; preds = %12
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4.86, i64 0, i64 0), i32 5) #12, !dbg !3655
  %20 = load i8*, i8** %4, align 8, !dbg !3655, !tbaa !680
  %21 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %19, i8* %20) #12, !dbg !3656
  br label %146, !dbg !3658

; <label>:22:                                     ; preds = %12
  %23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5.87, i64 0, i64 0), i32 5) #12, !dbg !3659
  %24 = load i8*, i8** %4, align 8, !dbg !3659, !tbaa !680
  %25 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3659
  %26 = load i8*, i8** %25, align 8, !dbg !3659, !tbaa !680
  %27 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %23, i8* %24, i8* %26) #12, !dbg !3660
  br label %146, !dbg !3661

; <label>:28:                                     ; preds = %12
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6.88, i64 0, i64 0), i32 5) #12, !dbg !3662
  %30 = load i8*, i8** %4, align 8, !dbg !3662, !tbaa !680
  %31 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3662
  %32 = load i8*, i8** %31, align 8, !dbg !3662, !tbaa !680
  %33 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3662
  %34 = load i8*, i8** %33, align 8, !dbg !3662, !tbaa !680
  %35 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %29, i8* %30, i8* %32, i8* %34) #12, !dbg !3663
  br label %146, !dbg !3664

; <label>:36:                                     ; preds = %12
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7.89, i64 0, i64 0), i32 5) #12, !dbg !3665
  %38 = load i8*, i8** %4, align 8, !dbg !3665, !tbaa !680
  %39 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3665
  %40 = load i8*, i8** %39, align 8, !dbg !3665, !tbaa !680
  %41 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3665
  %42 = load i8*, i8** %41, align 8, !dbg !3665, !tbaa !680
  %43 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3665
  %44 = load i8*, i8** %43, align 8, !dbg !3665, !tbaa !680
  %45 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %37, i8* %38, i8* %40, i8* %42, i8* %44) #12, !dbg !3666
  br label %146, !dbg !3667

; <label>:46:                                     ; preds = %12
  %47 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8.90, i64 0, i64 0), i32 5) #12, !dbg !3668
  %48 = load i8*, i8** %4, align 8, !dbg !3668, !tbaa !680
  %49 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3668
  %50 = load i8*, i8** %49, align 8, !dbg !3668, !tbaa !680
  %51 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3668
  %52 = load i8*, i8** %51, align 8, !dbg !3668, !tbaa !680
  %53 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3668
  %54 = load i8*, i8** %53, align 8, !dbg !3668, !tbaa !680
  %55 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3668
  %56 = load i8*, i8** %55, align 8, !dbg !3668, !tbaa !680
  %57 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %47, i8* %48, i8* %50, i8* %52, i8* %54, i8* %56) #12, !dbg !3669
  br label %146, !dbg !3670

; <label>:58:                                     ; preds = %12
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9.91, i64 0, i64 0), i32 5) #12, !dbg !3671
  %60 = load i8*, i8** %4, align 8, !dbg !3671, !tbaa !680
  %61 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3671
  %62 = load i8*, i8** %61, align 8, !dbg !3671, !tbaa !680
  %63 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3671
  %64 = load i8*, i8** %63, align 8, !dbg !3671, !tbaa !680
  %65 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3671
  %66 = load i8*, i8** %65, align 8, !dbg !3671, !tbaa !680
  %67 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3671
  %68 = load i8*, i8** %67, align 8, !dbg !3671, !tbaa !680
  %69 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3671
  %70 = load i8*, i8** %69, align 8, !dbg !3671, !tbaa !680
  %71 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %59, i8* %60, i8* %62, i8* %64, i8* %66, i8* %68, i8* %70) #12, !dbg !3672
  br label %146, !dbg !3673

; <label>:72:                                     ; preds = %12
  %73 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10.92, i64 0, i64 0), i32 5) #12, !dbg !3674
  %74 = load i8*, i8** %4, align 8, !dbg !3674, !tbaa !680
  %75 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3674
  %76 = load i8*, i8** %75, align 8, !dbg !3674, !tbaa !680
  %77 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3674
  %78 = load i8*, i8** %77, align 8, !dbg !3674, !tbaa !680
  %79 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3674
  %80 = load i8*, i8** %79, align 8, !dbg !3674, !tbaa !680
  %81 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3674
  %82 = load i8*, i8** %81, align 8, !dbg !3674, !tbaa !680
  %83 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3674
  %84 = load i8*, i8** %83, align 8, !dbg !3674, !tbaa !680
  %85 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3674
  %86 = load i8*, i8** %85, align 8, !dbg !3674, !tbaa !680
  %87 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %73, i8* %74, i8* %76, i8* %78, i8* %80, i8* %82, i8* %84, i8* %86) #12, !dbg !3675
  br label %146, !dbg !3676

; <label>:88:                                     ; preds = %12
  %89 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11.93, i64 0, i64 0), i32 5) #12, !dbg !3677
  %90 = load i8*, i8** %4, align 8, !dbg !3677, !tbaa !680
  %91 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3677
  %92 = load i8*, i8** %91, align 8, !dbg !3677, !tbaa !680
  %93 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3677
  %94 = load i8*, i8** %93, align 8, !dbg !3677, !tbaa !680
  %95 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3677
  %96 = load i8*, i8** %95, align 8, !dbg !3677, !tbaa !680
  %97 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3677
  %98 = load i8*, i8** %97, align 8, !dbg !3677, !tbaa !680
  %99 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3677
  %100 = load i8*, i8** %99, align 8, !dbg !3677, !tbaa !680
  %101 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3677
  %102 = load i8*, i8** %101, align 8, !dbg !3677, !tbaa !680
  %103 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3677
  %104 = load i8*, i8** %103, align 8, !dbg !3677, !tbaa !680
  %105 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %89, i8* %90, i8* %92, i8* %94, i8* %96, i8* %98, i8* %100, i8* %102, i8* %104) #12, !dbg !3678
  br label %146, !dbg !3679

; <label>:106:                                    ; preds = %12
  %107 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12.94, i64 0, i64 0), i32 5) #12, !dbg !3680
  %108 = load i8*, i8** %4, align 8, !dbg !3680, !tbaa !680
  %109 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3680
  %110 = load i8*, i8** %109, align 8, !dbg !3680, !tbaa !680
  %111 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3680
  %112 = load i8*, i8** %111, align 8, !dbg !3680, !tbaa !680
  %113 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3680
  %114 = load i8*, i8** %113, align 8, !dbg !3680, !tbaa !680
  %115 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3680
  %116 = load i8*, i8** %115, align 8, !dbg !3680, !tbaa !680
  %117 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3680
  %118 = load i8*, i8** %117, align 8, !dbg !3680, !tbaa !680
  %119 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3680
  %120 = load i8*, i8** %119, align 8, !dbg !3680, !tbaa !680
  %121 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3680
  %122 = load i8*, i8** %121, align 8, !dbg !3680, !tbaa !680
  %123 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3680
  %124 = load i8*, i8** %123, align 8, !dbg !3680, !tbaa !680
  %125 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %107, i8* %108, i8* %110, i8* %112, i8* %114, i8* %116, i8* %118, i8* %120, i8* %122, i8* %124) #12, !dbg !3681
  br label %146, !dbg !3682

; <label>:126:                                    ; preds = %12
  %127 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13.95, i64 0, i64 0), i32 5) #12, !dbg !3683
  %128 = load i8*, i8** %4, align 8, !dbg !3683, !tbaa !680
  %129 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3683
  %130 = load i8*, i8** %129, align 8, !dbg !3683, !tbaa !680
  %131 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3683
  %132 = load i8*, i8** %131, align 8, !dbg !3683, !tbaa !680
  %133 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3683
  %134 = load i8*, i8** %133, align 8, !dbg !3683, !tbaa !680
  %135 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3683
  %136 = load i8*, i8** %135, align 8, !dbg !3683, !tbaa !680
  %137 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3683
  %138 = load i8*, i8** %137, align 8, !dbg !3683, !tbaa !680
  %139 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3683
  %140 = load i8*, i8** %139, align 8, !dbg !3683, !tbaa !680
  %141 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3683
  %142 = load i8*, i8** %141, align 8, !dbg !3683, !tbaa !680
  %143 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3683
  %144 = load i8*, i8** %143, align 8, !dbg !3683, !tbaa !680
  %145 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %127, i8* %128, i8* %130, i8* %132, i8* %134, i8* %136, i8* %138, i8* %140, i8* %142, i8* %144) #12, !dbg !3684
  br label %146, !dbg !3685

; <label>:146:                                    ; preds = %126, %106, %88, %72, %58, %46, %36, %28, %22, %18
  ret void, !dbg !3686
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_ar(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly) local_unnamed_addr #6 !dbg !3687 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3691, metadata !672), !dbg !3697
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3692, metadata !672), !dbg !3698
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3693, metadata !672), !dbg !3699
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3694, metadata !672), !dbg !3700
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !3695, metadata !672), !dbg !3701
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3696, metadata !672), !dbg !3702
  br label %6, !dbg !3703

; <label>:6:                                      ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !3696, metadata !672), !dbg !3702
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !3705
  %9 = load i8*, i8** %8, align 8, !dbg !3705, !tbaa !680
  %10 = icmp eq i8* %9, null, !dbg !3708
  %11 = add i64 %7, 1, !dbg !3710
  tail call void @llvm.dbg.value(metadata i64 %11, i64 0, metadata !3696, metadata !672), !dbg !3702
  br i1 %10, label %12, label %6, !dbg !3708, !llvm.loop !3712

; <label>:12:                                     ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !3715
  ret void, !dbg !3716
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_va(%struct._IO_FILE*, i8*, i8*, i8*, %struct.__va_list_tag* nocapture) local_unnamed_addr #6 !dbg !3717 {
  %6 = alloca [10 x i8*], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3728, metadata !672), !dbg !3736
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3729, metadata !672), !dbg !3737
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3730, metadata !672), !dbg !3738
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3731, metadata !672), !dbg !3739
  tail call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, i64 0, metadata !3732, metadata !672), !dbg !3740
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !3741
  call void @llvm.lifetime.start(i64 80, i8* nonnull %7) #12, !dbg !3741
  tail call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !3734, metadata !672), !dbg !3742
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3733, metadata !672), !dbg !3743
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3733, metadata !672), !dbg !3743
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  %11 = load i32, i32* %8, align 8, !dbg !3744
  %12 = icmp ult i32 %11, 41, !dbg !3744
  br i1 %12, label %13, label %18, !dbg !3744

; <label>:13:                                     ; preds = %5
  %14 = load i8*, i8** %9, align 8, !dbg !3748
  %15 = sext i32 %11 to i64, !dbg !3748
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !3748
  %17 = add i32 %11, 8, !dbg !3748
  store i32 %17, i32* %8, align 8, !dbg !3748
  br label %21, !dbg !3748

; <label>:18:                                     ; preds = %5
  %19 = load i8*, i8** %10, align 8, !dbg !3750
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !3750
  store i8* %20, i8** %10, align 8, !dbg !3750
  br label %21, !dbg !3750

; <label>:21:                                     ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ], !dbg !3744
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !3752
  %25 = load i8*, i8** %24, align 8, !dbg !3752
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !3754
  store i8* %25, i8** %26, align 16, !dbg !3755, !tbaa !680
  %27 = icmp eq i8* %25, null, !dbg !3756
  br i1 %27, label %30, label %28, !dbg !3757

; <label>:28:                                     ; preds = %21
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3733, metadata !672), !dbg !3743
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3733, metadata !672), !dbg !3743
  %29 = icmp ult i32 %22, 41, !dbg !3744
  br i1 %29, label %35, label %32, !dbg !3744

; <label>:30:                                     ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ]
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !3759
  call void @llvm.lifetime.end(i64 80, i8* nonnull %7) #12, !dbg !3760
  ret void, !dbg !3760

; <label>:32:                                     ; preds = %28
  %33 = load i8*, i8** %10, align 8, !dbg !3750
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !3750
  store i8* %34, i8** %10, align 8, !dbg !3750
  br label %40, !dbg !3750

; <label>:35:                                     ; preds = %28
  %36 = load i8*, i8** %9, align 8, !dbg !3748
  %37 = sext i32 %22 to i64, !dbg !3748
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !3748
  %39 = add i32 %22, 8, !dbg !3748
  store i32 %39, i32* %8, align 8, !dbg !3748
  br label %40, !dbg !3748

; <label>:40:                                     ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ], !dbg !3744
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !3752
  %44 = load i8*, i8** %43, align 8, !dbg !3752
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !3754
  store i8* %44, i8** %45, align 8, !dbg !3755, !tbaa !680
  %46 = icmp eq i8* %44, null, !dbg !3756
  br i1 %46, label %30, label %47, !dbg !3757

; <label>:47:                                     ; preds = %40
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3733, metadata !672), !dbg !3743
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3733, metadata !672), !dbg !3743
  %48 = icmp ult i32 %41, 41, !dbg !3744
  br i1 %48, label %52, label %49, !dbg !3744

; <label>:49:                                     ; preds = %47
  %50 = load i8*, i8** %10, align 8, !dbg !3750
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !3750
  store i8* %51, i8** %10, align 8, !dbg !3750
  br label %57, !dbg !3750

; <label>:52:                                     ; preds = %47
  %53 = load i8*, i8** %9, align 8, !dbg !3748
  %54 = sext i32 %41 to i64, !dbg !3748
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !3748
  %56 = add i32 %41, 8, !dbg !3748
  store i32 %56, i32* %8, align 8, !dbg !3748
  br label %57, !dbg !3748

; <label>:57:                                     ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ], !dbg !3744
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !3752
  %61 = load i8*, i8** %60, align 8, !dbg !3752
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !3754
  store i8* %61, i8** %62, align 16, !dbg !3755, !tbaa !680
  %63 = icmp eq i8* %61, null, !dbg !3756
  br i1 %63, label %30, label %64, !dbg !3757

; <label>:64:                                     ; preds = %57
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3733, metadata !672), !dbg !3743
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3733, metadata !672), !dbg !3743
  %65 = icmp ult i32 %58, 41, !dbg !3744
  br i1 %65, label %69, label %66, !dbg !3744

; <label>:66:                                     ; preds = %64
  %67 = load i8*, i8** %10, align 8, !dbg !3750
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !3750
  store i8* %68, i8** %10, align 8, !dbg !3750
  br label %74, !dbg !3750

; <label>:69:                                     ; preds = %64
  %70 = load i8*, i8** %9, align 8, !dbg !3748
  %71 = sext i32 %58 to i64, !dbg !3748
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !3748
  %73 = add i32 %58, 8, !dbg !3748
  store i32 %73, i32* %8, align 8, !dbg !3748
  br label %74, !dbg !3748

; <label>:74:                                     ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ], !dbg !3744
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !3752
  %78 = load i8*, i8** %77, align 8, !dbg !3752
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !3754
  store i8* %78, i8** %79, align 8, !dbg !3755, !tbaa !680
  %80 = icmp eq i8* %78, null, !dbg !3756
  br i1 %80, label %30, label %81, !dbg !3757

; <label>:81:                                     ; preds = %74
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3733, metadata !672), !dbg !3743
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3733, metadata !672), !dbg !3743
  %82 = icmp ult i32 %75, 41, !dbg !3744
  br i1 %82, label %86, label %83, !dbg !3744

; <label>:83:                                     ; preds = %81
  %84 = load i8*, i8** %10, align 8, !dbg !3750
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !3750
  store i8* %85, i8** %10, align 8, !dbg !3750
  br label %91, !dbg !3750

; <label>:86:                                     ; preds = %81
  %87 = load i8*, i8** %9, align 8, !dbg !3748
  %88 = sext i32 %75 to i64, !dbg !3748
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !3748
  %90 = add i32 %75, 8, !dbg !3748
  store i32 %90, i32* %8, align 8, !dbg !3748
  br label %91, !dbg !3748

; <label>:91:                                     ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ], !dbg !3744
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !3752
  %95 = load i8*, i8** %94, align 8, !dbg !3752
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !3754
  store i8* %95, i8** %96, align 16, !dbg !3755, !tbaa !680
  %97 = icmp eq i8* %95, null, !dbg !3756
  br i1 %97, label %30, label %98, !dbg !3757

; <label>:98:                                     ; preds = %91
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3733, metadata !672), !dbg !3743
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3733, metadata !672), !dbg !3743
  %99 = icmp ult i32 %92, 41, !dbg !3744
  br i1 %99, label %103, label %100, !dbg !3744

; <label>:100:                                    ; preds = %98
  %101 = load i8*, i8** %10, align 8, !dbg !3750
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !3750
  store i8* %102, i8** %10, align 8, !dbg !3750
  br label %108, !dbg !3750

; <label>:103:                                    ; preds = %98
  %104 = load i8*, i8** %9, align 8, !dbg !3748
  %105 = sext i32 %92 to i64, !dbg !3748
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !3748
  %107 = add i32 %92, 8, !dbg !3748
  store i32 %107, i32* %8, align 8, !dbg !3748
  br label %108, !dbg !3748

; <label>:108:                                    ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !3752
  %111 = load i8*, i8** %110, align 8, !dbg !3752
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !3754
  store i8* %111, i8** %112, align 8, !dbg !3755, !tbaa !680
  %113 = icmp eq i8* %111, null, !dbg !3756
  br i1 %113, label %30, label %114, !dbg !3757

; <label>:114:                                    ; preds = %108
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3733, metadata !672), !dbg !3743
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3733, metadata !672), !dbg !3743
  %115 = load i8*, i8** %10, align 8, !dbg !3750
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !3750
  store i8* %116, i8** %10, align 8, !dbg !3750
  %117 = bitcast i8* %115 to i8**, !dbg !3752
  %118 = load i8*, i8** %117, align 8, !dbg !3752
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !3754
  store i8* %118, i8** %119, align 16, !dbg !3755, !tbaa !680
  %120 = icmp eq i8* %118, null, !dbg !3756
  br i1 %120, label %30, label %121, !dbg !3757

; <label>:121:                                    ; preds = %114
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3733, metadata !672), !dbg !3743
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3733, metadata !672), !dbg !3743
  %122 = load i8*, i8** %10, align 8, !dbg !3750
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !3750
  store i8* %123, i8** %10, align 8, !dbg !3750
  %124 = bitcast i8* %122 to i8**, !dbg !3752
  %125 = load i8*, i8** %124, align 8, !dbg !3752
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !3754
  store i8* %125, i8** %126, align 8, !dbg !3755, !tbaa !680
  %127 = icmp eq i8* %125, null, !dbg !3756
  br i1 %127, label %30, label %128, !dbg !3757

; <label>:128:                                    ; preds = %121
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3733, metadata !672), !dbg !3743
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3733, metadata !672), !dbg !3743
  %129 = load i8*, i8** %10, align 8, !dbg !3750
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !3750
  store i8* %130, i8** %10, align 8, !dbg !3750
  %131 = bitcast i8* %129 to i8**, !dbg !3752
  %132 = load i8*, i8** %131, align 8, !dbg !3752
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !3754
  store i8* %132, i8** %133, align 16, !dbg !3755, !tbaa !680
  %134 = icmp eq i8* %132, null, !dbg !3756
  br i1 %134, label %30, label %135, !dbg !3757

; <label>:135:                                    ; preds = %128
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3733, metadata !672), !dbg !3743
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3733, metadata !672), !dbg !3743
  %136 = load i8*, i8** %10, align 8, !dbg !3750
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !3750
  store i8* %137, i8** %10, align 8, !dbg !3750
  %138 = bitcast i8* %136 to i8**, !dbg !3752
  %139 = load i8*, i8** %138, align 8, !dbg !3752
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !3754
  store i8* %139, i8** %140, align 8, !dbg !3755, !tbaa !680
  %141 = icmp eq i8* %139, null, !dbg !3756
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3733, metadata !672), !dbg !3743
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3733, metadata !672), !dbg !3743
  %142 = select i1 %141, i64 9, i64 10, !dbg !3757
  br label %30, !dbg !3757
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc(%struct._IO_FILE*, i8*, i8*, i8*, ...) local_unnamed_addr #6 !dbg !3761 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3765, metadata !672), !dbg !3775
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3766, metadata !672), !dbg !3776
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3767, metadata !672), !dbg !3777
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3768, metadata !672), !dbg !3778
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !3779
  call void @llvm.lifetime.start(i64 24, i8* nonnull %6) #12, !dbg !3779
  tail call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !3769, metadata !672), !dbg !3780
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !3781
  call void @llvm.va_start(i8* nonnull %6), !dbg !3781
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !3782
  call void @llvm.va_end(i8* nonnull %6), !dbg !3783
  call void @llvm.lifetime.end(i64 24, i8* nonnull %6) #12, !dbg !3784
  ret void, !dbg !3784
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #12

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #12

; Function Attrs: nounwind sspstrong uwtable
define void @emit_bug_reporting_address() local_unnamed_addr #6 !dbg !3785 {
  %1 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14.98, i64 0, i64 0), i32 5) #12, !dbg !3786
  %2 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15.99, i64 0, i64 0)) #12, !dbg !3787
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.100, i64 0, i64 0), i32 5) #12, !dbg !3789
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17.101, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.18.102, i64 0, i64 0)) #12, !dbg !3790
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.19.103, i64 0, i64 0), i32 5) #12, !dbg !3791
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !3791, !tbaa !680
  %7 = tail call i32 @fputs_unlocked(i8* %5, %struct._IO_FILE* %6) #12, !dbg !3792
  ret void, !dbg !3793
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnmalloc(i64, i64) local_unnamed_addr #14 !dbg !3794 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3798, metadata !672), !dbg !3800
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3799, metadata !672), !dbg !3801
  %3 = udiv i64 9223372036854775807, %1, !dbg !3802
  %4 = icmp ult i64 %3, %0, !dbg !3802
  br i1 %4, label %5, label %6, !dbg !3804

; <label>:5:                                      ; preds = %2
  tail call void @xalloc_die() #15, !dbg !3805
  unreachable, !dbg !3805

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3806
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !3807, metadata !672) #12, !dbg !3814
  %8 = tail call noalias i8* @malloc(i64 %7) #12, !dbg !3816
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !3813, metadata !672) #12, !dbg !3817
  %9 = icmp eq i8* %8, null, !dbg !3818
  %10 = icmp ne i64 %7, 0, !dbg !3820
  %11 = and i1 %10, %9, !dbg !3822
  br i1 %11, label %12, label %13, !dbg !3822

; <label>:12:                                     ; preds = %6
  tail call void @xalloc_die() #15, !dbg !3823
  unreachable, !dbg !3823

; <label>:13:                                     ; preds = %6
  ret i8* %8, !dbg !3824
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmalloc(i64) local_unnamed_addr #6 !dbg !3808 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3807, metadata !672), !dbg !3825
  %2 = tail call noalias i8* @malloc(i64 %0) #12, !dbg !3826
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3813, metadata !672), !dbg !3827
  %3 = icmp eq i8* %2, null, !dbg !3828
  %4 = icmp ne i64 %0, 0, !dbg !3829
  %5 = and i1 %4, %3, !dbg !3830
  br i1 %5, label %6, label %7, !dbg !3830

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3831
  unreachable, !dbg !3831

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !3832
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnrealloc(i8*, i64, i64) local_unnamed_addr #14 !dbg !3833 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3837, metadata !672), !dbg !3840
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3838, metadata !672), !dbg !3841
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3839, metadata !672), !dbg !3842
  %4 = udiv i64 9223372036854775807, %2, !dbg !3843
  %5 = icmp ult i64 %4, %1, !dbg !3843
  br i1 %5, label %6, label %7, !dbg !3845

; <label>:6:                                      ; preds = %3
  tail call void @xalloc_die() #15, !dbg !3846
  unreachable, !dbg !3846

; <label>:7:                                      ; preds = %3
  %8 = mul i64 %2, %1, !dbg !3847
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3848, metadata !672) #12, !dbg !3854
  tail call void @llvm.dbg.value(metadata i64 %8, i64 0, metadata !3853, metadata !672) #12, !dbg !3856
  %9 = icmp eq i64 %8, 0, !dbg !3857
  %10 = icmp ne i8* %0, null, !dbg !3859
  %11 = and i1 %10, %9, !dbg !3861
  br i1 %11, label %12, label %13, !dbg !3861

; <label>:12:                                     ; preds = %7
  tail call void @free(i8* nonnull %0) #12, !dbg !3862
  br label %19, !dbg !3864

; <label>:13:                                     ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #12, !dbg !3865
  tail call void @llvm.dbg.value(metadata i8* %14, i64 0, metadata !3848, metadata !672) #12, !dbg !3854
  %15 = icmp eq i8* %14, null, !dbg !3866
  %16 = icmp ne i64 %8, 0, !dbg !3868
  %17 = and i1 %16, %15, !dbg !3870
  br i1 %17, label %18, label %19, !dbg !3870

; <label>:18:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !3871
  unreachable, !dbg !3871

; <label>:19:                                     ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ]
  ret i8* %20, !dbg !3872
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xrealloc(i8*, i64) local_unnamed_addr #6 !dbg !3849 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3848, metadata !672), !dbg !3873
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3853, metadata !672), !dbg !3874
  %3 = icmp eq i64 %1, 0, !dbg !3875
  %4 = icmp ne i8* %0, null, !dbg !3876
  %5 = and i1 %4, %3, !dbg !3877
  br i1 %5, label %6, label %7, !dbg !3877

; <label>:6:                                      ; preds = %2
  tail call void @free(i8* nonnull %0) #12, !dbg !3878
  br label %13, !dbg !3879

; <label>:7:                                      ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #12, !dbg !3880
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !3848, metadata !672), !dbg !3873
  %9 = icmp eq i8* %8, null, !dbg !3881
  %10 = icmp ne i64 %1, 0, !dbg !3882
  %11 = and i1 %10, %9, !dbg !3883
  br i1 %11, label %12, label %13, !dbg !3883

; <label>:12:                                     ; preds = %7
  tail call void @xalloc_die() #15, !dbg !3884
  unreachable, !dbg !3884

; <label>:13:                                     ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ]
  ret i8* %14, !dbg !3885
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @x2nrealloc(i8*, i64* nocapture, i64) local_unnamed_addr #14 !dbg !632 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !637, metadata !672), !dbg !3886
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !638, metadata !672), !dbg !3887
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !639, metadata !672), !dbg !3888
  %4 = load i64, i64* %1, align 8, !dbg !3889, !tbaa !2889
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !640, metadata !672), !dbg !3890
  %5 = icmp eq i8* %0, null, !dbg !3891
  br i1 %5, label %6, label %13, !dbg !3893

; <label>:6:                                      ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3894
  br i1 %7, label %8, label %17, !dbg !3897

; <label>:8:                                      ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3898
  tail call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !640, metadata !672), !dbg !3890
  %10 = icmp ugt i64 %2, 128, !dbg !3900
  %11 = zext i1 %10 to i64, !dbg !3900
  %12 = add nuw nsw i64 %9, %11, !dbg !3901
  tail call void @llvm.dbg.value(metadata i64 %12, i64 0, metadata !640, metadata !672), !dbg !3890
  br label %17, !dbg !3902

; <label>:13:                                     ; preds = %3
  %14 = udiv i64 6148914691236517204, %2, !dbg !3903
  %15 = icmp ugt i64 %14, %4, !dbg !3906
  br i1 %15, label %20, label %16, !dbg !3907

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !3908
  unreachable, !dbg !3908

; <label>:17:                                     ; preds = %6, %8
  %18 = phi i64 [ %12, %8 ], [ %4, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !640, metadata !672), !dbg !3890
  store i64 %18, i64* %1, align 8, !dbg !3909, !tbaa !2889
  %19 = mul i64 %18, %2, !dbg !3910
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3848, metadata !672) #12, !dbg !3911
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !3853, metadata !672) #12, !dbg !3913
  br label %27, !dbg !3914

; <label>:20:                                     ; preds = %13
  %21 = lshr i64 %4, 1, !dbg !3915
  %22 = add i64 %4, 1, !dbg !3916
  %23 = add i64 %22, %21, !dbg !3917
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !640, metadata !672), !dbg !3890
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !640, metadata !672), !dbg !3890
  store i64 %23, i64* %1, align 8, !dbg !3909, !tbaa !2889
  %24 = mul i64 %23, %2, !dbg !3910
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3848, metadata !672) #12, !dbg !3911
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !3853, metadata !672) #12, !dbg !3913
  %25 = icmp eq i64 %24, 0, !dbg !3918
  br i1 %25, label %26, label %27, !dbg !3914

; <label>:26:                                     ; preds = %20
  tail call void @free(i8* nonnull %0) #12, !dbg !3919
  br label %34, !dbg !3920

; <label>:27:                                     ; preds = %17, %20
  %28 = phi i64 [ %19, %17 ], [ %24, %20 ]
  %29 = tail call i8* @realloc(i8* %0, i64 %28) #12, !dbg !3921
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !3848, metadata !672) #12, !dbg !3911
  %30 = icmp eq i8* %29, null, !dbg !3922
  %31 = icmp ne i64 %28, 0, !dbg !3923
  %32 = and i1 %31, %30, !dbg !3924
  br i1 %32, label %33, label %34, !dbg !3924

; <label>:33:                                     ; preds = %27
  tail call void @xalloc_die() #15, !dbg !3925
  unreachable, !dbg !3925

; <label>:34:                                     ; preds = %26, %27
  %35 = phi i8* [ null, %26 ], [ %29, %27 ]
  ret i8* %35, !dbg !3926
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xcharalloc(i64) local_unnamed_addr #14 !dbg !3927 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3929, metadata !672), !dbg !3930
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3807, metadata !672) #12, !dbg !3931
  %2 = tail call noalias i8* @malloc(i64 %0) #12, !dbg !3933
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3813, metadata !672) #12, !dbg !3934
  %3 = icmp eq i8* %2, null, !dbg !3935
  %4 = icmp ne i64 %0, 0, !dbg !3936
  %5 = and i1 %4, %3, !dbg !3937
  br i1 %5, label %6, label %7, !dbg !3937

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3938
  unreachable, !dbg !3938

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !3939
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @x2realloc(i8*, i64* nocapture) local_unnamed_addr #6 !dbg !3940 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3944, metadata !672), !dbg !3946
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !3945, metadata !672), !dbg !3947
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !637, metadata !672) #12, !dbg !3948
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !638, metadata !672) #12, !dbg !3950
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !639, metadata !672) #12, !dbg !3951
  %3 = load i64, i64* %1, align 8, !dbg !3952, !tbaa !2889
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !640, metadata !672) #12, !dbg !3953
  %4 = icmp eq i8* %0, null, !dbg !3954
  br i1 %4, label %5, label %8, !dbg !3955

; <label>:5:                                      ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3956
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !640, metadata !672) #12, !dbg !3953
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !640, metadata !672) #12, !dbg !3953
  %7 = select i1 %6, i64 128, i64 %3, !dbg !3957
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !640, metadata !672) #12, !dbg !3953
  store i64 %7, i64* %1, align 8, !dbg !3958, !tbaa !2889
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3848, metadata !672) #12, !dbg !3959
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3853, metadata !672) #12, !dbg !3961
  br label %17, !dbg !3962

; <label>:8:                                      ; preds = %2
  %9 = icmp ult i64 %3, 6148914691236517204, !dbg !3963
  br i1 %9, label %11, label %10, !dbg !3964

; <label>:10:                                     ; preds = %8
  tail call void @xalloc_die() #15, !dbg !3965
  unreachable, !dbg !3965

; <label>:11:                                     ; preds = %8
  %12 = lshr i64 %3, 1, !dbg !3966
  %13 = add i64 %3, 1, !dbg !3967
  %14 = add i64 %13, %12, !dbg !3968
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !640, metadata !672) #12, !dbg !3953
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !640, metadata !672) #12, !dbg !3953
  store i64 %14, i64* %1, align 8, !dbg !3958, !tbaa !2889
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3848, metadata !672) #12, !dbg !3959
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3853, metadata !672) #12, !dbg !3961
  %15 = icmp eq i64 %14, 0, !dbg !3969
  br i1 %15, label %16, label %17, !dbg !3962

; <label>:16:                                     ; preds = %11
  tail call void @free(i8* nonnull %0) #12, !dbg !3970
  br label %24, !dbg !3971

; <label>:17:                                     ; preds = %11, %5
  %18 = phi i64 [ %7, %5 ], [ %14, %11 ]
  %19 = tail call i8* @realloc(i8* %0, i64 %18) #12, !dbg !3972
  tail call void @llvm.dbg.value(metadata i8* %19, i64 0, metadata !3848, metadata !672) #12, !dbg !3959
  %20 = icmp eq i8* %19, null, !dbg !3973
  %21 = icmp ne i64 %18, 0, !dbg !3974
  %22 = and i1 %21, %20, !dbg !3975
  br i1 %22, label %23, label %24, !dbg !3975

; <label>:23:                                     ; preds = %17
  tail call void @xalloc_die() #15, !dbg !3976
  unreachable, !dbg !3976

; <label>:24:                                     ; preds = %16, %17
  %25 = phi i8* [ null, %16 ], [ %19, %17 ]
  ret i8* %25, !dbg !3977
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xzalloc(i64) local_unnamed_addr #6 !dbg !3978 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3980, metadata !672), !dbg !3981
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3807, metadata !672) #12, !dbg !3982
  %2 = tail call noalias i8* @malloc(i64 %0) #12, !dbg !3984
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3813, metadata !672) #12, !dbg !3985
  %3 = icmp eq i8* %2, null, !dbg !3986
  %4 = icmp ne i64 %0, 0, !dbg !3987
  %5 = and i1 %4, %3, !dbg !3988
  br i1 %5, label %6, label %7, !dbg !3988

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3989
  unreachable, !dbg !3989

; <label>:7:                                      ; preds = %1
  tail call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 %0, i32 1, i1 false), !dbg !3990
  ret i8* %2, !dbg !3991
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xcalloc(i64, i64) local_unnamed_addr #6 !dbg !3992 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3994, metadata !672), !dbg !3997
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3995, metadata !672), !dbg !3998
  %3 = udiv i64 9223372036854775807, %1, !dbg !3999
  %4 = icmp ult i64 %3, %0, !dbg !3999
  br i1 %4, label %8, label %5, !dbg !4001

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #12, !dbg !4002
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !3996, metadata !672), !dbg !4004
  %7 = icmp eq i8* %6, null, !dbg !4005
  br i1 %7, label %8, label %9, !dbg !4006

; <label>:8:                                      ; preds = %5, %2
  tail call void @xalloc_die() #15, !dbg !4008
  unreachable, !dbg !4008

; <label>:9:                                      ; preds = %5
  ret i8* %6, !dbg !4009
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmemdup(i8* nocapture readonly, i64) local_unnamed_addr #6 !dbg !4010 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4014, metadata !672), !dbg !4016
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4015, metadata !672), !dbg !4017
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3807, metadata !672) #12, !dbg !4018
  %3 = tail call noalias i8* @malloc(i64 %1) #12, !dbg !4020
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3813, metadata !672) #12, !dbg !4021
  %4 = icmp eq i8* %3, null, !dbg !4022
  %5 = icmp ne i64 %1, 0, !dbg !4023
  %6 = and i1 %5, %4, !dbg !4024
  br i1 %6, label %7, label %8, !dbg !4024

; <label>:7:                                      ; preds = %2
  tail call void @xalloc_die() #15, !dbg !4025
  unreachable, !dbg !4025

; <label>:8:                                      ; preds = %2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %0, i64 %1, i32 1, i1 false), !dbg !4026
  ret i8* %3, !dbg !4027
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xstrdup(i8* nocapture readonly) local_unnamed_addr #6 !dbg !4028 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4030, metadata !672), !dbg !4031
  %2 = tail call i64 @strlen(i8* %0) #11, !dbg !4032
  %3 = add i64 %2, 1, !dbg !4033
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4014, metadata !672) #12, !dbg !4034
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !4015, metadata !672) #12, !dbg !4037
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3807, metadata !672) #12, !dbg !4038
  %4 = tail call noalias i8* @malloc(i64 %3) #12, !dbg !4040
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !3813, metadata !672) #12, !dbg !4041
  %5 = icmp eq i8* %4, null, !dbg !4042
  %6 = icmp ne i64 %3, 0, !dbg !4043
  %7 = and i1 %6, %5, !dbg !4044
  br i1 %7, label %8, label %9, !dbg !4044

; <label>:8:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !4045
  unreachable, !dbg !4045

; <label>:9:                                      ; preds = %1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %0, i64 %3, i32 1, i1 false) #12, !dbg !4046
  ret i8* %4, !dbg !4047
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @xalloc_die() local_unnamed_addr #0 !dbg !4048 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !4050, !tbaa !787
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.116, i64 0, i64 0), i32 5) #12, !dbg !4051
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.117, i64 0, i64 0), i8* %2) #12, !dbg !4052
  tail call void @abort() #15, !dbg !4054
  unreachable, !dbg !4054
}

; Function Attrs: nounwind sspstrong uwtable
define zeroext i1 @xstrtod(i8*, i8**, double* nocapture, double (i8*, i8**)* nocapture) local_unnamed_addr #6 !dbg !4055 {
  %5 = alloca i8*, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4062, metadata !672), !dbg !4069
  tail call void @llvm.dbg.value(metadata i8** %1, i64 0, metadata !4063, metadata !672), !dbg !4070
  tail call void @llvm.dbg.value(metadata double* %2, i64 0, metadata !4064, metadata !672), !dbg !4071
  tail call void @llvm.dbg.value(metadata double (i8*, i8**)* %3, i64 0, metadata !4065, metadata !672), !dbg !4072
  %6 = bitcast i8** %5 to i8*, !dbg !4073
  call void @llvm.lifetime.start(i64 8, i8* nonnull %6) #12, !dbg !4073
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !4068, metadata !672), !dbg !4074
  %7 = tail call i32* @__errno_location() #1, !dbg !4075
  store i32 0, i32* %7, align 4, !dbg !4076, !tbaa !787
  tail call void @llvm.dbg.value(metadata i8** %5, i64 0, metadata !4067, metadata !936), !dbg !4077
  %8 = call double %3(i8* %0, i8** nonnull %5) #12, !dbg !4078
  call void @llvm.dbg.value(metadata double %8, i64 0, metadata !4066, metadata !672), !dbg !4079
  %9 = load i8*, i8** %5, align 8, !dbg !4080, !tbaa !680
  call void @llvm.dbg.value(metadata i8* %9, i64 0, metadata !4067, metadata !672), !dbg !4077
  %10 = icmp eq i8* %9, %0, !dbg !4082
  %11 = ptrtoint i8* %9 to i64, !dbg !4083
  br i1 %10, label %22, label %12, !dbg !4083

; <label>:12:                                     ; preds = %4
  %13 = icmp eq i8** %1, null, !dbg !4084
  br i1 %13, label %14, label %17, !dbg !4086

; <label>:14:                                     ; preds = %12
  %15 = load i8, i8* %9, align 1, !dbg !4087, !tbaa !1132
  %16 = icmp eq i8 %15, 0, !dbg !4089
  br i1 %16, label %17, label %27, !dbg !4090

; <label>:17:                                     ; preds = %14, %12
  %18 = fcmp une double %8, 0.000000e+00, !dbg !4092
  br i1 %18, label %19, label %22, !dbg !4095

; <label>:19:                                     ; preds = %17
  %20 = load i32, i32* %7, align 4, !dbg !4096, !tbaa !787
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !4068, metadata !672), !dbg !4074
  %21 = icmp ne i32 %20, 34, !dbg !4098
  br label %22, !dbg !4098

; <label>:22:                                     ; preds = %19, %4, %17
  %23 = phi i1 [ true, %17 ], [ false, %4 ], [ %21, %19 ]
  %24 = icmp eq i8** %1, null, !dbg !4100
  br i1 %24, label %27, label %25, !dbg !4102

; <label>:25:                                     ; preds = %22
  %26 = bitcast i8** %1 to i64*, !dbg !4103
  store i64 %11, i64* %26, align 8, !dbg !4103, !tbaa !680
  br label %27, !dbg !4104

; <label>:27:                                     ; preds = %14, %22, %25
  %28 = phi i1 [ %23, %22 ], [ %23, %25 ], [ false, %14 ]
  store double %8, double* %2, align 8, !dbg !4105, !tbaa !800
  call void @llvm.lifetime.end(i64 8, i8* nonnull %6) #12, !dbg !4106
  ret i1 %28, !dbg !4107
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @rpl_calloc(i64, i64) local_unnamed_addr #6 !dbg !4108 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4111, metadata !672), !dbg !4117
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4112, metadata !672), !dbg !4118
  %3 = icmp eq i64 %0, 0, !dbg !4119
  %4 = icmp eq i64 %1, 0, !dbg !4120
  %5 = or i1 %3, %4, !dbg !4122
  br i1 %5, label %12, label %6, !dbg !4122

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !4123
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !4114, metadata !672), !dbg !4124
  %8 = udiv i64 %7, %1, !dbg !4125
  %9 = icmp eq i64 %8, %0, !dbg !4127
  br i1 %9, label %12, label %10, !dbg !4128

; <label>:10:                                     ; preds = %6
  %11 = tail call i32* @__errno_location() #1, !dbg !4129
  store i32 12, i32* %11, align 4, !dbg !4131, !tbaa !787
  br label %16

; <label>:12:                                     ; preds = %6, %2
  %13 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %14 = phi i64 [ 1, %2 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !4111, metadata !672), !dbg !4117
  tail call void @llvm.dbg.value(metadata i64 %13, i64 0, metadata !4112, metadata !672), !dbg !4118
  %15 = tail call noalias i8* @calloc(i64 %14, i64 %13) #12, !dbg !4132
  tail call void @llvm.dbg.value(metadata i8* %15, i64 0, metadata !4113, metadata !672), !dbg !4133
  br label %16, !dbg !4134

; <label>:16:                                     ; preds = %10, %12
  %17 = phi i8* [ %15, %12 ], [ null, %10 ]
  ret i8* %17, !dbg !4135
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i64 @rpl_mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #6 !dbg !4136 {
  %5 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i32* %0, i64 0, metadata !4153, metadata !672), !dbg !4162
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4154, metadata !672), !dbg !4163
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !4155, metadata !672), !dbg !4164
  tail call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, i64 0, metadata !4156, metadata !672), !dbg !4165
  %6 = bitcast i32* %5 to i8*, !dbg !4166
  call void @llvm.lifetime.start(i64 4, i8* nonnull %6) #12, !dbg !4166
  %7 = icmp eq i32* %0, null, !dbg !4167
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !4153, metadata !672), !dbg !4162
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !4169
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !4153, metadata !672), !dbg !4162
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #12, !dbg !4170
  call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !4157, metadata !672), !dbg !4171
  %10 = icmp ugt i64 %9, -3, !dbg !4172
  %11 = icmp ne i64 %2, 0, !dbg !4173
  %12 = and i1 %11, %10, !dbg !4175
  br i1 %12, label %13, label %18, !dbg !4175

; <label>:13:                                     ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #12, !dbg !4176
  br i1 %14, label %18, label %15, !dbg !4178

; <label>:15:                                     ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !4180, !tbaa !1132
  call void @llvm.dbg.value(metadata i8 %16, i64 0, metadata !4159, metadata !672), !dbg !4181
  %17 = zext i8 %16 to i32, !dbg !4182
  store i32 %17, i32* %8, align 4, !dbg !4183, !tbaa !787
  br label %18

; <label>:18:                                     ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ]
  call void @llvm.lifetime.end(i64 4, i8* nonnull %6) #12, !dbg !4184
  ret i64 %19, !dbg !4184
}

; Function Attrs: nounwind
declare i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @str2sig(i8*, i32* nocapture) local_unnamed_addr #6 !dbg !4185 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4189, metadata !672), !dbg !4191
  tail call void @llvm.dbg.value(metadata i32* %1, i64 0, metadata !4190, metadata !672), !dbg !4192
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4193, metadata !672) #12, !dbg !4220
  %5 = load i8, i8* %0, align 1, !dbg !4222, !tbaa !1132
  %6 = sext i8 %5 to i32, !dbg !4222
  %7 = add nsw i32 %6, -48, !dbg !4222
  %8 = icmp ult i32 %7, 10, !dbg !4222
  br i1 %8, label %10, label %9, !dbg !4223

; <label>:9:                                      ; preds = %2
  br label %21, !dbg !4224

; <label>:10:                                     ; preds = %2
  %11 = bitcast i8** %3 to i8*, !dbg !4225
  call void @llvm.lifetime.start(i64 8, i8* nonnull %11) #12, !dbg !4225
  tail call void @llvm.dbg.value(metadata i8** %3, i64 0, metadata !4198, metadata !936) #12, !dbg !4226
  %12 = call i64 @strtol(i8* nonnull %0, i8** nonnull %3, i32 10) #12, !dbg !4227
  tail call void @llvm.dbg.value(metadata i64 %12, i64 0, metadata !4201, metadata !672) #12, !dbg !4228
  %13 = load i8*, i8** %3, align 8, !dbg !4229, !tbaa !680
  tail call void @llvm.dbg.value(metadata i8* %13, i64 0, metadata !4198, metadata !672) #12, !dbg !4226
  %14 = load i8, i8* %13, align 1, !dbg !4231, !tbaa !1132
  %15 = trunc i64 %12 to i32, !dbg !4232
  %16 = icmp ne i8 %14, 0, !dbg !4233
  %17 = icmp sgt i64 %12, 64, !dbg !4233
  %18 = or i1 %17, %16, !dbg !4233
  call void @llvm.lifetime.end(i64 8, i8* nonnull %11) #12, !dbg !4234
  br i1 %18, label %74, label %75

; <label>:19:                                     ; preds = %21
  %20 = icmp ult i64 %26, 35, !dbg !4235
  br i1 %20, label %21, label %30, !dbg !4237, !llvm.loop !4239

; <label>:21:                                     ; preds = %9, %19
  %22 = phi i64 [ %26, %19 ], [ 0, %9 ]
  %23 = getelementptr inbounds [35 x %struct.numname], [35 x %struct.numname]* @numname_table, i64 0, i64 %22, i32 1, i64 0, !dbg !4224
  %24 = tail call i32 @strcmp(i8* %23, i8* %0) #12, !dbg !4224
  %25 = icmp eq i32 %24, 0, !dbg !4242
  %26 = add nuw nsw i64 %22, 1, !dbg !4243
  br i1 %25, label %27, label %19, !dbg !4245

; <label>:27:                                     ; preds = %21
  %28 = getelementptr inbounds [35 x %struct.numname], [35 x %struct.numname]* @numname_table, i64 0, i64 %22, i32 0, !dbg !4246
  %29 = load i32, i32* %28, align 4, !dbg !4246, !tbaa !4247
  br label %75

; <label>:30:                                     ; preds = %19
  %31 = bitcast i8** %4 to i8*, !dbg !4249
  call void @llvm.lifetime.start(i64 8, i8* nonnull %31) #12, !dbg !4249
  %32 = tail call i32 @__libc_current_sigrtmin() #12, !dbg !4250
  tail call void @llvm.dbg.value(metadata i32 %32, i64 0, metadata !4212, metadata !672) #12, !dbg !4251
  %33 = tail call i32 @__libc_current_sigrtmax() #12, !dbg !4252
  tail call void @llvm.dbg.value(metadata i32 %33, i64 0, metadata !4213, metadata !672) #12, !dbg !4253
  %34 = icmp sgt i32 %32, 0, !dbg !4254
  br i1 %34, label %35, label %50, !dbg !4255

; <label>:35:                                     ; preds = %30
  %36 = tail call i32 @strncmp(i8* %0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.126, i64 0, i64 0), i64 5) #11, !dbg !4256
  %37 = icmp eq i32 %36, 0, !dbg !4258
  br i1 %37, label %38, label %50, !dbg !4259

; <label>:38:                                     ; preds = %35
  %39 = getelementptr inbounds i8, i8* %0, i64 5, !dbg !4261
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !4210, metadata !936) #12, !dbg !4262
  %40 = call i64 @strtol(i8* %39, i8** nonnull %4, i32 10) #12, !dbg !4263
  tail call void @llvm.dbg.value(metadata i64 %40, i64 0, metadata !4214, metadata !672) #12, !dbg !4264
  %41 = load i8*, i8** %4, align 8, !dbg !4265, !tbaa !680
  tail call void @llvm.dbg.value(metadata i8* %41, i64 0, metadata !4210, metadata !672) #12, !dbg !4262
  %42 = load i8, i8* %41, align 1, !dbg !4267, !tbaa !1132
  %43 = icmp eq i8 %42, 0, !dbg !4267
  %44 = icmp sgt i64 %40, -1, !dbg !4268
  %45 = and i1 %44, %43, !dbg !4270
  br i1 %45, label %46, label %67, !dbg !4270

; <label>:46:                                     ; preds = %38
  %47 = sub nsw i32 %33, %32, !dbg !4271
  %48 = sext i32 %47 to i64, !dbg !4273
  %49 = icmp sgt i64 %40, %48, !dbg !4274
  br i1 %49, label %67, label %68, !dbg !4275

; <label>:50:                                     ; preds = %35, %30
  %51 = icmp sgt i32 %33, 0, !dbg !4277
  br i1 %51, label %52, label %67, !dbg !4278

; <label>:52:                                     ; preds = %50
  %53 = tail call i32 @strncmp(i8* %0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.127, i64 0, i64 0), i64 5) #11, !dbg !4279
  %54 = icmp eq i32 %53, 0, !dbg !4281
  br i1 %54, label %55, label %67, !dbg !4282

; <label>:55:                                     ; preds = %52
  %56 = getelementptr inbounds i8, i8* %0, i64 5, !dbg !4283
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !4210, metadata !936) #12, !dbg !4262
  %57 = call i64 @strtol(i8* %56, i8** nonnull %4, i32 10) #12, !dbg !4284
  tail call void @llvm.dbg.value(metadata i64 %57, i64 0, metadata !4217, metadata !672) #12, !dbg !4285
  %58 = load i8*, i8** %4, align 8, !dbg !4286, !tbaa !680
  tail call void @llvm.dbg.value(metadata i8* %58, i64 0, metadata !4210, metadata !672) #12, !dbg !4262
  %59 = load i8, i8* %58, align 1, !dbg !4288, !tbaa !1132
  %60 = icmp eq i8 %59, 0, !dbg !4288
  br i1 %60, label %61, label %67, !dbg !4289

; <label>:61:                                     ; preds = %55
  %62 = sub nsw i32 %32, %33, !dbg !4290
  %63 = sext i32 %62 to i64, !dbg !4292
  %64 = icmp sle i64 %63, %57, !dbg !4293
  %65 = icmp slt i64 %57, 1, !dbg !4294
  %66 = and i1 %64, %65, !dbg !4296
  br i1 %66, label %68, label %67, !dbg !4296

; <label>:67:                                     ; preds = %61, %55, %52, %50, %46, %38
  call void @llvm.lifetime.end(i64 8, i8* nonnull %31) #12, !dbg !4297
  br label %74

; <label>:68:                                     ; preds = %61, %46
  %69 = phi i32 [ %33, %61 ], [ %32, %46 ]
  %70 = phi i64 [ %57, %61 ], [ %40, %46 ]
  %71 = zext i32 %69 to i64
  %72 = add i64 %71, %70
  %73 = trunc i64 %72 to i32
  call void @llvm.lifetime.end(i64 8, i8* nonnull %31) #12, !dbg !4297
  br label %75

; <label>:74:                                     ; preds = %67, %10
  br label %75, !dbg !4298

; <label>:75:                                     ; preds = %10, %27, %68, %74
  %76 = phi i32 [ -1, %74 ], [ %15, %10 ], [ %73, %68 ], [ %29, %27 ]
  store i32 %76, i32* %1, align 4, !dbg !4299, !tbaa !787
  %77 = ashr i32 %76, 31, !dbg !4300
  ret i32 %77, !dbg !4301
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @__libc_current_sigrtmin() local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @__libc_current_sigrtmax() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @sig2str(i32, i8*) local_unnamed_addr #6 !dbg !4302 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4306, metadata !672), !dbg !4314
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4307, metadata !672), !dbg !4315
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4308, metadata !672), !dbg !4316
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4308, metadata !672), !dbg !4316
  br label %9, !dbg !4317

; <label>:3:                                      ; preds = %9
  %4 = add nsw i32 %10, 1, !dbg !4320
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !4308, metadata !672), !dbg !4316
  %5 = zext i32 %4 to i64, !dbg !4323
  %6 = getelementptr inbounds [35 x %struct.numname], [35 x %struct.numname]* @numname_table, i64 0, i64 %5, i32 0, !dbg !4325
  %7 = load i32, i32* %6, align 4, !dbg !4325, !tbaa !4247
  %8 = icmp eq i32 %7, %0, !dbg !4327
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !4308, metadata !672), !dbg !4316
  br i1 %8, label %15, label %43, !dbg !4328

; <label>:9:                                      ; preds = %62, %2
  %10 = phi i32 [ 0, %2 ], [ %61, %62 ]
  %11 = zext i32 %10 to i64, !dbg !4323
  %12 = getelementptr inbounds [35 x %struct.numname], [35 x %struct.numname]* @numname_table, i64 0, i64 %11, i32 0, !dbg !4325
  %13 = load i32, i32* %12, align 4, !dbg !4325, !tbaa !4247
  %14 = icmp eq i32 %13, %0, !dbg !4327
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !4308, metadata !672), !dbg !4316
  br i1 %14, label %15, label %3, !dbg !4328

; <label>:15:                                     ; preds = %55, %49, %43, %3, %9
  %16 = phi i64 [ %11, %9 ], [ %5, %3 ], [ %45, %43 ], [ %51, %49 ], [ %57, %55 ]
  %17 = getelementptr inbounds [35 x %struct.numname], [35 x %struct.numname]* @numname_table, i64 0, i64 %16, i32 1, i64 0, !dbg !4329
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4331, metadata !672) #12, !dbg !4340
  tail call void @llvm.dbg.value(metadata i8* %17, i64 0, metadata !4339, metadata !672) #12, !dbg !4340
  %18 = tail call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %1, i1 false) #12, !dbg !4342
  %19 = tail call i8* @__strcpy_chk(i8* nonnull %1, i8* nonnull %17, i64 %18) #12, !dbg !4343
  br label %41, !dbg !4344

; <label>:20:                                     ; preds = %62
  %21 = tail call i32 @__libc_current_sigrtmin() #12, !dbg !4345
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !4309, metadata !672), !dbg !4346
  %22 = tail call i32 @__libc_current_sigrtmax() #12, !dbg !4347
  tail call void @llvm.dbg.value(metadata i32 %22, i64 0, metadata !4311, metadata !672), !dbg !4348
  %23 = icmp sgt i32 %21, %0, !dbg !4349
  %24 = icmp slt i32 %22, %0, !dbg !4351
  %25 = or i1 %23, %24, !dbg !4353
  br i1 %25, label %41, label %26, !dbg !4353

; <label>:26:                                     ; preds = %20
  %27 = sub nsw i32 %22, %21, !dbg !4354
  %28 = sdiv i32 %27, 2, !dbg !4356
  %29 = add nsw i32 %28, %21, !dbg !4357
  %30 = icmp slt i32 %29, %0, !dbg !4358
  br i1 %30, label %32, label %31, !dbg !4359

; <label>:31:                                     ; preds = %26
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.126, i64 0, i64 0), i64 6, i32 1, i1 false), !dbg !4360
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !4312, metadata !672), !dbg !4362
  br label %33, !dbg !4363

; <label>:32:                                     ; preds = %26
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.127, i64 0, i64 0), i64 6, i32 1, i1 false), !dbg !4364
  tail call void @llvm.dbg.value(metadata i32 %22, i64 0, metadata !4312, metadata !672), !dbg !4362
  br label %33

; <label>:33:                                     ; preds = %32, %31
  %34 = phi i32 [ %21, %31 ], [ %22, %32 ]
  tail call void @llvm.dbg.value(metadata i32 %34, i64 0, metadata !4312, metadata !672), !dbg !4362
  %35 = sub nsw i32 %0, %34, !dbg !4366
  tail call void @llvm.dbg.value(metadata i32 %35, i64 0, metadata !4313, metadata !672), !dbg !4367
  %36 = icmp eq i32 %35, 0, !dbg !4368
  br i1 %36, label %41, label %37, !dbg !4370

; <label>:37:                                     ; preds = %33
  %38 = getelementptr inbounds i8, i8* %1, i64 5, !dbg !4371
  %39 = tail call i64 @llvm.objectsize.i64.p0i8(i8* %38, i1 false), !dbg !4371
  %40 = tail call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* %38, i32 1, i64 %39, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.130, i64 0, i64 0), i32 %35) #12, !dbg !4371
  br label %41, !dbg !4371

; <label>:41:                                     ; preds = %20, %33, %37, %15
  %42 = phi i32 [ 0, %15 ], [ -1, %20 ], [ 0, %33 ], [ 0, %37 ]
  ret i32 %42, !dbg !4372

; <label>:43:                                     ; preds = %3
  %44 = add nsw i32 %10, 2, !dbg !4320
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !4308, metadata !672), !dbg !4316
  %45 = zext i32 %44 to i64, !dbg !4323
  %46 = getelementptr inbounds [35 x %struct.numname], [35 x %struct.numname]* @numname_table, i64 0, i64 %45, i32 0, !dbg !4325
  %47 = load i32, i32* %46, align 4, !dbg !4325, !tbaa !4247
  %48 = icmp eq i32 %47, %0, !dbg !4327
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !4308, metadata !672), !dbg !4316
  br i1 %48, label %15, label %49, !dbg !4328

; <label>:49:                                     ; preds = %43
  %50 = add nsw i32 %10, 3, !dbg !4320
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !4308, metadata !672), !dbg !4316
  %51 = zext i32 %50 to i64, !dbg !4323
  %52 = getelementptr inbounds [35 x %struct.numname], [35 x %struct.numname]* @numname_table, i64 0, i64 %51, i32 0, !dbg !4325
  %53 = load i32, i32* %52, align 4, !dbg !4325, !tbaa !4247
  %54 = icmp eq i32 %53, %0, !dbg !4327
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !4308, metadata !672), !dbg !4316
  br i1 %54, label %15, label %55, !dbg !4328

; <label>:55:                                     ; preds = %49
  %56 = add nsw i32 %10, 4, !dbg !4320
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !4308, metadata !672), !dbg !4316
  %57 = zext i32 %56 to i64, !dbg !4323
  %58 = getelementptr inbounds [35 x %struct.numname], [35 x %struct.numname]* @numname_table, i64 0, i64 %57, i32 0, !dbg !4325
  %59 = load i32, i32* %58, align 4, !dbg !4325, !tbaa !4247
  %60 = icmp eq i32 %59, %0, !dbg !4327
  %61 = add nsw i32 %10, 5, !dbg !4320
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !4308, metadata !672), !dbg !4316
  br i1 %60, label %15, label %62, !dbg !4328

; <label>:62:                                     ; preds = %55
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !4308, metadata !672), !dbg !4316
  %63 = icmp ult i32 %61, 35, !dbg !4373
  br i1 %63, label %9, label %20, !dbg !4317, !llvm.loop !4374
}

; Function Attrs: nounwind readnone
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1) #1

; Function Attrs: nounwind
declare i8* @__strcpy_chk(i8*, i8*, i64) local_unnamed_addr #2

declare i32 @__sprintf_chk(i8*, i32, i64, i8*, ...) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define i32 @close_stream(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !4377 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4422, metadata !672), !dbg !4427
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #12, !dbg !4428
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4429, metadata !672), !dbg !4433
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4435
  %4 = load i32, i32* %3, align 8, !dbg !4435, !tbaa !4436
  %5 = and i32 %4, 32, !dbg !4435
  %6 = icmp eq i32 %5, 0, !dbg !4438
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #12, !dbg !4439
  %8 = icmp ne i32 %7, 0, !dbg !4440
  br i1 %6, label %9, label %19, !dbg !4441

; <label>:9:                                      ; preds = %1
  %10 = xor i1 %8, true, !dbg !4443
  %11 = icmp ne i64 %2, 0, !dbg !4443
  %12 = or i1 %11, %10, !dbg !4443
  %13 = sext i1 %8 to i32, !dbg !4443
  br i1 %12, label %22, label %14, !dbg !4443

; <label>:14:                                     ; preds = %9
  %15 = tail call i32* @__errno_location() #1, !dbg !4445
  %16 = load i32, i32* %15, align 4, !dbg !4445, !tbaa !787
  %17 = icmp ne i32 %16, 9, !dbg !4447
  %18 = sext i1 %17 to i32, !dbg !4447
  br label %22, !dbg !4447

; <label>:19:                                     ; preds = %1
  br i1 %8, label %22, label %20, !dbg !4449

; <label>:20:                                     ; preds = %19
  %21 = tail call i32* @__errno_location() #1, !dbg !4451
  store i32 0, i32* %21, align 4, !dbg !4453, !tbaa !787
  br label %22, !dbg !4451

; <label>:22:                                     ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ]
  ret i32 %23, !dbg !4454
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define zeroext i1 @hard_locale(i32) local_unnamed_addr #6 !dbg !4455 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4460, metadata !672), !dbg !4480
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !4461, metadata !672), !dbg !4481
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #12, !dbg !4482
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4462, metadata !672), !dbg !4483
  %3 = icmp eq i8* %2, null, !dbg !4484
  br i1 %3, label %15, label %4, !dbg !4485

; <label>:4:                                      ; preds = %1
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4470, metadata !672), !dbg !4486
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4471, metadata !672), !dbg !4487
  %5 = load i8, i8* %2, align 1, !dbg !4488, !tbaa !1132
  %6 = icmp eq i8 %5, 67, !dbg !4490
  br i1 %6, label %7, label %11, !dbg !4493

; <label>:7:                                      ; preds = %4
  %8 = getelementptr inbounds i8, i8* %2, i64 1, !dbg !4495
  %9 = load i8, i8* %8, align 1, !dbg !4495, !tbaa !1132
  %10 = icmp eq i8 %9, 0, !dbg !4498
  br i1 %10, label %14, label %11, !dbg !4500

; <label>:11:                                     ; preds = %4, %7
  tail call void @llvm.dbg.value(metadata i64 5, i64 0, metadata !4476, metadata !672), !dbg !4502
  %12 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.135, i64 0, i64 0)) #12, !dbg !4503
  %13 = icmp eq i32 %12, 0, !dbg !4505
  br i1 %13, label %14, label %15, !dbg !4507

; <label>:14:                                     ; preds = %11, %7
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !4461, metadata !672), !dbg !4481
  br label %15, !dbg !4509

; <label>:15:                                     ; preds = %1, %11, %14
  %16 = phi i1 [ false, %14 ], [ true, %11 ], [ true, %1 ]
  ret i1 %16, !dbg !4510
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @locale_charset() local_unnamed_addr #6 !dbg !4511 {
  %1 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %1, metadata !4523, metadata !672), !dbg !4597
  %2 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %2, metadata !4590, metadata !672), !dbg !4599
  %3 = tail call i8* @nl_langinfo(i32 14) #12, !dbg !4600
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !4515, metadata !672), !dbg !4601
  %4 = icmp eq i8* %3, null, !dbg !4602
  %5 = select i1 %4, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.138, i64 0, i64 0), i8* %3, !dbg !4604
  tail call void @llvm.dbg.value(metadata i8* %5, i64 0, metadata !4515, metadata !672), !dbg !4601
  %6 = load volatile i8*, i8** @charset_aliases, align 8, !dbg !4605, !tbaa !680
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !4537, metadata !672) #12, !dbg !4606
  %7 = icmp eq i8* %6, null, !dbg !4607
  br i1 %7, label %8, label %127, !dbg !4608

; <label>:8:                                      ; preds = %0
  %9 = tail call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3.139, i64 0, i64 0)) #12, !dbg !4609
  tail call void @llvm.dbg.value(metadata i8* %9, i64 0, metadata !4538, metadata !672) #12, !dbg !4610
  %10 = icmp eq i8* %9, null, !dbg !4611
  br i1 %10, label %14, label %11, !dbg !4613

; <label>:11:                                     ; preds = %8
  %12 = load i8, i8* %9, align 1, !dbg !4614, !tbaa !1132
  %13 = icmp eq i8 %12, 0, !dbg !4616
  br i1 %13, label %14, label %15, !dbg !4617

; <label>:14:                                     ; preds = %11, %8
  br label %15, !dbg !4619

; <label>:15:                                     ; preds = %14, %11
  %16 = phi i8* [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4.140, i64 0, i64 0), %14 ], [ %9, %11 ]
  tail call void @llvm.dbg.value(metadata i8* %16, i64 0, metadata !4538, metadata !672) #12, !dbg !4610
  %17 = tail call i64 @strlen(i8* nonnull %16) #11, !dbg !4620
  tail call void @llvm.dbg.value(metadata i64 %17, i64 0, metadata !4541, metadata !672) #12, !dbg !4621
  tail call void @llvm.dbg.value(metadata i64 13, i64 0, metadata !4543, metadata !672) #12, !dbg !4622
  %18 = icmp eq i64 %17, 0, !dbg !4623
  br i1 %18, label %24, label %19, !dbg !4624

; <label>:19:                                     ; preds = %15
  %20 = add i64 %17, -1, !dbg !4625
  %21 = getelementptr inbounds i8, i8* %16, i64 %20, !dbg !4625
  %22 = load i8, i8* %21, align 1, !dbg !4625, !tbaa !1132
  %23 = icmp ne i8 %22, 47, !dbg !4627
  br label %24

; <label>:24:                                     ; preds = %19, %15
  %25 = phi i1 [ false, %15 ], [ %23, %19 ]
  %26 = zext i1 %25 to i64, !dbg !4628
  %27 = add i64 %17, 14, !dbg !4629
  %28 = add i64 %27, %26, !dbg !4630
  %29 = tail call noalias i8* @malloc(i64 %28) #12, !dbg !4631
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !4540, metadata !672) #12, !dbg !4632
  %30 = icmp eq i8* %29, null, !dbg !4633
  br i1 %30, label %125, label %31, !dbg !4633

; <label>:31:                                     ; preds = %24
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %29, i8* %16, i64 %17, i32 1, i1 false) #12, !dbg !4634
  %32 = getelementptr inbounds i8, i8* %29, i64 %17
  br i1 %25, label %33, label %35, !dbg !4637

; <label>:33:                                     ; preds = %31
  store i8 47, i8* %32, align 1, !dbg !4638, !tbaa !1132
  %34 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !4640
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %34, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.141, i64 0, i64 0), i64 14, i32 1, i1 false) #12, !dbg !4641
  br label %37, !dbg !4642

; <label>:35:                                     ; preds = %31
  %36 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !4640
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.141, i64 0, i64 0), i64 14, i32 1, i1 false) #12, !dbg !4641
  br label %37, !dbg !4642

; <label>:37:                                     ; preds = %35, %33
  %38 = tail call i32 (i8*, i32, ...) @open(i8* nonnull %29, i32 131072) #12, !dbg !4643
  tail call void @llvm.dbg.value(metadata i32 %38, i64 0, metadata !4545, metadata !672) #12, !dbg !4644
  %39 = icmp slt i32 %38, 0, !dbg !4645
  br i1 %39, label %123, label %40, !dbg !4646

; <label>:40:                                     ; preds = %37
  %41 = tail call %struct._IO_FILE* @fdopen(i32 %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.142, i64 0, i64 0)) #12, !dbg !4647
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !4546, metadata !672) #12, !dbg !4648
  %42 = icmp eq %struct._IO_FILE* %41, null, !dbg !4649
  br i1 %42, label %48, label %43, !dbg !4650

; <label>:43:                                     ; preds = %40
  %44 = getelementptr inbounds [51 x i8], [51 x i8]* %1, i64 0, i64 0
  %45 = getelementptr inbounds [51 x i8], [51 x i8]* %2, i64 0, i64 0
  %46 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 1
  %47 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 2
  br label %50, !dbg !4651

; <label>:48:                                     ; preds = %40
  %49 = tail call i32 @close(i32 %38) #12, !dbg !4652
  br label %123, !dbg !4654

; <label>:50:                                     ; preds = %111, %43
  %51 = phi i64 [ %112, %111 ], [ 0, %43 ]
  %52 = phi i8* [ %113, %111 ], [ null, %43 ]
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !4587, metadata !672) #12, !dbg !4651
  call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !4588, metadata !672) #12, !dbg !4655
  call void @llvm.lifetime.start(i64 51, i8* nonnull %44) #12, !dbg !4656
  call void @llvm.lifetime.start(i64 51, i8* nonnull %45) #12, !dbg !4657
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !4658, metadata !672) #12, !dbg !4663
  %53 = load i8*, i8** %46, align 8, !dbg !4665, !tbaa !4666
  %54 = load i8*, i8** %47, align 8, !dbg !4665, !tbaa !4667
  %55 = icmp ult i8* %53, %54, !dbg !4665
  br i1 %55, label %58, label %56, !dbg !4665, !prof !4668

; <label>:56:                                     ; preds = %50
  %57 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #12, !dbg !4669
  br label %62, !dbg !4669

; <label>:58:                                     ; preds = %50
  %59 = getelementptr inbounds i8, i8* %53, i64 1, !dbg !4671
  store i8* %59, i8** %46, align 8, !dbg !4671, !tbaa !4666
  %60 = load i8, i8* %53, align 1, !dbg !4671, !tbaa !1132
  %61 = zext i8 %60 to i32, !dbg !4671
  br label %62, !dbg !4671

; <label>:62:                                     ; preds = %58, %56
  %63 = phi i32 [ %57, %56 ], [ %61, %58 ], !dbg !4673
  call void @llvm.dbg.value(metadata i32 %63, i64 0, metadata !4589, metadata !672) #12, !dbg !4675
  switch i32 %63, label %77 [
    i32 -1, label %115
    i32 32, label %111
    i32 10, label %111
    i32 9, label %111
    i32 35, label %64
  ], !dbg !4676

; <label>:64:                                     ; preds = %62
  br label %65, !dbg !4677

; <label>:65:                                     ; preds = %64, %75
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !4658, metadata !672) #12, !dbg !4677
  %66 = load i8*, i8** %46, align 8, !dbg !4681, !tbaa !4666
  %67 = load i8*, i8** %47, align 8, !dbg !4681, !tbaa !4667
  %68 = icmp ult i8* %66, %67, !dbg !4681
  br i1 %68, label %71, label %69, !dbg !4681, !prof !4668

; <label>:69:                                     ; preds = %65
  %70 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #12, !dbg !4682
  br label %75, !dbg !4682

; <label>:71:                                     ; preds = %65
  %72 = getelementptr inbounds i8, i8* %66, i64 1, !dbg !4683
  store i8* %72, i8** %46, align 8, !dbg !4683, !tbaa !4666
  %73 = load i8, i8* %66, align 1, !dbg !4683, !tbaa !1132
  %74 = zext i8 %73 to i32, !dbg !4683
  br label %75, !dbg !4683

; <label>:75:                                     ; preds = %71, %69
  %76 = phi i32 [ %70, %69 ], [ %74, %71 ], !dbg !4684
  call void @llvm.dbg.value(metadata i32 %76, i64 0, metadata !4589, metadata !672) #12, !dbg !4675
  switch i32 %76, label %65 [
    i32 -1, label %114
    i32 10, label %110
  ], !dbg !4685, !llvm.loop !4687

; <label>:77:                                     ; preds = %62
  %78 = call i32 @ungetc(i32 %63, %struct._IO_FILE* nonnull %41) #12, !dbg !4690
  %79 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* nonnull %41, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6.143, i64 0, i64 0), i8* nonnull %44, i8* nonnull %45) #12, !dbg !4691
  %80 = icmp slt i32 %79, 2, !dbg !4693
  br i1 %80, label %115, label %81, !dbg !4694

; <label>:81:                                     ; preds = %77
  %82 = call i64 @strlen(i8* nonnull %44) #11, !dbg !4695
  call void @llvm.dbg.value(metadata i64 %82, i64 0, metadata !4594, metadata !672) #12, !dbg !4696
  %83 = call i64 @strlen(i8* nonnull %45) #11, !dbg !4697
  call void @llvm.dbg.value(metadata i64 %83, i64 0, metadata !4595, metadata !672) #12, !dbg !4698
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !4596, metadata !672) #12, !dbg !4699
  %84 = icmp eq i64 %51, 0, !dbg !4700
  %85 = add i64 %82, 1
  %86 = add i64 %85, %83
  %87 = add i64 %86, 1
  br i1 %84, label %88, label %91, !dbg !4702

; <label>:88:                                     ; preds = %81
  call void @llvm.dbg.value(metadata i64 %87, i64 0, metadata !4588, metadata !672) #12, !dbg !4655
  %89 = add i64 %86, 2, !dbg !4703
  %90 = call noalias i8* @malloc(i64 %89) #12, !dbg !4705
  call void @llvm.dbg.value(metadata i8* %90, i64 0, metadata !4587, metadata !672) #12, !dbg !4651
  br label %95, !dbg !4706

; <label>:91:                                     ; preds = %81
  %92 = add i64 %87, %51, !dbg !4707
  call void @llvm.dbg.value(metadata i64 %92, i64 0, metadata !4588, metadata !672) #12, !dbg !4655
  %93 = add i64 %92, 1, !dbg !4709
  %94 = call i8* @realloc(i8* %52, i64 %93) #12, !dbg !4710
  call void @llvm.dbg.value(metadata i8* %94, i64 0, metadata !4587, metadata !672) #12, !dbg !4651
  br label %95

; <label>:95:                                     ; preds = %91, %88
  %96 = phi i64 [ %87, %88 ], [ %92, %91 ]
  %97 = phi i8* [ %90, %88 ], [ %94, %91 ]
  call void @llvm.dbg.value(metadata i8* %97, i64 0, metadata !4587, metadata !672) #12, !dbg !4651
  call void @llvm.dbg.value(metadata i64 %96, i64 0, metadata !4588, metadata !672) #12, !dbg !4655
  %98 = icmp eq i8* %97, null, !dbg !4711
  br i1 %98, label %99, label %100, !dbg !4713

; <label>:99:                                     ; preds = %95
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4588, metadata !672) #12, !dbg !4655
  call void @free(i8* %52) #12, !dbg !4714
  br label %116, !dbg !4716

; <label>:100:                                    ; preds = %95
  %101 = getelementptr inbounds i8, i8* %97, i64 %96, !dbg !4717
  %102 = xor i64 %83, -1, !dbg !4718
  %103 = getelementptr inbounds i8, i8* %101, i64 %102, !dbg !4718
  %104 = xor i64 %82, -1, !dbg !4719
  %105 = getelementptr inbounds i8, i8* %103, i64 %104, !dbg !4719
  call void @llvm.dbg.value(metadata i8* %105, i64 0, metadata !4720, metadata !672) #12, !dbg !4724
  call void @llvm.dbg.value(metadata i8* %44, i64 0, metadata !4723, metadata !672) #12, !dbg !4724
  %106 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %105, i1 false) #12, !dbg !4726
  %107 = call i8* @__strcpy_chk(i8* nonnull %105, i8* nonnull %44, i64 %106) #12, !dbg !4727
  call void @llvm.dbg.value(metadata i8* %103, i64 0, metadata !4720, metadata !672) #12, !dbg !4728
  call void @llvm.dbg.value(metadata i8* %45, i64 0, metadata !4723, metadata !672) #12, !dbg !4728
  %108 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %103, i1 false) #12, !dbg !4730
  %109 = call i8* @__strcpy_chk(i8* nonnull %103, i8* nonnull %45, i64 %108) #12, !dbg !4731
  br label %111, !dbg !4732

; <label>:110:                                    ; preds = %75
  br label %111, !dbg !4651

; <label>:111:                                    ; preds = %110, %100, %62, %62, %62
  %112 = phi i64 [ %96, %100 ], [ %51, %62 ], [ %51, %62 ], [ %51, %62 ], [ %51, %110 ]
  %113 = phi i8* [ %97, %100 ], [ %52, %62 ], [ %52, %62 ], [ %52, %62 ], [ %52, %110 ]
  call void @llvm.dbg.value(metadata i8* %113, i64 0, metadata !4587, metadata !672) #12, !dbg !4651
  call void @llvm.dbg.value(metadata i64 %112, i64 0, metadata !4588, metadata !672) #12, !dbg !4655
  call void @llvm.lifetime.end(i64 51, i8* nonnull %45) #12, !dbg !4732
  call void @llvm.lifetime.end(i64 51, i8* nonnull %44) #12, !dbg !4732
  br label %50

; <label>:114:                                    ; preds = %75
  br label %116, !dbg !4651

; <label>:115:                                    ; preds = %62, %77
  br label %116, !dbg !4651

; <label>:116:                                    ; preds = %115, %114, %99
  %117 = phi i64 [ 0, %99 ], [ %51, %114 ], [ %51, %115 ]
  %118 = phi i8* [ null, %99 ], [ %52, %114 ], [ %52, %115 ]
  call void @llvm.dbg.value(metadata i8* %113, i64 0, metadata !4587, metadata !672) #12, !dbg !4651
  call void @llvm.dbg.value(metadata i64 %112, i64 0, metadata !4588, metadata !672) #12, !dbg !4655
  call void @llvm.lifetime.end(i64 51, i8* nonnull %45) #12, !dbg !4732
  call void @llvm.lifetime.end(i64 51, i8* nonnull %44) #12, !dbg !4732
  %119 = call i32 @rpl_fclose(%struct._IO_FILE* nonnull %41) #12, !dbg !4733
  %120 = icmp eq i64 %117, 0, !dbg !4734
  br i1 %120, label %123, label %121, !dbg !4736

; <label>:121:                                    ; preds = %116
  %122 = getelementptr inbounds i8, i8* %118, i64 %117, !dbg !4737
  store i8 0, i8* %122, align 1, !dbg !4739, !tbaa !1132
  call void @llvm.dbg.value(metadata i8* %113, i64 0, metadata !4537, metadata !672) #12, !dbg !4606
  br label %123

; <label>:123:                                    ; preds = %121, %116, %48, %37
  %124 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.138, i64 0, i64 0), %37 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.138, i64 0, i64 0), %48 ], [ %118, %121 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.138, i64 0, i64 0), %116 ]
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !4537, metadata !672) #12, !dbg !4606
  call void @free(i8* %29) #12, !dbg !4740
  br label %125

; <label>:125:                                    ; preds = %123, %24
  %126 = phi i8* [ %124, %123 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.138, i64 0, i64 0), %24 ]
  call void @llvm.dbg.value(metadata i8* %126, i64 0, metadata !4537, metadata !672) #12, !dbg !4606
  store volatile i8* %126, i8** @charset_aliases, align 8, !dbg !4741, !tbaa !680
  br label %127, !dbg !4742

; <label>:127:                                    ; preds = %0, %125
  %128 = phi i8* [ %6, %0 ], [ %126, %125 ]
  call void @llvm.dbg.value(metadata i8* %128, i64 0, metadata !4516, metadata !672), !dbg !4743
  %129 = load i8, i8* %128, align 1, !dbg !4744, !tbaa !1132
  %130 = icmp eq i8 %129, 0, !dbg !4745
  br i1 %130, label %157, label %131, !dbg !4746

; <label>:131:                                    ; preds = %127
  br label %132, !dbg !4748

; <label>:132:                                    ; preds = %131, %147
  %133 = phi i8 [ %154, %147 ], [ %129, %131 ]
  %134 = phi i8* [ %153, %147 ], [ %128, %131 ]
  %135 = call i32 @strcmp(i8* %5, i8* %134) #12, !dbg !4748
  %136 = icmp eq i32 %135, 0, !dbg !4749
  br i1 %136, label %143, label %137, !dbg !4750

; <label>:137:                                    ; preds = %132
  %138 = icmp eq i8 %133, 42, !dbg !4751
  br i1 %138, label %139, label %147, !dbg !4753

; <label>:139:                                    ; preds = %137
  %140 = getelementptr inbounds i8, i8* %134, i64 1, !dbg !4754
  %141 = load i8, i8* %140, align 1, !dbg !4754, !tbaa !1132
  %142 = icmp eq i8 %141, 0, !dbg !4756
  br i1 %142, label %143, label %147, !dbg !4757

; <label>:143:                                    ; preds = %139, %132
  %144 = call i64 @strlen(i8* %134) #11, !dbg !4759
  %145 = getelementptr inbounds i8, i8* %134, i64 %144, !dbg !4761
  %146 = getelementptr inbounds i8, i8* %145, i64 1, !dbg !4762
  call void @llvm.dbg.value(metadata i8* %146, i64 0, metadata !4515, metadata !672), !dbg !4601
  br label %157, !dbg !4763

; <label>:147:                                    ; preds = %137, %139
  %148 = call i64 @strlen(i8* %134) #11, !dbg !4764
  %149 = add i64 %148, 1, !dbg !4765
  %150 = getelementptr inbounds i8, i8* %134, i64 %149, !dbg !4766
  call void @llvm.dbg.value(metadata i8* %150, i64 0, metadata !4516, metadata !672), !dbg !4743
  %151 = call i64 @strlen(i8* %150) #11, !dbg !4767
  %152 = add i64 %151, 1, !dbg !4768
  %153 = getelementptr inbounds i8, i8* %150, i64 %152, !dbg !4769
  call void @llvm.dbg.value(metadata i8* %153, i64 0, metadata !4516, metadata !672), !dbg !4743
  call void @llvm.dbg.value(metadata i8* %153, i64 0, metadata !4516, metadata !672), !dbg !4743
  %154 = load i8, i8* %153, align 1, !dbg !4744, !tbaa !1132
  %155 = icmp eq i8 %154, 0, !dbg !4745
  br i1 %155, label %156, label %132, !dbg !4746, !llvm.loop !4770

; <label>:156:                                    ; preds = %147
  br label %157, !dbg !4601

; <label>:157:                                    ; preds = %156, %127, %143
  %158 = phi i8* [ %146, %143 ], [ %5, %127 ], [ %5, %156 ]
  call void @llvm.dbg.value(metadata i8* %158, i64 0, metadata !4515, metadata !672), !dbg !4601
  %159 = load i8, i8* %158, align 1, !dbg !4773, !tbaa !1132
  %160 = icmp eq i8 %159, 0, !dbg !4775
  %161 = select i1 %160, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.144, i64 0, i64 0), i8* %158, !dbg !4776
  call void @llvm.dbg.value(metadata i8* %161, i64 0, metadata !4515, metadata !672), !dbg !4601
  ret i8* %161, !dbg !4777
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
define i32 @rpl_fclose(%struct._IO_FILE* nonnull) local_unnamed_addr #6 !dbg !4778 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4823, metadata !672), !dbg !4827
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4824, metadata !672), !dbg !4828
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4826, metadata !672), !dbg !4829
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #12, !dbg !4830
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !4825, metadata !672), !dbg !4831
  %3 = icmp slt i32 %2, 0, !dbg !4832
  br i1 %3, label %4, label %6, !dbg !4834

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4835
  br label %24, !dbg !4836

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #12, !dbg !4837
  %8 = icmp eq i32 %7, 0, !dbg !4837
  br i1 %8, label %13, label %9, !dbg !4839

; <label>:9:                                      ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #12, !dbg !4840
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #12, !dbg !4842
  %12 = icmp eq i64 %11, -1, !dbg !4844
  br i1 %12, label %16, label %13, !dbg !4845

; <label>:13:                                     ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #12, !dbg !4846
  %15 = icmp eq i32 %14, 0, !dbg !4846
  br i1 %15, label %16, label %18, !dbg !4847

; <label>:16:                                     ; preds = %13, %9
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !4824, metadata !672), !dbg !4828
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4849
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !4826, metadata !672), !dbg !4829
  br label %24, !dbg !4850

; <label>:18:                                     ; preds = %13
  %19 = tail call i32* @__errno_location() #1, !dbg !4851
  %20 = load i32, i32* %19, align 4, !dbg !4851, !tbaa !787
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !4824, metadata !672), !dbg !4828
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !4824, metadata !672), !dbg !4828
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4849
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !4826, metadata !672), !dbg !4829
  %22 = icmp eq i32 %20, 0, !dbg !4852
  br i1 %22, label %24, label %23, !dbg !4850

; <label>:23:                                     ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !4854, !tbaa !787
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !4826, metadata !672), !dbg !4829
  br label %24, !dbg !4856

; <label>:24:                                     ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ]
  ret i32 %25, !dbg !4857
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
define i32 @rpl_fflush(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !4858 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4903, metadata !672), !dbg !4904
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !4905
  br i1 %2, label %6, label %3, !dbg !4907

; <label>:3:                                      ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #12, !dbg !4908
  %5 = icmp eq i32 %4, 0, !dbg !4908
  br i1 %5, label %6, label %8, !dbg !4910

; <label>:6:                                      ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !4912
  br label %17, !dbg !4913

; <label>:8:                                      ; preds = %3
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4914, metadata !672) #12, !dbg !4919
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4921
  %10 = load i32, i32* %9, align 8, !dbg !4921, !tbaa !4436
  %11 = and i32 %10, 256, !dbg !4923
  %12 = icmp eq i32 %11, 0, !dbg !4923
  br i1 %12, label %15, label %13, !dbg !4924

; <label>:13:                                     ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #12, !dbg !4925
  br label %15, !dbg !4925

; <label>:15:                                     ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !4926
  br label %17, !dbg !4927

; <label>:17:                                     ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ]
  ret i32 %18, !dbg !4928
}

; Function Attrs: nounwind
declare i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull, i64, i32) local_unnamed_addr #6 !dbg !4929 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4975, metadata !672), !dbg !4981
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4976, metadata !672), !dbg !4982
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !4977, metadata !672), !dbg !4983
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !4984
  %5 = load i8*, i8** %4, align 8, !dbg !4984, !tbaa !4667
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !4985
  %7 = load i8*, i8** %6, align 8, !dbg !4985, !tbaa !4666
  %8 = icmp eq i8* %5, %7, !dbg !4986
  br i1 %8, label %9, label %28, !dbg !4987

; <label>:9:                                      ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !4988
  %11 = load i8*, i8** %10, align 8, !dbg !4988, !tbaa !4990
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !4991
  %13 = load i8*, i8** %12, align 8, !dbg !4991, !tbaa !4992
  %14 = icmp eq i8* %11, %13, !dbg !4993
  br i1 %14, label %15, label %28, !dbg !4994

; <label>:15:                                     ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !4995
  %17 = load i8*, i8** %16, align 8, !dbg !4995, !tbaa !4996
  %18 = icmp eq i8* %17, null, !dbg !4997
  br i1 %18, label %19, label %28, !dbg !4998

; <label>:19:                                     ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #12, !dbg !5000
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #12, !dbg !5001
  tail call void @llvm.dbg.value(metadata i64 %21, i64 0, metadata !4978, metadata !672), !dbg !5003
  %22 = icmp eq i64 %21, -1, !dbg !5004
  br i1 %22, label %30, label %23, !dbg !5006

; <label>:23:                                     ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !5007
  %25 = load i32, i32* %24, align 8, !dbg !5008, !tbaa !4436
  %26 = and i32 %25, -17, !dbg !5008
  store i32 %26, i32* %24, align 8, !dbg !5008, !tbaa !4436
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !5009
  store i64 %21, i64* %27, align 8, !dbg !5010, !tbaa !5011
  br label %30, !dbg !5012

; <label>:28:                                     ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !5013
  br label %30, !dbg !5014

; <label>:30:                                     ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ]
  ret i32 %31, !dbg !5015
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
attributes #8 = { nounwind readnone sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { nounwind readonly }
attributes #12 = { nounwind }
attributes #13 = { nounwind readonly sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #14 = { inlinehint nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #15 = { noreturn nounwind }
attributes #16 = { noreturn }
attributes #17 = { cold }

!llvm.dbg.cu = !{!2, !604, !93, !99, !129, !607, !137, !144, !151, !619, !234, !627, !644, !646, !648, !650, !243, !653, !655, !258, !658, !660, !662}
!llvm.ident = !{!664, !664, !664, !664, !664, !664, !664, !664, !664, !664, !664, !664, !664, !664, !664, !664, !664, !664, !664, !664, !664, !664, !664}
!llvm.module.flags = !{!665, !666, !667, !668}

!0 = !DIGlobalVariableExpression(var: !1)
!1 = distinct !DIGlobalVariable(name: "long_options", scope: !2, file: !3, line: 94, type: !81, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !12, globals: !33)
!3 = !DIFile(filename: "src/timeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 87, size: 32, elements: !7)
!6 = !DIFile(filename: "src/system.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!7 = !{!8, !9, !10, !11}
!8 = !DIEnumerator(name: "EXIT_TIMEDOUT", value: 124)
!9 = !DIEnumerator(name: "EXIT_CANCELED", value: 125)
!10 = !DIEnumerator(name: "EXIT_CANNOT_INVOKE", value: 126)
!11 = !DIEnumerator(name: "EXIT_ENOENT", value: 127)
!12 = !{!13, !15, !16, !22, !23, !26, !28, !31}
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !17, line: 84, baseType: !18)
!17 = !DIFile(filename: "/usr/include/signal.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!19 = !DISubroutineType(types: !20)
!20 = !{null, !21}
!21 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!22 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !24, line: 62, baseType: !25)
!24 = !DIFile(filename: "/usr/bin/../lib/clang/4.0.1/include/stddef.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!25 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!27 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!29 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !30)
!30 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!32 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !14)
!33 = !{!34, !36, !42, !45, !48, !50, !0, !79}
!34 = !DIGlobalVariableExpression(var: !35)
!35 = distinct !DIGlobalVariable(name: "timed_out", scope: !2, file: !3, line: 80, type: !21, isLocal: true, isDefinition: true)
!36 = !DIGlobalVariableExpression(var: !37)
!37 = distinct !DIGlobalVariable(name: "monitored_pid", scope: !2, file: !3, line: 82, type: !38, isLocal: true, isDefinition: true)
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !39, line: 98, baseType: !40)
!39 = !DIFile(filename: "/usr/include/sys/types.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pid_t", file: !41, line: 142, baseType: !21)
!41 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!42 = !DIGlobalVariableExpression(var: !43)
!43 = distinct !DIGlobalVariable(name: "kill_after", scope: !2, file: !3, line: 83, type: !44, isLocal: true, isDefinition: true)
!44 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!45 = !DIGlobalVariableExpression(var: !46)
!46 = distinct !DIGlobalVariable(name: "foreground", scope: !2, file: !3, line: 84, type: !47, isLocal: true, isDefinition: true)
!47 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!48 = !DIGlobalVariableExpression(var: !49)
!49 = distinct !DIGlobalVariable(name: "preserve_status", scope: !2, file: !3, line: 85, type: !47, isLocal: true, isDefinition: true)
!50 = !DIGlobalVariableExpression(var: !51)
!51 = distinct !DIGlobalVariable(name: "infomap", scope: !52, file: !6, line: 632, type: !76, isLocal: true, isDefinition: true)
!52 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !6, file: !6, line: 630, type: !53, isLocal: true, isDefinition: true, scopeLine: 631, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !55)
!53 = !DISubroutineType(types: !54)
!54 = !{null, !31}
!55 = !{!56, !57, !58, !65, !67, !68, !69, !72, !73, !75}
!56 = !DILocalVariable(name: "program", arg: 1, scope: !52, file: !6, line: 630, type: !31)
!57 = !DILocalVariable(name: "node", scope: !52, file: !6, line: 642, type: !31)
!58 = !DILocalVariable(name: "map_prog", scope: !52, file: !6, line: 643, type: !59)
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64)
!60 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !61)
!61 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !52, file: !6, line: 632, size: 128, elements: !62)
!62 = !{!63, !64}
!63 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !61, file: !6, line: 632, baseType: !31, size: 64)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !61, file: !6, line: 632, baseType: !31, size: 64, offset: 64)
!65 = !DILocalVariable(name: "__s1_len", scope: !66, file: !6, line: 645, type: !23)
!66 = distinct !DILexicalBlock(scope: !52, file: !6, line: 645, column: 33)
!67 = !DILocalVariable(name: "__s2_len", scope: !66, file: !6, line: 645, type: !23)
!68 = !DILocalVariable(name: "lc_messages", scope: !52, file: !6, line: 655, type: !31)
!69 = !DILocalVariable(name: "__s1_len", scope: !70, file: !6, line: 656, type: !23)
!70 = distinct !DILexicalBlock(scope: !71, file: !6, line: 656, column: 22)
!71 = distinct !DILexicalBlock(scope: !52, file: !6, line: 656, column: 7)
!72 = !DILocalVariable(name: "__s2_len", scope: !70, file: !6, line: 656, type: !23)
!73 = !DILocalVariable(name: "__s2", scope: !74, file: !6, line: 656, type: !28)
!74 = distinct !DILexicalBlock(scope: !70, file: !6, line: 656, column: 22)
!75 = !DILocalVariable(name: "__result", scope: !74, file: !6, line: 656, type: !21)
!76 = !DICompositeType(tag: DW_TAG_array_type, baseType: !60, size: 896, elements: !77)
!77 = !{!78}
!78 = !DISubrange(count: 7)
!79 = !DIGlobalVariableExpression(var: !80)
!80 = distinct !DIGlobalVariable(name: "term_signal", scope: !2, file: !3, line: 81, type: !21, isLocal: true, isDefinition: true)
!81 = !DICompositeType(tag: DW_TAG_array_type, baseType: !82, size: 1792, elements: !77)
!82 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !83)
!83 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !84, line: 104, size: 256, elements: !85)
!84 = !DIFile(filename: "/usr/include/getopt.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!85 = !{!86, !87, !88, !90}
!86 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !83, file: !84, line: 106, baseType: !31, size: 64)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !83, file: !84, line: 109, baseType: !21, size: 32, offset: 64)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !83, file: !84, line: 110, baseType: !89, size: 64, offset: 128)
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !83, file: !84, line: 111, baseType: !21, size: 32, offset: 192)
!91 = !DIGlobalVariableExpression(var: !92)
!92 = distinct !DIGlobalVariable(name: "Version", scope: !93, file: !94, line: 2, type: !31, isLocal: false, isDefinition: true)
!93 = distinct !DICompileUnit(language: DW_LANG_C99, file: !94, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !95, globals: !96)
!94 = !DIFile(filename: "src/version.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!95 = !{}
!96 = !{!91}
!97 = !DIGlobalVariableExpression(var: !98)
!98 = distinct !DIGlobalVariable(name: "c_locale_cache", scope: !99, file: !125, line: 51, type: !126, isLocal: true, isDefinition: true)
!99 = distinct !DICompileUnit(language: DW_LANG_C99, file: !100, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !95, retainedTypes: !101, globals: !124)
!100 = !DIFile(filename: "./lib/c-strtod.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!101 = !{!13, !102}
!102 = !DIDerivedType(tag: DW_TAG_typedef, name: "locale_t", file: !103, line: 42, baseType: !104)
!103 = !DIFile(filename: "/usr/include/xlocale.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!104 = !DIDerivedType(tag: DW_TAG_typedef, name: "__locale_t", file: !103, line: 39, baseType: !105)
!105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 64)
!106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_struct", file: !103, line: 27, size: 1856, elements: !107)
!107 = !{!108, !114, !118, !121, !122}
!108 = !DIDerivedType(tag: DW_TAG_member, name: "__locales", scope: !106, file: !103, line: 30, baseType: !109, size: 832)
!109 = !DICompositeType(tag: DW_TAG_array_type, baseType: !110, size: 832, elements: !112)
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64)
!111 = !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_data", file: !103, line: 30, flags: DIFlagFwdDecl)
!112 = !{!113}
!113 = !DISubrange(count: 13)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "__ctype_b", scope: !106, file: !103, line: 33, baseType: !115, size: 64, offset: 832)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!116 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !117)
!117 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "__ctype_tolower", scope: !106, file: !103, line: 34, baseType: !119, size: 64, offset: 896)
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64)
!120 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !21)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "__ctype_toupper", scope: !106, file: !103, line: 35, baseType: !119, size: 64, offset: 960)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "__names", scope: !106, file: !103, line: 38, baseType: !123, size: 832, offset: 1024)
!123 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 832, elements: !112)
!124 = !{!97}
!125 = !DIFile(filename: "lib/c-strtod.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!126 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !102)
!127 = !DIGlobalVariableExpression(var: !128)
!128 = distinct !DIGlobalVariable(name: "file_name", scope: !129, file: !134, line: 36, type: !31, isLocal: true, isDefinition: true)
!129 = distinct !DICompileUnit(language: DW_LANG_C99, file: !130, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !95, globals: !131)
!130 = !DIFile(filename: "./lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!131 = !{!127, !132}
!132 = !DIGlobalVariableExpression(var: !133)
!133 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !129, file: !134, line: 46, type: !47, isLocal: true, isDefinition: true)
!134 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!135 = !DIGlobalVariableExpression(var: !136)
!136 = distinct !DIGlobalVariable(name: "exit_failure", scope: !137, file: !140, line: 24, type: !141, isLocal: false, isDefinition: true)
!137 = distinct !DICompileUnit(language: DW_LANG_C99, file: !138, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !95, globals: !139)
!138 = !DIFile(filename: "./lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!139 = !{!135}
!140 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!141 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !21)
!142 = !DIGlobalVariableExpression(var: !143)
!143 = distinct !DIGlobalVariable(name: "program_name", scope: !144, file: !148, line: 33, type: !31, isLocal: false, isDefinition: true)
!144 = distinct !DICompileUnit(language: DW_LANG_C99, file: !145, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !95, retainedTypes: !146, globals: !147)
!145 = !DIFile(filename: "./lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!146 = !{!15, !13}
!147 = !{!142}
!148 = !DIFile(filename: "lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!149 = !DIGlobalVariableExpression(var: !150)
!150 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !151, file: !192, line: 77, type: !228, isLocal: false, isDefinition: true)
!151 = distinct !DICompileUnit(language: DW_LANG_C99, file: !152, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !153, retainedTypes: !188, globals: !189)
!152 = !DIFile(filename: "./lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!153 = !{!154, !168, !173}
!154 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !155, line: 32, size: 32, elements: !156)
!155 = !DIFile(filename: "./lib/quotearg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!156 = !{!157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167}
!157 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!158 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!159 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!160 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!161 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!162 = !DIEnumerator(name: "c_quoting_style", value: 5)
!163 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!164 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!165 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!166 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!167 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!168 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !155, line: 242, size: 32, elements: !169)
!169 = !{!170, !171, !172}
!170 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!171 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!172 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!173 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !174, line: 46, size: 32, elements: !175)
!174 = !DIFile(filename: "/usr/include/ctype.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!175 = !{!176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187}
!176 = !DIEnumerator(name: "_ISupper", value: 256)
!177 = !DIEnumerator(name: "_ISlower", value: 512)
!178 = !DIEnumerator(name: "_ISalpha", value: 1024)
!179 = !DIEnumerator(name: "_ISdigit", value: 2048)
!180 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!181 = !DIEnumerator(name: "_ISspace", value: 8192)
!182 = !DIEnumerator(name: "_ISprint", value: 16384)
!183 = !DIEnumerator(name: "_ISgraph", value: 32768)
!184 = !DIEnumerator(name: "_ISblank", value: 1)
!185 = !DIEnumerator(name: "_IScntrl", value: 2)
!186 = !DIEnumerator(name: "_ISpunct", value: 4)
!187 = !DIEnumerator(name: "_ISalnum", value: 8)
!188 = !{!21, !117, !23, !13}
!189 = !{!149, !190, !197, !210, !212, !217, !224, !226}
!190 = !DIGlobalVariableExpression(var: !191)
!191 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !151, file: !192, line: 93, type: !193, isLocal: false, isDefinition: true)
!192 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!193 = !DICompositeType(tag: DW_TAG_array_type, baseType: !194, size: 320, elements: !195)
!194 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !154)
!195 = !{!196}
!196 = !DISubrange(count: 10)
!197 = !DIGlobalVariableExpression(var: !198)
!198 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !151, file: !192, line: 1043, type: !199, isLocal: false, isDefinition: true)
!199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !192, line: 57, size: 448, elements: !200)
!200 = !{!201, !202, !203, !208, !209}
!201 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !199, file: !192, line: 60, baseType: !154, size: 32)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !199, file: !192, line: 63, baseType: !21, size: 32, offset: 32)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !199, file: !192, line: 67, baseType: !204, size: 256, offset: 64)
!204 = !DICompositeType(tag: DW_TAG_array_type, baseType: !205, size: 256, elements: !206)
!205 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!206 = !{!207}
!207 = !DISubrange(count: 8)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !199, file: !192, line: 70, baseType: !31, size: 64, offset: 320)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !199, file: !192, line: 73, baseType: !31, size: 64, offset: 384)
!210 = !DIGlobalVariableExpression(var: !211)
!211 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !151, file: !192, line: 108, type: !199, isLocal: true, isDefinition: true)
!212 = !DIGlobalVariableExpression(var: !213)
!213 = distinct !DIGlobalVariable(name: "slot0", scope: !151, file: !192, line: 834, type: !214, isLocal: true, isDefinition: true)
!214 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 2048, elements: !215)
!215 = !{!216}
!216 = !DISubrange(count: 256)
!217 = !DIGlobalVariableExpression(var: !218)
!218 = distinct !DIGlobalVariable(name: "slotvec", scope: !151, file: !192, line: 837, type: !219, isLocal: true, isDefinition: true)
!219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64)
!220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !192, line: 826, size: 128, elements: !221)
!221 = !{!222, !223}
!222 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !220, file: !192, line: 828, baseType: !23, size: 64)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !220, file: !192, line: 829, baseType: !13, size: 64, offset: 64)
!224 = !DIGlobalVariableExpression(var: !225)
!225 = distinct !DIGlobalVariable(name: "nslots", scope: !151, file: !192, line: 835, type: !21, isLocal: true, isDefinition: true)
!226 = !DIGlobalVariableExpression(var: !227)
!227 = distinct !DIGlobalVariable(name: "slotvec0", scope: !151, file: !192, line: 836, type: !220, isLocal: true, isDefinition: true)
!228 = !DICompositeType(tag: DW_TAG_array_type, baseType: !229, size: 704, elements: !230)
!229 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !31)
!230 = !{!231}
!231 = !DISubrange(count: 11)
!232 = !DIGlobalVariableExpression(var: !233)
!233 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !234, file: !237, line: 26, type: !238, isLocal: false, isDefinition: true)
!234 = distinct !DICompileUnit(language: DW_LANG_C99, file: !235, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !95, globals: !236)
!235 = !DIFile(filename: "./lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!236 = !{!232}
!237 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!238 = !DICompositeType(tag: DW_TAG_array_type, baseType: !32, size: 376, elements: !239)
!239 = !{!240}
!240 = !DISubrange(count: 47)
!241 = !DIGlobalVariableExpression(var: !242)
!242 = distinct !DIGlobalVariable(name: "numname_table", scope: !243, file: !247, line: 41, type: !248, isLocal: true, isDefinition: true)
!243 = distinct !DICompileUnit(language: DW_LANG_C99, file: !244, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !95, retainedTypes: !245, globals: !246)
!244 = !DIFile(filename: "./lib/sig2str.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!245 = !{!205}
!246 = !{!241}
!247 = !DIFile(filename: "lib/sig2str.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!248 = !DICompositeType(tag: DW_TAG_array_type, baseType: !249, size: 3360, elements: !254)
!249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "numname", file: !247, line: 41, size: 96, elements: !250)
!250 = !{!251, !252}
!251 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !249, file: !247, line: 41, baseType: !21, size: 32)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !249, file: !247, line: 41, baseType: !253, size: 64, offset: 32)
!253 = !DICompositeType(tag: DW_TAG_array_type, baseType: !32, size: 64, elements: !206)
!254 = !{!255}
!255 = !DISubrange(count: 35)
!256 = !DIGlobalVariableExpression(var: !257)
!257 = distinct !DIGlobalVariable(name: "charset_aliases", scope: !258, file: !602, line: 120, type: !603, isLocal: true, isDefinition: true)
!258 = distinct !DICompileUnit(language: DW_LANG_C99, file: !259, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !260, retainedTypes: !599, globals: !601)
!259 = !DIFile(filename: "./lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!260 = !{!261}
!261 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !262, line: 41, size: 32, elements: !263)
!262 = !DIFile(filename: "/usr/include/langinfo.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!263 = !{!264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598}
!264 = !DIEnumerator(name: "ABDAY_1", value: 131072)
!265 = !DIEnumerator(name: "ABDAY_2", value: 131073)
!266 = !DIEnumerator(name: "ABDAY_3", value: 131074)
!267 = !DIEnumerator(name: "ABDAY_4", value: 131075)
!268 = !DIEnumerator(name: "ABDAY_5", value: 131076)
!269 = !DIEnumerator(name: "ABDAY_6", value: 131077)
!270 = !DIEnumerator(name: "ABDAY_7", value: 131078)
!271 = !DIEnumerator(name: "DAY_1", value: 131079)
!272 = !DIEnumerator(name: "DAY_2", value: 131080)
!273 = !DIEnumerator(name: "DAY_3", value: 131081)
!274 = !DIEnumerator(name: "DAY_4", value: 131082)
!275 = !DIEnumerator(name: "DAY_5", value: 131083)
!276 = !DIEnumerator(name: "DAY_6", value: 131084)
!277 = !DIEnumerator(name: "DAY_7", value: 131085)
!278 = !DIEnumerator(name: "ABMON_1", value: 131086)
!279 = !DIEnumerator(name: "ABMON_2", value: 131087)
!280 = !DIEnumerator(name: "ABMON_3", value: 131088)
!281 = !DIEnumerator(name: "ABMON_4", value: 131089)
!282 = !DIEnumerator(name: "ABMON_5", value: 131090)
!283 = !DIEnumerator(name: "ABMON_6", value: 131091)
!284 = !DIEnumerator(name: "ABMON_7", value: 131092)
!285 = !DIEnumerator(name: "ABMON_8", value: 131093)
!286 = !DIEnumerator(name: "ABMON_9", value: 131094)
!287 = !DIEnumerator(name: "ABMON_10", value: 131095)
!288 = !DIEnumerator(name: "ABMON_11", value: 131096)
!289 = !DIEnumerator(name: "ABMON_12", value: 131097)
!290 = !DIEnumerator(name: "MON_1", value: 131098)
!291 = !DIEnumerator(name: "MON_2", value: 131099)
!292 = !DIEnumerator(name: "MON_3", value: 131100)
!293 = !DIEnumerator(name: "MON_4", value: 131101)
!294 = !DIEnumerator(name: "MON_5", value: 131102)
!295 = !DIEnumerator(name: "MON_6", value: 131103)
!296 = !DIEnumerator(name: "MON_7", value: 131104)
!297 = !DIEnumerator(name: "MON_8", value: 131105)
!298 = !DIEnumerator(name: "MON_9", value: 131106)
!299 = !DIEnumerator(name: "MON_10", value: 131107)
!300 = !DIEnumerator(name: "MON_11", value: 131108)
!301 = !DIEnumerator(name: "MON_12", value: 131109)
!302 = !DIEnumerator(name: "AM_STR", value: 131110)
!303 = !DIEnumerator(name: "PM_STR", value: 131111)
!304 = !DIEnumerator(name: "D_T_FMT", value: 131112)
!305 = !DIEnumerator(name: "D_FMT", value: 131113)
!306 = !DIEnumerator(name: "T_FMT", value: 131114)
!307 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115)
!308 = !DIEnumerator(name: "ERA", value: 131116)
!309 = !DIEnumerator(name: "__ERA_YEAR", value: 131117)
!310 = !DIEnumerator(name: "ERA_D_FMT", value: 131118)
!311 = !DIEnumerator(name: "ALT_DIGITS", value: 131119)
!312 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120)
!313 = !DIEnumerator(name: "ERA_T_FMT", value: 131121)
!314 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122)
!315 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123)
!316 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124)
!317 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125)
!318 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126)
!319 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127)
!320 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128)
!321 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129)
!322 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130)
!323 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131)
!324 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132)
!325 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133)
!326 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134)
!327 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135)
!328 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136)
!329 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137)
!330 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138)
!331 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139)
!332 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140)
!333 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141)
!334 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142)
!335 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143)
!336 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144)
!337 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145)
!338 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146)
!339 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147)
!340 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148)
!341 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149)
!342 = !DIEnumerator(name: "_NL_WMON_1", value: 131150)
!343 = !DIEnumerator(name: "_NL_WMON_2", value: 131151)
!344 = !DIEnumerator(name: "_NL_WMON_3", value: 131152)
!345 = !DIEnumerator(name: "_NL_WMON_4", value: 131153)
!346 = !DIEnumerator(name: "_NL_WMON_5", value: 131154)
!347 = !DIEnumerator(name: "_NL_WMON_6", value: 131155)
!348 = !DIEnumerator(name: "_NL_WMON_7", value: 131156)
!349 = !DIEnumerator(name: "_NL_WMON_8", value: 131157)
!350 = !DIEnumerator(name: "_NL_WMON_9", value: 131158)
!351 = !DIEnumerator(name: "_NL_WMON_10", value: 131159)
!352 = !DIEnumerator(name: "_NL_WMON_11", value: 131160)
!353 = !DIEnumerator(name: "_NL_WMON_12", value: 131161)
!354 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162)
!355 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163)
!356 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164)
!357 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165)
!358 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166)
!359 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167)
!360 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168)
!361 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169)
!362 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170)
!363 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171)
!364 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172)
!365 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173)
!366 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174)
!367 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175)
!368 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176)
!369 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177)
!370 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178)
!371 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179)
!372 = !DIEnumerator(name: "_DATE_FMT", value: 131180)
!373 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181)
!374 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182)
!375 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131183)
!376 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608)
!377 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609)
!378 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610)
!379 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611)
!380 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612)
!381 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613)
!382 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614)
!383 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615)
!384 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616)
!385 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617)
!386 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618)
!387 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619)
!388 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620)
!389 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621)
!390 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622)
!391 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623)
!392 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624)
!393 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625)
!394 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626)
!395 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627)
!396 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0)
!397 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1)
!398 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2)
!399 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3)
!400 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4)
!401 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5)
!402 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6)
!403 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7)
!404 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8)
!405 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9)
!406 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10)
!407 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11)
!408 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12)
!409 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13)
!410 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14)
!411 = !DIEnumerator(name: "CODESET", value: 14)
!412 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15)
!413 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16)
!414 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17)
!415 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18)
!416 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19)
!417 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20)
!418 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21)
!419 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22)
!420 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23)
!421 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24)
!422 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25)
!423 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26)
!424 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27)
!425 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28)
!426 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29)
!427 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30)
!428 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31)
!429 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32)
!430 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33)
!431 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34)
!432 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35)
!433 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36)
!434 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37)
!435 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38)
!436 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39)
!437 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40)
!438 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41)
!439 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42)
!440 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43)
!441 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44)
!442 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45)
!443 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46)
!444 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47)
!445 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48)
!446 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49)
!447 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50)
!448 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51)
!449 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52)
!450 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53)
!451 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54)
!452 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55)
!453 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56)
!454 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57)
!455 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58)
!456 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59)
!457 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60)
!458 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61)
!459 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62)
!460 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63)
!461 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64)
!462 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65)
!463 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66)
!464 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67)
!465 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68)
!466 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69)
!467 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70)
!468 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71)
!469 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72)
!470 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73)
!471 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74)
!472 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75)
!473 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76)
!474 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77)
!475 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78)
!476 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79)
!477 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80)
!478 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81)
!479 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82)
!480 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83)
!481 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84)
!482 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85)
!483 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86)
!484 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144)
!485 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145)
!486 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146)
!487 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147)
!488 = !DIEnumerator(name: "__MON_GROUPING", value: 262148)
!489 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149)
!490 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150)
!491 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151)
!492 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152)
!493 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153)
!494 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154)
!495 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155)
!496 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156)
!497 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157)
!498 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158)
!499 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159)
!500 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160)
!501 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161)
!502 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162)
!503 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163)
!504 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164)
!505 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165)
!506 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166)
!507 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167)
!508 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168)
!509 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169)
!510 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170)
!511 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171)
!512 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172)
!513 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173)
!514 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174)
!515 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175)
!516 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176)
!517 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177)
!518 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178)
!519 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179)
!520 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180)
!521 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181)
!522 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182)
!523 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183)
!524 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184)
!525 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185)
!526 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186)
!527 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187)
!528 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188)
!529 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189)
!530 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190)
!531 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536)
!532 = !DIEnumerator(name: "RADIXCHAR", value: 65536)
!533 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537)
!534 = !DIEnumerator(name: "THOUSEP", value: 65537)
!535 = !DIEnumerator(name: "__GROUPING", value: 65538)
!536 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539)
!537 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540)
!538 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541)
!539 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542)
!540 = !DIEnumerator(name: "__YESEXPR", value: 327680)
!541 = !DIEnumerator(name: "__NOEXPR", value: 327681)
!542 = !DIEnumerator(name: "__YESSTR", value: 327682)
!543 = !DIEnumerator(name: "__NOSTR", value: 327683)
!544 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684)
!545 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685)
!546 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752)
!547 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753)
!548 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754)
!549 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755)
!550 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288)
!551 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289)
!552 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290)
!553 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291)
!554 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292)
!555 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293)
!556 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294)
!557 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295)
!558 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824)
!559 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825)
!560 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826)
!561 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827)
!562 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828)
!563 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829)
!564 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830)
!565 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831)
!566 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832)
!567 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833)
!568 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834)
!569 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835)
!570 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836)
!571 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837)
!572 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360)
!573 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361)
!574 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362)
!575 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363)
!576 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364)
!577 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365)
!578 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896)
!579 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897)
!580 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898)
!581 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432)
!582 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433)
!583 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434)
!584 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435)
!585 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436)
!586 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437)
!587 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438)
!588 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439)
!589 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440)
!590 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441)
!591 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442)
!592 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443)
!593 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444)
!594 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445)
!595 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446)
!596 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447)
!597 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448)
!598 = !DIEnumerator(name: "_NL_NUM", value: 786449)
!599 = !{!15, !13, !600}
!600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!601 = !{!256}
!602 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!603 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !31)
!604 = distinct !DICompileUnit(language: DW_LANG_C99, file: !605, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !95, retainedTypes: !606)
!605 = !DIFile(filename: "src/operand2sig.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!606 = !{!205, !22, !13}
!607 = distinct !DICompileUnit(language: DW_LANG_C99, file: !608, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !609, retainedTypes: !614)
!608 = !DIFile(filename: "./lib/dtotimespec.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!609 = !{!610}
!610 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !611, line: 35, size: 32, elements: !612)
!611 = !DIFile(filename: "./lib/timespec.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!612 = !{!613}
!613 = !DIEnumerator(name: "TIMESPEC_RESOLUTION", value: 1000000000)
!614 = !{!615}
!615 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !616, line: 8, baseType: !617)
!616 = !DIFile(filename: "/usr/include/bits/types/time_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!617 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !41, line: 148, baseType: !618)
!618 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!619 = distinct !DICompileUnit(language: DW_LANG_C99, file: !620, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !621, retainedTypes: !626)
!620 = !DIFile(filename: "./lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!621 = !{!622}
!622 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !623, line: 41, size: 32, elements: !624)
!623 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!624 = !{!625}
!625 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2017)
!626 = !{!15}
!627 = distinct !DICompileUnit(language: DW_LANG_C99, file: !628, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !629, retainedTypes: !643)
!628 = !DIFile(filename: "./lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!629 = !{!630}
!630 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !632, file: !631, line: 192, size: 32, elements: !641)
!631 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!632 = distinct !DISubprogram(name: "x2nrealloc", scope: !631, file: !631, line: 180, type: !633, isLocal: false, isDefinition: true, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: true, unit: !627, variables: !636)
!633 = !DISubroutineType(types: !634)
!634 = !{!15, !15, !635, !23}
!635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!636 = !{!637, !638, !639, !640}
!637 = !DILocalVariable(name: "p", arg: 1, scope: !632, file: !631, line: 180, type: !15)
!638 = !DILocalVariable(name: "pn", arg: 2, scope: !632, file: !631, line: 180, type: !635)
!639 = !DILocalVariable(name: "s", arg: 3, scope: !632, file: !631, line: 180, type: !23)
!640 = !DILocalVariable(name: "n", scope: !632, file: !631, line: 182, type: !23)
!641 = !{!642}
!642 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!643 = !{!23, !13, !15}
!644 = distinct !DICompileUnit(language: DW_LANG_C99, file: !645, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !95)
!645 = !DIFile(filename: "./lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!646 = distinct !DICompileUnit(language: DW_LANG_C99, file: !647, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !95, retainedTypes: !626)
!647 = !DIFile(filename: "./lib/xstrtod.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!648 = distinct !DICompileUnit(language: DW_LANG_C99, file: !649, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !95, retainedTypes: !626)
!649 = !DIFile(filename: "./lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!650 = distinct !DICompileUnit(language: DW_LANG_C99, file: !651, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !95, retainedTypes: !652)
!651 = !DIFile(filename: "./lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!652 = !{!23}
!653 = distinct !DICompileUnit(language: DW_LANG_C99, file: !654, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !95)
!654 = !DIFile(filename: "./lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!655 = distinct !DICompileUnit(language: DW_LANG_C99, file: !656, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !95, retainedTypes: !657)
!656 = !DIFile(filename: "./lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!657 = !{!23, !26, !28, !31}
!658 = distinct !DICompileUnit(language: DW_LANG_C99, file: !659, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !95)
!659 = !DIFile(filename: "./lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!660 = distinct !DICompileUnit(language: DW_LANG_C99, file: !661, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !95, retainedTypes: !626)
!661 = !DIFile(filename: "./lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!662 = distinct !DICompileUnit(language: DW_LANG_C99, file: !663, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !95, retainedTypes: !626)
!663 = !DIFile(filename: "./lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!664 = !{!"clang version 4.0.1 (tags/RELEASE_401/final)"}
!665 = !{i32 2, !"Dwarf Version", i32 4}
!666 = !{i32 2, !"Debug Info Version", i32 3}
!667 = !{i32 1, !"PIC Level", i32 2}
!668 = !{i32 1, !"PIE Level", i32 2}
!669 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 218, type: !19, isLocal: false, isDefinition: true, scopeLine: 219, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !2, variables: !670)
!670 = !{!671}
!671 = !DILocalVariable(name: "status", arg: 1, scope: !669, file: !3, line: 218, type: !21)
!672 = !DIExpression()
!673 = !DILocation(line: 218, column: 12, scope: !669)
!674 = !DILocation(line: 220, column: 14, scope: !675)
!675 = distinct !DILexicalBlock(scope: !669, file: !3, line: 220, column: 7)
!676 = !DILocation(line: 220, column: 7, scope: !669)
!677 = !DILocation(line: 221, column: 5, scope: !678)
!678 = !DILexicalBlockFile(scope: !679, file: !3, discriminator: 1)
!679 = distinct !DILexicalBlock(scope: !675, file: !3, line: 221, column: 5)
!680 = !{!681, !681, i64 0}
!681 = !{!"any pointer", !682, i64 0}
!682 = !{!"omnipotent char", !683, i64 0}
!683 = !{!"Simple C/C++ TBAA"}
!684 = !DILocation(line: 221, column: 5, scope: !685)
!685 = !DILexicalBlockFile(scope: !679, file: !3, discriminator: 3)
!686 = !DILocation(line: 221, column: 5, scope: !687)
!687 = !DILexicalBlockFile(scope: !679, file: !3, discriminator: 2)
!688 = !DILocation(line: 224, column: 7, scope: !689)
!689 = distinct !DILexicalBlock(scope: !675, file: !3, line: 223, column: 5)
!690 = !DILocation(line: 224, column: 7, scope: !691)
!691 = !DILexicalBlockFile(scope: !689, file: !3, discriminator: 1)
!692 = !DILocation(line: 228, column: 7, scope: !689)
!693 = !DILocation(line: 228, column: 7, scope: !691)
!694 = !DILocation(line: 587, column: 3, scope: !695, inlinedAt: !698)
!695 = distinct !DISubprogram(name: "emit_mandatory_arg_note", scope: !6, file: !6, line: 585, type: !696, isLocal: true, isDefinition: true, scopeLine: 586, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !95)
!696 = !DISubroutineType(types: !697)
!697 = !{null}
!698 = distinct !DILocation(line: 232, column: 7, scope: !689)
!699 = !DILocation(line: 587, column: 3, scope: !700, inlinedAt: !698)
!700 = !DILexicalBlockFile(scope: !695, file: !6, discriminator: 1)
!701 = !DILocation(line: 234, column: 7, scope: !689)
!702 = !DILocation(line: 234, column: 7, scope: !691)
!703 = !DILocation(line: 250, column: 7, scope: !689)
!704 = !DILocation(line: 250, column: 7, scope: !691)
!705 = !DILocation(line: 251, column: 7, scope: !689)
!706 = !DILocation(line: 251, column: 7, scope: !691)
!707 = !DILocation(line: 253, column: 7, scope: !689)
!708 = !DILocation(line: 253, column: 7, scope: !691)
!709 = !DILocation(line: 258, column: 7, scope: !689)
!710 = !DILocation(line: 258, column: 7, scope: !691)
!711 = !DILocation(line: 642, column: 15, scope: !52, inlinedAt: !712)
!712 = distinct !DILocation(line: 265, column: 7, scope: !689)
!713 = !DILocation(line: 651, column: 3, scope: !52, inlinedAt: !712)
!714 = !DILocation(line: 651, column: 3, scope: !715, inlinedAt: !712)
!715 = !DILexicalBlockFile(scope: !52, file: !6, discriminator: 1)
!716 = !DILocation(line: 655, column: 29, scope: !52, inlinedAt: !712)
!717 = !DILocation(line: 655, column: 15, scope: !52, inlinedAt: !712)
!718 = !DILocation(line: 656, column: 7, scope: !71, inlinedAt: !712)
!719 = !DILocation(line: 656, column: 19, scope: !71, inlinedAt: !712)
!720 = !DILocation(line: 656, column: 22, scope: !721, inlinedAt: !712)
!721 = !DILexicalBlockFile(scope: !71, file: !6, discriminator: 16)
!722 = !DILocation(line: 656, column: 7, scope: !723, inlinedAt: !712)
!723 = !DILexicalBlockFile(scope: !52, file: !6, discriminator: 16)
!724 = !DILocation(line: 662, column: 7, scope: !725, inlinedAt: !712)
!725 = distinct !DILexicalBlock(scope: !71, file: !6, line: 657, column: 5)
!726 = !DILocation(line: 662, column: 7, scope: !727, inlinedAt: !712)
!727 = !DILexicalBlockFile(scope: !725, file: !6, discriminator: 1)
!728 = !DILocation(line: 664, column: 5, scope: !725, inlinedAt: !712)
!729 = !DILocation(line: 665, column: 3, scope: !52, inlinedAt: !712)
!730 = !DILocation(line: 665, column: 3, scope: !715, inlinedAt: !712)
!731 = !DILocation(line: 667, column: 3, scope: !52, inlinedAt: !712)
!732 = !DILocation(line: 667, column: 3, scope: !715, inlinedAt: !712)
!733 = !DILocation(line: 267, column: 3, scope: !669)
!734 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 406, type: !735, isLocal: false, isDefinition: true, scopeLine: 407, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !738)
!735 = !DISubroutineType(types: !736)
!736 = !{!21, !21, !737}
!737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!738 = !{!739, !740, !741, !742, !746, !747, !751, !753, !754, !765}
!739 = !DILocalVariable(name: "argc", arg: 1, scope: !734, file: !3, line: 406, type: !21)
!740 = !DILocalVariable(name: "argv", arg: 2, scope: !734, file: !3, line: 406, type: !737)
!741 = !DILocalVariable(name: "timeout", scope: !734, file: !3, line: 408, type: !44)
!742 = !DILocalVariable(name: "signame", scope: !734, file: !3, line: 409, type: !743)
!743 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 152, elements: !744)
!744 = !{!745}
!745 = !DISubrange(count: 19)
!746 = !DILocalVariable(name: "c", scope: !734, file: !3, line: 410, type: !21)
!747 = !DILocalVariable(name: "exit_status", scope: !748, file: !3, line: 489, type: !21)
!748 = distinct !DILexicalBlock(scope: !749, file: !3, line: 481, column: 5)
!749 = distinct !DILexicalBlock(scope: !750, file: !3, line: 480, column: 12)
!750 = distinct !DILexicalBlock(scope: !734, file: !3, line: 475, column: 7)
!751 = !DILocalVariable(name: "wait_result", scope: !752, file: !3, line: 495, type: !38)
!752 = distinct !DILexicalBlock(scope: !749, file: !3, line: 494, column: 5)
!753 = !DILocalVariable(name: "status", scope: !752, file: !3, line: 496, type: !21)
!754 = !DILocalVariable(name: "cleanup_set", scope: !752, file: !3, line: 506, type: !755)
!755 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !756, line: 37, baseType: !757)
!756 = !DIFile(filename: "/usr/include/sys/select.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!757 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigset_t", file: !758, line: 30, baseType: !759)
!758 = !DIFile(filename: "/usr/include/bits/sigset.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!759 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !758, line: 27, size: 1024, elements: !760)
!760 = !{!761}
!761 = !DIDerivedType(tag: DW_TAG_member, name: "__val", scope: !759, file: !758, line: 29, baseType: !762, size: 1024)
!762 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 1024, elements: !763)
!763 = !{!764}
!764 = !DISubrange(count: 16)
!765 = !DILocalVariable(name: "sig", scope: !766, file: !3, line: 524, type: !21)
!766 = distinct !DILexicalBlock(scope: !767, file: !3, line: 523, column: 13)
!767 = distinct !DILexicalBlock(scope: !768, file: !3, line: 522, column: 20)
!768 = distinct !DILexicalBlock(scope: !769, file: !3, line: 520, column: 15)
!769 = distinct !DILexicalBlock(scope: !770, file: !3, line: 519, column: 9)
!770 = distinct !DILexicalBlock(scope: !752, file: !3, line: 512, column: 11)
!771 = !DILocation(line: 406, column: 11, scope: !734)
!772 = !DILocation(line: 406, column: 24, scope: !734)
!773 = !DILocation(line: 409, column: 3, scope: !734)
!774 = !DILocation(line: 409, column: 8, scope: !734)
!775 = !DILocation(line: 413, column: 21, scope: !734)
!776 = !DILocation(line: 413, column: 3, scope: !734)
!777 = !DILocation(line: 414, column: 3, scope: !734)
!778 = !DILocation(line: 415, column: 3, scope: !734)
!779 = !DILocation(line: 416, column: 3, scope: !734)
!780 = !DILocalVariable(name: "status", arg: 1, scope: !781, file: !6, line: 99, type: !21)
!781 = distinct !DISubprogram(name: "initialize_exit_failure", scope: !6, file: !6, line: 99, type: !19, isLocal: true, isDefinition: true, scopeLine: 100, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !782)
!782 = !{!780}
!783 = !DILocation(line: 99, column: 30, scope: !781, inlinedAt: !784)
!784 = distinct !DILocation(line: 418, column: 3, scope: !734)
!785 = !DILocation(line: 102, column: 18, scope: !786, inlinedAt: !784)
!786 = distinct !DILexicalBlock(scope: !781, file: !6, line: 101, column: 7)
!787 = !{!788, !788, i64 0}
!788 = !{!"int", !682, i64 0}
!789 = !DILocation(line: 419, column: 3, scope: !734)
!790 = !DILocation(line: 421, column: 3, scope: !734)
!791 = !DILocation(line: 421, column: 15, scope: !792)
!792 = !DILexicalBlockFile(scope: !734, file: !3, discriminator: 1)
!793 = !DILocation(line: 410, column: 7, scope: !734)
!794 = !DILocation(line: 421, column: 3, scope: !792)
!795 = !DILocation(line: 426, column: 40, scope: !796)
!796 = distinct !DILexicalBlock(scope: !797, file: !3, line: 424, column: 9)
!797 = distinct !DILexicalBlock(scope: !734, file: !3, line: 422, column: 5)
!798 = !DILocation(line: 426, column: 24, scope: !796)
!799 = !DILocation(line: 426, column: 22, scope: !796)
!800 = !{!801, !801, i64 0}
!801 = !{!"double", !682, i64 0}
!802 = !DILocation(line: 427, column: 11, scope: !796)
!803 = !DILocation(line: 430, column: 38, scope: !796)
!804 = !DILocation(line: 430, column: 25, scope: !796)
!805 = !DILocation(line: 430, column: 23, scope: !796)
!806 = !DILocation(line: 431, column: 27, scope: !807)
!807 = distinct !DILexicalBlock(scope: !796, file: !3, line: 431, column: 15)
!808 = !DILocation(line: 431, column: 15, scope: !796)
!809 = distinct !{!809, !790, !810}
!810 = !DILocation(line: 451, column: 5, scope: !734)
!811 = !DILocation(line: 432, column: 13, scope: !807)
!812 = !DILocation(line: 437, column: 11, scope: !796)
!813 = !DILocation(line: 441, column: 11, scope: !796)
!814 = !DILocation(line: 443, column: 9, scope: !796)
!815 = !DILocation(line: 445, column: 9, scope: !796)
!816 = !DILocation(line: 445, column: 9, scope: !817)
!817 = !DILexicalBlockFile(scope: !796, file: !3, discriminator: 1)
!818 = !DILocation(line: 448, column: 11, scope: !796)
!819 = !DILocation(line: 453, column: 14, scope: !820)
!820 = distinct !DILexicalBlock(scope: !734, file: !3, line: 453, column: 7)
!821 = !DILocation(line: 453, column: 12, scope: !820)
!822 = !DILocation(line: 453, column: 21, scope: !820)
!823 = !DILocation(line: 453, column: 7, scope: !734)
!824 = !DILocation(line: 454, column: 5, scope: !820)
!825 = !DILocation(line: 456, column: 40, scope: !734)
!826 = !DILocation(line: 456, column: 29, scope: !734)
!827 = !DILocation(line: 456, column: 13, scope: !734)
!828 = !DILocation(line: 408, column: 10, scope: !734)
!829 = !DILocation(line: 458, column: 11, scope: !734)
!830 = !DILocation(line: 458, column: 8, scope: !734)
!831 = !DILocation(line: 464, column: 7, scope: !734)
!832 = !DILocation(line: 465, column: 5, scope: !833)
!833 = distinct !DILexicalBlock(scope: !734, file: !3, line: 464, column: 7)
!834 = !DILocation(line: 469, column: 20, scope: !734)
!835 = !DILocalVariable(name: "sigterm", arg: 1, scope: !836, file: !3, line: 339, type: !21)
!836 = distinct !DISubprogram(name: "install_cleanup", scope: !3, file: !3, line: 339, type: !19, isLocal: true, isDefinition: true, scopeLine: 340, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !837)
!837 = !{!835, !838}
!838 = !DILocalVariable(name: "sa", scope: !836, file: !3, line: 341, type: !839)
!839 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !840, line: 24, size: 1216, elements: !841)
!840 = !DIFile(filename: "/usr/include/bits/sigaction.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!841 = !{!842, !920, !921, !922}
!842 = !DIDerivedType(tag: DW_TAG_member, name: "__sigaction_handler", scope: !839, file: !840, line: 35, baseType: !843, size: 64)
!843 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !839, file: !840, line: 28, size: 64, elements: !844)
!844 = !{!845, !846}
!845 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !843, file: !840, line: 31, baseType: !16, size: 64)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "sa_sigaction", scope: !843, file: !840, line: 33, baseType: !847, size: 64)
!847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !848, size: 64)
!848 = !DISubroutineType(types: !849)
!849 = !{null, !21, !850, !15}
!850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !851, size: 64)
!851 = !DIDerivedType(tag: DW_TAG_typedef, name: "siginfo_t", file: !852, line: 133, baseType: !853)
!852 = !DIFile(filename: "/usr/include/bits/siginfo.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!853 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !852, line: 62, size: 1024, elements: !854)
!854 = !{!855, !856, !857, !858}
!855 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !853, file: !852, line: 64, baseType: !21, size: 32)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !853, file: !852, line: 65, baseType: !21, size: 32, offset: 32)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !853, file: !852, line: 67, baseType: !21, size: 32, offset: 64)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !853, file: !852, line: 132, baseType: !859, size: 896, offset: 128)
!859 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !853, file: !852, line: 69, size: 896, elements: !860)
!860 = !{!861, !865, !871, !882, !888, !898, !909, !914}
!861 = !DIDerivedType(tag: DW_TAG_member, name: "_pad", scope: !859, file: !852, line: 71, baseType: !862, size: 896)
!862 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 896, elements: !863)
!863 = !{!864}
!864 = !DISubrange(count: 28)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !859, file: !852, line: 78, baseType: !866, size: 64)
!866 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !859, file: !852, line: 74, size: 64, elements: !867)
!867 = !{!868, !869}
!868 = !DIDerivedType(tag: DW_TAG_member, name: "si_pid", scope: !866, file: !852, line: 76, baseType: !40, size: 32)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "si_uid", scope: !866, file: !852, line: 77, baseType: !870, size: 32, offset: 32)
!870 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !41, line: 134, baseType: !205)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !859, file: !852, line: 86, baseType: !872, size: 128)
!872 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !859, file: !852, line: 81, size: 128, elements: !873)
!873 = !{!874, !875, !876}
!874 = !DIDerivedType(tag: DW_TAG_member, name: "si_tid", scope: !872, file: !852, line: 83, baseType: !21, size: 32)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "si_overrun", scope: !872, file: !852, line: 84, baseType: !21, size: 32, offset: 32)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "si_sigval", scope: !872, file: !852, line: 85, baseType: !877, size: 64, offset: 64)
!877 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !852, line: 36, baseType: !878)
!878 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !852, line: 32, size: 64, elements: !879)
!879 = !{!880, !881}
!880 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !878, file: !852, line: 34, baseType: !21, size: 32)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !878, file: !852, line: 35, baseType: !15, size: 64)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !859, file: !852, line: 94, baseType: !883, size: 128)
!883 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !859, file: !852, line: 89, size: 128, elements: !884)
!884 = !{!885, !886, !887}
!885 = !DIDerivedType(tag: DW_TAG_member, name: "si_pid", scope: !883, file: !852, line: 91, baseType: !40, size: 32)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "si_uid", scope: !883, file: !852, line: 92, baseType: !870, size: 32, offset: 32)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "si_sigval", scope: !883, file: !852, line: 93, baseType: !877, size: 64, offset: 64)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !859, file: !852, line: 104, baseType: !889, size: 256)
!889 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !859, file: !852, line: 97, size: 256, elements: !890)
!890 = !{!891, !892, !893, !894, !897}
!891 = !DIDerivedType(tag: DW_TAG_member, name: "si_pid", scope: !889, file: !852, line: 99, baseType: !40, size: 32)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "si_uid", scope: !889, file: !852, line: 100, baseType: !870, size: 32, offset: 32)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "si_status", scope: !889, file: !852, line: 101, baseType: !21, size: 32, offset: 64)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "si_utime", scope: !889, file: !852, line: 102, baseType: !895, size: 64, offset: 128)
!895 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigchld_clock_t", file: !852, line: 58, baseType: !896)
!896 = !DIDerivedType(tag: DW_TAG_typedef, name: "__clock_t", file: !41, line: 144, baseType: !618)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "si_stime", scope: !889, file: !852, line: 103, baseType: !895, size: 64, offset: 192)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !859, file: !852, line: 116, baseType: !899, size: 256)
!899 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !859, file: !852, line: 107, size: 256, elements: !900)
!900 = !{!901, !902, !904}
!901 = !DIDerivedType(tag: DW_TAG_member, name: "si_addr", scope: !899, file: !852, line: 109, baseType: !15, size: 64)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "si_addr_lsb", scope: !899, file: !852, line: 110, baseType: !903, size: 16, offset: 64)
!903 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "si_addr_bnd", scope: !899, file: !852, line: 115, baseType: !905, size: 128, offset: 128)
!905 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !899, file: !852, line: 111, size: 128, elements: !906)
!906 = !{!907, !908}
!907 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !905, file: !852, line: 113, baseType: !15, size: 64)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !905, file: !852, line: 114, baseType: !15, size: 64, offset: 64)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !859, file: !852, line: 123, baseType: !910, size: 128)
!910 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !859, file: !852, line: 119, size: 128, elements: !911)
!911 = !{!912, !913}
!912 = !DIDerivedType(tag: DW_TAG_member, name: "si_band", scope: !910, file: !852, line: 121, baseType: !618, size: 64)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "si_fd", scope: !910, file: !852, line: 122, baseType: !21, size: 32, offset: 64)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !859, file: !852, line: 131, baseType: !915, size: 128)
!915 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !859, file: !852, line: 126, size: 128, elements: !916)
!916 = !{!917, !918, !919}
!917 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !915, file: !852, line: 128, baseType: !15, size: 64)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !915, file: !852, line: 129, baseType: !21, size: 32, offset: 64)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !915, file: !852, line: 130, baseType: !205, size: 32, offset: 96)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !839, file: !840, line: 43, baseType: !757, size: 1024, offset: 64)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !839, file: !840, line: 46, baseType: !21, size: 32, offset: 1088)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !839, file: !840, line: 49, baseType: !923, size: 64, offset: 1152)
!923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !696, size: 64)
!924 = !DILocation(line: 339, column: 22, scope: !836, inlinedAt: !925)
!925 = distinct !DILocation(line: 469, column: 3, scope: !734)
!926 = !DILocation(line: 341, column: 3, scope: !836, inlinedAt: !925)
!927 = !DILocation(line: 342, column: 20, scope: !836, inlinedAt: !925)
!928 = !DILocation(line: 342, column: 3, scope: !836, inlinedAt: !925)
!929 = !DILocation(line: 343, column: 6, scope: !836, inlinedAt: !925)
!930 = !DILocation(line: 343, column: 17, scope: !836, inlinedAt: !925)
!931 = !DILocation(line: 344, column: 6, scope: !836, inlinedAt: !925)
!932 = !DILocation(line: 344, column: 15, scope: !836, inlinedAt: !925)
!933 = !{!934, !788, i64 136}
!934 = !{!"sigaction", !682, i64 0, !935, i64 8, !788, i64 136, !681, i64 144}
!935 = !{!"", !682, i64 0}
!936 = !DIExpression(DW_OP_deref)
!937 = !DILocation(line: 341, column: 20, scope: !836, inlinedAt: !925)
!938 = !DILocation(line: 347, column: 3, scope: !836, inlinedAt: !925)
!939 = !DILocation(line: 348, column: 3, scope: !836, inlinedAt: !925)
!940 = !DILocation(line: 349, column: 3, scope: !836, inlinedAt: !925)
!941 = !DILocation(line: 350, column: 3, scope: !836, inlinedAt: !925)
!942 = !DILocation(line: 351, column: 3, scope: !836, inlinedAt: !925)
!943 = !DILocation(line: 352, column: 3, scope: !836, inlinedAt: !925)
!944 = !DILocation(line: 353, column: 1, scope: !836, inlinedAt: !925)
!945 = !DILocation(line: 470, column: 3, scope: !734)
!946 = !DILocation(line: 471, column: 3, scope: !734)
!947 = !DILocation(line: 329, column: 3, scope: !948, inlinedAt: !951)
!948 = distinct !DISubprogram(name: "install_sigchld", scope: !3, file: !3, line: 327, type: !696, isLocal: true, isDefinition: true, scopeLine: 328, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !949)
!949 = !{!950}
!950 = !DILocalVariable(name: "sa", scope: !948, file: !3, line: 329, type: !839)
!951 = distinct !DILocation(line: 472, column: 3, scope: !734)
!952 = !DILocation(line: 330, column: 20, scope: !948, inlinedAt: !951)
!953 = !DILocation(line: 330, column: 3, scope: !948, inlinedAt: !951)
!954 = !DILocation(line: 331, column: 6, scope: !948, inlinedAt: !951)
!955 = !DILocation(line: 331, column: 17, scope: !948, inlinedAt: !951)
!956 = !DILocation(line: 332, column: 6, scope: !948, inlinedAt: !951)
!957 = !DILocation(line: 332, column: 15, scope: !948, inlinedAt: !951)
!958 = !DILocation(line: 329, column: 20, scope: !948, inlinedAt: !951)
!959 = !DILocation(line: 335, column: 3, scope: !948, inlinedAt: !951)
!960 = !DILocation(line: 336, column: 1, scope: !948, inlinedAt: !951)
!961 = !DILocation(line: 474, column: 19, scope: !734)
!962 = !DILocation(line: 474, column: 17, scope: !734)
!963 = !DILocation(line: 475, column: 7, scope: !734)
!964 = !DILocation(line: 477, column: 17, scope: !965)
!965 = distinct !DILexicalBlock(scope: !750, file: !3, line: 476, column: 5)
!966 = !DILocation(line: 477, column: 24, scope: !967)
!967 = !DILexicalBlockFile(scope: !965, file: !3, discriminator: 1)
!968 = !DILocation(line: 477, column: 7, scope: !969)
!969 = !DILexicalBlockFile(scope: !965, file: !3, discriminator: 2)
!970 = !DILocation(line: 478, column: 7, scope: !965)
!971 = !DILocation(line: 483, column: 7, scope: !748)
!972 = !DILocation(line: 484, column: 7, scope: !748)
!973 = !DILocation(line: 486, column: 15, scope: !748)
!974 = !DILocation(line: 486, column: 7, scope: !748)
!975 = !DILocation(line: 489, column: 25, scope: !748)
!976 = !DILocation(line: 489, column: 31, scope: !748)
!977 = !DILocation(line: 489, column: 11, scope: !748)
!978 = !DILocation(line: 490, column: 24, scope: !979)
!979 = !DILexicalBlockFile(scope: !748, file: !3, discriminator: 1)
!980 = !DILocation(line: 490, column: 62, scope: !748)
!981 = !DILocation(line: 490, column: 55, scope: !982)
!982 = !DILexicalBlockFile(scope: !748, file: !3, discriminator: 2)
!983 = !DILocation(line: 490, column: 7, scope: !984)
!984 = !DILexicalBlockFile(scope: !748, file: !3, discriminator: 3)
!985 = !DILocation(line: 496, column: 7, scope: !752)
!986 = !DILocation(line: 500, column: 7, scope: !752)
!987 = !DILocation(line: 502, column: 7, scope: !752)
!988 = !DILocation(line: 506, column: 7, scope: !752)
!989 = !DILocation(line: 507, column: 22, scope: !752)
!990 = !DILocation(line: 506, column: 16, scope: !752)
!991 = !DILocalVariable(name: "sigterm", arg: 1, scope: !992, file: !3, line: 358, type: !21)
!992 = distinct !DISubprogram(name: "block_cleanup", scope: !3, file: !3, line: 358, type: !993, isLocal: true, isDefinition: true, scopeLine: 359, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !996)
!993 = !DISubroutineType(types: !994)
!994 = !{null, !21, !995}
!995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !755, size: 64)
!996 = !{!991, !997, !998}
!997 = !DILocalVariable(name: "old_set", arg: 2, scope: !992, file: !3, line: 358, type: !995)
!998 = !DILocalVariable(name: "block_set", scope: !992, file: !3, line: 360, type: !755)
!999 = !DILocation(line: 358, column: 20, scope: !992, inlinedAt: !1000)
!1000 = distinct !DILocation(line: 507, column: 7, scope: !752)
!1001 = !DILocation(line: 358, column: 39, scope: !992, inlinedAt: !1000)
!1002 = !DILocation(line: 360, column: 3, scope: !992, inlinedAt: !1000)
!1003 = !DILocation(line: 360, column: 12, scope: !992, inlinedAt: !1000)
!1004 = !DILocation(line: 361, column: 3, scope: !992, inlinedAt: !1000)
!1005 = !DILocation(line: 362, column: 3, scope: !992, inlinedAt: !1000)
!1006 = !DILocation(line: 363, column: 3, scope: !992, inlinedAt: !1000)
!1007 = !DILocation(line: 364, column: 3, scope: !992, inlinedAt: !1000)
!1008 = !DILocation(line: 365, column: 3, scope: !992, inlinedAt: !1000)
!1009 = !DILocation(line: 366, column: 3, scope: !992, inlinedAt: !1000)
!1010 = !DILocation(line: 367, column: 3, scope: !992, inlinedAt: !1000)
!1011 = !DILocation(line: 368, column: 7, scope: !1012, inlinedAt: !1000)
!1012 = distinct !DILexicalBlock(scope: !992, file: !3, line: 368, column: 7)
!1013 = !DILocation(line: 368, column: 52, scope: !1012, inlinedAt: !1000)
!1014 = !DILocation(line: 368, column: 7, scope: !992, inlinedAt: !1000)
!1015 = !DILocation(line: 369, column: 15, scope: !1012, inlinedAt: !1000)
!1016 = !DILocation(line: 369, column: 22, scope: !1017, inlinedAt: !1000)
!1017 = !DILexicalBlockFile(scope: !1012, file: !3, discriminator: 1)
!1018 = !DILocation(line: 369, column: 5, scope: !1019, inlinedAt: !1000)
!1019 = !DILexicalBlockFile(scope: !1012, file: !3, discriminator: 2)
!1020 = !DILocation(line: 369, column: 5, scope: !1012, inlinedAt: !1000)
!1021 = !DILocation(line: 370, column: 1, scope: !992, inlinedAt: !1000)
!1022 = !DILocation(line: 509, column: 38, scope: !1023)
!1023 = !DILexicalBlockFile(scope: !752, file: !3, discriminator: 1)
!1024 = !DILocation(line: 496, column: 11, scope: !752)
!1025 = !DILocation(line: 509, column: 29, scope: !1023)
!1026 = !DILocation(line: 495, column: 13, scope: !752)
!1027 = !DILocation(line: 509, column: 72, scope: !1023)
!1028 = !DILocation(line: 509, column: 7, scope: !1023)
!1029 = !DILocation(line: 510, column: 9, scope: !752)
!1030 = distinct !{!1030, !1031, !1032}
!1031 = !DILocation(line: 509, column: 7, scope: !752)
!1032 = !DILocation(line: 510, column: 33, scope: !752)
!1033 = !DILocation(line: 512, column: 23, scope: !770)
!1034 = !DILocation(line: 512, column: 11, scope: !752)
!1035 = !DILocation(line: 515, column: 21, scope: !1036)
!1036 = distinct !DILexicalBlock(scope: !770, file: !3, line: 513, column: 9)
!1037 = !DILocation(line: 515, column: 28, scope: !1038)
!1038 = !DILexicalBlockFile(scope: !1036, file: !3, discriminator: 1)
!1039 = !DILocation(line: 515, column: 11, scope: !1040)
!1040 = !DILexicalBlockFile(scope: !1036, file: !3, discriminator: 2)
!1041 = !DILocation(line: 516, column: 18, scope: !1036)
!1042 = !DILocation(line: 517, column: 9, scope: !1036)
!1043 = !DILocation(line: 520, column: 15, scope: !768)
!1044 = !DILocation(line: 520, column: 15, scope: !769)
!1045 = !DILocation(line: 521, column: 22, scope: !768)
!1046 = !DILocation(line: 521, column: 20, scope: !768)
!1047 = !DILocation(line: 521, column: 13, scope: !768)
!1048 = !DILocation(line: 522, column: 20, scope: !767)
!1049 = !DILocation(line: 522, column: 20, scope: !768)
!1050 = !DILocation(line: 524, column: 19, scope: !766)
!1051 = !DILocation(line: 525, column: 19, scope: !1052)
!1052 = distinct !DILexicalBlock(scope: !766, file: !3, line: 525, column: 19)
!1053 = !DILocation(line: 525, column: 19, scope: !766)
!1054 = !DILocation(line: 526, column: 30, scope: !1052)
!1055 = !DILocation(line: 526, column: 17, scope: !1056)
!1056 = !DILexicalBlockFile(scope: !1052, file: !3, discriminator: 1)
!1057 = !DILocation(line: 526, column: 17, scope: !1052)
!1058 = !DILocation(line: 527, column: 30, scope: !1059)
!1059 = distinct !DILexicalBlock(scope: !766, file: !3, line: 527, column: 19)
!1060 = !DILocation(line: 388, column: 7, scope: !1061, inlinedAt: !1065)
!1061 = distinct !DILexicalBlock(scope: !1062, file: !3, line: 388, column: 7)
!1062 = distinct !DISubprogram(name: "disable_core_dumps", scope: !3, file: !3, line: 385, type: !1063, isLocal: true, isDefinition: true, scopeLine: 386, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !95)
!1063 = !DISubroutineType(types: !1064)
!1064 = !{!47}
!1065 = distinct !DILocation(line: 527, column: 33, scope: !1066)
!1066 = !DILexicalBlockFile(scope: !1059, file: !3, discriminator: 1)
!1067 = !DILocation(line: 388, column: 34, scope: !1061, inlinedAt: !1065)
!1068 = !DILocation(line: 388, column: 7, scope: !1062, inlinedAt: !1065)
!1069 = !DILocation(line: 401, column: 13, scope: !1062, inlinedAt: !1065)
!1070 = !DILocation(line: 401, column: 20, scope: !1071, inlinedAt: !1065)
!1071 = !DILexicalBlockFile(scope: !1062, file: !3, discriminator: 1)
!1072 = !DILocation(line: 401, column: 3, scope: !1073, inlinedAt: !1065)
!1073 = !DILexicalBlockFile(scope: !1062, file: !3, discriminator: 2)
!1074 = !DILocation(line: 527, column: 19, scope: !1075)
!1075 = !DILexicalBlockFile(scope: !766, file: !3, discriminator: 1)
!1076 = !DILocation(line: 530, column: 19, scope: !1077)
!1077 = distinct !DILexicalBlock(scope: !1059, file: !3, line: 528, column: 17)
!1078 = !DILocation(line: 531, column: 19, scope: !1077)
!1079 = !DILocation(line: 532, column: 19, scope: !1077)
!1080 = !DILocation(line: 533, column: 17, scope: !1077)
!1081 = !DILocation(line: 534, column: 28, scope: !766)
!1082 = !DILocation(line: 534, column: 22, scope: !766)
!1083 = !DILocation(line: 535, column: 13, scope: !766)
!1084 = !DILocation(line: 539, column: 28, scope: !1085)
!1085 = distinct !DILexicalBlock(scope: !767, file: !3, line: 537, column: 13)
!1086 = !DILocation(line: 539, column: 67, scope: !1085)
!1087 = !DILocation(line: 539, column: 15, scope: !1088)
!1088 = !DILexicalBlockFile(scope: !1085, file: !3, discriminator: 1)
!1089 = !DILocation(line: 540, column: 22, scope: !1085)
!1090 = !DILocation(line: 544, column: 21, scope: !1091)
!1091 = distinct !DILexicalBlock(scope: !752, file: !3, line: 544, column: 11)
!1092 = !DILocation(line: 544, column: 11, scope: !1023)
!1093 = !DILocation(line: 545, column: 16, scope: !1091)
!1094 = !DILocation(line: 545, column: 9, scope: !1091)
!1095 = !DILocation(line: 546, column: 14, scope: !752)
!1096 = !DILocation(line: 547, column: 5, scope: !749)
!1097 = !DILocation(line: 548, column: 1, scope: !734)
!1098 = distinct !DISubprogram(name: "parse_duration", scope: !3, file: !3, line: 306, type: !1099, isLocal: true, isDefinition: true, scopeLine: 307, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1101)
!1099 = !DISubroutineType(types: !1100)
!1100 = !{!44, !31}
!1101 = !{!1102, !1103, !1104}
!1102 = !DILocalVariable(name: "str", arg: 1, scope: !1098, file: !3, line: 306, type: !31)
!1103 = !DILocalVariable(name: "duration", scope: !1098, file: !3, line: 308, type: !44)
!1104 = !DILocalVariable(name: "ep", scope: !1098, file: !3, line: 309, type: !31)
!1105 = !DILocation(line: 306, column: 29, scope: !1098)
!1106 = !DILocation(line: 308, column: 3, scope: !1098)
!1107 = !DILocation(line: 309, column: 3, scope: !1098)
!1108 = !DILocation(line: 308, column: 10, scope: !1098)
!1109 = !DILocation(line: 309, column: 15, scope: !1098)
!1110 = !DILocation(line: 311, column: 10, scope: !1111)
!1111 = distinct !DILexicalBlock(scope: !1098, file: !3, line: 311, column: 7)
!1112 = !DILocation(line: 311, column: 50, scope: !1111)
!1113 = !DILocation(line: 311, column: 53, scope: !1114)
!1114 = !DILexicalBlockFile(scope: !1111, file: !3, discriminator: 1)
!1115 = !DILocation(line: 311, column: 59, scope: !1114)
!1116 = !DILocation(line: 313, column: 18, scope: !1114)
!1117 = !DILocation(line: 313, column: 15, scope: !1114)
!1118 = !DILocation(line: 313, column: 7, scope: !1111)
!1119 = !DILocation(line: 315, column: 7, scope: !1111)
!1120 = !DILocation(line: 300, column: 6, scope: !1121, inlinedAt: !1129)
!1121 = distinct !DISubprogram(name: "apply_time_suffix", scope: !3, file: !3, line: 277, type: !1122, isLocal: true, isDefinition: true, scopeLine: 278, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1125)
!1122 = !DISubroutineType(types: !1123)
!1123 = !{!47, !1124, !14}
!1124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!1125 = !{!1126, !1127, !1128}
!1126 = !DILocalVariable(name: "x", arg: 1, scope: !1121, file: !3, line: 277, type: !1124)
!1127 = !DILocalVariable(name: "suffix_char", arg: 2, scope: !1121, file: !3, line: 277, type: !14)
!1128 = !DILocalVariable(name: "multiplier", scope: !1121, file: !3, line: 279, type: !21)
!1129 = distinct !DILocation(line: 317, column: 11, scope: !1114)
!1130 = !DILocation(line: 315, column: 12, scope: !1114)
!1131 = !DILocation(line: 315, column: 11, scope: !1114)
!1132 = !{!682, !682, i64 0}
!1133 = !DILocation(line: 315, column: 15, scope: !1114)
!1134 = !DILocation(line: 315, column: 23, scope: !1135)
!1135 = !DILexicalBlockFile(scope: !1111, file: !3, discriminator: 2)
!1136 = !DILocation(line: 315, column: 18, scope: !1135)
!1137 = !DILocation(line: 317, column: 7, scope: !1111)
!1138 = !DILocation(line: 277, column: 28, scope: !1121, inlinedAt: !1129)
!1139 = !DILocation(line: 277, column: 36, scope: !1121, inlinedAt: !1129)
!1140 = !DILocation(line: 281, column: 11, scope: !1121, inlinedAt: !1129)
!1141 = !DILocation(line: 281, column: 3, scope: !1121, inlinedAt: !1129)
!1142 = !DILocation(line: 279, column: 7, scope: !1121, inlinedAt: !1129)
!1143 = !DILocation(line: 289, column: 7, scope: !1144, inlinedAt: !1129)
!1144 = distinct !DILexicalBlock(scope: !1121, file: !3, line: 282, column: 5)
!1145 = !DILocation(line: 292, column: 7, scope: !1144, inlinedAt: !1129)
!1146 = !DILocation(line: 295, column: 7, scope: !1144, inlinedAt: !1129)
!1147 = !DILocation(line: 319, column: 20, scope: !1148)
!1148 = distinct !DILexicalBlock(scope: !1111, file: !3, line: 318, column: 5)
!1149 = !DILocation(line: 319, column: 51, scope: !1150)
!1150 = !DILexicalBlockFile(scope: !1148, file: !3, discriminator: 1)
!1151 = !DILocation(line: 319, column: 7, scope: !1152)
!1152 = !DILexicalBlockFile(scope: !1148, file: !3, discriminator: 2)
!1153 = !DILocation(line: 320, column: 7, scope: !1148)
!1154 = !DILocation(line: 324, column: 1, scope: !1098)
!1155 = !DILocation(line: 323, column: 3, scope: !1098)
!1156 = distinct !DISubprogram(name: "cleanup", scope: !3, file: !3, line: 177, type: !19, isLocal: true, isDefinition: true, scopeLine: 178, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1157)
!1157 = !{!1158, !1159}
!1158 = !DILocalVariable(name: "sig", arg: 1, scope: !1156, file: !3, line: 177, type: !21)
!1159 = !DILocalVariable(name: "saved_errno", scope: !1160, file: !3, line: 188, type: !21)
!1160 = distinct !DILexicalBlock(scope: !1161, file: !3, line: 187, column: 9)
!1161 = distinct !DILexicalBlock(scope: !1162, file: !3, line: 186, column: 11)
!1162 = distinct !DILexicalBlock(scope: !1163, file: !3, line: 185, column: 5)
!1163 = distinct !DILexicalBlock(scope: !1156, file: !3, line: 184, column: 7)
!1164 = !DILocation(line: 177, column: 14, scope: !1156)
!1165 = !DILocation(line: 179, column: 11, scope: !1166)
!1166 = distinct !DILexicalBlock(scope: !1156, file: !3, line: 179, column: 7)
!1167 = !DILocation(line: 179, column: 7, scope: !1156)
!1168 = !DILocation(line: 182, column: 13, scope: !1169)
!1169 = distinct !DILexicalBlock(scope: !1166, file: !3, line: 180, column: 5)
!1170 = !DILocation(line: 183, column: 5, scope: !1169)
!1171 = !DILocation(line: 184, column: 7, scope: !1163)
!1172 = !DILocation(line: 184, column: 7, scope: !1156)
!1173 = !DILocation(line: 186, column: 11, scope: !1161)
!1174 = !DILocation(line: 186, column: 11, scope: !1162)
!1175 = !DILocation(line: 188, column: 29, scope: !1160)
!1176 = !DILocation(line: 188, column: 15, scope: !1160)
!1177 = !DILocation(line: 190, column: 23, scope: !1160)
!1178 = !DILocation(line: 191, column: 11, scope: !1160)
!1179 = !DILocation(line: 192, column: 22, scope: !1160)
!1180 = !DILocation(line: 193, column: 17, scope: !1160)
!1181 = !DILocation(line: 163, column: 13, scope: !1182, inlinedAt: !1189)
!1182 = distinct !DILexicalBlock(scope: !1183, file: !3, line: 163, column: 7)
!1183 = distinct !DISubprogram(name: "send_sig", scope: !3, file: !3, line: 154, type: !1184, isLocal: true, isDefinition: true, scopeLine: 155, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1186)
!1184 = !DISubroutineType(types: !1185)
!1185 = !{!21, !38, !21}
!1186 = !{!1187, !1188}
!1187 = !DILocalVariable(name: "where", arg: 1, scope: !1183, file: !3, line: 154, type: !38)
!1188 = !DILocalVariable(name: "sig", arg: 2, scope: !1183, file: !3, line: 154, type: !21)
!1189 = distinct !DILocation(line: 199, column: 7, scope: !1162)
!1190 = !DILocation(line: 163, column: 7, scope: !1183, inlinedAt: !1189)
!1191 = !DILocation(line: 164, column: 5, scope: !1182, inlinedAt: !1189)
!1192 = !DILocation(line: 165, column: 10, scope: !1183, inlinedAt: !1189)
!1193 = !DILocation(line: 203, column: 11, scope: !1162)
!1194 = !DILocation(line: 164, column: 5, scope: !1182, inlinedAt: !1195)
!1195 = distinct !DILocation(line: 205, column: 11, scope: !1196)
!1196 = distinct !DILexicalBlock(scope: !1197, file: !3, line: 204, column: 9)
!1197 = distinct !DILexicalBlock(scope: !1162, file: !3, line: 203, column: 11)
!1198 = !DILocation(line: 165, column: 10, scope: !1183, inlinedAt: !1195)
!1199 = !DILocation(line: 206, column: 30, scope: !1200)
!1200 = distinct !DILexicalBlock(scope: !1196, file: !3, line: 206, column: 15)
!1201 = !DILocation(line: 208, column: 25, scope: !1202)
!1202 = distinct !DILexicalBlock(scope: !1200, file: !3, line: 207, column: 13)
!1203 = !DILocation(line: 163, column: 13, scope: !1182, inlinedAt: !1204)
!1204 = distinct !DILocation(line: 208, column: 15, scope: !1202)
!1205 = !DILocation(line: 163, column: 7, scope: !1183, inlinedAt: !1204)
!1206 = !DILocation(line: 164, column: 5, scope: !1182, inlinedAt: !1204)
!1207 = !DILocation(line: 165, column: 10, scope: !1183, inlinedAt: !1204)
!1208 = !DILocation(line: 164, column: 5, scope: !1182, inlinedAt: !1209)
!1209 = distinct !DILocation(line: 209, column: 15, scope: !1202)
!1210 = !DILocation(line: 165, column: 10, scope: !1183, inlinedAt: !1209)
!1211 = !DILocation(line: 210, column: 13, scope: !1202)
!1212 = !DILocation(line: 214, column: 16, scope: !1163)
!1213 = !DILocation(line: 214, column: 5, scope: !1163)
!1214 = !DILocation(line: 215, column: 1, scope: !1156)
!1215 = distinct !DISubprogram(name: "chld", scope: !3, file: !3, line: 171, type: !19, isLocal: true, isDefinition: true, scopeLine: 172, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1216)
!1216 = !{!1217}
!1217 = !DILocalVariable(name: "sig", arg: 1, scope: !1215, file: !3, line: 171, type: !21)
!1218 = !DILocation(line: 171, column: 11, scope: !1215)
!1219 = !DILocation(line: 173, column: 1, scope: !1215)
!1220 = distinct !DISubprogram(name: "unblock_signal", scope: !3, file: !3, line: 373, type: !19, isLocal: true, isDefinition: true, scopeLine: 374, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1221)
!1221 = !{!1222, !1223}
!1222 = !DILocalVariable(name: "sig", arg: 1, scope: !1220, file: !3, line: 373, type: !21)
!1223 = !DILocalVariable(name: "unblock_set", scope: !1220, file: !3, line: 375, type: !755)
!1224 = !DILocation(line: 373, column: 21, scope: !1220)
!1225 = !DILocation(line: 375, column: 3, scope: !1220)
!1226 = !DILocation(line: 375, column: 12, scope: !1220)
!1227 = !DILocation(line: 376, column: 3, scope: !1220)
!1228 = !DILocation(line: 377, column: 3, scope: !1220)
!1229 = !DILocation(line: 378, column: 7, scope: !1230)
!1230 = distinct !DILexicalBlock(scope: !1220, file: !3, line: 378, column: 7)
!1231 = !DILocation(line: 378, column: 53, scope: !1230)
!1232 = !DILocation(line: 378, column: 7, scope: !1220)
!1233 = !DILocation(line: 379, column: 15, scope: !1230)
!1234 = !DILocation(line: 379, column: 22, scope: !1235)
!1235 = !DILexicalBlockFile(scope: !1230, file: !3, discriminator: 1)
!1236 = !DILocation(line: 379, column: 5, scope: !1237)
!1237 = !DILexicalBlockFile(scope: !1230, file: !3, discriminator: 2)
!1238 = !DILocation(line: 379, column: 5, scope: !1230)
!1239 = !DILocation(line: 380, column: 1, scope: !1220)
!1240 = distinct !DISubprogram(name: "settimeout", scope: !3, file: !3, line: 111, type: !1241, isLocal: true, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1243)
!1241 = !DISubroutineType(types: !1242)
!1242 = !{null, !44, !47}
!1243 = !{!1244, !1245, !1246, !1253, !1259, !1263, !1264}
!1244 = !DILocalVariable(name: "duration", arg: 1, scope: !1240, file: !3, line: 111, type: !44)
!1245 = !DILocalVariable(name: "warn", arg: 2, scope: !1240, file: !3, line: 111, type: !47)
!1246 = !DILocalVariable(name: "ts", scope: !1240, file: !3, line: 122, type: !1247)
!1247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !1248, line: 8, size: 128, elements: !1249)
!1248 = !DIFile(filename: "/usr/include/bits/types/struct_timespec.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1249 = !{!1250, !1251}
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1247, file: !1248, line: 10, baseType: !617, size: 64)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1247, file: !1248, line: 11, baseType: !1252, size: 64, offset: 64)
!1252 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !41, line: 184, baseType: !618)
!1253 = !DILocalVariable(name: "its", scope: !1240, file: !3, line: 123, type: !1254)
!1254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "itimerspec", file: !1255, line: 8, size: 256, elements: !1256)
!1255 = !DIFile(filename: "/usr/include/bits/types/struct_itimerspec.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1256 = !{!1257, !1258}
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "it_interval", scope: !1254, file: !1255, line: 10, baseType: !1247, size: 128)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "it_value", scope: !1254, file: !1255, line: 11, baseType: !1247, size: 128, offset: 128)
!1259 = !DILocalVariable(name: "timerid", scope: !1240, file: !3, line: 124, type: !1260)
!1260 = !DIDerivedType(tag: DW_TAG_typedef, name: "timer_t", file: !1261, line: 7, baseType: !1262)
!1261 = !DIFile(filename: "/usr/include/bits/types/timer_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1262 = !DIDerivedType(tag: DW_TAG_typedef, name: "__timer_t", file: !41, line: 159, baseType: !15)
!1263 = !DILocalVariable(name: "timeint", scope: !1240, file: !3, line: 140, type: !205)
!1264 = !DILocalVariable(name: "duration_floor", scope: !1265, file: !3, line: 145, type: !205)
!1265 = distinct !DILexicalBlock(scope: !1266, file: !3, line: 144, column: 5)
!1266 = distinct !DILexicalBlock(scope: !1240, file: !3, line: 141, column: 7)
!1267 = !DILocation(line: 111, column: 20, scope: !1240)
!1268 = !DIExpression(DW_OP_LLVM_fragment, 0, 1)
!1269 = !DILocation(line: 111, column: 35, scope: !1240)
!1270 = !DILocation(line: 122, column: 19, scope: !1240)
!1271 = !DILocation(line: 122, column: 24, scope: !1240)
!1272 = !DIExpression(DW_OP_LLVM_fragment, 0, 64)
!1273 = !DIExpression(DW_OP_LLVM_fragment, 64, 64)
!1274 = !DILocation(line: 123, column: 3, scope: !1240)
!1275 = !DILocation(line: 123, column: 37, scope: !1240)
!1276 = !DILocation(line: 123, column: 29, scope: !1240)
!1277 = !DILocation(line: 124, column: 3, scope: !1240)
!1278 = !DILocation(line: 124, column: 11, scope: !1240)
!1279 = !DILocation(line: 125, column: 7, scope: !1280)
!1280 = distinct !DILexicalBlock(scope: !1240, file: !3, line: 125, column: 7)
!1281 = !DILocation(line: 125, column: 53, scope: !1280)
!1282 = !DILocation(line: 125, column: 7, scope: !1240)
!1283 = !DILocation(line: 127, column: 26, scope: !1284)
!1284 = distinct !DILexicalBlock(scope: !1285, file: !3, line: 127, column: 11)
!1285 = distinct !DILexicalBlock(scope: !1280, file: !3, line: 126, column: 5)
!1286 = !DILocation(line: 123, column: 21, scope: !1240)
!1287 = !DILocation(line: 127, column: 11, scope: !1284)
!1288 = !DILocation(line: 127, column: 50, scope: !1284)
!1289 = !DILocation(line: 127, column: 11, scope: !1285)
!1290 = !DILocation(line: 131, column: 15, scope: !1291)
!1291 = distinct !DILexicalBlock(scope: !1284, file: !3, line: 130, column: 9)
!1292 = !DILocation(line: 132, column: 23, scope: !1293)
!1293 = distinct !DILexicalBlock(scope: !1291, file: !3, line: 131, column: 15)
!1294 = !DILocation(line: 132, column: 30, scope: !1295)
!1295 = !DILexicalBlockFile(scope: !1293, file: !3, discriminator: 1)
!1296 = !DILocation(line: 132, column: 13, scope: !1297)
!1297 = !DILexicalBlockFile(scope: !1293, file: !3, discriminator: 2)
!1298 = !DILocation(line: 132, column: 13, scope: !1293)
!1299 = !DILocation(line: 133, column: 25, scope: !1291)
!1300 = !DILocation(line: 133, column: 11, scope: !1291)
!1301 = !DILocation(line: 135, column: 5, scope: !1285)
!1302 = !DILocation(line: 136, column: 17, scope: !1303)
!1303 = distinct !DILexicalBlock(scope: !1280, file: !3, line: 136, column: 12)
!1304 = !DILocation(line: 136, column: 20, scope: !1305)
!1305 = !DILexicalBlockFile(scope: !1303, file: !3, discriminator: 1)
!1306 = !DILocation(line: 136, column: 26, scope: !1305)
!1307 = !DILocation(line: 136, column: 12, scope: !1308)
!1308 = !DILexicalBlockFile(scope: !1280, file: !3, discriminator: 1)
!1309 = !DILocation(line: 137, column: 22, scope: !1305)
!1310 = !DILocation(line: 137, column: 5, scope: !1311)
!1311 = !DILexicalBlockFile(scope: !1303, file: !3, discriminator: 2)
!1312 = !DILocation(line: 137, column: 5, scope: !1303)
!1313 = !DILocation(line: 141, column: 16, scope: !1266)
!1314 = !DILocation(line: 141, column: 7, scope: !1240)
!1315 = !DILocation(line: 145, column: 37, scope: !1265)
!1316 = !DILocation(line: 145, column: 20, scope: !1265)
!1317 = !DILocation(line: 146, column: 35, scope: !1265)
!1318 = !DILocation(line: 146, column: 50, scope: !1265)
!1319 = !DILocation(line: 146, column: 32, scope: !1265)
!1320 = !DILocation(line: 140, column: 16, scope: !1240)
!1321 = !DILocation(line: 148, column: 3, scope: !1240)
!1322 = !DILocation(line: 149, column: 1, scope: !1240)
!1323 = !DILocation(line: 149, column: 1, scope: !1324)
!1324 = !DILexicalBlockFile(scope: !1240, file: !3, discriminator: 2)
!1325 = distinct !DISubprogram(name: "operand2sig", scope: !605, file: !605, line: 36, type: !1326, isLocal: false, isDefinition: true, scopeLine: 37, flags: DIFlagPrototyped, isOptimized: true, unit: !604, variables: !1328)
!1326 = !DISubroutineType(types: !1327)
!1327 = !{!21, !31, !13}
!1328 = !{!1329, !1330, !1331, !1332, !1335, !1336, !1337, !1339}
!1329 = !DILocalVariable(name: "operand", arg: 1, scope: !1325, file: !605, line: 36, type: !31)
!1330 = !DILocalVariable(name: "signame", arg: 2, scope: !1325, file: !605, line: 36, type: !13)
!1331 = !DILocalVariable(name: "signum", scope: !1325, file: !605, line: 38, type: !21)
!1332 = !DILocalVariable(name: "endp", scope: !1333, file: !605, line: 53, type: !13)
!1333 = distinct !DILexicalBlock(scope: !1334, file: !605, line: 41, column: 5)
!1334 = distinct !DILexicalBlock(scope: !1325, file: !605, line: 40, column: 7)
!1335 = !DILocalVariable(name: "l", scope: !1333, file: !605, line: 54, type: !618)
!1336 = !DILocalVariable(name: "i", scope: !1333, file: !605, line: 55, type: !21)
!1337 = !DILocalVariable(name: "upcased", scope: !1338, file: !605, line: 63, type: !13)
!1338 = distinct !DILexicalBlock(scope: !1334, file: !605, line: 60, column: 5)
!1339 = !DILocalVariable(name: "p", scope: !1338, file: !605, line: 64, type: !13)
!1340 = !DILocation(line: 36, column: 26, scope: !1325)
!1341 = !DILocation(line: 36, column: 41, scope: !1325)
!1342 = !DILocation(line: 38, column: 3, scope: !1325)
!1343 = !DILocation(line: 40, column: 7, scope: !1334)
!1344 = !DILocation(line: 40, column: 7, scope: !1325)
!1345 = !DILocation(line: 53, column: 7, scope: !1333)
!1346 = !DILocation(line: 54, column: 21, scope: !1333)
!1347 = !DILocation(line: 54, column: 27, scope: !1333)
!1348 = !DILocation(line: 53, column: 13, scope: !1333)
!1349 = !DILocation(line: 54, column: 32, scope: !1350)
!1350 = !DILexicalBlockFile(scope: !1333, file: !605, discriminator: 1)
!1351 = !DILocation(line: 54, column: 16, scope: !1333)
!1352 = !DILocation(line: 55, column: 15, scope: !1333)
!1353 = !DILocation(line: 55, column: 11, scope: !1333)
!1354 = !DILocation(line: 56, column: 28, scope: !1333)
!1355 = !DILocation(line: 56, column: 25, scope: !1333)
!1356 = !DILocation(line: 56, column: 33, scope: !1333)
!1357 = !DILocation(line: 56, column: 36, scope: !1350)
!1358 = !DILocation(line: 56, column: 42, scope: !1350)
!1359 = !DILocation(line: 56, column: 45, scope: !1360)
!1360 = !DILexicalBlockFile(scope: !1333, file: !605, discriminator: 2)
!1361 = !DILocation(line: 56, column: 51, scope: !1360)
!1362 = !DILocation(line: 56, column: 54, scope: !1363)
!1363 = !DILexicalBlockFile(scope: !1333, file: !605, discriminator: 3)
!1364 = !DILocation(line: 56, column: 56, scope: !1363)
!1365 = !DILocation(line: 56, column: 17, scope: !1363)
!1366 = !DILocation(line: 57, column: 19, scope: !1333)
!1367 = !DILocation(line: 56, column: 17, scope: !1368)
!1368 = !DILexicalBlockFile(scope: !1333, file: !605, discriminator: 6)
!1369 = !DILocation(line: 38, column: 7, scope: !1325)
!1370 = !DILocation(line: 56, column: 14, scope: !1368)
!1371 = !DILocation(line: 58, column: 5, scope: !1334)
!1372 = !DILocation(line: 58, column: 5, scope: !1333)
!1373 = !DILocation(line: 63, column: 23, scope: !1338)
!1374 = !DILocation(line: 63, column: 13, scope: !1338)
!1375 = !DILocation(line: 64, column: 13, scope: !1338)
!1376 = !DILocation(line: 65, column: 25, scope: !1377)
!1377 = !DILexicalBlockFile(scope: !1378, file: !605, discriminator: 1)
!1378 = distinct !DILexicalBlock(scope: !1379, file: !605, line: 65, column: 7)
!1379 = distinct !DILexicalBlock(scope: !1338, file: !605, line: 65, column: 7)
!1380 = !DILocation(line: 65, column: 7, scope: !1381)
!1381 = !DILexicalBlockFile(scope: !1379, file: !605, discriminator: 1)
!1382 = !DILocation(line: 66, column: 13, scope: !1383)
!1383 = !DILexicalBlockFile(scope: !1384, file: !605, discriminator: 4)
!1384 = distinct !DILexicalBlock(scope: !1378, file: !605, line: 66, column: 13)
!1385 = !DILocation(line: 66, column: 13, scope: !1386)
!1386 = !DILexicalBlockFile(scope: !1378, file: !605, discriminator: 4)
!1387 = !DILocation(line: 67, column: 14, scope: !1384)
!1388 = !DILocation(line: 67, column: 11, scope: !1384)
!1389 = !DILocation(line: 65, column: 30, scope: !1390)
!1390 = !DILexicalBlockFile(scope: !1378, file: !605, discriminator: 2)
!1391 = distinct !{!1391, !1392, !1393}
!1392 = !DILocation(line: 65, column: 7, scope: !1379)
!1393 = !DILocation(line: 67, column: 23, scope: !1379)
!1394 = !DILocation(line: 71, column: 13, scope: !1395)
!1395 = distinct !DILexicalBlock(scope: !1338, file: !605, line: 71, column: 11)
!1396 = !DILocation(line: 71, column: 40, scope: !1395)
!1397 = !DILocation(line: 72, column: 13, scope: !1395)
!1398 = !DILocation(line: 72, column: 17, scope: !1399)
!1399 = !DILexicalBlockFile(scope: !1395, file: !605, discriminator: 1)
!1400 = !DILocation(line: 72, column: 28, scope: !1399)
!1401 = !DILocation(line: 72, column: 35, scope: !1399)
!1402 = !DILocation(line: 72, column: 38, scope: !1403)
!1403 = !DILexicalBlockFile(scope: !1395, file: !605, discriminator: 2)
!1404 = !DILocation(line: 72, column: 49, scope: !1403)
!1405 = !DILocation(line: 72, column: 56, scope: !1403)
!1406 = !DILocation(line: 72, column: 59, scope: !1407)
!1407 = !DILexicalBlockFile(scope: !1395, file: !605, discriminator: 3)
!1408 = !DILocation(line: 72, column: 70, scope: !1407)
!1409 = !DILocation(line: 73, column: 17, scope: !1395)
!1410 = !DILocation(line: 73, column: 37, scope: !1399)
!1411 = !DILocation(line: 73, column: 20, scope: !1399)
!1412 = !DILocation(line: 73, column: 51, scope: !1399)
!1413 = !DILocation(line: 71, column: 11, scope: !1414)
!1414 = !DILexicalBlockFile(scope: !1338, file: !605, discriminator: 1)
!1415 = !DILocation(line: 74, column: 16, scope: !1395)
!1416 = !DILocation(line: 74, column: 9, scope: !1395)
!1417 = !DILocation(line: 76, column: 7, scope: !1338)
!1418 = !DILocation(line: 79, column: 7, scope: !1419)
!1419 = distinct !DILexicalBlock(scope: !1325, file: !605, line: 79, column: 7)
!1420 = !DILocation(line: 79, column: 14, scope: !1419)
!1421 = !DILocation(line: 79, column: 18, scope: !1419)
!1422 = !DILocation(line: 79, column: 21, scope: !1423)
!1423 = !DILexicalBlockFile(scope: !1419, file: !605, discriminator: 1)
!1424 = !DILocation(line: 79, column: 47, scope: !1423)
!1425 = !DILocation(line: 79, column: 7, scope: !1426)
!1426 = !DILexicalBlockFile(scope: !1325, file: !605, discriminator: 1)
!1427 = !DILocation(line: 81, column: 20, scope: !1428)
!1428 = distinct !DILexicalBlock(scope: !1419, file: !605, line: 80, column: 5)
!1429 = !DILocation(line: 81, column: 45, scope: !1430)
!1430 = !DILexicalBlockFile(scope: !1428, file: !605, discriminator: 1)
!1431 = !DILocation(line: 81, column: 7, scope: !1432)
!1432 = !DILexicalBlockFile(scope: !1428, file: !605, discriminator: 2)
!1433 = !DILocation(line: 82, column: 7, scope: !1428)
!1434 = !DILocation(line: 85, column: 10, scope: !1325)
!1435 = !DILocation(line: 85, column: 3, scope: !1325)
!1436 = !DILocation(line: 86, column: 1, scope: !1325)
!1437 = distinct !DISubprogram(name: "c_strtod", scope: !125, file: !125, line: 66, type: !1438, isLocal: false, isDefinition: true, scopeLine: 67, flags: DIFlagPrototyped, isOptimized: true, unit: !99, variables: !1440)
!1438 = !DISubroutineType(types: !1439)
!1439 = !{!44, !31, !737}
!1440 = !{!1441, !1442, !1443, !1444}
!1441 = !DILocalVariable(name: "nptr", arg: 1, scope: !1437, file: !125, line: 66, type: !31)
!1442 = !DILocalVariable(name: "endptr", arg: 2, scope: !1437, file: !125, line: 66, type: !737)
!1443 = !DILocalVariable(name: "r", scope: !1437, file: !125, line: 68, type: !44)
!1444 = !DILocalVariable(name: "locale", scope: !1437, file: !125, line: 72, type: !102)
!1445 = !DILocation(line: 66, column: 23, scope: !1437)
!1446 = !DILocation(line: 66, column: 36, scope: !1437)
!1447 = !DILocation(line: 58, column: 8, scope: !1448, inlinedAt: !1452)
!1448 = distinct !DILexicalBlock(scope: !1449, file: !125, line: 58, column: 7)
!1449 = distinct !DISubprogram(name: "c_locale", scope: !125, file: !125, line: 56, type: !1450, isLocal: true, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !99, variables: !95)
!1450 = !DISubroutineType(types: !1451)
!1451 = !{!102}
!1452 = distinct !DILocation(line: 72, column: 21, scope: !1437)
!1453 = !DILocation(line: 58, column: 7, scope: !1449, inlinedAt: !1452)
!1454 = !DILocation(line: 59, column: 22, scope: !1448, inlinedAt: !1452)
!1455 = !DILocation(line: 59, column: 20, scope: !1448, inlinedAt: !1452)
!1456 = !DILocation(line: 59, column: 5, scope: !1448, inlinedAt: !1452)
!1457 = !DILocation(line: 60, column: 10, scope: !1449, inlinedAt: !1452)
!1458 = !DILocation(line: 72, column: 12, scope: !1437)
!1459 = !DILocation(line: 73, column: 8, scope: !1460)
!1460 = distinct !DILexicalBlock(scope: !1437, file: !125, line: 73, column: 7)
!1461 = !DILocation(line: 73, column: 7, scope: !1437)
!1462 = !DILocation(line: 75, column: 11, scope: !1463)
!1463 = distinct !DILexicalBlock(scope: !1464, file: !125, line: 75, column: 11)
!1464 = distinct !DILexicalBlock(scope: !1460, file: !125, line: 74, column: 5)
!1465 = !DILocation(line: 75, column: 11, scope: !1464)
!1466 = !DILocation(line: 76, column: 17, scope: !1463)
!1467 = !DILocation(line: 76, column: 9, scope: !1463)
!1468 = !DILocation(line: 80, column: 7, scope: !1437)
!1469 = !DILocation(line: 68, column: 10, scope: !1437)
!1470 = !DILocation(line: 111, column: 3, scope: !1437)
!1471 = !DILocation(line: 112, column: 1, scope: !1437)
!1472 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !134, file: !134, line: 41, type: !53, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !129, variables: !1473)
!1473 = !{!1474}
!1474 = !DILocalVariable(name: "file", arg: 1, scope: !1472, file: !134, line: 41, type: !31)
!1475 = !DILocation(line: 41, column: 41, scope: !1472)
!1476 = !DILocation(line: 43, column: 13, scope: !1472)
!1477 = !DILocation(line: 44, column: 1, scope: !1472)
!1478 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !134, file: !134, line: 78, type: !1479, isLocal: false, isDefinition: true, scopeLine: 79, flags: DIFlagPrototyped, isOptimized: true, unit: !129, variables: !1481)
!1479 = !DISubroutineType(types: !1480)
!1480 = !{null, !47}
!1481 = !{!1482}
!1482 = !DILocalVariable(name: "ignore", arg: 1, scope: !1478, file: !134, line: 78, type: !47)
!1483 = !DILocation(line: 78, column: 37, scope: !1478)
!1484 = !DILocation(line: 80, column: 16, scope: !1478)
!1485 = !{!1486, !1486, i64 0}
!1486 = !{!"_Bool", !682, i64 0}
!1487 = !DILocation(line: 81, column: 1, scope: !1478)
!1488 = distinct !DISubprogram(name: "close_stdout", scope: !134, file: !134, line: 107, type: !696, isLocal: false, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: true, unit: !129, variables: !1489)
!1489 = !{!1490}
!1490 = !DILocalVariable(name: "write_error", scope: !1491, file: !134, line: 112, type: !31)
!1491 = distinct !DILexicalBlock(scope: !1492, file: !134, line: 111, column: 5)
!1492 = distinct !DILexicalBlock(scope: !1488, file: !134, line: 109, column: 7)
!1493 = !DILocation(line: 109, column: 21, scope: !1492)
!1494 = !DILocation(line: 109, column: 7, scope: !1492)
!1495 = !DILocation(line: 109, column: 29, scope: !1492)
!1496 = !DILocation(line: 110, column: 7, scope: !1492)
!1497 = !DILocation(line: 110, column: 12, scope: !1498)
!1498 = !DILexicalBlockFile(scope: !1492, file: !134, discriminator: 1)
!1499 = !{i8 0, i8 2}
!1500 = !DILocation(line: 114, column: 19, scope: !1501)
!1501 = distinct !DILexicalBlock(scope: !1491, file: !134, line: 113, column: 11)
!1502 = !DILocation(line: 110, column: 25, scope: !1498)
!1503 = !DILocation(line: 110, column: 28, scope: !1504)
!1504 = !DILexicalBlockFile(scope: !1492, file: !134, discriminator: 2)
!1505 = !DILocation(line: 110, column: 34, scope: !1504)
!1506 = !DILocation(line: 109, column: 7, scope: !1507)
!1507 = !DILexicalBlockFile(scope: !1488, file: !134, discriminator: 1)
!1508 = !DILocation(line: 112, column: 33, scope: !1491)
!1509 = !DILocation(line: 112, column: 19, scope: !1491)
!1510 = !DILocation(line: 113, column: 11, scope: !1501)
!1511 = !DILocation(line: 113, column: 11, scope: !1491)
!1512 = !DILocation(line: 114, column: 36, scope: !1513)
!1513 = !DILexicalBlockFile(scope: !1501, file: !134, discriminator: 1)
!1514 = !DILocation(line: 114, column: 9, scope: !1515)
!1515 = !DILexicalBlockFile(scope: !1501, file: !134, discriminator: 2)
!1516 = !DILocation(line: 114, column: 9, scope: !1501)
!1517 = !DILocation(line: 117, column: 9, scope: !1513)
!1518 = !DILocation(line: 119, column: 14, scope: !1491)
!1519 = !DILocation(line: 119, column: 7, scope: !1491)
!1520 = !DILocation(line: 122, column: 22, scope: !1521)
!1521 = distinct !DILexicalBlock(scope: !1488, file: !134, line: 122, column: 8)
!1522 = !DILocation(line: 122, column: 8, scope: !1521)
!1523 = !DILocation(line: 122, column: 30, scope: !1521)
!1524 = !DILocation(line: 122, column: 8, scope: !1488)
!1525 = !DILocation(line: 123, column: 13, scope: !1521)
!1526 = !DILocation(line: 123, column: 6, scope: !1521)
!1527 = !DILocation(line: 124, column: 1, scope: !1488)
!1528 = distinct !DISubprogram(name: "dtotimespec", scope: !1529, file: !1529, line: 30, type: !1530, isLocal: false, isDefinition: true, scopeLine: 31, flags: DIFlagPrototyped, isOptimized: true, unit: !607, variables: !1536)
!1529 = !DIFile(filename: "lib/dtotimespec.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1530 = !DISubroutineType(types: !1531)
!1531 = !{!1532, !44}
!1532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !1248, line: 8, size: 128, elements: !1533)
!1533 = !{!1534, !1535}
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1532, file: !1248, line: 10, baseType: !617, size: 64)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1532, file: !1248, line: 11, baseType: !1252, size: 64, offset: 64)
!1536 = !{!1537, !1538, !1542, !1543}
!1537 = !DILocalVariable(name: "sec", arg: 1, scope: !1528, file: !1529, line: 30, type: !44)
!1538 = !DILocalVariable(name: "s", scope: !1539, file: !1529, line: 38, type: !615)
!1539 = distinct !DILexicalBlock(scope: !1540, file: !1529, line: 37, column: 5)
!1540 = distinct !DILexicalBlock(scope: !1541, file: !1529, line: 34, column: 12)
!1541 = distinct !DILexicalBlock(scope: !1528, file: !1529, line: 32, column: 7)
!1542 = !DILocalVariable(name: "frac", scope: !1539, file: !1529, line: 39, type: !44)
!1543 = !DILocalVariable(name: "ns", scope: !1539, file: !1529, line: 40, type: !618)
!1544 = !DILocation(line: 30, column: 21, scope: !1528)
!1545 = !DILocation(line: 32, column: 32, scope: !1541)
!1546 = !DILocation(line: 32, column: 7, scope: !1528)
!1547 = !DILocation(line: 34, column: 19, scope: !1540)
!1548 = !DILocation(line: 34, column: 12, scope: !1541)
!1549 = !DILocation(line: 38, column: 18, scope: !1539)
!1550 = !DILocation(line: 38, column: 14, scope: !1539)
!1551 = !DILocation(line: 39, column: 50, scope: !1539)
!1552 = !DILocation(line: 39, column: 48, scope: !1539)
!1553 = !DILocation(line: 39, column: 41, scope: !1539)
!1554 = !DILocation(line: 39, column: 14, scope: !1539)
!1555 = !DILocation(line: 40, column: 17, scope: !1539)
!1556 = !DILocation(line: 40, column: 12, scope: !1539)
!1557 = !DILocation(line: 41, column: 13, scope: !1539)
!1558 = !DILocation(line: 41, column: 16, scope: !1539)
!1559 = !DILocation(line: 41, column: 10, scope: !1539)
!1560 = !DILocation(line: 42, column: 15, scope: !1539)
!1561 = !DILocation(line: 42, column: 9, scope: !1539)
!1562 = !DILocation(line: 43, column: 10, scope: !1539)
!1563 = !DILocation(line: 45, column: 14, scope: !1564)
!1564 = distinct !DILexicalBlock(scope: !1539, file: !1529, line: 45, column: 11)
!1565 = !DILocation(line: 48, column: 14, scope: !1566)
!1566 = distinct !DILexicalBlock(scope: !1564, file: !1529, line: 46, column: 9)
!1567 = !DILocation(line: 45, column: 11, scope: !1539)
!1568 = !DILocalVariable(name: "s", arg: 1, scope: !1569, file: !611, line: 41, type: !615)
!1569 = distinct !DISubprogram(name: "make_timespec", scope: !611, file: !611, line: 41, type: !1570, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !607, variables: !1572)
!1570 = !DISubroutineType(types: !1571)
!1571 = !{!1532, !615, !618}
!1572 = !{!1568, !1573, !1574}
!1573 = !DILocalVariable(name: "ns", arg: 2, scope: !1569, file: !611, line: 41, type: !618)
!1574 = !DILocalVariable(name: "r", scope: !1569, file: !611, line: 43, type: !1532)
!1575 = !DILocation(line: 41, column: 23, scope: !1569, inlinedAt: !1576)
!1576 = distinct !DILocation(line: 51, column: 14, scope: !1539)
!1577 = !DILocation(line: 41, column: 35, scope: !1569, inlinedAt: !1576)
!1578 = !DILocation(line: 43, column: 19, scope: !1569, inlinedAt: !1576)
!1579 = !DILocation(line: 47, column: 1, scope: !1569, inlinedAt: !1576)
!1580 = !DILocation(line: 53, column: 1, scope: !1528)
!1581 = distinct !DISubprogram(name: "set_program_name", scope: !148, file: !148, line: 39, type: !53, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !144, variables: !1582)
!1582 = !{!1583, !1584, !1585}
!1583 = !DILocalVariable(name: "argv0", arg: 1, scope: !1581, file: !148, line: 39, type: !31)
!1584 = !DILocalVariable(name: "slash", scope: !1581, file: !148, line: 46, type: !31)
!1585 = !DILocalVariable(name: "base", scope: !1581, file: !148, line: 47, type: !31)
!1586 = !DILocation(line: 39, column: 31, scope: !1581)
!1587 = !DILocation(line: 51, column: 13, scope: !1588)
!1588 = distinct !DILexicalBlock(scope: !1581, file: !148, line: 51, column: 7)
!1589 = !DILocation(line: 51, column: 7, scope: !1581)
!1590 = !DILocation(line: 55, column: 14, scope: !1591)
!1591 = distinct !DILexicalBlock(scope: !1588, file: !148, line: 52, column: 5)
!1592 = !DILocation(line: 54, column: 7, scope: !1591)
!1593 = !DILocation(line: 56, column: 7, scope: !1591)
!1594 = !DILocation(line: 59, column: 11, scope: !1581)
!1595 = !DILocation(line: 46, column: 15, scope: !1581)
!1596 = !DILocation(line: 60, column: 17, scope: !1581)
!1597 = !DILocation(line: 60, column: 33, scope: !1598)
!1598 = !DILexicalBlockFile(scope: !1581, file: !148, discriminator: 1)
!1599 = !DILocation(line: 60, column: 11, scope: !1581)
!1600 = !DILocation(line: 47, column: 15, scope: !1581)
!1601 = !DILocation(line: 61, column: 12, scope: !1602)
!1602 = distinct !DILexicalBlock(scope: !1581, file: !148, line: 61, column: 7)
!1603 = !DILocation(line: 61, column: 20, scope: !1602)
!1604 = !DILocation(line: 61, column: 25, scope: !1602)
!1605 = !DILocation(line: 61, column: 28, scope: !1606)
!1606 = !DILexicalBlockFile(scope: !1602, file: !148, discriminator: 1)
!1607 = !DILocation(line: 61, column: 61, scope: !1606)
!1608 = !DILocation(line: 61, column: 7, scope: !1598)
!1609 = !DILocation(line: 64, column: 11, scope: !1610)
!1610 = distinct !DILexicalBlock(scope: !1611, file: !148, line: 64, column: 11)
!1611 = distinct !DILexicalBlock(scope: !1602, file: !148, line: 62, column: 5)
!1612 = !DILocation(line: 64, column: 36, scope: !1610)
!1613 = !DILocation(line: 64, column: 11, scope: !1611)
!1614 = !DILocation(line: 66, column: 24, scope: !1615)
!1615 = distinct !DILexicalBlock(scope: !1610, file: !148, line: 65, column: 9)
!1616 = !DILocation(line: 70, column: 41, scope: !1615)
!1617 = !DILocation(line: 72, column: 9, scope: !1615)
!1618 = !DILocation(line: 84, column: 16, scope: !1581)
!1619 = !DILocation(line: 90, column: 27, scope: !1581)
!1620 = !DILocation(line: 92, column: 1, scope: !1581)
!1621 = distinct !DISubprogram(name: "clone_quoting_options", scope: !192, file: !192, line: 114, type: !1622, isLocal: false, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, unit: !151, variables: !1625)
!1622 = !DISubroutineType(types: !1623)
!1623 = !{!1624, !1624}
!1624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 64)
!1625 = !{!1626, !1627, !1628}
!1626 = !DILocalVariable(name: "o", arg: 1, scope: !1621, file: !192, line: 114, type: !1624)
!1627 = !DILocalVariable(name: "e", scope: !1621, file: !192, line: 116, type: !21)
!1628 = !DILocalVariable(name: "p", scope: !1621, file: !192, line: 117, type: !1624)
!1629 = !DILocation(line: 114, column: 48, scope: !1621)
!1630 = !DILocation(line: 116, column: 11, scope: !1621)
!1631 = !DILocation(line: 116, column: 7, scope: !1621)
!1632 = !DILocation(line: 117, column: 40, scope: !1621)
!1633 = !DILocation(line: 117, column: 40, scope: !1634)
!1634 = !DILexicalBlockFile(scope: !1621, file: !192, discriminator: 3)
!1635 = !DILocation(line: 117, column: 31, scope: !1634)
!1636 = !DILocation(line: 117, column: 27, scope: !1621)
!1637 = !DILocation(line: 119, column: 9, scope: !1621)
!1638 = !DILocation(line: 120, column: 3, scope: !1621)
!1639 = distinct !DISubprogram(name: "get_quoting_style", scope: !192, file: !192, line: 125, type: !1640, isLocal: false, isDefinition: true, scopeLine: 126, flags: DIFlagPrototyped, isOptimized: true, unit: !151, variables: !1644)
!1640 = !DISubroutineType(types: !1641)
!1641 = !{!154, !1642}
!1642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1643, size: 64)
!1643 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !199)
!1644 = !{!1645}
!1645 = !DILocalVariable(name: "o", arg: 1, scope: !1639, file: !192, line: 125, type: !1642)
!1646 = !DILocation(line: 125, column: 50, scope: !1639)
!1647 = !DILocation(line: 127, column: 11, scope: !1639)
!1648 = !DILocation(line: 127, column: 46, scope: !1649)
!1649 = !DILexicalBlockFile(scope: !1639, file: !192, discriminator: 3)
!1650 = !{!1651, !682, i64 0}
!1651 = !{!"quoting_options", !682, i64 0, !788, i64 4, !682, i64 8, !681, i64 40, !681, i64 48}
!1652 = !DILocation(line: 127, column: 3, scope: !1649)
!1653 = distinct !DISubprogram(name: "set_quoting_style", scope: !192, file: !192, line: 133, type: !1654, isLocal: false, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: true, unit: !151, variables: !1656)
!1654 = !DISubroutineType(types: !1655)
!1655 = !{null, !1624, !154}
!1656 = !{!1657, !1658}
!1657 = !DILocalVariable(name: "o", arg: 1, scope: !1653, file: !192, line: 133, type: !1624)
!1658 = !DILocalVariable(name: "s", arg: 2, scope: !1653, file: !192, line: 133, type: !154)
!1659 = !DILocation(line: 133, column: 44, scope: !1653)
!1660 = !DILocation(line: 133, column: 66, scope: !1653)
!1661 = !DILocation(line: 135, column: 4, scope: !1653)
!1662 = !DILocation(line: 135, column: 39, scope: !1663)
!1663 = !DILexicalBlockFile(scope: !1653, file: !192, discriminator: 3)
!1664 = !DILocation(line: 135, column: 45, scope: !1663)
!1665 = !DILocation(line: 136, column: 1, scope: !1653)
!1666 = distinct !DISubprogram(name: "set_char_quoting", scope: !192, file: !192, line: 144, type: !1667, isLocal: false, isDefinition: true, scopeLine: 145, flags: DIFlagPrototyped, isOptimized: true, unit: !151, variables: !1669)
!1667 = !DISubroutineType(types: !1668)
!1668 = !{!21, !1624, !14, !21}
!1669 = !{!1670, !1671, !1672, !1673, !1674, !1676, !1677}
!1670 = !DILocalVariable(name: "o", arg: 1, scope: !1666, file: !192, line: 144, type: !1624)
!1671 = !DILocalVariable(name: "c", arg: 2, scope: !1666, file: !192, line: 144, type: !14)
!1672 = !DILocalVariable(name: "i", arg: 3, scope: !1666, file: !192, line: 144, type: !21)
!1673 = !DILocalVariable(name: "uc", scope: !1666, file: !192, line: 146, type: !30)
!1674 = !DILocalVariable(name: "p", scope: !1666, file: !192, line: 147, type: !1675)
!1675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64)
!1676 = !DILocalVariable(name: "shift", scope: !1666, file: !192, line: 149, type: !21)
!1677 = !DILocalVariable(name: "r", scope: !1666, file: !192, line: 150, type: !21)
!1678 = !DILocation(line: 144, column: 43, scope: !1666)
!1679 = !DILocation(line: 144, column: 51, scope: !1666)
!1680 = !DILocation(line: 144, column: 58, scope: !1666)
!1681 = !DILocation(line: 146, column: 17, scope: !1666)
!1682 = !DILocation(line: 148, column: 6, scope: !1666)
!1683 = !DILocation(line: 148, column: 62, scope: !1684)
!1684 = !DILexicalBlockFile(scope: !1666, file: !192, discriminator: 3)
!1685 = !DILocation(line: 148, column: 57, scope: !1684)
!1686 = !DILocation(line: 147, column: 17, scope: !1666)
!1687 = !DILocation(line: 149, column: 18, scope: !1666)
!1688 = !DILocation(line: 149, column: 15, scope: !1666)
!1689 = !DILocation(line: 149, column: 7, scope: !1666)
!1690 = !DILocation(line: 150, column: 12, scope: !1666)
!1691 = !DILocation(line: 150, column: 15, scope: !1666)
!1692 = !DILocation(line: 150, column: 25, scope: !1666)
!1693 = !DILocation(line: 150, column: 7, scope: !1666)
!1694 = !DILocation(line: 151, column: 13, scope: !1666)
!1695 = !DILocation(line: 151, column: 18, scope: !1666)
!1696 = !DILocation(line: 151, column: 23, scope: !1666)
!1697 = !DILocation(line: 151, column: 6, scope: !1666)
!1698 = !DILocation(line: 152, column: 3, scope: !1666)
!1699 = distinct !DISubprogram(name: "set_quoting_flags", scope: !192, file: !192, line: 160, type: !1700, isLocal: false, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !151, variables: !1702)
!1700 = !DISubroutineType(types: !1701)
!1701 = !{!21, !1624, !21}
!1702 = !{!1703, !1704, !1705}
!1703 = !DILocalVariable(name: "o", arg: 1, scope: !1699, file: !192, line: 160, type: !1624)
!1704 = !DILocalVariable(name: "i", arg: 2, scope: !1699, file: !192, line: 160, type: !21)
!1705 = !DILocalVariable(name: "r", scope: !1699, file: !192, line: 162, type: !21)
!1706 = !DILocation(line: 160, column: 44, scope: !1699)
!1707 = !DILocation(line: 160, column: 51, scope: !1699)
!1708 = !DILocation(line: 163, column: 8, scope: !1709)
!1709 = distinct !DILexicalBlock(scope: !1699, file: !192, line: 163, column: 7)
!1710 = !DILocation(line: 163, column: 7, scope: !1699)
!1711 = !DILocation(line: 165, column: 10, scope: !1699)
!1712 = !{!1651, !788, i64 4}
!1713 = !DILocation(line: 162, column: 7, scope: !1699)
!1714 = !DILocation(line: 166, column: 12, scope: !1699)
!1715 = !DILocation(line: 167, column: 3, scope: !1699)
!1716 = distinct !DISubprogram(name: "set_custom_quoting", scope: !192, file: !192, line: 171, type: !1717, isLocal: false, isDefinition: true, scopeLine: 173, flags: DIFlagPrototyped, isOptimized: true, unit: !151, variables: !1719)
!1717 = !DISubroutineType(types: !1718)
!1718 = !{null, !1624, !31, !31}
!1719 = !{!1720, !1721, !1722}
!1720 = !DILocalVariable(name: "o", arg: 1, scope: !1716, file: !192, line: 171, type: !1624)
!1721 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1716, file: !192, line: 172, type: !31)
!1722 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1716, file: !192, line: 172, type: !31)
!1723 = !DILocation(line: 171, column: 45, scope: !1716)
!1724 = !DILocation(line: 172, column: 33, scope: !1716)
!1725 = !DILocation(line: 172, column: 57, scope: !1716)
!1726 = !DILocation(line: 174, column: 8, scope: !1727)
!1727 = distinct !DILexicalBlock(scope: !1716, file: !192, line: 174, column: 7)
!1728 = !DILocation(line: 174, column: 7, scope: !1716)
!1729 = !DILocation(line: 176, column: 6, scope: !1716)
!1730 = !DILocation(line: 176, column: 12, scope: !1716)
!1731 = !DILocation(line: 177, column: 8, scope: !1732)
!1732 = distinct !DILexicalBlock(scope: !1716, file: !192, line: 177, column: 7)
!1733 = !DILocation(line: 177, column: 23, scope: !1734)
!1734 = !DILexicalBlockFile(scope: !1732, file: !192, discriminator: 1)
!1735 = !DILocation(line: 177, column: 19, scope: !1732)
!1736 = !DILocation(line: 178, column: 5, scope: !1732)
!1737 = !DILocation(line: 179, column: 6, scope: !1716)
!1738 = !DILocation(line: 179, column: 17, scope: !1716)
!1739 = !{!1651, !681, i64 40}
!1740 = !DILocation(line: 180, column: 6, scope: !1716)
!1741 = !DILocation(line: 180, column: 18, scope: !1716)
!1742 = !{!1651, !681, i64 48}
!1743 = !DILocation(line: 181, column: 1, scope: !1716)
!1744 = distinct !DISubprogram(name: "quotearg_buffer", scope: !192, file: !192, line: 776, type: !1745, isLocal: false, isDefinition: true, scopeLine: 779, flags: DIFlagPrototyped, isOptimized: true, unit: !151, variables: !1747)
!1745 = !DISubroutineType(types: !1746)
!1746 = !{!23, !13, !23, !31, !23, !1642}
!1747 = !{!1748, !1749, !1750, !1751, !1752, !1753, !1754, !1755}
!1748 = !DILocalVariable(name: "buffer", arg: 1, scope: !1744, file: !192, line: 776, type: !13)
!1749 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1744, file: !192, line: 776, type: !23)
!1750 = !DILocalVariable(name: "arg", arg: 3, scope: !1744, file: !192, line: 777, type: !31)
!1751 = !DILocalVariable(name: "argsize", arg: 4, scope: !1744, file: !192, line: 777, type: !23)
!1752 = !DILocalVariable(name: "o", arg: 5, scope: !1744, file: !192, line: 778, type: !1642)
!1753 = !DILocalVariable(name: "p", scope: !1744, file: !192, line: 780, type: !1642)
!1754 = !DILocalVariable(name: "e", scope: !1744, file: !192, line: 781, type: !21)
!1755 = !DILocalVariable(name: "r", scope: !1744, file: !192, line: 782, type: !23)
!1756 = !DILocation(line: 776, column: 24, scope: !1744)
!1757 = !DILocation(line: 776, column: 39, scope: !1744)
!1758 = !DILocation(line: 777, column: 30, scope: !1744)
!1759 = !DILocation(line: 777, column: 42, scope: !1744)
!1760 = !DILocation(line: 778, column: 48, scope: !1744)
!1761 = !DILocation(line: 780, column: 37, scope: !1744)
!1762 = !DILocation(line: 780, column: 33, scope: !1744)
!1763 = !DILocation(line: 781, column: 11, scope: !1744)
!1764 = !DILocation(line: 781, column: 7, scope: !1744)
!1765 = !DILocation(line: 783, column: 43, scope: !1744)
!1766 = !DILocation(line: 783, column: 53, scope: !1744)
!1767 = !DILocation(line: 783, column: 60, scope: !1744)
!1768 = !DILocation(line: 784, column: 43, scope: !1744)
!1769 = !DILocation(line: 784, column: 58, scope: !1744)
!1770 = !DILocation(line: 782, column: 14, scope: !1744)
!1771 = !DILocation(line: 782, column: 10, scope: !1744)
!1772 = !DILocation(line: 785, column: 9, scope: !1744)
!1773 = !DILocation(line: 786, column: 3, scope: !1744)
!1774 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !192, file: !192, line: 248, type: !1775, isLocal: true, isDefinition: true, scopeLine: 254, flags: DIFlagPrototyped, isOptimized: true, unit: !151, variables: !1779)
!1775 = !DISubroutineType(types: !1776)
!1776 = !{!23, !13, !23, !31, !23, !154, !21, !1777, !31, !31}
!1777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1778, size: 64)
!1778 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !205)
!1779 = !{!1780, !1781, !1782, !1783, !1784, !1785, !1786, !1787, !1788, !1789, !1790, !1791, !1792, !1793, !1794, !1795, !1796, !1797, !1798, !1799, !1800, !1804, !1805, !1806, !1807, !1808, !1811, !1812, !1829, !1832, !1833, !1840}
!1780 = !DILocalVariable(name: "buffer", arg: 1, scope: !1774, file: !192, line: 248, type: !13)
!1781 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1774, file: !192, line: 248, type: !23)
!1782 = !DILocalVariable(name: "arg", arg: 3, scope: !1774, file: !192, line: 249, type: !31)
!1783 = !DILocalVariable(name: "argsize", arg: 4, scope: !1774, file: !192, line: 249, type: !23)
!1784 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1774, file: !192, line: 250, type: !154)
!1785 = !DILocalVariable(name: "flags", arg: 6, scope: !1774, file: !192, line: 250, type: !21)
!1786 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1774, file: !192, line: 251, type: !1777)
!1787 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1774, file: !192, line: 252, type: !31)
!1788 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1774, file: !192, line: 253, type: !31)
!1789 = !DILocalVariable(name: "i", scope: !1774, file: !192, line: 255, type: !23)
!1790 = !DILocalVariable(name: "len", scope: !1774, file: !192, line: 256, type: !23)
!1791 = !DILocalVariable(name: "orig_buffersize", scope: !1774, file: !192, line: 257, type: !23)
!1792 = !DILocalVariable(name: "quote_string", scope: !1774, file: !192, line: 258, type: !31)
!1793 = !DILocalVariable(name: "quote_string_len", scope: !1774, file: !192, line: 259, type: !23)
!1794 = !DILocalVariable(name: "backslash_escapes", scope: !1774, file: !192, line: 260, type: !47)
!1795 = !DILocalVariable(name: "unibyte_locale", scope: !1774, file: !192, line: 261, type: !47)
!1796 = !DILocalVariable(name: "elide_outer_quotes", scope: !1774, file: !192, line: 262, type: !47)
!1797 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1774, file: !192, line: 263, type: !47)
!1798 = !DILocalVariable(name: "encountered_single_quote", scope: !1774, file: !192, line: 264, type: !47)
!1799 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1774, file: !192, line: 265, type: !47)
!1800 = !DILocalVariable(name: "c", scope: !1801, file: !192, line: 394, type: !30)
!1801 = distinct !DILexicalBlock(scope: !1802, file: !192, line: 393, column: 5)
!1802 = distinct !DILexicalBlock(scope: !1803, file: !192, line: 392, column: 3)
!1803 = distinct !DILexicalBlock(scope: !1774, file: !192, line: 392, column: 3)
!1804 = !DILocalVariable(name: "esc", scope: !1801, file: !192, line: 395, type: !30)
!1805 = !DILocalVariable(name: "is_right_quote", scope: !1801, file: !192, line: 396, type: !47)
!1806 = !DILocalVariable(name: "escaping", scope: !1801, file: !192, line: 397, type: !47)
!1807 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1801, file: !192, line: 398, type: !47)
!1808 = !DILocalVariable(name: "m", scope: !1809, file: !192, line: 602, type: !23)
!1809 = distinct !DILexicalBlock(scope: !1810, file: !192, line: 600, column: 11)
!1810 = distinct !DILexicalBlock(scope: !1801, file: !192, line: 418, column: 9)
!1811 = !DILocalVariable(name: "printable", scope: !1809, file: !192, line: 604, type: !47)
!1812 = !DILocalVariable(name: "mbstate", scope: !1813, file: !192, line: 613, type: !1815)
!1813 = distinct !DILexicalBlock(scope: !1814, file: !192, line: 612, column: 15)
!1814 = distinct !DILexicalBlock(scope: !1809, file: !192, line: 606, column: 17)
!1815 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1816, line: 107, baseType: !1817)
!1816 = !DIFile(filename: "/usr/include/wchar.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1817 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1816, line: 95, baseType: !1818)
!1818 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1816, line: 83, size: 64, elements: !1819)
!1819 = !{!1820, !1821}
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1818, file: !1816, line: 85, baseType: !21, size: 32)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1818, file: !1816, line: 94, baseType: !1822, size: 32, offset: 32)
!1822 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1818, file: !1816, line: 86, size: 32, elements: !1823)
!1823 = !{!1824, !1825}
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1822, file: !1816, line: 89, baseType: !205, size: 32)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1822, file: !1816, line: 93, baseType: !1826, size: 32)
!1826 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 32, elements: !1827)
!1827 = !{!1828}
!1828 = !DISubrange(count: 4)
!1829 = !DILocalVariable(name: "w", scope: !1830, file: !192, line: 623, type: !1831)
!1830 = distinct !DILexicalBlock(scope: !1813, file: !192, line: 622, column: 19)
!1831 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !24, line: 90, baseType: !21)
!1832 = !DILocalVariable(name: "bytes", scope: !1830, file: !192, line: 624, type: !23)
!1833 = !DILocalVariable(name: "j", scope: !1834, file: !192, line: 649, type: !23)
!1834 = distinct !DILexicalBlock(scope: !1835, file: !192, line: 648, column: 27)
!1835 = distinct !DILexicalBlock(scope: !1836, file: !192, line: 646, column: 29)
!1836 = distinct !DILexicalBlock(scope: !1837, file: !192, line: 641, column: 23)
!1837 = distinct !DILexicalBlock(scope: !1838, file: !192, line: 633, column: 30)
!1838 = distinct !DILexicalBlock(scope: !1839, file: !192, line: 628, column: 30)
!1839 = distinct !DILexicalBlock(scope: !1830, file: !192, line: 626, column: 25)
!1840 = !DILocalVariable(name: "ilim", scope: !1841, file: !192, line: 676, type: !23)
!1841 = distinct !DILexicalBlock(scope: !1842, file: !192, line: 673, column: 15)
!1842 = distinct !DILexicalBlock(scope: !1809, file: !192, line: 672, column: 17)
!1843 = !DILocation(line: 248, column: 33, scope: !1774)
!1844 = !DILocation(line: 248, column: 48, scope: !1774)
!1845 = !DILocation(line: 249, column: 39, scope: !1774)
!1846 = !DILocation(line: 249, column: 51, scope: !1774)
!1847 = !DILocation(line: 250, column: 46, scope: !1774)
!1848 = !DILocation(line: 250, column: 65, scope: !1774)
!1849 = !DILocation(line: 251, column: 47, scope: !1774)
!1850 = !DILocation(line: 252, column: 39, scope: !1774)
!1851 = !DILocation(line: 253, column: 39, scope: !1774)
!1852 = !DILocation(line: 256, column: 10, scope: !1774)
!1853 = !DILocation(line: 257, column: 10, scope: !1774)
!1854 = !DILocation(line: 258, column: 15, scope: !1774)
!1855 = !DILocation(line: 259, column: 10, scope: !1774)
!1856 = !DILocation(line: 260, column: 8, scope: !1774)
!1857 = !DILocation(line: 261, column: 25, scope: !1774)
!1858 = !DILocation(line: 261, column: 36, scope: !1774)
!1859 = !DILocation(line: 262, column: 8, scope: !1774)
!1860 = !DILocation(line: 263, column: 8, scope: !1774)
!1861 = !DILocation(line: 264, column: 8, scope: !1774)
!1862 = !DILocation(line: 265, column: 8, scope: !1774)
!1863 = !DILocation(line: 265, column: 3, scope: !1774)
!1864 = !DILocation(line: 308, column: 3, scope: !1774)
!1865 = !DILocation(line: 315, column: 11, scope: !1866)
!1866 = distinct !DILexicalBlock(scope: !1774, file: !192, line: 309, column: 5)
!1867 = !DILocation(line: 315, column: 12, scope: !1868)
!1868 = distinct !DILexicalBlock(scope: !1866, file: !192, line: 315, column: 11)
!1869 = !DILocation(line: 316, column: 9, scope: !1870)
!1870 = !DILexicalBlockFile(scope: !1871, file: !192, discriminator: 1)
!1871 = distinct !DILexicalBlock(scope: !1872, file: !192, line: 316, column: 9)
!1872 = distinct !DILexicalBlock(scope: !1868, file: !192, line: 316, column: 9)
!1873 = !DILocation(line: 316, column: 9, scope: !1874)
!1874 = !DILexicalBlockFile(scope: !1872, file: !192, discriminator: 1)
!1875 = !DILocation(line: 316, column: 9, scope: !1876)
!1876 = !DILexicalBlockFile(scope: !1871, file: !192, discriminator: 2)
!1877 = !DILocation(line: 354, column: 26, scope: !1878)
!1878 = distinct !DILexicalBlock(scope: !1879, file: !192, line: 332, column: 11)
!1879 = distinct !DILexicalBlock(scope: !1880, file: !192, line: 331, column: 13)
!1880 = distinct !DILexicalBlock(scope: !1866, file: !192, line: 330, column: 7)
!1881 = !DILocation(line: 355, column: 27, scope: !1878)
!1882 = !DILocation(line: 356, column: 11, scope: !1878)
!1883 = !DILocation(line: 357, column: 14, scope: !1884)
!1884 = distinct !DILexicalBlock(scope: !1880, file: !192, line: 357, column: 13)
!1885 = !DILocation(line: 357, column: 13, scope: !1880)
!1886 = !DILocation(line: 358, column: 43, scope: !1887)
!1887 = !DILexicalBlockFile(scope: !1888, file: !192, discriminator: 1)
!1888 = distinct !DILexicalBlock(scope: !1889, file: !192, line: 358, column: 11)
!1889 = distinct !DILexicalBlock(scope: !1884, file: !192, line: 358, column: 11)
!1890 = !DILocation(line: 358, column: 11, scope: !1891)
!1891 = !DILexicalBlockFile(scope: !1889, file: !192, discriminator: 1)
!1892 = !DILocation(line: 359, column: 13, scope: !1893)
!1893 = !DILexicalBlockFile(scope: !1894, file: !192, discriminator: 1)
!1894 = distinct !DILexicalBlock(scope: !1895, file: !192, line: 359, column: 13)
!1895 = distinct !DILexicalBlock(scope: !1888, file: !192, line: 359, column: 13)
!1896 = !DILocation(line: 359, column: 13, scope: !1897)
!1897 = !DILexicalBlockFile(scope: !1895, file: !192, discriminator: 1)
!1898 = !DILocation(line: 359, column: 13, scope: !1899)
!1899 = !DILexicalBlockFile(scope: !1894, file: !192, discriminator: 2)
!1900 = !DILocation(line: 359, column: 13, scope: !1901)
!1901 = !DILexicalBlockFile(scope: !1895, file: !192, discriminator: 3)
!1902 = !DILocation(line: 358, column: 70, scope: !1903)
!1903 = !DILexicalBlockFile(scope: !1888, file: !192, discriminator: 2)
!1904 = distinct !{!1904, !1905, !1906}
!1905 = !DILocation(line: 358, column: 11, scope: !1889)
!1906 = !DILocation(line: 359, column: 13, scope: !1889)
!1907 = !DILocation(line: 362, column: 28, scope: !1880)
!1908 = !DILocation(line: 364, column: 7, scope: !1866)
!1909 = !DILocation(line: 367, column: 7, scope: !1866)
!1910 = !DILocation(line: 370, column: 7, scope: !1866)
!1911 = !DILocation(line: 373, column: 12, scope: !1912)
!1912 = distinct !DILexicalBlock(scope: !1866, file: !192, line: 373, column: 11)
!1913 = !DILocation(line: 373, column: 11, scope: !1866)
!1914 = !DILocation(line: 378, column: 12, scope: !1915)
!1915 = distinct !DILexicalBlock(scope: !1866, file: !192, line: 378, column: 11)
!1916 = !DILocation(line: 378, column: 11, scope: !1866)
!1917 = !DILocation(line: 379, column: 9, scope: !1918)
!1918 = !DILexicalBlockFile(scope: !1919, file: !192, discriminator: 1)
!1919 = distinct !DILexicalBlock(scope: !1920, file: !192, line: 379, column: 9)
!1920 = distinct !DILexicalBlock(scope: !1915, file: !192, line: 379, column: 9)
!1921 = !DILocation(line: 379, column: 9, scope: !1922)
!1922 = !DILexicalBlockFile(scope: !1920, file: !192, discriminator: 1)
!1923 = !DILocation(line: 379, column: 9, scope: !1924)
!1924 = !DILexicalBlockFile(scope: !1919, file: !192, discriminator: 2)
!1925 = !DILocation(line: 386, column: 7, scope: !1866)
!1926 = !DILocation(line: 389, column: 7, scope: !1866)
!1927 = !DILocation(line: 255, column: 10, scope: !1774)
!1928 = !DILocation(line: 392, column: 8, scope: !1803)
!1929 = !DILocation(line: 392, column: 27, scope: !1930)
!1930 = !DILexicalBlockFile(scope: !1802, file: !192, discriminator: 1)
!1931 = !DILocation(line: 392, column: 19, scope: !1930)
!1932 = !DILocation(line: 392, column: 60, scope: !1933)
!1933 = !DILexicalBlockFile(scope: !1802, file: !192, discriminator: 3)
!1934 = !DILocation(line: 392, column: 3, scope: !1935)
!1935 = !DILexicalBlockFile(scope: !1803, file: !192, discriminator: 4)
!1936 = !DILocation(line: 392, column: 41, scope: !1937)
!1937 = !DILexicalBlockFile(scope: !1802, file: !192, discriminator: 2)
!1938 = !DILocation(line: 392, column: 48, scope: !1937)
!1939 = !DILocation(line: 396, column: 12, scope: !1801)
!1940 = !DILocation(line: 397, column: 12, scope: !1801)
!1941 = !DILocation(line: 398, column: 12, scope: !1801)
!1942 = !DILocation(line: 401, column: 11, scope: !1943)
!1943 = distinct !DILexicalBlock(scope: !1801, file: !192, line: 400, column: 11)
!1944 = !DILocation(line: 403, column: 17, scope: !1945)
!1945 = !DILexicalBlockFile(scope: !1943, file: !192, discriminator: 1)
!1946 = !DILocation(line: 404, column: 39, scope: !1943)
!1947 = !DILocation(line: 408, column: 32, scope: !1943)
!1948 = !DILocation(line: 404, column: 19, scope: !1949)
!1949 = !DILexicalBlockFile(scope: !1943, file: !192, discriminator: 2)
!1950 = !DILocation(line: 404, column: 15, scope: !1951)
!1951 = !DILexicalBlockFile(scope: !1943, file: !192, discriminator: 4)
!1952 = !DILocation(line: 409, column: 11, scope: !1943)
!1953 = !DILocation(line: 409, column: 26, scope: !1945)
!1954 = !DILocation(line: 409, column: 14, scope: !1945)
!1955 = !DILocation(line: 400, column: 11, scope: !1956)
!1956 = !DILexicalBlockFile(scope: !1801, file: !192, discriminator: 1)
!1957 = !DILocation(line: 416, column: 11, scope: !1801)
!1958 = !DILocation(line: 394, column: 21, scope: !1801)
!1959 = !DILocation(line: 417, column: 7, scope: !1801)
!1960 = !DILocation(line: 420, column: 15, scope: !1810)
!1961 = !DILocation(line: 422, column: 15, scope: !1962)
!1962 = !DILexicalBlockFile(scope: !1963, file: !192, discriminator: 1)
!1963 = distinct !DILexicalBlock(scope: !1964, file: !192, line: 422, column: 15)
!1964 = distinct !DILexicalBlock(scope: !1965, file: !192, line: 421, column: 13)
!1965 = distinct !DILexicalBlock(scope: !1810, file: !192, line: 420, column: 15)
!1966 = !DILocation(line: 422, column: 15, scope: !1967)
!1967 = !DILexicalBlockFile(scope: !1968, file: !192, discriminator: 4)
!1968 = distinct !DILexicalBlock(scope: !1963, file: !192, line: 422, column: 15)
!1969 = !DILocation(line: 422, column: 15, scope: !1970)
!1970 = !DILexicalBlockFile(scope: !1968, file: !192, discriminator: 3)
!1971 = !DILocation(line: 422, column: 15, scope: !1972)
!1972 = !DILexicalBlockFile(scope: !1973, file: !192, discriminator: 6)
!1973 = distinct !DILexicalBlock(scope: !1974, file: !192, line: 422, column: 15)
!1974 = distinct !DILexicalBlock(scope: !1975, file: !192, line: 422, column: 15)
!1975 = distinct !DILexicalBlock(scope: !1968, file: !192, line: 422, column: 15)
!1976 = !DILocation(line: 422, column: 15, scope: !1977)
!1977 = !DILexicalBlockFile(scope: !1974, file: !192, discriminator: 6)
!1978 = !DILocation(line: 422, column: 15, scope: !1979)
!1979 = !DILexicalBlockFile(scope: !1973, file: !192, discriminator: 7)
!1980 = !DILocation(line: 422, column: 15, scope: !1981)
!1981 = !DILexicalBlockFile(scope: !1974, file: !192, discriminator: 8)
!1982 = !DILocation(line: 422, column: 15, scope: !1983)
!1983 = !DILexicalBlockFile(scope: !1984, file: !192, discriminator: 11)
!1984 = distinct !DILexicalBlock(scope: !1985, file: !192, line: 422, column: 15)
!1985 = distinct !DILexicalBlock(scope: !1975, file: !192, line: 422, column: 15)
!1986 = !DILocation(line: 422, column: 15, scope: !1987)
!1987 = !DILexicalBlockFile(scope: !1985, file: !192, discriminator: 11)
!1988 = !DILocation(line: 422, column: 15, scope: !1989)
!1989 = !DILexicalBlockFile(scope: !1984, file: !192, discriminator: 12)
!1990 = !DILocation(line: 422, column: 15, scope: !1991)
!1991 = !DILexicalBlockFile(scope: !1985, file: !192, discriminator: 13)
!1992 = !DILocation(line: 422, column: 15, scope: !1993)
!1993 = !DILexicalBlockFile(scope: !1994, file: !192, discriminator: 16)
!1994 = distinct !DILexicalBlock(scope: !1995, file: !192, line: 422, column: 15)
!1995 = distinct !DILexicalBlock(scope: !1975, file: !192, line: 422, column: 15)
!1996 = !DILocation(line: 422, column: 15, scope: !1997)
!1997 = !DILexicalBlockFile(scope: !1995, file: !192, discriminator: 16)
!1998 = !DILocation(line: 422, column: 15, scope: !1999)
!1999 = !DILexicalBlockFile(scope: !1994, file: !192, discriminator: 17)
!2000 = !DILocation(line: 422, column: 15, scope: !2001)
!2001 = !DILexicalBlockFile(scope: !1995, file: !192, discriminator: 18)
!2002 = !DILocation(line: 422, column: 15, scope: !2003)
!2003 = !DILexicalBlockFile(scope: !1975, file: !192, discriminator: 20)
!2004 = !DILocation(line: 422, column: 15, scope: !2005)
!2005 = !DILexicalBlockFile(scope: !2006, file: !192, discriminator: 22)
!2006 = distinct !DILexicalBlock(scope: !2007, file: !192, line: 422, column: 15)
!2007 = distinct !DILexicalBlock(scope: !1963, file: !192, line: 422, column: 15)
!2008 = !DILocation(line: 422, column: 15, scope: !2009)
!2009 = !DILexicalBlockFile(scope: !2007, file: !192, discriminator: 22)
!2010 = !DILocation(line: 422, column: 15, scope: !2011)
!2011 = !DILexicalBlockFile(scope: !2006, file: !192, discriminator: 23)
!2012 = !DILocation(line: 422, column: 15, scope: !2013)
!2013 = !DILexicalBlockFile(scope: !2007, file: !192, discriminator: 24)
!2014 = !DILocation(line: 430, column: 19, scope: !2015)
!2015 = distinct !DILexicalBlock(scope: !1964, file: !192, line: 429, column: 19)
!2016 = !DILocation(line: 430, column: 24, scope: !2017)
!2017 = !DILexicalBlockFile(scope: !2015, file: !192, discriminator: 1)
!2018 = !DILocation(line: 430, column: 28, scope: !2017)
!2019 = !DILocation(line: 430, column: 38, scope: !2017)
!2020 = !DILocation(line: 430, column: 48, scope: !2021)
!2021 = !DILexicalBlockFile(scope: !2015, file: !192, discriminator: 2)
!2022 = !DILocation(line: 430, column: 59, scope: !2021)
!2023 = !DILocation(line: 432, column: 19, scope: !2024)
!2024 = !DILexicalBlockFile(scope: !2025, file: !192, discriminator: 1)
!2025 = distinct !DILexicalBlock(scope: !2026, file: !192, line: 432, column: 19)
!2026 = distinct !DILexicalBlock(scope: !2027, file: !192, line: 432, column: 19)
!2027 = distinct !DILexicalBlock(scope: !2015, file: !192, line: 431, column: 17)
!2028 = !DILocation(line: 432, column: 19, scope: !2029)
!2029 = !DILexicalBlockFile(scope: !2026, file: !192, discriminator: 1)
!2030 = !DILocation(line: 432, column: 19, scope: !2031)
!2031 = !DILexicalBlockFile(scope: !2025, file: !192, discriminator: 2)
!2032 = !DILocation(line: 432, column: 19, scope: !2033)
!2033 = !DILexicalBlockFile(scope: !2026, file: !192, discriminator: 3)
!2034 = !DILocation(line: 433, column: 19, scope: !2035)
!2035 = !DILexicalBlockFile(scope: !2036, file: !192, discriminator: 1)
!2036 = distinct !DILexicalBlock(scope: !2037, file: !192, line: 433, column: 19)
!2037 = distinct !DILexicalBlock(scope: !2027, file: !192, line: 433, column: 19)
!2038 = !DILocation(line: 433, column: 19, scope: !2039)
!2039 = !DILexicalBlockFile(scope: !2037, file: !192, discriminator: 1)
!2040 = !DILocation(line: 433, column: 19, scope: !2041)
!2041 = !DILexicalBlockFile(scope: !2036, file: !192, discriminator: 2)
!2042 = !DILocation(line: 433, column: 19, scope: !2043)
!2043 = !DILexicalBlockFile(scope: !2037, file: !192, discriminator: 3)
!2044 = !DILocation(line: 434, column: 17, scope: !2027)
!2045 = !DILocation(line: 441, column: 20, scope: !1965)
!2046 = !DILocation(line: 446, column: 11, scope: !1810)
!2047 = !DILocation(line: 449, column: 19, scope: !2048)
!2048 = distinct !DILexicalBlock(scope: !1810, file: !192, line: 447, column: 13)
!2049 = !DILocation(line: 455, column: 19, scope: !2050)
!2050 = distinct !DILexicalBlock(scope: !2048, file: !192, line: 454, column: 19)
!2051 = !DILocation(line: 455, column: 24, scope: !2052)
!2052 = !DILexicalBlockFile(scope: !2050, file: !192, discriminator: 1)
!2053 = !DILocation(line: 455, column: 28, scope: !2052)
!2054 = !DILocation(line: 455, column: 38, scope: !2052)
!2055 = !DILocation(line: 455, column: 47, scope: !2056)
!2056 = !DILexicalBlockFile(scope: !2050, file: !192, discriminator: 2)
!2057 = !DILocation(line: 455, column: 41, scope: !2056)
!2058 = !DILocation(line: 455, column: 52, scope: !2056)
!2059 = !DILocation(line: 454, column: 19, scope: !2060)
!2060 = !DILexicalBlockFile(scope: !2048, file: !192, discriminator: 1)
!2061 = !DILocation(line: 456, column: 25, scope: !2050)
!2062 = !DILocation(line: 456, column: 17, scope: !2050)
!2063 = !DILocation(line: 463, column: 25, scope: !2064)
!2064 = distinct !DILexicalBlock(scope: !2050, file: !192, line: 457, column: 19)
!2065 = !DILocation(line: 467, column: 21, scope: !2066)
!2066 = !DILexicalBlockFile(scope: !2067, file: !192, discriminator: 1)
!2067 = distinct !DILexicalBlock(scope: !2068, file: !192, line: 467, column: 21)
!2068 = distinct !DILexicalBlock(scope: !2064, file: !192, line: 467, column: 21)
!2069 = !DILocation(line: 467, column: 21, scope: !2070)
!2070 = !DILexicalBlockFile(scope: !2068, file: !192, discriminator: 1)
!2071 = !DILocation(line: 467, column: 21, scope: !2072)
!2072 = !DILexicalBlockFile(scope: !2067, file: !192, discriminator: 2)
!2073 = !DILocation(line: 467, column: 21, scope: !2074)
!2074 = !DILexicalBlockFile(scope: !2068, file: !192, discriminator: 3)
!2075 = !DILocation(line: 468, column: 21, scope: !2076)
!2076 = !DILexicalBlockFile(scope: !2077, file: !192, discriminator: 1)
!2077 = distinct !DILexicalBlock(scope: !2078, file: !192, line: 468, column: 21)
!2078 = distinct !DILexicalBlock(scope: !2064, file: !192, line: 468, column: 21)
!2079 = !DILocation(line: 468, column: 21, scope: !2080)
!2080 = !DILexicalBlockFile(scope: !2078, file: !192, discriminator: 1)
!2081 = !DILocation(line: 468, column: 21, scope: !2082)
!2082 = !DILexicalBlockFile(scope: !2077, file: !192, discriminator: 2)
!2083 = !DILocation(line: 468, column: 21, scope: !2084)
!2084 = !DILexicalBlockFile(scope: !2078, file: !192, discriminator: 3)
!2085 = !DILocation(line: 469, column: 21, scope: !2086)
!2086 = !DILexicalBlockFile(scope: !2087, file: !192, discriminator: 1)
!2087 = distinct !DILexicalBlock(scope: !2088, file: !192, line: 469, column: 21)
!2088 = distinct !DILexicalBlock(scope: !2064, file: !192, line: 469, column: 21)
!2089 = !DILocation(line: 469, column: 21, scope: !2090)
!2090 = !DILexicalBlockFile(scope: !2088, file: !192, discriminator: 1)
!2091 = !DILocation(line: 469, column: 21, scope: !2092)
!2092 = !DILexicalBlockFile(scope: !2087, file: !192, discriminator: 2)
!2093 = !DILocation(line: 469, column: 21, scope: !2094)
!2094 = !DILexicalBlockFile(scope: !2088, file: !192, discriminator: 3)
!2095 = !DILocation(line: 470, column: 21, scope: !2096)
!2096 = !DILexicalBlockFile(scope: !2097, file: !192, discriminator: 1)
!2097 = distinct !DILexicalBlock(scope: !2098, file: !192, line: 470, column: 21)
!2098 = distinct !DILexicalBlock(scope: !2064, file: !192, line: 470, column: 21)
!2099 = !DILocation(line: 470, column: 21, scope: !2100)
!2100 = !DILexicalBlockFile(scope: !2098, file: !192, discriminator: 1)
!2101 = !DILocation(line: 470, column: 21, scope: !2102)
!2102 = !DILexicalBlockFile(scope: !2097, file: !192, discriminator: 2)
!2103 = !DILocation(line: 470, column: 21, scope: !2104)
!2104 = !DILexicalBlockFile(scope: !2098, file: !192, discriminator: 3)
!2105 = !DILocation(line: 471, column: 21, scope: !2064)
!2106 = !DILocation(line: 395, column: 21, scope: !1801)
!2107 = !DILocation(line: 484, column: 31, scope: !1810)
!2108 = !DILocation(line: 485, column: 31, scope: !1810)
!2109 = !DILocation(line: 487, column: 31, scope: !1810)
!2110 = !DILocation(line: 488, column: 31, scope: !1810)
!2111 = !DILocation(line: 489, column: 31, scope: !1810)
!2112 = !DILocation(line: 492, column: 15, scope: !1810)
!2113 = !DILocation(line: 494, column: 19, scope: !2114)
!2114 = distinct !DILexicalBlock(scope: !2115, file: !192, line: 493, column: 13)
!2115 = distinct !DILexicalBlock(scope: !1810, file: !192, line: 492, column: 15)
!2116 = !DILocation(line: 501, column: 33, scope: !2117)
!2117 = distinct !DILexicalBlock(scope: !1810, file: !192, line: 501, column: 15)
!2118 = !DILocation(line: 506, column: 15, scope: !2119)
!2119 = distinct !DILexicalBlock(scope: !1810, file: !192, line: 505, column: 15)
!2120 = !DILocation(line: 510, column: 15, scope: !1810)
!2121 = !DILocation(line: 518, column: 26, scope: !2122)
!2122 = distinct !DILexicalBlock(scope: !1810, file: !192, line: 518, column: 15)
!2123 = !DILocation(line: 518, column: 15, scope: !1810)
!2124 = !DILocation(line: 518, column: 40, scope: !2125)
!2125 = !DILexicalBlockFile(scope: !2122, file: !192, discriminator: 1)
!2126 = !DILocation(line: 518, column: 47, scope: !2125)
!2127 = !DILocation(line: 522, column: 17, scope: !2128)
!2128 = distinct !DILexicalBlock(scope: !1810, file: !192, line: 522, column: 15)
!2129 = !DILocation(line: 518, column: 18, scope: !2125)
!2130 = !DILocation(line: 518, column: 65, scope: !2131)
!2131 = !DILexicalBlockFile(scope: !2122, file: !192, discriminator: 2)
!2132 = !DILocation(line: 518, column: 15, scope: !2133)
!2133 = !DILexicalBlockFile(scope: !1810, file: !192, discriminator: 2)
!2134 = !DILocation(line: 522, column: 15, scope: !1810)
!2135 = !DILocation(line: 526, column: 11, scope: !1810)
!2136 = !DILocation(line: 541, column: 15, scope: !2137)
!2137 = distinct !DILexicalBlock(scope: !1810, file: !192, line: 540, column: 15)
!2138 = !DILocation(line: 548, column: 15, scope: !1810)
!2139 = !DILocation(line: 550, column: 19, scope: !2140)
!2140 = distinct !DILexicalBlock(scope: !2141, file: !192, line: 549, column: 13)
!2141 = distinct !DILexicalBlock(scope: !1810, file: !192, line: 548, column: 15)
!2142 = !DILocation(line: 553, column: 19, scope: !2143)
!2143 = distinct !DILexicalBlock(scope: !2140, file: !192, line: 553, column: 19)
!2144 = !DILocation(line: 553, column: 35, scope: !2145)
!2145 = !DILexicalBlockFile(scope: !2143, file: !192, discriminator: 1)
!2146 = !DILocation(line: 553, column: 30, scope: !2143)
!2147 = !DILocation(line: 562, column: 15, scope: !2148)
!2148 = !DILexicalBlockFile(scope: !2149, file: !192, discriminator: 1)
!2149 = distinct !DILexicalBlock(scope: !2150, file: !192, line: 562, column: 15)
!2150 = distinct !DILexicalBlock(scope: !2140, file: !192, line: 562, column: 15)
!2151 = !DILocation(line: 562, column: 15, scope: !2152)
!2152 = !DILexicalBlockFile(scope: !2150, file: !192, discriminator: 1)
!2153 = !DILocation(line: 562, column: 15, scope: !2154)
!2154 = !DILexicalBlockFile(scope: !2149, file: !192, discriminator: 2)
!2155 = !DILocation(line: 562, column: 15, scope: !2156)
!2156 = !DILexicalBlockFile(scope: !2150, file: !192, discriminator: 3)
!2157 = !DILocation(line: 563, column: 15, scope: !2158)
!2158 = !DILexicalBlockFile(scope: !2159, file: !192, discriminator: 1)
!2159 = distinct !DILexicalBlock(scope: !2160, file: !192, line: 563, column: 15)
!2160 = distinct !DILexicalBlock(scope: !2140, file: !192, line: 563, column: 15)
!2161 = !DILocation(line: 563, column: 15, scope: !2162)
!2162 = !DILexicalBlockFile(scope: !2160, file: !192, discriminator: 1)
!2163 = !DILocation(line: 563, column: 15, scope: !2164)
!2164 = !DILexicalBlockFile(scope: !2159, file: !192, discriminator: 2)
!2165 = !DILocation(line: 563, column: 15, scope: !2166)
!2166 = !DILexicalBlockFile(scope: !2160, file: !192, discriminator: 3)
!2167 = !DILocation(line: 564, column: 15, scope: !2168)
!2168 = !DILexicalBlockFile(scope: !2169, file: !192, discriminator: 1)
!2169 = distinct !DILexicalBlock(scope: !2170, file: !192, line: 564, column: 15)
!2170 = distinct !DILexicalBlock(scope: !2140, file: !192, line: 564, column: 15)
!2171 = !DILocation(line: 564, column: 15, scope: !2172)
!2172 = !DILexicalBlockFile(scope: !2170, file: !192, discriminator: 1)
!2173 = !DILocation(line: 564, column: 15, scope: !2174)
!2174 = !DILexicalBlockFile(scope: !2169, file: !192, discriminator: 2)
!2175 = !DILocation(line: 564, column: 15, scope: !2176)
!2176 = !DILexicalBlockFile(scope: !2170, file: !192, discriminator: 3)
!2177 = !DILocation(line: 566, column: 13, scope: !2140)
!2178 = !DILocation(line: 606, column: 17, scope: !1809)
!2179 = !DILocation(line: 602, column: 20, scope: !1809)
!2180 = !DILocation(line: 609, column: 29, scope: !2181)
!2181 = distinct !DILexicalBlock(scope: !1814, file: !192, line: 607, column: 15)
!2182 = !{!2183, !2183, i64 0}
!2183 = !{!"short", !682, i64 0}
!2184 = !DILocation(line: 609, column: 27, scope: !2181)
!2185 = !DILocation(line: 604, column: 18, scope: !1809)
!2186 = !DILocation(line: 610, column: 15, scope: !2181)
!2187 = !DILocation(line: 613, column: 17, scope: !1813)
!2188 = !DILocation(line: 614, column: 17, scope: !1813)
!2189 = !DILocation(line: 618, column: 29, scope: !2190)
!2190 = distinct !DILexicalBlock(scope: !1813, file: !192, line: 618, column: 21)
!2191 = !DILocation(line: 618, column: 21, scope: !1813)
!2192 = distinct !{!2192, !2193, !2194}
!2193 = !DILocation(line: 621, column: 17, scope: !1813)
!2194 = !DILocation(line: 667, column: 44, scope: !1813)
!2195 = !DILocation(line: 619, column: 29, scope: !2190)
!2196 = !DILocation(line: 619, column: 19, scope: !2190)
!2197 = !DILocation(line: 623, column: 21, scope: !1830)
!2198 = !DILocation(line: 624, column: 56, scope: !1830)
!2199 = !DILocation(line: 624, column: 50, scope: !1830)
!2200 = !DILocation(line: 625, column: 53, scope: !1830)
!2201 = !DILocation(line: 613, column: 27, scope: !1813)
!2202 = !DILocation(line: 623, column: 29, scope: !1830)
!2203 = !DILocation(line: 624, column: 36, scope: !1830)
!2204 = !DILocation(line: 624, column: 28, scope: !1830)
!2205 = !DILocation(line: 626, column: 25, scope: !1830)
!2206 = !DILocation(line: 636, column: 38, scope: !2207)
!2207 = !DILexicalBlockFile(scope: !2208, file: !192, discriminator: 1)
!2208 = distinct !DILexicalBlock(scope: !1837, file: !192, line: 634, column: 23)
!2209 = !DILocation(line: 636, column: 48, scope: !2207)
!2210 = !DILocation(line: 636, column: 51, scope: !2211)
!2211 = !DILexicalBlockFile(scope: !2208, file: !192, discriminator: 2)
!2212 = !DILocation(line: 636, column: 48, scope: !2211)
!2213 = !DILocation(line: 636, column: 25, scope: !2214)
!2214 = !DILexicalBlockFile(scope: !2208, file: !192, discriminator: 3)
!2215 = !DILocation(line: 637, column: 28, scope: !2208)
!2216 = !DILocation(line: 636, column: 34, scope: !2207)
!2217 = distinct !{!2217, !2218, !2215}
!2218 = !DILocation(line: 636, column: 25, scope: !2208)
!2219 = !DILocation(line: 650, column: 43, scope: !2220)
!2220 = !DILexicalBlockFile(scope: !2221, file: !192, discriminator: 1)
!2221 = distinct !DILexicalBlock(scope: !2222, file: !192, line: 650, column: 29)
!2222 = distinct !DILexicalBlock(scope: !1834, file: !192, line: 650, column: 29)
!2223 = !DILocation(line: 647, column: 29, scope: !1835)
!2224 = !DILocation(line: 649, column: 36, scope: !1834)
!2225 = !DILocation(line: 651, column: 49, scope: !2221)
!2226 = !DILocation(line: 651, column: 39, scope: !2221)
!2227 = !DILocation(line: 651, column: 31, scope: !2221)
!2228 = !DILocation(line: 650, column: 53, scope: !2229)
!2229 = !DILexicalBlockFile(scope: !2221, file: !192, discriminator: 2)
!2230 = !DILocation(line: 650, column: 29, scope: !2231)
!2231 = !DILexicalBlockFile(scope: !2222, file: !192, discriminator: 1)
!2232 = distinct !{!2232, !2233, !2234}
!2233 = !DILocation(line: 650, column: 29, scope: !2222)
!2234 = !DILocation(line: 659, column: 33, scope: !2222)
!2235 = !DILocation(line: 666, column: 19, scope: !1813)
!2236 = !DILocation(line: 662, column: 41, scope: !2237)
!2237 = distinct !DILexicalBlock(scope: !1836, file: !192, line: 662, column: 29)
!2238 = !DILocation(line: 662, column: 31, scope: !2237)
!2239 = !DILocation(line: 662, column: 29, scope: !1836)
!2240 = !DILocation(line: 664, column: 27, scope: !1836)
!2241 = !DILocation(line: 667, column: 26, scope: !1813)
!2242 = !DILocation(line: 667, column: 24, scope: !1813)
!2243 = !DILocation(line: 666, column: 19, scope: !2244)
!2244 = !DILexicalBlockFile(scope: !1830, file: !192, discriminator: 3)
!2245 = !DILocation(line: 668, column: 15, scope: !1814)
!2246 = !DILocation(line: 670, column: 40, scope: !1809)
!2247 = !DILocation(line: 672, column: 19, scope: !1842)
!2248 = !DILocation(line: 672, column: 45, scope: !2249)
!2249 = !DILexicalBlockFile(scope: !1842, file: !192, discriminator: 1)
!2250 = !DILocation(line: 672, column: 23, scope: !1842)
!2251 = !DILocation(line: 676, column: 33, scope: !1841)
!2252 = !DILocation(line: 676, column: 24, scope: !1841)
!2253 = !DILocation(line: 678, column: 17, scope: !1841)
!2254 = !DILocation(line: 680, column: 43, scope: !2255)
!2255 = distinct !DILexicalBlock(scope: !2256, file: !192, line: 680, column: 25)
!2256 = distinct !DILexicalBlock(scope: !2257, file: !192, line: 679, column: 19)
!2257 = distinct !DILexicalBlock(scope: !2258, file: !192, line: 678, column: 17)
!2258 = distinct !DILexicalBlock(scope: !1841, file: !192, line: 678, column: 17)
!2259 = !DILocation(line: 682, column: 25, scope: !2260)
!2260 = !DILexicalBlockFile(scope: !2261, file: !192, discriminator: 1)
!2261 = distinct !DILexicalBlock(scope: !2262, file: !192, line: 682, column: 25)
!2262 = distinct !DILexicalBlock(scope: !2255, file: !192, line: 681, column: 23)
!2263 = !DILocation(line: 682, column: 25, scope: !2264)
!2264 = !DILexicalBlockFile(scope: !2265, file: !192, discriminator: 4)
!2265 = distinct !DILexicalBlock(scope: !2261, file: !192, line: 682, column: 25)
!2266 = !DILocation(line: 682, column: 25, scope: !2267)
!2267 = !DILexicalBlockFile(scope: !2265, file: !192, discriminator: 3)
!2268 = !DILocation(line: 682, column: 25, scope: !2269)
!2269 = !DILexicalBlockFile(scope: !2270, file: !192, discriminator: 6)
!2270 = distinct !DILexicalBlock(scope: !2271, file: !192, line: 682, column: 25)
!2271 = distinct !DILexicalBlock(scope: !2272, file: !192, line: 682, column: 25)
!2272 = distinct !DILexicalBlock(scope: !2265, file: !192, line: 682, column: 25)
!2273 = !DILocation(line: 682, column: 25, scope: !2274)
!2274 = !DILexicalBlockFile(scope: !2271, file: !192, discriminator: 6)
!2275 = !DILocation(line: 682, column: 25, scope: !2276)
!2276 = !DILexicalBlockFile(scope: !2270, file: !192, discriminator: 7)
!2277 = !DILocation(line: 682, column: 25, scope: !2278)
!2278 = !DILexicalBlockFile(scope: !2271, file: !192, discriminator: 8)
!2279 = !DILocation(line: 682, column: 25, scope: !2280)
!2280 = !DILexicalBlockFile(scope: !2281, file: !192, discriminator: 11)
!2281 = distinct !DILexicalBlock(scope: !2282, file: !192, line: 682, column: 25)
!2282 = distinct !DILexicalBlock(scope: !2272, file: !192, line: 682, column: 25)
!2283 = !DILocation(line: 682, column: 25, scope: !2284)
!2284 = !DILexicalBlockFile(scope: !2282, file: !192, discriminator: 11)
!2285 = !DILocation(line: 682, column: 25, scope: !2286)
!2286 = !DILexicalBlockFile(scope: !2281, file: !192, discriminator: 12)
!2287 = !DILocation(line: 682, column: 25, scope: !2288)
!2288 = !DILexicalBlockFile(scope: !2282, file: !192, discriminator: 13)
!2289 = !DILocation(line: 682, column: 25, scope: !2290)
!2290 = !DILexicalBlockFile(scope: !2291, file: !192, discriminator: 16)
!2291 = distinct !DILexicalBlock(scope: !2292, file: !192, line: 682, column: 25)
!2292 = distinct !DILexicalBlock(scope: !2272, file: !192, line: 682, column: 25)
!2293 = !DILocation(line: 682, column: 25, scope: !2294)
!2294 = !DILexicalBlockFile(scope: !2292, file: !192, discriminator: 16)
!2295 = !DILocation(line: 682, column: 25, scope: !2296)
!2296 = !DILexicalBlockFile(scope: !2291, file: !192, discriminator: 17)
!2297 = !DILocation(line: 682, column: 25, scope: !2298)
!2298 = !DILexicalBlockFile(scope: !2292, file: !192, discriminator: 18)
!2299 = !DILocation(line: 682, column: 25, scope: !2300)
!2300 = !DILexicalBlockFile(scope: !2272, file: !192, discriminator: 20)
!2301 = !DILocation(line: 682, column: 25, scope: !2302)
!2302 = !DILexicalBlockFile(scope: !2303, file: !192, discriminator: 22)
!2303 = distinct !DILexicalBlock(scope: !2304, file: !192, line: 682, column: 25)
!2304 = distinct !DILexicalBlock(scope: !2261, file: !192, line: 682, column: 25)
!2305 = !DILocation(line: 682, column: 25, scope: !2306)
!2306 = !DILexicalBlockFile(scope: !2304, file: !192, discriminator: 22)
!2307 = !DILocation(line: 682, column: 25, scope: !2308)
!2308 = !DILexicalBlockFile(scope: !2303, file: !192, discriminator: 23)
!2309 = !DILocation(line: 682, column: 25, scope: !2310)
!2310 = !DILexicalBlockFile(scope: !2304, file: !192, discriminator: 24)
!2311 = !DILocation(line: 683, column: 25, scope: !2312)
!2312 = !DILexicalBlockFile(scope: !2313, file: !192, discriminator: 1)
!2313 = distinct !DILexicalBlock(scope: !2314, file: !192, line: 683, column: 25)
!2314 = distinct !DILexicalBlock(scope: !2262, file: !192, line: 683, column: 25)
!2315 = !DILocation(line: 683, column: 25, scope: !2316)
!2316 = !DILexicalBlockFile(scope: !2314, file: !192, discriminator: 1)
!2317 = !DILocation(line: 683, column: 25, scope: !2318)
!2318 = !DILexicalBlockFile(scope: !2313, file: !192, discriminator: 2)
!2319 = !DILocation(line: 683, column: 25, scope: !2320)
!2320 = !DILexicalBlockFile(scope: !2314, file: !192, discriminator: 3)
!2321 = !DILocation(line: 684, column: 25, scope: !2322)
!2322 = !DILexicalBlockFile(scope: !2323, file: !192, discriminator: 1)
!2323 = distinct !DILexicalBlock(scope: !2324, file: !192, line: 684, column: 25)
!2324 = distinct !DILexicalBlock(scope: !2262, file: !192, line: 684, column: 25)
!2325 = !DILocation(line: 684, column: 25, scope: !2326)
!2326 = !DILexicalBlockFile(scope: !2324, file: !192, discriminator: 1)
!2327 = !DILocation(line: 684, column: 25, scope: !2328)
!2328 = !DILexicalBlockFile(scope: !2323, file: !192, discriminator: 2)
!2329 = !DILocation(line: 684, column: 25, scope: !2330)
!2330 = !DILexicalBlockFile(scope: !2324, file: !192, discriminator: 3)
!2331 = !DILocation(line: 685, column: 38, scope: !2262)
!2332 = !DILocation(line: 685, column: 33, scope: !2262)
!2333 = !DILocation(line: 686, column: 23, scope: !2262)
!2334 = !DILocation(line: 687, column: 30, scope: !2335)
!2335 = distinct !DILexicalBlock(scope: !2255, file: !192, line: 687, column: 30)
!2336 = !DILocation(line: 687, column: 30, scope: !2255)
!2337 = !DILocation(line: 689, column: 25, scope: !2338)
!2338 = !DILexicalBlockFile(scope: !2339, file: !192, discriminator: 1)
!2339 = distinct !DILexicalBlock(scope: !2340, file: !192, line: 689, column: 25)
!2340 = distinct !DILexicalBlock(scope: !2341, file: !192, line: 689, column: 25)
!2341 = distinct !DILexicalBlock(scope: !2335, file: !192, line: 688, column: 23)
!2342 = !DILocation(line: 689, column: 25, scope: !2343)
!2343 = !DILexicalBlockFile(scope: !2340, file: !192, discriminator: 1)
!2344 = !DILocation(line: 689, column: 25, scope: !2345)
!2345 = !DILexicalBlockFile(scope: !2339, file: !192, discriminator: 2)
!2346 = !DILocation(line: 689, column: 25, scope: !2347)
!2347 = !DILexicalBlockFile(scope: !2340, file: !192, discriminator: 3)
!2348 = !DILocation(line: 691, column: 23, scope: !2341)
!2349 = !DILocation(line: 692, column: 35, scope: !2350)
!2350 = distinct !DILexicalBlock(scope: !2256, file: !192, line: 692, column: 25)
!2351 = !DILocation(line: 692, column: 30, scope: !2350)
!2352 = !DILocation(line: 692, column: 25, scope: !2256)
!2353 = !DILocation(line: 694, column: 21, scope: !2354)
!2354 = !DILexicalBlockFile(scope: !2355, file: !192, discriminator: 1)
!2355 = distinct !DILexicalBlock(scope: !2356, file: !192, line: 694, column: 21)
!2356 = distinct !DILexicalBlock(scope: !2256, file: !192, line: 694, column: 21)
!2357 = !DILocation(line: 694, column: 21, scope: !2358)
!2358 = !DILexicalBlockFile(scope: !2355, file: !192, discriminator: 2)
!2359 = !DILocation(line: 694, column: 21, scope: !2360)
!2360 = !DILexicalBlockFile(scope: !2361, file: !192, discriminator: 4)
!2361 = distinct !DILexicalBlock(scope: !2362, file: !192, line: 694, column: 21)
!2362 = distinct !DILexicalBlock(scope: !2363, file: !192, line: 694, column: 21)
!2363 = distinct !DILexicalBlock(scope: !2355, file: !192, line: 694, column: 21)
!2364 = !DILocation(line: 694, column: 21, scope: !2365)
!2365 = !DILexicalBlockFile(scope: !2362, file: !192, discriminator: 4)
!2366 = !DILocation(line: 694, column: 21, scope: !2367)
!2367 = !DILexicalBlockFile(scope: !2361, file: !192, discriminator: 5)
!2368 = !DILocation(line: 694, column: 21, scope: !2369)
!2369 = !DILexicalBlockFile(scope: !2362, file: !192, discriminator: 6)
!2370 = !DILocation(line: 694, column: 21, scope: !2371)
!2371 = !DILexicalBlockFile(scope: !2372, file: !192, discriminator: 9)
!2372 = distinct !DILexicalBlock(scope: !2373, file: !192, line: 694, column: 21)
!2373 = distinct !DILexicalBlock(scope: !2363, file: !192, line: 694, column: 21)
!2374 = !DILocation(line: 694, column: 21, scope: !2375)
!2375 = !DILexicalBlockFile(scope: !2373, file: !192, discriminator: 9)
!2376 = !DILocation(line: 694, column: 21, scope: !2377)
!2377 = !DILexicalBlockFile(scope: !2372, file: !192, discriminator: 10)
!2378 = !DILocation(line: 694, column: 21, scope: !2379)
!2379 = !DILexicalBlockFile(scope: !2373, file: !192, discriminator: 11)
!2380 = !DILocation(line: 694, column: 21, scope: !2381)
!2381 = !DILexicalBlockFile(scope: !2363, file: !192, discriminator: 13)
!2382 = !DILocation(line: 695, column: 21, scope: !2383)
!2383 = !DILexicalBlockFile(scope: !2384, file: !192, discriminator: 1)
!2384 = distinct !DILexicalBlock(scope: !2385, file: !192, line: 695, column: 21)
!2385 = distinct !DILexicalBlock(scope: !2256, file: !192, line: 695, column: 21)
!2386 = !DILocation(line: 695, column: 21, scope: !2387)
!2387 = !DILexicalBlockFile(scope: !2385, file: !192, discriminator: 1)
!2388 = !DILocation(line: 695, column: 21, scope: !2389)
!2389 = !DILexicalBlockFile(scope: !2384, file: !192, discriminator: 2)
!2390 = !DILocation(line: 695, column: 21, scope: !2391)
!2391 = !DILexicalBlockFile(scope: !2385, file: !192, discriminator: 3)
!2392 = !DILocation(line: 696, column: 25, scope: !2256)
!2393 = !DILocation(line: 678, column: 17, scope: !2394)
!2394 = !DILexicalBlockFile(scope: !2257, file: !192, discriminator: 1)
!2395 = distinct !{!2395, !2396, !2397}
!2396 = !DILocation(line: 678, column: 17, scope: !2258)
!2397 = !DILocation(line: 697, column: 19, scope: !2258)
!2398 = !DILocation(line: 704, column: 34, scope: !2399)
!2399 = distinct !DILexicalBlock(scope: !1801, file: !192, line: 704, column: 11)
!2400 = !DILocation(line: 706, column: 14, scope: !2399)
!2401 = !DILocation(line: 707, column: 14, scope: !2399)
!2402 = !DILocation(line: 707, column: 35, scope: !2403)
!2403 = !DILexicalBlockFile(scope: !2399, file: !192, discriminator: 1)
!2404 = !DILocation(line: 707, column: 17, scope: !2403)
!2405 = !DILocation(line: 707, column: 53, scope: !2403)
!2406 = !DILocation(line: 707, column: 47, scope: !2403)
!2407 = !DILocation(line: 707, column: 65, scope: !2403)
!2408 = !DILocation(line: 708, column: 15, scope: !2403)
!2409 = !DILocation(line: 708, column: 11, scope: !2399)
!2410 = !DILocation(line: 704, column: 11, scope: !2411)
!2411 = !DILexicalBlockFile(scope: !1801, file: !192, discriminator: 2)
!2412 = !DILocation(line: 712, column: 7, scope: !2413)
!2413 = !DILexicalBlockFile(scope: !2414, file: !192, discriminator: 1)
!2414 = distinct !DILexicalBlock(scope: !1801, file: !192, line: 712, column: 7)
!2415 = !DILocation(line: 712, column: 7, scope: !2416)
!2416 = !DILexicalBlockFile(scope: !2417, file: !192, discriminator: 4)
!2417 = distinct !DILexicalBlock(scope: !2414, file: !192, line: 712, column: 7)
!2418 = !DILocation(line: 712, column: 7, scope: !2419)
!2419 = !DILexicalBlockFile(scope: !2417, file: !192, discriminator: 3)
!2420 = !DILocation(line: 712, column: 7, scope: !2421)
!2421 = !DILexicalBlockFile(scope: !2422, file: !192, discriminator: 6)
!2422 = distinct !DILexicalBlock(scope: !2423, file: !192, line: 712, column: 7)
!2423 = distinct !DILexicalBlock(scope: !2424, file: !192, line: 712, column: 7)
!2424 = distinct !DILexicalBlock(scope: !2417, file: !192, line: 712, column: 7)
!2425 = !DILocation(line: 712, column: 7, scope: !2426)
!2426 = !DILexicalBlockFile(scope: !2423, file: !192, discriminator: 6)
!2427 = !DILocation(line: 712, column: 7, scope: !2428)
!2428 = !DILexicalBlockFile(scope: !2422, file: !192, discriminator: 7)
!2429 = !DILocation(line: 712, column: 7, scope: !2430)
!2430 = !DILexicalBlockFile(scope: !2423, file: !192, discriminator: 8)
!2431 = !DILocation(line: 712, column: 7, scope: !2432)
!2432 = !DILexicalBlockFile(scope: !2433, file: !192, discriminator: 11)
!2433 = distinct !DILexicalBlock(scope: !2434, file: !192, line: 712, column: 7)
!2434 = distinct !DILexicalBlock(scope: !2424, file: !192, line: 712, column: 7)
!2435 = !DILocation(line: 712, column: 7, scope: !2436)
!2436 = !DILexicalBlockFile(scope: !2434, file: !192, discriminator: 11)
!2437 = !DILocation(line: 712, column: 7, scope: !2438)
!2438 = !DILexicalBlockFile(scope: !2433, file: !192, discriminator: 12)
!2439 = !DILocation(line: 712, column: 7, scope: !2440)
!2440 = !DILexicalBlockFile(scope: !2434, file: !192, discriminator: 13)
!2441 = !DILocation(line: 712, column: 7, scope: !2442)
!2442 = !DILexicalBlockFile(scope: !2443, file: !192, discriminator: 16)
!2443 = distinct !DILexicalBlock(scope: !2444, file: !192, line: 712, column: 7)
!2444 = distinct !DILexicalBlock(scope: !2424, file: !192, line: 712, column: 7)
!2445 = !DILocation(line: 712, column: 7, scope: !2446)
!2446 = !DILexicalBlockFile(scope: !2444, file: !192, discriminator: 16)
!2447 = !DILocation(line: 712, column: 7, scope: !2448)
!2448 = !DILexicalBlockFile(scope: !2443, file: !192, discriminator: 17)
!2449 = !DILocation(line: 712, column: 7, scope: !2450)
!2450 = !DILexicalBlockFile(scope: !2444, file: !192, discriminator: 18)
!2451 = !DILocation(line: 712, column: 7, scope: !2452)
!2452 = !DILexicalBlockFile(scope: !2424, file: !192, discriminator: 20)
!2453 = !DILocation(line: 712, column: 7, scope: !2454)
!2454 = !DILexicalBlockFile(scope: !2455, file: !192, discriminator: 22)
!2455 = distinct !DILexicalBlock(scope: !2456, file: !192, line: 712, column: 7)
!2456 = distinct !DILexicalBlock(scope: !2414, file: !192, line: 712, column: 7)
!2457 = !DILocation(line: 712, column: 7, scope: !2458)
!2458 = !DILexicalBlockFile(scope: !2456, file: !192, discriminator: 22)
!2459 = !DILocation(line: 712, column: 7, scope: !2460)
!2460 = !DILexicalBlockFile(scope: !2455, file: !192, discriminator: 23)
!2461 = !DILocation(line: 712, column: 7, scope: !2462)
!2462 = !DILexicalBlockFile(scope: !2456, file: !192, discriminator: 24)
!2463 = !DILocation(line: 715, column: 7, scope: !2464)
!2464 = !DILexicalBlockFile(scope: !2465, file: !192, discriminator: 1)
!2465 = distinct !DILexicalBlock(scope: !2466, file: !192, line: 715, column: 7)
!2466 = distinct !DILexicalBlock(scope: !1801, file: !192, line: 715, column: 7)
!2467 = !DILocation(line: 715, column: 7, scope: !2468)
!2468 = !DILexicalBlockFile(scope: !2465, file: !192, discriminator: 2)
!2469 = !DILocation(line: 715, column: 7, scope: !2470)
!2470 = !DILexicalBlockFile(scope: !2471, file: !192, discriminator: 4)
!2471 = distinct !DILexicalBlock(scope: !2472, file: !192, line: 715, column: 7)
!2472 = distinct !DILexicalBlock(scope: !2473, file: !192, line: 715, column: 7)
!2473 = distinct !DILexicalBlock(scope: !2465, file: !192, line: 715, column: 7)
!2474 = !DILocation(line: 715, column: 7, scope: !2475)
!2475 = !DILexicalBlockFile(scope: !2472, file: !192, discriminator: 4)
!2476 = !DILocation(line: 715, column: 7, scope: !2477)
!2477 = !DILexicalBlockFile(scope: !2471, file: !192, discriminator: 5)
!2478 = !DILocation(line: 715, column: 7, scope: !2479)
!2479 = !DILexicalBlockFile(scope: !2472, file: !192, discriminator: 6)
!2480 = !DILocation(line: 715, column: 7, scope: !2481)
!2481 = !DILexicalBlockFile(scope: !2482, file: !192, discriminator: 9)
!2482 = distinct !DILexicalBlock(scope: !2483, file: !192, line: 715, column: 7)
!2483 = distinct !DILexicalBlock(scope: !2473, file: !192, line: 715, column: 7)
!2484 = !DILocation(line: 715, column: 7, scope: !2485)
!2485 = !DILexicalBlockFile(scope: !2483, file: !192, discriminator: 9)
!2486 = !DILocation(line: 715, column: 7, scope: !2487)
!2487 = !DILexicalBlockFile(scope: !2482, file: !192, discriminator: 10)
!2488 = !DILocation(line: 715, column: 7, scope: !2489)
!2489 = !DILexicalBlockFile(scope: !2483, file: !192, discriminator: 11)
!2490 = !DILocation(line: 715, column: 7, scope: !2491)
!2491 = !DILexicalBlockFile(scope: !2473, file: !192, discriminator: 13)
!2492 = !DILocation(line: 716, column: 7, scope: !2493)
!2493 = !DILexicalBlockFile(scope: !2494, file: !192, discriminator: 1)
!2494 = distinct !DILexicalBlock(scope: !2495, file: !192, line: 716, column: 7)
!2495 = distinct !DILexicalBlock(scope: !1801, file: !192, line: 716, column: 7)
!2496 = !DILocation(line: 716, column: 7, scope: !2497)
!2497 = !DILexicalBlockFile(scope: !2495, file: !192, discriminator: 1)
!2498 = !DILocation(line: 716, column: 7, scope: !2499)
!2499 = !DILexicalBlockFile(scope: !2494, file: !192, discriminator: 2)
!2500 = !DILocation(line: 716, column: 7, scope: !2501)
!2501 = !DILexicalBlockFile(scope: !2495, file: !192, discriminator: 3)
!2502 = !DILocation(line: 718, column: 13, scope: !2503)
!2503 = distinct !DILexicalBlock(scope: !1801, file: !192, line: 718, column: 11)
!2504 = !DILocation(line: 718, column: 11, scope: !1801)
!2505 = !DILocation(line: 720, column: 5, scope: !1802)
!2506 = !DILocation(line: 392, column: 75, scope: !2507)
!2507 = !DILexicalBlockFile(scope: !1802, file: !192, discriminator: 5)
!2508 = !DILocation(line: 392, column: 3, scope: !2507)
!2509 = distinct !{!2509, !2510, !2511}
!2510 = !DILocation(line: 392, column: 3, scope: !1803)
!2511 = !DILocation(line: 720, column: 5, scope: !1803)
!2512 = !DILocation(line: 722, column: 11, scope: !2513)
!2513 = distinct !DILexicalBlock(scope: !1774, file: !192, line: 722, column: 7)
!2514 = !DILocation(line: 722, column: 16, scope: !2513)
!2515 = !DILocation(line: 730, column: 51, scope: !2516)
!2516 = distinct !DILexicalBlock(scope: !1774, file: !192, line: 730, column: 7)
!2517 = !DILocation(line: 731, column: 10, scope: !2518)
!2518 = !DILexicalBlockFile(scope: !2516, file: !192, discriminator: 1)
!2519 = !DILocation(line: 733, column: 11, scope: !2520)
!2520 = distinct !DILexicalBlock(scope: !2521, file: !192, line: 733, column: 11)
!2521 = distinct !DILexicalBlock(scope: !2516, file: !192, line: 732, column: 5)
!2522 = !DILocation(line: 733, column: 11, scope: !2521)
!2523 = !DILocation(line: 734, column: 16, scope: !2520)
!2524 = !DILocation(line: 734, column: 9, scope: !2520)
!2525 = !DILocation(line: 738, column: 18, scope: !2526)
!2526 = distinct !DILexicalBlock(scope: !2520, file: !192, line: 738, column: 16)
!2527 = !DILocation(line: 738, column: 32, scope: !2528)
!2528 = !DILexicalBlockFile(scope: !2526, file: !192, discriminator: 1)
!2529 = !DILocation(line: 738, column: 29, scope: !2526)
!2530 = !DILocation(line: 747, column: 7, scope: !2531)
!2531 = distinct !DILexicalBlock(scope: !1774, file: !192, line: 747, column: 7)
!2532 = !DILocation(line: 747, column: 20, scope: !2531)
!2533 = !DILocation(line: 748, column: 12, scope: !2534)
!2534 = !DILexicalBlockFile(scope: !2535, file: !192, discriminator: 1)
!2535 = distinct !DILexicalBlock(scope: !2536, file: !192, line: 748, column: 5)
!2536 = distinct !DILexicalBlock(scope: !2531, file: !192, line: 748, column: 5)
!2537 = !DILocation(line: 748, column: 5, scope: !2538)
!2538 = !DILexicalBlockFile(scope: !2536, file: !192, discriminator: 1)
!2539 = !DILocation(line: 749, column: 7, scope: !2540)
!2540 = !DILexicalBlockFile(scope: !2541, file: !192, discriminator: 1)
!2541 = distinct !DILexicalBlock(scope: !2542, file: !192, line: 749, column: 7)
!2542 = distinct !DILexicalBlock(scope: !2535, file: !192, line: 749, column: 7)
!2543 = !DILocation(line: 749, column: 7, scope: !2544)
!2544 = !DILexicalBlockFile(scope: !2542, file: !192, discriminator: 1)
!2545 = !DILocation(line: 749, column: 7, scope: !2546)
!2546 = !DILexicalBlockFile(scope: !2541, file: !192, discriminator: 2)
!2547 = !DILocation(line: 749, column: 7, scope: !2548)
!2548 = !DILexicalBlockFile(scope: !2542, file: !192, discriminator: 3)
!2549 = !DILocation(line: 748, column: 39, scope: !2550)
!2550 = !DILexicalBlockFile(scope: !2535, file: !192, discriminator: 2)
!2551 = distinct !{!2551, !2552, !2553}
!2552 = !DILocation(line: 748, column: 5, scope: !2536)
!2553 = !DILocation(line: 749, column: 7, scope: !2536)
!2554 = !DILocation(line: 751, column: 11, scope: !2555)
!2555 = distinct !DILexicalBlock(scope: !1774, file: !192, line: 751, column: 7)
!2556 = !DILocation(line: 751, column: 7, scope: !1774)
!2557 = !DILocation(line: 752, column: 5, scope: !2555)
!2558 = !DILocation(line: 752, column: 17, scope: !2555)
!2559 = !DILocation(line: 758, column: 21, scope: !2560)
!2560 = distinct !DILexicalBlock(scope: !1774, file: !192, line: 758, column: 7)
!2561 = !DILocation(line: 758, column: 54, scope: !2562)
!2562 = !DILexicalBlockFile(scope: !2560, file: !192, discriminator: 1)
!2563 = !DILocation(line: 758, column: 51, scope: !2560)
!2564 = !DILocation(line: 762, column: 42, scope: !1774)
!2565 = !DILocation(line: 760, column: 10, scope: !1774)
!2566 = !DILocation(line: 760, column: 3, scope: !1774)
!2567 = !DILocation(line: 764, column: 1, scope: !1774)
!2568 = distinct !DISubprogram(name: "gettext_quote", scope: !192, file: !192, line: 199, type: !2569, isLocal: true, isDefinition: true, scopeLine: 200, flags: DIFlagPrototyped, isOptimized: true, unit: !151, variables: !2571)
!2569 = !DISubroutineType(types: !2570)
!2570 = !{!31, !31, !154}
!2571 = !{!2572, !2573, !2574, !2575}
!2572 = !DILocalVariable(name: "msgid", arg: 1, scope: !2568, file: !192, line: 199, type: !31)
!2573 = !DILocalVariable(name: "s", arg: 2, scope: !2568, file: !192, line: 199, type: !154)
!2574 = !DILocalVariable(name: "translation", scope: !2568, file: !192, line: 201, type: !31)
!2575 = !DILocalVariable(name: "locale_code", scope: !2568, file: !192, line: 202, type: !31)
!2576 = !DILocation(line: 199, column: 28, scope: !2568)
!2577 = !DILocation(line: 199, column: 54, scope: !2568)
!2578 = !DILocation(line: 201, column: 29, scope: !2568)
!2579 = !DILocation(line: 201, column: 15, scope: !2568)
!2580 = !DILocation(line: 204, column: 19, scope: !2581)
!2581 = distinct !DILexicalBlock(scope: !2568, file: !192, line: 204, column: 7)
!2582 = !DILocation(line: 204, column: 7, scope: !2568)
!2583 = !DILocation(line: 225, column: 17, scope: !2568)
!2584 = !DILocation(line: 202, column: 15, scope: !2568)
!2585 = !DILocalVariable(name: "s2", arg: 2, scope: !2586, file: !2587, line: 160, type: !31)
!2586 = distinct !DISubprogram(name: "strcaseeq0", scope: !2587, file: !2587, line: 160, type: !2588, isLocal: true, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !151, variables: !2590)
!2587 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2588 = !DISubroutineType(types: !2589)
!2589 = !{!21, !31, !31, !14, !14, !14, !14, !14, !14, !14, !14, !14}
!2590 = !{!2591, !2585, !2592, !2593, !2594, !2595, !2596, !2597, !2598, !2599, !2600}
!2591 = !DILocalVariable(name: "s1", arg: 1, scope: !2586, file: !2587, line: 160, type: !31)
!2592 = !DILocalVariable(name: "s20", arg: 3, scope: !2586, file: !2587, line: 160, type: !14)
!2593 = !DILocalVariable(name: "s21", arg: 4, scope: !2586, file: !2587, line: 160, type: !14)
!2594 = !DILocalVariable(name: "s22", arg: 5, scope: !2586, file: !2587, line: 160, type: !14)
!2595 = !DILocalVariable(name: "s23", arg: 6, scope: !2586, file: !2587, line: 160, type: !14)
!2596 = !DILocalVariable(name: "s24", arg: 7, scope: !2586, file: !2587, line: 160, type: !14)
!2597 = !DILocalVariable(name: "s25", arg: 8, scope: !2586, file: !2587, line: 160, type: !14)
!2598 = !DILocalVariable(name: "s26", arg: 9, scope: !2586, file: !2587, line: 160, type: !14)
!2599 = !DILocalVariable(name: "s27", arg: 10, scope: !2586, file: !2587, line: 160, type: !14)
!2600 = !DILocalVariable(name: "s28", arg: 11, scope: !2586, file: !2587, line: 160, type: !14)
!2601 = !DILocation(line: 160, column: 41, scope: !2586, inlinedAt: !2602)
!2602 = distinct !DILocation(line: 226, column: 7, scope: !2603)
!2603 = distinct !DILexicalBlock(scope: !2568, file: !192, line: 226, column: 7)
!2604 = !DILocation(line: 160, column: 120, scope: !2586, inlinedAt: !2602)
!2605 = !DILocation(line: 160, column: 130, scope: !2586, inlinedAt: !2602)
!2606 = !DILocation(line: 162, column: 7, scope: !2607, inlinedAt: !2602)
!2607 = !DILexicalBlockFile(scope: !2608, file: !2587, discriminator: 1)
!2608 = distinct !DILexicalBlock(scope: !2586, file: !2587, line: 162, column: 7)
!2609 = !DILocalVariable(name: "s2", arg: 2, scope: !2610, file: !2587, line: 146, type: !31)
!2610 = distinct !DISubprogram(name: "strcaseeq1", scope: !2587, file: !2587, line: 146, type: !2611, isLocal: true, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: true, unit: !151, variables: !2613)
!2611 = !DISubroutineType(types: !2612)
!2612 = !{!21, !31, !31, !14, !14, !14, !14, !14, !14, !14, !14}
!2613 = !{!2614, !2609, !2615, !2616, !2617, !2618, !2619, !2620, !2621, !2622}
!2614 = !DILocalVariable(name: "s1", arg: 1, scope: !2610, file: !2587, line: 146, type: !31)
!2615 = !DILocalVariable(name: "s21", arg: 3, scope: !2610, file: !2587, line: 146, type: !14)
!2616 = !DILocalVariable(name: "s22", arg: 4, scope: !2610, file: !2587, line: 146, type: !14)
!2617 = !DILocalVariable(name: "s23", arg: 5, scope: !2610, file: !2587, line: 146, type: !14)
!2618 = !DILocalVariable(name: "s24", arg: 6, scope: !2610, file: !2587, line: 146, type: !14)
!2619 = !DILocalVariable(name: "s25", arg: 7, scope: !2610, file: !2587, line: 146, type: !14)
!2620 = !DILocalVariable(name: "s26", arg: 8, scope: !2610, file: !2587, line: 146, type: !14)
!2621 = !DILocalVariable(name: "s27", arg: 9, scope: !2610, file: !2587, line: 146, type: !14)
!2622 = !DILocalVariable(name: "s28", arg: 10, scope: !2610, file: !2587, line: 146, type: !14)
!2623 = !DILocation(line: 146, column: 41, scope: !2610, inlinedAt: !2624)
!2624 = distinct !DILocation(line: 167, column: 16, scope: !2625, inlinedAt: !2602)
!2625 = distinct !DILexicalBlock(scope: !2626, file: !2587, line: 164, column: 11)
!2626 = distinct !DILexicalBlock(scope: !2608, file: !2587, line: 163, column: 5)
!2627 = !DILocation(line: 146, column: 110, scope: !2610, inlinedAt: !2624)
!2628 = !DILocation(line: 146, column: 120, scope: !2610, inlinedAt: !2624)
!2629 = !DILocation(line: 148, column: 7, scope: !2630, inlinedAt: !2624)
!2630 = !DILexicalBlockFile(scope: !2631, file: !2587, discriminator: 1)
!2631 = distinct !DILexicalBlock(scope: !2610, file: !2587, line: 148, column: 7)
!2632 = !DILocalVariable(name: "s2", arg: 2, scope: !2633, file: !2587, line: 132, type: !31)
!2633 = distinct !DISubprogram(name: "strcaseeq2", scope: !2587, file: !2587, line: 132, type: !2634, isLocal: true, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !151, variables: !2636)
!2634 = !DISubroutineType(types: !2635)
!2635 = !{!21, !31, !31, !14, !14, !14, !14, !14, !14, !14}
!2636 = !{!2637, !2632, !2638, !2639, !2640, !2641, !2642, !2643, !2644}
!2637 = !DILocalVariable(name: "s1", arg: 1, scope: !2633, file: !2587, line: 132, type: !31)
!2638 = !DILocalVariable(name: "s22", arg: 3, scope: !2633, file: !2587, line: 132, type: !14)
!2639 = !DILocalVariable(name: "s23", arg: 4, scope: !2633, file: !2587, line: 132, type: !14)
!2640 = !DILocalVariable(name: "s24", arg: 5, scope: !2633, file: !2587, line: 132, type: !14)
!2641 = !DILocalVariable(name: "s25", arg: 6, scope: !2633, file: !2587, line: 132, type: !14)
!2642 = !DILocalVariable(name: "s26", arg: 7, scope: !2633, file: !2587, line: 132, type: !14)
!2643 = !DILocalVariable(name: "s27", arg: 8, scope: !2633, file: !2587, line: 132, type: !14)
!2644 = !DILocalVariable(name: "s28", arg: 9, scope: !2633, file: !2587, line: 132, type: !14)
!2645 = !DILocation(line: 132, column: 41, scope: !2633, inlinedAt: !2646)
!2646 = distinct !DILocation(line: 153, column: 16, scope: !2647, inlinedAt: !2624)
!2647 = distinct !DILexicalBlock(scope: !2648, file: !2587, line: 150, column: 11)
!2648 = distinct !DILexicalBlock(scope: !2631, file: !2587, line: 149, column: 5)
!2649 = !DILocation(line: 132, column: 100, scope: !2633, inlinedAt: !2646)
!2650 = !DILocation(line: 132, column: 110, scope: !2633, inlinedAt: !2646)
!2651 = !DILocation(line: 134, column: 7, scope: !2652, inlinedAt: !2646)
!2652 = !DILexicalBlockFile(scope: !2653, file: !2587, discriminator: 1)
!2653 = distinct !DILexicalBlock(scope: !2633, file: !2587, line: 134, column: 7)
!2654 = !DILocalVariable(name: "s2", arg: 2, scope: !2655, file: !2587, line: 118, type: !31)
!2655 = distinct !DISubprogram(name: "strcaseeq3", scope: !2587, file: !2587, line: 118, type: !2656, isLocal: true, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !151, variables: !2658)
!2656 = !DISubroutineType(types: !2657)
!2657 = !{!21, !31, !31, !14, !14, !14, !14, !14, !14}
!2658 = !{!2659, !2654, !2660, !2661, !2662, !2663, !2664, !2665}
!2659 = !DILocalVariable(name: "s1", arg: 1, scope: !2655, file: !2587, line: 118, type: !31)
!2660 = !DILocalVariable(name: "s23", arg: 3, scope: !2655, file: !2587, line: 118, type: !14)
!2661 = !DILocalVariable(name: "s24", arg: 4, scope: !2655, file: !2587, line: 118, type: !14)
!2662 = !DILocalVariable(name: "s25", arg: 5, scope: !2655, file: !2587, line: 118, type: !14)
!2663 = !DILocalVariable(name: "s26", arg: 6, scope: !2655, file: !2587, line: 118, type: !14)
!2664 = !DILocalVariable(name: "s27", arg: 7, scope: !2655, file: !2587, line: 118, type: !14)
!2665 = !DILocalVariable(name: "s28", arg: 8, scope: !2655, file: !2587, line: 118, type: !14)
!2666 = !DILocation(line: 118, column: 41, scope: !2655, inlinedAt: !2667)
!2667 = distinct !DILocation(line: 139, column: 16, scope: !2668, inlinedAt: !2646)
!2668 = distinct !DILexicalBlock(scope: !2669, file: !2587, line: 136, column: 11)
!2669 = distinct !DILexicalBlock(scope: !2653, file: !2587, line: 135, column: 5)
!2670 = !DILocation(line: 118, column: 90, scope: !2655, inlinedAt: !2667)
!2671 = !DILocation(line: 118, column: 100, scope: !2655, inlinedAt: !2667)
!2672 = !DILocation(line: 120, column: 7, scope: !2673, inlinedAt: !2667)
!2673 = !DILexicalBlockFile(scope: !2674, file: !2587, discriminator: 2)
!2674 = distinct !DILexicalBlock(scope: !2655, file: !2587, line: 120, column: 7)
!2675 = !DILocation(line: 120, column: 7, scope: !2676, inlinedAt: !2667)
!2676 = !DILexicalBlockFile(scope: !2655, file: !2587, discriminator: 2)
!2677 = !DILocalVariable(name: "s2", arg: 2, scope: !2678, file: !2587, line: 104, type: !31)
!2678 = distinct !DISubprogram(name: "strcaseeq4", scope: !2587, file: !2587, line: 104, type: !2679, isLocal: true, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, unit: !151, variables: !2681)
!2679 = !DISubroutineType(types: !2680)
!2680 = !{!21, !31, !31, !14, !14, !14, !14, !14}
!2681 = !{!2682, !2677, !2683, !2684, !2685, !2686, !2687}
!2682 = !DILocalVariable(name: "s1", arg: 1, scope: !2678, file: !2587, line: 104, type: !31)
!2683 = !DILocalVariable(name: "s24", arg: 3, scope: !2678, file: !2587, line: 104, type: !14)
!2684 = !DILocalVariable(name: "s25", arg: 4, scope: !2678, file: !2587, line: 104, type: !14)
!2685 = !DILocalVariable(name: "s26", arg: 5, scope: !2678, file: !2587, line: 104, type: !14)
!2686 = !DILocalVariable(name: "s27", arg: 6, scope: !2678, file: !2587, line: 104, type: !14)
!2687 = !DILocalVariable(name: "s28", arg: 7, scope: !2678, file: !2587, line: 104, type: !14)
!2688 = !DILocation(line: 104, column: 41, scope: !2678, inlinedAt: !2689)
!2689 = distinct !DILocation(line: 125, column: 16, scope: !2690, inlinedAt: !2667)
!2690 = distinct !DILexicalBlock(scope: !2691, file: !2587, line: 122, column: 11)
!2691 = distinct !DILexicalBlock(scope: !2674, file: !2587, line: 121, column: 5)
!2692 = !DILocation(line: 104, column: 80, scope: !2678, inlinedAt: !2689)
!2693 = !DILocation(line: 104, column: 90, scope: !2678, inlinedAt: !2689)
!2694 = !DILocation(line: 106, column: 7, scope: !2695, inlinedAt: !2689)
!2695 = !DILexicalBlockFile(scope: !2696, file: !2587, discriminator: 2)
!2696 = distinct !DILexicalBlock(scope: !2678, file: !2587, line: 106, column: 7)
!2697 = !DILocation(line: 106, column: 7, scope: !2698, inlinedAt: !2689)
!2698 = !DILexicalBlockFile(scope: !2678, file: !2587, discriminator: 2)
!2699 = !DILocalVariable(name: "s2", arg: 2, scope: !2700, file: !2587, line: 90, type: !31)
!2700 = distinct !DISubprogram(name: "strcaseeq5", scope: !2587, file: !2587, line: 90, type: !2701, isLocal: true, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: true, unit: !151, variables: !2703)
!2701 = !DISubroutineType(types: !2702)
!2702 = !{!21, !31, !31, !14, !14, !14, !14}
!2703 = !{!2704, !2699, !2705, !2706, !2707, !2708}
!2704 = !DILocalVariable(name: "s1", arg: 1, scope: !2700, file: !2587, line: 90, type: !31)
!2705 = !DILocalVariable(name: "s25", arg: 3, scope: !2700, file: !2587, line: 90, type: !14)
!2706 = !DILocalVariable(name: "s26", arg: 4, scope: !2700, file: !2587, line: 90, type: !14)
!2707 = !DILocalVariable(name: "s27", arg: 5, scope: !2700, file: !2587, line: 90, type: !14)
!2708 = !DILocalVariable(name: "s28", arg: 6, scope: !2700, file: !2587, line: 90, type: !14)
!2709 = !DILocation(line: 90, column: 41, scope: !2700, inlinedAt: !2710)
!2710 = distinct !DILocation(line: 111, column: 16, scope: !2711, inlinedAt: !2689)
!2711 = distinct !DILexicalBlock(scope: !2712, file: !2587, line: 108, column: 11)
!2712 = distinct !DILexicalBlock(scope: !2696, file: !2587, line: 107, column: 5)
!2713 = !DILocation(line: 90, column: 70, scope: !2700, inlinedAt: !2710)
!2714 = !DILocation(line: 90, column: 80, scope: !2700, inlinedAt: !2710)
!2715 = !DILocation(line: 92, column: 7, scope: !2716, inlinedAt: !2710)
!2716 = !DILexicalBlockFile(scope: !2717, file: !2587, discriminator: 2)
!2717 = distinct !DILexicalBlock(scope: !2700, file: !2587, line: 92, column: 7)
!2718 = !DILocation(line: 92, column: 7, scope: !2719, inlinedAt: !2710)
!2719 = !DILexicalBlockFile(scope: !2700, file: !2587, discriminator: 2)
!2720 = !DILocation(line: 227, column: 12, scope: !2603)
!2721 = !DILocation(line: 227, column: 21, scope: !2603)
!2722 = !DILocation(line: 227, column: 5, scope: !2603)
!2723 = !DILocation(line: 146, column: 41, scope: !2610, inlinedAt: !2724)
!2724 = distinct !DILocation(line: 167, column: 16, scope: !2625, inlinedAt: !2725)
!2725 = distinct !DILocation(line: 228, column: 7, scope: !2726)
!2726 = distinct !DILexicalBlock(scope: !2568, file: !192, line: 228, column: 7)
!2727 = !DILocation(line: 146, column: 110, scope: !2610, inlinedAt: !2724)
!2728 = !DILocation(line: 146, column: 120, scope: !2610, inlinedAt: !2724)
!2729 = !DILocation(line: 148, column: 7, scope: !2630, inlinedAt: !2724)
!2730 = !DILocation(line: 132, column: 41, scope: !2633, inlinedAt: !2731)
!2731 = distinct !DILocation(line: 153, column: 16, scope: !2647, inlinedAt: !2724)
!2732 = !DILocation(line: 132, column: 100, scope: !2633, inlinedAt: !2731)
!2733 = !DILocation(line: 132, column: 110, scope: !2633, inlinedAt: !2731)
!2734 = !DILocation(line: 134, column: 7, scope: !2735, inlinedAt: !2731)
!2735 = !DILexicalBlockFile(scope: !2653, file: !2587, discriminator: 2)
!2736 = !DILocation(line: 134, column: 7, scope: !2737, inlinedAt: !2731)
!2737 = !DILexicalBlockFile(scope: !2633, file: !2587, discriminator: 2)
!2738 = !DILocation(line: 118, column: 41, scope: !2655, inlinedAt: !2739)
!2739 = distinct !DILocation(line: 139, column: 16, scope: !2668, inlinedAt: !2731)
!2740 = !DILocation(line: 118, column: 90, scope: !2655, inlinedAt: !2739)
!2741 = !DILocation(line: 118, column: 100, scope: !2655, inlinedAt: !2739)
!2742 = !DILocation(line: 120, column: 7, scope: !2673, inlinedAt: !2739)
!2743 = !DILocation(line: 120, column: 7, scope: !2676, inlinedAt: !2739)
!2744 = !DILocation(line: 104, column: 41, scope: !2678, inlinedAt: !2745)
!2745 = distinct !DILocation(line: 125, column: 16, scope: !2690, inlinedAt: !2739)
!2746 = !DILocation(line: 104, column: 80, scope: !2678, inlinedAt: !2745)
!2747 = !DILocation(line: 104, column: 90, scope: !2678, inlinedAt: !2745)
!2748 = !DILocation(line: 106, column: 7, scope: !2695, inlinedAt: !2745)
!2749 = !DILocation(line: 106, column: 7, scope: !2698, inlinedAt: !2745)
!2750 = !DILocation(line: 90, column: 41, scope: !2700, inlinedAt: !2751)
!2751 = distinct !DILocation(line: 111, column: 16, scope: !2711, inlinedAt: !2745)
!2752 = !DILocation(line: 90, column: 70, scope: !2700, inlinedAt: !2751)
!2753 = !DILocation(line: 90, column: 80, scope: !2700, inlinedAt: !2751)
!2754 = !DILocation(line: 92, column: 7, scope: !2716, inlinedAt: !2751)
!2755 = !DILocation(line: 92, column: 7, scope: !2719, inlinedAt: !2751)
!2756 = !DILocalVariable(name: "s2", arg: 2, scope: !2757, file: !2587, line: 76, type: !31)
!2757 = distinct !DISubprogram(name: "strcaseeq6", scope: !2587, file: !2587, line: 76, type: !2758, isLocal: true, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: true, unit: !151, variables: !2760)
!2758 = !DISubroutineType(types: !2759)
!2759 = !{!21, !31, !31, !14, !14, !14}
!2760 = !{!2761, !2756, !2762, !2763, !2764}
!2761 = !DILocalVariable(name: "s1", arg: 1, scope: !2757, file: !2587, line: 76, type: !31)
!2762 = !DILocalVariable(name: "s26", arg: 3, scope: !2757, file: !2587, line: 76, type: !14)
!2763 = !DILocalVariable(name: "s27", arg: 4, scope: !2757, file: !2587, line: 76, type: !14)
!2764 = !DILocalVariable(name: "s28", arg: 5, scope: !2757, file: !2587, line: 76, type: !14)
!2765 = !DILocation(line: 76, column: 41, scope: !2757, inlinedAt: !2766)
!2766 = distinct !DILocation(line: 97, column: 16, scope: !2767, inlinedAt: !2751)
!2767 = distinct !DILexicalBlock(scope: !2768, file: !2587, line: 94, column: 11)
!2768 = distinct !DILexicalBlock(scope: !2717, file: !2587, line: 93, column: 5)
!2769 = !DILocation(line: 76, column: 60, scope: !2757, inlinedAt: !2766)
!2770 = !DILocation(line: 76, column: 70, scope: !2757, inlinedAt: !2766)
!2771 = !DILocation(line: 78, column: 7, scope: !2772, inlinedAt: !2766)
!2772 = !DILexicalBlockFile(scope: !2773, file: !2587, discriminator: 2)
!2773 = distinct !DILexicalBlock(scope: !2757, file: !2587, line: 78, column: 7)
!2774 = !DILocation(line: 78, column: 7, scope: !2775, inlinedAt: !2766)
!2775 = !DILexicalBlockFile(scope: !2757, file: !2587, discriminator: 2)
!2776 = !DILocalVariable(name: "s2", arg: 2, scope: !2777, file: !2587, line: 62, type: !31)
!2777 = distinct !DISubprogram(name: "strcaseeq7", scope: !2587, file: !2587, line: 62, type: !2778, isLocal: true, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: true, unit: !151, variables: !2780)
!2778 = !DISubroutineType(types: !2779)
!2779 = !{!21, !31, !31, !14, !14}
!2780 = !{!2781, !2776, !2782, !2783}
!2781 = !DILocalVariable(name: "s1", arg: 1, scope: !2777, file: !2587, line: 62, type: !31)
!2782 = !DILocalVariable(name: "s27", arg: 3, scope: !2777, file: !2587, line: 62, type: !14)
!2783 = !DILocalVariable(name: "s28", arg: 4, scope: !2777, file: !2587, line: 62, type: !14)
!2784 = !DILocation(line: 62, column: 41, scope: !2777, inlinedAt: !2785)
!2785 = distinct !DILocation(line: 83, column: 16, scope: !2786, inlinedAt: !2766)
!2786 = distinct !DILexicalBlock(scope: !2787, file: !2587, line: 80, column: 11)
!2787 = distinct !DILexicalBlock(scope: !2773, file: !2587, line: 79, column: 5)
!2788 = !DILocation(line: 62, column: 50, scope: !2777, inlinedAt: !2785)
!2789 = !DILocation(line: 62, column: 60, scope: !2777, inlinedAt: !2785)
!2790 = !DILocation(line: 64, column: 7, scope: !2791, inlinedAt: !2785)
!2791 = !DILexicalBlockFile(scope: !2792, file: !2587, discriminator: 2)
!2792 = distinct !DILexicalBlock(scope: !2777, file: !2587, line: 64, column: 7)
!2793 = !DILocation(line: 228, column: 7, scope: !2568)
!2794 = !DILocation(line: 229, column: 12, scope: !2726)
!2795 = !DILocation(line: 229, column: 21, scope: !2726)
!2796 = !DILocation(line: 229, column: 5, scope: !2726)
!2797 = !DILocation(line: 231, column: 13, scope: !2568)
!2798 = !DILocation(line: 231, column: 11, scope: !2568)
!2799 = !DILocation(line: 231, column: 3, scope: !2568)
!2800 = !DILocation(line: 232, column: 1, scope: !2568)
!2801 = distinct !DISubprogram(name: "quotearg_alloc", scope: !192, file: !192, line: 791, type: !2802, isLocal: false, isDefinition: true, scopeLine: 793, flags: DIFlagPrototyped, isOptimized: true, unit: !151, variables: !2804)
!2802 = !DISubroutineType(types: !2803)
!2803 = !{!13, !31, !23, !1642}
!2804 = !{!2805, !2806, !2807}
!2805 = !DILocalVariable(name: "arg", arg: 1, scope: !2801, file: !192, line: 791, type: !31)
!2806 = !DILocalVariable(name: "argsize", arg: 2, scope: !2801, file: !192, line: 791, type: !23)
!2807 = !DILocalVariable(name: "o", arg: 3, scope: !2801, file: !192, line: 792, type: !1642)
!2808 = !DILocation(line: 791, column: 29, scope: !2801)
!2809 = !DILocation(line: 791, column: 41, scope: !2801)
!2810 = !DILocation(line: 792, column: 47, scope: !2801)
!2811 = !DILocalVariable(name: "arg", arg: 1, scope: !2812, file: !192, line: 804, type: !31)
!2812 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !192, file: !192, line: 804, type: !2813, isLocal: false, isDefinition: true, scopeLine: 806, flags: DIFlagPrototyped, isOptimized: true, unit: !151, variables: !2815)
!2813 = !DISubroutineType(types: !2814)
!2814 = !{!13, !31, !23, !635, !1642}
!2815 = !{!2811, !2816, !2817, !2818, !2819, !2820, !2821, !2822, !2823}
!2816 = !DILocalVariable(name: "argsize", arg: 2, scope: !2812, file: !192, line: 804, type: !23)
!2817 = !DILocalVariable(name: "size", arg: 3, scope: !2812, file: !192, line: 804, type: !635)
!2818 = !DILocalVariable(name: "o", arg: 4, scope: !2812, file: !192, line: 805, type: !1642)
!2819 = !DILocalVariable(name: "p", scope: !2812, file: !192, line: 807, type: !1642)
!2820 = !DILocalVariable(name: "e", scope: !2812, file: !192, line: 808, type: !21)
!2821 = !DILocalVariable(name: "flags", scope: !2812, file: !192, line: 810, type: !21)
!2822 = !DILocalVariable(name: "bufsize", scope: !2812, file: !192, line: 811, type: !23)
!2823 = !DILocalVariable(name: "buf", scope: !2812, file: !192, line: 815, type: !13)
!2824 = !DILocation(line: 804, column: 33, scope: !2812, inlinedAt: !2825)
!2825 = distinct !DILocation(line: 794, column: 10, scope: !2801)
!2826 = !DILocation(line: 804, column: 45, scope: !2812, inlinedAt: !2825)
!2827 = !DILocation(line: 804, column: 62, scope: !2812, inlinedAt: !2825)
!2828 = !DILocation(line: 805, column: 51, scope: !2812, inlinedAt: !2825)
!2829 = !DILocation(line: 807, column: 37, scope: !2812, inlinedAt: !2825)
!2830 = !DILocation(line: 807, column: 33, scope: !2812, inlinedAt: !2825)
!2831 = !DILocation(line: 808, column: 11, scope: !2812, inlinedAt: !2825)
!2832 = !DILocation(line: 808, column: 7, scope: !2812, inlinedAt: !2825)
!2833 = !DILocation(line: 810, column: 18, scope: !2812, inlinedAt: !2825)
!2834 = !DILocation(line: 810, column: 24, scope: !2812, inlinedAt: !2825)
!2835 = !DILocation(line: 810, column: 7, scope: !2812, inlinedAt: !2825)
!2836 = !DILocation(line: 811, column: 69, scope: !2812, inlinedAt: !2825)
!2837 = !DILocation(line: 812, column: 53, scope: !2812, inlinedAt: !2825)
!2838 = !DILocation(line: 813, column: 49, scope: !2812, inlinedAt: !2825)
!2839 = !DILocation(line: 814, column: 49, scope: !2812, inlinedAt: !2825)
!2840 = !DILocation(line: 811, column: 20, scope: !2812, inlinedAt: !2825)
!2841 = !DILocation(line: 814, column: 62, scope: !2812, inlinedAt: !2825)
!2842 = !DILocation(line: 811, column: 10, scope: !2812, inlinedAt: !2825)
!2843 = !DILocalVariable(name: "n", arg: 1, scope: !2844, file: !631, line: 220, type: !23)
!2844 = distinct !DISubprogram(name: "xcharalloc", scope: !631, file: !631, line: 220, type: !2845, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !151, variables: !2847)
!2845 = !DISubroutineType(types: !2846)
!2846 = !{!13, !23}
!2847 = !{!2843}
!2848 = !DILocation(line: 220, column: 20, scope: !2844, inlinedAt: !2849)
!2849 = distinct !DILocation(line: 815, column: 15, scope: !2812, inlinedAt: !2825)
!2850 = !DILocation(line: 222, column: 10, scope: !2844, inlinedAt: !2849)
!2851 = !DILocation(line: 815, column: 9, scope: !2812, inlinedAt: !2825)
!2852 = !DILocation(line: 816, column: 60, scope: !2812, inlinedAt: !2825)
!2853 = !DILocation(line: 818, column: 32, scope: !2812, inlinedAt: !2825)
!2854 = !DILocation(line: 818, column: 47, scope: !2812, inlinedAt: !2825)
!2855 = !DILocation(line: 816, column: 3, scope: !2812, inlinedAt: !2825)
!2856 = !DILocation(line: 819, column: 9, scope: !2812, inlinedAt: !2825)
!2857 = !DILocation(line: 794, column: 3, scope: !2801)
!2858 = !DILocation(line: 804, column: 33, scope: !2812)
!2859 = !DILocation(line: 804, column: 45, scope: !2812)
!2860 = !DILocation(line: 804, column: 62, scope: !2812)
!2861 = !DILocation(line: 805, column: 51, scope: !2812)
!2862 = !DILocation(line: 807, column: 37, scope: !2812)
!2863 = !DILocation(line: 807, column: 33, scope: !2812)
!2864 = !DILocation(line: 808, column: 11, scope: !2812)
!2865 = !DILocation(line: 808, column: 7, scope: !2812)
!2866 = !DILocation(line: 810, column: 18, scope: !2812)
!2867 = !DILocation(line: 810, column: 27, scope: !2812)
!2868 = !DILocation(line: 810, column: 24, scope: !2812)
!2869 = !DILocation(line: 810, column: 7, scope: !2812)
!2870 = !DILocation(line: 811, column: 69, scope: !2812)
!2871 = !DILocation(line: 812, column: 53, scope: !2812)
!2872 = !DILocation(line: 813, column: 49, scope: !2812)
!2873 = !DILocation(line: 814, column: 49, scope: !2812)
!2874 = !DILocation(line: 811, column: 20, scope: !2812)
!2875 = !DILocation(line: 814, column: 62, scope: !2812)
!2876 = !DILocation(line: 811, column: 10, scope: !2812)
!2877 = !DILocation(line: 220, column: 20, scope: !2844, inlinedAt: !2878)
!2878 = distinct !DILocation(line: 815, column: 15, scope: !2812)
!2879 = !DILocation(line: 222, column: 10, scope: !2844, inlinedAt: !2878)
!2880 = !DILocation(line: 815, column: 9, scope: !2812)
!2881 = !DILocation(line: 816, column: 60, scope: !2812)
!2882 = !DILocation(line: 818, column: 32, scope: !2812)
!2883 = !DILocation(line: 818, column: 47, scope: !2812)
!2884 = !DILocation(line: 816, column: 3, scope: !2812)
!2885 = !DILocation(line: 819, column: 9, scope: !2812)
!2886 = !DILocation(line: 820, column: 7, scope: !2812)
!2887 = !DILocation(line: 821, column: 11, scope: !2888)
!2888 = distinct !DILexicalBlock(scope: !2812, file: !192, line: 820, column: 7)
!2889 = !{!2890, !2890, i64 0}
!2890 = !{!"long", !682, i64 0}
!2891 = !DILocation(line: 821, column: 5, scope: !2888)
!2892 = !DILocation(line: 822, column: 3, scope: !2812)
!2893 = distinct !DISubprogram(name: "quotearg_free", scope: !192, file: !192, line: 840, type: !696, isLocal: false, isDefinition: true, scopeLine: 841, flags: DIFlagPrototyped, isOptimized: true, unit: !151, variables: !2894)
!2894 = !{!2895, !2896}
!2895 = !DILocalVariable(name: "sv", scope: !2893, file: !192, line: 842, type: !219)
!2896 = !DILocalVariable(name: "i", scope: !2893, file: !192, line: 843, type: !21)
!2897 = !DILocation(line: 842, column: 24, scope: !2893)
!2898 = !DILocation(line: 842, column: 19, scope: !2893)
!2899 = !DILocation(line: 843, column: 7, scope: !2893)
!2900 = !DILocation(line: 844, column: 19, scope: !2901)
!2901 = !DILexicalBlockFile(scope: !2902, file: !192, discriminator: 1)
!2902 = distinct !DILexicalBlock(scope: !2903, file: !192, line: 844, column: 3)
!2903 = distinct !DILexicalBlock(scope: !2893, file: !192, line: 844, column: 3)
!2904 = !DILocation(line: 844, column: 17, scope: !2901)
!2905 = !DILocation(line: 844, column: 3, scope: !2906)
!2906 = !DILexicalBlockFile(scope: !2903, file: !192, discriminator: 1)
!2907 = !DILocation(line: 845, column: 17, scope: !2902)
!2908 = !{!2909, !681, i64 8}
!2909 = !{!"slotvec", !2890, i64 0, !681, i64 8}
!2910 = !DILocation(line: 845, column: 5, scope: !2902)
!2911 = !DILocation(line: 844, column: 28, scope: !2912)
!2912 = !DILexicalBlockFile(scope: !2902, file: !192, discriminator: 2)
!2913 = distinct !{!2913, !2914, !2915}
!2914 = !DILocation(line: 844, column: 3, scope: !2903)
!2915 = !DILocation(line: 845, column: 20, scope: !2903)
!2916 = !DILocation(line: 846, column: 13, scope: !2917)
!2917 = distinct !DILexicalBlock(scope: !2893, file: !192, line: 846, column: 7)
!2918 = !DILocation(line: 846, column: 17, scope: !2917)
!2919 = !DILocation(line: 846, column: 7, scope: !2893)
!2920 = !DILocation(line: 848, column: 7, scope: !2921)
!2921 = distinct !DILexicalBlock(scope: !2917, file: !192, line: 847, column: 5)
!2922 = !DILocation(line: 849, column: 21, scope: !2921)
!2923 = !{!2909, !2890, i64 0}
!2924 = !DILocation(line: 850, column: 20, scope: !2921)
!2925 = !DILocation(line: 851, column: 5, scope: !2921)
!2926 = !DILocation(line: 852, column: 10, scope: !2927)
!2927 = distinct !DILexicalBlock(scope: !2893, file: !192, line: 852, column: 7)
!2928 = !DILocation(line: 852, column: 7, scope: !2893)
!2929 = !DILocation(line: 854, column: 13, scope: !2930)
!2930 = distinct !DILexicalBlock(scope: !2927, file: !192, line: 853, column: 5)
!2931 = !DILocation(line: 854, column: 7, scope: !2930)
!2932 = !DILocation(line: 855, column: 15, scope: !2930)
!2933 = !DILocation(line: 856, column: 5, scope: !2930)
!2934 = !DILocation(line: 857, column: 10, scope: !2893)
!2935 = !DILocation(line: 858, column: 1, scope: !2893)
!2936 = distinct !DISubprogram(name: "quotearg_n", scope: !192, file: !192, line: 922, type: !2937, isLocal: false, isDefinition: true, scopeLine: 923, flags: DIFlagPrototyped, isOptimized: true, unit: !151, variables: !2939)
!2937 = !DISubroutineType(types: !2938)
!2938 = !{!13, !21, !31}
!2939 = !{!2940, !2941}
!2940 = !DILocalVariable(name: "n", arg: 1, scope: !2936, file: !192, line: 922, type: !21)
!2941 = !DILocalVariable(name: "arg", arg: 2, scope: !2936, file: !192, line: 922, type: !31)
!2942 = !DILocation(line: 922, column: 17, scope: !2936)
!2943 = !DILocation(line: 922, column: 32, scope: !2936)
!2944 = !DILocation(line: 924, column: 10, scope: !2936)
!2945 = !DILocation(line: 924, column: 3, scope: !2936)
!2946 = distinct !DISubprogram(name: "quotearg_n_options", scope: !192, file: !192, line: 869, type: !2947, isLocal: true, isDefinition: true, scopeLine: 871, flags: DIFlagPrototyped, isOptimized: true, unit: !151, variables: !2949)
!2947 = !DISubroutineType(types: !2948)
!2948 = !{!13, !21, !31, !23, !1642}
!2949 = !{!2950, !2951, !2952, !2953, !2954, !2955, !2956, !2959, !2961, !2962, !2963}
!2950 = !DILocalVariable(name: "n", arg: 1, scope: !2946, file: !192, line: 869, type: !21)
!2951 = !DILocalVariable(name: "arg", arg: 2, scope: !2946, file: !192, line: 869, type: !31)
!2952 = !DILocalVariable(name: "argsize", arg: 3, scope: !2946, file: !192, line: 869, type: !23)
!2953 = !DILocalVariable(name: "options", arg: 4, scope: !2946, file: !192, line: 870, type: !1642)
!2954 = !DILocalVariable(name: "e", scope: !2946, file: !192, line: 872, type: !21)
!2955 = !DILocalVariable(name: "sv", scope: !2946, file: !192, line: 874, type: !219)
!2956 = !DILocalVariable(name: "preallocated", scope: !2957, file: !192, line: 881, type: !47)
!2957 = distinct !DILexicalBlock(scope: !2958, file: !192, line: 880, column: 5)
!2958 = distinct !DILexicalBlock(scope: !2946, file: !192, line: 879, column: 7)
!2959 = !DILocalVariable(name: "size", scope: !2960, file: !192, line: 894, type: !23)
!2960 = distinct !DILexicalBlock(scope: !2946, file: !192, line: 893, column: 3)
!2961 = !DILocalVariable(name: "val", scope: !2960, file: !192, line: 895, type: !13)
!2962 = !DILocalVariable(name: "flags", scope: !2960, file: !192, line: 897, type: !21)
!2963 = !DILocalVariable(name: "qsize", scope: !2960, file: !192, line: 898, type: !23)
!2964 = !DILocation(line: 869, column: 25, scope: !2946)
!2965 = !DILocation(line: 869, column: 40, scope: !2946)
!2966 = !DILocation(line: 869, column: 52, scope: !2946)
!2967 = !DILocation(line: 870, column: 51, scope: !2946)
!2968 = !DILocation(line: 872, column: 11, scope: !2946)
!2969 = !DILocation(line: 872, column: 7, scope: !2946)
!2970 = !DILocation(line: 874, column: 24, scope: !2946)
!2971 = !DILocation(line: 874, column: 19, scope: !2946)
!2972 = !DILocation(line: 876, column: 9, scope: !2973)
!2973 = distinct !DILexicalBlock(scope: !2946, file: !192, line: 876, column: 7)
!2974 = !DILocation(line: 876, column: 7, scope: !2946)
!2975 = !DILocation(line: 877, column: 5, scope: !2973)
!2976 = !DILocation(line: 879, column: 7, scope: !2958)
!2977 = !DILocation(line: 879, column: 14, scope: !2958)
!2978 = !DILocation(line: 879, column: 7, scope: !2946)
!2979 = !DILocation(line: 881, column: 31, scope: !2957)
!2980 = !DILocation(line: 883, column: 67, scope: !2981)
!2981 = distinct !DILexicalBlock(scope: !2957, file: !192, line: 883, column: 11)
!2982 = !DILocation(line: 883, column: 11, scope: !2957)
!2983 = !DILocation(line: 884, column: 9, scope: !2981)
!2984 = !DILocation(line: 886, column: 32, scope: !2985)
!2985 = !DILexicalBlockFile(scope: !2957, file: !192, discriminator: 3)
!2986 = !DILocation(line: 886, column: 61, scope: !2985)
!2987 = !DILocation(line: 886, column: 58, scope: !2985)
!2988 = !DILocation(line: 886, column: 66, scope: !2985)
!2989 = !DILocation(line: 886, column: 22, scope: !2985)
!2990 = !DILocation(line: 886, column: 15, scope: !2985)
!2991 = !DILocation(line: 887, column: 11, scope: !2957)
!2992 = !DILocation(line: 888, column: 15, scope: !2993)
!2993 = distinct !DILexicalBlock(scope: !2957, file: !192, line: 887, column: 11)
!2994 = !{i64 0, i64 8, !2889, i64 8, i64 8, !680}
!2995 = !DILocation(line: 888, column: 9, scope: !2993)
!2996 = !DILocation(line: 889, column: 20, scope: !2957)
!2997 = !DILocation(line: 889, column: 18, scope: !2957)
!2998 = !DILocation(line: 889, column: 7, scope: !2957)
!2999 = !DILocation(line: 889, column: 38, scope: !2957)
!3000 = !DILocation(line: 889, column: 31, scope: !2957)
!3001 = !DILocation(line: 889, column: 48, scope: !2957)
!3002 = !DILocation(line: 890, column: 14, scope: !2957)
!3003 = !DILocation(line: 891, column: 5, scope: !2957)
!3004 = !DILocation(line: 894, column: 19, scope: !2960)
!3005 = !DILocation(line: 894, column: 25, scope: !2960)
!3006 = !DILocation(line: 894, column: 12, scope: !2960)
!3007 = !DILocation(line: 895, column: 23, scope: !2960)
!3008 = !DILocation(line: 895, column: 11, scope: !2960)
!3009 = !DILocation(line: 897, column: 26, scope: !2960)
!3010 = !DILocation(line: 897, column: 32, scope: !2960)
!3011 = !DILocation(line: 897, column: 9, scope: !2960)
!3012 = !DILocation(line: 899, column: 55, scope: !2960)
!3013 = !DILocation(line: 900, column: 46, scope: !2960)
!3014 = !DILocation(line: 901, column: 55, scope: !2960)
!3015 = !DILocation(line: 902, column: 55, scope: !2960)
!3016 = !DILocation(line: 898, column: 20, scope: !2960)
!3017 = !DILocation(line: 898, column: 12, scope: !2960)
!3018 = !DILocation(line: 904, column: 14, scope: !3019)
!3019 = distinct !DILexicalBlock(scope: !2960, file: !192, line: 904, column: 9)
!3020 = !DILocation(line: 904, column: 9, scope: !2960)
!3021 = !DILocation(line: 906, column: 35, scope: !3022)
!3022 = distinct !DILexicalBlock(scope: !3019, file: !192, line: 905, column: 7)
!3023 = !DILocation(line: 906, column: 20, scope: !3022)
!3024 = !DILocation(line: 907, column: 17, scope: !3025)
!3025 = distinct !DILexicalBlock(scope: !3022, file: !192, line: 907, column: 13)
!3026 = !DILocation(line: 907, column: 13, scope: !3022)
!3027 = !DILocation(line: 908, column: 11, scope: !3025)
!3028 = !DILocation(line: 220, column: 20, scope: !2844, inlinedAt: !3029)
!3029 = distinct !DILocation(line: 909, column: 27, scope: !3022)
!3030 = !DILocation(line: 222, column: 10, scope: !2844, inlinedAt: !3029)
!3031 = !DILocation(line: 909, column: 19, scope: !3022)
!3032 = !DILocation(line: 910, column: 69, scope: !3022)
!3033 = !DILocation(line: 912, column: 44, scope: !3022)
!3034 = !DILocation(line: 913, column: 44, scope: !3022)
!3035 = !DILocation(line: 910, column: 9, scope: !3022)
!3036 = !DILocation(line: 914, column: 7, scope: !3022)
!3037 = !DILocation(line: 916, column: 11, scope: !2960)
!3038 = !DILocation(line: 917, column: 5, scope: !2960)
!3039 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !192, file: !192, line: 928, type: !3040, isLocal: false, isDefinition: true, scopeLine: 929, flags: DIFlagPrototyped, isOptimized: true, unit: !151, variables: !3042)
!3040 = !DISubroutineType(types: !3041)
!3041 = !{!13, !21, !31, !23}
!3042 = !{!3043, !3044, !3045}
!3043 = !DILocalVariable(name: "n", arg: 1, scope: !3039, file: !192, line: 928, type: !21)
!3044 = !DILocalVariable(name: "arg", arg: 2, scope: !3039, file: !192, line: 928, type: !31)
!3045 = !DILocalVariable(name: "argsize", arg: 3, scope: !3039, file: !192, line: 928, type: !23)
!3046 = !DILocation(line: 928, column: 21, scope: !3039)
!3047 = !DILocation(line: 928, column: 36, scope: !3039)
!3048 = !DILocation(line: 928, column: 48, scope: !3039)
!3049 = !DILocation(line: 930, column: 10, scope: !3039)
!3050 = !DILocation(line: 930, column: 3, scope: !3039)
!3051 = distinct !DISubprogram(name: "quotearg", scope: !192, file: !192, line: 934, type: !3052, isLocal: false, isDefinition: true, scopeLine: 935, flags: DIFlagPrototyped, isOptimized: true, unit: !151, variables: !3054)
!3052 = !DISubroutineType(types: !3053)
!3053 = !{!13, !31}
!3054 = !{!3055}
!3055 = !DILocalVariable(name: "arg", arg: 1, scope: !3051, file: !192, line: 934, type: !31)
!3056 = !DILocation(line: 934, column: 23, scope: !3051)
!3057 = !DILocation(line: 922, column: 17, scope: !2936, inlinedAt: !3058)
!3058 = distinct !DILocation(line: 936, column: 10, scope: !3051)
!3059 = !DILocation(line: 922, column: 32, scope: !2936, inlinedAt: !3058)
!3060 = !DILocation(line: 924, column: 10, scope: !2936, inlinedAt: !3058)
!3061 = !DILocation(line: 936, column: 3, scope: !3051)
!3062 = distinct !DISubprogram(name: "quotearg_mem", scope: !192, file: !192, line: 940, type: !3063, isLocal: false, isDefinition: true, scopeLine: 941, flags: DIFlagPrototyped, isOptimized: true, unit: !151, variables: !3065)
!3063 = !DISubroutineType(types: !3064)
!3064 = !{!13, !31, !23}
!3065 = !{!3066, !3067}
!3066 = !DILocalVariable(name: "arg", arg: 1, scope: !3062, file: !192, line: 940, type: !31)
!3067 = !DILocalVariable(name: "argsize", arg: 2, scope: !3062, file: !192, line: 940, type: !23)
!3068 = !DILocation(line: 940, column: 27, scope: !3062)
!3069 = !DILocation(line: 940, column: 39, scope: !3062)
!3070 = !DILocation(line: 928, column: 21, scope: !3039, inlinedAt: !3071)
!3071 = distinct !DILocation(line: 942, column: 10, scope: !3062)
!3072 = !DILocation(line: 928, column: 36, scope: !3039, inlinedAt: !3071)
!3073 = !DILocation(line: 928, column: 48, scope: !3039, inlinedAt: !3071)
!3074 = !DILocation(line: 930, column: 10, scope: !3039, inlinedAt: !3071)
!3075 = !DILocation(line: 942, column: 3, scope: !3062)
!3076 = distinct !DISubprogram(name: "quotearg_n_style", scope: !192, file: !192, line: 946, type: !3077, isLocal: false, isDefinition: true, scopeLine: 947, flags: DIFlagPrototyped, isOptimized: true, unit: !151, variables: !3079)
!3077 = !DISubroutineType(types: !3078)
!3078 = !{!13, !21, !154, !31}
!3079 = !{!3080, !3081, !3082, !3083}
!3080 = !DILocalVariable(name: "n", arg: 1, scope: !3076, file: !192, line: 946, type: !21)
!3081 = !DILocalVariable(name: "s", arg: 2, scope: !3076, file: !192, line: 946, type: !154)
!3082 = !DILocalVariable(name: "arg", arg: 3, scope: !3076, file: !192, line: 946, type: !31)
!3083 = !DILocalVariable(name: "o", scope: !3076, file: !192, line: 948, type: !1643)
!3084 = !DILocalVariable(name: "o", scope: !3085, file: !192, line: 187, type: !199)
!3085 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !192, file: !192, line: 185, type: !3086, isLocal: true, isDefinition: true, scopeLine: 186, flags: DIFlagPrototyped, isOptimized: true, unit: !151, variables: !3088)
!3086 = !DISubroutineType(types: !3087)
!3087 = !{!199, !154}
!3088 = !{!3089, !3084}
!3089 = !DILocalVariable(name: "style", arg: 1, scope: !3085, file: !192, line: 185, type: !154)
!3090 = !DIExpression(DW_OP_LLVM_fragment, 32, 416)
!3091 = !DILocation(line: 187, column: 26, scope: !3085, inlinedAt: !3092)
!3092 = distinct !DILocation(line: 948, column: 36, scope: !3076)
!3093 = !DILocation(line: 946, column: 23, scope: !3076)
!3094 = !DILocation(line: 946, column: 45, scope: !3076)
!3095 = !DILocation(line: 946, column: 60, scope: !3076)
!3096 = !DILocation(line: 948, column: 3, scope: !3076)
!3097 = !DILocation(line: 948, column: 32, scope: !3076)
!3098 = !DILocation(line: 185, column: 48, scope: !3085, inlinedAt: !3092)
!3099 = !DILocation(line: 187, column: 3, scope: !3085, inlinedAt: !3092)
!3100 = !DIExpression(DW_OP_LLVM_fragment, 0, 32)
!3101 = !DILocation(line: 188, column: 13, scope: !3102, inlinedAt: !3092)
!3102 = distinct !DILexicalBlock(scope: !3085, file: !192, line: 188, column: 7)
!3103 = !DILocation(line: 188, column: 7, scope: !3085, inlinedAt: !3092)
!3104 = !DILocation(line: 189, column: 5, scope: !3102, inlinedAt: !3092)
!3105 = !{!3106}
!3106 = distinct !{!3106, !3107, !"quoting_options_from_style: argument 0"}
!3107 = distinct !{!3107, !"quoting_options_from_style"}
!3108 = !DILocation(line: 191, column: 10, scope: !3085, inlinedAt: !3092)
!3109 = !DILocation(line: 192, column: 1, scope: !3085, inlinedAt: !3092)
!3110 = !DILocation(line: 949, column: 10, scope: !3076)
!3111 = !DILocation(line: 950, column: 1, scope: !3076)
!3112 = !DILocation(line: 949, column: 3, scope: !3076)
!3113 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !192, file: !192, line: 953, type: !3114, isLocal: false, isDefinition: true, scopeLine: 955, flags: DIFlagPrototyped, isOptimized: true, unit: !151, variables: !3116)
!3114 = !DISubroutineType(types: !3115)
!3115 = !{!13, !21, !154, !31, !23}
!3116 = !{!3117, !3118, !3119, !3120, !3121}
!3117 = !DILocalVariable(name: "n", arg: 1, scope: !3113, file: !192, line: 953, type: !21)
!3118 = !DILocalVariable(name: "s", arg: 2, scope: !3113, file: !192, line: 953, type: !154)
!3119 = !DILocalVariable(name: "arg", arg: 3, scope: !3113, file: !192, line: 954, type: !31)
!3120 = !DILocalVariable(name: "argsize", arg: 4, scope: !3113, file: !192, line: 954, type: !23)
!3121 = !DILocalVariable(name: "o", scope: !3113, file: !192, line: 956, type: !1643)
!3122 = !DILocation(line: 187, column: 26, scope: !3085, inlinedAt: !3123)
!3123 = distinct !DILocation(line: 956, column: 36, scope: !3113)
!3124 = !DILocation(line: 953, column: 27, scope: !3113)
!3125 = !DILocation(line: 953, column: 49, scope: !3113)
!3126 = !DILocation(line: 954, column: 35, scope: !3113)
!3127 = !DILocation(line: 954, column: 47, scope: !3113)
!3128 = !DILocation(line: 956, column: 3, scope: !3113)
!3129 = !DILocation(line: 956, column: 32, scope: !3113)
!3130 = !DILocation(line: 185, column: 48, scope: !3085, inlinedAt: !3123)
!3131 = !DILocation(line: 187, column: 3, scope: !3085, inlinedAt: !3123)
!3132 = !DILocation(line: 188, column: 13, scope: !3102, inlinedAt: !3123)
!3133 = !DILocation(line: 188, column: 7, scope: !3085, inlinedAt: !3123)
!3134 = !DILocation(line: 189, column: 5, scope: !3102, inlinedAt: !3123)
!3135 = !{!3136}
!3136 = distinct !{!3136, !3137, !"quoting_options_from_style: argument 0"}
!3137 = distinct !{!3137, !"quoting_options_from_style"}
!3138 = !DILocation(line: 191, column: 10, scope: !3085, inlinedAt: !3123)
!3139 = !DILocation(line: 192, column: 1, scope: !3085, inlinedAt: !3123)
!3140 = !DILocation(line: 957, column: 10, scope: !3113)
!3141 = !DILocation(line: 958, column: 1, scope: !3113)
!3142 = !DILocation(line: 957, column: 3, scope: !3113)
!3143 = distinct !DISubprogram(name: "quotearg_style", scope: !192, file: !192, line: 961, type: !3144, isLocal: false, isDefinition: true, scopeLine: 962, flags: DIFlagPrototyped, isOptimized: true, unit: !151, variables: !3146)
!3144 = !DISubroutineType(types: !3145)
!3145 = !{!13, !154, !31}
!3146 = !{!3147, !3148}
!3147 = !DILocalVariable(name: "s", arg: 1, scope: !3143, file: !192, line: 961, type: !154)
!3148 = !DILocalVariable(name: "arg", arg: 2, scope: !3143, file: !192, line: 961, type: !31)
!3149 = !DILocation(line: 187, column: 26, scope: !3085, inlinedAt: !3150)
!3150 = distinct !DILocation(line: 948, column: 36, scope: !3076, inlinedAt: !3151)
!3151 = distinct !DILocation(line: 963, column: 10, scope: !3143)
!3152 = !DILocation(line: 961, column: 36, scope: !3143)
!3153 = !DILocation(line: 961, column: 51, scope: !3143)
!3154 = !DILocation(line: 946, column: 23, scope: !3076, inlinedAt: !3151)
!3155 = !DILocation(line: 946, column: 45, scope: !3076, inlinedAt: !3151)
!3156 = !DILocation(line: 946, column: 60, scope: !3076, inlinedAt: !3151)
!3157 = !DILocation(line: 948, column: 3, scope: !3076, inlinedAt: !3151)
!3158 = !DILocation(line: 948, column: 32, scope: !3076, inlinedAt: !3151)
!3159 = !DILocation(line: 185, column: 48, scope: !3085, inlinedAt: !3150)
!3160 = !DILocation(line: 187, column: 3, scope: !3085, inlinedAt: !3150)
!3161 = !DILocation(line: 188, column: 13, scope: !3102, inlinedAt: !3150)
!3162 = !DILocation(line: 188, column: 7, scope: !3085, inlinedAt: !3150)
!3163 = !DILocation(line: 189, column: 5, scope: !3102, inlinedAt: !3150)
!3164 = !{!3165}
!3165 = distinct !{!3165, !3166, !"quoting_options_from_style: argument 0"}
!3166 = distinct !{!3166, !"quoting_options_from_style"}
!3167 = !DILocation(line: 191, column: 10, scope: !3085, inlinedAt: !3150)
!3168 = !DILocation(line: 192, column: 1, scope: !3085, inlinedAt: !3150)
!3169 = !DILocation(line: 949, column: 10, scope: !3076, inlinedAt: !3151)
!3170 = !DILocation(line: 950, column: 1, scope: !3076, inlinedAt: !3151)
!3171 = !DILocation(line: 963, column: 3, scope: !3143)
!3172 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !192, file: !192, line: 967, type: !3173, isLocal: false, isDefinition: true, scopeLine: 968, flags: DIFlagPrototyped, isOptimized: true, unit: !151, variables: !3175)
!3173 = !DISubroutineType(types: !3174)
!3174 = !{!13, !154, !31, !23}
!3175 = !{!3176, !3177, !3178}
!3176 = !DILocalVariable(name: "s", arg: 1, scope: !3172, file: !192, line: 967, type: !154)
!3177 = !DILocalVariable(name: "arg", arg: 2, scope: !3172, file: !192, line: 967, type: !31)
!3178 = !DILocalVariable(name: "argsize", arg: 3, scope: !3172, file: !192, line: 967, type: !23)
!3179 = !DILocation(line: 187, column: 26, scope: !3085, inlinedAt: !3180)
!3180 = distinct !DILocation(line: 956, column: 36, scope: !3113, inlinedAt: !3181)
!3181 = distinct !DILocation(line: 969, column: 10, scope: !3172)
!3182 = !DILocation(line: 967, column: 40, scope: !3172)
!3183 = !DILocation(line: 967, column: 55, scope: !3172)
!3184 = !DILocation(line: 967, column: 67, scope: !3172)
!3185 = !DILocation(line: 953, column: 27, scope: !3113, inlinedAt: !3181)
!3186 = !DILocation(line: 953, column: 49, scope: !3113, inlinedAt: !3181)
!3187 = !DILocation(line: 954, column: 35, scope: !3113, inlinedAt: !3181)
!3188 = !DILocation(line: 954, column: 47, scope: !3113, inlinedAt: !3181)
!3189 = !DILocation(line: 956, column: 3, scope: !3113, inlinedAt: !3181)
!3190 = !DILocation(line: 956, column: 32, scope: !3113, inlinedAt: !3181)
!3191 = !DILocation(line: 185, column: 48, scope: !3085, inlinedAt: !3180)
!3192 = !DILocation(line: 187, column: 3, scope: !3085, inlinedAt: !3180)
!3193 = !DILocation(line: 188, column: 13, scope: !3102, inlinedAt: !3180)
!3194 = !DILocation(line: 188, column: 7, scope: !3085, inlinedAt: !3180)
!3195 = !DILocation(line: 189, column: 5, scope: !3102, inlinedAt: !3180)
!3196 = !{!3197}
!3197 = distinct !{!3197, !3198, !"quoting_options_from_style: argument 0"}
!3198 = distinct !{!3198, !"quoting_options_from_style"}
!3199 = !DILocation(line: 191, column: 10, scope: !3085, inlinedAt: !3180)
!3200 = !DILocation(line: 192, column: 1, scope: !3085, inlinedAt: !3180)
!3201 = !DILocation(line: 957, column: 10, scope: !3113, inlinedAt: !3181)
!3202 = !DILocation(line: 958, column: 1, scope: !3113, inlinedAt: !3181)
!3203 = !DILocation(line: 969, column: 3, scope: !3172)
!3204 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !192, file: !192, line: 973, type: !3205, isLocal: false, isDefinition: true, scopeLine: 974, flags: DIFlagPrototyped, isOptimized: true, unit: !151, variables: !3207)
!3205 = !DISubroutineType(types: !3206)
!3206 = !{!13, !31, !23, !14}
!3207 = !{!3208, !3209, !3210, !3211}
!3208 = !DILocalVariable(name: "arg", arg: 1, scope: !3204, file: !192, line: 973, type: !31)
!3209 = !DILocalVariable(name: "argsize", arg: 2, scope: !3204, file: !192, line: 973, type: !23)
!3210 = !DILocalVariable(name: "ch", arg: 3, scope: !3204, file: !192, line: 973, type: !14)
!3211 = !DILocalVariable(name: "options", scope: !3204, file: !192, line: 975, type: !199)
!3212 = !DILocation(line: 973, column: 32, scope: !3204)
!3213 = !DILocation(line: 973, column: 44, scope: !3204)
!3214 = !DILocation(line: 973, column: 58, scope: !3204)
!3215 = !DILocation(line: 975, column: 3, scope: !3204)
!3216 = !DILocation(line: 976, column: 13, scope: !3204)
!3217 = !{i64 0, i64 4, !1132, i64 4, i64 4, !787, i64 8, i64 32, !1132, i64 40, i64 8, !680, i64 48, i64 8, !680}
!3218 = !DILocation(line: 975, column: 26, scope: !3204)
!3219 = !DILocation(line: 144, column: 43, scope: !1666, inlinedAt: !3220)
!3220 = distinct !DILocation(line: 977, column: 3, scope: !3204)
!3221 = !DILocation(line: 144, column: 51, scope: !1666, inlinedAt: !3220)
!3222 = !DILocation(line: 144, column: 58, scope: !1666, inlinedAt: !3220)
!3223 = !DILocation(line: 146, column: 17, scope: !1666, inlinedAt: !3220)
!3224 = !DILocation(line: 148, column: 62, scope: !1684, inlinedAt: !3220)
!3225 = !DILocation(line: 148, column: 57, scope: !1684, inlinedAt: !3220)
!3226 = !DILocation(line: 147, column: 17, scope: !1666, inlinedAt: !3220)
!3227 = !DILocation(line: 149, column: 18, scope: !1666, inlinedAt: !3220)
!3228 = !DILocation(line: 149, column: 15, scope: !1666, inlinedAt: !3220)
!3229 = !DILocation(line: 149, column: 7, scope: !1666, inlinedAt: !3220)
!3230 = !DILocation(line: 150, column: 12, scope: !1666, inlinedAt: !3220)
!3231 = !DILocation(line: 150, column: 15, scope: !1666, inlinedAt: !3220)
!3232 = !DILocation(line: 150, column: 25, scope: !1666, inlinedAt: !3220)
!3233 = !DILocation(line: 150, column: 7, scope: !1666, inlinedAt: !3220)
!3234 = !DILocation(line: 151, column: 18, scope: !1666, inlinedAt: !3220)
!3235 = !DILocation(line: 151, column: 23, scope: !1666, inlinedAt: !3220)
!3236 = !DILocation(line: 151, column: 6, scope: !1666, inlinedAt: !3220)
!3237 = !DILocation(line: 978, column: 10, scope: !3204)
!3238 = !DILocation(line: 979, column: 1, scope: !3204)
!3239 = !DILocation(line: 978, column: 3, scope: !3204)
!3240 = distinct !DISubprogram(name: "quotearg_char", scope: !192, file: !192, line: 982, type: !3241, isLocal: false, isDefinition: true, scopeLine: 983, flags: DIFlagPrototyped, isOptimized: true, unit: !151, variables: !3243)
!3241 = !DISubroutineType(types: !3242)
!3242 = !{!13, !31, !14}
!3243 = !{!3244, !3245}
!3244 = !DILocalVariable(name: "arg", arg: 1, scope: !3240, file: !192, line: 982, type: !31)
!3245 = !DILocalVariable(name: "ch", arg: 2, scope: !3240, file: !192, line: 982, type: !14)
!3246 = !DILocation(line: 982, column: 28, scope: !3240)
!3247 = !DILocation(line: 982, column: 38, scope: !3240)
!3248 = !DILocation(line: 973, column: 32, scope: !3204, inlinedAt: !3249)
!3249 = distinct !DILocation(line: 984, column: 10, scope: !3240)
!3250 = !DILocation(line: 973, column: 44, scope: !3204, inlinedAt: !3249)
!3251 = !DILocation(line: 973, column: 58, scope: !3204, inlinedAt: !3249)
!3252 = !DILocation(line: 975, column: 3, scope: !3204, inlinedAt: !3249)
!3253 = !DILocation(line: 976, column: 13, scope: !3204, inlinedAt: !3249)
!3254 = !DILocation(line: 975, column: 26, scope: !3204, inlinedAt: !3249)
!3255 = !DILocation(line: 144, column: 43, scope: !1666, inlinedAt: !3256)
!3256 = distinct !DILocation(line: 977, column: 3, scope: !3204, inlinedAt: !3249)
!3257 = !DILocation(line: 144, column: 51, scope: !1666, inlinedAt: !3256)
!3258 = !DILocation(line: 144, column: 58, scope: !1666, inlinedAt: !3256)
!3259 = !DILocation(line: 146, column: 17, scope: !1666, inlinedAt: !3256)
!3260 = !DILocation(line: 148, column: 62, scope: !1684, inlinedAt: !3256)
!3261 = !DILocation(line: 148, column: 57, scope: !1684, inlinedAt: !3256)
!3262 = !DILocation(line: 147, column: 17, scope: !1666, inlinedAt: !3256)
!3263 = !DILocation(line: 149, column: 18, scope: !1666, inlinedAt: !3256)
!3264 = !DILocation(line: 149, column: 15, scope: !1666, inlinedAt: !3256)
!3265 = !DILocation(line: 149, column: 7, scope: !1666, inlinedAt: !3256)
!3266 = !DILocation(line: 150, column: 12, scope: !1666, inlinedAt: !3256)
!3267 = !DILocation(line: 150, column: 15, scope: !1666, inlinedAt: !3256)
!3268 = !DILocation(line: 150, column: 25, scope: !1666, inlinedAt: !3256)
!3269 = !DILocation(line: 150, column: 7, scope: !1666, inlinedAt: !3256)
!3270 = !DILocation(line: 151, column: 18, scope: !1666, inlinedAt: !3256)
!3271 = !DILocation(line: 151, column: 23, scope: !1666, inlinedAt: !3256)
!3272 = !DILocation(line: 151, column: 6, scope: !1666, inlinedAt: !3256)
!3273 = !DILocation(line: 978, column: 10, scope: !3204, inlinedAt: !3249)
!3274 = !DILocation(line: 979, column: 1, scope: !3204, inlinedAt: !3249)
!3275 = !DILocation(line: 984, column: 3, scope: !3240)
!3276 = distinct !DISubprogram(name: "quotearg_colon", scope: !192, file: !192, line: 988, type: !3052, isLocal: false, isDefinition: true, scopeLine: 989, flags: DIFlagPrototyped, isOptimized: true, unit: !151, variables: !3277)
!3277 = !{!3278}
!3278 = !DILocalVariable(name: "arg", arg: 1, scope: !3276, file: !192, line: 988, type: !31)
!3279 = !DILocation(line: 988, column: 29, scope: !3276)
!3280 = !DILocation(line: 982, column: 28, scope: !3240, inlinedAt: !3281)
!3281 = distinct !DILocation(line: 990, column: 10, scope: !3276)
!3282 = !DILocation(line: 982, column: 38, scope: !3240, inlinedAt: !3281)
!3283 = !DILocation(line: 973, column: 32, scope: !3204, inlinedAt: !3284)
!3284 = distinct !DILocation(line: 984, column: 10, scope: !3240, inlinedAt: !3281)
!3285 = !DILocation(line: 973, column: 44, scope: !3204, inlinedAt: !3284)
!3286 = !DILocation(line: 973, column: 58, scope: !3204, inlinedAt: !3284)
!3287 = !DILocation(line: 975, column: 3, scope: !3204, inlinedAt: !3284)
!3288 = !DILocation(line: 976, column: 13, scope: !3204, inlinedAt: !3284)
!3289 = !DILocation(line: 975, column: 26, scope: !3204, inlinedAt: !3284)
!3290 = !DILocation(line: 144, column: 43, scope: !1666, inlinedAt: !3291)
!3291 = distinct !DILocation(line: 977, column: 3, scope: !3204, inlinedAt: !3284)
!3292 = !DILocation(line: 144, column: 51, scope: !1666, inlinedAt: !3291)
!3293 = !DILocation(line: 144, column: 58, scope: !1666, inlinedAt: !3291)
!3294 = !DILocation(line: 146, column: 17, scope: !1666, inlinedAt: !3291)
!3295 = !DILocation(line: 148, column: 57, scope: !1684, inlinedAt: !3291)
!3296 = !DILocation(line: 147, column: 17, scope: !1666, inlinedAt: !3291)
!3297 = !DILocation(line: 149, column: 7, scope: !1666, inlinedAt: !3291)
!3298 = !DILocation(line: 150, column: 12, scope: !1666, inlinedAt: !3291)
!3299 = !DILocation(line: 151, column: 6, scope: !1666, inlinedAt: !3291)
!3300 = !DILocation(line: 978, column: 10, scope: !3204, inlinedAt: !3284)
!3301 = !DILocation(line: 979, column: 1, scope: !3204, inlinedAt: !3284)
!3302 = !DILocation(line: 990, column: 3, scope: !3276)
!3303 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !192, file: !192, line: 994, type: !3063, isLocal: false, isDefinition: true, scopeLine: 995, flags: DIFlagPrototyped, isOptimized: true, unit: !151, variables: !3304)
!3304 = !{!3305, !3306}
!3305 = !DILocalVariable(name: "arg", arg: 1, scope: !3303, file: !192, line: 994, type: !31)
!3306 = !DILocalVariable(name: "argsize", arg: 2, scope: !3303, file: !192, line: 994, type: !23)
!3307 = !DILocation(line: 994, column: 33, scope: !3303)
!3308 = !DILocation(line: 994, column: 45, scope: !3303)
!3309 = !DILocation(line: 973, column: 32, scope: !3204, inlinedAt: !3310)
!3310 = distinct !DILocation(line: 996, column: 10, scope: !3303)
!3311 = !DILocation(line: 973, column: 44, scope: !3204, inlinedAt: !3310)
!3312 = !DILocation(line: 973, column: 58, scope: !3204, inlinedAt: !3310)
!3313 = !DILocation(line: 975, column: 3, scope: !3204, inlinedAt: !3310)
!3314 = !DILocation(line: 976, column: 13, scope: !3204, inlinedAt: !3310)
!3315 = !DILocation(line: 975, column: 26, scope: !3204, inlinedAt: !3310)
!3316 = !DILocation(line: 144, column: 43, scope: !1666, inlinedAt: !3317)
!3317 = distinct !DILocation(line: 977, column: 3, scope: !3204, inlinedAt: !3310)
!3318 = !DILocation(line: 144, column: 51, scope: !1666, inlinedAt: !3317)
!3319 = !DILocation(line: 144, column: 58, scope: !1666, inlinedAt: !3317)
!3320 = !DILocation(line: 146, column: 17, scope: !1666, inlinedAt: !3317)
!3321 = !DILocation(line: 148, column: 57, scope: !1684, inlinedAt: !3317)
!3322 = !DILocation(line: 147, column: 17, scope: !1666, inlinedAt: !3317)
!3323 = !DILocation(line: 149, column: 7, scope: !1666, inlinedAt: !3317)
!3324 = !DILocation(line: 150, column: 12, scope: !1666, inlinedAt: !3317)
!3325 = !DILocation(line: 151, column: 6, scope: !1666, inlinedAt: !3317)
!3326 = !DILocation(line: 978, column: 10, scope: !3204, inlinedAt: !3310)
!3327 = !DILocation(line: 979, column: 1, scope: !3204, inlinedAt: !3310)
!3328 = !DILocation(line: 996, column: 3, scope: !3303)
!3329 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !192, file: !192, line: 1000, type: !3077, isLocal: false, isDefinition: true, scopeLine: 1001, flags: DIFlagPrototyped, isOptimized: true, unit: !151, variables: !3330)
!3330 = !{!3331, !3332, !3333, !3334}
!3331 = !DILocalVariable(name: "n", arg: 1, scope: !3329, file: !192, line: 1000, type: !21)
!3332 = !DILocalVariable(name: "s", arg: 2, scope: !3329, file: !192, line: 1000, type: !154)
!3333 = !DILocalVariable(name: "arg", arg: 3, scope: !3329, file: !192, line: 1000, type: !31)
!3334 = !DILocalVariable(name: "options", scope: !3329, file: !192, line: 1002, type: !199)
!3335 = !DILocation(line: 187, column: 26, scope: !3085, inlinedAt: !3336)
!3336 = distinct !DILocation(line: 1003, column: 13, scope: !3329)
!3337 = !DILocation(line: 1000, column: 29, scope: !3329)
!3338 = !DILocation(line: 1000, column: 51, scope: !3329)
!3339 = !DILocation(line: 1000, column: 66, scope: !3329)
!3340 = !DILocation(line: 1002, column: 3, scope: !3329)
!3341 = !DILocation(line: 185, column: 48, scope: !3085, inlinedAt: !3336)
!3342 = !DILocation(line: 187, column: 3, scope: !3085, inlinedAt: !3336)
!3343 = !DILocation(line: 188, column: 13, scope: !3102, inlinedAt: !3336)
!3344 = !DILocation(line: 188, column: 7, scope: !3085, inlinedAt: !3336)
!3345 = !DILocation(line: 189, column: 5, scope: !3102, inlinedAt: !3336)
!3346 = !{!3347}
!3347 = distinct !{!3347, !3348, !"quoting_options_from_style: argument 0"}
!3348 = distinct !{!3348, !"quoting_options_from_style"}
!3349 = !DILocation(line: 191, column: 10, scope: !3085, inlinedAt: !3336)
!3350 = !DILocation(line: 192, column: 1, scope: !3085, inlinedAt: !3336)
!3351 = !DILocation(line: 1003, column: 13, scope: !3329)
!3352 = !DILocation(line: 1002, column: 26, scope: !3329)
!3353 = !DILocation(line: 144, column: 43, scope: !1666, inlinedAt: !3354)
!3354 = distinct !DILocation(line: 1004, column: 3, scope: !3329)
!3355 = !DILocation(line: 144, column: 51, scope: !1666, inlinedAt: !3354)
!3356 = !DILocation(line: 144, column: 58, scope: !1666, inlinedAt: !3354)
!3357 = !DILocation(line: 146, column: 17, scope: !1666, inlinedAt: !3354)
!3358 = !DILocation(line: 148, column: 57, scope: !1684, inlinedAt: !3354)
!3359 = !DILocation(line: 147, column: 17, scope: !1666, inlinedAt: !3354)
!3360 = !DILocation(line: 149, column: 7, scope: !1666, inlinedAt: !3354)
!3361 = !DILocation(line: 150, column: 12, scope: !1666, inlinedAt: !3354)
!3362 = !DILocation(line: 151, column: 6, scope: !1666, inlinedAt: !3354)
!3363 = !DILocation(line: 1005, column: 10, scope: !3329)
!3364 = !DILocation(line: 1006, column: 1, scope: !3329)
!3365 = !DILocation(line: 1005, column: 3, scope: !3329)
!3366 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !192, file: !192, line: 1009, type: !3367, isLocal: false, isDefinition: true, scopeLine: 1011, flags: DIFlagPrototyped, isOptimized: true, unit: !151, variables: !3369)
!3367 = !DISubroutineType(types: !3368)
!3368 = !{!13, !21, !31, !31, !31}
!3369 = !{!3370, !3371, !3372, !3373}
!3370 = !DILocalVariable(name: "n", arg: 1, scope: !3366, file: !192, line: 1009, type: !21)
!3371 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3366, file: !192, line: 1009, type: !31)
!3372 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3366, file: !192, line: 1010, type: !31)
!3373 = !DILocalVariable(name: "arg", arg: 4, scope: !3366, file: !192, line: 1010, type: !31)
!3374 = !DILocation(line: 1009, column: 24, scope: !3366)
!3375 = !DILocation(line: 1009, column: 39, scope: !3366)
!3376 = !DILocation(line: 1010, column: 32, scope: !3366)
!3377 = !DILocation(line: 1010, column: 57, scope: !3366)
!3378 = !DILocalVariable(name: "n", arg: 1, scope: !3379, file: !192, line: 1017, type: !21)
!3379 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !192, file: !192, line: 1017, type: !3380, isLocal: false, isDefinition: true, scopeLine: 1020, flags: DIFlagPrototyped, isOptimized: true, unit: !151, variables: !3382)
!3380 = !DISubroutineType(types: !3381)
!3381 = !{!13, !21, !31, !31, !31, !23}
!3382 = !{!3378, !3383, !3384, !3385, !3386, !3387}
!3383 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3379, file: !192, line: 1017, type: !31)
!3384 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3379, file: !192, line: 1018, type: !31)
!3385 = !DILocalVariable(name: "arg", arg: 4, scope: !3379, file: !192, line: 1019, type: !31)
!3386 = !DILocalVariable(name: "argsize", arg: 5, scope: !3379, file: !192, line: 1019, type: !23)
!3387 = !DILocalVariable(name: "o", scope: !3379, file: !192, line: 1021, type: !199)
!3388 = !DILocation(line: 1017, column: 28, scope: !3379, inlinedAt: !3389)
!3389 = distinct !DILocation(line: 1012, column: 10, scope: !3366)
!3390 = !DILocation(line: 1017, column: 43, scope: !3379, inlinedAt: !3389)
!3391 = !DILocation(line: 1018, column: 36, scope: !3379, inlinedAt: !3389)
!3392 = !DILocation(line: 1019, column: 36, scope: !3379, inlinedAt: !3389)
!3393 = !DILocation(line: 1019, column: 48, scope: !3379, inlinedAt: !3389)
!3394 = !DILocation(line: 1021, column: 3, scope: !3379, inlinedAt: !3389)
!3395 = !DILocation(line: 1021, column: 30, scope: !3379, inlinedAt: !3389)
!3396 = !DILocation(line: 1021, column: 26, scope: !3379, inlinedAt: !3389)
!3397 = !DILocation(line: 171, column: 45, scope: !1716, inlinedAt: !3398)
!3398 = distinct !DILocation(line: 1022, column: 3, scope: !3379, inlinedAt: !3389)
!3399 = !DILocation(line: 172, column: 33, scope: !1716, inlinedAt: !3398)
!3400 = !DILocation(line: 172, column: 57, scope: !1716, inlinedAt: !3398)
!3401 = !DILocation(line: 176, column: 6, scope: !1716, inlinedAt: !3398)
!3402 = !DILocation(line: 176, column: 12, scope: !1716, inlinedAt: !3398)
!3403 = !DILocation(line: 177, column: 8, scope: !1732, inlinedAt: !3398)
!3404 = !DILocation(line: 177, column: 23, scope: !1734, inlinedAt: !3398)
!3405 = !DILocation(line: 177, column: 19, scope: !1732, inlinedAt: !3398)
!3406 = !DILocation(line: 178, column: 5, scope: !1732, inlinedAt: !3398)
!3407 = !DILocation(line: 179, column: 6, scope: !1716, inlinedAt: !3398)
!3408 = !DILocation(line: 179, column: 17, scope: !1716, inlinedAt: !3398)
!3409 = !DILocation(line: 180, column: 6, scope: !1716, inlinedAt: !3398)
!3410 = !DILocation(line: 180, column: 18, scope: !1716, inlinedAt: !3398)
!3411 = !DILocation(line: 1023, column: 10, scope: !3379, inlinedAt: !3389)
!3412 = !DILocation(line: 1024, column: 1, scope: !3379, inlinedAt: !3389)
!3413 = !DILocation(line: 1012, column: 3, scope: !3366)
!3414 = !DILocation(line: 1017, column: 28, scope: !3379)
!3415 = !DILocation(line: 1017, column: 43, scope: !3379)
!3416 = !DILocation(line: 1018, column: 36, scope: !3379)
!3417 = !DILocation(line: 1019, column: 36, scope: !3379)
!3418 = !DILocation(line: 1019, column: 48, scope: !3379)
!3419 = !DILocation(line: 1021, column: 3, scope: !3379)
!3420 = !DILocation(line: 1021, column: 30, scope: !3379)
!3421 = !DILocation(line: 1021, column: 26, scope: !3379)
!3422 = !DILocation(line: 171, column: 45, scope: !1716, inlinedAt: !3423)
!3423 = distinct !DILocation(line: 1022, column: 3, scope: !3379)
!3424 = !DILocation(line: 172, column: 33, scope: !1716, inlinedAt: !3423)
!3425 = !DILocation(line: 172, column: 57, scope: !1716, inlinedAt: !3423)
!3426 = !DILocation(line: 176, column: 6, scope: !1716, inlinedAt: !3423)
!3427 = !DILocation(line: 176, column: 12, scope: !1716, inlinedAt: !3423)
!3428 = !DILocation(line: 177, column: 8, scope: !1732, inlinedAt: !3423)
!3429 = !DILocation(line: 177, column: 23, scope: !1734, inlinedAt: !3423)
!3430 = !DILocation(line: 177, column: 19, scope: !1732, inlinedAt: !3423)
!3431 = !DILocation(line: 178, column: 5, scope: !1732, inlinedAt: !3423)
!3432 = !DILocation(line: 179, column: 6, scope: !1716, inlinedAt: !3423)
!3433 = !DILocation(line: 179, column: 17, scope: !1716, inlinedAt: !3423)
!3434 = !DILocation(line: 180, column: 6, scope: !1716, inlinedAt: !3423)
!3435 = !DILocation(line: 180, column: 18, scope: !1716, inlinedAt: !3423)
!3436 = !DILocation(line: 1023, column: 10, scope: !3379)
!3437 = !DILocation(line: 1024, column: 1, scope: !3379)
!3438 = !DILocation(line: 1023, column: 3, scope: !3379)
!3439 = distinct !DISubprogram(name: "quotearg_custom", scope: !192, file: !192, line: 1027, type: !3440, isLocal: false, isDefinition: true, scopeLine: 1029, flags: DIFlagPrototyped, isOptimized: true, unit: !151, variables: !3442)
!3440 = !DISubroutineType(types: !3441)
!3441 = !{!13, !31, !31, !31}
!3442 = !{!3443, !3444, !3445}
!3443 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3439, file: !192, line: 1027, type: !31)
!3444 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3439, file: !192, line: 1027, type: !31)
!3445 = !DILocalVariable(name: "arg", arg: 3, scope: !3439, file: !192, line: 1028, type: !31)
!3446 = !DILocation(line: 1027, column: 30, scope: !3439)
!3447 = !DILocation(line: 1027, column: 54, scope: !3439)
!3448 = !DILocation(line: 1028, column: 30, scope: !3439)
!3449 = !DILocation(line: 1009, column: 24, scope: !3366, inlinedAt: !3450)
!3450 = distinct !DILocation(line: 1030, column: 10, scope: !3439)
!3451 = !DILocation(line: 1009, column: 39, scope: !3366, inlinedAt: !3450)
!3452 = !DILocation(line: 1010, column: 32, scope: !3366, inlinedAt: !3450)
!3453 = !DILocation(line: 1010, column: 57, scope: !3366, inlinedAt: !3450)
!3454 = !DILocation(line: 1017, column: 28, scope: !3379, inlinedAt: !3455)
!3455 = distinct !DILocation(line: 1012, column: 10, scope: !3366, inlinedAt: !3450)
!3456 = !DILocation(line: 1017, column: 43, scope: !3379, inlinedAt: !3455)
!3457 = !DILocation(line: 1018, column: 36, scope: !3379, inlinedAt: !3455)
!3458 = !DILocation(line: 1019, column: 36, scope: !3379, inlinedAt: !3455)
!3459 = !DILocation(line: 1019, column: 48, scope: !3379, inlinedAt: !3455)
!3460 = !DILocation(line: 1021, column: 3, scope: !3379, inlinedAt: !3455)
!3461 = !DILocation(line: 1021, column: 30, scope: !3379, inlinedAt: !3455)
!3462 = !DILocation(line: 1021, column: 26, scope: !3379, inlinedAt: !3455)
!3463 = !DILocation(line: 171, column: 45, scope: !1716, inlinedAt: !3464)
!3464 = distinct !DILocation(line: 1022, column: 3, scope: !3379, inlinedAt: !3455)
!3465 = !DILocation(line: 172, column: 33, scope: !1716, inlinedAt: !3464)
!3466 = !DILocation(line: 172, column: 57, scope: !1716, inlinedAt: !3464)
!3467 = !DILocation(line: 176, column: 6, scope: !1716, inlinedAt: !3464)
!3468 = !DILocation(line: 176, column: 12, scope: !1716, inlinedAt: !3464)
!3469 = !DILocation(line: 177, column: 8, scope: !1732, inlinedAt: !3464)
!3470 = !DILocation(line: 177, column: 23, scope: !1734, inlinedAt: !3464)
!3471 = !DILocation(line: 177, column: 19, scope: !1732, inlinedAt: !3464)
!3472 = !DILocation(line: 178, column: 5, scope: !1732, inlinedAt: !3464)
!3473 = !DILocation(line: 179, column: 6, scope: !1716, inlinedAt: !3464)
!3474 = !DILocation(line: 179, column: 17, scope: !1716, inlinedAt: !3464)
!3475 = !DILocation(line: 180, column: 6, scope: !1716, inlinedAt: !3464)
!3476 = !DILocation(line: 180, column: 18, scope: !1716, inlinedAt: !3464)
!3477 = !DILocation(line: 1023, column: 10, scope: !3379, inlinedAt: !3455)
!3478 = !DILocation(line: 1024, column: 1, scope: !3379, inlinedAt: !3455)
!3479 = !DILocation(line: 1030, column: 3, scope: !3439)
!3480 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !192, file: !192, line: 1034, type: !3481, isLocal: false, isDefinition: true, scopeLine: 1036, flags: DIFlagPrototyped, isOptimized: true, unit: !151, variables: !3483)
!3481 = !DISubroutineType(types: !3482)
!3482 = !{!13, !31, !31, !31, !23}
!3483 = !{!3484, !3485, !3486, !3487}
!3484 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3480, file: !192, line: 1034, type: !31)
!3485 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3480, file: !192, line: 1034, type: !31)
!3486 = !DILocalVariable(name: "arg", arg: 3, scope: !3480, file: !192, line: 1035, type: !31)
!3487 = !DILocalVariable(name: "argsize", arg: 4, scope: !3480, file: !192, line: 1035, type: !23)
!3488 = !DILocation(line: 1034, column: 34, scope: !3480)
!3489 = !DILocation(line: 1034, column: 58, scope: !3480)
!3490 = !DILocation(line: 1035, column: 34, scope: !3480)
!3491 = !DILocation(line: 1035, column: 46, scope: !3480)
!3492 = !DILocation(line: 1017, column: 28, scope: !3379, inlinedAt: !3493)
!3493 = distinct !DILocation(line: 1037, column: 10, scope: !3480)
!3494 = !DILocation(line: 1017, column: 43, scope: !3379, inlinedAt: !3493)
!3495 = !DILocation(line: 1018, column: 36, scope: !3379, inlinedAt: !3493)
!3496 = !DILocation(line: 1019, column: 36, scope: !3379, inlinedAt: !3493)
!3497 = !DILocation(line: 1019, column: 48, scope: !3379, inlinedAt: !3493)
!3498 = !DILocation(line: 1021, column: 3, scope: !3379, inlinedAt: !3493)
!3499 = !DILocation(line: 1021, column: 30, scope: !3379, inlinedAt: !3493)
!3500 = !DILocation(line: 1021, column: 26, scope: !3379, inlinedAt: !3493)
!3501 = !DILocation(line: 171, column: 45, scope: !1716, inlinedAt: !3502)
!3502 = distinct !DILocation(line: 1022, column: 3, scope: !3379, inlinedAt: !3493)
!3503 = !DILocation(line: 172, column: 33, scope: !1716, inlinedAt: !3502)
!3504 = !DILocation(line: 172, column: 57, scope: !1716, inlinedAt: !3502)
!3505 = !DILocation(line: 176, column: 6, scope: !1716, inlinedAt: !3502)
!3506 = !DILocation(line: 176, column: 12, scope: !1716, inlinedAt: !3502)
!3507 = !DILocation(line: 177, column: 8, scope: !1732, inlinedAt: !3502)
!3508 = !DILocation(line: 177, column: 23, scope: !1734, inlinedAt: !3502)
!3509 = !DILocation(line: 177, column: 19, scope: !1732, inlinedAt: !3502)
!3510 = !DILocation(line: 178, column: 5, scope: !1732, inlinedAt: !3502)
!3511 = !DILocation(line: 179, column: 6, scope: !1716, inlinedAt: !3502)
!3512 = !DILocation(line: 179, column: 17, scope: !1716, inlinedAt: !3502)
!3513 = !DILocation(line: 180, column: 6, scope: !1716, inlinedAt: !3502)
!3514 = !DILocation(line: 180, column: 18, scope: !1716, inlinedAt: !3502)
!3515 = !DILocation(line: 1023, column: 10, scope: !3379, inlinedAt: !3493)
!3516 = !DILocation(line: 1024, column: 1, scope: !3379, inlinedAt: !3493)
!3517 = !DILocation(line: 1037, column: 3, scope: !3480)
!3518 = distinct !DISubprogram(name: "quote_n_mem", scope: !192, file: !192, line: 1052, type: !3519, isLocal: false, isDefinition: true, scopeLine: 1053, flags: DIFlagPrototyped, isOptimized: true, unit: !151, variables: !3521)
!3519 = !DISubroutineType(types: !3520)
!3520 = !{!31, !21, !31, !23}
!3521 = !{!3522, !3523, !3524}
!3522 = !DILocalVariable(name: "n", arg: 1, scope: !3518, file: !192, line: 1052, type: !21)
!3523 = !DILocalVariable(name: "arg", arg: 2, scope: !3518, file: !192, line: 1052, type: !31)
!3524 = !DILocalVariable(name: "argsize", arg: 3, scope: !3518, file: !192, line: 1052, type: !23)
!3525 = !DILocation(line: 1052, column: 18, scope: !3518)
!3526 = !DILocation(line: 1052, column: 33, scope: !3518)
!3527 = !DILocation(line: 1052, column: 45, scope: !3518)
!3528 = !DILocation(line: 1054, column: 10, scope: !3518)
!3529 = !DILocation(line: 1054, column: 3, scope: !3518)
!3530 = distinct !DISubprogram(name: "quote_mem", scope: !192, file: !192, line: 1058, type: !3531, isLocal: false, isDefinition: true, scopeLine: 1059, flags: DIFlagPrototyped, isOptimized: true, unit: !151, variables: !3533)
!3531 = !DISubroutineType(types: !3532)
!3532 = !{!31, !31, !23}
!3533 = !{!3534, !3535}
!3534 = !DILocalVariable(name: "arg", arg: 1, scope: !3530, file: !192, line: 1058, type: !31)
!3535 = !DILocalVariable(name: "argsize", arg: 2, scope: !3530, file: !192, line: 1058, type: !23)
!3536 = !DILocation(line: 1058, column: 24, scope: !3530)
!3537 = !DILocation(line: 1058, column: 36, scope: !3530)
!3538 = !DILocation(line: 1052, column: 18, scope: !3518, inlinedAt: !3539)
!3539 = distinct !DILocation(line: 1060, column: 10, scope: !3530)
!3540 = !DILocation(line: 1052, column: 33, scope: !3518, inlinedAt: !3539)
!3541 = !DILocation(line: 1052, column: 45, scope: !3518, inlinedAt: !3539)
!3542 = !DILocation(line: 1054, column: 10, scope: !3518, inlinedAt: !3539)
!3543 = !DILocation(line: 1060, column: 3, scope: !3530)
!3544 = distinct !DISubprogram(name: "quote_n", scope: !192, file: !192, line: 1064, type: !3545, isLocal: false, isDefinition: true, scopeLine: 1065, flags: DIFlagPrototyped, isOptimized: true, unit: !151, variables: !3547)
!3545 = !DISubroutineType(types: !3546)
!3546 = !{!31, !21, !31}
!3547 = !{!3548, !3549}
!3548 = !DILocalVariable(name: "n", arg: 1, scope: !3544, file: !192, line: 1064, type: !21)
!3549 = !DILocalVariable(name: "arg", arg: 2, scope: !3544, file: !192, line: 1064, type: !31)
!3550 = !DILocation(line: 1064, column: 14, scope: !3544)
!3551 = !DILocation(line: 1064, column: 29, scope: !3544)
!3552 = !DILocation(line: 1052, column: 18, scope: !3518, inlinedAt: !3553)
!3553 = distinct !DILocation(line: 1066, column: 10, scope: !3544)
!3554 = !DILocation(line: 1052, column: 33, scope: !3518, inlinedAt: !3553)
!3555 = !DILocation(line: 1052, column: 45, scope: !3518, inlinedAt: !3553)
!3556 = !DILocation(line: 1054, column: 10, scope: !3518, inlinedAt: !3553)
!3557 = !DILocation(line: 1066, column: 3, scope: !3544)
!3558 = distinct !DISubprogram(name: "quote", scope: !192, file: !192, line: 1070, type: !3559, isLocal: false, isDefinition: true, scopeLine: 1071, flags: DIFlagPrototyped, isOptimized: true, unit: !151, variables: !3561)
!3559 = !DISubroutineType(types: !3560)
!3560 = !{!31, !31}
!3561 = !{!3562}
!3562 = !DILocalVariable(name: "arg", arg: 1, scope: !3558, file: !192, line: 1070, type: !31)
!3563 = !DILocation(line: 1070, column: 20, scope: !3558)
!3564 = !DILocation(line: 1064, column: 14, scope: !3544, inlinedAt: !3565)
!3565 = distinct !DILocation(line: 1072, column: 10, scope: !3558)
!3566 = !DILocation(line: 1064, column: 29, scope: !3544, inlinedAt: !3565)
!3567 = !DILocation(line: 1052, column: 18, scope: !3518, inlinedAt: !3568)
!3568 = distinct !DILocation(line: 1066, column: 10, scope: !3544, inlinedAt: !3565)
!3569 = !DILocation(line: 1052, column: 33, scope: !3518, inlinedAt: !3568)
!3570 = !DILocation(line: 1052, column: 45, scope: !3518, inlinedAt: !3568)
!3571 = !DILocation(line: 1054, column: 10, scope: !3518, inlinedAt: !3568)
!3572 = !DILocation(line: 1072, column: 3, scope: !3558)
!3573 = distinct !DISubprogram(name: "version_etc_arn", scope: !623, file: !623, line: 62, type: !3574, isLocal: false, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: true, unit: !619, variables: !3629)
!3574 = !DISubroutineType(types: !3575)
!3575 = !{null, !3576, !31, !31, !31, !3628, !23}
!3576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3577, size: 64)
!3577 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3578, line: 49, baseType: !3579)
!3578 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3579 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3580, line: 241, size: 1728, elements: !3581)
!3580 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3581 = !{!3582, !3583, !3584, !3585, !3586, !3587, !3588, !3589, !3590, !3591, !3592, !3593, !3594, !3602, !3603, !3604, !3605, !3607, !3608, !3609, !3613, !3616, !3618, !3619, !3620, !3621, !3622, !3623, !3624}
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3579, file: !3580, line: 242, baseType: !21, size: 32)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3579, file: !3580, line: 247, baseType: !13, size: 64, offset: 64)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3579, file: !3580, line: 248, baseType: !13, size: 64, offset: 128)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3579, file: !3580, line: 249, baseType: !13, size: 64, offset: 192)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3579, file: !3580, line: 250, baseType: !13, size: 64, offset: 256)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3579, file: !3580, line: 251, baseType: !13, size: 64, offset: 320)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3579, file: !3580, line: 252, baseType: !13, size: 64, offset: 384)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3579, file: !3580, line: 253, baseType: !13, size: 64, offset: 448)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3579, file: !3580, line: 254, baseType: !13, size: 64, offset: 512)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3579, file: !3580, line: 256, baseType: !13, size: 64, offset: 576)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3579, file: !3580, line: 257, baseType: !13, size: 64, offset: 640)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3579, file: !3580, line: 258, baseType: !13, size: 64, offset: 704)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3579, file: !3580, line: 260, baseType: !3595, size: 64, offset: 768)
!3595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3596, size: 64)
!3596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !3580, line: 156, size: 192, elements: !3597)
!3597 = !{!3598, !3599, !3601}
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3596, file: !3580, line: 157, baseType: !3595, size: 64)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3596, file: !3580, line: 158, baseType: !3600, size: 64, offset: 64)
!3600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3579, size: 64)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3596, file: !3580, line: 162, baseType: !21, size: 32, offset: 128)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3579, file: !3580, line: 262, baseType: !3600, size: 64, offset: 832)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3579, file: !3580, line: 264, baseType: !21, size: 32, offset: 896)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3579, file: !3580, line: 268, baseType: !21, size: 32, offset: 928)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3579, file: !3580, line: 270, baseType: !3606, size: 64, offset: 960)
!3606 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !41, line: 140, baseType: !618)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3579, file: !3580, line: 274, baseType: !117, size: 16, offset: 1024)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3579, file: !3580, line: 275, baseType: !22, size: 8, offset: 1040)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3579, file: !3580, line: 276, baseType: !3610, size: 8, offset: 1048)
!3610 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 8, elements: !3611)
!3611 = !{!3612}
!3612 = !DISubrange(count: 1)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3579, file: !3580, line: 280, baseType: !3614, size: 64, offset: 1088)
!3614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3615, size: 64)
!3615 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !3580, line: 150, baseType: null)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3579, file: !3580, line: 289, baseType: !3617, size: 64, offset: 1152)
!3617 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !41, line: 141, baseType: !618)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3579, file: !3580, line: 297, baseType: !15, size: 64, offset: 1216)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3579, file: !3580, line: 298, baseType: !15, size: 64, offset: 1280)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3579, file: !3580, line: 299, baseType: !15, size: 64, offset: 1344)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3579, file: !3580, line: 300, baseType: !15, size: 64, offset: 1408)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3579, file: !3580, line: 302, baseType: !23, size: 64, offset: 1472)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3579, file: !3580, line: 303, baseType: !21, size: 32, offset: 1536)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3579, file: !3580, line: 305, baseType: !3625, size: 160, offset: 1568)
!3625 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 160, elements: !3626)
!3626 = !{!3627}
!3627 = !DISubrange(count: 20)
!3628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !229, size: 64)
!3629 = !{!3630, !3631, !3632, !3633, !3634, !3635}
!3630 = !DILocalVariable(name: "stream", arg: 1, scope: !3573, file: !623, line: 62, type: !3576)
!3631 = !DILocalVariable(name: "command_name", arg: 2, scope: !3573, file: !623, line: 63, type: !31)
!3632 = !DILocalVariable(name: "package", arg: 3, scope: !3573, file: !623, line: 63, type: !31)
!3633 = !DILocalVariable(name: "version", arg: 4, scope: !3573, file: !623, line: 64, type: !31)
!3634 = !DILocalVariable(name: "authors", arg: 5, scope: !3573, file: !623, line: 65, type: !3628)
!3635 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3573, file: !623, line: 65, type: !23)
!3636 = !DILocation(line: 62, column: 24, scope: !3573)
!3637 = !DILocation(line: 63, column: 30, scope: !3573)
!3638 = !DILocation(line: 63, column: 56, scope: !3573)
!3639 = !DILocation(line: 64, column: 30, scope: !3573)
!3640 = !DILocation(line: 65, column: 39, scope: !3573)
!3641 = !DILocation(line: 65, column: 55, scope: !3573)
!3642 = !DILocation(line: 67, column: 7, scope: !3643)
!3643 = distinct !DILexicalBlock(scope: !3573, file: !623, line: 67, column: 7)
!3644 = !DILocation(line: 67, column: 7, scope: !3573)
!3645 = !DILocation(line: 68, column: 5, scope: !3643)
!3646 = !DILocation(line: 70, column: 5, scope: !3643)
!3647 = !DILocation(line: 84, column: 3, scope: !3573)
!3648 = !DILocation(line: 84, column: 3, scope: !3649)
!3649 = !DILexicalBlockFile(scope: !3573, file: !623, discriminator: 1)
!3650 = !DILocation(line: 86, column: 3, scope: !3573)
!3651 = !DILocation(line: 86, column: 3, scope: !3649)
!3652 = !DILocation(line: 95, column: 3, scope: !3573)
!3653 = !DILocation(line: 99, column: 7, scope: !3654)
!3654 = distinct !DILexicalBlock(scope: !3573, file: !623, line: 96, column: 5)
!3655 = !DILocation(line: 102, column: 7, scope: !3654)
!3656 = !DILocation(line: 102, column: 7, scope: !3657)
!3657 = !DILexicalBlockFile(scope: !3654, file: !623, discriminator: 1)
!3658 = !DILocation(line: 103, column: 7, scope: !3654)
!3659 = !DILocation(line: 106, column: 7, scope: !3654)
!3660 = !DILocation(line: 106, column: 7, scope: !3657)
!3661 = !DILocation(line: 107, column: 7, scope: !3654)
!3662 = !DILocation(line: 110, column: 7, scope: !3654)
!3663 = !DILocation(line: 110, column: 7, scope: !3657)
!3664 = !DILocation(line: 112, column: 7, scope: !3654)
!3665 = !DILocation(line: 117, column: 7, scope: !3654)
!3666 = !DILocation(line: 117, column: 7, scope: !3657)
!3667 = !DILocation(line: 119, column: 7, scope: !3654)
!3668 = !DILocation(line: 124, column: 7, scope: !3654)
!3669 = !DILocation(line: 124, column: 7, scope: !3657)
!3670 = !DILocation(line: 126, column: 7, scope: !3654)
!3671 = !DILocation(line: 131, column: 7, scope: !3654)
!3672 = !DILocation(line: 131, column: 7, scope: !3657)
!3673 = !DILocation(line: 134, column: 7, scope: !3654)
!3674 = !DILocation(line: 139, column: 7, scope: !3654)
!3675 = !DILocation(line: 139, column: 7, scope: !3657)
!3676 = !DILocation(line: 142, column: 7, scope: !3654)
!3677 = !DILocation(line: 147, column: 7, scope: !3654)
!3678 = !DILocation(line: 147, column: 7, scope: !3657)
!3679 = !DILocation(line: 151, column: 7, scope: !3654)
!3680 = !DILocation(line: 156, column: 7, scope: !3654)
!3681 = !DILocation(line: 156, column: 7, scope: !3657)
!3682 = !DILocation(line: 160, column: 7, scope: !3654)
!3683 = !DILocation(line: 167, column: 7, scope: !3654)
!3684 = !DILocation(line: 167, column: 7, scope: !3657)
!3685 = !DILocation(line: 171, column: 7, scope: !3654)
!3686 = !DILocation(line: 173, column: 1, scope: !3573)
!3687 = distinct !DISubprogram(name: "version_etc_ar", scope: !623, file: !623, line: 180, type: !3688, isLocal: false, isDefinition: true, scopeLine: 183, flags: DIFlagPrototyped, isOptimized: true, unit: !619, variables: !3690)
!3688 = !DISubroutineType(types: !3689)
!3689 = !{null, !3576, !31, !31, !31, !3628}
!3690 = !{!3691, !3692, !3693, !3694, !3695, !3696}
!3691 = !DILocalVariable(name: "stream", arg: 1, scope: !3687, file: !623, line: 180, type: !3576)
!3692 = !DILocalVariable(name: "command_name", arg: 2, scope: !3687, file: !623, line: 181, type: !31)
!3693 = !DILocalVariable(name: "package", arg: 3, scope: !3687, file: !623, line: 181, type: !31)
!3694 = !DILocalVariable(name: "version", arg: 4, scope: !3687, file: !623, line: 182, type: !31)
!3695 = !DILocalVariable(name: "authors", arg: 5, scope: !3687, file: !623, line: 182, type: !3628)
!3696 = !DILocalVariable(name: "n_authors", scope: !3687, file: !623, line: 184, type: !23)
!3697 = !DILocation(line: 180, column: 23, scope: !3687)
!3698 = !DILocation(line: 181, column: 29, scope: !3687)
!3699 = !DILocation(line: 181, column: 55, scope: !3687)
!3700 = !DILocation(line: 182, column: 29, scope: !3687)
!3701 = !DILocation(line: 182, column: 59, scope: !3687)
!3702 = !DILocation(line: 184, column: 10, scope: !3687)
!3703 = !DILocation(line: 186, column: 8, scope: !3704)
!3704 = distinct !DILexicalBlock(scope: !3687, file: !623, line: 186, column: 3)
!3705 = !DILocation(line: 186, column: 23, scope: !3706)
!3706 = !DILexicalBlockFile(scope: !3707, file: !623, discriminator: 1)
!3707 = distinct !DILexicalBlock(scope: !3704, file: !623, line: 186, column: 3)
!3708 = !DILocation(line: 186, column: 3, scope: !3709)
!3709 = !DILexicalBlockFile(scope: !3704, file: !623, discriminator: 1)
!3710 = !DILocation(line: 186, column: 52, scope: !3711)
!3711 = !DILexicalBlockFile(scope: !3707, file: !623, discriminator: 3)
!3712 = distinct !{!3712, !3713, !3714}
!3713 = !DILocation(line: 186, column: 3, scope: !3704)
!3714 = !DILocation(line: 187, column: 5, scope: !3704)
!3715 = !DILocation(line: 188, column: 3, scope: !3687)
!3716 = !DILocation(line: 189, column: 1, scope: !3687)
!3717 = distinct !DISubprogram(name: "version_etc_va", scope: !623, file: !623, line: 196, type: !3718, isLocal: false, isDefinition: true, scopeLine: 199, flags: DIFlagPrototyped, isOptimized: true, unit: !619, variables: !3727)
!3718 = !DISubroutineType(types: !3719)
!3719 = !{null, !3576, !31, !31, !31, !3720}
!3720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3721, size: 64)
!3721 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !620, line: 189, size: 192, elements: !3722)
!3722 = !{!3723, !3724, !3725, !3726}
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !3721, file: !620, line: 189, baseType: !205, size: 32)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !3721, file: !620, line: 189, baseType: !205, size: 32, offset: 32)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !3721, file: !620, line: 189, baseType: !15, size: 64, offset: 64)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !3721, file: !620, line: 189, baseType: !15, size: 64, offset: 128)
!3727 = !{!3728, !3729, !3730, !3731, !3732, !3733, !3734}
!3728 = !DILocalVariable(name: "stream", arg: 1, scope: !3717, file: !623, line: 196, type: !3576)
!3729 = !DILocalVariable(name: "command_name", arg: 2, scope: !3717, file: !623, line: 197, type: !31)
!3730 = !DILocalVariable(name: "package", arg: 3, scope: !3717, file: !623, line: 197, type: !31)
!3731 = !DILocalVariable(name: "version", arg: 4, scope: !3717, file: !623, line: 198, type: !31)
!3732 = !DILocalVariable(name: "authors", arg: 5, scope: !3717, file: !623, line: 198, type: !3720)
!3733 = !DILocalVariable(name: "n_authors", scope: !3717, file: !623, line: 200, type: !23)
!3734 = !DILocalVariable(name: "authtab", scope: !3717, file: !623, line: 201, type: !3735)
!3735 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 640, elements: !195)
!3736 = !DILocation(line: 196, column: 23, scope: !3717)
!3737 = !DILocation(line: 197, column: 29, scope: !3717)
!3738 = !DILocation(line: 197, column: 55, scope: !3717)
!3739 = !DILocation(line: 198, column: 29, scope: !3717)
!3740 = !DILocation(line: 198, column: 46, scope: !3717)
!3741 = !DILocation(line: 201, column: 3, scope: !3717)
!3742 = !DILocation(line: 201, column: 15, scope: !3717)
!3743 = !DILocation(line: 200, column: 10, scope: !3717)
!3744 = !DILocation(line: 205, column: 35, scope: !3745)
!3745 = !DILexicalBlockFile(scope: !3746, file: !623, discriminator: 1)
!3746 = distinct !DILexicalBlock(scope: !3747, file: !623, line: 203, column: 3)
!3747 = distinct !DILexicalBlock(scope: !3717, file: !623, line: 203, column: 3)
!3748 = !DILocation(line: 205, column: 35, scope: !3749)
!3749 = !DILexicalBlockFile(scope: !3746, file: !623, discriminator: 2)
!3750 = !DILocation(line: 205, column: 35, scope: !3751)
!3751 = !DILexicalBlockFile(scope: !3746, file: !623, discriminator: 3)
!3752 = !DILocation(line: 205, column: 35, scope: !3753)
!3753 = !DILexicalBlockFile(scope: !3746, file: !623, discriminator: 4)
!3754 = !DILocation(line: 205, column: 14, scope: !3753)
!3755 = !DILocation(line: 205, column: 33, scope: !3753)
!3756 = !DILocation(line: 205, column: 67, scope: !3753)
!3757 = !DILocation(line: 203, column: 3, scope: !3758)
!3758 = !DILexicalBlockFile(scope: !3747, file: !623, discriminator: 1)
!3759 = !DILocation(line: 208, column: 3, scope: !3717)
!3760 = !DILocation(line: 210, column: 1, scope: !3717)
!3761 = distinct !DISubprogram(name: "version_etc", scope: !623, file: !623, line: 227, type: !3762, isLocal: false, isDefinition: true, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: true, unit: !619, variables: !3764)
!3762 = !DISubroutineType(types: !3763)
!3763 = !{null, !3576, !31, !31, !31, null}
!3764 = !{!3765, !3766, !3767, !3768, !3769}
!3765 = !DILocalVariable(name: "stream", arg: 1, scope: !3761, file: !623, line: 227, type: !3576)
!3766 = !DILocalVariable(name: "command_name", arg: 2, scope: !3761, file: !623, line: 228, type: !31)
!3767 = !DILocalVariable(name: "package", arg: 3, scope: !3761, file: !623, line: 228, type: !31)
!3768 = !DILocalVariable(name: "version", arg: 4, scope: !3761, file: !623, line: 229, type: !31)
!3769 = !DILocalVariable(name: "authors", scope: !3761, file: !623, line: 231, type: !3770)
!3770 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !3578, line: 80, baseType: !3771)
!3771 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !3772, line: 50, baseType: !3773)
!3772 = !DIFile(filename: "/usr/bin/../lib/clang/4.0.1/include/stdarg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3773 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !620, line: 231, baseType: !3774)
!3774 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3721, size: 192, elements: !3611)
!3775 = !DILocation(line: 227, column: 20, scope: !3761)
!3776 = !DILocation(line: 228, column: 26, scope: !3761)
!3777 = !DILocation(line: 228, column: 52, scope: !3761)
!3778 = !DILocation(line: 229, column: 26, scope: !3761)
!3779 = !DILocation(line: 231, column: 3, scope: !3761)
!3780 = !DILocation(line: 231, column: 11, scope: !3761)
!3781 = !DILocation(line: 233, column: 3, scope: !3761)
!3782 = !DILocation(line: 234, column: 3, scope: !3761)
!3783 = !DILocation(line: 235, column: 3, scope: !3761)
!3784 = !DILocation(line: 236, column: 1, scope: !3761)
!3785 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !623, file: !623, line: 239, type: !696, isLocal: false, isDefinition: true, scopeLine: 240, flags: DIFlagPrototyped, isOptimized: true, unit: !619, variables: !95)
!3786 = !DILocation(line: 245, column: 3, scope: !3785)
!3787 = !DILocation(line: 245, column: 3, scope: !3788)
!3788 = !DILexicalBlockFile(scope: !3785, file: !623, discriminator: 1)
!3789 = !DILocation(line: 251, column: 3, scope: !3785)
!3790 = !DILocation(line: 251, column: 3, scope: !3788)
!3791 = !DILocation(line: 256, column: 3, scope: !3785)
!3792 = !DILocation(line: 256, column: 3, scope: !3788)
!3793 = !DILocation(line: 258, column: 1, scope: !3785)
!3794 = distinct !DISubprogram(name: "xnmalloc", scope: !631, file: !631, line: 105, type: !3795, isLocal: false, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: true, unit: !627, variables: !3797)
!3795 = !DISubroutineType(types: !3796)
!3796 = !{!15, !23, !23}
!3797 = !{!3798, !3799}
!3798 = !DILocalVariable(name: "n", arg: 1, scope: !3794, file: !631, line: 105, type: !23)
!3799 = !DILocalVariable(name: "s", arg: 2, scope: !3794, file: !631, line: 105, type: !23)
!3800 = !DILocation(line: 105, column: 18, scope: !3794)
!3801 = !DILocation(line: 105, column: 28, scope: !3794)
!3802 = !DILocation(line: 107, column: 7, scope: !3803)
!3803 = distinct !DILexicalBlock(scope: !3794, file: !631, line: 107, column: 7)
!3804 = !DILocation(line: 107, column: 7, scope: !3794)
!3805 = !DILocation(line: 108, column: 5, scope: !3803)
!3806 = !DILocation(line: 109, column: 21, scope: !3794)
!3807 = !DILocalVariable(name: "n", arg: 1, scope: !3808, file: !3809, line: 39, type: !23)
!3808 = distinct !DISubprogram(name: "xmalloc", scope: !3809, file: !3809, line: 39, type: !3810, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !627, variables: !3812)
!3809 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3810 = !DISubroutineType(types: !3811)
!3811 = !{!15, !23}
!3812 = !{!3807, !3813}
!3813 = !DILocalVariable(name: "p", scope: !3808, file: !3809, line: 41, type: !15)
!3814 = !DILocation(line: 39, column: 17, scope: !3808, inlinedAt: !3815)
!3815 = distinct !DILocation(line: 109, column: 10, scope: !3794)
!3816 = !DILocation(line: 41, column: 13, scope: !3808, inlinedAt: !3815)
!3817 = !DILocation(line: 41, column: 9, scope: !3808, inlinedAt: !3815)
!3818 = !DILocation(line: 42, column: 8, scope: !3819, inlinedAt: !3815)
!3819 = distinct !DILexicalBlock(scope: !3808, file: !3809, line: 42, column: 7)
!3820 = !DILocation(line: 42, column: 15, scope: !3821, inlinedAt: !3815)
!3821 = !DILexicalBlockFile(scope: !3819, file: !3809, discriminator: 1)
!3822 = !DILocation(line: 42, column: 10, scope: !3819, inlinedAt: !3815)
!3823 = !DILocation(line: 43, column: 5, scope: !3819, inlinedAt: !3815)
!3824 = !DILocation(line: 109, column: 3, scope: !3794)
!3825 = !DILocation(line: 39, column: 17, scope: !3808)
!3826 = !DILocation(line: 41, column: 13, scope: !3808)
!3827 = !DILocation(line: 41, column: 9, scope: !3808)
!3828 = !DILocation(line: 42, column: 8, scope: !3819)
!3829 = !DILocation(line: 42, column: 15, scope: !3821)
!3830 = !DILocation(line: 42, column: 10, scope: !3819)
!3831 = !DILocation(line: 43, column: 5, scope: !3819)
!3832 = !DILocation(line: 44, column: 3, scope: !3808)
!3833 = distinct !DISubprogram(name: "xnrealloc", scope: !631, file: !631, line: 118, type: !3834, isLocal: false, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !627, variables: !3836)
!3834 = !DISubroutineType(types: !3835)
!3835 = !{!15, !15, !23, !23}
!3836 = !{!3837, !3838, !3839}
!3837 = !DILocalVariable(name: "p", arg: 1, scope: !3833, file: !631, line: 118, type: !15)
!3838 = !DILocalVariable(name: "n", arg: 2, scope: !3833, file: !631, line: 118, type: !23)
!3839 = !DILocalVariable(name: "s", arg: 3, scope: !3833, file: !631, line: 118, type: !23)
!3840 = !DILocation(line: 118, column: 18, scope: !3833)
!3841 = !DILocation(line: 118, column: 28, scope: !3833)
!3842 = !DILocation(line: 118, column: 38, scope: !3833)
!3843 = !DILocation(line: 120, column: 7, scope: !3844)
!3844 = distinct !DILexicalBlock(scope: !3833, file: !631, line: 120, column: 7)
!3845 = !DILocation(line: 120, column: 7, scope: !3833)
!3846 = !DILocation(line: 121, column: 5, scope: !3844)
!3847 = !DILocation(line: 122, column: 25, scope: !3833)
!3848 = !DILocalVariable(name: "p", arg: 1, scope: !3849, file: !3809, line: 51, type: !15)
!3849 = distinct !DISubprogram(name: "xrealloc", scope: !3809, file: !3809, line: 51, type: !3850, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !627, variables: !3852)
!3850 = !DISubroutineType(types: !3851)
!3851 = !{!15, !15, !23}
!3852 = !{!3848, !3853}
!3853 = !DILocalVariable(name: "n", arg: 2, scope: !3849, file: !3809, line: 51, type: !23)
!3854 = !DILocation(line: 51, column: 17, scope: !3849, inlinedAt: !3855)
!3855 = distinct !DILocation(line: 122, column: 10, scope: !3833)
!3856 = !DILocation(line: 51, column: 27, scope: !3849, inlinedAt: !3855)
!3857 = !DILocation(line: 53, column: 8, scope: !3858, inlinedAt: !3855)
!3858 = distinct !DILexicalBlock(scope: !3849, file: !3809, line: 53, column: 7)
!3859 = !DILocation(line: 53, column: 13, scope: !3860, inlinedAt: !3855)
!3860 = !DILexicalBlockFile(scope: !3858, file: !3809, discriminator: 1)
!3861 = !DILocation(line: 53, column: 10, scope: !3858, inlinedAt: !3855)
!3862 = !DILocation(line: 57, column: 7, scope: !3863, inlinedAt: !3855)
!3863 = distinct !DILexicalBlock(scope: !3858, file: !3809, line: 54, column: 5)
!3864 = !DILocation(line: 58, column: 7, scope: !3863, inlinedAt: !3855)
!3865 = !DILocation(line: 61, column: 7, scope: !3849, inlinedAt: !3855)
!3866 = !DILocation(line: 62, column: 8, scope: !3867, inlinedAt: !3855)
!3867 = distinct !DILexicalBlock(scope: !3849, file: !3809, line: 62, column: 7)
!3868 = !DILocation(line: 62, column: 13, scope: !3869, inlinedAt: !3855)
!3869 = !DILexicalBlockFile(scope: !3867, file: !3809, discriminator: 1)
!3870 = !DILocation(line: 62, column: 10, scope: !3867, inlinedAt: !3855)
!3871 = !DILocation(line: 63, column: 5, scope: !3867, inlinedAt: !3855)
!3872 = !DILocation(line: 122, column: 3, scope: !3833)
!3873 = !DILocation(line: 51, column: 17, scope: !3849)
!3874 = !DILocation(line: 51, column: 27, scope: !3849)
!3875 = !DILocation(line: 53, column: 8, scope: !3858)
!3876 = !DILocation(line: 53, column: 13, scope: !3860)
!3877 = !DILocation(line: 53, column: 10, scope: !3858)
!3878 = !DILocation(line: 57, column: 7, scope: !3863)
!3879 = !DILocation(line: 58, column: 7, scope: !3863)
!3880 = !DILocation(line: 61, column: 7, scope: !3849)
!3881 = !DILocation(line: 62, column: 8, scope: !3867)
!3882 = !DILocation(line: 62, column: 13, scope: !3869)
!3883 = !DILocation(line: 62, column: 10, scope: !3867)
!3884 = !DILocation(line: 63, column: 5, scope: !3867)
!3885 = !DILocation(line: 65, column: 1, scope: !3849)
!3886 = !DILocation(line: 180, column: 19, scope: !632)
!3887 = !DILocation(line: 180, column: 30, scope: !632)
!3888 = !DILocation(line: 180, column: 41, scope: !632)
!3889 = !DILocation(line: 182, column: 14, scope: !632)
!3890 = !DILocation(line: 182, column: 10, scope: !632)
!3891 = !DILocation(line: 184, column: 9, scope: !3892)
!3892 = distinct !DILexicalBlock(scope: !632, file: !631, line: 184, column: 7)
!3893 = !DILocation(line: 184, column: 7, scope: !632)
!3894 = !DILocation(line: 186, column: 13, scope: !3895)
!3895 = distinct !DILexicalBlock(scope: !3896, file: !631, line: 186, column: 11)
!3896 = distinct !DILexicalBlock(scope: !3892, file: !631, line: 185, column: 5)
!3897 = !DILocation(line: 186, column: 11, scope: !3896)
!3898 = !DILocation(line: 194, column: 30, scope: !3899)
!3899 = distinct !DILexicalBlock(scope: !3895, file: !631, line: 187, column: 9)
!3900 = !DILocation(line: 195, column: 16, scope: !3899)
!3901 = !DILocation(line: 195, column: 13, scope: !3899)
!3902 = !DILocation(line: 196, column: 9, scope: !3899)
!3903 = !DILocation(line: 204, column: 69, scope: !3904)
!3904 = distinct !DILexicalBlock(scope: !3905, file: !631, line: 204, column: 11)
!3905 = distinct !DILexicalBlock(scope: !3892, file: !631, line: 199, column: 5)
!3906 = !DILocation(line: 205, column: 11, scope: !3904)
!3907 = !DILocation(line: 204, column: 11, scope: !3905)
!3908 = !DILocation(line: 206, column: 9, scope: !3904)
!3909 = !DILocation(line: 210, column: 7, scope: !632)
!3910 = !DILocation(line: 211, column: 25, scope: !632)
!3911 = !DILocation(line: 51, column: 17, scope: !3849, inlinedAt: !3912)
!3912 = distinct !DILocation(line: 211, column: 10, scope: !632)
!3913 = !DILocation(line: 51, column: 27, scope: !3849, inlinedAt: !3912)
!3914 = !DILocation(line: 53, column: 10, scope: !3858, inlinedAt: !3912)
!3915 = !DILocation(line: 207, column: 14, scope: !3905)
!3916 = !DILocation(line: 207, column: 18, scope: !3905)
!3917 = !DILocation(line: 207, column: 9, scope: !3905)
!3918 = !DILocation(line: 53, column: 8, scope: !3858, inlinedAt: !3912)
!3919 = !DILocation(line: 57, column: 7, scope: !3863, inlinedAt: !3912)
!3920 = !DILocation(line: 58, column: 7, scope: !3863, inlinedAt: !3912)
!3921 = !DILocation(line: 61, column: 7, scope: !3849, inlinedAt: !3912)
!3922 = !DILocation(line: 62, column: 8, scope: !3867, inlinedAt: !3912)
!3923 = !DILocation(line: 62, column: 13, scope: !3869, inlinedAt: !3912)
!3924 = !DILocation(line: 62, column: 10, scope: !3867, inlinedAt: !3912)
!3925 = !DILocation(line: 63, column: 5, scope: !3867, inlinedAt: !3912)
!3926 = !DILocation(line: 211, column: 3, scope: !632)
!3927 = distinct !DISubprogram(name: "xcharalloc", scope: !631, file: !631, line: 220, type: !2845, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !627, variables: !3928)
!3928 = !{!3929}
!3929 = !DILocalVariable(name: "n", arg: 1, scope: !3927, file: !631, line: 220, type: !23)
!3930 = !DILocation(line: 220, column: 20, scope: !3927)
!3931 = !DILocation(line: 39, column: 17, scope: !3808, inlinedAt: !3932)
!3932 = distinct !DILocation(line: 222, column: 10, scope: !3927)
!3933 = !DILocation(line: 41, column: 13, scope: !3808, inlinedAt: !3932)
!3934 = !DILocation(line: 41, column: 9, scope: !3808, inlinedAt: !3932)
!3935 = !DILocation(line: 42, column: 8, scope: !3819, inlinedAt: !3932)
!3936 = !DILocation(line: 42, column: 15, scope: !3821, inlinedAt: !3932)
!3937 = !DILocation(line: 42, column: 10, scope: !3819, inlinedAt: !3932)
!3938 = !DILocation(line: 43, column: 5, scope: !3819, inlinedAt: !3932)
!3939 = !DILocation(line: 222, column: 3, scope: !3927)
!3940 = distinct !DISubprogram(name: "x2realloc", scope: !3809, file: !3809, line: 74, type: !3941, isLocal: false, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, unit: !627, variables: !3943)
!3941 = !DISubroutineType(types: !3942)
!3942 = !{!15, !15, !635}
!3943 = !{!3944, !3945}
!3944 = !DILocalVariable(name: "p", arg: 1, scope: !3940, file: !3809, line: 74, type: !15)
!3945 = !DILocalVariable(name: "pn", arg: 2, scope: !3940, file: !3809, line: 74, type: !635)
!3946 = !DILocation(line: 74, column: 18, scope: !3940)
!3947 = !DILocation(line: 74, column: 29, scope: !3940)
!3948 = !DILocation(line: 180, column: 19, scope: !632, inlinedAt: !3949)
!3949 = distinct !DILocation(line: 76, column: 10, scope: !3940)
!3950 = !DILocation(line: 180, column: 30, scope: !632, inlinedAt: !3949)
!3951 = !DILocation(line: 180, column: 41, scope: !632, inlinedAt: !3949)
!3952 = !DILocation(line: 182, column: 14, scope: !632, inlinedAt: !3949)
!3953 = !DILocation(line: 182, column: 10, scope: !632, inlinedAt: !3949)
!3954 = !DILocation(line: 184, column: 9, scope: !3892, inlinedAt: !3949)
!3955 = !DILocation(line: 184, column: 7, scope: !632, inlinedAt: !3949)
!3956 = !DILocation(line: 186, column: 13, scope: !3895, inlinedAt: !3949)
!3957 = !DILocation(line: 186, column: 11, scope: !3896, inlinedAt: !3949)
!3958 = !DILocation(line: 210, column: 7, scope: !632, inlinedAt: !3949)
!3959 = !DILocation(line: 51, column: 17, scope: !3849, inlinedAt: !3960)
!3960 = distinct !DILocation(line: 211, column: 10, scope: !632, inlinedAt: !3949)
!3961 = !DILocation(line: 51, column: 27, scope: !3849, inlinedAt: !3960)
!3962 = !DILocation(line: 53, column: 10, scope: !3858, inlinedAt: !3960)
!3963 = !DILocation(line: 205, column: 11, scope: !3904, inlinedAt: !3949)
!3964 = !DILocation(line: 204, column: 11, scope: !3905, inlinedAt: !3949)
!3965 = !DILocation(line: 206, column: 9, scope: !3904, inlinedAt: !3949)
!3966 = !DILocation(line: 207, column: 14, scope: !3905, inlinedAt: !3949)
!3967 = !DILocation(line: 207, column: 18, scope: !3905, inlinedAt: !3949)
!3968 = !DILocation(line: 207, column: 9, scope: !3905, inlinedAt: !3949)
!3969 = !DILocation(line: 53, column: 8, scope: !3858, inlinedAt: !3960)
!3970 = !DILocation(line: 57, column: 7, scope: !3863, inlinedAt: !3960)
!3971 = !DILocation(line: 58, column: 7, scope: !3863, inlinedAt: !3960)
!3972 = !DILocation(line: 61, column: 7, scope: !3849, inlinedAt: !3960)
!3973 = !DILocation(line: 62, column: 8, scope: !3867, inlinedAt: !3960)
!3974 = !DILocation(line: 62, column: 13, scope: !3869, inlinedAt: !3960)
!3975 = !DILocation(line: 62, column: 10, scope: !3867, inlinedAt: !3960)
!3976 = !DILocation(line: 63, column: 5, scope: !3867, inlinedAt: !3960)
!3977 = !DILocation(line: 76, column: 3, scope: !3940)
!3978 = distinct !DISubprogram(name: "xzalloc", scope: !3809, file: !3809, line: 84, type: !3810, isLocal: false, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: true, unit: !627, variables: !3979)
!3979 = !{!3980}
!3980 = !DILocalVariable(name: "s", arg: 1, scope: !3978, file: !3809, line: 84, type: !23)
!3981 = !DILocation(line: 84, column: 17, scope: !3978)
!3982 = !DILocation(line: 39, column: 17, scope: !3808, inlinedAt: !3983)
!3983 = distinct !DILocation(line: 86, column: 18, scope: !3978)
!3984 = !DILocation(line: 41, column: 13, scope: !3808, inlinedAt: !3983)
!3985 = !DILocation(line: 41, column: 9, scope: !3808, inlinedAt: !3983)
!3986 = !DILocation(line: 42, column: 8, scope: !3819, inlinedAt: !3983)
!3987 = !DILocation(line: 42, column: 15, scope: !3821, inlinedAt: !3983)
!3988 = !DILocation(line: 42, column: 10, scope: !3819, inlinedAt: !3983)
!3989 = !DILocation(line: 43, column: 5, scope: !3819, inlinedAt: !3983)
!3990 = !DILocation(line: 86, column: 10, scope: !3978)
!3991 = !DILocation(line: 86, column: 3, scope: !3978)
!3992 = distinct !DISubprogram(name: "xcalloc", scope: !3809, file: !3809, line: 93, type: !3795, isLocal: false, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: true, unit: !627, variables: !3993)
!3993 = !{!3994, !3995, !3996}
!3994 = !DILocalVariable(name: "n", arg: 1, scope: !3992, file: !3809, line: 93, type: !23)
!3995 = !DILocalVariable(name: "s", arg: 2, scope: !3992, file: !3809, line: 93, type: !23)
!3996 = !DILocalVariable(name: "p", scope: !3992, file: !3809, line: 95, type: !15)
!3997 = !DILocation(line: 93, column: 17, scope: !3992)
!3998 = !DILocation(line: 93, column: 27, scope: !3992)
!3999 = !DILocation(line: 100, column: 7, scope: !4000)
!4000 = distinct !DILexicalBlock(scope: !3992, file: !3809, line: 100, column: 7)
!4001 = !DILocation(line: 101, column: 7, scope: !4000)
!4002 = !DILocation(line: 101, column: 18, scope: !4003)
!4003 = !DILexicalBlockFile(scope: !4000, file: !3809, discriminator: 1)
!4004 = !DILocation(line: 95, column: 9, scope: !3992)
!4005 = !DILocation(line: 101, column: 16, scope: !4003)
!4006 = !DILocation(line: 100, column: 7, scope: !4007)
!4007 = !DILexicalBlockFile(scope: !3992, file: !3809, discriminator: 1)
!4008 = !DILocation(line: 102, column: 5, scope: !4000)
!4009 = !DILocation(line: 103, column: 3, scope: !3992)
!4010 = distinct !DISubprogram(name: "xmemdup", scope: !3809, file: !3809, line: 111, type: !4011, isLocal: false, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: true, unit: !627, variables: !4013)
!4011 = !DISubroutineType(types: !4012)
!4012 = !{!15, !26, !23}
!4013 = !{!4014, !4015}
!4014 = !DILocalVariable(name: "p", arg: 1, scope: !4010, file: !3809, line: 111, type: !26)
!4015 = !DILocalVariable(name: "s", arg: 2, scope: !4010, file: !3809, line: 111, type: !23)
!4016 = !DILocation(line: 111, column: 22, scope: !4010)
!4017 = !DILocation(line: 111, column: 32, scope: !4010)
!4018 = !DILocation(line: 39, column: 17, scope: !3808, inlinedAt: !4019)
!4019 = distinct !DILocation(line: 113, column: 18, scope: !4010)
!4020 = !DILocation(line: 41, column: 13, scope: !3808, inlinedAt: !4019)
!4021 = !DILocation(line: 41, column: 9, scope: !3808, inlinedAt: !4019)
!4022 = !DILocation(line: 42, column: 8, scope: !3819, inlinedAt: !4019)
!4023 = !DILocation(line: 42, column: 15, scope: !3821, inlinedAt: !4019)
!4024 = !DILocation(line: 42, column: 10, scope: !3819, inlinedAt: !4019)
!4025 = !DILocation(line: 43, column: 5, scope: !3819, inlinedAt: !4019)
!4026 = !DILocation(line: 113, column: 10, scope: !4010)
!4027 = !DILocation(line: 113, column: 3, scope: !4010)
!4028 = distinct !DISubprogram(name: "xstrdup", scope: !3809, file: !3809, line: 119, type: !3052, isLocal: false, isDefinition: true, scopeLine: 120, flags: DIFlagPrototyped, isOptimized: true, unit: !627, variables: !4029)
!4029 = !{!4030}
!4030 = !DILocalVariable(name: "string", arg: 1, scope: !4028, file: !3809, line: 119, type: !31)
!4031 = !DILocation(line: 119, column: 22, scope: !4028)
!4032 = !DILocation(line: 121, column: 27, scope: !4028)
!4033 = !DILocation(line: 121, column: 43, scope: !4028)
!4034 = !DILocation(line: 111, column: 22, scope: !4010, inlinedAt: !4035)
!4035 = distinct !DILocation(line: 121, column: 10, scope: !4036)
!4036 = !DILexicalBlockFile(scope: !4028, file: !3809, discriminator: 1)
!4037 = !DILocation(line: 111, column: 32, scope: !4010, inlinedAt: !4035)
!4038 = !DILocation(line: 39, column: 17, scope: !3808, inlinedAt: !4039)
!4039 = distinct !DILocation(line: 113, column: 18, scope: !4010, inlinedAt: !4035)
!4040 = !DILocation(line: 41, column: 13, scope: !3808, inlinedAt: !4039)
!4041 = !DILocation(line: 41, column: 9, scope: !3808, inlinedAt: !4039)
!4042 = !DILocation(line: 42, column: 8, scope: !3819, inlinedAt: !4039)
!4043 = !DILocation(line: 42, column: 15, scope: !3821, inlinedAt: !4039)
!4044 = !DILocation(line: 42, column: 10, scope: !3819, inlinedAt: !4039)
!4045 = !DILocation(line: 43, column: 5, scope: !3819, inlinedAt: !4039)
!4046 = !DILocation(line: 113, column: 10, scope: !4010, inlinedAt: !4035)
!4047 = !DILocation(line: 121, column: 3, scope: !4028)
!4048 = distinct !DISubprogram(name: "xalloc_die", scope: !4049, file: !4049, line: 32, type: !696, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !644, variables: !95)
!4049 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4050 = !DILocation(line: 34, column: 10, scope: !4048)
!4051 = !DILocation(line: 34, column: 33, scope: !4048)
!4052 = !DILocation(line: 34, column: 3, scope: !4053)
!4053 = !DILexicalBlockFile(scope: !4048, file: !4049, discriminator: 1)
!4054 = !DILocation(line: 40, column: 3, scope: !4048)
!4055 = distinct !DISubprogram(name: "xstrtod", scope: !4056, file: !4056, line: 44, type: !4057, isLocal: false, isDefinition: true, scopeLine: 46, flags: DIFlagPrototyped, isOptimized: true, unit: !646, variables: !4061)
!4056 = !DIFile(filename: "lib/xstrtod.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4057 = !DISubroutineType(types: !4058)
!4058 = !{!47, !31, !4059, !1124, !4060}
!4059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!4060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1438, size: 64)
!4061 = !{!4062, !4063, !4064, !4065, !4066, !4067, !4068}
!4062 = !DILocalVariable(name: "str", arg: 1, scope: !4055, file: !4056, line: 44, type: !31)
!4063 = !DILocalVariable(name: "ptr", arg: 2, scope: !4055, file: !4056, line: 44, type: !4059)
!4064 = !DILocalVariable(name: "result", arg: 3, scope: !4055, file: !4056, line: 44, type: !1124)
!4065 = !DILocalVariable(name: "convert", arg: 4, scope: !4055, file: !4056, line: 45, type: !4060)
!4066 = !DILocalVariable(name: "val", scope: !4055, file: !4056, line: 47, type: !44)
!4067 = !DILocalVariable(name: "terminator", scope: !4055, file: !4056, line: 48, type: !13)
!4068 = !DILocalVariable(name: "ok", scope: !4055, file: !4056, line: 49, type: !47)
!4069 = !DILocation(line: 44, column: 22, scope: !4055)
!4070 = !DILocation(line: 44, column: 40, scope: !4055)
!4071 = !DILocation(line: 44, column: 53, scope: !4055)
!4072 = !DILocation(line: 45, column: 19, scope: !4055)
!4073 = !DILocation(line: 48, column: 3, scope: !4055)
!4074 = !DILocation(line: 49, column: 8, scope: !4055)
!4075 = !DILocation(line: 51, column: 3, scope: !4055)
!4076 = !DILocation(line: 51, column: 9, scope: !4055)
!4077 = !DILocation(line: 48, column: 9, scope: !4055)
!4078 = !DILocation(line: 52, column: 9, scope: !4055)
!4079 = !DILocation(line: 47, column: 10, scope: !4055)
!4080 = !DILocation(line: 55, column: 7, scope: !4081)
!4081 = distinct !DILexicalBlock(scope: !4055, file: !4056, line: 55, column: 7)
!4082 = !DILocation(line: 55, column: 18, scope: !4081)
!4083 = !DILocation(line: 55, column: 25, scope: !4081)
!4084 = !DILocation(line: 55, column: 33, scope: !4085)
!4085 = !DILexicalBlockFile(scope: !4081, file: !4056, discriminator: 1)
!4086 = !DILocation(line: 55, column: 41, scope: !4085)
!4087 = !DILocation(line: 55, column: 44, scope: !4088)
!4088 = !DILexicalBlockFile(scope: !4081, file: !4056, discriminator: 2)
!4089 = !DILocation(line: 55, column: 56, scope: !4088)
!4090 = !DILocation(line: 55, column: 7, scope: !4091)
!4091 = !DILexicalBlockFile(scope: !4055, file: !4056, discriminator: 2)
!4092 = !DILocation(line: 62, column: 15, scope: !4093)
!4093 = distinct !DILexicalBlock(scope: !4094, file: !4056, line: 62, column: 11)
!4094 = distinct !DILexicalBlock(scope: !4081, file: !4056, line: 58, column: 5)
!4095 = !DILocation(line: 62, column: 20, scope: !4093)
!4096 = !DILocation(line: 62, column: 23, scope: !4097)
!4097 = !DILexicalBlockFile(scope: !4093, file: !4056, discriminator: 1)
!4098 = !DILocation(line: 62, column: 11, scope: !4099)
!4099 = !DILexicalBlockFile(scope: !4094, file: !4056, discriminator: 1)
!4100 = !DILocation(line: 66, column: 11, scope: !4101)
!4101 = distinct !DILexicalBlock(scope: !4055, file: !4056, line: 66, column: 7)
!4102 = !DILocation(line: 66, column: 7, scope: !4055)
!4103 = !DILocation(line: 67, column: 10, scope: !4101)
!4104 = !DILocation(line: 67, column: 5, scope: !4101)
!4105 = !DILocation(line: 69, column: 11, scope: !4055)
!4106 = !DILocation(line: 71, column: 1, scope: !4055)
!4107 = !DILocation(line: 70, column: 3, scope: !4055)
!4108 = distinct !DISubprogram(name: "rpl_calloc", scope: !4109, file: !4109, line: 42, type: !3795, isLocal: false, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: true, unit: !648, variables: !4110)
!4109 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4110 = !{!4111, !4112, !4113, !4114}
!4111 = !DILocalVariable(name: "n", arg: 1, scope: !4108, file: !4109, line: 42, type: !23)
!4112 = !DILocalVariable(name: "s", arg: 2, scope: !4108, file: !4109, line: 42, type: !23)
!4113 = !DILocalVariable(name: "result", scope: !4108, file: !4109, line: 44, type: !15)
!4114 = !DILocalVariable(name: "bytes", scope: !4115, file: !4109, line: 56, type: !23)
!4115 = distinct !DILexicalBlock(scope: !4116, file: !4109, line: 53, column: 5)
!4116 = distinct !DILexicalBlock(scope: !4108, file: !4109, line: 47, column: 7)
!4117 = !DILocation(line: 42, column: 20, scope: !4108)
!4118 = !DILocation(line: 42, column: 30, scope: !4108)
!4119 = !DILocation(line: 47, column: 9, scope: !4116)
!4120 = !DILocation(line: 47, column: 19, scope: !4121)
!4121 = !DILexicalBlockFile(scope: !4116, file: !4109, discriminator: 1)
!4122 = !DILocation(line: 47, column: 14, scope: !4116)
!4123 = !DILocation(line: 56, column: 24, scope: !4115)
!4124 = !DILocation(line: 56, column: 14, scope: !4115)
!4125 = !DILocation(line: 57, column: 17, scope: !4126)
!4126 = distinct !DILexicalBlock(scope: !4115, file: !4109, line: 57, column: 11)
!4127 = !DILocation(line: 57, column: 21, scope: !4126)
!4128 = !DILocation(line: 57, column: 11, scope: !4115)
!4129 = !DILocation(line: 59, column: 11, scope: !4130)
!4130 = distinct !DILexicalBlock(scope: !4126, file: !4109, line: 58, column: 9)
!4131 = !DILocation(line: 59, column: 17, scope: !4130)
!4132 = !DILocation(line: 65, column: 12, scope: !4108)
!4133 = !DILocation(line: 44, column: 9, scope: !4108)
!4134 = !DILocation(line: 72, column: 3, scope: !4108)
!4135 = !DILocation(line: 73, column: 1, scope: !4108)
!4136 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !4137, file: !4137, line: 334, type: !4138, isLocal: false, isDefinition: true, scopeLine: 335, flags: DIFlagPrototyped, isOptimized: true, unit: !650, variables: !4152)
!4137 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4138 = !DISubroutineType(types: !4139)
!4139 = !{!23, !4140, !31, !23, !4141}
!4140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1831, size: 64)
!4141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4142, size: 64)
!4142 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1816, line: 107, baseType: !4143)
!4143 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1816, line: 95, baseType: !4144)
!4144 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1816, line: 83, size: 64, elements: !4145)
!4145 = !{!4146, !4147}
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !4144, file: !1816, line: 85, baseType: !21, size: 32)
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !4144, file: !1816, line: 94, baseType: !4148, size: 32, offset: 32)
!4148 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4144, file: !1816, line: 86, size: 32, elements: !4149)
!4149 = !{!4150, !4151}
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !4148, file: !1816, line: 89, baseType: !205, size: 32)
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !4148, file: !1816, line: 93, baseType: !1826, size: 32)
!4152 = !{!4153, !4154, !4155, !4156, !4157, !4158, !4159}
!4153 = !DILocalVariable(name: "pwc", arg: 1, scope: !4136, file: !4137, line: 334, type: !4140)
!4154 = !DILocalVariable(name: "s", arg: 2, scope: !4136, file: !4137, line: 334, type: !31)
!4155 = !DILocalVariable(name: "n", arg: 3, scope: !4136, file: !4137, line: 334, type: !23)
!4156 = !DILocalVariable(name: "ps", arg: 4, scope: !4136, file: !4137, line: 334, type: !4141)
!4157 = !DILocalVariable(name: "ret", scope: !4136, file: !4137, line: 336, type: !23)
!4158 = !DILocalVariable(name: "wc", scope: !4136, file: !4137, line: 337, type: !1831)
!4159 = !DILocalVariable(name: "uc", scope: !4160, file: !4137, line: 398, type: !30)
!4160 = distinct !DILexicalBlock(scope: !4161, file: !4137, line: 397, column: 5)
!4161 = distinct !DILexicalBlock(scope: !4136, file: !4137, line: 396, column: 7)
!4162 = !DILocation(line: 334, column: 23, scope: !4136)
!4163 = !DILocation(line: 334, column: 40, scope: !4136)
!4164 = !DILocation(line: 334, column: 50, scope: !4136)
!4165 = !DILocation(line: 334, column: 64, scope: !4136)
!4166 = !DILocation(line: 337, column: 3, scope: !4136)
!4167 = !DILocation(line: 353, column: 9, scope: !4168)
!4168 = distinct !DILexicalBlock(scope: !4136, file: !4137, line: 353, column: 7)
!4169 = !DILocation(line: 353, column: 7, scope: !4136)
!4170 = !DILocation(line: 388, column: 9, scope: !4136)
!4171 = !DILocation(line: 336, column: 10, scope: !4136)
!4172 = !DILocation(line: 396, column: 19, scope: !4161)
!4173 = !DILocation(line: 396, column: 31, scope: !4174)
!4174 = !DILexicalBlockFile(scope: !4161, file: !4137, discriminator: 1)
!4175 = !DILocation(line: 396, column: 26, scope: !4161)
!4176 = !DILocation(line: 396, column: 41, scope: !4177)
!4177 = !DILexicalBlockFile(scope: !4161, file: !4137, discriminator: 2)
!4178 = !DILocation(line: 396, column: 7, scope: !4179)
!4179 = !DILexicalBlockFile(scope: !4136, file: !4137, discriminator: 2)
!4180 = !DILocation(line: 398, column: 26, scope: !4160)
!4181 = !DILocation(line: 398, column: 21, scope: !4160)
!4182 = !DILocation(line: 399, column: 14, scope: !4160)
!4183 = !DILocation(line: 399, column: 12, scope: !4160)
!4184 = !DILocation(line: 405, column: 1, scope: !4136)
!4185 = distinct !DISubprogram(name: "str2sig", scope: !247, file: !247, line: 304, type: !4186, isLocal: false, isDefinition: true, scopeLine: 305, flags: DIFlagPrototyped, isOptimized: true, unit: !243, variables: !4188)
!4186 = !DISubroutineType(types: !4187)
!4187 = !{!21, !31, !89}
!4188 = !{!4189, !4190}
!4189 = !DILocalVariable(name: "signame", arg: 1, scope: !4185, file: !247, line: 304, type: !31)
!4190 = !DILocalVariable(name: "signum", arg: 2, scope: !4185, file: !247, line: 304, type: !89)
!4191 = !DILocation(line: 304, column: 22, scope: !4185)
!4192 = !DILocation(line: 304, column: 36, scope: !4185)
!4193 = !DILocalVariable(name: "signame", arg: 1, scope: !4194, file: !247, line: 261, type: !31)
!4194 = distinct !DISubprogram(name: "str2signum", scope: !247, file: !247, line: 261, type: !4195, isLocal: true, isDefinition: true, scopeLine: 262, flags: DIFlagPrototyped, isOptimized: true, unit: !243, variables: !4197)
!4195 = !DISubroutineType(types: !4196)
!4196 = !{!21, !31}
!4197 = !{!4193, !4198, !4201, !4202, !4204, !4209, !4210, !4212, !4213, !4214, !4217}
!4198 = !DILocalVariable(name: "endp", scope: !4199, file: !247, line: 265, type: !13)
!4199 = distinct !DILexicalBlock(scope: !4200, file: !247, line: 264, column: 5)
!4200 = distinct !DILexicalBlock(scope: !4194, file: !247, line: 263, column: 7)
!4201 = !DILocalVariable(name: "n", scope: !4199, file: !247, line: 266, type: !618)
!4202 = !DILocalVariable(name: "i", scope: !4203, file: !247, line: 272, type: !205)
!4203 = distinct !DILexicalBlock(scope: !4200, file: !247, line: 271, column: 5)
!4204 = !DILocalVariable(name: "__s1_len", scope: !4205, file: !247, line: 274, type: !23)
!4205 = distinct !DILexicalBlock(scope: !4206, file: !247, line: 274, column: 13)
!4206 = distinct !DILexicalBlock(scope: !4207, file: !247, line: 274, column: 13)
!4207 = distinct !DILexicalBlock(scope: !4208, file: !247, line: 273, column: 7)
!4208 = distinct !DILexicalBlock(scope: !4203, file: !247, line: 273, column: 7)
!4209 = !DILocalVariable(name: "__s2_len", scope: !4205, file: !247, line: 274, type: !23)
!4210 = !DILocalVariable(name: "endp", scope: !4211, file: !247, line: 278, type: !13)
!4211 = distinct !DILexicalBlock(scope: !4203, file: !247, line: 277, column: 7)
!4212 = !DILocalVariable(name: "rtmin", scope: !4211, file: !247, line: 279, type: !21)
!4213 = !DILocalVariable(name: "rtmax", scope: !4211, file: !247, line: 280, type: !21)
!4214 = !DILocalVariable(name: "n", scope: !4215, file: !247, line: 284, type: !618)
!4215 = distinct !DILexicalBlock(scope: !4216, file: !247, line: 283, column: 11)
!4216 = distinct !DILexicalBlock(scope: !4211, file: !247, line: 282, column: 13)
!4217 = !DILocalVariable(name: "n", scope: !4218, file: !247, line: 290, type: !618)
!4218 = distinct !DILexicalBlock(scope: !4219, file: !247, line: 289, column: 11)
!4219 = distinct !DILexicalBlock(scope: !4216, file: !247, line: 288, column: 18)
!4220 = !DILocation(line: 261, column: 25, scope: !4194, inlinedAt: !4221)
!4221 = distinct !DILocation(line: 306, column: 13, scope: !4185)
!4222 = !DILocation(line: 263, column: 7, scope: !4200, inlinedAt: !4221)
!4223 = !DILocation(line: 263, column: 7, scope: !4194, inlinedAt: !4221)
!4224 = !DILocation(line: 274, column: 13, scope: !4205, inlinedAt: !4221)
!4225 = !DILocation(line: 265, column: 7, scope: !4199, inlinedAt: !4221)
!4226 = !DILocation(line: 265, column: 13, scope: !4199, inlinedAt: !4221)
!4227 = !DILocation(line: 266, column: 20, scope: !4199, inlinedAt: !4221)
!4228 = !DILocation(line: 266, column: 16, scope: !4199, inlinedAt: !4221)
!4229 = !DILocation(line: 267, column: 14, scope: !4230, inlinedAt: !4221)
!4230 = distinct !DILexicalBlock(scope: !4199, file: !247, line: 267, column: 11)
!4231 = !DILocation(line: 267, column: 13, scope: !4230, inlinedAt: !4221)
!4232 = !DILocation(line: 268, column: 16, scope: !4230, inlinedAt: !4221)
!4233 = !DILocation(line: 267, column: 19, scope: !4230, inlinedAt: !4221)
!4234 = !DILocation(line: 269, column: 5, scope: !4200, inlinedAt: !4221)
!4235 = !DILocation(line: 273, column: 21, scope: !4236, inlinedAt: !4221)
!4236 = !DILexicalBlockFile(scope: !4207, file: !247, discriminator: 1)
!4237 = !DILocation(line: 273, column: 7, scope: !4238, inlinedAt: !4221)
!4238 = !DILexicalBlockFile(scope: !4208, file: !247, discriminator: 1)
!4239 = distinct !{!4239, !4240, !4241}
!4240 = !DILocation(line: 273, column: 7, scope: !4208)
!4241 = !DILocation(line: 275, column: 35, scope: !4208)
!4242 = !DILocation(line: 274, column: 53, scope: !4206, inlinedAt: !4221)
!4243 = !DILocation(line: 273, column: 41, scope: !4244, inlinedAt: !4221)
!4244 = !DILexicalBlockFile(scope: !4207, file: !247, discriminator: 2)
!4245 = !DILocation(line: 274, column: 13, scope: !4207, inlinedAt: !4221)
!4246 = !DILocation(line: 275, column: 35, scope: !4206, inlinedAt: !4221)
!4247 = !{!4248, !788, i64 0}
!4248 = !{!"numname", !788, i64 0, !682, i64 4}
!4249 = !DILocation(line: 278, column: 9, scope: !4211, inlinedAt: !4221)
!4250 = !DILocation(line: 279, column: 21, scope: !4211, inlinedAt: !4221)
!4251 = !DILocation(line: 279, column: 13, scope: !4211, inlinedAt: !4221)
!4252 = !DILocation(line: 280, column: 21, scope: !4211, inlinedAt: !4221)
!4253 = !DILocation(line: 280, column: 13, scope: !4211, inlinedAt: !4221)
!4254 = !DILocation(line: 282, column: 15, scope: !4216, inlinedAt: !4221)
!4255 = !DILocation(line: 282, column: 23, scope: !4216, inlinedAt: !4221)
!4256 = !DILocation(line: 282, column: 26, scope: !4257, inlinedAt: !4221)
!4257 = !DILexicalBlockFile(scope: !4216, file: !247, discriminator: 1)
!4258 = !DILocation(line: 282, column: 56, scope: !4257, inlinedAt: !4221)
!4259 = !DILocation(line: 282, column: 13, scope: !4260, inlinedAt: !4221)
!4260 = !DILexicalBlockFile(scope: !4211, file: !247, discriminator: 1)
!4261 = !DILocation(line: 284, column: 42, scope: !4215, inlinedAt: !4221)
!4262 = !DILocation(line: 278, column: 15, scope: !4211, inlinedAt: !4221)
!4263 = !DILocation(line: 284, column: 26, scope: !4215, inlinedAt: !4221)
!4264 = !DILocation(line: 284, column: 22, scope: !4215, inlinedAt: !4221)
!4265 = !DILocation(line: 285, column: 20, scope: !4266, inlinedAt: !4221)
!4266 = distinct !DILexicalBlock(scope: !4215, file: !247, line: 285, column: 17)
!4267 = !DILocation(line: 285, column: 19, scope: !4266, inlinedAt: !4221)
!4268 = !DILocation(line: 285, column: 30, scope: !4269, inlinedAt: !4221)
!4269 = !DILexicalBlockFile(scope: !4266, file: !247, discriminator: 1)
!4270 = !DILocation(line: 285, column: 25, scope: !4266, inlinedAt: !4221)
!4271 = !DILocation(line: 285, column: 49, scope: !4272, inlinedAt: !4221)
!4272 = !DILexicalBlockFile(scope: !4266, file: !247, discriminator: 2)
!4273 = !DILocation(line: 285, column: 43, scope: !4272, inlinedAt: !4221)
!4274 = !DILocation(line: 285, column: 40, scope: !4272, inlinedAt: !4221)
!4275 = !DILocation(line: 285, column: 17, scope: !4276, inlinedAt: !4221)
!4276 = !DILexicalBlockFile(scope: !4215, file: !247, discriminator: 2)
!4277 = !DILocation(line: 288, column: 20, scope: !4219, inlinedAt: !4221)
!4278 = !DILocation(line: 288, column: 28, scope: !4219, inlinedAt: !4221)
!4279 = !DILocation(line: 288, column: 31, scope: !4280, inlinedAt: !4221)
!4280 = !DILexicalBlockFile(scope: !4219, file: !247, discriminator: 1)
!4281 = !DILocation(line: 288, column: 61, scope: !4280, inlinedAt: !4221)
!4282 = !DILocation(line: 288, column: 18, scope: !4257, inlinedAt: !4221)
!4283 = !DILocation(line: 290, column: 42, scope: !4218, inlinedAt: !4221)
!4284 = !DILocation(line: 290, column: 26, scope: !4218, inlinedAt: !4221)
!4285 = !DILocation(line: 290, column: 22, scope: !4218, inlinedAt: !4221)
!4286 = !DILocation(line: 291, column: 20, scope: !4287, inlinedAt: !4221)
!4287 = distinct !DILexicalBlock(scope: !4218, file: !247, line: 291, column: 17)
!4288 = !DILocation(line: 291, column: 19, scope: !4287, inlinedAt: !4221)
!4289 = !DILocation(line: 291, column: 25, scope: !4287, inlinedAt: !4221)
!4290 = !DILocation(line: 291, column: 34, scope: !4291, inlinedAt: !4221)
!4291 = !DILexicalBlockFile(scope: !4287, file: !247, discriminator: 1)
!4292 = !DILocation(line: 291, column: 28, scope: !4291, inlinedAt: !4221)
!4293 = !DILocation(line: 291, column: 42, scope: !4291, inlinedAt: !4221)
!4294 = !DILocation(line: 291, column: 52, scope: !4295, inlinedAt: !4221)
!4295 = !DILexicalBlockFile(scope: !4287, file: !247, discriminator: 2)
!4296 = !DILocation(line: 291, column: 47, scope: !4291, inlinedAt: !4221)
!4297 = !DILocation(line: 294, column: 7, scope: !4203, inlinedAt: !4221)
!4298 = !DILocation(line: 297, column: 3, scope: !4194, inlinedAt: !4221)
!4299 = !DILocation(line: 306, column: 11, scope: !4185)
!4300 = !DILocation(line: 307, column: 10, scope: !4185)
!4301 = !DILocation(line: 307, column: 3, scope: !4185)
!4302 = distinct !DISubprogram(name: "sig2str", scope: !247, file: !247, line: 315, type: !4303, isLocal: false, isDefinition: true, scopeLine: 316, flags: DIFlagPrototyped, isOptimized: true, unit: !243, variables: !4305)
!4303 = !DISubroutineType(types: !4304)
!4304 = !{!21, !21, !13}
!4305 = !{!4306, !4307, !4308, !4309, !4311, !4312, !4313}
!4306 = !DILocalVariable(name: "signum", arg: 1, scope: !4302, file: !247, line: 315, type: !21)
!4307 = !DILocalVariable(name: "signame", arg: 2, scope: !4302, file: !247, line: 315, type: !13)
!4308 = !DILocalVariable(name: "i", scope: !4302, file: !247, line: 317, type: !205)
!4309 = !DILocalVariable(name: "rtmin", scope: !4310, file: !247, line: 326, type: !21)
!4310 = distinct !DILexicalBlock(scope: !4302, file: !247, line: 325, column: 3)
!4311 = !DILocalVariable(name: "rtmax", scope: !4310, file: !247, line: 327, type: !21)
!4312 = !DILocalVariable(name: "base", scope: !4310, file: !247, line: 328, type: !21)
!4313 = !DILocalVariable(name: "delta", scope: !4310, file: !247, line: 328, type: !21)
!4314 = !DILocation(line: 315, column: 14, scope: !4302)
!4315 = !DILocation(line: 315, column: 28, scope: !4302)
!4316 = !DILocation(line: 317, column: 16, scope: !4302)
!4317 = !DILocation(line: 318, column: 3, scope: !4318)
!4318 = !DILexicalBlockFile(scope: !4319, file: !247, discriminator: 1)
!4319 = distinct !DILexicalBlock(scope: !4302, file: !247, line: 318, column: 3)
!4320 = !DILocation(line: 318, column: 37, scope: !4321)
!4321 = !DILexicalBlockFile(scope: !4322, file: !247, discriminator: 2)
!4322 = distinct !DILexicalBlock(scope: !4319, file: !247, line: 318, column: 3)
!4323 = !DILocation(line: 318, column: 15, scope: !4324)
!4324 = !DILexicalBlockFile(scope: !4322, file: !247, discriminator: 1)
!4325 = !DILocation(line: 319, column: 26, scope: !4326)
!4326 = distinct !DILexicalBlock(scope: !4322, file: !247, line: 319, column: 9)
!4327 = !DILocation(line: 319, column: 30, scope: !4326)
!4328 = !DILocation(line: 319, column: 9, scope: !4322)
!4329 = !DILocation(line: 321, column: 26, scope: !4330)
!4330 = distinct !DILexicalBlock(scope: !4326, file: !247, line: 320, column: 7)
!4331 = !DILocalVariable(name: "__dest", arg: 1, scope: !4332, file: !4333, line: 107, type: !4336)
!4332 = distinct !DISubprogram(name: "strcpy", scope: !4333, file: !4333, line: 107, type: !4334, isLocal: false, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: true, unit: !243, variables: !4338)
!4333 = !DIFile(filename: "/usr/include/bits/string3.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4334 = !DISubroutineType(types: !4335)
!4335 = !{!13, !4336, !4337}
!4336 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !13)
!4337 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !31)
!4338 = !{!4331, !4339}
!4339 = !DILocalVariable(name: "__src", arg: 2, scope: !4332, file: !4333, line: 107, type: !4337)
!4340 = !DILocation(line: 107, column: 1, scope: !4332, inlinedAt: !4341)
!4341 = distinct !DILocation(line: 321, column: 9, scope: !4330)
!4342 = !DILocation(line: 109, column: 49, scope: !4332, inlinedAt: !4341)
!4343 = !DILocation(line: 109, column: 10, scope: !4332, inlinedAt: !4341)
!4344 = !DILocation(line: 322, column: 9, scope: !4330)
!4345 = !DILocation(line: 326, column: 17, scope: !4310)
!4346 = !DILocation(line: 326, column: 9, scope: !4310)
!4347 = !DILocation(line: 327, column: 17, scope: !4310)
!4348 = !DILocation(line: 327, column: 9, scope: !4310)
!4349 = !DILocation(line: 330, column: 18, scope: !4350)
!4350 = distinct !DILexicalBlock(scope: !4310, file: !247, line: 330, column: 9)
!4351 = !DILocation(line: 330, column: 38, scope: !4352)
!4352 = !DILexicalBlockFile(scope: !4350, file: !247, discriminator: 1)
!4353 = !DILocation(line: 330, column: 28, scope: !4350)
!4354 = !DILocation(line: 333, column: 34, scope: !4355)
!4355 = distinct !DILexicalBlock(scope: !4310, file: !247, line: 333, column: 9)
!4356 = !DILocation(line: 333, column: 43, scope: !4355)
!4357 = !DILocation(line: 333, column: 25, scope: !4355)
!4358 = !DILocation(line: 333, column: 16, scope: !4355)
!4359 = !DILocation(line: 333, column: 9, scope: !4310)
!4360 = !DILocation(line: 335, column: 9, scope: !4361)
!4361 = distinct !DILexicalBlock(scope: !4355, file: !247, line: 334, column: 7)
!4362 = !DILocation(line: 328, column: 9, scope: !4310)
!4363 = !DILocation(line: 337, column: 7, scope: !4361)
!4364 = !DILocation(line: 340, column: 9, scope: !4365)
!4365 = distinct !DILexicalBlock(scope: !4355, file: !247, line: 339, column: 7)
!4366 = !DILocation(line: 344, column: 20, scope: !4310)
!4367 = !DILocation(line: 328, column: 15, scope: !4310)
!4368 = !DILocation(line: 345, column: 15, scope: !4369)
!4369 = distinct !DILexicalBlock(scope: !4310, file: !247, line: 345, column: 9)
!4370 = !DILocation(line: 345, column: 9, scope: !4310)
!4371 = !DILocation(line: 346, column: 7, scope: !4369)
!4372 = !DILocation(line: 349, column: 1, scope: !4302)
!4373 = !DILocation(line: 318, column: 17, scope: !4324)
!4374 = distinct !{!4374, !4375, !4376}
!4375 = !DILocation(line: 318, column: 3, scope: !4319)
!4376 = !DILocation(line: 323, column: 7, scope: !4319)
!4377 = distinct !DISubprogram(name: "close_stream", scope: !4378, file: !4378, line: 56, type: !4379, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !653, variables: !4421)
!4378 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4379 = !DISubroutineType(types: !4380)
!4380 = !{!21, !4381}
!4381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4382, size: 64)
!4382 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3578, line: 49, baseType: !4383)
!4383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3580, line: 241, size: 1728, elements: !4384)
!4384 = !{!4385, !4386, !4387, !4388, !4389, !4390, !4391, !4392, !4393, !4394, !4395, !4396, !4397, !4405, !4406, !4407, !4408, !4409, !4410, !4411, !4412, !4413, !4414, !4415, !4416, !4417, !4418, !4419, !4420}
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4383, file: !3580, line: 242, baseType: !21, size: 32)
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4383, file: !3580, line: 247, baseType: !13, size: 64, offset: 64)
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4383, file: !3580, line: 248, baseType: !13, size: 64, offset: 128)
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4383, file: !3580, line: 249, baseType: !13, size: 64, offset: 192)
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4383, file: !3580, line: 250, baseType: !13, size: 64, offset: 256)
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4383, file: !3580, line: 251, baseType: !13, size: 64, offset: 320)
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4383, file: !3580, line: 252, baseType: !13, size: 64, offset: 384)
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4383, file: !3580, line: 253, baseType: !13, size: 64, offset: 448)
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4383, file: !3580, line: 254, baseType: !13, size: 64, offset: 512)
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4383, file: !3580, line: 256, baseType: !13, size: 64, offset: 576)
!4395 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4383, file: !3580, line: 257, baseType: !13, size: 64, offset: 640)
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4383, file: !3580, line: 258, baseType: !13, size: 64, offset: 704)
!4397 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4383, file: !3580, line: 260, baseType: !4398, size: 64, offset: 768)
!4398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4399, size: 64)
!4399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !3580, line: 156, size: 192, elements: !4400)
!4400 = !{!4401, !4402, !4404}
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4399, file: !3580, line: 157, baseType: !4398, size: 64)
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4399, file: !3580, line: 158, baseType: !4403, size: 64, offset: 64)
!4403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4383, size: 64)
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4399, file: !3580, line: 162, baseType: !21, size: 32, offset: 128)
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4383, file: !3580, line: 262, baseType: !4403, size: 64, offset: 832)
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4383, file: !3580, line: 264, baseType: !21, size: 32, offset: 896)
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4383, file: !3580, line: 268, baseType: !21, size: 32, offset: 928)
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4383, file: !3580, line: 270, baseType: !3606, size: 64, offset: 960)
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4383, file: !3580, line: 274, baseType: !117, size: 16, offset: 1024)
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4383, file: !3580, line: 275, baseType: !22, size: 8, offset: 1040)
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4383, file: !3580, line: 276, baseType: !3610, size: 8, offset: 1048)
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4383, file: !3580, line: 280, baseType: !3614, size: 64, offset: 1088)
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4383, file: !3580, line: 289, baseType: !3617, size: 64, offset: 1152)
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4383, file: !3580, line: 297, baseType: !15, size: 64, offset: 1216)
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4383, file: !3580, line: 298, baseType: !15, size: 64, offset: 1280)
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4383, file: !3580, line: 299, baseType: !15, size: 64, offset: 1344)
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4383, file: !3580, line: 300, baseType: !15, size: 64, offset: 1408)
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4383, file: !3580, line: 302, baseType: !23, size: 64, offset: 1472)
!4419 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4383, file: !3580, line: 303, baseType: !21, size: 32, offset: 1536)
!4420 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4383, file: !3580, line: 305, baseType: !3625, size: 160, offset: 1568)
!4421 = !{!4422, !4423, !4425, !4426}
!4422 = !DILocalVariable(name: "stream", arg: 1, scope: !4377, file: !4378, line: 56, type: !4381)
!4423 = !DILocalVariable(name: "some_pending", scope: !4377, file: !4378, line: 58, type: !4424)
!4424 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !47)
!4425 = !DILocalVariable(name: "prev_fail", scope: !4377, file: !4378, line: 59, type: !4424)
!4426 = !DILocalVariable(name: "fclose_fail", scope: !4377, file: !4378, line: 60, type: !4424)
!4427 = !DILocation(line: 56, column: 21, scope: !4377)
!4428 = !DILocation(line: 58, column: 30, scope: !4377)
!4429 = !DILocalVariable(name: "__stream", arg: 1, scope: !4430, file: !4431, line: 132, type: !4381)
!4430 = distinct !DISubprogram(name: "ferror_unlocked", scope: !4431, file: !4431, line: 132, type: !4379, isLocal: false, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !653, variables: !4432)
!4431 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4432 = !{!4429}
!4433 = !DILocation(line: 132, column: 1, scope: !4430, inlinedAt: !4434)
!4434 = distinct !DILocation(line: 59, column: 27, scope: !4377)
!4435 = !DILocation(line: 134, column: 10, scope: !4430, inlinedAt: !4434)
!4436 = !{!4437, !788, i64 0}
!4437 = !{!"_IO_FILE", !788, i64 0, !681, i64 8, !681, i64 16, !681, i64 24, !681, i64 32, !681, i64 40, !681, i64 48, !681, i64 56, !681, i64 64, !681, i64 72, !681, i64 80, !681, i64 88, !681, i64 96, !681, i64 104, !788, i64 112, !788, i64 116, !2890, i64 120, !2183, i64 128, !682, i64 130, !682, i64 131, !681, i64 136, !2890, i64 144, !681, i64 152, !681, i64 160, !681, i64 168, !681, i64 176, !2890, i64 184, !788, i64 192, !682, i64 196}
!4438 = !DILocation(line: 59, column: 43, scope: !4377)
!4439 = !DILocation(line: 60, column: 29, scope: !4377)
!4440 = !DILocation(line: 60, column: 45, scope: !4377)
!4441 = !DILocation(line: 70, column: 17, scope: !4442)
!4442 = distinct !DILexicalBlock(scope: !4377, file: !4378, line: 70, column: 7)
!4443 = !DILocation(line: 70, column: 33, scope: !4444)
!4444 = !DILexicalBlockFile(scope: !4442, file: !4378, discriminator: 1)
!4445 = !DILocation(line: 70, column: 53, scope: !4446)
!4446 = !DILexicalBlockFile(scope: !4442, file: !4378, discriminator: 3)
!4447 = !DILocation(line: 70, column: 7, scope: !4448)
!4448 = !DILexicalBlockFile(scope: !4377, file: !4378, discriminator: 3)
!4449 = !DILocation(line: 72, column: 11, scope: !4450)
!4450 = distinct !DILexicalBlock(scope: !4442, file: !4378, line: 71, column: 5)
!4451 = !DILocation(line: 73, column: 9, scope: !4452)
!4452 = distinct !DILexicalBlock(scope: !4450, file: !4378, line: 72, column: 11)
!4453 = !DILocation(line: 73, column: 15, scope: !4452)
!4454 = !DILocation(line: 78, column: 1, scope: !4377)
!4455 = distinct !DISubprogram(name: "hard_locale", scope: !4456, file: !4456, line: 38, type: !4457, isLocal: false, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, unit: !655, variables: !4459)
!4456 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4457 = !DISubroutineType(types: !4458)
!4458 = !{!47, !21}
!4459 = !{!4460, !4461, !4462, !4463, !4470, !4471, !4473, !4474, !4476, !4477, !4479}
!4460 = !DILocalVariable(name: "category", arg: 1, scope: !4455, file: !4456, line: 38, type: !21)
!4461 = !DILocalVariable(name: "hard", scope: !4455, file: !4456, line: 40, type: !47)
!4462 = !DILocalVariable(name: "p", scope: !4455, file: !4456, line: 41, type: !31)
!4463 = !DILocalVariable(name: "__s1_len", scope: !4464, file: !4456, line: 47, type: !23)
!4464 = distinct !DILexicalBlock(scope: !4465, file: !4456, line: 47, column: 15)
!4465 = distinct !DILexicalBlock(scope: !4466, file: !4456, line: 47, column: 15)
!4466 = distinct !DILexicalBlock(scope: !4467, file: !4456, line: 46, column: 9)
!4467 = distinct !DILexicalBlock(scope: !4468, file: !4456, line: 45, column: 11)
!4468 = distinct !DILexicalBlock(scope: !4469, file: !4456, line: 44, column: 5)
!4469 = distinct !DILexicalBlock(scope: !4455, file: !4456, line: 43, column: 7)
!4470 = !DILocalVariable(name: "__s2_len", scope: !4464, file: !4456, line: 47, type: !23)
!4471 = !DILocalVariable(name: "__s2", scope: !4472, file: !4456, line: 47, type: !28)
!4472 = distinct !DILexicalBlock(scope: !4464, file: !4456, line: 47, column: 15)
!4473 = !DILocalVariable(name: "__result", scope: !4472, file: !4456, line: 47, type: !21)
!4474 = !DILocalVariable(name: "__s1_len", scope: !4475, file: !4456, line: 47, type: !23)
!4475 = distinct !DILexicalBlock(scope: !4465, file: !4456, line: 47, column: 39)
!4476 = !DILocalVariable(name: "__s2_len", scope: !4475, file: !4456, line: 47, type: !23)
!4477 = !DILocalVariable(name: "__s2", scope: !4478, file: !4456, line: 47, type: !28)
!4478 = distinct !DILexicalBlock(scope: !4475, file: !4456, line: 47, column: 39)
!4479 = !DILocalVariable(name: "__result", scope: !4478, file: !4456, line: 47, type: !21)
!4480 = !DILocation(line: 38, column: 18, scope: !4455)
!4481 = !DILocation(line: 40, column: 8, scope: !4455)
!4482 = !DILocation(line: 41, column: 19, scope: !4455)
!4483 = !DILocation(line: 41, column: 15, scope: !4455)
!4484 = !DILocation(line: 43, column: 7, scope: !4469)
!4485 = !DILocation(line: 43, column: 7, scope: !4455)
!4486 = !DILocation(line: 47, column: 15, scope: !4464)
!4487 = !DILocation(line: 47, column: 15, scope: !4472)
!4488 = !DILocation(line: 47, column: 15, scope: !4489)
!4489 = !DILexicalBlockFile(scope: !4472, file: !4456, discriminator: 2)
!4490 = !DILocation(line: 47, column: 15, scope: !4491)
!4491 = !DILexicalBlockFile(scope: !4492, file: !4456, discriminator: 3)
!4492 = distinct !DILexicalBlock(scope: !4472, file: !4456, line: 47, column: 15)
!4493 = !DILocation(line: 47, column: 15, scope: !4494)
!4494 = !DILexicalBlockFile(scope: !4492, file: !4456, discriminator: 2)
!4495 = !DILocation(line: 47, column: 15, scope: !4496)
!4496 = !DILexicalBlockFile(scope: !4497, file: !4456, discriminator: 4)
!4497 = distinct !DILexicalBlock(scope: !4492, file: !4456, line: 47, column: 15)
!4498 = !DILocation(line: 47, column: 15, scope: !4499)
!4499 = !DILexicalBlockFile(scope: !4464, file: !4456, discriminator: 11)
!4500 = !DILocation(line: 47, column: 36, scope: !4501)
!4501 = !DILexicalBlockFile(scope: !4465, file: !4456, discriminator: 13)
!4502 = !DILocation(line: 47, column: 39, scope: !4475)
!4503 = !DILocation(line: 47, column: 39, scope: !4504)
!4504 = !DILexicalBlockFile(scope: !4475, file: !4456, discriminator: 26)
!4505 = !DILocation(line: 47, column: 59, scope: !4506)
!4506 = !DILexicalBlockFile(scope: !4465, file: !4456, discriminator: 27)
!4507 = !DILocation(line: 47, column: 15, scope: !4508)
!4508 = !DILexicalBlockFile(scope: !4466, file: !4456, discriminator: 27)
!4509 = !DILocation(line: 48, column: 13, scope: !4465)
!4510 = !DILocation(line: 71, column: 3, scope: !4455)
!4511 = distinct !DISubprogram(name: "locale_charset", scope: !602, file: !602, line: 393, type: !4512, isLocal: false, isDefinition: true, scopeLine: 394, flags: DIFlagPrototyped, isOptimized: true, unit: !258, variables: !4514)
!4512 = !DISubroutineType(types: !4513)
!4513 = !{!31}
!4514 = !{!4515, !4516, !4517, !4522}
!4515 = !DILocalVariable(name: "codeset", scope: !4511, file: !602, line: 395, type: !31)
!4516 = !DILocalVariable(name: "aliases", scope: !4511, file: !602, line: 396, type: !31)
!4517 = !DILocalVariable(name: "__s1_len", scope: !4518, file: !602, line: 592, type: !23)
!4518 = distinct !DILexicalBlock(scope: !4519, file: !602, line: 592, column: 9)
!4519 = distinct !DILexicalBlock(scope: !4520, file: !602, line: 592, column: 9)
!4520 = distinct !DILexicalBlock(scope: !4521, file: !602, line: 589, column: 3)
!4521 = distinct !DILexicalBlock(scope: !4511, file: !602, line: 589, column: 3)
!4522 = !DILocalVariable(name: "__s2_len", scope: !4518, file: !602, line: 592, type: !23)
!4523 = !DILocalVariable(name: "buf1", scope: !4524, file: !602, line: 196, type: !4591)
!4524 = distinct !DILexicalBlock(scope: !4525, file: !602, line: 194, column: 21)
!4525 = distinct !DILexicalBlock(scope: !4526, file: !602, line: 193, column: 19)
!4526 = distinct !DILexicalBlock(scope: !4527, file: !602, line: 193, column: 19)
!4527 = distinct !DILexicalBlock(scope: !4528, file: !602, line: 188, column: 17)
!4528 = distinct !DILexicalBlock(scope: !4529, file: !602, line: 181, column: 19)
!4529 = distinct !DILexicalBlock(scope: !4530, file: !602, line: 177, column: 13)
!4530 = distinct !DILexicalBlock(scope: !4531, file: !602, line: 173, column: 15)
!4531 = distinct !DILexicalBlock(scope: !4532, file: !602, line: 161, column: 9)
!4532 = distinct !DILexicalBlock(scope: !4533, file: !602, line: 157, column: 11)
!4533 = distinct !DILexicalBlock(scope: !4534, file: !602, line: 130, column: 5)
!4534 = distinct !DILexicalBlock(scope: !4535, file: !602, line: 129, column: 7)
!4535 = distinct !DISubprogram(name: "get_charset_aliases", scope: !602, file: !602, line: 124, type: !4512, isLocal: true, isDefinition: true, scopeLine: 125, flags: DIFlagPrototyped, isOptimized: true, unit: !258, variables: !4536)
!4536 = !{!4537, !4538, !4539, !4540, !4541, !4543, !4544, !4545, !4546, !4587, !4588, !4589, !4523, !4590, !4594, !4595, !4596}
!4537 = !DILocalVariable(name: "cp", scope: !4535, file: !602, line: 126, type: !31)
!4538 = !DILocalVariable(name: "dir", scope: !4533, file: !602, line: 132, type: !31)
!4539 = !DILocalVariable(name: "base", scope: !4533, file: !602, line: 133, type: !31)
!4540 = !DILocalVariable(name: "file_name", scope: !4533, file: !602, line: 134, type: !13)
!4541 = !DILocalVariable(name: "dir_len", scope: !4542, file: !602, line: 144, type: !23)
!4542 = distinct !DILexicalBlock(scope: !4533, file: !602, line: 143, column: 7)
!4543 = !DILocalVariable(name: "base_len", scope: !4542, file: !602, line: 145, type: !23)
!4544 = !DILocalVariable(name: "add_slash", scope: !4542, file: !602, line: 146, type: !21)
!4545 = !DILocalVariable(name: "fd", scope: !4531, file: !602, line: 162, type: !21)
!4546 = !DILocalVariable(name: "fp", scope: !4529, file: !602, line: 178, type: !4547)
!4547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4548, size: 64)
!4548 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3578, line: 49, baseType: !4549)
!4549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3580, line: 241, size: 1728, elements: !4550)
!4550 = !{!4551, !4552, !4553, !4554, !4555, !4556, !4557, !4558, !4559, !4560, !4561, !4562, !4563, !4571, !4572, !4573, !4574, !4575, !4576, !4577, !4578, !4579, !4580, !4581, !4582, !4583, !4584, !4585, !4586}
!4551 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4549, file: !3580, line: 242, baseType: !21, size: 32)
!4552 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4549, file: !3580, line: 247, baseType: !13, size: 64, offset: 64)
!4553 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4549, file: !3580, line: 248, baseType: !13, size: 64, offset: 128)
!4554 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4549, file: !3580, line: 249, baseType: !13, size: 64, offset: 192)
!4555 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4549, file: !3580, line: 250, baseType: !13, size: 64, offset: 256)
!4556 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4549, file: !3580, line: 251, baseType: !13, size: 64, offset: 320)
!4557 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4549, file: !3580, line: 252, baseType: !13, size: 64, offset: 384)
!4558 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4549, file: !3580, line: 253, baseType: !13, size: 64, offset: 448)
!4559 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4549, file: !3580, line: 254, baseType: !13, size: 64, offset: 512)
!4560 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4549, file: !3580, line: 256, baseType: !13, size: 64, offset: 576)
!4561 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4549, file: !3580, line: 257, baseType: !13, size: 64, offset: 640)
!4562 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4549, file: !3580, line: 258, baseType: !13, size: 64, offset: 704)
!4563 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4549, file: !3580, line: 260, baseType: !4564, size: 64, offset: 768)
!4564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4565, size: 64)
!4565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !3580, line: 156, size: 192, elements: !4566)
!4566 = !{!4567, !4568, !4570}
!4567 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4565, file: !3580, line: 157, baseType: !4564, size: 64)
!4568 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4565, file: !3580, line: 158, baseType: !4569, size: 64, offset: 64)
!4569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4549, size: 64)
!4570 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4565, file: !3580, line: 162, baseType: !21, size: 32, offset: 128)
!4571 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4549, file: !3580, line: 262, baseType: !4569, size: 64, offset: 832)
!4572 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4549, file: !3580, line: 264, baseType: !21, size: 32, offset: 896)
!4573 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4549, file: !3580, line: 268, baseType: !21, size: 32, offset: 928)
!4574 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4549, file: !3580, line: 270, baseType: !3606, size: 64, offset: 960)
!4575 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4549, file: !3580, line: 274, baseType: !117, size: 16, offset: 1024)
!4576 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4549, file: !3580, line: 275, baseType: !22, size: 8, offset: 1040)
!4577 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4549, file: !3580, line: 276, baseType: !3610, size: 8, offset: 1048)
!4578 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4549, file: !3580, line: 280, baseType: !3614, size: 64, offset: 1088)
!4579 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4549, file: !3580, line: 289, baseType: !3617, size: 64, offset: 1152)
!4580 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4549, file: !3580, line: 297, baseType: !15, size: 64, offset: 1216)
!4581 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4549, file: !3580, line: 298, baseType: !15, size: 64, offset: 1280)
!4582 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4549, file: !3580, line: 299, baseType: !15, size: 64, offset: 1344)
!4583 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4549, file: !3580, line: 300, baseType: !15, size: 64, offset: 1408)
!4584 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4549, file: !3580, line: 302, baseType: !23, size: 64, offset: 1472)
!4585 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4549, file: !3580, line: 303, baseType: !21, size: 32, offset: 1536)
!4586 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4549, file: !3580, line: 305, baseType: !3625, size: 160, offset: 1568)
!4587 = !DILocalVariable(name: "res_ptr", scope: !4527, file: !602, line: 190, type: !13)
!4588 = !DILocalVariable(name: "res_size", scope: !4527, file: !602, line: 191, type: !23)
!4589 = !DILocalVariable(name: "c", scope: !4524, file: !602, line: 195, type: !21)
!4590 = !DILocalVariable(name: "buf2", scope: !4524, file: !602, line: 197, type: !4591)
!4591 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 408, elements: !4592)
!4592 = !{!4593}
!4593 = !DISubrange(count: 51)
!4594 = !DILocalVariable(name: "l1", scope: !4524, file: !602, line: 198, type: !23)
!4595 = !DILocalVariable(name: "l2", scope: !4524, file: !602, line: 198, type: !23)
!4596 = !DILocalVariable(name: "old_res_ptr", scope: !4524, file: !602, line: 199, type: !13)
!4597 = !DILocation(line: 196, column: 28, scope: !4524, inlinedAt: !4598)
!4598 = distinct !DILocation(line: 589, column: 18, scope: !4521)
!4599 = !DILocation(line: 197, column: 28, scope: !4524, inlinedAt: !4598)
!4600 = !DILocation(line: 403, column: 13, scope: !4511)
!4601 = !DILocation(line: 395, column: 15, scope: !4511)
!4602 = !DILocation(line: 584, column: 15, scope: !4603)
!4603 = distinct !DILexicalBlock(scope: !4511, file: !602, line: 584, column: 7)
!4604 = !DILocation(line: 584, column: 7, scope: !4511)
!4605 = !DILocation(line: 128, column: 8, scope: !4535, inlinedAt: !4598)
!4606 = !DILocation(line: 126, column: 15, scope: !4535, inlinedAt: !4598)
!4607 = !DILocation(line: 129, column: 10, scope: !4534, inlinedAt: !4598)
!4608 = !DILocation(line: 129, column: 7, scope: !4535, inlinedAt: !4598)
!4609 = !DILocation(line: 138, column: 13, scope: !4533, inlinedAt: !4598)
!4610 = !DILocation(line: 132, column: 19, scope: !4533, inlinedAt: !4598)
!4611 = !DILocation(line: 139, column: 15, scope: !4612, inlinedAt: !4598)
!4612 = distinct !DILexicalBlock(scope: !4533, file: !602, line: 139, column: 11)
!4613 = !DILocation(line: 139, column: 23, scope: !4612, inlinedAt: !4598)
!4614 = !DILocation(line: 139, column: 26, scope: !4615, inlinedAt: !4598)
!4615 = !DILexicalBlockFile(scope: !4612, file: !602, discriminator: 1)
!4616 = !DILocation(line: 139, column: 33, scope: !4615, inlinedAt: !4598)
!4617 = !DILocation(line: 139, column: 11, scope: !4618, inlinedAt: !4598)
!4618 = !DILexicalBlockFile(scope: !4533, file: !602, discriminator: 1)
!4619 = !DILocation(line: 140, column: 9, scope: !4612, inlinedAt: !4598)
!4620 = !DILocation(line: 144, column: 26, scope: !4542, inlinedAt: !4598)
!4621 = !DILocation(line: 144, column: 16, scope: !4542, inlinedAt: !4598)
!4622 = !DILocation(line: 145, column: 16, scope: !4542, inlinedAt: !4598)
!4623 = !DILocation(line: 146, column: 34, scope: !4542, inlinedAt: !4598)
!4624 = !DILocation(line: 146, column: 38, scope: !4542, inlinedAt: !4598)
!4625 = !DILocation(line: 146, column: 42, scope: !4626, inlinedAt: !4598)
!4626 = !DILexicalBlockFile(scope: !4542, file: !602, discriminator: 1)
!4627 = !DILocation(line: 146, column: 41, scope: !4626, inlinedAt: !4598)
!4628 = !DILocation(line: 147, column: 48, scope: !4542, inlinedAt: !4598)
!4629 = !DILocation(line: 147, column: 46, scope: !4542, inlinedAt: !4598)
!4630 = !DILocation(line: 147, column: 69, scope: !4542, inlinedAt: !4598)
!4631 = !DILocation(line: 147, column: 30, scope: !4542, inlinedAt: !4598)
!4632 = !DILocation(line: 134, column: 13, scope: !4533, inlinedAt: !4598)
!4633 = !DILocation(line: 148, column: 13, scope: !4542, inlinedAt: !4598)
!4634 = !DILocation(line: 150, column: 13, scope: !4635, inlinedAt: !4598)
!4635 = distinct !DILexicalBlock(scope: !4636, file: !602, line: 149, column: 11)
!4636 = distinct !DILexicalBlock(scope: !4542, file: !602, line: 148, column: 13)
!4637 = !DILocation(line: 151, column: 17, scope: !4635, inlinedAt: !4598)
!4638 = !DILocation(line: 152, column: 34, scope: !4639, inlinedAt: !4598)
!4639 = distinct !DILexicalBlock(scope: !4635, file: !602, line: 151, column: 17)
!4640 = !DILocation(line: 153, column: 41, scope: !4635, inlinedAt: !4598)
!4641 = !DILocation(line: 153, column: 13, scope: !4635, inlinedAt: !4598)
!4642 = !DILocation(line: 157, column: 11, scope: !4533, inlinedAt: !4598)
!4643 = !DILocation(line: 171, column: 16, scope: !4531, inlinedAt: !4598)
!4644 = !DILocation(line: 162, column: 15, scope: !4531, inlinedAt: !4598)
!4645 = !DILocation(line: 173, column: 18, scope: !4530, inlinedAt: !4598)
!4646 = !DILocation(line: 173, column: 15, scope: !4531, inlinedAt: !4598)
!4647 = !DILocation(line: 180, column: 20, scope: !4529, inlinedAt: !4598)
!4648 = !DILocation(line: 178, column: 21, scope: !4529, inlinedAt: !4598)
!4649 = !DILocation(line: 181, column: 22, scope: !4528, inlinedAt: !4598)
!4650 = !DILocation(line: 181, column: 19, scope: !4529, inlinedAt: !4598)
!4651 = !DILocation(line: 190, column: 25, scope: !4527, inlinedAt: !4598)
!4652 = !DILocation(line: 184, column: 19, scope: !4653, inlinedAt: !4598)
!4653 = distinct !DILexicalBlock(scope: !4528, file: !602, line: 182, column: 17)
!4654 = !DILocation(line: 186, column: 17, scope: !4653, inlinedAt: !4598)
!4655 = !DILocation(line: 191, column: 26, scope: !4527, inlinedAt: !4598)
!4656 = !DILocation(line: 196, column: 23, scope: !4524, inlinedAt: !4598)
!4657 = !DILocation(line: 197, column: 23, scope: !4524, inlinedAt: !4598)
!4658 = !DILocalVariable(name: "__fp", arg: 1, scope: !4659, file: !4431, line: 63, type: !4547)
!4659 = distinct !DISubprogram(name: "getc_unlocked", scope: !4431, file: !4431, line: 63, type: !4660, isLocal: false, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: true, unit: !258, variables: !4662)
!4660 = !DISubroutineType(types: !4661)
!4661 = !{!21, !4547}
!4662 = !{!4658}
!4663 = !DILocation(line: 63, column: 22, scope: !4659, inlinedAt: !4664)
!4664 = distinct !DILocation(line: 201, column: 27, scope: !4524, inlinedAt: !4598)
!4665 = !DILocation(line: 65, column: 10, scope: !4659, inlinedAt: !4664)
!4666 = !{!4437, !681, i64 8}
!4667 = !{!4437, !681, i64 16}
!4668 = !{!"branch_weights", i32 2000, i32 1}
!4669 = !DILocation(line: 65, column: 10, scope: !4670, inlinedAt: !4664)
!4670 = !DILexicalBlockFile(scope: !4659, file: !4431, discriminator: 1)
!4671 = !DILocation(line: 65, column: 10, scope: !4672, inlinedAt: !4664)
!4672 = !DILexicalBlockFile(scope: !4659, file: !4431, discriminator: 2)
!4673 = !DILocation(line: 65, column: 10, scope: !4674, inlinedAt: !4664)
!4674 = !DILexicalBlockFile(scope: !4659, file: !4431, discriminator: 3)
!4675 = !DILocation(line: 195, column: 27, scope: !4524, inlinedAt: !4598)
!4676 = !DILocation(line: 202, column: 27, scope: !4524, inlinedAt: !4598)
!4677 = !DILocation(line: 63, column: 22, scope: !4659, inlinedAt: !4678)
!4678 = distinct !DILocation(line: 210, column: 33, scope: !4679, inlinedAt: !4598)
!4679 = distinct !DILexicalBlock(scope: !4680, file: !602, line: 207, column: 25)
!4680 = distinct !DILexicalBlock(scope: !4524, file: !602, line: 206, column: 27)
!4681 = !DILocation(line: 65, column: 10, scope: !4659, inlinedAt: !4678)
!4682 = !DILocation(line: 65, column: 10, scope: !4670, inlinedAt: !4678)
!4683 = !DILocation(line: 65, column: 10, scope: !4672, inlinedAt: !4678)
!4684 = !DILocation(line: 65, column: 10, scope: !4674, inlinedAt: !4678)
!4685 = !DILocation(line: 210, column: 29, scope: !4686, inlinedAt: !4598)
!4686 = !DILexicalBlockFile(scope: !4679, file: !602, discriminator: 1)
!4687 = distinct !{!4687, !4688, !4689}
!4688 = !DILocation(line: 193, column: 19, scope: !4526)
!4689 = !DILocation(line: 241, column: 21, scope: !4526)
!4690 = !DILocation(line: 216, column: 23, scope: !4524, inlinedAt: !4598)
!4691 = !DILocation(line: 217, column: 27, scope: !4692, inlinedAt: !4598)
!4692 = distinct !DILexicalBlock(scope: !4524, file: !602, line: 217, column: 27)
!4693 = !DILocation(line: 217, column: 64, scope: !4692, inlinedAt: !4598)
!4694 = !DILocation(line: 217, column: 27, scope: !4524, inlinedAt: !4598)
!4695 = !DILocation(line: 219, column: 28, scope: !4524, inlinedAt: !4598)
!4696 = !DILocation(line: 198, column: 30, scope: !4524, inlinedAt: !4598)
!4697 = !DILocation(line: 220, column: 28, scope: !4524, inlinedAt: !4598)
!4698 = !DILocation(line: 198, column: 34, scope: !4524, inlinedAt: !4598)
!4699 = !DILocation(line: 199, column: 29, scope: !4524, inlinedAt: !4598)
!4700 = !DILocation(line: 222, column: 36, scope: !4701, inlinedAt: !4598)
!4701 = distinct !DILexicalBlock(scope: !4524, file: !602, line: 222, column: 27)
!4702 = !DILocation(line: 222, column: 27, scope: !4524, inlinedAt: !4598)
!4703 = !DILocation(line: 225, column: 63, scope: !4704, inlinedAt: !4598)
!4704 = distinct !DILexicalBlock(scope: !4701, file: !602, line: 223, column: 25)
!4705 = !DILocation(line: 225, column: 46, scope: !4704, inlinedAt: !4598)
!4706 = !DILocation(line: 226, column: 25, scope: !4704, inlinedAt: !4598)
!4707 = !DILocation(line: 229, column: 36, scope: !4708, inlinedAt: !4598)
!4708 = distinct !DILexicalBlock(scope: !4701, file: !602, line: 228, column: 25)
!4709 = !DILocation(line: 230, column: 73, scope: !4708, inlinedAt: !4598)
!4710 = !DILocation(line: 230, column: 46, scope: !4708, inlinedAt: !4598)
!4711 = !DILocation(line: 232, column: 35, scope: !4712, inlinedAt: !4598)
!4712 = distinct !DILexicalBlock(scope: !4524, file: !602, line: 232, column: 27)
!4713 = !DILocation(line: 232, column: 27, scope: !4524, inlinedAt: !4598)
!4714 = !DILocation(line: 236, column: 27, scope: !4715, inlinedAt: !4598)
!4715 = distinct !DILexicalBlock(scope: !4712, file: !602, line: 233, column: 25)
!4716 = !DILocation(line: 237, column: 27, scope: !4715, inlinedAt: !4598)
!4717 = !DILocation(line: 239, column: 39, scope: !4524, inlinedAt: !4598)
!4718 = !DILocation(line: 239, column: 50, scope: !4524, inlinedAt: !4598)
!4719 = !DILocation(line: 239, column: 61, scope: !4524, inlinedAt: !4598)
!4720 = !DILocalVariable(name: "__dest", arg: 1, scope: !4721, file: !4333, line: 107, type: !4336)
!4721 = distinct !DISubprogram(name: "strcpy", scope: !4333, file: !4333, line: 107, type: !4334, isLocal: false, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: true, unit: !258, variables: !4722)
!4722 = !{!4720, !4723}
!4723 = !DILocalVariable(name: "__src", arg: 2, scope: !4721, file: !4333, line: 107, type: !4337)
!4724 = !DILocation(line: 107, column: 1, scope: !4721, inlinedAt: !4725)
!4725 = distinct !DILocation(line: 239, column: 23, scope: !4524, inlinedAt: !4598)
!4726 = !DILocation(line: 109, column: 49, scope: !4721, inlinedAt: !4725)
!4727 = !DILocation(line: 109, column: 10, scope: !4721, inlinedAt: !4725)
!4728 = !DILocation(line: 107, column: 1, scope: !4721, inlinedAt: !4729)
!4729 = distinct !DILocation(line: 240, column: 23, scope: !4524, inlinedAt: !4598)
!4730 = !DILocation(line: 109, column: 49, scope: !4721, inlinedAt: !4729)
!4731 = !DILocation(line: 109, column: 10, scope: !4721, inlinedAt: !4729)
!4732 = !DILocation(line: 241, column: 21, scope: !4525, inlinedAt: !4598)
!4733 = !DILocation(line: 242, column: 19, scope: !4527, inlinedAt: !4598)
!4734 = !DILocation(line: 243, column: 32, scope: !4735, inlinedAt: !4598)
!4735 = distinct !DILexicalBlock(scope: !4527, file: !602, line: 243, column: 23)
!4736 = !DILocation(line: 243, column: 23, scope: !4527, inlinedAt: !4598)
!4737 = !DILocation(line: 247, column: 33, scope: !4738, inlinedAt: !4598)
!4738 = distinct !DILexicalBlock(scope: !4735, file: !602, line: 246, column: 21)
!4739 = !DILocation(line: 247, column: 45, scope: !4738, inlinedAt: !4598)
!4740 = !DILocation(line: 253, column: 11, scope: !4531, inlinedAt: !4598)
!4741 = !DILocation(line: 377, column: 23, scope: !4533, inlinedAt: !4598)
!4742 = !DILocation(line: 378, column: 5, scope: !4533, inlinedAt: !4598)
!4743 = !DILocation(line: 396, column: 15, scope: !4511)
!4744 = !DILocation(line: 590, column: 8, scope: !4520)
!4745 = !DILocation(line: 590, column: 17, scope: !4520)
!4746 = !DILocation(line: 589, column: 3, scope: !4747)
!4747 = !DILexicalBlockFile(scope: !4521, file: !602, discriminator: 1)
!4748 = !DILocation(line: 592, column: 9, scope: !4518)
!4749 = !DILocation(line: 592, column: 35, scope: !4519)
!4750 = !DILocation(line: 593, column: 9, scope: !4519)
!4751 = !DILocation(line: 593, column: 24, scope: !4752)
!4752 = !DILexicalBlockFile(scope: !4519, file: !602, discriminator: 1)
!4753 = !DILocation(line: 593, column: 31, scope: !4752)
!4754 = !DILocation(line: 593, column: 34, scope: !4755)
!4755 = !DILexicalBlockFile(scope: !4519, file: !602, discriminator: 2)
!4756 = !DILocation(line: 593, column: 45, scope: !4755)
!4757 = !DILocation(line: 592, column: 9, scope: !4758)
!4758 = !DILexicalBlockFile(scope: !4520, file: !602, discriminator: 1)
!4759 = !DILocation(line: 595, column: 29, scope: !4760)
!4760 = distinct !DILexicalBlock(scope: !4519, file: !602, line: 594, column: 7)
!4761 = !DILocation(line: 595, column: 27, scope: !4760)
!4762 = !DILocation(line: 595, column: 46, scope: !4760)
!4763 = !DILocation(line: 596, column: 9, scope: !4760)
!4764 = !DILocation(line: 591, column: 19, scope: !4520)
!4765 = !DILocation(line: 591, column: 36, scope: !4520)
!4766 = !DILocation(line: 591, column: 16, scope: !4520)
!4767 = !DILocation(line: 591, column: 52, scope: !4758)
!4768 = !DILocation(line: 591, column: 69, scope: !4520)
!4769 = !DILocation(line: 591, column: 49, scope: !4520)
!4770 = distinct !{!4770, !4771, !4772}
!4771 = !DILocation(line: 589, column: 3, scope: !4521)
!4772 = !DILocation(line: 597, column: 7, scope: !4521)
!4773 = !DILocation(line: 602, column: 7, scope: !4774)
!4774 = distinct !DILexicalBlock(scope: !4511, file: !602, line: 602, column: 7)
!4775 = !DILocation(line: 602, column: 18, scope: !4774)
!4776 = !DILocation(line: 602, column: 7, scope: !4511)
!4777 = !DILocation(line: 612, column: 3, scope: !4511)
!4778 = distinct !DISubprogram(name: "rpl_fclose", scope: !4779, file: !4779, line: 56, type: !4780, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !658, variables: !4822)
!4779 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4780 = !DISubroutineType(types: !4781)
!4781 = !{!21, !4782}
!4782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4783, size: 64)
!4783 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3578, line: 49, baseType: !4784)
!4784 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3580, line: 241, size: 1728, elements: !4785)
!4785 = !{!4786, !4787, !4788, !4789, !4790, !4791, !4792, !4793, !4794, !4795, !4796, !4797, !4798, !4806, !4807, !4808, !4809, !4810, !4811, !4812, !4813, !4814, !4815, !4816, !4817, !4818, !4819, !4820, !4821}
!4786 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4784, file: !3580, line: 242, baseType: !21, size: 32)
!4787 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4784, file: !3580, line: 247, baseType: !13, size: 64, offset: 64)
!4788 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4784, file: !3580, line: 248, baseType: !13, size: 64, offset: 128)
!4789 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4784, file: !3580, line: 249, baseType: !13, size: 64, offset: 192)
!4790 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4784, file: !3580, line: 250, baseType: !13, size: 64, offset: 256)
!4791 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4784, file: !3580, line: 251, baseType: !13, size: 64, offset: 320)
!4792 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4784, file: !3580, line: 252, baseType: !13, size: 64, offset: 384)
!4793 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4784, file: !3580, line: 253, baseType: !13, size: 64, offset: 448)
!4794 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4784, file: !3580, line: 254, baseType: !13, size: 64, offset: 512)
!4795 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4784, file: !3580, line: 256, baseType: !13, size: 64, offset: 576)
!4796 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4784, file: !3580, line: 257, baseType: !13, size: 64, offset: 640)
!4797 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4784, file: !3580, line: 258, baseType: !13, size: 64, offset: 704)
!4798 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4784, file: !3580, line: 260, baseType: !4799, size: 64, offset: 768)
!4799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4800, size: 64)
!4800 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !3580, line: 156, size: 192, elements: !4801)
!4801 = !{!4802, !4803, !4805}
!4802 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4800, file: !3580, line: 157, baseType: !4799, size: 64)
!4803 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4800, file: !3580, line: 158, baseType: !4804, size: 64, offset: 64)
!4804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4784, size: 64)
!4805 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4800, file: !3580, line: 162, baseType: !21, size: 32, offset: 128)
!4806 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4784, file: !3580, line: 262, baseType: !4804, size: 64, offset: 832)
!4807 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4784, file: !3580, line: 264, baseType: !21, size: 32, offset: 896)
!4808 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4784, file: !3580, line: 268, baseType: !21, size: 32, offset: 928)
!4809 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4784, file: !3580, line: 270, baseType: !3606, size: 64, offset: 960)
!4810 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4784, file: !3580, line: 274, baseType: !117, size: 16, offset: 1024)
!4811 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4784, file: !3580, line: 275, baseType: !22, size: 8, offset: 1040)
!4812 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4784, file: !3580, line: 276, baseType: !3610, size: 8, offset: 1048)
!4813 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4784, file: !3580, line: 280, baseType: !3614, size: 64, offset: 1088)
!4814 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4784, file: !3580, line: 289, baseType: !3617, size: 64, offset: 1152)
!4815 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4784, file: !3580, line: 297, baseType: !15, size: 64, offset: 1216)
!4816 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4784, file: !3580, line: 298, baseType: !15, size: 64, offset: 1280)
!4817 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4784, file: !3580, line: 299, baseType: !15, size: 64, offset: 1344)
!4818 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4784, file: !3580, line: 300, baseType: !15, size: 64, offset: 1408)
!4819 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4784, file: !3580, line: 302, baseType: !23, size: 64, offset: 1472)
!4820 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4784, file: !3580, line: 303, baseType: !21, size: 32, offset: 1536)
!4821 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4784, file: !3580, line: 305, baseType: !3625, size: 160, offset: 1568)
!4822 = !{!4823, !4824, !4825, !4826}
!4823 = !DILocalVariable(name: "fp", arg: 1, scope: !4778, file: !4779, line: 56, type: !4782)
!4824 = !DILocalVariable(name: "saved_errno", scope: !4778, file: !4779, line: 58, type: !21)
!4825 = !DILocalVariable(name: "fd", scope: !4778, file: !4779, line: 59, type: !21)
!4826 = !DILocalVariable(name: "result", scope: !4778, file: !4779, line: 60, type: !21)
!4827 = !DILocation(line: 56, column: 19, scope: !4778)
!4828 = !DILocation(line: 58, column: 7, scope: !4778)
!4829 = !DILocation(line: 60, column: 7, scope: !4778)
!4830 = !DILocation(line: 63, column: 8, scope: !4778)
!4831 = !DILocation(line: 59, column: 7, scope: !4778)
!4832 = !DILocation(line: 64, column: 10, scope: !4833)
!4833 = distinct !DILexicalBlock(scope: !4778, file: !4779, line: 64, column: 7)
!4834 = !DILocation(line: 64, column: 7, scope: !4778)
!4835 = !DILocation(line: 65, column: 12, scope: !4833)
!4836 = !DILocation(line: 65, column: 5, scope: !4833)
!4837 = !DILocation(line: 70, column: 9, scope: !4838)
!4838 = distinct !DILexicalBlock(scope: !4778, file: !4779, line: 70, column: 7)
!4839 = !DILocation(line: 70, column: 23, scope: !4838)
!4840 = !DILocation(line: 70, column: 33, scope: !4841)
!4841 = !DILexicalBlockFile(scope: !4838, file: !4779, discriminator: 1)
!4842 = !DILocation(line: 70, column: 26, scope: !4843)
!4843 = !DILexicalBlockFile(scope: !4838, file: !4779, discriminator: 3)
!4844 = !DILocation(line: 70, column: 59, scope: !4841)
!4845 = !DILocation(line: 71, column: 7, scope: !4838)
!4846 = !DILocation(line: 71, column: 10, scope: !4841)
!4847 = !DILocation(line: 70, column: 7, scope: !4848)
!4848 = !DILexicalBlockFile(scope: !4778, file: !4779, discriminator: 2)
!4849 = !DILocation(line: 98, column: 12, scope: !4778)
!4850 = !DILocation(line: 103, column: 7, scope: !4778)
!4851 = !DILocation(line: 72, column: 19, scope: !4838)
!4852 = !DILocation(line: 103, column: 19, scope: !4853)
!4853 = distinct !DILexicalBlock(scope: !4778, file: !4779, line: 103, column: 7)
!4854 = !DILocation(line: 105, column: 13, scope: !4855)
!4855 = distinct !DILexicalBlock(scope: !4853, file: !4779, line: 104, column: 5)
!4856 = !DILocation(line: 107, column: 5, scope: !4855)
!4857 = !DILocation(line: 110, column: 1, scope: !4778)
!4858 = distinct !DISubprogram(name: "rpl_fflush", scope: !4859, file: !4859, line: 127, type: !4860, isLocal: false, isDefinition: true, scopeLine: 128, flags: DIFlagPrototyped, isOptimized: true, unit: !660, variables: !4902)
!4859 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4860 = !DISubroutineType(types: !4861)
!4861 = !{!21, !4862}
!4862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4863, size: 64)
!4863 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3578, line: 49, baseType: !4864)
!4864 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3580, line: 241, size: 1728, elements: !4865)
!4865 = !{!4866, !4867, !4868, !4869, !4870, !4871, !4872, !4873, !4874, !4875, !4876, !4877, !4878, !4886, !4887, !4888, !4889, !4890, !4891, !4892, !4893, !4894, !4895, !4896, !4897, !4898, !4899, !4900, !4901}
!4866 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4864, file: !3580, line: 242, baseType: !21, size: 32)
!4867 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4864, file: !3580, line: 247, baseType: !13, size: 64, offset: 64)
!4868 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4864, file: !3580, line: 248, baseType: !13, size: 64, offset: 128)
!4869 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4864, file: !3580, line: 249, baseType: !13, size: 64, offset: 192)
!4870 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4864, file: !3580, line: 250, baseType: !13, size: 64, offset: 256)
!4871 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4864, file: !3580, line: 251, baseType: !13, size: 64, offset: 320)
!4872 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4864, file: !3580, line: 252, baseType: !13, size: 64, offset: 384)
!4873 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4864, file: !3580, line: 253, baseType: !13, size: 64, offset: 448)
!4874 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4864, file: !3580, line: 254, baseType: !13, size: 64, offset: 512)
!4875 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4864, file: !3580, line: 256, baseType: !13, size: 64, offset: 576)
!4876 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4864, file: !3580, line: 257, baseType: !13, size: 64, offset: 640)
!4877 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4864, file: !3580, line: 258, baseType: !13, size: 64, offset: 704)
!4878 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4864, file: !3580, line: 260, baseType: !4879, size: 64, offset: 768)
!4879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4880, size: 64)
!4880 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !3580, line: 156, size: 192, elements: !4881)
!4881 = !{!4882, !4883, !4885}
!4882 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4880, file: !3580, line: 157, baseType: !4879, size: 64)
!4883 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4880, file: !3580, line: 158, baseType: !4884, size: 64, offset: 64)
!4884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4864, size: 64)
!4885 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4880, file: !3580, line: 162, baseType: !21, size: 32, offset: 128)
!4886 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4864, file: !3580, line: 262, baseType: !4884, size: 64, offset: 832)
!4887 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4864, file: !3580, line: 264, baseType: !21, size: 32, offset: 896)
!4888 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4864, file: !3580, line: 268, baseType: !21, size: 32, offset: 928)
!4889 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4864, file: !3580, line: 270, baseType: !3606, size: 64, offset: 960)
!4890 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4864, file: !3580, line: 274, baseType: !117, size: 16, offset: 1024)
!4891 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4864, file: !3580, line: 275, baseType: !22, size: 8, offset: 1040)
!4892 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4864, file: !3580, line: 276, baseType: !3610, size: 8, offset: 1048)
!4893 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4864, file: !3580, line: 280, baseType: !3614, size: 64, offset: 1088)
!4894 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4864, file: !3580, line: 289, baseType: !3617, size: 64, offset: 1152)
!4895 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4864, file: !3580, line: 297, baseType: !15, size: 64, offset: 1216)
!4896 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4864, file: !3580, line: 298, baseType: !15, size: 64, offset: 1280)
!4897 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4864, file: !3580, line: 299, baseType: !15, size: 64, offset: 1344)
!4898 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4864, file: !3580, line: 300, baseType: !15, size: 64, offset: 1408)
!4899 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4864, file: !3580, line: 302, baseType: !23, size: 64, offset: 1472)
!4900 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4864, file: !3580, line: 303, baseType: !21, size: 32, offset: 1536)
!4901 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4864, file: !3580, line: 305, baseType: !3625, size: 160, offset: 1568)
!4902 = !{!4903}
!4903 = !DILocalVariable(name: "stream", arg: 1, scope: !4858, file: !4859, line: 127, type: !4862)
!4904 = !DILocation(line: 127, column: 19, scope: !4858)
!4905 = !DILocation(line: 148, column: 14, scope: !4906)
!4906 = distinct !DILexicalBlock(scope: !4858, file: !4859, line: 148, column: 7)
!4907 = !DILocation(line: 148, column: 22, scope: !4906)
!4908 = !DILocation(line: 148, column: 27, scope: !4909)
!4909 = !DILexicalBlockFile(scope: !4906, file: !4859, discriminator: 1)
!4910 = !DILocation(line: 148, column: 7, scope: !4911)
!4911 = !DILexicalBlockFile(scope: !4858, file: !4859, discriminator: 1)
!4912 = !DILocation(line: 149, column: 12, scope: !4906)
!4913 = !DILocation(line: 149, column: 5, scope: !4906)
!4914 = !DILocalVariable(name: "fp", arg: 1, scope: !4915, file: !4859, line: 40, type: !4862)
!4915 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !4859, file: !4859, line: 40, type: !4916, isLocal: true, isDefinition: true, scopeLine: 41, flags: DIFlagPrototyped, isOptimized: true, unit: !660, variables: !4918)
!4916 = !DISubroutineType(types: !4917)
!4917 = !{null, !4862}
!4918 = !{!4914}
!4919 = !DILocation(line: 40, column: 48, scope: !4915, inlinedAt: !4920)
!4920 = distinct !DILocation(line: 153, column: 3, scope: !4858)
!4921 = !DILocation(line: 42, column: 11, scope: !4922, inlinedAt: !4920)
!4922 = distinct !DILexicalBlock(scope: !4915, file: !4859, line: 42, column: 7)
!4923 = !DILocation(line: 42, column: 18, scope: !4922, inlinedAt: !4920)
!4924 = !DILocation(line: 42, column: 7, scope: !4915, inlinedAt: !4920)
!4925 = !DILocation(line: 44, column: 5, scope: !4922, inlinedAt: !4920)
!4926 = !DILocation(line: 155, column: 10, scope: !4858)
!4927 = !DILocation(line: 155, column: 3, scope: !4858)
!4928 = !DILocation(line: 229, column: 1, scope: !4858)
!4929 = distinct !DISubprogram(name: "rpl_fseeko", scope: !4930, file: !4930, line: 28, type: !4931, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !662, variables: !4974)
!4930 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4931 = !DISubroutineType(types: !4932)
!4932 = !{!21, !4933, !4973, !21}
!4933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4934, size: 64)
!4934 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3578, line: 49, baseType: !4935)
!4935 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3580, line: 241, size: 1728, elements: !4936)
!4936 = !{!4937, !4938, !4939, !4940, !4941, !4942, !4943, !4944, !4945, !4946, !4947, !4948, !4949, !4957, !4958, !4959, !4960, !4961, !4962, !4963, !4964, !4965, !4966, !4967, !4968, !4969, !4970, !4971, !4972}
!4937 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4935, file: !3580, line: 242, baseType: !21, size: 32)
!4938 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4935, file: !3580, line: 247, baseType: !13, size: 64, offset: 64)
!4939 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4935, file: !3580, line: 248, baseType: !13, size: 64, offset: 128)
!4940 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4935, file: !3580, line: 249, baseType: !13, size: 64, offset: 192)
!4941 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4935, file: !3580, line: 250, baseType: !13, size: 64, offset: 256)
!4942 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4935, file: !3580, line: 251, baseType: !13, size: 64, offset: 320)
!4943 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4935, file: !3580, line: 252, baseType: !13, size: 64, offset: 384)
!4944 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4935, file: !3580, line: 253, baseType: !13, size: 64, offset: 448)
!4945 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4935, file: !3580, line: 254, baseType: !13, size: 64, offset: 512)
!4946 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4935, file: !3580, line: 256, baseType: !13, size: 64, offset: 576)
!4947 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4935, file: !3580, line: 257, baseType: !13, size: 64, offset: 640)
!4948 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4935, file: !3580, line: 258, baseType: !13, size: 64, offset: 704)
!4949 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4935, file: !3580, line: 260, baseType: !4950, size: 64, offset: 768)
!4950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4951, size: 64)
!4951 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !3580, line: 156, size: 192, elements: !4952)
!4952 = !{!4953, !4954, !4956}
!4953 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4951, file: !3580, line: 157, baseType: !4950, size: 64)
!4954 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4951, file: !3580, line: 158, baseType: !4955, size: 64, offset: 64)
!4955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4935, size: 64)
!4956 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4951, file: !3580, line: 162, baseType: !21, size: 32, offset: 128)
!4957 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4935, file: !3580, line: 262, baseType: !4955, size: 64, offset: 832)
!4958 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4935, file: !3580, line: 264, baseType: !21, size: 32, offset: 896)
!4959 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4935, file: !3580, line: 268, baseType: !21, size: 32, offset: 928)
!4960 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4935, file: !3580, line: 270, baseType: !3606, size: 64, offset: 960)
!4961 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4935, file: !3580, line: 274, baseType: !117, size: 16, offset: 1024)
!4962 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4935, file: !3580, line: 275, baseType: !22, size: 8, offset: 1040)
!4963 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4935, file: !3580, line: 276, baseType: !3610, size: 8, offset: 1048)
!4964 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4935, file: !3580, line: 280, baseType: !3614, size: 64, offset: 1088)
!4965 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4935, file: !3580, line: 289, baseType: !3617, size: 64, offset: 1152)
!4966 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4935, file: !3580, line: 297, baseType: !15, size: 64, offset: 1216)
!4967 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4935, file: !3580, line: 298, baseType: !15, size: 64, offset: 1280)
!4968 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4935, file: !3580, line: 299, baseType: !15, size: 64, offset: 1344)
!4969 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4935, file: !3580, line: 300, baseType: !15, size: 64, offset: 1408)
!4970 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4935, file: !3580, line: 302, baseType: !23, size: 64, offset: 1472)
!4971 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4935, file: !3580, line: 303, baseType: !21, size: 32, offset: 1536)
!4972 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4935, file: !3580, line: 305, baseType: !3625, size: 160, offset: 1568)
!4973 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !3578, line: 91, baseType: !3606)
!4974 = !{!4975, !4976, !4977, !4978}
!4975 = !DILocalVariable(name: "fp", arg: 1, scope: !4929, file: !4930, line: 28, type: !4933)
!4976 = !DILocalVariable(name: "offset", arg: 2, scope: !4929, file: !4930, line: 28, type: !4973)
!4977 = !DILocalVariable(name: "whence", arg: 3, scope: !4929, file: !4930, line: 28, type: !21)
!4978 = !DILocalVariable(name: "pos", scope: !4979, file: !4930, line: 116, type: !4973)
!4979 = distinct !DILexicalBlock(scope: !4980, file: !4930, line: 112, column: 5)
!4980 = distinct !DILexicalBlock(scope: !4929, file: !4930, line: 51, column: 7)
!4981 = !DILocation(line: 28, column: 15, scope: !4929)
!4982 = !DILocation(line: 28, column: 25, scope: !4929)
!4983 = !DILocation(line: 28, column: 37, scope: !4929)
!4984 = !DILocation(line: 51, column: 11, scope: !4980)
!4985 = !DILocation(line: 51, column: 31, scope: !4980)
!4986 = !DILocation(line: 51, column: 24, scope: !4980)
!4987 = !DILocation(line: 52, column: 7, scope: !4980)
!4988 = !DILocation(line: 52, column: 14, scope: !4989)
!4989 = !DILexicalBlockFile(scope: !4980, file: !4930, discriminator: 1)
!4990 = !{!4437, !681, i64 40}
!4991 = !DILocation(line: 52, column: 35, scope: !4989)
!4992 = !{!4437, !681, i64 32}
!4993 = !DILocation(line: 52, column: 28, scope: !4989)
!4994 = !DILocation(line: 53, column: 7, scope: !4980)
!4995 = !DILocation(line: 53, column: 14, scope: !4989)
!4996 = !{!4437, !681, i64 72}
!4997 = !DILocation(line: 53, column: 28, scope: !4989)
!4998 = !DILocation(line: 51, column: 7, scope: !4999)
!4999 = !DILexicalBlockFile(scope: !4929, file: !4930, discriminator: 1)
!5000 = !DILocation(line: 116, column: 26, scope: !4979)
!5001 = !DILocation(line: 116, column: 19, scope: !5002)
!5002 = !DILexicalBlockFile(scope: !4979, file: !4930, discriminator: 1)
!5003 = !DILocation(line: 116, column: 13, scope: !4979)
!5004 = !DILocation(line: 117, column: 15, scope: !5005)
!5005 = distinct !DILexicalBlock(scope: !4979, file: !4930, line: 117, column: 11)
!5006 = !DILocation(line: 117, column: 11, scope: !4979)
!5007 = !DILocation(line: 127, column: 11, scope: !4979)
!5008 = !DILocation(line: 127, column: 18, scope: !4979)
!5009 = !DILocation(line: 128, column: 11, scope: !4979)
!5010 = !DILocation(line: 128, column: 19, scope: !4979)
!5011 = !{!4437, !2890, i64 144}
!5012 = !DILocation(line: 159, column: 7, scope: !4979)
!5013 = !DILocation(line: 161, column: 10, scope: !4929)
!5014 = !DILocation(line: 161, column: 3, scope: !4929)
!5015 = !DILocation(line: 162, column: 1, scope: !4929)
