; ModuleID = 'coreutils-8.27/src/who.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.option = type { i8*, i32, i32*, i32 }
%struct.addrinfo = type { i32, i32, i32, i32, i32, %struct.sockaddr*, i8*, %struct.addrinfo* }
%struct.sockaddr = type { i16, [14 x i8] }
%struct.quoting_options = type { i32, i32, [8 x i32], i8*, i8* }
%struct.slotvec = type { i64, i8* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.utmpx = type { i16, i32, [32 x i8], [4 x i8], [32 x i8], [256 x i8], %struct.__exit_status, i32, %struct.anon, [4 x i32], [20 x i8] }
%struct.__exit_status = type { i16, i16 }
%struct.anon = type { i32, i32 }
%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8* }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"Usage: %s [OPTION]... [ FILE | ARG1 ARG2 ]\0A\00", align 1
@.str.2 = private unnamed_addr constant [60 x i8] c"Print information about users who are currently logged in.\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.3 = private unnamed_addr constant [195 x i8] c"\0A  -a, --all         same as -b -d --login -p -r -t -T -u\0A  -b, --boot        time of last system boot\0A  -d, --dead        print dead processes\0A  -H, --heading     print line of column headings\0A\00", align 1
@.str.4 = private unnamed_addr constant [50 x i8] c"  -l, --login       print system login processes\0A\00", align 1
@.str.5 = private unnamed_addr constant [187 x i8] c"      --lookup      attempt to canonicalize hostnames via DNS\0A  -m                only hostname and user associated with stdin\0A  -p, --process     print active processes spawned by init\0A\00", align 1
@.str.6 = private unnamed_addr constant [223 x i8] c"  -q, --count       all login names and number of users logged on\0A  -r, --runlevel    print current runlevel\0A  -s, --short       print only name, line, and time (default)\0A  -t, --time        print last system clock change\0A\00", align 1
@.str.7 = private unnamed_addr constant [163 x i8] c"  -T, -w, --mesg    add user's message status as +, - or ?\0A  -u, --users       list users logged in\0A      --message     same as -T\0A      --writable    same as -T\0A\00", align 1
@.str.8 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.9 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.10 = private unnamed_addr constant [125 x i8] c"\0AIf FILE is not specified, use %s.  %s as FILE is common.\0AIf ARG1 ARG2 given, -m presumed: 'am i' or 'mom likes' are usual.\0A\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"/var/run/utmp\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"/var/log/wtmp\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"who\00", align 1
@.str.33 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.18 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.34 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.35 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.36 = private unnamed_addr constant [69 x i8] c"Report %s translation bugs to <http://translationproject.org/team/>\0A\00", align 1
@.str.37 = private unnamed_addr constant [31 x i8] c"Full documentation at: <%s%s>\0A\00", align 1
@.str.38 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.39 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.14 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.16 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@.str.17 = private unnamed_addr constant [15 x i8] c"abdlmpqrstuwHT\00", align 1
@longopts = internal constant [18 x %struct.option] [%struct.option { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.40, i32 0, i32 0), i32 0, i32* null, i32 97 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.41, i32 0, i32 0), i32 0, i32* null, i32 98 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.42, i32 0, i32 0), i32 0, i32* null, i32 113 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.43, i32 0, i32 0), i32 0, i32* null, i32 100 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.44, i32 0, i32 0), i32 0, i32* null, i32 72 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.45, i32 0, i32 0), i32 0, i32* null, i32 108 }, %struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.46, i32 0, i32 0), i32 0, i32* null, i32 128 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.47, i32 0, i32 0), i32 0, i32* null, i32 84 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.48, i32 0, i32 0), i32 0, i32* null, i32 84 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.49, i32 0, i32 0), i32 0, i32* null, i32 112 }, %struct.option { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.50, i32 0, i32 0), i32 0, i32* null, i32 114 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.51, i32 0, i32 0), i32 0, i32* null, i32 115 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.52, i32 0, i32 0), i32 0, i32* null, i32 116 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.53, i32 0, i32 0), i32 0, i32* null, i32 117 }, %struct.option { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.54, i32 0, i32 0), i32 0, i32* null, i32 84 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.55, i32 0, i32 0), i32 0, i32* null, i32 -130 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.56, i32 0, i32 0), i32 0, i32* null, i32 -131 }, %struct.option zeroinitializer], align 16, !dbg !0
@need_boottime = internal unnamed_addr global i1 false, align 1
@need_deadprocs = internal unnamed_addr global i1 false, align 1
@need_login = internal unnamed_addr global i1 false, align 1
@need_initspawn = internal unnamed_addr global i1 false, align 1
@need_runlevel = internal unnamed_addr global i1 false, align 1
@need_clockchange = internal unnamed_addr global i1 false, align 1
@need_users = internal unnamed_addr global i1 false, align 1
@include_mesg = internal unnamed_addr global i1 false, align 1
@include_idle = internal unnamed_addr global i1 false, align 1
@do_lookup = internal unnamed_addr global i1 false, align 1
@short_output = internal unnamed_addr global i1 false, align 1
@short_list = internal unnamed_addr global i1 false, align 1
@my_line_only = internal unnamed_addr global i1 false, align 1
@include_heading = internal unnamed_addr global i1 false, align 1
@include_exit = internal unnamed_addr global i1 false, align 1
@.str.19 = private unnamed_addr constant [17 x i8] c"Joseph Arceneaux\00", align 1
@.str.20 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1
@.str.21 = private unnamed_addr constant [14 x i8] c"Michael Stone\00", align 1
@.str.22 = private unnamed_addr constant [15 x i8] c"%Y-%m-%d %H:%M\00", align 1
@.str.23 = private unnamed_addr constant [12 x i8] c"%b %e %H:%M\00", align 1
@time_format = internal unnamed_addr global i8* null, align 8, !dbg !76
@time_format_width = internal unnamed_addr global i32 0, align 4, !dbg !78
@optind = external local_unnamed_addr global i32, align 4
@.str.24 = private unnamed_addr constant [17 x i8] c"extra operand %s\00", align 1
@.str.57 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.58 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.59 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.60 = private unnamed_addr constant [14 x i8] c"\0A# users=%lu\0A\00", align 1
@.str.62 = private unnamed_addr constant [5 x i8] c"NAME\00", align 1
@.str.63 = private unnamed_addr constant [5 x i8] c"LINE\00", align 1
@.str.64 = private unnamed_addr constant [5 x i8] c"TIME\00", align 1
@.str.65 = private unnamed_addr constant [5 x i8] c"IDLE\00", align 1
@.str.66 = private unnamed_addr constant [4 x i8] c"PID\00", align 1
@.str.67 = private unnamed_addr constant [8 x i8] c"COMMENT\00", align 1
@.str.68 = private unnamed_addr constant [5 x i8] c"EXIT\00", align 1
@.str.61 = private unnamed_addr constant [6 x i8] c"/dev/\00", align 1
@.str.74 = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@idle_string.now = internal global i64 -9223372036854775808, align 8, !dbg !250
@.str.80 = private unnamed_addr constant [30 x i8] c"seconds_idle / (60 * 60) < 24\00", align 1
@.str.81 = private unnamed_addr constant [10 x i8] c"src/who.c\00", align 1
@__PRETTY_FUNCTION__.idle_string = private unnamed_addr constant [40 x i8] c"const char *idle_string(time_t, time_t)\00", align 1
@idle_string.idle_hhmm = internal global [6 x i8] zeroinitializer, align 1, !dbg !261
@.str.82 = private unnamed_addr constant [10 x i8] c"%02d:%02d\00", align 1
@.str.83 = private unnamed_addr constant [6 x i8] c" old \00", align 1
@.str.79 = private unnamed_addr constant [6 x i8] c"  .  \00", align 1
@.str.75 = private unnamed_addr constant [5 x i8] c"%.*s\00", align 1
@.str.76 = private unnamed_addr constant [4 x i8] c"  ?\00", align 1
@print_user.hostlen = internal unnamed_addr global i64 0, align 8, !dbg !248
@print_user.hoststr = internal unnamed_addr global i8* null, align 8, !dbg !143
@.str.77 = private unnamed_addr constant [8 x i8] c"(%s:%s)\00", align 1
@.str.78 = private unnamed_addr constant [5 x i8] c"(%s)\00", align 1
@time_string.buf = internal global [33 x i8] zeroinitializer, align 16, !dbg !266
@print_runlevel.runlevline = internal unnamed_addr global i8* null, align 8, !dbg !293
@.str.84 = private unnamed_addr constant [10 x i8] c"run-level\00", align 1
@.str.85 = private unnamed_addr constant [6 x i8] c"%s %c\00", align 1
@print_runlevel.comment = internal unnamed_addr global i8* null, align 8, !dbg !302
@.str.86 = private unnamed_addr constant [6 x i8] c"last=\00", align 1
@.str.87 = private unnamed_addr constant [5 x i8] c"%s%c\00", align 1
@.str.88 = private unnamed_addr constant [12 x i8] c"system boot\00", align 1
@.str.89 = private unnamed_addr constant [13 x i8] c"clock change\00", align 1
@.str.90 = private unnamed_addr constant [4 x i8] c"id=\00", align 1
@.str.91 = private unnamed_addr constant [6 x i8] c"LOGIN\00", align 1
@print_deadprocs.exitstr = internal unnamed_addr global i8* null, align 8, !dbg !304
@.str.92 = private unnamed_addr constant [6 x i8] c"term=\00", align 1
@.str.93 = private unnamed_addr constant [6 x i8] c"exit=\00", align 1
@.str.94 = private unnamed_addr constant [10 x i8] c"%s%d %s%d\00", align 1
@print_line.mesg = internal global [3 x i8] c" x\00", align 1, !dbg !111
@.str.69 = private unnamed_addr constant [6 x i8] c" %-6s\00", align 1
@.str.70 = private unnamed_addr constant [6 x i8] c" %10s\00", align 1
@.str.71 = private unnamed_addr constant [7 x i8] c" %-12s\00", align 1
@.str.73 = private unnamed_addr constant [5 x i8] c"   .\00", align 1
@.str.72 = private unnamed_addr constant [33 x i8] c"%-8.*s%s %-12.*s %-*s%s%s %-8s%s\00", align 1
@.str.40 = private unnamed_addr constant [4 x i8] c"all\00", align 1
@.str.41 = private unnamed_addr constant [5 x i8] c"boot\00", align 1
@.str.42 = private unnamed_addr constant [6 x i8] c"count\00", align 1
@.str.43 = private unnamed_addr constant [5 x i8] c"dead\00", align 1
@.str.44 = private unnamed_addr constant [8 x i8] c"heading\00", align 1
@.str.45 = private unnamed_addr constant [6 x i8] c"login\00", align 1
@.str.46 = private unnamed_addr constant [7 x i8] c"lookup\00", align 1
@.str.47 = private unnamed_addr constant [8 x i8] c"message\00", align 1
@.str.48 = private unnamed_addr constant [5 x i8] c"mesg\00", align 1
@.str.49 = private unnamed_addr constant [8 x i8] c"process\00", align 1
@.str.50 = private unnamed_addr constant [9 x i8] c"runlevel\00", align 1
@.str.51 = private unnamed_addr constant [6 x i8] c"short\00", align 1
@.str.52 = private unnamed_addr constant [5 x i8] c"time\00", align 1
@.str.53 = private unnamed_addr constant [6 x i8] c"users\00", align 1
@.str.54 = private unnamed_addr constant [9 x i8] c"writable\00", align 1
@.str.55 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.56 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@Version = local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i64 0, i64 0), align 8, !dbg !323
@.str.25 = private unnamed_addr constant [5 x i8] c"8.27\00", align 1
@last_cherror = internal global i32 0, align 4, !dbg !329
@canon_host_r.hints = internal global %struct.addrinfo zeroinitializer, align 8, !dbg !334
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !372
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !377
@.str.30 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.31 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.32 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = global i32 1, align 4, !dbg !380
@.str.1.37 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@program_name = local_unnamed_addr global i8* null, align 8, !dbg !387
@.str.95 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.96 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.97 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.98, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.99, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.100, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.101, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.102, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.103, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.104, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.105, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.106, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.107, i32 0, i32 0), i8* null], align 16, !dbg !394
@.str.98 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.99 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.100 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.101 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.102 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.103 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.104 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.105 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.106 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.107 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_vals = local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !421
@quote_quoting_options = global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !428
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !438
@.str.11.108 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.109 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.110 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.111 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.112 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.113 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.114 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !442
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !449
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !440
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !451
@.str.121 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.122 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.123 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.3.124 = private unnamed_addr constant [203 x i8] c"\0ALicense GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\0A\00", align 1
@.str.4.125 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.5.126 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.6.127 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.7.128 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.8.129 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.9.130 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.10.131 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.11.132 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.12.133 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.13.134 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@.str.14.137 = private unnamed_addr constant [21 x i8] c"\0AReport bugs to: %s\0A\00", align 1
@.str.15.138 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.16.139 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.17.140 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.18.141 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.19.142 = private unnamed_addr constant [64 x i8] c"General help using GNU software: <http://www.gnu.org/gethelp/>\0A\00", align 1
@version_etc_copyright = constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !457
@.str.1.153 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.154 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.167 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@charset_aliases = internal global i8* null, align 8, !dbg !466
@.str.3.168 = private unnamed_addr constant [16 x i8] c"CHARSETALIASDIR\00", align 1
@.str.4.169 = private unnamed_addr constant [15 x i8] c"/usr/local/lib\00", align 1
@.str.2.170 = private unnamed_addr constant [14 x i8] c"charset.alias\00", align 1
@.str.5.171 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.6.172 = private unnamed_addr constant [10 x i8] c"%50s %50s\00", align 1
@.str.1.173 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @usage(i32) local_unnamed_addr #0 !dbg !879 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !883, metadata !884), !dbg !885
  %2 = icmp eq i32 %0, 0, !dbg !886
  br i1 %2, label %8, label %3, !dbg !888

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !889, !tbaa !892
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #10, !dbg !889
  %6 = load i8*, i8** @program_name, align 8, !dbg !889, !tbaa !892
  %7 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %4, i32 1, i8* %5, i8* %6) #10, !dbg !896
  br label %53, !dbg !898

; <label>:8:                                      ; preds = %1
  %9 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 5) #10, !dbg !900
  %10 = load i8*, i8** @program_name, align 8, !dbg !900, !tbaa !892
  %11 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %9, i8* %10) #10, !dbg !902
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.2, i64 0, i64 0), i32 5) #10, !dbg !904
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !904, !tbaa !892
  %14 = tail call i32 @fputs_unlocked(i8* %12, %struct._IO_FILE* %13) #10, !dbg !905
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([195 x i8], [195 x i8]* @.str.3, i64 0, i64 0), i32 5) #10, !dbg !906
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !906, !tbaa !892
  %17 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %16) #10, !dbg !907
  %18 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i64 0, i64 0), i32 5) #10, !dbg !908
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !908, !tbaa !892
  %20 = tail call i32 @fputs_unlocked(i8* %18, %struct._IO_FILE* %19) #10, !dbg !909
  %21 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([187 x i8], [187 x i8]* @.str.5, i64 0, i64 0), i32 5) #10, !dbg !910
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !910, !tbaa !892
  %23 = tail call i32 @fputs_unlocked(i8* %21, %struct._IO_FILE* %22) #10, !dbg !911
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([223 x i8], [223 x i8]* @.str.6, i64 0, i64 0), i32 5) #10, !dbg !912
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !912, !tbaa !892
  %26 = tail call i32 @fputs_unlocked(i8* %24, %struct._IO_FILE* %25) #10, !dbg !913
  %27 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([163 x i8], [163 x i8]* @.str.7, i64 0, i64 0), i32 5) #10, !dbg !914
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !914, !tbaa !892
  %29 = tail call i32 @fputs_unlocked(i8* %27, %struct._IO_FILE* %28) #10, !dbg !915
  %30 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.8, i64 0, i64 0), i32 5) #10, !dbg !916
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !916, !tbaa !892
  %32 = tail call i32 @fputs_unlocked(i8* %30, %struct._IO_FILE* %31) #10, !dbg !917
  %33 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.9, i64 0, i64 0), i32 5) #10, !dbg !918
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !918, !tbaa !892
  %35 = tail call i32 @fputs_unlocked(i8* %33, %struct._IO_FILE* %34) #10, !dbg !919
  %36 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([125 x i8], [125 x i8]* @.str.10, i64 0, i64 0), i32 5) #10, !dbg !920
  %37 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %36, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0)) #10, !dbg !921
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !89, metadata !884) #10, !dbg !922
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i64 0, metadata !89, metadata !884) #10, !dbg !922
  %38 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.33, i64 0, i64 0), i32 5) #10, !dbg !924
  %39 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %38, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.34, i64 0, i64 0)) #10, !dbg !925
  %40 = tail call i8* @setlocale(i32 5, i8* null) #10, !dbg !927
  tail call void @llvm.dbg.value(metadata i8* %40, i64 0, metadata !100, metadata !884) #10, !dbg !928
  %41 = icmp eq i8* %40, null, !dbg !929
  br i1 %41, label %48, label %42, !dbg !930

; <label>:42:                                     ; preds = %8
  %43 = tail call i32 @strncmp(i8* nonnull %40, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.35, i64 0, i64 0), i64 3) #13, !dbg !931
  %44 = icmp eq i32 %43, 0, !dbg !931
  br i1 %44, label %48, label %45, !dbg !933

; <label>:45:                                     ; preds = %42
  %46 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.36, i64 0, i64 0), i32 5) #10, !dbg !935
  %47 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %46, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0)) #10, !dbg !937
  br label %48, !dbg !939

; <label>:48:                                     ; preds = %8, %42, %45
  %49 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.37, i64 0, i64 0), i32 5) #10, !dbg !940
  %50 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %49, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.34, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0)) #10, !dbg !941
  %51 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.38, i64 0, i64 0), i32 5) #10, !dbg !942
  %52 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %51, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.39, i64 0, i64 0)) #10, !dbg !943
  br label %53

; <label>:53:                                     ; preds = %48, %3
  tail call void @exit(i32 %0) #14, !dbg !944
  unreachable, !dbg !944
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
define i32 @main(i32, i8**) local_unnamed_addr #6 !dbg !945 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !950, metadata !884), !dbg !954
  tail call void @llvm.dbg.value(metadata i8** %1, i64 0, metadata !951, metadata !884), !dbg !955
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !953, metadata !884), !dbg !956
  %3 = load i8*, i8** %1, align 8, !dbg !957, !tbaa !892
  tail call void @set_program_name(i8* %3) #10, !dbg !958
  %4 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0)) #10, !dbg !959
  %5 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.16, i64 0, i64 0)) #10, !dbg !960
  %6 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i64 0, i64 0)) #10, !dbg !961
  %7 = tail call i32 @atexit(void ()* nonnull @close_stdout) #10, !dbg !962
  br label %8, !dbg !963

; <label>:8:                                      ; preds = %24, %2
  %9 = phi i8 [ 1, %2 ], [ %26, %24 ]
  tail call void @llvm.dbg.value(metadata i8 %9, i64 0, metadata !953, metadata !884), !dbg !956
  %10 = tail call i32 @getopt_long(i32 %0, i8** %1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i64 0, i64 0), %struct.option* getelementptr inbounds ([18 x %struct.option], [18 x %struct.option]* @longopts, i64 0, i64 0), i32* null) #10, !dbg !964
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !952, metadata !884), !dbg !966
  switch i32 %10, label %31 [
    i32 -1, label %32
    i32 97, label %11
    i32 98, label %24
    i32 100, label %12
    i32 72, label %13
    i32 108, label %14
    i32 109, label %15
    i32 112, label %16
    i32 113, label %17
    i32 114, label %18
    i32 115, label %19
    i32 116, label %20
    i32 84, label %21
    i32 119, label %21
    i32 117, label %22
    i32 128, label %23
    i32 -130, label %27
    i32 -131, label %28
  ], !dbg !967

; <label>:11:                                     ; preds = %8
  store i1 true, i1* @need_boottime, align 1
  store i1 true, i1* @need_deadprocs, align 1
  store i1 true, i1* @need_login, align 1
  store i1 true, i1* @need_initspawn, align 1
  store i1 true, i1* @need_runlevel, align 1
  store i1 true, i1* @need_clockchange, align 1
  store i1 true, i1* @need_users, align 1
  store i1 true, i1* @include_mesg, align 1
  store i1 true, i1* @include_idle, align 1
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !953, metadata !884), !dbg !956
  br label %24, !dbg !968

; <label>:12:                                     ; preds = %8
  store i1 true, i1* @need_deadprocs, align 1
  store i1 true, i1* @include_idle, align 1
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !953, metadata !884), !dbg !956
  br label %24, !dbg !971

; <label>:13:                                     ; preds = %8
  br label %24, !dbg !972

; <label>:14:                                     ; preds = %8
  store i1 true, i1* @need_login, align 1
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !953, metadata !884), !dbg !956
  br label %24, !dbg !973

; <label>:15:                                     ; preds = %8
  br label %24, !dbg !974

; <label>:16:                                     ; preds = %8
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !953, metadata !884), !dbg !956
  br label %24, !dbg !975

; <label>:17:                                     ; preds = %8
  br label %24, !dbg !976

; <label>:18:                                     ; preds = %8
  store i1 true, i1* @need_runlevel, align 1
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !953, metadata !884), !dbg !956
  br label %24, !dbg !977

; <label>:19:                                     ; preds = %8
  br label %24, !dbg !978

; <label>:20:                                     ; preds = %8
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !953, metadata !884), !dbg !956
  br label %24, !dbg !979

; <label>:21:                                     ; preds = %8, %8
  br label %24, !dbg !980

; <label>:22:                                     ; preds = %8
  store i1 true, i1* @need_users, align 1
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !953, metadata !884), !dbg !956
  br label %24, !dbg !981

; <label>:23:                                     ; preds = %8
  br label %24, !dbg !982

; <label>:24:                                     ; preds = %8, %23, %22, %21, %20, %19, %18, %17, %16, %15, %14, %13, %12, %11
  %25 = phi i1* [ @do_lookup, %23 ], [ @include_idle, %22 ], [ @include_mesg, %21 ], [ @need_clockchange, %20 ], [ @short_output, %19 ], [ @include_idle, %18 ], [ @short_list, %17 ], [ @need_initspawn, %16 ], [ @my_line_only, %15 ], [ @include_idle, %14 ], [ @include_heading, %13 ], [ @include_exit, %12 ], [ @include_exit, %11 ], [ @need_boottime, %8 ]
  %26 = phi i8 [ %9, %23 ], [ 0, %22 ], [ %9, %21 ], [ 0, %20 ], [ %9, %19 ], [ 0, %18 ], [ %9, %17 ], [ 0, %16 ], [ %9, %15 ], [ 0, %14 ], [ %9, %13 ], [ 0, %12 ], [ 0, %11 ], [ 0, %8 ]
  store i1 true, i1* %25, align 1
  br label %8, !dbg !956, !llvm.loop !983

; <label>:27:                                     ; preds = %8
  tail call void @usage(i32 0) #15, !dbg !985
  unreachable, !dbg !985

; <label>:28:                                     ; preds = %8
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !986, !tbaa !892
  %30 = load i8*, i8** @Version, align 8, !dbg !986, !tbaa !892
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %29, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i64 0, i64 0), i8* %30, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.21, i64 0, i64 0), i8* null) #10, !dbg !986
  tail call void @exit(i32 0) #14, !dbg !987
  unreachable, !dbg !986

; <label>:31:                                     ; preds = %8
  tail call void @usage(i32 1) #15, !dbg !989
  unreachable, !dbg !989

; <label>:32:                                     ; preds = %8
  %33 = icmp eq i8 %9, 0, !dbg !990
  br i1 %33, label %35, label %34, !dbg !992

; <label>:34:                                     ; preds = %32
  store i1 true, i1* @need_users, align 1
  store i1 true, i1* @short_output, align 1
  br label %35, !dbg !993

; <label>:35:                                     ; preds = %32, %34
  %36 = load i1, i1* @include_exit, align 1
  br i1 %36, label %37, label %38, !dbg !995

; <label>:37:                                     ; preds = %35
  store i1 false, i1* @short_output, align 1
  br label %38, !dbg !996

; <label>:38:                                     ; preds = %37, %35
  %39 = tail call zeroext i1 @hard_locale(i32 2) #10, !dbg !999
  %40 = select i1 %39, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.22, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.23, i64 0, i64 0), !dbg !1001
  %41 = select i1 %39, i32 16, i32 12, !dbg !1001
  store i8* %40, i8** @time_format, align 8, !tbaa !892
  store i32 %41, i32* @time_format_width, align 4, !tbaa !1002
  %42 = load i32, i32* @optind, align 4, !dbg !1004, !tbaa !1002
  %43 = sub nsw i32 %0, %42, !dbg !1005
  switch i32 %43, label %50 [
    i32 2, label %44
    i32 -1, label %45
    i32 0, label %45
    i32 1, label %46
  ], !dbg !1006

; <label>:44:                                     ; preds = %38
  store i1 true, i1* @my_line_only, align 1
  br label %45, !dbg !1007

; <label>:45:                                     ; preds = %38, %38, %44
  tail call fastcc void @who(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0), i32 1), !dbg !1009
  br label %58, !dbg !1010

; <label>:46:                                     ; preds = %38
  %47 = sext i32 %42 to i64, !dbg !1011
  %48 = getelementptr inbounds i8*, i8** %1, i64 %47, !dbg !1011
  %49 = load i8*, i8** %48, align 8, !dbg !1011, !tbaa !892
  tail call fastcc void @who(i8* %49, i32 0), !dbg !1012
  br label %58, !dbg !1013

; <label>:50:                                     ; preds = %38
  %51 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 5) #10, !dbg !1014
  %52 = load i32, i32* @optind, align 4, !dbg !1015, !tbaa !1002
  %53 = add nsw i32 %52, 2, !dbg !1016
  %54 = sext i32 %53 to i64, !dbg !1017
  %55 = getelementptr inbounds i8*, i8** %1, i64 %54, !dbg !1017
  %56 = load i8*, i8** %55, align 8, !dbg !1017, !tbaa !892
  %57 = tail call i8* @quote(i8* %56) #10, !dbg !1018
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %51, i8* %57) #10, !dbg !1020
  tail call void @usage(i32 1) #15, !dbg !1022
  unreachable, !dbg !1022

; <label>:58:                                     ; preds = %46, %45
  ret i32 0, !dbg !1023
}

; Function Attrs: nounwind
declare i8* @bindtextdomain(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i8* @textdomain(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @atexit(void ()*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @who(i8*, i32) unnamed_addr #6 !dbg !1024 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.stat, align 8
  %11 = alloca [7 x i8], align 1
  tail call void @llvm.dbg.declare(metadata [7 x i8]* %11, metadata !229, metadata !884), !dbg !1033
  %12 = alloca [38 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [38 x i8]* %12, metadata !231, metadata !884), !dbg !1049
  %13 = alloca [12 x i8], align 1
  tail call void @llvm.dbg.declare(metadata [12 x i8]* %13, metadata !236, metadata !884), !dbg !1050
  %14 = alloca [257 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [257 x i8]* %14, metadata !240, metadata !884), !dbg !1051
  %15 = alloca i64, align 8
  %16 = alloca %struct.utmpx*, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1028, metadata !884), !dbg !1052
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1029, metadata !884), !dbg !1053
  %17 = bitcast i64* %15 to i8*, !dbg !1054
  call void @llvm.lifetime.start(i64 8, i8* nonnull %17) #10, !dbg !1054
  %18 = bitcast %struct.utmpx** %16 to i8*, !dbg !1055
  call void @llvm.lifetime.start(i64 8, i8* nonnull %18) #10, !dbg !1055
  tail call void @llvm.dbg.value(metadata i64* %15, i64 0, metadata !1030, metadata !1056), !dbg !1057
  tail call void @llvm.dbg.value(metadata %struct.utmpx** %16, i64 0, metadata !1031, metadata !1056), !dbg !1058
  %19 = call i32 @read_utmp(i8* %0, i64* nonnull %15, %struct.utmpx** nonnull %16, i32 %1) #10, !dbg !1059
  %20 = icmp eq i32 %19, 0, !dbg !1061
  br i1 %20, label %25, label %21, !dbg !1062

; <label>:21:                                     ; preds = %2
  %22 = tail call i32* @__errno_location() #1, !dbg !1063
  %23 = load i32, i32* %22, align 4, !dbg !1063, !tbaa !1002
  %24 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %0) #10, !dbg !1064
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %23, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.57, i64 0, i64 0), i8* %24) #10, !dbg !1066
  unreachable, !dbg !1063

; <label>:25:                                     ; preds = %2
  %26 = load i1, i1* @short_list, align 1
  %27 = load i64, i64* %15, align 8, !tbaa !1068
  call void @llvm.dbg.value(metadata i64 %27, i64 0, metadata !1030, metadata !884), !dbg !1057
  %28 = load %struct.utmpx*, %struct.utmpx** %16, align 8, !tbaa !892
  call void @llvm.dbg.value(metadata %struct.utmpx* %28, i64 0, metadata !1031, metadata !884), !dbg !1058
  br i1 %26, label %29, label %59, !dbg !1070

; <label>:29:                                     ; preds = %25
  call void @llvm.dbg.value(metadata i64 %27, i64 0, metadata !1071, metadata !884) #10, !dbg !1081
  call void @llvm.dbg.value(metadata %struct.utmpx* %28, i64 0, metadata !1074, metadata !884) #10, !dbg !1083
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1075, metadata !884) #10, !dbg !1084
  call void @llvm.dbg.value(metadata i64 %27, i64 0, metadata !1071, metadata !884) #10, !dbg !1081
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0), i64 0, metadata !1076, metadata !884) #10, !dbg !1085
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1075, metadata !884) #10, !dbg !1084
  call void @llvm.dbg.value(metadata %struct.utmpx* %28, i64 0, metadata !1074, metadata !884) #10, !dbg !1083
  %30 = icmp eq i64 %27, 0, !dbg !1086
  br i1 %30, label %55, label %31, !dbg !1086

; <label>:31:                                     ; preds = %29
  br label %32, !dbg !1088

; <label>:32:                                     ; preds = %31, %49
  %33 = phi i64 [ %37, %49 ], [ %27, %31 ]
  %34 = phi i8* [ %51, %49 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0), %31 ]
  %35 = phi i64 [ %50, %49 ], [ 0, %31 ]
  %36 = phi %struct.utmpx* [ %52, %49 ], [ %28, %31 ]
  %37 = add i64 %33, -1, !dbg !1088
  %38 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %36, i64 0, i32 4, i64 0, !dbg !1089
  %39 = load i8, i8* %38, align 4, !dbg !1089, !tbaa !1090
  %40 = icmp eq i8 %39, 0, !dbg !1089
  br i1 %40, label %49, label %41, !dbg !1089

; <label>:41:                                     ; preds = %32
  %42 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %36, i64 0, i32 0, !dbg !1091
  %43 = load i16, i16* %42, align 4, !dbg !1091, !tbaa !1093
  %44 = icmp eq i16 %43, 7, !dbg !1091
  br i1 %44, label %45, label %49, !dbg !1098

; <label>:45:                                     ; preds = %41
  %46 = call i8* @extract_trimmed_name(%struct.utmpx* nonnull %36) #10, !dbg !1100
  call void @llvm.dbg.value(metadata i8* %46, i64 0, metadata !1077, metadata !884) #10, !dbg !1101
  %47 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.58, i64 0, i64 0), i8* %34, i8* %46) #10, !dbg !1102
  call void @free(i8* %46) #10, !dbg !1103
  %48 = add i64 %35, 1, !dbg !1104
  call void @llvm.dbg.value(metadata i64 %48, i64 0, metadata !1075, metadata !884) #10, !dbg !1084
  br label %49, !dbg !1105

; <label>:49:                                     ; preds = %45, %41, %32
  %50 = phi i64 [ %48, %45 ], [ %35, %41 ], [ %35, %32 ]
  %51 = phi i8* [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.59, i64 0, i64 0), %45 ], [ %34, %41 ], [ %34, %32 ]
  call void @llvm.dbg.value(metadata i8* %51, i64 0, metadata !1076, metadata !884) #10, !dbg !1085
  call void @llvm.dbg.value(metadata i64 %50, i64 0, metadata !1075, metadata !884) #10, !dbg !1084
  %52 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %36, i64 1, !dbg !1106
  call void @llvm.dbg.value(metadata %struct.utmpx* %52, i64 0, metadata !1074, metadata !884) #10, !dbg !1083
  call void @llvm.dbg.value(metadata i64 %37, i64 0, metadata !1071, metadata !884) #10, !dbg !1081
  call void @llvm.dbg.value(metadata i8* %51, i64 0, metadata !1076, metadata !884) #10, !dbg !1085
  call void @llvm.dbg.value(metadata i64 %50, i64 0, metadata !1075, metadata !884) #10, !dbg !1084
  call void @llvm.dbg.value(metadata %struct.utmpx* %52, i64 0, metadata !1074, metadata !884) #10, !dbg !1083
  %53 = icmp eq i64 %37, 0, !dbg !1086
  br i1 %53, label %54, label %32, !dbg !1086, !llvm.loop !1107

; <label>:54:                                     ; preds = %49
  br label %55, !dbg !1110

; <label>:55:                                     ; preds = %54, %29
  %56 = phi i64 [ 0, %29 ], [ %50, %54 ]
  %57 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.60, i64 0, i64 0), i32 5) #10, !dbg !1110
  %58 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %57, i64 %56) #10, !dbg !1111
  br label %522, !dbg !1112

; <label>:59:                                     ; preds = %25
  call void @llvm.dbg.declare(metadata [12 x i8]* %13, metadata !310, metadata !884) #10, !dbg !1113
  call void @llvm.dbg.declare(metadata [12 x i8]* %13, metadata !1121, metadata !884) #10, !dbg !1126
  call void @llvm.dbg.declare(metadata [12 x i8]* %13, metadata !1128, metadata !884) #10, !dbg !1133
  call void @llvm.dbg.value(metadata i64 %27, i64 0, metadata !1043, metadata !884) #10, !dbg !1135
  call void @llvm.dbg.value(metadata %struct.utmpx* %28, i64 0, metadata !1044, metadata !884) #10, !dbg !1136
  call void @llvm.dbg.value(metadata i64 -9223372036854775808, i64 0, metadata !1046, metadata !884) #10, !dbg !1137
  %60 = load i1, i1* @include_heading, align 1
  br i1 %60, label %61, label %69, !dbg !1138

; <label>:61:                                     ; preds = %59
  %62 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.62, i64 0, i64 0), i32 5) #10, !dbg !1139
  %63 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.63, i64 0, i64 0), i32 5) #10, !dbg !1145
  %64 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.64, i64 0, i64 0), i32 5) #10, !dbg !1147
  %65 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.65, i64 0, i64 0), i32 5) #10, !dbg !1149
  %66 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.66, i64 0, i64 0), i32 5) #10, !dbg !1151
  %67 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.67, i64 0, i64 0), i32 5) #10, !dbg !1152
  %68 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.68, i64 0, i64 0), i32 5) #10, !dbg !1153
  call fastcc void @print_line(i32 -1, i8* %62, i8 signext 32, i32 -1, i8* %63, i8* %64, i8* %65, i8* %66, i8* %67, i8* %68) #10, !dbg !1154
  br label %69, !dbg !1156

; <label>:69:                                     ; preds = %61, %59
  %70 = load i1, i1* @my_line_only, align 1
  br i1 %70, label %71, label %79, !dbg !1157

; <label>:71:                                     ; preds = %69
  %72 = call i8* @ttyname(i32 0) #10, !dbg !1158
  call void @llvm.dbg.value(metadata i8* %72, i64 0, metadata !1045, metadata !884) #10, !dbg !1161
  %73 = icmp eq i8* %72, null, !dbg !1162
  br i1 %73, label %522, label %74, !dbg !1164

; <label>:74:                                     ; preds = %71
  %75 = call i32 @strncmp(i8* nonnull %72, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.61, i64 0, i64 0), i64 5) #13, !dbg !1165
  %76 = icmp eq i32 %75, 0, !dbg !1167
  %77 = getelementptr inbounds i8, i8* %72, i64 5, !dbg !1168
  call void @llvm.dbg.value(metadata i8* %77, i64 0, metadata !1045, metadata !884) #10, !dbg !1161
  %78 = select i1 %76, i8* %77, i8* %72, !dbg !1169
  br label %79, !dbg !1169

; <label>:79:                                     ; preds = %74, %69
  %80 = phi i8* [ %78, %74 ], [ undef, %69 ]
  call void @llvm.dbg.value(metadata i64 -9223372036854775808, i64 0, metadata !1046, metadata !884) #10, !dbg !1137
  call void @llvm.dbg.value(metadata i8* %80, i64 0, metadata !1045, metadata !884) #10, !dbg !1161
  call void @llvm.dbg.value(metadata %struct.utmpx* %28, i64 0, metadata !1044, metadata !884) #10, !dbg !1136
  call void @llvm.dbg.value(metadata i64 %27, i64 0, metadata !1043, metadata !884) #10, !dbg !1135
  %81 = icmp eq i64 %27, 0, !dbg !1170
  br i1 %81, label %522, label %82, !dbg !1170

; <label>:82:                                     ; preds = %79
  %83 = bitcast %struct.stat* %10 to i8*
  %84 = getelementptr inbounds [7 x i8], [7 x i8]* %11, i64 0, i64 0
  %85 = getelementptr inbounds [38 x i8], [38 x i8]* %12, i64 0, i64 0
  %86 = getelementptr inbounds [12 x i8], [12 x i8]* %13, i64 0, i64 0
  %87 = getelementptr inbounds %struct.stat, %struct.stat* %10, i64 0, i32 3
  %88 = getelementptr inbounds %struct.stat, %struct.stat* %10, i64 0, i32 11, i32 0
  %89 = bitcast i64* %9 to i8*
  %90 = getelementptr inbounds [257 x i8], [257 x i8]* %14, i64 0, i64 0
  %91 = getelementptr inbounds [38 x i8], [38 x i8]* %12, i64 0, i64 5
  %92 = bitcast i64* %8 to i8*
  %93 = bitcast i64* %7 to i8*
  %94 = bitcast i64* %6 to i8*
  %95 = bitcast i64* %5 to i8*
  %96 = bitcast i64* %4 to i8*
  %97 = bitcast i64* %3 to i8*
  br label %98, !dbg !1170

; <label>:98:                                     ; preds = %517, %82
  %99 = phi i64 [ %27, %82 ], [ %102, %517 ]
  %100 = phi i64 [ -9223372036854775808, %82 ], [ %518, %517 ]
  %101 = phi %struct.utmpx* [ %28, %82 ], [ %519, %517 ]
  %102 = add i64 %99, -1, !dbg !1172
  %103 = load i1, i1* @my_line_only, align 1
  br i1 %103, label %104, label %108, !dbg !1173

; <label>:104:                                    ; preds = %98
  %105 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %101, i64 0, i32 2, i64 0, !dbg !1174
  %106 = call i32 @strncmp(i8* %80, i8* %105, i64 32) #13, !dbg !1174
  %107 = icmp eq i32 %106, 0, !dbg !1174
  br i1 %107, label %108, label %509, !dbg !1176

; <label>:108:                                    ; preds = %104, %98
  %109 = load i1, i1* @need_users, align 1
  br i1 %109, label %110, label %285, !dbg !1178

; <label>:110:                                    ; preds = %108
  %111 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %101, i64 0, i32 4, i64 0, !dbg !1179
  %112 = load i8, i8* %111, align 4, !dbg !1179, !tbaa !1090
  %113 = icmp eq i8 %112, 0, !dbg !1179
  br i1 %113, label %285, label %114, !dbg !1179

; <label>:114:                                    ; preds = %110
  %115 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %101, i64 0, i32 0, !dbg !1181
  %116 = load i16, i16* %115, align 4, !dbg !1181, !tbaa !1093
  %117 = icmp eq i16 %116, 7, !dbg !1181
  br i1 %117, label %118, label %285, !dbg !1183

; <label>:118:                                    ; preds = %114
  call void @llvm.dbg.value(metadata %struct.utmpx* %101, i64 0, metadata !189, metadata !884) #10, !dbg !1185
  call void @llvm.dbg.value(metadata i64 undef, i64 0, metadata !190, metadata !884) #10, !dbg !1186
  call void @llvm.lifetime.start(i64 144, i8* nonnull %83) #10, !dbg !1187
  call void @llvm.lifetime.start(i64 7, i8* nonnull %84) #10, !dbg !1188
  call void @llvm.lifetime.start(i64 38, i8* nonnull %85) #10, !dbg !1189
  call void @llvm.dbg.value(metadata i8* %85, i64 0, metadata !235, metadata !884) #10, !dbg !1190
  call void @llvm.lifetime.start(i64 12, i8* nonnull %86) #10, !dbg !1050
  %119 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %101, i64 0, i32 1, !dbg !1050
  %120 = load i32, i32* %119, align 4, !dbg !1050, !tbaa !1191
  %121 = sext i32 %120 to i64, !dbg !1050
  %122 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* nonnull %86, i32 1, i64 12, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.74, i64 0, i64 0), i64 %121) #10, !dbg !1050
  %123 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %101, i64 0, i32 2, i64 0, !dbg !1192
  %124 = load i8, i8* %123, align 4, !dbg !1192, !tbaa !1090
  %125 = icmp eq i8 %124, 47, !dbg !1192
  br i1 %125, label %128, label %126, !dbg !1194

; <label>:126:                                    ; preds = %118
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %85, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.61, i64 0, i64 0), i64 6, i32 1, i1 false) #10, !dbg !1195
  call void @llvm.dbg.value(metadata i8* %91, i64 0, metadata !235, metadata !884) #10, !dbg !1190
  call void @llvm.dbg.value(metadata i8* %91, i64 0, metadata !235, metadata !884) #10, !dbg !1190
  call void @llvm.dbg.value(metadata i8* %91, i64 0, metadata !1196, metadata !884) #10, !dbg !1206
  call void @llvm.dbg.value(metadata i8* %123, i64 0, metadata !1203, metadata !884) #10, !dbg !1208
  %127 = icmp eq i8 %124, 0, !dbg !1209
  br i1 %127, label %142, label %128, !dbg !1211

; <label>:128:                                    ; preds = %118, %126
  %129 = phi i8* [ %91, %126 ], [ %85, %118 ]
  %130 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %101, i64 0, i32 2, i64 32, !dbg !1213
  br label %131, !dbg !1214

; <label>:131:                                    ; preds = %138, %128
  %132 = phi i8* [ %135, %138 ], [ %123, %128 ]
  %133 = phi i8* [ %136, %138 ], [ %129, %128 ]
  %134 = phi i8 [ %139, %138 ], [ %124, %128 ]
  %135 = getelementptr inbounds i8, i8* %132, i64 1, !dbg !1214
  call void @llvm.dbg.value(metadata i8* %135, i64 0, metadata !1203, metadata !884) #10, !dbg !1208
  %136 = getelementptr inbounds i8, i8* %133, i64 1, !dbg !1215
  call void @llvm.dbg.value(metadata i8* %136, i64 0, metadata !1196, metadata !884) #10, !dbg !1206
  store i8 %134, i8* %133, align 1, !dbg !1216, !tbaa !1090, !alias.scope !1217, !noalias !1220
  call void @llvm.dbg.value(metadata i8* %136, i64 0, metadata !1196, metadata !884) #10, !dbg !1206
  call void @llvm.dbg.value(metadata i8* %135, i64 0, metadata !1203, metadata !884) #10, !dbg !1208
  %137 = icmp ult i8* %135, %130, !dbg !1222
  br i1 %137, label %138, label %141, !dbg !1224, !llvm.loop !1225

; <label>:138:                                    ; preds = %131
  %139 = load i8, i8* %135, align 1, !tbaa !1090, !alias.scope !1220, !noalias !1217
  %140 = icmp eq i8 %139, 0, !dbg !1209
  br i1 %140, label %141, label %131, !dbg !1211

; <label>:141:                                    ; preds = %131, %138
  br label %142, !dbg !1228

; <label>:142:                                    ; preds = %141, %126
  %143 = phi i8* [ %91, %126 ], [ %136, %141 ]
  store i8 0, i8* %143, align 1, !dbg !1228, !tbaa !1090, !alias.scope !1217, !noalias !1220
  call void @llvm.dbg.value(metadata %struct.stat* %10, i64 0, metadata !191, metadata !1056) #10, !dbg !1229
  call void @llvm.dbg.value(metadata i8* %85, i64 0, metadata !1230, metadata !884) #10, !dbg !1238
  call void @llvm.dbg.value(metadata %struct.stat* %10, i64 0, metadata !1237, metadata !884) #10, !dbg !1238
  %144 = call i32 @__xstat(i32 1, i8* nonnull %85, %struct.stat* nonnull %10) #10, !dbg !1241
  %145 = icmp eq i32 %144, 0, !dbg !1242
  br i1 %145, label %146, label %185, !dbg !1243

; <label>:146:                                    ; preds = %142
  call void @llvm.dbg.value(metadata %struct.stat* %10, i64 0, metadata !191, metadata !1056) #10, !dbg !1229
  call void @llvm.dbg.value(metadata %struct.stat* %10, i64 0, metadata !1244, metadata !884) #10, !dbg !1251
  %147 = load i32, i32* %87, align 8, !dbg !1254, !tbaa !1255
  %148 = trunc i32 %147 to i8, !dbg !1258
  %149 = lshr i8 %148, 3, !dbg !1258
  %150 = and i8 %149, 2, !dbg !1258
  %151 = xor i8 %150, 2, !dbg !1258
  %152 = add nuw nsw i8 %151, 43, !dbg !1258
  call void @llvm.dbg.value(metadata i8 %152, i64 0, metadata !228, metadata !884) #10, !dbg !1259
  %153 = load i64, i64* %88, align 8, !dbg !1260, !tbaa !1261
  call void @llvm.dbg.value(metadata i64 %153, i64 0, metadata !227, metadata !884) #10, !dbg !1262
  call void @llvm.dbg.value(metadata i8 %152, i64 0, metadata !228, metadata !884) #10, !dbg !1259
  call void @llvm.dbg.value(metadata i64 %153, i64 0, metadata !227, metadata !884) #10, !dbg !1262
  %154 = icmp eq i64 %153, 0, !dbg !1263
  br i1 %154, label %185, label %155, !dbg !1265

; <label>:155:                                    ; preds = %146
  call void @llvm.dbg.value(metadata i64 %153, i64 0, metadata !256, metadata !884) #10, !dbg !1266
  call void @llvm.dbg.value(metadata i64 undef, i64 0, metadata !257, metadata !884) #10, !dbg !1268
  %156 = load i64, i64* @idle_string.now, align 8, !dbg !1269, !tbaa !1068
  %157 = icmp eq i64 %156, -9223372036854775808, !dbg !1271
  br i1 %157, label %158, label %160, !dbg !1272

; <label>:158:                                    ; preds = %155
  %159 = call i64 @time(i64* nonnull @idle_string.now) #10, !dbg !1273
  br label %160, !dbg !1273

; <label>:160:                                    ; preds = %158, %155
  %161 = icmp sgt i64 %153, %100, !dbg !1274
  br i1 %161, label %162, label %180, !dbg !1275

; <label>:162:                                    ; preds = %160
  %163 = load i64, i64* @idle_string.now, align 8, !dbg !1276, !tbaa !1068
  %164 = add nsw i64 %163, -86400, !dbg !1278
  %165 = icmp sge i64 %164, %153, !dbg !1279
  %166 = icmp slt i64 %163, %153, !dbg !1280
  %167 = or i1 %166, %165, !dbg !1282
  br i1 %167, label %180, label %168, !dbg !1282

; <label>:168:                                    ; preds = %162
  %169 = sub nsw i64 %163, %153, !dbg !1283
  %170 = trunc i64 %169 to i32, !dbg !1284
  call void @llvm.dbg.value(metadata i32 %170, i64 0, metadata !258, metadata !884) #10, !dbg !1285
  %171 = icmp slt i32 %170, 60, !dbg !1286
  br i1 %171, label %182, label %172, !dbg !1288

; <label>:172:                                    ; preds = %168
  %173 = icmp slt i32 %170, 86400, !dbg !1289
  br i1 %173, label %175, label %174, !dbg !1293

; <label>:174:                                    ; preds = %172
  call void @__assert_fail(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.80, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.81, i64 0, i64 0), i32 205, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__PRETTY_FUNCTION__.idle_string, i64 0, i64 0)) #14, !dbg !1294
  unreachable, !dbg !1294

; <label>:175:                                    ; preds = %172
  %176 = udiv i32 %170, 3600
  %177 = urem i32 %170, 3600
  %178 = udiv i32 %177, 60, !dbg !1296
  %179 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @idle_string.idle_hhmm, i64 0, i64 0), i32 1, i64 6, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.82, i64 0, i64 0), i32 %176, i32 %178) #10, !dbg !1296
  br label %182, !dbg !1297

; <label>:180:                                    ; preds = %162, %160
  %181 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.83, i64 0, i64 0), i32 5) #10, !dbg !1298
  br label %182, !dbg !1299

; <label>:182:                                    ; preds = %180, %175, %168
  %183 = phi i8* [ %181, %180 ], [ getelementptr inbounds ([6 x i8], [6 x i8]* @idle_string.idle_hhmm, i64 0, i64 0), %175 ], [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.79, i64 0, i64 0), %168 ]
  %184 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* nonnull %84, i32 1, i64 7, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.75, i64 0, i64 0), i32 6, i8* %183) #10, !dbg !1300
  br label %188, !dbg !1302

; <label>:185:                                    ; preds = %146, %142
  %186 = phi i8 [ %152, %146 ], [ 63, %142 ]
  %187 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* nonnull %84, i32 1, i64 7, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.76, i64 0, i64 0)) #10, !dbg !1303
  br label %188

; <label>:188:                                    ; preds = %185, %182
  %189 = phi i8 [ %186, %185 ], [ %152, %182 ]
  %190 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %101, i64 0, i32 5, i64 0, !dbg !1304
  %191 = load i8, i8* %190, align 4, !dbg !1304, !tbaa !1090
  %192 = icmp eq i8 %191, 0, !dbg !1304
  br i1 %192, label %257, label %193, !dbg !1305

; <label>:193:                                    ; preds = %188
  call void @llvm.lifetime.start(i64 257, i8* nonnull %90) #10, !dbg !1306
  call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !246, metadata !884) #10, !dbg !1307
  call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !247, metadata !884) #10, !dbg !1308
  %194 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %101, i64 0, i32 5, i64 256, !dbg !1309
  call void @llvm.dbg.value(metadata i8* %194, i64 0, metadata !1205, metadata !884) #10, !dbg !1311
  call void @llvm.dbg.value(metadata i8* %90, i64 0, metadata !1196, metadata !884) #10, !dbg !1312
  call void @llvm.dbg.value(metadata i8* %190, i64 0, metadata !1203, metadata !884) #10, !dbg !1313
  br label %195, !dbg !1314

; <label>:195:                                    ; preds = %202, %193
  %196 = phi i8* [ %190, %193 ], [ %199, %202 ]
  %197 = phi i8* [ %90, %193 ], [ %200, %202 ]
  %198 = phi i8 [ %191, %193 ], [ %203, %202 ]
  %199 = getelementptr inbounds i8, i8* %196, i64 1, !dbg !1315
  call void @llvm.dbg.value(metadata i8* %199, i64 0, metadata !1203, metadata !884) #10, !dbg !1313
  %200 = getelementptr inbounds i8, i8* %197, i64 1, !dbg !1316
  call void @llvm.dbg.value(metadata i8* %200, i64 0, metadata !1196, metadata !884) #10, !dbg !1312
  store i8 %198, i8* %197, align 1, !dbg !1317, !tbaa !1090, !alias.scope !1318, !noalias !1321
  call void @llvm.dbg.value(metadata i8* %200, i64 0, metadata !1196, metadata !884) #10, !dbg !1312
  call void @llvm.dbg.value(metadata i8* %199, i64 0, metadata !1203, metadata !884) #10, !dbg !1313
  %201 = icmp ult i8* %199, %194, !dbg !1323
  br i1 %201, label %202, label %205, !dbg !1324, !llvm.loop !1225

; <label>:202:                                    ; preds = %195
  %203 = load i8, i8* %199, align 1, !tbaa !1090, !alias.scope !1321, !noalias !1318
  %204 = icmp eq i8 %203, 0, !dbg !1325
  br i1 %204, label %205, label %195, !dbg !1314

; <label>:205:                                    ; preds = %202, %195
  store i8 0, i8* %200, align 1, !dbg !1326, !tbaa !1090, !alias.scope !1318, !noalias !1321
  %206 = call i8* @strchr(i8* nonnull %90, i32 58) #10, !dbg !1327
  call void @llvm.dbg.value(metadata i8* %206, i64 0, metadata !247, metadata !884) #10, !dbg !1308
  %207 = icmp eq i8* %206, null, !dbg !1328
  br i1 %207, label %210, label %208, !dbg !1330

; <label>:208:                                    ; preds = %205
  %209 = getelementptr inbounds i8, i8* %206, i64 1, !dbg !1331
  call void @llvm.dbg.value(metadata i8* %209, i64 0, metadata !247, metadata !884) #10, !dbg !1308
  store i8 0, i8* %206, align 1, !dbg !1332, !tbaa !1090
  br label %210, !dbg !1333

; <label>:210:                                    ; preds = %208, %205
  %211 = phi i8* [ %209, %208 ], [ null, %205 ]
  call void @llvm.dbg.value(metadata i8* %211, i64 0, metadata !247, metadata !884) #10, !dbg !1308
  %212 = load i8, i8* %90, align 16, !dbg !1334, !tbaa !1090
  %213 = icmp eq i8 %212, 0, !dbg !1334
  br i1 %213, label %218, label %214, !dbg !1336

; <label>:214:                                    ; preds = %210
  %215 = load i1, i1* @do_lookup, align 1
  br i1 %215, label %216, label %218, !dbg !1337

; <label>:216:                                    ; preds = %214
  %217 = call i8* @canon_host(i8* nonnull %90) #10, !dbg !1339
  call void @llvm.dbg.value(metadata i8* %217, i64 0, metadata !246, metadata !884) #10, !dbg !1307
  br label %218, !dbg !1341

; <label>:218:                                    ; preds = %216, %214, %210
  %219 = phi i8* [ %217, %216 ], [ null, %214 ], [ null, %210 ]
  call void @llvm.dbg.value(metadata i8* %219, i64 0, metadata !246, metadata !884) #10, !dbg !1307
  %220 = icmp eq i8* %219, null, !dbg !1342
  call void @llvm.dbg.value(metadata i8* %90, i64 0, metadata !246, metadata !884) #10, !dbg !1307
  %221 = select i1 %220, i8* %90, i8* %219, !dbg !1344
  call void @llvm.dbg.value(metadata i8* %221, i64 0, metadata !246, metadata !884) #10, !dbg !1307
  %222 = icmp eq i8* %211, null, !dbg !1345
  %223 = load i64, i64* @print_user.hostlen, align 8, !tbaa !1068
  %224 = call i64 @strlen(i8* %221) #13, !dbg !1347
  br i1 %222, label %240, label %225, !dbg !1350

; <label>:225:                                    ; preds = %218
  %226 = call i64 @strlen(i8* nonnull %211) #13, !dbg !1351
  %227 = add i64 %224, 4, !dbg !1353
  %228 = add i64 %227, %226, !dbg !1354
  %229 = icmp ult i64 %223, %228, !dbg !1355
  br i1 %229, label %232, label %230, !dbg !1356

; <label>:230:                                    ; preds = %225
  %231 = load i8*, i8** @print_user.hoststr, align 8, !tbaa !892
  br label %236, !dbg !1356

; <label>:232:                                    ; preds = %225
  store i64 %228, i64* @print_user.hostlen, align 8, !dbg !1357, !tbaa !1068
  %233 = load i8*, i8** @print_user.hoststr, align 8, !dbg !1359, !tbaa !892
  call void @free(i8* %233) #10, !dbg !1360
  %234 = load i64, i64* @print_user.hostlen, align 8, !dbg !1361, !tbaa !1068
  %235 = call noalias i8* @xmalloc(i64 %234) #10, !dbg !1362
  store i8* %235, i8** @print_user.hoststr, align 8, !dbg !1363, !tbaa !892
  br label %236, !dbg !1364

; <label>:236:                                    ; preds = %232, %230
  %237 = phi i8* [ %231, %230 ], [ %235, %232 ], !dbg !1365
  %238 = call i64 @llvm.objectsize.i64.p0i8(i8* %237, i1 false) #10, !dbg !1365
  %239 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* %237, i32 1, i64 %238, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.77, i64 0, i64 0), i8* %221, i8* nonnull %211) #10, !dbg !1365
  br label %253, !dbg !1366

; <label>:240:                                    ; preds = %218
  %241 = add i64 %224, 3, !dbg !1367
  %242 = icmp ult i64 %223, %241, !dbg !1370
  br i1 %242, label %245, label %243, !dbg !1371

; <label>:243:                                    ; preds = %240
  %244 = load i8*, i8** @print_user.hoststr, align 8, !tbaa !892
  br label %249, !dbg !1371

; <label>:245:                                    ; preds = %240
  store i64 %241, i64* @print_user.hostlen, align 8, !dbg !1372, !tbaa !1068
  %246 = load i8*, i8** @print_user.hoststr, align 8, !dbg !1374, !tbaa !892
  call void @free(i8* %246) #10, !dbg !1375
  %247 = load i64, i64* @print_user.hostlen, align 8, !dbg !1376, !tbaa !1068
  %248 = call noalias i8* @xmalloc(i64 %247) #10, !dbg !1377
  store i8* %248, i8** @print_user.hoststr, align 8, !dbg !1378, !tbaa !892
  br label %249, !dbg !1379

; <label>:249:                                    ; preds = %245, %243
  %250 = phi i8* [ %244, %243 ], [ %248, %245 ], !dbg !1380
  %251 = call i64 @llvm.objectsize.i64.p0i8(i8* %250, i1 false) #10, !dbg !1380
  %252 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* %250, i32 1, i64 %251, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.78, i64 0, i64 0), i8* %221) #10, !dbg !1380
  br label %253

; <label>:253:                                    ; preds = %249, %236
  %254 = icmp eq i8* %221, %90, !dbg !1381
  br i1 %254, label %256, label %255, !dbg !1383

; <label>:255:                                    ; preds = %253
  call void @free(i8* %221) #10, !dbg !1384
  br label %256, !dbg !1384

; <label>:256:                                    ; preds = %255, %253
  call void @llvm.lifetime.end(i64 257, i8* nonnull %90) #10, !dbg !1385
  br label %268, !dbg !1386

; <label>:257:                                    ; preds = %188
  %258 = load i64, i64* @print_user.hostlen, align 8, !dbg !1387, !tbaa !1068
  %259 = icmp eq i64 %258, 0, !dbg !1390
  br i1 %259, label %262, label %260, !dbg !1391

; <label>:260:                                    ; preds = %257
  %261 = load i8*, i8** @print_user.hoststr, align 8, !tbaa !892
  br label %266, !dbg !1391

; <label>:262:                                    ; preds = %257
  store i64 1, i64* @print_user.hostlen, align 8, !dbg !1392, !tbaa !1068
  %263 = load i8*, i8** @print_user.hoststr, align 8, !dbg !1394, !tbaa !892
  call void @free(i8* %263) #10, !dbg !1395
  %264 = load i64, i64* @print_user.hostlen, align 8, !dbg !1396, !tbaa !1068
  %265 = call noalias i8* @xmalloc(i64 %264) #10, !dbg !1397
  store i8* %265, i8** @print_user.hoststr, align 8, !dbg !1398, !tbaa !892
  br label %266, !dbg !1399

; <label>:266:                                    ; preds = %262, %260
  %267 = phi i8* [ %261, %260 ], [ %265, %262 ], !dbg !1400
  store i8 0, i8* %267, align 1, !dbg !1401, !tbaa !1090
  br label %268

; <label>:268:                                    ; preds = %266, %256
  call void @llvm.dbg.value(metadata %struct.utmpx* %101, i64 0, metadata !272, metadata !884) #10, !dbg !1402
  call void @llvm.lifetime.start(i64 8, i8* nonnull %89) #10, !dbg !1404
  %269 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %101, i64 0, i32 8, i32 0, !dbg !1405
  %270 = load i32, i32* %269, align 4, !dbg !1405, !tbaa !1406
  %271 = sext i32 %270 to i64, !dbg !1405
  call void @llvm.dbg.value(metadata i64 %271, i64 0, metadata !273, metadata !884) #10, !dbg !1407
  store i64 %271, i64* %9, align 8, !dbg !1407, !tbaa !1068
  call void @llvm.dbg.value(metadata i64* %9, i64 0, metadata !273, metadata !1056) #10, !dbg !1407
  %272 = call %struct.tm* @localtime(i64* nonnull %9) #10, !dbg !1408
  call void @llvm.dbg.value(metadata %struct.tm* %272, i64 0, metadata !274, metadata !884) #10, !dbg !1409
  %273 = icmp eq %struct.tm* %272, null, !dbg !1410
  br i1 %273, label %277, label %274, !dbg !1412

; <label>:274:                                    ; preds = %268
  %275 = load i8*, i8** @time_format, align 8, !dbg !1413, !tbaa !892
  %276 = call i64 @strftime(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @time_string.buf, i64 0, i64 0), i64 33, i8* %275, %struct.tm* nonnull %272) #10, !dbg !1415
  br label %280, !dbg !1416

; <label>:277:                                    ; preds = %268
  %278 = load i64, i64* %9, align 8, !dbg !1417, !tbaa !1068
  call void @llvm.dbg.value(metadata i64 %278, i64 0, metadata !273, metadata !884) #10, !dbg !1407
  %279 = call i8* @imaxtostr(i64 %278, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @time_string.buf, i64 0, i64 0)) #10, !dbg !1418
  br label %280, !dbg !1426

; <label>:280:                                    ; preds = %277, %274
  %281 = phi i8* [ getelementptr inbounds ([33 x i8], [33 x i8]* @time_string.buf, i64 0, i64 0), %274 ], [ %279, %277 ]
  call void @llvm.lifetime.end(i64 8, i8* nonnull %89) #10, !dbg !1427
  %282 = load i8*, i8** @print_user.hoststr, align 8, !dbg !1428, !tbaa !892
  %283 = icmp ne i8* %282, null, !dbg !1428
  %284 = select i1 %283, i8* %282, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0), !dbg !1428
  call fastcc void @print_line(i32 32, i8* nonnull %111, i8 signext %189, i32 32, i8* nonnull %123, i8* %281, i8* nonnull %84, i8* nonnull %86, i8* %284, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0)) #10, !dbg !1429
  call void @llvm.lifetime.end(i64 12, i8* nonnull %86) #10, !dbg !1431
  call void @llvm.lifetime.end(i64 38, i8* nonnull %85) #10, !dbg !1431
  call void @llvm.lifetime.end(i64 7, i8* nonnull %84) #10, !dbg !1431
  call void @llvm.lifetime.end(i64 144, i8* nonnull %83) #10, !dbg !1431
  br label %509, !dbg !1432

; <label>:285:                                    ; preds = %114, %110, %108
  %286 = load i1, i1* @need_runlevel, align 1
  br i1 %286, label %287, label %341, !dbg !1433

; <label>:287:                                    ; preds = %285
  %288 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %101, i64 0, i32 0, !dbg !1434
  %289 = load i16, i16* %288, align 4, !dbg !1434, !tbaa !1093
  %290 = icmp eq i16 %289, 1, !dbg !1434
  br i1 %290, label %291, label %341, !dbg !1436

; <label>:291:                                    ; preds = %287
  call void @llvm.dbg.value(metadata %struct.utmpx* %101, i64 0, metadata !299, metadata !884) #10, !dbg !1437
  %292 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %101, i64 0, i32 1, !dbg !1439
  %293 = load i32, i32* %292, align 4, !dbg !1439, !tbaa !1191
  %294 = sdiv i32 %293, 256, !dbg !1440
  %295 = load i8*, i8** @print_runlevel.runlevline, align 8, !dbg !1441, !tbaa !892
  %296 = icmp eq i8* %295, null, !dbg !1441
  br i1 %296, label %297, label %302, !dbg !1443

; <label>:297:                                    ; preds = %291
  %298 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.84, i64 0, i64 0), i32 5) #10, !dbg !1444
  %299 = call i64 @strlen(i8* %298) #13, !dbg !1445
  %300 = add i64 %299, 3, !dbg !1447
  %301 = call noalias i8* @xmalloc(i64 %300) #10, !dbg !1448
  store i8* %301, i8** @print_runlevel.runlevline, align 8, !dbg !1450, !tbaa !892
  br label %302, !dbg !1451

; <label>:302:                                    ; preds = %297, %291
  %303 = phi i8* [ %295, %291 ], [ %301, %297 ], !dbg !1452
  %304 = call i64 @llvm.objectsize.i64.p0i8(i8* %303, i1 false) #10, !dbg !1452
  %305 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.84, i64 0, i64 0), i32 5) #10, !dbg !1452
  %306 = and i32 %293, 255, !dbg !1452
  %307 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* %303, i32 1, i64 %304, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.85, i64 0, i64 0), i8* %305, i32 %306) #10, !dbg !1453
  %308 = load i8*, i8** @print_runlevel.comment, align 8, !dbg !1455, !tbaa !892
  %309 = icmp eq i8* %308, null, !dbg !1455
  br i1 %309, label %310, label %315, !dbg !1457

; <label>:310:                                    ; preds = %302
  %311 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.86, i64 0, i64 0), i32 5) #10, !dbg !1458
  %312 = call i64 @strlen(i8* %311) #13, !dbg !1459
  %313 = add i64 %312, 2, !dbg !1461
  %314 = call noalias i8* @xmalloc(i64 %313) #10, !dbg !1462
  store i8* %314, i8** @print_runlevel.comment, align 8, !dbg !1464, !tbaa !892
  br label %315, !dbg !1465

; <label>:315:                                    ; preds = %310, %302
  %316 = phi i8* [ %308, %302 ], [ %314, %310 ], !dbg !1466
  %317 = call i64 @llvm.objectsize.i64.p0i8(i8* %316, i1 false) #10, !dbg !1466
  %318 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.86, i64 0, i64 0), i32 5) #10, !dbg !1466
  %319 = and i32 %294, 255, !dbg !1466
  %320 = icmp eq i32 %319, 78, !dbg !1466
  %321 = select i1 %320, i32 83, i32 %319, !dbg !1466
  %322 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* %316, i32 1, i64 %317, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.87, i64 0, i64 0), i8* %318, i32 %321) #10, !dbg !1467
  %323 = load i8*, i8** @print_runlevel.runlevline, align 8, !dbg !1469, !tbaa !892
  call void @llvm.dbg.value(metadata %struct.utmpx* %101, i64 0, metadata !272, metadata !884) #10, !dbg !1470
  call void @llvm.lifetime.start(i64 8, i8* nonnull %92) #10, !dbg !1472
  %324 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %101, i64 0, i32 8, i32 0, !dbg !1473
  %325 = load i32, i32* %324, align 4, !dbg !1473, !tbaa !1406
  %326 = sext i32 %325 to i64, !dbg !1473
  call void @llvm.dbg.value(metadata i64 %326, i64 0, metadata !273, metadata !884) #10, !dbg !1474
  store i64 %326, i64* %8, align 8, !dbg !1474, !tbaa !1068
  call void @llvm.dbg.value(metadata i64* %8, i64 0, metadata !273, metadata !1056) #10, !dbg !1474
  %327 = call %struct.tm* @localtime(i64* nonnull %8) #10, !dbg !1475
  call void @llvm.dbg.value(metadata %struct.tm* %327, i64 0, metadata !274, metadata !884) #10, !dbg !1476
  %328 = icmp eq %struct.tm* %327, null, !dbg !1477
  br i1 %328, label %332, label %329, !dbg !1478

; <label>:329:                                    ; preds = %315
  %330 = load i8*, i8** @time_format, align 8, !dbg !1479, !tbaa !892
  %331 = call i64 @strftime(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @time_string.buf, i64 0, i64 0), i64 33, i8* %330, %struct.tm* nonnull %327) #10, !dbg !1480
  br label %335, !dbg !1481

; <label>:332:                                    ; preds = %315
  %333 = load i64, i64* %8, align 8, !dbg !1482, !tbaa !1068
  call void @llvm.dbg.value(metadata i64 %333, i64 0, metadata !273, metadata !884) #10, !dbg !1474
  %334 = call i8* @imaxtostr(i64 %333, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @time_string.buf, i64 0, i64 0)) #10, !dbg !1483
  br label %335, !dbg !1485

; <label>:335:                                    ; preds = %332, %329
  %336 = phi i8* [ getelementptr inbounds ([33 x i8], [33 x i8]* @time_string.buf, i64 0, i64 0), %329 ], [ %334, %332 ]
  call void @llvm.lifetime.end(i64 8, i8* nonnull %92) #10, !dbg !1486
  call void @llvm.dbg.value(metadata i32 %319, i64 0, metadata !1487, metadata !884) #10, !dbg !1493
  %337 = add nsw i32 %319, -32, !dbg !1495
  %338 = icmp ult i32 %337, 95, !dbg !1495
  %339 = load i8*, i8** @print_runlevel.comment, align 8, !dbg !1496
  %340 = select i1 %338, i8* %339, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0), !dbg !1497
  call fastcc void @print_line(i32 -1, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0), i8 signext 32, i32 -1, i8* %323, i8* %336, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0), i8* %340, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0)) #10, !dbg !1498
  br label %509, !dbg !1499

; <label>:341:                                    ; preds = %287, %285
  %342 = load i1, i1* @need_boottime, align 1
  br i1 %342, label %343, label %362, !dbg !1500

; <label>:343:                                    ; preds = %341
  %344 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %101, i64 0, i32 0, !dbg !1501
  %345 = load i16, i16* %344, align 4, !dbg !1501, !tbaa !1093
  %346 = icmp eq i16 %345, 2, !dbg !1501
  br i1 %346, label %347, label %362, !dbg !1503

; <label>:347:                                    ; preds = %343
  call void @llvm.dbg.value(metadata %struct.utmpx* %101, i64 0, metadata !1504, metadata !884) #10, !dbg !1507
  %348 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.88, i64 0, i64 0), i32 5) #10, !dbg !1509
  call void @llvm.dbg.value(metadata %struct.utmpx* %101, i64 0, metadata !272, metadata !884) #10, !dbg !1510
  call void @llvm.lifetime.start(i64 8, i8* nonnull %93) #10, !dbg !1512
  %349 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %101, i64 0, i32 8, i32 0, !dbg !1513
  %350 = load i32, i32* %349, align 4, !dbg !1513, !tbaa !1406
  %351 = sext i32 %350 to i64, !dbg !1513
  call void @llvm.dbg.value(metadata i64 %351, i64 0, metadata !273, metadata !884) #10, !dbg !1514
  store i64 %351, i64* %7, align 8, !dbg !1514, !tbaa !1068
  call void @llvm.dbg.value(metadata i64* %7, i64 0, metadata !273, metadata !1056) #10, !dbg !1514
  %352 = call %struct.tm* @localtime(i64* nonnull %7) #10, !dbg !1515
  call void @llvm.dbg.value(metadata %struct.tm* %352, i64 0, metadata !274, metadata !884) #10, !dbg !1516
  %353 = icmp eq %struct.tm* %352, null, !dbg !1517
  br i1 %353, label %357, label %354, !dbg !1518

; <label>:354:                                    ; preds = %347
  %355 = load i8*, i8** @time_format, align 8, !dbg !1519, !tbaa !892
  %356 = call i64 @strftime(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @time_string.buf, i64 0, i64 0), i64 33, i8* %355, %struct.tm* nonnull %352) #10, !dbg !1520
  br label %360, !dbg !1521

; <label>:357:                                    ; preds = %347
  %358 = load i64, i64* %7, align 8, !dbg !1522, !tbaa !1068
  call void @llvm.dbg.value(metadata i64 %358, i64 0, metadata !273, metadata !884) #10, !dbg !1514
  %359 = call i8* @imaxtostr(i64 %358, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @time_string.buf, i64 0, i64 0)) #10, !dbg !1523
  br label %360, !dbg !1525

; <label>:360:                                    ; preds = %357, %354
  %361 = phi i8* [ getelementptr inbounds ([33 x i8], [33 x i8]* @time_string.buf, i64 0, i64 0), %354 ], [ %359, %357 ]
  call void @llvm.lifetime.end(i64 8, i8* nonnull %93) #10, !dbg !1526
  call fastcc void @print_line(i32 -1, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0), i8 signext 32, i32 -1, i8* %348, i8* %361, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0)) #10, !dbg !1527
  br label %509, !dbg !1529

; <label>:362:                                    ; preds = %343, %341
  %363 = load i1, i1* @need_clockchange, align 1
  br i1 %363, label %364, label %383, !dbg !1530

; <label>:364:                                    ; preds = %362
  %365 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %101, i64 0, i32 0, !dbg !1531
  %366 = load i16, i16* %365, align 4, !dbg !1531, !tbaa !1093
  %367 = icmp eq i16 %366, 3, !dbg !1531
  br i1 %367, label %368, label %383, !dbg !1533

; <label>:368:                                    ; preds = %364
  call void @llvm.dbg.value(metadata %struct.utmpx* %101, i64 0, metadata !1534, metadata !884) #10, !dbg !1537
  %369 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.89, i64 0, i64 0), i32 5) #10, !dbg !1539
  call void @llvm.dbg.value(metadata %struct.utmpx* %101, i64 0, metadata !272, metadata !884) #10, !dbg !1540
  call void @llvm.lifetime.start(i64 8, i8* nonnull %94) #10, !dbg !1542
  %370 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %101, i64 0, i32 8, i32 0, !dbg !1543
  %371 = load i32, i32* %370, align 4, !dbg !1543, !tbaa !1406
  %372 = sext i32 %371 to i64, !dbg !1543
  call void @llvm.dbg.value(metadata i64 %372, i64 0, metadata !273, metadata !884) #10, !dbg !1544
  store i64 %372, i64* %6, align 8, !dbg !1544, !tbaa !1068
  call void @llvm.dbg.value(metadata i64* %6, i64 0, metadata !273, metadata !1056) #10, !dbg !1544
  %373 = call %struct.tm* @localtime(i64* nonnull %6) #10, !dbg !1545
  call void @llvm.dbg.value(metadata %struct.tm* %373, i64 0, metadata !274, metadata !884) #10, !dbg !1546
  %374 = icmp eq %struct.tm* %373, null, !dbg !1547
  br i1 %374, label %378, label %375, !dbg !1548

; <label>:375:                                    ; preds = %368
  %376 = load i8*, i8** @time_format, align 8, !dbg !1549, !tbaa !892
  %377 = call i64 @strftime(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @time_string.buf, i64 0, i64 0), i64 33, i8* %376, %struct.tm* nonnull %373) #10, !dbg !1550
  br label %381, !dbg !1551

; <label>:378:                                    ; preds = %368
  %379 = load i64, i64* %6, align 8, !dbg !1552, !tbaa !1068
  call void @llvm.dbg.value(metadata i64 %379, i64 0, metadata !273, metadata !884) #10, !dbg !1544
  %380 = call i8* @imaxtostr(i64 %379, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @time_string.buf, i64 0, i64 0)) #10, !dbg !1553
  br label %381, !dbg !1555

; <label>:381:                                    ; preds = %378, %375
  %382 = phi i8* [ getelementptr inbounds ([33 x i8], [33 x i8]* @time_string.buf, i64 0, i64 0), %375 ], [ %380, %378 ]
  call void @llvm.lifetime.end(i64 8, i8* nonnull %94) #10, !dbg !1556
  call fastcc void @print_line(i32 -1, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0), i8 signext 32, i32 -1, i8* %369, i8* %382, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0)) #10, !dbg !1557
  br label %509, !dbg !1559

; <label>:383:                                    ; preds = %364, %362
  %384 = load i1, i1* @need_initspawn, align 1
  br i1 %384, label %385, label %417, !dbg !1560

; <label>:385:                                    ; preds = %383
  %386 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %101, i64 0, i32 0, !dbg !1561
  %387 = load i16, i16* %386, align 4, !dbg !1561, !tbaa !1093
  %388 = icmp eq i16 %387, 5, !dbg !1561
  br i1 %388, label %389, label %417, !dbg !1563

; <label>:389:                                    ; preds = %385
  call void @llvm.dbg.value(metadata %struct.utmpx* %101, i64 0, metadata !1131, metadata !884) #10, !dbg !1564
  call void @llvm.dbg.value(metadata %struct.utmpx* %101, i64 0, metadata !1565, metadata !884) #10, !dbg !1571
  %390 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.90, i64 0, i64 0), i32 5) #10, !dbg !1573
  %391 = call i64 @strlen(i8* %390) #13, !dbg !1574
  %392 = add i64 %391, 5, !dbg !1576
  %393 = call noalias i8* @xmalloc(i64 %392) #10, !dbg !1577
  call void @llvm.dbg.value(metadata i8* %393, i64 0, metadata !1570, metadata !884) #10, !dbg !1579
  %394 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.90, i64 0, i64 0), i32 5) #10, !dbg !1580
  call void @llvm.dbg.value(metadata i8* %393, i64 0, metadata !1581, metadata !884) #10, !dbg !1588
  call void @llvm.dbg.value(metadata i8* %394, i64 0, metadata !1587, metadata !884) #10, !dbg !1588
  %395 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %393, i1 false) #10, !dbg !1590
  %396 = call i8* @__strcpy_chk(i8* nonnull %393, i8* nonnull %394, i64 %395) #10, !dbg !1591
  %397 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %101, i64 0, i32 3, i64 0, !dbg !1592
  call void @llvm.dbg.value(metadata i8* %393, i64 0, metadata !1593, metadata !884) #10, !dbg !1598
  call void @llvm.dbg.value(metadata i8* %397, i64 0, metadata !1596, metadata !884) #10, !dbg !1598
  call void @llvm.dbg.value(metadata i64 4, i64 0, metadata !1597, metadata !884) #10, !dbg !1598
  %398 = call i8* @__strncat_chk(i8* nonnull %393, i8* nonnull %397, i64 4, i64 %395) #10, !dbg !1600
  call void @llvm.dbg.value(metadata i8* %393, i64 0, metadata !1132, metadata !884) #10, !dbg !1601
  call void @llvm.lifetime.start(i64 12, i8* nonnull %86) #10, !dbg !1133
  %399 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %101, i64 0, i32 1, !dbg !1133
  %400 = load i32, i32* %399, align 4, !dbg !1133, !tbaa !1191
  %401 = sext i32 %400 to i64, !dbg !1133
  %402 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* nonnull %86, i32 1, i64 12, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.74, i64 0, i64 0), i64 %401) #10, !dbg !1133
  %403 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %101, i64 0, i32 2, i64 0, !dbg !1602
  call void @llvm.dbg.value(metadata %struct.utmpx* %101, i64 0, metadata !272, metadata !884) #10, !dbg !1603
  call void @llvm.lifetime.start(i64 8, i8* nonnull %95) #10, !dbg !1605
  %404 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %101, i64 0, i32 8, i32 0, !dbg !1606
  %405 = load i32, i32* %404, align 4, !dbg !1606, !tbaa !1406
  %406 = sext i32 %405 to i64, !dbg !1606
  call void @llvm.dbg.value(metadata i64 %406, i64 0, metadata !273, metadata !884) #10, !dbg !1607
  store i64 %406, i64* %5, align 8, !dbg !1607, !tbaa !1068
  call void @llvm.dbg.value(metadata i64* %5, i64 0, metadata !273, metadata !1056) #10, !dbg !1607
  %407 = call %struct.tm* @localtime(i64* nonnull %5) #10, !dbg !1608
  call void @llvm.dbg.value(metadata %struct.tm* %407, i64 0, metadata !274, metadata !884) #10, !dbg !1609
  %408 = icmp eq %struct.tm* %407, null, !dbg !1610
  br i1 %408, label %412, label %409, !dbg !1611

; <label>:409:                                    ; preds = %389
  %410 = load i8*, i8** @time_format, align 8, !dbg !1612, !tbaa !892
  %411 = call i64 @strftime(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @time_string.buf, i64 0, i64 0), i64 33, i8* %410, %struct.tm* nonnull %407) #10, !dbg !1613
  br label %415, !dbg !1614

; <label>:412:                                    ; preds = %389
  %413 = load i64, i64* %5, align 8, !dbg !1615, !tbaa !1068
  call void @llvm.dbg.value(metadata i64 %413, i64 0, metadata !273, metadata !884) #10, !dbg !1607
  %414 = call i8* @imaxtostr(i64 %413, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @time_string.buf, i64 0, i64 0)) #10, !dbg !1616
  br label %415, !dbg !1618

; <label>:415:                                    ; preds = %412, %409
  %416 = phi i8* [ getelementptr inbounds ([33 x i8], [33 x i8]* @time_string.buf, i64 0, i64 0), %409 ], [ %414, %412 ]
  call void @llvm.lifetime.end(i64 8, i8* nonnull %95) #10, !dbg !1619
  call fastcc void @print_line(i32 -1, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0), i8 signext 32, i32 32, i8* %403, i8* %416, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0), i8* nonnull %86, i8* %393, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0)) #10, !dbg !1620
  call void @free(i8* %393) #10, !dbg !1621
  call void @llvm.lifetime.end(i64 12, i8* nonnull %86) #10, !dbg !1622
  br label %509, !dbg !1623

; <label>:417:                                    ; preds = %385, %383
  %418 = load i1, i1* @need_login, align 1
  br i1 %418, label %419, label %452, !dbg !1624

; <label>:419:                                    ; preds = %417
  %420 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %101, i64 0, i32 0, !dbg !1625
  %421 = load i16, i16* %420, align 4, !dbg !1625, !tbaa !1093
  %422 = icmp eq i16 %421, 6, !dbg !1625
  br i1 %422, label %423, label %452, !dbg !1627

; <label>:423:                                    ; preds = %419
  call void @llvm.dbg.value(metadata %struct.utmpx* %101, i64 0, metadata !1124, metadata !884) #10, !dbg !1628
  call void @llvm.dbg.value(metadata %struct.utmpx* %101, i64 0, metadata !1565, metadata !884) #10, !dbg !1629
  %424 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.90, i64 0, i64 0), i32 5) #10, !dbg !1631
  %425 = call i64 @strlen(i8* %424) #13, !dbg !1632
  %426 = add i64 %425, 5, !dbg !1633
  %427 = call noalias i8* @xmalloc(i64 %426) #10, !dbg !1634
  call void @llvm.dbg.value(metadata i8* %427, i64 0, metadata !1570, metadata !884) #10, !dbg !1635
  %428 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.90, i64 0, i64 0), i32 5) #10, !dbg !1636
  call void @llvm.dbg.value(metadata i8* %427, i64 0, metadata !1581, metadata !884) #10, !dbg !1637
  call void @llvm.dbg.value(metadata i8* %428, i64 0, metadata !1587, metadata !884) #10, !dbg !1637
  %429 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %427, i1 false) #10, !dbg !1639
  %430 = call i8* @__strcpy_chk(i8* nonnull %427, i8* nonnull %428, i64 %429) #10, !dbg !1640
  %431 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %101, i64 0, i32 3, i64 0, !dbg !1641
  call void @llvm.dbg.value(metadata i8* %427, i64 0, metadata !1593, metadata !884) #10, !dbg !1642
  call void @llvm.dbg.value(metadata i8* %431, i64 0, metadata !1596, metadata !884) #10, !dbg !1642
  call void @llvm.dbg.value(metadata i64 4, i64 0, metadata !1597, metadata !884) #10, !dbg !1642
  %432 = call i8* @__strncat_chk(i8* nonnull %427, i8* nonnull %431, i64 4, i64 %429) #10, !dbg !1644
  call void @llvm.dbg.value(metadata i8* %427, i64 0, metadata !1125, metadata !884) #10, !dbg !1645
  call void @llvm.lifetime.start(i64 12, i8* nonnull %86) #10, !dbg !1126
  %433 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %101, i64 0, i32 1, !dbg !1126
  %434 = load i32, i32* %433, align 4, !dbg !1126, !tbaa !1191
  %435 = sext i32 %434 to i64, !dbg !1126
  %436 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* nonnull %86, i32 1, i64 12, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.74, i64 0, i64 0), i64 %435) #10, !dbg !1126
  %437 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.91, i64 0, i64 0), i32 5) #10, !dbg !1646
  %438 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %101, i64 0, i32 2, i64 0, !dbg !1647
  call void @llvm.dbg.value(metadata %struct.utmpx* %101, i64 0, metadata !272, metadata !884) #10, !dbg !1648
  call void @llvm.lifetime.start(i64 8, i8* nonnull %96) #10, !dbg !1650
  %439 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %101, i64 0, i32 8, i32 0, !dbg !1651
  %440 = load i32, i32* %439, align 4, !dbg !1651, !tbaa !1406
  %441 = sext i32 %440 to i64, !dbg !1651
  call void @llvm.dbg.value(metadata i64 %441, i64 0, metadata !273, metadata !884) #10, !dbg !1652
  store i64 %441, i64* %4, align 8, !dbg !1652, !tbaa !1068
  call void @llvm.dbg.value(metadata i64* %4, i64 0, metadata !273, metadata !1056) #10, !dbg !1652
  %442 = call %struct.tm* @localtime(i64* nonnull %4) #10, !dbg !1653
  call void @llvm.dbg.value(metadata %struct.tm* %442, i64 0, metadata !274, metadata !884) #10, !dbg !1654
  %443 = icmp eq %struct.tm* %442, null, !dbg !1655
  br i1 %443, label %447, label %444, !dbg !1656

; <label>:444:                                    ; preds = %423
  %445 = load i8*, i8** @time_format, align 8, !dbg !1657, !tbaa !892
  %446 = call i64 @strftime(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @time_string.buf, i64 0, i64 0), i64 33, i8* %445, %struct.tm* nonnull %442) #10, !dbg !1658
  br label %450, !dbg !1659

; <label>:447:                                    ; preds = %423
  %448 = load i64, i64* %4, align 8, !dbg !1660, !tbaa !1068
  call void @llvm.dbg.value(metadata i64 %448, i64 0, metadata !273, metadata !884) #10, !dbg !1652
  %449 = call i8* @imaxtostr(i64 %448, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @time_string.buf, i64 0, i64 0)) #10, !dbg !1661
  br label %450, !dbg !1663

; <label>:450:                                    ; preds = %447, %444
  %451 = phi i8* [ getelementptr inbounds ([33 x i8], [33 x i8]* @time_string.buf, i64 0, i64 0), %444 ], [ %449, %447 ]
  call void @llvm.lifetime.end(i64 8, i8* nonnull %96) #10, !dbg !1664
  call fastcc void @print_line(i32 -1, i8* %437, i8 signext 32, i32 32, i8* %438, i8* %451, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0), i8* nonnull %86, i8* %427, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0)) #10, !dbg !1665
  call void @free(i8* %427) #10, !dbg !1667
  call void @llvm.lifetime.end(i64 12, i8* nonnull %86) #10, !dbg !1668
  br label %509, !dbg !1669

; <label>:452:                                    ; preds = %419, %417
  %453 = load i1, i1* @need_deadprocs, align 1
  br i1 %453, label %454, label %509, !dbg !1670

; <label>:454:                                    ; preds = %452
  %455 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %101, i64 0, i32 0, !dbg !1671
  %456 = load i16, i16* %455, align 4, !dbg !1671, !tbaa !1093
  %457 = icmp eq i16 %456, 8, !dbg !1671
  br i1 %457, label %458, label %509, !dbg !1673

; <label>:458:                                    ; preds = %454
  call void @llvm.dbg.value(metadata %struct.utmpx* %101, i64 0, metadata !308, metadata !884) #10, !dbg !1674
  call void @llvm.dbg.value(metadata %struct.utmpx* %101, i64 0, metadata !1565, metadata !884) #10, !dbg !1675
  %459 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.90, i64 0, i64 0), i32 5) #10, !dbg !1677
  %460 = call i64 @strlen(i8* %459) #13, !dbg !1678
  %461 = add i64 %460, 5, !dbg !1679
  %462 = call noalias i8* @xmalloc(i64 %461) #10, !dbg !1680
  call void @llvm.dbg.value(metadata i8* %462, i64 0, metadata !1570, metadata !884) #10, !dbg !1681
  %463 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.90, i64 0, i64 0), i32 5) #10, !dbg !1682
  call void @llvm.dbg.value(metadata i8* %462, i64 0, metadata !1581, metadata !884) #10, !dbg !1683
  call void @llvm.dbg.value(metadata i8* %463, i64 0, metadata !1587, metadata !884) #10, !dbg !1683
  %464 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %462, i1 false) #10, !dbg !1685
  %465 = call i8* @__strcpy_chk(i8* nonnull %462, i8* nonnull %463, i64 %464) #10, !dbg !1686
  %466 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %101, i64 0, i32 3, i64 0, !dbg !1687
  call void @llvm.dbg.value(metadata i8* %462, i64 0, metadata !1593, metadata !884) #10, !dbg !1688
  call void @llvm.dbg.value(metadata i8* %466, i64 0, metadata !1596, metadata !884) #10, !dbg !1688
  call void @llvm.dbg.value(metadata i64 4, i64 0, metadata !1597, metadata !884) #10, !dbg !1688
  %467 = call i8* @__strncat_chk(i8* nonnull %462, i8* nonnull %466, i64 4, i64 %464) #10, !dbg !1690
  call void @llvm.dbg.value(metadata i8* %462, i64 0, metadata !309, metadata !884) #10, !dbg !1691
  call void @llvm.lifetime.start(i64 12, i8* nonnull %86) #10, !dbg !1113
  %468 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %101, i64 0, i32 1, !dbg !1113
  %469 = load i32, i32* %468, align 4, !dbg !1113, !tbaa !1191
  %470 = sext i32 %469 to i64, !dbg !1113
  %471 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* nonnull %86, i32 1, i64 12, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.74, i64 0, i64 0), i64 %470) #10, !dbg !1113
  %472 = load i8*, i8** @print_deadprocs.exitstr, align 8, !dbg !1692, !tbaa !892
  %473 = icmp eq i8* %472, null, !dbg !1692
  br i1 %473, label %474, label %482, !dbg !1694

; <label>:474:                                    ; preds = %458
  %475 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.92, i64 0, i64 0), i32 5) #10, !dbg !1695
  %476 = call i64 @strlen(i8* %475) #13, !dbg !1696
  %477 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.93, i64 0, i64 0), i32 5) #10, !dbg !1698
  %478 = call i64 @strlen(i8* %477) #13, !dbg !1699
  %479 = add i64 %476, 14, !dbg !1700
  %480 = add i64 %479, %478, !dbg !1701
  %481 = call noalias i8* @xmalloc(i64 %480) #10, !dbg !1702
  store i8* %481, i8** @print_deadprocs.exitstr, align 8, !dbg !1704, !tbaa !892
  br label %482, !dbg !1705

; <label>:482:                                    ; preds = %474, %458
  %483 = phi i8* [ %472, %458 ], [ %481, %474 ], !dbg !1706
  %484 = call i64 @llvm.objectsize.i64.p0i8(i8* %483, i1 false) #10, !dbg !1706
  %485 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.92, i64 0, i64 0), i32 5) #10, !dbg !1706
  %486 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %101, i64 0, i32 6, i32 0, !dbg !1706
  %487 = load i16, i16* %486, align 4, !dbg !1706, !tbaa !1707
  %488 = sext i16 %487 to i32, !dbg !1706
  %489 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.93, i64 0, i64 0), i32 5) #10, !dbg !1708
  %490 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %101, i64 0, i32 6, i32 1, !dbg !1706
  %491 = load i16, i16* %490, align 2, !dbg !1706, !tbaa !1710
  %492 = sext i16 %491 to i32, !dbg !1706
  %493 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* %483, i32 1, i64 %484, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.94, i64 0, i64 0), i8* %485, i32 %488, i8* %489, i32 %492) #10, !dbg !1711
  %494 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %101, i64 0, i32 2, i64 0, !dbg !1713
  call void @llvm.dbg.value(metadata %struct.utmpx* %101, i64 0, metadata !272, metadata !884) #10, !dbg !1714
  call void @llvm.lifetime.start(i64 8, i8* nonnull %97) #10, !dbg !1716
  %495 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %101, i64 0, i32 8, i32 0, !dbg !1717
  %496 = load i32, i32* %495, align 4, !dbg !1717, !tbaa !1406
  %497 = sext i32 %496 to i64, !dbg !1717
  call void @llvm.dbg.value(metadata i64 %497, i64 0, metadata !273, metadata !884) #10, !dbg !1718
  store i64 %497, i64* %3, align 8, !dbg !1718, !tbaa !1068
  call void @llvm.dbg.value(metadata i64* %3, i64 0, metadata !273, metadata !1056) #10, !dbg !1718
  %498 = call %struct.tm* @localtime(i64* nonnull %3) #10, !dbg !1719
  call void @llvm.dbg.value(metadata %struct.tm* %498, i64 0, metadata !274, metadata !884) #10, !dbg !1720
  %499 = icmp eq %struct.tm* %498, null, !dbg !1721
  br i1 %499, label %503, label %500, !dbg !1722

; <label>:500:                                    ; preds = %482
  %501 = load i8*, i8** @time_format, align 8, !dbg !1723, !tbaa !892
  %502 = call i64 @strftime(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @time_string.buf, i64 0, i64 0), i64 33, i8* %501, %struct.tm* nonnull %498) #10, !dbg !1724
  br label %506, !dbg !1725

; <label>:503:                                    ; preds = %482
  %504 = load i64, i64* %3, align 8, !dbg !1726, !tbaa !1068
  call void @llvm.dbg.value(metadata i64 %504, i64 0, metadata !273, metadata !884) #10, !dbg !1718
  %505 = call i8* @imaxtostr(i64 %504, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @time_string.buf, i64 0, i64 0)) #10, !dbg !1727
  br label %506, !dbg !1729

; <label>:506:                                    ; preds = %503, %500
  %507 = phi i8* [ getelementptr inbounds ([33 x i8], [33 x i8]* @time_string.buf, i64 0, i64 0), %500 ], [ %505, %503 ]
  call void @llvm.lifetime.end(i64 8, i8* nonnull %97) #10, !dbg !1730
  %508 = load i8*, i8** @print_deadprocs.exitstr, align 8, !dbg !1731, !tbaa !892
  call fastcc void @print_line(i32 -1, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0), i8 signext 32, i32 32, i8* %494, i8* %507, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0), i8* nonnull %86, i8* %462, i8* %508) #10, !dbg !1732
  call void @free(i8* %462) #10, !dbg !1733
  call void @llvm.lifetime.end(i64 12, i8* nonnull %86) #10, !dbg !1734
  br label %509, !dbg !1735

; <label>:509:                                    ; preds = %506, %454, %452, %450, %415, %381, %360, %335, %280, %104
  %510 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %101, i64 0, i32 0, !dbg !1736
  %511 = load i16, i16* %510, align 4, !dbg !1736, !tbaa !1093
  %512 = icmp eq i16 %511, 2, !dbg !1736
  br i1 %512, label %513, label %517, !dbg !1738

; <label>:513:                                    ; preds = %509
  %514 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %101, i64 0, i32 8, i32 0, !dbg !1739
  %515 = load i32, i32* %514, align 4, !dbg !1739, !tbaa !1406
  %516 = sext i32 %515 to i64, !dbg !1739
  call void @llvm.dbg.value(metadata i64 %516, i64 0, metadata !1046, metadata !884) #10, !dbg !1137
  br label %517, !dbg !1740

; <label>:517:                                    ; preds = %513, %509
  %518 = phi i64 [ %516, %513 ], [ %100, %509 ]
  call void @llvm.dbg.value(metadata i64 %518, i64 0, metadata !1046, metadata !884) #10, !dbg !1137
  %519 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %101, i64 1, !dbg !1741
  call void @llvm.dbg.value(metadata %struct.utmpx* %519, i64 0, metadata !1044, metadata !884) #10, !dbg !1136
  call void @llvm.dbg.value(metadata i64 %518, i64 0, metadata !1046, metadata !884) #10, !dbg !1137
  call void @llvm.dbg.value(metadata i8* %80, i64 0, metadata !1045, metadata !884) #10, !dbg !1161
  call void @llvm.dbg.value(metadata %struct.utmpx* %519, i64 0, metadata !1044, metadata !884) #10, !dbg !1136
  call void @llvm.dbg.value(metadata i64 %102, i64 0, metadata !1043, metadata !884) #10, !dbg !1135
  %520 = icmp eq i64 %102, 0, !dbg !1170
  br i1 %520, label %521, label %98, !dbg !1170, !llvm.loop !1742

; <label>:521:                                    ; preds = %517
  br label %522, !dbg !1745

; <label>:522:                                    ; preds = %521, %79, %71, %55
  %523 = bitcast %struct.utmpx** %16 to i8**, !dbg !1745
  %524 = load i8*, i8** %523, align 8, !dbg !1745, !tbaa !892
  call void @free(i8* %524) #10, !dbg !1746
  call void @llvm.lifetime.end(i64 8, i8* nonnull %18) #10, !dbg !1747
  call void @llvm.lifetime.end(i64 8, i8* nonnull %17) #10, !dbg !1747
  ret void, !dbg !1747
}

declare void @error(i32, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #7

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #8

; Function Attrs: nounwind
declare void @free(i8* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @print_line(i32, i8*, i8 signext, i32, i8*, i8*, i8*, i8*, i8*, i8*) unnamed_addr #6 !dbg !113 {
  %11 = alloca i8*, align 8
  %12 = alloca [8 x i8], align 1
  %13 = alloca [13 x i8], align 1
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !117, metadata !884), !dbg !1748
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !118, metadata !884), !dbg !1749
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !119, metadata !884), !dbg !1750
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !120, metadata !884), !dbg !1751
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !121, metadata !884), !dbg !1752
  tail call void @llvm.dbg.value(metadata i8* %5, i64 0, metadata !122, metadata !884), !dbg !1753
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !123, metadata !884), !dbg !1754
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !124, metadata !884), !dbg !1755
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !125, metadata !884), !dbg !1756
  tail call void @llvm.dbg.value(metadata i8* %9, i64 0, metadata !126, metadata !884), !dbg !1757
  %14 = bitcast i8** %11 to i8*, !dbg !1758
  call void @llvm.lifetime.start(i64 8, i8* nonnull %14) #10, !dbg !1758
  %15 = getelementptr inbounds [8 x i8], [8 x i8]* %12, i64 0, i64 0, !dbg !1759
  call void @llvm.lifetime.start(i64 8, i8* nonnull %15) #10, !dbg !1759
  tail call void @llvm.dbg.declare(metadata [8 x i8]* %12, metadata !128, metadata !884), !dbg !1760
  %16 = getelementptr inbounds [13 x i8], [13 x i8]* %13, i64 0, i64 0, !dbg !1761
  call void @llvm.lifetime.start(i64 13, i8* nonnull %16) #10, !dbg !1761
  tail call void @llvm.dbg.declare(metadata [13 x i8]* %13, metadata !132, metadata !884), !dbg !1762
  store i8 %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @print_line.mesg, i64 0, i64 1), align 1, !dbg !1763, !tbaa !1090
  %17 = load i1, i1* @include_idle, align 1
  br i1 %17, label %18, label %25, !dbg !1764

; <label>:18:                                     ; preds = %10
  %19 = load i1, i1* @short_output, align 1
  br i1 %19, label %25, label %20, !dbg !1766

; <label>:20:                                     ; preds = %18
  %21 = tail call i64 @strlen(i8* %6) #13, !dbg !1768
  %22 = icmp ult i64 %21, 7, !dbg !1770
  br i1 %22, label %23, label %25, !dbg !1771

; <label>:23:                                     ; preds = %20
  %24 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* nonnull %15, i32 1, i64 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.69, i64 0, i64 0), i8* %6) #10, !dbg !1773
  br label %26, !dbg !1773

; <label>:25:                                     ; preds = %20, %18, %10
  store i8 0, i8* %15, align 1, !dbg !1774, !tbaa !1090
  br label %26

; <label>:26:                                     ; preds = %25, %23
  %27 = load i1, i1* @short_output, align 1
  br i1 %27, label %33, label %28, !dbg !1775

; <label>:28:                                     ; preds = %26
  %29 = call i64 @strlen(i8* %7) #13, !dbg !1777
  %30 = icmp ult i64 %29, 12, !dbg !1779
  br i1 %30, label %31, label %33, !dbg !1780

; <label>:31:                                     ; preds = %28
  %32 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* nonnull %16, i32 1, i64 13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.70, i64 0, i64 0), i8* %7) #10, !dbg !1782
  br label %34, !dbg !1782

; <label>:33:                                     ; preds = %28, %26
  store i8 0, i8* %16, align 1, !dbg !1783, !tbaa !1090
  br label %34

; <label>:34:                                     ; preds = %33, %31
  %35 = load i1, i1* @include_exit, align 1
  br i1 %35, label %36, label %41, !dbg !1784

; <label>:36:                                     ; preds = %34
  %37 = call i64 @strlen(i8* %9) #13, !dbg !1785
  %38 = icmp ult i64 %37, 12, !dbg !1785
  %39 = add i64 %37, 2, !dbg !1786
  %40 = select i1 %38, i64 14, i64 %39, !dbg !1785
  br label %41, !dbg !1788

; <label>:41:                                     ; preds = %34, %36
  %42 = phi i64 [ %40, %36 ], [ 1, %34 ], !dbg !1790
  %43 = call noalias i8* @xmalloc(i64 %42) #10, !dbg !1792
  call void @llvm.dbg.value(metadata i8* %43, i64 0, metadata !136, metadata !884), !dbg !1793
  %44 = load i1, i1* @include_exit, align 1
  br i1 %44, label %45, label %48, !dbg !1794

; <label>:45:                                     ; preds = %41
  %46 = call i64 @llvm.objectsize.i64.p0i8(i8* %43, i1 false), !dbg !1795
  %47 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* %43, i32 1, i64 %46, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.71, i64 0, i64 0), i8* %9) #10, !dbg !1795
  br label %49, !dbg !1795

; <label>:48:                                     ; preds = %41
  store i8 0, i8* %43, align 1, !dbg !1797, !tbaa !1090
  br label %49

; <label>:49:                                     ; preds = %48, %45
  %50 = icmp ne i8* %1, null, !dbg !1798
  %51 = select i1 %50, i8* %1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.73, i64 0, i64 0), !dbg !1798
  %52 = load i1, i1* @include_mesg, align 1
  %53 = select i1 %52, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @print_line.mesg, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0), !dbg !1799
  %54 = load i32, i32* @time_format_width, align 4, !dbg !1799, !tbaa !1002
  call void @llvm.dbg.value(metadata i8** %11, i64 0, metadata !127, metadata !1056), !dbg !1800
  %55 = call i32 (i8**, i32, i8*, ...) @__asprintf_chk(i8** nonnull %11, i32 1, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.72, i64 0, i64 0), i32 %0, i8* %51, i8* %53, i32 %3, i8* %4, i32 %54, i8* %5, i8* nonnull %15, i8* nonnull %16, i8* %8, i8* %43) #10, !dbg !1799
  call void @llvm.dbg.value(metadata i32 %55, i64 0, metadata !137, metadata !884), !dbg !1801
  %56 = icmp eq i32 %55, -1, !dbg !1802
  br i1 %56, label %57, label %58, !dbg !1804

; <label>:57:                                     ; preds = %49
  call void @xalloc_die() #14, !dbg !1805
  unreachable, !dbg !1805

; <label>:58:                                     ; preds = %49
  %59 = load i8*, i8** %11, align 8, !dbg !1806, !tbaa !892
  call void @llvm.dbg.value(metadata i8* %59, i64 0, metadata !127, metadata !884), !dbg !1800
  %60 = call i64 @strlen(i8* %59) #13, !dbg !1807
  %61 = getelementptr inbounds i8, i8* %59, i64 %60, !dbg !1808
  call void @llvm.dbg.value(metadata i8* %61, i64 0, metadata !138, metadata !884), !dbg !1809
  br label %62, !dbg !1810

; <label>:62:                                     ; preds = %62, %58
  %63 = phi i8* [ %61, %58 ], [ %64, %62 ]
  call void @llvm.dbg.value(metadata i8* %63, i64 0, metadata !138, metadata !884), !dbg !1809
  %64 = getelementptr inbounds i8, i8* %63, i64 -1, !dbg !1811
  call void @llvm.dbg.value(metadata i8* %64, i64 0, metadata !138, metadata !884), !dbg !1809
  %65 = load i8, i8* %64, align 1, !dbg !1813, !tbaa !1090
  %66 = icmp eq i8 %65, 32, !dbg !1814
  br i1 %66, label %62, label %67, !dbg !1815, !llvm.loop !1816

; <label>:67:                                     ; preds = %62
  store i8 0, i8* %63, align 1, !dbg !1818, !tbaa !1090
  %68 = load i8*, i8** %11, align 8, !dbg !1819, !tbaa !892
  call void @llvm.dbg.value(metadata i8* %68, i64 0, metadata !127, metadata !884), !dbg !1800
  %69 = call i32 @puts(i8* %68), !dbg !1820
  %70 = load i8*, i8** %11, align 8, !dbg !1821, !tbaa !892
  call void @llvm.dbg.value(metadata i8* %70, i64 0, metadata !127, metadata !884), !dbg !1800
  call void @free(i8* %70) #10, !dbg !1822
  call void @free(i8* %43) #10, !dbg !1823
  call void @llvm.lifetime.end(i64 13, i8* nonnull %16) #10, !dbg !1824
  call void @llvm.lifetime.end(i64 8, i8* nonnull %15) #10, !dbg !1824
  call void @llvm.lifetime.end(i64 8, i8* nonnull %14) #10, !dbg !1824
  ret void, !dbg !1824
}

; Function Attrs: nounwind
declare i8* @ttyname(i32) local_unnamed_addr #2

declare i32 @__sprintf_chk(i8*, i32, i64, i8*, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #7

; Function Attrs: nounwind
declare i32 @__xstat(i32, i8*, %struct.stat*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i64 @time(i64*) local_unnamed_addr #2

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) local_unnamed_addr #5

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) local_unnamed_addr #4

; Function Attrs: nounwind readonly
declare i64 @strlen(i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind readnone
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #7

; Function Attrs: nounwind
declare %struct.tm* @localtime(i64*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i64 @strftime(i8*, i64, i8*, %struct.tm*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i8* @__strcpy_chk(i8*, i8*, i64) local_unnamed_addr #2

; Function Attrs: nounwind
declare i8* @__strncat_chk(i8*, i8*, i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @__asprintf_chk(i8**, i32, i8*, ...) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @puts(i8* nocapture readonly) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @canon_host(i8*) local_unnamed_addr #6 !dbg !1825 {
  %2 = alloca %struct.addrinfo*, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1829, metadata !884), !dbg !1830
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !341, metadata !884) #10, !dbg !1831
  tail call void @llvm.dbg.value(metadata i32* @last_cherror, i64 0, metadata !342, metadata !884) #10, !dbg !1833
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !343, metadata !884) #10, !dbg !1834
  %3 = bitcast %struct.addrinfo** %2 to i8*, !dbg !1835
  call void @llvm.lifetime.start(i64 8, i8* nonnull %3) #10, !dbg !1835
  tail call void @llvm.dbg.value(metadata %struct.addrinfo* null, i64 0, metadata !344, metadata !884) #10, !dbg !1836
  store %struct.addrinfo* null, %struct.addrinfo** %2, align 8, !dbg !1836, !tbaa !892
  store i32 2, i32* getelementptr inbounds (%struct.addrinfo, %struct.addrinfo* @canon_host_r.hints, i64 0, i32 0), align 8, !dbg !1837, !tbaa !1838
  tail call void @llvm.dbg.value(metadata %struct.addrinfo** %2, i64 0, metadata !344, metadata !1056) #10, !dbg !1836
  %4 = call i32 @getaddrinfo(i8* %0, i8* null, %struct.addrinfo* nonnull @canon_host_r.hints, %struct.addrinfo** nonnull %2) #10, !dbg !1840
  call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !371, metadata !884) #10, !dbg !1841
  %5 = icmp eq i32 %4, 0, !dbg !1842
  br i1 %5, label %6, label %17, !dbg !1844

; <label>:6:                                      ; preds = %1
  %7 = load %struct.addrinfo*, %struct.addrinfo** %2, align 8, !dbg !1845, !tbaa !892
  call void @llvm.dbg.value(metadata %struct.addrinfo* %7, i64 0, metadata !344, metadata !884) #10, !dbg !1836
  %8 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %7, i64 0, i32 6, !dbg !1845
  %9 = load i8*, i8** %8, align 8, !dbg !1845, !tbaa !1847
  %10 = icmp eq i8* %9, null, !dbg !1845
  %11 = select i1 %10, i8* %0, i8* %9, !dbg !1848
  %12 = call noalias i8* @__strdup(i8* %11) #10, !dbg !1850
  call void @llvm.dbg.value(metadata i8* %12, i64 0, metadata !343, metadata !884) #10, !dbg !1834
  %13 = icmp eq i8* %12, null, !dbg !1852
  br i1 %13, label %14, label %15, !dbg !1854

; <label>:14:                                     ; preds = %6
  store i32 -10, i32* @last_cherror, align 4, !dbg !1855, !tbaa !1002
  br label %15, !dbg !1856

; <label>:15:                                     ; preds = %14, %6
  %16 = load %struct.addrinfo*, %struct.addrinfo** %2, align 8, !dbg !1857, !tbaa !892
  call void @llvm.dbg.value(metadata %struct.addrinfo* %16, i64 0, metadata !344, metadata !884) #10, !dbg !1836
  call void @freeaddrinfo(%struct.addrinfo* %16) #10, !dbg !1858
  br label %18, !dbg !1859

; <label>:17:                                     ; preds = %1
  store i32 %4, i32* @last_cherror, align 4, !dbg !1860, !tbaa !1002
  br label %18, !dbg !1862

; <label>:18:                                     ; preds = %15, %17
  %19 = phi i8* [ null, %17 ], [ %12, %15 ]
  call void @llvm.dbg.value(metadata i8* %19, i64 0, metadata !343, metadata !884) #10, !dbg !1834
  call void @llvm.lifetime.end(i64 8, i8* nonnull %3) #10, !dbg !1863
  ret i8* %19, !dbg !1864
}

declare i32 @getaddrinfo(i8*, i8*, %struct.addrinfo*, %struct.addrinfo**) local_unnamed_addr #3

; Function Attrs: nounwind
declare noalias i8* @__strdup(i8* nocapture readonly) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @freeaddrinfo(%struct.addrinfo*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @canon_host_r(i8*, i32*) local_unnamed_addr #6 !dbg !336 {
  %3 = alloca %struct.addrinfo*, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !341, metadata !884), !dbg !1865
  tail call void @llvm.dbg.value(metadata i32* %1, i64 0, metadata !342, metadata !884), !dbg !1866
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !343, metadata !884), !dbg !1867
  %4 = bitcast %struct.addrinfo** %3 to i8*, !dbg !1868
  call void @llvm.lifetime.start(i64 8, i8* nonnull %4) #10, !dbg !1868
  tail call void @llvm.dbg.value(metadata %struct.addrinfo* null, i64 0, metadata !344, metadata !884), !dbg !1869
  store %struct.addrinfo* null, %struct.addrinfo** %3, align 8, !dbg !1869, !tbaa !892
  store i32 2, i32* getelementptr inbounds (%struct.addrinfo, %struct.addrinfo* @canon_host_r.hints, i64 0, i32 0), align 8, !dbg !1870, !tbaa !1838
  tail call void @llvm.dbg.value(metadata %struct.addrinfo** %3, i64 0, metadata !344, metadata !1056), !dbg !1869
  %5 = call i32 @getaddrinfo(i8* %0, i8* null, %struct.addrinfo* nonnull @canon_host_r.hints, %struct.addrinfo** nonnull %3) #10, !dbg !1871
  call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !371, metadata !884), !dbg !1872
  %6 = icmp eq i32 %5, 0, !dbg !1873
  br i1 %6, label %7, label %20, !dbg !1874

; <label>:7:                                      ; preds = %2
  %8 = load %struct.addrinfo*, %struct.addrinfo** %3, align 8, !dbg !1875, !tbaa !892
  call void @llvm.dbg.value(metadata %struct.addrinfo* %8, i64 0, metadata !344, metadata !884), !dbg !1869
  %9 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %8, i64 0, i32 6, !dbg !1875
  %10 = load i8*, i8** %9, align 8, !dbg !1875, !tbaa !1847
  %11 = icmp eq i8* %10, null, !dbg !1875
  %12 = select i1 %11, i8* %0, i8* %10, !dbg !1876
  %13 = call noalias i8* @__strdup(i8* %12) #10, !dbg !1877
  call void @llvm.dbg.value(metadata i8* %13, i64 0, metadata !343, metadata !884), !dbg !1867
  %14 = icmp eq i8* %13, null, !dbg !1878
  %15 = icmp ne i32* %1, null, !dbg !1879
  %16 = and i1 %15, %14, !dbg !1881
  br i1 %16, label %17, label %18, !dbg !1881

; <label>:17:                                     ; preds = %7
  store i32 -10, i32* %1, align 4, !dbg !1882, !tbaa !1002
  br label %18, !dbg !1883

; <label>:18:                                     ; preds = %7, %17
  %19 = load %struct.addrinfo*, %struct.addrinfo** %3, align 8, !dbg !1884, !tbaa !892
  call void @llvm.dbg.value(metadata %struct.addrinfo* %19, i64 0, metadata !344, metadata !884), !dbg !1869
  call void @freeaddrinfo(%struct.addrinfo* %19) #10, !dbg !1885
  br label %23, !dbg !1886

; <label>:20:                                     ; preds = %2
  %21 = icmp eq i32* %1, null, !dbg !1887
  br i1 %21, label %23, label %22, !dbg !1888

; <label>:22:                                     ; preds = %20
  store i32 %5, i32* %1, align 4, !dbg !1889, !tbaa !1002
  br label %23, !dbg !1890

; <label>:23:                                     ; preds = %20, %22, %18
  %24 = phi i8* [ null, %22 ], [ null, %20 ], [ %13, %18 ]
  call void @llvm.dbg.value(metadata i8* %24, i64 0, metadata !343, metadata !884), !dbg !1867
  call void @llvm.lifetime.end(i64 8, i8* nonnull %4) #10, !dbg !1891
  ret i8* %24, !dbg !1892
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @ch_strerror() local_unnamed_addr #6 !dbg !1893 {
  %1 = load i32, i32* @last_cherror, align 4, !dbg !1896, !tbaa !1002
  %2 = tail call i8* @gai_strerror(i32 %1) #10, !dbg !1897
  ret i8* %2, !dbg !1898
}

; Function Attrs: nounwind
declare i8* @gai_strerror(i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_file_name(i8*) local_unnamed_addr #6 !dbg !1899 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1901, metadata !884), !dbg !1902
  store i8* %0, i8** @file_name, align 8, !dbg !1903, !tbaa !892
  ret void, !dbg !1904
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_ignore_EPIPE(i1 zeroext) local_unnamed_addr #6 !dbg !1905 {
  %2 = zext i1 %0 to i8
  tail call void @llvm.dbg.value(metadata i1 %0, i64 0, metadata !1909, metadata !1910), !dbg !1911
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !1912, !tbaa !1913
  ret void, !dbg !1915
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout() #6 !dbg !1916 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1921, !tbaa !892
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #10, !dbg !1922
  %3 = icmp eq i32 %2, 0, !dbg !1923
  br i1 %3, label %21, label %4, !dbg !1924

; <label>:4:                                      ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !1925, !tbaa !1913, !range !1927
  %6 = icmp eq i8 %5, 0, !dbg !1925
  %7 = tail call i32* @__errno_location() #1, !dbg !1928
  br i1 %6, label %11, label %8, !dbg !1930

; <label>:8:                                      ; preds = %4
  %9 = load i32, i32* %7, align 4, !dbg !1931, !tbaa !1002
  %10 = icmp eq i32 %9, 32, !dbg !1933
  br i1 %10, label %21, label %11, !dbg !1934

; <label>:11:                                     ; preds = %4, %8
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.30, i64 0, i64 0), i32 5) #10, !dbg !1936
  tail call void @llvm.dbg.value(metadata i8* %12, i64 0, metadata !1918, metadata !884), !dbg !1937
  %13 = load i8*, i8** @file_name, align 8, !dbg !1938, !tbaa !892
  %14 = icmp eq i8* %13, null, !dbg !1938
  %15 = load i32, i32* %7, align 4, !tbaa !1002
  br i1 %14, label %18, label %16, !dbg !1939

; <label>:16:                                     ; preds = %11
  %17 = tail call i8* @quotearg_colon(i8* nonnull %13) #10, !dbg !1940
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.31, i64 0, i64 0), i8* %17, i8* %12) #10, !dbg !1942
  br label %19, !dbg !1944

; <label>:18:                                     ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.32, i64 0, i64 0), i8* %12) #10, !dbg !1945
  br label %19

; <label>:19:                                     ; preds = %18, %16
  %20 = load volatile i32, i32* @exit_failure, align 4, !dbg !1946, !tbaa !1002
  tail call void @_exit(i32 %20) #14, !dbg !1947
  unreachable, !dbg !1947

; <label>:21:                                     ; preds = %0, %8
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1948, !tbaa !892
  %23 = tail call i32 @close_stream(%struct._IO_FILE* %22) #10, !dbg !1950
  %24 = icmp eq i32 %23, 0, !dbg !1951
  br i1 %24, label %27, label %25, !dbg !1952

; <label>:25:                                     ; preds = %21
  %26 = load volatile i32, i32* @exit_failure, align 4, !dbg !1953, !tbaa !1002
  tail call void @_exit(i32 %26) #14, !dbg !1954
  unreachable, !dbg !1954

; <label>:27:                                     ; preds = %21
  ret void, !dbg !1955
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #9

; Function Attrs: nounwind sspstrong uwtable
define zeroext i1 @hard_locale(i32) local_unnamed_addr #6 !dbg !1956 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !1959, metadata !884), !dbg !1979
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1960, metadata !884), !dbg !1980
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #10, !dbg !1981
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1961, metadata !884), !dbg !1982
  %3 = icmp eq i8* %2, null, !dbg !1983
  br i1 %3, label %15, label %4, !dbg !1984

; <label>:4:                                      ; preds = %1
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1969, metadata !884), !dbg !1985
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1970, metadata !884), !dbg !1986
  %5 = load i8, i8* %2, align 1, !dbg !1987, !tbaa !1090
  %6 = icmp eq i8 %5, 67, !dbg !1989
  br i1 %6, label %7, label %11, !dbg !1992

; <label>:7:                                      ; preds = %4
  %8 = getelementptr inbounds i8, i8* %2, i64 1, !dbg !1994
  %9 = load i8, i8* %8, align 1, !dbg !1994, !tbaa !1090
  %10 = icmp eq i8 %9, 0, !dbg !1997
  br i1 %10, label %14, label %11, !dbg !1999

; <label>:11:                                     ; preds = %4, %7
  tail call void @llvm.dbg.value(metadata i64 5, i64 0, metadata !1975, metadata !884), !dbg !2001
  %12 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.37, i64 0, i64 0)) #10, !dbg !2002
  %13 = icmp eq i32 %12, 0, !dbg !2004
  br i1 %13, label %14, label %15, !dbg !2006

; <label>:14:                                     ; preds = %11, %7
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1960, metadata !884), !dbg !1980
  br label %15, !dbg !2008

; <label>:15:                                     ; preds = %1, %11, %14
  %16 = phi i1 [ false, %14 ], [ true, %11 ], [ true, %1 ]
  ret i1 %16, !dbg !2009
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define i8* @imaxtostr(i64, i8*) local_unnamed_addr #6 !dbg !2010 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !2015, metadata !884), !dbg !2018
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2016, metadata !884), !dbg !2019
  %3 = getelementptr inbounds i8, i8* %1, i64 20, !dbg !2020
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2017, metadata !884), !dbg !2021
  store i8 0, i8* %3, align 1, !dbg !2022, !tbaa !1090
  %4 = icmp slt i64 %0, 0, !dbg !2023
  br i1 %4, label %6, label %5, !dbg !2025, !llvm.loop !2026

; <label>:5:                                      ; preds = %2
  br label %19, !dbg !2021

; <label>:6:                                      ; preds = %2
  br label %7, !dbg !2021

; <label>:7:                                      ; preds = %6, %7
  %8 = phi i64 [ %14, %7 ], [ %0, %6 ]
  %9 = phi i8* [ %13, %7 ], [ %3, %6 ]
  tail call void @llvm.dbg.value(metadata i8* %9, i64 0, metadata !2017, metadata !884), !dbg !2021
  tail call void @llvm.dbg.value(metadata i64 %8, i64 0, metadata !2015, metadata !884), !dbg !2018
  %10 = srem i64 %8, 10, !dbg !2030
  %11 = sub nsw i64 48, %10, !dbg !2032
  %12 = trunc i64 %11 to i8, !dbg !2033
  %13 = getelementptr inbounds i8, i8* %9, i64 -1, !dbg !2034
  tail call void @llvm.dbg.value(metadata i8* %13, i64 0, metadata !2017, metadata !884), !dbg !2021
  store i8 %12, i8* %13, align 1, !dbg !2035, !tbaa !1090
  %14 = sdiv i64 %8, 10, !dbg !2036
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !2015, metadata !884), !dbg !2018
  %15 = add i64 %8, 9, !dbg !2037
  %16 = icmp ugt i64 %15, 18, !dbg !2037
  br i1 %16, label %7, label %17, !dbg !2038, !llvm.loop !2040

; <label>:17:                                     ; preds = %7
  %18 = getelementptr inbounds i8, i8* %9, i64 -2, !dbg !2043
  tail call void @llvm.dbg.value(metadata i8* %18, i64 0, metadata !2017, metadata !884), !dbg !2021
  store i8 45, i8* %18, align 1, !dbg !2044, !tbaa !1090
  br label %30, !dbg !2045

; <label>:19:                                     ; preds = %5, %19
  %20 = phi i64 [ %26, %19 ], [ %0, %5 ]
  %21 = phi i8* [ %25, %19 ], [ %3, %5 ]
  tail call void @llvm.dbg.value(metadata i8* %21, i64 0, metadata !2017, metadata !884), !dbg !2021
  tail call void @llvm.dbg.value(metadata i64 %20, i64 0, metadata !2015, metadata !884), !dbg !2018
  %22 = srem i64 %20, 10, !dbg !2046
  %23 = add nsw i64 %22, 48, !dbg !2047
  %24 = trunc i64 %23 to i8, !dbg !2048
  %25 = getelementptr inbounds i8, i8* %21, i64 -1, !dbg !2049
  tail call void @llvm.dbg.value(metadata i8* %25, i64 0, metadata !2017, metadata !884), !dbg !2021
  store i8 %24, i8* %25, align 1, !dbg !2050, !tbaa !1090
  %26 = sdiv i64 %20, 10, !dbg !2051
  tail call void @llvm.dbg.value(metadata i64 %26, i64 0, metadata !2015, metadata !884), !dbg !2018
  %27 = add i64 %20, 9, !dbg !2052
  %28 = icmp ugt i64 %27, 18, !dbg !2052
  br i1 %28, label %19, label %29, !dbg !2053, !llvm.loop !2026

; <label>:29:                                     ; preds = %19
  br label %30, !dbg !2021

; <label>:30:                                     ; preds = %29, %17
  %31 = phi i8* [ %18, %17 ], [ %25, %29 ]
  tail call void @llvm.dbg.value(metadata i8* %31, i64 0, metadata !2017, metadata !884), !dbg !2021
  ret i8* %31, !dbg !2055
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_program_name(i8*) local_unnamed_addr #6 !dbg !2056 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2058, metadata !884), !dbg !2061
  %2 = icmp eq i8* %0, null, !dbg !2062
  br i1 %2, label %3, label %6, !dbg !2064

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2065, !tbaa !892
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.95, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #16, !dbg !2067
  tail call void @abort() #14, !dbg !2068
  unreachable, !dbg !2068

; <label>:6:                                      ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #13, !dbg !2069
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !2059, metadata !884), !dbg !2070
  %8 = icmp ne i8* %7, null, !dbg !2071
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !2072
  %10 = select i1 %8, i8* %9, i8* %0, !dbg !2074
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !2060, metadata !884), !dbg !2075
  %11 = ptrtoint i8* %10 to i64, !dbg !2076
  %12 = ptrtoint i8* %0 to i64, !dbg !2076
  %13 = sub i64 %11, %12, !dbg !2076
  %14 = icmp sgt i64 %13, 6, !dbg !2078
  br i1 %14, label %15, label %24, !dbg !2079

; <label>:15:                                     ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !2080
  %17 = tail call i32 @strncmp(i8* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.96, i64 0, i64 0), i64 7) #13, !dbg !2080
  %18 = icmp eq i32 %17, 0, !dbg !2082
  br i1 %18, label %19, label %24, !dbg !2083

; <label>:19:                                     ; preds = %15
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !2058, metadata !884), !dbg !2061
  %20 = tail call i32 @strncmp(i8* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.97, i64 0, i64 0), i64 3) #13, !dbg !2084
  %21 = icmp eq i32 %20, 0, !dbg !2087
  br i1 %21, label %22, label %24, !dbg !2088

; <label>:22:                                     ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !2089
  tail call void @llvm.dbg.value(metadata i8* %23, i64 0, metadata !2058, metadata !884), !dbg !2061
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !2091, !tbaa !892
  br label %24, !dbg !2092

; <label>:24:                                     ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i8* %25, i64 0, metadata !2058, metadata !884), !dbg !2061
  store i8* %25, i8** @program_name, align 8, !dbg !2093, !tbaa !892
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !2094, !tbaa !892
  ret void, !dbg !2095
}

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #10

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #5

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define %struct.quoting_options* @clone_quoting_options(%struct.quoting_options*) local_unnamed_addr #6 !dbg !2096 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !2101, metadata !884), !dbg !2104
  %2 = tail call i32* @__errno_location() #1, !dbg !2105
  %3 = load i32, i32* %2, align 4, !dbg !2105, !tbaa !1002
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !2102, metadata !884), !dbg !2106
  %4 = icmp ne %struct.quoting_options* %0, null, !dbg !2107
  %5 = bitcast %struct.quoting_options* %0 to i8*, !dbg !2108
  %6 = select i1 %4, i8* %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), !dbg !2108
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #10, !dbg !2110
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !2110
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %8, i64 0, metadata !2103, metadata !884), !dbg !2111
  store i32 %3, i32* %2, align 4, !dbg !2112, !tbaa !1002
  ret %struct.quoting_options* %8, !dbg !2113
}

; Function Attrs: nounwind readonly sspstrong uwtable
define i32 @get_quoting_style(%struct.quoting_options* readonly) local_unnamed_addr #11 !dbg !2114 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !2120, metadata !884), !dbg !2121
  %2 = icmp ne %struct.quoting_options* %0, null, !dbg !2122
  %3 = select i1 %2, %struct.quoting_options* %0, %struct.quoting_options* @default_quoting_options, !dbg !2122
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2123
  %5 = load i32, i32* %4, align 8, !dbg !2123, !tbaa !2125
  ret i32 %5, !dbg !2127
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_quoting_style(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !2128 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !2132, metadata !884), !dbg !2134
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2133, metadata !884), !dbg !2135
  %3 = icmp ne %struct.quoting_options* %0, null, !dbg !2136
  %4 = select i1 %3, %struct.quoting_options* %0, %struct.quoting_options* @default_quoting_options, !dbg !2136
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2137
  store i32 %1, i32* %5, align 8, !dbg !2139, !tbaa !2125
  ret void, !dbg !2140
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_char_quoting(%struct.quoting_options*, i8 signext, i32) local_unnamed_addr #6 !dbg !2141 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !2145, metadata !884), !dbg !2153
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !2146, metadata !884), !dbg !2154
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !2147, metadata !884), !dbg !2155
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !2148, metadata !884), !dbg !2156
  %4 = icmp ne %struct.quoting_options* %0, null, !dbg !2157
  %5 = select i1 %4, %struct.quoting_options* %0, %struct.quoting_options* @default_quoting_options, !dbg !2157
  %6 = lshr i8 %1, 5, !dbg !2158
  %7 = zext i8 %6 to i64, !dbg !2158
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !2160
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !2149, metadata !884), !dbg !2161
  %9 = and i8 %1, 31, !dbg !2162
  %10 = zext i8 %9 to i32, !dbg !2163
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !2151, metadata !884), !dbg !2164
  %11 = load i32, i32* %8, align 4, !dbg !2165, !tbaa !1002
  %12 = lshr i32 %11, %10, !dbg !2166
  %13 = and i32 %12, 1, !dbg !2167
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !2152, metadata !884), !dbg !2168
  %14 = and i32 %2, 1, !dbg !2169
  %15 = xor i32 %13, %14, !dbg !2170
  %16 = shl i32 %15, %10, !dbg !2171
  %17 = xor i32 %16, %11, !dbg !2172
  store i32 %17, i32* %8, align 4, !dbg !2172, !tbaa !1002
  ret i32 %13, !dbg !2173
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_quoting_flags(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !2174 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !2178, metadata !884), !dbg !2181
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2179, metadata !884), !dbg !2182
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !2183
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !2178, metadata !884), !dbg !2181
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2185
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2178, metadata !884), !dbg !2181
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2186
  %6 = load i32, i32* %5, align 4, !dbg !2186, !tbaa !2187
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !2180, metadata !884), !dbg !2188
  store i32 %1, i32* %5, align 4, !dbg !2189, !tbaa !2187
  ret i32 %6, !dbg !2190
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_custom_quoting(%struct.quoting_options*, i8*, i8*) local_unnamed_addr #6 !dbg !2191 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !2195, metadata !884), !dbg !2198
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2196, metadata !884), !dbg !2199
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2197, metadata !884), !dbg !2200
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2201
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !2195, metadata !884), !dbg !2198
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2203
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2195, metadata !884), !dbg !2198
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2204
  store i32 10, i32* %6, align 8, !dbg !2205, !tbaa !2125
  %7 = icmp ne i8* %1, null, !dbg !2206
  %8 = icmp ne i8* %2, null, !dbg !2208
  %9 = and i1 %7, %8, !dbg !2210
  br i1 %9, label %11, label %10, !dbg !2210

; <label>:10:                                     ; preds = %3
  tail call void @abort() #14, !dbg !2211
  unreachable, !dbg !2211

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2212
  store i8* %1, i8** %12, align 8, !dbg !2213, !tbaa !2214
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2215
  store i8* %2, i8** %13, align 8, !dbg !2216, !tbaa !2217
  ret void, !dbg !2218
}

; Function Attrs: nounwind sspstrong uwtable
define i64 @quotearg_buffer(i8*, i64, i8*, i64, %struct.quoting_options* readonly) local_unnamed_addr #6 !dbg !2219 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2223, metadata !884), !dbg !2231
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2224, metadata !884), !dbg !2232
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2225, metadata !884), !dbg !2233
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2226, metadata !884), !dbg !2234
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2227, metadata !884), !dbg !2235
  %6 = icmp ne %struct.quoting_options* %4, null, !dbg !2236
  %7 = select i1 %6, %struct.quoting_options* %4, %struct.quoting_options* @default_quoting_options, !dbg !2236
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %7, i64 0, metadata !2228, metadata !884), !dbg !2237
  %8 = tail call i32* @__errno_location() #1, !dbg !2238
  %9 = load i32, i32* %8, align 4, !dbg !2238, !tbaa !1002
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !2229, metadata !884), !dbg !2239
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !2240
  %11 = load i32, i32* %10, align 8, !dbg !2240, !tbaa !2125
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !2241
  %13 = load i32, i32* %12, align 4, !dbg !2241, !tbaa !2187
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !2242
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !2243
  %16 = load i8*, i8** %15, align 8, !dbg !2243, !tbaa !2214
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !2244
  %18 = load i8*, i8** %17, align 8, !dbg !2244, !tbaa !2217
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* %14, i8* %16, i8* %18), !dbg !2245
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !2230, metadata !884), !dbg !2246
  store i32 %9, i32* %8, align 4, !dbg !2247, !tbaa !1002
  ret i64 %19, !dbg !2248
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8*, i64, i8*, i64, i32, i32, i32* readonly, i8* readonly, i8* readonly) unnamed_addr #6 !dbg !2249 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2255, metadata !884), !dbg !2315
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2256, metadata !884), !dbg !2316
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2257, metadata !884), !dbg !2317
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2258, metadata !884), !dbg !2318
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !2259, metadata !884), !dbg !2319
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !2260, metadata !884), !dbg !2320
  tail call void @llvm.dbg.value(metadata i32* %6, i64 0, metadata !2261, metadata !884), !dbg !2321
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !2262, metadata !884), !dbg !2322
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !2263, metadata !884), !dbg !2323
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2265, metadata !884), !dbg !2324
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2266, metadata !884), !dbg !2325
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2267, metadata !884), !dbg !2326
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2268, metadata !884), !dbg !2327
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2269, metadata !884), !dbg !2328
  %13 = tail call i64 @__ctype_get_mb_cur_max() #10, !dbg !2329
  %14 = icmp eq i64 %13, 1, !dbg !2330
  %15 = lshr i32 %5, 1, !dbg !2331
  %16 = trunc i32 %15 to i8, !dbg !2331
  %17 = and i8 %16, 1, !dbg !2331
  tail call void @llvm.dbg.value(metadata i8 %17, i64 0, metadata !2271, metadata !884), !dbg !2331
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2272, metadata !884), !dbg !2332
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2273, metadata !884), !dbg !2333
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2274, metadata !884), !dbg !2334
  %18 = bitcast i64* %10 to i8*
  %19 = bitcast i32* %12 to i8*
  %20 = icmp eq i32* %6, null
  %21 = icmp ne i32* %6, null
  %22 = and i32 %5, 1
  %23 = icmp eq i32 %22, 0
  %24 = and i32 %5, 4
  %25 = icmp eq i32 %24, 0
  %26 = getelementptr inbounds i8, i8* %2, i64 1
  br label %27, !dbg !2335

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
  call void @llvm.dbg.value(metadata i64 %40, i64 0, metadata !2256, metadata !884), !dbg !2316
  call void @llvm.dbg.value(metadata i8 %39, i64 0, metadata !2274, metadata !884), !dbg !2334
  call void @llvm.dbg.value(metadata i8 %38, i64 0, metadata !2273, metadata !884), !dbg !2333
  call void @llvm.dbg.value(metadata i8 %37, i64 0, metadata !2272, metadata !884), !dbg !2332
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !2271, metadata !884), !dbg !2331
  call void @llvm.dbg.value(metadata i64 %35, i64 0, metadata !2258, metadata !884), !dbg !2318
  call void @llvm.dbg.value(metadata i8 %34, i64 0, metadata !2269, metadata !884), !dbg !2328
  call void @llvm.dbg.value(metadata i64 %33, i64 0, metadata !2268, metadata !884), !dbg !2327
  call void @llvm.dbg.value(metadata i8* %32, i64 0, metadata !2267, metadata !884), !dbg !2326
  call void @llvm.dbg.value(metadata i64 %31, i64 0, metadata !2266, metadata !884), !dbg !2325
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2265, metadata !884), !dbg !2324
  call void @llvm.dbg.value(metadata i8* %30, i64 0, metadata !2263, metadata !884), !dbg !2323
  call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !2262, metadata !884), !dbg !2322
  call void @llvm.dbg.value(metadata i32 %28, i64 0, metadata !2259, metadata !884), !dbg !2319
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
  ], !dbg !2336

; <label>:41:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !2259, metadata !884), !dbg !2319
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2271, metadata !884), !dbg !2331
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !2271, metadata !884), !dbg !2331
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !2259, metadata !884), !dbg !2319
  br label %95, !dbg !2337

; <label>:42:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !2271, metadata !884), !dbg !2331
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !2259, metadata !884), !dbg !2319
  %43 = and i8 %36, 1, !dbg !2339
  %44 = icmp eq i8 %43, 0, !dbg !2339
  br i1 %44, label %45, label %95, !dbg !2337

; <label>:45:                                     ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !2341
  br i1 %46, label %95, label %47, !dbg !2345

; <label>:47:                                     ; preds = %45
  store i8 34, i8* %0, align 1, !dbg !2347, !tbaa !1090
  br label %95, !dbg !2347

; <label>:48:                                     ; preds = %27, %27
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.108, i64 0, i64 0), i32 %28), !dbg !2349
  call void @llvm.dbg.value(metadata i8* %49, i64 0, metadata !2262, metadata !884), !dbg !2322
  %50 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.109, i64 0, i64 0), i32 %28), !dbg !2353
  call void @llvm.dbg.value(metadata i8* %50, i64 0, metadata !2263, metadata !884), !dbg !2323
  br label %51, !dbg !2354

; <label>:51:                                     ; preds = %27, %48
  %52 = phi i8* [ %49, %48 ], [ %29, %27 ]
  %53 = phi i8* [ %50, %48 ], [ %30, %27 ]
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !2263, metadata !884), !dbg !2323
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !2262, metadata !884), !dbg !2322
  %54 = and i8 %36, 1, !dbg !2355
  %55 = icmp eq i8 %54, 0, !dbg !2355
  br i1 %55, label %56, label %73, !dbg !2357

; <label>:56:                                     ; preds = %51
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !2267, metadata !884), !dbg !2326
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2265, metadata !884), !dbg !2324
  %57 = load i8, i8* %52, align 1, !dbg !2358, !tbaa !1090
  %58 = icmp eq i8 %57, 0, !dbg !2362
  br i1 %58, label %73, label %59, !dbg !2362

; <label>:59:                                     ; preds = %56
  br label %60, !dbg !2364

; <label>:60:                                     ; preds = %59, %67
  %61 = phi i8 [ %70, %67 ], [ %57, %59 ]
  %62 = phi i8* [ %69, %67 ], [ %52, %59 ]
  %63 = phi i64 [ %68, %67 ], [ 0, %59 ]
  %64 = icmp ult i64 %63, %40, !dbg !2364
  br i1 %64, label %65, label %67, !dbg !2368

; <label>:65:                                     ; preds = %60
  %66 = getelementptr inbounds i8, i8* %0, i64 %63, !dbg !2370
  store i8 %61, i8* %66, align 1, !dbg !2370, !tbaa !1090
  br label %67, !dbg !2370

; <label>:67:                                     ; preds = %65, %60
  %68 = add i64 %63, 1, !dbg !2372
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !2265, metadata !884), !dbg !2324
  %69 = getelementptr inbounds i8, i8* %62, i64 1, !dbg !2374
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !2267, metadata !884), !dbg !2326
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !2267, metadata !884), !dbg !2326
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !2265, metadata !884), !dbg !2324
  %70 = load i8, i8* %69, align 1, !dbg !2358, !tbaa !1090
  %71 = icmp eq i8 %70, 0, !dbg !2362
  br i1 %71, label %72, label %60, !dbg !2362, !llvm.loop !2376

; <label>:72:                                     ; preds = %67
  br label %73, !dbg !2324

; <label>:73:                                     ; preds = %72, %56, %51
  %74 = phi i64 [ 0, %51 ], [ 0, %56 ], [ %68, %72 ]
  call void @llvm.dbg.value(metadata i64 %74, i64 0, metadata !2265, metadata !884), !dbg !2324
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2269, metadata !884), !dbg !2328
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !2267, metadata !884), !dbg !2326
  %75 = call i64 @strlen(i8* %53) #13, !dbg !2379
  call void @llvm.dbg.value(metadata i64 %75, i64 0, metadata !2268, metadata !884), !dbg !2327
  br label %95, !dbg !2380

; <label>:76:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2269, metadata !884), !dbg !2328
  br label %77, !dbg !2381

; <label>:77:                                     ; preds = %27, %76
  %78 = phi i8 [ %34, %27 ], [ 1, %76 ]
  call void @llvm.dbg.value(metadata i8 %78, i64 0, metadata !2269, metadata !884), !dbg !2328
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2271, metadata !884), !dbg !2331
  br label %79, !dbg !2382

; <label>:79:                                     ; preds = %27, %77
  %80 = phi i8 [ %34, %27 ], [ %78, %77 ]
  %81 = phi i8 [ %36, %27 ], [ 1, %77 ]
  call void @llvm.dbg.value(metadata i8 %81, i64 0, metadata !2271, metadata !884), !dbg !2331
  call void @llvm.dbg.value(metadata i8 %80, i64 0, metadata !2269, metadata !884), !dbg !2328
  %82 = and i8 %81, 1, !dbg !2383
  %83 = icmp eq i8 %82, 0, !dbg !2383
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2269, metadata !884), !dbg !2328
  %84 = select i1 %83, i8 1, i8 %80, !dbg !2385
  br label %85, !dbg !2385

; <label>:85:                                     ; preds = %79, %27
  %86 = phi i8 [ %34, %27 ], [ %84, %79 ]
  %87 = phi i8 [ %36, %27 ], [ %81, %79 ]
  call void @llvm.dbg.value(metadata i8 %87, i64 0, metadata !2271, metadata !884), !dbg !2331
  call void @llvm.dbg.value(metadata i8 %86, i64 0, metadata !2269, metadata !884), !dbg !2328
  call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !2259, metadata !884), !dbg !2319
  %88 = and i8 %87, 1, !dbg !2386
  %89 = icmp eq i8 %88, 0, !dbg !2386
  br i1 %89, label %90, label %95, !dbg !2388

; <label>:90:                                     ; preds = %85
  %91 = icmp eq i64 %40, 0, !dbg !2389
  br i1 %91, label %95, label %92, !dbg !2393

; <label>:92:                                     ; preds = %90
  store i8 39, i8* %0, align 1, !dbg !2395, !tbaa !1090
  br label %95, !dbg !2395

; <label>:93:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2271, metadata !884), !dbg !2331
  br label %95, !dbg !2397

; <label>:94:                                     ; preds = %27
  call void @abort() #14, !dbg !2398
  unreachable, !dbg !2398

; <label>:95:                                     ; preds = %41, %85, %90, %92, %27, %42, %45, %47, %93, %73
  %96 = phi i32 [ 0, %93 ], [ %28, %73 ], [ 5, %47 ], [ 5, %45 ], [ 5, %42 ], [ 7, %27 ], [ 2, %92 ], [ 2, %90 ], [ 2, %85 ], [ 5, %41 ]
  %97 = phi i8* [ %29, %93 ], [ %52, %73 ], [ %29, %47 ], [ %29, %45 ], [ %29, %42 ], [ %29, %27 ], [ %29, %92 ], [ %29, %90 ], [ %29, %85 ], [ %29, %41 ]
  %98 = phi i8* [ %30, %93 ], [ %53, %73 ], [ %30, %47 ], [ %30, %45 ], [ %30, %42 ], [ %30, %27 ], [ %30, %92 ], [ %30, %90 ], [ %30, %85 ], [ %30, %41 ]
  %99 = phi i64 [ 0, %93 ], [ %74, %73 ], [ 1, %47 ], [ 1, %45 ], [ 0, %42 ], [ 0, %27 ], [ 1, %92 ], [ 1, %90 ], [ 0, %85 ], [ 0, %41 ]
  %100 = phi i8* [ %32, %93 ], [ %53, %73 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.110, i64 0, i64 0), %47 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.110, i64 0, i64 0), %45 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.110, i64 0, i64 0), %42 ], [ %32, %27 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.109, i64 0, i64 0), %92 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.109, i64 0, i64 0), %90 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.109, i64 0, i64 0), %85 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.110, i64 0, i64 0), %41 ]
  %101 = phi i64 [ %33, %93 ], [ %75, %73 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ %33, %27 ], [ 1, %92 ], [ 1, %90 ], [ 1, %85 ], [ 1, %41 ]
  %102 = phi i8 [ %34, %93 ], [ 1, %73 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ 1, %27 ], [ %86, %92 ], [ %86, %90 ], [ %86, %85 ], [ 1, %41 ]
  %103 = phi i8 [ 0, %93 ], [ %36, %73 ], [ %36, %47 ], [ %36, %45 ], [ %36, %42 ], [ 0, %27 ], [ %87, %92 ], [ %87, %90 ], [ %87, %85 ], [ 1, %41 ]
  call void @llvm.dbg.value(metadata i8 %103, i64 0, metadata !2271, metadata !884), !dbg !2331
  call void @llvm.dbg.value(metadata i8 %102, i64 0, metadata !2269, metadata !884), !dbg !2328
  call void @llvm.dbg.value(metadata i64 %101, i64 0, metadata !2268, metadata !884), !dbg !2327
  call void @llvm.dbg.value(metadata i8* %100, i64 0, metadata !2267, metadata !884), !dbg !2326
  call void @llvm.dbg.value(metadata i64 %99, i64 0, metadata !2265, metadata !884), !dbg !2324
  call void @llvm.dbg.value(metadata i8* %98, i64 0, metadata !2263, metadata !884), !dbg !2323
  call void @llvm.dbg.value(metadata i8* %97, i64 0, metadata !2262, metadata !884), !dbg !2322
  call void @llvm.dbg.value(metadata i32 %96, i64 0, metadata !2259, metadata !884), !dbg !2319
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2264, metadata !884), !dbg !2399
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
  br label %123, !dbg !2400

; <label>:123:                                    ; preds = %587, %95
  %124 = phi i64 [ 0, %95 ], [ %596, %587 ]
  %125 = phi i64 [ %99, %95 ], [ %589, %587 ]
  %126 = phi i64 [ %31, %95 ], [ %590, %587 ]
  %127 = phi i64 [ %35, %95 ], [ %591, %587 ]
  %128 = phi i8 [ %37, %95 ], [ %592, %587 ]
  %129 = phi i8 [ %38, %95 ], [ %593, %587 ]
  %130 = phi i8 [ %39, %95 ], [ %594, %587 ]
  %131 = phi i64 [ %40, %95 ], [ %595, %587 ]
  call void @llvm.dbg.value(metadata i64 %131, i64 0, metadata !2256, metadata !884), !dbg !2316
  call void @llvm.dbg.value(metadata i8 %130, i64 0, metadata !2274, metadata !884), !dbg !2334
  call void @llvm.dbg.value(metadata i8 %129, i64 0, metadata !2273, metadata !884), !dbg !2333
  call void @llvm.dbg.value(metadata i8 %128, i64 0, metadata !2272, metadata !884), !dbg !2332
  call void @llvm.dbg.value(metadata i64 %127, i64 0, metadata !2258, metadata !884), !dbg !2318
  call void @llvm.dbg.value(metadata i64 %126, i64 0, metadata !2266, metadata !884), !dbg !2325
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !2265, metadata !884), !dbg !2324
  call void @llvm.dbg.value(metadata i64 %124, i64 0, metadata !2264, metadata !884), !dbg !2399
  %132 = icmp eq i64 %127, -1, !dbg !2401
  br i1 %132, label %135, label %133, !dbg !2403

; <label>:133:                                    ; preds = %123
  %134 = icmp eq i64 %124, %127, !dbg !2404
  br i1 %134, label %597, label %139, !dbg !2406

; <label>:135:                                    ; preds = %123
  %136 = getelementptr inbounds i8, i8* %2, i64 %124, !dbg !2408
  %137 = load i8, i8* %136, align 1, !dbg !2408, !tbaa !1090
  %138 = icmp eq i8 %137, 0, !dbg !2410
  br i1 %138, label %597, label %139, !dbg !2406

; <label>:139:                                    ; preds = %133, %135
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2280, metadata !884), !dbg !2411
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2281, metadata !884), !dbg !2412
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2282, metadata !884), !dbg !2413
  br i1 %109, label %140, label %155, !dbg !2414

; <label>:140:                                    ; preds = %139
  %141 = add i64 %124, %101, !dbg !2416
  %142 = and i1 %110, %132, !dbg !2418
  br i1 %142, label %143, label %145, !dbg !2418

; <label>:143:                                    ; preds = %140
  %144 = call i64 @strlen(i8* %2) #13, !dbg !2419
  call void @llvm.dbg.value(metadata i64 %144, i64 0, metadata !2258, metadata !884), !dbg !2318
  br label %145, !dbg !2420

; <label>:145:                                    ; preds = %140, %143
  %146 = phi i64 [ %144, %143 ], [ %127, %140 ]
  call void @llvm.dbg.value(metadata i64 %146, i64 0, metadata !2258, metadata !884), !dbg !2318
  %147 = icmp ugt i64 %141, %146, !dbg !2422
  br i1 %147, label %155, label %148, !dbg !2424

; <label>:148:                                    ; preds = %145
  %149 = getelementptr inbounds i8, i8* %2, i64 %124, !dbg !2425
  %150 = call i32 @memcmp(i8* %149, i8* %100, i64 %101) #13, !dbg !2426
  %151 = icmp ne i32 %150, 0, !dbg !2427
  %152 = or i1 %151, %112, !dbg !2427
  %153 = xor i1 %151, true, !dbg !2427
  %154 = zext i1 %153 to i8, !dbg !2427
  br i1 %152, label %155, label %644, !dbg !2427

; <label>:155:                                    ; preds = %148, %145, %139
  %156 = phi i64 [ %146, %148 ], [ %146, %145 ], [ %127, %139 ]
  %157 = phi i8 [ %154, %148 ], [ 0, %145 ], [ 0, %139 ]
  call void @llvm.dbg.value(metadata i8 %157, i64 0, metadata !2280, metadata !884), !dbg !2411
  call void @llvm.dbg.value(metadata i64 %156, i64 0, metadata !2258, metadata !884), !dbg !2318
  %158 = getelementptr inbounds i8, i8* %2, i64 %124, !dbg !2429
  %159 = load i8, i8* %158, align 1, !dbg !2429, !tbaa !1090
  call void @llvm.dbg.value(metadata i8 %159, i64 0, metadata !2275, metadata !884), !dbg !2430
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
  ], !dbg !2431

; <label>:160:                                    ; preds = %155
  br i1 %105, label %161, label %209, !dbg !2432

; <label>:161:                                    ; preds = %160
  br i1 %112, label %162, label %644, !dbg !2433

; <label>:162:                                    ; preds = %161
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2281, metadata !884), !dbg !2412
  %163 = and i8 %128, 1, !dbg !2438
  %164 = icmp eq i8 %163, 0, !dbg !2438
  %165 = and i1 %114, %164, !dbg !2441
  br i1 %165, label %166, label %182, !dbg !2441

; <label>:166:                                    ; preds = %162
  %167 = icmp ult i64 %125, %131, !dbg !2443
  br i1 %167, label %168, label %170, !dbg !2448

; <label>:168:                                    ; preds = %166
  %169 = getelementptr inbounds i8, i8* %0, i64 %125, !dbg !2450
  store i8 39, i8* %169, align 1, !dbg !2450, !tbaa !1090
  br label %170, !dbg !2450

; <label>:170:                                    ; preds = %168, %166
  %171 = add i64 %125, 1, !dbg !2452
  call void @llvm.dbg.value(metadata i64 %171, i64 0, metadata !2265, metadata !884), !dbg !2324
  %172 = icmp ult i64 %171, %131, !dbg !2454
  br i1 %172, label %173, label %175, !dbg !2458

; <label>:173:                                    ; preds = %170
  %174 = getelementptr inbounds i8, i8* %0, i64 %171, !dbg !2460
  store i8 36, i8* %174, align 1, !dbg !2460, !tbaa !1090
  br label %175, !dbg !2460

; <label>:175:                                    ; preds = %173, %170
  %176 = add i64 %125, 2, !dbg !2462
  call void @llvm.dbg.value(metadata i64 %176, i64 0, metadata !2265, metadata !884), !dbg !2324
  %177 = icmp ult i64 %176, %131, !dbg !2464
  br i1 %177, label %178, label %180, !dbg !2468

; <label>:178:                                    ; preds = %175
  %179 = getelementptr inbounds i8, i8* %0, i64 %176, !dbg !2470
  store i8 39, i8* %179, align 1, !dbg !2470, !tbaa !1090
  br label %180, !dbg !2470

; <label>:180:                                    ; preds = %178, %175
  %181 = add i64 %125, 3, !dbg !2472
  call void @llvm.dbg.value(metadata i64 %181, i64 0, metadata !2265, metadata !884), !dbg !2324
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2272, metadata !884), !dbg !2332
  br label %182, !dbg !2474

; <label>:182:                                    ; preds = %162, %180
  %183 = phi i64 [ %181, %180 ], [ %125, %162 ]
  %184 = phi i8 [ 1, %180 ], [ %128, %162 ]
  call void @llvm.dbg.value(metadata i8 %184, i64 0, metadata !2272, metadata !884), !dbg !2332
  call void @llvm.dbg.value(metadata i64 %183, i64 0, metadata !2265, metadata !884), !dbg !2324
  %185 = icmp ult i64 %183, %131, !dbg !2476
  br i1 %185, label %186, label %188, !dbg !2480

; <label>:186:                                    ; preds = %182
  %187 = getelementptr inbounds i8, i8* %0, i64 %183, !dbg !2482
  store i8 92, i8* %187, align 1, !dbg !2482, !tbaa !1090
  br label %188, !dbg !2482

; <label>:188:                                    ; preds = %186, %182
  %189 = add i64 %183, 1, !dbg !2484
  call void @llvm.dbg.value(metadata i64 %189, i64 0, metadata !2265, metadata !884), !dbg !2324
  br i1 %106, label %190, label %476, !dbg !2486

; <label>:190:                                    ; preds = %188
  %191 = add i64 %124, 1, !dbg !2488
  %192 = icmp ult i64 %191, %156, !dbg !2490
  br i1 %192, label %193, label %476, !dbg !2491

; <label>:193:                                    ; preds = %190
  %194 = getelementptr inbounds i8, i8* %2, i64 %191, !dbg !2492
  %195 = load i8, i8* %194, align 1, !dbg !2492, !tbaa !1090
  %196 = add i8 %195, -48, !dbg !2494
  %197 = icmp ult i8 %196, 10, !dbg !2494
  br i1 %197, label %198, label %476, !dbg !2494

; <label>:198:                                    ; preds = %193
  %199 = icmp ult i64 %189, %131, !dbg !2495
  br i1 %199, label %200, label %202, !dbg !2500

; <label>:200:                                    ; preds = %198
  %201 = getelementptr inbounds i8, i8* %0, i64 %189, !dbg !2502
  store i8 48, i8* %201, align 1, !dbg !2502, !tbaa !1090
  br label %202, !dbg !2502

; <label>:202:                                    ; preds = %200, %198
  %203 = add i64 %183, 2, !dbg !2504
  call void @llvm.dbg.value(metadata i64 %203, i64 0, metadata !2265, metadata !884), !dbg !2324
  %204 = icmp ult i64 %203, %131, !dbg !2506
  br i1 %204, label %205, label %207, !dbg !2510

; <label>:205:                                    ; preds = %202
  %206 = getelementptr inbounds i8, i8* %0, i64 %203, !dbg !2512
  store i8 48, i8* %206, align 1, !dbg !2512, !tbaa !1090
  br label %207, !dbg !2512

; <label>:207:                                    ; preds = %205, %202
  %208 = add i64 %183, 3, !dbg !2514
  call void @llvm.dbg.value(metadata i64 %208, i64 0, metadata !2265, metadata !884), !dbg !2324
  br label %476, !dbg !2516

; <label>:209:                                    ; preds = %160
  br i1 %23, label %476, label %587, !dbg !2517

; <label>:210:                                    ; preds = %155
  switch i32 %96, label %476 [
    i32 2, label %211
    i32 5, label %212
  ], !dbg !2518

; <label>:211:                                    ; preds = %210
  br i1 %112, label %476, label %644, !dbg !2519

; <label>:212:                                    ; preds = %210
  br i1 %25, label %476, label %213, !dbg !2521

; <label>:213:                                    ; preds = %212
  %214 = add i64 %124, 2, !dbg !2523
  %215 = icmp ult i64 %214, %156, !dbg !2525
  br i1 %215, label %216, label %476, !dbg !2526

; <label>:216:                                    ; preds = %213
  %217 = add i64 %124, 1, !dbg !2527
  %218 = getelementptr inbounds i8, i8* %2, i64 %217, !dbg !2529
  %219 = load i8, i8* %218, align 1, !dbg !2529, !tbaa !1090
  %220 = icmp eq i8 %219, 63, !dbg !2530
  br i1 %220, label %221, label %476, !dbg !2531

; <label>:221:                                    ; preds = %216
  %222 = getelementptr inbounds i8, i8* %2, i64 %214, !dbg !2533
  %223 = load i8, i8* %222, align 1, !dbg !2533, !tbaa !1090
  %224 = sext i8 %223 to i32, !dbg !2533
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
  ], !dbg !2534

; <label>:225:                                    ; preds = %221, %221, %221, %221, %221, %221, %221, %221, %221
  br i1 %112, label %226, label %644, !dbg !2535

; <label>:226:                                    ; preds = %225
  call void @llvm.dbg.value(metadata i8 %223, i64 0, metadata !2275, metadata !884), !dbg !2430
  call void @llvm.dbg.value(metadata i64 %214, i64 0, metadata !2264, metadata !884), !dbg !2399
  %227 = icmp ult i64 %125, %131, !dbg !2537
  br i1 %227, label %228, label %230, !dbg !2541

; <label>:228:                                    ; preds = %226
  %229 = getelementptr inbounds i8, i8* %0, i64 %125, !dbg !2543
  store i8 63, i8* %229, align 1, !dbg !2543, !tbaa !1090
  br label %230, !dbg !2543

; <label>:230:                                    ; preds = %228, %226
  %231 = add i64 %125, 1, !dbg !2545
  call void @llvm.dbg.value(metadata i64 %231, i64 0, metadata !2265, metadata !884), !dbg !2324
  %232 = icmp ult i64 %231, %131, !dbg !2547
  br i1 %232, label %233, label %235, !dbg !2551

; <label>:233:                                    ; preds = %230
  %234 = getelementptr inbounds i8, i8* %0, i64 %231, !dbg !2553
  store i8 34, i8* %234, align 1, !dbg !2553, !tbaa !1090
  br label %235, !dbg !2553

; <label>:235:                                    ; preds = %233, %230
  %236 = add i64 %125, 2, !dbg !2555
  call void @llvm.dbg.value(metadata i64 %236, i64 0, metadata !2265, metadata !884), !dbg !2324
  %237 = icmp ult i64 %236, %131, !dbg !2557
  br i1 %237, label %238, label %240, !dbg !2561

; <label>:238:                                    ; preds = %235
  %239 = getelementptr inbounds i8, i8* %0, i64 %236, !dbg !2563
  store i8 34, i8* %239, align 1, !dbg !2563, !tbaa !1090
  br label %240, !dbg !2563

; <label>:240:                                    ; preds = %238, %235
  %241 = add i64 %125, 3, !dbg !2565
  call void @llvm.dbg.value(metadata i64 %241, i64 0, metadata !2265, metadata !884), !dbg !2324
  %242 = icmp ult i64 %241, %131, !dbg !2567
  br i1 %242, label %243, label %245, !dbg !2571

; <label>:243:                                    ; preds = %240
  %244 = getelementptr inbounds i8, i8* %0, i64 %241, !dbg !2573
  store i8 63, i8* %244, align 1, !dbg !2573, !tbaa !1090
  br label %245, !dbg !2573

; <label>:245:                                    ; preds = %243, %240
  %246 = add i64 %125, 4, !dbg !2575
  call void @llvm.dbg.value(metadata i64 %246, i64 0, metadata !2265, metadata !884), !dbg !2324
  br label %476, !dbg !2577

; <label>:247:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 98, i64 0, metadata !2279, metadata !884), !dbg !2578
  br label %257, !dbg !2579

; <label>:248:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 102, i64 0, metadata !2279, metadata !884), !dbg !2578
  br label %257, !dbg !2580

; <label>:249:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 114, i64 0, metadata !2279, metadata !884), !dbg !2578
  br label %255, !dbg !2581

; <label>:250:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 116, i64 0, metadata !2279, metadata !884), !dbg !2578
  br label %255, !dbg !2582

; <label>:251:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 118, i64 0, metadata !2279, metadata !884), !dbg !2578
  br label %257, !dbg !2583

; <label>:252:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 %159, i64 0, metadata !2279, metadata !884), !dbg !2578
  br i1 %114, label %253, label %254, !dbg !2584

; <label>:253:                                    ; preds = %252
  br i1 %112, label %542, label %644, !dbg !2585

; <label>:254:                                    ; preds = %252
  br i1 %122, label %542, label %255, !dbg !2588

; <label>:255:                                    ; preds = %254, %155, %250, %249
  %256 = phi i8 [ 92, %254 ], [ 116, %250 ], [ 114, %249 ], [ 110, %155 ]
  call void @llvm.dbg.value(metadata i8 %256, i64 0, metadata !2279, metadata !884), !dbg !2578
  br i1 %118, label %257, label %644, !dbg !2590

; <label>:257:                                    ; preds = %255, %155, %251, %248, %247
  %258 = phi i8 [ %256, %255 ], [ 118, %251 ], [ 102, %248 ], [ 98, %247 ], [ 97, %155 ]
  call void @llvm.dbg.value(metadata i8 %258, i64 0, metadata !2279, metadata !884), !dbg !2578
  br i1 %105, label %503, label %476, !dbg !2592

; <label>:259:                                    ; preds = %155, %155
  %260 = icmp eq i64 %156, -1, !dbg !2593
  br i1 %260, label %261, label %266, !dbg !2595

; <label>:261:                                    ; preds = %259
  %262 = load i8, i8* %26, align 1, !dbg !2596, !tbaa !1090
  %263 = icmp ne i8 %262, 0, !dbg !2598
  %264 = icmp ne i64 %124, 0, !dbg !2599
  %265 = or i1 %264, %263, !dbg !2601
  br i1 %265, label %476, label %272, !dbg !2601

; <label>:266:                                    ; preds = %259
  %267 = icmp ne i64 %156, 1, !dbg !2602
  %268 = icmp ne i64 %124, 0, !dbg !2599
  %269 = or i1 %268, %267, !dbg !2604
  br i1 %269, label %476, label %272, !dbg !2604

; <label>:270:                                    ; preds = %155, %155
  %271 = icmp eq i64 %124, 0, !dbg !2599
  br i1 %271, label %272, label %476, !dbg !2606

; <label>:272:                                    ; preds = %270, %266, %261, %155
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2282, metadata !884), !dbg !2413
  br label %273, !dbg !2607

; <label>:273:                                    ; preds = %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %272
  %274 = phi i8 [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 1, %272 ]
  call void @llvm.dbg.value(metadata i8 %274, i64 0, metadata !2282, metadata !884), !dbg !2413
  br i1 %118, label %476, label %644, !dbg !2608

; <label>:275:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2273, metadata !884), !dbg !2333
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2282, metadata !884), !dbg !2413
  br i1 %114, label %276, label %476, !dbg !2610

; <label>:276:                                    ; preds = %275
  br i1 %112, label %277, label %644, !dbg !2611

; <label>:277:                                    ; preds = %276
  %278 = icmp eq i64 %131, 0, !dbg !2614
  %279 = icmp ne i64 %126, 0, !dbg !2616
  %280 = or i1 %279, %278, !dbg !2618
  call void @llvm.dbg.value(metadata i64 %131, i64 0, metadata !2266, metadata !884), !dbg !2325
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2256, metadata !884), !dbg !2316
  %281 = select i1 %280, i64 %126, i64 %131, !dbg !2618
  %282 = select i1 %280, i64 %131, i64 0, !dbg !2618
  call void @llvm.dbg.value(metadata i64 %282, i64 0, metadata !2256, metadata !884), !dbg !2316
  call void @llvm.dbg.value(metadata i64 %281, i64 0, metadata !2266, metadata !884), !dbg !2325
  %283 = icmp ult i64 %125, %282, !dbg !2619
  br i1 %283, label %284, label %286, !dbg !2623

; <label>:284:                                    ; preds = %277
  %285 = getelementptr inbounds i8, i8* %0, i64 %125, !dbg !2625
  store i8 39, i8* %285, align 1, !dbg !2625, !tbaa !1090
  br label %286, !dbg !2625

; <label>:286:                                    ; preds = %284, %277
  %287 = add i64 %125, 1, !dbg !2627
  call void @llvm.dbg.value(metadata i64 %287, i64 0, metadata !2265, metadata !884), !dbg !2324
  %288 = icmp ult i64 %287, %282, !dbg !2629
  br i1 %288, label %289, label %291, !dbg !2633

; <label>:289:                                    ; preds = %286
  %290 = getelementptr inbounds i8, i8* %0, i64 %287, !dbg !2635
  store i8 92, i8* %290, align 1, !dbg !2635, !tbaa !1090
  br label %291, !dbg !2635

; <label>:291:                                    ; preds = %289, %286
  %292 = add i64 %125, 2, !dbg !2637
  call void @llvm.dbg.value(metadata i64 %292, i64 0, metadata !2265, metadata !884), !dbg !2324
  %293 = icmp ult i64 %292, %282, !dbg !2639
  br i1 %293, label %294, label %296, !dbg !2643

; <label>:294:                                    ; preds = %291
  %295 = getelementptr inbounds i8, i8* %0, i64 %292, !dbg !2645
  store i8 39, i8* %295, align 1, !dbg !2645, !tbaa !1090
  br label %296, !dbg !2645

; <label>:296:                                    ; preds = %294, %291
  %297 = add i64 %125, 3, !dbg !2647
  call void @llvm.dbg.value(metadata i64 %297, i64 0, metadata !2265, metadata !884), !dbg !2324
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2272, metadata !884), !dbg !2332
  br label %476, !dbg !2649

; <label>:298:                                    ; preds = %155
  br i1 %14, label %299, label %308, !dbg !2650

; <label>:299:                                    ; preds = %298
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2283, metadata !884), !dbg !2651
  %300 = tail call i16** @__ctype_b_loc() #1, !dbg !2652
  %301 = load i16*, i16** %300, align 8, !dbg !2652, !tbaa !892
  %302 = zext i8 %159 to i64, !dbg !2652
  %303 = getelementptr inbounds i16, i16* %301, i64 %302, !dbg !2652
  %304 = load i16, i16* %303, align 2, !dbg !2652, !tbaa !2654
  %305 = lshr i16 %304, 14, !dbg !2655
  %306 = trunc i16 %305 to i8, !dbg !2655
  %307 = and i8 %306, 1, !dbg !2655
  call void @llvm.dbg.value(metadata i8 %307, i64 0, metadata !2286, metadata !884), !dbg !2656
  br label %368, !dbg !2657

; <label>:308:                                    ; preds = %298
  call void @llvm.lifetime.start(i64 8, i8* nonnull %18) #10, !dbg !2658
  store i64 0, i64* %10, align 8, !dbg !2659
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2283, metadata !884), !dbg !2651
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2286, metadata !884), !dbg !2656
  %309 = icmp eq i64 %156, -1, !dbg !2660
  br i1 %309, label %310, label %312, !dbg !2662, !llvm.loop !2663

; <label>:310:                                    ; preds = %308
  %311 = call i64 @strlen(i8* nonnull %2) #13, !dbg !2666
  call void @llvm.dbg.value(metadata i64 %311, i64 0, metadata !2258, metadata !884), !dbg !2318
  br label %312, !dbg !2667, !llvm.loop !2663

; <label>:312:                                    ; preds = %310, %308
  %313 = phi i64 [ %156, %308 ], [ %311, %310 ]
  br label %314, !dbg !2656

; <label>:314:                                    ; preds = %312, %355
  %315 = phi i64 [ %360, %355 ], [ 0, %312 ]
  %316 = phi i8 [ %359, %355 ], [ 1, %312 ]
  call void @llvm.dbg.value(metadata i8 %316, i64 0, metadata !2286, metadata !884), !dbg !2656
  call void @llvm.dbg.value(metadata i64 %315, i64 0, metadata !2283, metadata !884), !dbg !2651
  call void @llvm.dbg.value(metadata i64 %313, i64 0, metadata !2258, metadata !884), !dbg !2318
  call void @llvm.lifetime.start(i64 4, i8* nonnull %19) #10, !dbg !2668
  %317 = add i64 %315, %124, !dbg !2669
  %318 = getelementptr inbounds i8, i8* %2, i64 %317, !dbg !2670
  %319 = sub i64 %313, %317, !dbg !2671
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !2287, metadata !1056), !dbg !2672
  call void @llvm.dbg.value(metadata i32* %12, i64 0, metadata !2301, metadata !1056), !dbg !2673
  %320 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %318, i64 %319, %struct.__mbstate_t* nonnull %11) #10, !dbg !2674
  call void @llvm.dbg.value(metadata i64 %320, i64 0, metadata !2304, metadata !884), !dbg !2675
  switch i64 %320, label %334 [
    i64 0, label %350
    i64 -1, label %347
    i64 -2, label %321
  ], !dbg !2676

; <label>:321:                                    ; preds = %314
  call void @llvm.dbg.value(metadata i64 %315, i64 0, metadata !2283, metadata !884), !dbg !2651
  %322 = icmp ugt i64 %313, %317, !dbg !2677
  br i1 %322, label %323, label %351, !dbg !2680

; <label>:323:                                    ; preds = %321
  br label %324, !dbg !2681

; <label>:324:                                    ; preds = %323, %330
  %325 = phi i64 [ %332, %330 ], [ %317, %323 ]
  %326 = phi i64 [ %331, %330 ], [ %315, %323 ]
  %327 = getelementptr inbounds i8, i8* %2, i64 %325, !dbg !2681
  %328 = load i8, i8* %327, align 1, !dbg !2681, !tbaa !1090
  %329 = icmp eq i8 %328, 0, !dbg !2683
  br i1 %329, label %348, label %330, !dbg !2684

; <label>:330:                                    ; preds = %324
  %331 = add i64 %326, 1, !dbg !2686
  call void @llvm.dbg.value(metadata i64 %331, i64 0, metadata !2283, metadata !884), !dbg !2651
  call void @llvm.dbg.value(metadata i64 %331, i64 0, metadata !2283, metadata !884), !dbg !2651
  %332 = add i64 %331, %124, !dbg !2687
  %333 = icmp ult i64 %332, %313, !dbg !2677
  br i1 %333, label %324, label %348, !dbg !2680, !llvm.loop !2688

; <label>:334:                                    ; preds = %314
  %335 = icmp ugt i64 %320, 1, !dbg !2690
  %336 = and i1 %116, %335, !dbg !2694
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2305, metadata !884), !dbg !2695
  br i1 %336, label %337, label %355, !dbg !2694

; <label>:337:                                    ; preds = %334
  br label %338, !dbg !2696

; <label>:338:                                    ; preds = %337, %344
  %339 = phi i64 [ %345, %344 ], [ 1, %337 ]
  %340 = add i64 %339, %317, !dbg !2696
  %341 = getelementptr inbounds i8, i8* %2, i64 %340, !dbg !2697
  %342 = load i8, i8* %341, align 1, !dbg !2697, !tbaa !1090
  %343 = sext i8 %342 to i32, !dbg !2697
  switch i32 %343, label %344 [
    i32 91, label %367
    i32 92, label %367
    i32 94, label %367
    i32 96, label %367
    i32 124, label %367
  ], !dbg !2698

; <label>:344:                                    ; preds = %338
  %345 = add nuw i64 %339, 1, !dbg !2699
  call void @llvm.dbg.value(metadata i64 %345, i64 0, metadata !2305, metadata !884), !dbg !2695
  call void @llvm.dbg.value(metadata i64 %345, i64 0, metadata !2305, metadata !884), !dbg !2695
  %346 = icmp ult i64 %345, %320, !dbg !2690
  br i1 %346, label %338, label %354, !dbg !2701, !llvm.loop !2703

; <label>:347:                                    ; preds = %314
  br label %351, !dbg !2656

; <label>:348:                                    ; preds = %324, %330
  %349 = phi i64 [ %331, %330 ], [ %326, %324 ]
  br label %351, !dbg !2656

; <label>:350:                                    ; preds = %314
  br label %351, !dbg !2656

; <label>:351:                                    ; preds = %350, %348, %347, %321
  %352 = phi i64 [ %315, %321 ], [ %315, %347 ], [ %349, %348 ], [ %315, %350 ]
  %353 = phi i8 [ 0, %321 ], [ 0, %347 ], [ 0, %348 ], [ %316, %350 ]
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !2286, metadata !884), !dbg !2656
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !2283, metadata !884), !dbg !2651
  call void @llvm.lifetime.end(i64 4, i8* nonnull %19) #10, !dbg !2706
  br label %364

; <label>:354:                                    ; preds = %344
  br label %355, !dbg !2707

; <label>:355:                                    ; preds = %354, %334
  %356 = load i32, i32* %12, align 4, !dbg !2707, !tbaa !1002
  call void @llvm.dbg.value(metadata i32 %356, i64 0, metadata !2301, metadata !884), !dbg !2673
  %357 = call i32 @iswprint(i32 %356) #10, !dbg !2709
  %358 = icmp eq i32 %357, 0, !dbg !2709
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2286, metadata !884), !dbg !2656
  %359 = select i1 %358, i8 0, i8 %316, !dbg !2710
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !2286, metadata !884), !dbg !2656
  %360 = add i64 %320, %315, !dbg !2711
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !2283, metadata !884), !dbg !2651
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !2286, metadata !884), !dbg !2656
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !2283, metadata !884), !dbg !2651
  call void @llvm.lifetime.end(i64 4, i8* nonnull %19) #10, !dbg !2706
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !2287, metadata !1056), !dbg !2672
  %361 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #13, !dbg !2712
  %362 = icmp eq i32 %361, 0, !dbg !2713
  br i1 %362, label %314, label %363, !dbg !2714, !llvm.loop !2663

; <label>:363:                                    ; preds = %355
  br label %364, !dbg !2716

; <label>:364:                                    ; preds = %363, %351
  %365 = phi i8 [ %353, %351 ], [ %359, %363 ]
  %366 = phi i64 [ %352, %351 ], [ %360, %363 ]
  call void @llvm.lifetime.end(i64 8, i8* nonnull %18) #10, !dbg !2716
  br label %368

; <label>:367:                                    ; preds = %338, %338, %338, %338, %338
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !2286, metadata !884), !dbg !2656
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !2283, metadata !884), !dbg !2651
  call void @llvm.lifetime.end(i64 4, i8* nonnull %19) #10, !dbg !2706
  call void @llvm.lifetime.end(i64 8, i8* nonnull %18) #10, !dbg !2716
  br label %649

; <label>:368:                                    ; preds = %364, %299
  %369 = phi i64 [ %156, %299 ], [ %313, %364 ]
  %370 = phi i64 [ 1, %299 ], [ %366, %364 ]
  %371 = phi i8 [ %307, %299 ], [ %365, %364 ]
  call void @llvm.dbg.value(metadata i8 %371, i64 0, metadata !2286, metadata !884), !dbg !2656
  call void @llvm.dbg.value(metadata i64 %370, i64 0, metadata !2283, metadata !884), !dbg !2651
  call void @llvm.dbg.value(metadata i64 %369, i64 0, metadata !2258, metadata !884), !dbg !2318
  %372 = and i8 %371, 1, !dbg !2717
  %373 = icmp ne i8 %372, 0, !dbg !2717
  call void @llvm.dbg.value(metadata i8 %372, i64 0, metadata !2282, metadata !884), !dbg !2413
  %374 = icmp ult i64 %370, 2, !dbg !2718
  %375 = or i1 %373, %113, !dbg !2719
  %376 = and i1 %374, %375, !dbg !2721
  br i1 %376, label %476, label %377, !dbg !2721

; <label>:377:                                    ; preds = %368
  %378 = add i64 %370, %124, !dbg !2722
  call void @llvm.dbg.value(metadata i64 %378, i64 0, metadata !2312, metadata !884), !dbg !2723
  br label %379, !dbg !2724

; <label>:379:                                    ; preds = %472, %377
  %380 = phi i64 [ %124, %377 ], [ %447, %472 ]
  %381 = phi i64 [ %125, %377 ], [ %473, %472 ]
  %382 = phi i8 [ %128, %377 ], [ %468, %472 ]
  %383 = phi i8 [ %159, %377 ], [ %475, %472 ]
  %384 = phi i8 [ %157, %377 ], [ %445, %472 ]
  %385 = phi i8 [ 0, %377 ], [ %446, %472 ]
  call void @llvm.dbg.value(metadata i8 %385, i64 0, metadata !2281, metadata !884), !dbg !2412
  call void @llvm.dbg.value(metadata i8 %384, i64 0, metadata !2280, metadata !884), !dbg !2411
  call void @llvm.dbg.value(metadata i8 %383, i64 0, metadata !2275, metadata !884), !dbg !2430
  call void @llvm.dbg.value(metadata i8 %382, i64 0, metadata !2272, metadata !884), !dbg !2332
  call void @llvm.dbg.value(metadata i64 %381, i64 0, metadata !2265, metadata !884), !dbg !2324
  call void @llvm.dbg.value(metadata i64 %380, i64 0, metadata !2264, metadata !884), !dbg !2399
  br i1 %375, label %432, label %386, !dbg !2725

; <label>:386:                                    ; preds = %379
  br i1 %112, label %387, label %643, !dbg !2730

; <label>:387:                                    ; preds = %386
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2281, metadata !884), !dbg !2412
  %388 = and i8 %382, 1, !dbg !2734
  %389 = icmp eq i8 %388, 0, !dbg !2734
  %390 = and i1 %114, %389, !dbg !2737
  br i1 %390, label %391, label %407, !dbg !2737

; <label>:391:                                    ; preds = %387
  %392 = icmp ult i64 %381, %131, !dbg !2739
  br i1 %392, label %393, label %395, !dbg !2744

; <label>:393:                                    ; preds = %391
  %394 = getelementptr inbounds i8, i8* %0, i64 %381, !dbg !2746
  store i8 39, i8* %394, align 1, !dbg !2746, !tbaa !1090
  br label %395, !dbg !2746

; <label>:395:                                    ; preds = %393, %391
  %396 = add i64 %381, 1, !dbg !2748
  call void @llvm.dbg.value(metadata i64 %396, i64 0, metadata !2265, metadata !884), !dbg !2324
  %397 = icmp ult i64 %396, %131, !dbg !2750
  br i1 %397, label %398, label %400, !dbg !2754

; <label>:398:                                    ; preds = %395
  %399 = getelementptr inbounds i8, i8* %0, i64 %396, !dbg !2756
  store i8 36, i8* %399, align 1, !dbg !2756, !tbaa !1090
  br label %400, !dbg !2756

; <label>:400:                                    ; preds = %398, %395
  %401 = add i64 %381, 2, !dbg !2758
  call void @llvm.dbg.value(metadata i64 %401, i64 0, metadata !2265, metadata !884), !dbg !2324
  %402 = icmp ult i64 %401, %131, !dbg !2760
  br i1 %402, label %403, label %405, !dbg !2764

; <label>:403:                                    ; preds = %400
  %404 = getelementptr inbounds i8, i8* %0, i64 %401, !dbg !2766
  store i8 39, i8* %404, align 1, !dbg !2766, !tbaa !1090
  br label %405, !dbg !2766

; <label>:405:                                    ; preds = %403, %400
  %406 = add i64 %381, 3, !dbg !2768
  call void @llvm.dbg.value(metadata i64 %406, i64 0, metadata !2265, metadata !884), !dbg !2324
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2272, metadata !884), !dbg !2332
  br label %407, !dbg !2770

; <label>:407:                                    ; preds = %387, %405
  %408 = phi i64 [ %406, %405 ], [ %381, %387 ]
  %409 = phi i8 [ 1, %405 ], [ %382, %387 ]
  call void @llvm.dbg.value(metadata i8 %409, i64 0, metadata !2272, metadata !884), !dbg !2332
  call void @llvm.dbg.value(metadata i64 %408, i64 0, metadata !2265, metadata !884), !dbg !2324
  %410 = icmp ult i64 %408, %131, !dbg !2772
  br i1 %410, label %411, label %413, !dbg !2776

; <label>:411:                                    ; preds = %407
  %412 = getelementptr inbounds i8, i8* %0, i64 %408, !dbg !2778
  store i8 92, i8* %412, align 1, !dbg !2778, !tbaa !1090
  br label %413, !dbg !2778

; <label>:413:                                    ; preds = %411, %407
  %414 = add i64 %408, 1, !dbg !2780
  call void @llvm.dbg.value(metadata i64 %414, i64 0, metadata !2265, metadata !884), !dbg !2324
  %415 = icmp ult i64 %414, %131, !dbg !2782
  br i1 %415, label %416, label %420, !dbg !2786

; <label>:416:                                    ; preds = %413
  %417 = lshr i8 %383, 6, !dbg !2788
  %418 = or i8 %417, 48, !dbg !2788
  %419 = getelementptr inbounds i8, i8* %0, i64 %414, !dbg !2788
  store i8 %418, i8* %419, align 1, !dbg !2788, !tbaa !1090
  br label %420, !dbg !2788

; <label>:420:                                    ; preds = %416, %413
  %421 = add i64 %408, 2, !dbg !2790
  call void @llvm.dbg.value(metadata i64 %421, i64 0, metadata !2265, metadata !884), !dbg !2324
  %422 = icmp ult i64 %421, %131, !dbg !2792
  br i1 %422, label %423, label %428, !dbg !2796

; <label>:423:                                    ; preds = %420
  %424 = lshr i8 %383, 3, !dbg !2798
  %425 = and i8 %424, 7, !dbg !2798
  %426 = or i8 %425, 48, !dbg !2798
  %427 = getelementptr inbounds i8, i8* %0, i64 %421, !dbg !2798
  store i8 %426, i8* %427, align 1, !dbg !2798, !tbaa !1090
  br label %428, !dbg !2798

; <label>:428:                                    ; preds = %423, %420
  %429 = add i64 %408, 3, !dbg !2800
  call void @llvm.dbg.value(metadata i64 %429, i64 0, metadata !2265, metadata !884), !dbg !2324
  %430 = and i8 %383, 7, !dbg !2802
  %431 = or i8 %430, 48, !dbg !2803
  call void @llvm.dbg.value(metadata i8 %431, i64 0, metadata !2275, metadata !884), !dbg !2430
  br label %441, !dbg !2804

; <label>:432:                                    ; preds = %379
  %433 = and i8 %384, 1, !dbg !2805
  %434 = icmp eq i8 %433, 0, !dbg !2805
  br i1 %434, label %441, label %435, !dbg !2807

; <label>:435:                                    ; preds = %432
  %436 = icmp ult i64 %381, %131, !dbg !2808
  br i1 %436, label %437, label %439, !dbg !2813

; <label>:437:                                    ; preds = %435
  %438 = getelementptr inbounds i8, i8* %0, i64 %381, !dbg !2815
  store i8 92, i8* %438, align 1, !dbg !2815, !tbaa !1090
  br label %439, !dbg !2815

; <label>:439:                                    ; preds = %437, %435
  %440 = add i64 %381, 1, !dbg !2817
  call void @llvm.dbg.value(metadata i64 %440, i64 0, metadata !2265, metadata !884), !dbg !2324
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2280, metadata !884), !dbg !2411
  br label %441, !dbg !2819

; <label>:441:                                    ; preds = %432, %439, %428
  %442 = phi i64 [ %440, %439 ], [ %381, %432 ], [ %429, %428 ]
  %443 = phi i8 [ %382, %439 ], [ %382, %432 ], [ %409, %428 ]
  %444 = phi i8 [ %383, %439 ], [ %383, %432 ], [ %431, %428 ]
  %445 = phi i8 [ 0, %439 ], [ %384, %432 ], [ %384, %428 ]
  %446 = phi i8 [ %385, %439 ], [ %385, %432 ], [ 1, %428 ]
  call void @llvm.dbg.value(metadata i8 %446, i64 0, metadata !2281, metadata !884), !dbg !2412
  call void @llvm.dbg.value(metadata i8 %445, i64 0, metadata !2280, metadata !884), !dbg !2411
  call void @llvm.dbg.value(metadata i8 %444, i64 0, metadata !2275, metadata !884), !dbg !2430
  call void @llvm.dbg.value(metadata i8 %443, i64 0, metadata !2272, metadata !884), !dbg !2332
  call void @llvm.dbg.value(metadata i64 %442, i64 0, metadata !2265, metadata !884), !dbg !2324
  %447 = add i64 %380, 1, !dbg !2820
  %448 = icmp ugt i64 %378, %447, !dbg !2822
  br i1 %448, label %449, label %541, !dbg !2823

; <label>:449:                                    ; preds = %441
  %450 = and i8 %443, 1, !dbg !2824
  %451 = icmp ne i8 %450, 0, !dbg !2824
  %452 = and i8 %446, 1, !dbg !2828
  %453 = icmp eq i8 %452, 0, !dbg !2828
  %454 = and i1 %451, %453, !dbg !2824
  br i1 %454, label %455, label %466, !dbg !2824

; <label>:455:                                    ; preds = %449
  %456 = icmp ult i64 %442, %131, !dbg !2830
  br i1 %456, label %457, label %459, !dbg !2835

; <label>:457:                                    ; preds = %455
  %458 = getelementptr inbounds i8, i8* %0, i64 %442, !dbg !2837
  store i8 39, i8* %458, align 1, !dbg !2837, !tbaa !1090
  br label %459, !dbg !2837

; <label>:459:                                    ; preds = %457, %455
  %460 = add i64 %442, 1, !dbg !2839
  call void @llvm.dbg.value(metadata i64 %460, i64 0, metadata !2265, metadata !884), !dbg !2324
  %461 = icmp ult i64 %460, %131, !dbg !2841
  br i1 %461, label %462, label %464, !dbg !2845

; <label>:462:                                    ; preds = %459
  %463 = getelementptr inbounds i8, i8* %0, i64 %460, !dbg !2847
  store i8 39, i8* %463, align 1, !dbg !2847, !tbaa !1090
  br label %464, !dbg !2847

; <label>:464:                                    ; preds = %462, %459
  %465 = add i64 %442, 2, !dbg !2849
  call void @llvm.dbg.value(metadata i64 %465, i64 0, metadata !2265, metadata !884), !dbg !2324
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2272, metadata !884), !dbg !2332
  br label %466, !dbg !2851

; <label>:466:                                    ; preds = %449, %464
  %467 = phi i64 [ %465, %464 ], [ %442, %449 ]
  %468 = phi i8 [ 0, %464 ], [ %443, %449 ]
  call void @llvm.dbg.value(metadata i8 %468, i64 0, metadata !2272, metadata !884), !dbg !2332
  call void @llvm.dbg.value(metadata i64 %467, i64 0, metadata !2265, metadata !884), !dbg !2324
  %469 = icmp ult i64 %467, %131, !dbg !2853
  br i1 %469, label %470, label %472, !dbg !2857

; <label>:470:                                    ; preds = %466
  %471 = getelementptr inbounds i8, i8* %0, i64 %467, !dbg !2859
  store i8 %444, i8* %471, align 1, !dbg !2859, !tbaa !1090
  br label %472, !dbg !2859

; <label>:472:                                    ; preds = %470, %466
  %473 = add i64 %467, 1, !dbg !2861
  call void @llvm.dbg.value(metadata i64 %473, i64 0, metadata !2265, metadata !884), !dbg !2324
  call void @llvm.dbg.value(metadata i64 %447, i64 0, metadata !2264, metadata !884), !dbg !2399
  %474 = getelementptr inbounds i8, i8* %2, i64 %447, !dbg !2863
  %475 = load i8, i8* %474, align 1, !dbg !2863, !tbaa !1090
  call void @llvm.dbg.value(metadata i8 %475, i64 0, metadata !2275, metadata !884), !dbg !2430
  br label %379, !dbg !2864, !llvm.loop !2866

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
  call void @llvm.dbg.value(metadata i64 %486, i64 0, metadata !2256, metadata !884), !dbg !2316
  call void @llvm.dbg.value(metadata i8 %485, i64 0, metadata !2282, metadata !884), !dbg !2413
  call void @llvm.dbg.value(metadata i8 %484, i64 0, metadata !2281, metadata !884), !dbg !2412
  call void @llvm.dbg.value(metadata i8 %157, i64 0, metadata !2280, metadata !884), !dbg !2411
  call void @llvm.dbg.value(metadata i8 %483, i64 0, metadata !2275, metadata !884), !dbg !2430
  call void @llvm.dbg.value(metadata i8 %482, i64 0, metadata !2273, metadata !884), !dbg !2333
  call void @llvm.dbg.value(metadata i8 %481, i64 0, metadata !2272, metadata !884), !dbg !2332
  call void @llvm.dbg.value(metadata i64 %480, i64 0, metadata !2258, metadata !884), !dbg !2318
  call void @llvm.dbg.value(metadata i64 %479, i64 0, metadata !2266, metadata !884), !dbg !2325
  call void @llvm.dbg.value(metadata i64 %478, i64 0, metadata !2265, metadata !884), !dbg !2324
  call void @llvm.dbg.value(metadata i64 %477, i64 0, metadata !2264, metadata !884), !dbg !2399
  br i1 %107, label %488, label %487, !dbg !2869

; <label>:487:                                    ; preds = %476
  br i1 %117, label %489, label %501, !dbg !2871

; <label>:488:                                    ; preds = %476
  br i1 %20, label %501, label %489, !dbg !2872

; <label>:489:                                    ; preds = %488, %487
  %490 = lshr i8 %483, 5, !dbg !2873
  %491 = zext i8 %490 to i64, !dbg !2873
  %492 = getelementptr inbounds i32, i32* %6, i64 %491, !dbg !2875
  %493 = load i32, i32* %492, align 4, !dbg !2875, !tbaa !1002
  %494 = and i8 %483, 31, !dbg !2876
  %495 = zext i8 %494 to i32, !dbg !2877
  %496 = shl i32 1, %495, !dbg !2878
  %497 = and i32 %493, %496, !dbg !2878
  %498 = icmp eq i32 %497, 0, !dbg !2878
  %499 = icmp eq i8 %157, 0, !dbg !2879
  %500 = and i1 %499, %498, !dbg !2880
  br i1 %500, label %542, label %503, !dbg !2880

; <label>:501:                                    ; preds = %488, %487
  %502 = icmp eq i8 %157, 0, !dbg !2879
  br i1 %502, label %542, label %503, !dbg !2881

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
  call void @llvm.dbg.value(metadata i64 %512, i64 0, metadata !2256, metadata !884), !dbg !2316
  call void @llvm.dbg.value(metadata i8 %511, i64 0, metadata !2282, metadata !884), !dbg !2413
  call void @llvm.dbg.value(metadata i8 %510, i64 0, metadata !2275, metadata !884), !dbg !2430
  call void @llvm.dbg.value(metadata i8 %509, i64 0, metadata !2273, metadata !884), !dbg !2333
  call void @llvm.dbg.value(metadata i8 %508, i64 0, metadata !2272, metadata !884), !dbg !2332
  call void @llvm.dbg.value(metadata i64 %507, i64 0, metadata !2258, metadata !884), !dbg !2318
  call void @llvm.dbg.value(metadata i64 %506, i64 0, metadata !2266, metadata !884), !dbg !2325
  call void @llvm.dbg.value(metadata i64 %505, i64 0, metadata !2265, metadata !884), !dbg !2324
  call void @llvm.dbg.value(metadata i64 %504, i64 0, metadata !2264, metadata !884), !dbg !2399
  br i1 %112, label %513, label %644, !dbg !2883

; <label>:513:                                    ; preds = %503
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2281, metadata !884), !dbg !2412
  %514 = and i8 %508, 1, !dbg !2886
  %515 = icmp eq i8 %514, 0, !dbg !2886
  %516 = and i1 %114, %515, !dbg !2889
  br i1 %516, label %517, label %533, !dbg !2889

; <label>:517:                                    ; preds = %513
  %518 = icmp ult i64 %505, %512, !dbg !2891
  br i1 %518, label %519, label %521, !dbg !2896

; <label>:519:                                    ; preds = %517
  %520 = getelementptr inbounds i8, i8* %0, i64 %505, !dbg !2898
  store i8 39, i8* %520, align 1, !dbg !2898, !tbaa !1090
  br label %521, !dbg !2898

; <label>:521:                                    ; preds = %519, %517
  %522 = add i64 %505, 1, !dbg !2900
  call void @llvm.dbg.value(metadata i64 %522, i64 0, metadata !2265, metadata !884), !dbg !2324
  %523 = icmp ult i64 %522, %512, !dbg !2902
  br i1 %523, label %524, label %526, !dbg !2906

; <label>:524:                                    ; preds = %521
  %525 = getelementptr inbounds i8, i8* %0, i64 %522, !dbg !2908
  store i8 36, i8* %525, align 1, !dbg !2908, !tbaa !1090
  br label %526, !dbg !2908

; <label>:526:                                    ; preds = %524, %521
  %527 = add i64 %505, 2, !dbg !2910
  call void @llvm.dbg.value(metadata i64 %527, i64 0, metadata !2265, metadata !884), !dbg !2324
  %528 = icmp ult i64 %527, %512, !dbg !2912
  br i1 %528, label %529, label %531, !dbg !2916

; <label>:529:                                    ; preds = %526
  %530 = getelementptr inbounds i8, i8* %0, i64 %527, !dbg !2918
  store i8 39, i8* %530, align 1, !dbg !2918, !tbaa !1090
  br label %531, !dbg !2918

; <label>:531:                                    ; preds = %529, %526
  %532 = add i64 %505, 3, !dbg !2920
  call void @llvm.dbg.value(metadata i64 %532, i64 0, metadata !2265, metadata !884), !dbg !2324
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2272, metadata !884), !dbg !2332
  br label %533, !dbg !2922

; <label>:533:                                    ; preds = %513, %531
  %534 = phi i64 [ %532, %531 ], [ %505, %513 ]
  %535 = phi i8 [ 1, %531 ], [ %508, %513 ]
  call void @llvm.dbg.value(metadata i8 %535, i64 0, metadata !2272, metadata !884), !dbg !2332
  call void @llvm.dbg.value(metadata i64 %534, i64 0, metadata !2265, metadata !884), !dbg !2324
  %536 = icmp ult i64 %534, %512, !dbg !2924
  br i1 %536, label %537, label %539, !dbg !2928

; <label>:537:                                    ; preds = %533
  %538 = getelementptr inbounds i8, i8* %0, i64 %534, !dbg !2930
  store i8 92, i8* %538, align 1, !dbg !2930, !tbaa !1090
  br label %539, !dbg !2930

; <label>:539:                                    ; preds = %533, %537
  %540 = add i64 %534, 1, !dbg !2932
  call void @llvm.dbg.value(metadata i64 %540, i64 0, metadata !2265, metadata !884), !dbg !2324
  call void @llvm.dbg.value(metadata i64 %552, i64 0, metadata !2256, metadata !884), !dbg !2316
  call void @llvm.dbg.value(metadata i8 %551, i64 0, metadata !2282, metadata !884), !dbg !2413
  call void @llvm.dbg.value(metadata i8 %550, i64 0, metadata !2281, metadata !884), !dbg !2412
  call void @llvm.dbg.value(metadata i8 %549, i64 0, metadata !2275, metadata !884), !dbg !2430
  call void @llvm.dbg.value(metadata i8 %548, i64 0, metadata !2273, metadata !884), !dbg !2333
  call void @llvm.dbg.value(metadata i8 %547, i64 0, metadata !2272, metadata !884), !dbg !2332
  call void @llvm.dbg.value(metadata i64 %546, i64 0, metadata !2258, metadata !884), !dbg !2318
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !2266, metadata !884), !dbg !2325
  call void @llvm.dbg.value(metadata i64 %544, i64 0, metadata !2265, metadata !884), !dbg !2324
  call void @llvm.dbg.value(metadata i64 %543, i64 0, metadata !2264, metadata !884), !dbg !2399
  br label %569, !dbg !2934

; <label>:541:                                    ; preds = %441
  br label %542, !dbg !2316

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
  call void @llvm.dbg.value(metadata i64 %552, i64 0, metadata !2256, metadata !884), !dbg !2316
  call void @llvm.dbg.value(metadata i8 %551, i64 0, metadata !2282, metadata !884), !dbg !2413
  call void @llvm.dbg.value(metadata i8 %550, i64 0, metadata !2281, metadata !884), !dbg !2412
  call void @llvm.dbg.value(metadata i8 %549, i64 0, metadata !2275, metadata !884), !dbg !2430
  call void @llvm.dbg.value(metadata i8 %548, i64 0, metadata !2273, metadata !884), !dbg !2333
  call void @llvm.dbg.value(metadata i8 %547, i64 0, metadata !2272, metadata !884), !dbg !2332
  call void @llvm.dbg.value(metadata i64 %546, i64 0, metadata !2258, metadata !884), !dbg !2318
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !2266, metadata !884), !dbg !2325
  call void @llvm.dbg.value(metadata i64 %544, i64 0, metadata !2265, metadata !884), !dbg !2324
  call void @llvm.dbg.value(metadata i64 %543, i64 0, metadata !2264, metadata !884), !dbg !2399
  %553 = and i8 %547, 1, !dbg !2934
  %554 = icmp ne i8 %553, 0, !dbg !2934
  %555 = and i8 %550, 1, !dbg !2938
  %556 = icmp eq i8 %555, 0, !dbg !2938
  %557 = and i1 %554, %556, !dbg !2934
  br i1 %557, label %558, label %569, !dbg !2934

; <label>:558:                                    ; preds = %542
  %559 = icmp ult i64 %544, %552, !dbg !2940
  br i1 %559, label %560, label %562, !dbg !2945

; <label>:560:                                    ; preds = %558
  %561 = getelementptr inbounds i8, i8* %0, i64 %544, !dbg !2947
  store i8 39, i8* %561, align 1, !dbg !2947, !tbaa !1090
  br label %562, !dbg !2947

; <label>:562:                                    ; preds = %560, %558
  %563 = add i64 %544, 1, !dbg !2949
  call void @llvm.dbg.value(metadata i64 %563, i64 0, metadata !2265, metadata !884), !dbg !2324
  %564 = icmp ult i64 %563, %552, !dbg !2951
  br i1 %564, label %565, label %567, !dbg !2955

; <label>:565:                                    ; preds = %562
  %566 = getelementptr inbounds i8, i8* %0, i64 %563, !dbg !2957
  store i8 39, i8* %566, align 1, !dbg !2957, !tbaa !1090
  br label %567, !dbg !2957

; <label>:567:                                    ; preds = %565, %562
  %568 = add i64 %544, 2, !dbg !2959
  call void @llvm.dbg.value(metadata i64 %568, i64 0, metadata !2265, metadata !884), !dbg !2324
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2272, metadata !884), !dbg !2332
  br label %569, !dbg !2961

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
  call void @llvm.dbg.value(metadata i8 %578, i64 0, metadata !2272, metadata !884), !dbg !2332
  call void @llvm.dbg.value(metadata i64 %577, i64 0, metadata !2265, metadata !884), !dbg !2324
  %579 = icmp ult i64 %577, %570, !dbg !2963
  br i1 %579, label %580, label %582, !dbg !2967

; <label>:580:                                    ; preds = %569
  %581 = getelementptr inbounds i8, i8* %0, i64 %577, !dbg !2969
  store i8 %572, i8* %581, align 1, !dbg !2969, !tbaa !1090
  br label %582, !dbg !2969

; <label>:582:                                    ; preds = %580, %569
  %583 = add i64 %577, 1, !dbg !2971
  call void @llvm.dbg.value(metadata i64 %583, i64 0, metadata !2265, metadata !884), !dbg !2324
  %584 = and i8 %571, 1, !dbg !2973
  %585 = icmp eq i8 %584, 0, !dbg !2973
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2274, metadata !884), !dbg !2334
  %586 = select i1 %585, i8 0, i8 %130, !dbg !2975
  call void @llvm.dbg.value(metadata i8 %586, i64 0, metadata !2274, metadata !884), !dbg !2334
  br label %587, !dbg !2976

; <label>:587:                                    ; preds = %582, %209
  %588 = phi i64 [ %124, %209 ], [ %576, %582 ]
  %589 = phi i64 [ %125, %209 ], [ %583, %582 ]
  %590 = phi i64 [ %126, %209 ], [ %575, %582 ]
  %591 = phi i64 [ %156, %209 ], [ %574, %582 ]
  %592 = phi i8 [ %128, %209 ], [ %578, %582 ]
  %593 = phi i8 [ %129, %209 ], [ %573, %582 ]
  %594 = phi i8 [ %130, %209 ], [ %586, %582 ]
  %595 = phi i64 [ %131, %209 ], [ %570, %582 ]
  %596 = add i64 %588, 1, !dbg !2977
  call void @llvm.dbg.value(metadata i64 %596, i64 0, metadata !2264, metadata !884), !dbg !2399
  br label %123, !dbg !2979, !llvm.loop !2980

; <label>:597:                                    ; preds = %133, %135
  %598 = phi i64 [ %124, %133 ], [ -1, %135 ]
  %599 = icmp eq i64 %125, 0, !dbg !2983
  %600 = and i1 %114, %599, !dbg !2985
  %601 = xor i1 %600, true, !dbg !2985
  %602 = or i1 %112, %601, !dbg !2985
  br i1 %602, label %603, label %648, !dbg !2985

; <label>:603:                                    ; preds = %597
  %604 = and i1 %114, %112, !dbg !2986
  %605 = xor i1 %604, true, !dbg !2986
  %606 = and i8 %129, 1, !dbg !2988
  %607 = icmp eq i8 %606, 0, !dbg !2988
  %608 = or i1 %607, %605, !dbg !2986
  br i1 %608, label %618, label %609, !dbg !2986

; <label>:609:                                    ; preds = %603
  %610 = and i8 %130, 1, !dbg !2990
  %611 = icmp eq i8 %610, 0, !dbg !2990
  br i1 %611, label %614, label %612, !dbg !2993

; <label>:612:                                    ; preds = %609
  %613 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %126, i8* %2, i64 %598, i32 5, i32 %5, i32* %6, i8* %97, i8* %98), !dbg !2994
  br label %659, !dbg !2995

; <label>:614:                                    ; preds = %609
  %615 = icmp eq i64 %131, 0, !dbg !2996
  %616 = icmp ne i64 %126, 0, !dbg !2998
  %617 = and i1 %616, %615, !dbg !3000
  br i1 %617, label %27, label %618, !dbg !3000

; <label>:618:                                    ; preds = %603, %614
  %619 = icmp ne i8* %100, null, !dbg !3001
  %620 = and i1 %619, %112, !dbg !3003
  br i1 %620, label %621, label %638, !dbg !3003

; <label>:621:                                    ; preds = %618
  call void @llvm.dbg.value(metadata i8* %100, i64 0, metadata !2267, metadata !884), !dbg !2326
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !2265, metadata !884), !dbg !2324
  %622 = load i8, i8* %100, align 1, !dbg !3004, !tbaa !1090
  %623 = icmp eq i8 %622, 0, !dbg !3008
  br i1 %623, label %638, label %624, !dbg !3008

; <label>:624:                                    ; preds = %621
  br label %625, !dbg !3010

; <label>:625:                                    ; preds = %624, %632
  %626 = phi i8 [ %635, %632 ], [ %622, %624 ]
  %627 = phi i8* [ %634, %632 ], [ %100, %624 ]
  %628 = phi i64 [ %633, %632 ], [ %125, %624 ]
  %629 = icmp ult i64 %628, %131, !dbg !3010
  br i1 %629, label %630, label %632, !dbg !3014

; <label>:630:                                    ; preds = %625
  %631 = getelementptr inbounds i8, i8* %0, i64 %628, !dbg !3016
  store i8 %626, i8* %631, align 1, !dbg !3016, !tbaa !1090
  br label %632, !dbg !3016

; <label>:632:                                    ; preds = %630, %625
  %633 = add i64 %628, 1, !dbg !3018
  call void @llvm.dbg.value(metadata i64 %633, i64 0, metadata !2265, metadata !884), !dbg !2324
  %634 = getelementptr inbounds i8, i8* %627, i64 1, !dbg !3020
  call void @llvm.dbg.value(metadata i8* %634, i64 0, metadata !2267, metadata !884), !dbg !2326
  call void @llvm.dbg.value(metadata i8* %634, i64 0, metadata !2267, metadata !884), !dbg !2326
  call void @llvm.dbg.value(metadata i64 %633, i64 0, metadata !2265, metadata !884), !dbg !2324
  %635 = load i8, i8* %634, align 1, !dbg !3004, !tbaa !1090
  %636 = icmp eq i8 %635, 0, !dbg !3008
  br i1 %636, label %637, label %625, !dbg !3008, !llvm.loop !3022

; <label>:637:                                    ; preds = %632
  br label %638, !dbg !2324

; <label>:638:                                    ; preds = %637, %621, %618
  %639 = phi i64 [ %125, %618 ], [ %125, %621 ], [ %633, %637 ]
  call void @llvm.dbg.value(metadata i64 %639, i64 0, metadata !2265, metadata !884), !dbg !2324
  %640 = icmp ult i64 %639, %131, !dbg !3025
  br i1 %640, label %641, label %659, !dbg !3027

; <label>:641:                                    ; preds = %638
  %642 = getelementptr inbounds i8, i8* %0, i64 %639, !dbg !3028
  store i8 0, i8* %642, align 1, !dbg !3029, !tbaa !1090
  br label %659, !dbg !3028

; <label>:643:                                    ; preds = %386
  br label %649, !dbg !2316

; <label>:644:                                    ; preds = %148, %161, %211, %225, %253, %255, %273, %276, %503
  %645 = phi i32 [ %96, %148 ], [ %96, %161 ], [ 2, %211 ], [ 5, %225 ], [ 2, %253 ], [ 2, %255 ], [ 2, %273 ], [ 2, %276 ], [ %96, %503 ]
  %646 = phi i64 [ %146, %148 ], [ %156, %161 ], [ %156, %211 ], [ %156, %225 ], [ %156, %253 ], [ %156, %255 ], [ %156, %273 ], [ %156, %276 ], [ %507, %503 ]
  %647 = phi i64 [ %131, %148 ], [ %131, %161 ], [ %131, %211 ], [ %131, %225 ], [ %131, %253 ], [ %131, %255 ], [ %131, %273 ], [ %131, %276 ], [ %512, %503 ]
  br label %649, !dbg !2316

; <label>:648:                                    ; preds = %597
  br label %649, !dbg !2316

; <label>:649:                                    ; preds = %648, %644, %643, %367
  %650 = phi i32 [ 2, %367 ], [ %96, %643 ], [ %645, %644 ], [ %96, %648 ]
  %651 = phi i64 [ %313, %367 ], [ %369, %643 ], [ %646, %644 ], [ %598, %648 ]
  %652 = phi i64 [ %131, %367 ], [ %131, %643 ], [ %647, %644 ], [ %131, %648 ]
  call void @llvm.dbg.value(metadata i64 %652, i64 0, metadata !2256, metadata !884), !dbg !2316
  call void @llvm.dbg.value(metadata i64 %651, i64 0, metadata !2258, metadata !884), !dbg !2318
  %653 = icmp ne i32 %650, 2, !dbg !3030
  %654 = icmp eq i8 %104, 0, !dbg !3032
  %655 = or i1 %653, %654, !dbg !3034
  call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !2259, metadata !884), !dbg !2319
  %656 = select i1 %655, i32 %650, i32 4, !dbg !3034
  call void @llvm.dbg.value(metadata i32 %656, i64 0, metadata !2259, metadata !884), !dbg !2319
  %657 = and i32 %5, -3, !dbg !3035
  %658 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %652, i8* %2, i64 %651, i32 %656, i32 %657, i32* null, i8* %97, i8* %98), !dbg !3036
  br label %659, !dbg !3037

; <label>:659:                                    ; preds = %638, %641, %649, %612
  %660 = phi i64 [ %658, %649 ], [ %613, %612 ], [ %639, %641 ], [ %639, %638 ]
  ret i64 %660, !dbg !3038
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8*, i32) unnamed_addr #6 !dbg !3039 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3043, metadata !884), !dbg !3047
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3044, metadata !884), !dbg !3048
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #10, !dbg !3049
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3045, metadata !884), !dbg !3050
  %4 = icmp eq i8* %3, %0, !dbg !3051
  br i1 %4, label %5, label %75, !dbg !3053

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @locale_charset() #10, !dbg !3054
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !3046, metadata !884), !dbg !3055
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3056, metadata !884), !dbg !3072
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3070, metadata !884), !dbg !3075
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3071, metadata !884), !dbg !3076
  %7 = load i8, i8* %6, align 1, !tbaa !1090
  %8 = sext i8 %7 to i32
  %9 = and i32 %8, -33, !dbg !3077
  switch i32 %9, label %72 [
    i32 85, label %10
    i32 71, label %38
  ], !dbg !3077

; <label>:10:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3080, metadata !884), !dbg !3094
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3092, metadata !884), !dbg !3098
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3093, metadata !884), !dbg !3099
  %11 = getelementptr inbounds i8, i8* %6, i64 1
  %12 = load i8, i8* %11, align 1, !tbaa !1090
  %13 = sext i8 %12 to i32
  %14 = and i32 %13, -33, !dbg !3100
  %15 = icmp eq i32 %14, 84, !dbg !3100
  br i1 %15, label %16, label %72, !dbg !3100

; <label>:16:                                     ; preds = %10
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3103, metadata !884), !dbg !3116
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3114, metadata !884), !dbg !3120
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3115, metadata !884), !dbg !3121
  %17 = getelementptr inbounds i8, i8* %6, i64 2
  %18 = load i8, i8* %17, align 1, !tbaa !1090
  %19 = sext i8 %18 to i32
  %20 = and i32 %19, -33, !dbg !3122
  %21 = icmp eq i32 %20, 70, !dbg !3122
  br i1 %21, label %22, label %72, !dbg !3122

; <label>:22:                                     ; preds = %16
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3125, metadata !884), !dbg !3137
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3135, metadata !884), !dbg !3141
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3136, metadata !884), !dbg !3142
  %23 = getelementptr inbounds i8, i8* %6, i64 3
  %24 = load i8, i8* %23, align 1, !tbaa !1090
  %25 = icmp eq i8 %24, 45, !dbg !3143
  br i1 %25, label %26, label %72, !dbg !3146

; <label>:26:                                     ; preds = %22
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3148, metadata !884), !dbg !3159
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3157, metadata !884), !dbg !3163
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3158, metadata !884), !dbg !3164
  %27 = getelementptr inbounds i8, i8* %6, i64 4
  %28 = load i8, i8* %27, align 1, !tbaa !1090
  %29 = icmp eq i8 %28, 56, !dbg !3165
  br i1 %29, label %30, label %72, !dbg !3168

; <label>:30:                                     ; preds = %26
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3170, metadata !884), !dbg !3180
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3178, metadata !884), !dbg !3184
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3179, metadata !884), !dbg !3185
  %31 = getelementptr inbounds i8, i8* %6, i64 5
  %32 = load i8, i8* %31, align 1, !tbaa !1090
  %33 = icmp eq i8 %32, 0, !dbg !3186
  br i1 %33, label %34, label %72, !dbg !3189

; <label>:34:                                     ; preds = %30
  %35 = load i8, i8* %0, align 1, !dbg !3191, !tbaa !1090
  %36 = icmp eq i8 %35, 96, !dbg !3192
  %37 = select i1 %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.111, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.112, i64 0, i64 0), !dbg !3191
  br label %75, !dbg !3193

; <label>:38:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3080, metadata !884), !dbg !3194
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3092, metadata !884), !dbg !3198
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3093, metadata !884), !dbg !3199
  %39 = getelementptr inbounds i8, i8* %6, i64 1
  %40 = load i8, i8* %39, align 1, !tbaa !1090
  %41 = sext i8 %40 to i32
  %42 = and i32 %41, -33, !dbg !3200
  %43 = icmp eq i32 %42, 66, !dbg !3200
  br i1 %43, label %44, label %72, !dbg !3200

; <label>:44:                                     ; preds = %38
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3103, metadata !884), !dbg !3201
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3114, metadata !884), !dbg !3203
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3115, metadata !884), !dbg !3204
  %45 = getelementptr inbounds i8, i8* %6, i64 2
  %46 = load i8, i8* %45, align 1, !tbaa !1090
  %47 = icmp eq i8 %46, 49, !dbg !3205
  br i1 %47, label %48, label %72, !dbg !3207

; <label>:48:                                     ; preds = %44
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3125, metadata !884), !dbg !3209
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3135, metadata !884), !dbg !3211
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3136, metadata !884), !dbg !3212
  %49 = getelementptr inbounds i8, i8* %6, i64 3
  %50 = load i8, i8* %49, align 1, !tbaa !1090
  %51 = icmp eq i8 %50, 56, !dbg !3213
  br i1 %51, label %52, label %72, !dbg !3214

; <label>:52:                                     ; preds = %48
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3148, metadata !884), !dbg !3215
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3157, metadata !884), !dbg !3217
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3158, metadata !884), !dbg !3218
  %53 = getelementptr inbounds i8, i8* %6, i64 4
  %54 = load i8, i8* %53, align 1, !tbaa !1090
  %55 = icmp eq i8 %54, 48, !dbg !3219
  br i1 %55, label %56, label %72, !dbg !3220

; <label>:56:                                     ; preds = %52
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3170, metadata !884), !dbg !3221
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3178, metadata !884), !dbg !3223
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3179, metadata !884), !dbg !3224
  %57 = getelementptr inbounds i8, i8* %6, i64 5
  %58 = load i8, i8* %57, align 1, !tbaa !1090
  %59 = icmp eq i8 %58, 51, !dbg !3225
  br i1 %59, label %60, label %72, !dbg !3226

; <label>:60:                                     ; preds = %56
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3227, metadata !884), !dbg !3236
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3234, metadata !884), !dbg !3240
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3235, metadata !884), !dbg !3241
  %61 = getelementptr inbounds i8, i8* %6, i64 6
  %62 = load i8, i8* %61, align 1, !tbaa !1090
  %63 = icmp eq i8 %62, 48, !dbg !3242
  br i1 %63, label %64, label %72, !dbg !3245

; <label>:64:                                     ; preds = %60
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3247, metadata !884), !dbg !3255
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3253, metadata !884), !dbg !3259
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3254, metadata !884), !dbg !3260
  %65 = getelementptr inbounds i8, i8* %6, i64 7
  %66 = load i8, i8* %65, align 1, !tbaa !1090
  %67 = icmp eq i8 %66, 0, !dbg !3261
  br i1 %67, label %68, label %72, !dbg !3264

; <label>:68:                                     ; preds = %64
  %69 = load i8, i8* %0, align 1, !dbg !3265, !tbaa !1090
  %70 = icmp eq i8 %69, 96, !dbg !3266
  %71 = select i1 %70, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.113, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.114, i64 0, i64 0), !dbg !3265
  br label %75, !dbg !3267

; <label>:72:                                     ; preds = %5, %30, %26, %22, %16, %10, %64, %60, %56, %52, %48, %44, %38
  %73 = icmp eq i32 %1, 9, !dbg !3268
  %74 = select i1 %73, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.110, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.109, i64 0, i64 0), !dbg !3269
  br label %75, !dbg !3270

; <label>:75:                                     ; preds = %2, %72, %68, %34
  %76 = phi i8* [ %37, %34 ], [ %71, %68 ], [ %74, %72 ], [ %3, %2 ]
  ret i8* %76, !dbg !3271
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
define i8* @quotearg_alloc(i8*, i64, %struct.quoting_options*) local_unnamed_addr #6 !dbg !3272 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3276, metadata !884), !dbg !3279
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3277, metadata !884), !dbg !3280
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !3278, metadata !884), !dbg !3281
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3282, metadata !884) #10, !dbg !3295
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3287, metadata !884) #10, !dbg !3297
  tail call void @llvm.dbg.value(metadata i64* null, i64 0, metadata !3288, metadata !884) #10, !dbg !3298
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !3289, metadata !884) #10, !dbg !3299
  %4 = icmp ne %struct.quoting_options* %2, null, !dbg !3300
  %5 = select i1 %4, %struct.quoting_options* %2, %struct.quoting_options* @default_quoting_options, !dbg !3300
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3290, metadata !884) #10, !dbg !3301
  %6 = tail call i32* @__errno_location() #1, !dbg !3302
  %7 = load i32, i32* %6, align 4, !dbg !3302, !tbaa !1002
  tail call void @llvm.dbg.value(metadata i32 %7, i64 0, metadata !3291, metadata !884) #10, !dbg !3303
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !3304
  %9 = load i32, i32* %8, align 4, !dbg !3304, !tbaa !2187
  %10 = or i32 %9, 1, !dbg !3305
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !3292, metadata !884) #10, !dbg !3306
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3307
  %12 = load i32, i32* %11, align 8, !dbg !3307, !tbaa !2125
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !3308
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3309
  %15 = load i8*, i8** %14, align 8, !dbg !3309, !tbaa !2214
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3310
  %17 = load i8*, i8** %16, align 8, !dbg !3310, !tbaa !2217
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* %13, i8* %15, i8* %17) #10, !dbg !3311
  %19 = add i64 %18, 1, !dbg !3312
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !3293, metadata !884) #10, !dbg !3313
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !3314, metadata !884) #10, !dbg !3319
  %20 = tail call noalias i8* @xmalloc(i64 %19) #10, !dbg !3321
  tail call void @llvm.dbg.value(metadata i8* %20, i64 0, metadata !3294, metadata !884) #10, !dbg !3322
  %21 = load i32, i32* %11, align 8, !dbg !3323, !tbaa !2125
  %22 = load i8*, i8** %14, align 8, !dbg !3324, !tbaa !2214
  %23 = load i8*, i8** %16, align 8, !dbg !3325, !tbaa !2217
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* %13, i8* %22, i8* %23) #10, !dbg !3326
  store i32 %7, i32* %6, align 4, !dbg !3327, !tbaa !1002
  ret i8* %20, !dbg !3328
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_alloc_mem(i8*, i64, i64*, %struct.quoting_options*) local_unnamed_addr #6 !dbg !3283 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3282, metadata !884), !dbg !3329
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3287, metadata !884), !dbg !3330
  tail call void @llvm.dbg.value(metadata i64* %2, i64 0, metadata !3288, metadata !884), !dbg !3331
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !3289, metadata !884), !dbg !3332
  %5 = icmp ne %struct.quoting_options* %3, null, !dbg !3333
  %6 = select i1 %5, %struct.quoting_options* %3, %struct.quoting_options* @default_quoting_options, !dbg !3333
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !3290, metadata !884), !dbg !3334
  %7 = tail call i32* @__errno_location() #1, !dbg !3335
  %8 = load i32, i32* %7, align 4, !dbg !3335, !tbaa !1002
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !3291, metadata !884), !dbg !3336
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !3337
  %10 = load i32, i32* %9, align 4, !dbg !3337, !tbaa !2187
  %11 = icmp ne i64* %2, null, !dbg !3338
  %12 = xor i1 %11, true, !dbg !3338
  %13 = zext i1 %12 to i32, !dbg !3338
  %14 = or i32 %10, %13, !dbg !3339
  tail call void @llvm.dbg.value(metadata i32 %14, i64 0, metadata !3292, metadata !884), !dbg !3340
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3341
  %16 = load i32, i32* %15, align 8, !dbg !3341, !tbaa !2125
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !3342
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3343
  %19 = load i8*, i8** %18, align 8, !dbg !3343, !tbaa !2214
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3344
  %21 = load i8*, i8** %20, align 8, !dbg !3344, !tbaa !2217
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* %17, i8* %19, i8* %21), !dbg !3345
  %23 = add i64 %22, 1, !dbg !3346
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !3293, metadata !884), !dbg !3347
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !3314, metadata !884) #10, !dbg !3348
  %24 = tail call noalias i8* @xmalloc(i64 %23) #10, !dbg !3350
  tail call void @llvm.dbg.value(metadata i8* %24, i64 0, metadata !3294, metadata !884), !dbg !3351
  %25 = load i32, i32* %15, align 8, !dbg !3352, !tbaa !2125
  %26 = load i8*, i8** %18, align 8, !dbg !3353, !tbaa !2214
  %27 = load i8*, i8** %20, align 8, !dbg !3354, !tbaa !2217
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* %17, i8* %26, i8* %27), !dbg !3355
  store i32 %8, i32* %7, align 4, !dbg !3356, !tbaa !1002
  br i1 %11, label %29, label %30, !dbg !3357

; <label>:29:                                     ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !3358, !tbaa !1068
  br label %30, !dbg !3360

; <label>:30:                                     ; preds = %29, %4
  ret i8* %24, !dbg !3361
}

; Function Attrs: nounwind sspstrong uwtable
define void @quotearg_free() local_unnamed_addr #6 !dbg !3362 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !3366, !tbaa !892
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %1, i64 0, metadata !3364, metadata !884), !dbg !3367
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !3365, metadata !884), !dbg !3368
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !3365, metadata !884), !dbg !3368
  %2 = load i32, i32* @nslots, align 4, !dbg !3369, !tbaa !1002
  %3 = icmp sgt i32 %2, 1, !dbg !3373
  br i1 %3, label %4, label %14, !dbg !3374

; <label>:4:                                      ; preds = %0
  br label %5, !dbg !3376

; <label>:5:                                      ; preds = %4, %5
  %6 = phi i64 [ %9, %5 ], [ 1, %4 ]
  %7 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %6, i32 1, !dbg !3376
  %8 = load i8*, i8** %7, align 8, !dbg !3376, !tbaa !3377
  tail call void @free(i8* %8) #10, !dbg !3379
  %9 = add nuw i64 %6, 1, !dbg !3380
  %10 = load i32, i32* @nslots, align 4, !dbg !3369, !tbaa !1002
  %11 = sext i32 %10 to i64, !dbg !3373
  %12 = icmp slt i64 %9, %11, !dbg !3373
  br i1 %12, label %5, label %13, !dbg !3374, !llvm.loop !3382

; <label>:13:                                     ; preds = %5
  br label %14, !dbg !3385

; <label>:14:                                     ; preds = %13, %0
  %15 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !3385
  %16 = load i8*, i8** %15, align 8, !dbg !3385, !tbaa !3377
  %17 = icmp eq i8* %16, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !3387
  br i1 %17, label %19, label %18, !dbg !3388

; <label>:18:                                     ; preds = %14
  tail call void @free(i8* %16) #10, !dbg !3389
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !3391, !tbaa !3392
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !3393, !tbaa !3377
  br label %19, !dbg !3394

; <label>:19:                                     ; preds = %14, %18
  %20 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !3395
  br i1 %20, label %23, label %21, !dbg !3397

; <label>:21:                                     ; preds = %19
  %22 = bitcast %struct.slotvec* %1 to i8*, !dbg !3398
  tail call void @free(i8* %22) #10, !dbg !3400
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !3401, !tbaa !892
  br label %23, !dbg !3402

; <label>:23:                                     ; preds = %19, %21
  store i32 1, i32* @nslots, align 4, !dbg !3403, !tbaa !1002
  ret void, !dbg !3404
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n(i32, i8*) local_unnamed_addr #6 !dbg !3405 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3409, metadata !884), !dbg !3411
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3410, metadata !884), !dbg !3412
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !3413
  ret i8* %3, !dbg !3414
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32, i8*, i64, %struct.quoting_options*) unnamed_addr #6 !dbg !3415 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3419, metadata !884), !dbg !3433
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3420, metadata !884), !dbg !3434
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3421, metadata !884), !dbg !3435
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !3422, metadata !884), !dbg !3436
  %5 = tail call i32* @__errno_location() #1, !dbg !3437
  %6 = load i32, i32* %5, align 4, !dbg !3437, !tbaa !1002
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !3423, metadata !884), !dbg !3438
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !3439, !tbaa !892
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %7, i64 0, metadata !3424, metadata !884), !dbg !3440
  %8 = icmp slt i32 %0, 0, !dbg !3441
  br i1 %8, label %9, label %10, !dbg !3443

; <label>:9:                                      ; preds = %4
  tail call void @abort() #14, !dbg !3444
  unreachable, !dbg !3444

; <label>:10:                                     ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !3445, !tbaa !1002
  %12 = icmp sgt i32 %11, %0, !dbg !3446
  br i1 %12, label %34, label %13, !dbg !3447

; <label>:13:                                     ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !3448
  %15 = icmp ugt i32 %0, 2147483646, !dbg !3449
  br i1 %15, label %16, label %17, !dbg !3451

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #14, !dbg !3452
  unreachable, !dbg !3452

; <label>:17:                                     ; preds = %13
  %18 = bitcast %struct.slotvec* %7 to i8*, !dbg !3453
  %19 = select i1 %14, i8* null, i8* %18, !dbg !3453
  %20 = add nsw i32 %0, 1, !dbg !3455
  %21 = sext i32 %20 to i64, !dbg !3456
  %22 = shl nsw i64 %21, 4, !dbg !3457
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #10, !dbg !3458
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !3458
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %24, i64 0, metadata !3424, metadata !884), !dbg !3440
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !3459, !tbaa !892
  br i1 %14, label %25, label %26, !dbg !3460

; <label>:25:                                     ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i32 8, i1 false), !dbg !3461, !tbaa.struct !3463
  br label %26, !dbg !3464

; <label>:26:                                     ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !3465, !tbaa !1002
  %28 = sext i32 %27 to i64, !dbg !3466
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !3466
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !3467
  %31 = sub nsw i32 %20, %27, !dbg !3468
  %32 = sext i32 %31 to i64, !dbg !3469
  %33 = shl nsw i64 %32, 4, !dbg !3470
  tail call void @llvm.memset.p0i8.i64(i8* %30, i8 0, i64 %33, i32 8, i1 false), !dbg !3467
  store i32 %20, i32* @nslots, align 4, !dbg !3471, !tbaa !1002
  br label %34, !dbg !3472

; <label>:34:                                     ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ]
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %35, i64 0, metadata !3424, metadata !884), !dbg !3440
  %36 = sext i32 %0 to i64, !dbg !3473
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !3474
  %38 = load i64, i64* %37, align 8, !dbg !3474, !tbaa !3392
  tail call void @llvm.dbg.value(metadata i64 %38, i64 0, metadata !3428, metadata !884), !dbg !3475
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !3476
  %40 = load i8*, i8** %39, align 8, !dbg !3476, !tbaa !3377
  tail call void @llvm.dbg.value(metadata i8* %40, i64 0, metadata !3430, metadata !884), !dbg !3477
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !3478
  %42 = load i32, i32* %41, align 4, !dbg !3478, !tbaa !2187
  %43 = or i32 %42, 1, !dbg !3479
  tail call void @llvm.dbg.value(metadata i32 %43, i64 0, metadata !3431, metadata !884), !dbg !3480
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !3481
  %45 = load i32, i32* %44, align 8, !dbg !3481, !tbaa !2125
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !3482
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !3483
  %48 = load i8*, i8** %47, align 8, !dbg !3483, !tbaa !2214
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !3484
  %50 = load i8*, i8** %49, align 8, !dbg !3484, !tbaa !2217
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* %46, i8* %48, i8* %50), !dbg !3485
  tail call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !3432, metadata !884), !dbg !3486
  %52 = icmp ugt i64 %38, %51, !dbg !3487
  br i1 %52, label %63, label %53, !dbg !3489

; <label>:53:                                     ; preds = %34
  %54 = add i64 %51, 1, !dbg !3490
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !3428, metadata !884), !dbg !3475
  store i64 %54, i64* %37, align 8, !dbg !3492, !tbaa !3392
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !3493
  br i1 %55, label %57, label %56, !dbg !3495

; <label>:56:                                     ; preds = %53
  tail call void @free(i8* %40) #10, !dbg !3496
  br label %57, !dbg !3496

; <label>:57:                                     ; preds = %53, %56
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !3314, metadata !884) #10, !dbg !3497
  %58 = tail call noalias i8* @xmalloc(i64 %54) #10, !dbg !3499
  tail call void @llvm.dbg.value(metadata i8* %58, i64 0, metadata !3430, metadata !884), !dbg !3477
  store i8* %58, i8** %39, align 8, !dbg !3500, !tbaa !3377
  %59 = load i32, i32* %44, align 8, !dbg !3501, !tbaa !2125
  %60 = load i8*, i8** %47, align 8, !dbg !3502, !tbaa !2214
  %61 = load i8*, i8** %49, align 8, !dbg !3503, !tbaa !2217
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* %46, i8* %60, i8* %61), !dbg !3504
  br label %63, !dbg !3505

; <label>:63:                                     ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ]
  tail call void @llvm.dbg.value(metadata i8* %64, i64 0, metadata !3430, metadata !884), !dbg !3477
  store i32 %6, i32* %5, align 4, !dbg !3506, !tbaa !1002
  ret i8* %64, !dbg !3507
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #7

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !3508 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3512, metadata !884), !dbg !3515
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3513, metadata !884), !dbg !3516
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3514, metadata !884), !dbg !3517
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !3518
  ret i8* %4, !dbg !3519
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg(i8*) local_unnamed_addr #6 !dbg !3520 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3522, metadata !884), !dbg !3523
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3409, metadata !884) #10, !dbg !3524
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3410, metadata !884) #10, !dbg !3526
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #10, !dbg !3527
  ret i8* %2, !dbg !3528
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_mem(i8*, i64) local_unnamed_addr #6 !dbg !3529 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3533, metadata !884), !dbg !3535
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3534, metadata !884), !dbg !3536
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3512, metadata !884) #10, !dbg !3537
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3513, metadata !884) #10, !dbg !3539
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3514, metadata !884) #10, !dbg !3540
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #10, !dbg !3541
  ret i8* %3, !dbg !3542
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style(i32, i32, i8*) local_unnamed_addr #6 !dbg !3543 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !3551, metadata !3557), !dbg !3558
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3547, metadata !884), !dbg !3560
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3548, metadata !884), !dbg !3561
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3549, metadata !884), !dbg !3562
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3563
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #10, !dbg !3563
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3550, metadata !1056), !dbg !3564
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3556, metadata !884) #10, !dbg !3565
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !3566
  call void @llvm.lifetime.start(i64 52, i8* nonnull %7), !dbg !3566
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !3551, metadata !884) #10, !dbg !3558
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3551, metadata !3567) #10, !dbg !3558
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !3558
  %8 = icmp eq i32 %1, 10, !dbg !3568
  br i1 %8, label %9, label %10, !dbg !3570

; <label>:9:                                      ; preds = %3
  tail call void @abort() #14, !dbg !3571, !noalias !3572
  unreachable, !dbg !3571

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3551, metadata !3567) #10, !dbg !3558
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3575
  store i32 %1, i32* %11, align 8, !dbg !3575, !alias.scope !3572
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !3575
  %13 = bitcast i32* %12 to i8*, !dbg !3575
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #10, !dbg !3575
  call void @llvm.lifetime.end(i64 52, i8* nonnull %7), !dbg !3576
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3550, metadata !1056), !dbg !3564
  %14 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !3577
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #10, !dbg !3578
  ret i8* %14, !dbg !3579
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_mem(i32, i32, i8*, i64) local_unnamed_addr #6 !dbg !3580 {
  %5 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !3551, metadata !3557), !dbg !3589
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3584, metadata !884), !dbg !3591
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3585, metadata !884), !dbg !3592
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3586, metadata !884), !dbg !3593
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3587, metadata !884), !dbg !3594
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !3595
  call void @llvm.lifetime.start(i64 56, i8* nonnull %7) #10, !dbg !3595
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !3588, metadata !1056), !dbg !3596
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3556, metadata !884) #10, !dbg !3597
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !3598
  call void @llvm.lifetime.start(i64 52, i8* nonnull %8), !dbg !3598
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !3551, metadata !884) #10, !dbg !3589
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3551, metadata !3567) #10, !dbg !3589
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !3589
  %9 = icmp eq i32 %1, 10, !dbg !3599
  br i1 %9, label %10, label %11, !dbg !3600

; <label>:10:                                     ; preds = %4
  tail call void @abort() #14, !dbg !3601, !noalias !3602
  unreachable, !dbg !3601

; <label>:11:                                     ; preds = %4
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3551, metadata !3567) #10, !dbg !3589
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3605
  store i32 %1, i32* %12, align 8, !dbg !3605, !alias.scope !3602
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !3605
  %14 = bitcast i32* %13 to i8*, !dbg !3605
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* nonnull %8, i64 52, i32 4, i1 false) #10, !dbg !3605
  call void @llvm.lifetime.end(i64 52, i8* nonnull %8), !dbg !3606
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !3588, metadata !1056), !dbg !3596
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %6), !dbg !3607
  call void @llvm.lifetime.end(i64 56, i8* nonnull %7) #10, !dbg !3608
  ret i8* %15, !dbg !3609
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style(i32, i8*) local_unnamed_addr #6 !dbg !3610 {
  %3 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %3, metadata !3551, metadata !3557), !dbg !3616
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3614, metadata !884), !dbg !3619
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3615, metadata !884), !dbg !3620
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3547, metadata !884) #10, !dbg !3621
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3548, metadata !884) #10, !dbg !3622
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3549, metadata !884) #10, !dbg !3623
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3624
  call void @llvm.lifetime.start(i64 56, i8* nonnull %5) #10, !dbg !3624
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3550, metadata !1056) #10, !dbg !3625
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3556, metadata !884) #10, !dbg !3626
  %6 = getelementptr inbounds [52 x i8], [52 x i8]* %3, i64 0, i64 0, !dbg !3627
  call void @llvm.lifetime.start(i64 52, i8* nonnull %6), !dbg !3627
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !3551, metadata !884) #10, !dbg !3616
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3551, metadata !3567) #10, !dbg !3616
  call void @llvm.memset.p0i8.i64(i8* nonnull %6, i8 0, i64 52, i32 4, i1 false), !dbg !3616
  %7 = icmp eq i32 %0, 10, !dbg !3628
  br i1 %7, label %8, label %9, !dbg !3629

; <label>:8:                                      ; preds = %2
  tail call void @abort() #14, !dbg !3630, !noalias !3631
  unreachable, !dbg !3630

; <label>:9:                                      ; preds = %2
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3551, metadata !3567) #10, !dbg !3616
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3634
  store i32 %0, i32* %10, align 8, !dbg !3634, !alias.scope !3631
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !3634
  %12 = bitcast i32* %11 to i8*, !dbg !3634
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* nonnull %6, i64 52, i32 4, i1 false) #10, !dbg !3634
  call void @llvm.lifetime.end(i64 52, i8* nonnull %6), !dbg !3635
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3550, metadata !1056) #10, !dbg !3625
  %13 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %4) #10, !dbg !3636
  call void @llvm.lifetime.end(i64 56, i8* nonnull %5) #10, !dbg !3637
  ret i8* %13, !dbg !3638
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !3639 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !3551, metadata !3557), !dbg !3646
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3643, metadata !884), !dbg !3649
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3644, metadata !884), !dbg !3650
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3645, metadata !884), !dbg !3651
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3584, metadata !884) #10, !dbg !3652
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3585, metadata !884) #10, !dbg !3653
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3586, metadata !884) #10, !dbg !3654
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3587, metadata !884) #10, !dbg !3655
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3656
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #10, !dbg !3656
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3588, metadata !1056) #10, !dbg !3657
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3556, metadata !884) #10, !dbg !3658
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !3659
  call void @llvm.lifetime.start(i64 52, i8* nonnull %7), !dbg !3659
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !3551, metadata !884) #10, !dbg !3646
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3551, metadata !3567) #10, !dbg !3646
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !3646
  %8 = icmp eq i32 %0, 10, !dbg !3660
  br i1 %8, label %9, label %10, !dbg !3661

; <label>:9:                                      ; preds = %3
  tail call void @abort() #14, !dbg !3662, !noalias !3663
  unreachable, !dbg !3662

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3551, metadata !3567) #10, !dbg !3646
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3666
  store i32 %0, i32* %11, align 8, !dbg !3666, !alias.scope !3663
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !3666
  %13 = bitcast i32* %12 to i8*, !dbg !3666
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #10, !dbg !3666
  call void @llvm.lifetime.end(i64 52, i8* nonnull %7), !dbg !3667
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3588, metadata !1056) #10, !dbg !3657
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %5) #10, !dbg !3668
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #10, !dbg !3669
  ret i8* %14, !dbg !3670
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char_mem(i8*, i64, i8 signext) local_unnamed_addr #6 !dbg !3671 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3675, metadata !884), !dbg !3679
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3676, metadata !884), !dbg !3680
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !3677, metadata !884), !dbg !3681
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3682
  call void @llvm.lifetime.start(i64 56, i8* nonnull %5) #10, !dbg !3682
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !3683, !tbaa.struct !3684
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3678, metadata !1056), !dbg !3685
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2145, metadata !884), !dbg !3686
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !2146, metadata !884), !dbg !3688
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2147, metadata !884), !dbg !3689
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !2148, metadata !884), !dbg !3690
  %6 = lshr i8 %2, 5, !dbg !3691
  %7 = zext i8 %6 to i64, !dbg !3691
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !3692
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !2149, metadata !884), !dbg !3693
  %9 = and i8 %2, 31, !dbg !3694
  %10 = zext i8 %9 to i32, !dbg !3695
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !2151, metadata !884), !dbg !3696
  %11 = load i32, i32* %8, align 4, !dbg !3697, !tbaa !1002
  %12 = lshr i32 %11, %10, !dbg !3698
  %13 = and i32 %12, 1, !dbg !3699
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !2152, metadata !884), !dbg !3700
  %14 = xor i32 %13, 1, !dbg !3701
  %15 = shl i32 %14, %10, !dbg !3702
  %16 = xor i32 %15, %11, !dbg !3703
  store i32 %16, i32* %8, align 4, !dbg !3703, !tbaa !1002
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3678, metadata !1056), !dbg !3685
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !3704
  call void @llvm.lifetime.end(i64 56, i8* nonnull %5) #10, !dbg !3705
  ret i8* %17, !dbg !3706
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char(i8*, i8 signext) local_unnamed_addr #6 !dbg !3707 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3711, metadata !884), !dbg !3713
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !3712, metadata !884), !dbg !3714
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3675, metadata !884) #10, !dbg !3715
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3676, metadata !884) #10, !dbg !3717
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !3677, metadata !884) #10, !dbg !3718
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3719
  call void @llvm.lifetime.start(i64 56, i8* nonnull %4) #10, !dbg !3719
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !3720, !tbaa.struct !3684
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !3678, metadata !1056) #10, !dbg !3721
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2145, metadata !884) #10, !dbg !3722
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !2146, metadata !884) #10, !dbg !3724
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2147, metadata !884) #10, !dbg !3725
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !2148, metadata !884) #10, !dbg !3726
  %5 = lshr i8 %1, 5, !dbg !3727
  %6 = zext i8 %5 to i64, !dbg !3727
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !3728
  tail call void @llvm.dbg.value(metadata i32* %7, i64 0, metadata !2149, metadata !884) #10, !dbg !3729
  %8 = and i8 %1, 31, !dbg !3730
  %9 = zext i8 %8 to i32, !dbg !3731
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !2151, metadata !884) #10, !dbg !3732
  %10 = load i32, i32* %7, align 4, !dbg !3733, !tbaa !1002
  %11 = lshr i32 %10, %9, !dbg !3734
  %12 = and i32 %11, 1, !dbg !3735
  tail call void @llvm.dbg.value(metadata i32 %12, i64 0, metadata !2152, metadata !884) #10, !dbg !3736
  %13 = xor i32 %12, 1, !dbg !3737
  %14 = shl i32 %13, %9, !dbg !3738
  %15 = xor i32 %14, %10, !dbg !3739
  store i32 %15, i32* %7, align 4, !dbg !3739, !tbaa !1002
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !3678, metadata !1056) #10, !dbg !3721
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #10, !dbg !3740
  call void @llvm.lifetime.end(i64 56, i8* nonnull %4) #10, !dbg !3741
  ret i8* %16, !dbg !3742
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon(i8*) local_unnamed_addr #6 !dbg !3743 {
  %2 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3745, metadata !884), !dbg !3746
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3711, metadata !884) #10, !dbg !3747
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !3712, metadata !884) #10, !dbg !3749
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3675, metadata !884) #10, !dbg !3750
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3676, metadata !884) #10, !dbg !3752
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !3677, metadata !884) #10, !dbg !3753
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !3754
  call void @llvm.lifetime.start(i64 56, i8* nonnull %3) #10, !dbg !3754
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %3, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !3755, !tbaa.struct !3684
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !3678, metadata !1056) #10, !dbg !3756
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2145, metadata !884) #10, !dbg !3757
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2146, metadata !884) #10, !dbg !3759
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2147, metadata !884) #10, !dbg !3760
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2148, metadata !884) #10, !dbg !3761
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !3762
  tail call void @llvm.dbg.value(metadata i32* %4, i64 0, metadata !2149, metadata !884) #10, !dbg !3763
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !2151, metadata !884) #10, !dbg !3764
  %5 = load i32, i32* %4, align 4, !dbg !3765, !tbaa !1002
  %6 = or i32 %5, 67108864, !dbg !3766
  store i32 %6, i32* %4, align 4, !dbg !3766, !tbaa !1002
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !3678, metadata !1056) #10, !dbg !3756
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #10, !dbg !3767
  call void @llvm.lifetime.end(i64 56, i8* nonnull %3) #10, !dbg !3768
  ret i8* %7, !dbg !3769
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon_mem(i8*, i64) local_unnamed_addr #6 !dbg !3770 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3772, metadata !884), !dbg !3774
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3773, metadata !884), !dbg !3775
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3675, metadata !884) #10, !dbg !3776
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3676, metadata !884) #10, !dbg !3778
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !3677, metadata !884) #10, !dbg !3779
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3780
  call void @llvm.lifetime.start(i64 56, i8* nonnull %4) #10, !dbg !3780
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !3781, !tbaa.struct !3684
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !3678, metadata !1056) #10, !dbg !3782
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2145, metadata !884) #10, !dbg !3783
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2146, metadata !884) #10, !dbg !3785
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2147, metadata !884) #10, !dbg !3786
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2148, metadata !884) #10, !dbg !3787
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !3788
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !2149, metadata !884) #10, !dbg !3789
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !2151, metadata !884) #10, !dbg !3790
  %6 = load i32, i32* %5, align 4, !dbg !3791, !tbaa !1002
  %7 = or i32 %6, 67108864, !dbg !3792
  store i32 %7, i32* %5, align 4, !dbg !3792, !tbaa !1002
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !3678, metadata !1056) #10, !dbg !3782
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #10, !dbg !3793
  call void @llvm.lifetime.end(i64 56, i8* nonnull %4) #10, !dbg !3794
  ret i8* %8, !dbg !3795
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_colon(i32, i32, i8*) local_unnamed_addr #6 !dbg !3796 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !3551, metadata !3557), !dbg !3802
  %5 = alloca %struct.quoting_options, align 8
  %6 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3798, metadata !884), !dbg !3804
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3799, metadata !884), !dbg !3805
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3800, metadata !884), !dbg !3806
  %7 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3807
  call void @llvm.lifetime.start(i64 56, i8* nonnull %7) #10, !dbg !3807
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3556, metadata !884) #10, !dbg !3808
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !3809
  call void @llvm.lifetime.start(i64 52, i8* nonnull %8), !dbg !3809
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !3551, metadata !884) #10, !dbg !3802
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3551, metadata !3567) #10, !dbg !3802
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !3802
  %9 = icmp eq i32 %1, 10, !dbg !3810
  br i1 %9, label %10, label %11, !dbg !3811

; <label>:10:                                     ; preds = %3
  tail call void @abort() #14, !dbg !3812, !noalias !3813
  unreachable, !dbg !3812

; <label>:11:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3551, metadata !3567) #10, !dbg !3802
  %12 = getelementptr inbounds [52 x i8], [52 x i8]* %6, i64 0, i64 0, !dbg !3816
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %12, i8* nonnull %8, i64 52, i32 4, i1 false), !dbg !3816
  call void @llvm.lifetime.end(i64 52, i8* nonnull %8), !dbg !3817
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3818
  store i32 %1, i32* %13, align 8, !dbg !3818
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !3818
  %15 = bitcast i32* %14 to i8*, !dbg !3818
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* nonnull %12, i64 52, i32 4, i1 false), !dbg !3818
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3801, metadata !1056), !dbg !3819
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2145, metadata !884), !dbg !3820
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2146, metadata !884), !dbg !3822
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2147, metadata !884), !dbg !3823
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2148, metadata !884), !dbg !3824
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 1, !dbg !3825
  tail call void @llvm.dbg.value(metadata i32* %16, i64 0, metadata !2149, metadata !884), !dbg !3826
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !2151, metadata !884), !dbg !3827
  %17 = load i32, i32* %16, align 4, !dbg !3828, !tbaa !1002
  %18 = or i32 %17, 67108864, !dbg !3829
  store i32 %18, i32* %16, align 4, !dbg !3829, !tbaa !1002
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3801, metadata !1056), !dbg !3819
  %19 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !3830
  call void @llvm.lifetime.end(i64 56, i8* nonnull %7) #10, !dbg !3831
  ret i8* %19, !dbg !3832
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom(i32, i8*, i8*, i8*) local_unnamed_addr #6 !dbg !3833 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3837, metadata !884), !dbg !3841
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3838, metadata !884), !dbg !3842
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3839, metadata !884), !dbg !3843
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3840, metadata !884), !dbg !3844
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3845, metadata !884) #10, !dbg !3855
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3850, metadata !884) #10, !dbg !3857
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3851, metadata !884) #10, !dbg !3858
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3852, metadata !884) #10, !dbg !3859
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3853, metadata !884) #10, !dbg !3860
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3861
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #10, !dbg !3861
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !3862, !tbaa.struct !3684
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3854, metadata !1056) #10, !dbg !3863
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2195, metadata !884) #10, !dbg !3864
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2196, metadata !884) #10, !dbg !3866
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2197, metadata !884) #10, !dbg !3867
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !2195, metadata !884) #10, !dbg !3864
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2195, metadata !884) #10, !dbg !3864
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3868
  store i32 10, i32* %7, align 8, !dbg !3869, !tbaa !2125
  %8 = icmp ne i8* %1, null, !dbg !3870
  %9 = icmp ne i8* %2, null, !dbg !3871
  %10 = and i1 %8, %9, !dbg !3872
  br i1 %10, label %12, label %11, !dbg !3872

; <label>:11:                                     ; preds = %4
  tail call void @abort() #14, !dbg !3873
  unreachable, !dbg !3873

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3874
  store i8* %1, i8** %13, align 8, !dbg !3875, !tbaa !2214
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3876
  store i8* %2, i8** %14, align 8, !dbg !3877, !tbaa !2217
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3854, metadata !1056) #10, !dbg !3863
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #10, !dbg !3878
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #10, !dbg !3879
  ret i8* %15, !dbg !3880
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom_mem(i32, i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !3846 {
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3845, metadata !884), !dbg !3881
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3850, metadata !884), !dbg !3882
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3851, metadata !884), !dbg !3883
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3852, metadata !884), !dbg !3884
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !3853, metadata !884), !dbg !3885
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !3886
  call void @llvm.lifetime.start(i64 56, i8* nonnull %7) #10, !dbg !3886
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %7, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !3887, !tbaa.struct !3684
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !3854, metadata !1056), !dbg !3888
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2195, metadata !884) #10, !dbg !3889
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2196, metadata !884) #10, !dbg !3891
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2197, metadata !884) #10, !dbg !3892
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !2195, metadata !884) #10, !dbg !3889
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2195, metadata !884) #10, !dbg !3889
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3893
  store i32 10, i32* %8, align 8, !dbg !3894, !tbaa !2125
  %9 = icmp ne i8* %1, null, !dbg !3895
  %10 = icmp ne i8* %2, null, !dbg !3896
  %11 = and i1 %9, %10, !dbg !3897
  br i1 %11, label %13, label %12, !dbg !3897

; <label>:12:                                     ; preds = %5
  tail call void @abort() #14, !dbg !3898
  unreachable, !dbg !3898

; <label>:13:                                     ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3899
  store i8* %1, i8** %14, align 8, !dbg !3900, !tbaa !2214
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3901
  store i8* %2, i8** %15, align 8, !dbg !3902, !tbaa !2217
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !3854, metadata !1056), !dbg !3888
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !3903
  call void @llvm.lifetime.end(i64 56, i8* nonnull %7) #10, !dbg !3904
  ret i8* %16, !dbg !3905
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom(i8*, i8*, i8*) local_unnamed_addr #6 !dbg !3906 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3910, metadata !884), !dbg !3913
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3911, metadata !884), !dbg !3914
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3912, metadata !884), !dbg !3915
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3837, metadata !884) #10, !dbg !3916
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3838, metadata !884) #10, !dbg !3918
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3839, metadata !884) #10, !dbg !3919
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3840, metadata !884) #10, !dbg !3920
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3845, metadata !884) #10, !dbg !3921
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3850, metadata !884) #10, !dbg !3923
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3851, metadata !884) #10, !dbg !3924
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3852, metadata !884) #10, !dbg !3925
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3853, metadata !884) #10, !dbg !3926
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3927
  call void @llvm.lifetime.start(i64 56, i8* nonnull %5) #10, !dbg !3927
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !3928, !tbaa.struct !3684
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3854, metadata !1056) #10, !dbg !3929
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2195, metadata !884) #10, !dbg !3930
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2196, metadata !884) #10, !dbg !3932
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2197, metadata !884) #10, !dbg !3933
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !2195, metadata !884) #10, !dbg !3930
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2195, metadata !884) #10, !dbg !3930
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3934
  store i32 10, i32* %6, align 8, !dbg !3935, !tbaa !2125
  %7 = icmp ne i8* %0, null, !dbg !3936
  %8 = icmp ne i8* %1, null, !dbg !3937
  %9 = and i1 %7, %8, !dbg !3938
  br i1 %9, label %11, label %10, !dbg !3938

; <label>:10:                                     ; preds = %3
  tail call void @abort() #14, !dbg !3939
  unreachable, !dbg !3939

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !3940
  store i8* %0, i8** %12, align 8, !dbg !3941, !tbaa !2214
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !3942
  store i8* %1, i8** %13, align 8, !dbg !3943, !tbaa !2217
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3854, metadata !1056) #10, !dbg !3929
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #10, !dbg !3944
  call void @llvm.lifetime.end(i64 56, i8* nonnull %5) #10, !dbg !3945
  ret i8* %14, !dbg !3946
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom_mem(i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !3947 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3951, metadata !884), !dbg !3955
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3952, metadata !884), !dbg !3956
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3953, metadata !884), !dbg !3957
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3954, metadata !884), !dbg !3958
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3845, metadata !884) #10, !dbg !3959
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3850, metadata !884) #10, !dbg !3961
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3851, metadata !884) #10, !dbg !3962
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3852, metadata !884) #10, !dbg !3963
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3853, metadata !884) #10, !dbg !3964
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3965
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #10, !dbg !3965
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !3966, !tbaa.struct !3684
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3854, metadata !1056) #10, !dbg !3967
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2195, metadata !884) #10, !dbg !3968
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2196, metadata !884) #10, !dbg !3970
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2197, metadata !884) #10, !dbg !3971
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !2195, metadata !884) #10, !dbg !3968
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2195, metadata !884) #10, !dbg !3968
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3972
  store i32 10, i32* %7, align 8, !dbg !3973, !tbaa !2125
  %8 = icmp ne i8* %0, null, !dbg !3974
  %9 = icmp ne i8* %1, null, !dbg !3975
  %10 = and i1 %8, %9, !dbg !3976
  br i1 %10, label %12, label %11, !dbg !3976

; <label>:11:                                     ; preds = %4
  tail call void @abort() #14, !dbg !3977
  unreachable, !dbg !3977

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3978
  store i8* %0, i8** %13, align 8, !dbg !3979, !tbaa !2214
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3980
  store i8* %1, i8** %14, align 8, !dbg !3981, !tbaa !2217
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3854, metadata !1056) #10, !dbg !3967
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #10, !dbg !3982
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #10, !dbg !3983
  ret i8* %15, !dbg !3984
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !3985 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3989, metadata !884), !dbg !3992
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3990, metadata !884), !dbg !3993
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3991, metadata !884), !dbg !3994
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !3995
  ret i8* %4, !dbg !3996
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_mem(i8*, i64) local_unnamed_addr #6 !dbg !3997 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4001, metadata !884), !dbg !4003
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4002, metadata !884), !dbg !4004
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3989, metadata !884) #10, !dbg !4005
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3990, metadata !884) #10, !dbg !4007
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3991, metadata !884) #10, !dbg !4008
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !4009
  ret i8* %3, !dbg !4010
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n(i32, i8*) local_unnamed_addr #6 !dbg !4011 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4015, metadata !884), !dbg !4017
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4016, metadata !884), !dbg !4018
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3989, metadata !884) #10, !dbg !4019
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3990, metadata !884) #10, !dbg !4021
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3991, metadata !884) #10, !dbg !4022
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !4023
  ret i8* %3, !dbg !4024
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote(i8*) local_unnamed_addr #6 !dbg !4025 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4029, metadata !884), !dbg !4030
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4015, metadata !884) #10, !dbg !4031
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4016, metadata !884) #10, !dbg !4033
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3989, metadata !884) #10, !dbg !4034
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3990, metadata !884) #10, !dbg !4036
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3991, metadata !884) #10, !dbg !4037
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !4038
  ret i8* %2, !dbg !4039
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_arn(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly, i64) local_unnamed_addr #6 !dbg !4040 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4094, metadata !884), !dbg !4100
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4095, metadata !884), !dbg !4101
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4096, metadata !884), !dbg !4102
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !4097, metadata !884), !dbg !4103
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !4098, metadata !884), !dbg !4104
  tail call void @llvm.dbg.value(metadata i64 %5, i64 0, metadata !4099, metadata !884), !dbg !4105
  %7 = icmp eq i8* %1, null, !dbg !4106
  br i1 %7, label %10, label %8, !dbg !4108

; <label>:8:                                      ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.121, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #10, !dbg !4109
  br label %12, !dbg !4109

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.122, i64 0, i64 0), i8* %2, i8* %3) #10, !dbg !4110
  br label %12

; <label>:12:                                     ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.123, i64 0, i64 0), i32 5) #10, !dbg !4111
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2017) #10, !dbg !4112
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([203 x i8], [203 x i8]* @.str.3.124, i64 0, i64 0), i32 5) #10, !dbg !4114
  %16 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %0) #10, !dbg !4115
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
  ], !dbg !4116

; <label>:17:                                     ; preds = %12
  tail call void @abort() #14, !dbg !4117
  unreachable, !dbg !4117

; <label>:18:                                     ; preds = %12
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4.125, i64 0, i64 0), i32 5) #10, !dbg !4119
  %20 = load i8*, i8** %4, align 8, !dbg !4119, !tbaa !892
  %21 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %19, i8* %20) #10, !dbg !4120
  br label %146, !dbg !4122

; <label>:22:                                     ; preds = %12
  %23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5.126, i64 0, i64 0), i32 5) #10, !dbg !4123
  %24 = load i8*, i8** %4, align 8, !dbg !4123, !tbaa !892
  %25 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4123
  %26 = load i8*, i8** %25, align 8, !dbg !4123, !tbaa !892
  %27 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %23, i8* %24, i8* %26) #10, !dbg !4124
  br label %146, !dbg !4125

; <label>:28:                                     ; preds = %12
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6.127, i64 0, i64 0), i32 5) #10, !dbg !4126
  %30 = load i8*, i8** %4, align 8, !dbg !4126, !tbaa !892
  %31 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4126
  %32 = load i8*, i8** %31, align 8, !dbg !4126, !tbaa !892
  %33 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4126
  %34 = load i8*, i8** %33, align 8, !dbg !4126, !tbaa !892
  %35 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %29, i8* %30, i8* %32, i8* %34) #10, !dbg !4127
  br label %146, !dbg !4128

; <label>:36:                                     ; preds = %12
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7.128, i64 0, i64 0), i32 5) #10, !dbg !4129
  %38 = load i8*, i8** %4, align 8, !dbg !4129, !tbaa !892
  %39 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4129
  %40 = load i8*, i8** %39, align 8, !dbg !4129, !tbaa !892
  %41 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4129
  %42 = load i8*, i8** %41, align 8, !dbg !4129, !tbaa !892
  %43 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4129
  %44 = load i8*, i8** %43, align 8, !dbg !4129, !tbaa !892
  %45 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %37, i8* %38, i8* %40, i8* %42, i8* %44) #10, !dbg !4130
  br label %146, !dbg !4131

; <label>:46:                                     ; preds = %12
  %47 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8.129, i64 0, i64 0), i32 5) #10, !dbg !4132
  %48 = load i8*, i8** %4, align 8, !dbg !4132, !tbaa !892
  %49 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4132
  %50 = load i8*, i8** %49, align 8, !dbg !4132, !tbaa !892
  %51 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4132
  %52 = load i8*, i8** %51, align 8, !dbg !4132, !tbaa !892
  %53 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4132
  %54 = load i8*, i8** %53, align 8, !dbg !4132, !tbaa !892
  %55 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4132
  %56 = load i8*, i8** %55, align 8, !dbg !4132, !tbaa !892
  %57 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %47, i8* %48, i8* %50, i8* %52, i8* %54, i8* %56) #10, !dbg !4133
  br label %146, !dbg !4134

; <label>:58:                                     ; preds = %12
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9.130, i64 0, i64 0), i32 5) #10, !dbg !4135
  %60 = load i8*, i8** %4, align 8, !dbg !4135, !tbaa !892
  %61 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4135
  %62 = load i8*, i8** %61, align 8, !dbg !4135, !tbaa !892
  %63 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4135
  %64 = load i8*, i8** %63, align 8, !dbg !4135, !tbaa !892
  %65 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4135
  %66 = load i8*, i8** %65, align 8, !dbg !4135, !tbaa !892
  %67 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4135
  %68 = load i8*, i8** %67, align 8, !dbg !4135, !tbaa !892
  %69 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !4135
  %70 = load i8*, i8** %69, align 8, !dbg !4135, !tbaa !892
  %71 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %59, i8* %60, i8* %62, i8* %64, i8* %66, i8* %68, i8* %70) #10, !dbg !4136
  br label %146, !dbg !4137

; <label>:72:                                     ; preds = %12
  %73 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10.131, i64 0, i64 0), i32 5) #10, !dbg !4138
  %74 = load i8*, i8** %4, align 8, !dbg !4138, !tbaa !892
  %75 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4138
  %76 = load i8*, i8** %75, align 8, !dbg !4138, !tbaa !892
  %77 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4138
  %78 = load i8*, i8** %77, align 8, !dbg !4138, !tbaa !892
  %79 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4138
  %80 = load i8*, i8** %79, align 8, !dbg !4138, !tbaa !892
  %81 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4138
  %82 = load i8*, i8** %81, align 8, !dbg !4138, !tbaa !892
  %83 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !4138
  %84 = load i8*, i8** %83, align 8, !dbg !4138, !tbaa !892
  %85 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !4138
  %86 = load i8*, i8** %85, align 8, !dbg !4138, !tbaa !892
  %87 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %73, i8* %74, i8* %76, i8* %78, i8* %80, i8* %82, i8* %84, i8* %86) #10, !dbg !4139
  br label %146, !dbg !4140

; <label>:88:                                     ; preds = %12
  %89 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11.132, i64 0, i64 0), i32 5) #10, !dbg !4141
  %90 = load i8*, i8** %4, align 8, !dbg !4141, !tbaa !892
  %91 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4141
  %92 = load i8*, i8** %91, align 8, !dbg !4141, !tbaa !892
  %93 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4141
  %94 = load i8*, i8** %93, align 8, !dbg !4141, !tbaa !892
  %95 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4141
  %96 = load i8*, i8** %95, align 8, !dbg !4141, !tbaa !892
  %97 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4141
  %98 = load i8*, i8** %97, align 8, !dbg !4141, !tbaa !892
  %99 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !4141
  %100 = load i8*, i8** %99, align 8, !dbg !4141, !tbaa !892
  %101 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !4141
  %102 = load i8*, i8** %101, align 8, !dbg !4141, !tbaa !892
  %103 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !4141
  %104 = load i8*, i8** %103, align 8, !dbg !4141, !tbaa !892
  %105 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %89, i8* %90, i8* %92, i8* %94, i8* %96, i8* %98, i8* %100, i8* %102, i8* %104) #10, !dbg !4142
  br label %146, !dbg !4143

; <label>:106:                                    ; preds = %12
  %107 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12.133, i64 0, i64 0), i32 5) #10, !dbg !4144
  %108 = load i8*, i8** %4, align 8, !dbg !4144, !tbaa !892
  %109 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4144
  %110 = load i8*, i8** %109, align 8, !dbg !4144, !tbaa !892
  %111 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4144
  %112 = load i8*, i8** %111, align 8, !dbg !4144, !tbaa !892
  %113 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4144
  %114 = load i8*, i8** %113, align 8, !dbg !4144, !tbaa !892
  %115 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4144
  %116 = load i8*, i8** %115, align 8, !dbg !4144, !tbaa !892
  %117 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !4144
  %118 = load i8*, i8** %117, align 8, !dbg !4144, !tbaa !892
  %119 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !4144
  %120 = load i8*, i8** %119, align 8, !dbg !4144, !tbaa !892
  %121 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !4144
  %122 = load i8*, i8** %121, align 8, !dbg !4144, !tbaa !892
  %123 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !4144
  %124 = load i8*, i8** %123, align 8, !dbg !4144, !tbaa !892
  %125 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %107, i8* %108, i8* %110, i8* %112, i8* %114, i8* %116, i8* %118, i8* %120, i8* %122, i8* %124) #10, !dbg !4145
  br label %146, !dbg !4146

; <label>:126:                                    ; preds = %12
  %127 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13.134, i64 0, i64 0), i32 5) #10, !dbg !4147
  %128 = load i8*, i8** %4, align 8, !dbg !4147, !tbaa !892
  %129 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4147
  %130 = load i8*, i8** %129, align 8, !dbg !4147, !tbaa !892
  %131 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4147
  %132 = load i8*, i8** %131, align 8, !dbg !4147, !tbaa !892
  %133 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4147
  %134 = load i8*, i8** %133, align 8, !dbg !4147, !tbaa !892
  %135 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4147
  %136 = load i8*, i8** %135, align 8, !dbg !4147, !tbaa !892
  %137 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !4147
  %138 = load i8*, i8** %137, align 8, !dbg !4147, !tbaa !892
  %139 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !4147
  %140 = load i8*, i8** %139, align 8, !dbg !4147, !tbaa !892
  %141 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !4147
  %142 = load i8*, i8** %141, align 8, !dbg !4147, !tbaa !892
  %143 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !4147
  %144 = load i8*, i8** %143, align 8, !dbg !4147, !tbaa !892
  %145 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %127, i8* %128, i8* %130, i8* %132, i8* %134, i8* %136, i8* %138, i8* %140, i8* %142, i8* %144) #10, !dbg !4148
  br label %146, !dbg !4149

; <label>:146:                                    ; preds = %126, %106, %88, %72, %58, %46, %36, %28, %22, %18
  ret void, !dbg !4150
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_ar(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly) local_unnamed_addr #6 !dbg !4151 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4155, metadata !884), !dbg !4161
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4156, metadata !884), !dbg !4162
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4157, metadata !884), !dbg !4163
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !4158, metadata !884), !dbg !4164
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !4159, metadata !884), !dbg !4165
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4160, metadata !884), !dbg !4166
  br label %6, !dbg !4167

; <label>:6:                                      ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !4160, metadata !884), !dbg !4166
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !4169
  %9 = load i8*, i8** %8, align 8, !dbg !4169, !tbaa !892
  %10 = icmp eq i8* %9, null, !dbg !4172
  %11 = add i64 %7, 1, !dbg !4174
  tail call void @llvm.dbg.value(metadata i64 %11, i64 0, metadata !4160, metadata !884), !dbg !4166
  br i1 %10, label %12, label %6, !dbg !4172, !llvm.loop !4176

; <label>:12:                                     ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !4179
  ret void, !dbg !4180
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_va(%struct._IO_FILE*, i8*, i8*, i8*, %struct.__va_list_tag* nocapture) local_unnamed_addr #6 !dbg !4181 {
  %6 = alloca [10 x i8*], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4192, metadata !884), !dbg !4200
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4193, metadata !884), !dbg !4201
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4194, metadata !884), !dbg !4202
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !4195, metadata !884), !dbg !4203
  tail call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, i64 0, metadata !4196, metadata !884), !dbg !4204
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !4205
  call void @llvm.lifetime.start(i64 80, i8* nonnull %7) #10, !dbg !4205
  tail call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !4198, metadata !884), !dbg !4206
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4197, metadata !884), !dbg !4207
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4197, metadata !884), !dbg !4207
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  %11 = load i32, i32* %8, align 8, !dbg !4208
  %12 = icmp ult i32 %11, 41, !dbg !4208
  br i1 %12, label %13, label %18, !dbg !4208

; <label>:13:                                     ; preds = %5
  %14 = load i8*, i8** %9, align 8, !dbg !4212
  %15 = sext i32 %11 to i64, !dbg !4212
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !4212
  %17 = add i32 %11, 8, !dbg !4212
  store i32 %17, i32* %8, align 8, !dbg !4212
  br label %21, !dbg !4212

; <label>:18:                                     ; preds = %5
  %19 = load i8*, i8** %10, align 8, !dbg !4214
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !4214
  store i8* %20, i8** %10, align 8, !dbg !4214
  br label %21, !dbg !4214

; <label>:21:                                     ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ], !dbg !4208
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !4216
  %25 = load i8*, i8** %24, align 8, !dbg !4216
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !4218
  store i8* %25, i8** %26, align 16, !dbg !4219, !tbaa !892
  %27 = icmp eq i8* %25, null, !dbg !4220
  br i1 %27, label %30, label %28, !dbg !4221

; <label>:28:                                     ; preds = %21
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4197, metadata !884), !dbg !4207
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4197, metadata !884), !dbg !4207
  %29 = icmp ult i32 %22, 41, !dbg !4208
  br i1 %29, label %35, label %32, !dbg !4208

; <label>:30:                                     ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ]
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !4223
  call void @llvm.lifetime.end(i64 80, i8* nonnull %7) #10, !dbg !4224
  ret void, !dbg !4224

; <label>:32:                                     ; preds = %28
  %33 = load i8*, i8** %10, align 8, !dbg !4214
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !4214
  store i8* %34, i8** %10, align 8, !dbg !4214
  br label %40, !dbg !4214

; <label>:35:                                     ; preds = %28
  %36 = load i8*, i8** %9, align 8, !dbg !4212
  %37 = sext i32 %22 to i64, !dbg !4212
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !4212
  %39 = add i32 %22, 8, !dbg !4212
  store i32 %39, i32* %8, align 8, !dbg !4212
  br label %40, !dbg !4212

; <label>:40:                                     ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ], !dbg !4208
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !4216
  %44 = load i8*, i8** %43, align 8, !dbg !4216
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !4218
  store i8* %44, i8** %45, align 8, !dbg !4219, !tbaa !892
  %46 = icmp eq i8* %44, null, !dbg !4220
  br i1 %46, label %30, label %47, !dbg !4221

; <label>:47:                                     ; preds = %40
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4197, metadata !884), !dbg !4207
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4197, metadata !884), !dbg !4207
  %48 = icmp ult i32 %41, 41, !dbg !4208
  br i1 %48, label %52, label %49, !dbg !4208

; <label>:49:                                     ; preds = %47
  %50 = load i8*, i8** %10, align 8, !dbg !4214
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !4214
  store i8* %51, i8** %10, align 8, !dbg !4214
  br label %57, !dbg !4214

; <label>:52:                                     ; preds = %47
  %53 = load i8*, i8** %9, align 8, !dbg !4212
  %54 = sext i32 %41 to i64, !dbg !4212
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !4212
  %56 = add i32 %41, 8, !dbg !4212
  store i32 %56, i32* %8, align 8, !dbg !4212
  br label %57, !dbg !4212

; <label>:57:                                     ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ], !dbg !4208
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !4216
  %61 = load i8*, i8** %60, align 8, !dbg !4216
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !4218
  store i8* %61, i8** %62, align 16, !dbg !4219, !tbaa !892
  %63 = icmp eq i8* %61, null, !dbg !4220
  br i1 %63, label %30, label %64, !dbg !4221

; <label>:64:                                     ; preds = %57
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4197, metadata !884), !dbg !4207
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4197, metadata !884), !dbg !4207
  %65 = icmp ult i32 %58, 41, !dbg !4208
  br i1 %65, label %69, label %66, !dbg !4208

; <label>:66:                                     ; preds = %64
  %67 = load i8*, i8** %10, align 8, !dbg !4214
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !4214
  store i8* %68, i8** %10, align 8, !dbg !4214
  br label %74, !dbg !4214

; <label>:69:                                     ; preds = %64
  %70 = load i8*, i8** %9, align 8, !dbg !4212
  %71 = sext i32 %58 to i64, !dbg !4212
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !4212
  %73 = add i32 %58, 8, !dbg !4212
  store i32 %73, i32* %8, align 8, !dbg !4212
  br label %74, !dbg !4212

; <label>:74:                                     ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ], !dbg !4208
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !4216
  %78 = load i8*, i8** %77, align 8, !dbg !4216
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !4218
  store i8* %78, i8** %79, align 8, !dbg !4219, !tbaa !892
  %80 = icmp eq i8* %78, null, !dbg !4220
  br i1 %80, label %30, label %81, !dbg !4221

; <label>:81:                                     ; preds = %74
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4197, metadata !884), !dbg !4207
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4197, metadata !884), !dbg !4207
  %82 = icmp ult i32 %75, 41, !dbg !4208
  br i1 %82, label %86, label %83, !dbg !4208

; <label>:83:                                     ; preds = %81
  %84 = load i8*, i8** %10, align 8, !dbg !4214
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !4214
  store i8* %85, i8** %10, align 8, !dbg !4214
  br label %91, !dbg !4214

; <label>:86:                                     ; preds = %81
  %87 = load i8*, i8** %9, align 8, !dbg !4212
  %88 = sext i32 %75 to i64, !dbg !4212
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !4212
  %90 = add i32 %75, 8, !dbg !4212
  store i32 %90, i32* %8, align 8, !dbg !4212
  br label %91, !dbg !4212

; <label>:91:                                     ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ], !dbg !4208
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !4216
  %95 = load i8*, i8** %94, align 8, !dbg !4216
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !4218
  store i8* %95, i8** %96, align 16, !dbg !4219, !tbaa !892
  %97 = icmp eq i8* %95, null, !dbg !4220
  br i1 %97, label %30, label %98, !dbg !4221

; <label>:98:                                     ; preds = %91
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4197, metadata !884), !dbg !4207
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4197, metadata !884), !dbg !4207
  %99 = icmp ult i32 %92, 41, !dbg !4208
  br i1 %99, label %103, label %100, !dbg !4208

; <label>:100:                                    ; preds = %98
  %101 = load i8*, i8** %10, align 8, !dbg !4214
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !4214
  store i8* %102, i8** %10, align 8, !dbg !4214
  br label %108, !dbg !4214

; <label>:103:                                    ; preds = %98
  %104 = load i8*, i8** %9, align 8, !dbg !4212
  %105 = sext i32 %92 to i64, !dbg !4212
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !4212
  %107 = add i32 %92, 8, !dbg !4212
  store i32 %107, i32* %8, align 8, !dbg !4212
  br label %108, !dbg !4212

; <label>:108:                                    ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !4216
  %111 = load i8*, i8** %110, align 8, !dbg !4216
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !4218
  store i8* %111, i8** %112, align 8, !dbg !4219, !tbaa !892
  %113 = icmp eq i8* %111, null, !dbg !4220
  br i1 %113, label %30, label %114, !dbg !4221

; <label>:114:                                    ; preds = %108
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4197, metadata !884), !dbg !4207
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4197, metadata !884), !dbg !4207
  %115 = load i8*, i8** %10, align 8, !dbg !4214
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !4214
  store i8* %116, i8** %10, align 8, !dbg !4214
  %117 = bitcast i8* %115 to i8**, !dbg !4216
  %118 = load i8*, i8** %117, align 8, !dbg !4216
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !4218
  store i8* %118, i8** %119, align 16, !dbg !4219, !tbaa !892
  %120 = icmp eq i8* %118, null, !dbg !4220
  br i1 %120, label %30, label %121, !dbg !4221

; <label>:121:                                    ; preds = %114
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4197, metadata !884), !dbg !4207
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4197, metadata !884), !dbg !4207
  %122 = load i8*, i8** %10, align 8, !dbg !4214
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !4214
  store i8* %123, i8** %10, align 8, !dbg !4214
  %124 = bitcast i8* %122 to i8**, !dbg !4216
  %125 = load i8*, i8** %124, align 8, !dbg !4216
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !4218
  store i8* %125, i8** %126, align 8, !dbg !4219, !tbaa !892
  %127 = icmp eq i8* %125, null, !dbg !4220
  br i1 %127, label %30, label %128, !dbg !4221

; <label>:128:                                    ; preds = %121
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4197, metadata !884), !dbg !4207
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4197, metadata !884), !dbg !4207
  %129 = load i8*, i8** %10, align 8, !dbg !4214
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !4214
  store i8* %130, i8** %10, align 8, !dbg !4214
  %131 = bitcast i8* %129 to i8**, !dbg !4216
  %132 = load i8*, i8** %131, align 8, !dbg !4216
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !4218
  store i8* %132, i8** %133, align 16, !dbg !4219, !tbaa !892
  %134 = icmp eq i8* %132, null, !dbg !4220
  br i1 %134, label %30, label %135, !dbg !4221

; <label>:135:                                    ; preds = %128
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4197, metadata !884), !dbg !4207
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4197, metadata !884), !dbg !4207
  %136 = load i8*, i8** %10, align 8, !dbg !4214
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !4214
  store i8* %137, i8** %10, align 8, !dbg !4214
  %138 = bitcast i8* %136 to i8**, !dbg !4216
  %139 = load i8*, i8** %138, align 8, !dbg !4216
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !4218
  store i8* %139, i8** %140, align 8, !dbg !4219, !tbaa !892
  %141 = icmp eq i8* %139, null, !dbg !4220
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4197, metadata !884), !dbg !4207
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4197, metadata !884), !dbg !4207
  %142 = select i1 %141, i64 9, i64 10, !dbg !4221
  br label %30, !dbg !4221
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc(%struct._IO_FILE*, i8*, i8*, i8*, ...) local_unnamed_addr #6 !dbg !4225 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4229, metadata !884), !dbg !4239
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4230, metadata !884), !dbg !4240
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4231, metadata !884), !dbg !4241
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !4232, metadata !884), !dbg !4242
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !4243
  call void @llvm.lifetime.start(i64 24, i8* nonnull %6) #10, !dbg !4243
  tail call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !4233, metadata !884), !dbg !4244
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !4245
  call void @llvm.va_start(i8* nonnull %6), !dbg !4245
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !4246
  call void @llvm.va_end(i8* nonnull %6), !dbg !4247
  call void @llvm.lifetime.end(i64 24, i8* nonnull %6) #10, !dbg !4248
  ret void, !dbg !4248
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #10

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #10

; Function Attrs: nounwind sspstrong uwtable
define void @emit_bug_reporting_address() local_unnamed_addr #6 !dbg !4249 {
  %1 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14.137, i64 0, i64 0), i32 5) #10, !dbg !4250
  %2 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15.138, i64 0, i64 0)) #10, !dbg !4251
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.139, i64 0, i64 0), i32 5) #10, !dbg !4253
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17.140, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.18.141, i64 0, i64 0)) #10, !dbg !4254
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.19.142, i64 0, i64 0), i32 5) #10, !dbg !4255
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !4255, !tbaa !892
  %7 = tail call i32 @fputs_unlocked(i8* %5, %struct._IO_FILE* %6) #10, !dbg !4256
  ret void, !dbg !4257
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnmalloc(i64, i64) local_unnamed_addr #12 !dbg !4258 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4262, metadata !884), !dbg !4264
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4263, metadata !884), !dbg !4265
  %3 = udiv i64 9223372036854775807, %1, !dbg !4266
  %4 = icmp ult i64 %3, %0, !dbg !4266
  br i1 %4, label %5, label %6, !dbg !4268

; <label>:5:                                      ; preds = %2
  tail call void @xalloc_die() #14, !dbg !4269
  unreachable, !dbg !4269

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !4270
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !4271, metadata !884) #10, !dbg !4278
  %8 = tail call noalias i8* @malloc(i64 %7) #10, !dbg !4280
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !4277, metadata !884) #10, !dbg !4281
  %9 = icmp eq i8* %8, null, !dbg !4282
  %10 = icmp ne i64 %7, 0, !dbg !4284
  %11 = and i1 %10, %9, !dbg !4286
  br i1 %11, label %12, label %13, !dbg !4286

; <label>:12:                                     ; preds = %6
  tail call void @xalloc_die() #14, !dbg !4287
  unreachable, !dbg !4287

; <label>:13:                                     ; preds = %6
  ret i8* %8, !dbg !4288
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmalloc(i64) local_unnamed_addr #6 !dbg !4272 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4271, metadata !884), !dbg !4289
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !4290
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4277, metadata !884), !dbg !4291
  %3 = icmp eq i8* %2, null, !dbg !4292
  %4 = icmp ne i64 %0, 0, !dbg !4293
  %5 = and i1 %4, %3, !dbg !4294
  br i1 %5, label %6, label %7, !dbg !4294

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #14, !dbg !4295
  unreachable, !dbg !4295

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !4296
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnrealloc(i8*, i64, i64) local_unnamed_addr #12 !dbg !4297 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4301, metadata !884), !dbg !4304
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4302, metadata !884), !dbg !4305
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !4303, metadata !884), !dbg !4306
  %4 = udiv i64 9223372036854775807, %2, !dbg !4307
  %5 = icmp ult i64 %4, %1, !dbg !4307
  br i1 %5, label %6, label %7, !dbg !4309

; <label>:6:                                      ; preds = %3
  tail call void @xalloc_die() #14, !dbg !4310
  unreachable, !dbg !4310

; <label>:7:                                      ; preds = %3
  %8 = mul i64 %2, %1, !dbg !4311
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4312, metadata !884) #10, !dbg !4318
  tail call void @llvm.dbg.value(metadata i64 %8, i64 0, metadata !4317, metadata !884) #10, !dbg !4320
  %9 = icmp eq i64 %8, 0, !dbg !4321
  %10 = icmp ne i8* %0, null, !dbg !4323
  %11 = and i1 %10, %9, !dbg !4325
  br i1 %11, label %12, label %13, !dbg !4325

; <label>:12:                                     ; preds = %7
  tail call void @free(i8* nonnull %0) #10, !dbg !4326
  br label %19, !dbg !4328

; <label>:13:                                     ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #10, !dbg !4329
  tail call void @llvm.dbg.value(metadata i8* %14, i64 0, metadata !4312, metadata !884) #10, !dbg !4318
  %15 = icmp eq i8* %14, null, !dbg !4330
  %16 = icmp ne i64 %8, 0, !dbg !4332
  %17 = and i1 %16, %15, !dbg !4334
  br i1 %17, label %18, label %19, !dbg !4334

; <label>:18:                                     ; preds = %13
  tail call void @xalloc_die() #14, !dbg !4335
  unreachable, !dbg !4335

; <label>:19:                                     ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ]
  ret i8* %20, !dbg !4336
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xrealloc(i8*, i64) local_unnamed_addr #6 !dbg !4313 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4312, metadata !884), !dbg !4337
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4317, metadata !884), !dbg !4338
  %3 = icmp eq i64 %1, 0, !dbg !4339
  %4 = icmp ne i8* %0, null, !dbg !4340
  %5 = and i1 %4, %3, !dbg !4341
  br i1 %5, label %6, label %7, !dbg !4341

; <label>:6:                                      ; preds = %2
  tail call void @free(i8* nonnull %0) #10, !dbg !4342
  br label %13, !dbg !4343

; <label>:7:                                      ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #10, !dbg !4344
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !4312, metadata !884), !dbg !4337
  %9 = icmp eq i8* %8, null, !dbg !4345
  %10 = icmp ne i64 %1, 0, !dbg !4346
  %11 = and i1 %10, %9, !dbg !4347
  br i1 %11, label %12, label %13, !dbg !4347

; <label>:12:                                     ; preds = %7
  tail call void @xalloc_die() #14, !dbg !4348
  unreachable, !dbg !4348

; <label>:13:                                     ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ]
  ret i8* %14, !dbg !4349
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @x2nrealloc(i8*, i64* nocapture, i64) local_unnamed_addr #12 !dbg !836 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !841, metadata !884), !dbg !4350
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !842, metadata !884), !dbg !4351
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !843, metadata !884), !dbg !4352
  %4 = load i64, i64* %1, align 8, !dbg !4353, !tbaa !1068
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !844, metadata !884), !dbg !4354
  %5 = icmp eq i8* %0, null, !dbg !4355
  br i1 %5, label %6, label %13, !dbg !4357

; <label>:6:                                      ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !4358
  br i1 %7, label %8, label %17, !dbg !4361

; <label>:8:                                      ; preds = %6
  %9 = udiv i64 128, %2, !dbg !4362
  tail call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !844, metadata !884), !dbg !4354
  %10 = icmp ugt i64 %2, 128, !dbg !4364
  %11 = zext i1 %10 to i64, !dbg !4364
  %12 = add nuw nsw i64 %9, %11, !dbg !4365
  tail call void @llvm.dbg.value(metadata i64 %12, i64 0, metadata !844, metadata !884), !dbg !4354
  br label %17, !dbg !4366

; <label>:13:                                     ; preds = %3
  %14 = udiv i64 6148914691236517204, %2, !dbg !4367
  %15 = icmp ugt i64 %14, %4, !dbg !4370
  br i1 %15, label %20, label %16, !dbg !4371

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #14, !dbg !4372
  unreachable, !dbg !4372

; <label>:17:                                     ; preds = %6, %8
  %18 = phi i64 [ %12, %8 ], [ %4, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !844, metadata !884), !dbg !4354
  store i64 %18, i64* %1, align 8, !dbg !4373, !tbaa !1068
  %19 = mul i64 %18, %2, !dbg !4374
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4312, metadata !884) #10, !dbg !4375
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !4317, metadata !884) #10, !dbg !4377
  br label %27, !dbg !4378

; <label>:20:                                     ; preds = %13
  %21 = lshr i64 %4, 1, !dbg !4379
  %22 = add i64 %4, 1, !dbg !4380
  %23 = add i64 %22, %21, !dbg !4381
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !844, metadata !884), !dbg !4354
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !844, metadata !884), !dbg !4354
  store i64 %23, i64* %1, align 8, !dbg !4373, !tbaa !1068
  %24 = mul i64 %23, %2, !dbg !4374
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4312, metadata !884) #10, !dbg !4375
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !4317, metadata !884) #10, !dbg !4377
  %25 = icmp eq i64 %24, 0, !dbg !4382
  br i1 %25, label %26, label %27, !dbg !4378

; <label>:26:                                     ; preds = %20
  tail call void @free(i8* nonnull %0) #10, !dbg !4383
  br label %34, !dbg !4384

; <label>:27:                                     ; preds = %17, %20
  %28 = phi i64 [ %19, %17 ], [ %24, %20 ]
  %29 = tail call i8* @realloc(i8* %0, i64 %28) #10, !dbg !4385
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !4312, metadata !884) #10, !dbg !4375
  %30 = icmp eq i8* %29, null, !dbg !4386
  %31 = icmp ne i64 %28, 0, !dbg !4387
  %32 = and i1 %31, %30, !dbg !4388
  br i1 %32, label %33, label %34, !dbg !4388

; <label>:33:                                     ; preds = %27
  tail call void @xalloc_die() #14, !dbg !4389
  unreachable, !dbg !4389

; <label>:34:                                     ; preds = %26, %27
  %35 = phi i8* [ null, %26 ], [ %29, %27 ]
  ret i8* %35, !dbg !4390
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xcharalloc(i64) local_unnamed_addr #12 !dbg !4391 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4393, metadata !884), !dbg !4394
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4271, metadata !884) #10, !dbg !4395
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !4397
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4277, metadata !884) #10, !dbg !4398
  %3 = icmp eq i8* %2, null, !dbg !4399
  %4 = icmp ne i64 %0, 0, !dbg !4400
  %5 = and i1 %4, %3, !dbg !4401
  br i1 %5, label %6, label %7, !dbg !4401

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #14, !dbg !4402
  unreachable, !dbg !4402

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !4403
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @x2realloc(i8*, i64* nocapture) local_unnamed_addr #6 !dbg !4404 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4408, metadata !884), !dbg !4410
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !4409, metadata !884), !dbg !4411
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !841, metadata !884) #10, !dbg !4412
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !842, metadata !884) #10, !dbg !4414
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !843, metadata !884) #10, !dbg !4415
  %3 = load i64, i64* %1, align 8, !dbg !4416, !tbaa !1068
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !844, metadata !884) #10, !dbg !4417
  %4 = icmp eq i8* %0, null, !dbg !4418
  br i1 %4, label %5, label %8, !dbg !4419

; <label>:5:                                      ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !4420
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !844, metadata !884) #10, !dbg !4417
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !844, metadata !884) #10, !dbg !4417
  %7 = select i1 %6, i64 128, i64 %3, !dbg !4421
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !844, metadata !884) #10, !dbg !4417
  store i64 %7, i64* %1, align 8, !dbg !4422, !tbaa !1068
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4312, metadata !884) #10, !dbg !4423
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !4317, metadata !884) #10, !dbg !4425
  br label %17, !dbg !4426

; <label>:8:                                      ; preds = %2
  %9 = icmp ult i64 %3, 6148914691236517204, !dbg !4427
  br i1 %9, label %11, label %10, !dbg !4428

; <label>:10:                                     ; preds = %8
  tail call void @xalloc_die() #14, !dbg !4429
  unreachable, !dbg !4429

; <label>:11:                                     ; preds = %8
  %12 = lshr i64 %3, 1, !dbg !4430
  %13 = add i64 %3, 1, !dbg !4431
  %14 = add i64 %13, %12, !dbg !4432
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !844, metadata !884) #10, !dbg !4417
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !844, metadata !884) #10, !dbg !4417
  store i64 %14, i64* %1, align 8, !dbg !4422, !tbaa !1068
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4312, metadata !884) #10, !dbg !4423
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !4317, metadata !884) #10, !dbg !4425
  %15 = icmp eq i64 %14, 0, !dbg !4433
  br i1 %15, label %16, label %17, !dbg !4426

; <label>:16:                                     ; preds = %11
  tail call void @free(i8* nonnull %0) #10, !dbg !4434
  br label %24, !dbg !4435

; <label>:17:                                     ; preds = %11, %5
  %18 = phi i64 [ %7, %5 ], [ %14, %11 ]
  %19 = tail call i8* @realloc(i8* %0, i64 %18) #10, !dbg !4436
  tail call void @llvm.dbg.value(metadata i8* %19, i64 0, metadata !4312, metadata !884) #10, !dbg !4423
  %20 = icmp eq i8* %19, null, !dbg !4437
  %21 = icmp ne i64 %18, 0, !dbg !4438
  %22 = and i1 %21, %20, !dbg !4439
  br i1 %22, label %23, label %24, !dbg !4439

; <label>:23:                                     ; preds = %17
  tail call void @xalloc_die() #14, !dbg !4440
  unreachable, !dbg !4440

; <label>:24:                                     ; preds = %16, %17
  %25 = phi i8* [ null, %16 ], [ %19, %17 ]
  ret i8* %25, !dbg !4441
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xzalloc(i64) local_unnamed_addr #6 !dbg !4442 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4444, metadata !884), !dbg !4445
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4271, metadata !884) #10, !dbg !4446
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !4448
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4277, metadata !884) #10, !dbg !4449
  %3 = icmp eq i8* %2, null, !dbg !4450
  %4 = icmp ne i64 %0, 0, !dbg !4451
  %5 = and i1 %4, %3, !dbg !4452
  br i1 %5, label %6, label %7, !dbg !4452

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #14, !dbg !4453
  unreachable, !dbg !4453

; <label>:7:                                      ; preds = %1
  tail call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 %0, i32 1, i1 false), !dbg !4454
  ret i8* %2, !dbg !4455
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xcalloc(i64, i64) local_unnamed_addr #6 !dbg !4456 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4458, metadata !884), !dbg !4461
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4459, metadata !884), !dbg !4462
  %3 = udiv i64 9223372036854775807, %1, !dbg !4463
  %4 = icmp ult i64 %3, %0, !dbg !4463
  br i1 %4, label %8, label %5, !dbg !4465

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #10, !dbg !4466
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !4460, metadata !884), !dbg !4468
  %7 = icmp eq i8* %6, null, !dbg !4469
  br i1 %7, label %8, label %9, !dbg !4470

; <label>:8:                                      ; preds = %5, %2
  tail call void @xalloc_die() #14, !dbg !4472
  unreachable, !dbg !4472

; <label>:9:                                      ; preds = %5
  ret i8* %6, !dbg !4473
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmemdup(i8* nocapture readonly, i64) local_unnamed_addr #6 !dbg !4474 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4478, metadata !884), !dbg !4480
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4479, metadata !884), !dbg !4481
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4271, metadata !884) #10, !dbg !4482
  %3 = tail call noalias i8* @malloc(i64 %1) #10, !dbg !4484
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !4277, metadata !884) #10, !dbg !4485
  %4 = icmp eq i8* %3, null, !dbg !4486
  %5 = icmp ne i64 %1, 0, !dbg !4487
  %6 = and i1 %5, %4, !dbg !4488
  br i1 %6, label %7, label %8, !dbg !4488

; <label>:7:                                      ; preds = %2
  tail call void @xalloc_die() #14, !dbg !4489
  unreachable, !dbg !4489

; <label>:8:                                      ; preds = %2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %0, i64 %1, i32 1, i1 false), !dbg !4490
  ret i8* %3, !dbg !4491
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xstrdup(i8* nocapture readonly) local_unnamed_addr #6 !dbg !4492 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4494, metadata !884), !dbg !4495
  %2 = tail call i64 @strlen(i8* %0) #13, !dbg !4496
  %3 = add i64 %2, 1, !dbg !4497
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4478, metadata !884) #10, !dbg !4498
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !4479, metadata !884) #10, !dbg !4501
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !4271, metadata !884) #10, !dbg !4502
  %4 = tail call noalias i8* @malloc(i64 %3) #10, !dbg !4504
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !4277, metadata !884) #10, !dbg !4505
  %5 = icmp eq i8* %4, null, !dbg !4506
  %6 = icmp ne i64 %3, 0, !dbg !4507
  %7 = and i1 %6, %5, !dbg !4508
  br i1 %7, label %8, label %9, !dbg !4508

; <label>:8:                                      ; preds = %1
  tail call void @xalloc_die() #14, !dbg !4509
  unreachable, !dbg !4509

; <label>:9:                                      ; preds = %1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %0, i64 %3, i32 1, i1 false) #10, !dbg !4510
  ret i8* %4, !dbg !4511
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @xalloc_die() local_unnamed_addr #0 !dbg !4512 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !4514, !tbaa !1002
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.153, i64 0, i64 0), i32 5) #10, !dbg !4515
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.154, i64 0, i64 0), i8* %2) #10, !dbg !4516
  tail call void @abort() #14, !dbg !4518
  unreachable, !dbg !4518
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @rpl_calloc(i64, i64) local_unnamed_addr #6 !dbg !4519 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4522, metadata !884), !dbg !4528
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4523, metadata !884), !dbg !4529
  %3 = icmp eq i64 %0, 0, !dbg !4530
  %4 = icmp eq i64 %1, 0, !dbg !4531
  %5 = or i1 %3, %4, !dbg !4533
  br i1 %5, label %12, label %6, !dbg !4533

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !4534
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !4525, metadata !884), !dbg !4535
  %8 = udiv i64 %7, %1, !dbg !4536
  %9 = icmp eq i64 %8, %0, !dbg !4538
  br i1 %9, label %12, label %10, !dbg !4539

; <label>:10:                                     ; preds = %6
  %11 = tail call i32* @__errno_location() #1, !dbg !4540
  store i32 12, i32* %11, align 4, !dbg !4542, !tbaa !1002
  br label %16

; <label>:12:                                     ; preds = %6, %2
  %13 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %14 = phi i64 [ 1, %2 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !4522, metadata !884), !dbg !4528
  tail call void @llvm.dbg.value(metadata i64 %13, i64 0, metadata !4523, metadata !884), !dbg !4529
  %15 = tail call noalias i8* @calloc(i64 %14, i64 %13) #10, !dbg !4543
  tail call void @llvm.dbg.value(metadata i8* %15, i64 0, metadata !4524, metadata !884), !dbg !4544
  br label %16, !dbg !4545

; <label>:16:                                     ; preds = %10, %12
  %17 = phi i8* [ %15, %12 ], [ null, %10 ]
  ret i8* %17, !dbg !4546
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i64 @rpl_mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #6 !dbg !4547 {
  %5 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i32* %0, i64 0, metadata !4564, metadata !884), !dbg !4573
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4565, metadata !884), !dbg !4574
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !4566, metadata !884), !dbg !4575
  tail call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, i64 0, metadata !4567, metadata !884), !dbg !4576
  %6 = bitcast i32* %5 to i8*, !dbg !4577
  call void @llvm.lifetime.start(i64 4, i8* nonnull %6) #10, !dbg !4577
  %7 = icmp eq i32* %0, null, !dbg !4578
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !4564, metadata !884), !dbg !4573
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !4580
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !4564, metadata !884), !dbg !4573
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #10, !dbg !4581
  call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !4568, metadata !884), !dbg !4582
  %10 = icmp ugt i64 %9, -3, !dbg !4583
  %11 = icmp ne i64 %2, 0, !dbg !4584
  %12 = and i1 %11, %10, !dbg !4586
  br i1 %12, label %13, label %18, !dbg !4586

; <label>:13:                                     ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #10, !dbg !4587
  br i1 %14, label %18, label %15, !dbg !4589

; <label>:15:                                     ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !4591, !tbaa !1090
  call void @llvm.dbg.value(metadata i8 %16, i64 0, metadata !4570, metadata !884), !dbg !4592
  %17 = zext i8 %16 to i32, !dbg !4593
  store i32 %17, i32* %8, align 4, !dbg !4594, !tbaa !1002
  br label %18

; <label>:18:                                     ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ]
  call void @llvm.lifetime.end(i64 4, i8* nonnull %6) #10, !dbg !4595
  ret i64 %19, !dbg !4595
}

; Function Attrs: nounwind
declare i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i8* @extract_trimmed_name(%struct.utmpx*) local_unnamed_addr #6 !dbg !4596 {
  tail call void @llvm.dbg.value(metadata %struct.utmpx* %0, i64 0, metadata !4625, metadata !884), !dbg !4628
  %2 = tail call noalias i8* @xmalloc(i64 33) #10, !dbg !4629
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4627, metadata !884), !dbg !4630
  %3 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %0, i64 0, i32 4, i64 0, !dbg !4631
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4632, metadata !884) #10, !dbg !4637
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !4635, metadata !884) #10, !dbg !4637
  tail call void @llvm.dbg.value(metadata i64 32, i64 0, metadata !4636, metadata !884) #10, !dbg !4637
  %4 = tail call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %2, i1 false) #10, !dbg !4639
  %5 = tail call i8* @__strncpy_chk(i8* nonnull %2, i8* nonnull %3, i64 32, i64 %4) #10, !dbg !4640
  %6 = getelementptr inbounds i8, i8* %2, i64 32, !dbg !4641
  store i8 0, i8* %6, align 1, !dbg !4642, !tbaa !1090
  %7 = tail call i64 @strlen(i8* %2) #13, !dbg !4643
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !4626, metadata !884), !dbg !4645
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !4626, metadata !884), !dbg !4645
  %8 = icmp sgt i64 %7, 0, !dbg !4646
  br i1 %8, label %9, label %19, !dbg !4648

; <label>:9:                                      ; preds = %1
  %10 = getelementptr inbounds i8, i8* %2, i64 %7, !dbg !4649
  br label %11, !dbg !4650

; <label>:11:                                     ; preds = %9, %16
  %12 = phi i8* [ %13, %16 ], [ %10, %9 ]
  %13 = getelementptr inbounds i8, i8* %12, i64 -1, !dbg !4650
  %14 = load i8, i8* %13, align 1, !dbg !4650, !tbaa !1090
  %15 = icmp eq i8 %14, 32, !dbg !4652
  br i1 %15, label %16, label %18, !dbg !4653

; <label>:16:                                     ; preds = %11
  tail call void @llvm.dbg.value(metadata i8* %13, i64 0, metadata !4626, metadata !884), !dbg !4645
  store i8 0, i8* %13, align 1, !dbg !4655, !tbaa !1090
  tail call void @llvm.dbg.value(metadata i8* %13, i64 0, metadata !4626, metadata !884), !dbg !4645
  %17 = icmp ult i8* %2, %13, !dbg !4646
  br i1 %17, label %11, label %18, !dbg !4648, !llvm.loop !4656

; <label>:18:                                     ; preds = %16, %11
  br label %19, !dbg !4659

; <label>:19:                                     ; preds = %18, %1
  ret i8* %2, !dbg !4659
}

; Function Attrs: nounwind
declare i8* @__strncpy_chk(i8*, i8*, i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @read_utmp(i8*, i64* nocapture, %struct.utmpx** nocapture, i32) local_unnamed_addr #6 !dbg !4660 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4666, metadata !884), !dbg !4674
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !4667, metadata !884), !dbg !4675
  tail call void @llvm.dbg.value(metadata %struct.utmpx** %2, i64 0, metadata !4668, metadata !884), !dbg !4676
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !4669, metadata !884), !dbg !4677
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4670, metadata !884), !dbg !4678
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4671, metadata !884), !dbg !4679
  tail call void @llvm.dbg.value(metadata %struct.utmpx* null, i64 0, metadata !4672, metadata !884), !dbg !4680
  %5 = tail call i32 @utmpxname(i8* %0) #10, !dbg !4681
  tail call void @setutxent() #10, !dbg !4682
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4670, metadata !884), !dbg !4678
  tail call void @llvm.dbg.value(metadata %struct.utmpx* null, i64 0, metadata !4672, metadata !884), !dbg !4680
  %6 = tail call %struct.utmpx* @getutxent() #10, !dbg !4683
  tail call void @llvm.dbg.value(metadata %struct.utmpx* %6, i64 0, metadata !4673, metadata !884), !dbg !4685
  %7 = icmp eq %struct.utmpx* %6, null, !dbg !4686
  br i1 %7, label %79, label %8, !dbg !4687

; <label>:8:                                      ; preds = %4
  %9 = and i32 %3, 2
  %10 = icmp eq i32 %9, 0
  %11 = and i32 %3, 1
  %12 = icmp eq i32 %11, 0
  br label %13, !dbg !4687

; <label>:13:                                     ; preds = %8, %67
  %14 = phi %struct.utmpx* [ %6, %8 ], [ %75, %67 ]
  %15 = phi i64 [ 0, %8 ], [ %71, %67 ]
  %16 = phi %struct.utmpx* [ null, %8 ], [ %70, %67 ]
  %17 = phi i8* [ null, %8 ], [ %69, %67 ]
  %18 = phi i64 [ 0, %8 ], [ %68, %67 ]
  br label %19, !dbg !4687

; <label>:19:                                     ; preds = %13, %31
  %20 = phi %struct.utmpx* [ %14, %13 ], [ %32, %31 ]
  tail call void @llvm.dbg.value(metadata %struct.utmpx* %20, i64 0, metadata !4688, metadata !884) #10, !dbg !4695
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !4693, metadata !884) #10, !dbg !4698
  %21 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %20, i64 0, i32 4, i64 0, !dbg !4699
  %22 = load i8, i8* %21, align 4, !dbg !4699, !tbaa !1090
  %23 = icmp eq i8 %22, 0, !dbg !4699
  br i1 %23, label %28, label %24, !dbg !4699

; <label>:24:                                     ; preds = %19
  %25 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %20, i64 0, i32 0, !dbg !4700
  %26 = load i16, i16* %25, align 4, !dbg !4700, !tbaa !1093
  %27 = icmp eq i16 %26, 7, !dbg !4700
  br label %28

; <label>:28:                                     ; preds = %24, %19
  %29 = phi i1 [ false, %19 ], [ %27, %24 ]
  %30 = or i1 %10, %29, !dbg !4702
  br i1 %30, label %34, label %31, !dbg !4702

; <label>:31:                                     ; preds = %28, %44
  tail call void @llvm.dbg.value(metadata i64 %15, i64 0, metadata !4670, metadata !884), !dbg !4678
  tail call void @llvm.dbg.value(metadata %struct.utmpx* %16, i64 0, metadata !4672, metadata !884), !dbg !4680
  %32 = tail call %struct.utmpx* @getutxent() #10, !dbg !4683
  tail call void @llvm.dbg.value(metadata %struct.utmpx* %32, i64 0, metadata !4673, metadata !884), !dbg !4685
  %33 = icmp eq %struct.utmpx* %32, null, !dbg !4686
  br i1 %33, label %77, label %19, !dbg !4687

; <label>:34:                                     ; preds = %28
  %35 = xor i1 %29, true, !dbg !4704
  %36 = or i1 %12, %35, !dbg !4704
  br i1 %36, label %48, label %37, !dbg !4704

; <label>:37:                                     ; preds = %34
  %38 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %20, i64 0, i32 1, !dbg !4706
  %39 = load i32, i32* %38, align 4, !dbg !4706, !tbaa !1191
  %40 = icmp sgt i32 %39, 0, !dbg !4708
  br i1 %40, label %41, label %48, !dbg !4709

; <label>:41:                                     ; preds = %37
  %42 = tail call i32 @kill(i32 %39, i32 0) #10, !dbg !4710
  %43 = icmp slt i32 %42, 0, !dbg !4711
  br i1 %43, label %44, label %48, !dbg !4712

; <label>:44:                                     ; preds = %41
  %45 = tail call i32* @__errno_location() #1, !dbg !4713
  %46 = load i32, i32* %45, align 4, !dbg !4713, !tbaa !1002
  %47 = icmp eq i32 %46, 3, !dbg !4715
  br i1 %47, label %31, label %48, !dbg !4716

; <label>:48:                                     ; preds = %44, %41, %37, %34
  tail call void @llvm.dbg.value(metadata i64 %18, i64 0, metadata !4671, metadata !884), !dbg !4679
  %49 = icmp eq i64 %15, %18, !dbg !4717
  br i1 %49, label %50, label %67, !dbg !4720

; <label>:50:                                     ; preds = %48
  tail call void @llvm.dbg.value(metadata i8* %17, i64 0, metadata !861, metadata !884) #10, !dbg !4721
  tail call void @llvm.dbg.value(metadata i64 384, i64 0, metadata !863, metadata !884) #10, !dbg !4723
  tail call void @llvm.dbg.value(metadata i64 %18, i64 0, metadata !864, metadata !884) #10, !dbg !4724
  %51 = icmp eq i8* %17, null, !dbg !4725
  br i1 %51, label %52, label %55, !dbg !4727

; <label>:52:                                     ; preds = %50
  %53 = icmp eq i64 %15, 0, !dbg !4728
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !864, metadata !884) #10, !dbg !4724
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !864, metadata !884) #10, !dbg !4724
  %54 = select i1 %53, i64 1, i64 %15, !dbg !4731
  br label %62, !dbg !4731

; <label>:55:                                     ; preds = %50
  %56 = icmp ult i64 %15, 16012798675095096, !dbg !4732
  br i1 %56, label %58, label %57, !dbg !4735

; <label>:57:                                     ; preds = %55
  tail call void @xalloc_die() #14, !dbg !4736
  unreachable, !dbg !4736

; <label>:58:                                     ; preds = %55
  %59 = lshr i64 %15, 1, !dbg !4737
  %60 = add i64 %15, 1, !dbg !4738
  %61 = add i64 %60, %59, !dbg !4739
  tail call void @llvm.dbg.value(metadata i64 %61, i64 0, metadata !864, metadata !884) #10, !dbg !4724
  br label %62

; <label>:62:                                     ; preds = %52, %58
  %63 = phi i64 [ %61, %58 ], [ %54, %52 ]
  tail call void @llvm.dbg.value(metadata i64 %63, i64 0, metadata !864, metadata !884) #10, !dbg !4724
  %64 = mul i64 %63, 384, !dbg !4740
  %65 = tail call i8* @xrealloc(i8* %17, i64 %64) #10, !dbg !4741
  %66 = bitcast i8* %65 to %struct.utmpx*, !dbg !4742
  tail call void @llvm.dbg.value(metadata %struct.utmpx* %66, i64 0, metadata !4672, metadata !884), !dbg !4680
  br label %67, !dbg !4743

; <label>:67:                                     ; preds = %62, %48
  %68 = phi i64 [ %63, %62 ], [ %18, %48 ]
  %69 = phi i8* [ %65, %62 ], [ %17, %48 ]
  %70 = phi %struct.utmpx* [ %66, %62 ], [ %16, %48 ]
  tail call void @llvm.dbg.value(metadata %struct.utmpx* %70, i64 0, metadata !4672, metadata !884), !dbg !4680
  %71 = add i64 %15, 1, !dbg !4744
  tail call void @llvm.dbg.value(metadata i64 %71, i64 0, metadata !4670, metadata !884), !dbg !4678
  %72 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %70, i64 %15, !dbg !4745
  %73 = bitcast %struct.utmpx* %72 to i8*, !dbg !4746
  %74 = bitcast %struct.utmpx* %20 to i8*, !dbg !4746
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %73, i8* %74, i64 384, i32 4, i1 false), !dbg !4746, !tbaa.struct !4747
  tail call void @llvm.dbg.value(metadata i64 %71, i64 0, metadata !4670, metadata !884), !dbg !4678
  tail call void @llvm.dbg.value(metadata %struct.utmpx* %70, i64 0, metadata !4672, metadata !884), !dbg !4680
  %75 = tail call %struct.utmpx* @getutxent() #10, !dbg !4683
  tail call void @llvm.dbg.value(metadata %struct.utmpx* %75, i64 0, metadata !4673, metadata !884), !dbg !4685
  %76 = icmp eq %struct.utmpx* %75, null, !dbg !4686
  br i1 %76, label %78, label %13, !dbg !4687, !llvm.loop !4748

; <label>:77:                                     ; preds = %31
  br label %79, !dbg !4751

; <label>:78:                                     ; preds = %67
  br label %79, !dbg !4751

; <label>:79:                                     ; preds = %78, %77, %4
  %80 = phi i8* [ null, %4 ], [ %17, %77 ], [ %69, %78 ]
  %81 = phi i64 [ 0, %4 ], [ %15, %77 ], [ %71, %78 ]
  tail call void @endutxent() #10, !dbg !4751
  store i64 %81, i64* %1, align 8, !dbg !4752, !tbaa !1068
  %82 = bitcast %struct.utmpx** %2 to i8**, !dbg !4753
  store i8* %80, i8** %82, align 8, !dbg !4753, !tbaa !892
  ret i32 0, !dbg !4754
}

declare i32 @utmpxname(i8*) local_unnamed_addr #3

declare void @setutxent() local_unnamed_addr #3

declare %struct.utmpx* @getutxent() local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @kill(i32, i32) local_unnamed_addr #2

declare void @endutxent() local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define i32 @close_stream(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !4755 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4800, metadata !884), !dbg !4805
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #10, !dbg !4806
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4807, metadata !884), !dbg !4811
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4813
  %4 = load i32, i32* %3, align 8, !dbg !4813, !tbaa !4814
  %5 = and i32 %4, 32, !dbg !4813
  %6 = icmp eq i32 %5, 0, !dbg !4816
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #10, !dbg !4817
  %8 = icmp ne i32 %7, 0, !dbg !4818
  br i1 %6, label %9, label %19, !dbg !4819

; <label>:9:                                      ; preds = %1
  %10 = xor i1 %8, true, !dbg !4821
  %11 = icmp ne i64 %2, 0, !dbg !4821
  %12 = or i1 %11, %10, !dbg !4821
  %13 = sext i1 %8 to i32, !dbg !4821
  br i1 %12, label %22, label %14, !dbg !4821

; <label>:14:                                     ; preds = %9
  %15 = tail call i32* @__errno_location() #1, !dbg !4823
  %16 = load i32, i32* %15, align 4, !dbg !4823, !tbaa !1002
  %17 = icmp ne i32 %16, 9, !dbg !4825
  %18 = sext i1 %17 to i32, !dbg !4825
  br label %22, !dbg !4825

; <label>:19:                                     ; preds = %1
  br i1 %8, label %22, label %20, !dbg !4827

; <label>:20:                                     ; preds = %19
  %21 = tail call i32* @__errno_location() #1, !dbg !4829
  store i32 0, i32* %21, align 4, !dbg !4831, !tbaa !1002
  br label %22, !dbg !4829

; <label>:22:                                     ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ]
  ret i32 %23, !dbg !4832
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i8* @locale_charset() local_unnamed_addr #6 !dbg !4833 {
  %1 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %1, metadata !4843, metadata !884), !dbg !4917
  %2 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %2, metadata !4910, metadata !884), !dbg !4919
  %3 = tail call i8* @nl_langinfo(i32 14) #10, !dbg !4920
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !4835, metadata !884), !dbg !4921
  %4 = icmp eq i8* %3, null, !dbg !4922
  %5 = select i1 %4, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.167, i64 0, i64 0), i8* %3, !dbg !4924
  tail call void @llvm.dbg.value(metadata i8* %5, i64 0, metadata !4835, metadata !884), !dbg !4921
  %6 = load volatile i8*, i8** @charset_aliases, align 8, !dbg !4925, !tbaa !892
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !4857, metadata !884) #10, !dbg !4926
  %7 = icmp eq i8* %6, null, !dbg !4927
  br i1 %7, label %8, label %127, !dbg !4928

; <label>:8:                                      ; preds = %0
  %9 = tail call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3.168, i64 0, i64 0)) #10, !dbg !4929
  tail call void @llvm.dbg.value(metadata i8* %9, i64 0, metadata !4858, metadata !884) #10, !dbg !4930
  %10 = icmp eq i8* %9, null, !dbg !4931
  br i1 %10, label %14, label %11, !dbg !4933

; <label>:11:                                     ; preds = %8
  %12 = load i8, i8* %9, align 1, !dbg !4934, !tbaa !1090
  %13 = icmp eq i8 %12, 0, !dbg !4936
  br i1 %13, label %14, label %15, !dbg !4937

; <label>:14:                                     ; preds = %11, %8
  br label %15, !dbg !4939

; <label>:15:                                     ; preds = %14, %11
  %16 = phi i8* [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4.169, i64 0, i64 0), %14 ], [ %9, %11 ]
  tail call void @llvm.dbg.value(metadata i8* %16, i64 0, metadata !4858, metadata !884) #10, !dbg !4930
  %17 = tail call i64 @strlen(i8* nonnull %16) #13, !dbg !4940
  tail call void @llvm.dbg.value(metadata i64 %17, i64 0, metadata !4861, metadata !884) #10, !dbg !4941
  tail call void @llvm.dbg.value(metadata i64 13, i64 0, metadata !4863, metadata !884) #10, !dbg !4942
  %18 = icmp eq i64 %17, 0, !dbg !4943
  br i1 %18, label %24, label %19, !dbg !4944

; <label>:19:                                     ; preds = %15
  %20 = add i64 %17, -1, !dbg !4945
  %21 = getelementptr inbounds i8, i8* %16, i64 %20, !dbg !4945
  %22 = load i8, i8* %21, align 1, !dbg !4945, !tbaa !1090
  %23 = icmp ne i8 %22, 47, !dbg !4947
  br label %24

; <label>:24:                                     ; preds = %19, %15
  %25 = phi i1 [ false, %15 ], [ %23, %19 ]
  %26 = zext i1 %25 to i64, !dbg !4948
  %27 = add i64 %17, 14, !dbg !4949
  %28 = add i64 %27, %26, !dbg !4950
  %29 = tail call noalias i8* @malloc(i64 %28) #10, !dbg !4951
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !4860, metadata !884) #10, !dbg !4952
  %30 = icmp eq i8* %29, null, !dbg !4953
  br i1 %30, label %125, label %31, !dbg !4953

; <label>:31:                                     ; preds = %24
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %29, i8* %16, i64 %17, i32 1, i1 false) #10, !dbg !4954
  %32 = getelementptr inbounds i8, i8* %29, i64 %17
  br i1 %25, label %33, label %35, !dbg !4957

; <label>:33:                                     ; preds = %31
  store i8 47, i8* %32, align 1, !dbg !4958, !tbaa !1090
  %34 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !4960
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %34, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.170, i64 0, i64 0), i64 14, i32 1, i1 false) #10, !dbg !4961
  br label %37, !dbg !4962

; <label>:35:                                     ; preds = %31
  %36 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !4960
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.170, i64 0, i64 0), i64 14, i32 1, i1 false) #10, !dbg !4961
  br label %37, !dbg !4962

; <label>:37:                                     ; preds = %35, %33
  %38 = tail call i32 (i8*, i32, ...) @open(i8* nonnull %29, i32 131072) #10, !dbg !4963
  tail call void @llvm.dbg.value(metadata i32 %38, i64 0, metadata !4865, metadata !884) #10, !dbg !4964
  %39 = icmp slt i32 %38, 0, !dbg !4965
  br i1 %39, label %123, label %40, !dbg !4966

; <label>:40:                                     ; preds = %37
  %41 = tail call %struct._IO_FILE* @fdopen(i32 %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.171, i64 0, i64 0)) #10, !dbg !4967
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !4866, metadata !884) #10, !dbg !4968
  %42 = icmp eq %struct._IO_FILE* %41, null, !dbg !4969
  br i1 %42, label %48, label %43, !dbg !4970

; <label>:43:                                     ; preds = %40
  %44 = getelementptr inbounds [51 x i8], [51 x i8]* %1, i64 0, i64 0
  %45 = getelementptr inbounds [51 x i8], [51 x i8]* %2, i64 0, i64 0
  %46 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 1
  %47 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 2
  br label %50, !dbg !4971

; <label>:48:                                     ; preds = %40
  %49 = tail call i32 @close(i32 %38) #10, !dbg !4972
  br label %123, !dbg !4974

; <label>:50:                                     ; preds = %111, %43
  %51 = phi i64 [ %112, %111 ], [ 0, %43 ]
  %52 = phi i8* [ %113, %111 ], [ null, %43 ]
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !4907, metadata !884) #10, !dbg !4971
  call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !4908, metadata !884) #10, !dbg !4975
  call void @llvm.lifetime.start(i64 51, i8* nonnull %44) #10, !dbg !4976
  call void @llvm.lifetime.start(i64 51, i8* nonnull %45) #10, !dbg !4977
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !4978, metadata !884) #10, !dbg !4983
  %53 = load i8*, i8** %46, align 8, !dbg !4985, !tbaa !4986
  %54 = load i8*, i8** %47, align 8, !dbg !4985, !tbaa !4987
  %55 = icmp ult i8* %53, %54, !dbg !4985
  br i1 %55, label %58, label %56, !dbg !4985, !prof !4988

; <label>:56:                                     ; preds = %50
  %57 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #10, !dbg !4989
  br label %62, !dbg !4989

; <label>:58:                                     ; preds = %50
  %59 = getelementptr inbounds i8, i8* %53, i64 1, !dbg !4991
  store i8* %59, i8** %46, align 8, !dbg !4991, !tbaa !4986
  %60 = load i8, i8* %53, align 1, !dbg !4991, !tbaa !1090
  %61 = zext i8 %60 to i32, !dbg !4991
  br label %62, !dbg !4991

; <label>:62:                                     ; preds = %58, %56
  %63 = phi i32 [ %57, %56 ], [ %61, %58 ], !dbg !4993
  call void @llvm.dbg.value(metadata i32 %63, i64 0, metadata !4909, metadata !884) #10, !dbg !4995
  switch i32 %63, label %77 [
    i32 -1, label %115
    i32 32, label %111
    i32 10, label %111
    i32 9, label %111
    i32 35, label %64
  ], !dbg !4996

; <label>:64:                                     ; preds = %62
  br label %65, !dbg !4997

; <label>:65:                                     ; preds = %64, %75
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !4978, metadata !884) #10, !dbg !4997
  %66 = load i8*, i8** %46, align 8, !dbg !5001, !tbaa !4986
  %67 = load i8*, i8** %47, align 8, !dbg !5001, !tbaa !4987
  %68 = icmp ult i8* %66, %67, !dbg !5001
  br i1 %68, label %71, label %69, !dbg !5001, !prof !4988

; <label>:69:                                     ; preds = %65
  %70 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #10, !dbg !5002
  br label %75, !dbg !5002

; <label>:71:                                     ; preds = %65
  %72 = getelementptr inbounds i8, i8* %66, i64 1, !dbg !5003
  store i8* %72, i8** %46, align 8, !dbg !5003, !tbaa !4986
  %73 = load i8, i8* %66, align 1, !dbg !5003, !tbaa !1090
  %74 = zext i8 %73 to i32, !dbg !5003
  br label %75, !dbg !5003

; <label>:75:                                     ; preds = %71, %69
  %76 = phi i32 [ %70, %69 ], [ %74, %71 ], !dbg !5004
  call void @llvm.dbg.value(metadata i32 %76, i64 0, metadata !4909, metadata !884) #10, !dbg !4995
  switch i32 %76, label %65 [
    i32 -1, label %114
    i32 10, label %110
  ], !dbg !5005, !llvm.loop !5007

; <label>:77:                                     ; preds = %62
  %78 = call i32 @ungetc(i32 %63, %struct._IO_FILE* nonnull %41) #10, !dbg !5010
  %79 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* nonnull %41, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6.172, i64 0, i64 0), i8* nonnull %44, i8* nonnull %45) #10, !dbg !5011
  %80 = icmp slt i32 %79, 2, !dbg !5013
  br i1 %80, label %115, label %81, !dbg !5014

; <label>:81:                                     ; preds = %77
  %82 = call i64 @strlen(i8* nonnull %44) #13, !dbg !5015
  call void @llvm.dbg.value(metadata i64 %82, i64 0, metadata !4914, metadata !884) #10, !dbg !5016
  %83 = call i64 @strlen(i8* nonnull %45) #13, !dbg !5017
  call void @llvm.dbg.value(metadata i64 %83, i64 0, metadata !4915, metadata !884) #10, !dbg !5018
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !4916, metadata !884) #10, !dbg !5019
  %84 = icmp eq i64 %51, 0, !dbg !5020
  %85 = add i64 %82, 1
  %86 = add i64 %85, %83
  %87 = add i64 %86, 1
  br i1 %84, label %88, label %91, !dbg !5022

; <label>:88:                                     ; preds = %81
  call void @llvm.dbg.value(metadata i64 %87, i64 0, metadata !4908, metadata !884) #10, !dbg !4975
  %89 = add i64 %86, 2, !dbg !5023
  %90 = call noalias i8* @malloc(i64 %89) #10, !dbg !5025
  call void @llvm.dbg.value(metadata i8* %90, i64 0, metadata !4907, metadata !884) #10, !dbg !4971
  br label %95, !dbg !5026

; <label>:91:                                     ; preds = %81
  %92 = add i64 %87, %51, !dbg !5027
  call void @llvm.dbg.value(metadata i64 %92, i64 0, metadata !4908, metadata !884) #10, !dbg !4975
  %93 = add i64 %92, 1, !dbg !5029
  %94 = call i8* @realloc(i8* %52, i64 %93) #10, !dbg !5030
  call void @llvm.dbg.value(metadata i8* %94, i64 0, metadata !4907, metadata !884) #10, !dbg !4971
  br label %95

; <label>:95:                                     ; preds = %91, %88
  %96 = phi i64 [ %87, %88 ], [ %92, %91 ]
  %97 = phi i8* [ %90, %88 ], [ %94, %91 ]
  call void @llvm.dbg.value(metadata i8* %97, i64 0, metadata !4907, metadata !884) #10, !dbg !4971
  call void @llvm.dbg.value(metadata i64 %96, i64 0, metadata !4908, metadata !884) #10, !dbg !4975
  %98 = icmp eq i8* %97, null, !dbg !5031
  br i1 %98, label %99, label %100, !dbg !5033

; <label>:99:                                     ; preds = %95
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4908, metadata !884) #10, !dbg !4975
  call void @free(i8* %52) #10, !dbg !5034
  br label %116, !dbg !5036

; <label>:100:                                    ; preds = %95
  %101 = getelementptr inbounds i8, i8* %97, i64 %96, !dbg !5037
  %102 = xor i64 %83, -1, !dbg !5038
  %103 = getelementptr inbounds i8, i8* %101, i64 %102, !dbg !5038
  %104 = xor i64 %82, -1, !dbg !5039
  %105 = getelementptr inbounds i8, i8* %103, i64 %104, !dbg !5039
  call void @llvm.dbg.value(metadata i8* %105, i64 0, metadata !5040, metadata !884) #10, !dbg !5044
  call void @llvm.dbg.value(metadata i8* %44, i64 0, metadata !5043, metadata !884) #10, !dbg !5044
  %106 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %105, i1 false) #10, !dbg !5046
  %107 = call i8* @__strcpy_chk(i8* nonnull %105, i8* nonnull %44, i64 %106) #10, !dbg !5047
  call void @llvm.dbg.value(metadata i8* %103, i64 0, metadata !5040, metadata !884) #10, !dbg !5048
  call void @llvm.dbg.value(metadata i8* %45, i64 0, metadata !5043, metadata !884) #10, !dbg !5048
  %108 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %103, i1 false) #10, !dbg !5050
  %109 = call i8* @__strcpy_chk(i8* nonnull %103, i8* nonnull %45, i64 %108) #10, !dbg !5051
  br label %111, !dbg !5052

; <label>:110:                                    ; preds = %75
  br label %111, !dbg !4971

; <label>:111:                                    ; preds = %110, %100, %62, %62, %62
  %112 = phi i64 [ %96, %100 ], [ %51, %62 ], [ %51, %62 ], [ %51, %62 ], [ %51, %110 ]
  %113 = phi i8* [ %97, %100 ], [ %52, %62 ], [ %52, %62 ], [ %52, %62 ], [ %52, %110 ]
  call void @llvm.dbg.value(metadata i8* %113, i64 0, metadata !4907, metadata !884) #10, !dbg !4971
  call void @llvm.dbg.value(metadata i64 %112, i64 0, metadata !4908, metadata !884) #10, !dbg !4975
  call void @llvm.lifetime.end(i64 51, i8* nonnull %45) #10, !dbg !5052
  call void @llvm.lifetime.end(i64 51, i8* nonnull %44) #10, !dbg !5052
  br label %50

; <label>:114:                                    ; preds = %75
  br label %116, !dbg !4971

; <label>:115:                                    ; preds = %62, %77
  br label %116, !dbg !4971

; <label>:116:                                    ; preds = %115, %114, %99
  %117 = phi i64 [ 0, %99 ], [ %51, %114 ], [ %51, %115 ]
  %118 = phi i8* [ null, %99 ], [ %52, %114 ], [ %52, %115 ]
  call void @llvm.dbg.value(metadata i8* %113, i64 0, metadata !4907, metadata !884) #10, !dbg !4971
  call void @llvm.dbg.value(metadata i64 %112, i64 0, metadata !4908, metadata !884) #10, !dbg !4975
  call void @llvm.lifetime.end(i64 51, i8* nonnull %45) #10, !dbg !5052
  call void @llvm.lifetime.end(i64 51, i8* nonnull %44) #10, !dbg !5052
  %119 = call i32 @rpl_fclose(%struct._IO_FILE* nonnull %41) #10, !dbg !5053
  %120 = icmp eq i64 %117, 0, !dbg !5054
  br i1 %120, label %123, label %121, !dbg !5056

; <label>:121:                                    ; preds = %116
  %122 = getelementptr inbounds i8, i8* %118, i64 %117, !dbg !5057
  store i8 0, i8* %122, align 1, !dbg !5059, !tbaa !1090
  call void @llvm.dbg.value(metadata i8* %113, i64 0, metadata !4857, metadata !884) #10, !dbg !4926
  br label %123

; <label>:123:                                    ; preds = %121, %116, %48, %37
  %124 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.167, i64 0, i64 0), %37 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.167, i64 0, i64 0), %48 ], [ %118, %121 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.167, i64 0, i64 0), %116 ]
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !4857, metadata !884) #10, !dbg !4926
  call void @free(i8* %29) #10, !dbg !5060
  br label %125

; <label>:125:                                    ; preds = %123, %24
  %126 = phi i8* [ %124, %123 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.167, i64 0, i64 0), %24 ]
  call void @llvm.dbg.value(metadata i8* %126, i64 0, metadata !4857, metadata !884) #10, !dbg !4926
  store volatile i8* %126, i8** @charset_aliases, align 8, !dbg !5061, !tbaa !892
  br label %127, !dbg !5062

; <label>:127:                                    ; preds = %0, %125
  %128 = phi i8* [ %6, %0 ], [ %126, %125 ]
  call void @llvm.dbg.value(metadata i8* %128, i64 0, metadata !4836, metadata !884), !dbg !5063
  %129 = load i8, i8* %128, align 1, !dbg !5064, !tbaa !1090
  %130 = icmp eq i8 %129, 0, !dbg !5065
  br i1 %130, label %157, label %131, !dbg !5066

; <label>:131:                                    ; preds = %127
  br label %132, !dbg !5068

; <label>:132:                                    ; preds = %131, %147
  %133 = phi i8 [ %154, %147 ], [ %129, %131 ]
  %134 = phi i8* [ %153, %147 ], [ %128, %131 ]
  %135 = call i32 @strcmp(i8* %5, i8* %134) #10, !dbg !5068
  %136 = icmp eq i32 %135, 0, !dbg !5069
  br i1 %136, label %143, label %137, !dbg !5070

; <label>:137:                                    ; preds = %132
  %138 = icmp eq i8 %133, 42, !dbg !5071
  br i1 %138, label %139, label %147, !dbg !5073

; <label>:139:                                    ; preds = %137
  %140 = getelementptr inbounds i8, i8* %134, i64 1, !dbg !5074
  %141 = load i8, i8* %140, align 1, !dbg !5074, !tbaa !1090
  %142 = icmp eq i8 %141, 0, !dbg !5076
  br i1 %142, label %143, label %147, !dbg !5077

; <label>:143:                                    ; preds = %139, %132
  %144 = call i64 @strlen(i8* %134) #13, !dbg !5079
  %145 = getelementptr inbounds i8, i8* %134, i64 %144, !dbg !5081
  %146 = getelementptr inbounds i8, i8* %145, i64 1, !dbg !5082
  call void @llvm.dbg.value(metadata i8* %146, i64 0, metadata !4835, metadata !884), !dbg !4921
  br label %157, !dbg !5083

; <label>:147:                                    ; preds = %137, %139
  %148 = call i64 @strlen(i8* %134) #13, !dbg !5084
  %149 = add i64 %148, 1, !dbg !5085
  %150 = getelementptr inbounds i8, i8* %134, i64 %149, !dbg !5086
  call void @llvm.dbg.value(metadata i8* %150, i64 0, metadata !4836, metadata !884), !dbg !5063
  %151 = call i64 @strlen(i8* %150) #13, !dbg !5087
  %152 = add i64 %151, 1, !dbg !5088
  %153 = getelementptr inbounds i8, i8* %150, i64 %152, !dbg !5089
  call void @llvm.dbg.value(metadata i8* %153, i64 0, metadata !4836, metadata !884), !dbg !5063
  call void @llvm.dbg.value(metadata i8* %153, i64 0, metadata !4836, metadata !884), !dbg !5063
  %154 = load i8, i8* %153, align 1, !dbg !5064, !tbaa !1090
  %155 = icmp eq i8 %154, 0, !dbg !5065
  br i1 %155, label %156, label %132, !dbg !5066, !llvm.loop !5090

; <label>:156:                                    ; preds = %147
  br label %157, !dbg !4921

; <label>:157:                                    ; preds = %156, %127, %143
  %158 = phi i8* [ %146, %143 ], [ %5, %127 ], [ %5, %156 ]
  call void @llvm.dbg.value(metadata i8* %158, i64 0, metadata !4835, metadata !884), !dbg !4921
  %159 = load i8, i8* %158, align 1, !dbg !5093, !tbaa !1090
  %160 = icmp eq i8 %159, 0, !dbg !5095
  %161 = select i1 %160, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.173, i64 0, i64 0), i8* %158, !dbg !5096
  call void @llvm.dbg.value(metadata i8* %161, i64 0, metadata !4835, metadata !884), !dbg !4921
  ret i8* %161, !dbg !5097
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
define i32 @rpl_fclose(%struct._IO_FILE* nonnull) local_unnamed_addr #6 !dbg !5098 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !5143, metadata !884), !dbg !5147
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !5144, metadata !884), !dbg !5148
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !5146, metadata !884), !dbg !5149
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !5150
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !5145, metadata !884), !dbg !5151
  %3 = icmp slt i32 %2, 0, !dbg !5152
  br i1 %3, label %4, label %6, !dbg !5154

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !5155
  br label %24, !dbg !5156

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #10, !dbg !5157
  %8 = icmp eq i32 %7, 0, !dbg !5157
  br i1 %8, label %13, label %9, !dbg !5159

; <label>:9:                                      ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !5160
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #10, !dbg !5162
  %12 = icmp eq i64 %11, -1, !dbg !5164
  br i1 %12, label %16, label %13, !dbg !5165

; <label>:13:                                     ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #10, !dbg !5166
  %15 = icmp eq i32 %14, 0, !dbg !5166
  br i1 %15, label %16, label %18, !dbg !5167

; <label>:16:                                     ; preds = %13, %9
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !5144, metadata !884), !dbg !5148
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !5169
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !5146, metadata !884), !dbg !5149
  br label %24, !dbg !5170

; <label>:18:                                     ; preds = %13
  %19 = tail call i32* @__errno_location() #1, !dbg !5171
  %20 = load i32, i32* %19, align 4, !dbg !5171, !tbaa !1002
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !5144, metadata !884), !dbg !5148
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !5144, metadata !884), !dbg !5148
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !5169
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !5146, metadata !884), !dbg !5149
  %22 = icmp eq i32 %20, 0, !dbg !5172
  br i1 %22, label %24, label %23, !dbg !5170

; <label>:23:                                     ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !5174, !tbaa !1002
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !5146, metadata !884), !dbg !5149
  br label %24, !dbg !5176

; <label>:24:                                     ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ]
  ret i32 %25, !dbg !5177
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
define i32 @rpl_fflush(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !5178 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !5223, metadata !884), !dbg !5224
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !5225
  br i1 %2, label %6, label %3, !dbg !5227

; <label>:3:                                      ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #10, !dbg !5228
  %5 = icmp eq i32 %4, 0, !dbg !5228
  br i1 %5, label %6, label %8, !dbg !5230

; <label>:6:                                      ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !5232
  br label %17, !dbg !5233

; <label>:8:                                      ; preds = %3
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !5234, metadata !884) #10, !dbg !5239
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !5241
  %10 = load i32, i32* %9, align 8, !dbg !5241, !tbaa !4814
  %11 = and i32 %10, 256, !dbg !5243
  %12 = icmp eq i32 %11, 0, !dbg !5243
  br i1 %12, label %15, label %13, !dbg !5244

; <label>:13:                                     ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #10, !dbg !5245
  br label %15, !dbg !5245

; <label>:15:                                     ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !5246
  br label %17, !dbg !5247

; <label>:17:                                     ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ]
  ret i32 %18, !dbg !5248
}

; Function Attrs: nounwind
declare i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull, i64, i32) local_unnamed_addr #6 !dbg !5249 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !5295, metadata !884), !dbg !5301
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !5296, metadata !884), !dbg !5302
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !5297, metadata !884), !dbg !5303
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !5304
  %5 = load i8*, i8** %4, align 8, !dbg !5304, !tbaa !4987
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !5305
  %7 = load i8*, i8** %6, align 8, !dbg !5305, !tbaa !4986
  %8 = icmp eq i8* %5, %7, !dbg !5306
  br i1 %8, label %9, label %28, !dbg !5307

; <label>:9:                                      ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !5308
  %11 = load i8*, i8** %10, align 8, !dbg !5308, !tbaa !5310
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !5311
  %13 = load i8*, i8** %12, align 8, !dbg !5311, !tbaa !5312
  %14 = icmp eq i8* %11, %13, !dbg !5313
  br i1 %14, label %15, label %28, !dbg !5314

; <label>:15:                                     ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !5315
  %17 = load i8*, i8** %16, align 8, !dbg !5315, !tbaa !5316
  %18 = icmp eq i8* %17, null, !dbg !5317
  br i1 %18, label %19, label %28, !dbg !5318

; <label>:19:                                     ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !5320
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #10, !dbg !5321
  tail call void @llvm.dbg.value(metadata i64 %21, i64 0, metadata !5298, metadata !884), !dbg !5323
  %22 = icmp eq i64 %21, -1, !dbg !5324
  br i1 %22, label %30, label %23, !dbg !5326

; <label>:23:                                     ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !5327
  %25 = load i32, i32* %24, align 8, !dbg !5328, !tbaa !4814
  %26 = and i32 %25, -17, !dbg !5328
  store i32 %26, i32* %24, align 8, !dbg !5328, !tbaa !4814
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !5329
  store i64 %21, i64* %27, align 8, !dbg !5330, !tbaa !5331
  br label %30, !dbg !5332

; <label>:28:                                     ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !5333
  br label %30, !dbg !5334

; <label>:30:                                     ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ]
  ret i32 %31, !dbg !5335
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

!llvm.dbg.cu = !{!2, !325, !331, !374, !382, !814, !817, !389, !396, !823, !459, !831, !848, !850, !852, !855, !866, !468, !868, !870, !872}
!llvm.ident = !{!874, !874, !874, !874, !874, !874, !874, !874, !874, !874, !874, !874, !874, !874, !874, !874, !874, !874, !874, !874, !874}
!llvm.module.flags = !{!875, !876, !877, !878}

!0 = !DIGlobalVariableExpression(var: !1)
!1 = distinct !DIGlobalVariable(name: "longopts", scope: !2, file: !3, line: 162, type: !311, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !24, globals: !44)
!3 = !DIFile(filename: "src/who.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4 = !{!5, !10}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 208, size: 32, elements: !7)
!6 = !DIFile(filename: "./lib/readutmp.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!7 = !{!8, !9}
!8 = !DIEnumerator(name: "READ_UTMP_CHECK_PIDS", value: 1)
!9 = !DIEnumerator(name: "READ_UTMP_USER_PROCESS", value: 2)
!10 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !11, line: 32, size: 32, elements: !12)
!11 = !DIFile(filename: "./lib/quotearg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23}
!13 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!14 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!15 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!16 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!17 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!18 = !DIEnumerator(name: "c_quoting_style", value: 5)
!19 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!20 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!21 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!22 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!23 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!24 = !{!25, !27, !28, !31, !33, !36, !38, !42, !43}
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!26 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !29, line: 62, baseType: !30)
!29 = !DIFile(filename: "/usr/bin/../lib/clang/4.0.1/include/stddef.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!30 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!32 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!34 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !35)
!35 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!37 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !26)
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !39, line: 8, baseType: !40)
!39 = !DIFile(filename: "/usr/include/bits/types/time_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !41, line: 148, baseType: !42)
!41 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!42 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!43 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!44 = !{!45, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !81, !0, !111, !143, !248, !250, !261, !266, !293, !302, !304}
!45 = !DIGlobalVariableExpression(var: !46)
!46 = distinct !DIGlobalVariable(name: "do_lookup", scope: !2, file: !3, line: 102, type: !47, isLocal: true, isDefinition: true)
!47 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!48 = !DIGlobalVariableExpression(var: !49)
!49 = distinct !DIGlobalVariable(name: "short_list", scope: !2, file: !3, line: 107, type: !47, isLocal: true, isDefinition: true)
!50 = !DIGlobalVariableExpression(var: !51)
!51 = distinct !DIGlobalVariable(name: "short_output", scope: !2, file: !3, line: 110, type: !47, isLocal: true, isDefinition: true)
!52 = !DIGlobalVariableExpression(var: !53)
!53 = distinct !DIGlobalVariable(name: "include_idle", scope: !2, file: !3, line: 115, type: !47, isLocal: true, isDefinition: true)
!54 = !DIGlobalVariableExpression(var: !55)
!55 = distinct !DIGlobalVariable(name: "include_heading", scope: !2, file: !3, line: 118, type: !47, isLocal: true, isDefinition: true)
!56 = !DIGlobalVariableExpression(var: !57)
!57 = distinct !DIGlobalVariable(name: "include_mesg", scope: !2, file: !3, line: 122, type: !47, isLocal: true, isDefinition: true)
!58 = !DIGlobalVariableExpression(var: !59)
!59 = distinct !DIGlobalVariable(name: "include_exit", scope: !2, file: !3, line: 125, type: !47, isLocal: true, isDefinition: true)
!60 = !DIGlobalVariableExpression(var: !61)
!61 = distinct !DIGlobalVariable(name: "need_boottime", scope: !2, file: !3, line: 128, type: !47, isLocal: true, isDefinition: true)
!62 = !DIGlobalVariableExpression(var: !63)
!63 = distinct !DIGlobalVariable(name: "need_deadprocs", scope: !2, file: !3, line: 131, type: !47, isLocal: true, isDefinition: true)
!64 = !DIGlobalVariableExpression(var: !65)
!65 = distinct !DIGlobalVariable(name: "need_login", scope: !2, file: !3, line: 134, type: !47, isLocal: true, isDefinition: true)
!66 = !DIGlobalVariableExpression(var: !67)
!67 = distinct !DIGlobalVariable(name: "need_initspawn", scope: !2, file: !3, line: 137, type: !47, isLocal: true, isDefinition: true)
!68 = !DIGlobalVariableExpression(var: !69)
!69 = distinct !DIGlobalVariable(name: "need_clockchange", scope: !2, file: !3, line: 140, type: !47, isLocal: true, isDefinition: true)
!70 = !DIGlobalVariableExpression(var: !71)
!71 = distinct !DIGlobalVariable(name: "need_runlevel", scope: !2, file: !3, line: 143, type: !47, isLocal: true, isDefinition: true)
!72 = !DIGlobalVariableExpression(var: !73)
!73 = distinct !DIGlobalVariable(name: "need_users", scope: !2, file: !3, line: 146, type: !47, isLocal: true, isDefinition: true)
!74 = !DIGlobalVariableExpression(var: !75)
!75 = distinct !DIGlobalVariable(name: "my_line_only", scope: !2, file: !3, line: 149, type: !47, isLocal: true, isDefinition: true)
!76 = !DIGlobalVariableExpression(var: !77)
!77 = distinct !DIGlobalVariable(name: "time_format", scope: !2, file: !3, line: 153, type: !36, isLocal: true, isDefinition: true)
!78 = !DIGlobalVariableExpression(var: !79)
!79 = distinct !DIGlobalVariable(name: "time_format_width", scope: !2, file: !3, line: 154, type: !80, isLocal: true, isDefinition: true)
!80 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!81 = !DIGlobalVariableExpression(var: !82)
!82 = distinct !DIGlobalVariable(name: "infomap", scope: !83, file: !84, line: 632, type: !108, isLocal: true, isDefinition: true)
!83 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !84, file: !84, line: 630, type: !85, isLocal: true, isDefinition: true, scopeLine: 631, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !87)
!84 = !DIFile(filename: "src/system.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!85 = !DISubroutineType(types: !86)
!86 = !{null, !36}
!87 = !{!88, !89, !90, !97, !99, !100, !101, !104, !105, !107}
!88 = !DILocalVariable(name: "program", arg: 1, scope: !83, file: !84, line: 630, type: !36)
!89 = !DILocalVariable(name: "node", scope: !83, file: !84, line: 642, type: !36)
!90 = !DILocalVariable(name: "map_prog", scope: !83, file: !84, line: 643, type: !91)
!91 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64)
!92 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !93)
!93 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !83, file: !84, line: 632, size: 128, elements: !94)
!94 = !{!95, !96}
!95 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !93, file: !84, line: 632, baseType: !36, size: 64)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !93, file: !84, line: 632, baseType: !36, size: 64, offset: 64)
!97 = !DILocalVariable(name: "__s1_len", scope: !98, file: !84, line: 645, type: !28)
!98 = distinct !DILexicalBlock(scope: !83, file: !84, line: 645, column: 33)
!99 = !DILocalVariable(name: "__s2_len", scope: !98, file: !84, line: 645, type: !28)
!100 = !DILocalVariable(name: "lc_messages", scope: !83, file: !84, line: 655, type: !36)
!101 = !DILocalVariable(name: "__s1_len", scope: !102, file: !84, line: 656, type: !28)
!102 = distinct !DILexicalBlock(scope: !103, file: !84, line: 656, column: 22)
!103 = distinct !DILexicalBlock(scope: !83, file: !84, line: 656, column: 7)
!104 = !DILocalVariable(name: "__s2_len", scope: !102, file: !84, line: 656, type: !28)
!105 = !DILocalVariable(name: "__s2", scope: !106, file: !84, line: 656, type: !33)
!106 = distinct !DILexicalBlock(scope: !102, file: !84, line: 656, column: 22)
!107 = !DILocalVariable(name: "__result", scope: !106, file: !84, line: 656, type: !80)
!108 = !DICompositeType(tag: DW_TAG_array_type, baseType: !92, size: 896, elements: !109)
!109 = !{!110}
!110 = !DISubrange(count: 7)
!111 = !DIGlobalVariableExpression(var: !112)
!112 = distinct !DIGlobalVariable(name: "mesg", scope: !113, file: !3, line: 249, type: !140, isLocal: true, isDefinition: true)
!113 = distinct !DISubprogram(name: "print_line", scope: !3, file: !3, line: 244, type: !114, isLocal: true, isDefinition: true, scopeLine: 248, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !116)
!114 = !DISubroutineType(types: !115)
!115 = !{null, !80, !36, !37, !80, !36, !36, !36, !36, !36, !36}
!116 = !{!117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !132, !136, !137, !138}
!117 = !DILocalVariable(name: "userlen", arg: 1, scope: !113, file: !3, line: 244, type: !80)
!118 = !DILocalVariable(name: "user", arg: 2, scope: !113, file: !3, line: 244, type: !36)
!119 = !DILocalVariable(name: "state", arg: 3, scope: !113, file: !3, line: 244, type: !37)
!120 = !DILocalVariable(name: "linelen", arg: 4, scope: !113, file: !3, line: 245, type: !80)
!121 = !DILocalVariable(name: "line", arg: 5, scope: !113, file: !3, line: 245, type: !36)
!122 = !DILocalVariable(name: "time_str", arg: 6, scope: !113, file: !3, line: 246, type: !36)
!123 = !DILocalVariable(name: "idle", arg: 7, scope: !113, file: !3, line: 246, type: !36)
!124 = !DILocalVariable(name: "pid", arg: 8, scope: !113, file: !3, line: 246, type: !36)
!125 = !DILocalVariable(name: "comment", arg: 9, scope: !113, file: !3, line: 247, type: !36)
!126 = !DILocalVariable(name: "exitstr", arg: 10, scope: !113, file: !3, line: 247, type: !36)
!127 = !DILocalVariable(name: "buf", scope: !113, file: !3, line: 250, type: !25)
!128 = !DILocalVariable(name: "x_idle", scope: !113, file: !3, line: 251, type: !129)
!129 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 64, elements: !130)
!130 = !{!131}
!131 = !DISubrange(count: 8)
!132 = !DILocalVariable(name: "x_pid", scope: !113, file: !3, line: 252, type: !133)
!133 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 104, elements: !134)
!134 = !{!135}
!135 = !DISubrange(count: 13)
!136 = !DILocalVariable(name: "x_exitstr", scope: !113, file: !3, line: 253, type: !25)
!137 = !DILocalVariable(name: "err", scope: !113, file: !3, line: 254, type: !80)
!138 = !DILocalVariable(name: "p", scope: !139, file: !3, line: 303, type: !25)
!139 = distinct !DILexicalBlock(scope: !113, file: !3, line: 301, column: 3)
!140 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 24, elements: !141)
!141 = !{!142}
!142 = !DISubrange(count: 3)
!143 = !DIGlobalVariableExpression(var: !144)
!144 = distinct !DIGlobalVariable(name: "hoststr", scope: !145, file: !3, line: 339, type: !25, isLocal: true, isDefinition: true)
!145 = distinct !DISubprogram(name: "print_user", scope: !3, file: !3, line: 333, type: !146, isLocal: true, isDefinition: true, scopeLine: 334, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !188)
!146 = !DISubroutineType(types: !147)
!147 = !{null, !148, !38}
!148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !149, size: 64)
!149 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !150)
!150 = !DIDerivedType(tag: DW_TAG_typedef, name: "STRUCT_UTMP", file: !6, line: 146, baseType: !151)
!151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "utmpx", file: !152, line: 55, size: 3072, elements: !153)
!152 = !DIFile(filename: "/usr/include/bits/utmpx.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!153 = !{!154, !155, !157, !161, !165, !166, !170, !175, !177, !182, !184}
!154 = !DIDerivedType(tag: DW_TAG_member, name: "ut_type", scope: !151, file: !152, line: 57, baseType: !43, size: 16)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "ut_pid", scope: !151, file: !152, line: 58, baseType: !156, size: 32, offset: 32)
!156 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pid_t", file: !41, line: 142, baseType: !80)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "ut_line", scope: !151, file: !152, line: 59, baseType: !158, size: 256, offset: 64)
!158 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 256, elements: !159)
!159 = !{!160}
!160 = !DISubrange(count: 32)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "ut_id", scope: !151, file: !152, line: 60, baseType: !162, size: 32, offset: 320)
!162 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 32, elements: !163)
!163 = !{!164}
!164 = !DISubrange(count: 4)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "ut_user", scope: !151, file: !152, line: 61, baseType: !158, size: 256, offset: 352)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "ut_host", scope: !151, file: !152, line: 62, baseType: !167, size: 2048, offset: 608)
!167 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 2048, elements: !168)
!168 = !{!169}
!169 = !DISubrange(count: 256)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "ut_exit", scope: !151, file: !152, line: 63, baseType: !171, size: 32, offset: 2656)
!171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__exit_status", file: !152, line: 42, size: 32, elements: !172)
!172 = !{!173, !174}
!173 = !DIDerivedType(tag: DW_TAG_member, name: "e_termination", scope: !171, file: !152, line: 45, baseType: !43, size: 16)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "e_exit", scope: !171, file: !152, line: 46, baseType: !43, size: 16, offset: 16)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "ut_session", scope: !151, file: !152, line: 70, baseType: !176, size: 32, offset: 2688)
!176 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !41, line: 40, baseType: !80)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "ut_tv", scope: !151, file: !152, line: 75, baseType: !178, size: 64, offset: 2720)
!178 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !151, file: !152, line: 71, size: 64, elements: !179)
!179 = !{!180, !181}
!180 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !178, file: !152, line: 73, baseType: !176, size: 32)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !178, file: !152, line: 74, baseType: !176, size: 32, offset: 32)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "ut_addr_v6", scope: !151, file: !152, line: 80, baseType: !183, size: 128, offset: 2784)
!183 = !DICompositeType(tag: DW_TAG_array_type, baseType: !176, size: 128, elements: !163)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !151, file: !152, line: 81, baseType: !185, size: 160, offset: 2912)
!185 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 160, elements: !186)
!186 = !{!187}
!187 = !DISubrange(count: 20)
!188 = !{!189, !190, !191, !227, !228, !229, !231, !235, !236, !240, !246, !247}
!189 = !DILocalVariable(name: "utmp_ent", arg: 1, scope: !145, file: !3, line: 333, type: !148)
!190 = !DILocalVariable(name: "boottime", arg: 2, scope: !145, file: !3, line: 333, type: !38)
!191 = !DILocalVariable(name: "stats", scope: !145, file: !3, line: 335, type: !192)
!192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !193, line: 46, size: 1152, elements: !194)
!193 = !DIFile(filename: "/usr/include/bits/stat.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!194 = !{!195, !197, !199, !201, !204, !206, !208, !209, !210, !212, !214, !216, !223, !224, !225}
!195 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !192, file: !193, line: 48, baseType: !196, size: 64)
!196 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !41, line: 133, baseType: !30)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !192, file: !193, line: 53, baseType: !198, size: 64, offset: 64)
!198 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !41, line: 136, baseType: !30)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !192, file: !193, line: 61, baseType: !200, size: 64, offset: 128)
!200 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !41, line: 139, baseType: !30)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !192, file: !193, line: 62, baseType: !202, size: 32, offset: 192)
!202 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !41, line: 138, baseType: !203)
!203 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !192, file: !193, line: 64, baseType: !205, size: 32, offset: 224)
!205 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !41, line: 134, baseType: !203)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !192, file: !193, line: 65, baseType: !207, size: 32, offset: 256)
!207 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !41, line: 135, baseType: !203)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !192, file: !193, line: 67, baseType: !80, size: 32, offset: 288)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !192, file: !193, line: 69, baseType: !196, size: 64, offset: 320)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !192, file: !193, line: 74, baseType: !211, size: 64, offset: 384)
!211 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !41, line: 140, baseType: !42)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !192, file: !193, line: 78, baseType: !213, size: 64, offset: 448)
!213 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !41, line: 162, baseType: !42)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !192, file: !193, line: 80, baseType: !215, size: 64, offset: 512)
!215 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !41, line: 167, baseType: !42)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !192, file: !193, line: 91, baseType: !217, size: 128, offset: 576)
!217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !218, line: 8, size: 128, elements: !219)
!218 = !DIFile(filename: "/usr/include/bits/types/struct_timespec.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!219 = !{!220, !221}
!220 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !217, file: !218, line: 10, baseType: !40, size: 64)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !217, file: !218, line: 11, baseType: !222, size: 64, offset: 64)
!222 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !41, line: 184, baseType: !42)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !192, file: !193, line: 92, baseType: !217, size: 128, offset: 704)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !192, file: !193, line: 93, baseType: !217, size: 128, offset: 832)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !192, file: !193, line: 106, baseType: !226, size: 192, offset: 960)
!226 = !DICompositeType(tag: DW_TAG_array_type, baseType: !222, size: 192, elements: !141)
!227 = !DILocalVariable(name: "last_change", scope: !145, file: !3, line: 336, type: !38)
!228 = !DILocalVariable(name: "mesg", scope: !145, file: !3, line: 337, type: !26)
!229 = !DILocalVariable(name: "idlestr", scope: !145, file: !3, line: 338, type: !230)
!230 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 56, elements: !109)
!231 = !DILocalVariable(name: "line", scope: !145, file: !3, line: 347, type: !232)
!232 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 304, elements: !233)
!233 = !{!234}
!234 = !DISubrange(count: 38)
!235 = !DILocalVariable(name: "p", scope: !145, file: !3, line: 348, type: !25)
!236 = !DILocalVariable(name: "pidstr", scope: !145, file: !3, line: 349, type: !237)
!237 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 96, elements: !238)
!238 = !{!239}
!239 = !DISubrange(count: 12)
!240 = !DILocalVariable(name: "ut_host", scope: !241, file: !3, line: 377, type: !243)
!241 = distinct !DILexicalBlock(scope: !242, file: !3, line: 376, column: 5)
!242 = distinct !DILexicalBlock(scope: !145, file: !3, line: 375, column: 7)
!243 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 2056, elements: !244)
!244 = !{!245}
!245 = !DISubrange(count: 257)
!246 = !DILocalVariable(name: "host", scope: !241, file: !3, line: 378, type: !25)
!247 = !DILocalVariable(name: "display", scope: !241, file: !3, line: 379, type: !25)
!248 = !DIGlobalVariableExpression(var: !249)
!249 = distinct !DIGlobalVariable(name: "hostlen", scope: !145, file: !3, line: 341, type: !28, isLocal: true, isDefinition: true)
!250 = !DIGlobalVariableExpression(var: !251)
!251 = distinct !DIGlobalVariable(name: "now", scope: !252, file: !3, line: 190, type: !38, isLocal: true, isDefinition: true)
!252 = distinct !DISubprogram(name: "idle_string", scope: !3, file: !3, line: 188, type: !253, isLocal: true, isDefinition: true, scopeLine: 189, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !255)
!253 = !DISubroutineType(types: !254)
!254 = !{!36, !38, !38}
!255 = !{!256, !257, !258}
!256 = !DILocalVariable(name: "when", arg: 1, scope: !252, file: !3, line: 188, type: !38)
!257 = !DILocalVariable(name: "boottime", arg: 2, scope: !252, file: !3, line: 188, type: !38)
!258 = !DILocalVariable(name: "seconds_idle", scope: !259, file: !3, line: 197, type: !80)
!259 = distinct !DILexicalBlock(scope: !260, file: !3, line: 196, column: 5)
!260 = distinct !DILexicalBlock(scope: !252, file: !3, line: 195, column: 7)
!261 = !DIGlobalVariableExpression(var: !262)
!262 = distinct !DIGlobalVariable(name: "idle_hhmm", scope: !252, file: !3, line: 202, type: !263, isLocal: true, isDefinition: true)
!263 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 48, elements: !264)
!264 = !{!265}
!265 = !DISubrange(count: 6)
!266 = !DIGlobalVariableExpression(var: !267)
!267 = distinct !DIGlobalVariable(name: "buf", scope: !268, file: !3, line: 220, type: !290, isLocal: true, isDefinition: true)
!268 = distinct !DISubprogram(name: "time_string", scope: !3, file: !3, line: 218, type: !269, isLocal: true, isDefinition: true, scopeLine: 219, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !271)
!269 = !DISubroutineType(types: !270)
!270 = !{!36, !148}
!271 = !{!272, !273, !274}
!272 = !DILocalVariable(name: "utmp_ent", arg: 1, scope: !268, file: !3, line: 218, type: !148)
!273 = !DILocalVariable(name: "t", scope: !268, file: !3, line: 228, type: !38)
!274 = !DILocalVariable(name: "tmp", scope: !268, file: !3, line: 229, type: !275)
!275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !276, size: 64)
!276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tm", file: !277, line: 8, size: 448, elements: !278)
!277 = !DIFile(filename: "/usr/include/bits/types/struct_tm.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!278 = !{!279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289}
!279 = !DIDerivedType(tag: DW_TAG_member, name: "tm_sec", scope: !276, file: !277, line: 10, baseType: !80, size: 32)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "tm_min", scope: !276, file: !277, line: 11, baseType: !80, size: 32, offset: 32)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "tm_hour", scope: !276, file: !277, line: 12, baseType: !80, size: 32, offset: 64)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "tm_mday", scope: !276, file: !277, line: 13, baseType: !80, size: 32, offset: 96)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "tm_mon", scope: !276, file: !277, line: 14, baseType: !80, size: 32, offset: 128)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "tm_year", scope: !276, file: !277, line: 15, baseType: !80, size: 32, offset: 160)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "tm_wday", scope: !276, file: !277, line: 16, baseType: !80, size: 32, offset: 192)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "tm_yday", scope: !276, file: !277, line: 17, baseType: !80, size: 32, offset: 224)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "tm_isdst", scope: !276, file: !277, line: 18, baseType: !80, size: 32, offset: 256)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "tm_gmtoff", scope: !276, file: !277, line: 21, baseType: !42, size: 64, offset: 320)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "tm_zone", scope: !276, file: !277, line: 22, baseType: !36, size: 64, offset: 384)
!290 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 264, elements: !291)
!291 = !{!292}
!292 = !DISubrange(count: 33)
!293 = !DIGlobalVariableExpression(var: !294)
!294 = distinct !DIGlobalVariable(name: "runlevline", scope: !295, file: !3, line: 515, type: !25, isLocal: true, isDefinition: true)
!295 = distinct !DISubprogram(name: "print_runlevel", scope: !3, file: !3, line: 513, type: !296, isLocal: true, isDefinition: true, scopeLine: 514, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !298)
!296 = !DISubroutineType(types: !297)
!297 = !{null, !148}
!298 = !{!299, !300, !301}
!299 = !DILocalVariable(name: "utmp_ent", arg: 1, scope: !295, file: !3, line: 513, type: !148)
!300 = !DILocalVariable(name: "last", scope: !295, file: !3, line: 516, type: !35)
!301 = !DILocalVariable(name: "curr", scope: !295, file: !3, line: 517, type: !35)
!302 = !DIGlobalVariableExpression(var: !303)
!303 = distinct !DIGlobalVariable(name: "comment", scope: !295, file: !3, line: 515, type: !25, isLocal: true, isDefinition: true)
!304 = !DIGlobalVariableExpression(var: !305)
!305 = distinct !DIGlobalVariable(name: "exitstr", scope: !306, file: !3, line: 460, type: !25, isLocal: true, isDefinition: true)
!306 = distinct !DISubprogram(name: "print_deadprocs", scope: !3, file: !3, line: 458, type: !296, isLocal: true, isDefinition: true, scopeLine: 459, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !307)
!307 = !{!308, !309, !310}
!308 = !DILocalVariable(name: "utmp_ent", arg: 1, scope: !306, file: !3, line: 458, type: !148)
!309 = !DILocalVariable(name: "comment", scope: !306, file: !3, line: 461, type: !25)
!310 = !DILocalVariable(name: "pidstr", scope: !306, file: !3, line: 462, type: !237)
!311 = !DICompositeType(tag: DW_TAG_array_type, baseType: !312, size: 4608, elements: !321)
!312 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !313)
!313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !314, line: 104, size: 256, elements: !315)
!314 = !DIFile(filename: "/usr/include/getopt.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!315 = !{!316, !317, !318, !320}
!316 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !313, file: !314, line: 106, baseType: !36, size: 64)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !313, file: !314, line: 109, baseType: !80, size: 32, offset: 64)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !313, file: !314, line: 110, baseType: !319, size: 64, offset: 128)
!319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !313, file: !314, line: 111, baseType: !80, size: 32, offset: 192)
!321 = !{!322}
!322 = !DISubrange(count: 18)
!323 = !DIGlobalVariableExpression(var: !324)
!324 = distinct !DIGlobalVariable(name: "Version", scope: !325, file: !326, line: 2, type: !36, isLocal: false, isDefinition: true)
!325 = distinct !DICompileUnit(language: DW_LANG_C99, file: !326, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !327, globals: !328)
!326 = !DIFile(filename: "src/version.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!327 = !{}
!328 = !{!323}
!329 = !DIGlobalVariableExpression(var: !330)
!330 = distinct !DIGlobalVariable(name: "last_cherror", scope: !331, file: !337, line: 28, type: !80, isLocal: true, isDefinition: true)
!331 = distinct !DICompileUnit(language: DW_LANG_C99, file: !332, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !327, globals: !333)
!332 = !DIFile(filename: "./lib/canon-host.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!333 = !{!334, !329}
!334 = !DIGlobalVariableExpression(var: !335)
!335 = distinct !DIGlobalVariable(name: "hints", scope: !336, file: !337, line: 63, type: !346, isLocal: true, isDefinition: true)
!336 = distinct !DISubprogram(name: "canon_host_r", scope: !337, file: !337, line: 60, type: !338, isLocal: false, isDefinition: true, scopeLine: 61, flags: DIFlagPrototyped, isOptimized: true, unit: !331, variables: !340)
!337 = !DIFile(filename: "lib/canon-host.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!338 = !DISubroutineType(types: !339)
!339 = !{!25, !36, !319}
!340 = !{!341, !342, !343, !344, !371}
!341 = !DILocalVariable(name: "host", arg: 1, scope: !336, file: !337, line: 60, type: !36)
!342 = !DILocalVariable(name: "cherror", arg: 2, scope: !336, file: !337, line: 60, type: !319)
!343 = !DILocalVariable(name: "retval", scope: !336, file: !337, line: 62, type: !25)
!344 = !DILocalVariable(name: "res", scope: !336, file: !337, line: 64, type: !345)
!345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !346, size: 64)
!346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "addrinfo", file: !347, line: 566, size: 384, elements: !348)
!347 = !DIFile(filename: "/usr/include/netdb.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!348 = !{!349, !350, !351, !352, !353, !357, !369, !370}
!349 = !DIDerivedType(tag: DW_TAG_member, name: "ai_flags", scope: !346, file: !347, line: 568, baseType: !80, size: 32)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "ai_family", scope: !346, file: !347, line: 569, baseType: !80, size: 32, offset: 32)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "ai_socktype", scope: !346, file: !347, line: 570, baseType: !80, size: 32, offset: 64)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "ai_protocol", scope: !346, file: !347, line: 571, baseType: !80, size: 32, offset: 96)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "ai_addrlen", scope: !346, file: !347, line: 572, baseType: !354, size: 32, offset: 128)
!354 = !DIDerivedType(tag: DW_TAG_typedef, name: "socklen_t", file: !355, line: 33, baseType: !356)
!355 = !DIFile(filename: "/usr/include/bits/socket.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!356 = !DIDerivedType(tag: DW_TAG_typedef, name: "__socklen_t", file: !41, line: 198, baseType: !203)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "ai_addr", scope: !346, file: !347, line: 573, baseType: !358, size: 64, offset: 192)
!358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !359, size: 64)
!359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr", file: !355, line: 172, size: 128, elements: !360)
!360 = !{!361, !365}
!361 = !DIDerivedType(tag: DW_TAG_member, name: "sa_family", scope: !359, file: !355, line: 174, baseType: !362, size: 16)
!362 = !DIDerivedType(tag: DW_TAG_typedef, name: "sa_family_t", file: !363, line: 28, baseType: !364)
!363 = !DIFile(filename: "/usr/include/bits/sockaddr.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!364 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "sa_data", scope: !359, file: !355, line: 175, baseType: !366, size: 112, offset: 16)
!366 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 112, elements: !367)
!367 = !{!368}
!368 = !DISubrange(count: 14)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "ai_canonname", scope: !346, file: !347, line: 574, baseType: !25, size: 64, offset: 256)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "ai_next", scope: !346, file: !347, line: 575, baseType: !345, size: 64, offset: 320)
!371 = !DILocalVariable(name: "status", scope: !336, file: !337, line: 65, type: !80)
!372 = !DIGlobalVariableExpression(var: !373)
!373 = distinct !DIGlobalVariable(name: "file_name", scope: !374, file: !379, line: 36, type: !36, isLocal: true, isDefinition: true)
!374 = distinct !DICompileUnit(language: DW_LANG_C99, file: !375, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !327, globals: !376)
!375 = !DIFile(filename: "./lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!376 = !{!372, !377}
!377 = !DIGlobalVariableExpression(var: !378)
!378 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !374, file: !379, line: 46, type: !47, isLocal: true, isDefinition: true)
!379 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!380 = !DIGlobalVariableExpression(var: !381)
!381 = distinct !DIGlobalVariable(name: "exit_failure", scope: !382, file: !385, line: 24, type: !386, isLocal: false, isDefinition: true)
!382 = distinct !DICompileUnit(language: DW_LANG_C99, file: !383, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !327, globals: !384)
!383 = !DIFile(filename: "./lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!384 = !{!380}
!385 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!386 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !80)
!387 = !DIGlobalVariableExpression(var: !388)
!388 = distinct !DIGlobalVariable(name: "program_name", scope: !389, file: !393, line: 33, type: !36, isLocal: false, isDefinition: true)
!389 = distinct !DICompileUnit(language: DW_LANG_C99, file: !390, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !327, retainedTypes: !391, globals: !392)
!390 = !DIFile(filename: "./lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!391 = !{!27, !25}
!392 = !{!387}
!393 = !DIFile(filename: "lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!394 = !DIGlobalVariableExpression(var: !395)
!395 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !396, file: !423, line: 77, type: !453, isLocal: false, isDefinition: true)
!396 = distinct !DICompileUnit(language: DW_LANG_C99, file: !397, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !398, retainedTypes: !419, globals: !420)
!397 = !DIFile(filename: "./lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!398 = !{!10, !399, !404}
!399 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !11, line: 242, size: 32, elements: !400)
!400 = !{!401, !402, !403}
!401 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!402 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!403 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!404 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !405, line: 46, size: 32, elements: !406)
!405 = !DIFile(filename: "/usr/include/ctype.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!406 = !{!407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418}
!407 = !DIEnumerator(name: "_ISupper", value: 256)
!408 = !DIEnumerator(name: "_ISlower", value: 512)
!409 = !DIEnumerator(name: "_ISalpha", value: 1024)
!410 = !DIEnumerator(name: "_ISdigit", value: 2048)
!411 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!412 = !DIEnumerator(name: "_ISspace", value: 8192)
!413 = !DIEnumerator(name: "_ISprint", value: 16384)
!414 = !DIEnumerator(name: "_ISgraph", value: 32768)
!415 = !DIEnumerator(name: "_ISblank", value: 1)
!416 = !DIEnumerator(name: "_IScntrl", value: 2)
!417 = !DIEnumerator(name: "_ISpunct", value: 4)
!418 = !DIEnumerator(name: "_ISalnum", value: 8)
!419 = !{!80, !364, !28, !25}
!420 = !{!394, !421, !428, !438, !440, !442, !449, !451}
!421 = !DIGlobalVariableExpression(var: !422)
!422 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !396, file: !423, line: 93, type: !424, isLocal: false, isDefinition: true)
!423 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!424 = !DICompositeType(tag: DW_TAG_array_type, baseType: !425, size: 320, elements: !426)
!425 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !10)
!426 = !{!427}
!427 = !DISubrange(count: 10)
!428 = !DIGlobalVariableExpression(var: !429)
!429 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !396, file: !423, line: 1043, type: !430, isLocal: false, isDefinition: true)
!430 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !423, line: 57, size: 448, elements: !431)
!431 = !{!432, !433, !434, !436, !437}
!432 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !430, file: !423, line: 60, baseType: !10, size: 32)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !430, file: !423, line: 63, baseType: !80, size: 32, offset: 32)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !430, file: !423, line: 67, baseType: !435, size: 256, offset: 64)
!435 = !DICompositeType(tag: DW_TAG_array_type, baseType: !203, size: 256, elements: !130)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !430, file: !423, line: 70, baseType: !36, size: 64, offset: 320)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !430, file: !423, line: 73, baseType: !36, size: 64, offset: 384)
!438 = !DIGlobalVariableExpression(var: !439)
!439 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !396, file: !423, line: 108, type: !430, isLocal: true, isDefinition: true)
!440 = !DIGlobalVariableExpression(var: !441)
!441 = distinct !DIGlobalVariable(name: "slot0", scope: !396, file: !423, line: 834, type: !167, isLocal: true, isDefinition: true)
!442 = !DIGlobalVariableExpression(var: !443)
!443 = distinct !DIGlobalVariable(name: "slotvec", scope: !396, file: !423, line: 837, type: !444, isLocal: true, isDefinition: true)
!444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !445, size: 64)
!445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !423, line: 826, size: 128, elements: !446)
!446 = !{!447, !448}
!447 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !445, file: !423, line: 828, baseType: !28, size: 64)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !445, file: !423, line: 829, baseType: !25, size: 64, offset: 64)
!449 = !DIGlobalVariableExpression(var: !450)
!450 = distinct !DIGlobalVariable(name: "nslots", scope: !396, file: !423, line: 835, type: !80, isLocal: true, isDefinition: true)
!451 = !DIGlobalVariableExpression(var: !452)
!452 = distinct !DIGlobalVariable(name: "slotvec0", scope: !396, file: !423, line: 836, type: !445, isLocal: true, isDefinition: true)
!453 = !DICompositeType(tag: DW_TAG_array_type, baseType: !454, size: 704, elements: !455)
!454 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !36)
!455 = !{!456}
!456 = !DISubrange(count: 11)
!457 = !DIGlobalVariableExpression(var: !458)
!458 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !459, file: !462, line: 26, type: !463, isLocal: false, isDefinition: true)
!459 = distinct !DICompileUnit(language: DW_LANG_C99, file: !460, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !327, globals: !461)
!460 = !DIFile(filename: "./lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!461 = !{!457}
!462 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!463 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 376, elements: !464)
!464 = !{!465}
!465 = !DISubrange(count: 47)
!466 = !DIGlobalVariableExpression(var: !467)
!467 = distinct !DIGlobalVariable(name: "charset_aliases", scope: !468, file: !812, line: 120, type: !813, isLocal: true, isDefinition: true)
!468 = distinct !DICompileUnit(language: DW_LANG_C99, file: !469, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !470, retainedTypes: !809, globals: !811)
!469 = !DIFile(filename: "./lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!470 = !{!471}
!471 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !472, line: 41, size: 32, elements: !473)
!472 = !DIFile(filename: "/usr/include/langinfo.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!473 = !{!474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !692, !693, !694, !695, !696, !697, !698, !699, !700, !701, !702, !703, !704, !705, !706, !707, !708, !709, !710, !711, !712, !713, !714, !715, !716, !717, !718, !719, !720, !721, !722, !723, !724, !725, !726, !727, !728, !729, !730, !731, !732, !733, !734, !735, !736, !737, !738, !739, !740, !741, !742, !743, !744, !745, !746, !747, !748, !749, !750, !751, !752, !753, !754, !755, !756, !757, !758, !759, !760, !761, !762, !763, !764, !765, !766, !767, !768, !769, !770, !771, !772, !773, !774, !775, !776, !777, !778, !779, !780, !781, !782, !783, !784, !785, !786, !787, !788, !789, !790, !791, !792, !793, !794, !795, !796, !797, !798, !799, !800, !801, !802, !803, !804, !805, !806, !807, !808}
!474 = !DIEnumerator(name: "ABDAY_1", value: 131072)
!475 = !DIEnumerator(name: "ABDAY_2", value: 131073)
!476 = !DIEnumerator(name: "ABDAY_3", value: 131074)
!477 = !DIEnumerator(name: "ABDAY_4", value: 131075)
!478 = !DIEnumerator(name: "ABDAY_5", value: 131076)
!479 = !DIEnumerator(name: "ABDAY_6", value: 131077)
!480 = !DIEnumerator(name: "ABDAY_7", value: 131078)
!481 = !DIEnumerator(name: "DAY_1", value: 131079)
!482 = !DIEnumerator(name: "DAY_2", value: 131080)
!483 = !DIEnumerator(name: "DAY_3", value: 131081)
!484 = !DIEnumerator(name: "DAY_4", value: 131082)
!485 = !DIEnumerator(name: "DAY_5", value: 131083)
!486 = !DIEnumerator(name: "DAY_6", value: 131084)
!487 = !DIEnumerator(name: "DAY_7", value: 131085)
!488 = !DIEnumerator(name: "ABMON_1", value: 131086)
!489 = !DIEnumerator(name: "ABMON_2", value: 131087)
!490 = !DIEnumerator(name: "ABMON_3", value: 131088)
!491 = !DIEnumerator(name: "ABMON_4", value: 131089)
!492 = !DIEnumerator(name: "ABMON_5", value: 131090)
!493 = !DIEnumerator(name: "ABMON_6", value: 131091)
!494 = !DIEnumerator(name: "ABMON_7", value: 131092)
!495 = !DIEnumerator(name: "ABMON_8", value: 131093)
!496 = !DIEnumerator(name: "ABMON_9", value: 131094)
!497 = !DIEnumerator(name: "ABMON_10", value: 131095)
!498 = !DIEnumerator(name: "ABMON_11", value: 131096)
!499 = !DIEnumerator(name: "ABMON_12", value: 131097)
!500 = !DIEnumerator(name: "MON_1", value: 131098)
!501 = !DIEnumerator(name: "MON_2", value: 131099)
!502 = !DIEnumerator(name: "MON_3", value: 131100)
!503 = !DIEnumerator(name: "MON_4", value: 131101)
!504 = !DIEnumerator(name: "MON_5", value: 131102)
!505 = !DIEnumerator(name: "MON_6", value: 131103)
!506 = !DIEnumerator(name: "MON_7", value: 131104)
!507 = !DIEnumerator(name: "MON_8", value: 131105)
!508 = !DIEnumerator(name: "MON_9", value: 131106)
!509 = !DIEnumerator(name: "MON_10", value: 131107)
!510 = !DIEnumerator(name: "MON_11", value: 131108)
!511 = !DIEnumerator(name: "MON_12", value: 131109)
!512 = !DIEnumerator(name: "AM_STR", value: 131110)
!513 = !DIEnumerator(name: "PM_STR", value: 131111)
!514 = !DIEnumerator(name: "D_T_FMT", value: 131112)
!515 = !DIEnumerator(name: "D_FMT", value: 131113)
!516 = !DIEnumerator(name: "T_FMT", value: 131114)
!517 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115)
!518 = !DIEnumerator(name: "ERA", value: 131116)
!519 = !DIEnumerator(name: "__ERA_YEAR", value: 131117)
!520 = !DIEnumerator(name: "ERA_D_FMT", value: 131118)
!521 = !DIEnumerator(name: "ALT_DIGITS", value: 131119)
!522 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120)
!523 = !DIEnumerator(name: "ERA_T_FMT", value: 131121)
!524 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122)
!525 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123)
!526 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124)
!527 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125)
!528 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126)
!529 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127)
!530 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128)
!531 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129)
!532 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130)
!533 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131)
!534 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132)
!535 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133)
!536 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134)
!537 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135)
!538 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136)
!539 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137)
!540 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138)
!541 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139)
!542 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140)
!543 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141)
!544 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142)
!545 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143)
!546 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144)
!547 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145)
!548 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146)
!549 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147)
!550 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148)
!551 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149)
!552 = !DIEnumerator(name: "_NL_WMON_1", value: 131150)
!553 = !DIEnumerator(name: "_NL_WMON_2", value: 131151)
!554 = !DIEnumerator(name: "_NL_WMON_3", value: 131152)
!555 = !DIEnumerator(name: "_NL_WMON_4", value: 131153)
!556 = !DIEnumerator(name: "_NL_WMON_5", value: 131154)
!557 = !DIEnumerator(name: "_NL_WMON_6", value: 131155)
!558 = !DIEnumerator(name: "_NL_WMON_7", value: 131156)
!559 = !DIEnumerator(name: "_NL_WMON_8", value: 131157)
!560 = !DIEnumerator(name: "_NL_WMON_9", value: 131158)
!561 = !DIEnumerator(name: "_NL_WMON_10", value: 131159)
!562 = !DIEnumerator(name: "_NL_WMON_11", value: 131160)
!563 = !DIEnumerator(name: "_NL_WMON_12", value: 131161)
!564 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162)
!565 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163)
!566 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164)
!567 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165)
!568 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166)
!569 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167)
!570 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168)
!571 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169)
!572 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170)
!573 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171)
!574 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172)
!575 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173)
!576 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174)
!577 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175)
!578 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176)
!579 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177)
!580 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178)
!581 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179)
!582 = !DIEnumerator(name: "_DATE_FMT", value: 131180)
!583 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181)
!584 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182)
!585 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131183)
!586 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608)
!587 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609)
!588 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610)
!589 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611)
!590 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612)
!591 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613)
!592 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614)
!593 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615)
!594 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616)
!595 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617)
!596 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618)
!597 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619)
!598 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620)
!599 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621)
!600 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622)
!601 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623)
!602 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624)
!603 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625)
!604 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626)
!605 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627)
!606 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0)
!607 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1)
!608 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2)
!609 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3)
!610 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4)
!611 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5)
!612 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6)
!613 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7)
!614 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8)
!615 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9)
!616 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10)
!617 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11)
!618 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12)
!619 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13)
!620 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14)
!621 = !DIEnumerator(name: "CODESET", value: 14)
!622 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15)
!623 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16)
!624 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17)
!625 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18)
!626 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19)
!627 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20)
!628 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21)
!629 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22)
!630 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23)
!631 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24)
!632 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25)
!633 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26)
!634 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27)
!635 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28)
!636 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29)
!637 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30)
!638 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31)
!639 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32)
!640 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33)
!641 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34)
!642 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35)
!643 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36)
!644 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37)
!645 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38)
!646 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39)
!647 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40)
!648 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41)
!649 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42)
!650 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43)
!651 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44)
!652 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45)
!653 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46)
!654 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47)
!655 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48)
!656 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49)
!657 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50)
!658 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51)
!659 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52)
!660 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53)
!661 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54)
!662 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55)
!663 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56)
!664 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57)
!665 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58)
!666 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59)
!667 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60)
!668 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61)
!669 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62)
!670 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63)
!671 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64)
!672 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65)
!673 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66)
!674 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67)
!675 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68)
!676 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69)
!677 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70)
!678 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71)
!679 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72)
!680 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73)
!681 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74)
!682 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75)
!683 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76)
!684 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77)
!685 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78)
!686 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79)
!687 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80)
!688 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81)
!689 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82)
!690 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83)
!691 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84)
!692 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85)
!693 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86)
!694 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144)
!695 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145)
!696 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146)
!697 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147)
!698 = !DIEnumerator(name: "__MON_GROUPING", value: 262148)
!699 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149)
!700 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150)
!701 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151)
!702 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152)
!703 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153)
!704 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154)
!705 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155)
!706 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156)
!707 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157)
!708 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158)
!709 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159)
!710 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160)
!711 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161)
!712 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162)
!713 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163)
!714 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164)
!715 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165)
!716 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166)
!717 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167)
!718 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168)
!719 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169)
!720 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170)
!721 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171)
!722 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172)
!723 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173)
!724 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174)
!725 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175)
!726 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176)
!727 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177)
!728 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178)
!729 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179)
!730 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180)
!731 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181)
!732 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182)
!733 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183)
!734 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184)
!735 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185)
!736 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186)
!737 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187)
!738 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188)
!739 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189)
!740 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190)
!741 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536)
!742 = !DIEnumerator(name: "RADIXCHAR", value: 65536)
!743 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537)
!744 = !DIEnumerator(name: "THOUSEP", value: 65537)
!745 = !DIEnumerator(name: "__GROUPING", value: 65538)
!746 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539)
!747 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540)
!748 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541)
!749 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542)
!750 = !DIEnumerator(name: "__YESEXPR", value: 327680)
!751 = !DIEnumerator(name: "__NOEXPR", value: 327681)
!752 = !DIEnumerator(name: "__YESSTR", value: 327682)
!753 = !DIEnumerator(name: "__NOSTR", value: 327683)
!754 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684)
!755 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685)
!756 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752)
!757 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753)
!758 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754)
!759 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755)
!760 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288)
!761 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289)
!762 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290)
!763 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291)
!764 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292)
!765 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293)
!766 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294)
!767 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295)
!768 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824)
!769 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825)
!770 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826)
!771 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827)
!772 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828)
!773 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829)
!774 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830)
!775 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831)
!776 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832)
!777 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833)
!778 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834)
!779 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835)
!780 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836)
!781 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837)
!782 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360)
!783 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361)
!784 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362)
!785 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363)
!786 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364)
!787 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365)
!788 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896)
!789 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897)
!790 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898)
!791 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432)
!792 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433)
!793 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434)
!794 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435)
!795 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436)
!796 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437)
!797 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438)
!798 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439)
!799 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440)
!800 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441)
!801 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442)
!802 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443)
!803 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444)
!804 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445)
!805 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446)
!806 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447)
!807 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448)
!808 = !DIEnumerator(name: "_NL_NUM", value: 786449)
!809 = !{!27, !25, !810}
!810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!811 = !{!466}
!812 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!813 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !36)
!814 = distinct !DICompileUnit(language: DW_LANG_C99, file: !815, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !327, retainedTypes: !816)
!815 = !DIFile(filename: "./lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!816 = !{!28, !31, !33, !36}
!817 = distinct !DICompileUnit(language: DW_LANG_C99, file: !818, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !327, retainedTypes: !819)
!818 = !DIFile(filename: "./lib/imaxtostr.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!819 = !{!820}
!820 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !821, line: 135, baseType: !822)
!821 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!822 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !41, line: 61, baseType: !42)
!823 = distinct !DICompileUnit(language: DW_LANG_C99, file: !824, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !825, retainedTypes: !830)
!824 = !DIFile(filename: "./lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!825 = !{!826}
!826 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !827, line: 41, size: 32, elements: !828)
!827 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!828 = !{!829}
!829 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2017)
!830 = !{!27}
!831 = distinct !DICompileUnit(language: DW_LANG_C99, file: !832, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !833, retainedTypes: !847)
!832 = !DIFile(filename: "./lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!833 = !{!834}
!834 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !836, file: !835, line: 192, size: 32, elements: !845)
!835 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!836 = distinct !DISubprogram(name: "x2nrealloc", scope: !835, file: !835, line: 180, type: !837, isLocal: false, isDefinition: true, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: true, unit: !831, variables: !840)
!837 = !DISubroutineType(types: !838)
!838 = !{!27, !27, !839, !28}
!839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!840 = !{!841, !842, !843, !844}
!841 = !DILocalVariable(name: "p", arg: 1, scope: !836, file: !835, line: 180, type: !27)
!842 = !DILocalVariable(name: "pn", arg: 2, scope: !836, file: !835, line: 180, type: !839)
!843 = !DILocalVariable(name: "s", arg: 3, scope: !836, file: !835, line: 180, type: !28)
!844 = !DILocalVariable(name: "n", scope: !836, file: !835, line: 182, type: !28)
!845 = !{!846}
!846 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!847 = !{!28, !25, !27}
!848 = distinct !DICompileUnit(language: DW_LANG_C99, file: !849, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !327)
!849 = !DIFile(filename: "./lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!850 = distinct !DICompileUnit(language: DW_LANG_C99, file: !851, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !327, retainedTypes: !830)
!851 = !DIFile(filename: "./lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!852 = distinct !DICompileUnit(language: DW_LANG_C99, file: !853, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !327, retainedTypes: !854)
!853 = !DIFile(filename: "./lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!854 = !{!28}
!855 = distinct !DICompileUnit(language: DW_LANG_C99, file: !856, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !857, retainedTypes: !865)
!856 = !DIFile(filename: "./lib/readutmp.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!857 = !{!5, !858}
!858 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !859, file: !835, line: 192, size: 32, elements: !845)
!859 = distinct !DISubprogram(name: "x2nrealloc", scope: !835, file: !835, line: 180, type: !837, isLocal: false, isDefinition: true, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: true, unit: !855, variables: !860)
!860 = !{!861, !862, !863, !864}
!861 = !DILocalVariable(name: "p", arg: 1, scope: !859, file: !835, line: 180, type: !27)
!862 = !DILocalVariable(name: "pn", arg: 2, scope: !859, file: !835, line: 180, type: !839)
!863 = !DILocalVariable(name: "s", arg: 3, scope: !859, file: !835, line: 180, type: !28)
!864 = !DILocalVariable(name: "n", scope: !859, file: !835, line: 182, type: !28)
!865 = !{!25, !27}
!866 = distinct !DICompileUnit(language: DW_LANG_C99, file: !867, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !327)
!867 = !DIFile(filename: "./lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!868 = distinct !DICompileUnit(language: DW_LANG_C99, file: !869, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !327)
!869 = !DIFile(filename: "./lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!870 = distinct !DICompileUnit(language: DW_LANG_C99, file: !871, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !327, retainedTypes: !830)
!871 = !DIFile(filename: "./lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!872 = distinct !DICompileUnit(language: DW_LANG_C99, file: !873, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !327, retainedTypes: !830)
!873 = !DIFile(filename: "./lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!874 = !{!"clang version 4.0.1 (tags/RELEASE_401/final)"}
!875 = !{i32 2, !"Dwarf Version", i32 4}
!876 = !{i32 2, !"Debug Info Version", i32 3}
!877 = !{i32 1, !"PIC Level", i32 2}
!878 = !{i32 1, !"PIE Level", i32 2}
!879 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 637, type: !880, isLocal: false, isDefinition: true, scopeLine: 638, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !2, variables: !882)
!880 = !DISubroutineType(types: !881)
!881 = !{null, !80}
!882 = !{!883}
!883 = !DILocalVariable(name: "status", arg: 1, scope: !879, file: !3, line: 637, type: !80)
!884 = !DIExpression()
!885 = !DILocation(line: 637, column: 12, scope: !879)
!886 = !DILocation(line: 639, column: 14, scope: !887)
!887 = distinct !DILexicalBlock(scope: !879, file: !3, line: 639, column: 7)
!888 = !DILocation(line: 639, column: 7, scope: !879)
!889 = !DILocation(line: 640, column: 5, scope: !890)
!890 = !DILexicalBlockFile(scope: !891, file: !3, discriminator: 1)
!891 = distinct !DILexicalBlock(scope: !887, file: !3, line: 640, column: 5)
!892 = !{!893, !893, i64 0}
!893 = !{!"any pointer", !894, i64 0}
!894 = !{!"omnipotent char", !895, i64 0}
!895 = !{!"Simple C/C++ TBAA"}
!896 = !DILocation(line: 640, column: 5, scope: !897)
!897 = !DILexicalBlockFile(scope: !891, file: !3, discriminator: 3)
!898 = !DILocation(line: 640, column: 5, scope: !899)
!899 = !DILexicalBlockFile(scope: !891, file: !3, discriminator: 2)
!900 = !DILocation(line: 643, column: 7, scope: !901)
!901 = distinct !DILexicalBlock(scope: !887, file: !3, line: 642, column: 5)
!902 = !DILocation(line: 643, column: 7, scope: !903)
!903 = !DILexicalBlockFile(scope: !901, file: !3, discriminator: 1)
!904 = !DILocation(line: 644, column: 7, scope: !901)
!905 = !DILocation(line: 644, column: 7, scope: !903)
!906 = !DILocation(line: 647, column: 7, scope: !901)
!907 = !DILocation(line: 647, column: 7, scope: !903)
!908 = !DILocation(line: 654, column: 7, scope: !901)
!909 = !DILocation(line: 654, column: 7, scope: !903)
!910 = !DILocation(line: 657, column: 7, scope: !901)
!911 = !DILocation(line: 657, column: 7, scope: !903)
!912 = !DILocation(line: 662, column: 7, scope: !901)
!913 = !DILocation(line: 662, column: 7, scope: !903)
!914 = !DILocation(line: 668, column: 7, scope: !901)
!915 = !DILocation(line: 668, column: 7, scope: !903)
!916 = !DILocation(line: 674, column: 7, scope: !901)
!917 = !DILocation(line: 674, column: 7, scope: !903)
!918 = !DILocation(line: 675, column: 7, scope: !901)
!919 = !DILocation(line: 675, column: 7, scope: !903)
!920 = !DILocation(line: 676, column: 7, scope: !901)
!921 = !DILocation(line: 676, column: 7, scope: !903)
!922 = !DILocation(line: 642, column: 15, scope: !83, inlinedAt: !923)
!923 = distinct !DILocation(line: 681, column: 7, scope: !901)
!924 = !DILocation(line: 651, column: 3, scope: !83, inlinedAt: !923)
!925 = !DILocation(line: 651, column: 3, scope: !926, inlinedAt: !923)
!926 = !DILexicalBlockFile(scope: !83, file: !84, discriminator: 1)
!927 = !DILocation(line: 655, column: 29, scope: !83, inlinedAt: !923)
!928 = !DILocation(line: 655, column: 15, scope: !83, inlinedAt: !923)
!929 = !DILocation(line: 656, column: 7, scope: !103, inlinedAt: !923)
!930 = !DILocation(line: 656, column: 19, scope: !103, inlinedAt: !923)
!931 = !DILocation(line: 656, column: 22, scope: !932, inlinedAt: !923)
!932 = !DILexicalBlockFile(scope: !103, file: !84, discriminator: 16)
!933 = !DILocation(line: 656, column: 7, scope: !934, inlinedAt: !923)
!934 = !DILexicalBlockFile(scope: !83, file: !84, discriminator: 16)
!935 = !DILocation(line: 662, column: 7, scope: !936, inlinedAt: !923)
!936 = distinct !DILexicalBlock(scope: !103, file: !84, line: 657, column: 5)
!937 = !DILocation(line: 662, column: 7, scope: !938, inlinedAt: !923)
!938 = !DILexicalBlockFile(scope: !936, file: !84, discriminator: 1)
!939 = !DILocation(line: 664, column: 5, scope: !936, inlinedAt: !923)
!940 = !DILocation(line: 665, column: 3, scope: !83, inlinedAt: !923)
!941 = !DILocation(line: 665, column: 3, scope: !926, inlinedAt: !923)
!942 = !DILocation(line: 667, column: 3, scope: !83, inlinedAt: !923)
!943 = !DILocation(line: 667, column: 3, scope: !926, inlinedAt: !923)
!944 = !DILocation(line: 683, column: 3, scope: !879)
!945 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 687, type: !946, isLocal: false, isDefinition: true, scopeLine: 688, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !949)
!946 = !DISubroutineType(types: !947)
!947 = !{!80, !80, !948}
!948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!949 = !{!950, !951, !952, !953}
!950 = !DILocalVariable(name: "argc", arg: 1, scope: !945, file: !3, line: 687, type: !80)
!951 = !DILocalVariable(name: "argv", arg: 2, scope: !945, file: !3, line: 687, type: !948)
!952 = !DILocalVariable(name: "optc", scope: !945, file: !3, line: 689, type: !80)
!953 = !DILocalVariable(name: "assumptions", scope: !945, file: !3, line: 690, type: !47)
!954 = !DILocation(line: 687, column: 11, scope: !945)
!955 = !DILocation(line: 687, column: 24, scope: !945)
!956 = !DILocation(line: 690, column: 8, scope: !945)
!957 = !DILocation(line: 693, column: 21, scope: !945)
!958 = !DILocation(line: 693, column: 3, scope: !945)
!959 = !DILocation(line: 694, column: 3, scope: !945)
!960 = !DILocation(line: 695, column: 3, scope: !945)
!961 = !DILocation(line: 696, column: 3, scope: !945)
!962 = !DILocation(line: 698, column: 3, scope: !945)
!963 = !DILocation(line: 700, column: 3, scope: !945)
!964 = !DILocation(line: 700, column: 18, scope: !965)
!965 = !DILexicalBlockFile(scope: !945, file: !3, discriminator: 1)
!966 = !DILocation(line: 689, column: 7, scope: !945)
!967 = !DILocation(line: 700, column: 3, scope: !965)
!968 = !DILocation(line: 717, column: 11, scope: !969)
!969 = distinct !DILexicalBlock(scope: !970, file: !3, line: 704, column: 9)
!970 = distinct !DILexicalBlock(scope: !945, file: !3, line: 702, column: 5)
!971 = !DILocation(line: 729, column: 11, scope: !969)
!972 = !DILocation(line: 733, column: 11, scope: !969)
!973 = !DILocation(line: 739, column: 11, scope: !969)
!974 = !DILocation(line: 743, column: 11, scope: !969)
!975 = !DILocation(line: 748, column: 11, scope: !969)
!976 = !DILocation(line: 752, column: 11, scope: !969)
!977 = !DILocation(line: 758, column: 11, scope: !969)
!978 = !DILocation(line: 762, column: 11, scope: !969)
!979 = !DILocation(line: 767, column: 11, scope: !969)
!980 = !DILocation(line: 772, column: 11, scope: !969)
!981 = !DILocation(line: 778, column: 11, scope: !969)
!982 = !DILocation(line: 782, column: 11, scope: !969)
!983 = distinct !{!983, !963, !984}
!984 = !DILocation(line: 791, column: 5, scope: !945)
!985 = !DILocation(line: 784, column: 9, scope: !969)
!986 = !DILocation(line: 786, column: 9, scope: !969)
!987 = !DILocation(line: 786, column: 9, scope: !988)
!988 = !DILexicalBlockFile(scope: !969, file: !3, discriminator: 1)
!989 = !DILocation(line: 789, column: 11, scope: !969)
!990 = !DILocation(line: 793, column: 7, scope: !991)
!991 = distinct !DILexicalBlock(scope: !945, file: !3, line: 793, column: 7)
!992 = !DILocation(line: 793, column: 7, scope: !945)
!993 = !DILocation(line: 797, column: 5, scope: !994)
!994 = distinct !DILexicalBlock(scope: !991, file: !3, line: 794, column: 5)
!995 = !DILocation(line: 799, column: 7, scope: !945)
!996 = !DILocation(line: 802, column: 5, scope: !997)
!997 = distinct !DILexicalBlock(scope: !998, file: !3, line: 800, column: 5)
!998 = distinct !DILexicalBlock(scope: !945, file: !3, line: 799, column: 7)
!999 = !DILocation(line: 804, column: 7, scope: !1000)
!1000 = distinct !DILexicalBlock(scope: !945, file: !3, line: 804, column: 7)
!1001 = !DILocation(line: 804, column: 7, scope: !945)
!1002 = !{!1003, !1003, i64 0}
!1003 = !{!"int", !894, i64 0}
!1004 = !DILocation(line: 815, column: 18, scope: !945)
!1005 = !DILocation(line: 815, column: 16, scope: !945)
!1006 = !DILocation(line: 815, column: 3, scope: !945)
!1007 = !DILocation(line: 818, column: 7, scope: !1008)
!1008 = distinct !DILexicalBlock(scope: !945, file: !3, line: 816, column: 5)
!1009 = !DILocation(line: 822, column: 7, scope: !1008)
!1010 = !DILocation(line: 823, column: 7, scope: !1008)
!1011 = !DILocation(line: 826, column: 12, scope: !1008)
!1012 = !DILocation(line: 826, column: 7, scope: !1008)
!1013 = !DILocation(line: 827, column: 7, scope: !1008)
!1014 = !DILocation(line: 830, column: 20, scope: !1008)
!1015 = !DILocation(line: 830, column: 55, scope: !1008)
!1016 = !DILocation(line: 830, column: 62, scope: !1008)
!1017 = !DILocation(line: 830, column: 50, scope: !1008)
!1018 = !DILocation(line: 830, column: 43, scope: !1019)
!1019 = !DILexicalBlockFile(scope: !1008, file: !3, discriminator: 1)
!1020 = !DILocation(line: 830, column: 7, scope: !1021)
!1021 = !DILexicalBlockFile(scope: !1008, file: !3, discriminator: 2)
!1022 = !DILocation(line: 831, column: 7, scope: !1008)
!1023 = !DILocation(line: 834, column: 3, scope: !945)
!1024 = distinct !DISubprogram(name: "who", scope: !3, file: !3, line: 620, type: !1025, isLocal: true, isDefinition: true, scopeLine: 621, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1027)
!1025 = !DISubroutineType(types: !1026)
!1026 = !{null, !36, !80}
!1027 = !{!1028, !1029, !1030, !1031}
!1028 = !DILocalVariable(name: "filename", arg: 1, scope: !1024, file: !3, line: 620, type: !36)
!1029 = !DILocalVariable(name: "options", arg: 2, scope: !1024, file: !3, line: 620, type: !80)
!1030 = !DILocalVariable(name: "n_users", scope: !1024, file: !3, line: 622, type: !28)
!1031 = !DILocalVariable(name: "utmp_buf", scope: !1024, file: !3, line: 623, type: !1032)
!1032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 64)
!1033 = !DILocation(line: 338, column: 8, scope: !145, inlinedAt: !1034)
!1034 = distinct !DILocation(line: 592, column: 13, scope: !1035, inlinedAt: !1047)
!1035 = distinct !DILexicalBlock(scope: !1036, file: !3, line: 591, column: 15)
!1036 = distinct !DILexicalBlock(scope: !1037, file: !3, line: 590, column: 9)
!1037 = distinct !DILexicalBlock(scope: !1038, file: !3, line: 587, column: 11)
!1038 = distinct !DILexicalBlock(scope: !1039, file: !3, line: 586, column: 5)
!1039 = distinct !DISubprogram(name: "scan_entries", scope: !3, file: !3, line: 568, type: !1040, isLocal: true, isDefinition: true, scopeLine: 569, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1042)
!1040 = !DISubroutineType(types: !1041)
!1041 = !{null, !28, !148}
!1042 = !{!1043, !1044, !1045, !1046}
!1043 = !DILocalVariable(name: "n", arg: 1, scope: !1039, file: !3, line: 568, type: !28)
!1044 = !DILocalVariable(name: "utmp_buf", arg: 2, scope: !1039, file: !3, line: 568, type: !148)
!1045 = !DILocalVariable(name: "ttyname_b", scope: !1039, file: !3, line: 570, type: !25)
!1046 = !DILocalVariable(name: "boottime", scope: !1039, file: !3, line: 571, type: !38)
!1047 = distinct !DILocation(line: 631, column: 5, scope: !1048)
!1048 = distinct !DILexicalBlock(scope: !1024, file: !3, line: 628, column: 7)
!1049 = !DILocation(line: 347, column: 8, scope: !145, inlinedAt: !1034)
!1050 = !DILocation(line: 349, column: 3, scope: !145, inlinedAt: !1034)
!1051 = !DILocation(line: 377, column: 12, scope: !241, inlinedAt: !1034)
!1052 = !DILocation(line: 620, column: 18, scope: !1024)
!1053 = !DILocation(line: 620, column: 32, scope: !1024)
!1054 = !DILocation(line: 622, column: 3, scope: !1024)
!1055 = !DILocation(line: 623, column: 3, scope: !1024)
!1056 = !DIExpression(DW_OP_deref)
!1057 = !DILocation(line: 622, column: 10, scope: !1024)
!1058 = !DILocation(line: 623, column: 16, scope: !1024)
!1059 = !DILocation(line: 625, column: 7, scope: !1060)
!1060 = distinct !DILexicalBlock(scope: !1024, file: !3, line: 625, column: 7)
!1061 = !DILocation(line: 625, column: 58, scope: !1060)
!1062 = !DILocation(line: 625, column: 7, scope: !1024)
!1063 = !DILocation(line: 626, column: 5, scope: !1060)
!1064 = !DILocation(line: 626, column: 5, scope: !1065)
!1065 = !DILexicalBlockFile(scope: !1060, file: !3, discriminator: 1)
!1066 = !DILocation(line: 626, column: 5, scope: !1067)
!1067 = !DILexicalBlockFile(scope: !1060, file: !3, discriminator: 2)
!1068 = !{!1069, !1069, i64 0}
!1069 = !{!"long", !894, i64 0}
!1070 = !DILocation(line: 628, column: 7, scope: !1024)
!1071 = !DILocalVariable(name: "n", arg: 1, scope: !1072, file: !3, line: 536, type: !28)
!1072 = distinct !DISubprogram(name: "list_entries_who", scope: !3, file: !3, line: 536, type: !1040, isLocal: true, isDefinition: true, scopeLine: 537, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1073)
!1073 = !{!1071, !1074, !1075, !1076, !1077}
!1074 = !DILocalVariable(name: "utmp_buf", arg: 2, scope: !1072, file: !3, line: 536, type: !148)
!1075 = !DILocalVariable(name: "entries", scope: !1072, file: !3, line: 538, type: !30)
!1076 = !DILocalVariable(name: "separator", scope: !1072, file: !3, line: 539, type: !36)
!1077 = !DILocalVariable(name: "trimmed_name", scope: !1078, file: !3, line: 545, type: !25)
!1078 = distinct !DILexicalBlock(scope: !1079, file: !3, line: 544, column: 9)
!1079 = distinct !DILexicalBlock(scope: !1080, file: !3, line: 543, column: 11)
!1080 = distinct !DILexicalBlock(scope: !1072, file: !3, line: 542, column: 5)
!1081 = !DILocation(line: 536, column: 26, scope: !1072, inlinedAt: !1082)
!1082 = distinct !DILocation(line: 629, column: 5, scope: !1048)
!1083 = !DILocation(line: 536, column: 48, scope: !1072, inlinedAt: !1082)
!1084 = !DILocation(line: 538, column: 21, scope: !1072, inlinedAt: !1082)
!1085 = !DILocation(line: 539, column: 15, scope: !1072, inlinedAt: !1082)
!1086 = !DILocation(line: 541, column: 3, scope: !1087, inlinedAt: !1082)
!1087 = !DILexicalBlockFile(scope: !1072, file: !3, discriminator: 1)
!1088 = !DILocation(line: 541, column: 11, scope: !1087, inlinedAt: !1082)
!1089 = !DILocation(line: 543, column: 11, scope: !1079, inlinedAt: !1082)
!1090 = !{!894, !894, i64 0}
!1091 = !DILocation(line: 543, column: 11, scope: !1092, inlinedAt: !1082)
!1092 = !DILexicalBlockFile(scope: !1079, file: !3, discriminator: 1)
!1093 = !{!1094, !1095, i64 0}
!1094 = !{!"utmpx", !1095, i64 0, !1003, i64 4, !894, i64 8, !894, i64 40, !894, i64 44, !894, i64 76, !1096, i64 332, !1003, i64 336, !1097, i64 340, !894, i64 348, !894, i64 364}
!1095 = !{!"short", !894, i64 0}
!1096 = !{!"__exit_status", !1095, i64 0, !1095, i64 2}
!1097 = !{!"", !1003, i64 0, !1003, i64 4}
!1098 = !DILocation(line: 543, column: 11, scope: !1099, inlinedAt: !1082)
!1099 = !DILexicalBlockFile(scope: !1080, file: !3, discriminator: 1)
!1100 = !DILocation(line: 547, column: 26, scope: !1078, inlinedAt: !1082)
!1101 = !DILocation(line: 545, column: 17, scope: !1078, inlinedAt: !1082)
!1102 = !DILocation(line: 549, column: 11, scope: !1078, inlinedAt: !1082)
!1103 = !DILocation(line: 550, column: 11, scope: !1078, inlinedAt: !1082)
!1104 = !DILocation(line: 552, column: 18, scope: !1078, inlinedAt: !1082)
!1105 = !DILocation(line: 553, column: 9, scope: !1078, inlinedAt: !1082)
!1106 = !DILocation(line: 554, column: 15, scope: !1080, inlinedAt: !1082)
!1107 = distinct !{!1107, !1108, !1109}
!1108 = !DILocation(line: 541, column: 3, scope: !1072)
!1109 = !DILocation(line: 555, column: 5, scope: !1072)
!1110 = !DILocation(line: 556, column: 3, scope: !1072, inlinedAt: !1082)
!1111 = !DILocation(line: 556, column: 3, scope: !1087, inlinedAt: !1082)
!1112 = !DILocation(line: 629, column: 5, scope: !1048)
!1113 = !DILocation(line: 462, column: 3, scope: !306, inlinedAt: !1114)
!1114 = distinct !DILocation(line: 607, column: 13, scope: !1115, inlinedAt: !1047)
!1115 = distinct !DILexicalBlock(scope: !1116, file: !3, line: 606, column: 20)
!1116 = distinct !DILexicalBlock(scope: !1117, file: !3, line: 604, column: 20)
!1117 = distinct !DILexicalBlock(scope: !1118, file: !3, line: 602, column: 20)
!1118 = distinct !DILexicalBlock(scope: !1119, file: !3, line: 600, column: 20)
!1119 = distinct !DILexicalBlock(scope: !1120, file: !3, line: 595, column: 20)
!1120 = distinct !DILexicalBlock(scope: !1035, file: !3, line: 593, column: 20)
!1121 = !DILocalVariable(name: "pidstr", scope: !1122, file: !3, line: 484, type: !237)
!1122 = distinct !DISubprogram(name: "print_login", scope: !3, file: !3, line: 481, type: !296, isLocal: true, isDefinition: true, scopeLine: 482, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1123)
!1123 = !{!1124, !1125, !1121}
!1124 = !DILocalVariable(name: "utmp_ent", arg: 1, scope: !1122, file: !3, line: 481, type: !148)
!1125 = !DILocalVariable(name: "comment", scope: !1122, file: !3, line: 483, type: !25)
!1126 = !DILocation(line: 484, column: 3, scope: !1122, inlinedAt: !1127)
!1127 = distinct !DILocation(line: 605, column: 13, scope: !1116, inlinedAt: !1047)
!1128 = !DILocalVariable(name: "pidstr", scope: !1129, file: !3, line: 497, type: !237)
!1129 = distinct !DISubprogram(name: "print_initspawn", scope: !3, file: !3, line: 494, type: !296, isLocal: true, isDefinition: true, scopeLine: 495, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1130)
!1130 = !{!1131, !1132, !1128}
!1131 = !DILocalVariable(name: "utmp_ent", arg: 1, scope: !1129, file: !3, line: 494, type: !148)
!1132 = !DILocalVariable(name: "comment", scope: !1129, file: !3, line: 496, type: !25)
!1133 = !DILocation(line: 497, column: 3, scope: !1129, inlinedAt: !1134)
!1134 = distinct !DILocation(line: 603, column: 13, scope: !1117, inlinedAt: !1047)
!1135 = !DILocation(line: 568, column: 22, scope: !1039, inlinedAt: !1047)
!1136 = !DILocation(line: 568, column: 44, scope: !1039, inlinedAt: !1047)
!1137 = !DILocation(line: 571, column: 10, scope: !1039, inlinedAt: !1047)
!1138 = !DILocation(line: 573, column: 7, scope: !1039, inlinedAt: !1047)
!1139 = !DILocation(line: 562, column: 19, scope: !1140, inlinedAt: !1143)
!1140 = distinct !DISubprogram(name: "print_heading", scope: !3, file: !3, line: 560, type: !1141, isLocal: true, isDefinition: true, scopeLine: 561, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !327)
!1141 = !DISubroutineType(types: !1142)
!1142 = !{null}
!1143 = distinct !DILocation(line: 574, column: 5, scope: !1144, inlinedAt: !1047)
!1144 = distinct !DILexicalBlock(scope: !1039, file: !3, line: 573, column: 7)
!1145 = !DILocation(line: 562, column: 39, scope: !1146, inlinedAt: !1143)
!1146 = !DILexicalBlockFile(scope: !1140, file: !3, discriminator: 1)
!1147 = !DILocation(line: 562, column: 50, scope: !1148, inlinedAt: !1143)
!1148 = !DILexicalBlockFile(scope: !1140, file: !3, discriminator: 2)
!1149 = !DILocation(line: 562, column: 61, scope: !1150, inlinedAt: !1143)
!1150 = !DILexicalBlockFile(scope: !1140, file: !3, discriminator: 3)
!1151 = !DILocation(line: 563, column: 15, scope: !1140, inlinedAt: !1143)
!1152 = !DILocation(line: 563, column: 25, scope: !1146, inlinedAt: !1143)
!1153 = !DILocation(line: 563, column: 39, scope: !1148, inlinedAt: !1143)
!1154 = !DILocation(line: 562, column: 3, scope: !1155, inlinedAt: !1143)
!1155 = !DILexicalBlockFile(scope: !1140, file: !3, discriminator: 4)
!1156 = !DILocation(line: 574, column: 5, scope: !1144, inlinedAt: !1047)
!1157 = !DILocation(line: 576, column: 7, scope: !1039, inlinedAt: !1047)
!1158 = !DILocation(line: 578, column: 19, scope: !1159, inlinedAt: !1047)
!1159 = distinct !DILexicalBlock(scope: !1160, file: !3, line: 577, column: 5)
!1160 = distinct !DILexicalBlock(scope: !1039, file: !3, line: 576, column: 7)
!1161 = !DILocation(line: 570, column: 9, scope: !1039, inlinedAt: !1047)
!1162 = !DILocation(line: 579, column: 12, scope: !1163, inlinedAt: !1047)
!1163 = distinct !DILexicalBlock(scope: !1159, file: !3, line: 579, column: 11)
!1164 = !DILocation(line: 579, column: 11, scope: !1159, inlinedAt: !1047)
!1165 = !DILocation(line: 581, column: 11, scope: !1166, inlinedAt: !1047)
!1166 = distinct !DILexicalBlock(scope: !1159, file: !3, line: 581, column: 11)
!1167 = !DILocation(line: 581, column: 64, scope: !1166, inlinedAt: !1047)
!1168 = !DILocation(line: 582, column: 19, scope: !1166, inlinedAt: !1047)
!1169 = !DILocation(line: 581, column: 11, scope: !1159, inlinedAt: !1047)
!1170 = !DILocation(line: 585, column: 3, scope: !1171, inlinedAt: !1047)
!1171 = !DILexicalBlockFile(scope: !1039, file: !3, discriminator: 1)
!1172 = !DILocation(line: 585, column: 11, scope: !1171, inlinedAt: !1047)
!1173 = !DILocation(line: 588, column: 11, scope: !1037, inlinedAt: !1047)
!1174 = !DILocation(line: 588, column: 14, scope: !1175, inlinedAt: !1047)
!1175 = !DILexicalBlockFile(scope: !1037, file: !3, discriminator: 1)
!1176 = !DILocation(line: 587, column: 11, scope: !1177, inlinedAt: !1047)
!1177 = !DILexicalBlockFile(scope: !1038, file: !3, discriminator: 1)
!1178 = !DILocation(line: 591, column: 26, scope: !1035, inlinedAt: !1047)
!1179 = !DILocation(line: 591, column: 29, scope: !1180, inlinedAt: !1047)
!1180 = !DILexicalBlockFile(scope: !1035, file: !3, discriminator: 1)
!1181 = !DILocation(line: 591, column: 29, scope: !1182, inlinedAt: !1047)
!1182 = !DILexicalBlockFile(scope: !1035, file: !3, discriminator: 2)
!1183 = !DILocation(line: 591, column: 15, scope: !1184, inlinedAt: !1047)
!1184 = !DILexicalBlockFile(scope: !1036, file: !3, discriminator: 2)
!1185 = !DILocation(line: 333, column: 32, scope: !145, inlinedAt: !1034)
!1186 = !DILocation(line: 333, column: 49, scope: !145, inlinedAt: !1034)
!1187 = !DILocation(line: 335, column: 3, scope: !145, inlinedAt: !1034)
!1188 = !DILocation(line: 338, column: 3, scope: !145, inlinedAt: !1034)
!1189 = !DILocation(line: 347, column: 3, scope: !145, inlinedAt: !1034)
!1190 = !DILocation(line: 348, column: 9, scope: !145, inlinedAt: !1034)
!1191 = !{!1094, !1003, i64 4}
!1192 = !DILocation(line: 354, column: 10, scope: !1193, inlinedAt: !1034)
!1193 = distinct !DILexicalBlock(scope: !145, file: !3, line: 354, column: 8)
!1194 = !DILocation(line: 354, column: 8, scope: !145, inlinedAt: !1034)
!1195 = !DILocation(line: 355, column: 9, scope: !1193, inlinedAt: !1034)
!1196 = !DILocalVariable(name: "dest", arg: 1, scope: !1197, file: !84, line: 737, type: !1200)
!1197 = distinct !DISubprogram(name: "stzncpy", scope: !84, file: !84, line: 737, type: !1198, isLocal: true, isDefinition: true, scopeLine: 738, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1202)
!1198 = !DISubroutineType(types: !1199)
!1199 = !{!25, !1200, !1201, !28}
!1200 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !25)
!1201 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !36)
!1202 = !{!1196, !1203, !1204, !1205}
!1203 = !DILocalVariable(name: "src", arg: 2, scope: !1197, file: !84, line: 737, type: !1201)
!1204 = !DILocalVariable(name: "len", arg: 3, scope: !1197, file: !84, line: 737, type: !28)
!1205 = !DILocalVariable(name: "src_end", scope: !1197, file: !84, line: 739, type: !36)
!1206 = !DILocation(line: 737, column: 25, scope: !1197, inlinedAt: !1207)
!1207 = distinct !DILocation(line: 356, column: 3, scope: !145, inlinedAt: !1034)
!1208 = !DILocation(line: 737, column: 52, scope: !1197, inlinedAt: !1207)
!1209 = !DILocation(line: 740, column: 24, scope: !1210, inlinedAt: !1207)
!1210 = !DILexicalBlockFile(scope: !1197, file: !84, discriminator: 2)
!1211 = !DILocation(line: 740, column: 3, scope: !1212, inlinedAt: !1207)
!1212 = !DILexicalBlockFile(scope: !1197, file: !84, discriminator: 3)
!1213 = !DILocation(line: 739, column: 29, scope: !1197, inlinedAt: !1207)
!1214 = !DILocation(line: 741, column: 19, scope: !1197, inlinedAt: !1207)
!1215 = !DILocation(line: 741, column: 10, scope: !1197, inlinedAt: !1207)
!1216 = !DILocation(line: 741, column: 13, scope: !1197, inlinedAt: !1207)
!1217 = !{!1218}
!1218 = distinct !{!1218, !1219, !"stzncpy: argument 0"}
!1219 = distinct !{!1219, !"stzncpy"}
!1220 = !{!1221}
!1221 = distinct !{!1221, !1219, !"stzncpy: argument 1"}
!1222 = !DILocation(line: 740, column: 14, scope: !1223, inlinedAt: !1207)
!1223 = !DILexicalBlockFile(scope: !1197, file: !84, discriminator: 1)
!1224 = !DILocation(line: 740, column: 24, scope: !1223, inlinedAt: !1207)
!1225 = distinct !{!1225, !1226, !1227}
!1226 = !DILocation(line: 740, column: 3, scope: !1197)
!1227 = !DILocation(line: 741, column: 19, scope: !1197)
!1228 = !DILocation(line: 742, column: 9, scope: !1197, inlinedAt: !1207)
!1229 = !DILocation(line: 335, column: 15, scope: !145, inlinedAt: !1034)
!1230 = !DILocalVariable(name: "__path", arg: 1, scope: !1231, file: !1232, line: 449, type: !36)
!1231 = distinct !DISubprogram(name: "stat", scope: !1232, file: !1232, line: 449, type: !1233, isLocal: false, isDefinition: true, scopeLine: 450, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1236)
!1232 = !DIFile(filename: "/usr/include/sys/stat.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1233 = !DISubroutineType(types: !1234)
!1234 = !{!80, !36, !1235}
!1235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64)
!1236 = !{!1230, !1237}
!1237 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !1231, file: !1232, line: 449, type: !1235)
!1238 = !DILocation(line: 449, column: 1, scope: !1231, inlinedAt: !1239)
!1239 = distinct !DILocation(line: 358, column: 7, scope: !1240, inlinedAt: !1034)
!1240 = distinct !DILexicalBlock(scope: !145, file: !3, line: 358, column: 7)
!1241 = !DILocation(line: 451, column: 10, scope: !1231, inlinedAt: !1239)
!1242 = !DILocation(line: 358, column: 27, scope: !1240, inlinedAt: !1034)
!1243 = !DILocation(line: 358, column: 7, scope: !145, inlinedAt: !1034)
!1244 = !DILocalVariable(name: "pstat", arg: 1, scope: !1245, file: !3, line: 317, type: !1248)
!1245 = distinct !DISubprogram(name: "is_tty_writable", scope: !3, file: !3, line: 317, type: !1246, isLocal: true, isDefinition: true, scopeLine: 318, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1250)
!1246 = !DISubroutineType(types: !1247)
!1247 = !{!47, !1248}
!1248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1249, size: 64)
!1249 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !192)
!1250 = !{!1244}
!1251 = !DILocation(line: 317, column: 37, scope: !1245, inlinedAt: !1252)
!1252 = distinct !DILocation(line: 360, column: 14, scope: !1253, inlinedAt: !1034)
!1253 = distinct !DILexicalBlock(scope: !1240, file: !3, line: 359, column: 5)
!1254 = !DILocation(line: 327, column: 17, scope: !1245, inlinedAt: !1252)
!1255 = !{!1256, !1003, i64 24}
!1256 = !{!"stat", !1069, i64 0, !1069, i64 8, !1069, i64 16, !1003, i64 24, !1003, i64 28, !1003, i64 32, !1003, i64 36, !1069, i64 40, !1069, i64 48, !1069, i64 56, !1069, i64 64, !1257, i64 72, !1257, i64 88, !1257, i64 104, !894, i64 120}
!1257 = !{!"timespec", !1069, i64 0, !1069, i64 8}
!1258 = !DILocation(line: 360, column: 14, scope: !1253, inlinedAt: !1034)
!1259 = !DILocation(line: 337, column: 8, scope: !145, inlinedAt: !1034)
!1260 = !DILocation(line: 361, column: 27, scope: !1253, inlinedAt: !1034)
!1261 = !{!1256, !1069, i64 72}
!1262 = !DILocation(line: 336, column: 10, scope: !145, inlinedAt: !1034)
!1263 = !DILocation(line: 369, column: 7, scope: !1264, inlinedAt: !1034)
!1264 = distinct !DILexicalBlock(scope: !145, file: !3, line: 369, column: 7)
!1265 = !DILocation(line: 369, column: 7, scope: !145, inlinedAt: !1034)
!1266 = !DILocation(line: 188, column: 21, scope: !252, inlinedAt: !1267)
!1267 = distinct !DILocation(line: 370, column: 5, scope: !1264, inlinedAt: !1034)
!1268 = !DILocation(line: 188, column: 34, scope: !252, inlinedAt: !1267)
!1269 = !DILocation(line: 192, column: 7, scope: !1270, inlinedAt: !1267)
!1270 = distinct !DILexicalBlock(scope: !252, file: !3, line: 192, column: 7)
!1271 = !DILocation(line: 192, column: 11, scope: !1270, inlinedAt: !1267)
!1272 = !DILocation(line: 192, column: 7, scope: !252, inlinedAt: !1267)
!1273 = !DILocation(line: 193, column: 5, scope: !1270, inlinedAt: !1267)
!1274 = !DILocation(line: 195, column: 16, scope: !260, inlinedAt: !1267)
!1275 = !DILocation(line: 195, column: 23, scope: !260, inlinedAt: !1267)
!1276 = !DILocation(line: 195, column: 26, scope: !1277, inlinedAt: !1267)
!1277 = !DILexicalBlockFile(scope: !260, file: !3, discriminator: 1)
!1278 = !DILocation(line: 195, column: 30, scope: !1277, inlinedAt: !1267)
!1279 = !DILocation(line: 195, column: 45, scope: !1277, inlinedAt: !1267)
!1280 = !DILocation(line: 195, column: 60, scope: !1281, inlinedAt: !1267)
!1281 = !DILexicalBlockFile(scope: !260, file: !3, discriminator: 2)
!1282 = !DILocation(line: 195, column: 52, scope: !1277, inlinedAt: !1267)
!1283 = !DILocation(line: 197, column: 30, scope: !259, inlinedAt: !1267)
!1284 = !DILocation(line: 197, column: 26, scope: !259, inlinedAt: !1267)
!1285 = !DILocation(line: 197, column: 11, scope: !259, inlinedAt: !1267)
!1286 = !DILocation(line: 198, column: 24, scope: !1287, inlinedAt: !1267)
!1287 = distinct !DILexicalBlock(scope: !259, file: !3, line: 198, column: 11)
!1288 = !DILocation(line: 198, column: 11, scope: !259, inlinedAt: !1267)
!1289 = !DILocation(line: 205, column: 11, scope: !1290, inlinedAt: !1267)
!1290 = distinct !DILexicalBlock(scope: !1291, file: !3, line: 205, column: 11)
!1291 = distinct !DILexicalBlock(scope: !1292, file: !3, line: 205, column: 11)
!1292 = distinct !DILexicalBlock(scope: !1287, file: !3, line: 201, column: 9)
!1293 = !DILocation(line: 205, column: 11, scope: !1291, inlinedAt: !1267)
!1294 = !DILocation(line: 205, column: 11, scope: !1295, inlinedAt: !1267)
!1295 = !DILexicalBlockFile(scope: !1290, file: !3, discriminator: 2)
!1296 = !DILocation(line: 206, column: 11, scope: !1292, inlinedAt: !1267)
!1297 = !DILocation(line: 209, column: 11, scope: !1292, inlinedAt: !1267)
!1298 = !DILocation(line: 213, column: 10, scope: !252, inlinedAt: !1267)
!1299 = !DILocation(line: 213, column: 3, scope: !252, inlinedAt: !1267)
!1300 = !DILocation(line: 370, column: 5, scope: !1301, inlinedAt: !1034)
!1301 = !DILexicalBlockFile(scope: !1264, file: !3, discriminator: 1)
!1302 = !DILocation(line: 370, column: 5, scope: !1264, inlinedAt: !1034)
!1303 = !DILocation(line: 372, column: 5, scope: !1264, inlinedAt: !1034)
!1304 = !DILocation(line: 375, column: 7, scope: !242, inlinedAt: !1034)
!1305 = !DILocation(line: 375, column: 7, scope: !145, inlinedAt: !1034)
!1306 = !DILocation(line: 377, column: 7, scope: !241, inlinedAt: !1034)
!1307 = !DILocation(line: 378, column: 13, scope: !241, inlinedAt: !1034)
!1308 = !DILocation(line: 379, column: 13, scope: !241, inlinedAt: !1034)
!1309 = !DILocation(line: 739, column: 29, scope: !1197, inlinedAt: !1310)
!1310 = distinct !DILocation(line: 382, column: 7, scope: !241, inlinedAt: !1034)
!1311 = !DILocation(line: 739, column: 15, scope: !1197, inlinedAt: !1310)
!1312 = !DILocation(line: 737, column: 25, scope: !1197, inlinedAt: !1310)
!1313 = !DILocation(line: 737, column: 52, scope: !1197, inlinedAt: !1310)
!1314 = !DILocation(line: 740, column: 3, scope: !1212, inlinedAt: !1310)
!1315 = !DILocation(line: 741, column: 19, scope: !1197, inlinedAt: !1310)
!1316 = !DILocation(line: 741, column: 10, scope: !1197, inlinedAt: !1310)
!1317 = !DILocation(line: 741, column: 13, scope: !1197, inlinedAt: !1310)
!1318 = !{!1319}
!1319 = distinct !{!1319, !1320, !"stzncpy: argument 0"}
!1320 = distinct !{!1320, !"stzncpy"}
!1321 = !{!1322}
!1322 = distinct !{!1322, !1320, !"stzncpy: argument 1"}
!1323 = !DILocation(line: 740, column: 14, scope: !1223, inlinedAt: !1310)
!1324 = !DILocation(line: 740, column: 24, scope: !1223, inlinedAt: !1310)
!1325 = !DILocation(line: 740, column: 24, scope: !1210, inlinedAt: !1310)
!1326 = !DILocation(line: 742, column: 9, scope: !1197, inlinedAt: !1310)
!1327 = !DILocation(line: 385, column: 17, scope: !241, inlinedAt: !1034)
!1328 = !DILocation(line: 386, column: 11, scope: !1329, inlinedAt: !1034)
!1329 = distinct !DILexicalBlock(scope: !241, file: !3, line: 386, column: 11)
!1330 = !DILocation(line: 386, column: 11, scope: !241, inlinedAt: !1034)
!1331 = !DILocation(line: 387, column: 17, scope: !1329, inlinedAt: !1034)
!1332 = !DILocation(line: 387, column: 20, scope: !1329, inlinedAt: !1034)
!1333 = !DILocation(line: 387, column: 9, scope: !1329, inlinedAt: !1034)
!1334 = !DILocation(line: 389, column: 11, scope: !1335, inlinedAt: !1034)
!1335 = distinct !DILexicalBlock(scope: !241, file: !3, line: 389, column: 11)
!1336 = !DILocation(line: 389, column: 20, scope: !1335, inlinedAt: !1034)
!1337 = !DILocation(line: 389, column: 11, scope: !1338, inlinedAt: !1034)
!1338 = !DILexicalBlockFile(scope: !241, file: !3, discriminator: 1)
!1339 = !DILocation(line: 392, column: 18, scope: !1340, inlinedAt: !1034)
!1340 = distinct !DILexicalBlock(scope: !1335, file: !3, line: 390, column: 9)
!1341 = !DILocation(line: 393, column: 9, scope: !1340, inlinedAt: !1034)
!1342 = !DILocation(line: 395, column: 13, scope: !1343, inlinedAt: !1034)
!1343 = distinct !DILexicalBlock(scope: !241, file: !3, line: 395, column: 11)
!1344 = !DILocation(line: 395, column: 11, scope: !241, inlinedAt: !1034)
!1345 = !DILocation(line: 398, column: 11, scope: !1346, inlinedAt: !1034)
!1346 = distinct !DILexicalBlock(scope: !241, file: !3, line: 398, column: 11)
!1347 = !DILocation(line: 400, column: 25, scope: !1348, inlinedAt: !1034)
!1348 = distinct !DILexicalBlock(scope: !1349, file: !3, line: 400, column: 15)
!1349 = distinct !DILexicalBlock(scope: !1346, file: !3, line: 399, column: 9)
!1350 = !DILocation(line: 398, column: 11, scope: !241, inlinedAt: !1034)
!1351 = !DILocation(line: 400, column: 41, scope: !1352, inlinedAt: !1034)
!1352 = !DILexicalBlockFile(scope: !1348, file: !3, discriminator: 1)
!1353 = !DILocation(line: 400, column: 39, scope: !1348, inlinedAt: !1034)
!1354 = !DILocation(line: 400, column: 58, scope: !1348, inlinedAt: !1034)
!1355 = !DILocation(line: 400, column: 23, scope: !1348, inlinedAt: !1034)
!1356 = !DILocation(line: 400, column: 15, scope: !1349, inlinedAt: !1034)
!1357 = !DILocation(line: 402, column: 23, scope: !1358, inlinedAt: !1034)
!1358 = distinct !DILexicalBlock(scope: !1348, file: !3, line: 401, column: 13)
!1359 = !DILocation(line: 403, column: 21, scope: !1358, inlinedAt: !1034)
!1360 = !DILocation(line: 403, column: 15, scope: !1358, inlinedAt: !1034)
!1361 = !DILocation(line: 404, column: 34, scope: !1358, inlinedAt: !1034)
!1362 = !DILocation(line: 404, column: 25, scope: !1358, inlinedAt: !1034)
!1363 = !DILocation(line: 404, column: 23, scope: !1358, inlinedAt: !1034)
!1364 = !DILocation(line: 405, column: 13, scope: !1358, inlinedAt: !1034)
!1365 = !DILocation(line: 406, column: 11, scope: !1349, inlinedAt: !1034)
!1366 = !DILocation(line: 407, column: 9, scope: !1349, inlinedAt: !1034)
!1367 = !DILocation(line: 410, column: 39, scope: !1368, inlinedAt: !1034)
!1368 = distinct !DILexicalBlock(scope: !1369, file: !3, line: 410, column: 15)
!1369 = distinct !DILexicalBlock(scope: !1346, file: !3, line: 409, column: 9)
!1370 = !DILocation(line: 410, column: 23, scope: !1368, inlinedAt: !1034)
!1371 = !DILocation(line: 410, column: 15, scope: !1369, inlinedAt: !1034)
!1372 = !DILocation(line: 412, column: 23, scope: !1373, inlinedAt: !1034)
!1373 = distinct !DILexicalBlock(scope: !1368, file: !3, line: 411, column: 13)
!1374 = !DILocation(line: 413, column: 21, scope: !1373, inlinedAt: !1034)
!1375 = !DILocation(line: 413, column: 15, scope: !1373, inlinedAt: !1034)
!1376 = !DILocation(line: 414, column: 34, scope: !1373, inlinedAt: !1034)
!1377 = !DILocation(line: 414, column: 25, scope: !1373, inlinedAt: !1034)
!1378 = !DILocation(line: 414, column: 23, scope: !1373, inlinedAt: !1034)
!1379 = !DILocation(line: 415, column: 13, scope: !1373, inlinedAt: !1034)
!1380 = !DILocation(line: 416, column: 11, scope: !1369, inlinedAt: !1034)
!1381 = !DILocation(line: 419, column: 16, scope: !1382, inlinedAt: !1034)
!1382 = distinct !DILexicalBlock(scope: !241, file: !3, line: 419, column: 11)
!1383 = !DILocation(line: 419, column: 11, scope: !241, inlinedAt: !1034)
!1384 = !DILocation(line: 420, column: 9, scope: !1382, inlinedAt: !1034)
!1385 = !DILocation(line: 421, column: 5, scope: !242, inlinedAt: !1034)
!1386 = !DILocation(line: 421, column: 5, scope: !241, inlinedAt: !1034)
!1387 = !DILocation(line: 424, column: 11, scope: !1388, inlinedAt: !1034)
!1388 = distinct !DILexicalBlock(scope: !1389, file: !3, line: 424, column: 11)
!1389 = distinct !DILexicalBlock(scope: !242, file: !3, line: 423, column: 5)
!1390 = !DILocation(line: 424, column: 19, scope: !1388, inlinedAt: !1034)
!1391 = !DILocation(line: 424, column: 11, scope: !1389, inlinedAt: !1034)
!1392 = !DILocation(line: 426, column: 19, scope: !1393, inlinedAt: !1034)
!1393 = distinct !DILexicalBlock(scope: !1388, file: !3, line: 425, column: 9)
!1394 = !DILocation(line: 427, column: 17, scope: !1393, inlinedAt: !1034)
!1395 = !DILocation(line: 427, column: 11, scope: !1393, inlinedAt: !1034)
!1396 = !DILocation(line: 428, column: 30, scope: !1393, inlinedAt: !1034)
!1397 = !DILocation(line: 428, column: 21, scope: !1393, inlinedAt: !1034)
!1398 = !DILocation(line: 428, column: 19, scope: !1393, inlinedAt: !1034)
!1399 = !DILocation(line: 429, column: 9, scope: !1393, inlinedAt: !1034)
!1400 = !DILocation(line: 430, column: 8, scope: !1389, inlinedAt: !1034)
!1401 = !DILocation(line: 430, column: 16, scope: !1389, inlinedAt: !1034)
!1402 = !DILocation(line: 218, column: 33, scope: !268, inlinedAt: !1403)
!1403 = distinct !DILocation(line: 436, column: 15, scope: !145, inlinedAt: !1034)
!1404 = !DILocation(line: 228, column: 3, scope: !268, inlinedAt: !1403)
!1405 = !DILocation(line: 228, column: 14, scope: !268, inlinedAt: !1403)
!1406 = !{!1094, !1003, i64 340}
!1407 = !DILocation(line: 228, column: 10, scope: !268, inlinedAt: !1403)
!1408 = !DILocation(line: 229, column: 20, scope: !268, inlinedAt: !1403)
!1409 = !DILocation(line: 229, column: 14, scope: !268, inlinedAt: !1403)
!1410 = !DILocation(line: 231, column: 7, scope: !1411, inlinedAt: !1403)
!1411 = distinct !DILexicalBlock(scope: !268, file: !3, line: 231, column: 7)
!1412 = !DILocation(line: 231, column: 7, scope: !268, inlinedAt: !1403)
!1413 = !DILocation(line: 233, column: 34, scope: !1414, inlinedAt: !1403)
!1414 = distinct !DILexicalBlock(scope: !1411, file: !3, line: 232, column: 5)
!1415 = !DILocation(line: 233, column: 7, scope: !1414, inlinedAt: !1403)
!1416 = !DILocation(line: 234, column: 7, scope: !1414, inlinedAt: !1403)
!1417 = !DILocation(line: 237, column: 23, scope: !1411, inlinedAt: !1403)
!1418 = !DILocation(line: 689, column: 13, scope: !1419, inlinedAt: !1425)
!1419 = distinct !DISubprogram(name: "timetostr", scope: !84, file: !84, line: 686, type: !1420, isLocal: true, isDefinition: true, scopeLine: 687, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1422)
!1420 = !DISubroutineType(types: !1421)
!1421 = !{!25, !38, !25}
!1422 = !{!1423, !1424}
!1423 = !DILocalVariable(name: "t", arg: 1, scope: !1419, file: !84, line: 686, type: !38)
!1424 = !DILocalVariable(name: "buf", arg: 2, scope: !1419, file: !84, line: 686, type: !25)
!1425 = distinct !DILocation(line: 237, column: 12, scope: !1411, inlinedAt: !1403)
!1426 = !DILocation(line: 237, column: 5, scope: !1411, inlinedAt: !1403)
!1427 = !DILocation(line: 238, column: 1, scope: !268, inlinedAt: !1403)
!1428 = !DILocation(line: 437, column: 15, scope: !145, inlinedAt: !1034)
!1429 = !DILocation(line: 434, column: 3, scope: !1430, inlinedAt: !1034)
!1430 = !DILexicalBlockFile(scope: !145, file: !3, discriminator: 1)
!1431 = !DILocation(line: 438, column: 1, scope: !145, inlinedAt: !1034)
!1432 = !DILocation(line: 592, column: 13, scope: !1035, inlinedAt: !1047)
!1433 = !DILocation(line: 593, column: 34, scope: !1120, inlinedAt: !1047)
!1434 = !DILocation(line: 593, column: 37, scope: !1435, inlinedAt: !1047)
!1435 = !DILexicalBlockFile(scope: !1120, file: !3, discriminator: 1)
!1436 = !DILocation(line: 593, column: 20, scope: !1180, inlinedAt: !1047)
!1437 = !DILocation(line: 513, column: 36, scope: !295, inlinedAt: !1438)
!1438 = distinct !DILocation(line: 594, column: 13, scope: !1120, inlinedAt: !1047)
!1439 = !DILocation(line: 516, column: 24, scope: !295, inlinedAt: !1438)
!1440 = !DILocation(line: 516, column: 42, scope: !295, inlinedAt: !1438)
!1441 = !DILocation(line: 519, column: 8, scope: !1442, inlinedAt: !1438)
!1442 = distinct !DILexicalBlock(scope: !295, file: !3, line: 519, column: 7)
!1443 = !DILocation(line: 519, column: 7, scope: !295, inlinedAt: !1438)
!1444 = !DILocation(line: 520, column: 35, scope: !1442, inlinedAt: !1438)
!1445 = !DILocation(line: 520, column: 27, scope: !1446, inlinedAt: !1438)
!1446 = !DILexicalBlockFile(scope: !1442, file: !3, discriminator: 1)
!1447 = !DILocation(line: 520, column: 51, scope: !1442, inlinedAt: !1438)
!1448 = !DILocation(line: 520, column: 18, scope: !1449, inlinedAt: !1438)
!1449 = !DILexicalBlockFile(scope: !1442, file: !3, discriminator: 2)
!1450 = !DILocation(line: 520, column: 16, scope: !1442, inlinedAt: !1438)
!1451 = !DILocation(line: 520, column: 5, scope: !1442, inlinedAt: !1438)
!1452 = !DILocation(line: 521, column: 3, scope: !295, inlinedAt: !1438)
!1453 = !DILocation(line: 521, column: 3, scope: !1454, inlinedAt: !1438)
!1454 = !DILexicalBlockFile(scope: !295, file: !3, discriminator: 1)
!1455 = !DILocation(line: 523, column: 8, scope: !1456, inlinedAt: !1438)
!1456 = distinct !DILexicalBlock(scope: !295, file: !3, line: 523, column: 7)
!1457 = !DILocation(line: 523, column: 7, scope: !295, inlinedAt: !1438)
!1458 = !DILocation(line: 524, column: 32, scope: !1456, inlinedAt: !1438)
!1459 = !DILocation(line: 524, column: 24, scope: !1460, inlinedAt: !1438)
!1460 = !DILexicalBlockFile(scope: !1456, file: !3, discriminator: 1)
!1461 = !DILocation(line: 524, column: 44, scope: !1456, inlinedAt: !1438)
!1462 = !DILocation(line: 524, column: 15, scope: !1463, inlinedAt: !1438)
!1463 = !DILexicalBlockFile(scope: !1456, file: !3, discriminator: 2)
!1464 = !DILocation(line: 524, column: 13, scope: !1456, inlinedAt: !1438)
!1465 = !DILocation(line: 524, column: 5, scope: !1456, inlinedAt: !1438)
!1466 = !DILocation(line: 525, column: 3, scope: !295, inlinedAt: !1438)
!1467 = !DILocation(line: 525, column: 3, scope: !1468, inlinedAt: !1438)
!1468 = !DILexicalBlockFile(scope: !295, file: !3, discriminator: 3)
!1469 = !DILocation(line: 527, column: 32, scope: !295, inlinedAt: !1438)
!1470 = !DILocation(line: 218, column: 33, scope: !268, inlinedAt: !1471)
!1471 = distinct !DILocation(line: 527, column: 44, scope: !295, inlinedAt: !1438)
!1472 = !DILocation(line: 228, column: 3, scope: !268, inlinedAt: !1471)
!1473 = !DILocation(line: 228, column: 14, scope: !268, inlinedAt: !1471)
!1474 = !DILocation(line: 228, column: 10, scope: !268, inlinedAt: !1471)
!1475 = !DILocation(line: 229, column: 20, scope: !268, inlinedAt: !1471)
!1476 = !DILocation(line: 229, column: 14, scope: !268, inlinedAt: !1471)
!1477 = !DILocation(line: 231, column: 7, scope: !1411, inlinedAt: !1471)
!1478 = !DILocation(line: 231, column: 7, scope: !268, inlinedAt: !1471)
!1479 = !DILocation(line: 233, column: 34, scope: !1414, inlinedAt: !1471)
!1480 = !DILocation(line: 233, column: 7, scope: !1414, inlinedAt: !1471)
!1481 = !DILocation(line: 234, column: 7, scope: !1414, inlinedAt: !1471)
!1482 = !DILocation(line: 237, column: 23, scope: !1411, inlinedAt: !1471)
!1483 = !DILocation(line: 689, column: 13, scope: !1419, inlinedAt: !1484)
!1484 = distinct !DILocation(line: 237, column: 12, scope: !1411, inlinedAt: !1471)
!1485 = !DILocation(line: 237, column: 5, scope: !1411, inlinedAt: !1471)
!1486 = !DILocation(line: 238, column: 1, scope: !268, inlinedAt: !1471)
!1487 = !DILocalVariable(name: "c", arg: 1, scope: !1488, file: !1489, line: 272, type: !80)
!1488 = distinct !DISubprogram(name: "c_isprint", scope: !1489, file: !1489, line: 272, type: !1490, isLocal: false, isDefinition: true, scopeLine: 273, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1492)
!1489 = !DIFile(filename: "./lib/c-ctype.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1490 = !DISubroutineType(types: !1491)
!1491 = !{!47, !80}
!1492 = !{!1487}
!1493 = !DILocation(line: 272, column: 16, scope: !1488, inlinedAt: !1494)
!1494 = distinct !DILocation(line: 528, column: 23, scope: !295, inlinedAt: !1438)
!1495 = !DILocation(line: 274, column: 3, scope: !1488, inlinedAt: !1494)
!1496 = !DILocation(line: 528, column: 42, scope: !1454, inlinedAt: !1438)
!1497 = !DILocation(line: 528, column: 23, scope: !295, inlinedAt: !1438)
!1498 = !DILocation(line: 527, column: 3, scope: !1454, inlinedAt: !1438)
!1499 = !DILocation(line: 594, column: 13, scope: !1120, inlinedAt: !1047)
!1500 = !DILocation(line: 595, column: 34, scope: !1119, inlinedAt: !1047)
!1501 = !DILocation(line: 595, column: 37, scope: !1502, inlinedAt: !1047)
!1502 = !DILexicalBlockFile(scope: !1119, file: !3, discriminator: 1)
!1503 = !DILocation(line: 595, column: 20, scope: !1435, inlinedAt: !1047)
!1504 = !DILocalVariable(name: "utmp_ent", arg: 1, scope: !1505, file: !3, line: 441, type: !148)
!1505 = distinct !DISubprogram(name: "print_boottime", scope: !3, file: !3, line: 441, type: !296, isLocal: true, isDefinition: true, scopeLine: 442, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1506)
!1506 = !{!1504}
!1507 = !DILocation(line: 441, column: 36, scope: !1505, inlinedAt: !1508)
!1508 = distinct !DILocation(line: 596, column: 13, scope: !1119, inlinedAt: !1047)
!1509 = !DILocation(line: 443, column: 32, scope: !1505, inlinedAt: !1508)
!1510 = !DILocation(line: 218, column: 33, scope: !268, inlinedAt: !1511)
!1511 = distinct !DILocation(line: 444, column: 15, scope: !1505, inlinedAt: !1508)
!1512 = !DILocation(line: 228, column: 3, scope: !268, inlinedAt: !1511)
!1513 = !DILocation(line: 228, column: 14, scope: !268, inlinedAt: !1511)
!1514 = !DILocation(line: 228, column: 10, scope: !268, inlinedAt: !1511)
!1515 = !DILocation(line: 229, column: 20, scope: !268, inlinedAt: !1511)
!1516 = !DILocation(line: 229, column: 14, scope: !268, inlinedAt: !1511)
!1517 = !DILocation(line: 231, column: 7, scope: !1411, inlinedAt: !1511)
!1518 = !DILocation(line: 231, column: 7, scope: !268, inlinedAt: !1511)
!1519 = !DILocation(line: 233, column: 34, scope: !1414, inlinedAt: !1511)
!1520 = !DILocation(line: 233, column: 7, scope: !1414, inlinedAt: !1511)
!1521 = !DILocation(line: 234, column: 7, scope: !1414, inlinedAt: !1511)
!1522 = !DILocation(line: 237, column: 23, scope: !1411, inlinedAt: !1511)
!1523 = !DILocation(line: 689, column: 13, scope: !1419, inlinedAt: !1524)
!1524 = distinct !DILocation(line: 237, column: 12, scope: !1411, inlinedAt: !1511)
!1525 = !DILocation(line: 237, column: 5, scope: !1411, inlinedAt: !1511)
!1526 = !DILocation(line: 238, column: 1, scope: !268, inlinedAt: !1511)
!1527 = !DILocation(line: 443, column: 3, scope: !1528, inlinedAt: !1508)
!1528 = !DILexicalBlockFile(scope: !1505, file: !3, discriminator: 1)
!1529 = !DILocation(line: 596, column: 13, scope: !1119, inlinedAt: !1047)
!1530 = !DILocation(line: 600, column: 37, scope: !1118, inlinedAt: !1047)
!1531 = !DILocation(line: 600, column: 40, scope: !1532, inlinedAt: !1047)
!1532 = !DILexicalBlockFile(scope: !1118, file: !3, discriminator: 1)
!1533 = !DILocation(line: 600, column: 20, scope: !1502, inlinedAt: !1047)
!1534 = !DILocalVariable(name: "utmp_ent", arg: 1, scope: !1535, file: !3, line: 505, type: !148)
!1535 = distinct !DISubprogram(name: "print_clockchange", scope: !3, file: !3, line: 505, type: !296, isLocal: true, isDefinition: true, scopeLine: 506, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1536)
!1536 = !{!1534}
!1537 = !DILocation(line: 505, column: 39, scope: !1535, inlinedAt: !1538)
!1538 = distinct !DILocation(line: 601, column: 13, scope: !1118, inlinedAt: !1047)
!1539 = !DILocation(line: 508, column: 32, scope: !1535, inlinedAt: !1538)
!1540 = !DILocation(line: 218, column: 33, scope: !268, inlinedAt: !1541)
!1541 = distinct !DILocation(line: 509, column: 15, scope: !1535, inlinedAt: !1538)
!1542 = !DILocation(line: 228, column: 3, scope: !268, inlinedAt: !1541)
!1543 = !DILocation(line: 228, column: 14, scope: !268, inlinedAt: !1541)
!1544 = !DILocation(line: 228, column: 10, scope: !268, inlinedAt: !1541)
!1545 = !DILocation(line: 229, column: 20, scope: !268, inlinedAt: !1541)
!1546 = !DILocation(line: 229, column: 14, scope: !268, inlinedAt: !1541)
!1547 = !DILocation(line: 231, column: 7, scope: !1411, inlinedAt: !1541)
!1548 = !DILocation(line: 231, column: 7, scope: !268, inlinedAt: !1541)
!1549 = !DILocation(line: 233, column: 34, scope: !1414, inlinedAt: !1541)
!1550 = !DILocation(line: 233, column: 7, scope: !1414, inlinedAt: !1541)
!1551 = !DILocation(line: 234, column: 7, scope: !1414, inlinedAt: !1541)
!1552 = !DILocation(line: 237, column: 23, scope: !1411, inlinedAt: !1541)
!1553 = !DILocation(line: 689, column: 13, scope: !1419, inlinedAt: !1554)
!1554 = distinct !DILocation(line: 237, column: 12, scope: !1411, inlinedAt: !1541)
!1555 = !DILocation(line: 237, column: 5, scope: !1411, inlinedAt: !1541)
!1556 = !DILocation(line: 238, column: 1, scope: !268, inlinedAt: !1541)
!1557 = !DILocation(line: 508, column: 3, scope: !1558, inlinedAt: !1538)
!1558 = !DILexicalBlockFile(scope: !1535, file: !3, discriminator: 1)
!1559 = !DILocation(line: 601, column: 13, scope: !1118, inlinedAt: !1047)
!1560 = !DILocation(line: 602, column: 35, scope: !1117, inlinedAt: !1047)
!1561 = !DILocation(line: 602, column: 38, scope: !1562, inlinedAt: !1047)
!1562 = !DILexicalBlockFile(scope: !1117, file: !3, discriminator: 1)
!1563 = !DILocation(line: 602, column: 20, scope: !1532, inlinedAt: !1047)
!1564 = !DILocation(line: 494, column: 37, scope: !1129, inlinedAt: !1134)
!1565 = !DILocalVariable(name: "utmp_ent", arg: 1, scope: !1566, file: !3, line: 448, type: !148)
!1566 = distinct !DISubprogram(name: "make_id_equals_comment", scope: !3, file: !3, line: 448, type: !1567, isLocal: true, isDefinition: true, scopeLine: 449, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1569)
!1567 = !DISubroutineType(types: !1568)
!1568 = !{!25, !148}
!1569 = !{!1565, !1570}
!1570 = !DILocalVariable(name: "comment", scope: !1566, file: !3, line: 450, type: !25)
!1571 = !DILocation(line: 448, column: 44, scope: !1566, inlinedAt: !1572)
!1572 = distinct !DILocation(line: 496, column: 19, scope: !1129, inlinedAt: !1134)
!1573 = !DILocation(line: 450, column: 36, scope: !1566, inlinedAt: !1572)
!1574 = !DILocation(line: 450, column: 28, scope: !1575, inlinedAt: !1572)
!1575 = !DILexicalBlockFile(scope: !1566, file: !3, discriminator: 1)
!1576 = !DILocation(line: 450, column: 72, scope: !1566, inlinedAt: !1572)
!1577 = !DILocation(line: 450, column: 19, scope: !1578, inlinedAt: !1572)
!1578 = !DILexicalBlockFile(scope: !1566, file: !3, discriminator: 2)
!1579 = !DILocation(line: 450, column: 9, scope: !1566, inlinedAt: !1572)
!1580 = !DILocation(line: 452, column: 20, scope: !1566, inlinedAt: !1572)
!1581 = !DILocalVariable(name: "__dest", arg: 1, scope: !1582, file: !1583, line: 107, type: !1200)
!1582 = distinct !DISubprogram(name: "strcpy", scope: !1583, file: !1583, line: 107, type: !1584, isLocal: false, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1586)
!1583 = !DIFile(filename: "/usr/include/bits/string3.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1584 = !DISubroutineType(types: !1585)
!1585 = !{!25, !1200, !1201}
!1586 = !{!1581, !1587}
!1587 = !DILocalVariable(name: "__src", arg: 2, scope: !1582, file: !1583, line: 107, type: !1201)
!1588 = !DILocation(line: 107, column: 1, scope: !1582, inlinedAt: !1589)
!1589 = distinct !DILocation(line: 452, column: 3, scope: !1575, inlinedAt: !1572)
!1590 = !DILocation(line: 109, column: 49, scope: !1582, inlinedAt: !1589)
!1591 = !DILocation(line: 109, column: 10, scope: !1582, inlinedAt: !1589)
!1592 = !DILocation(line: 453, column: 21, scope: !1566, inlinedAt: !1572)
!1593 = !DILocalVariable(name: "__dest", arg: 1, scope: !1594, file: !1583, line: 152, type: !1200)
!1594 = distinct !DISubprogram(name: "strncat", scope: !1583, file: !1583, line: 152, type: !1198, isLocal: false, isDefinition: true, scopeLine: 154, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1595)
!1595 = !{!1593, !1596, !1597}
!1596 = !DILocalVariable(name: "__src", arg: 2, scope: !1594, file: !1583, line: 152, type: !1201)
!1597 = !DILocalVariable(name: "__len", arg: 3, scope: !1594, file: !1583, line: 152, type: !28)
!1598 = !DILocation(line: 152, column: 1, scope: !1594, inlinedAt: !1599)
!1599 = distinct !DILocation(line: 453, column: 3, scope: !1566, inlinedAt: !1572)
!1600 = !DILocation(line: 155, column: 10, scope: !1594, inlinedAt: !1599)
!1601 = !DILocation(line: 496, column: 9, scope: !1129, inlinedAt: !1134)
!1602 = !DILocation(line: 499, column: 54, scope: !1129, inlinedAt: !1134)
!1603 = !DILocation(line: 218, column: 33, scope: !268, inlinedAt: !1604)
!1604 = distinct !DILocation(line: 500, column: 15, scope: !1129, inlinedAt: !1134)
!1605 = !DILocation(line: 228, column: 3, scope: !268, inlinedAt: !1604)
!1606 = !DILocation(line: 228, column: 14, scope: !268, inlinedAt: !1604)
!1607 = !DILocation(line: 228, column: 10, scope: !268, inlinedAt: !1604)
!1608 = !DILocation(line: 229, column: 20, scope: !268, inlinedAt: !1604)
!1609 = !DILocation(line: 229, column: 14, scope: !268, inlinedAt: !1604)
!1610 = !DILocation(line: 231, column: 7, scope: !1411, inlinedAt: !1604)
!1611 = !DILocation(line: 231, column: 7, scope: !268, inlinedAt: !1604)
!1612 = !DILocation(line: 233, column: 34, scope: !1414, inlinedAt: !1604)
!1613 = !DILocation(line: 233, column: 7, scope: !1414, inlinedAt: !1604)
!1614 = !DILocation(line: 234, column: 7, scope: !1414, inlinedAt: !1604)
!1615 = !DILocation(line: 237, column: 23, scope: !1411, inlinedAt: !1604)
!1616 = !DILocation(line: 689, column: 13, scope: !1419, inlinedAt: !1617)
!1617 = distinct !DILocation(line: 237, column: 12, scope: !1411, inlinedAt: !1604)
!1618 = !DILocation(line: 237, column: 5, scope: !1411, inlinedAt: !1604)
!1619 = !DILocation(line: 238, column: 1, scope: !268, inlinedAt: !1604)
!1620 = !DILocation(line: 499, column: 3, scope: !1129, inlinedAt: !1134)
!1621 = !DILocation(line: 501, column: 3, scope: !1129, inlinedAt: !1134)
!1622 = !DILocation(line: 502, column: 1, scope: !1129, inlinedAt: !1134)
!1623 = !DILocation(line: 603, column: 13, scope: !1117, inlinedAt: !1047)
!1624 = !DILocation(line: 604, column: 31, scope: !1116, inlinedAt: !1047)
!1625 = !DILocation(line: 604, column: 34, scope: !1626, inlinedAt: !1047)
!1626 = !DILexicalBlockFile(scope: !1116, file: !3, discriminator: 1)
!1627 = !DILocation(line: 604, column: 20, scope: !1562, inlinedAt: !1047)
!1628 = !DILocation(line: 481, column: 33, scope: !1122, inlinedAt: !1127)
!1629 = !DILocation(line: 448, column: 44, scope: !1566, inlinedAt: !1630)
!1630 = distinct !DILocation(line: 483, column: 19, scope: !1122, inlinedAt: !1127)
!1631 = !DILocation(line: 450, column: 36, scope: !1566, inlinedAt: !1630)
!1632 = !DILocation(line: 450, column: 28, scope: !1575, inlinedAt: !1630)
!1633 = !DILocation(line: 450, column: 72, scope: !1566, inlinedAt: !1630)
!1634 = !DILocation(line: 450, column: 19, scope: !1578, inlinedAt: !1630)
!1635 = !DILocation(line: 450, column: 9, scope: !1566, inlinedAt: !1630)
!1636 = !DILocation(line: 452, column: 20, scope: !1566, inlinedAt: !1630)
!1637 = !DILocation(line: 107, column: 1, scope: !1582, inlinedAt: !1638)
!1638 = distinct !DILocation(line: 452, column: 3, scope: !1575, inlinedAt: !1630)
!1639 = !DILocation(line: 109, column: 49, scope: !1582, inlinedAt: !1638)
!1640 = !DILocation(line: 109, column: 10, scope: !1582, inlinedAt: !1638)
!1641 = !DILocation(line: 453, column: 21, scope: !1566, inlinedAt: !1630)
!1642 = !DILocation(line: 152, column: 1, scope: !1594, inlinedAt: !1643)
!1643 = distinct !DILocation(line: 453, column: 3, scope: !1566, inlinedAt: !1630)
!1644 = !DILocation(line: 155, column: 10, scope: !1594, inlinedAt: !1643)
!1645 = !DILocation(line: 483, column: 9, scope: !1122, inlinedAt: !1127)
!1646 = !DILocation(line: 488, column: 19, scope: !1122, inlinedAt: !1127)
!1647 = !DILocation(line: 488, column: 62, scope: !1122, inlinedAt: !1127)
!1648 = !DILocation(line: 218, column: 33, scope: !268, inlinedAt: !1649)
!1649 = distinct !DILocation(line: 489, column: 15, scope: !1122, inlinedAt: !1127)
!1650 = !DILocation(line: 228, column: 3, scope: !268, inlinedAt: !1649)
!1651 = !DILocation(line: 228, column: 14, scope: !268, inlinedAt: !1649)
!1652 = !DILocation(line: 228, column: 10, scope: !268, inlinedAt: !1649)
!1653 = !DILocation(line: 229, column: 20, scope: !268, inlinedAt: !1649)
!1654 = !DILocation(line: 229, column: 14, scope: !268, inlinedAt: !1649)
!1655 = !DILocation(line: 231, column: 7, scope: !1411, inlinedAt: !1649)
!1656 = !DILocation(line: 231, column: 7, scope: !268, inlinedAt: !1649)
!1657 = !DILocation(line: 233, column: 34, scope: !1414, inlinedAt: !1649)
!1658 = !DILocation(line: 233, column: 7, scope: !1414, inlinedAt: !1649)
!1659 = !DILocation(line: 234, column: 7, scope: !1414, inlinedAt: !1649)
!1660 = !DILocation(line: 237, column: 23, scope: !1411, inlinedAt: !1649)
!1661 = !DILocation(line: 689, column: 13, scope: !1419, inlinedAt: !1662)
!1662 = distinct !DILocation(line: 237, column: 12, scope: !1411, inlinedAt: !1649)
!1663 = !DILocation(line: 237, column: 5, scope: !1411, inlinedAt: !1649)
!1664 = !DILocation(line: 238, column: 1, scope: !268, inlinedAt: !1649)
!1665 = !DILocation(line: 488, column: 3, scope: !1666, inlinedAt: !1127)
!1666 = !DILexicalBlockFile(scope: !1122, file: !3, discriminator: 1)
!1667 = !DILocation(line: 490, column: 3, scope: !1122, inlinedAt: !1127)
!1668 = !DILocation(line: 491, column: 1, scope: !1122, inlinedAt: !1127)
!1669 = !DILocation(line: 605, column: 13, scope: !1116, inlinedAt: !1047)
!1670 = !DILocation(line: 606, column: 35, scope: !1115, inlinedAt: !1047)
!1671 = !DILocation(line: 606, column: 38, scope: !1672, inlinedAt: !1047)
!1672 = !DILexicalBlockFile(scope: !1115, file: !3, discriminator: 1)
!1673 = !DILocation(line: 606, column: 20, scope: !1626, inlinedAt: !1047)
!1674 = !DILocation(line: 458, column: 37, scope: !306, inlinedAt: !1114)
!1675 = !DILocation(line: 448, column: 44, scope: !1566, inlinedAt: !1676)
!1676 = distinct !DILocation(line: 461, column: 19, scope: !306, inlinedAt: !1114)
!1677 = !DILocation(line: 450, column: 36, scope: !1566, inlinedAt: !1676)
!1678 = !DILocation(line: 450, column: 28, scope: !1575, inlinedAt: !1676)
!1679 = !DILocation(line: 450, column: 72, scope: !1566, inlinedAt: !1676)
!1680 = !DILocation(line: 450, column: 19, scope: !1578, inlinedAt: !1676)
!1681 = !DILocation(line: 450, column: 9, scope: !1566, inlinedAt: !1676)
!1682 = !DILocation(line: 452, column: 20, scope: !1566, inlinedAt: !1676)
!1683 = !DILocation(line: 107, column: 1, scope: !1582, inlinedAt: !1684)
!1684 = distinct !DILocation(line: 452, column: 3, scope: !1575, inlinedAt: !1676)
!1685 = !DILocation(line: 109, column: 49, scope: !1582, inlinedAt: !1684)
!1686 = !DILocation(line: 109, column: 10, scope: !1582, inlinedAt: !1684)
!1687 = !DILocation(line: 453, column: 21, scope: !1566, inlinedAt: !1676)
!1688 = !DILocation(line: 152, column: 1, scope: !1594, inlinedAt: !1689)
!1689 = distinct !DILocation(line: 453, column: 3, scope: !1566, inlinedAt: !1676)
!1690 = !DILocation(line: 155, column: 10, scope: !1594, inlinedAt: !1689)
!1691 = !DILocation(line: 461, column: 9, scope: !306, inlinedAt: !1114)
!1692 = !DILocation(line: 464, column: 8, scope: !1693, inlinedAt: !1114)
!1693 = distinct !DILexicalBlock(scope: !306, file: !3, line: 464, column: 7)
!1694 = !DILocation(line: 464, column: 7, scope: !306, inlinedAt: !1114)
!1695 = !DILocation(line: 465, column: 32, scope: !1693, inlinedAt: !1114)
!1696 = !DILocation(line: 465, column: 24, scope: !1697, inlinedAt: !1114)
!1697 = !DILexicalBlockFile(scope: !1693, file: !3, discriminator: 1)
!1698 = !DILocation(line: 467, column: 34, scope: !1693, inlinedAt: !1114)
!1699 = !DILocation(line: 467, column: 26, scope: !1697, inlinedAt: !1114)
!1700 = !DILocation(line: 467, column: 24, scope: !1693, inlinedAt: !1114)
!1701 = !DILocation(line: 469, column: 24, scope: !1693, inlinedAt: !1114)
!1702 = !DILocation(line: 465, column: 15, scope: !1703, inlinedAt: !1114)
!1703 = !DILexicalBlockFile(scope: !1693, file: !3, discriminator: 2)
!1704 = !DILocation(line: 465, column: 13, scope: !1693, inlinedAt: !1114)
!1705 = !DILocation(line: 465, column: 5, scope: !1693, inlinedAt: !1114)
!1706 = !DILocation(line: 470, column: 3, scope: !306, inlinedAt: !1114)
!1707 = !{!1094, !1095, i64 332}
!1708 = !DILocation(line: 470, column: 3, scope: !1709, inlinedAt: !1114)
!1709 = !DILexicalBlockFile(scope: !306, file: !3, discriminator: 1)
!1710 = !{!1094, !1095, i64 334}
!1711 = !DILocation(line: 470, column: 3, scope: !1712, inlinedAt: !1114)
!1712 = !DILexicalBlockFile(scope: !306, file: !3, discriminator: 2)
!1713 = !DILocation(line: 475, column: 54, scope: !306, inlinedAt: !1114)
!1714 = !DILocation(line: 218, column: 33, scope: !268, inlinedAt: !1715)
!1715 = distinct !DILocation(line: 476, column: 15, scope: !306, inlinedAt: !1114)
!1716 = !DILocation(line: 228, column: 3, scope: !268, inlinedAt: !1715)
!1717 = !DILocation(line: 228, column: 14, scope: !268, inlinedAt: !1715)
!1718 = !DILocation(line: 228, column: 10, scope: !268, inlinedAt: !1715)
!1719 = !DILocation(line: 229, column: 20, scope: !268, inlinedAt: !1715)
!1720 = !DILocation(line: 229, column: 14, scope: !268, inlinedAt: !1715)
!1721 = !DILocation(line: 231, column: 7, scope: !1411, inlinedAt: !1715)
!1722 = !DILocation(line: 231, column: 7, scope: !268, inlinedAt: !1715)
!1723 = !DILocation(line: 233, column: 34, scope: !1414, inlinedAt: !1715)
!1724 = !DILocation(line: 233, column: 7, scope: !1414, inlinedAt: !1715)
!1725 = !DILocation(line: 234, column: 7, scope: !1414, inlinedAt: !1715)
!1726 = !DILocation(line: 237, column: 23, scope: !1411, inlinedAt: !1715)
!1727 = !DILocation(line: 689, column: 13, scope: !1419, inlinedAt: !1728)
!1728 = distinct !DILocation(line: 237, column: 12, scope: !1411, inlinedAt: !1715)
!1729 = !DILocation(line: 237, column: 5, scope: !1411, inlinedAt: !1715)
!1730 = !DILocation(line: 238, column: 1, scope: !268, inlinedAt: !1715)
!1731 = !DILocation(line: 476, column: 60, scope: !306, inlinedAt: !1114)
!1732 = !DILocation(line: 475, column: 3, scope: !306, inlinedAt: !1114)
!1733 = !DILocation(line: 477, column: 3, scope: !306, inlinedAt: !1114)
!1734 = !DILocation(line: 478, column: 1, scope: !306, inlinedAt: !1114)
!1735 = !DILocation(line: 607, column: 13, scope: !1115, inlinedAt: !1047)
!1736 = !DILocation(line: 610, column: 11, scope: !1737, inlinedAt: !1047)
!1737 = distinct !DILexicalBlock(scope: !1038, file: !3, line: 610, column: 11)
!1738 = !DILocation(line: 610, column: 11, scope: !1038, inlinedAt: !1047)
!1739 = !DILocation(line: 611, column: 20, scope: !1737, inlinedAt: !1047)
!1740 = !DILocation(line: 611, column: 9, scope: !1737, inlinedAt: !1047)
!1741 = !DILocation(line: 613, column: 15, scope: !1038, inlinedAt: !1047)
!1742 = distinct !{!1742, !1743, !1744}
!1743 = !DILocation(line: 585, column: 3, scope: !1039)
!1744 = !DILocation(line: 614, column: 5, scope: !1039)
!1745 = !DILocation(line: 633, column: 9, scope: !1024)
!1746 = !DILocation(line: 633, column: 3, scope: !1024)
!1747 = !DILocation(line: 634, column: 1, scope: !1024)
!1748 = !DILocation(line: 244, column: 17, scope: !113)
!1749 = !DILocation(line: 244, column: 38, scope: !113)
!1750 = !DILocation(line: 244, column: 55, scope: !113)
!1751 = !DILocation(line: 245, column: 17, scope: !113)
!1752 = !DILocation(line: 245, column: 38, scope: !113)
!1753 = !DILocation(line: 246, column: 25, scope: !113)
!1754 = !DILocation(line: 246, column: 47, scope: !113)
!1755 = !DILocation(line: 246, column: 65, scope: !113)
!1756 = !DILocation(line: 247, column: 25, scope: !113)
!1757 = !DILocation(line: 247, column: 46, scope: !113)
!1758 = !DILocation(line: 250, column: 3, scope: !113)
!1759 = !DILocation(line: 251, column: 3, scope: !113)
!1760 = !DILocation(line: 251, column: 8, scope: !113)
!1761 = !DILocation(line: 252, column: 3, scope: !113)
!1762 = !DILocation(line: 252, column: 8, scope: !113)
!1763 = !DILocation(line: 256, column: 11, scope: !113)
!1764 = !DILocation(line: 258, column: 20, scope: !1765)
!1765 = distinct !DILexicalBlock(scope: !113, file: !3, line: 258, column: 7)
!1766 = !DILocation(line: 258, column: 37, scope: !1767)
!1767 = !DILexicalBlockFile(scope: !1765, file: !3, discriminator: 1)
!1768 = !DILocation(line: 258, column: 40, scope: !1769)
!1769 = !DILexicalBlockFile(scope: !1765, file: !3, discriminator: 2)
!1770 = !DILocation(line: 258, column: 54, scope: !1769)
!1771 = !DILocation(line: 258, column: 7, scope: !1772)
!1772 = !DILexicalBlockFile(scope: !113, file: !3, discriminator: 2)
!1773 = !DILocation(line: 259, column: 5, scope: !1765)
!1774 = !DILocation(line: 261, column: 13, scope: !1765)
!1775 = !DILocation(line: 263, column: 21, scope: !1776)
!1776 = distinct !DILexicalBlock(scope: !113, file: !3, line: 263, column: 7)
!1777 = !DILocation(line: 263, column: 24, scope: !1778)
!1778 = !DILexicalBlockFile(scope: !1776, file: !3, discriminator: 1)
!1779 = !DILocation(line: 263, column: 37, scope: !1778)
!1780 = !DILocation(line: 263, column: 7, scope: !1781)
!1781 = !DILexicalBlockFile(scope: !113, file: !3, discriminator: 1)
!1782 = !DILocation(line: 264, column: 5, scope: !1776)
!1783 = !DILocation(line: 266, column: 12, scope: !1776)
!1784 = !DILocation(line: 268, column: 24, scope: !113)
!1785 = !DILocation(line: 268, column: 43, scope: !1781)
!1786 = !DILocation(line: 268, column: 43, scope: !1787)
!1787 = !DILexicalBlockFile(scope: !113, file: !3, discriminator: 3)
!1788 = !DILocation(line: 268, column: 24, scope: !1789)
!1789 = !DILexicalBlockFile(scope: !113, file: !3, discriminator: 4)
!1790 = !DILocation(line: 268, column: 24, scope: !1791)
!1791 = !DILexicalBlockFile(scope: !113, file: !3, discriminator: 6)
!1792 = !DILocation(line: 268, column: 15, scope: !1791)
!1793 = !DILocation(line: 253, column: 9, scope: !113)
!1794 = !DILocation(line: 269, column: 7, scope: !113)
!1795 = !DILocation(line: 270, column: 5, scope: !1796)
!1796 = distinct !DILexicalBlock(scope: !113, file: !3, line: 269, column: 7)
!1797 = !DILocation(line: 272, column: 16, scope: !1796)
!1798 = !DILocation(line: 274, column: 9, scope: !113)
!1799 = !DILocation(line: 274, column: 9, scope: !1787)
!1800 = !DILocation(line: 250, column: 9, scope: !113)
!1801 = !DILocation(line: 254, column: 7, scope: !113)
!1802 = !DILocation(line: 298, column: 11, scope: !1803)
!1803 = distinct !DILexicalBlock(scope: !113, file: !3, line: 298, column: 7)
!1804 = !DILocation(line: 298, column: 7, scope: !113)
!1805 = !DILocation(line: 299, column: 5, scope: !1803)
!1806 = !DILocation(line: 303, column: 15, scope: !139)
!1807 = !DILocation(line: 303, column: 21, scope: !139)
!1808 = !DILocation(line: 303, column: 19, scope: !139)
!1809 = !DILocation(line: 303, column: 11, scope: !139)
!1810 = !DILocation(line: 304, column: 5, scope: !139)
!1811 = !DILocation(line: 304, column: 13, scope: !1812)
!1812 = !DILexicalBlockFile(scope: !139, file: !3, discriminator: 1)
!1813 = !DILocation(line: 304, column: 12, scope: !1812)
!1814 = !DILocation(line: 304, column: 17, scope: !1812)
!1815 = !DILocation(line: 304, column: 5, scope: !1812)
!1816 = distinct !{!1816, !1810, !1817}
!1817 = !DILocation(line: 305, column: 18, scope: !139)
!1818 = !DILocation(line: 306, column: 14, scope: !139)
!1819 = !DILocation(line: 309, column: 9, scope: !113)
!1820 = !DILocation(line: 309, column: 3, scope: !113)
!1821 = !DILocation(line: 310, column: 9, scope: !113)
!1822 = !DILocation(line: 310, column: 3, scope: !113)
!1823 = !DILocation(line: 311, column: 3, scope: !113)
!1824 = !DILocation(line: 312, column: 1, scope: !113)
!1825 = distinct !DISubprogram(name: "canon_host", scope: !337, file: !337, line: 33, type: !1826, isLocal: false, isDefinition: true, scopeLine: 34, flags: DIFlagPrototyped, isOptimized: true, unit: !331, variables: !1828)
!1826 = !DISubroutineType(types: !1827)
!1827 = !{!25, !36}
!1828 = !{!1829}
!1829 = !DILocalVariable(name: "host", arg: 1, scope: !1825, file: !337, line: 33, type: !36)
!1830 = !DILocation(line: 33, column: 25, scope: !1825)
!1831 = !DILocation(line: 60, column: 27, scope: !336, inlinedAt: !1832)
!1832 = distinct !DILocation(line: 35, column: 10, scope: !1825)
!1833 = !DILocation(line: 60, column: 38, scope: !336, inlinedAt: !1832)
!1834 = !DILocation(line: 62, column: 9, scope: !336, inlinedAt: !1832)
!1835 = !DILocation(line: 64, column: 3, scope: !336, inlinedAt: !1832)
!1836 = !DILocation(line: 64, column: 20, scope: !336, inlinedAt: !1832)
!1837 = !DILocation(line: 67, column: 18, scope: !336, inlinedAt: !1832)
!1838 = !{!1839, !1003, i64 0}
!1839 = !{!"addrinfo", !1003, i64 0, !1003, i64 4, !1003, i64 8, !1003, i64 12, !1003, i64 16, !893, i64 24, !893, i64 32, !893, i64 40}
!1840 = !DILocation(line: 68, column: 12, scope: !336, inlinedAt: !1832)
!1841 = !DILocation(line: 65, column: 7, scope: !336, inlinedAt: !1832)
!1842 = !DILocation(line: 69, column: 8, scope: !1843, inlinedAt: !1832)
!1843 = distinct !DILexicalBlock(scope: !336, file: !337, line: 69, column: 7)
!1844 = !DILocation(line: 69, column: 7, scope: !336, inlinedAt: !1832)
!1845 = !DILocation(line: 74, column: 16, scope: !1846, inlinedAt: !1832)
!1846 = distinct !DILexicalBlock(scope: !1843, file: !337, line: 70, column: 5)
!1847 = !{!1839, !893, i64 32}
!1848 = !DILocation(line: 74, column: 16, scope: !1849, inlinedAt: !1832)
!1849 = !DILexicalBlockFile(scope: !1846, file: !337, discriminator: 2)
!1850 = !DILocation(line: 74, column: 16, scope: !1851, inlinedAt: !1832)
!1851 = !DILexicalBlockFile(scope: !1846, file: !337, discriminator: 3)
!1852 = !DILocation(line: 75, column: 12, scope: !1853, inlinedAt: !1832)
!1853 = distinct !DILexicalBlock(scope: !1846, file: !337, line: 75, column: 11)
!1854 = !DILocation(line: 75, column: 19, scope: !1853, inlinedAt: !1832)
!1855 = !DILocation(line: 76, column: 18, scope: !1853, inlinedAt: !1832)
!1856 = !DILocation(line: 76, column: 9, scope: !1853, inlinedAt: !1832)
!1857 = !DILocation(line: 77, column: 21, scope: !1846, inlinedAt: !1832)
!1858 = !DILocation(line: 77, column: 7, scope: !1846, inlinedAt: !1832)
!1859 = !DILocation(line: 78, column: 5, scope: !1846, inlinedAt: !1832)
!1860 = !DILocation(line: 80, column: 14, scope: !1861, inlinedAt: !1832)
!1861 = distinct !DILexicalBlock(scope: !1843, file: !337, line: 79, column: 12)
!1862 = !DILocation(line: 80, column: 5, scope: !1861, inlinedAt: !1832)
!1863 = !DILocation(line: 83, column: 1, scope: !336, inlinedAt: !1832)
!1864 = !DILocation(line: 35, column: 3, scope: !1825)
!1865 = !DILocation(line: 60, column: 27, scope: !336)
!1866 = !DILocation(line: 60, column: 38, scope: !336)
!1867 = !DILocation(line: 62, column: 9, scope: !336)
!1868 = !DILocation(line: 64, column: 3, scope: !336)
!1869 = !DILocation(line: 64, column: 20, scope: !336)
!1870 = !DILocation(line: 67, column: 18, scope: !336)
!1871 = !DILocation(line: 68, column: 12, scope: !336)
!1872 = !DILocation(line: 65, column: 7, scope: !336)
!1873 = !DILocation(line: 69, column: 8, scope: !1843)
!1874 = !DILocation(line: 69, column: 7, scope: !336)
!1875 = !DILocation(line: 74, column: 16, scope: !1846)
!1876 = !DILocation(line: 74, column: 16, scope: !1849)
!1877 = !DILocation(line: 74, column: 16, scope: !1851)
!1878 = !DILocation(line: 75, column: 12, scope: !1853)
!1879 = !DILocation(line: 75, column: 22, scope: !1880)
!1880 = !DILexicalBlockFile(scope: !1853, file: !337, discriminator: 1)
!1881 = !DILocation(line: 75, column: 19, scope: !1853)
!1882 = !DILocation(line: 76, column: 18, scope: !1853)
!1883 = !DILocation(line: 76, column: 9, scope: !1853)
!1884 = !DILocation(line: 77, column: 21, scope: !1846)
!1885 = !DILocation(line: 77, column: 7, scope: !1846)
!1886 = !DILocation(line: 78, column: 5, scope: !1846)
!1887 = !DILocation(line: 79, column: 12, scope: !1861)
!1888 = !DILocation(line: 79, column: 12, scope: !1843)
!1889 = !DILocation(line: 80, column: 14, scope: !1861)
!1890 = !DILocation(line: 80, column: 5, scope: !1861)
!1891 = !DILocation(line: 83, column: 1, scope: !336)
!1892 = !DILocation(line: 82, column: 3, scope: !336)
!1893 = distinct !DISubprogram(name: "ch_strerror", scope: !337, file: !337, line: 87, type: !1894, isLocal: false, isDefinition: true, scopeLine: 88, flags: DIFlagPrototyped, isOptimized: true, unit: !331, variables: !327)
!1894 = !DISubroutineType(types: !1895)
!1895 = !{!36}
!1896 = !DILocation(line: 89, column: 24, scope: !1893)
!1897 = !DILocation(line: 89, column: 10, scope: !1893)
!1898 = !DILocation(line: 89, column: 3, scope: !1893)
!1899 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !379, file: !379, line: 41, type: !85, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !374, variables: !1900)
!1900 = !{!1901}
!1901 = !DILocalVariable(name: "file", arg: 1, scope: !1899, file: !379, line: 41, type: !36)
!1902 = !DILocation(line: 41, column: 41, scope: !1899)
!1903 = !DILocation(line: 43, column: 13, scope: !1899)
!1904 = !DILocation(line: 44, column: 1, scope: !1899)
!1905 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !379, file: !379, line: 78, type: !1906, isLocal: false, isDefinition: true, scopeLine: 79, flags: DIFlagPrototyped, isOptimized: true, unit: !374, variables: !1908)
!1906 = !DISubroutineType(types: !1907)
!1907 = !{null, !47}
!1908 = !{!1909}
!1909 = !DILocalVariable(name: "ignore", arg: 1, scope: !1905, file: !379, line: 78, type: !47)
!1910 = !DIExpression(DW_OP_LLVM_fragment, 0, 1)
!1911 = !DILocation(line: 78, column: 37, scope: !1905)
!1912 = !DILocation(line: 80, column: 16, scope: !1905)
!1913 = !{!1914, !1914, i64 0}
!1914 = !{!"_Bool", !894, i64 0}
!1915 = !DILocation(line: 81, column: 1, scope: !1905)
!1916 = distinct !DISubprogram(name: "close_stdout", scope: !379, file: !379, line: 107, type: !1141, isLocal: false, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: true, unit: !374, variables: !1917)
!1917 = !{!1918}
!1918 = !DILocalVariable(name: "write_error", scope: !1919, file: !379, line: 112, type: !36)
!1919 = distinct !DILexicalBlock(scope: !1920, file: !379, line: 111, column: 5)
!1920 = distinct !DILexicalBlock(scope: !1916, file: !379, line: 109, column: 7)
!1921 = !DILocation(line: 109, column: 21, scope: !1920)
!1922 = !DILocation(line: 109, column: 7, scope: !1920)
!1923 = !DILocation(line: 109, column: 29, scope: !1920)
!1924 = !DILocation(line: 110, column: 7, scope: !1920)
!1925 = !DILocation(line: 110, column: 12, scope: !1926)
!1926 = !DILexicalBlockFile(scope: !1920, file: !379, discriminator: 1)
!1927 = !{i8 0, i8 2}
!1928 = !DILocation(line: 114, column: 19, scope: !1929)
!1929 = distinct !DILexicalBlock(scope: !1919, file: !379, line: 113, column: 11)
!1930 = !DILocation(line: 110, column: 25, scope: !1926)
!1931 = !DILocation(line: 110, column: 28, scope: !1932)
!1932 = !DILexicalBlockFile(scope: !1920, file: !379, discriminator: 2)
!1933 = !DILocation(line: 110, column: 34, scope: !1932)
!1934 = !DILocation(line: 109, column: 7, scope: !1935)
!1935 = !DILexicalBlockFile(scope: !1916, file: !379, discriminator: 1)
!1936 = !DILocation(line: 112, column: 33, scope: !1919)
!1937 = !DILocation(line: 112, column: 19, scope: !1919)
!1938 = !DILocation(line: 113, column: 11, scope: !1929)
!1939 = !DILocation(line: 113, column: 11, scope: !1919)
!1940 = !DILocation(line: 114, column: 36, scope: !1941)
!1941 = !DILexicalBlockFile(scope: !1929, file: !379, discriminator: 1)
!1942 = !DILocation(line: 114, column: 9, scope: !1943)
!1943 = !DILexicalBlockFile(scope: !1929, file: !379, discriminator: 2)
!1944 = !DILocation(line: 114, column: 9, scope: !1929)
!1945 = !DILocation(line: 117, column: 9, scope: !1941)
!1946 = !DILocation(line: 119, column: 14, scope: !1919)
!1947 = !DILocation(line: 119, column: 7, scope: !1919)
!1948 = !DILocation(line: 122, column: 22, scope: !1949)
!1949 = distinct !DILexicalBlock(scope: !1916, file: !379, line: 122, column: 8)
!1950 = !DILocation(line: 122, column: 8, scope: !1949)
!1951 = !DILocation(line: 122, column: 30, scope: !1949)
!1952 = !DILocation(line: 122, column: 8, scope: !1916)
!1953 = !DILocation(line: 123, column: 13, scope: !1949)
!1954 = !DILocation(line: 123, column: 6, scope: !1949)
!1955 = !DILocation(line: 124, column: 1, scope: !1916)
!1956 = distinct !DISubprogram(name: "hard_locale", scope: !1957, file: !1957, line: 38, type: !1490, isLocal: false, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, unit: !814, variables: !1958)
!1957 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1958 = !{!1959, !1960, !1961, !1962, !1969, !1970, !1972, !1973, !1975, !1976, !1978}
!1959 = !DILocalVariable(name: "category", arg: 1, scope: !1956, file: !1957, line: 38, type: !80)
!1960 = !DILocalVariable(name: "hard", scope: !1956, file: !1957, line: 40, type: !47)
!1961 = !DILocalVariable(name: "p", scope: !1956, file: !1957, line: 41, type: !36)
!1962 = !DILocalVariable(name: "__s1_len", scope: !1963, file: !1957, line: 47, type: !28)
!1963 = distinct !DILexicalBlock(scope: !1964, file: !1957, line: 47, column: 15)
!1964 = distinct !DILexicalBlock(scope: !1965, file: !1957, line: 47, column: 15)
!1965 = distinct !DILexicalBlock(scope: !1966, file: !1957, line: 46, column: 9)
!1966 = distinct !DILexicalBlock(scope: !1967, file: !1957, line: 45, column: 11)
!1967 = distinct !DILexicalBlock(scope: !1968, file: !1957, line: 44, column: 5)
!1968 = distinct !DILexicalBlock(scope: !1956, file: !1957, line: 43, column: 7)
!1969 = !DILocalVariable(name: "__s2_len", scope: !1963, file: !1957, line: 47, type: !28)
!1970 = !DILocalVariable(name: "__s2", scope: !1971, file: !1957, line: 47, type: !33)
!1971 = distinct !DILexicalBlock(scope: !1963, file: !1957, line: 47, column: 15)
!1972 = !DILocalVariable(name: "__result", scope: !1971, file: !1957, line: 47, type: !80)
!1973 = !DILocalVariable(name: "__s1_len", scope: !1974, file: !1957, line: 47, type: !28)
!1974 = distinct !DILexicalBlock(scope: !1964, file: !1957, line: 47, column: 39)
!1975 = !DILocalVariable(name: "__s2_len", scope: !1974, file: !1957, line: 47, type: !28)
!1976 = !DILocalVariable(name: "__s2", scope: !1977, file: !1957, line: 47, type: !33)
!1977 = distinct !DILexicalBlock(scope: !1974, file: !1957, line: 47, column: 39)
!1978 = !DILocalVariable(name: "__result", scope: !1977, file: !1957, line: 47, type: !80)
!1979 = !DILocation(line: 38, column: 18, scope: !1956)
!1980 = !DILocation(line: 40, column: 8, scope: !1956)
!1981 = !DILocation(line: 41, column: 19, scope: !1956)
!1982 = !DILocation(line: 41, column: 15, scope: !1956)
!1983 = !DILocation(line: 43, column: 7, scope: !1968)
!1984 = !DILocation(line: 43, column: 7, scope: !1956)
!1985 = !DILocation(line: 47, column: 15, scope: !1963)
!1986 = !DILocation(line: 47, column: 15, scope: !1971)
!1987 = !DILocation(line: 47, column: 15, scope: !1988)
!1988 = !DILexicalBlockFile(scope: !1971, file: !1957, discriminator: 2)
!1989 = !DILocation(line: 47, column: 15, scope: !1990)
!1990 = !DILexicalBlockFile(scope: !1991, file: !1957, discriminator: 3)
!1991 = distinct !DILexicalBlock(scope: !1971, file: !1957, line: 47, column: 15)
!1992 = !DILocation(line: 47, column: 15, scope: !1993)
!1993 = !DILexicalBlockFile(scope: !1991, file: !1957, discriminator: 2)
!1994 = !DILocation(line: 47, column: 15, scope: !1995)
!1995 = !DILexicalBlockFile(scope: !1996, file: !1957, discriminator: 4)
!1996 = distinct !DILexicalBlock(scope: !1991, file: !1957, line: 47, column: 15)
!1997 = !DILocation(line: 47, column: 15, scope: !1998)
!1998 = !DILexicalBlockFile(scope: !1963, file: !1957, discriminator: 11)
!1999 = !DILocation(line: 47, column: 36, scope: !2000)
!2000 = !DILexicalBlockFile(scope: !1964, file: !1957, discriminator: 13)
!2001 = !DILocation(line: 47, column: 39, scope: !1974)
!2002 = !DILocation(line: 47, column: 39, scope: !2003)
!2003 = !DILexicalBlockFile(scope: !1974, file: !1957, discriminator: 26)
!2004 = !DILocation(line: 47, column: 59, scope: !2005)
!2005 = !DILexicalBlockFile(scope: !1964, file: !1957, discriminator: 27)
!2006 = !DILocation(line: 47, column: 15, scope: !2007)
!2007 = !DILexicalBlockFile(scope: !1965, file: !1957, discriminator: 27)
!2008 = !DILocation(line: 48, column: 13, scope: !1964)
!2009 = !DILocation(line: 71, column: 3, scope: !1956)
!2010 = distinct !DISubprogram(name: "imaxtostr", scope: !2011, file: !2011, line: 36, type: !2012, isLocal: false, isDefinition: true, scopeLine: 37, flags: DIFlagPrototyped, isOptimized: true, unit: !817, variables: !2014)
!2011 = !DIFile(filename: "./lib/anytostr.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2012 = !DISubroutineType(types: !2013)
!2013 = !{!25, !820, !25}
!2014 = !{!2015, !2016, !2017}
!2015 = !DILocalVariable(name: "i", arg: 1, scope: !2010, file: !2011, line: 36, type: !820)
!2016 = !DILocalVariable(name: "buf", arg: 2, scope: !2010, file: !2011, line: 36, type: !25)
!2017 = !DILocalVariable(name: "p", scope: !2010, file: !2011, line: 38, type: !25)
!2018 = !DILocation(line: 36, column: 19, scope: !2010)
!2019 = !DILocation(line: 36, column: 28, scope: !2010)
!2020 = !DILocation(line: 38, column: 17, scope: !2010)
!2021 = !DILocation(line: 38, column: 9, scope: !2010)
!2022 = !DILocation(line: 39, column: 6, scope: !2010)
!2023 = !DILocation(line: 41, column: 9, scope: !2024)
!2024 = distinct !DILexicalBlock(scope: !2010, file: !2011, line: 41, column: 7)
!2025 = !DILocation(line: 41, column: 7, scope: !2010)
!2026 = distinct !{!2026, !2027, !2029}
!2027 = !DILocation(line: 51, column: 7, scope: !2028)
!2028 = distinct !DILexicalBlock(scope: !2024, file: !2011, line: 50, column: 5)
!2029 = !DILocation(line: 53, column: 28, scope: !2028)
!2030 = !DILocation(line: 44, column: 24, scope: !2031)
!2031 = distinct !DILexicalBlock(scope: !2024, file: !2011, line: 42, column: 5)
!2032 = !DILocation(line: 44, column: 20, scope: !2031)
!2033 = !DILocation(line: 44, column: 16, scope: !2031)
!2034 = !DILocation(line: 44, column: 10, scope: !2031)
!2035 = !DILocation(line: 44, column: 14, scope: !2031)
!2036 = !DILocation(line: 45, column: 17, scope: !2031)
!2037 = !DILocation(line: 45, column: 24, scope: !2031)
!2038 = !DILocation(line: 44, column: 9, scope: !2039)
!2039 = !DILexicalBlockFile(scope: !2031, file: !2011, discriminator: 1)
!2040 = distinct !{!2040, !2041, !2042}
!2041 = !DILocation(line: 43, column: 7, scope: !2031)
!2042 = !DILocation(line: 45, column: 28, scope: !2031)
!2043 = !DILocation(line: 47, column: 8, scope: !2031)
!2044 = !DILocation(line: 47, column: 12, scope: !2031)
!2045 = !DILocation(line: 48, column: 5, scope: !2031)
!2046 = !DILocation(line: 52, column: 24, scope: !2028)
!2047 = !DILocation(line: 52, column: 20, scope: !2028)
!2048 = !DILocation(line: 52, column: 16, scope: !2028)
!2049 = !DILocation(line: 52, column: 10, scope: !2028)
!2050 = !DILocation(line: 52, column: 14, scope: !2028)
!2051 = !DILocation(line: 53, column: 17, scope: !2028)
!2052 = !DILocation(line: 53, column: 24, scope: !2028)
!2053 = !DILocation(line: 52, column: 9, scope: !2054)
!2054 = !DILexicalBlockFile(scope: !2028, file: !2011, discriminator: 1)
!2055 = !DILocation(line: 56, column: 3, scope: !2010)
!2056 = distinct !DISubprogram(name: "set_program_name", scope: !393, file: !393, line: 39, type: !85, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !389, variables: !2057)
!2057 = !{!2058, !2059, !2060}
!2058 = !DILocalVariable(name: "argv0", arg: 1, scope: !2056, file: !393, line: 39, type: !36)
!2059 = !DILocalVariable(name: "slash", scope: !2056, file: !393, line: 46, type: !36)
!2060 = !DILocalVariable(name: "base", scope: !2056, file: !393, line: 47, type: !36)
!2061 = !DILocation(line: 39, column: 31, scope: !2056)
!2062 = !DILocation(line: 51, column: 13, scope: !2063)
!2063 = distinct !DILexicalBlock(scope: !2056, file: !393, line: 51, column: 7)
!2064 = !DILocation(line: 51, column: 7, scope: !2056)
!2065 = !DILocation(line: 55, column: 14, scope: !2066)
!2066 = distinct !DILexicalBlock(scope: !2063, file: !393, line: 52, column: 5)
!2067 = !DILocation(line: 54, column: 7, scope: !2066)
!2068 = !DILocation(line: 56, column: 7, scope: !2066)
!2069 = !DILocation(line: 59, column: 11, scope: !2056)
!2070 = !DILocation(line: 46, column: 15, scope: !2056)
!2071 = !DILocation(line: 60, column: 17, scope: !2056)
!2072 = !DILocation(line: 60, column: 33, scope: !2073)
!2073 = !DILexicalBlockFile(scope: !2056, file: !393, discriminator: 1)
!2074 = !DILocation(line: 60, column: 11, scope: !2056)
!2075 = !DILocation(line: 47, column: 15, scope: !2056)
!2076 = !DILocation(line: 61, column: 12, scope: !2077)
!2077 = distinct !DILexicalBlock(scope: !2056, file: !393, line: 61, column: 7)
!2078 = !DILocation(line: 61, column: 20, scope: !2077)
!2079 = !DILocation(line: 61, column: 25, scope: !2077)
!2080 = !DILocation(line: 61, column: 28, scope: !2081)
!2081 = !DILexicalBlockFile(scope: !2077, file: !393, discriminator: 1)
!2082 = !DILocation(line: 61, column: 61, scope: !2081)
!2083 = !DILocation(line: 61, column: 7, scope: !2073)
!2084 = !DILocation(line: 64, column: 11, scope: !2085)
!2085 = distinct !DILexicalBlock(scope: !2086, file: !393, line: 64, column: 11)
!2086 = distinct !DILexicalBlock(scope: !2077, file: !393, line: 62, column: 5)
!2087 = !DILocation(line: 64, column: 36, scope: !2085)
!2088 = !DILocation(line: 64, column: 11, scope: !2086)
!2089 = !DILocation(line: 66, column: 24, scope: !2090)
!2090 = distinct !DILexicalBlock(scope: !2085, file: !393, line: 65, column: 9)
!2091 = !DILocation(line: 70, column: 41, scope: !2090)
!2092 = !DILocation(line: 72, column: 9, scope: !2090)
!2093 = !DILocation(line: 84, column: 16, scope: !2056)
!2094 = !DILocation(line: 90, column: 27, scope: !2056)
!2095 = !DILocation(line: 92, column: 1, scope: !2056)
!2096 = distinct !DISubprogram(name: "clone_quoting_options", scope: !423, file: !423, line: 114, type: !2097, isLocal: false, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, unit: !396, variables: !2100)
!2097 = !DISubroutineType(types: !2098)
!2098 = !{!2099, !2099}
!2099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !430, size: 64)
!2100 = !{!2101, !2102, !2103}
!2101 = !DILocalVariable(name: "o", arg: 1, scope: !2096, file: !423, line: 114, type: !2099)
!2102 = !DILocalVariable(name: "e", scope: !2096, file: !423, line: 116, type: !80)
!2103 = !DILocalVariable(name: "p", scope: !2096, file: !423, line: 117, type: !2099)
!2104 = !DILocation(line: 114, column: 48, scope: !2096)
!2105 = !DILocation(line: 116, column: 11, scope: !2096)
!2106 = !DILocation(line: 116, column: 7, scope: !2096)
!2107 = !DILocation(line: 117, column: 40, scope: !2096)
!2108 = !DILocation(line: 117, column: 40, scope: !2109)
!2109 = !DILexicalBlockFile(scope: !2096, file: !423, discriminator: 3)
!2110 = !DILocation(line: 117, column: 31, scope: !2109)
!2111 = !DILocation(line: 117, column: 27, scope: !2096)
!2112 = !DILocation(line: 119, column: 9, scope: !2096)
!2113 = !DILocation(line: 120, column: 3, scope: !2096)
!2114 = distinct !DISubprogram(name: "get_quoting_style", scope: !423, file: !423, line: 125, type: !2115, isLocal: false, isDefinition: true, scopeLine: 126, flags: DIFlagPrototyped, isOptimized: true, unit: !396, variables: !2119)
!2115 = !DISubroutineType(types: !2116)
!2116 = !{!10, !2117}
!2117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2118, size: 64)
!2118 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !430)
!2119 = !{!2120}
!2120 = !DILocalVariable(name: "o", arg: 1, scope: !2114, file: !423, line: 125, type: !2117)
!2121 = !DILocation(line: 125, column: 50, scope: !2114)
!2122 = !DILocation(line: 127, column: 11, scope: !2114)
!2123 = !DILocation(line: 127, column: 46, scope: !2124)
!2124 = !DILexicalBlockFile(scope: !2114, file: !423, discriminator: 3)
!2125 = !{!2126, !894, i64 0}
!2126 = !{!"quoting_options", !894, i64 0, !1003, i64 4, !894, i64 8, !893, i64 40, !893, i64 48}
!2127 = !DILocation(line: 127, column: 3, scope: !2124)
!2128 = distinct !DISubprogram(name: "set_quoting_style", scope: !423, file: !423, line: 133, type: !2129, isLocal: false, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: true, unit: !396, variables: !2131)
!2129 = !DISubroutineType(types: !2130)
!2130 = !{null, !2099, !10}
!2131 = !{!2132, !2133}
!2132 = !DILocalVariable(name: "o", arg: 1, scope: !2128, file: !423, line: 133, type: !2099)
!2133 = !DILocalVariable(name: "s", arg: 2, scope: !2128, file: !423, line: 133, type: !10)
!2134 = !DILocation(line: 133, column: 44, scope: !2128)
!2135 = !DILocation(line: 133, column: 66, scope: !2128)
!2136 = !DILocation(line: 135, column: 4, scope: !2128)
!2137 = !DILocation(line: 135, column: 39, scope: !2138)
!2138 = !DILexicalBlockFile(scope: !2128, file: !423, discriminator: 3)
!2139 = !DILocation(line: 135, column: 45, scope: !2138)
!2140 = !DILocation(line: 136, column: 1, scope: !2128)
!2141 = distinct !DISubprogram(name: "set_char_quoting", scope: !423, file: !423, line: 144, type: !2142, isLocal: false, isDefinition: true, scopeLine: 145, flags: DIFlagPrototyped, isOptimized: true, unit: !396, variables: !2144)
!2142 = !DISubroutineType(types: !2143)
!2143 = !{!80, !2099, !26, !80}
!2144 = !{!2145, !2146, !2147, !2148, !2149, !2151, !2152}
!2145 = !DILocalVariable(name: "o", arg: 1, scope: !2141, file: !423, line: 144, type: !2099)
!2146 = !DILocalVariable(name: "c", arg: 2, scope: !2141, file: !423, line: 144, type: !26)
!2147 = !DILocalVariable(name: "i", arg: 3, scope: !2141, file: !423, line: 144, type: !80)
!2148 = !DILocalVariable(name: "uc", scope: !2141, file: !423, line: 146, type: !35)
!2149 = !DILocalVariable(name: "p", scope: !2141, file: !423, line: 147, type: !2150)
!2150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64)
!2151 = !DILocalVariable(name: "shift", scope: !2141, file: !423, line: 149, type: !80)
!2152 = !DILocalVariable(name: "r", scope: !2141, file: !423, line: 150, type: !80)
!2153 = !DILocation(line: 144, column: 43, scope: !2141)
!2154 = !DILocation(line: 144, column: 51, scope: !2141)
!2155 = !DILocation(line: 144, column: 58, scope: !2141)
!2156 = !DILocation(line: 146, column: 17, scope: !2141)
!2157 = !DILocation(line: 148, column: 6, scope: !2141)
!2158 = !DILocation(line: 148, column: 62, scope: !2159)
!2159 = !DILexicalBlockFile(scope: !2141, file: !423, discriminator: 3)
!2160 = !DILocation(line: 148, column: 57, scope: !2159)
!2161 = !DILocation(line: 147, column: 17, scope: !2141)
!2162 = !DILocation(line: 149, column: 18, scope: !2141)
!2163 = !DILocation(line: 149, column: 15, scope: !2141)
!2164 = !DILocation(line: 149, column: 7, scope: !2141)
!2165 = !DILocation(line: 150, column: 12, scope: !2141)
!2166 = !DILocation(line: 150, column: 15, scope: !2141)
!2167 = !DILocation(line: 150, column: 25, scope: !2141)
!2168 = !DILocation(line: 150, column: 7, scope: !2141)
!2169 = !DILocation(line: 151, column: 13, scope: !2141)
!2170 = !DILocation(line: 151, column: 18, scope: !2141)
!2171 = !DILocation(line: 151, column: 23, scope: !2141)
!2172 = !DILocation(line: 151, column: 6, scope: !2141)
!2173 = !DILocation(line: 152, column: 3, scope: !2141)
!2174 = distinct !DISubprogram(name: "set_quoting_flags", scope: !423, file: !423, line: 160, type: !2175, isLocal: false, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !396, variables: !2177)
!2175 = !DISubroutineType(types: !2176)
!2176 = !{!80, !2099, !80}
!2177 = !{!2178, !2179, !2180}
!2178 = !DILocalVariable(name: "o", arg: 1, scope: !2174, file: !423, line: 160, type: !2099)
!2179 = !DILocalVariable(name: "i", arg: 2, scope: !2174, file: !423, line: 160, type: !80)
!2180 = !DILocalVariable(name: "r", scope: !2174, file: !423, line: 162, type: !80)
!2181 = !DILocation(line: 160, column: 44, scope: !2174)
!2182 = !DILocation(line: 160, column: 51, scope: !2174)
!2183 = !DILocation(line: 163, column: 8, scope: !2184)
!2184 = distinct !DILexicalBlock(scope: !2174, file: !423, line: 163, column: 7)
!2185 = !DILocation(line: 163, column: 7, scope: !2174)
!2186 = !DILocation(line: 165, column: 10, scope: !2174)
!2187 = !{!2126, !1003, i64 4}
!2188 = !DILocation(line: 162, column: 7, scope: !2174)
!2189 = !DILocation(line: 166, column: 12, scope: !2174)
!2190 = !DILocation(line: 167, column: 3, scope: !2174)
!2191 = distinct !DISubprogram(name: "set_custom_quoting", scope: !423, file: !423, line: 171, type: !2192, isLocal: false, isDefinition: true, scopeLine: 173, flags: DIFlagPrototyped, isOptimized: true, unit: !396, variables: !2194)
!2192 = !DISubroutineType(types: !2193)
!2193 = !{null, !2099, !36, !36}
!2194 = !{!2195, !2196, !2197}
!2195 = !DILocalVariable(name: "o", arg: 1, scope: !2191, file: !423, line: 171, type: !2099)
!2196 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2191, file: !423, line: 172, type: !36)
!2197 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2191, file: !423, line: 172, type: !36)
!2198 = !DILocation(line: 171, column: 45, scope: !2191)
!2199 = !DILocation(line: 172, column: 33, scope: !2191)
!2200 = !DILocation(line: 172, column: 57, scope: !2191)
!2201 = !DILocation(line: 174, column: 8, scope: !2202)
!2202 = distinct !DILexicalBlock(scope: !2191, file: !423, line: 174, column: 7)
!2203 = !DILocation(line: 174, column: 7, scope: !2191)
!2204 = !DILocation(line: 176, column: 6, scope: !2191)
!2205 = !DILocation(line: 176, column: 12, scope: !2191)
!2206 = !DILocation(line: 177, column: 8, scope: !2207)
!2207 = distinct !DILexicalBlock(scope: !2191, file: !423, line: 177, column: 7)
!2208 = !DILocation(line: 177, column: 23, scope: !2209)
!2209 = !DILexicalBlockFile(scope: !2207, file: !423, discriminator: 1)
!2210 = !DILocation(line: 177, column: 19, scope: !2207)
!2211 = !DILocation(line: 178, column: 5, scope: !2207)
!2212 = !DILocation(line: 179, column: 6, scope: !2191)
!2213 = !DILocation(line: 179, column: 17, scope: !2191)
!2214 = !{!2126, !893, i64 40}
!2215 = !DILocation(line: 180, column: 6, scope: !2191)
!2216 = !DILocation(line: 180, column: 18, scope: !2191)
!2217 = !{!2126, !893, i64 48}
!2218 = !DILocation(line: 181, column: 1, scope: !2191)
!2219 = distinct !DISubprogram(name: "quotearg_buffer", scope: !423, file: !423, line: 776, type: !2220, isLocal: false, isDefinition: true, scopeLine: 779, flags: DIFlagPrototyped, isOptimized: true, unit: !396, variables: !2222)
!2220 = !DISubroutineType(types: !2221)
!2221 = !{!28, !25, !28, !36, !28, !2117}
!2222 = !{!2223, !2224, !2225, !2226, !2227, !2228, !2229, !2230}
!2223 = !DILocalVariable(name: "buffer", arg: 1, scope: !2219, file: !423, line: 776, type: !25)
!2224 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2219, file: !423, line: 776, type: !28)
!2225 = !DILocalVariable(name: "arg", arg: 3, scope: !2219, file: !423, line: 777, type: !36)
!2226 = !DILocalVariable(name: "argsize", arg: 4, scope: !2219, file: !423, line: 777, type: !28)
!2227 = !DILocalVariable(name: "o", arg: 5, scope: !2219, file: !423, line: 778, type: !2117)
!2228 = !DILocalVariable(name: "p", scope: !2219, file: !423, line: 780, type: !2117)
!2229 = !DILocalVariable(name: "e", scope: !2219, file: !423, line: 781, type: !80)
!2230 = !DILocalVariable(name: "r", scope: !2219, file: !423, line: 782, type: !28)
!2231 = !DILocation(line: 776, column: 24, scope: !2219)
!2232 = !DILocation(line: 776, column: 39, scope: !2219)
!2233 = !DILocation(line: 777, column: 30, scope: !2219)
!2234 = !DILocation(line: 777, column: 42, scope: !2219)
!2235 = !DILocation(line: 778, column: 48, scope: !2219)
!2236 = !DILocation(line: 780, column: 37, scope: !2219)
!2237 = !DILocation(line: 780, column: 33, scope: !2219)
!2238 = !DILocation(line: 781, column: 11, scope: !2219)
!2239 = !DILocation(line: 781, column: 7, scope: !2219)
!2240 = !DILocation(line: 783, column: 43, scope: !2219)
!2241 = !DILocation(line: 783, column: 53, scope: !2219)
!2242 = !DILocation(line: 783, column: 60, scope: !2219)
!2243 = !DILocation(line: 784, column: 43, scope: !2219)
!2244 = !DILocation(line: 784, column: 58, scope: !2219)
!2245 = !DILocation(line: 782, column: 14, scope: !2219)
!2246 = !DILocation(line: 782, column: 10, scope: !2219)
!2247 = !DILocation(line: 785, column: 9, scope: !2219)
!2248 = !DILocation(line: 786, column: 3, scope: !2219)
!2249 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !423, file: !423, line: 248, type: !2250, isLocal: true, isDefinition: true, scopeLine: 254, flags: DIFlagPrototyped, isOptimized: true, unit: !396, variables: !2254)
!2250 = !DISubroutineType(types: !2251)
!2251 = !{!28, !25, !28, !36, !28, !10, !80, !2252, !36, !36}
!2252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2253, size: 64)
!2253 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !203)
!2254 = !{!2255, !2256, !2257, !2258, !2259, !2260, !2261, !2262, !2263, !2264, !2265, !2266, !2267, !2268, !2269, !2270, !2271, !2272, !2273, !2274, !2275, !2279, !2280, !2281, !2282, !2283, !2286, !2287, !2301, !2304, !2305, !2312}
!2255 = !DILocalVariable(name: "buffer", arg: 1, scope: !2249, file: !423, line: 248, type: !25)
!2256 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2249, file: !423, line: 248, type: !28)
!2257 = !DILocalVariable(name: "arg", arg: 3, scope: !2249, file: !423, line: 249, type: !36)
!2258 = !DILocalVariable(name: "argsize", arg: 4, scope: !2249, file: !423, line: 249, type: !28)
!2259 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !2249, file: !423, line: 250, type: !10)
!2260 = !DILocalVariable(name: "flags", arg: 6, scope: !2249, file: !423, line: 250, type: !80)
!2261 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !2249, file: !423, line: 251, type: !2252)
!2262 = !DILocalVariable(name: "left_quote", arg: 8, scope: !2249, file: !423, line: 252, type: !36)
!2263 = !DILocalVariable(name: "right_quote", arg: 9, scope: !2249, file: !423, line: 253, type: !36)
!2264 = !DILocalVariable(name: "i", scope: !2249, file: !423, line: 255, type: !28)
!2265 = !DILocalVariable(name: "len", scope: !2249, file: !423, line: 256, type: !28)
!2266 = !DILocalVariable(name: "orig_buffersize", scope: !2249, file: !423, line: 257, type: !28)
!2267 = !DILocalVariable(name: "quote_string", scope: !2249, file: !423, line: 258, type: !36)
!2268 = !DILocalVariable(name: "quote_string_len", scope: !2249, file: !423, line: 259, type: !28)
!2269 = !DILocalVariable(name: "backslash_escapes", scope: !2249, file: !423, line: 260, type: !47)
!2270 = !DILocalVariable(name: "unibyte_locale", scope: !2249, file: !423, line: 261, type: !47)
!2271 = !DILocalVariable(name: "elide_outer_quotes", scope: !2249, file: !423, line: 262, type: !47)
!2272 = !DILocalVariable(name: "pending_shell_escape_end", scope: !2249, file: !423, line: 263, type: !47)
!2273 = !DILocalVariable(name: "encountered_single_quote", scope: !2249, file: !423, line: 264, type: !47)
!2274 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !2249, file: !423, line: 265, type: !47)
!2275 = !DILocalVariable(name: "c", scope: !2276, file: !423, line: 394, type: !35)
!2276 = distinct !DILexicalBlock(scope: !2277, file: !423, line: 393, column: 5)
!2277 = distinct !DILexicalBlock(scope: !2278, file: !423, line: 392, column: 3)
!2278 = distinct !DILexicalBlock(scope: !2249, file: !423, line: 392, column: 3)
!2279 = !DILocalVariable(name: "esc", scope: !2276, file: !423, line: 395, type: !35)
!2280 = !DILocalVariable(name: "is_right_quote", scope: !2276, file: !423, line: 396, type: !47)
!2281 = !DILocalVariable(name: "escaping", scope: !2276, file: !423, line: 397, type: !47)
!2282 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !2276, file: !423, line: 398, type: !47)
!2283 = !DILocalVariable(name: "m", scope: !2284, file: !423, line: 602, type: !28)
!2284 = distinct !DILexicalBlock(scope: !2285, file: !423, line: 600, column: 11)
!2285 = distinct !DILexicalBlock(scope: !2276, file: !423, line: 418, column: 9)
!2286 = !DILocalVariable(name: "printable", scope: !2284, file: !423, line: 604, type: !47)
!2287 = !DILocalVariable(name: "mbstate", scope: !2288, file: !423, line: 613, type: !2290)
!2288 = distinct !DILexicalBlock(scope: !2289, file: !423, line: 612, column: 15)
!2289 = distinct !DILexicalBlock(scope: !2284, file: !423, line: 606, column: 17)
!2290 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !2291, line: 107, baseType: !2292)
!2291 = !DIFile(filename: "/usr/include/wchar.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2292 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !2291, line: 95, baseType: !2293)
!2293 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2291, line: 83, size: 64, elements: !2294)
!2294 = !{!2295, !2296}
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !2293, file: !2291, line: 85, baseType: !80, size: 32)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !2293, file: !2291, line: 94, baseType: !2297, size: 32, offset: 32)
!2297 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2293, file: !2291, line: 86, size: 32, elements: !2298)
!2298 = !{!2299, !2300}
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !2297, file: !2291, line: 89, baseType: !203, size: 32)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !2297, file: !2291, line: 93, baseType: !162, size: 32)
!2301 = !DILocalVariable(name: "w", scope: !2302, file: !423, line: 623, type: !2303)
!2302 = distinct !DILexicalBlock(scope: !2288, file: !423, line: 622, column: 19)
!2303 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !29, line: 90, baseType: !80)
!2304 = !DILocalVariable(name: "bytes", scope: !2302, file: !423, line: 624, type: !28)
!2305 = !DILocalVariable(name: "j", scope: !2306, file: !423, line: 649, type: !28)
!2306 = distinct !DILexicalBlock(scope: !2307, file: !423, line: 648, column: 27)
!2307 = distinct !DILexicalBlock(scope: !2308, file: !423, line: 646, column: 29)
!2308 = distinct !DILexicalBlock(scope: !2309, file: !423, line: 641, column: 23)
!2309 = distinct !DILexicalBlock(scope: !2310, file: !423, line: 633, column: 30)
!2310 = distinct !DILexicalBlock(scope: !2311, file: !423, line: 628, column: 30)
!2311 = distinct !DILexicalBlock(scope: !2302, file: !423, line: 626, column: 25)
!2312 = !DILocalVariable(name: "ilim", scope: !2313, file: !423, line: 676, type: !28)
!2313 = distinct !DILexicalBlock(scope: !2314, file: !423, line: 673, column: 15)
!2314 = distinct !DILexicalBlock(scope: !2284, file: !423, line: 672, column: 17)
!2315 = !DILocation(line: 248, column: 33, scope: !2249)
!2316 = !DILocation(line: 248, column: 48, scope: !2249)
!2317 = !DILocation(line: 249, column: 39, scope: !2249)
!2318 = !DILocation(line: 249, column: 51, scope: !2249)
!2319 = !DILocation(line: 250, column: 46, scope: !2249)
!2320 = !DILocation(line: 250, column: 65, scope: !2249)
!2321 = !DILocation(line: 251, column: 47, scope: !2249)
!2322 = !DILocation(line: 252, column: 39, scope: !2249)
!2323 = !DILocation(line: 253, column: 39, scope: !2249)
!2324 = !DILocation(line: 256, column: 10, scope: !2249)
!2325 = !DILocation(line: 257, column: 10, scope: !2249)
!2326 = !DILocation(line: 258, column: 15, scope: !2249)
!2327 = !DILocation(line: 259, column: 10, scope: !2249)
!2328 = !DILocation(line: 260, column: 8, scope: !2249)
!2329 = !DILocation(line: 261, column: 25, scope: !2249)
!2330 = !DILocation(line: 261, column: 36, scope: !2249)
!2331 = !DILocation(line: 262, column: 8, scope: !2249)
!2332 = !DILocation(line: 263, column: 8, scope: !2249)
!2333 = !DILocation(line: 264, column: 8, scope: !2249)
!2334 = !DILocation(line: 265, column: 8, scope: !2249)
!2335 = !DILocation(line: 265, column: 3, scope: !2249)
!2336 = !DILocation(line: 308, column: 3, scope: !2249)
!2337 = !DILocation(line: 315, column: 11, scope: !2338)
!2338 = distinct !DILexicalBlock(scope: !2249, file: !423, line: 309, column: 5)
!2339 = !DILocation(line: 315, column: 12, scope: !2340)
!2340 = distinct !DILexicalBlock(scope: !2338, file: !423, line: 315, column: 11)
!2341 = !DILocation(line: 316, column: 9, scope: !2342)
!2342 = !DILexicalBlockFile(scope: !2343, file: !423, discriminator: 1)
!2343 = distinct !DILexicalBlock(scope: !2344, file: !423, line: 316, column: 9)
!2344 = distinct !DILexicalBlock(scope: !2340, file: !423, line: 316, column: 9)
!2345 = !DILocation(line: 316, column: 9, scope: !2346)
!2346 = !DILexicalBlockFile(scope: !2344, file: !423, discriminator: 1)
!2347 = !DILocation(line: 316, column: 9, scope: !2348)
!2348 = !DILexicalBlockFile(scope: !2343, file: !423, discriminator: 2)
!2349 = !DILocation(line: 354, column: 26, scope: !2350)
!2350 = distinct !DILexicalBlock(scope: !2351, file: !423, line: 332, column: 11)
!2351 = distinct !DILexicalBlock(scope: !2352, file: !423, line: 331, column: 13)
!2352 = distinct !DILexicalBlock(scope: !2338, file: !423, line: 330, column: 7)
!2353 = !DILocation(line: 355, column: 27, scope: !2350)
!2354 = !DILocation(line: 356, column: 11, scope: !2350)
!2355 = !DILocation(line: 357, column: 14, scope: !2356)
!2356 = distinct !DILexicalBlock(scope: !2352, file: !423, line: 357, column: 13)
!2357 = !DILocation(line: 357, column: 13, scope: !2352)
!2358 = !DILocation(line: 358, column: 43, scope: !2359)
!2359 = !DILexicalBlockFile(scope: !2360, file: !423, discriminator: 1)
!2360 = distinct !DILexicalBlock(scope: !2361, file: !423, line: 358, column: 11)
!2361 = distinct !DILexicalBlock(scope: !2356, file: !423, line: 358, column: 11)
!2362 = !DILocation(line: 358, column: 11, scope: !2363)
!2363 = !DILexicalBlockFile(scope: !2361, file: !423, discriminator: 1)
!2364 = !DILocation(line: 359, column: 13, scope: !2365)
!2365 = !DILexicalBlockFile(scope: !2366, file: !423, discriminator: 1)
!2366 = distinct !DILexicalBlock(scope: !2367, file: !423, line: 359, column: 13)
!2367 = distinct !DILexicalBlock(scope: !2360, file: !423, line: 359, column: 13)
!2368 = !DILocation(line: 359, column: 13, scope: !2369)
!2369 = !DILexicalBlockFile(scope: !2367, file: !423, discriminator: 1)
!2370 = !DILocation(line: 359, column: 13, scope: !2371)
!2371 = !DILexicalBlockFile(scope: !2366, file: !423, discriminator: 2)
!2372 = !DILocation(line: 359, column: 13, scope: !2373)
!2373 = !DILexicalBlockFile(scope: !2367, file: !423, discriminator: 3)
!2374 = !DILocation(line: 358, column: 70, scope: !2375)
!2375 = !DILexicalBlockFile(scope: !2360, file: !423, discriminator: 2)
!2376 = distinct !{!2376, !2377, !2378}
!2377 = !DILocation(line: 358, column: 11, scope: !2361)
!2378 = !DILocation(line: 359, column: 13, scope: !2361)
!2379 = !DILocation(line: 362, column: 28, scope: !2352)
!2380 = !DILocation(line: 364, column: 7, scope: !2338)
!2381 = !DILocation(line: 367, column: 7, scope: !2338)
!2382 = !DILocation(line: 370, column: 7, scope: !2338)
!2383 = !DILocation(line: 373, column: 12, scope: !2384)
!2384 = distinct !DILexicalBlock(scope: !2338, file: !423, line: 373, column: 11)
!2385 = !DILocation(line: 373, column: 11, scope: !2338)
!2386 = !DILocation(line: 378, column: 12, scope: !2387)
!2387 = distinct !DILexicalBlock(scope: !2338, file: !423, line: 378, column: 11)
!2388 = !DILocation(line: 378, column: 11, scope: !2338)
!2389 = !DILocation(line: 379, column: 9, scope: !2390)
!2390 = !DILexicalBlockFile(scope: !2391, file: !423, discriminator: 1)
!2391 = distinct !DILexicalBlock(scope: !2392, file: !423, line: 379, column: 9)
!2392 = distinct !DILexicalBlock(scope: !2387, file: !423, line: 379, column: 9)
!2393 = !DILocation(line: 379, column: 9, scope: !2394)
!2394 = !DILexicalBlockFile(scope: !2392, file: !423, discriminator: 1)
!2395 = !DILocation(line: 379, column: 9, scope: !2396)
!2396 = !DILexicalBlockFile(scope: !2391, file: !423, discriminator: 2)
!2397 = !DILocation(line: 386, column: 7, scope: !2338)
!2398 = !DILocation(line: 389, column: 7, scope: !2338)
!2399 = !DILocation(line: 255, column: 10, scope: !2249)
!2400 = !DILocation(line: 392, column: 8, scope: !2278)
!2401 = !DILocation(line: 392, column: 27, scope: !2402)
!2402 = !DILexicalBlockFile(scope: !2277, file: !423, discriminator: 1)
!2403 = !DILocation(line: 392, column: 19, scope: !2402)
!2404 = !DILocation(line: 392, column: 60, scope: !2405)
!2405 = !DILexicalBlockFile(scope: !2277, file: !423, discriminator: 3)
!2406 = !DILocation(line: 392, column: 3, scope: !2407)
!2407 = !DILexicalBlockFile(scope: !2278, file: !423, discriminator: 4)
!2408 = !DILocation(line: 392, column: 41, scope: !2409)
!2409 = !DILexicalBlockFile(scope: !2277, file: !423, discriminator: 2)
!2410 = !DILocation(line: 392, column: 48, scope: !2409)
!2411 = !DILocation(line: 396, column: 12, scope: !2276)
!2412 = !DILocation(line: 397, column: 12, scope: !2276)
!2413 = !DILocation(line: 398, column: 12, scope: !2276)
!2414 = !DILocation(line: 401, column: 11, scope: !2415)
!2415 = distinct !DILexicalBlock(scope: !2276, file: !423, line: 400, column: 11)
!2416 = !DILocation(line: 403, column: 17, scope: !2417)
!2417 = !DILexicalBlockFile(scope: !2415, file: !423, discriminator: 1)
!2418 = !DILocation(line: 404, column: 39, scope: !2415)
!2419 = !DILocation(line: 408, column: 32, scope: !2415)
!2420 = !DILocation(line: 404, column: 19, scope: !2421)
!2421 = !DILexicalBlockFile(scope: !2415, file: !423, discriminator: 2)
!2422 = !DILocation(line: 404, column: 15, scope: !2423)
!2423 = !DILexicalBlockFile(scope: !2415, file: !423, discriminator: 4)
!2424 = !DILocation(line: 409, column: 11, scope: !2415)
!2425 = !DILocation(line: 409, column: 26, scope: !2417)
!2426 = !DILocation(line: 409, column: 14, scope: !2417)
!2427 = !DILocation(line: 400, column: 11, scope: !2428)
!2428 = !DILexicalBlockFile(scope: !2276, file: !423, discriminator: 1)
!2429 = !DILocation(line: 416, column: 11, scope: !2276)
!2430 = !DILocation(line: 394, column: 21, scope: !2276)
!2431 = !DILocation(line: 417, column: 7, scope: !2276)
!2432 = !DILocation(line: 420, column: 15, scope: !2285)
!2433 = !DILocation(line: 422, column: 15, scope: !2434)
!2434 = !DILexicalBlockFile(scope: !2435, file: !423, discriminator: 1)
!2435 = distinct !DILexicalBlock(scope: !2436, file: !423, line: 422, column: 15)
!2436 = distinct !DILexicalBlock(scope: !2437, file: !423, line: 421, column: 13)
!2437 = distinct !DILexicalBlock(scope: !2285, file: !423, line: 420, column: 15)
!2438 = !DILocation(line: 422, column: 15, scope: !2439)
!2439 = !DILexicalBlockFile(scope: !2440, file: !423, discriminator: 4)
!2440 = distinct !DILexicalBlock(scope: !2435, file: !423, line: 422, column: 15)
!2441 = !DILocation(line: 422, column: 15, scope: !2442)
!2442 = !DILexicalBlockFile(scope: !2440, file: !423, discriminator: 3)
!2443 = !DILocation(line: 422, column: 15, scope: !2444)
!2444 = !DILexicalBlockFile(scope: !2445, file: !423, discriminator: 6)
!2445 = distinct !DILexicalBlock(scope: !2446, file: !423, line: 422, column: 15)
!2446 = distinct !DILexicalBlock(scope: !2447, file: !423, line: 422, column: 15)
!2447 = distinct !DILexicalBlock(scope: !2440, file: !423, line: 422, column: 15)
!2448 = !DILocation(line: 422, column: 15, scope: !2449)
!2449 = !DILexicalBlockFile(scope: !2446, file: !423, discriminator: 6)
!2450 = !DILocation(line: 422, column: 15, scope: !2451)
!2451 = !DILexicalBlockFile(scope: !2445, file: !423, discriminator: 7)
!2452 = !DILocation(line: 422, column: 15, scope: !2453)
!2453 = !DILexicalBlockFile(scope: !2446, file: !423, discriminator: 8)
!2454 = !DILocation(line: 422, column: 15, scope: !2455)
!2455 = !DILexicalBlockFile(scope: !2456, file: !423, discriminator: 11)
!2456 = distinct !DILexicalBlock(scope: !2457, file: !423, line: 422, column: 15)
!2457 = distinct !DILexicalBlock(scope: !2447, file: !423, line: 422, column: 15)
!2458 = !DILocation(line: 422, column: 15, scope: !2459)
!2459 = !DILexicalBlockFile(scope: !2457, file: !423, discriminator: 11)
!2460 = !DILocation(line: 422, column: 15, scope: !2461)
!2461 = !DILexicalBlockFile(scope: !2456, file: !423, discriminator: 12)
!2462 = !DILocation(line: 422, column: 15, scope: !2463)
!2463 = !DILexicalBlockFile(scope: !2457, file: !423, discriminator: 13)
!2464 = !DILocation(line: 422, column: 15, scope: !2465)
!2465 = !DILexicalBlockFile(scope: !2466, file: !423, discriminator: 16)
!2466 = distinct !DILexicalBlock(scope: !2467, file: !423, line: 422, column: 15)
!2467 = distinct !DILexicalBlock(scope: !2447, file: !423, line: 422, column: 15)
!2468 = !DILocation(line: 422, column: 15, scope: !2469)
!2469 = !DILexicalBlockFile(scope: !2467, file: !423, discriminator: 16)
!2470 = !DILocation(line: 422, column: 15, scope: !2471)
!2471 = !DILexicalBlockFile(scope: !2466, file: !423, discriminator: 17)
!2472 = !DILocation(line: 422, column: 15, scope: !2473)
!2473 = !DILexicalBlockFile(scope: !2467, file: !423, discriminator: 18)
!2474 = !DILocation(line: 422, column: 15, scope: !2475)
!2475 = !DILexicalBlockFile(scope: !2447, file: !423, discriminator: 20)
!2476 = !DILocation(line: 422, column: 15, scope: !2477)
!2477 = !DILexicalBlockFile(scope: !2478, file: !423, discriminator: 22)
!2478 = distinct !DILexicalBlock(scope: !2479, file: !423, line: 422, column: 15)
!2479 = distinct !DILexicalBlock(scope: !2435, file: !423, line: 422, column: 15)
!2480 = !DILocation(line: 422, column: 15, scope: !2481)
!2481 = !DILexicalBlockFile(scope: !2479, file: !423, discriminator: 22)
!2482 = !DILocation(line: 422, column: 15, scope: !2483)
!2483 = !DILexicalBlockFile(scope: !2478, file: !423, discriminator: 23)
!2484 = !DILocation(line: 422, column: 15, scope: !2485)
!2485 = !DILexicalBlockFile(scope: !2479, file: !423, discriminator: 24)
!2486 = !DILocation(line: 430, column: 19, scope: !2487)
!2487 = distinct !DILexicalBlock(scope: !2436, file: !423, line: 429, column: 19)
!2488 = !DILocation(line: 430, column: 24, scope: !2489)
!2489 = !DILexicalBlockFile(scope: !2487, file: !423, discriminator: 1)
!2490 = !DILocation(line: 430, column: 28, scope: !2489)
!2491 = !DILocation(line: 430, column: 38, scope: !2489)
!2492 = !DILocation(line: 430, column: 48, scope: !2493)
!2493 = !DILexicalBlockFile(scope: !2487, file: !423, discriminator: 2)
!2494 = !DILocation(line: 430, column: 59, scope: !2493)
!2495 = !DILocation(line: 432, column: 19, scope: !2496)
!2496 = !DILexicalBlockFile(scope: !2497, file: !423, discriminator: 1)
!2497 = distinct !DILexicalBlock(scope: !2498, file: !423, line: 432, column: 19)
!2498 = distinct !DILexicalBlock(scope: !2499, file: !423, line: 432, column: 19)
!2499 = distinct !DILexicalBlock(scope: !2487, file: !423, line: 431, column: 17)
!2500 = !DILocation(line: 432, column: 19, scope: !2501)
!2501 = !DILexicalBlockFile(scope: !2498, file: !423, discriminator: 1)
!2502 = !DILocation(line: 432, column: 19, scope: !2503)
!2503 = !DILexicalBlockFile(scope: !2497, file: !423, discriminator: 2)
!2504 = !DILocation(line: 432, column: 19, scope: !2505)
!2505 = !DILexicalBlockFile(scope: !2498, file: !423, discriminator: 3)
!2506 = !DILocation(line: 433, column: 19, scope: !2507)
!2507 = !DILexicalBlockFile(scope: !2508, file: !423, discriminator: 1)
!2508 = distinct !DILexicalBlock(scope: !2509, file: !423, line: 433, column: 19)
!2509 = distinct !DILexicalBlock(scope: !2499, file: !423, line: 433, column: 19)
!2510 = !DILocation(line: 433, column: 19, scope: !2511)
!2511 = !DILexicalBlockFile(scope: !2509, file: !423, discriminator: 1)
!2512 = !DILocation(line: 433, column: 19, scope: !2513)
!2513 = !DILexicalBlockFile(scope: !2508, file: !423, discriminator: 2)
!2514 = !DILocation(line: 433, column: 19, scope: !2515)
!2515 = !DILexicalBlockFile(scope: !2509, file: !423, discriminator: 3)
!2516 = !DILocation(line: 434, column: 17, scope: !2499)
!2517 = !DILocation(line: 441, column: 20, scope: !2437)
!2518 = !DILocation(line: 446, column: 11, scope: !2285)
!2519 = !DILocation(line: 449, column: 19, scope: !2520)
!2520 = distinct !DILexicalBlock(scope: !2285, file: !423, line: 447, column: 13)
!2521 = !DILocation(line: 455, column: 19, scope: !2522)
!2522 = distinct !DILexicalBlock(scope: !2520, file: !423, line: 454, column: 19)
!2523 = !DILocation(line: 455, column: 24, scope: !2524)
!2524 = !DILexicalBlockFile(scope: !2522, file: !423, discriminator: 1)
!2525 = !DILocation(line: 455, column: 28, scope: !2524)
!2526 = !DILocation(line: 455, column: 38, scope: !2524)
!2527 = !DILocation(line: 455, column: 47, scope: !2528)
!2528 = !DILexicalBlockFile(scope: !2522, file: !423, discriminator: 2)
!2529 = !DILocation(line: 455, column: 41, scope: !2528)
!2530 = !DILocation(line: 455, column: 52, scope: !2528)
!2531 = !DILocation(line: 454, column: 19, scope: !2532)
!2532 = !DILexicalBlockFile(scope: !2520, file: !423, discriminator: 1)
!2533 = !DILocation(line: 456, column: 25, scope: !2522)
!2534 = !DILocation(line: 456, column: 17, scope: !2522)
!2535 = !DILocation(line: 463, column: 25, scope: !2536)
!2536 = distinct !DILexicalBlock(scope: !2522, file: !423, line: 457, column: 19)
!2537 = !DILocation(line: 467, column: 21, scope: !2538)
!2538 = !DILexicalBlockFile(scope: !2539, file: !423, discriminator: 1)
!2539 = distinct !DILexicalBlock(scope: !2540, file: !423, line: 467, column: 21)
!2540 = distinct !DILexicalBlock(scope: !2536, file: !423, line: 467, column: 21)
!2541 = !DILocation(line: 467, column: 21, scope: !2542)
!2542 = !DILexicalBlockFile(scope: !2540, file: !423, discriminator: 1)
!2543 = !DILocation(line: 467, column: 21, scope: !2544)
!2544 = !DILexicalBlockFile(scope: !2539, file: !423, discriminator: 2)
!2545 = !DILocation(line: 467, column: 21, scope: !2546)
!2546 = !DILexicalBlockFile(scope: !2540, file: !423, discriminator: 3)
!2547 = !DILocation(line: 468, column: 21, scope: !2548)
!2548 = !DILexicalBlockFile(scope: !2549, file: !423, discriminator: 1)
!2549 = distinct !DILexicalBlock(scope: !2550, file: !423, line: 468, column: 21)
!2550 = distinct !DILexicalBlock(scope: !2536, file: !423, line: 468, column: 21)
!2551 = !DILocation(line: 468, column: 21, scope: !2552)
!2552 = !DILexicalBlockFile(scope: !2550, file: !423, discriminator: 1)
!2553 = !DILocation(line: 468, column: 21, scope: !2554)
!2554 = !DILexicalBlockFile(scope: !2549, file: !423, discriminator: 2)
!2555 = !DILocation(line: 468, column: 21, scope: !2556)
!2556 = !DILexicalBlockFile(scope: !2550, file: !423, discriminator: 3)
!2557 = !DILocation(line: 469, column: 21, scope: !2558)
!2558 = !DILexicalBlockFile(scope: !2559, file: !423, discriminator: 1)
!2559 = distinct !DILexicalBlock(scope: !2560, file: !423, line: 469, column: 21)
!2560 = distinct !DILexicalBlock(scope: !2536, file: !423, line: 469, column: 21)
!2561 = !DILocation(line: 469, column: 21, scope: !2562)
!2562 = !DILexicalBlockFile(scope: !2560, file: !423, discriminator: 1)
!2563 = !DILocation(line: 469, column: 21, scope: !2564)
!2564 = !DILexicalBlockFile(scope: !2559, file: !423, discriminator: 2)
!2565 = !DILocation(line: 469, column: 21, scope: !2566)
!2566 = !DILexicalBlockFile(scope: !2560, file: !423, discriminator: 3)
!2567 = !DILocation(line: 470, column: 21, scope: !2568)
!2568 = !DILexicalBlockFile(scope: !2569, file: !423, discriminator: 1)
!2569 = distinct !DILexicalBlock(scope: !2570, file: !423, line: 470, column: 21)
!2570 = distinct !DILexicalBlock(scope: !2536, file: !423, line: 470, column: 21)
!2571 = !DILocation(line: 470, column: 21, scope: !2572)
!2572 = !DILexicalBlockFile(scope: !2570, file: !423, discriminator: 1)
!2573 = !DILocation(line: 470, column: 21, scope: !2574)
!2574 = !DILexicalBlockFile(scope: !2569, file: !423, discriminator: 2)
!2575 = !DILocation(line: 470, column: 21, scope: !2576)
!2576 = !DILexicalBlockFile(scope: !2570, file: !423, discriminator: 3)
!2577 = !DILocation(line: 471, column: 21, scope: !2536)
!2578 = !DILocation(line: 395, column: 21, scope: !2276)
!2579 = !DILocation(line: 484, column: 31, scope: !2285)
!2580 = !DILocation(line: 485, column: 31, scope: !2285)
!2581 = !DILocation(line: 487, column: 31, scope: !2285)
!2582 = !DILocation(line: 488, column: 31, scope: !2285)
!2583 = !DILocation(line: 489, column: 31, scope: !2285)
!2584 = !DILocation(line: 492, column: 15, scope: !2285)
!2585 = !DILocation(line: 494, column: 19, scope: !2586)
!2586 = distinct !DILexicalBlock(scope: !2587, file: !423, line: 493, column: 13)
!2587 = distinct !DILexicalBlock(scope: !2285, file: !423, line: 492, column: 15)
!2588 = !DILocation(line: 501, column: 33, scope: !2589)
!2589 = distinct !DILexicalBlock(scope: !2285, file: !423, line: 501, column: 15)
!2590 = !DILocation(line: 506, column: 15, scope: !2591)
!2591 = distinct !DILexicalBlock(scope: !2285, file: !423, line: 505, column: 15)
!2592 = !DILocation(line: 510, column: 15, scope: !2285)
!2593 = !DILocation(line: 518, column: 26, scope: !2594)
!2594 = distinct !DILexicalBlock(scope: !2285, file: !423, line: 518, column: 15)
!2595 = !DILocation(line: 518, column: 15, scope: !2285)
!2596 = !DILocation(line: 518, column: 40, scope: !2597)
!2597 = !DILexicalBlockFile(scope: !2594, file: !423, discriminator: 1)
!2598 = !DILocation(line: 518, column: 47, scope: !2597)
!2599 = !DILocation(line: 522, column: 17, scope: !2600)
!2600 = distinct !DILexicalBlock(scope: !2285, file: !423, line: 522, column: 15)
!2601 = !DILocation(line: 518, column: 18, scope: !2597)
!2602 = !DILocation(line: 518, column: 65, scope: !2603)
!2603 = !DILexicalBlockFile(scope: !2594, file: !423, discriminator: 2)
!2604 = !DILocation(line: 518, column: 15, scope: !2605)
!2605 = !DILexicalBlockFile(scope: !2285, file: !423, discriminator: 2)
!2606 = !DILocation(line: 522, column: 15, scope: !2285)
!2607 = !DILocation(line: 526, column: 11, scope: !2285)
!2608 = !DILocation(line: 541, column: 15, scope: !2609)
!2609 = distinct !DILexicalBlock(scope: !2285, file: !423, line: 540, column: 15)
!2610 = !DILocation(line: 548, column: 15, scope: !2285)
!2611 = !DILocation(line: 550, column: 19, scope: !2612)
!2612 = distinct !DILexicalBlock(scope: !2613, file: !423, line: 549, column: 13)
!2613 = distinct !DILexicalBlock(scope: !2285, file: !423, line: 548, column: 15)
!2614 = !DILocation(line: 553, column: 19, scope: !2615)
!2615 = distinct !DILexicalBlock(scope: !2612, file: !423, line: 553, column: 19)
!2616 = !DILocation(line: 553, column: 35, scope: !2617)
!2617 = !DILexicalBlockFile(scope: !2615, file: !423, discriminator: 1)
!2618 = !DILocation(line: 553, column: 30, scope: !2615)
!2619 = !DILocation(line: 562, column: 15, scope: !2620)
!2620 = !DILexicalBlockFile(scope: !2621, file: !423, discriminator: 1)
!2621 = distinct !DILexicalBlock(scope: !2622, file: !423, line: 562, column: 15)
!2622 = distinct !DILexicalBlock(scope: !2612, file: !423, line: 562, column: 15)
!2623 = !DILocation(line: 562, column: 15, scope: !2624)
!2624 = !DILexicalBlockFile(scope: !2622, file: !423, discriminator: 1)
!2625 = !DILocation(line: 562, column: 15, scope: !2626)
!2626 = !DILexicalBlockFile(scope: !2621, file: !423, discriminator: 2)
!2627 = !DILocation(line: 562, column: 15, scope: !2628)
!2628 = !DILexicalBlockFile(scope: !2622, file: !423, discriminator: 3)
!2629 = !DILocation(line: 563, column: 15, scope: !2630)
!2630 = !DILexicalBlockFile(scope: !2631, file: !423, discriminator: 1)
!2631 = distinct !DILexicalBlock(scope: !2632, file: !423, line: 563, column: 15)
!2632 = distinct !DILexicalBlock(scope: !2612, file: !423, line: 563, column: 15)
!2633 = !DILocation(line: 563, column: 15, scope: !2634)
!2634 = !DILexicalBlockFile(scope: !2632, file: !423, discriminator: 1)
!2635 = !DILocation(line: 563, column: 15, scope: !2636)
!2636 = !DILexicalBlockFile(scope: !2631, file: !423, discriminator: 2)
!2637 = !DILocation(line: 563, column: 15, scope: !2638)
!2638 = !DILexicalBlockFile(scope: !2632, file: !423, discriminator: 3)
!2639 = !DILocation(line: 564, column: 15, scope: !2640)
!2640 = !DILexicalBlockFile(scope: !2641, file: !423, discriminator: 1)
!2641 = distinct !DILexicalBlock(scope: !2642, file: !423, line: 564, column: 15)
!2642 = distinct !DILexicalBlock(scope: !2612, file: !423, line: 564, column: 15)
!2643 = !DILocation(line: 564, column: 15, scope: !2644)
!2644 = !DILexicalBlockFile(scope: !2642, file: !423, discriminator: 1)
!2645 = !DILocation(line: 564, column: 15, scope: !2646)
!2646 = !DILexicalBlockFile(scope: !2641, file: !423, discriminator: 2)
!2647 = !DILocation(line: 564, column: 15, scope: !2648)
!2648 = !DILexicalBlockFile(scope: !2642, file: !423, discriminator: 3)
!2649 = !DILocation(line: 566, column: 13, scope: !2612)
!2650 = !DILocation(line: 606, column: 17, scope: !2284)
!2651 = !DILocation(line: 602, column: 20, scope: !2284)
!2652 = !DILocation(line: 609, column: 29, scope: !2653)
!2653 = distinct !DILexicalBlock(scope: !2289, file: !423, line: 607, column: 15)
!2654 = !{!1095, !1095, i64 0}
!2655 = !DILocation(line: 609, column: 27, scope: !2653)
!2656 = !DILocation(line: 604, column: 18, scope: !2284)
!2657 = !DILocation(line: 610, column: 15, scope: !2653)
!2658 = !DILocation(line: 613, column: 17, scope: !2288)
!2659 = !DILocation(line: 614, column: 17, scope: !2288)
!2660 = !DILocation(line: 618, column: 29, scope: !2661)
!2661 = distinct !DILexicalBlock(scope: !2288, file: !423, line: 618, column: 21)
!2662 = !DILocation(line: 618, column: 21, scope: !2288)
!2663 = distinct !{!2663, !2664, !2665}
!2664 = !DILocation(line: 621, column: 17, scope: !2288)
!2665 = !DILocation(line: 667, column: 44, scope: !2288)
!2666 = !DILocation(line: 619, column: 29, scope: !2661)
!2667 = !DILocation(line: 619, column: 19, scope: !2661)
!2668 = !DILocation(line: 623, column: 21, scope: !2302)
!2669 = !DILocation(line: 624, column: 56, scope: !2302)
!2670 = !DILocation(line: 624, column: 50, scope: !2302)
!2671 = !DILocation(line: 625, column: 53, scope: !2302)
!2672 = !DILocation(line: 613, column: 27, scope: !2288)
!2673 = !DILocation(line: 623, column: 29, scope: !2302)
!2674 = !DILocation(line: 624, column: 36, scope: !2302)
!2675 = !DILocation(line: 624, column: 28, scope: !2302)
!2676 = !DILocation(line: 626, column: 25, scope: !2302)
!2677 = !DILocation(line: 636, column: 38, scope: !2678)
!2678 = !DILexicalBlockFile(scope: !2679, file: !423, discriminator: 1)
!2679 = distinct !DILexicalBlock(scope: !2309, file: !423, line: 634, column: 23)
!2680 = !DILocation(line: 636, column: 48, scope: !2678)
!2681 = !DILocation(line: 636, column: 51, scope: !2682)
!2682 = !DILexicalBlockFile(scope: !2679, file: !423, discriminator: 2)
!2683 = !DILocation(line: 636, column: 48, scope: !2682)
!2684 = !DILocation(line: 636, column: 25, scope: !2685)
!2685 = !DILexicalBlockFile(scope: !2679, file: !423, discriminator: 3)
!2686 = !DILocation(line: 637, column: 28, scope: !2679)
!2687 = !DILocation(line: 636, column: 34, scope: !2678)
!2688 = distinct !{!2688, !2689, !2686}
!2689 = !DILocation(line: 636, column: 25, scope: !2679)
!2690 = !DILocation(line: 650, column: 43, scope: !2691)
!2691 = !DILexicalBlockFile(scope: !2692, file: !423, discriminator: 1)
!2692 = distinct !DILexicalBlock(scope: !2693, file: !423, line: 650, column: 29)
!2693 = distinct !DILexicalBlock(scope: !2306, file: !423, line: 650, column: 29)
!2694 = !DILocation(line: 647, column: 29, scope: !2307)
!2695 = !DILocation(line: 649, column: 36, scope: !2306)
!2696 = !DILocation(line: 651, column: 49, scope: !2692)
!2697 = !DILocation(line: 651, column: 39, scope: !2692)
!2698 = !DILocation(line: 651, column: 31, scope: !2692)
!2699 = !DILocation(line: 650, column: 53, scope: !2700)
!2700 = !DILexicalBlockFile(scope: !2692, file: !423, discriminator: 2)
!2701 = !DILocation(line: 650, column: 29, scope: !2702)
!2702 = !DILexicalBlockFile(scope: !2693, file: !423, discriminator: 1)
!2703 = distinct !{!2703, !2704, !2705}
!2704 = !DILocation(line: 650, column: 29, scope: !2693)
!2705 = !DILocation(line: 659, column: 33, scope: !2693)
!2706 = !DILocation(line: 666, column: 19, scope: !2288)
!2707 = !DILocation(line: 662, column: 41, scope: !2708)
!2708 = distinct !DILexicalBlock(scope: !2308, file: !423, line: 662, column: 29)
!2709 = !DILocation(line: 662, column: 31, scope: !2708)
!2710 = !DILocation(line: 662, column: 29, scope: !2308)
!2711 = !DILocation(line: 664, column: 27, scope: !2308)
!2712 = !DILocation(line: 667, column: 26, scope: !2288)
!2713 = !DILocation(line: 667, column: 24, scope: !2288)
!2714 = !DILocation(line: 666, column: 19, scope: !2715)
!2715 = !DILexicalBlockFile(scope: !2302, file: !423, discriminator: 3)
!2716 = !DILocation(line: 668, column: 15, scope: !2289)
!2717 = !DILocation(line: 670, column: 40, scope: !2284)
!2718 = !DILocation(line: 672, column: 19, scope: !2314)
!2719 = !DILocation(line: 672, column: 45, scope: !2720)
!2720 = !DILexicalBlockFile(scope: !2314, file: !423, discriminator: 1)
!2721 = !DILocation(line: 672, column: 23, scope: !2314)
!2722 = !DILocation(line: 676, column: 33, scope: !2313)
!2723 = !DILocation(line: 676, column: 24, scope: !2313)
!2724 = !DILocation(line: 678, column: 17, scope: !2313)
!2725 = !DILocation(line: 680, column: 43, scope: !2726)
!2726 = distinct !DILexicalBlock(scope: !2727, file: !423, line: 680, column: 25)
!2727 = distinct !DILexicalBlock(scope: !2728, file: !423, line: 679, column: 19)
!2728 = distinct !DILexicalBlock(scope: !2729, file: !423, line: 678, column: 17)
!2729 = distinct !DILexicalBlock(scope: !2313, file: !423, line: 678, column: 17)
!2730 = !DILocation(line: 682, column: 25, scope: !2731)
!2731 = !DILexicalBlockFile(scope: !2732, file: !423, discriminator: 1)
!2732 = distinct !DILexicalBlock(scope: !2733, file: !423, line: 682, column: 25)
!2733 = distinct !DILexicalBlock(scope: !2726, file: !423, line: 681, column: 23)
!2734 = !DILocation(line: 682, column: 25, scope: !2735)
!2735 = !DILexicalBlockFile(scope: !2736, file: !423, discriminator: 4)
!2736 = distinct !DILexicalBlock(scope: !2732, file: !423, line: 682, column: 25)
!2737 = !DILocation(line: 682, column: 25, scope: !2738)
!2738 = !DILexicalBlockFile(scope: !2736, file: !423, discriminator: 3)
!2739 = !DILocation(line: 682, column: 25, scope: !2740)
!2740 = !DILexicalBlockFile(scope: !2741, file: !423, discriminator: 6)
!2741 = distinct !DILexicalBlock(scope: !2742, file: !423, line: 682, column: 25)
!2742 = distinct !DILexicalBlock(scope: !2743, file: !423, line: 682, column: 25)
!2743 = distinct !DILexicalBlock(scope: !2736, file: !423, line: 682, column: 25)
!2744 = !DILocation(line: 682, column: 25, scope: !2745)
!2745 = !DILexicalBlockFile(scope: !2742, file: !423, discriminator: 6)
!2746 = !DILocation(line: 682, column: 25, scope: !2747)
!2747 = !DILexicalBlockFile(scope: !2741, file: !423, discriminator: 7)
!2748 = !DILocation(line: 682, column: 25, scope: !2749)
!2749 = !DILexicalBlockFile(scope: !2742, file: !423, discriminator: 8)
!2750 = !DILocation(line: 682, column: 25, scope: !2751)
!2751 = !DILexicalBlockFile(scope: !2752, file: !423, discriminator: 11)
!2752 = distinct !DILexicalBlock(scope: !2753, file: !423, line: 682, column: 25)
!2753 = distinct !DILexicalBlock(scope: !2743, file: !423, line: 682, column: 25)
!2754 = !DILocation(line: 682, column: 25, scope: !2755)
!2755 = !DILexicalBlockFile(scope: !2753, file: !423, discriminator: 11)
!2756 = !DILocation(line: 682, column: 25, scope: !2757)
!2757 = !DILexicalBlockFile(scope: !2752, file: !423, discriminator: 12)
!2758 = !DILocation(line: 682, column: 25, scope: !2759)
!2759 = !DILexicalBlockFile(scope: !2753, file: !423, discriminator: 13)
!2760 = !DILocation(line: 682, column: 25, scope: !2761)
!2761 = !DILexicalBlockFile(scope: !2762, file: !423, discriminator: 16)
!2762 = distinct !DILexicalBlock(scope: !2763, file: !423, line: 682, column: 25)
!2763 = distinct !DILexicalBlock(scope: !2743, file: !423, line: 682, column: 25)
!2764 = !DILocation(line: 682, column: 25, scope: !2765)
!2765 = !DILexicalBlockFile(scope: !2763, file: !423, discriminator: 16)
!2766 = !DILocation(line: 682, column: 25, scope: !2767)
!2767 = !DILexicalBlockFile(scope: !2762, file: !423, discriminator: 17)
!2768 = !DILocation(line: 682, column: 25, scope: !2769)
!2769 = !DILexicalBlockFile(scope: !2763, file: !423, discriminator: 18)
!2770 = !DILocation(line: 682, column: 25, scope: !2771)
!2771 = !DILexicalBlockFile(scope: !2743, file: !423, discriminator: 20)
!2772 = !DILocation(line: 682, column: 25, scope: !2773)
!2773 = !DILexicalBlockFile(scope: !2774, file: !423, discriminator: 22)
!2774 = distinct !DILexicalBlock(scope: !2775, file: !423, line: 682, column: 25)
!2775 = distinct !DILexicalBlock(scope: !2732, file: !423, line: 682, column: 25)
!2776 = !DILocation(line: 682, column: 25, scope: !2777)
!2777 = !DILexicalBlockFile(scope: !2775, file: !423, discriminator: 22)
!2778 = !DILocation(line: 682, column: 25, scope: !2779)
!2779 = !DILexicalBlockFile(scope: !2774, file: !423, discriminator: 23)
!2780 = !DILocation(line: 682, column: 25, scope: !2781)
!2781 = !DILexicalBlockFile(scope: !2775, file: !423, discriminator: 24)
!2782 = !DILocation(line: 683, column: 25, scope: !2783)
!2783 = !DILexicalBlockFile(scope: !2784, file: !423, discriminator: 1)
!2784 = distinct !DILexicalBlock(scope: !2785, file: !423, line: 683, column: 25)
!2785 = distinct !DILexicalBlock(scope: !2733, file: !423, line: 683, column: 25)
!2786 = !DILocation(line: 683, column: 25, scope: !2787)
!2787 = !DILexicalBlockFile(scope: !2785, file: !423, discriminator: 1)
!2788 = !DILocation(line: 683, column: 25, scope: !2789)
!2789 = !DILexicalBlockFile(scope: !2784, file: !423, discriminator: 2)
!2790 = !DILocation(line: 683, column: 25, scope: !2791)
!2791 = !DILexicalBlockFile(scope: !2785, file: !423, discriminator: 3)
!2792 = !DILocation(line: 684, column: 25, scope: !2793)
!2793 = !DILexicalBlockFile(scope: !2794, file: !423, discriminator: 1)
!2794 = distinct !DILexicalBlock(scope: !2795, file: !423, line: 684, column: 25)
!2795 = distinct !DILexicalBlock(scope: !2733, file: !423, line: 684, column: 25)
!2796 = !DILocation(line: 684, column: 25, scope: !2797)
!2797 = !DILexicalBlockFile(scope: !2795, file: !423, discriminator: 1)
!2798 = !DILocation(line: 684, column: 25, scope: !2799)
!2799 = !DILexicalBlockFile(scope: !2794, file: !423, discriminator: 2)
!2800 = !DILocation(line: 684, column: 25, scope: !2801)
!2801 = !DILexicalBlockFile(scope: !2795, file: !423, discriminator: 3)
!2802 = !DILocation(line: 685, column: 38, scope: !2733)
!2803 = !DILocation(line: 685, column: 33, scope: !2733)
!2804 = !DILocation(line: 686, column: 23, scope: !2733)
!2805 = !DILocation(line: 687, column: 30, scope: !2806)
!2806 = distinct !DILexicalBlock(scope: !2726, file: !423, line: 687, column: 30)
!2807 = !DILocation(line: 687, column: 30, scope: !2726)
!2808 = !DILocation(line: 689, column: 25, scope: !2809)
!2809 = !DILexicalBlockFile(scope: !2810, file: !423, discriminator: 1)
!2810 = distinct !DILexicalBlock(scope: !2811, file: !423, line: 689, column: 25)
!2811 = distinct !DILexicalBlock(scope: !2812, file: !423, line: 689, column: 25)
!2812 = distinct !DILexicalBlock(scope: !2806, file: !423, line: 688, column: 23)
!2813 = !DILocation(line: 689, column: 25, scope: !2814)
!2814 = !DILexicalBlockFile(scope: !2811, file: !423, discriminator: 1)
!2815 = !DILocation(line: 689, column: 25, scope: !2816)
!2816 = !DILexicalBlockFile(scope: !2810, file: !423, discriminator: 2)
!2817 = !DILocation(line: 689, column: 25, scope: !2818)
!2818 = !DILexicalBlockFile(scope: !2811, file: !423, discriminator: 3)
!2819 = !DILocation(line: 691, column: 23, scope: !2812)
!2820 = !DILocation(line: 692, column: 35, scope: !2821)
!2821 = distinct !DILexicalBlock(scope: !2727, file: !423, line: 692, column: 25)
!2822 = !DILocation(line: 692, column: 30, scope: !2821)
!2823 = !DILocation(line: 692, column: 25, scope: !2727)
!2824 = !DILocation(line: 694, column: 21, scope: !2825)
!2825 = !DILexicalBlockFile(scope: !2826, file: !423, discriminator: 1)
!2826 = distinct !DILexicalBlock(scope: !2827, file: !423, line: 694, column: 21)
!2827 = distinct !DILexicalBlock(scope: !2727, file: !423, line: 694, column: 21)
!2828 = !DILocation(line: 694, column: 21, scope: !2829)
!2829 = !DILexicalBlockFile(scope: !2826, file: !423, discriminator: 2)
!2830 = !DILocation(line: 694, column: 21, scope: !2831)
!2831 = !DILexicalBlockFile(scope: !2832, file: !423, discriminator: 4)
!2832 = distinct !DILexicalBlock(scope: !2833, file: !423, line: 694, column: 21)
!2833 = distinct !DILexicalBlock(scope: !2834, file: !423, line: 694, column: 21)
!2834 = distinct !DILexicalBlock(scope: !2826, file: !423, line: 694, column: 21)
!2835 = !DILocation(line: 694, column: 21, scope: !2836)
!2836 = !DILexicalBlockFile(scope: !2833, file: !423, discriminator: 4)
!2837 = !DILocation(line: 694, column: 21, scope: !2838)
!2838 = !DILexicalBlockFile(scope: !2832, file: !423, discriminator: 5)
!2839 = !DILocation(line: 694, column: 21, scope: !2840)
!2840 = !DILexicalBlockFile(scope: !2833, file: !423, discriminator: 6)
!2841 = !DILocation(line: 694, column: 21, scope: !2842)
!2842 = !DILexicalBlockFile(scope: !2843, file: !423, discriminator: 9)
!2843 = distinct !DILexicalBlock(scope: !2844, file: !423, line: 694, column: 21)
!2844 = distinct !DILexicalBlock(scope: !2834, file: !423, line: 694, column: 21)
!2845 = !DILocation(line: 694, column: 21, scope: !2846)
!2846 = !DILexicalBlockFile(scope: !2844, file: !423, discriminator: 9)
!2847 = !DILocation(line: 694, column: 21, scope: !2848)
!2848 = !DILexicalBlockFile(scope: !2843, file: !423, discriminator: 10)
!2849 = !DILocation(line: 694, column: 21, scope: !2850)
!2850 = !DILexicalBlockFile(scope: !2844, file: !423, discriminator: 11)
!2851 = !DILocation(line: 694, column: 21, scope: !2852)
!2852 = !DILexicalBlockFile(scope: !2834, file: !423, discriminator: 13)
!2853 = !DILocation(line: 695, column: 21, scope: !2854)
!2854 = !DILexicalBlockFile(scope: !2855, file: !423, discriminator: 1)
!2855 = distinct !DILexicalBlock(scope: !2856, file: !423, line: 695, column: 21)
!2856 = distinct !DILexicalBlock(scope: !2727, file: !423, line: 695, column: 21)
!2857 = !DILocation(line: 695, column: 21, scope: !2858)
!2858 = !DILexicalBlockFile(scope: !2856, file: !423, discriminator: 1)
!2859 = !DILocation(line: 695, column: 21, scope: !2860)
!2860 = !DILexicalBlockFile(scope: !2855, file: !423, discriminator: 2)
!2861 = !DILocation(line: 695, column: 21, scope: !2862)
!2862 = !DILexicalBlockFile(scope: !2856, file: !423, discriminator: 3)
!2863 = !DILocation(line: 696, column: 25, scope: !2727)
!2864 = !DILocation(line: 678, column: 17, scope: !2865)
!2865 = !DILexicalBlockFile(scope: !2728, file: !423, discriminator: 1)
!2866 = distinct !{!2866, !2867, !2868}
!2867 = !DILocation(line: 678, column: 17, scope: !2729)
!2868 = !DILocation(line: 697, column: 19, scope: !2729)
!2869 = !DILocation(line: 704, column: 34, scope: !2870)
!2870 = distinct !DILexicalBlock(scope: !2276, file: !423, line: 704, column: 11)
!2871 = !DILocation(line: 706, column: 14, scope: !2870)
!2872 = !DILocation(line: 707, column: 14, scope: !2870)
!2873 = !DILocation(line: 707, column: 35, scope: !2874)
!2874 = !DILexicalBlockFile(scope: !2870, file: !423, discriminator: 1)
!2875 = !DILocation(line: 707, column: 17, scope: !2874)
!2876 = !DILocation(line: 707, column: 53, scope: !2874)
!2877 = !DILocation(line: 707, column: 47, scope: !2874)
!2878 = !DILocation(line: 707, column: 65, scope: !2874)
!2879 = !DILocation(line: 708, column: 15, scope: !2874)
!2880 = !DILocation(line: 708, column: 11, scope: !2870)
!2881 = !DILocation(line: 704, column: 11, scope: !2882)
!2882 = !DILexicalBlockFile(scope: !2276, file: !423, discriminator: 2)
!2883 = !DILocation(line: 712, column: 7, scope: !2884)
!2884 = !DILexicalBlockFile(scope: !2885, file: !423, discriminator: 1)
!2885 = distinct !DILexicalBlock(scope: !2276, file: !423, line: 712, column: 7)
!2886 = !DILocation(line: 712, column: 7, scope: !2887)
!2887 = !DILexicalBlockFile(scope: !2888, file: !423, discriminator: 4)
!2888 = distinct !DILexicalBlock(scope: !2885, file: !423, line: 712, column: 7)
!2889 = !DILocation(line: 712, column: 7, scope: !2890)
!2890 = !DILexicalBlockFile(scope: !2888, file: !423, discriminator: 3)
!2891 = !DILocation(line: 712, column: 7, scope: !2892)
!2892 = !DILexicalBlockFile(scope: !2893, file: !423, discriminator: 6)
!2893 = distinct !DILexicalBlock(scope: !2894, file: !423, line: 712, column: 7)
!2894 = distinct !DILexicalBlock(scope: !2895, file: !423, line: 712, column: 7)
!2895 = distinct !DILexicalBlock(scope: !2888, file: !423, line: 712, column: 7)
!2896 = !DILocation(line: 712, column: 7, scope: !2897)
!2897 = !DILexicalBlockFile(scope: !2894, file: !423, discriminator: 6)
!2898 = !DILocation(line: 712, column: 7, scope: !2899)
!2899 = !DILexicalBlockFile(scope: !2893, file: !423, discriminator: 7)
!2900 = !DILocation(line: 712, column: 7, scope: !2901)
!2901 = !DILexicalBlockFile(scope: !2894, file: !423, discriminator: 8)
!2902 = !DILocation(line: 712, column: 7, scope: !2903)
!2903 = !DILexicalBlockFile(scope: !2904, file: !423, discriminator: 11)
!2904 = distinct !DILexicalBlock(scope: !2905, file: !423, line: 712, column: 7)
!2905 = distinct !DILexicalBlock(scope: !2895, file: !423, line: 712, column: 7)
!2906 = !DILocation(line: 712, column: 7, scope: !2907)
!2907 = !DILexicalBlockFile(scope: !2905, file: !423, discriminator: 11)
!2908 = !DILocation(line: 712, column: 7, scope: !2909)
!2909 = !DILexicalBlockFile(scope: !2904, file: !423, discriminator: 12)
!2910 = !DILocation(line: 712, column: 7, scope: !2911)
!2911 = !DILexicalBlockFile(scope: !2905, file: !423, discriminator: 13)
!2912 = !DILocation(line: 712, column: 7, scope: !2913)
!2913 = !DILexicalBlockFile(scope: !2914, file: !423, discriminator: 16)
!2914 = distinct !DILexicalBlock(scope: !2915, file: !423, line: 712, column: 7)
!2915 = distinct !DILexicalBlock(scope: !2895, file: !423, line: 712, column: 7)
!2916 = !DILocation(line: 712, column: 7, scope: !2917)
!2917 = !DILexicalBlockFile(scope: !2915, file: !423, discriminator: 16)
!2918 = !DILocation(line: 712, column: 7, scope: !2919)
!2919 = !DILexicalBlockFile(scope: !2914, file: !423, discriminator: 17)
!2920 = !DILocation(line: 712, column: 7, scope: !2921)
!2921 = !DILexicalBlockFile(scope: !2915, file: !423, discriminator: 18)
!2922 = !DILocation(line: 712, column: 7, scope: !2923)
!2923 = !DILexicalBlockFile(scope: !2895, file: !423, discriminator: 20)
!2924 = !DILocation(line: 712, column: 7, scope: !2925)
!2925 = !DILexicalBlockFile(scope: !2926, file: !423, discriminator: 22)
!2926 = distinct !DILexicalBlock(scope: !2927, file: !423, line: 712, column: 7)
!2927 = distinct !DILexicalBlock(scope: !2885, file: !423, line: 712, column: 7)
!2928 = !DILocation(line: 712, column: 7, scope: !2929)
!2929 = !DILexicalBlockFile(scope: !2927, file: !423, discriminator: 22)
!2930 = !DILocation(line: 712, column: 7, scope: !2931)
!2931 = !DILexicalBlockFile(scope: !2926, file: !423, discriminator: 23)
!2932 = !DILocation(line: 712, column: 7, scope: !2933)
!2933 = !DILexicalBlockFile(scope: !2927, file: !423, discriminator: 24)
!2934 = !DILocation(line: 715, column: 7, scope: !2935)
!2935 = !DILexicalBlockFile(scope: !2936, file: !423, discriminator: 1)
!2936 = distinct !DILexicalBlock(scope: !2937, file: !423, line: 715, column: 7)
!2937 = distinct !DILexicalBlock(scope: !2276, file: !423, line: 715, column: 7)
!2938 = !DILocation(line: 715, column: 7, scope: !2939)
!2939 = !DILexicalBlockFile(scope: !2936, file: !423, discriminator: 2)
!2940 = !DILocation(line: 715, column: 7, scope: !2941)
!2941 = !DILexicalBlockFile(scope: !2942, file: !423, discriminator: 4)
!2942 = distinct !DILexicalBlock(scope: !2943, file: !423, line: 715, column: 7)
!2943 = distinct !DILexicalBlock(scope: !2944, file: !423, line: 715, column: 7)
!2944 = distinct !DILexicalBlock(scope: !2936, file: !423, line: 715, column: 7)
!2945 = !DILocation(line: 715, column: 7, scope: !2946)
!2946 = !DILexicalBlockFile(scope: !2943, file: !423, discriminator: 4)
!2947 = !DILocation(line: 715, column: 7, scope: !2948)
!2948 = !DILexicalBlockFile(scope: !2942, file: !423, discriminator: 5)
!2949 = !DILocation(line: 715, column: 7, scope: !2950)
!2950 = !DILexicalBlockFile(scope: !2943, file: !423, discriminator: 6)
!2951 = !DILocation(line: 715, column: 7, scope: !2952)
!2952 = !DILexicalBlockFile(scope: !2953, file: !423, discriminator: 9)
!2953 = distinct !DILexicalBlock(scope: !2954, file: !423, line: 715, column: 7)
!2954 = distinct !DILexicalBlock(scope: !2944, file: !423, line: 715, column: 7)
!2955 = !DILocation(line: 715, column: 7, scope: !2956)
!2956 = !DILexicalBlockFile(scope: !2954, file: !423, discriminator: 9)
!2957 = !DILocation(line: 715, column: 7, scope: !2958)
!2958 = !DILexicalBlockFile(scope: !2953, file: !423, discriminator: 10)
!2959 = !DILocation(line: 715, column: 7, scope: !2960)
!2960 = !DILexicalBlockFile(scope: !2954, file: !423, discriminator: 11)
!2961 = !DILocation(line: 715, column: 7, scope: !2962)
!2962 = !DILexicalBlockFile(scope: !2944, file: !423, discriminator: 13)
!2963 = !DILocation(line: 716, column: 7, scope: !2964)
!2964 = !DILexicalBlockFile(scope: !2965, file: !423, discriminator: 1)
!2965 = distinct !DILexicalBlock(scope: !2966, file: !423, line: 716, column: 7)
!2966 = distinct !DILexicalBlock(scope: !2276, file: !423, line: 716, column: 7)
!2967 = !DILocation(line: 716, column: 7, scope: !2968)
!2968 = !DILexicalBlockFile(scope: !2966, file: !423, discriminator: 1)
!2969 = !DILocation(line: 716, column: 7, scope: !2970)
!2970 = !DILexicalBlockFile(scope: !2965, file: !423, discriminator: 2)
!2971 = !DILocation(line: 716, column: 7, scope: !2972)
!2972 = !DILexicalBlockFile(scope: !2966, file: !423, discriminator: 3)
!2973 = !DILocation(line: 718, column: 13, scope: !2974)
!2974 = distinct !DILexicalBlock(scope: !2276, file: !423, line: 718, column: 11)
!2975 = !DILocation(line: 718, column: 11, scope: !2276)
!2976 = !DILocation(line: 720, column: 5, scope: !2277)
!2977 = !DILocation(line: 392, column: 75, scope: !2978)
!2978 = !DILexicalBlockFile(scope: !2277, file: !423, discriminator: 5)
!2979 = !DILocation(line: 392, column: 3, scope: !2978)
!2980 = distinct !{!2980, !2981, !2982}
!2981 = !DILocation(line: 392, column: 3, scope: !2278)
!2982 = !DILocation(line: 720, column: 5, scope: !2278)
!2983 = !DILocation(line: 722, column: 11, scope: !2984)
!2984 = distinct !DILexicalBlock(scope: !2249, file: !423, line: 722, column: 7)
!2985 = !DILocation(line: 722, column: 16, scope: !2984)
!2986 = !DILocation(line: 730, column: 51, scope: !2987)
!2987 = distinct !DILexicalBlock(scope: !2249, file: !423, line: 730, column: 7)
!2988 = !DILocation(line: 731, column: 10, scope: !2989)
!2989 = !DILexicalBlockFile(scope: !2987, file: !423, discriminator: 1)
!2990 = !DILocation(line: 733, column: 11, scope: !2991)
!2991 = distinct !DILexicalBlock(scope: !2992, file: !423, line: 733, column: 11)
!2992 = distinct !DILexicalBlock(scope: !2987, file: !423, line: 732, column: 5)
!2993 = !DILocation(line: 733, column: 11, scope: !2992)
!2994 = !DILocation(line: 734, column: 16, scope: !2991)
!2995 = !DILocation(line: 734, column: 9, scope: !2991)
!2996 = !DILocation(line: 738, column: 18, scope: !2997)
!2997 = distinct !DILexicalBlock(scope: !2991, file: !423, line: 738, column: 16)
!2998 = !DILocation(line: 738, column: 32, scope: !2999)
!2999 = !DILexicalBlockFile(scope: !2997, file: !423, discriminator: 1)
!3000 = !DILocation(line: 738, column: 29, scope: !2997)
!3001 = !DILocation(line: 747, column: 7, scope: !3002)
!3002 = distinct !DILexicalBlock(scope: !2249, file: !423, line: 747, column: 7)
!3003 = !DILocation(line: 747, column: 20, scope: !3002)
!3004 = !DILocation(line: 748, column: 12, scope: !3005)
!3005 = !DILexicalBlockFile(scope: !3006, file: !423, discriminator: 1)
!3006 = distinct !DILexicalBlock(scope: !3007, file: !423, line: 748, column: 5)
!3007 = distinct !DILexicalBlock(scope: !3002, file: !423, line: 748, column: 5)
!3008 = !DILocation(line: 748, column: 5, scope: !3009)
!3009 = !DILexicalBlockFile(scope: !3007, file: !423, discriminator: 1)
!3010 = !DILocation(line: 749, column: 7, scope: !3011)
!3011 = !DILexicalBlockFile(scope: !3012, file: !423, discriminator: 1)
!3012 = distinct !DILexicalBlock(scope: !3013, file: !423, line: 749, column: 7)
!3013 = distinct !DILexicalBlock(scope: !3006, file: !423, line: 749, column: 7)
!3014 = !DILocation(line: 749, column: 7, scope: !3015)
!3015 = !DILexicalBlockFile(scope: !3013, file: !423, discriminator: 1)
!3016 = !DILocation(line: 749, column: 7, scope: !3017)
!3017 = !DILexicalBlockFile(scope: !3012, file: !423, discriminator: 2)
!3018 = !DILocation(line: 749, column: 7, scope: !3019)
!3019 = !DILexicalBlockFile(scope: !3013, file: !423, discriminator: 3)
!3020 = !DILocation(line: 748, column: 39, scope: !3021)
!3021 = !DILexicalBlockFile(scope: !3006, file: !423, discriminator: 2)
!3022 = distinct !{!3022, !3023, !3024}
!3023 = !DILocation(line: 748, column: 5, scope: !3007)
!3024 = !DILocation(line: 749, column: 7, scope: !3007)
!3025 = !DILocation(line: 751, column: 11, scope: !3026)
!3026 = distinct !DILexicalBlock(scope: !2249, file: !423, line: 751, column: 7)
!3027 = !DILocation(line: 751, column: 7, scope: !2249)
!3028 = !DILocation(line: 752, column: 5, scope: !3026)
!3029 = !DILocation(line: 752, column: 17, scope: !3026)
!3030 = !DILocation(line: 758, column: 21, scope: !3031)
!3031 = distinct !DILexicalBlock(scope: !2249, file: !423, line: 758, column: 7)
!3032 = !DILocation(line: 758, column: 54, scope: !3033)
!3033 = !DILexicalBlockFile(scope: !3031, file: !423, discriminator: 1)
!3034 = !DILocation(line: 758, column: 51, scope: !3031)
!3035 = !DILocation(line: 762, column: 42, scope: !2249)
!3036 = !DILocation(line: 760, column: 10, scope: !2249)
!3037 = !DILocation(line: 760, column: 3, scope: !2249)
!3038 = !DILocation(line: 764, column: 1, scope: !2249)
!3039 = distinct !DISubprogram(name: "gettext_quote", scope: !423, file: !423, line: 199, type: !3040, isLocal: true, isDefinition: true, scopeLine: 200, flags: DIFlagPrototyped, isOptimized: true, unit: !396, variables: !3042)
!3040 = !DISubroutineType(types: !3041)
!3041 = !{!36, !36, !10}
!3042 = !{!3043, !3044, !3045, !3046}
!3043 = !DILocalVariable(name: "msgid", arg: 1, scope: !3039, file: !423, line: 199, type: !36)
!3044 = !DILocalVariable(name: "s", arg: 2, scope: !3039, file: !423, line: 199, type: !10)
!3045 = !DILocalVariable(name: "translation", scope: !3039, file: !423, line: 201, type: !36)
!3046 = !DILocalVariable(name: "locale_code", scope: !3039, file: !423, line: 202, type: !36)
!3047 = !DILocation(line: 199, column: 28, scope: !3039)
!3048 = !DILocation(line: 199, column: 54, scope: !3039)
!3049 = !DILocation(line: 201, column: 29, scope: !3039)
!3050 = !DILocation(line: 201, column: 15, scope: !3039)
!3051 = !DILocation(line: 204, column: 19, scope: !3052)
!3052 = distinct !DILexicalBlock(scope: !3039, file: !423, line: 204, column: 7)
!3053 = !DILocation(line: 204, column: 7, scope: !3039)
!3054 = !DILocation(line: 225, column: 17, scope: !3039)
!3055 = !DILocation(line: 202, column: 15, scope: !3039)
!3056 = !DILocalVariable(name: "s2", arg: 2, scope: !3057, file: !3058, line: 160, type: !36)
!3057 = distinct !DISubprogram(name: "strcaseeq0", scope: !3058, file: !3058, line: 160, type: !3059, isLocal: true, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !396, variables: !3061)
!3058 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3059 = !DISubroutineType(types: !3060)
!3060 = !{!80, !36, !36, !26, !26, !26, !26, !26, !26, !26, !26, !26}
!3061 = !{!3062, !3056, !3063, !3064, !3065, !3066, !3067, !3068, !3069, !3070, !3071}
!3062 = !DILocalVariable(name: "s1", arg: 1, scope: !3057, file: !3058, line: 160, type: !36)
!3063 = !DILocalVariable(name: "s20", arg: 3, scope: !3057, file: !3058, line: 160, type: !26)
!3064 = !DILocalVariable(name: "s21", arg: 4, scope: !3057, file: !3058, line: 160, type: !26)
!3065 = !DILocalVariable(name: "s22", arg: 5, scope: !3057, file: !3058, line: 160, type: !26)
!3066 = !DILocalVariable(name: "s23", arg: 6, scope: !3057, file: !3058, line: 160, type: !26)
!3067 = !DILocalVariable(name: "s24", arg: 7, scope: !3057, file: !3058, line: 160, type: !26)
!3068 = !DILocalVariable(name: "s25", arg: 8, scope: !3057, file: !3058, line: 160, type: !26)
!3069 = !DILocalVariable(name: "s26", arg: 9, scope: !3057, file: !3058, line: 160, type: !26)
!3070 = !DILocalVariable(name: "s27", arg: 10, scope: !3057, file: !3058, line: 160, type: !26)
!3071 = !DILocalVariable(name: "s28", arg: 11, scope: !3057, file: !3058, line: 160, type: !26)
!3072 = !DILocation(line: 160, column: 41, scope: !3057, inlinedAt: !3073)
!3073 = distinct !DILocation(line: 226, column: 7, scope: !3074)
!3074 = distinct !DILexicalBlock(scope: !3039, file: !423, line: 226, column: 7)
!3075 = !DILocation(line: 160, column: 120, scope: !3057, inlinedAt: !3073)
!3076 = !DILocation(line: 160, column: 130, scope: !3057, inlinedAt: !3073)
!3077 = !DILocation(line: 162, column: 7, scope: !3078, inlinedAt: !3073)
!3078 = !DILexicalBlockFile(scope: !3079, file: !3058, discriminator: 1)
!3079 = distinct !DILexicalBlock(scope: !3057, file: !3058, line: 162, column: 7)
!3080 = !DILocalVariable(name: "s2", arg: 2, scope: !3081, file: !3058, line: 146, type: !36)
!3081 = distinct !DISubprogram(name: "strcaseeq1", scope: !3058, file: !3058, line: 146, type: !3082, isLocal: true, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: true, unit: !396, variables: !3084)
!3082 = !DISubroutineType(types: !3083)
!3083 = !{!80, !36, !36, !26, !26, !26, !26, !26, !26, !26, !26}
!3084 = !{!3085, !3080, !3086, !3087, !3088, !3089, !3090, !3091, !3092, !3093}
!3085 = !DILocalVariable(name: "s1", arg: 1, scope: !3081, file: !3058, line: 146, type: !36)
!3086 = !DILocalVariable(name: "s21", arg: 3, scope: !3081, file: !3058, line: 146, type: !26)
!3087 = !DILocalVariable(name: "s22", arg: 4, scope: !3081, file: !3058, line: 146, type: !26)
!3088 = !DILocalVariable(name: "s23", arg: 5, scope: !3081, file: !3058, line: 146, type: !26)
!3089 = !DILocalVariable(name: "s24", arg: 6, scope: !3081, file: !3058, line: 146, type: !26)
!3090 = !DILocalVariable(name: "s25", arg: 7, scope: !3081, file: !3058, line: 146, type: !26)
!3091 = !DILocalVariable(name: "s26", arg: 8, scope: !3081, file: !3058, line: 146, type: !26)
!3092 = !DILocalVariable(name: "s27", arg: 9, scope: !3081, file: !3058, line: 146, type: !26)
!3093 = !DILocalVariable(name: "s28", arg: 10, scope: !3081, file: !3058, line: 146, type: !26)
!3094 = !DILocation(line: 146, column: 41, scope: !3081, inlinedAt: !3095)
!3095 = distinct !DILocation(line: 167, column: 16, scope: !3096, inlinedAt: !3073)
!3096 = distinct !DILexicalBlock(scope: !3097, file: !3058, line: 164, column: 11)
!3097 = distinct !DILexicalBlock(scope: !3079, file: !3058, line: 163, column: 5)
!3098 = !DILocation(line: 146, column: 110, scope: !3081, inlinedAt: !3095)
!3099 = !DILocation(line: 146, column: 120, scope: !3081, inlinedAt: !3095)
!3100 = !DILocation(line: 148, column: 7, scope: !3101, inlinedAt: !3095)
!3101 = !DILexicalBlockFile(scope: !3102, file: !3058, discriminator: 1)
!3102 = distinct !DILexicalBlock(scope: !3081, file: !3058, line: 148, column: 7)
!3103 = !DILocalVariable(name: "s2", arg: 2, scope: !3104, file: !3058, line: 132, type: !36)
!3104 = distinct !DISubprogram(name: "strcaseeq2", scope: !3058, file: !3058, line: 132, type: !3105, isLocal: true, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !396, variables: !3107)
!3105 = !DISubroutineType(types: !3106)
!3106 = !{!80, !36, !36, !26, !26, !26, !26, !26, !26, !26}
!3107 = !{!3108, !3103, !3109, !3110, !3111, !3112, !3113, !3114, !3115}
!3108 = !DILocalVariable(name: "s1", arg: 1, scope: !3104, file: !3058, line: 132, type: !36)
!3109 = !DILocalVariable(name: "s22", arg: 3, scope: !3104, file: !3058, line: 132, type: !26)
!3110 = !DILocalVariable(name: "s23", arg: 4, scope: !3104, file: !3058, line: 132, type: !26)
!3111 = !DILocalVariable(name: "s24", arg: 5, scope: !3104, file: !3058, line: 132, type: !26)
!3112 = !DILocalVariable(name: "s25", arg: 6, scope: !3104, file: !3058, line: 132, type: !26)
!3113 = !DILocalVariable(name: "s26", arg: 7, scope: !3104, file: !3058, line: 132, type: !26)
!3114 = !DILocalVariable(name: "s27", arg: 8, scope: !3104, file: !3058, line: 132, type: !26)
!3115 = !DILocalVariable(name: "s28", arg: 9, scope: !3104, file: !3058, line: 132, type: !26)
!3116 = !DILocation(line: 132, column: 41, scope: !3104, inlinedAt: !3117)
!3117 = distinct !DILocation(line: 153, column: 16, scope: !3118, inlinedAt: !3095)
!3118 = distinct !DILexicalBlock(scope: !3119, file: !3058, line: 150, column: 11)
!3119 = distinct !DILexicalBlock(scope: !3102, file: !3058, line: 149, column: 5)
!3120 = !DILocation(line: 132, column: 100, scope: !3104, inlinedAt: !3117)
!3121 = !DILocation(line: 132, column: 110, scope: !3104, inlinedAt: !3117)
!3122 = !DILocation(line: 134, column: 7, scope: !3123, inlinedAt: !3117)
!3123 = !DILexicalBlockFile(scope: !3124, file: !3058, discriminator: 1)
!3124 = distinct !DILexicalBlock(scope: !3104, file: !3058, line: 134, column: 7)
!3125 = !DILocalVariable(name: "s2", arg: 2, scope: !3126, file: !3058, line: 118, type: !36)
!3126 = distinct !DISubprogram(name: "strcaseeq3", scope: !3058, file: !3058, line: 118, type: !3127, isLocal: true, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !396, variables: !3129)
!3127 = !DISubroutineType(types: !3128)
!3128 = !{!80, !36, !36, !26, !26, !26, !26, !26, !26}
!3129 = !{!3130, !3125, !3131, !3132, !3133, !3134, !3135, !3136}
!3130 = !DILocalVariable(name: "s1", arg: 1, scope: !3126, file: !3058, line: 118, type: !36)
!3131 = !DILocalVariable(name: "s23", arg: 3, scope: !3126, file: !3058, line: 118, type: !26)
!3132 = !DILocalVariable(name: "s24", arg: 4, scope: !3126, file: !3058, line: 118, type: !26)
!3133 = !DILocalVariable(name: "s25", arg: 5, scope: !3126, file: !3058, line: 118, type: !26)
!3134 = !DILocalVariable(name: "s26", arg: 6, scope: !3126, file: !3058, line: 118, type: !26)
!3135 = !DILocalVariable(name: "s27", arg: 7, scope: !3126, file: !3058, line: 118, type: !26)
!3136 = !DILocalVariable(name: "s28", arg: 8, scope: !3126, file: !3058, line: 118, type: !26)
!3137 = !DILocation(line: 118, column: 41, scope: !3126, inlinedAt: !3138)
!3138 = distinct !DILocation(line: 139, column: 16, scope: !3139, inlinedAt: !3117)
!3139 = distinct !DILexicalBlock(scope: !3140, file: !3058, line: 136, column: 11)
!3140 = distinct !DILexicalBlock(scope: !3124, file: !3058, line: 135, column: 5)
!3141 = !DILocation(line: 118, column: 90, scope: !3126, inlinedAt: !3138)
!3142 = !DILocation(line: 118, column: 100, scope: !3126, inlinedAt: !3138)
!3143 = !DILocation(line: 120, column: 7, scope: !3144, inlinedAt: !3138)
!3144 = !DILexicalBlockFile(scope: !3145, file: !3058, discriminator: 2)
!3145 = distinct !DILexicalBlock(scope: !3126, file: !3058, line: 120, column: 7)
!3146 = !DILocation(line: 120, column: 7, scope: !3147, inlinedAt: !3138)
!3147 = !DILexicalBlockFile(scope: !3126, file: !3058, discriminator: 2)
!3148 = !DILocalVariable(name: "s2", arg: 2, scope: !3149, file: !3058, line: 104, type: !36)
!3149 = distinct !DISubprogram(name: "strcaseeq4", scope: !3058, file: !3058, line: 104, type: !3150, isLocal: true, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, unit: !396, variables: !3152)
!3150 = !DISubroutineType(types: !3151)
!3151 = !{!80, !36, !36, !26, !26, !26, !26, !26}
!3152 = !{!3153, !3148, !3154, !3155, !3156, !3157, !3158}
!3153 = !DILocalVariable(name: "s1", arg: 1, scope: !3149, file: !3058, line: 104, type: !36)
!3154 = !DILocalVariable(name: "s24", arg: 3, scope: !3149, file: !3058, line: 104, type: !26)
!3155 = !DILocalVariable(name: "s25", arg: 4, scope: !3149, file: !3058, line: 104, type: !26)
!3156 = !DILocalVariable(name: "s26", arg: 5, scope: !3149, file: !3058, line: 104, type: !26)
!3157 = !DILocalVariable(name: "s27", arg: 6, scope: !3149, file: !3058, line: 104, type: !26)
!3158 = !DILocalVariable(name: "s28", arg: 7, scope: !3149, file: !3058, line: 104, type: !26)
!3159 = !DILocation(line: 104, column: 41, scope: !3149, inlinedAt: !3160)
!3160 = distinct !DILocation(line: 125, column: 16, scope: !3161, inlinedAt: !3138)
!3161 = distinct !DILexicalBlock(scope: !3162, file: !3058, line: 122, column: 11)
!3162 = distinct !DILexicalBlock(scope: !3145, file: !3058, line: 121, column: 5)
!3163 = !DILocation(line: 104, column: 80, scope: !3149, inlinedAt: !3160)
!3164 = !DILocation(line: 104, column: 90, scope: !3149, inlinedAt: !3160)
!3165 = !DILocation(line: 106, column: 7, scope: !3166, inlinedAt: !3160)
!3166 = !DILexicalBlockFile(scope: !3167, file: !3058, discriminator: 2)
!3167 = distinct !DILexicalBlock(scope: !3149, file: !3058, line: 106, column: 7)
!3168 = !DILocation(line: 106, column: 7, scope: !3169, inlinedAt: !3160)
!3169 = !DILexicalBlockFile(scope: !3149, file: !3058, discriminator: 2)
!3170 = !DILocalVariable(name: "s2", arg: 2, scope: !3171, file: !3058, line: 90, type: !36)
!3171 = distinct !DISubprogram(name: "strcaseeq5", scope: !3058, file: !3058, line: 90, type: !3172, isLocal: true, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: true, unit: !396, variables: !3174)
!3172 = !DISubroutineType(types: !3173)
!3173 = !{!80, !36, !36, !26, !26, !26, !26}
!3174 = !{!3175, !3170, !3176, !3177, !3178, !3179}
!3175 = !DILocalVariable(name: "s1", arg: 1, scope: !3171, file: !3058, line: 90, type: !36)
!3176 = !DILocalVariable(name: "s25", arg: 3, scope: !3171, file: !3058, line: 90, type: !26)
!3177 = !DILocalVariable(name: "s26", arg: 4, scope: !3171, file: !3058, line: 90, type: !26)
!3178 = !DILocalVariable(name: "s27", arg: 5, scope: !3171, file: !3058, line: 90, type: !26)
!3179 = !DILocalVariable(name: "s28", arg: 6, scope: !3171, file: !3058, line: 90, type: !26)
!3180 = !DILocation(line: 90, column: 41, scope: !3171, inlinedAt: !3181)
!3181 = distinct !DILocation(line: 111, column: 16, scope: !3182, inlinedAt: !3160)
!3182 = distinct !DILexicalBlock(scope: !3183, file: !3058, line: 108, column: 11)
!3183 = distinct !DILexicalBlock(scope: !3167, file: !3058, line: 107, column: 5)
!3184 = !DILocation(line: 90, column: 70, scope: !3171, inlinedAt: !3181)
!3185 = !DILocation(line: 90, column: 80, scope: !3171, inlinedAt: !3181)
!3186 = !DILocation(line: 92, column: 7, scope: !3187, inlinedAt: !3181)
!3187 = !DILexicalBlockFile(scope: !3188, file: !3058, discriminator: 2)
!3188 = distinct !DILexicalBlock(scope: !3171, file: !3058, line: 92, column: 7)
!3189 = !DILocation(line: 92, column: 7, scope: !3190, inlinedAt: !3181)
!3190 = !DILexicalBlockFile(scope: !3171, file: !3058, discriminator: 2)
!3191 = !DILocation(line: 227, column: 12, scope: !3074)
!3192 = !DILocation(line: 227, column: 21, scope: !3074)
!3193 = !DILocation(line: 227, column: 5, scope: !3074)
!3194 = !DILocation(line: 146, column: 41, scope: !3081, inlinedAt: !3195)
!3195 = distinct !DILocation(line: 167, column: 16, scope: !3096, inlinedAt: !3196)
!3196 = distinct !DILocation(line: 228, column: 7, scope: !3197)
!3197 = distinct !DILexicalBlock(scope: !3039, file: !423, line: 228, column: 7)
!3198 = !DILocation(line: 146, column: 110, scope: !3081, inlinedAt: !3195)
!3199 = !DILocation(line: 146, column: 120, scope: !3081, inlinedAt: !3195)
!3200 = !DILocation(line: 148, column: 7, scope: !3101, inlinedAt: !3195)
!3201 = !DILocation(line: 132, column: 41, scope: !3104, inlinedAt: !3202)
!3202 = distinct !DILocation(line: 153, column: 16, scope: !3118, inlinedAt: !3195)
!3203 = !DILocation(line: 132, column: 100, scope: !3104, inlinedAt: !3202)
!3204 = !DILocation(line: 132, column: 110, scope: !3104, inlinedAt: !3202)
!3205 = !DILocation(line: 134, column: 7, scope: !3206, inlinedAt: !3202)
!3206 = !DILexicalBlockFile(scope: !3124, file: !3058, discriminator: 2)
!3207 = !DILocation(line: 134, column: 7, scope: !3208, inlinedAt: !3202)
!3208 = !DILexicalBlockFile(scope: !3104, file: !3058, discriminator: 2)
!3209 = !DILocation(line: 118, column: 41, scope: !3126, inlinedAt: !3210)
!3210 = distinct !DILocation(line: 139, column: 16, scope: !3139, inlinedAt: !3202)
!3211 = !DILocation(line: 118, column: 90, scope: !3126, inlinedAt: !3210)
!3212 = !DILocation(line: 118, column: 100, scope: !3126, inlinedAt: !3210)
!3213 = !DILocation(line: 120, column: 7, scope: !3144, inlinedAt: !3210)
!3214 = !DILocation(line: 120, column: 7, scope: !3147, inlinedAt: !3210)
!3215 = !DILocation(line: 104, column: 41, scope: !3149, inlinedAt: !3216)
!3216 = distinct !DILocation(line: 125, column: 16, scope: !3161, inlinedAt: !3210)
!3217 = !DILocation(line: 104, column: 80, scope: !3149, inlinedAt: !3216)
!3218 = !DILocation(line: 104, column: 90, scope: !3149, inlinedAt: !3216)
!3219 = !DILocation(line: 106, column: 7, scope: !3166, inlinedAt: !3216)
!3220 = !DILocation(line: 106, column: 7, scope: !3169, inlinedAt: !3216)
!3221 = !DILocation(line: 90, column: 41, scope: !3171, inlinedAt: !3222)
!3222 = distinct !DILocation(line: 111, column: 16, scope: !3182, inlinedAt: !3216)
!3223 = !DILocation(line: 90, column: 70, scope: !3171, inlinedAt: !3222)
!3224 = !DILocation(line: 90, column: 80, scope: !3171, inlinedAt: !3222)
!3225 = !DILocation(line: 92, column: 7, scope: !3187, inlinedAt: !3222)
!3226 = !DILocation(line: 92, column: 7, scope: !3190, inlinedAt: !3222)
!3227 = !DILocalVariable(name: "s2", arg: 2, scope: !3228, file: !3058, line: 76, type: !36)
!3228 = distinct !DISubprogram(name: "strcaseeq6", scope: !3058, file: !3058, line: 76, type: !3229, isLocal: true, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: true, unit: !396, variables: !3231)
!3229 = !DISubroutineType(types: !3230)
!3230 = !{!80, !36, !36, !26, !26, !26}
!3231 = !{!3232, !3227, !3233, !3234, !3235}
!3232 = !DILocalVariable(name: "s1", arg: 1, scope: !3228, file: !3058, line: 76, type: !36)
!3233 = !DILocalVariable(name: "s26", arg: 3, scope: !3228, file: !3058, line: 76, type: !26)
!3234 = !DILocalVariable(name: "s27", arg: 4, scope: !3228, file: !3058, line: 76, type: !26)
!3235 = !DILocalVariable(name: "s28", arg: 5, scope: !3228, file: !3058, line: 76, type: !26)
!3236 = !DILocation(line: 76, column: 41, scope: !3228, inlinedAt: !3237)
!3237 = distinct !DILocation(line: 97, column: 16, scope: !3238, inlinedAt: !3222)
!3238 = distinct !DILexicalBlock(scope: !3239, file: !3058, line: 94, column: 11)
!3239 = distinct !DILexicalBlock(scope: !3188, file: !3058, line: 93, column: 5)
!3240 = !DILocation(line: 76, column: 60, scope: !3228, inlinedAt: !3237)
!3241 = !DILocation(line: 76, column: 70, scope: !3228, inlinedAt: !3237)
!3242 = !DILocation(line: 78, column: 7, scope: !3243, inlinedAt: !3237)
!3243 = !DILexicalBlockFile(scope: !3244, file: !3058, discriminator: 2)
!3244 = distinct !DILexicalBlock(scope: !3228, file: !3058, line: 78, column: 7)
!3245 = !DILocation(line: 78, column: 7, scope: !3246, inlinedAt: !3237)
!3246 = !DILexicalBlockFile(scope: !3228, file: !3058, discriminator: 2)
!3247 = !DILocalVariable(name: "s2", arg: 2, scope: !3248, file: !3058, line: 62, type: !36)
!3248 = distinct !DISubprogram(name: "strcaseeq7", scope: !3058, file: !3058, line: 62, type: !3249, isLocal: true, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: true, unit: !396, variables: !3251)
!3249 = !DISubroutineType(types: !3250)
!3250 = !{!80, !36, !36, !26, !26}
!3251 = !{!3252, !3247, !3253, !3254}
!3252 = !DILocalVariable(name: "s1", arg: 1, scope: !3248, file: !3058, line: 62, type: !36)
!3253 = !DILocalVariable(name: "s27", arg: 3, scope: !3248, file: !3058, line: 62, type: !26)
!3254 = !DILocalVariable(name: "s28", arg: 4, scope: !3248, file: !3058, line: 62, type: !26)
!3255 = !DILocation(line: 62, column: 41, scope: !3248, inlinedAt: !3256)
!3256 = distinct !DILocation(line: 83, column: 16, scope: !3257, inlinedAt: !3237)
!3257 = distinct !DILexicalBlock(scope: !3258, file: !3058, line: 80, column: 11)
!3258 = distinct !DILexicalBlock(scope: !3244, file: !3058, line: 79, column: 5)
!3259 = !DILocation(line: 62, column: 50, scope: !3248, inlinedAt: !3256)
!3260 = !DILocation(line: 62, column: 60, scope: !3248, inlinedAt: !3256)
!3261 = !DILocation(line: 64, column: 7, scope: !3262, inlinedAt: !3256)
!3262 = !DILexicalBlockFile(scope: !3263, file: !3058, discriminator: 2)
!3263 = distinct !DILexicalBlock(scope: !3248, file: !3058, line: 64, column: 7)
!3264 = !DILocation(line: 228, column: 7, scope: !3039)
!3265 = !DILocation(line: 229, column: 12, scope: !3197)
!3266 = !DILocation(line: 229, column: 21, scope: !3197)
!3267 = !DILocation(line: 229, column: 5, scope: !3197)
!3268 = !DILocation(line: 231, column: 13, scope: !3039)
!3269 = !DILocation(line: 231, column: 11, scope: !3039)
!3270 = !DILocation(line: 231, column: 3, scope: !3039)
!3271 = !DILocation(line: 232, column: 1, scope: !3039)
!3272 = distinct !DISubprogram(name: "quotearg_alloc", scope: !423, file: !423, line: 791, type: !3273, isLocal: false, isDefinition: true, scopeLine: 793, flags: DIFlagPrototyped, isOptimized: true, unit: !396, variables: !3275)
!3273 = !DISubroutineType(types: !3274)
!3274 = !{!25, !36, !28, !2117}
!3275 = !{!3276, !3277, !3278}
!3276 = !DILocalVariable(name: "arg", arg: 1, scope: !3272, file: !423, line: 791, type: !36)
!3277 = !DILocalVariable(name: "argsize", arg: 2, scope: !3272, file: !423, line: 791, type: !28)
!3278 = !DILocalVariable(name: "o", arg: 3, scope: !3272, file: !423, line: 792, type: !2117)
!3279 = !DILocation(line: 791, column: 29, scope: !3272)
!3280 = !DILocation(line: 791, column: 41, scope: !3272)
!3281 = !DILocation(line: 792, column: 47, scope: !3272)
!3282 = !DILocalVariable(name: "arg", arg: 1, scope: !3283, file: !423, line: 804, type: !36)
!3283 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !423, file: !423, line: 804, type: !3284, isLocal: false, isDefinition: true, scopeLine: 806, flags: DIFlagPrototyped, isOptimized: true, unit: !396, variables: !3286)
!3284 = !DISubroutineType(types: !3285)
!3285 = !{!25, !36, !28, !839, !2117}
!3286 = !{!3282, !3287, !3288, !3289, !3290, !3291, !3292, !3293, !3294}
!3287 = !DILocalVariable(name: "argsize", arg: 2, scope: !3283, file: !423, line: 804, type: !28)
!3288 = !DILocalVariable(name: "size", arg: 3, scope: !3283, file: !423, line: 804, type: !839)
!3289 = !DILocalVariable(name: "o", arg: 4, scope: !3283, file: !423, line: 805, type: !2117)
!3290 = !DILocalVariable(name: "p", scope: !3283, file: !423, line: 807, type: !2117)
!3291 = !DILocalVariable(name: "e", scope: !3283, file: !423, line: 808, type: !80)
!3292 = !DILocalVariable(name: "flags", scope: !3283, file: !423, line: 810, type: !80)
!3293 = !DILocalVariable(name: "bufsize", scope: !3283, file: !423, line: 811, type: !28)
!3294 = !DILocalVariable(name: "buf", scope: !3283, file: !423, line: 815, type: !25)
!3295 = !DILocation(line: 804, column: 33, scope: !3283, inlinedAt: !3296)
!3296 = distinct !DILocation(line: 794, column: 10, scope: !3272)
!3297 = !DILocation(line: 804, column: 45, scope: !3283, inlinedAt: !3296)
!3298 = !DILocation(line: 804, column: 62, scope: !3283, inlinedAt: !3296)
!3299 = !DILocation(line: 805, column: 51, scope: !3283, inlinedAt: !3296)
!3300 = !DILocation(line: 807, column: 37, scope: !3283, inlinedAt: !3296)
!3301 = !DILocation(line: 807, column: 33, scope: !3283, inlinedAt: !3296)
!3302 = !DILocation(line: 808, column: 11, scope: !3283, inlinedAt: !3296)
!3303 = !DILocation(line: 808, column: 7, scope: !3283, inlinedAt: !3296)
!3304 = !DILocation(line: 810, column: 18, scope: !3283, inlinedAt: !3296)
!3305 = !DILocation(line: 810, column: 24, scope: !3283, inlinedAt: !3296)
!3306 = !DILocation(line: 810, column: 7, scope: !3283, inlinedAt: !3296)
!3307 = !DILocation(line: 811, column: 69, scope: !3283, inlinedAt: !3296)
!3308 = !DILocation(line: 812, column: 53, scope: !3283, inlinedAt: !3296)
!3309 = !DILocation(line: 813, column: 49, scope: !3283, inlinedAt: !3296)
!3310 = !DILocation(line: 814, column: 49, scope: !3283, inlinedAt: !3296)
!3311 = !DILocation(line: 811, column: 20, scope: !3283, inlinedAt: !3296)
!3312 = !DILocation(line: 814, column: 62, scope: !3283, inlinedAt: !3296)
!3313 = !DILocation(line: 811, column: 10, scope: !3283, inlinedAt: !3296)
!3314 = !DILocalVariable(name: "n", arg: 1, scope: !3315, file: !835, line: 220, type: !28)
!3315 = distinct !DISubprogram(name: "xcharalloc", scope: !835, file: !835, line: 220, type: !3316, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !396, variables: !3318)
!3316 = !DISubroutineType(types: !3317)
!3317 = !{!25, !28}
!3318 = !{!3314}
!3319 = !DILocation(line: 220, column: 20, scope: !3315, inlinedAt: !3320)
!3320 = distinct !DILocation(line: 815, column: 15, scope: !3283, inlinedAt: !3296)
!3321 = !DILocation(line: 222, column: 10, scope: !3315, inlinedAt: !3320)
!3322 = !DILocation(line: 815, column: 9, scope: !3283, inlinedAt: !3296)
!3323 = !DILocation(line: 816, column: 60, scope: !3283, inlinedAt: !3296)
!3324 = !DILocation(line: 818, column: 32, scope: !3283, inlinedAt: !3296)
!3325 = !DILocation(line: 818, column: 47, scope: !3283, inlinedAt: !3296)
!3326 = !DILocation(line: 816, column: 3, scope: !3283, inlinedAt: !3296)
!3327 = !DILocation(line: 819, column: 9, scope: !3283, inlinedAt: !3296)
!3328 = !DILocation(line: 794, column: 3, scope: !3272)
!3329 = !DILocation(line: 804, column: 33, scope: !3283)
!3330 = !DILocation(line: 804, column: 45, scope: !3283)
!3331 = !DILocation(line: 804, column: 62, scope: !3283)
!3332 = !DILocation(line: 805, column: 51, scope: !3283)
!3333 = !DILocation(line: 807, column: 37, scope: !3283)
!3334 = !DILocation(line: 807, column: 33, scope: !3283)
!3335 = !DILocation(line: 808, column: 11, scope: !3283)
!3336 = !DILocation(line: 808, column: 7, scope: !3283)
!3337 = !DILocation(line: 810, column: 18, scope: !3283)
!3338 = !DILocation(line: 810, column: 27, scope: !3283)
!3339 = !DILocation(line: 810, column: 24, scope: !3283)
!3340 = !DILocation(line: 810, column: 7, scope: !3283)
!3341 = !DILocation(line: 811, column: 69, scope: !3283)
!3342 = !DILocation(line: 812, column: 53, scope: !3283)
!3343 = !DILocation(line: 813, column: 49, scope: !3283)
!3344 = !DILocation(line: 814, column: 49, scope: !3283)
!3345 = !DILocation(line: 811, column: 20, scope: !3283)
!3346 = !DILocation(line: 814, column: 62, scope: !3283)
!3347 = !DILocation(line: 811, column: 10, scope: !3283)
!3348 = !DILocation(line: 220, column: 20, scope: !3315, inlinedAt: !3349)
!3349 = distinct !DILocation(line: 815, column: 15, scope: !3283)
!3350 = !DILocation(line: 222, column: 10, scope: !3315, inlinedAt: !3349)
!3351 = !DILocation(line: 815, column: 9, scope: !3283)
!3352 = !DILocation(line: 816, column: 60, scope: !3283)
!3353 = !DILocation(line: 818, column: 32, scope: !3283)
!3354 = !DILocation(line: 818, column: 47, scope: !3283)
!3355 = !DILocation(line: 816, column: 3, scope: !3283)
!3356 = !DILocation(line: 819, column: 9, scope: !3283)
!3357 = !DILocation(line: 820, column: 7, scope: !3283)
!3358 = !DILocation(line: 821, column: 11, scope: !3359)
!3359 = distinct !DILexicalBlock(scope: !3283, file: !423, line: 820, column: 7)
!3360 = !DILocation(line: 821, column: 5, scope: !3359)
!3361 = !DILocation(line: 822, column: 3, scope: !3283)
!3362 = distinct !DISubprogram(name: "quotearg_free", scope: !423, file: !423, line: 840, type: !1141, isLocal: false, isDefinition: true, scopeLine: 841, flags: DIFlagPrototyped, isOptimized: true, unit: !396, variables: !3363)
!3363 = !{!3364, !3365}
!3364 = !DILocalVariable(name: "sv", scope: !3362, file: !423, line: 842, type: !444)
!3365 = !DILocalVariable(name: "i", scope: !3362, file: !423, line: 843, type: !80)
!3366 = !DILocation(line: 842, column: 24, scope: !3362)
!3367 = !DILocation(line: 842, column: 19, scope: !3362)
!3368 = !DILocation(line: 843, column: 7, scope: !3362)
!3369 = !DILocation(line: 844, column: 19, scope: !3370)
!3370 = !DILexicalBlockFile(scope: !3371, file: !423, discriminator: 1)
!3371 = distinct !DILexicalBlock(scope: !3372, file: !423, line: 844, column: 3)
!3372 = distinct !DILexicalBlock(scope: !3362, file: !423, line: 844, column: 3)
!3373 = !DILocation(line: 844, column: 17, scope: !3370)
!3374 = !DILocation(line: 844, column: 3, scope: !3375)
!3375 = !DILexicalBlockFile(scope: !3372, file: !423, discriminator: 1)
!3376 = !DILocation(line: 845, column: 17, scope: !3371)
!3377 = !{!3378, !893, i64 8}
!3378 = !{!"slotvec", !1069, i64 0, !893, i64 8}
!3379 = !DILocation(line: 845, column: 5, scope: !3371)
!3380 = !DILocation(line: 844, column: 28, scope: !3381)
!3381 = !DILexicalBlockFile(scope: !3371, file: !423, discriminator: 2)
!3382 = distinct !{!3382, !3383, !3384}
!3383 = !DILocation(line: 844, column: 3, scope: !3372)
!3384 = !DILocation(line: 845, column: 20, scope: !3372)
!3385 = !DILocation(line: 846, column: 13, scope: !3386)
!3386 = distinct !DILexicalBlock(scope: !3362, file: !423, line: 846, column: 7)
!3387 = !DILocation(line: 846, column: 17, scope: !3386)
!3388 = !DILocation(line: 846, column: 7, scope: !3362)
!3389 = !DILocation(line: 848, column: 7, scope: !3390)
!3390 = distinct !DILexicalBlock(scope: !3386, file: !423, line: 847, column: 5)
!3391 = !DILocation(line: 849, column: 21, scope: !3390)
!3392 = !{!3378, !1069, i64 0}
!3393 = !DILocation(line: 850, column: 20, scope: !3390)
!3394 = !DILocation(line: 851, column: 5, scope: !3390)
!3395 = !DILocation(line: 852, column: 10, scope: !3396)
!3396 = distinct !DILexicalBlock(scope: !3362, file: !423, line: 852, column: 7)
!3397 = !DILocation(line: 852, column: 7, scope: !3362)
!3398 = !DILocation(line: 854, column: 13, scope: !3399)
!3399 = distinct !DILexicalBlock(scope: !3396, file: !423, line: 853, column: 5)
!3400 = !DILocation(line: 854, column: 7, scope: !3399)
!3401 = !DILocation(line: 855, column: 15, scope: !3399)
!3402 = !DILocation(line: 856, column: 5, scope: !3399)
!3403 = !DILocation(line: 857, column: 10, scope: !3362)
!3404 = !DILocation(line: 858, column: 1, scope: !3362)
!3405 = distinct !DISubprogram(name: "quotearg_n", scope: !423, file: !423, line: 922, type: !3406, isLocal: false, isDefinition: true, scopeLine: 923, flags: DIFlagPrototyped, isOptimized: true, unit: !396, variables: !3408)
!3406 = !DISubroutineType(types: !3407)
!3407 = !{!25, !80, !36}
!3408 = !{!3409, !3410}
!3409 = !DILocalVariable(name: "n", arg: 1, scope: !3405, file: !423, line: 922, type: !80)
!3410 = !DILocalVariable(name: "arg", arg: 2, scope: !3405, file: !423, line: 922, type: !36)
!3411 = !DILocation(line: 922, column: 17, scope: !3405)
!3412 = !DILocation(line: 922, column: 32, scope: !3405)
!3413 = !DILocation(line: 924, column: 10, scope: !3405)
!3414 = !DILocation(line: 924, column: 3, scope: !3405)
!3415 = distinct !DISubprogram(name: "quotearg_n_options", scope: !423, file: !423, line: 869, type: !3416, isLocal: true, isDefinition: true, scopeLine: 871, flags: DIFlagPrototyped, isOptimized: true, unit: !396, variables: !3418)
!3416 = !DISubroutineType(types: !3417)
!3417 = !{!25, !80, !36, !28, !2117}
!3418 = !{!3419, !3420, !3421, !3422, !3423, !3424, !3425, !3428, !3430, !3431, !3432}
!3419 = !DILocalVariable(name: "n", arg: 1, scope: !3415, file: !423, line: 869, type: !80)
!3420 = !DILocalVariable(name: "arg", arg: 2, scope: !3415, file: !423, line: 869, type: !36)
!3421 = !DILocalVariable(name: "argsize", arg: 3, scope: !3415, file: !423, line: 869, type: !28)
!3422 = !DILocalVariable(name: "options", arg: 4, scope: !3415, file: !423, line: 870, type: !2117)
!3423 = !DILocalVariable(name: "e", scope: !3415, file: !423, line: 872, type: !80)
!3424 = !DILocalVariable(name: "sv", scope: !3415, file: !423, line: 874, type: !444)
!3425 = !DILocalVariable(name: "preallocated", scope: !3426, file: !423, line: 881, type: !47)
!3426 = distinct !DILexicalBlock(scope: !3427, file: !423, line: 880, column: 5)
!3427 = distinct !DILexicalBlock(scope: !3415, file: !423, line: 879, column: 7)
!3428 = !DILocalVariable(name: "size", scope: !3429, file: !423, line: 894, type: !28)
!3429 = distinct !DILexicalBlock(scope: !3415, file: !423, line: 893, column: 3)
!3430 = !DILocalVariable(name: "val", scope: !3429, file: !423, line: 895, type: !25)
!3431 = !DILocalVariable(name: "flags", scope: !3429, file: !423, line: 897, type: !80)
!3432 = !DILocalVariable(name: "qsize", scope: !3429, file: !423, line: 898, type: !28)
!3433 = !DILocation(line: 869, column: 25, scope: !3415)
!3434 = !DILocation(line: 869, column: 40, scope: !3415)
!3435 = !DILocation(line: 869, column: 52, scope: !3415)
!3436 = !DILocation(line: 870, column: 51, scope: !3415)
!3437 = !DILocation(line: 872, column: 11, scope: !3415)
!3438 = !DILocation(line: 872, column: 7, scope: !3415)
!3439 = !DILocation(line: 874, column: 24, scope: !3415)
!3440 = !DILocation(line: 874, column: 19, scope: !3415)
!3441 = !DILocation(line: 876, column: 9, scope: !3442)
!3442 = distinct !DILexicalBlock(scope: !3415, file: !423, line: 876, column: 7)
!3443 = !DILocation(line: 876, column: 7, scope: !3415)
!3444 = !DILocation(line: 877, column: 5, scope: !3442)
!3445 = !DILocation(line: 879, column: 7, scope: !3427)
!3446 = !DILocation(line: 879, column: 14, scope: !3427)
!3447 = !DILocation(line: 879, column: 7, scope: !3415)
!3448 = !DILocation(line: 881, column: 31, scope: !3426)
!3449 = !DILocation(line: 883, column: 67, scope: !3450)
!3450 = distinct !DILexicalBlock(scope: !3426, file: !423, line: 883, column: 11)
!3451 = !DILocation(line: 883, column: 11, scope: !3426)
!3452 = !DILocation(line: 884, column: 9, scope: !3450)
!3453 = !DILocation(line: 886, column: 32, scope: !3454)
!3454 = !DILexicalBlockFile(scope: !3426, file: !423, discriminator: 3)
!3455 = !DILocation(line: 886, column: 61, scope: !3454)
!3456 = !DILocation(line: 886, column: 58, scope: !3454)
!3457 = !DILocation(line: 886, column: 66, scope: !3454)
!3458 = !DILocation(line: 886, column: 22, scope: !3454)
!3459 = !DILocation(line: 886, column: 15, scope: !3454)
!3460 = !DILocation(line: 887, column: 11, scope: !3426)
!3461 = !DILocation(line: 888, column: 15, scope: !3462)
!3462 = distinct !DILexicalBlock(scope: !3426, file: !423, line: 887, column: 11)
!3463 = !{i64 0, i64 8, !1068, i64 8, i64 8, !892}
!3464 = !DILocation(line: 888, column: 9, scope: !3462)
!3465 = !DILocation(line: 889, column: 20, scope: !3426)
!3466 = !DILocation(line: 889, column: 18, scope: !3426)
!3467 = !DILocation(line: 889, column: 7, scope: !3426)
!3468 = !DILocation(line: 889, column: 38, scope: !3426)
!3469 = !DILocation(line: 889, column: 31, scope: !3426)
!3470 = !DILocation(line: 889, column: 48, scope: !3426)
!3471 = !DILocation(line: 890, column: 14, scope: !3426)
!3472 = !DILocation(line: 891, column: 5, scope: !3426)
!3473 = !DILocation(line: 894, column: 19, scope: !3429)
!3474 = !DILocation(line: 894, column: 25, scope: !3429)
!3475 = !DILocation(line: 894, column: 12, scope: !3429)
!3476 = !DILocation(line: 895, column: 23, scope: !3429)
!3477 = !DILocation(line: 895, column: 11, scope: !3429)
!3478 = !DILocation(line: 897, column: 26, scope: !3429)
!3479 = !DILocation(line: 897, column: 32, scope: !3429)
!3480 = !DILocation(line: 897, column: 9, scope: !3429)
!3481 = !DILocation(line: 899, column: 55, scope: !3429)
!3482 = !DILocation(line: 900, column: 46, scope: !3429)
!3483 = !DILocation(line: 901, column: 55, scope: !3429)
!3484 = !DILocation(line: 902, column: 55, scope: !3429)
!3485 = !DILocation(line: 898, column: 20, scope: !3429)
!3486 = !DILocation(line: 898, column: 12, scope: !3429)
!3487 = !DILocation(line: 904, column: 14, scope: !3488)
!3488 = distinct !DILexicalBlock(scope: !3429, file: !423, line: 904, column: 9)
!3489 = !DILocation(line: 904, column: 9, scope: !3429)
!3490 = !DILocation(line: 906, column: 35, scope: !3491)
!3491 = distinct !DILexicalBlock(scope: !3488, file: !423, line: 905, column: 7)
!3492 = !DILocation(line: 906, column: 20, scope: !3491)
!3493 = !DILocation(line: 907, column: 17, scope: !3494)
!3494 = distinct !DILexicalBlock(scope: !3491, file: !423, line: 907, column: 13)
!3495 = !DILocation(line: 907, column: 13, scope: !3491)
!3496 = !DILocation(line: 908, column: 11, scope: !3494)
!3497 = !DILocation(line: 220, column: 20, scope: !3315, inlinedAt: !3498)
!3498 = distinct !DILocation(line: 909, column: 27, scope: !3491)
!3499 = !DILocation(line: 222, column: 10, scope: !3315, inlinedAt: !3498)
!3500 = !DILocation(line: 909, column: 19, scope: !3491)
!3501 = !DILocation(line: 910, column: 69, scope: !3491)
!3502 = !DILocation(line: 912, column: 44, scope: !3491)
!3503 = !DILocation(line: 913, column: 44, scope: !3491)
!3504 = !DILocation(line: 910, column: 9, scope: !3491)
!3505 = !DILocation(line: 914, column: 7, scope: !3491)
!3506 = !DILocation(line: 916, column: 11, scope: !3429)
!3507 = !DILocation(line: 917, column: 5, scope: !3429)
!3508 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !423, file: !423, line: 928, type: !3509, isLocal: false, isDefinition: true, scopeLine: 929, flags: DIFlagPrototyped, isOptimized: true, unit: !396, variables: !3511)
!3509 = !DISubroutineType(types: !3510)
!3510 = !{!25, !80, !36, !28}
!3511 = !{!3512, !3513, !3514}
!3512 = !DILocalVariable(name: "n", arg: 1, scope: !3508, file: !423, line: 928, type: !80)
!3513 = !DILocalVariable(name: "arg", arg: 2, scope: !3508, file: !423, line: 928, type: !36)
!3514 = !DILocalVariable(name: "argsize", arg: 3, scope: !3508, file: !423, line: 928, type: !28)
!3515 = !DILocation(line: 928, column: 21, scope: !3508)
!3516 = !DILocation(line: 928, column: 36, scope: !3508)
!3517 = !DILocation(line: 928, column: 48, scope: !3508)
!3518 = !DILocation(line: 930, column: 10, scope: !3508)
!3519 = !DILocation(line: 930, column: 3, scope: !3508)
!3520 = distinct !DISubprogram(name: "quotearg", scope: !423, file: !423, line: 934, type: !1826, isLocal: false, isDefinition: true, scopeLine: 935, flags: DIFlagPrototyped, isOptimized: true, unit: !396, variables: !3521)
!3521 = !{!3522}
!3522 = !DILocalVariable(name: "arg", arg: 1, scope: !3520, file: !423, line: 934, type: !36)
!3523 = !DILocation(line: 934, column: 23, scope: !3520)
!3524 = !DILocation(line: 922, column: 17, scope: !3405, inlinedAt: !3525)
!3525 = distinct !DILocation(line: 936, column: 10, scope: !3520)
!3526 = !DILocation(line: 922, column: 32, scope: !3405, inlinedAt: !3525)
!3527 = !DILocation(line: 924, column: 10, scope: !3405, inlinedAt: !3525)
!3528 = !DILocation(line: 936, column: 3, scope: !3520)
!3529 = distinct !DISubprogram(name: "quotearg_mem", scope: !423, file: !423, line: 940, type: !3530, isLocal: false, isDefinition: true, scopeLine: 941, flags: DIFlagPrototyped, isOptimized: true, unit: !396, variables: !3532)
!3530 = !DISubroutineType(types: !3531)
!3531 = !{!25, !36, !28}
!3532 = !{!3533, !3534}
!3533 = !DILocalVariable(name: "arg", arg: 1, scope: !3529, file: !423, line: 940, type: !36)
!3534 = !DILocalVariable(name: "argsize", arg: 2, scope: !3529, file: !423, line: 940, type: !28)
!3535 = !DILocation(line: 940, column: 27, scope: !3529)
!3536 = !DILocation(line: 940, column: 39, scope: !3529)
!3537 = !DILocation(line: 928, column: 21, scope: !3508, inlinedAt: !3538)
!3538 = distinct !DILocation(line: 942, column: 10, scope: !3529)
!3539 = !DILocation(line: 928, column: 36, scope: !3508, inlinedAt: !3538)
!3540 = !DILocation(line: 928, column: 48, scope: !3508, inlinedAt: !3538)
!3541 = !DILocation(line: 930, column: 10, scope: !3508, inlinedAt: !3538)
!3542 = !DILocation(line: 942, column: 3, scope: !3529)
!3543 = distinct !DISubprogram(name: "quotearg_n_style", scope: !423, file: !423, line: 946, type: !3544, isLocal: false, isDefinition: true, scopeLine: 947, flags: DIFlagPrototyped, isOptimized: true, unit: !396, variables: !3546)
!3544 = !DISubroutineType(types: !3545)
!3545 = !{!25, !80, !10, !36}
!3546 = !{!3547, !3548, !3549, !3550}
!3547 = !DILocalVariable(name: "n", arg: 1, scope: !3543, file: !423, line: 946, type: !80)
!3548 = !DILocalVariable(name: "s", arg: 2, scope: !3543, file: !423, line: 946, type: !10)
!3549 = !DILocalVariable(name: "arg", arg: 3, scope: !3543, file: !423, line: 946, type: !36)
!3550 = !DILocalVariable(name: "o", scope: !3543, file: !423, line: 948, type: !2118)
!3551 = !DILocalVariable(name: "o", scope: !3552, file: !423, line: 187, type: !430)
!3552 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !423, file: !423, line: 185, type: !3553, isLocal: true, isDefinition: true, scopeLine: 186, flags: DIFlagPrototyped, isOptimized: true, unit: !396, variables: !3555)
!3553 = !DISubroutineType(types: !3554)
!3554 = !{!430, !10}
!3555 = !{!3556, !3551}
!3556 = !DILocalVariable(name: "style", arg: 1, scope: !3552, file: !423, line: 185, type: !10)
!3557 = !DIExpression(DW_OP_LLVM_fragment, 32, 416)
!3558 = !DILocation(line: 187, column: 26, scope: !3552, inlinedAt: !3559)
!3559 = distinct !DILocation(line: 948, column: 36, scope: !3543)
!3560 = !DILocation(line: 946, column: 23, scope: !3543)
!3561 = !DILocation(line: 946, column: 45, scope: !3543)
!3562 = !DILocation(line: 946, column: 60, scope: !3543)
!3563 = !DILocation(line: 948, column: 3, scope: !3543)
!3564 = !DILocation(line: 948, column: 32, scope: !3543)
!3565 = !DILocation(line: 185, column: 48, scope: !3552, inlinedAt: !3559)
!3566 = !DILocation(line: 187, column: 3, scope: !3552, inlinedAt: !3559)
!3567 = !DIExpression(DW_OP_LLVM_fragment, 0, 32)
!3568 = !DILocation(line: 188, column: 13, scope: !3569, inlinedAt: !3559)
!3569 = distinct !DILexicalBlock(scope: !3552, file: !423, line: 188, column: 7)
!3570 = !DILocation(line: 188, column: 7, scope: !3552, inlinedAt: !3559)
!3571 = !DILocation(line: 189, column: 5, scope: !3569, inlinedAt: !3559)
!3572 = !{!3573}
!3573 = distinct !{!3573, !3574, !"quoting_options_from_style: argument 0"}
!3574 = distinct !{!3574, !"quoting_options_from_style"}
!3575 = !DILocation(line: 191, column: 10, scope: !3552, inlinedAt: !3559)
!3576 = !DILocation(line: 192, column: 1, scope: !3552, inlinedAt: !3559)
!3577 = !DILocation(line: 949, column: 10, scope: !3543)
!3578 = !DILocation(line: 950, column: 1, scope: !3543)
!3579 = !DILocation(line: 949, column: 3, scope: !3543)
!3580 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !423, file: !423, line: 953, type: !3581, isLocal: false, isDefinition: true, scopeLine: 955, flags: DIFlagPrototyped, isOptimized: true, unit: !396, variables: !3583)
!3581 = !DISubroutineType(types: !3582)
!3582 = !{!25, !80, !10, !36, !28}
!3583 = !{!3584, !3585, !3586, !3587, !3588}
!3584 = !DILocalVariable(name: "n", arg: 1, scope: !3580, file: !423, line: 953, type: !80)
!3585 = !DILocalVariable(name: "s", arg: 2, scope: !3580, file: !423, line: 953, type: !10)
!3586 = !DILocalVariable(name: "arg", arg: 3, scope: !3580, file: !423, line: 954, type: !36)
!3587 = !DILocalVariable(name: "argsize", arg: 4, scope: !3580, file: !423, line: 954, type: !28)
!3588 = !DILocalVariable(name: "o", scope: !3580, file: !423, line: 956, type: !2118)
!3589 = !DILocation(line: 187, column: 26, scope: !3552, inlinedAt: !3590)
!3590 = distinct !DILocation(line: 956, column: 36, scope: !3580)
!3591 = !DILocation(line: 953, column: 27, scope: !3580)
!3592 = !DILocation(line: 953, column: 49, scope: !3580)
!3593 = !DILocation(line: 954, column: 35, scope: !3580)
!3594 = !DILocation(line: 954, column: 47, scope: !3580)
!3595 = !DILocation(line: 956, column: 3, scope: !3580)
!3596 = !DILocation(line: 956, column: 32, scope: !3580)
!3597 = !DILocation(line: 185, column: 48, scope: !3552, inlinedAt: !3590)
!3598 = !DILocation(line: 187, column: 3, scope: !3552, inlinedAt: !3590)
!3599 = !DILocation(line: 188, column: 13, scope: !3569, inlinedAt: !3590)
!3600 = !DILocation(line: 188, column: 7, scope: !3552, inlinedAt: !3590)
!3601 = !DILocation(line: 189, column: 5, scope: !3569, inlinedAt: !3590)
!3602 = !{!3603}
!3603 = distinct !{!3603, !3604, !"quoting_options_from_style: argument 0"}
!3604 = distinct !{!3604, !"quoting_options_from_style"}
!3605 = !DILocation(line: 191, column: 10, scope: !3552, inlinedAt: !3590)
!3606 = !DILocation(line: 192, column: 1, scope: !3552, inlinedAt: !3590)
!3607 = !DILocation(line: 957, column: 10, scope: !3580)
!3608 = !DILocation(line: 958, column: 1, scope: !3580)
!3609 = !DILocation(line: 957, column: 3, scope: !3580)
!3610 = distinct !DISubprogram(name: "quotearg_style", scope: !423, file: !423, line: 961, type: !3611, isLocal: false, isDefinition: true, scopeLine: 962, flags: DIFlagPrototyped, isOptimized: true, unit: !396, variables: !3613)
!3611 = !DISubroutineType(types: !3612)
!3612 = !{!25, !10, !36}
!3613 = !{!3614, !3615}
!3614 = !DILocalVariable(name: "s", arg: 1, scope: !3610, file: !423, line: 961, type: !10)
!3615 = !DILocalVariable(name: "arg", arg: 2, scope: !3610, file: !423, line: 961, type: !36)
!3616 = !DILocation(line: 187, column: 26, scope: !3552, inlinedAt: !3617)
!3617 = distinct !DILocation(line: 948, column: 36, scope: !3543, inlinedAt: !3618)
!3618 = distinct !DILocation(line: 963, column: 10, scope: !3610)
!3619 = !DILocation(line: 961, column: 36, scope: !3610)
!3620 = !DILocation(line: 961, column: 51, scope: !3610)
!3621 = !DILocation(line: 946, column: 23, scope: !3543, inlinedAt: !3618)
!3622 = !DILocation(line: 946, column: 45, scope: !3543, inlinedAt: !3618)
!3623 = !DILocation(line: 946, column: 60, scope: !3543, inlinedAt: !3618)
!3624 = !DILocation(line: 948, column: 3, scope: !3543, inlinedAt: !3618)
!3625 = !DILocation(line: 948, column: 32, scope: !3543, inlinedAt: !3618)
!3626 = !DILocation(line: 185, column: 48, scope: !3552, inlinedAt: !3617)
!3627 = !DILocation(line: 187, column: 3, scope: !3552, inlinedAt: !3617)
!3628 = !DILocation(line: 188, column: 13, scope: !3569, inlinedAt: !3617)
!3629 = !DILocation(line: 188, column: 7, scope: !3552, inlinedAt: !3617)
!3630 = !DILocation(line: 189, column: 5, scope: !3569, inlinedAt: !3617)
!3631 = !{!3632}
!3632 = distinct !{!3632, !3633, !"quoting_options_from_style: argument 0"}
!3633 = distinct !{!3633, !"quoting_options_from_style"}
!3634 = !DILocation(line: 191, column: 10, scope: !3552, inlinedAt: !3617)
!3635 = !DILocation(line: 192, column: 1, scope: !3552, inlinedAt: !3617)
!3636 = !DILocation(line: 949, column: 10, scope: !3543, inlinedAt: !3618)
!3637 = !DILocation(line: 950, column: 1, scope: !3543, inlinedAt: !3618)
!3638 = !DILocation(line: 963, column: 3, scope: !3610)
!3639 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !423, file: !423, line: 967, type: !3640, isLocal: false, isDefinition: true, scopeLine: 968, flags: DIFlagPrototyped, isOptimized: true, unit: !396, variables: !3642)
!3640 = !DISubroutineType(types: !3641)
!3641 = !{!25, !10, !36, !28}
!3642 = !{!3643, !3644, !3645}
!3643 = !DILocalVariable(name: "s", arg: 1, scope: !3639, file: !423, line: 967, type: !10)
!3644 = !DILocalVariable(name: "arg", arg: 2, scope: !3639, file: !423, line: 967, type: !36)
!3645 = !DILocalVariable(name: "argsize", arg: 3, scope: !3639, file: !423, line: 967, type: !28)
!3646 = !DILocation(line: 187, column: 26, scope: !3552, inlinedAt: !3647)
!3647 = distinct !DILocation(line: 956, column: 36, scope: !3580, inlinedAt: !3648)
!3648 = distinct !DILocation(line: 969, column: 10, scope: !3639)
!3649 = !DILocation(line: 967, column: 40, scope: !3639)
!3650 = !DILocation(line: 967, column: 55, scope: !3639)
!3651 = !DILocation(line: 967, column: 67, scope: !3639)
!3652 = !DILocation(line: 953, column: 27, scope: !3580, inlinedAt: !3648)
!3653 = !DILocation(line: 953, column: 49, scope: !3580, inlinedAt: !3648)
!3654 = !DILocation(line: 954, column: 35, scope: !3580, inlinedAt: !3648)
!3655 = !DILocation(line: 954, column: 47, scope: !3580, inlinedAt: !3648)
!3656 = !DILocation(line: 956, column: 3, scope: !3580, inlinedAt: !3648)
!3657 = !DILocation(line: 956, column: 32, scope: !3580, inlinedAt: !3648)
!3658 = !DILocation(line: 185, column: 48, scope: !3552, inlinedAt: !3647)
!3659 = !DILocation(line: 187, column: 3, scope: !3552, inlinedAt: !3647)
!3660 = !DILocation(line: 188, column: 13, scope: !3569, inlinedAt: !3647)
!3661 = !DILocation(line: 188, column: 7, scope: !3552, inlinedAt: !3647)
!3662 = !DILocation(line: 189, column: 5, scope: !3569, inlinedAt: !3647)
!3663 = !{!3664}
!3664 = distinct !{!3664, !3665, !"quoting_options_from_style: argument 0"}
!3665 = distinct !{!3665, !"quoting_options_from_style"}
!3666 = !DILocation(line: 191, column: 10, scope: !3552, inlinedAt: !3647)
!3667 = !DILocation(line: 192, column: 1, scope: !3552, inlinedAt: !3647)
!3668 = !DILocation(line: 957, column: 10, scope: !3580, inlinedAt: !3648)
!3669 = !DILocation(line: 958, column: 1, scope: !3580, inlinedAt: !3648)
!3670 = !DILocation(line: 969, column: 3, scope: !3639)
!3671 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !423, file: !423, line: 973, type: !3672, isLocal: false, isDefinition: true, scopeLine: 974, flags: DIFlagPrototyped, isOptimized: true, unit: !396, variables: !3674)
!3672 = !DISubroutineType(types: !3673)
!3673 = !{!25, !36, !28, !26}
!3674 = !{!3675, !3676, !3677, !3678}
!3675 = !DILocalVariable(name: "arg", arg: 1, scope: !3671, file: !423, line: 973, type: !36)
!3676 = !DILocalVariable(name: "argsize", arg: 2, scope: !3671, file: !423, line: 973, type: !28)
!3677 = !DILocalVariable(name: "ch", arg: 3, scope: !3671, file: !423, line: 973, type: !26)
!3678 = !DILocalVariable(name: "options", scope: !3671, file: !423, line: 975, type: !430)
!3679 = !DILocation(line: 973, column: 32, scope: !3671)
!3680 = !DILocation(line: 973, column: 44, scope: !3671)
!3681 = !DILocation(line: 973, column: 58, scope: !3671)
!3682 = !DILocation(line: 975, column: 3, scope: !3671)
!3683 = !DILocation(line: 976, column: 13, scope: !3671)
!3684 = !{i64 0, i64 4, !1090, i64 4, i64 4, !1002, i64 8, i64 32, !1090, i64 40, i64 8, !892, i64 48, i64 8, !892}
!3685 = !DILocation(line: 975, column: 26, scope: !3671)
!3686 = !DILocation(line: 144, column: 43, scope: !2141, inlinedAt: !3687)
!3687 = distinct !DILocation(line: 977, column: 3, scope: !3671)
!3688 = !DILocation(line: 144, column: 51, scope: !2141, inlinedAt: !3687)
!3689 = !DILocation(line: 144, column: 58, scope: !2141, inlinedAt: !3687)
!3690 = !DILocation(line: 146, column: 17, scope: !2141, inlinedAt: !3687)
!3691 = !DILocation(line: 148, column: 62, scope: !2159, inlinedAt: !3687)
!3692 = !DILocation(line: 148, column: 57, scope: !2159, inlinedAt: !3687)
!3693 = !DILocation(line: 147, column: 17, scope: !2141, inlinedAt: !3687)
!3694 = !DILocation(line: 149, column: 18, scope: !2141, inlinedAt: !3687)
!3695 = !DILocation(line: 149, column: 15, scope: !2141, inlinedAt: !3687)
!3696 = !DILocation(line: 149, column: 7, scope: !2141, inlinedAt: !3687)
!3697 = !DILocation(line: 150, column: 12, scope: !2141, inlinedAt: !3687)
!3698 = !DILocation(line: 150, column: 15, scope: !2141, inlinedAt: !3687)
!3699 = !DILocation(line: 150, column: 25, scope: !2141, inlinedAt: !3687)
!3700 = !DILocation(line: 150, column: 7, scope: !2141, inlinedAt: !3687)
!3701 = !DILocation(line: 151, column: 18, scope: !2141, inlinedAt: !3687)
!3702 = !DILocation(line: 151, column: 23, scope: !2141, inlinedAt: !3687)
!3703 = !DILocation(line: 151, column: 6, scope: !2141, inlinedAt: !3687)
!3704 = !DILocation(line: 978, column: 10, scope: !3671)
!3705 = !DILocation(line: 979, column: 1, scope: !3671)
!3706 = !DILocation(line: 978, column: 3, scope: !3671)
!3707 = distinct !DISubprogram(name: "quotearg_char", scope: !423, file: !423, line: 982, type: !3708, isLocal: false, isDefinition: true, scopeLine: 983, flags: DIFlagPrototyped, isOptimized: true, unit: !396, variables: !3710)
!3708 = !DISubroutineType(types: !3709)
!3709 = !{!25, !36, !26}
!3710 = !{!3711, !3712}
!3711 = !DILocalVariable(name: "arg", arg: 1, scope: !3707, file: !423, line: 982, type: !36)
!3712 = !DILocalVariable(name: "ch", arg: 2, scope: !3707, file: !423, line: 982, type: !26)
!3713 = !DILocation(line: 982, column: 28, scope: !3707)
!3714 = !DILocation(line: 982, column: 38, scope: !3707)
!3715 = !DILocation(line: 973, column: 32, scope: !3671, inlinedAt: !3716)
!3716 = distinct !DILocation(line: 984, column: 10, scope: !3707)
!3717 = !DILocation(line: 973, column: 44, scope: !3671, inlinedAt: !3716)
!3718 = !DILocation(line: 973, column: 58, scope: !3671, inlinedAt: !3716)
!3719 = !DILocation(line: 975, column: 3, scope: !3671, inlinedAt: !3716)
!3720 = !DILocation(line: 976, column: 13, scope: !3671, inlinedAt: !3716)
!3721 = !DILocation(line: 975, column: 26, scope: !3671, inlinedAt: !3716)
!3722 = !DILocation(line: 144, column: 43, scope: !2141, inlinedAt: !3723)
!3723 = distinct !DILocation(line: 977, column: 3, scope: !3671, inlinedAt: !3716)
!3724 = !DILocation(line: 144, column: 51, scope: !2141, inlinedAt: !3723)
!3725 = !DILocation(line: 144, column: 58, scope: !2141, inlinedAt: !3723)
!3726 = !DILocation(line: 146, column: 17, scope: !2141, inlinedAt: !3723)
!3727 = !DILocation(line: 148, column: 62, scope: !2159, inlinedAt: !3723)
!3728 = !DILocation(line: 148, column: 57, scope: !2159, inlinedAt: !3723)
!3729 = !DILocation(line: 147, column: 17, scope: !2141, inlinedAt: !3723)
!3730 = !DILocation(line: 149, column: 18, scope: !2141, inlinedAt: !3723)
!3731 = !DILocation(line: 149, column: 15, scope: !2141, inlinedAt: !3723)
!3732 = !DILocation(line: 149, column: 7, scope: !2141, inlinedAt: !3723)
!3733 = !DILocation(line: 150, column: 12, scope: !2141, inlinedAt: !3723)
!3734 = !DILocation(line: 150, column: 15, scope: !2141, inlinedAt: !3723)
!3735 = !DILocation(line: 150, column: 25, scope: !2141, inlinedAt: !3723)
!3736 = !DILocation(line: 150, column: 7, scope: !2141, inlinedAt: !3723)
!3737 = !DILocation(line: 151, column: 18, scope: !2141, inlinedAt: !3723)
!3738 = !DILocation(line: 151, column: 23, scope: !2141, inlinedAt: !3723)
!3739 = !DILocation(line: 151, column: 6, scope: !2141, inlinedAt: !3723)
!3740 = !DILocation(line: 978, column: 10, scope: !3671, inlinedAt: !3716)
!3741 = !DILocation(line: 979, column: 1, scope: !3671, inlinedAt: !3716)
!3742 = !DILocation(line: 984, column: 3, scope: !3707)
!3743 = distinct !DISubprogram(name: "quotearg_colon", scope: !423, file: !423, line: 988, type: !1826, isLocal: false, isDefinition: true, scopeLine: 989, flags: DIFlagPrototyped, isOptimized: true, unit: !396, variables: !3744)
!3744 = !{!3745}
!3745 = !DILocalVariable(name: "arg", arg: 1, scope: !3743, file: !423, line: 988, type: !36)
!3746 = !DILocation(line: 988, column: 29, scope: !3743)
!3747 = !DILocation(line: 982, column: 28, scope: !3707, inlinedAt: !3748)
!3748 = distinct !DILocation(line: 990, column: 10, scope: !3743)
!3749 = !DILocation(line: 982, column: 38, scope: !3707, inlinedAt: !3748)
!3750 = !DILocation(line: 973, column: 32, scope: !3671, inlinedAt: !3751)
!3751 = distinct !DILocation(line: 984, column: 10, scope: !3707, inlinedAt: !3748)
!3752 = !DILocation(line: 973, column: 44, scope: !3671, inlinedAt: !3751)
!3753 = !DILocation(line: 973, column: 58, scope: !3671, inlinedAt: !3751)
!3754 = !DILocation(line: 975, column: 3, scope: !3671, inlinedAt: !3751)
!3755 = !DILocation(line: 976, column: 13, scope: !3671, inlinedAt: !3751)
!3756 = !DILocation(line: 975, column: 26, scope: !3671, inlinedAt: !3751)
!3757 = !DILocation(line: 144, column: 43, scope: !2141, inlinedAt: !3758)
!3758 = distinct !DILocation(line: 977, column: 3, scope: !3671, inlinedAt: !3751)
!3759 = !DILocation(line: 144, column: 51, scope: !2141, inlinedAt: !3758)
!3760 = !DILocation(line: 144, column: 58, scope: !2141, inlinedAt: !3758)
!3761 = !DILocation(line: 146, column: 17, scope: !2141, inlinedAt: !3758)
!3762 = !DILocation(line: 148, column: 57, scope: !2159, inlinedAt: !3758)
!3763 = !DILocation(line: 147, column: 17, scope: !2141, inlinedAt: !3758)
!3764 = !DILocation(line: 149, column: 7, scope: !2141, inlinedAt: !3758)
!3765 = !DILocation(line: 150, column: 12, scope: !2141, inlinedAt: !3758)
!3766 = !DILocation(line: 151, column: 6, scope: !2141, inlinedAt: !3758)
!3767 = !DILocation(line: 978, column: 10, scope: !3671, inlinedAt: !3751)
!3768 = !DILocation(line: 979, column: 1, scope: !3671, inlinedAt: !3751)
!3769 = !DILocation(line: 990, column: 3, scope: !3743)
!3770 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !423, file: !423, line: 994, type: !3530, isLocal: false, isDefinition: true, scopeLine: 995, flags: DIFlagPrototyped, isOptimized: true, unit: !396, variables: !3771)
!3771 = !{!3772, !3773}
!3772 = !DILocalVariable(name: "arg", arg: 1, scope: !3770, file: !423, line: 994, type: !36)
!3773 = !DILocalVariable(name: "argsize", arg: 2, scope: !3770, file: !423, line: 994, type: !28)
!3774 = !DILocation(line: 994, column: 33, scope: !3770)
!3775 = !DILocation(line: 994, column: 45, scope: !3770)
!3776 = !DILocation(line: 973, column: 32, scope: !3671, inlinedAt: !3777)
!3777 = distinct !DILocation(line: 996, column: 10, scope: !3770)
!3778 = !DILocation(line: 973, column: 44, scope: !3671, inlinedAt: !3777)
!3779 = !DILocation(line: 973, column: 58, scope: !3671, inlinedAt: !3777)
!3780 = !DILocation(line: 975, column: 3, scope: !3671, inlinedAt: !3777)
!3781 = !DILocation(line: 976, column: 13, scope: !3671, inlinedAt: !3777)
!3782 = !DILocation(line: 975, column: 26, scope: !3671, inlinedAt: !3777)
!3783 = !DILocation(line: 144, column: 43, scope: !2141, inlinedAt: !3784)
!3784 = distinct !DILocation(line: 977, column: 3, scope: !3671, inlinedAt: !3777)
!3785 = !DILocation(line: 144, column: 51, scope: !2141, inlinedAt: !3784)
!3786 = !DILocation(line: 144, column: 58, scope: !2141, inlinedAt: !3784)
!3787 = !DILocation(line: 146, column: 17, scope: !2141, inlinedAt: !3784)
!3788 = !DILocation(line: 148, column: 57, scope: !2159, inlinedAt: !3784)
!3789 = !DILocation(line: 147, column: 17, scope: !2141, inlinedAt: !3784)
!3790 = !DILocation(line: 149, column: 7, scope: !2141, inlinedAt: !3784)
!3791 = !DILocation(line: 150, column: 12, scope: !2141, inlinedAt: !3784)
!3792 = !DILocation(line: 151, column: 6, scope: !2141, inlinedAt: !3784)
!3793 = !DILocation(line: 978, column: 10, scope: !3671, inlinedAt: !3777)
!3794 = !DILocation(line: 979, column: 1, scope: !3671, inlinedAt: !3777)
!3795 = !DILocation(line: 996, column: 3, scope: !3770)
!3796 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !423, file: !423, line: 1000, type: !3544, isLocal: false, isDefinition: true, scopeLine: 1001, flags: DIFlagPrototyped, isOptimized: true, unit: !396, variables: !3797)
!3797 = !{!3798, !3799, !3800, !3801}
!3798 = !DILocalVariable(name: "n", arg: 1, scope: !3796, file: !423, line: 1000, type: !80)
!3799 = !DILocalVariable(name: "s", arg: 2, scope: !3796, file: !423, line: 1000, type: !10)
!3800 = !DILocalVariable(name: "arg", arg: 3, scope: !3796, file: !423, line: 1000, type: !36)
!3801 = !DILocalVariable(name: "options", scope: !3796, file: !423, line: 1002, type: !430)
!3802 = !DILocation(line: 187, column: 26, scope: !3552, inlinedAt: !3803)
!3803 = distinct !DILocation(line: 1003, column: 13, scope: !3796)
!3804 = !DILocation(line: 1000, column: 29, scope: !3796)
!3805 = !DILocation(line: 1000, column: 51, scope: !3796)
!3806 = !DILocation(line: 1000, column: 66, scope: !3796)
!3807 = !DILocation(line: 1002, column: 3, scope: !3796)
!3808 = !DILocation(line: 185, column: 48, scope: !3552, inlinedAt: !3803)
!3809 = !DILocation(line: 187, column: 3, scope: !3552, inlinedAt: !3803)
!3810 = !DILocation(line: 188, column: 13, scope: !3569, inlinedAt: !3803)
!3811 = !DILocation(line: 188, column: 7, scope: !3552, inlinedAt: !3803)
!3812 = !DILocation(line: 189, column: 5, scope: !3569, inlinedAt: !3803)
!3813 = !{!3814}
!3814 = distinct !{!3814, !3815, !"quoting_options_from_style: argument 0"}
!3815 = distinct !{!3815, !"quoting_options_from_style"}
!3816 = !DILocation(line: 191, column: 10, scope: !3552, inlinedAt: !3803)
!3817 = !DILocation(line: 192, column: 1, scope: !3552, inlinedAt: !3803)
!3818 = !DILocation(line: 1003, column: 13, scope: !3796)
!3819 = !DILocation(line: 1002, column: 26, scope: !3796)
!3820 = !DILocation(line: 144, column: 43, scope: !2141, inlinedAt: !3821)
!3821 = distinct !DILocation(line: 1004, column: 3, scope: !3796)
!3822 = !DILocation(line: 144, column: 51, scope: !2141, inlinedAt: !3821)
!3823 = !DILocation(line: 144, column: 58, scope: !2141, inlinedAt: !3821)
!3824 = !DILocation(line: 146, column: 17, scope: !2141, inlinedAt: !3821)
!3825 = !DILocation(line: 148, column: 57, scope: !2159, inlinedAt: !3821)
!3826 = !DILocation(line: 147, column: 17, scope: !2141, inlinedAt: !3821)
!3827 = !DILocation(line: 149, column: 7, scope: !2141, inlinedAt: !3821)
!3828 = !DILocation(line: 150, column: 12, scope: !2141, inlinedAt: !3821)
!3829 = !DILocation(line: 151, column: 6, scope: !2141, inlinedAt: !3821)
!3830 = !DILocation(line: 1005, column: 10, scope: !3796)
!3831 = !DILocation(line: 1006, column: 1, scope: !3796)
!3832 = !DILocation(line: 1005, column: 3, scope: !3796)
!3833 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !423, file: !423, line: 1009, type: !3834, isLocal: false, isDefinition: true, scopeLine: 1011, flags: DIFlagPrototyped, isOptimized: true, unit: !396, variables: !3836)
!3834 = !DISubroutineType(types: !3835)
!3835 = !{!25, !80, !36, !36, !36}
!3836 = !{!3837, !3838, !3839, !3840}
!3837 = !DILocalVariable(name: "n", arg: 1, scope: !3833, file: !423, line: 1009, type: !80)
!3838 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3833, file: !423, line: 1009, type: !36)
!3839 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3833, file: !423, line: 1010, type: !36)
!3840 = !DILocalVariable(name: "arg", arg: 4, scope: !3833, file: !423, line: 1010, type: !36)
!3841 = !DILocation(line: 1009, column: 24, scope: !3833)
!3842 = !DILocation(line: 1009, column: 39, scope: !3833)
!3843 = !DILocation(line: 1010, column: 32, scope: !3833)
!3844 = !DILocation(line: 1010, column: 57, scope: !3833)
!3845 = !DILocalVariable(name: "n", arg: 1, scope: !3846, file: !423, line: 1017, type: !80)
!3846 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !423, file: !423, line: 1017, type: !3847, isLocal: false, isDefinition: true, scopeLine: 1020, flags: DIFlagPrototyped, isOptimized: true, unit: !396, variables: !3849)
!3847 = !DISubroutineType(types: !3848)
!3848 = !{!25, !80, !36, !36, !36, !28}
!3849 = !{!3845, !3850, !3851, !3852, !3853, !3854}
!3850 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3846, file: !423, line: 1017, type: !36)
!3851 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3846, file: !423, line: 1018, type: !36)
!3852 = !DILocalVariable(name: "arg", arg: 4, scope: !3846, file: !423, line: 1019, type: !36)
!3853 = !DILocalVariable(name: "argsize", arg: 5, scope: !3846, file: !423, line: 1019, type: !28)
!3854 = !DILocalVariable(name: "o", scope: !3846, file: !423, line: 1021, type: !430)
!3855 = !DILocation(line: 1017, column: 28, scope: !3846, inlinedAt: !3856)
!3856 = distinct !DILocation(line: 1012, column: 10, scope: !3833)
!3857 = !DILocation(line: 1017, column: 43, scope: !3846, inlinedAt: !3856)
!3858 = !DILocation(line: 1018, column: 36, scope: !3846, inlinedAt: !3856)
!3859 = !DILocation(line: 1019, column: 36, scope: !3846, inlinedAt: !3856)
!3860 = !DILocation(line: 1019, column: 48, scope: !3846, inlinedAt: !3856)
!3861 = !DILocation(line: 1021, column: 3, scope: !3846, inlinedAt: !3856)
!3862 = !DILocation(line: 1021, column: 30, scope: !3846, inlinedAt: !3856)
!3863 = !DILocation(line: 1021, column: 26, scope: !3846, inlinedAt: !3856)
!3864 = !DILocation(line: 171, column: 45, scope: !2191, inlinedAt: !3865)
!3865 = distinct !DILocation(line: 1022, column: 3, scope: !3846, inlinedAt: !3856)
!3866 = !DILocation(line: 172, column: 33, scope: !2191, inlinedAt: !3865)
!3867 = !DILocation(line: 172, column: 57, scope: !2191, inlinedAt: !3865)
!3868 = !DILocation(line: 176, column: 6, scope: !2191, inlinedAt: !3865)
!3869 = !DILocation(line: 176, column: 12, scope: !2191, inlinedAt: !3865)
!3870 = !DILocation(line: 177, column: 8, scope: !2207, inlinedAt: !3865)
!3871 = !DILocation(line: 177, column: 23, scope: !2209, inlinedAt: !3865)
!3872 = !DILocation(line: 177, column: 19, scope: !2207, inlinedAt: !3865)
!3873 = !DILocation(line: 178, column: 5, scope: !2207, inlinedAt: !3865)
!3874 = !DILocation(line: 179, column: 6, scope: !2191, inlinedAt: !3865)
!3875 = !DILocation(line: 179, column: 17, scope: !2191, inlinedAt: !3865)
!3876 = !DILocation(line: 180, column: 6, scope: !2191, inlinedAt: !3865)
!3877 = !DILocation(line: 180, column: 18, scope: !2191, inlinedAt: !3865)
!3878 = !DILocation(line: 1023, column: 10, scope: !3846, inlinedAt: !3856)
!3879 = !DILocation(line: 1024, column: 1, scope: !3846, inlinedAt: !3856)
!3880 = !DILocation(line: 1012, column: 3, scope: !3833)
!3881 = !DILocation(line: 1017, column: 28, scope: !3846)
!3882 = !DILocation(line: 1017, column: 43, scope: !3846)
!3883 = !DILocation(line: 1018, column: 36, scope: !3846)
!3884 = !DILocation(line: 1019, column: 36, scope: !3846)
!3885 = !DILocation(line: 1019, column: 48, scope: !3846)
!3886 = !DILocation(line: 1021, column: 3, scope: !3846)
!3887 = !DILocation(line: 1021, column: 30, scope: !3846)
!3888 = !DILocation(line: 1021, column: 26, scope: !3846)
!3889 = !DILocation(line: 171, column: 45, scope: !2191, inlinedAt: !3890)
!3890 = distinct !DILocation(line: 1022, column: 3, scope: !3846)
!3891 = !DILocation(line: 172, column: 33, scope: !2191, inlinedAt: !3890)
!3892 = !DILocation(line: 172, column: 57, scope: !2191, inlinedAt: !3890)
!3893 = !DILocation(line: 176, column: 6, scope: !2191, inlinedAt: !3890)
!3894 = !DILocation(line: 176, column: 12, scope: !2191, inlinedAt: !3890)
!3895 = !DILocation(line: 177, column: 8, scope: !2207, inlinedAt: !3890)
!3896 = !DILocation(line: 177, column: 23, scope: !2209, inlinedAt: !3890)
!3897 = !DILocation(line: 177, column: 19, scope: !2207, inlinedAt: !3890)
!3898 = !DILocation(line: 178, column: 5, scope: !2207, inlinedAt: !3890)
!3899 = !DILocation(line: 179, column: 6, scope: !2191, inlinedAt: !3890)
!3900 = !DILocation(line: 179, column: 17, scope: !2191, inlinedAt: !3890)
!3901 = !DILocation(line: 180, column: 6, scope: !2191, inlinedAt: !3890)
!3902 = !DILocation(line: 180, column: 18, scope: !2191, inlinedAt: !3890)
!3903 = !DILocation(line: 1023, column: 10, scope: !3846)
!3904 = !DILocation(line: 1024, column: 1, scope: !3846)
!3905 = !DILocation(line: 1023, column: 3, scope: !3846)
!3906 = distinct !DISubprogram(name: "quotearg_custom", scope: !423, file: !423, line: 1027, type: !3907, isLocal: false, isDefinition: true, scopeLine: 1029, flags: DIFlagPrototyped, isOptimized: true, unit: !396, variables: !3909)
!3907 = !DISubroutineType(types: !3908)
!3908 = !{!25, !36, !36, !36}
!3909 = !{!3910, !3911, !3912}
!3910 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3906, file: !423, line: 1027, type: !36)
!3911 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3906, file: !423, line: 1027, type: !36)
!3912 = !DILocalVariable(name: "arg", arg: 3, scope: !3906, file: !423, line: 1028, type: !36)
!3913 = !DILocation(line: 1027, column: 30, scope: !3906)
!3914 = !DILocation(line: 1027, column: 54, scope: !3906)
!3915 = !DILocation(line: 1028, column: 30, scope: !3906)
!3916 = !DILocation(line: 1009, column: 24, scope: !3833, inlinedAt: !3917)
!3917 = distinct !DILocation(line: 1030, column: 10, scope: !3906)
!3918 = !DILocation(line: 1009, column: 39, scope: !3833, inlinedAt: !3917)
!3919 = !DILocation(line: 1010, column: 32, scope: !3833, inlinedAt: !3917)
!3920 = !DILocation(line: 1010, column: 57, scope: !3833, inlinedAt: !3917)
!3921 = !DILocation(line: 1017, column: 28, scope: !3846, inlinedAt: !3922)
!3922 = distinct !DILocation(line: 1012, column: 10, scope: !3833, inlinedAt: !3917)
!3923 = !DILocation(line: 1017, column: 43, scope: !3846, inlinedAt: !3922)
!3924 = !DILocation(line: 1018, column: 36, scope: !3846, inlinedAt: !3922)
!3925 = !DILocation(line: 1019, column: 36, scope: !3846, inlinedAt: !3922)
!3926 = !DILocation(line: 1019, column: 48, scope: !3846, inlinedAt: !3922)
!3927 = !DILocation(line: 1021, column: 3, scope: !3846, inlinedAt: !3922)
!3928 = !DILocation(line: 1021, column: 30, scope: !3846, inlinedAt: !3922)
!3929 = !DILocation(line: 1021, column: 26, scope: !3846, inlinedAt: !3922)
!3930 = !DILocation(line: 171, column: 45, scope: !2191, inlinedAt: !3931)
!3931 = distinct !DILocation(line: 1022, column: 3, scope: !3846, inlinedAt: !3922)
!3932 = !DILocation(line: 172, column: 33, scope: !2191, inlinedAt: !3931)
!3933 = !DILocation(line: 172, column: 57, scope: !2191, inlinedAt: !3931)
!3934 = !DILocation(line: 176, column: 6, scope: !2191, inlinedAt: !3931)
!3935 = !DILocation(line: 176, column: 12, scope: !2191, inlinedAt: !3931)
!3936 = !DILocation(line: 177, column: 8, scope: !2207, inlinedAt: !3931)
!3937 = !DILocation(line: 177, column: 23, scope: !2209, inlinedAt: !3931)
!3938 = !DILocation(line: 177, column: 19, scope: !2207, inlinedAt: !3931)
!3939 = !DILocation(line: 178, column: 5, scope: !2207, inlinedAt: !3931)
!3940 = !DILocation(line: 179, column: 6, scope: !2191, inlinedAt: !3931)
!3941 = !DILocation(line: 179, column: 17, scope: !2191, inlinedAt: !3931)
!3942 = !DILocation(line: 180, column: 6, scope: !2191, inlinedAt: !3931)
!3943 = !DILocation(line: 180, column: 18, scope: !2191, inlinedAt: !3931)
!3944 = !DILocation(line: 1023, column: 10, scope: !3846, inlinedAt: !3922)
!3945 = !DILocation(line: 1024, column: 1, scope: !3846, inlinedAt: !3922)
!3946 = !DILocation(line: 1030, column: 3, scope: !3906)
!3947 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !423, file: !423, line: 1034, type: !3948, isLocal: false, isDefinition: true, scopeLine: 1036, flags: DIFlagPrototyped, isOptimized: true, unit: !396, variables: !3950)
!3948 = !DISubroutineType(types: !3949)
!3949 = !{!25, !36, !36, !36, !28}
!3950 = !{!3951, !3952, !3953, !3954}
!3951 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3947, file: !423, line: 1034, type: !36)
!3952 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3947, file: !423, line: 1034, type: !36)
!3953 = !DILocalVariable(name: "arg", arg: 3, scope: !3947, file: !423, line: 1035, type: !36)
!3954 = !DILocalVariable(name: "argsize", arg: 4, scope: !3947, file: !423, line: 1035, type: !28)
!3955 = !DILocation(line: 1034, column: 34, scope: !3947)
!3956 = !DILocation(line: 1034, column: 58, scope: !3947)
!3957 = !DILocation(line: 1035, column: 34, scope: !3947)
!3958 = !DILocation(line: 1035, column: 46, scope: !3947)
!3959 = !DILocation(line: 1017, column: 28, scope: !3846, inlinedAt: !3960)
!3960 = distinct !DILocation(line: 1037, column: 10, scope: !3947)
!3961 = !DILocation(line: 1017, column: 43, scope: !3846, inlinedAt: !3960)
!3962 = !DILocation(line: 1018, column: 36, scope: !3846, inlinedAt: !3960)
!3963 = !DILocation(line: 1019, column: 36, scope: !3846, inlinedAt: !3960)
!3964 = !DILocation(line: 1019, column: 48, scope: !3846, inlinedAt: !3960)
!3965 = !DILocation(line: 1021, column: 3, scope: !3846, inlinedAt: !3960)
!3966 = !DILocation(line: 1021, column: 30, scope: !3846, inlinedAt: !3960)
!3967 = !DILocation(line: 1021, column: 26, scope: !3846, inlinedAt: !3960)
!3968 = !DILocation(line: 171, column: 45, scope: !2191, inlinedAt: !3969)
!3969 = distinct !DILocation(line: 1022, column: 3, scope: !3846, inlinedAt: !3960)
!3970 = !DILocation(line: 172, column: 33, scope: !2191, inlinedAt: !3969)
!3971 = !DILocation(line: 172, column: 57, scope: !2191, inlinedAt: !3969)
!3972 = !DILocation(line: 176, column: 6, scope: !2191, inlinedAt: !3969)
!3973 = !DILocation(line: 176, column: 12, scope: !2191, inlinedAt: !3969)
!3974 = !DILocation(line: 177, column: 8, scope: !2207, inlinedAt: !3969)
!3975 = !DILocation(line: 177, column: 23, scope: !2209, inlinedAt: !3969)
!3976 = !DILocation(line: 177, column: 19, scope: !2207, inlinedAt: !3969)
!3977 = !DILocation(line: 178, column: 5, scope: !2207, inlinedAt: !3969)
!3978 = !DILocation(line: 179, column: 6, scope: !2191, inlinedAt: !3969)
!3979 = !DILocation(line: 179, column: 17, scope: !2191, inlinedAt: !3969)
!3980 = !DILocation(line: 180, column: 6, scope: !2191, inlinedAt: !3969)
!3981 = !DILocation(line: 180, column: 18, scope: !2191, inlinedAt: !3969)
!3982 = !DILocation(line: 1023, column: 10, scope: !3846, inlinedAt: !3960)
!3983 = !DILocation(line: 1024, column: 1, scope: !3846, inlinedAt: !3960)
!3984 = !DILocation(line: 1037, column: 3, scope: !3947)
!3985 = distinct !DISubprogram(name: "quote_n_mem", scope: !423, file: !423, line: 1052, type: !3986, isLocal: false, isDefinition: true, scopeLine: 1053, flags: DIFlagPrototyped, isOptimized: true, unit: !396, variables: !3988)
!3986 = !DISubroutineType(types: !3987)
!3987 = !{!36, !80, !36, !28}
!3988 = !{!3989, !3990, !3991}
!3989 = !DILocalVariable(name: "n", arg: 1, scope: !3985, file: !423, line: 1052, type: !80)
!3990 = !DILocalVariable(name: "arg", arg: 2, scope: !3985, file: !423, line: 1052, type: !36)
!3991 = !DILocalVariable(name: "argsize", arg: 3, scope: !3985, file: !423, line: 1052, type: !28)
!3992 = !DILocation(line: 1052, column: 18, scope: !3985)
!3993 = !DILocation(line: 1052, column: 33, scope: !3985)
!3994 = !DILocation(line: 1052, column: 45, scope: !3985)
!3995 = !DILocation(line: 1054, column: 10, scope: !3985)
!3996 = !DILocation(line: 1054, column: 3, scope: !3985)
!3997 = distinct !DISubprogram(name: "quote_mem", scope: !423, file: !423, line: 1058, type: !3998, isLocal: false, isDefinition: true, scopeLine: 1059, flags: DIFlagPrototyped, isOptimized: true, unit: !396, variables: !4000)
!3998 = !DISubroutineType(types: !3999)
!3999 = !{!36, !36, !28}
!4000 = !{!4001, !4002}
!4001 = !DILocalVariable(name: "arg", arg: 1, scope: !3997, file: !423, line: 1058, type: !36)
!4002 = !DILocalVariable(name: "argsize", arg: 2, scope: !3997, file: !423, line: 1058, type: !28)
!4003 = !DILocation(line: 1058, column: 24, scope: !3997)
!4004 = !DILocation(line: 1058, column: 36, scope: !3997)
!4005 = !DILocation(line: 1052, column: 18, scope: !3985, inlinedAt: !4006)
!4006 = distinct !DILocation(line: 1060, column: 10, scope: !3997)
!4007 = !DILocation(line: 1052, column: 33, scope: !3985, inlinedAt: !4006)
!4008 = !DILocation(line: 1052, column: 45, scope: !3985, inlinedAt: !4006)
!4009 = !DILocation(line: 1054, column: 10, scope: !3985, inlinedAt: !4006)
!4010 = !DILocation(line: 1060, column: 3, scope: !3997)
!4011 = distinct !DISubprogram(name: "quote_n", scope: !423, file: !423, line: 1064, type: !4012, isLocal: false, isDefinition: true, scopeLine: 1065, flags: DIFlagPrototyped, isOptimized: true, unit: !396, variables: !4014)
!4012 = !DISubroutineType(types: !4013)
!4013 = !{!36, !80, !36}
!4014 = !{!4015, !4016}
!4015 = !DILocalVariable(name: "n", arg: 1, scope: !4011, file: !423, line: 1064, type: !80)
!4016 = !DILocalVariable(name: "arg", arg: 2, scope: !4011, file: !423, line: 1064, type: !36)
!4017 = !DILocation(line: 1064, column: 14, scope: !4011)
!4018 = !DILocation(line: 1064, column: 29, scope: !4011)
!4019 = !DILocation(line: 1052, column: 18, scope: !3985, inlinedAt: !4020)
!4020 = distinct !DILocation(line: 1066, column: 10, scope: !4011)
!4021 = !DILocation(line: 1052, column: 33, scope: !3985, inlinedAt: !4020)
!4022 = !DILocation(line: 1052, column: 45, scope: !3985, inlinedAt: !4020)
!4023 = !DILocation(line: 1054, column: 10, scope: !3985, inlinedAt: !4020)
!4024 = !DILocation(line: 1066, column: 3, scope: !4011)
!4025 = distinct !DISubprogram(name: "quote", scope: !423, file: !423, line: 1070, type: !4026, isLocal: false, isDefinition: true, scopeLine: 1071, flags: DIFlagPrototyped, isOptimized: true, unit: !396, variables: !4028)
!4026 = !DISubroutineType(types: !4027)
!4027 = !{!36, !36}
!4028 = !{!4029}
!4029 = !DILocalVariable(name: "arg", arg: 1, scope: !4025, file: !423, line: 1070, type: !36)
!4030 = !DILocation(line: 1070, column: 20, scope: !4025)
!4031 = !DILocation(line: 1064, column: 14, scope: !4011, inlinedAt: !4032)
!4032 = distinct !DILocation(line: 1072, column: 10, scope: !4025)
!4033 = !DILocation(line: 1064, column: 29, scope: !4011, inlinedAt: !4032)
!4034 = !DILocation(line: 1052, column: 18, scope: !3985, inlinedAt: !4035)
!4035 = distinct !DILocation(line: 1066, column: 10, scope: !4011, inlinedAt: !4032)
!4036 = !DILocation(line: 1052, column: 33, scope: !3985, inlinedAt: !4035)
!4037 = !DILocation(line: 1052, column: 45, scope: !3985, inlinedAt: !4035)
!4038 = !DILocation(line: 1054, column: 10, scope: !3985, inlinedAt: !4035)
!4039 = !DILocation(line: 1072, column: 3, scope: !4025)
!4040 = distinct !DISubprogram(name: "version_etc_arn", scope: !827, file: !827, line: 62, type: !4041, isLocal: false, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: true, unit: !823, variables: !4093)
!4041 = !DISubroutineType(types: !4042)
!4042 = !{null, !4043, !36, !36, !36, !4092, !28}
!4043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4044, size: 64)
!4044 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !4045, line: 49, baseType: !4046)
!4045 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4046 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !4047, line: 241, size: 1728, elements: !4048)
!4047 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4048 = !{!4049, !4050, !4051, !4052, !4053, !4054, !4055, !4056, !4057, !4058, !4059, !4060, !4061, !4069, !4070, !4071, !4072, !4073, !4074, !4076, !4080, !4083, !4085, !4086, !4087, !4088, !4089, !4090, !4091}
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4046, file: !4047, line: 242, baseType: !80, size: 32)
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4046, file: !4047, line: 247, baseType: !25, size: 64, offset: 64)
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4046, file: !4047, line: 248, baseType: !25, size: 64, offset: 128)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4046, file: !4047, line: 249, baseType: !25, size: 64, offset: 192)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4046, file: !4047, line: 250, baseType: !25, size: 64, offset: 256)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4046, file: !4047, line: 251, baseType: !25, size: 64, offset: 320)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4046, file: !4047, line: 252, baseType: !25, size: 64, offset: 384)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4046, file: !4047, line: 253, baseType: !25, size: 64, offset: 448)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4046, file: !4047, line: 254, baseType: !25, size: 64, offset: 512)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4046, file: !4047, line: 256, baseType: !25, size: 64, offset: 576)
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4046, file: !4047, line: 257, baseType: !25, size: 64, offset: 640)
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4046, file: !4047, line: 258, baseType: !25, size: 64, offset: 704)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4046, file: !4047, line: 260, baseType: !4062, size: 64, offset: 768)
!4062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4063, size: 64)
!4063 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !4047, line: 156, size: 192, elements: !4064)
!4064 = !{!4065, !4066, !4068}
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4063, file: !4047, line: 157, baseType: !4062, size: 64)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4063, file: !4047, line: 158, baseType: !4067, size: 64, offset: 64)
!4067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4046, size: 64)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4063, file: !4047, line: 162, baseType: !80, size: 32, offset: 128)
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4046, file: !4047, line: 262, baseType: !4067, size: 64, offset: 832)
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4046, file: !4047, line: 264, baseType: !80, size: 32, offset: 896)
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4046, file: !4047, line: 268, baseType: !80, size: 32, offset: 928)
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4046, file: !4047, line: 270, baseType: !211, size: 64, offset: 960)
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4046, file: !4047, line: 274, baseType: !364, size: 16, offset: 1024)
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4046, file: !4047, line: 275, baseType: !4075, size: 8, offset: 1040)
!4075 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4046, file: !4047, line: 276, baseType: !4077, size: 8, offset: 1048)
!4077 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 8, elements: !4078)
!4078 = !{!4079}
!4079 = !DISubrange(count: 1)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4046, file: !4047, line: 280, baseType: !4081, size: 64, offset: 1088)
!4081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4082, size: 64)
!4082 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !4047, line: 150, baseType: null)
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4046, file: !4047, line: 289, baseType: !4084, size: 64, offset: 1152)
!4084 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !41, line: 141, baseType: !42)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4046, file: !4047, line: 297, baseType: !27, size: 64, offset: 1216)
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4046, file: !4047, line: 298, baseType: !27, size: 64, offset: 1280)
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4046, file: !4047, line: 299, baseType: !27, size: 64, offset: 1344)
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4046, file: !4047, line: 300, baseType: !27, size: 64, offset: 1408)
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4046, file: !4047, line: 302, baseType: !28, size: 64, offset: 1472)
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4046, file: !4047, line: 303, baseType: !80, size: 32, offset: 1536)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4046, file: !4047, line: 305, baseType: !185, size: 160, offset: 1568)
!4092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !454, size: 64)
!4093 = !{!4094, !4095, !4096, !4097, !4098, !4099}
!4094 = !DILocalVariable(name: "stream", arg: 1, scope: !4040, file: !827, line: 62, type: !4043)
!4095 = !DILocalVariable(name: "command_name", arg: 2, scope: !4040, file: !827, line: 63, type: !36)
!4096 = !DILocalVariable(name: "package", arg: 3, scope: !4040, file: !827, line: 63, type: !36)
!4097 = !DILocalVariable(name: "version", arg: 4, scope: !4040, file: !827, line: 64, type: !36)
!4098 = !DILocalVariable(name: "authors", arg: 5, scope: !4040, file: !827, line: 65, type: !4092)
!4099 = !DILocalVariable(name: "n_authors", arg: 6, scope: !4040, file: !827, line: 65, type: !28)
!4100 = !DILocation(line: 62, column: 24, scope: !4040)
!4101 = !DILocation(line: 63, column: 30, scope: !4040)
!4102 = !DILocation(line: 63, column: 56, scope: !4040)
!4103 = !DILocation(line: 64, column: 30, scope: !4040)
!4104 = !DILocation(line: 65, column: 39, scope: !4040)
!4105 = !DILocation(line: 65, column: 55, scope: !4040)
!4106 = !DILocation(line: 67, column: 7, scope: !4107)
!4107 = distinct !DILexicalBlock(scope: !4040, file: !827, line: 67, column: 7)
!4108 = !DILocation(line: 67, column: 7, scope: !4040)
!4109 = !DILocation(line: 68, column: 5, scope: !4107)
!4110 = !DILocation(line: 70, column: 5, scope: !4107)
!4111 = !DILocation(line: 84, column: 3, scope: !4040)
!4112 = !DILocation(line: 84, column: 3, scope: !4113)
!4113 = !DILexicalBlockFile(scope: !4040, file: !827, discriminator: 1)
!4114 = !DILocation(line: 86, column: 3, scope: !4040)
!4115 = !DILocation(line: 86, column: 3, scope: !4113)
!4116 = !DILocation(line: 95, column: 3, scope: !4040)
!4117 = !DILocation(line: 99, column: 7, scope: !4118)
!4118 = distinct !DILexicalBlock(scope: !4040, file: !827, line: 96, column: 5)
!4119 = !DILocation(line: 102, column: 7, scope: !4118)
!4120 = !DILocation(line: 102, column: 7, scope: !4121)
!4121 = !DILexicalBlockFile(scope: !4118, file: !827, discriminator: 1)
!4122 = !DILocation(line: 103, column: 7, scope: !4118)
!4123 = !DILocation(line: 106, column: 7, scope: !4118)
!4124 = !DILocation(line: 106, column: 7, scope: !4121)
!4125 = !DILocation(line: 107, column: 7, scope: !4118)
!4126 = !DILocation(line: 110, column: 7, scope: !4118)
!4127 = !DILocation(line: 110, column: 7, scope: !4121)
!4128 = !DILocation(line: 112, column: 7, scope: !4118)
!4129 = !DILocation(line: 117, column: 7, scope: !4118)
!4130 = !DILocation(line: 117, column: 7, scope: !4121)
!4131 = !DILocation(line: 119, column: 7, scope: !4118)
!4132 = !DILocation(line: 124, column: 7, scope: !4118)
!4133 = !DILocation(line: 124, column: 7, scope: !4121)
!4134 = !DILocation(line: 126, column: 7, scope: !4118)
!4135 = !DILocation(line: 131, column: 7, scope: !4118)
!4136 = !DILocation(line: 131, column: 7, scope: !4121)
!4137 = !DILocation(line: 134, column: 7, scope: !4118)
!4138 = !DILocation(line: 139, column: 7, scope: !4118)
!4139 = !DILocation(line: 139, column: 7, scope: !4121)
!4140 = !DILocation(line: 142, column: 7, scope: !4118)
!4141 = !DILocation(line: 147, column: 7, scope: !4118)
!4142 = !DILocation(line: 147, column: 7, scope: !4121)
!4143 = !DILocation(line: 151, column: 7, scope: !4118)
!4144 = !DILocation(line: 156, column: 7, scope: !4118)
!4145 = !DILocation(line: 156, column: 7, scope: !4121)
!4146 = !DILocation(line: 160, column: 7, scope: !4118)
!4147 = !DILocation(line: 167, column: 7, scope: !4118)
!4148 = !DILocation(line: 167, column: 7, scope: !4121)
!4149 = !DILocation(line: 171, column: 7, scope: !4118)
!4150 = !DILocation(line: 173, column: 1, scope: !4040)
!4151 = distinct !DISubprogram(name: "version_etc_ar", scope: !827, file: !827, line: 180, type: !4152, isLocal: false, isDefinition: true, scopeLine: 183, flags: DIFlagPrototyped, isOptimized: true, unit: !823, variables: !4154)
!4152 = !DISubroutineType(types: !4153)
!4153 = !{null, !4043, !36, !36, !36, !4092}
!4154 = !{!4155, !4156, !4157, !4158, !4159, !4160}
!4155 = !DILocalVariable(name: "stream", arg: 1, scope: !4151, file: !827, line: 180, type: !4043)
!4156 = !DILocalVariable(name: "command_name", arg: 2, scope: !4151, file: !827, line: 181, type: !36)
!4157 = !DILocalVariable(name: "package", arg: 3, scope: !4151, file: !827, line: 181, type: !36)
!4158 = !DILocalVariable(name: "version", arg: 4, scope: !4151, file: !827, line: 182, type: !36)
!4159 = !DILocalVariable(name: "authors", arg: 5, scope: !4151, file: !827, line: 182, type: !4092)
!4160 = !DILocalVariable(name: "n_authors", scope: !4151, file: !827, line: 184, type: !28)
!4161 = !DILocation(line: 180, column: 23, scope: !4151)
!4162 = !DILocation(line: 181, column: 29, scope: !4151)
!4163 = !DILocation(line: 181, column: 55, scope: !4151)
!4164 = !DILocation(line: 182, column: 29, scope: !4151)
!4165 = !DILocation(line: 182, column: 59, scope: !4151)
!4166 = !DILocation(line: 184, column: 10, scope: !4151)
!4167 = !DILocation(line: 186, column: 8, scope: !4168)
!4168 = distinct !DILexicalBlock(scope: !4151, file: !827, line: 186, column: 3)
!4169 = !DILocation(line: 186, column: 23, scope: !4170)
!4170 = !DILexicalBlockFile(scope: !4171, file: !827, discriminator: 1)
!4171 = distinct !DILexicalBlock(scope: !4168, file: !827, line: 186, column: 3)
!4172 = !DILocation(line: 186, column: 3, scope: !4173)
!4173 = !DILexicalBlockFile(scope: !4168, file: !827, discriminator: 1)
!4174 = !DILocation(line: 186, column: 52, scope: !4175)
!4175 = !DILexicalBlockFile(scope: !4171, file: !827, discriminator: 3)
!4176 = distinct !{!4176, !4177, !4178}
!4177 = !DILocation(line: 186, column: 3, scope: !4168)
!4178 = !DILocation(line: 187, column: 5, scope: !4168)
!4179 = !DILocation(line: 188, column: 3, scope: !4151)
!4180 = !DILocation(line: 189, column: 1, scope: !4151)
!4181 = distinct !DISubprogram(name: "version_etc_va", scope: !827, file: !827, line: 196, type: !4182, isLocal: false, isDefinition: true, scopeLine: 199, flags: DIFlagPrototyped, isOptimized: true, unit: !823, variables: !4191)
!4182 = !DISubroutineType(types: !4183)
!4183 = !{null, !4043, !36, !36, !36, !4184}
!4184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4185, size: 64)
!4185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !824, line: 189, size: 192, elements: !4186)
!4186 = !{!4187, !4188, !4189, !4190}
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !4185, file: !824, line: 189, baseType: !203, size: 32)
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !4185, file: !824, line: 189, baseType: !203, size: 32, offset: 32)
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !4185, file: !824, line: 189, baseType: !27, size: 64, offset: 64)
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !4185, file: !824, line: 189, baseType: !27, size: 64, offset: 128)
!4191 = !{!4192, !4193, !4194, !4195, !4196, !4197, !4198}
!4192 = !DILocalVariable(name: "stream", arg: 1, scope: !4181, file: !827, line: 196, type: !4043)
!4193 = !DILocalVariable(name: "command_name", arg: 2, scope: !4181, file: !827, line: 197, type: !36)
!4194 = !DILocalVariable(name: "package", arg: 3, scope: !4181, file: !827, line: 197, type: !36)
!4195 = !DILocalVariable(name: "version", arg: 4, scope: !4181, file: !827, line: 198, type: !36)
!4196 = !DILocalVariable(name: "authors", arg: 5, scope: !4181, file: !827, line: 198, type: !4184)
!4197 = !DILocalVariable(name: "n_authors", scope: !4181, file: !827, line: 200, type: !28)
!4198 = !DILocalVariable(name: "authtab", scope: !4181, file: !827, line: 201, type: !4199)
!4199 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 640, elements: !426)
!4200 = !DILocation(line: 196, column: 23, scope: !4181)
!4201 = !DILocation(line: 197, column: 29, scope: !4181)
!4202 = !DILocation(line: 197, column: 55, scope: !4181)
!4203 = !DILocation(line: 198, column: 29, scope: !4181)
!4204 = !DILocation(line: 198, column: 46, scope: !4181)
!4205 = !DILocation(line: 201, column: 3, scope: !4181)
!4206 = !DILocation(line: 201, column: 15, scope: !4181)
!4207 = !DILocation(line: 200, column: 10, scope: !4181)
!4208 = !DILocation(line: 205, column: 35, scope: !4209)
!4209 = !DILexicalBlockFile(scope: !4210, file: !827, discriminator: 1)
!4210 = distinct !DILexicalBlock(scope: !4211, file: !827, line: 203, column: 3)
!4211 = distinct !DILexicalBlock(scope: !4181, file: !827, line: 203, column: 3)
!4212 = !DILocation(line: 205, column: 35, scope: !4213)
!4213 = !DILexicalBlockFile(scope: !4210, file: !827, discriminator: 2)
!4214 = !DILocation(line: 205, column: 35, scope: !4215)
!4215 = !DILexicalBlockFile(scope: !4210, file: !827, discriminator: 3)
!4216 = !DILocation(line: 205, column: 35, scope: !4217)
!4217 = !DILexicalBlockFile(scope: !4210, file: !827, discriminator: 4)
!4218 = !DILocation(line: 205, column: 14, scope: !4217)
!4219 = !DILocation(line: 205, column: 33, scope: !4217)
!4220 = !DILocation(line: 205, column: 67, scope: !4217)
!4221 = !DILocation(line: 203, column: 3, scope: !4222)
!4222 = !DILexicalBlockFile(scope: !4211, file: !827, discriminator: 1)
!4223 = !DILocation(line: 208, column: 3, scope: !4181)
!4224 = !DILocation(line: 210, column: 1, scope: !4181)
!4225 = distinct !DISubprogram(name: "version_etc", scope: !827, file: !827, line: 227, type: !4226, isLocal: false, isDefinition: true, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: true, unit: !823, variables: !4228)
!4226 = !DISubroutineType(types: !4227)
!4227 = !{null, !4043, !36, !36, !36, null}
!4228 = !{!4229, !4230, !4231, !4232, !4233}
!4229 = !DILocalVariable(name: "stream", arg: 1, scope: !4225, file: !827, line: 227, type: !4043)
!4230 = !DILocalVariable(name: "command_name", arg: 2, scope: !4225, file: !827, line: 228, type: !36)
!4231 = !DILocalVariable(name: "package", arg: 3, scope: !4225, file: !827, line: 228, type: !36)
!4232 = !DILocalVariable(name: "version", arg: 4, scope: !4225, file: !827, line: 229, type: !36)
!4233 = !DILocalVariable(name: "authors", scope: !4225, file: !827, line: 231, type: !4234)
!4234 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !4045, line: 80, baseType: !4235)
!4235 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !4236, line: 50, baseType: !4237)
!4236 = !DIFile(filename: "/usr/bin/../lib/clang/4.0.1/include/stdarg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4237 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !824, line: 231, baseType: !4238)
!4238 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4185, size: 192, elements: !4078)
!4239 = !DILocation(line: 227, column: 20, scope: !4225)
!4240 = !DILocation(line: 228, column: 26, scope: !4225)
!4241 = !DILocation(line: 228, column: 52, scope: !4225)
!4242 = !DILocation(line: 229, column: 26, scope: !4225)
!4243 = !DILocation(line: 231, column: 3, scope: !4225)
!4244 = !DILocation(line: 231, column: 11, scope: !4225)
!4245 = !DILocation(line: 233, column: 3, scope: !4225)
!4246 = !DILocation(line: 234, column: 3, scope: !4225)
!4247 = !DILocation(line: 235, column: 3, scope: !4225)
!4248 = !DILocation(line: 236, column: 1, scope: !4225)
!4249 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !827, file: !827, line: 239, type: !1141, isLocal: false, isDefinition: true, scopeLine: 240, flags: DIFlagPrototyped, isOptimized: true, unit: !823, variables: !327)
!4250 = !DILocation(line: 245, column: 3, scope: !4249)
!4251 = !DILocation(line: 245, column: 3, scope: !4252)
!4252 = !DILexicalBlockFile(scope: !4249, file: !827, discriminator: 1)
!4253 = !DILocation(line: 251, column: 3, scope: !4249)
!4254 = !DILocation(line: 251, column: 3, scope: !4252)
!4255 = !DILocation(line: 256, column: 3, scope: !4249)
!4256 = !DILocation(line: 256, column: 3, scope: !4252)
!4257 = !DILocation(line: 258, column: 1, scope: !4249)
!4258 = distinct !DISubprogram(name: "xnmalloc", scope: !835, file: !835, line: 105, type: !4259, isLocal: false, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: true, unit: !831, variables: !4261)
!4259 = !DISubroutineType(types: !4260)
!4260 = !{!27, !28, !28}
!4261 = !{!4262, !4263}
!4262 = !DILocalVariable(name: "n", arg: 1, scope: !4258, file: !835, line: 105, type: !28)
!4263 = !DILocalVariable(name: "s", arg: 2, scope: !4258, file: !835, line: 105, type: !28)
!4264 = !DILocation(line: 105, column: 18, scope: !4258)
!4265 = !DILocation(line: 105, column: 28, scope: !4258)
!4266 = !DILocation(line: 107, column: 7, scope: !4267)
!4267 = distinct !DILexicalBlock(scope: !4258, file: !835, line: 107, column: 7)
!4268 = !DILocation(line: 107, column: 7, scope: !4258)
!4269 = !DILocation(line: 108, column: 5, scope: !4267)
!4270 = !DILocation(line: 109, column: 21, scope: !4258)
!4271 = !DILocalVariable(name: "n", arg: 1, scope: !4272, file: !4273, line: 39, type: !28)
!4272 = distinct !DISubprogram(name: "xmalloc", scope: !4273, file: !4273, line: 39, type: !4274, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !831, variables: !4276)
!4273 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4274 = !DISubroutineType(types: !4275)
!4275 = !{!27, !28}
!4276 = !{!4271, !4277}
!4277 = !DILocalVariable(name: "p", scope: !4272, file: !4273, line: 41, type: !27)
!4278 = !DILocation(line: 39, column: 17, scope: !4272, inlinedAt: !4279)
!4279 = distinct !DILocation(line: 109, column: 10, scope: !4258)
!4280 = !DILocation(line: 41, column: 13, scope: !4272, inlinedAt: !4279)
!4281 = !DILocation(line: 41, column: 9, scope: !4272, inlinedAt: !4279)
!4282 = !DILocation(line: 42, column: 8, scope: !4283, inlinedAt: !4279)
!4283 = distinct !DILexicalBlock(scope: !4272, file: !4273, line: 42, column: 7)
!4284 = !DILocation(line: 42, column: 15, scope: !4285, inlinedAt: !4279)
!4285 = !DILexicalBlockFile(scope: !4283, file: !4273, discriminator: 1)
!4286 = !DILocation(line: 42, column: 10, scope: !4283, inlinedAt: !4279)
!4287 = !DILocation(line: 43, column: 5, scope: !4283, inlinedAt: !4279)
!4288 = !DILocation(line: 109, column: 3, scope: !4258)
!4289 = !DILocation(line: 39, column: 17, scope: !4272)
!4290 = !DILocation(line: 41, column: 13, scope: !4272)
!4291 = !DILocation(line: 41, column: 9, scope: !4272)
!4292 = !DILocation(line: 42, column: 8, scope: !4283)
!4293 = !DILocation(line: 42, column: 15, scope: !4285)
!4294 = !DILocation(line: 42, column: 10, scope: !4283)
!4295 = !DILocation(line: 43, column: 5, scope: !4283)
!4296 = !DILocation(line: 44, column: 3, scope: !4272)
!4297 = distinct !DISubprogram(name: "xnrealloc", scope: !835, file: !835, line: 118, type: !4298, isLocal: false, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !831, variables: !4300)
!4298 = !DISubroutineType(types: !4299)
!4299 = !{!27, !27, !28, !28}
!4300 = !{!4301, !4302, !4303}
!4301 = !DILocalVariable(name: "p", arg: 1, scope: !4297, file: !835, line: 118, type: !27)
!4302 = !DILocalVariable(name: "n", arg: 2, scope: !4297, file: !835, line: 118, type: !28)
!4303 = !DILocalVariable(name: "s", arg: 3, scope: !4297, file: !835, line: 118, type: !28)
!4304 = !DILocation(line: 118, column: 18, scope: !4297)
!4305 = !DILocation(line: 118, column: 28, scope: !4297)
!4306 = !DILocation(line: 118, column: 38, scope: !4297)
!4307 = !DILocation(line: 120, column: 7, scope: !4308)
!4308 = distinct !DILexicalBlock(scope: !4297, file: !835, line: 120, column: 7)
!4309 = !DILocation(line: 120, column: 7, scope: !4297)
!4310 = !DILocation(line: 121, column: 5, scope: !4308)
!4311 = !DILocation(line: 122, column: 25, scope: !4297)
!4312 = !DILocalVariable(name: "p", arg: 1, scope: !4313, file: !4273, line: 51, type: !27)
!4313 = distinct !DISubprogram(name: "xrealloc", scope: !4273, file: !4273, line: 51, type: !4314, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !831, variables: !4316)
!4314 = !DISubroutineType(types: !4315)
!4315 = !{!27, !27, !28}
!4316 = !{!4312, !4317}
!4317 = !DILocalVariable(name: "n", arg: 2, scope: !4313, file: !4273, line: 51, type: !28)
!4318 = !DILocation(line: 51, column: 17, scope: !4313, inlinedAt: !4319)
!4319 = distinct !DILocation(line: 122, column: 10, scope: !4297)
!4320 = !DILocation(line: 51, column: 27, scope: !4313, inlinedAt: !4319)
!4321 = !DILocation(line: 53, column: 8, scope: !4322, inlinedAt: !4319)
!4322 = distinct !DILexicalBlock(scope: !4313, file: !4273, line: 53, column: 7)
!4323 = !DILocation(line: 53, column: 13, scope: !4324, inlinedAt: !4319)
!4324 = !DILexicalBlockFile(scope: !4322, file: !4273, discriminator: 1)
!4325 = !DILocation(line: 53, column: 10, scope: !4322, inlinedAt: !4319)
!4326 = !DILocation(line: 57, column: 7, scope: !4327, inlinedAt: !4319)
!4327 = distinct !DILexicalBlock(scope: !4322, file: !4273, line: 54, column: 5)
!4328 = !DILocation(line: 58, column: 7, scope: !4327, inlinedAt: !4319)
!4329 = !DILocation(line: 61, column: 7, scope: !4313, inlinedAt: !4319)
!4330 = !DILocation(line: 62, column: 8, scope: !4331, inlinedAt: !4319)
!4331 = distinct !DILexicalBlock(scope: !4313, file: !4273, line: 62, column: 7)
!4332 = !DILocation(line: 62, column: 13, scope: !4333, inlinedAt: !4319)
!4333 = !DILexicalBlockFile(scope: !4331, file: !4273, discriminator: 1)
!4334 = !DILocation(line: 62, column: 10, scope: !4331, inlinedAt: !4319)
!4335 = !DILocation(line: 63, column: 5, scope: !4331, inlinedAt: !4319)
!4336 = !DILocation(line: 122, column: 3, scope: !4297)
!4337 = !DILocation(line: 51, column: 17, scope: !4313)
!4338 = !DILocation(line: 51, column: 27, scope: !4313)
!4339 = !DILocation(line: 53, column: 8, scope: !4322)
!4340 = !DILocation(line: 53, column: 13, scope: !4324)
!4341 = !DILocation(line: 53, column: 10, scope: !4322)
!4342 = !DILocation(line: 57, column: 7, scope: !4327)
!4343 = !DILocation(line: 58, column: 7, scope: !4327)
!4344 = !DILocation(line: 61, column: 7, scope: !4313)
!4345 = !DILocation(line: 62, column: 8, scope: !4331)
!4346 = !DILocation(line: 62, column: 13, scope: !4333)
!4347 = !DILocation(line: 62, column: 10, scope: !4331)
!4348 = !DILocation(line: 63, column: 5, scope: !4331)
!4349 = !DILocation(line: 65, column: 1, scope: !4313)
!4350 = !DILocation(line: 180, column: 19, scope: !836)
!4351 = !DILocation(line: 180, column: 30, scope: !836)
!4352 = !DILocation(line: 180, column: 41, scope: !836)
!4353 = !DILocation(line: 182, column: 14, scope: !836)
!4354 = !DILocation(line: 182, column: 10, scope: !836)
!4355 = !DILocation(line: 184, column: 9, scope: !4356)
!4356 = distinct !DILexicalBlock(scope: !836, file: !835, line: 184, column: 7)
!4357 = !DILocation(line: 184, column: 7, scope: !836)
!4358 = !DILocation(line: 186, column: 13, scope: !4359)
!4359 = distinct !DILexicalBlock(scope: !4360, file: !835, line: 186, column: 11)
!4360 = distinct !DILexicalBlock(scope: !4356, file: !835, line: 185, column: 5)
!4361 = !DILocation(line: 186, column: 11, scope: !4360)
!4362 = !DILocation(line: 194, column: 30, scope: !4363)
!4363 = distinct !DILexicalBlock(scope: !4359, file: !835, line: 187, column: 9)
!4364 = !DILocation(line: 195, column: 16, scope: !4363)
!4365 = !DILocation(line: 195, column: 13, scope: !4363)
!4366 = !DILocation(line: 196, column: 9, scope: !4363)
!4367 = !DILocation(line: 204, column: 69, scope: !4368)
!4368 = distinct !DILexicalBlock(scope: !4369, file: !835, line: 204, column: 11)
!4369 = distinct !DILexicalBlock(scope: !4356, file: !835, line: 199, column: 5)
!4370 = !DILocation(line: 205, column: 11, scope: !4368)
!4371 = !DILocation(line: 204, column: 11, scope: !4369)
!4372 = !DILocation(line: 206, column: 9, scope: !4368)
!4373 = !DILocation(line: 210, column: 7, scope: !836)
!4374 = !DILocation(line: 211, column: 25, scope: !836)
!4375 = !DILocation(line: 51, column: 17, scope: !4313, inlinedAt: !4376)
!4376 = distinct !DILocation(line: 211, column: 10, scope: !836)
!4377 = !DILocation(line: 51, column: 27, scope: !4313, inlinedAt: !4376)
!4378 = !DILocation(line: 53, column: 10, scope: !4322, inlinedAt: !4376)
!4379 = !DILocation(line: 207, column: 14, scope: !4369)
!4380 = !DILocation(line: 207, column: 18, scope: !4369)
!4381 = !DILocation(line: 207, column: 9, scope: !4369)
!4382 = !DILocation(line: 53, column: 8, scope: !4322, inlinedAt: !4376)
!4383 = !DILocation(line: 57, column: 7, scope: !4327, inlinedAt: !4376)
!4384 = !DILocation(line: 58, column: 7, scope: !4327, inlinedAt: !4376)
!4385 = !DILocation(line: 61, column: 7, scope: !4313, inlinedAt: !4376)
!4386 = !DILocation(line: 62, column: 8, scope: !4331, inlinedAt: !4376)
!4387 = !DILocation(line: 62, column: 13, scope: !4333, inlinedAt: !4376)
!4388 = !DILocation(line: 62, column: 10, scope: !4331, inlinedAt: !4376)
!4389 = !DILocation(line: 63, column: 5, scope: !4331, inlinedAt: !4376)
!4390 = !DILocation(line: 211, column: 3, scope: !836)
!4391 = distinct !DISubprogram(name: "xcharalloc", scope: !835, file: !835, line: 220, type: !3316, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !831, variables: !4392)
!4392 = !{!4393}
!4393 = !DILocalVariable(name: "n", arg: 1, scope: !4391, file: !835, line: 220, type: !28)
!4394 = !DILocation(line: 220, column: 20, scope: !4391)
!4395 = !DILocation(line: 39, column: 17, scope: !4272, inlinedAt: !4396)
!4396 = distinct !DILocation(line: 222, column: 10, scope: !4391)
!4397 = !DILocation(line: 41, column: 13, scope: !4272, inlinedAt: !4396)
!4398 = !DILocation(line: 41, column: 9, scope: !4272, inlinedAt: !4396)
!4399 = !DILocation(line: 42, column: 8, scope: !4283, inlinedAt: !4396)
!4400 = !DILocation(line: 42, column: 15, scope: !4285, inlinedAt: !4396)
!4401 = !DILocation(line: 42, column: 10, scope: !4283, inlinedAt: !4396)
!4402 = !DILocation(line: 43, column: 5, scope: !4283, inlinedAt: !4396)
!4403 = !DILocation(line: 222, column: 3, scope: !4391)
!4404 = distinct !DISubprogram(name: "x2realloc", scope: !4273, file: !4273, line: 74, type: !4405, isLocal: false, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, unit: !831, variables: !4407)
!4405 = !DISubroutineType(types: !4406)
!4406 = !{!27, !27, !839}
!4407 = !{!4408, !4409}
!4408 = !DILocalVariable(name: "p", arg: 1, scope: !4404, file: !4273, line: 74, type: !27)
!4409 = !DILocalVariable(name: "pn", arg: 2, scope: !4404, file: !4273, line: 74, type: !839)
!4410 = !DILocation(line: 74, column: 18, scope: !4404)
!4411 = !DILocation(line: 74, column: 29, scope: !4404)
!4412 = !DILocation(line: 180, column: 19, scope: !836, inlinedAt: !4413)
!4413 = distinct !DILocation(line: 76, column: 10, scope: !4404)
!4414 = !DILocation(line: 180, column: 30, scope: !836, inlinedAt: !4413)
!4415 = !DILocation(line: 180, column: 41, scope: !836, inlinedAt: !4413)
!4416 = !DILocation(line: 182, column: 14, scope: !836, inlinedAt: !4413)
!4417 = !DILocation(line: 182, column: 10, scope: !836, inlinedAt: !4413)
!4418 = !DILocation(line: 184, column: 9, scope: !4356, inlinedAt: !4413)
!4419 = !DILocation(line: 184, column: 7, scope: !836, inlinedAt: !4413)
!4420 = !DILocation(line: 186, column: 13, scope: !4359, inlinedAt: !4413)
!4421 = !DILocation(line: 186, column: 11, scope: !4360, inlinedAt: !4413)
!4422 = !DILocation(line: 210, column: 7, scope: !836, inlinedAt: !4413)
!4423 = !DILocation(line: 51, column: 17, scope: !4313, inlinedAt: !4424)
!4424 = distinct !DILocation(line: 211, column: 10, scope: !836, inlinedAt: !4413)
!4425 = !DILocation(line: 51, column: 27, scope: !4313, inlinedAt: !4424)
!4426 = !DILocation(line: 53, column: 10, scope: !4322, inlinedAt: !4424)
!4427 = !DILocation(line: 205, column: 11, scope: !4368, inlinedAt: !4413)
!4428 = !DILocation(line: 204, column: 11, scope: !4369, inlinedAt: !4413)
!4429 = !DILocation(line: 206, column: 9, scope: !4368, inlinedAt: !4413)
!4430 = !DILocation(line: 207, column: 14, scope: !4369, inlinedAt: !4413)
!4431 = !DILocation(line: 207, column: 18, scope: !4369, inlinedAt: !4413)
!4432 = !DILocation(line: 207, column: 9, scope: !4369, inlinedAt: !4413)
!4433 = !DILocation(line: 53, column: 8, scope: !4322, inlinedAt: !4424)
!4434 = !DILocation(line: 57, column: 7, scope: !4327, inlinedAt: !4424)
!4435 = !DILocation(line: 58, column: 7, scope: !4327, inlinedAt: !4424)
!4436 = !DILocation(line: 61, column: 7, scope: !4313, inlinedAt: !4424)
!4437 = !DILocation(line: 62, column: 8, scope: !4331, inlinedAt: !4424)
!4438 = !DILocation(line: 62, column: 13, scope: !4333, inlinedAt: !4424)
!4439 = !DILocation(line: 62, column: 10, scope: !4331, inlinedAt: !4424)
!4440 = !DILocation(line: 63, column: 5, scope: !4331, inlinedAt: !4424)
!4441 = !DILocation(line: 76, column: 3, scope: !4404)
!4442 = distinct !DISubprogram(name: "xzalloc", scope: !4273, file: !4273, line: 84, type: !4274, isLocal: false, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: true, unit: !831, variables: !4443)
!4443 = !{!4444}
!4444 = !DILocalVariable(name: "s", arg: 1, scope: !4442, file: !4273, line: 84, type: !28)
!4445 = !DILocation(line: 84, column: 17, scope: !4442)
!4446 = !DILocation(line: 39, column: 17, scope: !4272, inlinedAt: !4447)
!4447 = distinct !DILocation(line: 86, column: 18, scope: !4442)
!4448 = !DILocation(line: 41, column: 13, scope: !4272, inlinedAt: !4447)
!4449 = !DILocation(line: 41, column: 9, scope: !4272, inlinedAt: !4447)
!4450 = !DILocation(line: 42, column: 8, scope: !4283, inlinedAt: !4447)
!4451 = !DILocation(line: 42, column: 15, scope: !4285, inlinedAt: !4447)
!4452 = !DILocation(line: 42, column: 10, scope: !4283, inlinedAt: !4447)
!4453 = !DILocation(line: 43, column: 5, scope: !4283, inlinedAt: !4447)
!4454 = !DILocation(line: 86, column: 10, scope: !4442)
!4455 = !DILocation(line: 86, column: 3, scope: !4442)
!4456 = distinct !DISubprogram(name: "xcalloc", scope: !4273, file: !4273, line: 93, type: !4259, isLocal: false, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: true, unit: !831, variables: !4457)
!4457 = !{!4458, !4459, !4460}
!4458 = !DILocalVariable(name: "n", arg: 1, scope: !4456, file: !4273, line: 93, type: !28)
!4459 = !DILocalVariable(name: "s", arg: 2, scope: !4456, file: !4273, line: 93, type: !28)
!4460 = !DILocalVariable(name: "p", scope: !4456, file: !4273, line: 95, type: !27)
!4461 = !DILocation(line: 93, column: 17, scope: !4456)
!4462 = !DILocation(line: 93, column: 27, scope: !4456)
!4463 = !DILocation(line: 100, column: 7, scope: !4464)
!4464 = distinct !DILexicalBlock(scope: !4456, file: !4273, line: 100, column: 7)
!4465 = !DILocation(line: 101, column: 7, scope: !4464)
!4466 = !DILocation(line: 101, column: 18, scope: !4467)
!4467 = !DILexicalBlockFile(scope: !4464, file: !4273, discriminator: 1)
!4468 = !DILocation(line: 95, column: 9, scope: !4456)
!4469 = !DILocation(line: 101, column: 16, scope: !4467)
!4470 = !DILocation(line: 100, column: 7, scope: !4471)
!4471 = !DILexicalBlockFile(scope: !4456, file: !4273, discriminator: 1)
!4472 = !DILocation(line: 102, column: 5, scope: !4464)
!4473 = !DILocation(line: 103, column: 3, scope: !4456)
!4474 = distinct !DISubprogram(name: "xmemdup", scope: !4273, file: !4273, line: 111, type: !4475, isLocal: false, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: true, unit: !831, variables: !4477)
!4475 = !DISubroutineType(types: !4476)
!4476 = !{!27, !31, !28}
!4477 = !{!4478, !4479}
!4478 = !DILocalVariable(name: "p", arg: 1, scope: !4474, file: !4273, line: 111, type: !31)
!4479 = !DILocalVariable(name: "s", arg: 2, scope: !4474, file: !4273, line: 111, type: !28)
!4480 = !DILocation(line: 111, column: 22, scope: !4474)
!4481 = !DILocation(line: 111, column: 32, scope: !4474)
!4482 = !DILocation(line: 39, column: 17, scope: !4272, inlinedAt: !4483)
!4483 = distinct !DILocation(line: 113, column: 18, scope: !4474)
!4484 = !DILocation(line: 41, column: 13, scope: !4272, inlinedAt: !4483)
!4485 = !DILocation(line: 41, column: 9, scope: !4272, inlinedAt: !4483)
!4486 = !DILocation(line: 42, column: 8, scope: !4283, inlinedAt: !4483)
!4487 = !DILocation(line: 42, column: 15, scope: !4285, inlinedAt: !4483)
!4488 = !DILocation(line: 42, column: 10, scope: !4283, inlinedAt: !4483)
!4489 = !DILocation(line: 43, column: 5, scope: !4283, inlinedAt: !4483)
!4490 = !DILocation(line: 113, column: 10, scope: !4474)
!4491 = !DILocation(line: 113, column: 3, scope: !4474)
!4492 = distinct !DISubprogram(name: "xstrdup", scope: !4273, file: !4273, line: 119, type: !1826, isLocal: false, isDefinition: true, scopeLine: 120, flags: DIFlagPrototyped, isOptimized: true, unit: !831, variables: !4493)
!4493 = !{!4494}
!4494 = !DILocalVariable(name: "string", arg: 1, scope: !4492, file: !4273, line: 119, type: !36)
!4495 = !DILocation(line: 119, column: 22, scope: !4492)
!4496 = !DILocation(line: 121, column: 27, scope: !4492)
!4497 = !DILocation(line: 121, column: 43, scope: !4492)
!4498 = !DILocation(line: 111, column: 22, scope: !4474, inlinedAt: !4499)
!4499 = distinct !DILocation(line: 121, column: 10, scope: !4500)
!4500 = !DILexicalBlockFile(scope: !4492, file: !4273, discriminator: 1)
!4501 = !DILocation(line: 111, column: 32, scope: !4474, inlinedAt: !4499)
!4502 = !DILocation(line: 39, column: 17, scope: !4272, inlinedAt: !4503)
!4503 = distinct !DILocation(line: 113, column: 18, scope: !4474, inlinedAt: !4499)
!4504 = !DILocation(line: 41, column: 13, scope: !4272, inlinedAt: !4503)
!4505 = !DILocation(line: 41, column: 9, scope: !4272, inlinedAt: !4503)
!4506 = !DILocation(line: 42, column: 8, scope: !4283, inlinedAt: !4503)
!4507 = !DILocation(line: 42, column: 15, scope: !4285, inlinedAt: !4503)
!4508 = !DILocation(line: 42, column: 10, scope: !4283, inlinedAt: !4503)
!4509 = !DILocation(line: 43, column: 5, scope: !4283, inlinedAt: !4503)
!4510 = !DILocation(line: 113, column: 10, scope: !4474, inlinedAt: !4499)
!4511 = !DILocation(line: 121, column: 3, scope: !4492)
!4512 = distinct !DISubprogram(name: "xalloc_die", scope: !4513, file: !4513, line: 32, type: !1141, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !848, variables: !327)
!4513 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4514 = !DILocation(line: 34, column: 10, scope: !4512)
!4515 = !DILocation(line: 34, column: 33, scope: !4512)
!4516 = !DILocation(line: 34, column: 3, scope: !4517)
!4517 = !DILexicalBlockFile(scope: !4512, file: !4513, discriminator: 1)
!4518 = !DILocation(line: 40, column: 3, scope: !4512)
!4519 = distinct !DISubprogram(name: "rpl_calloc", scope: !4520, file: !4520, line: 42, type: !4259, isLocal: false, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: true, unit: !850, variables: !4521)
!4520 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4521 = !{!4522, !4523, !4524, !4525}
!4522 = !DILocalVariable(name: "n", arg: 1, scope: !4519, file: !4520, line: 42, type: !28)
!4523 = !DILocalVariable(name: "s", arg: 2, scope: !4519, file: !4520, line: 42, type: !28)
!4524 = !DILocalVariable(name: "result", scope: !4519, file: !4520, line: 44, type: !27)
!4525 = !DILocalVariable(name: "bytes", scope: !4526, file: !4520, line: 56, type: !28)
!4526 = distinct !DILexicalBlock(scope: !4527, file: !4520, line: 53, column: 5)
!4527 = distinct !DILexicalBlock(scope: !4519, file: !4520, line: 47, column: 7)
!4528 = !DILocation(line: 42, column: 20, scope: !4519)
!4529 = !DILocation(line: 42, column: 30, scope: !4519)
!4530 = !DILocation(line: 47, column: 9, scope: !4527)
!4531 = !DILocation(line: 47, column: 19, scope: !4532)
!4532 = !DILexicalBlockFile(scope: !4527, file: !4520, discriminator: 1)
!4533 = !DILocation(line: 47, column: 14, scope: !4527)
!4534 = !DILocation(line: 56, column: 24, scope: !4526)
!4535 = !DILocation(line: 56, column: 14, scope: !4526)
!4536 = !DILocation(line: 57, column: 17, scope: !4537)
!4537 = distinct !DILexicalBlock(scope: !4526, file: !4520, line: 57, column: 11)
!4538 = !DILocation(line: 57, column: 21, scope: !4537)
!4539 = !DILocation(line: 57, column: 11, scope: !4526)
!4540 = !DILocation(line: 59, column: 11, scope: !4541)
!4541 = distinct !DILexicalBlock(scope: !4537, file: !4520, line: 58, column: 9)
!4542 = !DILocation(line: 59, column: 17, scope: !4541)
!4543 = !DILocation(line: 65, column: 12, scope: !4519)
!4544 = !DILocation(line: 44, column: 9, scope: !4519)
!4545 = !DILocation(line: 72, column: 3, scope: !4519)
!4546 = !DILocation(line: 73, column: 1, scope: !4519)
!4547 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !4548, file: !4548, line: 334, type: !4549, isLocal: false, isDefinition: true, scopeLine: 335, flags: DIFlagPrototyped, isOptimized: true, unit: !852, variables: !4563)
!4548 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4549 = !DISubroutineType(types: !4550)
!4550 = !{!28, !4551, !36, !28, !4552}
!4551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2303, size: 64)
!4552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4553, size: 64)
!4553 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !2291, line: 107, baseType: !4554)
!4554 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !2291, line: 95, baseType: !4555)
!4555 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2291, line: 83, size: 64, elements: !4556)
!4556 = !{!4557, !4558}
!4557 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !4555, file: !2291, line: 85, baseType: !80, size: 32)
!4558 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !4555, file: !2291, line: 94, baseType: !4559, size: 32, offset: 32)
!4559 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4555, file: !2291, line: 86, size: 32, elements: !4560)
!4560 = !{!4561, !4562}
!4561 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !4559, file: !2291, line: 89, baseType: !203, size: 32)
!4562 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !4559, file: !2291, line: 93, baseType: !162, size: 32)
!4563 = !{!4564, !4565, !4566, !4567, !4568, !4569, !4570}
!4564 = !DILocalVariable(name: "pwc", arg: 1, scope: !4547, file: !4548, line: 334, type: !4551)
!4565 = !DILocalVariable(name: "s", arg: 2, scope: !4547, file: !4548, line: 334, type: !36)
!4566 = !DILocalVariable(name: "n", arg: 3, scope: !4547, file: !4548, line: 334, type: !28)
!4567 = !DILocalVariable(name: "ps", arg: 4, scope: !4547, file: !4548, line: 334, type: !4552)
!4568 = !DILocalVariable(name: "ret", scope: !4547, file: !4548, line: 336, type: !28)
!4569 = !DILocalVariable(name: "wc", scope: !4547, file: !4548, line: 337, type: !2303)
!4570 = !DILocalVariable(name: "uc", scope: !4571, file: !4548, line: 398, type: !35)
!4571 = distinct !DILexicalBlock(scope: !4572, file: !4548, line: 397, column: 5)
!4572 = distinct !DILexicalBlock(scope: !4547, file: !4548, line: 396, column: 7)
!4573 = !DILocation(line: 334, column: 23, scope: !4547)
!4574 = !DILocation(line: 334, column: 40, scope: !4547)
!4575 = !DILocation(line: 334, column: 50, scope: !4547)
!4576 = !DILocation(line: 334, column: 64, scope: !4547)
!4577 = !DILocation(line: 337, column: 3, scope: !4547)
!4578 = !DILocation(line: 353, column: 9, scope: !4579)
!4579 = distinct !DILexicalBlock(scope: !4547, file: !4548, line: 353, column: 7)
!4580 = !DILocation(line: 353, column: 7, scope: !4547)
!4581 = !DILocation(line: 388, column: 9, scope: !4547)
!4582 = !DILocation(line: 336, column: 10, scope: !4547)
!4583 = !DILocation(line: 396, column: 19, scope: !4572)
!4584 = !DILocation(line: 396, column: 31, scope: !4585)
!4585 = !DILexicalBlockFile(scope: !4572, file: !4548, discriminator: 1)
!4586 = !DILocation(line: 396, column: 26, scope: !4572)
!4587 = !DILocation(line: 396, column: 41, scope: !4588)
!4588 = !DILexicalBlockFile(scope: !4572, file: !4548, discriminator: 2)
!4589 = !DILocation(line: 396, column: 7, scope: !4590)
!4590 = !DILexicalBlockFile(scope: !4547, file: !4548, discriminator: 2)
!4591 = !DILocation(line: 398, column: 26, scope: !4571)
!4592 = !DILocation(line: 398, column: 21, scope: !4571)
!4593 = !DILocation(line: 399, column: 14, scope: !4571)
!4594 = !DILocation(line: 399, column: 12, scope: !4571)
!4595 = !DILocation(line: 405, column: 1, scope: !4547)
!4596 = distinct !DISubprogram(name: "extract_trimmed_name", scope: !4597, file: !4597, line: 45, type: !4598, isLocal: false, isDefinition: true, scopeLine: 46, flags: DIFlagPrototyped, isOptimized: true, unit: !855, variables: !4624)
!4597 = !DIFile(filename: "lib/readutmp.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4598 = !DISubroutineType(types: !4599)
!4599 = !{!25, !4600}
!4600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4601, size: 64)
!4601 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4602)
!4602 = !DIDerivedType(tag: DW_TAG_typedef, name: "STRUCT_UTMP", file: !6, line: 146, baseType: !4603)
!4603 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "utmpx", file: !152, line: 55, size: 3072, elements: !4604)
!4604 = !{!4605, !4606, !4607, !4608, !4609, !4610, !4611, !4616, !4617, !4622, !4623}
!4605 = !DIDerivedType(tag: DW_TAG_member, name: "ut_type", scope: !4603, file: !152, line: 57, baseType: !43, size: 16)
!4606 = !DIDerivedType(tag: DW_TAG_member, name: "ut_pid", scope: !4603, file: !152, line: 58, baseType: !156, size: 32, offset: 32)
!4607 = !DIDerivedType(tag: DW_TAG_member, name: "ut_line", scope: !4603, file: !152, line: 59, baseType: !158, size: 256, offset: 64)
!4608 = !DIDerivedType(tag: DW_TAG_member, name: "ut_id", scope: !4603, file: !152, line: 60, baseType: !162, size: 32, offset: 320)
!4609 = !DIDerivedType(tag: DW_TAG_member, name: "ut_user", scope: !4603, file: !152, line: 61, baseType: !158, size: 256, offset: 352)
!4610 = !DIDerivedType(tag: DW_TAG_member, name: "ut_host", scope: !4603, file: !152, line: 62, baseType: !167, size: 2048, offset: 608)
!4611 = !DIDerivedType(tag: DW_TAG_member, name: "ut_exit", scope: !4603, file: !152, line: 63, baseType: !4612, size: 32, offset: 2656)
!4612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__exit_status", file: !152, line: 42, size: 32, elements: !4613)
!4613 = !{!4614, !4615}
!4614 = !DIDerivedType(tag: DW_TAG_member, name: "e_termination", scope: !4612, file: !152, line: 45, baseType: !43, size: 16)
!4615 = !DIDerivedType(tag: DW_TAG_member, name: "e_exit", scope: !4612, file: !152, line: 46, baseType: !43, size: 16, offset: 16)
!4616 = !DIDerivedType(tag: DW_TAG_member, name: "ut_session", scope: !4603, file: !152, line: 70, baseType: !176, size: 32, offset: 2688)
!4617 = !DIDerivedType(tag: DW_TAG_member, name: "ut_tv", scope: !4603, file: !152, line: 75, baseType: !4618, size: 64, offset: 2720)
!4618 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4603, file: !152, line: 71, size: 64, elements: !4619)
!4619 = !{!4620, !4621}
!4620 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !4618, file: !152, line: 73, baseType: !176, size: 32)
!4621 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !4618, file: !152, line: 74, baseType: !176, size: 32, offset: 32)
!4622 = !DIDerivedType(tag: DW_TAG_member, name: "ut_addr_v6", scope: !4603, file: !152, line: 80, baseType: !183, size: 128, offset: 2784)
!4623 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !4603, file: !152, line: 81, baseType: !185, size: 160, offset: 2912)
!4624 = !{!4625, !4626, !4627}
!4625 = !DILocalVariable(name: "ut", arg: 1, scope: !4596, file: !4597, line: 45, type: !4600)
!4626 = !DILocalVariable(name: "p", scope: !4596, file: !4597, line: 47, type: !25)
!4627 = !DILocalVariable(name: "trimmed_name", scope: !4596, file: !4597, line: 47, type: !25)
!4628 = !DILocation(line: 45, column: 42, scope: !4596)
!4629 = !DILocation(line: 49, column: 18, scope: !4596)
!4630 = !DILocation(line: 47, column: 13, scope: !4596)
!4631 = !DILocation(line: 50, column: 26, scope: !4596)
!4632 = !DILocalVariable(name: "__dest", arg: 1, scope: !4633, file: !1583, line: 122, type: !1200)
!4633 = distinct !DISubprogram(name: "strncpy", scope: !1583, file: !1583, line: 122, type: !1198, isLocal: false, isDefinition: true, scopeLine: 124, flags: DIFlagPrototyped, isOptimized: true, unit: !855, variables: !4634)
!4634 = !{!4632, !4635, !4636}
!4635 = !DILocalVariable(name: "__src", arg: 2, scope: !4633, file: !1583, line: 122, type: !1201)
!4636 = !DILocalVariable(name: "__len", arg: 3, scope: !4633, file: !1583, line: 122, type: !28)
!4637 = !DILocation(line: 122, column: 1, scope: !4633, inlinedAt: !4638)
!4638 = distinct !DILocation(line: 50, column: 3, scope: !4596)
!4639 = !DILocation(line: 125, column: 57, scope: !4633, inlinedAt: !4638)
!4640 = !DILocation(line: 125, column: 10, scope: !4633, inlinedAt: !4638)
!4641 = !DILocation(line: 54, column: 3, scope: !4596)
!4642 = !DILocation(line: 54, column: 39, scope: !4596)
!4643 = !DILocation(line: 55, column: 27, scope: !4644)
!4644 = distinct !DILexicalBlock(scope: !4596, file: !4597, line: 55, column: 3)
!4645 = !DILocation(line: 47, column: 9, scope: !4596)
!4646 = !DILocation(line: 56, column: 21, scope: !4647)
!4647 = distinct !DILexicalBlock(scope: !4644, file: !4597, line: 55, column: 3)
!4648 = !DILocation(line: 56, column: 25, scope: !4647)
!4649 = !DILocation(line: 55, column: 25, scope: !4644)
!4650 = !DILocation(line: 56, column: 28, scope: !4651)
!4651 = !DILexicalBlockFile(scope: !4647, file: !4597, discriminator: 1)
!4652 = !DILocation(line: 56, column: 34, scope: !4651)
!4653 = !DILocation(line: 55, column: 3, scope: !4654)
!4654 = !DILexicalBlockFile(scope: !4644, file: !4597, discriminator: 1)
!4655 = !DILocation(line: 57, column: 13, scope: !4647)
!4656 = distinct !{!4656, !4657, !4658}
!4657 = !DILocation(line: 55, column: 3, scope: !4644)
!4658 = !DILocation(line: 58, column: 5, scope: !4644)
!4659 = !DILocation(line: 59, column: 3, scope: !4596)
!4660 = distinct !DISubprogram(name: "read_utmp", scope: !4597, file: !4597, line: 88, type: !4661, isLocal: false, isDefinition: true, scopeLine: 90, flags: DIFlagPrototyped, isOptimized: true, unit: !855, variables: !4665)
!4661 = !DISubroutineType(types: !4662)
!4662 = !{!80, !36, !839, !4663, !80}
!4663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4664, size: 64)
!4664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4602, size: 64)
!4665 = !{!4666, !4667, !4668, !4669, !4670, !4671, !4672, !4673}
!4666 = !DILocalVariable(name: "file", arg: 1, scope: !4660, file: !4597, line: 88, type: !36)
!4667 = !DILocalVariable(name: "n_entries", arg: 2, scope: !4660, file: !4597, line: 88, type: !839)
!4668 = !DILocalVariable(name: "utmp_buf", arg: 3, scope: !4660, file: !4597, line: 88, type: !4663)
!4669 = !DILocalVariable(name: "options", arg: 4, scope: !4660, file: !4597, line: 89, type: !80)
!4670 = !DILocalVariable(name: "n_read", scope: !4660, file: !4597, line: 91, type: !28)
!4671 = !DILocalVariable(name: "n_alloc", scope: !4660, file: !4597, line: 92, type: !28)
!4672 = !DILocalVariable(name: "utmp", scope: !4660, file: !4597, line: 93, type: !4664)
!4673 = !DILocalVariable(name: "u", scope: !4660, file: !4597, line: 94, type: !4664)
!4674 = !DILocation(line: 88, column: 24, scope: !4660)
!4675 = !DILocation(line: 88, column: 38, scope: !4660)
!4676 = !DILocation(line: 88, column: 63, scope: !4660)
!4677 = !DILocation(line: 89, column: 16, scope: !4660)
!4678 = !DILocation(line: 91, column: 10, scope: !4660)
!4679 = !DILocation(line: 92, column: 10, scope: !4660)
!4680 = !DILocation(line: 93, column: 16, scope: !4660)
!4681 = !DILocation(line: 100, column: 3, scope: !4660)
!4682 = !DILocation(line: 102, column: 3, scope: !4660)
!4683 = !DILocation(line: 104, column: 15, scope: !4684)
!4684 = !DILexicalBlockFile(scope: !4660, file: !4597, discriminator: 1)
!4685 = !DILocation(line: 94, column: 16, scope: !4660)
!4686 = !DILocation(line: 104, column: 32, scope: !4684)
!4687 = !DILocation(line: 104, column: 3, scope: !4684)
!4688 = !DILocalVariable(name: "u", arg: 1, scope: !4689, file: !4597, line: 65, type: !4600)
!4689 = distinct !DISubprogram(name: "desirable_utmp_entry", scope: !4597, file: !4597, line: 65, type: !4690, isLocal: true, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: true, unit: !855, variables: !4692)
!4690 = !DISubroutineType(types: !4691)
!4691 = !{!47, !4600, !80}
!4692 = !{!4688, !4693, !4694}
!4693 = !DILocalVariable(name: "options", arg: 2, scope: !4689, file: !4597, line: 65, type: !80)
!4694 = !DILocalVariable(name: "user_proc", scope: !4689, file: !4597, line: 67, type: !47)
!4695 = !DILocation(line: 65, column: 42, scope: !4689, inlinedAt: !4696)
!4696 = distinct !DILocation(line: 105, column: 9, scope: !4697)
!4697 = distinct !DILexicalBlock(scope: !4660, file: !4597, line: 105, column: 9)
!4698 = !DILocation(line: 65, column: 49, scope: !4689, inlinedAt: !4696)
!4699 = !DILocation(line: 67, column: 20, scope: !4689, inlinedAt: !4696)
!4700 = !DILocation(line: 67, column: 20, scope: !4701, inlinedAt: !4696)
!4701 = !DILexicalBlockFile(scope: !4689, file: !4597, discriminator: 1)
!4702 = !DILocation(line: 68, column: 42, scope: !4703, inlinedAt: !4696)
!4703 = distinct !DILexicalBlock(scope: !4689, file: !4597, line: 68, column: 7)
!4704 = !DILocation(line: 71, column: 7, scope: !4705, inlinedAt: !4696)
!4705 = distinct !DILexicalBlock(scope: !4689, file: !4597, line: 70, column: 7)
!4706 = !DILocation(line: 72, column: 14, scope: !4707, inlinedAt: !4696)
!4707 = !DILexicalBlockFile(scope: !4705, file: !4597, discriminator: 1)
!4708 = !DILocation(line: 72, column: 12, scope: !4707, inlinedAt: !4696)
!4709 = !DILocation(line: 73, column: 7, scope: !4705, inlinedAt: !4696)
!4710 = !DILocation(line: 73, column: 11, scope: !4707, inlinedAt: !4696)
!4711 = !DILocation(line: 73, column: 32, scope: !4707, inlinedAt: !4696)
!4712 = !DILocation(line: 73, column: 36, scope: !4707, inlinedAt: !4696)
!4713 = !DILocation(line: 73, column: 39, scope: !4714, inlinedAt: !4696)
!4714 = !DILexicalBlockFile(scope: !4705, file: !4597, discriminator: 2)
!4715 = !DILocation(line: 73, column: 45, scope: !4714, inlinedAt: !4696)
!4716 = !DILocation(line: 70, column: 7, scope: !4701, inlinedAt: !4696)
!4717 = !DILocation(line: 107, column: 20, scope: !4718)
!4718 = distinct !DILexicalBlock(scope: !4719, file: !4597, line: 107, column: 13)
!4719 = distinct !DILexicalBlock(scope: !4697, file: !4597, line: 106, column: 7)
!4720 = !DILocation(line: 107, column: 13, scope: !4719)
!4721 = !DILocation(line: 180, column: 19, scope: !859, inlinedAt: !4722)
!4722 = distinct !DILocation(line: 108, column: 18, scope: !4718)
!4723 = !DILocation(line: 180, column: 41, scope: !859, inlinedAt: !4722)
!4724 = !DILocation(line: 182, column: 10, scope: !859, inlinedAt: !4722)
!4725 = !DILocation(line: 184, column: 9, scope: !4726, inlinedAt: !4722)
!4726 = distinct !DILexicalBlock(scope: !859, file: !835, line: 184, column: 7)
!4727 = !DILocation(line: 184, column: 7, scope: !859, inlinedAt: !4722)
!4728 = !DILocation(line: 186, column: 13, scope: !4729, inlinedAt: !4722)
!4729 = distinct !DILexicalBlock(scope: !4730, file: !835, line: 186, column: 11)
!4730 = distinct !DILexicalBlock(scope: !4726, file: !835, line: 185, column: 5)
!4731 = !DILocation(line: 186, column: 11, scope: !4730, inlinedAt: !4722)
!4732 = !DILocation(line: 205, column: 11, scope: !4733, inlinedAt: !4722)
!4733 = distinct !DILexicalBlock(scope: !4734, file: !835, line: 204, column: 11)
!4734 = distinct !DILexicalBlock(scope: !4726, file: !835, line: 199, column: 5)
!4735 = !DILocation(line: 204, column: 11, scope: !4734, inlinedAt: !4722)
!4736 = !DILocation(line: 206, column: 9, scope: !4733, inlinedAt: !4722)
!4737 = !DILocation(line: 207, column: 14, scope: !4734, inlinedAt: !4722)
!4738 = !DILocation(line: 207, column: 18, scope: !4734, inlinedAt: !4722)
!4739 = !DILocation(line: 207, column: 9, scope: !4734, inlinedAt: !4722)
!4740 = !DILocation(line: 211, column: 25, scope: !859, inlinedAt: !4722)
!4741 = !DILocation(line: 211, column: 10, scope: !859, inlinedAt: !4722)
!4742 = !DILocation(line: 108, column: 18, scope: !4718)
!4743 = !DILocation(line: 108, column: 11, scope: !4718)
!4744 = !DILocation(line: 110, column: 20, scope: !4719)
!4745 = !DILocation(line: 110, column: 9, scope: !4719)
!4746 = !DILocation(line: 110, column: 26, scope: !4719)
!4747 = !{i64 0, i64 2, !2654, i64 4, i64 4, !1002, i64 8, i64 32, !1090, i64 40, i64 4, !1090, i64 44, i64 32, !1090, i64 76, i64 256, !1090, i64 332, i64 2, !2654, i64 334, i64 2, !2654, i64 336, i64 4, !1002, i64 340, i64 4, !1002, i64 344, i64 4, !1002, i64 348, i64 16, !1090, i64 364, i64 20, !1090}
!4748 = distinct !{!4748, !4749, !4750}
!4749 = !DILocation(line: 104, column: 3, scope: !4660)
!4750 = !DILocation(line: 111, column: 7, scope: !4660)
!4751 = !DILocation(line: 113, column: 3, scope: !4660)
!4752 = !DILocation(line: 115, column: 14, scope: !4660)
!4753 = !DILocation(line: 116, column: 13, scope: !4660)
!4754 = !DILocation(line: 118, column: 3, scope: !4660)
!4755 = distinct !DISubprogram(name: "close_stream", scope: !4756, file: !4756, line: 56, type: !4757, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !866, variables: !4799)
!4756 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4757 = !DISubroutineType(types: !4758)
!4758 = !{!80, !4759}
!4759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4760, size: 64)
!4760 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !4045, line: 49, baseType: !4761)
!4761 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !4047, line: 241, size: 1728, elements: !4762)
!4762 = !{!4763, !4764, !4765, !4766, !4767, !4768, !4769, !4770, !4771, !4772, !4773, !4774, !4775, !4783, !4784, !4785, !4786, !4787, !4788, !4789, !4790, !4791, !4792, !4793, !4794, !4795, !4796, !4797, !4798}
!4763 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4761, file: !4047, line: 242, baseType: !80, size: 32)
!4764 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4761, file: !4047, line: 247, baseType: !25, size: 64, offset: 64)
!4765 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4761, file: !4047, line: 248, baseType: !25, size: 64, offset: 128)
!4766 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4761, file: !4047, line: 249, baseType: !25, size: 64, offset: 192)
!4767 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4761, file: !4047, line: 250, baseType: !25, size: 64, offset: 256)
!4768 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4761, file: !4047, line: 251, baseType: !25, size: 64, offset: 320)
!4769 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4761, file: !4047, line: 252, baseType: !25, size: 64, offset: 384)
!4770 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4761, file: !4047, line: 253, baseType: !25, size: 64, offset: 448)
!4771 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4761, file: !4047, line: 254, baseType: !25, size: 64, offset: 512)
!4772 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4761, file: !4047, line: 256, baseType: !25, size: 64, offset: 576)
!4773 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4761, file: !4047, line: 257, baseType: !25, size: 64, offset: 640)
!4774 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4761, file: !4047, line: 258, baseType: !25, size: 64, offset: 704)
!4775 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4761, file: !4047, line: 260, baseType: !4776, size: 64, offset: 768)
!4776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4777, size: 64)
!4777 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !4047, line: 156, size: 192, elements: !4778)
!4778 = !{!4779, !4780, !4782}
!4779 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4777, file: !4047, line: 157, baseType: !4776, size: 64)
!4780 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4777, file: !4047, line: 158, baseType: !4781, size: 64, offset: 64)
!4781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4761, size: 64)
!4782 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4777, file: !4047, line: 162, baseType: !80, size: 32, offset: 128)
!4783 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4761, file: !4047, line: 262, baseType: !4781, size: 64, offset: 832)
!4784 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4761, file: !4047, line: 264, baseType: !80, size: 32, offset: 896)
!4785 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4761, file: !4047, line: 268, baseType: !80, size: 32, offset: 928)
!4786 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4761, file: !4047, line: 270, baseType: !211, size: 64, offset: 960)
!4787 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4761, file: !4047, line: 274, baseType: !364, size: 16, offset: 1024)
!4788 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4761, file: !4047, line: 275, baseType: !4075, size: 8, offset: 1040)
!4789 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4761, file: !4047, line: 276, baseType: !4077, size: 8, offset: 1048)
!4790 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4761, file: !4047, line: 280, baseType: !4081, size: 64, offset: 1088)
!4791 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4761, file: !4047, line: 289, baseType: !4084, size: 64, offset: 1152)
!4792 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4761, file: !4047, line: 297, baseType: !27, size: 64, offset: 1216)
!4793 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4761, file: !4047, line: 298, baseType: !27, size: 64, offset: 1280)
!4794 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4761, file: !4047, line: 299, baseType: !27, size: 64, offset: 1344)
!4795 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4761, file: !4047, line: 300, baseType: !27, size: 64, offset: 1408)
!4796 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4761, file: !4047, line: 302, baseType: !28, size: 64, offset: 1472)
!4797 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4761, file: !4047, line: 303, baseType: !80, size: 32, offset: 1536)
!4798 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4761, file: !4047, line: 305, baseType: !185, size: 160, offset: 1568)
!4799 = !{!4800, !4801, !4803, !4804}
!4800 = !DILocalVariable(name: "stream", arg: 1, scope: !4755, file: !4756, line: 56, type: !4759)
!4801 = !DILocalVariable(name: "some_pending", scope: !4755, file: !4756, line: 58, type: !4802)
!4802 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !47)
!4803 = !DILocalVariable(name: "prev_fail", scope: !4755, file: !4756, line: 59, type: !4802)
!4804 = !DILocalVariable(name: "fclose_fail", scope: !4755, file: !4756, line: 60, type: !4802)
!4805 = !DILocation(line: 56, column: 21, scope: !4755)
!4806 = !DILocation(line: 58, column: 30, scope: !4755)
!4807 = !DILocalVariable(name: "__stream", arg: 1, scope: !4808, file: !4809, line: 132, type: !4759)
!4808 = distinct !DISubprogram(name: "ferror_unlocked", scope: !4809, file: !4809, line: 132, type: !4757, isLocal: false, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !866, variables: !4810)
!4809 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4810 = !{!4807}
!4811 = !DILocation(line: 132, column: 1, scope: !4808, inlinedAt: !4812)
!4812 = distinct !DILocation(line: 59, column: 27, scope: !4755)
!4813 = !DILocation(line: 134, column: 10, scope: !4808, inlinedAt: !4812)
!4814 = !{!4815, !1003, i64 0}
!4815 = !{!"_IO_FILE", !1003, i64 0, !893, i64 8, !893, i64 16, !893, i64 24, !893, i64 32, !893, i64 40, !893, i64 48, !893, i64 56, !893, i64 64, !893, i64 72, !893, i64 80, !893, i64 88, !893, i64 96, !893, i64 104, !1003, i64 112, !1003, i64 116, !1069, i64 120, !1095, i64 128, !894, i64 130, !894, i64 131, !893, i64 136, !1069, i64 144, !893, i64 152, !893, i64 160, !893, i64 168, !893, i64 176, !1069, i64 184, !1003, i64 192, !894, i64 196}
!4816 = !DILocation(line: 59, column: 43, scope: !4755)
!4817 = !DILocation(line: 60, column: 29, scope: !4755)
!4818 = !DILocation(line: 60, column: 45, scope: !4755)
!4819 = !DILocation(line: 70, column: 17, scope: !4820)
!4820 = distinct !DILexicalBlock(scope: !4755, file: !4756, line: 70, column: 7)
!4821 = !DILocation(line: 70, column: 33, scope: !4822)
!4822 = !DILexicalBlockFile(scope: !4820, file: !4756, discriminator: 1)
!4823 = !DILocation(line: 70, column: 53, scope: !4824)
!4824 = !DILexicalBlockFile(scope: !4820, file: !4756, discriminator: 3)
!4825 = !DILocation(line: 70, column: 7, scope: !4826)
!4826 = !DILexicalBlockFile(scope: !4755, file: !4756, discriminator: 3)
!4827 = !DILocation(line: 72, column: 11, scope: !4828)
!4828 = distinct !DILexicalBlock(scope: !4820, file: !4756, line: 71, column: 5)
!4829 = !DILocation(line: 73, column: 9, scope: !4830)
!4830 = distinct !DILexicalBlock(scope: !4828, file: !4756, line: 72, column: 11)
!4831 = !DILocation(line: 73, column: 15, scope: !4830)
!4832 = !DILocation(line: 78, column: 1, scope: !4755)
!4833 = distinct !DISubprogram(name: "locale_charset", scope: !812, file: !812, line: 393, type: !1894, isLocal: false, isDefinition: true, scopeLine: 394, flags: DIFlagPrototyped, isOptimized: true, unit: !468, variables: !4834)
!4834 = !{!4835, !4836, !4837, !4842}
!4835 = !DILocalVariable(name: "codeset", scope: !4833, file: !812, line: 395, type: !36)
!4836 = !DILocalVariable(name: "aliases", scope: !4833, file: !812, line: 396, type: !36)
!4837 = !DILocalVariable(name: "__s1_len", scope: !4838, file: !812, line: 592, type: !28)
!4838 = distinct !DILexicalBlock(scope: !4839, file: !812, line: 592, column: 9)
!4839 = distinct !DILexicalBlock(scope: !4840, file: !812, line: 592, column: 9)
!4840 = distinct !DILexicalBlock(scope: !4841, file: !812, line: 589, column: 3)
!4841 = distinct !DILexicalBlock(scope: !4833, file: !812, line: 589, column: 3)
!4842 = !DILocalVariable(name: "__s2_len", scope: !4838, file: !812, line: 592, type: !28)
!4843 = !DILocalVariable(name: "buf1", scope: !4844, file: !812, line: 196, type: !4911)
!4844 = distinct !DILexicalBlock(scope: !4845, file: !812, line: 194, column: 21)
!4845 = distinct !DILexicalBlock(scope: !4846, file: !812, line: 193, column: 19)
!4846 = distinct !DILexicalBlock(scope: !4847, file: !812, line: 193, column: 19)
!4847 = distinct !DILexicalBlock(scope: !4848, file: !812, line: 188, column: 17)
!4848 = distinct !DILexicalBlock(scope: !4849, file: !812, line: 181, column: 19)
!4849 = distinct !DILexicalBlock(scope: !4850, file: !812, line: 177, column: 13)
!4850 = distinct !DILexicalBlock(scope: !4851, file: !812, line: 173, column: 15)
!4851 = distinct !DILexicalBlock(scope: !4852, file: !812, line: 161, column: 9)
!4852 = distinct !DILexicalBlock(scope: !4853, file: !812, line: 157, column: 11)
!4853 = distinct !DILexicalBlock(scope: !4854, file: !812, line: 130, column: 5)
!4854 = distinct !DILexicalBlock(scope: !4855, file: !812, line: 129, column: 7)
!4855 = distinct !DISubprogram(name: "get_charset_aliases", scope: !812, file: !812, line: 124, type: !1894, isLocal: true, isDefinition: true, scopeLine: 125, flags: DIFlagPrototyped, isOptimized: true, unit: !468, variables: !4856)
!4856 = !{!4857, !4858, !4859, !4860, !4861, !4863, !4864, !4865, !4866, !4907, !4908, !4909, !4843, !4910, !4914, !4915, !4916}
!4857 = !DILocalVariable(name: "cp", scope: !4855, file: !812, line: 126, type: !36)
!4858 = !DILocalVariable(name: "dir", scope: !4853, file: !812, line: 132, type: !36)
!4859 = !DILocalVariable(name: "base", scope: !4853, file: !812, line: 133, type: !36)
!4860 = !DILocalVariable(name: "file_name", scope: !4853, file: !812, line: 134, type: !25)
!4861 = !DILocalVariable(name: "dir_len", scope: !4862, file: !812, line: 144, type: !28)
!4862 = distinct !DILexicalBlock(scope: !4853, file: !812, line: 143, column: 7)
!4863 = !DILocalVariable(name: "base_len", scope: !4862, file: !812, line: 145, type: !28)
!4864 = !DILocalVariable(name: "add_slash", scope: !4862, file: !812, line: 146, type: !80)
!4865 = !DILocalVariable(name: "fd", scope: !4851, file: !812, line: 162, type: !80)
!4866 = !DILocalVariable(name: "fp", scope: !4849, file: !812, line: 178, type: !4867)
!4867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4868, size: 64)
!4868 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !4045, line: 49, baseType: !4869)
!4869 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !4047, line: 241, size: 1728, elements: !4870)
!4870 = !{!4871, !4872, !4873, !4874, !4875, !4876, !4877, !4878, !4879, !4880, !4881, !4882, !4883, !4891, !4892, !4893, !4894, !4895, !4896, !4897, !4898, !4899, !4900, !4901, !4902, !4903, !4904, !4905, !4906}
!4871 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4869, file: !4047, line: 242, baseType: !80, size: 32)
!4872 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4869, file: !4047, line: 247, baseType: !25, size: 64, offset: 64)
!4873 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4869, file: !4047, line: 248, baseType: !25, size: 64, offset: 128)
!4874 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4869, file: !4047, line: 249, baseType: !25, size: 64, offset: 192)
!4875 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4869, file: !4047, line: 250, baseType: !25, size: 64, offset: 256)
!4876 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4869, file: !4047, line: 251, baseType: !25, size: 64, offset: 320)
!4877 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4869, file: !4047, line: 252, baseType: !25, size: 64, offset: 384)
!4878 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4869, file: !4047, line: 253, baseType: !25, size: 64, offset: 448)
!4879 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4869, file: !4047, line: 254, baseType: !25, size: 64, offset: 512)
!4880 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4869, file: !4047, line: 256, baseType: !25, size: 64, offset: 576)
!4881 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4869, file: !4047, line: 257, baseType: !25, size: 64, offset: 640)
!4882 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4869, file: !4047, line: 258, baseType: !25, size: 64, offset: 704)
!4883 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4869, file: !4047, line: 260, baseType: !4884, size: 64, offset: 768)
!4884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4885, size: 64)
!4885 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !4047, line: 156, size: 192, elements: !4886)
!4886 = !{!4887, !4888, !4890}
!4887 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4885, file: !4047, line: 157, baseType: !4884, size: 64)
!4888 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4885, file: !4047, line: 158, baseType: !4889, size: 64, offset: 64)
!4889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4869, size: 64)
!4890 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4885, file: !4047, line: 162, baseType: !80, size: 32, offset: 128)
!4891 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4869, file: !4047, line: 262, baseType: !4889, size: 64, offset: 832)
!4892 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4869, file: !4047, line: 264, baseType: !80, size: 32, offset: 896)
!4893 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4869, file: !4047, line: 268, baseType: !80, size: 32, offset: 928)
!4894 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4869, file: !4047, line: 270, baseType: !211, size: 64, offset: 960)
!4895 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4869, file: !4047, line: 274, baseType: !364, size: 16, offset: 1024)
!4896 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4869, file: !4047, line: 275, baseType: !4075, size: 8, offset: 1040)
!4897 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4869, file: !4047, line: 276, baseType: !4077, size: 8, offset: 1048)
!4898 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4869, file: !4047, line: 280, baseType: !4081, size: 64, offset: 1088)
!4899 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4869, file: !4047, line: 289, baseType: !4084, size: 64, offset: 1152)
!4900 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4869, file: !4047, line: 297, baseType: !27, size: 64, offset: 1216)
!4901 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4869, file: !4047, line: 298, baseType: !27, size: 64, offset: 1280)
!4902 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4869, file: !4047, line: 299, baseType: !27, size: 64, offset: 1344)
!4903 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4869, file: !4047, line: 300, baseType: !27, size: 64, offset: 1408)
!4904 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4869, file: !4047, line: 302, baseType: !28, size: 64, offset: 1472)
!4905 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4869, file: !4047, line: 303, baseType: !80, size: 32, offset: 1536)
!4906 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4869, file: !4047, line: 305, baseType: !185, size: 160, offset: 1568)
!4907 = !DILocalVariable(name: "res_ptr", scope: !4847, file: !812, line: 190, type: !25)
!4908 = !DILocalVariable(name: "res_size", scope: !4847, file: !812, line: 191, type: !28)
!4909 = !DILocalVariable(name: "c", scope: !4844, file: !812, line: 195, type: !80)
!4910 = !DILocalVariable(name: "buf2", scope: !4844, file: !812, line: 197, type: !4911)
!4911 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 408, elements: !4912)
!4912 = !{!4913}
!4913 = !DISubrange(count: 51)
!4914 = !DILocalVariable(name: "l1", scope: !4844, file: !812, line: 198, type: !28)
!4915 = !DILocalVariable(name: "l2", scope: !4844, file: !812, line: 198, type: !28)
!4916 = !DILocalVariable(name: "old_res_ptr", scope: !4844, file: !812, line: 199, type: !25)
!4917 = !DILocation(line: 196, column: 28, scope: !4844, inlinedAt: !4918)
!4918 = distinct !DILocation(line: 589, column: 18, scope: !4841)
!4919 = !DILocation(line: 197, column: 28, scope: !4844, inlinedAt: !4918)
!4920 = !DILocation(line: 403, column: 13, scope: !4833)
!4921 = !DILocation(line: 395, column: 15, scope: !4833)
!4922 = !DILocation(line: 584, column: 15, scope: !4923)
!4923 = distinct !DILexicalBlock(scope: !4833, file: !812, line: 584, column: 7)
!4924 = !DILocation(line: 584, column: 7, scope: !4833)
!4925 = !DILocation(line: 128, column: 8, scope: !4855, inlinedAt: !4918)
!4926 = !DILocation(line: 126, column: 15, scope: !4855, inlinedAt: !4918)
!4927 = !DILocation(line: 129, column: 10, scope: !4854, inlinedAt: !4918)
!4928 = !DILocation(line: 129, column: 7, scope: !4855, inlinedAt: !4918)
!4929 = !DILocation(line: 138, column: 13, scope: !4853, inlinedAt: !4918)
!4930 = !DILocation(line: 132, column: 19, scope: !4853, inlinedAt: !4918)
!4931 = !DILocation(line: 139, column: 15, scope: !4932, inlinedAt: !4918)
!4932 = distinct !DILexicalBlock(scope: !4853, file: !812, line: 139, column: 11)
!4933 = !DILocation(line: 139, column: 23, scope: !4932, inlinedAt: !4918)
!4934 = !DILocation(line: 139, column: 26, scope: !4935, inlinedAt: !4918)
!4935 = !DILexicalBlockFile(scope: !4932, file: !812, discriminator: 1)
!4936 = !DILocation(line: 139, column: 33, scope: !4935, inlinedAt: !4918)
!4937 = !DILocation(line: 139, column: 11, scope: !4938, inlinedAt: !4918)
!4938 = !DILexicalBlockFile(scope: !4853, file: !812, discriminator: 1)
!4939 = !DILocation(line: 140, column: 9, scope: !4932, inlinedAt: !4918)
!4940 = !DILocation(line: 144, column: 26, scope: !4862, inlinedAt: !4918)
!4941 = !DILocation(line: 144, column: 16, scope: !4862, inlinedAt: !4918)
!4942 = !DILocation(line: 145, column: 16, scope: !4862, inlinedAt: !4918)
!4943 = !DILocation(line: 146, column: 34, scope: !4862, inlinedAt: !4918)
!4944 = !DILocation(line: 146, column: 38, scope: !4862, inlinedAt: !4918)
!4945 = !DILocation(line: 146, column: 42, scope: !4946, inlinedAt: !4918)
!4946 = !DILexicalBlockFile(scope: !4862, file: !812, discriminator: 1)
!4947 = !DILocation(line: 146, column: 41, scope: !4946, inlinedAt: !4918)
!4948 = !DILocation(line: 147, column: 48, scope: !4862, inlinedAt: !4918)
!4949 = !DILocation(line: 147, column: 46, scope: !4862, inlinedAt: !4918)
!4950 = !DILocation(line: 147, column: 69, scope: !4862, inlinedAt: !4918)
!4951 = !DILocation(line: 147, column: 30, scope: !4862, inlinedAt: !4918)
!4952 = !DILocation(line: 134, column: 13, scope: !4853, inlinedAt: !4918)
!4953 = !DILocation(line: 148, column: 13, scope: !4862, inlinedAt: !4918)
!4954 = !DILocation(line: 150, column: 13, scope: !4955, inlinedAt: !4918)
!4955 = distinct !DILexicalBlock(scope: !4956, file: !812, line: 149, column: 11)
!4956 = distinct !DILexicalBlock(scope: !4862, file: !812, line: 148, column: 13)
!4957 = !DILocation(line: 151, column: 17, scope: !4955, inlinedAt: !4918)
!4958 = !DILocation(line: 152, column: 34, scope: !4959, inlinedAt: !4918)
!4959 = distinct !DILexicalBlock(scope: !4955, file: !812, line: 151, column: 17)
!4960 = !DILocation(line: 153, column: 41, scope: !4955, inlinedAt: !4918)
!4961 = !DILocation(line: 153, column: 13, scope: !4955, inlinedAt: !4918)
!4962 = !DILocation(line: 157, column: 11, scope: !4853, inlinedAt: !4918)
!4963 = !DILocation(line: 171, column: 16, scope: !4851, inlinedAt: !4918)
!4964 = !DILocation(line: 162, column: 15, scope: !4851, inlinedAt: !4918)
!4965 = !DILocation(line: 173, column: 18, scope: !4850, inlinedAt: !4918)
!4966 = !DILocation(line: 173, column: 15, scope: !4851, inlinedAt: !4918)
!4967 = !DILocation(line: 180, column: 20, scope: !4849, inlinedAt: !4918)
!4968 = !DILocation(line: 178, column: 21, scope: !4849, inlinedAt: !4918)
!4969 = !DILocation(line: 181, column: 22, scope: !4848, inlinedAt: !4918)
!4970 = !DILocation(line: 181, column: 19, scope: !4849, inlinedAt: !4918)
!4971 = !DILocation(line: 190, column: 25, scope: !4847, inlinedAt: !4918)
!4972 = !DILocation(line: 184, column: 19, scope: !4973, inlinedAt: !4918)
!4973 = distinct !DILexicalBlock(scope: !4848, file: !812, line: 182, column: 17)
!4974 = !DILocation(line: 186, column: 17, scope: !4973, inlinedAt: !4918)
!4975 = !DILocation(line: 191, column: 26, scope: !4847, inlinedAt: !4918)
!4976 = !DILocation(line: 196, column: 23, scope: !4844, inlinedAt: !4918)
!4977 = !DILocation(line: 197, column: 23, scope: !4844, inlinedAt: !4918)
!4978 = !DILocalVariable(name: "__fp", arg: 1, scope: !4979, file: !4809, line: 63, type: !4867)
!4979 = distinct !DISubprogram(name: "getc_unlocked", scope: !4809, file: !4809, line: 63, type: !4980, isLocal: false, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: true, unit: !468, variables: !4982)
!4980 = !DISubroutineType(types: !4981)
!4981 = !{!80, !4867}
!4982 = !{!4978}
!4983 = !DILocation(line: 63, column: 22, scope: !4979, inlinedAt: !4984)
!4984 = distinct !DILocation(line: 201, column: 27, scope: !4844, inlinedAt: !4918)
!4985 = !DILocation(line: 65, column: 10, scope: !4979, inlinedAt: !4984)
!4986 = !{!4815, !893, i64 8}
!4987 = !{!4815, !893, i64 16}
!4988 = !{!"branch_weights", i32 2000, i32 1}
!4989 = !DILocation(line: 65, column: 10, scope: !4990, inlinedAt: !4984)
!4990 = !DILexicalBlockFile(scope: !4979, file: !4809, discriminator: 1)
!4991 = !DILocation(line: 65, column: 10, scope: !4992, inlinedAt: !4984)
!4992 = !DILexicalBlockFile(scope: !4979, file: !4809, discriminator: 2)
!4993 = !DILocation(line: 65, column: 10, scope: !4994, inlinedAt: !4984)
!4994 = !DILexicalBlockFile(scope: !4979, file: !4809, discriminator: 3)
!4995 = !DILocation(line: 195, column: 27, scope: !4844, inlinedAt: !4918)
!4996 = !DILocation(line: 202, column: 27, scope: !4844, inlinedAt: !4918)
!4997 = !DILocation(line: 63, column: 22, scope: !4979, inlinedAt: !4998)
!4998 = distinct !DILocation(line: 210, column: 33, scope: !4999, inlinedAt: !4918)
!4999 = distinct !DILexicalBlock(scope: !5000, file: !812, line: 207, column: 25)
!5000 = distinct !DILexicalBlock(scope: !4844, file: !812, line: 206, column: 27)
!5001 = !DILocation(line: 65, column: 10, scope: !4979, inlinedAt: !4998)
!5002 = !DILocation(line: 65, column: 10, scope: !4990, inlinedAt: !4998)
!5003 = !DILocation(line: 65, column: 10, scope: !4992, inlinedAt: !4998)
!5004 = !DILocation(line: 65, column: 10, scope: !4994, inlinedAt: !4998)
!5005 = !DILocation(line: 210, column: 29, scope: !5006, inlinedAt: !4918)
!5006 = !DILexicalBlockFile(scope: !4999, file: !812, discriminator: 1)
!5007 = distinct !{!5007, !5008, !5009}
!5008 = !DILocation(line: 193, column: 19, scope: !4846)
!5009 = !DILocation(line: 241, column: 21, scope: !4846)
!5010 = !DILocation(line: 216, column: 23, scope: !4844, inlinedAt: !4918)
!5011 = !DILocation(line: 217, column: 27, scope: !5012, inlinedAt: !4918)
!5012 = distinct !DILexicalBlock(scope: !4844, file: !812, line: 217, column: 27)
!5013 = !DILocation(line: 217, column: 64, scope: !5012, inlinedAt: !4918)
!5014 = !DILocation(line: 217, column: 27, scope: !4844, inlinedAt: !4918)
!5015 = !DILocation(line: 219, column: 28, scope: !4844, inlinedAt: !4918)
!5016 = !DILocation(line: 198, column: 30, scope: !4844, inlinedAt: !4918)
!5017 = !DILocation(line: 220, column: 28, scope: !4844, inlinedAt: !4918)
!5018 = !DILocation(line: 198, column: 34, scope: !4844, inlinedAt: !4918)
!5019 = !DILocation(line: 199, column: 29, scope: !4844, inlinedAt: !4918)
!5020 = !DILocation(line: 222, column: 36, scope: !5021, inlinedAt: !4918)
!5021 = distinct !DILexicalBlock(scope: !4844, file: !812, line: 222, column: 27)
!5022 = !DILocation(line: 222, column: 27, scope: !4844, inlinedAt: !4918)
!5023 = !DILocation(line: 225, column: 63, scope: !5024, inlinedAt: !4918)
!5024 = distinct !DILexicalBlock(scope: !5021, file: !812, line: 223, column: 25)
!5025 = !DILocation(line: 225, column: 46, scope: !5024, inlinedAt: !4918)
!5026 = !DILocation(line: 226, column: 25, scope: !5024, inlinedAt: !4918)
!5027 = !DILocation(line: 229, column: 36, scope: !5028, inlinedAt: !4918)
!5028 = distinct !DILexicalBlock(scope: !5021, file: !812, line: 228, column: 25)
!5029 = !DILocation(line: 230, column: 73, scope: !5028, inlinedAt: !4918)
!5030 = !DILocation(line: 230, column: 46, scope: !5028, inlinedAt: !4918)
!5031 = !DILocation(line: 232, column: 35, scope: !5032, inlinedAt: !4918)
!5032 = distinct !DILexicalBlock(scope: !4844, file: !812, line: 232, column: 27)
!5033 = !DILocation(line: 232, column: 27, scope: !4844, inlinedAt: !4918)
!5034 = !DILocation(line: 236, column: 27, scope: !5035, inlinedAt: !4918)
!5035 = distinct !DILexicalBlock(scope: !5032, file: !812, line: 233, column: 25)
!5036 = !DILocation(line: 237, column: 27, scope: !5035, inlinedAt: !4918)
!5037 = !DILocation(line: 239, column: 39, scope: !4844, inlinedAt: !4918)
!5038 = !DILocation(line: 239, column: 50, scope: !4844, inlinedAt: !4918)
!5039 = !DILocation(line: 239, column: 61, scope: !4844, inlinedAt: !4918)
!5040 = !DILocalVariable(name: "__dest", arg: 1, scope: !5041, file: !1583, line: 107, type: !1200)
!5041 = distinct !DISubprogram(name: "strcpy", scope: !1583, file: !1583, line: 107, type: !1584, isLocal: false, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: true, unit: !468, variables: !5042)
!5042 = !{!5040, !5043}
!5043 = !DILocalVariable(name: "__src", arg: 2, scope: !5041, file: !1583, line: 107, type: !1201)
!5044 = !DILocation(line: 107, column: 1, scope: !5041, inlinedAt: !5045)
!5045 = distinct !DILocation(line: 239, column: 23, scope: !4844, inlinedAt: !4918)
!5046 = !DILocation(line: 109, column: 49, scope: !5041, inlinedAt: !5045)
!5047 = !DILocation(line: 109, column: 10, scope: !5041, inlinedAt: !5045)
!5048 = !DILocation(line: 107, column: 1, scope: !5041, inlinedAt: !5049)
!5049 = distinct !DILocation(line: 240, column: 23, scope: !4844, inlinedAt: !4918)
!5050 = !DILocation(line: 109, column: 49, scope: !5041, inlinedAt: !5049)
!5051 = !DILocation(line: 109, column: 10, scope: !5041, inlinedAt: !5049)
!5052 = !DILocation(line: 241, column: 21, scope: !4845, inlinedAt: !4918)
!5053 = !DILocation(line: 242, column: 19, scope: !4847, inlinedAt: !4918)
!5054 = !DILocation(line: 243, column: 32, scope: !5055, inlinedAt: !4918)
!5055 = distinct !DILexicalBlock(scope: !4847, file: !812, line: 243, column: 23)
!5056 = !DILocation(line: 243, column: 23, scope: !4847, inlinedAt: !4918)
!5057 = !DILocation(line: 247, column: 33, scope: !5058, inlinedAt: !4918)
!5058 = distinct !DILexicalBlock(scope: !5055, file: !812, line: 246, column: 21)
!5059 = !DILocation(line: 247, column: 45, scope: !5058, inlinedAt: !4918)
!5060 = !DILocation(line: 253, column: 11, scope: !4851, inlinedAt: !4918)
!5061 = !DILocation(line: 377, column: 23, scope: !4853, inlinedAt: !4918)
!5062 = !DILocation(line: 378, column: 5, scope: !4853, inlinedAt: !4918)
!5063 = !DILocation(line: 396, column: 15, scope: !4833)
!5064 = !DILocation(line: 590, column: 8, scope: !4840)
!5065 = !DILocation(line: 590, column: 17, scope: !4840)
!5066 = !DILocation(line: 589, column: 3, scope: !5067)
!5067 = !DILexicalBlockFile(scope: !4841, file: !812, discriminator: 1)
!5068 = !DILocation(line: 592, column: 9, scope: !4838)
!5069 = !DILocation(line: 592, column: 35, scope: !4839)
!5070 = !DILocation(line: 593, column: 9, scope: !4839)
!5071 = !DILocation(line: 593, column: 24, scope: !5072)
!5072 = !DILexicalBlockFile(scope: !4839, file: !812, discriminator: 1)
!5073 = !DILocation(line: 593, column: 31, scope: !5072)
!5074 = !DILocation(line: 593, column: 34, scope: !5075)
!5075 = !DILexicalBlockFile(scope: !4839, file: !812, discriminator: 2)
!5076 = !DILocation(line: 593, column: 45, scope: !5075)
!5077 = !DILocation(line: 592, column: 9, scope: !5078)
!5078 = !DILexicalBlockFile(scope: !4840, file: !812, discriminator: 1)
!5079 = !DILocation(line: 595, column: 29, scope: !5080)
!5080 = distinct !DILexicalBlock(scope: !4839, file: !812, line: 594, column: 7)
!5081 = !DILocation(line: 595, column: 27, scope: !5080)
!5082 = !DILocation(line: 595, column: 46, scope: !5080)
!5083 = !DILocation(line: 596, column: 9, scope: !5080)
!5084 = !DILocation(line: 591, column: 19, scope: !4840)
!5085 = !DILocation(line: 591, column: 36, scope: !4840)
!5086 = !DILocation(line: 591, column: 16, scope: !4840)
!5087 = !DILocation(line: 591, column: 52, scope: !5078)
!5088 = !DILocation(line: 591, column: 69, scope: !4840)
!5089 = !DILocation(line: 591, column: 49, scope: !4840)
!5090 = distinct !{!5090, !5091, !5092}
!5091 = !DILocation(line: 589, column: 3, scope: !4841)
!5092 = !DILocation(line: 597, column: 7, scope: !4841)
!5093 = !DILocation(line: 602, column: 7, scope: !5094)
!5094 = distinct !DILexicalBlock(scope: !4833, file: !812, line: 602, column: 7)
!5095 = !DILocation(line: 602, column: 18, scope: !5094)
!5096 = !DILocation(line: 602, column: 7, scope: !4833)
!5097 = !DILocation(line: 612, column: 3, scope: !4833)
!5098 = distinct !DISubprogram(name: "rpl_fclose", scope: !5099, file: !5099, line: 56, type: !5100, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !868, variables: !5142)
!5099 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!5100 = !DISubroutineType(types: !5101)
!5101 = !{!80, !5102}
!5102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5103, size: 64)
!5103 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !4045, line: 49, baseType: !5104)
!5104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !4047, line: 241, size: 1728, elements: !5105)
!5105 = !{!5106, !5107, !5108, !5109, !5110, !5111, !5112, !5113, !5114, !5115, !5116, !5117, !5118, !5126, !5127, !5128, !5129, !5130, !5131, !5132, !5133, !5134, !5135, !5136, !5137, !5138, !5139, !5140, !5141}
!5106 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5104, file: !4047, line: 242, baseType: !80, size: 32)
!5107 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !5104, file: !4047, line: 247, baseType: !25, size: 64, offset: 64)
!5108 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !5104, file: !4047, line: 248, baseType: !25, size: 64, offset: 128)
!5109 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !5104, file: !4047, line: 249, baseType: !25, size: 64, offset: 192)
!5110 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !5104, file: !4047, line: 250, baseType: !25, size: 64, offset: 256)
!5111 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !5104, file: !4047, line: 251, baseType: !25, size: 64, offset: 320)
!5112 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !5104, file: !4047, line: 252, baseType: !25, size: 64, offset: 384)
!5113 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !5104, file: !4047, line: 253, baseType: !25, size: 64, offset: 448)
!5114 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !5104, file: !4047, line: 254, baseType: !25, size: 64, offset: 512)
!5115 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !5104, file: !4047, line: 256, baseType: !25, size: 64, offset: 576)
!5116 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !5104, file: !4047, line: 257, baseType: !25, size: 64, offset: 640)
!5117 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !5104, file: !4047, line: 258, baseType: !25, size: 64, offset: 704)
!5118 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !5104, file: !4047, line: 260, baseType: !5119, size: 64, offset: 768)
!5119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5120, size: 64)
!5120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !4047, line: 156, size: 192, elements: !5121)
!5121 = !{!5122, !5123, !5125}
!5122 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !5120, file: !4047, line: 157, baseType: !5119, size: 64)
!5123 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !5120, file: !4047, line: 158, baseType: !5124, size: 64, offset: 64)
!5124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5104, size: 64)
!5125 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !5120, file: !4047, line: 162, baseType: !80, size: 32, offset: 128)
!5126 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !5104, file: !4047, line: 262, baseType: !5124, size: 64, offset: 832)
!5127 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !5104, file: !4047, line: 264, baseType: !80, size: 32, offset: 896)
!5128 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !5104, file: !4047, line: 268, baseType: !80, size: 32, offset: 928)
!5129 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !5104, file: !4047, line: 270, baseType: !211, size: 64, offset: 960)
!5130 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !5104, file: !4047, line: 274, baseType: !364, size: 16, offset: 1024)
!5131 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !5104, file: !4047, line: 275, baseType: !4075, size: 8, offset: 1040)
!5132 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !5104, file: !4047, line: 276, baseType: !4077, size: 8, offset: 1048)
!5133 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !5104, file: !4047, line: 280, baseType: !4081, size: 64, offset: 1088)
!5134 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !5104, file: !4047, line: 289, baseType: !4084, size: 64, offset: 1152)
!5135 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !5104, file: !4047, line: 297, baseType: !27, size: 64, offset: 1216)
!5136 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !5104, file: !4047, line: 298, baseType: !27, size: 64, offset: 1280)
!5137 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !5104, file: !4047, line: 299, baseType: !27, size: 64, offset: 1344)
!5138 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !5104, file: !4047, line: 300, baseType: !27, size: 64, offset: 1408)
!5139 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !5104, file: !4047, line: 302, baseType: !28, size: 64, offset: 1472)
!5140 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !5104, file: !4047, line: 303, baseType: !80, size: 32, offset: 1536)
!5141 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !5104, file: !4047, line: 305, baseType: !185, size: 160, offset: 1568)
!5142 = !{!5143, !5144, !5145, !5146}
!5143 = !DILocalVariable(name: "fp", arg: 1, scope: !5098, file: !5099, line: 56, type: !5102)
!5144 = !DILocalVariable(name: "saved_errno", scope: !5098, file: !5099, line: 58, type: !80)
!5145 = !DILocalVariable(name: "fd", scope: !5098, file: !5099, line: 59, type: !80)
!5146 = !DILocalVariable(name: "result", scope: !5098, file: !5099, line: 60, type: !80)
!5147 = !DILocation(line: 56, column: 19, scope: !5098)
!5148 = !DILocation(line: 58, column: 7, scope: !5098)
!5149 = !DILocation(line: 60, column: 7, scope: !5098)
!5150 = !DILocation(line: 63, column: 8, scope: !5098)
!5151 = !DILocation(line: 59, column: 7, scope: !5098)
!5152 = !DILocation(line: 64, column: 10, scope: !5153)
!5153 = distinct !DILexicalBlock(scope: !5098, file: !5099, line: 64, column: 7)
!5154 = !DILocation(line: 64, column: 7, scope: !5098)
!5155 = !DILocation(line: 65, column: 12, scope: !5153)
!5156 = !DILocation(line: 65, column: 5, scope: !5153)
!5157 = !DILocation(line: 70, column: 9, scope: !5158)
!5158 = distinct !DILexicalBlock(scope: !5098, file: !5099, line: 70, column: 7)
!5159 = !DILocation(line: 70, column: 23, scope: !5158)
!5160 = !DILocation(line: 70, column: 33, scope: !5161)
!5161 = !DILexicalBlockFile(scope: !5158, file: !5099, discriminator: 1)
!5162 = !DILocation(line: 70, column: 26, scope: !5163)
!5163 = !DILexicalBlockFile(scope: !5158, file: !5099, discriminator: 3)
!5164 = !DILocation(line: 70, column: 59, scope: !5161)
!5165 = !DILocation(line: 71, column: 7, scope: !5158)
!5166 = !DILocation(line: 71, column: 10, scope: !5161)
!5167 = !DILocation(line: 70, column: 7, scope: !5168)
!5168 = !DILexicalBlockFile(scope: !5098, file: !5099, discriminator: 2)
!5169 = !DILocation(line: 98, column: 12, scope: !5098)
!5170 = !DILocation(line: 103, column: 7, scope: !5098)
!5171 = !DILocation(line: 72, column: 19, scope: !5158)
!5172 = !DILocation(line: 103, column: 19, scope: !5173)
!5173 = distinct !DILexicalBlock(scope: !5098, file: !5099, line: 103, column: 7)
!5174 = !DILocation(line: 105, column: 13, scope: !5175)
!5175 = distinct !DILexicalBlock(scope: !5173, file: !5099, line: 104, column: 5)
!5176 = !DILocation(line: 107, column: 5, scope: !5175)
!5177 = !DILocation(line: 110, column: 1, scope: !5098)
!5178 = distinct !DISubprogram(name: "rpl_fflush", scope: !5179, file: !5179, line: 127, type: !5180, isLocal: false, isDefinition: true, scopeLine: 128, flags: DIFlagPrototyped, isOptimized: true, unit: !870, variables: !5222)
!5179 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!5180 = !DISubroutineType(types: !5181)
!5181 = !{!80, !5182}
!5182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5183, size: 64)
!5183 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !4045, line: 49, baseType: !5184)
!5184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !4047, line: 241, size: 1728, elements: !5185)
!5185 = !{!5186, !5187, !5188, !5189, !5190, !5191, !5192, !5193, !5194, !5195, !5196, !5197, !5198, !5206, !5207, !5208, !5209, !5210, !5211, !5212, !5213, !5214, !5215, !5216, !5217, !5218, !5219, !5220, !5221}
!5186 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5184, file: !4047, line: 242, baseType: !80, size: 32)
!5187 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !5184, file: !4047, line: 247, baseType: !25, size: 64, offset: 64)
!5188 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !5184, file: !4047, line: 248, baseType: !25, size: 64, offset: 128)
!5189 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !5184, file: !4047, line: 249, baseType: !25, size: 64, offset: 192)
!5190 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !5184, file: !4047, line: 250, baseType: !25, size: 64, offset: 256)
!5191 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !5184, file: !4047, line: 251, baseType: !25, size: 64, offset: 320)
!5192 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !5184, file: !4047, line: 252, baseType: !25, size: 64, offset: 384)
!5193 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !5184, file: !4047, line: 253, baseType: !25, size: 64, offset: 448)
!5194 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !5184, file: !4047, line: 254, baseType: !25, size: 64, offset: 512)
!5195 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !5184, file: !4047, line: 256, baseType: !25, size: 64, offset: 576)
!5196 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !5184, file: !4047, line: 257, baseType: !25, size: 64, offset: 640)
!5197 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !5184, file: !4047, line: 258, baseType: !25, size: 64, offset: 704)
!5198 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !5184, file: !4047, line: 260, baseType: !5199, size: 64, offset: 768)
!5199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5200, size: 64)
!5200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !4047, line: 156, size: 192, elements: !5201)
!5201 = !{!5202, !5203, !5205}
!5202 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !5200, file: !4047, line: 157, baseType: !5199, size: 64)
!5203 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !5200, file: !4047, line: 158, baseType: !5204, size: 64, offset: 64)
!5204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5184, size: 64)
!5205 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !5200, file: !4047, line: 162, baseType: !80, size: 32, offset: 128)
!5206 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !5184, file: !4047, line: 262, baseType: !5204, size: 64, offset: 832)
!5207 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !5184, file: !4047, line: 264, baseType: !80, size: 32, offset: 896)
!5208 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !5184, file: !4047, line: 268, baseType: !80, size: 32, offset: 928)
!5209 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !5184, file: !4047, line: 270, baseType: !211, size: 64, offset: 960)
!5210 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !5184, file: !4047, line: 274, baseType: !364, size: 16, offset: 1024)
!5211 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !5184, file: !4047, line: 275, baseType: !4075, size: 8, offset: 1040)
!5212 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !5184, file: !4047, line: 276, baseType: !4077, size: 8, offset: 1048)
!5213 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !5184, file: !4047, line: 280, baseType: !4081, size: 64, offset: 1088)
!5214 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !5184, file: !4047, line: 289, baseType: !4084, size: 64, offset: 1152)
!5215 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !5184, file: !4047, line: 297, baseType: !27, size: 64, offset: 1216)
!5216 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !5184, file: !4047, line: 298, baseType: !27, size: 64, offset: 1280)
!5217 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !5184, file: !4047, line: 299, baseType: !27, size: 64, offset: 1344)
!5218 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !5184, file: !4047, line: 300, baseType: !27, size: 64, offset: 1408)
!5219 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !5184, file: !4047, line: 302, baseType: !28, size: 64, offset: 1472)
!5220 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !5184, file: !4047, line: 303, baseType: !80, size: 32, offset: 1536)
!5221 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !5184, file: !4047, line: 305, baseType: !185, size: 160, offset: 1568)
!5222 = !{!5223}
!5223 = !DILocalVariable(name: "stream", arg: 1, scope: !5178, file: !5179, line: 127, type: !5182)
!5224 = !DILocation(line: 127, column: 19, scope: !5178)
!5225 = !DILocation(line: 148, column: 14, scope: !5226)
!5226 = distinct !DILexicalBlock(scope: !5178, file: !5179, line: 148, column: 7)
!5227 = !DILocation(line: 148, column: 22, scope: !5226)
!5228 = !DILocation(line: 148, column: 27, scope: !5229)
!5229 = !DILexicalBlockFile(scope: !5226, file: !5179, discriminator: 1)
!5230 = !DILocation(line: 148, column: 7, scope: !5231)
!5231 = !DILexicalBlockFile(scope: !5178, file: !5179, discriminator: 1)
!5232 = !DILocation(line: 149, column: 12, scope: !5226)
!5233 = !DILocation(line: 149, column: 5, scope: !5226)
!5234 = !DILocalVariable(name: "fp", arg: 1, scope: !5235, file: !5179, line: 40, type: !5182)
!5235 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !5179, file: !5179, line: 40, type: !5236, isLocal: true, isDefinition: true, scopeLine: 41, flags: DIFlagPrototyped, isOptimized: true, unit: !870, variables: !5238)
!5236 = !DISubroutineType(types: !5237)
!5237 = !{null, !5182}
!5238 = !{!5234}
!5239 = !DILocation(line: 40, column: 48, scope: !5235, inlinedAt: !5240)
!5240 = distinct !DILocation(line: 153, column: 3, scope: !5178)
!5241 = !DILocation(line: 42, column: 11, scope: !5242, inlinedAt: !5240)
!5242 = distinct !DILexicalBlock(scope: !5235, file: !5179, line: 42, column: 7)
!5243 = !DILocation(line: 42, column: 18, scope: !5242, inlinedAt: !5240)
!5244 = !DILocation(line: 42, column: 7, scope: !5235, inlinedAt: !5240)
!5245 = !DILocation(line: 44, column: 5, scope: !5242, inlinedAt: !5240)
!5246 = !DILocation(line: 155, column: 10, scope: !5178)
!5247 = !DILocation(line: 155, column: 3, scope: !5178)
!5248 = !DILocation(line: 229, column: 1, scope: !5178)
!5249 = distinct !DISubprogram(name: "rpl_fseeko", scope: !5250, file: !5250, line: 28, type: !5251, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !872, variables: !5294)
!5250 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!5251 = !DISubroutineType(types: !5252)
!5252 = !{!80, !5253, !5293, !80}
!5253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5254, size: 64)
!5254 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !4045, line: 49, baseType: !5255)
!5255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !4047, line: 241, size: 1728, elements: !5256)
!5256 = !{!5257, !5258, !5259, !5260, !5261, !5262, !5263, !5264, !5265, !5266, !5267, !5268, !5269, !5277, !5278, !5279, !5280, !5281, !5282, !5283, !5284, !5285, !5286, !5287, !5288, !5289, !5290, !5291, !5292}
!5257 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5255, file: !4047, line: 242, baseType: !80, size: 32)
!5258 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !5255, file: !4047, line: 247, baseType: !25, size: 64, offset: 64)
!5259 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !5255, file: !4047, line: 248, baseType: !25, size: 64, offset: 128)
!5260 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !5255, file: !4047, line: 249, baseType: !25, size: 64, offset: 192)
!5261 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !5255, file: !4047, line: 250, baseType: !25, size: 64, offset: 256)
!5262 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !5255, file: !4047, line: 251, baseType: !25, size: 64, offset: 320)
!5263 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !5255, file: !4047, line: 252, baseType: !25, size: 64, offset: 384)
!5264 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !5255, file: !4047, line: 253, baseType: !25, size: 64, offset: 448)
!5265 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !5255, file: !4047, line: 254, baseType: !25, size: 64, offset: 512)
!5266 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !5255, file: !4047, line: 256, baseType: !25, size: 64, offset: 576)
!5267 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !5255, file: !4047, line: 257, baseType: !25, size: 64, offset: 640)
!5268 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !5255, file: !4047, line: 258, baseType: !25, size: 64, offset: 704)
!5269 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !5255, file: !4047, line: 260, baseType: !5270, size: 64, offset: 768)
!5270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5271, size: 64)
!5271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !4047, line: 156, size: 192, elements: !5272)
!5272 = !{!5273, !5274, !5276}
!5273 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !5271, file: !4047, line: 157, baseType: !5270, size: 64)
!5274 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !5271, file: !4047, line: 158, baseType: !5275, size: 64, offset: 64)
!5275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5255, size: 64)
!5276 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !5271, file: !4047, line: 162, baseType: !80, size: 32, offset: 128)
!5277 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !5255, file: !4047, line: 262, baseType: !5275, size: 64, offset: 832)
!5278 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !5255, file: !4047, line: 264, baseType: !80, size: 32, offset: 896)
!5279 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !5255, file: !4047, line: 268, baseType: !80, size: 32, offset: 928)
!5280 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !5255, file: !4047, line: 270, baseType: !211, size: 64, offset: 960)
!5281 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !5255, file: !4047, line: 274, baseType: !364, size: 16, offset: 1024)
!5282 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !5255, file: !4047, line: 275, baseType: !4075, size: 8, offset: 1040)
!5283 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !5255, file: !4047, line: 276, baseType: !4077, size: 8, offset: 1048)
!5284 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !5255, file: !4047, line: 280, baseType: !4081, size: 64, offset: 1088)
!5285 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !5255, file: !4047, line: 289, baseType: !4084, size: 64, offset: 1152)
!5286 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !5255, file: !4047, line: 297, baseType: !27, size: 64, offset: 1216)
!5287 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !5255, file: !4047, line: 298, baseType: !27, size: 64, offset: 1280)
!5288 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !5255, file: !4047, line: 299, baseType: !27, size: 64, offset: 1344)
!5289 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !5255, file: !4047, line: 300, baseType: !27, size: 64, offset: 1408)
!5290 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !5255, file: !4047, line: 302, baseType: !28, size: 64, offset: 1472)
!5291 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !5255, file: !4047, line: 303, baseType: !80, size: 32, offset: 1536)
!5292 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !5255, file: !4047, line: 305, baseType: !185, size: 160, offset: 1568)
!5293 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !4045, line: 91, baseType: !211)
!5294 = !{!5295, !5296, !5297, !5298}
!5295 = !DILocalVariable(name: "fp", arg: 1, scope: !5249, file: !5250, line: 28, type: !5253)
!5296 = !DILocalVariable(name: "offset", arg: 2, scope: !5249, file: !5250, line: 28, type: !5293)
!5297 = !DILocalVariable(name: "whence", arg: 3, scope: !5249, file: !5250, line: 28, type: !80)
!5298 = !DILocalVariable(name: "pos", scope: !5299, file: !5250, line: 116, type: !5293)
!5299 = distinct !DILexicalBlock(scope: !5300, file: !5250, line: 112, column: 5)
!5300 = distinct !DILexicalBlock(scope: !5249, file: !5250, line: 51, column: 7)
!5301 = !DILocation(line: 28, column: 15, scope: !5249)
!5302 = !DILocation(line: 28, column: 25, scope: !5249)
!5303 = !DILocation(line: 28, column: 37, scope: !5249)
!5304 = !DILocation(line: 51, column: 11, scope: !5300)
!5305 = !DILocation(line: 51, column: 31, scope: !5300)
!5306 = !DILocation(line: 51, column: 24, scope: !5300)
!5307 = !DILocation(line: 52, column: 7, scope: !5300)
!5308 = !DILocation(line: 52, column: 14, scope: !5309)
!5309 = !DILexicalBlockFile(scope: !5300, file: !5250, discriminator: 1)
!5310 = !{!4815, !893, i64 40}
!5311 = !DILocation(line: 52, column: 35, scope: !5309)
!5312 = !{!4815, !893, i64 32}
!5313 = !DILocation(line: 52, column: 28, scope: !5309)
!5314 = !DILocation(line: 53, column: 7, scope: !5300)
!5315 = !DILocation(line: 53, column: 14, scope: !5309)
!5316 = !{!4815, !893, i64 72}
!5317 = !DILocation(line: 53, column: 28, scope: !5309)
!5318 = !DILocation(line: 51, column: 7, scope: !5319)
!5319 = !DILexicalBlockFile(scope: !5249, file: !5250, discriminator: 1)
!5320 = !DILocation(line: 116, column: 26, scope: !5299)
!5321 = !DILocation(line: 116, column: 19, scope: !5322)
!5322 = !DILexicalBlockFile(scope: !5299, file: !5250, discriminator: 1)
!5323 = !DILocation(line: 116, column: 13, scope: !5299)
!5324 = !DILocation(line: 117, column: 15, scope: !5325)
!5325 = distinct !DILexicalBlock(scope: !5299, file: !5250, line: 117, column: 11)
!5326 = !DILocation(line: 117, column: 11, scope: !5299)
!5327 = !DILocation(line: 127, column: 11, scope: !5299)
!5328 = !DILocation(line: 127, column: 18, scope: !5299)
!5329 = !DILocation(line: 128, column: 11, scope: !5299)
!5330 = !DILocation(line: 128, column: 19, scope: !5299)
!5331 = !{!4815, !1069, i64 144}
!5332 = !DILocation(line: 159, column: 7, scope: !5299)
!5333 = !DILocation(line: 161, column: 10, scope: !5249)
!5334 = !DILocation(line: 161, column: 3, scope: !5249)
!5335 = !DILocation(line: 162, column: 1, scope: !5249)
