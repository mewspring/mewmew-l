; ModuleID = 'coreutils-8.27/src/pinky.bc'
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
%struct.utmpx = type { i16, i32, [32 x i8], [4 x i8], [32 x i8], [256 x i8], %struct.__exit_status, i32, %struct.anon, [4 x i32], [20 x i8] }
%struct.__exit_status = type { i16, i16 }
%struct.anon = type { i32, i32 }
%struct.passwd = type { i8*, i8*, i32, i32, i8*, i8*, i8* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8* }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Usage: %s [OPTION]... [USER]...\0A\00", align 1
@.str.2 = private unnamed_addr constant [328 x i8] c"\0A  -l              produce long format output for the specified USERs\0A  -b              omit the user's home directory and shell in long format\0A  -h              omit the user's project file in long format\0A  -p              omit the user's plan file in long format\0A  -s              do short format output, this is the default\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.3 = private unnamed_addr constant [309 x i8] c"  -f              omit the line of column headings in short format\0A  -w              omit the user's full name in short format\0A  -i              omit the user's full name and remote host in short format\0A  -q              omit the user's full name, remote host and idle time\0A                  in short format\0A\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.5 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.6 = private unnamed_addr constant [85 x i8] c"\0AA lightweight 'finger' program;  print user information.\0AThe utmp file will be %s.\0A\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"/var/run/utmp\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"pinky\00", align 1
@.str.26 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.27 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.28 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.29 = private unnamed_addr constant [69 x i8] c"Report %s translation bugs to <http://translationproject.org/team/>\0A\00", align 1
@.str.30 = private unnamed_addr constant [31 x i8] c"Full documentation at: <%s%s>\0A\00", align 1
@.str.31 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.32 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.9 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"sfwiqbhlp\00", align 1
@longopts = internal constant [3 x %struct.option] [%struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.33, i32 0, i32 0), i32 0, i32* null, i32 -130 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.34, i32 0, i32 0), i32 0, i32* null, i32 -131 }, %struct.option zeroinitializer], align 16, !dbg !0
@do_short_format = internal unnamed_addr global i1 false, align 1
@include_heading = internal unnamed_addr global i1 false, align 1
@include_fullname = internal unnamed_addr global i1 false, align 1
@include_where = internal unnamed_addr global i1 false, align 1
@include_idle = internal unnamed_addr global i1 false, align 1
@include_project = internal unnamed_addr global i1 false, align 1
@include_plan = internal unnamed_addr global i1 false, align 1
@include_home_and_shell = internal unnamed_addr global i1 false, align 1
@.str.14 = private unnamed_addr constant [17 x i8] c"Joseph Arceneaux\00", align 1
@.str.15 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"Kaveh Ghazi\00", align 1
@optind = external local_unnamed_addr global i32, align 4
@.str.17 = private unnamed_addr constant [68 x i8] c"no username specified; at least one must be specified when using -l\00", align 1
@.str.35 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.36 = private unnamed_addr constant [15 x i8] c"%Y-%m-%d %H:%M\00", align 1
@.str.37 = private unnamed_addr constant [12 x i8] c"%b %e %H:%M\00", align 1
@time_format = internal unnamed_addr global i8* null, align 8, !dbg !102
@time_format_width = internal unnamed_addr global i32 0, align 4, !dbg !104
@.str.39 = private unnamed_addr constant [6 x i8] c"Login\00", align 1
@.str.38 = private unnamed_addr constant [5 x i8] c"%-8s\00", align 1
@.str.41 = private unnamed_addr constant [5 x i8] c"Name\00", align 1
@.str.40 = private unnamed_addr constant [7 x i8] c" %-19s\00", align 1
@.str.43 = private unnamed_addr constant [5 x i8] c" TTY\00", align 1
@.str.42 = private unnamed_addr constant [6 x i8] c" %-9s\00", align 1
@.str.45 = private unnamed_addr constant [5 x i8] c"Idle\00", align 1
@.str.44 = private unnamed_addr constant [6 x i8] c" %-6s\00", align 1
@.str.47 = private unnamed_addr constant [5 x i8] c"When\00", align 1
@.str.46 = private unnamed_addr constant [6 x i8] c" %-*s\00", align 1
@.str.49 = private unnamed_addr constant [6 x i8] c"Where\00", align 1
@.str.48 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.61 = private unnamed_addr constant [13 x i8] c"Login name: \00", align 1
@.str.62 = private unnamed_addr constant [6 x i8] c"%-28s\00", align 1
@.str.63 = private unnamed_addr constant [15 x i8] c"In real life: \00", align 1
@.str.64 = private unnamed_addr constant [5 x i8] c"???\0A\00", align 1
@.str.65 = private unnamed_addr constant [12 x i8] c"Directory: \00", align 1
@.str.66 = private unnamed_addr constant [6 x i8] c"%-29s\00", align 1
@.str.67 = private unnamed_addr constant [8 x i8] c"Shell: \00", align 1
@.str.68 = private unnamed_addr constant [10 x i8] c"/.project\00", align 1
@.str.69 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.70 = private unnamed_addr constant [10 x i8] c"Project: \00", align 1
@.str.71 = private unnamed_addr constant [7 x i8] c"/.plan\00", align 1
@.str.72 = private unnamed_addr constant [7 x i8] c"Plan:\0A\00", align 1
@.str.50 = private unnamed_addr constant [6 x i8] c"/dev/\00", align 1
@.str.51 = private unnamed_addr constant [7 x i8] c"%-8.*s\00", align 1
@.str.53 = private unnamed_addr constant [12 x i8] c"        ???\00", align 1
@.str.52 = private unnamed_addr constant [6 x i8] c" %19s\00", align 1
@.str.54 = private unnamed_addr constant [10 x i8] c" %-19.19s\00", align 1
@.str.55 = private unnamed_addr constant [10 x i8] c" %c%-8.*s\00", align 1
@idle_string.now = internal global i64 0, align 8, !dbg !106
@idle_string.buf = internal global [22 x i8] zeroinitializer, align 16, !dbg !125
@.str.59 = private unnamed_addr constant [10 x i8] c"%02d:%02d\00", align 1
@.str.60 = private unnamed_addr constant [5 x i8] c"%lud\00", align 1
@.str.58 = private unnamed_addr constant [6 x i8] c"     \00", align 1
@.str.56 = private unnamed_addr constant [6 x i8] c"?????\00", align 1
@time_string.buf = internal global [33 x i8] zeroinitializer, align 16, !dbg !130
@.str.57 = private unnamed_addr constant [7 x i8] c" %s:%s\00", align 1
@.str.33 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.34 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@Version = local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i64 0, i64 0), align 8, !dbg !210
@.str.18 = private unnamed_addr constant [5 x i8] c"8.27\00", align 1
@last_cherror = internal global i32 0, align 4, !dbg !216
@canon_host_r.hints = internal global %struct.addrinfo zeroinitializer, align 8, !dbg !221
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !259
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !264
@.str.23 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.24 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.25 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = global i32 1, align 4, !dbg !267
@.str.1.30 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@program_name = local_unnamed_addr global i8* null, align 8, !dbg !274
@.str.73 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.74 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.75 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.76, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.77, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.78, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.79, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.80, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.81, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.82, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.83, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.84, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.85, i32 0, i32 0), i8* null], align 16, !dbg !281
@.str.76 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.77 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.78 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.79 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.80 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.81 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.82 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.83 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.84 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.85 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_vals = local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !293
@quote_quoting_options = global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !300
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !312
@.str.11.86 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.87 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.88 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.89 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.90 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.91 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.92 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !316
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !323
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !314
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !325
@.str.97 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.98 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.99 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.3.100 = private unnamed_addr constant [203 x i8] c"\0ALicense GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\0A\00", align 1
@.str.4.101 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.5.102 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.6.103 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.7.104 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.8.105 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.9.106 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.10.107 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.11.108 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.12.109 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.13.110 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@.str.14.113 = private unnamed_addr constant [21 x i8] c"\0AReport bugs to: %s\0A\00", align 1
@.str.15.114 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.16.115 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.17.116 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.18.117 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.19 = private unnamed_addr constant [64 x i8] c"General help using GNU software: <http://www.gnu.org/gethelp/>\0A\00", align 1
@version_etc_copyright = constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !331
@.str.1.128 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.129 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.146 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@charset_aliases = internal global i8* null, align 8, !dbg !340
@.str.3.147 = private unnamed_addr constant [16 x i8] c"CHARSETALIASDIR\00", align 1
@.str.4.148 = private unnamed_addr constant [15 x i8] c"/usr/local/lib\00", align 1
@.str.2.149 = private unnamed_addr constant [14 x i8] c"charset.alias\00", align 1
@.str.5.150 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.6.151 = private unnamed_addr constant [10 x i8] c"%50s %50s\00", align 1
@.str.1.152 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @usage(i32) local_unnamed_addr #0 !dbg !757 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !761, metadata !762), !dbg !763
  %2 = icmp eq i32 %0, 0, !dbg !764
  br i1 %2, label %8, label %3, !dbg !766

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !767, !tbaa !770
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #10, !dbg !767
  %6 = load i8*, i8** @program_name, align 8, !dbg !767, !tbaa !770
  %7 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %4, i32 1, i8* %5, i8* %6) #10, !dbg !774
  br label %41, !dbg !776

; <label>:8:                                      ; preds = %1
  %9 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 5) #10, !dbg !778
  %10 = load i8*, i8** @program_name, align 8, !dbg !778, !tbaa !770
  %11 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %9, i8* %10) #10, !dbg !780
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([328 x i8], [328 x i8]* @.str.2, i64 0, i64 0), i32 5) #10, !dbg !782
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !782, !tbaa !770
  %14 = tail call i32 @fputs_unlocked(i8* %12, %struct._IO_FILE* %13) #10, !dbg !783
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([309 x i8], [309 x i8]* @.str.3, i64 0, i64 0), i32 5) #10, !dbg !784
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !784, !tbaa !770
  %17 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %16) #10, !dbg !785
  %18 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i32 5) #10, !dbg !786
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !786, !tbaa !770
  %20 = tail call i32 @fputs_unlocked(i8* %18, %struct._IO_FILE* %19) #10, !dbg !787
  %21 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.5, i64 0, i64 0), i32 5) #10, !dbg !788
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !788, !tbaa !770
  %23 = tail call i32 @fputs_unlocked(i8* %21, %struct._IO_FILE* %22) #10, !dbg !789
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.6, i64 0, i64 0), i32 5) #10, !dbg !790
  %25 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %24, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0)) #10, !dbg !791
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !63, metadata !762) #10, !dbg !792
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i64 0, metadata !63, metadata !762) #10, !dbg !792
  %26 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.26, i64 0, i64 0), i32 5) #10, !dbg !794
  %27 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %26, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.27, i64 0, i64 0)) #10, !dbg !795
  %28 = tail call i8* @setlocale(i32 5, i8* null) #10, !dbg !797
  tail call void @llvm.dbg.value(metadata i8* %28, i64 0, metadata !74, metadata !762) #10, !dbg !798
  %29 = icmp eq i8* %28, null, !dbg !799
  br i1 %29, label %36, label %30, !dbg !800

; <label>:30:                                     ; preds = %8
  %31 = tail call i32 @strncmp(i8* nonnull %28, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.28, i64 0, i64 0), i64 3) #13, !dbg !801
  %32 = icmp eq i32 %31, 0, !dbg !801
  br i1 %32, label %36, label %33, !dbg !803

; <label>:33:                                     ; preds = %30
  %34 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.29, i64 0, i64 0), i32 5) #10, !dbg !805
  %35 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %34, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0)) #10, !dbg !807
  br label %36, !dbg !809

; <label>:36:                                     ; preds = %8, %30, %33
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.30, i64 0, i64 0), i32 5) #10, !dbg !810
  %38 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %37, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.27, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0)) #10, !dbg !811
  %39 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.31, i64 0, i64 0), i32 5) #10, !dbg !812
  %40 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %39, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.32, i64 0, i64 0)) #10, !dbg !813
  br label %41

; <label>:41:                                     ; preds = %36, %3
  tail call void @exit(i32 %0) #14, !dbg !814
  unreachable, !dbg !814
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
define i32 @main(i32, i8**) local_unnamed_addr #6 !dbg !815 {
  %3 = alloca [1024 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [1024 x i8]* %3, metadata !824, metadata !762), !dbg !917
  %4 = alloca [1024 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [1024 x i8]* %4, metadata !908, metadata !762), !dbg !932
  %5 = alloca i64, align 8
  %6 = alloca %struct.utmpx*, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !820, metadata !762), !dbg !933
  tail call void @llvm.dbg.value(metadata i8** %1, i64 0, metadata !821, metadata !762), !dbg !934
  %7 = load i8*, i8** %1, align 8, !dbg !935, !tbaa !770
  tail call void @set_program_name(i8* %7) #10, !dbg !936
  %8 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i64 0, i64 0)) #10, !dbg !937
  %9 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i64 0, i64 0)) #10, !dbg !938
  %10 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0)) #10, !dbg !939
  %11 = tail call i32 @atexit(void ()* nonnull @close_stdout) #10, !dbg !940
  br label %12, !dbg !941

; <label>:12:                                     ; preds = %23, %2
  %13 = tail call i32 @getopt_long(i32 %0, i8** %1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0), %struct.option* getelementptr inbounds ([3 x %struct.option], [3 x %struct.option]* @longopts, i64 0, i64 0), i32* null) #10, !dbg !942
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !822, metadata !762), !dbg !944
  switch i32 %13, label %28 [
    i32 -1, label %29
    i32 115, label %14
    i32 108, label %15
    i32 102, label %16
    i32 119, label %17
    i32 105, label %18
    i32 113, label %19
    i32 104, label %20
    i32 112, label %21
    i32 98, label %22
    i32 -130, label %24
    i32 -131, label %25
  ], !dbg !945

; <label>:14:                                     ; preds = %12
  store i1 false, i1* @do_short_format, align 1
  br label %23, !dbg !946

; <label>:15:                                     ; preds = %12
  store i1 true, i1* @do_short_format, align 1
  br label %23, !dbg !949

; <label>:16:                                     ; preds = %12
  store i1 true, i1* @include_heading, align 1
  br label %23, !dbg !950

; <label>:17:                                     ; preds = %12
  store i1 true, i1* @include_fullname, align 1
  br label %23, !dbg !951

; <label>:18:                                     ; preds = %12
  store i1 true, i1* @include_fullname, align 1
  store i1 true, i1* @include_where, align 1
  br label %23, !dbg !952

; <label>:19:                                     ; preds = %12
  store i1 true, i1* @include_fullname, align 1
  store i1 true, i1* @include_where, align 1
  store i1 true, i1* @include_idle, align 1
  br label %23, !dbg !953

; <label>:20:                                     ; preds = %12
  store i1 true, i1* @include_project, align 1
  br label %23, !dbg !954

; <label>:21:                                     ; preds = %12
  store i1 true, i1* @include_plan, align 1
  br label %23, !dbg !955

; <label>:22:                                     ; preds = %12
  store i1 true, i1* @include_home_and_shell, align 1
  br label %23, !dbg !956

; <label>:23:                                     ; preds = %22, %21, %20, %19, %18, %17, %16, %15, %14
  br label %12, !dbg !942, !llvm.loop !957

; <label>:24:                                     ; preds = %12
  tail call void @usage(i32 0) #15, !dbg !959
  unreachable, !dbg !959

; <label>:25:                                     ; preds = %12
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !960, !tbaa !770
  %27 = load i8*, i8** @Version, align 8, !dbg !960, !tbaa !770
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %26, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0), i8* %27, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i64 0, i64 0), i8* null) #10, !dbg !960
  tail call void @exit(i32 0) #14, !dbg !961
  unreachable, !dbg !960

; <label>:28:                                     ; preds = %12
  tail call void @usage(i32 1) #15, !dbg !963
  unreachable, !dbg !963

; <label>:29:                                     ; preds = %12
  %30 = load i32, i32* @optind, align 4, !dbg !964, !tbaa !965
  %31 = sub nsw i32 %0, %30, !dbg !967
  tail call void @llvm.dbg.value(metadata i32 %31, i64 0, metadata !823, metadata !762), !dbg !968
  %32 = load i1, i1* @do_short_format, align 1
  %33 = icmp eq i32 %31, 0, !dbg !969
  %34 = and i1 %32, %33, !dbg !972
  br i1 %34, label %35, label %37, !dbg !972

; <label>:35:                                     ; preds = %29
  %36 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.17, i64 0, i64 0), i32 5) #10, !dbg !973
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %36) #10, !dbg !975
  tail call void @usage(i32 1) #15, !dbg !977
  unreachable, !dbg !977

; <label>:37:                                     ; preds = %29
  %38 = sext i32 %30 to i64
  %39 = getelementptr inbounds i8*, i8** %1, i64 %38
  br i1 %32, label %125, label %40, !dbg !978

; <label>:40:                                     ; preds = %37
  %41 = bitcast i64* %5 to i8*, !dbg !979
  call void @llvm.lifetime.start(i64 8, i8* nonnull %41) #10, !dbg !979
  %42 = bitcast %struct.utmpx** %6 to i8*, !dbg !991
  call void @llvm.lifetime.start(i64 8, i8* nonnull %42) #10, !dbg !991
  tail call void @llvm.dbg.value(metadata %struct.utmpx* null, i64 0, metadata !988, metadata !762) #10, !dbg !992
  store %struct.utmpx* null, %struct.utmpx** %6, align 8, !dbg !992, !tbaa !770
  tail call void @llvm.dbg.value(metadata i64* %5, i64 0, metadata !987, metadata !993) #10, !dbg !994
  tail call void @llvm.dbg.value(metadata %struct.utmpx** %6, i64 0, metadata !988, metadata !993) #10, !dbg !992
  %43 = call i32 @read_utmp(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i64* nonnull %5, %struct.utmpx** nonnull %6, i32 0) #10, !dbg !995
  %44 = icmp eq i32 %43, 0, !dbg !997
  br i1 %44, label %49, label %45, !dbg !998

; <label>:45:                                     ; preds = %40
  %46 = tail call i32* @__errno_location() #1, !dbg !999
  %47 = load i32, i32* %46, align 4, !dbg !999, !tbaa !965
  %48 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0)) #10, !dbg !1000
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %47, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.35, i64 0, i64 0), i8* %48) #10, !dbg !1002
  unreachable, !dbg !999

; <label>:49:                                     ; preds = %40
  %50 = load i64, i64* %5, align 8, !dbg !1004, !tbaa !1005
  call void @llvm.dbg.value(metadata i64 %50, i64 0, metadata !987, metadata !762) #10, !dbg !994
  %51 = load %struct.utmpx*, %struct.utmpx** %6, align 8, !dbg !1007, !tbaa !770
  call void @llvm.dbg.value(metadata %struct.utmpx* %51, i64 0, metadata !988, metadata !762) #10, !dbg !992
  call void @llvm.dbg.value(metadata i64 %50, i64 0, metadata !1008, metadata !762) #10, !dbg !1022
  call void @llvm.dbg.value(metadata %struct.utmpx* %51, i64 0, metadata !1013, metadata !762) #10, !dbg !1024
  call void @llvm.dbg.value(metadata i32 %31, i64 0, metadata !1014, metadata !762) #10, !dbg !1025
  call void @llvm.dbg.value(metadata i8** %39, i64 0, metadata !1015, metadata !762) #10, !dbg !1026
  %52 = call zeroext i1 @hard_locale(i32 2) #10, !dbg !1027
  %53 = select i1 %52, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.36, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.37, i64 0, i64 0), !dbg !1029
  %54 = select i1 %52, i32 16, i32 12, !dbg !1029
  store i8* %53, i8** @time_format, align 8, !tbaa !770
  store i32 %54, i32* @time_format_width, align 4, !tbaa !965
  %55 = load i1, i1* @include_heading, align 1
  br i1 %55, label %89, label %56, !dbg !1030

; <label>:56:                                     ; preds = %49
  %57 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.39, i64 0, i64 0), i32 5) #10, !dbg !1031
  %58 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.38, i64 0, i64 0), i8* %57) #10, !dbg !1037
  %59 = load i1, i1* @include_fullname, align 1
  br i1 %59, label %63, label %60, !dbg !1039

; <label>:60:                                     ; preds = %56
  %61 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.41, i64 0, i64 0), i32 5) #10, !dbg !1040
  %62 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.40, i64 0, i64 0), i8* %61) #10, !dbg !1042
  br label %63, !dbg !1040

; <label>:63:                                     ; preds = %60, %56
  %64 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.43, i64 0, i64 0), i32 5) #10, !dbg !1044
  %65 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.42, i64 0, i64 0), i8* %64) #10, !dbg !1045
  %66 = load i1, i1* @include_idle, align 1
  br i1 %66, label %70, label %67, !dbg !1046

; <label>:67:                                     ; preds = %63
  %68 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.45, i64 0, i64 0), i32 5) #10, !dbg !1047
  %69 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.44, i64 0, i64 0), i8* %68) #10, !dbg !1049
  br label %70, !dbg !1047

; <label>:70:                                     ; preds = %67, %63
  %71 = load i32, i32* @time_format_width, align 4, !dbg !1051, !tbaa !965
  %72 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.47, i64 0, i64 0), i32 5) #10, !dbg !1051
  %73 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.46, i64 0, i64 0), i32 %71, i8* %72) #10, !dbg !1052
  %74 = load i1, i1* @include_where, align 1
  br i1 %74, label %78, label %75, !dbg !1053

; <label>:75:                                     ; preds = %70
  %76 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.49, i64 0, i64 0), i32 5) #10, !dbg !1054
  %77 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.48, i64 0, i64 0), i8* %76) #10, !dbg !1056
  br label %78, !dbg !1054

; <label>:78:                                     ; preds = %75, %70
  call void @llvm.dbg.value(metadata i32 10, i64 0, metadata !1058, metadata !762) #10, !dbg !1064
  %79 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1066, !tbaa !770
  %80 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %79, i64 0, i32 5, !dbg !1066
  %81 = load i8*, i8** %80, align 8, !dbg !1066, !tbaa !1067
  %82 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %79, i64 0, i32 6, !dbg !1066
  %83 = load i8*, i8** %82, align 8, !dbg !1066, !tbaa !1070
  %84 = icmp ult i8* %81, %83, !dbg !1066
  br i1 %84, label %87, label %85, !dbg !1066, !prof !1071

; <label>:85:                                     ; preds = %78
  %86 = call i32 @__overflow(%struct._IO_FILE* %79, i32 10) #10, !dbg !1072
  br label %89, !dbg !1072

; <label>:87:                                     ; preds = %78
  %88 = getelementptr inbounds i8, i8* %81, i64 1, !dbg !1074
  store i8* %88, i8** %80, align 8, !dbg !1074, !tbaa !1067
  store i8 10, i8* %81, align 1, !dbg !1074, !tbaa !1076
  br label %89, !dbg !1074

; <label>:89:                                     ; preds = %87, %85, %49
  call void @llvm.dbg.value(metadata i64 %50, i64 0, metadata !1008, metadata !762) #10, !dbg !1022
  call void @llvm.dbg.value(metadata %struct.utmpx* %51, i64 0, metadata !1013, metadata !762) #10, !dbg !1024
  %90 = icmp eq i64 %50, 0, !dbg !1077
  br i1 %90, label %124, label %91, !dbg !1077

; <label>:91:                                     ; preds = %89
  %92 = icmp sgt i32 %31, 0
  %93 = sext i32 %31 to i64, !dbg !1077
  br label %94, !dbg !1077

; <label>:94:                                     ; preds = %120, %91
  %95 = phi i64 [ %50, %91 ], [ %97, %120 ]
  %96 = phi %struct.utmpx* [ %51, %91 ], [ %121, %120 ]
  %97 = add i64 %95, -1, !dbg !1079
  %98 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %96, i64 0, i32 4, i64 0, !dbg !1080
  %99 = load i8, i8* %98, align 4, !dbg !1080, !tbaa !1076
  %100 = icmp eq i8 %99, 0, !dbg !1080
  br i1 %100, label %120, label %101, !dbg !1080

; <label>:101:                                    ; preds = %94
  %102 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %96, i64 0, i32 0, !dbg !1081
  %103 = load i16, i16* %102, align 4, !dbg !1081, !tbaa !1083
  %104 = icmp eq i16 %103, 7, !dbg !1081
  br i1 %104, label %105, label %120, !dbg !1087

; <label>:105:                                    ; preds = %101
  br i1 %33, label %118, label %106, !dbg !1089

; <label>:106:                                    ; preds = %105
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1016, metadata !762) #10, !dbg !1090
  br i1 %92, label %107, label %120, !dbg !1091

; <label>:107:                                    ; preds = %106
  br label %110, !dbg !1094

; <label>:108:                                    ; preds = %110
  %109 = icmp slt i64 %116, %93, !dbg !1097
  br i1 %109, label %110, label %119, !dbg !1091, !llvm.loop !1099

; <label>:110:                                    ; preds = %107, %108
  %111 = phi i64 [ %116, %108 ], [ 0, %107 ]
  %112 = getelementptr inbounds i8*, i8** %39, i64 %111, !dbg !1094
  %113 = load i8*, i8** %112, align 8, !dbg !1094, !tbaa !770
  %114 = call i32 @strncmp(i8* %98, i8* %113, i64 32) #13, !dbg !1094
  %115 = icmp eq i32 %114, 0, !dbg !1094
  %116 = add nuw nsw i64 %111, 1, !dbg !1102
  br i1 %115, label %117, label %108, !dbg !1104

; <label>:117:                                    ; preds = %110
  call fastcc void @print_entry(%struct.utmpx* %96) #10, !dbg !1105
  br label %120, !dbg !1107

; <label>:118:                                    ; preds = %105
  call fastcc void @print_entry(%struct.utmpx* nonnull %96) #10, !dbg !1108
  br label %120

; <label>:119:                                    ; preds = %108
  br label %120, !dbg !1109

; <label>:120:                                    ; preds = %119, %118, %117, %106, %101, %94
  %121 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %96, i64 1, !dbg !1109
  call void @llvm.dbg.value(metadata %struct.utmpx* %121, i64 0, metadata !1013, metadata !762) #10, !dbg !1024
  call void @llvm.dbg.value(metadata i64 %97, i64 0, metadata !1008, metadata !762) #10, !dbg !1022
  call void @llvm.dbg.value(metadata %struct.utmpx* %121, i64 0, metadata !1013, metadata !762) #10, !dbg !1024
  %122 = icmp eq i64 %97, 0, !dbg !1077
  br i1 %122, label %123, label %94, !dbg !1077, !llvm.loop !1110

; <label>:123:                                    ; preds = %120
  br label %124, !dbg !1113

; <label>:124:                                    ; preds = %123, %89
  call void @llvm.lifetime.end(i64 8, i8* nonnull %42) #10, !dbg !1113
  call void @llvm.lifetime.end(i64 8, i8* nonnull %41) #10, !dbg !1113
  br label %264, !dbg !1114

; <label>:125:                                    ; preds = %37
  tail call void @llvm.dbg.value(metadata i32 %31, i64 0, metadata !927, metadata !762) #10, !dbg !1115
  tail call void @llvm.dbg.value(metadata i8** %39, i64 0, metadata !928, metadata !762) #10, !dbg !1116
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !929, metadata !762) #10, !dbg !1117
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !929, metadata !762) #10, !dbg !1117
  %126 = icmp sgt i32 %31, 0, !dbg !1118
  br i1 %126, label %127, label %264, !dbg !1120

; <label>:127:                                    ; preds = %125
  %128 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 0
  %129 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %130 = zext i32 %31 to i64
  br label %131, !dbg !1120

; <label>:131:                                    ; preds = %260, %127
  %132 = phi i64 [ 0, %127 ], [ %261, %260 ]
  %133 = getelementptr inbounds i8*, i8** %39, i64 %132, !dbg !1122
  %134 = load i8*, i8** %133, align 8, !dbg !1122, !tbaa !770
  call void @llvm.dbg.value(metadata i8* %134, i64 0, metadata !829, metadata !762) #10, !dbg !1123
  %135 = call %struct.passwd* @getpwnam(i8* %134) #10, !dbg !1124
  call void @llvm.dbg.value(metadata %struct.passwd* %135, i64 0, metadata !830, metadata !762) #10, !dbg !1125
  %136 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.61, i64 0, i64 0), i32 5) #10, !dbg !1126
  %137 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %136) #10, !dbg !1127
  %138 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.62, i64 0, i64 0), i8* %134) #10, !dbg !1129
  %139 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.63, i64 0, i64 0), i32 5) #10, !dbg !1130
  %140 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %139) #10, !dbg !1131
  %141 = icmp eq %struct.passwd* %135, null, !dbg !1132
  br i1 %141, label %142, label %145, !dbg !1133

; <label>:142:                                    ; preds = %131
  %143 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.64, i64 0, i64 0), i32 5) #10, !dbg !1134
  %144 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.48, i64 0, i64 0), i8* %143) #10, !dbg !1136
  br label %260, !dbg !1138

; <label>:145:                                    ; preds = %131
  %146 = getelementptr inbounds %struct.passwd, %struct.passwd* %135, i64 0, i32 4, !dbg !1139
  %147 = load i8*, i8** %146, align 8, !dbg !1139, !tbaa !1140
  %148 = call i8* @strchr(i8* %147, i32 44) #10, !dbg !1139
  call void @llvm.dbg.value(metadata i8* %148, i64 0, metadata !844, metadata !762) #10, !dbg !1142
  %149 = icmp eq i8* %148, null, !dbg !1143
  br i1 %149, label %152, label %150, !dbg !1145

; <label>:150:                                    ; preds = %145
  store i8 0, i8* %148, align 1, !dbg !1146, !tbaa !1076
  %151 = load i8*, i8** %146, align 8, !tbaa !1140
  br label %152, !dbg !1147

; <label>:152:                                    ; preds = %150, %145
  %153 = phi i8* [ %147, %145 ], [ %151, %150 ], !dbg !1148
  %154 = getelementptr inbounds %struct.passwd, %struct.passwd* %135, i64 0, i32 0, !dbg !1149
  %155 = load i8*, i8** %154, align 8, !dbg !1149, !tbaa !1150
  %156 = call fastcc i8* @create_fullname(i8* %153, i8* %155) #10, !dbg !1151
  call void @llvm.dbg.value(metadata i8* %156, i64 0, metadata !848, metadata !762) #10, !dbg !1152
  %157 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.48, i64 0, i64 0), i8* %156) #10, !dbg !1153
  call void @free(i8* %156) #10, !dbg !1154
  call void @llvm.dbg.value(metadata i32 10, i64 0, metadata !1058, metadata !762) #10, !dbg !1155
  %158 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1157, !tbaa !770
  %159 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %158, i64 0, i32 5, !dbg !1157
  %160 = load i8*, i8** %159, align 8, !dbg !1157, !tbaa !1067
  %161 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %158, i64 0, i32 6, !dbg !1157
  %162 = load i8*, i8** %161, align 8, !dbg !1157, !tbaa !1070
  %163 = icmp ult i8* %160, %162, !dbg !1157
  br i1 %163, label %166, label %164, !dbg !1157, !prof !1071

; <label>:164:                                    ; preds = %152
  %165 = call i32 @__overflow(%struct._IO_FILE* %158, i32 10) #10, !dbg !1158
  br label %168, !dbg !1158

; <label>:166:                                    ; preds = %152
  %167 = getelementptr inbounds i8, i8* %160, i64 1, !dbg !1159
  store i8* %167, i8** %159, align 8, !dbg !1159, !tbaa !1067
  store i8 10, i8* %160, align 1, !dbg !1159, !tbaa !1076
  br label %168, !dbg !1159

; <label>:168:                                    ; preds = %166, %164
  %169 = load i1, i1* @include_home_and_shell, align 1
  br i1 %169, label %191, label %170, !dbg !1160

; <label>:170:                                    ; preds = %168
  %171 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.65, i64 0, i64 0), i32 5) #10, !dbg !1161
  %172 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %171) #10, !dbg !1164
  %173 = getelementptr inbounds %struct.passwd, %struct.passwd* %135, i64 0, i32 5, !dbg !1166
  %174 = load i8*, i8** %173, align 8, !dbg !1166, !tbaa !1167
  %175 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.66, i64 0, i64 0), i8* %174) #10, !dbg !1166
  %176 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.67, i64 0, i64 0), i32 5) #10, !dbg !1168
  %177 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %176) #10, !dbg !1169
  %178 = getelementptr inbounds %struct.passwd, %struct.passwd* %135, i64 0, i32 6, !dbg !1170
  %179 = load i8*, i8** %178, align 8, !dbg !1170, !tbaa !1171
  %180 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.48, i64 0, i64 0), i8* %179) #10, !dbg !1170
  call void @llvm.dbg.value(metadata i32 10, i64 0, metadata !1058, metadata !762) #10, !dbg !1172
  %181 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1174, !tbaa !770
  %182 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %181, i64 0, i32 5, !dbg !1174
  %183 = load i8*, i8** %182, align 8, !dbg !1174, !tbaa !1067
  %184 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %181, i64 0, i32 6, !dbg !1174
  %185 = load i8*, i8** %184, align 8, !dbg !1174, !tbaa !1070
  %186 = icmp ult i8* %183, %185, !dbg !1174
  br i1 %186, label %189, label %187, !dbg !1174, !prof !1071

; <label>:187:                                    ; preds = %170
  %188 = call i32 @__overflow(%struct._IO_FILE* %181, i32 10) #10, !dbg !1175
  br label %191, !dbg !1175

; <label>:189:                                    ; preds = %170
  %190 = getelementptr inbounds i8, i8* %183, i64 1, !dbg !1176
  store i8* %190, i8** %182, align 8, !dbg !1176, !tbaa !1067
  store i8 10, i8* %183, align 1, !dbg !1176, !tbaa !1076
  br label %191, !dbg !1176

; <label>:191:                                    ; preds = %189, %187, %168
  %192 = load i1, i1* @include_project, align 1
  br i1 %192, label %220, label %193, !dbg !1177

; <label>:193:                                    ; preds = %191
  call void @llvm.lifetime.start(i64 1024, i8* nonnull %129) #10, !dbg !1178
  %194 = getelementptr inbounds %struct.passwd, %struct.passwd* %135, i64 0, i32 5, !dbg !1179
  %195 = load i8*, i8** %194, align 8, !dbg !1179, !tbaa !1167
  %196 = call i64 @strlen(i8* %195) #13, !dbg !1180
  %197 = add i64 %196, 10, !dbg !1181
  %198 = call noalias i8* @xmalloc(i64 %197) #10, !dbg !1182
  call void @llvm.dbg.value(metadata i8* %198, i64 0, metadata !901, metadata !762) #10, !dbg !1184
  %199 = load i8*, i8** %194, align 8, !dbg !1185, !tbaa !1167
  call void @llvm.dbg.value(metadata i8* %198, i64 0, metadata !1186, metadata !762) #10, !dbg !1195
  call void @llvm.dbg.value(metadata i8* %199, i64 0, metadata !1194, metadata !762) #10, !dbg !1195
  %200 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %198, i1 false) #10, !dbg !1197
  %201 = call i8* @__stpcpy_chk(i8* nonnull %198, i8* nonnull %199, i64 %200) #10, !dbg !1198
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %201, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.68, i64 0, i64 0), i64 10, i32 1, i1 false) #10, !dbg !1199
  %202 = call %struct._IO_FILE* @fopen(i8* %198, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.69, i64 0, i64 0)) #10, !dbg !1200
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %202, i64 0, metadata !849, metadata !762) #10, !dbg !1201
  %203 = icmp eq %struct._IO_FILE* %202, null, !dbg !1202
  br i1 %203, label %219, label %204, !dbg !1203

; <label>:204:                                    ; preds = %193
  %205 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.70, i64 0, i64 0), i32 5) #10, !dbg !1204
  %206 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %205) #10, !dbg !1205
  %207 = call i64 @fread_unlocked(i8* nonnull %129, i64 1, i64 1024, %struct._IO_FILE* nonnull %202) #10, !dbg !1207
  call void @llvm.dbg.value(metadata i64 %207, i64 0, metadata !902, metadata !762) #10, !dbg !1208
  %208 = icmp eq i64 %207, 0, !dbg !1209
  br i1 %208, label %217, label %209, !dbg !1210

; <label>:209:                                    ; preds = %204
  br label %210, !dbg !1211

; <label>:210:                                    ; preds = %209, %210
  %211 = phi i64 [ %214, %210 ], [ %207, %209 ]
  %212 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1211, !tbaa !770
  %213 = call i64 @fwrite_unlocked(i8* nonnull %129, i64 1, i64 %211, %struct._IO_FILE* %212) #10, !dbg !1211
  %214 = call i64 @fread_unlocked(i8* nonnull %129, i64 1, i64 1024, %struct._IO_FILE* nonnull %202) #10, !dbg !1207
  call void @llvm.dbg.value(metadata i64 %214, i64 0, metadata !902, metadata !762) #10, !dbg !1208
  %215 = icmp eq i64 %214, 0, !dbg !1209
  br i1 %215, label %216, label %210, !dbg !1210, !llvm.loop !1212

; <label>:216:                                    ; preds = %210
  br label %217, !dbg !1215

; <label>:217:                                    ; preds = %216, %204
  %218 = call i32 @rpl_fclose(%struct._IO_FILE* nonnull %202) #10, !dbg !1215
  br label %219, !dbg !1216

; <label>:219:                                    ; preds = %217, %193
  call void @free(i8* %198) #10, !dbg !1217
  call void @llvm.lifetime.end(i64 1024, i8* nonnull %129) #10, !dbg !1218
  br label %220, !dbg !1219

; <label>:220:                                    ; preds = %219, %191
  %221 = load i1, i1* @include_plan, align 1
  br i1 %221, label %249, label %222, !dbg !1220

; <label>:222:                                    ; preds = %220
  call void @llvm.lifetime.start(i64 1024, i8* nonnull %128) #10, !dbg !1221
  %223 = getelementptr inbounds %struct.passwd, %struct.passwd* %135, i64 0, i32 5, !dbg !1222
  %224 = load i8*, i8** %223, align 8, !dbg !1222, !tbaa !1167
  %225 = call i64 @strlen(i8* %224) #13, !dbg !1223
  %226 = add i64 %225, 7, !dbg !1224
  %227 = call noalias i8* @xmalloc(i64 %226) #10, !dbg !1225
  call void @llvm.dbg.value(metadata i8* %227, i64 0, metadata !913, metadata !762) #10, !dbg !1227
  %228 = load i8*, i8** %223, align 8, !dbg !1228, !tbaa !1167
  call void @llvm.dbg.value(metadata i8* %227, i64 0, metadata !1186, metadata !762) #10, !dbg !1229
  call void @llvm.dbg.value(metadata i8* %228, i64 0, metadata !1194, metadata !762) #10, !dbg !1229
  %229 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %227, i1 false) #10, !dbg !1231
  %230 = call i8* @__stpcpy_chk(i8* nonnull %227, i8* nonnull %228, i64 %229) #10, !dbg !1232
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %230, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.71, i64 0, i64 0), i64 7, i32 1, i1 false) #10, !dbg !1233
  %231 = call %struct._IO_FILE* @fopen(i8* %227, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.69, i64 0, i64 0)) #10, !dbg !1234
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %231, i64 0, metadata !905, metadata !762) #10, !dbg !1235
  %232 = icmp eq %struct._IO_FILE* %231, null, !dbg !1236
  br i1 %232, label %248, label %233, !dbg !1237

; <label>:233:                                    ; preds = %222
  %234 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.72, i64 0, i64 0), i32 5) #10, !dbg !1238
  %235 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %234) #10, !dbg !1239
  %236 = call i64 @fread_unlocked(i8* nonnull %128, i64 1, i64 1024, %struct._IO_FILE* nonnull %231) #10, !dbg !1241
  call void @llvm.dbg.value(metadata i64 %236, i64 0, metadata !914, metadata !762) #10, !dbg !1242
  %237 = icmp eq i64 %236, 0, !dbg !1243
  br i1 %237, label %246, label %238, !dbg !1244

; <label>:238:                                    ; preds = %233
  br label %239, !dbg !1245

; <label>:239:                                    ; preds = %238, %239
  %240 = phi i64 [ %243, %239 ], [ %236, %238 ]
  %241 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1245, !tbaa !770
  %242 = call i64 @fwrite_unlocked(i8* nonnull %128, i64 1, i64 %240, %struct._IO_FILE* %241) #10, !dbg !1245
  %243 = call i64 @fread_unlocked(i8* nonnull %128, i64 1, i64 1024, %struct._IO_FILE* nonnull %231) #10, !dbg !1241
  call void @llvm.dbg.value(metadata i64 %243, i64 0, metadata !914, metadata !762) #10, !dbg !1242
  %244 = icmp eq i64 %243, 0, !dbg !1243
  br i1 %244, label %245, label %239, !dbg !1244, !llvm.loop !1246

; <label>:245:                                    ; preds = %239
  br label %246, !dbg !1249

; <label>:246:                                    ; preds = %245, %233
  %247 = call i32 @rpl_fclose(%struct._IO_FILE* nonnull %231) #10, !dbg !1249
  br label %248, !dbg !1250

; <label>:248:                                    ; preds = %246, %222
  call void @free(i8* %227) #10, !dbg !1251
  call void @llvm.lifetime.end(i64 1024, i8* nonnull %128) #10, !dbg !1252
  br label %249, !dbg !1253

; <label>:249:                                    ; preds = %248, %220
  call void @llvm.dbg.value(metadata i32 10, i64 0, metadata !1058, metadata !762) #10, !dbg !1254
  %250 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1256, !tbaa !770
  %251 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %250, i64 0, i32 5, !dbg !1256
  %252 = load i8*, i8** %251, align 8, !dbg !1256, !tbaa !1067
  %253 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %250, i64 0, i32 6, !dbg !1256
  %254 = load i8*, i8** %253, align 8, !dbg !1256, !tbaa !1070
  %255 = icmp ult i8* %252, %254, !dbg !1256
  br i1 %255, label %258, label %256, !dbg !1256, !prof !1071

; <label>:256:                                    ; preds = %249
  %257 = call i32 @__overflow(%struct._IO_FILE* %250, i32 10) #10, !dbg !1257
  br label %260, !dbg !1257

; <label>:258:                                    ; preds = %249
  %259 = getelementptr inbounds i8, i8* %252, i64 1, !dbg !1258
  store i8* %259, i8** %251, align 8, !dbg !1258, !tbaa !1067
  store i8 10, i8* %252, align 1, !dbg !1258, !tbaa !1076
  br label %260, !dbg !1258

; <label>:260:                                    ; preds = %258, %256, %142
  %261 = add nuw nsw i64 %132, 1, !dbg !1259
  %262 = icmp eq i64 %261, %130, !dbg !1118
  br i1 %262, label %263, label %131, !dbg !1120, !llvm.loop !1261

; <label>:263:                                    ; preds = %260
  br label %264, !dbg !1264

; <label>:264:                                    ; preds = %263, %125, %124
  ret i32 0, !dbg !1264
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

declare void @error(i32, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #7

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #8

declare i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @print_entry(%struct.utmpx*) unnamed_addr #6 !dbg !1265 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.stat, align 8
  %4 = alloca [38 x i8], align 16
  %5 = alloca [33 x i8], align 16
  %6 = alloca [257 x i8], align 16
  tail call void @llvm.dbg.value(metadata %struct.utmpx* %0, i64 0, metadata !1269, metadata !762), !dbg !1325
  %7 = bitcast %struct.stat* %3 to i8*, !dbg !1326
  call void @llvm.lifetime.start(i64 144, i8* nonnull %7) #10, !dbg !1326
  %8 = getelementptr inbounds [38 x i8], [38 x i8]* %4, i64 0, i64 0, !dbg !1327
  call void @llvm.lifetime.start(i64 38, i8* nonnull %8) #10, !dbg !1327
  tail call void @llvm.dbg.declare(metadata [38 x i8]* %4, metadata !1304, metadata !762), !dbg !1328
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !1308, metadata !762), !dbg !1329
  %9 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %0, i64 0, i32 2, i64 0, !dbg !1330
  %10 = load i8, i8* %9, align 4, !dbg !1330, !tbaa !1076
  %11 = icmp eq i8 %10, 47, !dbg !1330
  br i1 %11, label %14, label %12, !dbg !1332

; <label>:12:                                     ; preds = %1
  %13 = getelementptr inbounds [38 x i8], [38 x i8]* %4, i64 0, i64 5, !dbg !1333
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.50, i64 0, i64 0), i64 6, i32 1, i1 false), !dbg !1333
  tail call void @llvm.dbg.value(metadata i8* %13, i64 0, metadata !1308, metadata !762), !dbg !1329
  br label %14, !dbg !1334

; <label>:14:                                     ; preds = %12, %1
  %15 = phi i8* [ %8, %1 ], [ %13, %12 ]
  tail call void @llvm.dbg.value(metadata i8* %15, i64 0, metadata !1308, metadata !762), !dbg !1329
  %16 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %0, i64 0, i32 2, i64 32, !dbg !1335
  tail call void @llvm.dbg.value(metadata i8* %16, i64 0, metadata !1343, metadata !762), !dbg !1345
  tail call void @llvm.dbg.value(metadata i8* %15, i64 0, metadata !1340, metadata !762), !dbg !1346
  tail call void @llvm.dbg.value(metadata i8* %9, i64 0, metadata !1341, metadata !762), !dbg !1347
  %17 = icmp eq i8 %10, 0, !dbg !1348
  br i1 %17, label %30, label %18, !dbg !1350

; <label>:18:                                     ; preds = %14
  br label %19, !dbg !1352

; <label>:19:                                     ; preds = %18, %26
  %20 = phi i8* [ %23, %26 ], [ %9, %18 ]
  %21 = phi i8* [ %24, %26 ], [ %15, %18 ]
  %22 = phi i8 [ %27, %26 ], [ %10, %18 ]
  %23 = getelementptr inbounds i8, i8* %20, i64 1, !dbg !1352
  tail call void @llvm.dbg.value(metadata i8* %23, i64 0, metadata !1341, metadata !762), !dbg !1347
  %24 = getelementptr inbounds i8, i8* %21, i64 1, !dbg !1353
  tail call void @llvm.dbg.value(metadata i8* %24, i64 0, metadata !1340, metadata !762), !dbg !1346
  store i8 %22, i8* %21, align 1, !dbg !1354, !tbaa !1076, !alias.scope !1355, !noalias !1358
  tail call void @llvm.dbg.value(metadata i8* %24, i64 0, metadata !1340, metadata !762), !dbg !1346
  tail call void @llvm.dbg.value(metadata i8* %23, i64 0, metadata !1341, metadata !762), !dbg !1347
  %25 = icmp ult i8* %23, %16, !dbg !1360
  br i1 %25, label %26, label %29, !dbg !1362, !llvm.loop !1363

; <label>:26:                                     ; preds = %19
  %27 = load i8, i8* %23, align 1, !tbaa !1076, !alias.scope !1358, !noalias !1355
  %28 = icmp eq i8 %27, 0, !dbg !1348
  br i1 %28, label %29, label %19, !dbg !1350

; <label>:29:                                     ; preds = %26, %19
  br label %30, !dbg !1366

; <label>:30:                                     ; preds = %29, %14
  %31 = phi i8* [ %15, %14 ], [ %24, %29 ]
  store i8 0, i8* %31, align 1, !dbg !1366, !tbaa !1076, !alias.scope !1355, !noalias !1358
  tail call void @llvm.dbg.value(metadata %struct.stat* %3, i64 0, metadata !1270, metadata !993), !dbg !1367
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !1368, metadata !762) #10, !dbg !1376
  tail call void @llvm.dbg.value(metadata %struct.stat* %3, i64 0, metadata !1375, metadata !762) #10, !dbg !1376
  %32 = call i32 @__xstat(i32 1, i8* nonnull %8, %struct.stat* nonnull %3) #10, !dbg !1379
  %33 = icmp eq i32 %32, 0, !dbg !1380
  br i1 %33, label %34, label %42, !dbg !1381

; <label>:34:                                     ; preds = %30
  %35 = getelementptr inbounds %struct.stat, %struct.stat* %3, i64 0, i32 3, !dbg !1382
  %36 = load i32, i32* %35, align 8, !dbg !1382, !tbaa !1384
  %37 = and i32 %36, 16, !dbg !1387
  %38 = icmp ne i32 %37, 0, !dbg !1388
  %39 = select i1 %38, i32 32, i32 42, !dbg !1388
  %40 = getelementptr inbounds %struct.stat, %struct.stat* %3, i64 0, i32 11, i32 0, !dbg !1389
  %41 = load i64, i64* %40, align 8, !dbg !1389, !tbaa !1390
  call void @llvm.dbg.value(metadata i64 %41, i64 0, metadata !1302, metadata !762), !dbg !1391
  br label %42, !dbg !1392

; <label>:42:                                     ; preds = %30, %34
  %43 = phi i32 [ %39, %34 ], [ 63, %30 ]
  %44 = phi i64 [ %41, %34 ], [ 0, %30 ]
  call void @llvm.dbg.value(metadata i64 %44, i64 0, metadata !1302, metadata !762), !dbg !1391
  %45 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %0, i64 0, i32 4, i64 0, !dbg !1393
  %46 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.51, i64 0, i64 0), i32 32, i8* %45) #10, !dbg !1393
  %47 = load i1, i1* @include_fullname, align 1
  br i1 %47, label %81, label %48, !dbg !1394

; <label>:48:                                     ; preds = %42
  %49 = getelementptr inbounds [33 x i8], [33 x i8]* %5, i64 0, i64 0, !dbg !1395
  call void @llvm.lifetime.start(i64 33, i8* nonnull %49) #10, !dbg !1395
  call void @llvm.dbg.declare(metadata [33 x i8]* %5, metadata !1312, metadata !762), !dbg !1396
  %50 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %0, i64 0, i32 4, i64 32, !dbg !1397
  tail call void @llvm.dbg.value(metadata i8* %50, i64 0, metadata !1343, metadata !762), !dbg !1399
  tail call void @llvm.dbg.value(metadata i8* %49, i64 0, metadata !1340, metadata !762), !dbg !1400
  tail call void @llvm.dbg.value(metadata i8* %45, i64 0, metadata !1341, metadata !762), !dbg !1401
  br label %51

; <label>:51:                                     ; preds = %56, %48
  %52 = phi i8* [ %58, %56 ], [ %49, %48 ]
  %53 = phi i8* [ %57, %56 ], [ %45, %48 ]
  %54 = load i8, i8* %53, align 1, !dbg !1402, !tbaa !1076, !alias.scope !1403, !noalias !1406
  %55 = icmp eq i8 %54, 0, !dbg !1408
  br i1 %55, label %60, label %56, !dbg !1409

; <label>:56:                                     ; preds = %51
  %57 = getelementptr inbounds i8, i8* %53, i64 1, !dbg !1410
  tail call void @llvm.dbg.value(metadata i8* %57, i64 0, metadata !1341, metadata !762), !dbg !1401
  %58 = getelementptr inbounds i8, i8* %52, i64 1, !dbg !1411
  tail call void @llvm.dbg.value(metadata i8* %58, i64 0, metadata !1340, metadata !762), !dbg !1400
  store i8 %54, i8* %52, align 1, !dbg !1412, !tbaa !1076, !alias.scope !1406, !noalias !1403
  tail call void @llvm.dbg.value(metadata i8* %58, i64 0, metadata !1340, metadata !762), !dbg !1400
  tail call void @llvm.dbg.value(metadata i8* %57, i64 0, metadata !1341, metadata !762), !dbg !1401
  %59 = icmp ult i8* %57, %50, !dbg !1413
  br i1 %59, label %51, label %60, !dbg !1414, !llvm.loop !1363

; <label>:60:                                     ; preds = %51, %56
  %61 = phi i8* [ %52, %51 ], [ %58, %56 ]
  store i8 0, i8* %61, align 1, !dbg !1415, !tbaa !1076, !alias.scope !1406, !noalias !1403
  %62 = call %struct.passwd* @getpwnam(i8* nonnull %49), !dbg !1416
  call void @llvm.dbg.value(metadata %struct.passwd* %62, i64 0, metadata !1309, metadata !762), !dbg !1417
  %63 = icmp eq %struct.passwd* %62, null, !dbg !1418
  br i1 %63, label %64, label %67, !dbg !1419

; <label>:64:                                     ; preds = %60
  %65 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.53, i64 0, i64 0), i32 5) #10, !dbg !1420
  %66 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.52, i64 0, i64 0), i8* %65) #10, !dbg !1421
  br label %80, !dbg !1420

; <label>:67:                                     ; preds = %60
  %68 = getelementptr inbounds %struct.passwd, %struct.passwd* %62, i64 0, i32 4, !dbg !1423
  %69 = load i8*, i8** %68, align 8, !dbg !1423, !tbaa !1140
  %70 = call i8* @strchr(i8* %69, i32 44) #10, !dbg !1423
  call void @llvm.dbg.value(metadata i8* %70, i64 0, metadata !1313, metadata !762), !dbg !1424
  %71 = icmp eq i8* %70, null, !dbg !1425
  br i1 %71, label %74, label %72, !dbg !1427

; <label>:72:                                     ; preds = %67
  store i8 0, i8* %70, align 1, !dbg !1428, !tbaa !1076
  %73 = load i8*, i8** %68, align 8, !tbaa !1140
  br label %74, !dbg !1429

; <label>:74:                                     ; preds = %67, %72
  %75 = phi i8* [ %69, %67 ], [ %73, %72 ], !dbg !1430
  %76 = getelementptr inbounds %struct.passwd, %struct.passwd* %62, i64 0, i32 0, !dbg !1431
  %77 = load i8*, i8** %76, align 8, !dbg !1431, !tbaa !1150
  %78 = call fastcc i8* @create_fullname(i8* %75, i8* %77), !dbg !1432
  call void @llvm.dbg.value(metadata i8* %78, i64 0, metadata !1316, metadata !762), !dbg !1433
  %79 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.54, i64 0, i64 0), i8* %78) #10, !dbg !1434
  call void @free(i8* %78) #10, !dbg !1435
  br label %80

; <label>:80:                                     ; preds = %74, %64
  call void @llvm.lifetime.end(i64 33, i8* nonnull %49) #10, !dbg !1436
  br label %81, !dbg !1437

; <label>:81:                                     ; preds = %42, %80
  %82 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.55, i64 0, i64 0), i32 %43, i32 32, i8* %9) #10, !dbg !1438
  %83 = load i1, i1* @include_idle, align 1
  br i1 %83, label %114, label %84, !dbg !1439

; <label>:84:                                     ; preds = %81
  %85 = icmp eq i64 %44, 0, !dbg !1440
  br i1 %85, label %111, label %86, !dbg !1444

; <label>:86:                                     ; preds = %84
  call void @llvm.dbg.value(metadata i64 %44, i64 0, metadata !117, metadata !762) #10, !dbg !1445
  %87 = load i64, i64* @idle_string.now, align 8, !dbg !1447, !tbaa !1005
  %88 = icmp eq i64 %87, 0, !dbg !1449
  br i1 %88, label %89, label %92, !dbg !1450

; <label>:89:                                     ; preds = %86
  %90 = call i64 @time(i64* nonnull @idle_string.now) #10, !dbg !1451
  %91 = load i64, i64* @idle_string.now, align 8, !tbaa !1005
  br label %92, !dbg !1451

; <label>:92:                                     ; preds = %89, %86
  %93 = phi i64 [ %91, %89 ], [ %87, %86 ], !dbg !1452
  %94 = sub nsw i64 %93, %44, !dbg !1453
  call void @llvm.dbg.value(metadata i64 %94, i64 0, metadata !118, metadata !762) #10, !dbg !1454
  %95 = icmp slt i64 %94, 60, !dbg !1455
  br i1 %95, label %108, label %96, !dbg !1457

; <label>:96:                                     ; preds = %92
  %97 = icmp slt i64 %94, 86400, !dbg !1458
  br i1 %97, label %98, label %105, !dbg !1459

; <label>:98:                                     ; preds = %96
  %99 = udiv i64 %94, 3600
  %100 = trunc i64 %99 to i32, !dbg !1460
  call void @llvm.dbg.value(metadata i32 %100, i64 0, metadata !119, metadata !762) #10, !dbg !1461
  %101 = urem i64 %94, 3600
  %102 = udiv i64 %101, 60, !dbg !1462
  %103 = trunc i64 %102 to i32, !dbg !1463
  call void @llvm.dbg.value(metadata i32 %103, i64 0, metadata !122, metadata !762) #10, !dbg !1464
  %104 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @idle_string.buf, i64 0, i64 0), i32 1, i64 22, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.59, i64 0, i64 0), i32 %100, i32 %103) #10, !dbg !1465
  br label %108, !dbg !1466

; <label>:105:                                    ; preds = %96
  %106 = udiv i64 %94, 86400
  call void @llvm.dbg.value(metadata i64 %106, i64 0, metadata !123, metadata !762) #10, !dbg !1467
  %107 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @idle_string.buf, i64 0, i64 0), i32 1, i64 22, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.60, i64 0, i64 0), i64 %106) #10, !dbg !1468
  br label %108

; <label>:108:                                    ; preds = %92, %98, %105
  %109 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.58, i64 0, i64 0), %92 ], [ getelementptr inbounds ([22 x i8], [22 x i8]* @idle_string.buf, i64 0, i64 0), %105 ], [ getelementptr inbounds ([22 x i8], [22 x i8]* @idle_string.buf, i64 0, i64 0), %98 ]
  %110 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.44, i64 0, i64 0), i8* nonnull %109) #10, !dbg !1469
  br label %114, !dbg !1471

; <label>:111:                                    ; preds = %84
  %112 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.56, i64 0, i64 0), i32 5) #10, !dbg !1472
  %113 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.44, i64 0, i64 0), i8* %112) #10, !dbg !1473
  br label %114

; <label>:114:                                    ; preds = %81, %108, %111
  call void @llvm.dbg.value(metadata %struct.utmpx* %0, i64 0, metadata !177, metadata !762) #10, !dbg !1474
  %115 = bitcast i64* %2 to i8*, !dbg !1476
  call void @llvm.lifetime.start(i64 8, i8* nonnull %115) #10, !dbg !1476
  %116 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %0, i64 0, i32 8, i32 0, !dbg !1477
  %117 = load i32, i32* %116, align 4, !dbg !1477, !tbaa !1478
  %118 = sext i32 %117 to i64, !dbg !1477
  call void @llvm.dbg.value(metadata i64 %118, i64 0, metadata !178, metadata !762) #10, !dbg !1479
  store i64 %118, i64* %2, align 8, !dbg !1479, !tbaa !1005
  call void @llvm.dbg.value(metadata i64* %2, i64 0, metadata !178, metadata !993) #10, !dbg !1479
  %119 = call %struct.tm* @localtime(i64* nonnull %2) #10, !dbg !1480
  call void @llvm.dbg.value(metadata %struct.tm* %119, i64 0, metadata !179, metadata !762) #10, !dbg !1481
  %120 = icmp eq %struct.tm* %119, null, !dbg !1482
  br i1 %120, label %124, label %121, !dbg !1484

; <label>:121:                                    ; preds = %114
  %122 = load i8*, i8** @time_format, align 8, !dbg !1485, !tbaa !770
  %123 = call i64 @strftime(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @time_string.buf, i64 0, i64 0), i64 33, i8* %122, %struct.tm* nonnull %119) #10, !dbg !1487
  br label %127, !dbg !1488

; <label>:124:                                    ; preds = %114
  %125 = load i64, i64* %2, align 8, !dbg !1489, !tbaa !1005
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !178, metadata !762) #10, !dbg !1479
  %126 = call i8* @imaxtostr(i64 %125, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @time_string.buf, i64 0, i64 0)) #10, !dbg !1490
  br label %127, !dbg !1498

; <label>:127:                                    ; preds = %121, %124
  %128 = phi i8* [ getelementptr inbounds ([33 x i8], [33 x i8]* @time_string.buf, i64 0, i64 0), %121 ], [ %126, %124 ]
  call void @llvm.lifetime.end(i64 8, i8* nonnull %115) #10, !dbg !1499
  %129 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.48, i64 0, i64 0), i8* %128) #10, !dbg !1500
  %130 = load i1, i1* @include_where, align 1
  br i1 %130, label %172, label %131, !dbg !1502

; <label>:131:                                    ; preds = %127
  %132 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %0, i64 0, i32 5, i64 0, !dbg !1503
  %133 = load i8, i8* %132, align 4, !dbg !1503, !tbaa !1076
  %134 = icmp eq i8 %133, 0, !dbg !1503
  br i1 %134, label %172, label %135, !dbg !1505

; <label>:135:                                    ; preds = %131
  %136 = getelementptr inbounds [257 x i8], [257 x i8]* %6, i64 0, i64 0, !dbg !1506
  call void @llvm.lifetime.start(i64 257, i8* nonnull %136) #10, !dbg !1506
  call void @llvm.dbg.declare(metadata [257 x i8]* %6, metadata !1317, metadata !762), !dbg !1507
  call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1323, metadata !762), !dbg !1508
  call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1324, metadata !762), !dbg !1509
  %137 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %0, i64 0, i32 5, i64 256, !dbg !1510
  tail call void @llvm.dbg.value(metadata i8* %137, i64 0, metadata !1343, metadata !762), !dbg !1512
  tail call void @llvm.dbg.value(metadata i8* %136, i64 0, metadata !1340, metadata !762), !dbg !1513
  tail call void @llvm.dbg.value(metadata i8* %132, i64 0, metadata !1341, metadata !762), !dbg !1514
  br label %138, !dbg !1515

; <label>:138:                                    ; preds = %135, %145
  %139 = phi i8* [ %132, %135 ], [ %142, %145 ]
  %140 = phi i8* [ %136, %135 ], [ %143, %145 ]
  %141 = phi i8 [ %133, %135 ], [ %146, %145 ]
  %142 = getelementptr inbounds i8, i8* %139, i64 1, !dbg !1516
  tail call void @llvm.dbg.value(metadata i8* %142, i64 0, metadata !1341, metadata !762), !dbg !1514
  %143 = getelementptr inbounds i8, i8* %140, i64 1, !dbg !1517
  tail call void @llvm.dbg.value(metadata i8* %143, i64 0, metadata !1340, metadata !762), !dbg !1513
  store i8 %141, i8* %140, align 1, !dbg !1518, !tbaa !1076, !alias.scope !1519, !noalias !1522
  tail call void @llvm.dbg.value(metadata i8* %143, i64 0, metadata !1340, metadata !762), !dbg !1513
  tail call void @llvm.dbg.value(metadata i8* %142, i64 0, metadata !1341, metadata !762), !dbg !1514
  %144 = icmp ult i8* %142, %137, !dbg !1524
  br i1 %144, label %145, label %148, !dbg !1525, !llvm.loop !1363

; <label>:145:                                    ; preds = %138
  %146 = load i8, i8* %142, align 1, !tbaa !1076, !alias.scope !1522, !noalias !1519
  %147 = icmp eq i8 %146, 0, !dbg !1526
  br i1 %147, label %148, label %138, !dbg !1515

; <label>:148:                                    ; preds = %138, %145
  store i8 0, i8* %143, align 1, !dbg !1527, !tbaa !1076, !alias.scope !1519, !noalias !1522
  %149 = call i8* @strchr(i8* nonnull %136, i32 58) #10, !dbg !1528
  call void @llvm.dbg.value(metadata i8* %149, i64 0, metadata !1324, metadata !762), !dbg !1509
  %150 = icmp eq i8* %149, null, !dbg !1529
  br i1 %150, label %153, label %151, !dbg !1531

; <label>:151:                                    ; preds = %148
  %152 = getelementptr inbounds i8, i8* %149, i64 1, !dbg !1532
  call void @llvm.dbg.value(metadata i8* %152, i64 0, metadata !1324, metadata !762), !dbg !1509
  store i8 0, i8* %149, align 1, !dbg !1533, !tbaa !1076
  br label %153, !dbg !1534

; <label>:153:                                    ; preds = %148, %151
  %154 = phi i8* [ %152, %151 ], [ null, %148 ]
  call void @llvm.dbg.value(metadata i8* %154, i64 0, metadata !1324, metadata !762), !dbg !1509
  %155 = load i8, i8* %136, align 16, !dbg !1535, !tbaa !1076
  %156 = icmp eq i8 %155, 0, !dbg !1535
  br i1 %156, label %159, label %157, !dbg !1537

; <label>:157:                                    ; preds = %153
  %158 = call i8* @canon_host(i8* nonnull %136) #10, !dbg !1538
  call void @llvm.dbg.value(metadata i8* %158, i64 0, metadata !1323, metadata !762), !dbg !1508
  br label %159, !dbg !1539

; <label>:159:                                    ; preds = %153, %157
  %160 = phi i8* [ %158, %157 ], [ null, %153 ]
  call void @llvm.dbg.value(metadata i8* %160, i64 0, metadata !1323, metadata !762), !dbg !1508
  %161 = icmp eq i8* %160, null, !dbg !1540
  call void @llvm.dbg.value(metadata i8* %136, i64 0, metadata !1323, metadata !762), !dbg !1508
  %162 = select i1 %161, i8* %136, i8* %160, !dbg !1542
  call void @llvm.dbg.value(metadata i8* %162, i64 0, metadata !1323, metadata !762), !dbg !1508
  %163 = icmp eq i8* %154, null, !dbg !1543
  br i1 %163, label %166, label %164, !dbg !1545

; <label>:164:                                    ; preds = %159
  %165 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.57, i64 0, i64 0), i8* %162, i8* nonnull %154) #10, !dbg !1546
  br label %168, !dbg !1546

; <label>:166:                                    ; preds = %159
  %167 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.48, i64 0, i64 0), i8* %162) #10, !dbg !1547
  br label %168

; <label>:168:                                    ; preds = %166, %164
  %169 = icmp eq i8* %162, %136, !dbg !1548
  br i1 %169, label %171, label %170, !dbg !1550

; <label>:170:                                    ; preds = %168
  call void @free(i8* %162) #10, !dbg !1551
  br label %171, !dbg !1551

; <label>:171:                                    ; preds = %168, %170
  call void @llvm.lifetime.end(i64 257, i8* nonnull %136) #10, !dbg !1552
  br label %172, !dbg !1553

; <label>:172:                                    ; preds = %131, %127, %171
  call void @llvm.dbg.value(metadata i32 10, i64 0, metadata !1058, metadata !762) #10, !dbg !1554
  %173 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1556, !tbaa !770
  %174 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %173, i64 0, i32 5, !dbg !1556
  %175 = load i8*, i8** %174, align 8, !dbg !1556, !tbaa !1067
  %176 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %173, i64 0, i32 6, !dbg !1556
  %177 = load i8*, i8** %176, align 8, !dbg !1556, !tbaa !1070
  %178 = icmp ult i8* %175, %177, !dbg !1556
  br i1 %178, label %181, label %179, !dbg !1556, !prof !1071

; <label>:179:                                    ; preds = %172
  %180 = call i32 @__overflow(%struct._IO_FILE* %173, i32 10) #10, !dbg !1557
  br label %183, !dbg !1557

; <label>:181:                                    ; preds = %172
  %182 = getelementptr inbounds i8, i8* %175, i64 1, !dbg !1558
  store i8* %182, i8** %174, align 8, !dbg !1558, !tbaa !1067
  store i8 10, i8* %175, align 1, !dbg !1558, !tbaa !1076
  br label %183, !dbg !1558

; <label>:183:                                    ; preds = %179, %181
  call void @llvm.lifetime.end(i64 38, i8* nonnull %8) #10, !dbg !1559
  call void @llvm.lifetime.end(i64 144, i8* nonnull %7) #10, !dbg !1559
  ret void, !dbg !1559
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #7

; Function Attrs: nounwind
declare %struct.passwd* @getpwnam(i8* nocapture readonly) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noalias i8* @create_fullname(i8* nocapture readonly, i8* nocapture readonly) unnamed_addr #6 !dbg !1560 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1564, metadata !762), !dbg !1581
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1565, metadata !762), !dbg !1582
  %3 = tail call i64 @strlen(i8* %0) #13, !dbg !1583
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !1566, metadata !762), !dbg !1584
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1585, metadata !762), !dbg !1591
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1590, metadata !762), !dbg !1593
  br label %4, !dbg !1594, !llvm.loop !1595

; <label>:4:                                      ; preds = %4, %2
  %5 = phi i8* [ %0, %2 ], [ %11, %4 ]
  %6 = phi i64 [ 0, %2 ], [ %10, %4 ]
  tail call void @llvm.dbg.value(metadata i64 %6, i64 0, metadata !1590, metadata !762), !dbg !1593
  tail call void @llvm.dbg.value(metadata i8* %5, i64 0, metadata !1585, metadata !762), !dbg !1591
  %7 = load i8, i8* %5, align 1, !dbg !1598, !tbaa !1076
  %8 = icmp eq i8 %7, 38, !dbg !1601
  %9 = zext i1 %8 to i64, !dbg !1602
  %10 = add i64 %9, %6, !dbg !1602
  tail call void @llvm.dbg.value(metadata i64 %10, i64 0, metadata !1590, metadata !762), !dbg !1593
  %11 = getelementptr inbounds i8, i8* %5, i64 1, !dbg !1603
  tail call void @llvm.dbg.value(metadata i8* %11, i64 0, metadata !1585, metadata !762), !dbg !1591
  %12 = icmp eq i8 %7, 0, !dbg !1605
  br i1 %12, label %13, label %4, !dbg !1605, !llvm.loop !1595

; <label>:13:                                     ; preds = %4
  %14 = add i64 %3, 1, !dbg !1607
  tail call void @llvm.dbg.value(metadata i64 %10, i64 0, metadata !1569, metadata !762), !dbg !1608
  %15 = icmp eq i64 %10, 0, !dbg !1609
  br i1 %15, label %26, label %16, !dbg !1610

; <label>:16:                                     ; preds = %13
  %17 = tail call i64 @strlen(i8* %1) #13, !dbg !1611
  tail call void @llvm.dbg.value(metadata i64 %17, i64 0, metadata !1570, metadata !762), !dbg !1612
  %18 = mul i64 %17, %10, !dbg !1613
  tail call void @llvm.dbg.value(metadata i64 %18, i64 0, metadata !1573, metadata !762), !dbg !1614
  %19 = sub i64 %18, %10, !dbg !1615
  %20 = add i64 %19, %14, !dbg !1616
  tail call void @llvm.dbg.value(metadata i64 %20, i64 0, metadata !1566, metadata !762), !dbg !1584
  %21 = udiv i64 9223372036854775807, %10, !dbg !1617
  %22 = icmp ult i64 %21, %17, !dbg !1617
  %23 = icmp ult i64 %20, %18, !dbg !1619
  %24 = or i1 %22, %23, !dbg !1621
  br i1 %24, label %25, label %26, !dbg !1621

; <label>:25:                                     ; preds = %16
  tail call void @xalloc_die() #14, !dbg !1622
  unreachable, !dbg !1622

; <label>:26:                                     ; preds = %16, %13
  %27 = phi i64 [ %14, %13 ], [ %20, %16 ]
  tail call void @llvm.dbg.value(metadata i64 %27, i64 0, metadata !1566, metadata !762), !dbg !1584
  %28 = tail call noalias i8* @xmalloc(i64 %27) #10, !dbg !1623
  tail call void @llvm.dbg.value(metadata i8* %28, i64 0, metadata !1567, metadata !762), !dbg !1624
  tail call void @llvm.dbg.value(metadata i8* %28, i64 0, metadata !1568, metadata !762), !dbg !1625
  %29 = getelementptr inbounds i8, i8* %1, i64 1
  br label %30, !dbg !1626

; <label>:30:                                     ; preds = %68, %26
  %31 = phi i8* [ %28, %26 ], [ %69, %68 ]
  %32 = phi i8* [ %0, %26 ], [ %70, %68 ]
  tail call void @llvm.dbg.value(metadata i8* %32, i64 0, metadata !1564, metadata !762), !dbg !1581
  tail call void @llvm.dbg.value(metadata i8* %31, i64 0, metadata !1568, metadata !762), !dbg !1625
  %33 = load i8, i8* %32, align 1, !dbg !1627, !tbaa !1076
  switch i8 %33, label %65 [
    i8 0, label %71
    i8 38, label %34
  ], !dbg !1629

; <label>:34:                                     ; preds = %30
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1574, metadata !762), !dbg !1630
  %35 = tail call i16** @__ctype_b_loc() #1, !dbg !1631
  %36 = load i16*, i16** %35, align 8, !dbg !1631, !tbaa !770
  %37 = load i8, i8* %1, align 1, !dbg !1631, !tbaa !1076
  %38 = zext i8 %37 to i64, !dbg !1631
  %39 = getelementptr inbounds i16, i16* %36, i64 %38, !dbg !1631
  %40 = load i16, i16* %39, align 2, !dbg !1631, !tbaa !1632
  %41 = and i16 %40, 512, !dbg !1631
  %42 = icmp eq i16 %41, 0, !dbg !1631
  br i1 %42, label %51, label %43, !dbg !1633

; <label>:43:                                     ; preds = %34
  %44 = tail call i32** @__ctype_toupper_loc() #1, !dbg !1634
  %45 = load i32*, i32** %44, align 8, !dbg !1634, !tbaa !770
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !1574, metadata !762), !dbg !1630
  %46 = getelementptr inbounds i32, i32* %45, i64 %38, !dbg !1634
  %47 = load i32, i32* %46, align 4, !dbg !1634, !tbaa !965
  tail call void @llvm.dbg.value(metadata i32 %47, i64 0, metadata !1578, metadata !762), !dbg !1636
  %48 = trunc i32 %47 to i8, !dbg !1637
  %49 = getelementptr inbounds i8, i8* %31, i64 1, !dbg !1638
  tail call void @llvm.dbg.value(metadata i8* %49, i64 0, metadata !1568, metadata !762), !dbg !1625
  store i8 %48, i8* %31, align 1, !dbg !1639, !tbaa !1076
  %50 = load i8, i8* %29, align 1, !tbaa !1076
  br label %51, !dbg !1640

; <label>:51:                                     ; preds = %43, %34
  %52 = phi i8 [ %37, %34 ], [ %50, %43 ], !dbg !1641
  %53 = phi i8* [ %31, %34 ], [ %49, %43 ]
  %54 = phi i8* [ %1, %34 ], [ %29, %43 ]
  tail call void @llvm.dbg.value(metadata i8* %54, i64 0, metadata !1574, metadata !762), !dbg !1630
  tail call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !1568, metadata !762), !dbg !1625
  %55 = icmp eq i8 %52, 0, !dbg !1643
  br i1 %55, label %68, label %56, !dbg !1643

; <label>:56:                                     ; preds = %51
  br label %57, !dbg !1644

; <label>:57:                                     ; preds = %56, %57
  %58 = phi i8 [ %63, %57 ], [ %52, %56 ]
  %59 = phi i8* [ %61, %57 ], [ %54, %56 ]
  %60 = phi i8* [ %62, %57 ], [ %53, %56 ]
  %61 = getelementptr inbounds i8, i8* %59, i64 1, !dbg !1644
  tail call void @llvm.dbg.value(metadata i8* %61, i64 0, metadata !1574, metadata !762), !dbg !1630
  %62 = getelementptr inbounds i8, i8* %60, i64 1, !dbg !1645
  tail call void @llvm.dbg.value(metadata i8* %62, i64 0, metadata !1568, metadata !762), !dbg !1625
  store i8 %58, i8* %60, align 1, !dbg !1646, !tbaa !1076
  tail call void @llvm.dbg.value(metadata i8* %61, i64 0, metadata !1574, metadata !762), !dbg !1630
  tail call void @llvm.dbg.value(metadata i8* %62, i64 0, metadata !1568, metadata !762), !dbg !1625
  %63 = load i8, i8* %61, align 1, !dbg !1641, !tbaa !1076
  %64 = icmp eq i8 %63, 0, !dbg !1643
  br i1 %64, label %67, label %57, !dbg !1643, !llvm.loop !1647

; <label>:65:                                     ; preds = %30
  %66 = getelementptr inbounds i8, i8* %31, i64 1, !dbg !1649
  tail call void @llvm.dbg.value(metadata i8* %66, i64 0, metadata !1568, metadata !762), !dbg !1625
  store i8 %33, i8* %31, align 1, !dbg !1651, !tbaa !1076
  br label %68

; <label>:67:                                     ; preds = %57
  br label %68, !dbg !1625

; <label>:68:                                     ; preds = %67, %51, %65
  %69 = phi i8* [ %66, %65 ], [ %53, %51 ], [ %62, %67 ]
  tail call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !1568, metadata !762), !dbg !1625
  %70 = getelementptr inbounds i8, i8* %32, i64 1, !dbg !1652
  tail call void @llvm.dbg.value(metadata i8* %70, i64 0, metadata !1564, metadata !762), !dbg !1581
  br label %30, !dbg !1653, !llvm.loop !1655

; <label>:71:                                     ; preds = %30
  store i8 0, i8* %31, align 1, !dbg !1657, !tbaa !1076
  ret i8* %28, !dbg !1658
}

; Function Attrs: nounwind
declare void @free(i8* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i64 @strlen(i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind readnone
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1) #1

; Function Attrs: nounwind
declare i8* @__stpcpy_chk(i8*, i8*, i64) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #7

; Function Attrs: nounwind
declare noalias %struct._IO_FILE* @fopen(i8* nocapture readonly, i8* nocapture readonly) local_unnamed_addr #2

declare i64 @fread_unlocked(i8*, i64, i64, %struct._IO_FILE*) local_unnamed_addr #3

declare i64 @fwrite_unlocked(i8*, i64, i64, %struct._IO_FILE*) local_unnamed_addr #3

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() local_unnamed_addr #8

; Function Attrs: nounwind readnone
declare i32** @__ctype_toupper_loc() local_unnamed_addr #8

; Function Attrs: nounwind
declare i32 @__xstat(i32, i8*, %struct.stat*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i64 @time(i64*) local_unnamed_addr #2

declare i32 @__sprintf_chk(i8*, i32, i64, i8*, ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare %struct.tm* @localtime(i64*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i64 @strftime(i8*, i64, i8*, %struct.tm*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @canon_host(i8*) local_unnamed_addr #6 !dbg !1659 {
  %2 = alloca %struct.addrinfo*, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1663, metadata !762), !dbg !1664
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !228, metadata !762) #10, !dbg !1665
  tail call void @llvm.dbg.value(metadata i32* @last_cherror, i64 0, metadata !229, metadata !762) #10, !dbg !1667
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !230, metadata !762) #10, !dbg !1668
  %3 = bitcast %struct.addrinfo** %2 to i8*, !dbg !1669
  call void @llvm.lifetime.start(i64 8, i8* nonnull %3) #10, !dbg !1669
  tail call void @llvm.dbg.value(metadata %struct.addrinfo* null, i64 0, metadata !231, metadata !762) #10, !dbg !1670
  store %struct.addrinfo* null, %struct.addrinfo** %2, align 8, !dbg !1670, !tbaa !770
  store i32 2, i32* getelementptr inbounds (%struct.addrinfo, %struct.addrinfo* @canon_host_r.hints, i64 0, i32 0), align 8, !dbg !1671, !tbaa !1672
  tail call void @llvm.dbg.value(metadata %struct.addrinfo** %2, i64 0, metadata !231, metadata !993) #10, !dbg !1670
  %4 = call i32 @getaddrinfo(i8* %0, i8* null, %struct.addrinfo* nonnull @canon_host_r.hints, %struct.addrinfo** nonnull %2) #10, !dbg !1674
  call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !258, metadata !762) #10, !dbg !1675
  %5 = icmp eq i32 %4, 0, !dbg !1676
  br i1 %5, label %6, label %17, !dbg !1678

; <label>:6:                                      ; preds = %1
  %7 = load %struct.addrinfo*, %struct.addrinfo** %2, align 8, !dbg !1679, !tbaa !770
  call void @llvm.dbg.value(metadata %struct.addrinfo* %7, i64 0, metadata !231, metadata !762) #10, !dbg !1670
  %8 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %7, i64 0, i32 6, !dbg !1679
  %9 = load i8*, i8** %8, align 8, !dbg !1679, !tbaa !1681
  %10 = icmp eq i8* %9, null, !dbg !1679
  %11 = select i1 %10, i8* %0, i8* %9, !dbg !1682
  %12 = call noalias i8* @__strdup(i8* %11) #10, !dbg !1684
  call void @llvm.dbg.value(metadata i8* %12, i64 0, metadata !230, metadata !762) #10, !dbg !1668
  %13 = icmp eq i8* %12, null, !dbg !1686
  br i1 %13, label %14, label %15, !dbg !1688

; <label>:14:                                     ; preds = %6
  store i32 -10, i32* @last_cherror, align 4, !dbg !1689, !tbaa !965
  br label %15, !dbg !1690

; <label>:15:                                     ; preds = %14, %6
  %16 = load %struct.addrinfo*, %struct.addrinfo** %2, align 8, !dbg !1691, !tbaa !770
  call void @llvm.dbg.value(metadata %struct.addrinfo* %16, i64 0, metadata !231, metadata !762) #10, !dbg !1670
  call void @freeaddrinfo(%struct.addrinfo* %16) #10, !dbg !1692
  br label %18, !dbg !1693

; <label>:17:                                     ; preds = %1
  store i32 %4, i32* @last_cherror, align 4, !dbg !1694, !tbaa !965
  br label %18, !dbg !1696

; <label>:18:                                     ; preds = %15, %17
  %19 = phi i8* [ null, %17 ], [ %12, %15 ]
  call void @llvm.dbg.value(metadata i8* %19, i64 0, metadata !230, metadata !762) #10, !dbg !1668
  call void @llvm.lifetime.end(i64 8, i8* nonnull %3) #10, !dbg !1697
  ret i8* %19, !dbg !1698
}

declare i32 @getaddrinfo(i8*, i8*, %struct.addrinfo*, %struct.addrinfo**) local_unnamed_addr #3

; Function Attrs: nounwind
declare noalias i8* @__strdup(i8* nocapture readonly) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @freeaddrinfo(%struct.addrinfo*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @canon_host_r(i8*, i32*) local_unnamed_addr #6 !dbg !223 {
  %3 = alloca %struct.addrinfo*, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !228, metadata !762), !dbg !1699
  tail call void @llvm.dbg.value(metadata i32* %1, i64 0, metadata !229, metadata !762), !dbg !1700
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !230, metadata !762), !dbg !1701
  %4 = bitcast %struct.addrinfo** %3 to i8*, !dbg !1702
  call void @llvm.lifetime.start(i64 8, i8* nonnull %4) #10, !dbg !1702
  tail call void @llvm.dbg.value(metadata %struct.addrinfo* null, i64 0, metadata !231, metadata !762), !dbg !1703
  store %struct.addrinfo* null, %struct.addrinfo** %3, align 8, !dbg !1703, !tbaa !770
  store i32 2, i32* getelementptr inbounds (%struct.addrinfo, %struct.addrinfo* @canon_host_r.hints, i64 0, i32 0), align 8, !dbg !1704, !tbaa !1672
  tail call void @llvm.dbg.value(metadata %struct.addrinfo** %3, i64 0, metadata !231, metadata !993), !dbg !1703
  %5 = call i32 @getaddrinfo(i8* %0, i8* null, %struct.addrinfo* nonnull @canon_host_r.hints, %struct.addrinfo** nonnull %3) #10, !dbg !1705
  call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !258, metadata !762), !dbg !1706
  %6 = icmp eq i32 %5, 0, !dbg !1707
  br i1 %6, label %7, label %20, !dbg !1708

; <label>:7:                                      ; preds = %2
  %8 = load %struct.addrinfo*, %struct.addrinfo** %3, align 8, !dbg !1709, !tbaa !770
  call void @llvm.dbg.value(metadata %struct.addrinfo* %8, i64 0, metadata !231, metadata !762), !dbg !1703
  %9 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %8, i64 0, i32 6, !dbg !1709
  %10 = load i8*, i8** %9, align 8, !dbg !1709, !tbaa !1681
  %11 = icmp eq i8* %10, null, !dbg !1709
  %12 = select i1 %11, i8* %0, i8* %10, !dbg !1710
  %13 = call noalias i8* @__strdup(i8* %12) #10, !dbg !1711
  call void @llvm.dbg.value(metadata i8* %13, i64 0, metadata !230, metadata !762), !dbg !1701
  %14 = icmp eq i8* %13, null, !dbg !1712
  %15 = icmp ne i32* %1, null, !dbg !1713
  %16 = and i1 %15, %14, !dbg !1715
  br i1 %16, label %17, label %18, !dbg !1715

; <label>:17:                                     ; preds = %7
  store i32 -10, i32* %1, align 4, !dbg !1716, !tbaa !965
  br label %18, !dbg !1717

; <label>:18:                                     ; preds = %7, %17
  %19 = load %struct.addrinfo*, %struct.addrinfo** %3, align 8, !dbg !1718, !tbaa !770
  call void @llvm.dbg.value(metadata %struct.addrinfo* %19, i64 0, metadata !231, metadata !762), !dbg !1703
  call void @freeaddrinfo(%struct.addrinfo* %19) #10, !dbg !1719
  br label %23, !dbg !1720

; <label>:20:                                     ; preds = %2
  %21 = icmp eq i32* %1, null, !dbg !1721
  br i1 %21, label %23, label %22, !dbg !1722

; <label>:22:                                     ; preds = %20
  store i32 %5, i32* %1, align 4, !dbg !1723, !tbaa !965
  br label %23, !dbg !1724

; <label>:23:                                     ; preds = %20, %22, %18
  %24 = phi i8* [ null, %22 ], [ null, %20 ], [ %13, %18 ]
  call void @llvm.dbg.value(metadata i8* %24, i64 0, metadata !230, metadata !762), !dbg !1701
  call void @llvm.lifetime.end(i64 8, i8* nonnull %4) #10, !dbg !1725
  ret i8* %24, !dbg !1726
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @ch_strerror() local_unnamed_addr #6 !dbg !1727 {
  %1 = load i32, i32* @last_cherror, align 4, !dbg !1730, !tbaa !965
  %2 = tail call i8* @gai_strerror(i32 %1) #10, !dbg !1731
  ret i8* %2, !dbg !1732
}

; Function Attrs: nounwind
declare i8* @gai_strerror(i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_file_name(i8*) local_unnamed_addr #6 !dbg !1733 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1735, metadata !762), !dbg !1736
  store i8* %0, i8** @file_name, align 8, !dbg !1737, !tbaa !770
  ret void, !dbg !1738
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_ignore_EPIPE(i1 zeroext) local_unnamed_addr #6 !dbg !1739 {
  %2 = zext i1 %0 to i8
  tail call void @llvm.dbg.value(metadata i1 %0, i64 0, metadata !1743, metadata !1744), !dbg !1745
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !1746, !tbaa !1747
  ret void, !dbg !1749
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout() #6 !dbg !1750 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1755, !tbaa !770
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #10, !dbg !1756
  %3 = icmp eq i32 %2, 0, !dbg !1757
  br i1 %3, label %21, label %4, !dbg !1758

; <label>:4:                                      ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !1759, !tbaa !1747, !range !1761
  %6 = icmp eq i8 %5, 0, !dbg !1759
  %7 = tail call i32* @__errno_location() #1, !dbg !1762
  br i1 %6, label %11, label %8, !dbg !1764

; <label>:8:                                      ; preds = %4
  %9 = load i32, i32* %7, align 4, !dbg !1765, !tbaa !965
  %10 = icmp eq i32 %9, 32, !dbg !1767
  br i1 %10, label %21, label %11, !dbg !1768

; <label>:11:                                     ; preds = %4, %8
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.23, i64 0, i64 0), i32 5) #10, !dbg !1770
  tail call void @llvm.dbg.value(metadata i8* %12, i64 0, metadata !1752, metadata !762), !dbg !1771
  %13 = load i8*, i8** @file_name, align 8, !dbg !1772, !tbaa !770
  %14 = icmp eq i8* %13, null, !dbg !1772
  %15 = load i32, i32* %7, align 4, !tbaa !965
  br i1 %14, label %18, label %16, !dbg !1773

; <label>:16:                                     ; preds = %11
  %17 = tail call i8* @quotearg_colon(i8* nonnull %13) #10, !dbg !1774
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.24, i64 0, i64 0), i8* %17, i8* %12) #10, !dbg !1776
  br label %19, !dbg !1778

; <label>:18:                                     ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.25, i64 0, i64 0), i8* %12) #10, !dbg !1779
  br label %19

; <label>:19:                                     ; preds = %18, %16
  %20 = load volatile i32, i32* @exit_failure, align 4, !dbg !1780, !tbaa !965
  tail call void @_exit(i32 %20) #14, !dbg !1781
  unreachable, !dbg !1781

; <label>:21:                                     ; preds = %0, %8
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1782, !tbaa !770
  %23 = tail call i32 @close_stream(%struct._IO_FILE* %22) #10, !dbg !1784
  %24 = icmp eq i32 %23, 0, !dbg !1785
  br i1 %24, label %27, label %25, !dbg !1786

; <label>:25:                                     ; preds = %21
  %26 = load volatile i32, i32* @exit_failure, align 4, !dbg !1787, !tbaa !965
  tail call void @_exit(i32 %26) #14, !dbg !1788
  unreachable, !dbg !1788

; <label>:27:                                     ; preds = %21
  ret void, !dbg !1789
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #9

; Function Attrs: nounwind sspstrong uwtable
define zeroext i1 @hard_locale(i32) local_unnamed_addr #6 !dbg !1790 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !1795, metadata !762), !dbg !1815
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1796, metadata !762), !dbg !1816
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #10, !dbg !1817
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1797, metadata !762), !dbg !1818
  %3 = icmp eq i8* %2, null, !dbg !1819
  br i1 %3, label %15, label %4, !dbg !1820

; <label>:4:                                      ; preds = %1
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1805, metadata !762), !dbg !1821
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1806, metadata !762), !dbg !1822
  %5 = load i8, i8* %2, align 1, !dbg !1823, !tbaa !1076
  %6 = icmp eq i8 %5, 67, !dbg !1825
  br i1 %6, label %7, label %11, !dbg !1828

; <label>:7:                                      ; preds = %4
  %8 = getelementptr inbounds i8, i8* %2, i64 1, !dbg !1830
  %9 = load i8, i8* %8, align 1, !dbg !1830, !tbaa !1076
  %10 = icmp eq i8 %9, 0, !dbg !1833
  br i1 %10, label %14, label %11, !dbg !1835

; <label>:11:                                     ; preds = %4, %7
  tail call void @llvm.dbg.value(metadata i64 5, i64 0, metadata !1811, metadata !762), !dbg !1837
  %12 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.30, i64 0, i64 0)) #10, !dbg !1838
  %13 = icmp eq i32 %12, 0, !dbg !1840
  br i1 %13, label %14, label %15, !dbg !1842

; <label>:14:                                     ; preds = %11, %7
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1796, metadata !762), !dbg !1816
  br label %15, !dbg !1844

; <label>:15:                                     ; preds = %1, %11, %14
  %16 = phi i1 [ false, %14 ], [ true, %11 ], [ true, %1 ]
  ret i1 %16, !dbg !1845
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define i8* @imaxtostr(i64, i8*) local_unnamed_addr #6 !dbg !1846 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !1851, metadata !762), !dbg !1854
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1852, metadata !762), !dbg !1855
  %3 = getelementptr inbounds i8, i8* %1, i64 20, !dbg !1856
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !1853, metadata !762), !dbg !1857
  store i8 0, i8* %3, align 1, !dbg !1858, !tbaa !1076
  %4 = icmp slt i64 %0, 0, !dbg !1859
  br i1 %4, label %6, label %5, !dbg !1861, !llvm.loop !1862

; <label>:5:                                      ; preds = %2
  br label %19, !dbg !1857

; <label>:6:                                      ; preds = %2
  br label %7, !dbg !1857

; <label>:7:                                      ; preds = %6, %7
  %8 = phi i64 [ %14, %7 ], [ %0, %6 ]
  %9 = phi i8* [ %13, %7 ], [ %3, %6 ]
  tail call void @llvm.dbg.value(metadata i8* %9, i64 0, metadata !1853, metadata !762), !dbg !1857
  tail call void @llvm.dbg.value(metadata i64 %8, i64 0, metadata !1851, metadata !762), !dbg !1854
  %10 = srem i64 %8, 10, !dbg !1866
  %11 = sub nsw i64 48, %10, !dbg !1868
  %12 = trunc i64 %11 to i8, !dbg !1869
  %13 = getelementptr inbounds i8, i8* %9, i64 -1, !dbg !1870
  tail call void @llvm.dbg.value(metadata i8* %13, i64 0, metadata !1853, metadata !762), !dbg !1857
  store i8 %12, i8* %13, align 1, !dbg !1871, !tbaa !1076
  %14 = sdiv i64 %8, 10, !dbg !1872
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !1851, metadata !762), !dbg !1854
  %15 = add i64 %8, 9, !dbg !1873
  %16 = icmp ugt i64 %15, 18, !dbg !1873
  br i1 %16, label %7, label %17, !dbg !1874, !llvm.loop !1876

; <label>:17:                                     ; preds = %7
  %18 = getelementptr inbounds i8, i8* %9, i64 -2, !dbg !1879
  tail call void @llvm.dbg.value(metadata i8* %18, i64 0, metadata !1853, metadata !762), !dbg !1857
  store i8 45, i8* %18, align 1, !dbg !1880, !tbaa !1076
  br label %30, !dbg !1881

; <label>:19:                                     ; preds = %5, %19
  %20 = phi i64 [ %26, %19 ], [ %0, %5 ]
  %21 = phi i8* [ %25, %19 ], [ %3, %5 ]
  tail call void @llvm.dbg.value(metadata i8* %21, i64 0, metadata !1853, metadata !762), !dbg !1857
  tail call void @llvm.dbg.value(metadata i64 %20, i64 0, metadata !1851, metadata !762), !dbg !1854
  %22 = srem i64 %20, 10, !dbg !1882
  %23 = add nsw i64 %22, 48, !dbg !1883
  %24 = trunc i64 %23 to i8, !dbg !1884
  %25 = getelementptr inbounds i8, i8* %21, i64 -1, !dbg !1885
  tail call void @llvm.dbg.value(metadata i8* %25, i64 0, metadata !1853, metadata !762), !dbg !1857
  store i8 %24, i8* %25, align 1, !dbg !1886, !tbaa !1076
  %26 = sdiv i64 %20, 10, !dbg !1887
  tail call void @llvm.dbg.value(metadata i64 %26, i64 0, metadata !1851, metadata !762), !dbg !1854
  %27 = add i64 %20, 9, !dbg !1888
  %28 = icmp ugt i64 %27, 18, !dbg !1888
  br i1 %28, label %19, label %29, !dbg !1889, !llvm.loop !1862

; <label>:29:                                     ; preds = %19
  br label %30, !dbg !1857

; <label>:30:                                     ; preds = %29, %17
  %31 = phi i8* [ %18, %17 ], [ %25, %29 ]
  tail call void @llvm.dbg.value(metadata i8* %31, i64 0, metadata !1853, metadata !762), !dbg !1857
  ret i8* %31, !dbg !1891
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_program_name(i8*) local_unnamed_addr #6 !dbg !1892 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1894, metadata !762), !dbg !1897
  %2 = icmp eq i8* %0, null, !dbg !1898
  br i1 %2, label %3, label %6, !dbg !1900

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1901, !tbaa !770
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.73, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #16, !dbg !1903
  tail call void @abort() #14, !dbg !1904
  unreachable, !dbg !1904

; <label>:6:                                      ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #13, !dbg !1905
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !1895, metadata !762), !dbg !1906
  %8 = icmp ne i8* %7, null, !dbg !1907
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !1908
  %10 = select i1 %8, i8* %9, i8* %0, !dbg !1910
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !1896, metadata !762), !dbg !1911
  %11 = ptrtoint i8* %10 to i64, !dbg !1912
  %12 = ptrtoint i8* %0 to i64, !dbg !1912
  %13 = sub i64 %11, %12, !dbg !1912
  %14 = icmp sgt i64 %13, 6, !dbg !1914
  br i1 %14, label %15, label %24, !dbg !1915

; <label>:15:                                     ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !1916
  %17 = tail call i32 @strncmp(i8* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.74, i64 0, i64 0), i64 7) #13, !dbg !1916
  %18 = icmp eq i32 %17, 0, !dbg !1918
  br i1 %18, label %19, label %24, !dbg !1919

; <label>:19:                                     ; preds = %15
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !1894, metadata !762), !dbg !1897
  %20 = tail call i32 @strncmp(i8* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.75, i64 0, i64 0), i64 3) #13, !dbg !1920
  %21 = icmp eq i32 %20, 0, !dbg !1923
  br i1 %21, label %22, label %24, !dbg !1924

; <label>:22:                                     ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !1925
  tail call void @llvm.dbg.value(metadata i8* %23, i64 0, metadata !1894, metadata !762), !dbg !1897
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !1927, !tbaa !770
  br label %24, !dbg !1928

; <label>:24:                                     ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i8* %25, i64 0, metadata !1894, metadata !762), !dbg !1897
  store i8* %25, i8** @program_name, align 8, !dbg !1929, !tbaa !770
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !1930, !tbaa !770
  ret void, !dbg !1931
}

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #10

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #5

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define %struct.quoting_options* @clone_quoting_options(%struct.quoting_options*) local_unnamed_addr #6 !dbg !1932 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1937, metadata !762), !dbg !1940
  %2 = tail call i32* @__errno_location() #1, !dbg !1941
  %3 = load i32, i32* %2, align 4, !dbg !1941, !tbaa !965
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !1938, metadata !762), !dbg !1942
  %4 = icmp ne %struct.quoting_options* %0, null, !dbg !1943
  %5 = bitcast %struct.quoting_options* %0 to i8*, !dbg !1944
  %6 = select i1 %4, i8* %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), !dbg !1944
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #10, !dbg !1946
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !1946
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %8, i64 0, metadata !1939, metadata !762), !dbg !1947
  store i32 %3, i32* %2, align 4, !dbg !1948, !tbaa !965
  ret %struct.quoting_options* %8, !dbg !1949
}

; Function Attrs: nounwind readonly sspstrong uwtable
define i32 @get_quoting_style(%struct.quoting_options* readonly) local_unnamed_addr #11 !dbg !1950 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1956, metadata !762), !dbg !1957
  %2 = icmp ne %struct.quoting_options* %0, null, !dbg !1958
  %3 = select i1 %2, %struct.quoting_options* %0, %struct.quoting_options* @default_quoting_options, !dbg !1958
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1959
  %5 = load i32, i32* %4, align 8, !dbg !1959, !tbaa !1961
  ret i32 %5, !dbg !1963
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_quoting_style(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !1964 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1968, metadata !762), !dbg !1970
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1969, metadata !762), !dbg !1971
  %3 = icmp ne %struct.quoting_options* %0, null, !dbg !1972
  %4 = select i1 %3, %struct.quoting_options* %0, %struct.quoting_options* @default_quoting_options, !dbg !1972
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !1973
  store i32 %1, i32* %5, align 8, !dbg !1975, !tbaa !1961
  ret void, !dbg !1976
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_char_quoting(%struct.quoting_options*, i8 signext, i32) local_unnamed_addr #6 !dbg !1977 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1981, metadata !762), !dbg !1989
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1982, metadata !762), !dbg !1990
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !1983, metadata !762), !dbg !1991
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1984, metadata !762), !dbg !1992
  %4 = icmp ne %struct.quoting_options* %0, null, !dbg !1993
  %5 = select i1 %4, %struct.quoting_options* %0, %struct.quoting_options* @default_quoting_options, !dbg !1993
  %6 = lshr i8 %1, 5, !dbg !1994
  %7 = zext i8 %6 to i64, !dbg !1994
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !1996
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !1985, metadata !762), !dbg !1997
  %9 = and i8 %1, 31, !dbg !1998
  %10 = zext i8 %9 to i32, !dbg !1999
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !1987, metadata !762), !dbg !2000
  %11 = load i32, i32* %8, align 4, !dbg !2001, !tbaa !965
  %12 = lshr i32 %11, %10, !dbg !2002
  %13 = and i32 %12, 1, !dbg !2003
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !1988, metadata !762), !dbg !2004
  %14 = and i32 %2, 1, !dbg !2005
  %15 = xor i32 %13, %14, !dbg !2006
  %16 = shl i32 %15, %10, !dbg !2007
  %17 = xor i32 %16, %11, !dbg !2008
  store i32 %17, i32* %8, align 4, !dbg !2008, !tbaa !965
  ret i32 %13, !dbg !2009
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_quoting_flags(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !2010 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !2014, metadata !762), !dbg !2017
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2015, metadata !762), !dbg !2018
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !2019
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !2014, metadata !762), !dbg !2017
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2021
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2014, metadata !762), !dbg !2017
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2022
  %6 = load i32, i32* %5, align 4, !dbg !2022, !tbaa !2023
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !2016, metadata !762), !dbg !2024
  store i32 %1, i32* %5, align 4, !dbg !2025, !tbaa !2023
  ret i32 %6, !dbg !2026
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_custom_quoting(%struct.quoting_options*, i8*, i8*) local_unnamed_addr #6 !dbg !2027 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !2031, metadata !762), !dbg !2034
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2032, metadata !762), !dbg !2035
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2033, metadata !762), !dbg !2036
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2037
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !2031, metadata !762), !dbg !2034
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2039
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2031, metadata !762), !dbg !2034
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2040
  store i32 10, i32* %6, align 8, !dbg !2041, !tbaa !1961
  %7 = icmp ne i8* %1, null, !dbg !2042
  %8 = icmp ne i8* %2, null, !dbg !2044
  %9 = and i1 %7, %8, !dbg !2046
  br i1 %9, label %11, label %10, !dbg !2046

; <label>:10:                                     ; preds = %3
  tail call void @abort() #14, !dbg !2047
  unreachable, !dbg !2047

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2048
  store i8* %1, i8** %12, align 8, !dbg !2049, !tbaa !2050
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2051
  store i8* %2, i8** %13, align 8, !dbg !2052, !tbaa !2053
  ret void, !dbg !2054
}

; Function Attrs: nounwind sspstrong uwtable
define i64 @quotearg_buffer(i8*, i64, i8*, i64, %struct.quoting_options* readonly) local_unnamed_addr #6 !dbg !2055 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2059, metadata !762), !dbg !2067
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2060, metadata !762), !dbg !2068
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2061, metadata !762), !dbg !2069
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2062, metadata !762), !dbg !2070
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2063, metadata !762), !dbg !2071
  %6 = icmp ne %struct.quoting_options* %4, null, !dbg !2072
  %7 = select i1 %6, %struct.quoting_options* %4, %struct.quoting_options* @default_quoting_options, !dbg !2072
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %7, i64 0, metadata !2064, metadata !762), !dbg !2073
  %8 = tail call i32* @__errno_location() #1, !dbg !2074
  %9 = load i32, i32* %8, align 4, !dbg !2074, !tbaa !965
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !2065, metadata !762), !dbg !2075
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !2076
  %11 = load i32, i32* %10, align 8, !dbg !2076, !tbaa !1961
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !2077
  %13 = load i32, i32* %12, align 4, !dbg !2077, !tbaa !2023
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !2078
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !2079
  %16 = load i8*, i8** %15, align 8, !dbg !2079, !tbaa !2050
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !2080
  %18 = load i8*, i8** %17, align 8, !dbg !2080, !tbaa !2053
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* %14, i8* %16, i8* %18), !dbg !2081
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !2066, metadata !762), !dbg !2082
  store i32 %9, i32* %8, align 4, !dbg !2083, !tbaa !965
  ret i64 %19, !dbg !2084
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8*, i64, i8*, i64, i32, i32, i32* readonly, i8* readonly, i8* readonly) unnamed_addr #6 !dbg !2085 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2091, metadata !762), !dbg !2151
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2092, metadata !762), !dbg !2152
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2093, metadata !762), !dbg !2153
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2094, metadata !762), !dbg !2154
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !2095, metadata !762), !dbg !2155
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !2096, metadata !762), !dbg !2156
  tail call void @llvm.dbg.value(metadata i32* %6, i64 0, metadata !2097, metadata !762), !dbg !2157
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !2098, metadata !762), !dbg !2158
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !2099, metadata !762), !dbg !2159
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2101, metadata !762), !dbg !2160
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2102, metadata !762), !dbg !2161
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2103, metadata !762), !dbg !2162
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2104, metadata !762), !dbg !2163
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2105, metadata !762), !dbg !2164
  %13 = tail call i64 @__ctype_get_mb_cur_max() #10, !dbg !2165
  %14 = icmp eq i64 %13, 1, !dbg !2166
  %15 = lshr i32 %5, 1, !dbg !2167
  %16 = trunc i32 %15 to i8, !dbg !2167
  %17 = and i8 %16, 1, !dbg !2167
  tail call void @llvm.dbg.value(metadata i8 %17, i64 0, metadata !2107, metadata !762), !dbg !2167
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2108, metadata !762), !dbg !2168
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2109, metadata !762), !dbg !2169
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2110, metadata !762), !dbg !2170
  %18 = bitcast i64* %10 to i8*
  %19 = bitcast i32* %12 to i8*
  %20 = icmp eq i32* %6, null
  %21 = icmp ne i32* %6, null
  %22 = and i32 %5, 1
  %23 = icmp eq i32 %22, 0
  %24 = and i32 %5, 4
  %25 = icmp eq i32 %24, 0
  %26 = getelementptr inbounds i8, i8* %2, i64 1
  br label %27, !dbg !2171

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
  call void @llvm.dbg.value(metadata i64 %40, i64 0, metadata !2092, metadata !762), !dbg !2152
  call void @llvm.dbg.value(metadata i8 %39, i64 0, metadata !2110, metadata !762), !dbg !2170
  call void @llvm.dbg.value(metadata i8 %38, i64 0, metadata !2109, metadata !762), !dbg !2169
  call void @llvm.dbg.value(metadata i8 %37, i64 0, metadata !2108, metadata !762), !dbg !2168
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !2107, metadata !762), !dbg !2167
  call void @llvm.dbg.value(metadata i64 %35, i64 0, metadata !2094, metadata !762), !dbg !2154
  call void @llvm.dbg.value(metadata i8 %34, i64 0, metadata !2105, metadata !762), !dbg !2164
  call void @llvm.dbg.value(metadata i64 %33, i64 0, metadata !2104, metadata !762), !dbg !2163
  call void @llvm.dbg.value(metadata i8* %32, i64 0, metadata !2103, metadata !762), !dbg !2162
  call void @llvm.dbg.value(metadata i64 %31, i64 0, metadata !2102, metadata !762), !dbg !2161
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2101, metadata !762), !dbg !2160
  call void @llvm.dbg.value(metadata i8* %30, i64 0, metadata !2099, metadata !762), !dbg !2159
  call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !2098, metadata !762), !dbg !2158
  call void @llvm.dbg.value(metadata i32 %28, i64 0, metadata !2095, metadata !762), !dbg !2155
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
  ], !dbg !2172

; <label>:41:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !2095, metadata !762), !dbg !2155
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2107, metadata !762), !dbg !2167
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !2107, metadata !762), !dbg !2167
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !2095, metadata !762), !dbg !2155
  br label %95, !dbg !2173

; <label>:42:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !2107, metadata !762), !dbg !2167
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !2095, metadata !762), !dbg !2155
  %43 = and i8 %36, 1, !dbg !2175
  %44 = icmp eq i8 %43, 0, !dbg !2175
  br i1 %44, label %45, label %95, !dbg !2173

; <label>:45:                                     ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !2177
  br i1 %46, label %95, label %47, !dbg !2181

; <label>:47:                                     ; preds = %45
  store i8 34, i8* %0, align 1, !dbg !2183, !tbaa !1076
  br label %95, !dbg !2183

; <label>:48:                                     ; preds = %27, %27
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.86, i64 0, i64 0), i32 %28), !dbg !2185
  call void @llvm.dbg.value(metadata i8* %49, i64 0, metadata !2098, metadata !762), !dbg !2158
  %50 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.87, i64 0, i64 0), i32 %28), !dbg !2189
  call void @llvm.dbg.value(metadata i8* %50, i64 0, metadata !2099, metadata !762), !dbg !2159
  br label %51, !dbg !2190

; <label>:51:                                     ; preds = %27, %48
  %52 = phi i8* [ %49, %48 ], [ %29, %27 ]
  %53 = phi i8* [ %50, %48 ], [ %30, %27 ]
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !2099, metadata !762), !dbg !2159
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !2098, metadata !762), !dbg !2158
  %54 = and i8 %36, 1, !dbg !2191
  %55 = icmp eq i8 %54, 0, !dbg !2191
  br i1 %55, label %56, label %73, !dbg !2193

; <label>:56:                                     ; preds = %51
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !2103, metadata !762), !dbg !2162
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2101, metadata !762), !dbg !2160
  %57 = load i8, i8* %52, align 1, !dbg !2194, !tbaa !1076
  %58 = icmp eq i8 %57, 0, !dbg !2198
  br i1 %58, label %73, label %59, !dbg !2198

; <label>:59:                                     ; preds = %56
  br label %60, !dbg !2200

; <label>:60:                                     ; preds = %59, %67
  %61 = phi i8 [ %70, %67 ], [ %57, %59 ]
  %62 = phi i8* [ %69, %67 ], [ %52, %59 ]
  %63 = phi i64 [ %68, %67 ], [ 0, %59 ]
  %64 = icmp ult i64 %63, %40, !dbg !2200
  br i1 %64, label %65, label %67, !dbg !2204

; <label>:65:                                     ; preds = %60
  %66 = getelementptr inbounds i8, i8* %0, i64 %63, !dbg !2206
  store i8 %61, i8* %66, align 1, !dbg !2206, !tbaa !1076
  br label %67, !dbg !2206

; <label>:67:                                     ; preds = %65, %60
  %68 = add i64 %63, 1, !dbg !2208
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !2101, metadata !762), !dbg !2160
  %69 = getelementptr inbounds i8, i8* %62, i64 1, !dbg !2210
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !2103, metadata !762), !dbg !2162
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !2103, metadata !762), !dbg !2162
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !2101, metadata !762), !dbg !2160
  %70 = load i8, i8* %69, align 1, !dbg !2194, !tbaa !1076
  %71 = icmp eq i8 %70, 0, !dbg !2198
  br i1 %71, label %72, label %60, !dbg !2198, !llvm.loop !2212

; <label>:72:                                     ; preds = %67
  br label %73, !dbg !2160

; <label>:73:                                     ; preds = %72, %56, %51
  %74 = phi i64 [ 0, %51 ], [ 0, %56 ], [ %68, %72 ]
  call void @llvm.dbg.value(metadata i64 %74, i64 0, metadata !2101, metadata !762), !dbg !2160
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2105, metadata !762), !dbg !2164
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !2103, metadata !762), !dbg !2162
  %75 = call i64 @strlen(i8* %53) #13, !dbg !2215
  call void @llvm.dbg.value(metadata i64 %75, i64 0, metadata !2104, metadata !762), !dbg !2163
  br label %95, !dbg !2216

; <label>:76:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2105, metadata !762), !dbg !2164
  br label %77, !dbg !2217

; <label>:77:                                     ; preds = %27, %76
  %78 = phi i8 [ %34, %27 ], [ 1, %76 ]
  call void @llvm.dbg.value(metadata i8 %78, i64 0, metadata !2105, metadata !762), !dbg !2164
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2107, metadata !762), !dbg !2167
  br label %79, !dbg !2218

; <label>:79:                                     ; preds = %27, %77
  %80 = phi i8 [ %34, %27 ], [ %78, %77 ]
  %81 = phi i8 [ %36, %27 ], [ 1, %77 ]
  call void @llvm.dbg.value(metadata i8 %81, i64 0, metadata !2107, metadata !762), !dbg !2167
  call void @llvm.dbg.value(metadata i8 %80, i64 0, metadata !2105, metadata !762), !dbg !2164
  %82 = and i8 %81, 1, !dbg !2219
  %83 = icmp eq i8 %82, 0, !dbg !2219
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2105, metadata !762), !dbg !2164
  %84 = select i1 %83, i8 1, i8 %80, !dbg !2221
  br label %85, !dbg !2221

; <label>:85:                                     ; preds = %79, %27
  %86 = phi i8 [ %34, %27 ], [ %84, %79 ]
  %87 = phi i8 [ %36, %27 ], [ %81, %79 ]
  call void @llvm.dbg.value(metadata i8 %87, i64 0, metadata !2107, metadata !762), !dbg !2167
  call void @llvm.dbg.value(metadata i8 %86, i64 0, metadata !2105, metadata !762), !dbg !2164
  call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !2095, metadata !762), !dbg !2155
  %88 = and i8 %87, 1, !dbg !2222
  %89 = icmp eq i8 %88, 0, !dbg !2222
  br i1 %89, label %90, label %95, !dbg !2224

; <label>:90:                                     ; preds = %85
  %91 = icmp eq i64 %40, 0, !dbg !2225
  br i1 %91, label %95, label %92, !dbg !2229

; <label>:92:                                     ; preds = %90
  store i8 39, i8* %0, align 1, !dbg !2231, !tbaa !1076
  br label %95, !dbg !2231

; <label>:93:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2107, metadata !762), !dbg !2167
  br label %95, !dbg !2233

; <label>:94:                                     ; preds = %27
  call void @abort() #14, !dbg !2234
  unreachable, !dbg !2234

; <label>:95:                                     ; preds = %41, %85, %90, %92, %27, %42, %45, %47, %93, %73
  %96 = phi i32 [ 0, %93 ], [ %28, %73 ], [ 5, %47 ], [ 5, %45 ], [ 5, %42 ], [ 7, %27 ], [ 2, %92 ], [ 2, %90 ], [ 2, %85 ], [ 5, %41 ]
  %97 = phi i8* [ %29, %93 ], [ %52, %73 ], [ %29, %47 ], [ %29, %45 ], [ %29, %42 ], [ %29, %27 ], [ %29, %92 ], [ %29, %90 ], [ %29, %85 ], [ %29, %41 ]
  %98 = phi i8* [ %30, %93 ], [ %53, %73 ], [ %30, %47 ], [ %30, %45 ], [ %30, %42 ], [ %30, %27 ], [ %30, %92 ], [ %30, %90 ], [ %30, %85 ], [ %30, %41 ]
  %99 = phi i64 [ 0, %93 ], [ %74, %73 ], [ 1, %47 ], [ 1, %45 ], [ 0, %42 ], [ 0, %27 ], [ 1, %92 ], [ 1, %90 ], [ 0, %85 ], [ 0, %41 ]
  %100 = phi i8* [ %32, %93 ], [ %53, %73 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.88, i64 0, i64 0), %47 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.88, i64 0, i64 0), %45 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.88, i64 0, i64 0), %42 ], [ %32, %27 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.87, i64 0, i64 0), %92 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.87, i64 0, i64 0), %90 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.87, i64 0, i64 0), %85 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.88, i64 0, i64 0), %41 ]
  %101 = phi i64 [ %33, %93 ], [ %75, %73 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ %33, %27 ], [ 1, %92 ], [ 1, %90 ], [ 1, %85 ], [ 1, %41 ]
  %102 = phi i8 [ %34, %93 ], [ 1, %73 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ 1, %27 ], [ %86, %92 ], [ %86, %90 ], [ %86, %85 ], [ 1, %41 ]
  %103 = phi i8 [ 0, %93 ], [ %36, %73 ], [ %36, %47 ], [ %36, %45 ], [ %36, %42 ], [ 0, %27 ], [ %87, %92 ], [ %87, %90 ], [ %87, %85 ], [ 1, %41 ]
  call void @llvm.dbg.value(metadata i8 %103, i64 0, metadata !2107, metadata !762), !dbg !2167
  call void @llvm.dbg.value(metadata i8 %102, i64 0, metadata !2105, metadata !762), !dbg !2164
  call void @llvm.dbg.value(metadata i64 %101, i64 0, metadata !2104, metadata !762), !dbg !2163
  call void @llvm.dbg.value(metadata i8* %100, i64 0, metadata !2103, metadata !762), !dbg !2162
  call void @llvm.dbg.value(metadata i64 %99, i64 0, metadata !2101, metadata !762), !dbg !2160
  call void @llvm.dbg.value(metadata i8* %98, i64 0, metadata !2099, metadata !762), !dbg !2159
  call void @llvm.dbg.value(metadata i8* %97, i64 0, metadata !2098, metadata !762), !dbg !2158
  call void @llvm.dbg.value(metadata i32 %96, i64 0, metadata !2095, metadata !762), !dbg !2155
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2100, metadata !762), !dbg !2235
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
  br label %123, !dbg !2236

; <label>:123:                                    ; preds = %587, %95
  %124 = phi i64 [ 0, %95 ], [ %596, %587 ]
  %125 = phi i64 [ %99, %95 ], [ %589, %587 ]
  %126 = phi i64 [ %31, %95 ], [ %590, %587 ]
  %127 = phi i64 [ %35, %95 ], [ %591, %587 ]
  %128 = phi i8 [ %37, %95 ], [ %592, %587 ]
  %129 = phi i8 [ %38, %95 ], [ %593, %587 ]
  %130 = phi i8 [ %39, %95 ], [ %594, %587 ]
  %131 = phi i64 [ %40, %95 ], [ %595, %587 ]
  call void @llvm.dbg.value(metadata i64 %131, i64 0, metadata !2092, metadata !762), !dbg !2152
  call void @llvm.dbg.value(metadata i8 %130, i64 0, metadata !2110, metadata !762), !dbg !2170
  call void @llvm.dbg.value(metadata i8 %129, i64 0, metadata !2109, metadata !762), !dbg !2169
  call void @llvm.dbg.value(metadata i8 %128, i64 0, metadata !2108, metadata !762), !dbg !2168
  call void @llvm.dbg.value(metadata i64 %127, i64 0, metadata !2094, metadata !762), !dbg !2154
  call void @llvm.dbg.value(metadata i64 %126, i64 0, metadata !2102, metadata !762), !dbg !2161
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !2101, metadata !762), !dbg !2160
  call void @llvm.dbg.value(metadata i64 %124, i64 0, metadata !2100, metadata !762), !dbg !2235
  %132 = icmp eq i64 %127, -1, !dbg !2237
  br i1 %132, label %135, label %133, !dbg !2239

; <label>:133:                                    ; preds = %123
  %134 = icmp eq i64 %124, %127, !dbg !2240
  br i1 %134, label %597, label %139, !dbg !2242

; <label>:135:                                    ; preds = %123
  %136 = getelementptr inbounds i8, i8* %2, i64 %124, !dbg !2244
  %137 = load i8, i8* %136, align 1, !dbg !2244, !tbaa !1076
  %138 = icmp eq i8 %137, 0, !dbg !2246
  br i1 %138, label %597, label %139, !dbg !2242

; <label>:139:                                    ; preds = %133, %135
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2116, metadata !762), !dbg !2247
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2117, metadata !762), !dbg !2248
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2118, metadata !762), !dbg !2249
  br i1 %109, label %140, label %155, !dbg !2250

; <label>:140:                                    ; preds = %139
  %141 = add i64 %124, %101, !dbg !2252
  %142 = and i1 %110, %132, !dbg !2254
  br i1 %142, label %143, label %145, !dbg !2254

; <label>:143:                                    ; preds = %140
  %144 = call i64 @strlen(i8* %2) #13, !dbg !2255
  call void @llvm.dbg.value(metadata i64 %144, i64 0, metadata !2094, metadata !762), !dbg !2154
  br label %145, !dbg !2256

; <label>:145:                                    ; preds = %140, %143
  %146 = phi i64 [ %144, %143 ], [ %127, %140 ]
  call void @llvm.dbg.value(metadata i64 %146, i64 0, metadata !2094, metadata !762), !dbg !2154
  %147 = icmp ugt i64 %141, %146, !dbg !2258
  br i1 %147, label %155, label %148, !dbg !2260

; <label>:148:                                    ; preds = %145
  %149 = getelementptr inbounds i8, i8* %2, i64 %124, !dbg !2261
  %150 = call i32 @memcmp(i8* %149, i8* %100, i64 %101) #13, !dbg !2262
  %151 = icmp ne i32 %150, 0, !dbg !2263
  %152 = or i1 %151, %112, !dbg !2263
  %153 = xor i1 %151, true, !dbg !2263
  %154 = zext i1 %153 to i8, !dbg !2263
  br i1 %152, label %155, label %644, !dbg !2263

; <label>:155:                                    ; preds = %148, %145, %139
  %156 = phi i64 [ %146, %148 ], [ %146, %145 ], [ %127, %139 ]
  %157 = phi i8 [ %154, %148 ], [ 0, %145 ], [ 0, %139 ]
  call void @llvm.dbg.value(metadata i8 %157, i64 0, metadata !2116, metadata !762), !dbg !2247
  call void @llvm.dbg.value(metadata i64 %156, i64 0, metadata !2094, metadata !762), !dbg !2154
  %158 = getelementptr inbounds i8, i8* %2, i64 %124, !dbg !2265
  %159 = load i8, i8* %158, align 1, !dbg !2265, !tbaa !1076
  call void @llvm.dbg.value(metadata i8 %159, i64 0, metadata !2111, metadata !762), !dbg !2266
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
  ], !dbg !2267

; <label>:160:                                    ; preds = %155
  br i1 %105, label %161, label %209, !dbg !2268

; <label>:161:                                    ; preds = %160
  br i1 %112, label %162, label %644, !dbg !2269

; <label>:162:                                    ; preds = %161
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2117, metadata !762), !dbg !2248
  %163 = and i8 %128, 1, !dbg !2274
  %164 = icmp eq i8 %163, 0, !dbg !2274
  %165 = and i1 %114, %164, !dbg !2277
  br i1 %165, label %166, label %182, !dbg !2277

; <label>:166:                                    ; preds = %162
  %167 = icmp ult i64 %125, %131, !dbg !2279
  br i1 %167, label %168, label %170, !dbg !2284

; <label>:168:                                    ; preds = %166
  %169 = getelementptr inbounds i8, i8* %0, i64 %125, !dbg !2286
  store i8 39, i8* %169, align 1, !dbg !2286, !tbaa !1076
  br label %170, !dbg !2286

; <label>:170:                                    ; preds = %168, %166
  %171 = add i64 %125, 1, !dbg !2288
  call void @llvm.dbg.value(metadata i64 %171, i64 0, metadata !2101, metadata !762), !dbg !2160
  %172 = icmp ult i64 %171, %131, !dbg !2290
  br i1 %172, label %173, label %175, !dbg !2294

; <label>:173:                                    ; preds = %170
  %174 = getelementptr inbounds i8, i8* %0, i64 %171, !dbg !2296
  store i8 36, i8* %174, align 1, !dbg !2296, !tbaa !1076
  br label %175, !dbg !2296

; <label>:175:                                    ; preds = %173, %170
  %176 = add i64 %125, 2, !dbg !2298
  call void @llvm.dbg.value(metadata i64 %176, i64 0, metadata !2101, metadata !762), !dbg !2160
  %177 = icmp ult i64 %176, %131, !dbg !2300
  br i1 %177, label %178, label %180, !dbg !2304

; <label>:178:                                    ; preds = %175
  %179 = getelementptr inbounds i8, i8* %0, i64 %176, !dbg !2306
  store i8 39, i8* %179, align 1, !dbg !2306, !tbaa !1076
  br label %180, !dbg !2306

; <label>:180:                                    ; preds = %178, %175
  %181 = add i64 %125, 3, !dbg !2308
  call void @llvm.dbg.value(metadata i64 %181, i64 0, metadata !2101, metadata !762), !dbg !2160
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2108, metadata !762), !dbg !2168
  br label %182, !dbg !2310

; <label>:182:                                    ; preds = %162, %180
  %183 = phi i64 [ %181, %180 ], [ %125, %162 ]
  %184 = phi i8 [ 1, %180 ], [ %128, %162 ]
  call void @llvm.dbg.value(metadata i8 %184, i64 0, metadata !2108, metadata !762), !dbg !2168
  call void @llvm.dbg.value(metadata i64 %183, i64 0, metadata !2101, metadata !762), !dbg !2160
  %185 = icmp ult i64 %183, %131, !dbg !2312
  br i1 %185, label %186, label %188, !dbg !2316

; <label>:186:                                    ; preds = %182
  %187 = getelementptr inbounds i8, i8* %0, i64 %183, !dbg !2318
  store i8 92, i8* %187, align 1, !dbg !2318, !tbaa !1076
  br label %188, !dbg !2318

; <label>:188:                                    ; preds = %186, %182
  %189 = add i64 %183, 1, !dbg !2320
  call void @llvm.dbg.value(metadata i64 %189, i64 0, metadata !2101, metadata !762), !dbg !2160
  br i1 %106, label %190, label %476, !dbg !2322

; <label>:190:                                    ; preds = %188
  %191 = add i64 %124, 1, !dbg !2324
  %192 = icmp ult i64 %191, %156, !dbg !2326
  br i1 %192, label %193, label %476, !dbg !2327

; <label>:193:                                    ; preds = %190
  %194 = getelementptr inbounds i8, i8* %2, i64 %191, !dbg !2328
  %195 = load i8, i8* %194, align 1, !dbg !2328, !tbaa !1076
  %196 = add i8 %195, -48, !dbg !2330
  %197 = icmp ult i8 %196, 10, !dbg !2330
  br i1 %197, label %198, label %476, !dbg !2330

; <label>:198:                                    ; preds = %193
  %199 = icmp ult i64 %189, %131, !dbg !2331
  br i1 %199, label %200, label %202, !dbg !2336

; <label>:200:                                    ; preds = %198
  %201 = getelementptr inbounds i8, i8* %0, i64 %189, !dbg !2338
  store i8 48, i8* %201, align 1, !dbg !2338, !tbaa !1076
  br label %202, !dbg !2338

; <label>:202:                                    ; preds = %200, %198
  %203 = add i64 %183, 2, !dbg !2340
  call void @llvm.dbg.value(metadata i64 %203, i64 0, metadata !2101, metadata !762), !dbg !2160
  %204 = icmp ult i64 %203, %131, !dbg !2342
  br i1 %204, label %205, label %207, !dbg !2346

; <label>:205:                                    ; preds = %202
  %206 = getelementptr inbounds i8, i8* %0, i64 %203, !dbg !2348
  store i8 48, i8* %206, align 1, !dbg !2348, !tbaa !1076
  br label %207, !dbg !2348

; <label>:207:                                    ; preds = %205, %202
  %208 = add i64 %183, 3, !dbg !2350
  call void @llvm.dbg.value(metadata i64 %208, i64 0, metadata !2101, metadata !762), !dbg !2160
  br label %476, !dbg !2352

; <label>:209:                                    ; preds = %160
  br i1 %23, label %476, label %587, !dbg !2353

; <label>:210:                                    ; preds = %155
  switch i32 %96, label %476 [
    i32 2, label %211
    i32 5, label %212
  ], !dbg !2354

; <label>:211:                                    ; preds = %210
  br i1 %112, label %476, label %644, !dbg !2355

; <label>:212:                                    ; preds = %210
  br i1 %25, label %476, label %213, !dbg !2357

; <label>:213:                                    ; preds = %212
  %214 = add i64 %124, 2, !dbg !2359
  %215 = icmp ult i64 %214, %156, !dbg !2361
  br i1 %215, label %216, label %476, !dbg !2362

; <label>:216:                                    ; preds = %213
  %217 = add i64 %124, 1, !dbg !2363
  %218 = getelementptr inbounds i8, i8* %2, i64 %217, !dbg !2365
  %219 = load i8, i8* %218, align 1, !dbg !2365, !tbaa !1076
  %220 = icmp eq i8 %219, 63, !dbg !2366
  br i1 %220, label %221, label %476, !dbg !2367

; <label>:221:                                    ; preds = %216
  %222 = getelementptr inbounds i8, i8* %2, i64 %214, !dbg !2369
  %223 = load i8, i8* %222, align 1, !dbg !2369, !tbaa !1076
  %224 = sext i8 %223 to i32, !dbg !2369
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
  ], !dbg !2370

; <label>:225:                                    ; preds = %221, %221, %221, %221, %221, %221, %221, %221, %221
  br i1 %112, label %226, label %644, !dbg !2371

; <label>:226:                                    ; preds = %225
  call void @llvm.dbg.value(metadata i8 %223, i64 0, metadata !2111, metadata !762), !dbg !2266
  call void @llvm.dbg.value(metadata i64 %214, i64 0, metadata !2100, metadata !762), !dbg !2235
  %227 = icmp ult i64 %125, %131, !dbg !2373
  br i1 %227, label %228, label %230, !dbg !2377

; <label>:228:                                    ; preds = %226
  %229 = getelementptr inbounds i8, i8* %0, i64 %125, !dbg !2379
  store i8 63, i8* %229, align 1, !dbg !2379, !tbaa !1076
  br label %230, !dbg !2379

; <label>:230:                                    ; preds = %228, %226
  %231 = add i64 %125, 1, !dbg !2381
  call void @llvm.dbg.value(metadata i64 %231, i64 0, metadata !2101, metadata !762), !dbg !2160
  %232 = icmp ult i64 %231, %131, !dbg !2383
  br i1 %232, label %233, label %235, !dbg !2387

; <label>:233:                                    ; preds = %230
  %234 = getelementptr inbounds i8, i8* %0, i64 %231, !dbg !2389
  store i8 34, i8* %234, align 1, !dbg !2389, !tbaa !1076
  br label %235, !dbg !2389

; <label>:235:                                    ; preds = %233, %230
  %236 = add i64 %125, 2, !dbg !2391
  call void @llvm.dbg.value(metadata i64 %236, i64 0, metadata !2101, metadata !762), !dbg !2160
  %237 = icmp ult i64 %236, %131, !dbg !2393
  br i1 %237, label %238, label %240, !dbg !2397

; <label>:238:                                    ; preds = %235
  %239 = getelementptr inbounds i8, i8* %0, i64 %236, !dbg !2399
  store i8 34, i8* %239, align 1, !dbg !2399, !tbaa !1076
  br label %240, !dbg !2399

; <label>:240:                                    ; preds = %238, %235
  %241 = add i64 %125, 3, !dbg !2401
  call void @llvm.dbg.value(metadata i64 %241, i64 0, metadata !2101, metadata !762), !dbg !2160
  %242 = icmp ult i64 %241, %131, !dbg !2403
  br i1 %242, label %243, label %245, !dbg !2407

; <label>:243:                                    ; preds = %240
  %244 = getelementptr inbounds i8, i8* %0, i64 %241, !dbg !2409
  store i8 63, i8* %244, align 1, !dbg !2409, !tbaa !1076
  br label %245, !dbg !2409

; <label>:245:                                    ; preds = %243, %240
  %246 = add i64 %125, 4, !dbg !2411
  call void @llvm.dbg.value(metadata i64 %246, i64 0, metadata !2101, metadata !762), !dbg !2160
  br label %476, !dbg !2413

; <label>:247:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 98, i64 0, metadata !2115, metadata !762), !dbg !2414
  br label %257, !dbg !2415

; <label>:248:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 102, i64 0, metadata !2115, metadata !762), !dbg !2414
  br label %257, !dbg !2416

; <label>:249:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 114, i64 0, metadata !2115, metadata !762), !dbg !2414
  br label %255, !dbg !2417

; <label>:250:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 116, i64 0, metadata !2115, metadata !762), !dbg !2414
  br label %255, !dbg !2418

; <label>:251:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 118, i64 0, metadata !2115, metadata !762), !dbg !2414
  br label %257, !dbg !2419

; <label>:252:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 %159, i64 0, metadata !2115, metadata !762), !dbg !2414
  br i1 %114, label %253, label %254, !dbg !2420

; <label>:253:                                    ; preds = %252
  br i1 %112, label %542, label %644, !dbg !2421

; <label>:254:                                    ; preds = %252
  br i1 %122, label %542, label %255, !dbg !2424

; <label>:255:                                    ; preds = %254, %155, %250, %249
  %256 = phi i8 [ 92, %254 ], [ 116, %250 ], [ 114, %249 ], [ 110, %155 ]
  call void @llvm.dbg.value(metadata i8 %256, i64 0, metadata !2115, metadata !762), !dbg !2414
  br i1 %118, label %257, label %644, !dbg !2426

; <label>:257:                                    ; preds = %255, %155, %251, %248, %247
  %258 = phi i8 [ %256, %255 ], [ 118, %251 ], [ 102, %248 ], [ 98, %247 ], [ 97, %155 ]
  call void @llvm.dbg.value(metadata i8 %258, i64 0, metadata !2115, metadata !762), !dbg !2414
  br i1 %105, label %503, label %476, !dbg !2428

; <label>:259:                                    ; preds = %155, %155
  %260 = icmp eq i64 %156, -1, !dbg !2429
  br i1 %260, label %261, label %266, !dbg !2431

; <label>:261:                                    ; preds = %259
  %262 = load i8, i8* %26, align 1, !dbg !2432, !tbaa !1076
  %263 = icmp ne i8 %262, 0, !dbg !2434
  %264 = icmp ne i64 %124, 0, !dbg !2435
  %265 = or i1 %264, %263, !dbg !2437
  br i1 %265, label %476, label %272, !dbg !2437

; <label>:266:                                    ; preds = %259
  %267 = icmp ne i64 %156, 1, !dbg !2438
  %268 = icmp ne i64 %124, 0, !dbg !2435
  %269 = or i1 %268, %267, !dbg !2440
  br i1 %269, label %476, label %272, !dbg !2440

; <label>:270:                                    ; preds = %155, %155
  %271 = icmp eq i64 %124, 0, !dbg !2435
  br i1 %271, label %272, label %476, !dbg !2442

; <label>:272:                                    ; preds = %270, %266, %261, %155
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2118, metadata !762), !dbg !2249
  br label %273, !dbg !2443

; <label>:273:                                    ; preds = %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %272
  %274 = phi i8 [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 1, %272 ]
  call void @llvm.dbg.value(metadata i8 %274, i64 0, metadata !2118, metadata !762), !dbg !2249
  br i1 %118, label %476, label %644, !dbg !2444

; <label>:275:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2109, metadata !762), !dbg !2169
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2118, metadata !762), !dbg !2249
  br i1 %114, label %276, label %476, !dbg !2446

; <label>:276:                                    ; preds = %275
  br i1 %112, label %277, label %644, !dbg !2447

; <label>:277:                                    ; preds = %276
  %278 = icmp eq i64 %131, 0, !dbg !2450
  %279 = icmp ne i64 %126, 0, !dbg !2452
  %280 = or i1 %279, %278, !dbg !2454
  call void @llvm.dbg.value(metadata i64 %131, i64 0, metadata !2102, metadata !762), !dbg !2161
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2092, metadata !762), !dbg !2152
  %281 = select i1 %280, i64 %126, i64 %131, !dbg !2454
  %282 = select i1 %280, i64 %131, i64 0, !dbg !2454
  call void @llvm.dbg.value(metadata i64 %282, i64 0, metadata !2092, metadata !762), !dbg !2152
  call void @llvm.dbg.value(metadata i64 %281, i64 0, metadata !2102, metadata !762), !dbg !2161
  %283 = icmp ult i64 %125, %282, !dbg !2455
  br i1 %283, label %284, label %286, !dbg !2459

; <label>:284:                                    ; preds = %277
  %285 = getelementptr inbounds i8, i8* %0, i64 %125, !dbg !2461
  store i8 39, i8* %285, align 1, !dbg !2461, !tbaa !1076
  br label %286, !dbg !2461

; <label>:286:                                    ; preds = %284, %277
  %287 = add i64 %125, 1, !dbg !2463
  call void @llvm.dbg.value(metadata i64 %287, i64 0, metadata !2101, metadata !762), !dbg !2160
  %288 = icmp ult i64 %287, %282, !dbg !2465
  br i1 %288, label %289, label %291, !dbg !2469

; <label>:289:                                    ; preds = %286
  %290 = getelementptr inbounds i8, i8* %0, i64 %287, !dbg !2471
  store i8 92, i8* %290, align 1, !dbg !2471, !tbaa !1076
  br label %291, !dbg !2471

; <label>:291:                                    ; preds = %289, %286
  %292 = add i64 %125, 2, !dbg !2473
  call void @llvm.dbg.value(metadata i64 %292, i64 0, metadata !2101, metadata !762), !dbg !2160
  %293 = icmp ult i64 %292, %282, !dbg !2475
  br i1 %293, label %294, label %296, !dbg !2479

; <label>:294:                                    ; preds = %291
  %295 = getelementptr inbounds i8, i8* %0, i64 %292, !dbg !2481
  store i8 39, i8* %295, align 1, !dbg !2481, !tbaa !1076
  br label %296, !dbg !2481

; <label>:296:                                    ; preds = %294, %291
  %297 = add i64 %125, 3, !dbg !2483
  call void @llvm.dbg.value(metadata i64 %297, i64 0, metadata !2101, metadata !762), !dbg !2160
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2108, metadata !762), !dbg !2168
  br label %476, !dbg !2485

; <label>:298:                                    ; preds = %155
  br i1 %14, label %299, label %308, !dbg !2486

; <label>:299:                                    ; preds = %298
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2119, metadata !762), !dbg !2487
  %300 = tail call i16** @__ctype_b_loc() #1, !dbg !2488
  %301 = load i16*, i16** %300, align 8, !dbg !2488, !tbaa !770
  %302 = zext i8 %159 to i64, !dbg !2488
  %303 = getelementptr inbounds i16, i16* %301, i64 %302, !dbg !2488
  %304 = load i16, i16* %303, align 2, !dbg !2488, !tbaa !1632
  %305 = lshr i16 %304, 14, !dbg !2490
  %306 = trunc i16 %305 to i8, !dbg !2490
  %307 = and i8 %306, 1, !dbg !2490
  call void @llvm.dbg.value(metadata i8 %307, i64 0, metadata !2122, metadata !762), !dbg !2491
  br label %368, !dbg !2492

; <label>:308:                                    ; preds = %298
  call void @llvm.lifetime.start(i64 8, i8* nonnull %18) #10, !dbg !2493
  store i64 0, i64* %10, align 8, !dbg !2494
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2119, metadata !762), !dbg !2487
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2122, metadata !762), !dbg !2491
  %309 = icmp eq i64 %156, -1, !dbg !2495
  br i1 %309, label %310, label %312, !dbg !2497, !llvm.loop !2498

; <label>:310:                                    ; preds = %308
  %311 = call i64 @strlen(i8* nonnull %2) #13, !dbg !2501
  call void @llvm.dbg.value(metadata i64 %311, i64 0, metadata !2094, metadata !762), !dbg !2154
  br label %312, !dbg !2502, !llvm.loop !2498

; <label>:312:                                    ; preds = %310, %308
  %313 = phi i64 [ %156, %308 ], [ %311, %310 ]
  br label %314, !dbg !2491

; <label>:314:                                    ; preds = %312, %355
  %315 = phi i64 [ %360, %355 ], [ 0, %312 ]
  %316 = phi i8 [ %359, %355 ], [ 1, %312 ]
  call void @llvm.dbg.value(metadata i8 %316, i64 0, metadata !2122, metadata !762), !dbg !2491
  call void @llvm.dbg.value(metadata i64 %315, i64 0, metadata !2119, metadata !762), !dbg !2487
  call void @llvm.dbg.value(metadata i64 %313, i64 0, metadata !2094, metadata !762), !dbg !2154
  call void @llvm.lifetime.start(i64 4, i8* nonnull %19) #10, !dbg !2503
  %317 = add i64 %315, %124, !dbg !2504
  %318 = getelementptr inbounds i8, i8* %2, i64 %317, !dbg !2505
  %319 = sub i64 %313, %317, !dbg !2506
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !2123, metadata !993), !dbg !2507
  call void @llvm.dbg.value(metadata i32* %12, i64 0, metadata !2137, metadata !993), !dbg !2508
  %320 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %318, i64 %319, %struct.__mbstate_t* nonnull %11) #10, !dbg !2509
  call void @llvm.dbg.value(metadata i64 %320, i64 0, metadata !2140, metadata !762), !dbg !2510
  switch i64 %320, label %334 [
    i64 0, label %350
    i64 -1, label %347
    i64 -2, label %321
  ], !dbg !2511

; <label>:321:                                    ; preds = %314
  call void @llvm.dbg.value(metadata i64 %315, i64 0, metadata !2119, metadata !762), !dbg !2487
  %322 = icmp ugt i64 %313, %317, !dbg !2512
  br i1 %322, label %323, label %351, !dbg !2515

; <label>:323:                                    ; preds = %321
  br label %324, !dbg !2516

; <label>:324:                                    ; preds = %323, %330
  %325 = phi i64 [ %332, %330 ], [ %317, %323 ]
  %326 = phi i64 [ %331, %330 ], [ %315, %323 ]
  %327 = getelementptr inbounds i8, i8* %2, i64 %325, !dbg !2516
  %328 = load i8, i8* %327, align 1, !dbg !2516, !tbaa !1076
  %329 = icmp eq i8 %328, 0, !dbg !2518
  br i1 %329, label %348, label %330, !dbg !2519

; <label>:330:                                    ; preds = %324
  %331 = add i64 %326, 1, !dbg !2521
  call void @llvm.dbg.value(metadata i64 %331, i64 0, metadata !2119, metadata !762), !dbg !2487
  call void @llvm.dbg.value(metadata i64 %331, i64 0, metadata !2119, metadata !762), !dbg !2487
  %332 = add i64 %331, %124, !dbg !2522
  %333 = icmp ult i64 %332, %313, !dbg !2512
  br i1 %333, label %324, label %348, !dbg !2515, !llvm.loop !2523

; <label>:334:                                    ; preds = %314
  %335 = icmp ugt i64 %320, 1, !dbg !2525
  %336 = and i1 %116, %335, !dbg !2529
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2141, metadata !762), !dbg !2530
  br i1 %336, label %337, label %355, !dbg !2529

; <label>:337:                                    ; preds = %334
  br label %338, !dbg !2531

; <label>:338:                                    ; preds = %337, %344
  %339 = phi i64 [ %345, %344 ], [ 1, %337 ]
  %340 = add i64 %339, %317, !dbg !2531
  %341 = getelementptr inbounds i8, i8* %2, i64 %340, !dbg !2532
  %342 = load i8, i8* %341, align 1, !dbg !2532, !tbaa !1076
  %343 = sext i8 %342 to i32, !dbg !2532
  switch i32 %343, label %344 [
    i32 91, label %367
    i32 92, label %367
    i32 94, label %367
    i32 96, label %367
    i32 124, label %367
  ], !dbg !2533

; <label>:344:                                    ; preds = %338
  %345 = add nuw i64 %339, 1, !dbg !2534
  call void @llvm.dbg.value(metadata i64 %345, i64 0, metadata !2141, metadata !762), !dbg !2530
  call void @llvm.dbg.value(metadata i64 %345, i64 0, metadata !2141, metadata !762), !dbg !2530
  %346 = icmp ult i64 %345, %320, !dbg !2525
  br i1 %346, label %338, label %354, !dbg !2536, !llvm.loop !2538

; <label>:347:                                    ; preds = %314
  br label %351, !dbg !2491

; <label>:348:                                    ; preds = %324, %330
  %349 = phi i64 [ %331, %330 ], [ %326, %324 ]
  br label %351, !dbg !2491

; <label>:350:                                    ; preds = %314
  br label %351, !dbg !2491

; <label>:351:                                    ; preds = %350, %348, %347, %321
  %352 = phi i64 [ %315, %321 ], [ %315, %347 ], [ %349, %348 ], [ %315, %350 ]
  %353 = phi i8 [ 0, %321 ], [ 0, %347 ], [ 0, %348 ], [ %316, %350 ]
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !2122, metadata !762), !dbg !2491
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !2119, metadata !762), !dbg !2487
  call void @llvm.lifetime.end(i64 4, i8* nonnull %19) #10, !dbg !2541
  br label %364

; <label>:354:                                    ; preds = %344
  br label %355, !dbg !2542

; <label>:355:                                    ; preds = %354, %334
  %356 = load i32, i32* %12, align 4, !dbg !2542, !tbaa !965
  call void @llvm.dbg.value(metadata i32 %356, i64 0, metadata !2137, metadata !762), !dbg !2508
  %357 = call i32 @iswprint(i32 %356) #10, !dbg !2544
  %358 = icmp eq i32 %357, 0, !dbg !2544
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2122, metadata !762), !dbg !2491
  %359 = select i1 %358, i8 0, i8 %316, !dbg !2545
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !2122, metadata !762), !dbg !2491
  %360 = add i64 %320, %315, !dbg !2546
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !2119, metadata !762), !dbg !2487
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !2122, metadata !762), !dbg !2491
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !2119, metadata !762), !dbg !2487
  call void @llvm.lifetime.end(i64 4, i8* nonnull %19) #10, !dbg !2541
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !2123, metadata !993), !dbg !2507
  %361 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #13, !dbg !2547
  %362 = icmp eq i32 %361, 0, !dbg !2548
  br i1 %362, label %314, label %363, !dbg !2549, !llvm.loop !2498

; <label>:363:                                    ; preds = %355
  br label %364, !dbg !2551

; <label>:364:                                    ; preds = %363, %351
  %365 = phi i8 [ %353, %351 ], [ %359, %363 ]
  %366 = phi i64 [ %352, %351 ], [ %360, %363 ]
  call void @llvm.lifetime.end(i64 8, i8* nonnull %18) #10, !dbg !2551
  br label %368

; <label>:367:                                    ; preds = %338, %338, %338, %338, %338
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !2122, metadata !762), !dbg !2491
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !2119, metadata !762), !dbg !2487
  call void @llvm.lifetime.end(i64 4, i8* nonnull %19) #10, !dbg !2541
  call void @llvm.lifetime.end(i64 8, i8* nonnull %18) #10, !dbg !2551
  br label %649

; <label>:368:                                    ; preds = %364, %299
  %369 = phi i64 [ %156, %299 ], [ %313, %364 ]
  %370 = phi i64 [ 1, %299 ], [ %366, %364 ]
  %371 = phi i8 [ %307, %299 ], [ %365, %364 ]
  call void @llvm.dbg.value(metadata i8 %371, i64 0, metadata !2122, metadata !762), !dbg !2491
  call void @llvm.dbg.value(metadata i64 %370, i64 0, metadata !2119, metadata !762), !dbg !2487
  call void @llvm.dbg.value(metadata i64 %369, i64 0, metadata !2094, metadata !762), !dbg !2154
  %372 = and i8 %371, 1, !dbg !2552
  %373 = icmp ne i8 %372, 0, !dbg !2552
  call void @llvm.dbg.value(metadata i8 %372, i64 0, metadata !2118, metadata !762), !dbg !2249
  %374 = icmp ult i64 %370, 2, !dbg !2553
  %375 = or i1 %373, %113, !dbg !2554
  %376 = and i1 %374, %375, !dbg !2556
  br i1 %376, label %476, label %377, !dbg !2556

; <label>:377:                                    ; preds = %368
  %378 = add i64 %370, %124, !dbg !2557
  call void @llvm.dbg.value(metadata i64 %378, i64 0, metadata !2148, metadata !762), !dbg !2558
  br label %379, !dbg !2559

; <label>:379:                                    ; preds = %472, %377
  %380 = phi i64 [ %124, %377 ], [ %447, %472 ]
  %381 = phi i64 [ %125, %377 ], [ %473, %472 ]
  %382 = phi i8 [ %128, %377 ], [ %468, %472 ]
  %383 = phi i8 [ %159, %377 ], [ %475, %472 ]
  %384 = phi i8 [ %157, %377 ], [ %445, %472 ]
  %385 = phi i8 [ 0, %377 ], [ %446, %472 ]
  call void @llvm.dbg.value(metadata i8 %385, i64 0, metadata !2117, metadata !762), !dbg !2248
  call void @llvm.dbg.value(metadata i8 %384, i64 0, metadata !2116, metadata !762), !dbg !2247
  call void @llvm.dbg.value(metadata i8 %383, i64 0, metadata !2111, metadata !762), !dbg !2266
  call void @llvm.dbg.value(metadata i8 %382, i64 0, metadata !2108, metadata !762), !dbg !2168
  call void @llvm.dbg.value(metadata i64 %381, i64 0, metadata !2101, metadata !762), !dbg !2160
  call void @llvm.dbg.value(metadata i64 %380, i64 0, metadata !2100, metadata !762), !dbg !2235
  br i1 %375, label %432, label %386, !dbg !2560

; <label>:386:                                    ; preds = %379
  br i1 %112, label %387, label %643, !dbg !2565

; <label>:387:                                    ; preds = %386
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2117, metadata !762), !dbg !2248
  %388 = and i8 %382, 1, !dbg !2569
  %389 = icmp eq i8 %388, 0, !dbg !2569
  %390 = and i1 %114, %389, !dbg !2572
  br i1 %390, label %391, label %407, !dbg !2572

; <label>:391:                                    ; preds = %387
  %392 = icmp ult i64 %381, %131, !dbg !2574
  br i1 %392, label %393, label %395, !dbg !2579

; <label>:393:                                    ; preds = %391
  %394 = getelementptr inbounds i8, i8* %0, i64 %381, !dbg !2581
  store i8 39, i8* %394, align 1, !dbg !2581, !tbaa !1076
  br label %395, !dbg !2581

; <label>:395:                                    ; preds = %393, %391
  %396 = add i64 %381, 1, !dbg !2583
  call void @llvm.dbg.value(metadata i64 %396, i64 0, metadata !2101, metadata !762), !dbg !2160
  %397 = icmp ult i64 %396, %131, !dbg !2585
  br i1 %397, label %398, label %400, !dbg !2589

; <label>:398:                                    ; preds = %395
  %399 = getelementptr inbounds i8, i8* %0, i64 %396, !dbg !2591
  store i8 36, i8* %399, align 1, !dbg !2591, !tbaa !1076
  br label %400, !dbg !2591

; <label>:400:                                    ; preds = %398, %395
  %401 = add i64 %381, 2, !dbg !2593
  call void @llvm.dbg.value(metadata i64 %401, i64 0, metadata !2101, metadata !762), !dbg !2160
  %402 = icmp ult i64 %401, %131, !dbg !2595
  br i1 %402, label %403, label %405, !dbg !2599

; <label>:403:                                    ; preds = %400
  %404 = getelementptr inbounds i8, i8* %0, i64 %401, !dbg !2601
  store i8 39, i8* %404, align 1, !dbg !2601, !tbaa !1076
  br label %405, !dbg !2601

; <label>:405:                                    ; preds = %403, %400
  %406 = add i64 %381, 3, !dbg !2603
  call void @llvm.dbg.value(metadata i64 %406, i64 0, metadata !2101, metadata !762), !dbg !2160
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2108, metadata !762), !dbg !2168
  br label %407, !dbg !2605

; <label>:407:                                    ; preds = %387, %405
  %408 = phi i64 [ %406, %405 ], [ %381, %387 ]
  %409 = phi i8 [ 1, %405 ], [ %382, %387 ]
  call void @llvm.dbg.value(metadata i8 %409, i64 0, metadata !2108, metadata !762), !dbg !2168
  call void @llvm.dbg.value(metadata i64 %408, i64 0, metadata !2101, metadata !762), !dbg !2160
  %410 = icmp ult i64 %408, %131, !dbg !2607
  br i1 %410, label %411, label %413, !dbg !2611

; <label>:411:                                    ; preds = %407
  %412 = getelementptr inbounds i8, i8* %0, i64 %408, !dbg !2613
  store i8 92, i8* %412, align 1, !dbg !2613, !tbaa !1076
  br label %413, !dbg !2613

; <label>:413:                                    ; preds = %411, %407
  %414 = add i64 %408, 1, !dbg !2615
  call void @llvm.dbg.value(metadata i64 %414, i64 0, metadata !2101, metadata !762), !dbg !2160
  %415 = icmp ult i64 %414, %131, !dbg !2617
  br i1 %415, label %416, label %420, !dbg !2621

; <label>:416:                                    ; preds = %413
  %417 = lshr i8 %383, 6, !dbg !2623
  %418 = or i8 %417, 48, !dbg !2623
  %419 = getelementptr inbounds i8, i8* %0, i64 %414, !dbg !2623
  store i8 %418, i8* %419, align 1, !dbg !2623, !tbaa !1076
  br label %420, !dbg !2623

; <label>:420:                                    ; preds = %416, %413
  %421 = add i64 %408, 2, !dbg !2625
  call void @llvm.dbg.value(metadata i64 %421, i64 0, metadata !2101, metadata !762), !dbg !2160
  %422 = icmp ult i64 %421, %131, !dbg !2627
  br i1 %422, label %423, label %428, !dbg !2631

; <label>:423:                                    ; preds = %420
  %424 = lshr i8 %383, 3, !dbg !2633
  %425 = and i8 %424, 7, !dbg !2633
  %426 = or i8 %425, 48, !dbg !2633
  %427 = getelementptr inbounds i8, i8* %0, i64 %421, !dbg !2633
  store i8 %426, i8* %427, align 1, !dbg !2633, !tbaa !1076
  br label %428, !dbg !2633

; <label>:428:                                    ; preds = %423, %420
  %429 = add i64 %408, 3, !dbg !2635
  call void @llvm.dbg.value(metadata i64 %429, i64 0, metadata !2101, metadata !762), !dbg !2160
  %430 = and i8 %383, 7, !dbg !2637
  %431 = or i8 %430, 48, !dbg !2638
  call void @llvm.dbg.value(metadata i8 %431, i64 0, metadata !2111, metadata !762), !dbg !2266
  br label %441, !dbg !2639

; <label>:432:                                    ; preds = %379
  %433 = and i8 %384, 1, !dbg !2640
  %434 = icmp eq i8 %433, 0, !dbg !2640
  br i1 %434, label %441, label %435, !dbg !2642

; <label>:435:                                    ; preds = %432
  %436 = icmp ult i64 %381, %131, !dbg !2643
  br i1 %436, label %437, label %439, !dbg !2648

; <label>:437:                                    ; preds = %435
  %438 = getelementptr inbounds i8, i8* %0, i64 %381, !dbg !2650
  store i8 92, i8* %438, align 1, !dbg !2650, !tbaa !1076
  br label %439, !dbg !2650

; <label>:439:                                    ; preds = %437, %435
  %440 = add i64 %381, 1, !dbg !2652
  call void @llvm.dbg.value(metadata i64 %440, i64 0, metadata !2101, metadata !762), !dbg !2160
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2116, metadata !762), !dbg !2247
  br label %441, !dbg !2654

; <label>:441:                                    ; preds = %432, %439, %428
  %442 = phi i64 [ %440, %439 ], [ %381, %432 ], [ %429, %428 ]
  %443 = phi i8 [ %382, %439 ], [ %382, %432 ], [ %409, %428 ]
  %444 = phi i8 [ %383, %439 ], [ %383, %432 ], [ %431, %428 ]
  %445 = phi i8 [ 0, %439 ], [ %384, %432 ], [ %384, %428 ]
  %446 = phi i8 [ %385, %439 ], [ %385, %432 ], [ 1, %428 ]
  call void @llvm.dbg.value(metadata i8 %446, i64 0, metadata !2117, metadata !762), !dbg !2248
  call void @llvm.dbg.value(metadata i8 %445, i64 0, metadata !2116, metadata !762), !dbg !2247
  call void @llvm.dbg.value(metadata i8 %444, i64 0, metadata !2111, metadata !762), !dbg !2266
  call void @llvm.dbg.value(metadata i8 %443, i64 0, metadata !2108, metadata !762), !dbg !2168
  call void @llvm.dbg.value(metadata i64 %442, i64 0, metadata !2101, metadata !762), !dbg !2160
  %447 = add i64 %380, 1, !dbg !2655
  %448 = icmp ugt i64 %378, %447, !dbg !2657
  br i1 %448, label %449, label %541, !dbg !2658

; <label>:449:                                    ; preds = %441
  %450 = and i8 %443, 1, !dbg !2659
  %451 = icmp ne i8 %450, 0, !dbg !2659
  %452 = and i8 %446, 1, !dbg !2663
  %453 = icmp eq i8 %452, 0, !dbg !2663
  %454 = and i1 %451, %453, !dbg !2659
  br i1 %454, label %455, label %466, !dbg !2659

; <label>:455:                                    ; preds = %449
  %456 = icmp ult i64 %442, %131, !dbg !2665
  br i1 %456, label %457, label %459, !dbg !2670

; <label>:457:                                    ; preds = %455
  %458 = getelementptr inbounds i8, i8* %0, i64 %442, !dbg !2672
  store i8 39, i8* %458, align 1, !dbg !2672, !tbaa !1076
  br label %459, !dbg !2672

; <label>:459:                                    ; preds = %457, %455
  %460 = add i64 %442, 1, !dbg !2674
  call void @llvm.dbg.value(metadata i64 %460, i64 0, metadata !2101, metadata !762), !dbg !2160
  %461 = icmp ult i64 %460, %131, !dbg !2676
  br i1 %461, label %462, label %464, !dbg !2680

; <label>:462:                                    ; preds = %459
  %463 = getelementptr inbounds i8, i8* %0, i64 %460, !dbg !2682
  store i8 39, i8* %463, align 1, !dbg !2682, !tbaa !1076
  br label %464, !dbg !2682

; <label>:464:                                    ; preds = %462, %459
  %465 = add i64 %442, 2, !dbg !2684
  call void @llvm.dbg.value(metadata i64 %465, i64 0, metadata !2101, metadata !762), !dbg !2160
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2108, metadata !762), !dbg !2168
  br label %466, !dbg !2686

; <label>:466:                                    ; preds = %449, %464
  %467 = phi i64 [ %465, %464 ], [ %442, %449 ]
  %468 = phi i8 [ 0, %464 ], [ %443, %449 ]
  call void @llvm.dbg.value(metadata i8 %468, i64 0, metadata !2108, metadata !762), !dbg !2168
  call void @llvm.dbg.value(metadata i64 %467, i64 0, metadata !2101, metadata !762), !dbg !2160
  %469 = icmp ult i64 %467, %131, !dbg !2688
  br i1 %469, label %470, label %472, !dbg !2692

; <label>:470:                                    ; preds = %466
  %471 = getelementptr inbounds i8, i8* %0, i64 %467, !dbg !2694
  store i8 %444, i8* %471, align 1, !dbg !2694, !tbaa !1076
  br label %472, !dbg !2694

; <label>:472:                                    ; preds = %470, %466
  %473 = add i64 %467, 1, !dbg !2696
  call void @llvm.dbg.value(metadata i64 %473, i64 0, metadata !2101, metadata !762), !dbg !2160
  call void @llvm.dbg.value(metadata i64 %447, i64 0, metadata !2100, metadata !762), !dbg !2235
  %474 = getelementptr inbounds i8, i8* %2, i64 %447, !dbg !2698
  %475 = load i8, i8* %474, align 1, !dbg !2698, !tbaa !1076
  call void @llvm.dbg.value(metadata i8 %475, i64 0, metadata !2111, metadata !762), !dbg !2266
  br label %379, !dbg !2699, !llvm.loop !2701

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
  call void @llvm.dbg.value(metadata i64 %486, i64 0, metadata !2092, metadata !762), !dbg !2152
  call void @llvm.dbg.value(metadata i8 %485, i64 0, metadata !2118, metadata !762), !dbg !2249
  call void @llvm.dbg.value(metadata i8 %484, i64 0, metadata !2117, metadata !762), !dbg !2248
  call void @llvm.dbg.value(metadata i8 %157, i64 0, metadata !2116, metadata !762), !dbg !2247
  call void @llvm.dbg.value(metadata i8 %483, i64 0, metadata !2111, metadata !762), !dbg !2266
  call void @llvm.dbg.value(metadata i8 %482, i64 0, metadata !2109, metadata !762), !dbg !2169
  call void @llvm.dbg.value(metadata i8 %481, i64 0, metadata !2108, metadata !762), !dbg !2168
  call void @llvm.dbg.value(metadata i64 %480, i64 0, metadata !2094, metadata !762), !dbg !2154
  call void @llvm.dbg.value(metadata i64 %479, i64 0, metadata !2102, metadata !762), !dbg !2161
  call void @llvm.dbg.value(metadata i64 %478, i64 0, metadata !2101, metadata !762), !dbg !2160
  call void @llvm.dbg.value(metadata i64 %477, i64 0, metadata !2100, metadata !762), !dbg !2235
  br i1 %107, label %488, label %487, !dbg !2704

; <label>:487:                                    ; preds = %476
  br i1 %117, label %489, label %501, !dbg !2706

; <label>:488:                                    ; preds = %476
  br i1 %20, label %501, label %489, !dbg !2707

; <label>:489:                                    ; preds = %488, %487
  %490 = lshr i8 %483, 5, !dbg !2708
  %491 = zext i8 %490 to i64, !dbg !2708
  %492 = getelementptr inbounds i32, i32* %6, i64 %491, !dbg !2710
  %493 = load i32, i32* %492, align 4, !dbg !2710, !tbaa !965
  %494 = and i8 %483, 31, !dbg !2711
  %495 = zext i8 %494 to i32, !dbg !2712
  %496 = shl i32 1, %495, !dbg !2713
  %497 = and i32 %493, %496, !dbg !2713
  %498 = icmp eq i32 %497, 0, !dbg !2713
  %499 = icmp eq i8 %157, 0, !dbg !2714
  %500 = and i1 %499, %498, !dbg !2715
  br i1 %500, label %542, label %503, !dbg !2715

; <label>:501:                                    ; preds = %488, %487
  %502 = icmp eq i8 %157, 0, !dbg !2714
  br i1 %502, label %542, label %503, !dbg !2716

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
  call void @llvm.dbg.value(metadata i64 %512, i64 0, metadata !2092, metadata !762), !dbg !2152
  call void @llvm.dbg.value(metadata i8 %511, i64 0, metadata !2118, metadata !762), !dbg !2249
  call void @llvm.dbg.value(metadata i8 %510, i64 0, metadata !2111, metadata !762), !dbg !2266
  call void @llvm.dbg.value(metadata i8 %509, i64 0, metadata !2109, metadata !762), !dbg !2169
  call void @llvm.dbg.value(metadata i8 %508, i64 0, metadata !2108, metadata !762), !dbg !2168
  call void @llvm.dbg.value(metadata i64 %507, i64 0, metadata !2094, metadata !762), !dbg !2154
  call void @llvm.dbg.value(metadata i64 %506, i64 0, metadata !2102, metadata !762), !dbg !2161
  call void @llvm.dbg.value(metadata i64 %505, i64 0, metadata !2101, metadata !762), !dbg !2160
  call void @llvm.dbg.value(metadata i64 %504, i64 0, metadata !2100, metadata !762), !dbg !2235
  br i1 %112, label %513, label %644, !dbg !2718

; <label>:513:                                    ; preds = %503
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2117, metadata !762), !dbg !2248
  %514 = and i8 %508, 1, !dbg !2721
  %515 = icmp eq i8 %514, 0, !dbg !2721
  %516 = and i1 %114, %515, !dbg !2724
  br i1 %516, label %517, label %533, !dbg !2724

; <label>:517:                                    ; preds = %513
  %518 = icmp ult i64 %505, %512, !dbg !2726
  br i1 %518, label %519, label %521, !dbg !2731

; <label>:519:                                    ; preds = %517
  %520 = getelementptr inbounds i8, i8* %0, i64 %505, !dbg !2733
  store i8 39, i8* %520, align 1, !dbg !2733, !tbaa !1076
  br label %521, !dbg !2733

; <label>:521:                                    ; preds = %519, %517
  %522 = add i64 %505, 1, !dbg !2735
  call void @llvm.dbg.value(metadata i64 %522, i64 0, metadata !2101, metadata !762), !dbg !2160
  %523 = icmp ult i64 %522, %512, !dbg !2737
  br i1 %523, label %524, label %526, !dbg !2741

; <label>:524:                                    ; preds = %521
  %525 = getelementptr inbounds i8, i8* %0, i64 %522, !dbg !2743
  store i8 36, i8* %525, align 1, !dbg !2743, !tbaa !1076
  br label %526, !dbg !2743

; <label>:526:                                    ; preds = %524, %521
  %527 = add i64 %505, 2, !dbg !2745
  call void @llvm.dbg.value(metadata i64 %527, i64 0, metadata !2101, metadata !762), !dbg !2160
  %528 = icmp ult i64 %527, %512, !dbg !2747
  br i1 %528, label %529, label %531, !dbg !2751

; <label>:529:                                    ; preds = %526
  %530 = getelementptr inbounds i8, i8* %0, i64 %527, !dbg !2753
  store i8 39, i8* %530, align 1, !dbg !2753, !tbaa !1076
  br label %531, !dbg !2753

; <label>:531:                                    ; preds = %529, %526
  %532 = add i64 %505, 3, !dbg !2755
  call void @llvm.dbg.value(metadata i64 %532, i64 0, metadata !2101, metadata !762), !dbg !2160
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2108, metadata !762), !dbg !2168
  br label %533, !dbg !2757

; <label>:533:                                    ; preds = %513, %531
  %534 = phi i64 [ %532, %531 ], [ %505, %513 ]
  %535 = phi i8 [ 1, %531 ], [ %508, %513 ]
  call void @llvm.dbg.value(metadata i8 %535, i64 0, metadata !2108, metadata !762), !dbg !2168
  call void @llvm.dbg.value(metadata i64 %534, i64 0, metadata !2101, metadata !762), !dbg !2160
  %536 = icmp ult i64 %534, %512, !dbg !2759
  br i1 %536, label %537, label %539, !dbg !2763

; <label>:537:                                    ; preds = %533
  %538 = getelementptr inbounds i8, i8* %0, i64 %534, !dbg !2765
  store i8 92, i8* %538, align 1, !dbg !2765, !tbaa !1076
  br label %539, !dbg !2765

; <label>:539:                                    ; preds = %533, %537
  %540 = add i64 %534, 1, !dbg !2767
  call void @llvm.dbg.value(metadata i64 %540, i64 0, metadata !2101, metadata !762), !dbg !2160
  call void @llvm.dbg.value(metadata i64 %552, i64 0, metadata !2092, metadata !762), !dbg !2152
  call void @llvm.dbg.value(metadata i8 %551, i64 0, metadata !2118, metadata !762), !dbg !2249
  call void @llvm.dbg.value(metadata i8 %550, i64 0, metadata !2117, metadata !762), !dbg !2248
  call void @llvm.dbg.value(metadata i8 %549, i64 0, metadata !2111, metadata !762), !dbg !2266
  call void @llvm.dbg.value(metadata i8 %548, i64 0, metadata !2109, metadata !762), !dbg !2169
  call void @llvm.dbg.value(metadata i8 %547, i64 0, metadata !2108, metadata !762), !dbg !2168
  call void @llvm.dbg.value(metadata i64 %546, i64 0, metadata !2094, metadata !762), !dbg !2154
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !2102, metadata !762), !dbg !2161
  call void @llvm.dbg.value(metadata i64 %544, i64 0, metadata !2101, metadata !762), !dbg !2160
  call void @llvm.dbg.value(metadata i64 %543, i64 0, metadata !2100, metadata !762), !dbg !2235
  br label %569, !dbg !2769

; <label>:541:                                    ; preds = %441
  br label %542, !dbg !2152

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
  call void @llvm.dbg.value(metadata i64 %552, i64 0, metadata !2092, metadata !762), !dbg !2152
  call void @llvm.dbg.value(metadata i8 %551, i64 0, metadata !2118, metadata !762), !dbg !2249
  call void @llvm.dbg.value(metadata i8 %550, i64 0, metadata !2117, metadata !762), !dbg !2248
  call void @llvm.dbg.value(metadata i8 %549, i64 0, metadata !2111, metadata !762), !dbg !2266
  call void @llvm.dbg.value(metadata i8 %548, i64 0, metadata !2109, metadata !762), !dbg !2169
  call void @llvm.dbg.value(metadata i8 %547, i64 0, metadata !2108, metadata !762), !dbg !2168
  call void @llvm.dbg.value(metadata i64 %546, i64 0, metadata !2094, metadata !762), !dbg !2154
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !2102, metadata !762), !dbg !2161
  call void @llvm.dbg.value(metadata i64 %544, i64 0, metadata !2101, metadata !762), !dbg !2160
  call void @llvm.dbg.value(metadata i64 %543, i64 0, metadata !2100, metadata !762), !dbg !2235
  %553 = and i8 %547, 1, !dbg !2769
  %554 = icmp ne i8 %553, 0, !dbg !2769
  %555 = and i8 %550, 1, !dbg !2773
  %556 = icmp eq i8 %555, 0, !dbg !2773
  %557 = and i1 %554, %556, !dbg !2769
  br i1 %557, label %558, label %569, !dbg !2769

; <label>:558:                                    ; preds = %542
  %559 = icmp ult i64 %544, %552, !dbg !2775
  br i1 %559, label %560, label %562, !dbg !2780

; <label>:560:                                    ; preds = %558
  %561 = getelementptr inbounds i8, i8* %0, i64 %544, !dbg !2782
  store i8 39, i8* %561, align 1, !dbg !2782, !tbaa !1076
  br label %562, !dbg !2782

; <label>:562:                                    ; preds = %560, %558
  %563 = add i64 %544, 1, !dbg !2784
  call void @llvm.dbg.value(metadata i64 %563, i64 0, metadata !2101, metadata !762), !dbg !2160
  %564 = icmp ult i64 %563, %552, !dbg !2786
  br i1 %564, label %565, label %567, !dbg !2790

; <label>:565:                                    ; preds = %562
  %566 = getelementptr inbounds i8, i8* %0, i64 %563, !dbg !2792
  store i8 39, i8* %566, align 1, !dbg !2792, !tbaa !1076
  br label %567, !dbg !2792

; <label>:567:                                    ; preds = %565, %562
  %568 = add i64 %544, 2, !dbg !2794
  call void @llvm.dbg.value(metadata i64 %568, i64 0, metadata !2101, metadata !762), !dbg !2160
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2108, metadata !762), !dbg !2168
  br label %569, !dbg !2796

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
  call void @llvm.dbg.value(metadata i8 %578, i64 0, metadata !2108, metadata !762), !dbg !2168
  call void @llvm.dbg.value(metadata i64 %577, i64 0, metadata !2101, metadata !762), !dbg !2160
  %579 = icmp ult i64 %577, %570, !dbg !2798
  br i1 %579, label %580, label %582, !dbg !2802

; <label>:580:                                    ; preds = %569
  %581 = getelementptr inbounds i8, i8* %0, i64 %577, !dbg !2804
  store i8 %572, i8* %581, align 1, !dbg !2804, !tbaa !1076
  br label %582, !dbg !2804

; <label>:582:                                    ; preds = %580, %569
  %583 = add i64 %577, 1, !dbg !2806
  call void @llvm.dbg.value(metadata i64 %583, i64 0, metadata !2101, metadata !762), !dbg !2160
  %584 = and i8 %571, 1, !dbg !2808
  %585 = icmp eq i8 %584, 0, !dbg !2808
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2110, metadata !762), !dbg !2170
  %586 = select i1 %585, i8 0, i8 %130, !dbg !2810
  call void @llvm.dbg.value(metadata i8 %586, i64 0, metadata !2110, metadata !762), !dbg !2170
  br label %587, !dbg !2811

; <label>:587:                                    ; preds = %582, %209
  %588 = phi i64 [ %124, %209 ], [ %576, %582 ]
  %589 = phi i64 [ %125, %209 ], [ %583, %582 ]
  %590 = phi i64 [ %126, %209 ], [ %575, %582 ]
  %591 = phi i64 [ %156, %209 ], [ %574, %582 ]
  %592 = phi i8 [ %128, %209 ], [ %578, %582 ]
  %593 = phi i8 [ %129, %209 ], [ %573, %582 ]
  %594 = phi i8 [ %130, %209 ], [ %586, %582 ]
  %595 = phi i64 [ %131, %209 ], [ %570, %582 ]
  %596 = add i64 %588, 1, !dbg !2812
  call void @llvm.dbg.value(metadata i64 %596, i64 0, metadata !2100, metadata !762), !dbg !2235
  br label %123, !dbg !2814, !llvm.loop !2815

; <label>:597:                                    ; preds = %133, %135
  %598 = phi i64 [ %124, %133 ], [ -1, %135 ]
  %599 = icmp eq i64 %125, 0, !dbg !2818
  %600 = and i1 %114, %599, !dbg !2820
  %601 = xor i1 %600, true, !dbg !2820
  %602 = or i1 %112, %601, !dbg !2820
  br i1 %602, label %603, label %648, !dbg !2820

; <label>:603:                                    ; preds = %597
  %604 = and i1 %114, %112, !dbg !2821
  %605 = xor i1 %604, true, !dbg !2821
  %606 = and i8 %129, 1, !dbg !2823
  %607 = icmp eq i8 %606, 0, !dbg !2823
  %608 = or i1 %607, %605, !dbg !2821
  br i1 %608, label %618, label %609, !dbg !2821

; <label>:609:                                    ; preds = %603
  %610 = and i8 %130, 1, !dbg !2825
  %611 = icmp eq i8 %610, 0, !dbg !2825
  br i1 %611, label %614, label %612, !dbg !2828

; <label>:612:                                    ; preds = %609
  %613 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %126, i8* %2, i64 %598, i32 5, i32 %5, i32* %6, i8* %97, i8* %98), !dbg !2829
  br label %659, !dbg !2830

; <label>:614:                                    ; preds = %609
  %615 = icmp eq i64 %131, 0, !dbg !2831
  %616 = icmp ne i64 %126, 0, !dbg !2833
  %617 = and i1 %616, %615, !dbg !2835
  br i1 %617, label %27, label %618, !dbg !2835

; <label>:618:                                    ; preds = %603, %614
  %619 = icmp ne i8* %100, null, !dbg !2836
  %620 = and i1 %619, %112, !dbg !2838
  br i1 %620, label %621, label %638, !dbg !2838

; <label>:621:                                    ; preds = %618
  call void @llvm.dbg.value(metadata i8* %100, i64 0, metadata !2103, metadata !762), !dbg !2162
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !2101, metadata !762), !dbg !2160
  %622 = load i8, i8* %100, align 1, !dbg !2839, !tbaa !1076
  %623 = icmp eq i8 %622, 0, !dbg !2843
  br i1 %623, label %638, label %624, !dbg !2843

; <label>:624:                                    ; preds = %621
  br label %625, !dbg !2845

; <label>:625:                                    ; preds = %624, %632
  %626 = phi i8 [ %635, %632 ], [ %622, %624 ]
  %627 = phi i8* [ %634, %632 ], [ %100, %624 ]
  %628 = phi i64 [ %633, %632 ], [ %125, %624 ]
  %629 = icmp ult i64 %628, %131, !dbg !2845
  br i1 %629, label %630, label %632, !dbg !2849

; <label>:630:                                    ; preds = %625
  %631 = getelementptr inbounds i8, i8* %0, i64 %628, !dbg !2851
  store i8 %626, i8* %631, align 1, !dbg !2851, !tbaa !1076
  br label %632, !dbg !2851

; <label>:632:                                    ; preds = %630, %625
  %633 = add i64 %628, 1, !dbg !2853
  call void @llvm.dbg.value(metadata i64 %633, i64 0, metadata !2101, metadata !762), !dbg !2160
  %634 = getelementptr inbounds i8, i8* %627, i64 1, !dbg !2855
  call void @llvm.dbg.value(metadata i8* %634, i64 0, metadata !2103, metadata !762), !dbg !2162
  call void @llvm.dbg.value(metadata i8* %634, i64 0, metadata !2103, metadata !762), !dbg !2162
  call void @llvm.dbg.value(metadata i64 %633, i64 0, metadata !2101, metadata !762), !dbg !2160
  %635 = load i8, i8* %634, align 1, !dbg !2839, !tbaa !1076
  %636 = icmp eq i8 %635, 0, !dbg !2843
  br i1 %636, label %637, label %625, !dbg !2843, !llvm.loop !2857

; <label>:637:                                    ; preds = %632
  br label %638, !dbg !2160

; <label>:638:                                    ; preds = %637, %621, %618
  %639 = phi i64 [ %125, %618 ], [ %125, %621 ], [ %633, %637 ]
  call void @llvm.dbg.value(metadata i64 %639, i64 0, metadata !2101, metadata !762), !dbg !2160
  %640 = icmp ult i64 %639, %131, !dbg !2860
  br i1 %640, label %641, label %659, !dbg !2862

; <label>:641:                                    ; preds = %638
  %642 = getelementptr inbounds i8, i8* %0, i64 %639, !dbg !2863
  store i8 0, i8* %642, align 1, !dbg !2864, !tbaa !1076
  br label %659, !dbg !2863

; <label>:643:                                    ; preds = %386
  br label %649, !dbg !2152

; <label>:644:                                    ; preds = %148, %161, %211, %225, %253, %255, %273, %276, %503
  %645 = phi i32 [ %96, %148 ], [ %96, %161 ], [ 2, %211 ], [ 5, %225 ], [ 2, %253 ], [ 2, %255 ], [ 2, %273 ], [ 2, %276 ], [ %96, %503 ]
  %646 = phi i64 [ %146, %148 ], [ %156, %161 ], [ %156, %211 ], [ %156, %225 ], [ %156, %253 ], [ %156, %255 ], [ %156, %273 ], [ %156, %276 ], [ %507, %503 ]
  %647 = phi i64 [ %131, %148 ], [ %131, %161 ], [ %131, %211 ], [ %131, %225 ], [ %131, %253 ], [ %131, %255 ], [ %131, %273 ], [ %131, %276 ], [ %512, %503 ]
  br label %649, !dbg !2152

; <label>:648:                                    ; preds = %597
  br label %649, !dbg !2152

; <label>:649:                                    ; preds = %648, %644, %643, %367
  %650 = phi i32 [ 2, %367 ], [ %96, %643 ], [ %645, %644 ], [ %96, %648 ]
  %651 = phi i64 [ %313, %367 ], [ %369, %643 ], [ %646, %644 ], [ %598, %648 ]
  %652 = phi i64 [ %131, %367 ], [ %131, %643 ], [ %647, %644 ], [ %131, %648 ]
  call void @llvm.dbg.value(metadata i64 %652, i64 0, metadata !2092, metadata !762), !dbg !2152
  call void @llvm.dbg.value(metadata i64 %651, i64 0, metadata !2094, metadata !762), !dbg !2154
  %653 = icmp ne i32 %650, 2, !dbg !2865
  %654 = icmp eq i8 %104, 0, !dbg !2867
  %655 = or i1 %653, %654, !dbg !2869
  call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !2095, metadata !762), !dbg !2155
  %656 = select i1 %655, i32 %650, i32 4, !dbg !2869
  call void @llvm.dbg.value(metadata i32 %656, i64 0, metadata !2095, metadata !762), !dbg !2155
  %657 = and i32 %5, -3, !dbg !2870
  %658 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %652, i8* %2, i64 %651, i32 %656, i32 %657, i32* null, i8* %97, i8* %98), !dbg !2871
  br label %659, !dbg !2872

; <label>:659:                                    ; preds = %638, %641, %649, %612
  %660 = phi i64 [ %658, %649 ], [ %613, %612 ], [ %639, %641 ], [ %639, %638 ]
  ret i64 %660, !dbg !2873
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8*, i32) unnamed_addr #6 !dbg !2874 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2878, metadata !762), !dbg !2882
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2879, metadata !762), !dbg !2883
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #10, !dbg !2884
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2880, metadata !762), !dbg !2885
  %4 = icmp eq i8* %3, %0, !dbg !2886
  br i1 %4, label %5, label %75, !dbg !2888

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @locale_charset() #10, !dbg !2889
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !2881, metadata !762), !dbg !2890
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2891, metadata !762), !dbg !2907
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2905, metadata !762), !dbg !2910
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2906, metadata !762), !dbg !2911
  %7 = load i8, i8* %6, align 1, !tbaa !1076
  %8 = sext i8 %7 to i32
  %9 = and i32 %8, -33, !dbg !2912
  switch i32 %9, label %72 [
    i32 85, label %10
    i32 71, label %38
  ], !dbg !2912

; <label>:10:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2915, metadata !762), !dbg !2929
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2927, metadata !762), !dbg !2933
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2928, metadata !762), !dbg !2934
  %11 = getelementptr inbounds i8, i8* %6, i64 1
  %12 = load i8, i8* %11, align 1, !tbaa !1076
  %13 = sext i8 %12 to i32
  %14 = and i32 %13, -33, !dbg !2935
  %15 = icmp eq i32 %14, 84, !dbg !2935
  br i1 %15, label %16, label %72, !dbg !2935

; <label>:16:                                     ; preds = %10
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2938, metadata !762), !dbg !2951
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2949, metadata !762), !dbg !2955
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2950, metadata !762), !dbg !2956
  %17 = getelementptr inbounds i8, i8* %6, i64 2
  %18 = load i8, i8* %17, align 1, !tbaa !1076
  %19 = sext i8 %18 to i32
  %20 = and i32 %19, -33, !dbg !2957
  %21 = icmp eq i32 %20, 70, !dbg !2957
  br i1 %21, label %22, label %72, !dbg !2957

; <label>:22:                                     ; preds = %16
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2960, metadata !762), !dbg !2972
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2970, metadata !762), !dbg !2976
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2971, metadata !762), !dbg !2977
  %23 = getelementptr inbounds i8, i8* %6, i64 3
  %24 = load i8, i8* %23, align 1, !tbaa !1076
  %25 = icmp eq i8 %24, 45, !dbg !2978
  br i1 %25, label %26, label %72, !dbg !2981

; <label>:26:                                     ; preds = %22
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2983, metadata !762), !dbg !2994
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2992, metadata !762), !dbg !2998
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2993, metadata !762), !dbg !2999
  %27 = getelementptr inbounds i8, i8* %6, i64 4
  %28 = load i8, i8* %27, align 1, !tbaa !1076
  %29 = icmp eq i8 %28, 56, !dbg !3000
  br i1 %29, label %30, label %72, !dbg !3003

; <label>:30:                                     ; preds = %26
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3005, metadata !762), !dbg !3015
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3013, metadata !762), !dbg !3019
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3014, metadata !762), !dbg !3020
  %31 = getelementptr inbounds i8, i8* %6, i64 5
  %32 = load i8, i8* %31, align 1, !tbaa !1076
  %33 = icmp eq i8 %32, 0, !dbg !3021
  br i1 %33, label %34, label %72, !dbg !3024

; <label>:34:                                     ; preds = %30
  %35 = load i8, i8* %0, align 1, !dbg !3026, !tbaa !1076
  %36 = icmp eq i8 %35, 96, !dbg !3027
  %37 = select i1 %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.89, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.90, i64 0, i64 0), !dbg !3026
  br label %75, !dbg !3028

; <label>:38:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2915, metadata !762), !dbg !3029
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2927, metadata !762), !dbg !3033
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2928, metadata !762), !dbg !3034
  %39 = getelementptr inbounds i8, i8* %6, i64 1
  %40 = load i8, i8* %39, align 1, !tbaa !1076
  %41 = sext i8 %40 to i32
  %42 = and i32 %41, -33, !dbg !3035
  %43 = icmp eq i32 %42, 66, !dbg !3035
  br i1 %43, label %44, label %72, !dbg !3035

; <label>:44:                                     ; preds = %38
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2938, metadata !762), !dbg !3036
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2949, metadata !762), !dbg !3038
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2950, metadata !762), !dbg !3039
  %45 = getelementptr inbounds i8, i8* %6, i64 2
  %46 = load i8, i8* %45, align 1, !tbaa !1076
  %47 = icmp eq i8 %46, 49, !dbg !3040
  br i1 %47, label %48, label %72, !dbg !3042

; <label>:48:                                     ; preds = %44
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2960, metadata !762), !dbg !3044
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2970, metadata !762), !dbg !3046
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2971, metadata !762), !dbg !3047
  %49 = getelementptr inbounds i8, i8* %6, i64 3
  %50 = load i8, i8* %49, align 1, !tbaa !1076
  %51 = icmp eq i8 %50, 56, !dbg !3048
  br i1 %51, label %52, label %72, !dbg !3049

; <label>:52:                                     ; preds = %48
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2983, metadata !762), !dbg !3050
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2992, metadata !762), !dbg !3052
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2993, metadata !762), !dbg !3053
  %53 = getelementptr inbounds i8, i8* %6, i64 4
  %54 = load i8, i8* %53, align 1, !tbaa !1076
  %55 = icmp eq i8 %54, 48, !dbg !3054
  br i1 %55, label %56, label %72, !dbg !3055

; <label>:56:                                     ; preds = %52
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3005, metadata !762), !dbg !3056
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3013, metadata !762), !dbg !3058
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3014, metadata !762), !dbg !3059
  %57 = getelementptr inbounds i8, i8* %6, i64 5
  %58 = load i8, i8* %57, align 1, !tbaa !1076
  %59 = icmp eq i8 %58, 51, !dbg !3060
  br i1 %59, label %60, label %72, !dbg !3061

; <label>:60:                                     ; preds = %56
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3062, metadata !762), !dbg !3071
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3069, metadata !762), !dbg !3075
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3070, metadata !762), !dbg !3076
  %61 = getelementptr inbounds i8, i8* %6, i64 6
  %62 = load i8, i8* %61, align 1, !tbaa !1076
  %63 = icmp eq i8 %62, 48, !dbg !3077
  br i1 %63, label %64, label %72, !dbg !3080

; <label>:64:                                     ; preds = %60
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3082, metadata !762), !dbg !3090
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3088, metadata !762), !dbg !3094
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3089, metadata !762), !dbg !3095
  %65 = getelementptr inbounds i8, i8* %6, i64 7
  %66 = load i8, i8* %65, align 1, !tbaa !1076
  %67 = icmp eq i8 %66, 0, !dbg !3096
  br i1 %67, label %68, label %72, !dbg !3099

; <label>:68:                                     ; preds = %64
  %69 = load i8, i8* %0, align 1, !dbg !3100, !tbaa !1076
  %70 = icmp eq i8 %69, 96, !dbg !3101
  %71 = select i1 %70, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.91, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.92, i64 0, i64 0), !dbg !3100
  br label %75, !dbg !3102

; <label>:72:                                     ; preds = %5, %30, %26, %22, %16, %10, %64, %60, %56, %52, %48, %44, %38
  %73 = icmp eq i32 %1, 9, !dbg !3103
  %74 = select i1 %73, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.88, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.87, i64 0, i64 0), !dbg !3104
  br label %75, !dbg !3105

; <label>:75:                                     ; preds = %2, %72, %68, %34
  %76 = phi i8* [ %37, %34 ], [ %71, %68 ], [ %74, %72 ], [ %3, %2 ]
  ret i8* %76, !dbg !3106
}

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @iswprint(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @mbsinit(%struct.__mbstate_t*) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_alloc(i8*, i64, %struct.quoting_options*) local_unnamed_addr #6 !dbg !3107 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3111, metadata !762), !dbg !3114
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3112, metadata !762), !dbg !3115
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !3113, metadata !762), !dbg !3116
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3117, metadata !762) #10, !dbg !3130
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3122, metadata !762) #10, !dbg !3132
  tail call void @llvm.dbg.value(metadata i64* null, i64 0, metadata !3123, metadata !762) #10, !dbg !3133
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !3124, metadata !762) #10, !dbg !3134
  %4 = icmp ne %struct.quoting_options* %2, null, !dbg !3135
  %5 = select i1 %4, %struct.quoting_options* %2, %struct.quoting_options* @default_quoting_options, !dbg !3135
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3125, metadata !762) #10, !dbg !3136
  %6 = tail call i32* @__errno_location() #1, !dbg !3137
  %7 = load i32, i32* %6, align 4, !dbg !3137, !tbaa !965
  tail call void @llvm.dbg.value(metadata i32 %7, i64 0, metadata !3126, metadata !762) #10, !dbg !3138
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !3139
  %9 = load i32, i32* %8, align 4, !dbg !3139, !tbaa !2023
  %10 = or i32 %9, 1, !dbg !3140
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !3127, metadata !762) #10, !dbg !3141
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3142
  %12 = load i32, i32* %11, align 8, !dbg !3142, !tbaa !1961
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !3143
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3144
  %15 = load i8*, i8** %14, align 8, !dbg !3144, !tbaa !2050
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3145
  %17 = load i8*, i8** %16, align 8, !dbg !3145, !tbaa !2053
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* %13, i8* %15, i8* %17) #10, !dbg !3146
  %19 = add i64 %18, 1, !dbg !3147
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !3128, metadata !762) #10, !dbg !3148
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !3149, metadata !762) #10, !dbg !3154
  %20 = tail call noalias i8* @xmalloc(i64 %19) #10, !dbg !3156
  tail call void @llvm.dbg.value(metadata i8* %20, i64 0, metadata !3129, metadata !762) #10, !dbg !3157
  %21 = load i32, i32* %11, align 8, !dbg !3158, !tbaa !1961
  %22 = load i8*, i8** %14, align 8, !dbg !3159, !tbaa !2050
  %23 = load i8*, i8** %16, align 8, !dbg !3160, !tbaa !2053
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* %13, i8* %22, i8* %23) #10, !dbg !3161
  store i32 %7, i32* %6, align 4, !dbg !3162, !tbaa !965
  ret i8* %20, !dbg !3163
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_alloc_mem(i8*, i64, i64*, %struct.quoting_options*) local_unnamed_addr #6 !dbg !3118 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3117, metadata !762), !dbg !3164
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3122, metadata !762), !dbg !3165
  tail call void @llvm.dbg.value(metadata i64* %2, i64 0, metadata !3123, metadata !762), !dbg !3166
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !3124, metadata !762), !dbg !3167
  %5 = icmp ne %struct.quoting_options* %3, null, !dbg !3168
  %6 = select i1 %5, %struct.quoting_options* %3, %struct.quoting_options* @default_quoting_options, !dbg !3168
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !3125, metadata !762), !dbg !3169
  %7 = tail call i32* @__errno_location() #1, !dbg !3170
  %8 = load i32, i32* %7, align 4, !dbg !3170, !tbaa !965
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !3126, metadata !762), !dbg !3171
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !3172
  %10 = load i32, i32* %9, align 4, !dbg !3172, !tbaa !2023
  %11 = icmp ne i64* %2, null, !dbg !3173
  %12 = xor i1 %11, true, !dbg !3173
  %13 = zext i1 %12 to i32, !dbg !3173
  %14 = or i32 %10, %13, !dbg !3174
  tail call void @llvm.dbg.value(metadata i32 %14, i64 0, metadata !3127, metadata !762), !dbg !3175
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3176
  %16 = load i32, i32* %15, align 8, !dbg !3176, !tbaa !1961
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !3177
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3178
  %19 = load i8*, i8** %18, align 8, !dbg !3178, !tbaa !2050
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3179
  %21 = load i8*, i8** %20, align 8, !dbg !3179, !tbaa !2053
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* %17, i8* %19, i8* %21), !dbg !3180
  %23 = add i64 %22, 1, !dbg !3181
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !3128, metadata !762), !dbg !3182
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !3149, metadata !762) #10, !dbg !3183
  %24 = tail call noalias i8* @xmalloc(i64 %23) #10, !dbg !3185
  tail call void @llvm.dbg.value(metadata i8* %24, i64 0, metadata !3129, metadata !762), !dbg !3186
  %25 = load i32, i32* %15, align 8, !dbg !3187, !tbaa !1961
  %26 = load i8*, i8** %18, align 8, !dbg !3188, !tbaa !2050
  %27 = load i8*, i8** %20, align 8, !dbg !3189, !tbaa !2053
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* %17, i8* %26, i8* %27), !dbg !3190
  store i32 %8, i32* %7, align 4, !dbg !3191, !tbaa !965
  br i1 %11, label %29, label %30, !dbg !3192

; <label>:29:                                     ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !3193, !tbaa !1005
  br label %30, !dbg !3195

; <label>:30:                                     ; preds = %29, %4
  ret i8* %24, !dbg !3196
}

; Function Attrs: nounwind sspstrong uwtable
define void @quotearg_free() local_unnamed_addr #6 !dbg !3197 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !3201, !tbaa !770
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %1, i64 0, metadata !3199, metadata !762), !dbg !3202
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !3200, metadata !762), !dbg !3203
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !3200, metadata !762), !dbg !3203
  %2 = load i32, i32* @nslots, align 4, !dbg !3204, !tbaa !965
  %3 = icmp sgt i32 %2, 1, !dbg !3208
  br i1 %3, label %4, label %14, !dbg !3209

; <label>:4:                                      ; preds = %0
  br label %5, !dbg !3211

; <label>:5:                                      ; preds = %4, %5
  %6 = phi i64 [ %9, %5 ], [ 1, %4 ]
  %7 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %6, i32 1, !dbg !3211
  %8 = load i8*, i8** %7, align 8, !dbg !3211, !tbaa !3212
  tail call void @free(i8* %8) #10, !dbg !3214
  %9 = add nuw i64 %6, 1, !dbg !3215
  %10 = load i32, i32* @nslots, align 4, !dbg !3204, !tbaa !965
  %11 = sext i32 %10 to i64, !dbg !3208
  %12 = icmp slt i64 %9, %11, !dbg !3208
  br i1 %12, label %5, label %13, !dbg !3209, !llvm.loop !3217

; <label>:13:                                     ; preds = %5
  br label %14, !dbg !3220

; <label>:14:                                     ; preds = %13, %0
  %15 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !3220
  %16 = load i8*, i8** %15, align 8, !dbg !3220, !tbaa !3212
  %17 = icmp eq i8* %16, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !3222
  br i1 %17, label %19, label %18, !dbg !3223

; <label>:18:                                     ; preds = %14
  tail call void @free(i8* %16) #10, !dbg !3224
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !3226, !tbaa !3227
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !3228, !tbaa !3212
  br label %19, !dbg !3229

; <label>:19:                                     ; preds = %14, %18
  %20 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !3230
  br i1 %20, label %23, label %21, !dbg !3232

; <label>:21:                                     ; preds = %19
  %22 = bitcast %struct.slotvec* %1 to i8*, !dbg !3233
  tail call void @free(i8* %22) #10, !dbg !3235
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !3236, !tbaa !770
  br label %23, !dbg !3237

; <label>:23:                                     ; preds = %19, %21
  store i32 1, i32* @nslots, align 4, !dbg !3238, !tbaa !965
  ret void, !dbg !3239
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n(i32, i8*) local_unnamed_addr #6 !dbg !3240 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3244, metadata !762), !dbg !3246
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3245, metadata !762), !dbg !3247
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !3248
  ret i8* %3, !dbg !3249
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32, i8*, i64, %struct.quoting_options*) unnamed_addr #6 !dbg !3250 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3254, metadata !762), !dbg !3268
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3255, metadata !762), !dbg !3269
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3256, metadata !762), !dbg !3270
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !3257, metadata !762), !dbg !3271
  %5 = tail call i32* @__errno_location() #1, !dbg !3272
  %6 = load i32, i32* %5, align 4, !dbg !3272, !tbaa !965
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !3258, metadata !762), !dbg !3273
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !3274, !tbaa !770
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %7, i64 0, metadata !3259, metadata !762), !dbg !3275
  %8 = icmp slt i32 %0, 0, !dbg !3276
  br i1 %8, label %9, label %10, !dbg !3278

; <label>:9:                                      ; preds = %4
  tail call void @abort() #14, !dbg !3279
  unreachable, !dbg !3279

; <label>:10:                                     ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !3280, !tbaa !965
  %12 = icmp sgt i32 %11, %0, !dbg !3281
  br i1 %12, label %34, label %13, !dbg !3282

; <label>:13:                                     ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !3283
  %15 = icmp ugt i32 %0, 2147483646, !dbg !3284
  br i1 %15, label %16, label %17, !dbg !3286

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #14, !dbg !3287
  unreachable, !dbg !3287

; <label>:17:                                     ; preds = %13
  %18 = bitcast %struct.slotvec* %7 to i8*, !dbg !3288
  %19 = select i1 %14, i8* null, i8* %18, !dbg !3288
  %20 = add nsw i32 %0, 1, !dbg !3290
  %21 = sext i32 %20 to i64, !dbg !3291
  %22 = shl nsw i64 %21, 4, !dbg !3292
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #10, !dbg !3293
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !3293
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %24, i64 0, metadata !3259, metadata !762), !dbg !3275
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !3294, !tbaa !770
  br i1 %14, label %25, label %26, !dbg !3295

; <label>:25:                                     ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i32 8, i1 false), !dbg !3296, !tbaa.struct !3298
  br label %26, !dbg !3299

; <label>:26:                                     ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !3300, !tbaa !965
  %28 = sext i32 %27 to i64, !dbg !3301
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !3301
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !3302
  %31 = sub nsw i32 %20, %27, !dbg !3303
  %32 = sext i32 %31 to i64, !dbg !3304
  %33 = shl nsw i64 %32, 4, !dbg !3305
  tail call void @llvm.memset.p0i8.i64(i8* %30, i8 0, i64 %33, i32 8, i1 false), !dbg !3302
  store i32 %20, i32* @nslots, align 4, !dbg !3306, !tbaa !965
  br label %34, !dbg !3307

; <label>:34:                                     ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ]
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %35, i64 0, metadata !3259, metadata !762), !dbg !3275
  %36 = sext i32 %0 to i64, !dbg !3308
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !3309
  %38 = load i64, i64* %37, align 8, !dbg !3309, !tbaa !3227
  tail call void @llvm.dbg.value(metadata i64 %38, i64 0, metadata !3263, metadata !762), !dbg !3310
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !3311
  %40 = load i8*, i8** %39, align 8, !dbg !3311, !tbaa !3212
  tail call void @llvm.dbg.value(metadata i8* %40, i64 0, metadata !3265, metadata !762), !dbg !3312
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !3313
  %42 = load i32, i32* %41, align 4, !dbg !3313, !tbaa !2023
  %43 = or i32 %42, 1, !dbg !3314
  tail call void @llvm.dbg.value(metadata i32 %43, i64 0, metadata !3266, metadata !762), !dbg !3315
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !3316
  %45 = load i32, i32* %44, align 8, !dbg !3316, !tbaa !1961
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !3317
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !3318
  %48 = load i8*, i8** %47, align 8, !dbg !3318, !tbaa !2050
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !3319
  %50 = load i8*, i8** %49, align 8, !dbg !3319, !tbaa !2053
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* %46, i8* %48, i8* %50), !dbg !3320
  tail call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !3267, metadata !762), !dbg !3321
  %52 = icmp ugt i64 %38, %51, !dbg !3322
  br i1 %52, label %63, label %53, !dbg !3324

; <label>:53:                                     ; preds = %34
  %54 = add i64 %51, 1, !dbg !3325
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !3263, metadata !762), !dbg !3310
  store i64 %54, i64* %37, align 8, !dbg !3327, !tbaa !3227
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !3328
  br i1 %55, label %57, label %56, !dbg !3330

; <label>:56:                                     ; preds = %53
  tail call void @free(i8* %40) #10, !dbg !3331
  br label %57, !dbg !3331

; <label>:57:                                     ; preds = %53, %56
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !3149, metadata !762) #10, !dbg !3332
  %58 = tail call noalias i8* @xmalloc(i64 %54) #10, !dbg !3334
  tail call void @llvm.dbg.value(metadata i8* %58, i64 0, metadata !3265, metadata !762), !dbg !3312
  store i8* %58, i8** %39, align 8, !dbg !3335, !tbaa !3212
  %59 = load i32, i32* %44, align 8, !dbg !3336, !tbaa !1961
  %60 = load i8*, i8** %47, align 8, !dbg !3337, !tbaa !2050
  %61 = load i8*, i8** %49, align 8, !dbg !3338, !tbaa !2053
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* %46, i8* %60, i8* %61), !dbg !3339
  br label %63, !dbg !3340

; <label>:63:                                     ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ]
  tail call void @llvm.dbg.value(metadata i8* %64, i64 0, metadata !3265, metadata !762), !dbg !3312
  store i32 %6, i32* %5, align 4, !dbg !3341, !tbaa !965
  ret i8* %64, !dbg !3342
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #7

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !3343 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3347, metadata !762), !dbg !3350
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3348, metadata !762), !dbg !3351
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3349, metadata !762), !dbg !3352
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !3353
  ret i8* %4, !dbg !3354
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg(i8*) local_unnamed_addr #6 !dbg !3355 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3357, metadata !762), !dbg !3358
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3244, metadata !762) #10, !dbg !3359
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3245, metadata !762) #10, !dbg !3361
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #10, !dbg !3362
  ret i8* %2, !dbg !3363
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_mem(i8*, i64) local_unnamed_addr #6 !dbg !3364 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3368, metadata !762), !dbg !3370
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3369, metadata !762), !dbg !3371
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3347, metadata !762) #10, !dbg !3372
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3348, metadata !762) #10, !dbg !3374
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3349, metadata !762) #10, !dbg !3375
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #10, !dbg !3376
  ret i8* %3, !dbg !3377
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style(i32, i32, i8*) local_unnamed_addr #6 !dbg !3378 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !3386, metadata !3392), !dbg !3393
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3382, metadata !762), !dbg !3395
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3383, metadata !762), !dbg !3396
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3384, metadata !762), !dbg !3397
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3398
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #10, !dbg !3398
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3385, metadata !993), !dbg !3399
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3391, metadata !762) #10, !dbg !3400
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !3401
  call void @llvm.lifetime.start(i64 52, i8* nonnull %7), !dbg !3401
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !3386, metadata !762) #10, !dbg !3393
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3386, metadata !3402) #10, !dbg !3393
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !3393
  %8 = icmp eq i32 %1, 10, !dbg !3403
  br i1 %8, label %9, label %10, !dbg !3405

; <label>:9:                                      ; preds = %3
  tail call void @abort() #14, !dbg !3406, !noalias !3407
  unreachable, !dbg !3406

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3386, metadata !3402) #10, !dbg !3393
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3410
  store i32 %1, i32* %11, align 8, !dbg !3410, !alias.scope !3407
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !3410
  %13 = bitcast i32* %12 to i8*, !dbg !3410
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #10, !dbg !3410
  call void @llvm.lifetime.end(i64 52, i8* nonnull %7), !dbg !3411
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3385, metadata !993), !dbg !3399
  %14 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !3412
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #10, !dbg !3413
  ret i8* %14, !dbg !3414
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_mem(i32, i32, i8*, i64) local_unnamed_addr #6 !dbg !3415 {
  %5 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !3386, metadata !3392), !dbg !3424
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3419, metadata !762), !dbg !3426
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3420, metadata !762), !dbg !3427
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3421, metadata !762), !dbg !3428
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3422, metadata !762), !dbg !3429
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !3430
  call void @llvm.lifetime.start(i64 56, i8* nonnull %7) #10, !dbg !3430
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !3423, metadata !993), !dbg !3431
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3391, metadata !762) #10, !dbg !3432
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !3433
  call void @llvm.lifetime.start(i64 52, i8* nonnull %8), !dbg !3433
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !3386, metadata !762) #10, !dbg !3424
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3386, metadata !3402) #10, !dbg !3424
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !3424
  %9 = icmp eq i32 %1, 10, !dbg !3434
  br i1 %9, label %10, label %11, !dbg !3435

; <label>:10:                                     ; preds = %4
  tail call void @abort() #14, !dbg !3436, !noalias !3437
  unreachable, !dbg !3436

; <label>:11:                                     ; preds = %4
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3386, metadata !3402) #10, !dbg !3424
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3440
  store i32 %1, i32* %12, align 8, !dbg !3440, !alias.scope !3437
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !3440
  %14 = bitcast i32* %13 to i8*, !dbg !3440
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* nonnull %8, i64 52, i32 4, i1 false) #10, !dbg !3440
  call void @llvm.lifetime.end(i64 52, i8* nonnull %8), !dbg !3441
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !3423, metadata !993), !dbg !3431
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %6), !dbg !3442
  call void @llvm.lifetime.end(i64 56, i8* nonnull %7) #10, !dbg !3443
  ret i8* %15, !dbg !3444
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style(i32, i8*) local_unnamed_addr #6 !dbg !3445 {
  %3 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %3, metadata !3386, metadata !3392), !dbg !3451
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3449, metadata !762), !dbg !3454
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3450, metadata !762), !dbg !3455
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3382, metadata !762) #10, !dbg !3456
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3383, metadata !762) #10, !dbg !3457
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3384, metadata !762) #10, !dbg !3458
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3459
  call void @llvm.lifetime.start(i64 56, i8* nonnull %5) #10, !dbg !3459
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3385, metadata !993) #10, !dbg !3460
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3391, metadata !762) #10, !dbg !3461
  %6 = getelementptr inbounds [52 x i8], [52 x i8]* %3, i64 0, i64 0, !dbg !3462
  call void @llvm.lifetime.start(i64 52, i8* nonnull %6), !dbg !3462
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !3386, metadata !762) #10, !dbg !3451
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3386, metadata !3402) #10, !dbg !3451
  call void @llvm.memset.p0i8.i64(i8* nonnull %6, i8 0, i64 52, i32 4, i1 false), !dbg !3451
  %7 = icmp eq i32 %0, 10, !dbg !3463
  br i1 %7, label %8, label %9, !dbg !3464

; <label>:8:                                      ; preds = %2
  tail call void @abort() #14, !dbg !3465, !noalias !3466
  unreachable, !dbg !3465

; <label>:9:                                      ; preds = %2
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3386, metadata !3402) #10, !dbg !3451
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3469
  store i32 %0, i32* %10, align 8, !dbg !3469, !alias.scope !3466
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !3469
  %12 = bitcast i32* %11 to i8*, !dbg !3469
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* nonnull %6, i64 52, i32 4, i1 false) #10, !dbg !3469
  call void @llvm.lifetime.end(i64 52, i8* nonnull %6), !dbg !3470
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3385, metadata !993) #10, !dbg !3460
  %13 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %4) #10, !dbg !3471
  call void @llvm.lifetime.end(i64 56, i8* nonnull %5) #10, !dbg !3472
  ret i8* %13, !dbg !3473
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !3474 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !3386, metadata !3392), !dbg !3481
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3478, metadata !762), !dbg !3484
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3479, metadata !762), !dbg !3485
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3480, metadata !762), !dbg !3486
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3419, metadata !762) #10, !dbg !3487
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3420, metadata !762) #10, !dbg !3488
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3421, metadata !762) #10, !dbg !3489
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3422, metadata !762) #10, !dbg !3490
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3491
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #10, !dbg !3491
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3423, metadata !993) #10, !dbg !3492
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3391, metadata !762) #10, !dbg !3493
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !3494
  call void @llvm.lifetime.start(i64 52, i8* nonnull %7), !dbg !3494
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !3386, metadata !762) #10, !dbg !3481
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3386, metadata !3402) #10, !dbg !3481
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !3481
  %8 = icmp eq i32 %0, 10, !dbg !3495
  br i1 %8, label %9, label %10, !dbg !3496

; <label>:9:                                      ; preds = %3
  tail call void @abort() #14, !dbg !3497, !noalias !3498
  unreachable, !dbg !3497

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3386, metadata !3402) #10, !dbg !3481
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3501
  store i32 %0, i32* %11, align 8, !dbg !3501, !alias.scope !3498
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !3501
  %13 = bitcast i32* %12 to i8*, !dbg !3501
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #10, !dbg !3501
  call void @llvm.lifetime.end(i64 52, i8* nonnull %7), !dbg !3502
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3423, metadata !993) #10, !dbg !3492
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %5) #10, !dbg !3503
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #10, !dbg !3504
  ret i8* %14, !dbg !3505
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char_mem(i8*, i64, i8 signext) local_unnamed_addr #6 !dbg !3506 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3510, metadata !762), !dbg !3514
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3511, metadata !762), !dbg !3515
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !3512, metadata !762), !dbg !3516
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3517
  call void @llvm.lifetime.start(i64 56, i8* nonnull %5) #10, !dbg !3517
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !3518, !tbaa.struct !3519
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3513, metadata !993), !dbg !3520
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1981, metadata !762), !dbg !3521
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !1982, metadata !762), !dbg !3523
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1983, metadata !762), !dbg !3524
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !1984, metadata !762), !dbg !3525
  %6 = lshr i8 %2, 5, !dbg !3526
  %7 = zext i8 %6 to i64, !dbg !3526
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !3527
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !1985, metadata !762), !dbg !3528
  %9 = and i8 %2, 31, !dbg !3529
  %10 = zext i8 %9 to i32, !dbg !3530
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !1987, metadata !762), !dbg !3531
  %11 = load i32, i32* %8, align 4, !dbg !3532, !tbaa !965
  %12 = lshr i32 %11, %10, !dbg !3533
  %13 = and i32 %12, 1, !dbg !3534
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !1988, metadata !762), !dbg !3535
  %14 = xor i32 %13, 1, !dbg !3536
  %15 = shl i32 %14, %10, !dbg !3537
  %16 = xor i32 %15, %11, !dbg !3538
  store i32 %16, i32* %8, align 4, !dbg !3538, !tbaa !965
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3513, metadata !993), !dbg !3520
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !3539
  call void @llvm.lifetime.end(i64 56, i8* nonnull %5) #10, !dbg !3540
  ret i8* %17, !dbg !3541
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char(i8*, i8 signext) local_unnamed_addr #6 !dbg !3542 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3546, metadata !762), !dbg !3548
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !3547, metadata !762), !dbg !3549
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3510, metadata !762) #10, !dbg !3550
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3511, metadata !762) #10, !dbg !3552
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !3512, metadata !762) #10, !dbg !3553
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3554
  call void @llvm.lifetime.start(i64 56, i8* nonnull %4) #10, !dbg !3554
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !3555, !tbaa.struct !3519
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !3513, metadata !993) #10, !dbg !3556
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !1981, metadata !762) #10, !dbg !3557
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1982, metadata !762) #10, !dbg !3559
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1983, metadata !762) #10, !dbg !3560
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1984, metadata !762) #10, !dbg !3561
  %5 = lshr i8 %1, 5, !dbg !3562
  %6 = zext i8 %5 to i64, !dbg !3562
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !3563
  tail call void @llvm.dbg.value(metadata i32* %7, i64 0, metadata !1985, metadata !762) #10, !dbg !3564
  %8 = and i8 %1, 31, !dbg !3565
  %9 = zext i8 %8 to i32, !dbg !3566
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !1987, metadata !762) #10, !dbg !3567
  %10 = load i32, i32* %7, align 4, !dbg !3568, !tbaa !965
  %11 = lshr i32 %10, %9, !dbg !3569
  %12 = and i32 %11, 1, !dbg !3570
  tail call void @llvm.dbg.value(metadata i32 %12, i64 0, metadata !1988, metadata !762) #10, !dbg !3571
  %13 = xor i32 %12, 1, !dbg !3572
  %14 = shl i32 %13, %9, !dbg !3573
  %15 = xor i32 %14, %10, !dbg !3574
  store i32 %15, i32* %7, align 4, !dbg !3574, !tbaa !965
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !3513, metadata !993) #10, !dbg !3556
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #10, !dbg !3575
  call void @llvm.lifetime.end(i64 56, i8* nonnull %4) #10, !dbg !3576
  ret i8* %16, !dbg !3577
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon(i8*) local_unnamed_addr #6 !dbg !3578 {
  %2 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3580, metadata !762), !dbg !3581
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3546, metadata !762) #10, !dbg !3582
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !3547, metadata !762) #10, !dbg !3584
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3510, metadata !762) #10, !dbg !3585
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3511, metadata !762) #10, !dbg !3587
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !3512, metadata !762) #10, !dbg !3588
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !3589
  call void @llvm.lifetime.start(i64 56, i8* nonnull %3) #10, !dbg !3589
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %3, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !3590, !tbaa.struct !3519
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !3513, metadata !993) #10, !dbg !3591
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !1981, metadata !762) #10, !dbg !3592
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1982, metadata !762) #10, !dbg !3594
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1983, metadata !762) #10, !dbg !3595
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1984, metadata !762) #10, !dbg !3596
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !3597
  tail call void @llvm.dbg.value(metadata i32* %4, i64 0, metadata !1985, metadata !762) #10, !dbg !3598
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !1987, metadata !762) #10, !dbg !3599
  %5 = load i32, i32* %4, align 4, !dbg !3600, !tbaa !965
  %6 = or i32 %5, 67108864, !dbg !3601
  store i32 %6, i32* %4, align 4, !dbg !3601, !tbaa !965
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !3513, metadata !993) #10, !dbg !3591
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #10, !dbg !3602
  call void @llvm.lifetime.end(i64 56, i8* nonnull %3) #10, !dbg !3603
  ret i8* %7, !dbg !3604
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon_mem(i8*, i64) local_unnamed_addr #6 !dbg !3605 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3607, metadata !762), !dbg !3609
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3608, metadata !762), !dbg !3610
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3510, metadata !762) #10, !dbg !3611
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3511, metadata !762) #10, !dbg !3613
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !3512, metadata !762) #10, !dbg !3614
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3615
  call void @llvm.lifetime.start(i64 56, i8* nonnull %4) #10, !dbg !3615
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !3616, !tbaa.struct !3519
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !3513, metadata !993) #10, !dbg !3617
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !1981, metadata !762) #10, !dbg !3618
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1982, metadata !762) #10, !dbg !3620
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1983, metadata !762) #10, !dbg !3621
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1984, metadata !762) #10, !dbg !3622
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !3623
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !1985, metadata !762) #10, !dbg !3624
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !1987, metadata !762) #10, !dbg !3625
  %6 = load i32, i32* %5, align 4, !dbg !3626, !tbaa !965
  %7 = or i32 %6, 67108864, !dbg !3627
  store i32 %7, i32* %5, align 4, !dbg !3627, !tbaa !965
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !3513, metadata !993) #10, !dbg !3617
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #10, !dbg !3628
  call void @llvm.lifetime.end(i64 56, i8* nonnull %4) #10, !dbg !3629
  ret i8* %8, !dbg !3630
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_colon(i32, i32, i8*) local_unnamed_addr #6 !dbg !3631 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !3386, metadata !3392), !dbg !3637
  %5 = alloca %struct.quoting_options, align 8
  %6 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3633, metadata !762), !dbg !3639
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3634, metadata !762), !dbg !3640
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3635, metadata !762), !dbg !3641
  %7 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3642
  call void @llvm.lifetime.start(i64 56, i8* nonnull %7) #10, !dbg !3642
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3391, metadata !762) #10, !dbg !3643
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !3644
  call void @llvm.lifetime.start(i64 52, i8* nonnull %8), !dbg !3644
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !3386, metadata !762) #10, !dbg !3637
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3386, metadata !3402) #10, !dbg !3637
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !3637
  %9 = icmp eq i32 %1, 10, !dbg !3645
  br i1 %9, label %10, label %11, !dbg !3646

; <label>:10:                                     ; preds = %3
  tail call void @abort() #14, !dbg !3647, !noalias !3648
  unreachable, !dbg !3647

; <label>:11:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3386, metadata !3402) #10, !dbg !3637
  %12 = getelementptr inbounds [52 x i8], [52 x i8]* %6, i64 0, i64 0, !dbg !3651
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %12, i8* nonnull %8, i64 52, i32 4, i1 false), !dbg !3651
  call void @llvm.lifetime.end(i64 52, i8* nonnull %8), !dbg !3652
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3653
  store i32 %1, i32* %13, align 8, !dbg !3653
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !3653
  %15 = bitcast i32* %14 to i8*, !dbg !3653
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* nonnull %12, i64 52, i32 4, i1 false), !dbg !3653
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3636, metadata !993), !dbg !3654
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1981, metadata !762), !dbg !3655
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1982, metadata !762), !dbg !3657
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1983, metadata !762), !dbg !3658
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1984, metadata !762), !dbg !3659
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 1, !dbg !3660
  tail call void @llvm.dbg.value(metadata i32* %16, i64 0, metadata !1985, metadata !762), !dbg !3661
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !1987, metadata !762), !dbg !3662
  %17 = load i32, i32* %16, align 4, !dbg !3663, !tbaa !965
  %18 = or i32 %17, 67108864, !dbg !3664
  store i32 %18, i32* %16, align 4, !dbg !3664, !tbaa !965
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3636, metadata !993), !dbg !3654
  %19 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !3665
  call void @llvm.lifetime.end(i64 56, i8* nonnull %7) #10, !dbg !3666
  ret i8* %19, !dbg !3667
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom(i32, i8*, i8*, i8*) local_unnamed_addr #6 !dbg !3668 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3672, metadata !762), !dbg !3676
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3673, metadata !762), !dbg !3677
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3674, metadata !762), !dbg !3678
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3675, metadata !762), !dbg !3679
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3680, metadata !762) #10, !dbg !3690
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3685, metadata !762) #10, !dbg !3692
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3686, metadata !762) #10, !dbg !3693
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3687, metadata !762) #10, !dbg !3694
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3688, metadata !762) #10, !dbg !3695
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3696
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #10, !dbg !3696
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !3697, !tbaa.struct !3519
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3689, metadata !993) #10, !dbg !3698
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2031, metadata !762) #10, !dbg !3699
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2032, metadata !762) #10, !dbg !3701
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2033, metadata !762) #10, !dbg !3702
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !2031, metadata !762) #10, !dbg !3699
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2031, metadata !762) #10, !dbg !3699
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3703
  store i32 10, i32* %7, align 8, !dbg !3704, !tbaa !1961
  %8 = icmp ne i8* %1, null, !dbg !3705
  %9 = icmp ne i8* %2, null, !dbg !3706
  %10 = and i1 %8, %9, !dbg !3707
  br i1 %10, label %12, label %11, !dbg !3707

; <label>:11:                                     ; preds = %4
  tail call void @abort() #14, !dbg !3708
  unreachable, !dbg !3708

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3709
  store i8* %1, i8** %13, align 8, !dbg !3710, !tbaa !2050
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3711
  store i8* %2, i8** %14, align 8, !dbg !3712, !tbaa !2053
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3689, metadata !993) #10, !dbg !3698
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #10, !dbg !3713
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #10, !dbg !3714
  ret i8* %15, !dbg !3715
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom_mem(i32, i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !3681 {
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3680, metadata !762), !dbg !3716
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3685, metadata !762), !dbg !3717
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3686, metadata !762), !dbg !3718
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3687, metadata !762), !dbg !3719
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !3688, metadata !762), !dbg !3720
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !3721
  call void @llvm.lifetime.start(i64 56, i8* nonnull %7) #10, !dbg !3721
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %7, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !3722, !tbaa.struct !3519
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !3689, metadata !993), !dbg !3723
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2031, metadata !762) #10, !dbg !3724
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2032, metadata !762) #10, !dbg !3726
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2033, metadata !762) #10, !dbg !3727
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !2031, metadata !762) #10, !dbg !3724
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2031, metadata !762) #10, !dbg !3724
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3728
  store i32 10, i32* %8, align 8, !dbg !3729, !tbaa !1961
  %9 = icmp ne i8* %1, null, !dbg !3730
  %10 = icmp ne i8* %2, null, !dbg !3731
  %11 = and i1 %9, %10, !dbg !3732
  br i1 %11, label %13, label %12, !dbg !3732

; <label>:12:                                     ; preds = %5
  tail call void @abort() #14, !dbg !3733
  unreachable, !dbg !3733

; <label>:13:                                     ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3734
  store i8* %1, i8** %14, align 8, !dbg !3735, !tbaa !2050
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3736
  store i8* %2, i8** %15, align 8, !dbg !3737, !tbaa !2053
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !3689, metadata !993), !dbg !3723
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !3738
  call void @llvm.lifetime.end(i64 56, i8* nonnull %7) #10, !dbg !3739
  ret i8* %16, !dbg !3740
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom(i8*, i8*, i8*) local_unnamed_addr #6 !dbg !3741 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3745, metadata !762), !dbg !3748
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3746, metadata !762), !dbg !3749
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3747, metadata !762), !dbg !3750
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3672, metadata !762) #10, !dbg !3751
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3673, metadata !762) #10, !dbg !3753
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3674, metadata !762) #10, !dbg !3754
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3675, metadata !762) #10, !dbg !3755
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3680, metadata !762) #10, !dbg !3756
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3685, metadata !762) #10, !dbg !3758
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3686, metadata !762) #10, !dbg !3759
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3687, metadata !762) #10, !dbg !3760
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3688, metadata !762) #10, !dbg !3761
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3762
  call void @llvm.lifetime.start(i64 56, i8* nonnull %5) #10, !dbg !3762
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !3763, !tbaa.struct !3519
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3689, metadata !993) #10, !dbg !3764
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2031, metadata !762) #10, !dbg !3765
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2032, metadata !762) #10, !dbg !3767
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2033, metadata !762) #10, !dbg !3768
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !2031, metadata !762) #10, !dbg !3765
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2031, metadata !762) #10, !dbg !3765
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3769
  store i32 10, i32* %6, align 8, !dbg !3770, !tbaa !1961
  %7 = icmp ne i8* %0, null, !dbg !3771
  %8 = icmp ne i8* %1, null, !dbg !3772
  %9 = and i1 %7, %8, !dbg !3773
  br i1 %9, label %11, label %10, !dbg !3773

; <label>:10:                                     ; preds = %3
  tail call void @abort() #14, !dbg !3774
  unreachable, !dbg !3774

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !3775
  store i8* %0, i8** %12, align 8, !dbg !3776, !tbaa !2050
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !3777
  store i8* %1, i8** %13, align 8, !dbg !3778, !tbaa !2053
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3689, metadata !993) #10, !dbg !3764
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #10, !dbg !3779
  call void @llvm.lifetime.end(i64 56, i8* nonnull %5) #10, !dbg !3780
  ret i8* %14, !dbg !3781
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom_mem(i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !3782 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3786, metadata !762), !dbg !3790
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3787, metadata !762), !dbg !3791
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3788, metadata !762), !dbg !3792
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3789, metadata !762), !dbg !3793
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3680, metadata !762) #10, !dbg !3794
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3685, metadata !762) #10, !dbg !3796
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3686, metadata !762) #10, !dbg !3797
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3687, metadata !762) #10, !dbg !3798
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3688, metadata !762) #10, !dbg !3799
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3800
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #10, !dbg !3800
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !3801, !tbaa.struct !3519
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3689, metadata !993) #10, !dbg !3802
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2031, metadata !762) #10, !dbg !3803
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2032, metadata !762) #10, !dbg !3805
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2033, metadata !762) #10, !dbg !3806
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !2031, metadata !762) #10, !dbg !3803
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2031, metadata !762) #10, !dbg !3803
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3807
  store i32 10, i32* %7, align 8, !dbg !3808, !tbaa !1961
  %8 = icmp ne i8* %0, null, !dbg !3809
  %9 = icmp ne i8* %1, null, !dbg !3810
  %10 = and i1 %8, %9, !dbg !3811
  br i1 %10, label %12, label %11, !dbg !3811

; <label>:11:                                     ; preds = %4
  tail call void @abort() #14, !dbg !3812
  unreachable, !dbg !3812

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3813
  store i8* %0, i8** %13, align 8, !dbg !3814, !tbaa !2050
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3815
  store i8* %1, i8** %14, align 8, !dbg !3816, !tbaa !2053
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3689, metadata !993) #10, !dbg !3802
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #10, !dbg !3817
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #10, !dbg !3818
  ret i8* %15, !dbg !3819
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !3820 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3824, metadata !762), !dbg !3827
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3825, metadata !762), !dbg !3828
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3826, metadata !762), !dbg !3829
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !3830
  ret i8* %4, !dbg !3831
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_mem(i8*, i64) local_unnamed_addr #6 !dbg !3832 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3836, metadata !762), !dbg !3838
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3837, metadata !762), !dbg !3839
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3824, metadata !762) #10, !dbg !3840
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3825, metadata !762) #10, !dbg !3842
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3826, metadata !762) #10, !dbg !3843
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !3844
  ret i8* %3, !dbg !3845
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n(i32, i8*) local_unnamed_addr #6 !dbg !3846 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3850, metadata !762), !dbg !3852
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3851, metadata !762), !dbg !3853
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3824, metadata !762) #10, !dbg !3854
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3825, metadata !762) #10, !dbg !3856
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3826, metadata !762) #10, !dbg !3857
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !3858
  ret i8* %3, !dbg !3859
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote(i8*) local_unnamed_addr #6 !dbg !3860 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3864, metadata !762), !dbg !3865
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3850, metadata !762) #10, !dbg !3866
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3851, metadata !762) #10, !dbg !3868
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3824, metadata !762) #10, !dbg !3869
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3825, metadata !762) #10, !dbg !3871
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3826, metadata !762) #10, !dbg !3872
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !3873
  ret i8* %2, !dbg !3874
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_arn(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly, i64) local_unnamed_addr #6 !dbg !3875 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3920, metadata !762), !dbg !3926
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3921, metadata !762), !dbg !3927
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3922, metadata !762), !dbg !3928
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3923, metadata !762), !dbg !3929
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !3924, metadata !762), !dbg !3930
  tail call void @llvm.dbg.value(metadata i64 %5, i64 0, metadata !3925, metadata !762), !dbg !3931
  %7 = icmp eq i8* %1, null, !dbg !3932
  br i1 %7, label %10, label %8, !dbg !3934

; <label>:8:                                      ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.97, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #10, !dbg !3935
  br label %12, !dbg !3935

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.98, i64 0, i64 0), i8* %2, i8* %3) #10, !dbg !3936
  br label %12

; <label>:12:                                     ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.99, i64 0, i64 0), i32 5) #10, !dbg !3937
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2017) #10, !dbg !3938
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([203 x i8], [203 x i8]* @.str.3.100, i64 0, i64 0), i32 5) #10, !dbg !3940
  %16 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %0) #10, !dbg !3941
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
  ], !dbg !3942

; <label>:17:                                     ; preds = %12
  tail call void @abort() #14, !dbg !3943
  unreachable, !dbg !3943

; <label>:18:                                     ; preds = %12
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4.101, i64 0, i64 0), i32 5) #10, !dbg !3945
  %20 = load i8*, i8** %4, align 8, !dbg !3945, !tbaa !770
  %21 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %19, i8* %20) #10, !dbg !3946
  br label %146, !dbg !3948

; <label>:22:                                     ; preds = %12
  %23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5.102, i64 0, i64 0), i32 5) #10, !dbg !3949
  %24 = load i8*, i8** %4, align 8, !dbg !3949, !tbaa !770
  %25 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3949
  %26 = load i8*, i8** %25, align 8, !dbg !3949, !tbaa !770
  %27 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %23, i8* %24, i8* %26) #10, !dbg !3950
  br label %146, !dbg !3951

; <label>:28:                                     ; preds = %12
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6.103, i64 0, i64 0), i32 5) #10, !dbg !3952
  %30 = load i8*, i8** %4, align 8, !dbg !3952, !tbaa !770
  %31 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3952
  %32 = load i8*, i8** %31, align 8, !dbg !3952, !tbaa !770
  %33 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3952
  %34 = load i8*, i8** %33, align 8, !dbg !3952, !tbaa !770
  %35 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %29, i8* %30, i8* %32, i8* %34) #10, !dbg !3953
  br label %146, !dbg !3954

; <label>:36:                                     ; preds = %12
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7.104, i64 0, i64 0), i32 5) #10, !dbg !3955
  %38 = load i8*, i8** %4, align 8, !dbg !3955, !tbaa !770
  %39 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3955
  %40 = load i8*, i8** %39, align 8, !dbg !3955, !tbaa !770
  %41 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3955
  %42 = load i8*, i8** %41, align 8, !dbg !3955, !tbaa !770
  %43 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3955
  %44 = load i8*, i8** %43, align 8, !dbg !3955, !tbaa !770
  %45 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %37, i8* %38, i8* %40, i8* %42, i8* %44) #10, !dbg !3956
  br label %146, !dbg !3957

; <label>:46:                                     ; preds = %12
  %47 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8.105, i64 0, i64 0), i32 5) #10, !dbg !3958
  %48 = load i8*, i8** %4, align 8, !dbg !3958, !tbaa !770
  %49 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3958
  %50 = load i8*, i8** %49, align 8, !dbg !3958, !tbaa !770
  %51 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3958
  %52 = load i8*, i8** %51, align 8, !dbg !3958, !tbaa !770
  %53 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3958
  %54 = load i8*, i8** %53, align 8, !dbg !3958, !tbaa !770
  %55 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3958
  %56 = load i8*, i8** %55, align 8, !dbg !3958, !tbaa !770
  %57 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %47, i8* %48, i8* %50, i8* %52, i8* %54, i8* %56) #10, !dbg !3959
  br label %146, !dbg !3960

; <label>:58:                                     ; preds = %12
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9.106, i64 0, i64 0), i32 5) #10, !dbg !3961
  %60 = load i8*, i8** %4, align 8, !dbg !3961, !tbaa !770
  %61 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3961
  %62 = load i8*, i8** %61, align 8, !dbg !3961, !tbaa !770
  %63 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3961
  %64 = load i8*, i8** %63, align 8, !dbg !3961, !tbaa !770
  %65 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3961
  %66 = load i8*, i8** %65, align 8, !dbg !3961, !tbaa !770
  %67 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3961
  %68 = load i8*, i8** %67, align 8, !dbg !3961, !tbaa !770
  %69 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3961
  %70 = load i8*, i8** %69, align 8, !dbg !3961, !tbaa !770
  %71 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %59, i8* %60, i8* %62, i8* %64, i8* %66, i8* %68, i8* %70) #10, !dbg !3962
  br label %146, !dbg !3963

; <label>:72:                                     ; preds = %12
  %73 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10.107, i64 0, i64 0), i32 5) #10, !dbg !3964
  %74 = load i8*, i8** %4, align 8, !dbg !3964, !tbaa !770
  %75 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3964
  %76 = load i8*, i8** %75, align 8, !dbg !3964, !tbaa !770
  %77 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3964
  %78 = load i8*, i8** %77, align 8, !dbg !3964, !tbaa !770
  %79 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3964
  %80 = load i8*, i8** %79, align 8, !dbg !3964, !tbaa !770
  %81 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3964
  %82 = load i8*, i8** %81, align 8, !dbg !3964, !tbaa !770
  %83 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3964
  %84 = load i8*, i8** %83, align 8, !dbg !3964, !tbaa !770
  %85 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3964
  %86 = load i8*, i8** %85, align 8, !dbg !3964, !tbaa !770
  %87 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %73, i8* %74, i8* %76, i8* %78, i8* %80, i8* %82, i8* %84, i8* %86) #10, !dbg !3965
  br label %146, !dbg !3966

; <label>:88:                                     ; preds = %12
  %89 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11.108, i64 0, i64 0), i32 5) #10, !dbg !3967
  %90 = load i8*, i8** %4, align 8, !dbg !3967, !tbaa !770
  %91 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3967
  %92 = load i8*, i8** %91, align 8, !dbg !3967, !tbaa !770
  %93 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3967
  %94 = load i8*, i8** %93, align 8, !dbg !3967, !tbaa !770
  %95 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3967
  %96 = load i8*, i8** %95, align 8, !dbg !3967, !tbaa !770
  %97 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3967
  %98 = load i8*, i8** %97, align 8, !dbg !3967, !tbaa !770
  %99 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3967
  %100 = load i8*, i8** %99, align 8, !dbg !3967, !tbaa !770
  %101 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3967
  %102 = load i8*, i8** %101, align 8, !dbg !3967, !tbaa !770
  %103 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3967
  %104 = load i8*, i8** %103, align 8, !dbg !3967, !tbaa !770
  %105 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %89, i8* %90, i8* %92, i8* %94, i8* %96, i8* %98, i8* %100, i8* %102, i8* %104) #10, !dbg !3968
  br label %146, !dbg !3969

; <label>:106:                                    ; preds = %12
  %107 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12.109, i64 0, i64 0), i32 5) #10, !dbg !3970
  %108 = load i8*, i8** %4, align 8, !dbg !3970, !tbaa !770
  %109 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3970
  %110 = load i8*, i8** %109, align 8, !dbg !3970, !tbaa !770
  %111 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3970
  %112 = load i8*, i8** %111, align 8, !dbg !3970, !tbaa !770
  %113 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3970
  %114 = load i8*, i8** %113, align 8, !dbg !3970, !tbaa !770
  %115 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3970
  %116 = load i8*, i8** %115, align 8, !dbg !3970, !tbaa !770
  %117 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3970
  %118 = load i8*, i8** %117, align 8, !dbg !3970, !tbaa !770
  %119 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3970
  %120 = load i8*, i8** %119, align 8, !dbg !3970, !tbaa !770
  %121 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3970
  %122 = load i8*, i8** %121, align 8, !dbg !3970, !tbaa !770
  %123 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3970
  %124 = load i8*, i8** %123, align 8, !dbg !3970, !tbaa !770
  %125 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %107, i8* %108, i8* %110, i8* %112, i8* %114, i8* %116, i8* %118, i8* %120, i8* %122, i8* %124) #10, !dbg !3971
  br label %146, !dbg !3972

; <label>:126:                                    ; preds = %12
  %127 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13.110, i64 0, i64 0), i32 5) #10, !dbg !3973
  %128 = load i8*, i8** %4, align 8, !dbg !3973, !tbaa !770
  %129 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3973
  %130 = load i8*, i8** %129, align 8, !dbg !3973, !tbaa !770
  %131 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3973
  %132 = load i8*, i8** %131, align 8, !dbg !3973, !tbaa !770
  %133 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3973
  %134 = load i8*, i8** %133, align 8, !dbg !3973, !tbaa !770
  %135 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3973
  %136 = load i8*, i8** %135, align 8, !dbg !3973, !tbaa !770
  %137 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3973
  %138 = load i8*, i8** %137, align 8, !dbg !3973, !tbaa !770
  %139 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3973
  %140 = load i8*, i8** %139, align 8, !dbg !3973, !tbaa !770
  %141 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3973
  %142 = load i8*, i8** %141, align 8, !dbg !3973, !tbaa !770
  %143 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3973
  %144 = load i8*, i8** %143, align 8, !dbg !3973, !tbaa !770
  %145 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %127, i8* %128, i8* %130, i8* %132, i8* %134, i8* %136, i8* %138, i8* %140, i8* %142, i8* %144) #10, !dbg !3974
  br label %146, !dbg !3975

; <label>:146:                                    ; preds = %126, %106, %88, %72, %58, %46, %36, %28, %22, %18
  ret void, !dbg !3976
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_ar(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly) local_unnamed_addr #6 !dbg !3977 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3981, metadata !762), !dbg !3987
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3982, metadata !762), !dbg !3988
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3983, metadata !762), !dbg !3989
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3984, metadata !762), !dbg !3990
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !3985, metadata !762), !dbg !3991
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3986, metadata !762), !dbg !3992
  br label %6, !dbg !3993

; <label>:6:                                      ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !3986, metadata !762), !dbg !3992
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !3995
  %9 = load i8*, i8** %8, align 8, !dbg !3995, !tbaa !770
  %10 = icmp eq i8* %9, null, !dbg !3998
  %11 = add i64 %7, 1, !dbg !4000
  tail call void @llvm.dbg.value(metadata i64 %11, i64 0, metadata !3986, metadata !762), !dbg !3992
  br i1 %10, label %12, label %6, !dbg !3998, !llvm.loop !4002

; <label>:12:                                     ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !4005
  ret void, !dbg !4006
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_va(%struct._IO_FILE*, i8*, i8*, i8*, %struct.__va_list_tag* nocapture) local_unnamed_addr #6 !dbg !4007 {
  %6 = alloca [10 x i8*], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4018, metadata !762), !dbg !4026
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4019, metadata !762), !dbg !4027
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4020, metadata !762), !dbg !4028
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !4021, metadata !762), !dbg !4029
  tail call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, i64 0, metadata !4022, metadata !762), !dbg !4030
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !4031
  call void @llvm.lifetime.start(i64 80, i8* nonnull %7) #10, !dbg !4031
  tail call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !4024, metadata !762), !dbg !4032
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4023, metadata !762), !dbg !4033
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4023, metadata !762), !dbg !4033
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  %11 = load i32, i32* %8, align 8, !dbg !4034
  %12 = icmp ult i32 %11, 41, !dbg !4034
  br i1 %12, label %13, label %18, !dbg !4034

; <label>:13:                                     ; preds = %5
  %14 = load i8*, i8** %9, align 8, !dbg !4038
  %15 = sext i32 %11 to i64, !dbg !4038
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !4038
  %17 = add i32 %11, 8, !dbg !4038
  store i32 %17, i32* %8, align 8, !dbg !4038
  br label %21, !dbg !4038

; <label>:18:                                     ; preds = %5
  %19 = load i8*, i8** %10, align 8, !dbg !4040
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !4040
  store i8* %20, i8** %10, align 8, !dbg !4040
  br label %21, !dbg !4040

; <label>:21:                                     ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ], !dbg !4034
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !4042
  %25 = load i8*, i8** %24, align 8, !dbg !4042
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !4044
  store i8* %25, i8** %26, align 16, !dbg !4045, !tbaa !770
  %27 = icmp eq i8* %25, null, !dbg !4046
  br i1 %27, label %30, label %28, !dbg !4047

; <label>:28:                                     ; preds = %21
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4023, metadata !762), !dbg !4033
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4023, metadata !762), !dbg !4033
  %29 = icmp ult i32 %22, 41, !dbg !4034
  br i1 %29, label %35, label %32, !dbg !4034

; <label>:30:                                     ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ]
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !4049
  call void @llvm.lifetime.end(i64 80, i8* nonnull %7) #10, !dbg !4050
  ret void, !dbg !4050

; <label>:32:                                     ; preds = %28
  %33 = load i8*, i8** %10, align 8, !dbg !4040
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !4040
  store i8* %34, i8** %10, align 8, !dbg !4040
  br label %40, !dbg !4040

; <label>:35:                                     ; preds = %28
  %36 = load i8*, i8** %9, align 8, !dbg !4038
  %37 = sext i32 %22 to i64, !dbg !4038
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !4038
  %39 = add i32 %22, 8, !dbg !4038
  store i32 %39, i32* %8, align 8, !dbg !4038
  br label %40, !dbg !4038

; <label>:40:                                     ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ], !dbg !4034
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !4042
  %44 = load i8*, i8** %43, align 8, !dbg !4042
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !4044
  store i8* %44, i8** %45, align 8, !dbg !4045, !tbaa !770
  %46 = icmp eq i8* %44, null, !dbg !4046
  br i1 %46, label %30, label %47, !dbg !4047

; <label>:47:                                     ; preds = %40
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4023, metadata !762), !dbg !4033
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4023, metadata !762), !dbg !4033
  %48 = icmp ult i32 %41, 41, !dbg !4034
  br i1 %48, label %52, label %49, !dbg !4034

; <label>:49:                                     ; preds = %47
  %50 = load i8*, i8** %10, align 8, !dbg !4040
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !4040
  store i8* %51, i8** %10, align 8, !dbg !4040
  br label %57, !dbg !4040

; <label>:52:                                     ; preds = %47
  %53 = load i8*, i8** %9, align 8, !dbg !4038
  %54 = sext i32 %41 to i64, !dbg !4038
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !4038
  %56 = add i32 %41, 8, !dbg !4038
  store i32 %56, i32* %8, align 8, !dbg !4038
  br label %57, !dbg !4038

; <label>:57:                                     ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ], !dbg !4034
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !4042
  %61 = load i8*, i8** %60, align 8, !dbg !4042
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !4044
  store i8* %61, i8** %62, align 16, !dbg !4045, !tbaa !770
  %63 = icmp eq i8* %61, null, !dbg !4046
  br i1 %63, label %30, label %64, !dbg !4047

; <label>:64:                                     ; preds = %57
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4023, metadata !762), !dbg !4033
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4023, metadata !762), !dbg !4033
  %65 = icmp ult i32 %58, 41, !dbg !4034
  br i1 %65, label %69, label %66, !dbg !4034

; <label>:66:                                     ; preds = %64
  %67 = load i8*, i8** %10, align 8, !dbg !4040
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !4040
  store i8* %68, i8** %10, align 8, !dbg !4040
  br label %74, !dbg !4040

; <label>:69:                                     ; preds = %64
  %70 = load i8*, i8** %9, align 8, !dbg !4038
  %71 = sext i32 %58 to i64, !dbg !4038
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !4038
  %73 = add i32 %58, 8, !dbg !4038
  store i32 %73, i32* %8, align 8, !dbg !4038
  br label %74, !dbg !4038

; <label>:74:                                     ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ], !dbg !4034
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !4042
  %78 = load i8*, i8** %77, align 8, !dbg !4042
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !4044
  store i8* %78, i8** %79, align 8, !dbg !4045, !tbaa !770
  %80 = icmp eq i8* %78, null, !dbg !4046
  br i1 %80, label %30, label %81, !dbg !4047

; <label>:81:                                     ; preds = %74
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4023, metadata !762), !dbg !4033
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4023, metadata !762), !dbg !4033
  %82 = icmp ult i32 %75, 41, !dbg !4034
  br i1 %82, label %86, label %83, !dbg !4034

; <label>:83:                                     ; preds = %81
  %84 = load i8*, i8** %10, align 8, !dbg !4040
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !4040
  store i8* %85, i8** %10, align 8, !dbg !4040
  br label %91, !dbg !4040

; <label>:86:                                     ; preds = %81
  %87 = load i8*, i8** %9, align 8, !dbg !4038
  %88 = sext i32 %75 to i64, !dbg !4038
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !4038
  %90 = add i32 %75, 8, !dbg !4038
  store i32 %90, i32* %8, align 8, !dbg !4038
  br label %91, !dbg !4038

; <label>:91:                                     ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ], !dbg !4034
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !4042
  %95 = load i8*, i8** %94, align 8, !dbg !4042
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !4044
  store i8* %95, i8** %96, align 16, !dbg !4045, !tbaa !770
  %97 = icmp eq i8* %95, null, !dbg !4046
  br i1 %97, label %30, label %98, !dbg !4047

; <label>:98:                                     ; preds = %91
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4023, metadata !762), !dbg !4033
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4023, metadata !762), !dbg !4033
  %99 = icmp ult i32 %92, 41, !dbg !4034
  br i1 %99, label %103, label %100, !dbg !4034

; <label>:100:                                    ; preds = %98
  %101 = load i8*, i8** %10, align 8, !dbg !4040
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !4040
  store i8* %102, i8** %10, align 8, !dbg !4040
  br label %108, !dbg !4040

; <label>:103:                                    ; preds = %98
  %104 = load i8*, i8** %9, align 8, !dbg !4038
  %105 = sext i32 %92 to i64, !dbg !4038
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !4038
  %107 = add i32 %92, 8, !dbg !4038
  store i32 %107, i32* %8, align 8, !dbg !4038
  br label %108, !dbg !4038

; <label>:108:                                    ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !4042
  %111 = load i8*, i8** %110, align 8, !dbg !4042
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !4044
  store i8* %111, i8** %112, align 8, !dbg !4045, !tbaa !770
  %113 = icmp eq i8* %111, null, !dbg !4046
  br i1 %113, label %30, label %114, !dbg !4047

; <label>:114:                                    ; preds = %108
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4023, metadata !762), !dbg !4033
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4023, metadata !762), !dbg !4033
  %115 = load i8*, i8** %10, align 8, !dbg !4040
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !4040
  store i8* %116, i8** %10, align 8, !dbg !4040
  %117 = bitcast i8* %115 to i8**, !dbg !4042
  %118 = load i8*, i8** %117, align 8, !dbg !4042
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !4044
  store i8* %118, i8** %119, align 16, !dbg !4045, !tbaa !770
  %120 = icmp eq i8* %118, null, !dbg !4046
  br i1 %120, label %30, label %121, !dbg !4047

; <label>:121:                                    ; preds = %114
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4023, metadata !762), !dbg !4033
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4023, metadata !762), !dbg !4033
  %122 = load i8*, i8** %10, align 8, !dbg !4040
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !4040
  store i8* %123, i8** %10, align 8, !dbg !4040
  %124 = bitcast i8* %122 to i8**, !dbg !4042
  %125 = load i8*, i8** %124, align 8, !dbg !4042
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !4044
  store i8* %125, i8** %126, align 8, !dbg !4045, !tbaa !770
  %127 = icmp eq i8* %125, null, !dbg !4046
  br i1 %127, label %30, label %128, !dbg !4047

; <label>:128:                                    ; preds = %121
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4023, metadata !762), !dbg !4033
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4023, metadata !762), !dbg !4033
  %129 = load i8*, i8** %10, align 8, !dbg !4040
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !4040
  store i8* %130, i8** %10, align 8, !dbg !4040
  %131 = bitcast i8* %129 to i8**, !dbg !4042
  %132 = load i8*, i8** %131, align 8, !dbg !4042
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !4044
  store i8* %132, i8** %133, align 16, !dbg !4045, !tbaa !770
  %134 = icmp eq i8* %132, null, !dbg !4046
  br i1 %134, label %30, label %135, !dbg !4047

; <label>:135:                                    ; preds = %128
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4023, metadata !762), !dbg !4033
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4023, metadata !762), !dbg !4033
  %136 = load i8*, i8** %10, align 8, !dbg !4040
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !4040
  store i8* %137, i8** %10, align 8, !dbg !4040
  %138 = bitcast i8* %136 to i8**, !dbg !4042
  %139 = load i8*, i8** %138, align 8, !dbg !4042
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !4044
  store i8* %139, i8** %140, align 8, !dbg !4045, !tbaa !770
  %141 = icmp eq i8* %139, null, !dbg !4046
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4023, metadata !762), !dbg !4033
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4023, metadata !762), !dbg !4033
  %142 = select i1 %141, i64 9, i64 10, !dbg !4047
  br label %30, !dbg !4047
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc(%struct._IO_FILE*, i8*, i8*, i8*, ...) local_unnamed_addr #6 !dbg !4051 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4055, metadata !762), !dbg !4065
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4056, metadata !762), !dbg !4066
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4057, metadata !762), !dbg !4067
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !4058, metadata !762), !dbg !4068
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !4069
  call void @llvm.lifetime.start(i64 24, i8* nonnull %6) #10, !dbg !4069
  tail call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !4059, metadata !762), !dbg !4070
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !4071
  call void @llvm.va_start(i8* nonnull %6), !dbg !4071
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !4072
  call void @llvm.va_end(i8* nonnull %6), !dbg !4073
  call void @llvm.lifetime.end(i64 24, i8* nonnull %6) #10, !dbg !4074
  ret void, !dbg !4074
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #10

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #10

; Function Attrs: nounwind sspstrong uwtable
define void @emit_bug_reporting_address() local_unnamed_addr #6 !dbg !4075 {
  %1 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14.113, i64 0, i64 0), i32 5) #10, !dbg !4076
  %2 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15.114, i64 0, i64 0)) #10, !dbg !4077
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.115, i64 0, i64 0), i32 5) #10, !dbg !4079
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17.116, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.18.117, i64 0, i64 0)) #10, !dbg !4080
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.19, i64 0, i64 0), i32 5) #10, !dbg !4081
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !4081, !tbaa !770
  %7 = tail call i32 @fputs_unlocked(i8* %5, %struct._IO_FILE* %6) #10, !dbg !4082
  ret void, !dbg !4083
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnmalloc(i64, i64) local_unnamed_addr #12 !dbg !4084 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4088, metadata !762), !dbg !4090
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4089, metadata !762), !dbg !4091
  %3 = udiv i64 9223372036854775807, %1, !dbg !4092
  %4 = icmp ult i64 %3, %0, !dbg !4092
  br i1 %4, label %5, label %6, !dbg !4094

; <label>:5:                                      ; preds = %2
  tail call void @xalloc_die() #14, !dbg !4095
  unreachable, !dbg !4095

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !4096
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !4097, metadata !762) #10, !dbg !4104
  %8 = tail call noalias i8* @malloc(i64 %7) #10, !dbg !4106
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !4103, metadata !762) #10, !dbg !4107
  %9 = icmp eq i8* %8, null, !dbg !4108
  %10 = icmp ne i64 %7, 0, !dbg !4110
  %11 = and i1 %10, %9, !dbg !4112
  br i1 %11, label %12, label %13, !dbg !4112

; <label>:12:                                     ; preds = %6
  tail call void @xalloc_die() #14, !dbg !4113
  unreachable, !dbg !4113

; <label>:13:                                     ; preds = %6
  ret i8* %8, !dbg !4114
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmalloc(i64) local_unnamed_addr #6 !dbg !4098 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4097, metadata !762), !dbg !4115
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !4116
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4103, metadata !762), !dbg !4117
  %3 = icmp eq i8* %2, null, !dbg !4118
  %4 = icmp ne i64 %0, 0, !dbg !4119
  %5 = and i1 %4, %3, !dbg !4120
  br i1 %5, label %6, label %7, !dbg !4120

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #14, !dbg !4121
  unreachable, !dbg !4121

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !4122
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnrealloc(i8*, i64, i64) local_unnamed_addr #12 !dbg !4123 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4127, metadata !762), !dbg !4130
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4128, metadata !762), !dbg !4131
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !4129, metadata !762), !dbg !4132
  %4 = udiv i64 9223372036854775807, %2, !dbg !4133
  %5 = icmp ult i64 %4, %1, !dbg !4133
  br i1 %5, label %6, label %7, !dbg !4135

; <label>:6:                                      ; preds = %3
  tail call void @xalloc_die() #14, !dbg !4136
  unreachable, !dbg !4136

; <label>:7:                                      ; preds = %3
  %8 = mul i64 %2, %1, !dbg !4137
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4138, metadata !762) #10, !dbg !4144
  tail call void @llvm.dbg.value(metadata i64 %8, i64 0, metadata !4143, metadata !762) #10, !dbg !4146
  %9 = icmp eq i64 %8, 0, !dbg !4147
  %10 = icmp ne i8* %0, null, !dbg !4149
  %11 = and i1 %10, %9, !dbg !4151
  br i1 %11, label %12, label %13, !dbg !4151

; <label>:12:                                     ; preds = %7
  tail call void @free(i8* nonnull %0) #10, !dbg !4152
  br label %19, !dbg !4154

; <label>:13:                                     ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #10, !dbg !4155
  tail call void @llvm.dbg.value(metadata i8* %14, i64 0, metadata !4138, metadata !762) #10, !dbg !4144
  %15 = icmp eq i8* %14, null, !dbg !4156
  %16 = icmp ne i64 %8, 0, !dbg !4158
  %17 = and i1 %16, %15, !dbg !4160
  br i1 %17, label %18, label %19, !dbg !4160

; <label>:18:                                     ; preds = %13
  tail call void @xalloc_die() #14, !dbg !4161
  unreachable, !dbg !4161

; <label>:19:                                     ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ]
  ret i8* %20, !dbg !4162
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xrealloc(i8*, i64) local_unnamed_addr #6 !dbg !4139 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4138, metadata !762), !dbg !4163
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4143, metadata !762), !dbg !4164
  %3 = icmp eq i64 %1, 0, !dbg !4165
  %4 = icmp ne i8* %0, null, !dbg !4166
  %5 = and i1 %4, %3, !dbg !4167
  br i1 %5, label %6, label %7, !dbg !4167

; <label>:6:                                      ; preds = %2
  tail call void @free(i8* nonnull %0) #10, !dbg !4168
  br label %13, !dbg !4169

; <label>:7:                                      ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #10, !dbg !4170
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !4138, metadata !762), !dbg !4163
  %9 = icmp eq i8* %8, null, !dbg !4171
  %10 = icmp ne i64 %1, 0, !dbg !4172
  %11 = and i1 %10, %9, !dbg !4173
  br i1 %11, label %12, label %13, !dbg !4173

; <label>:12:                                     ; preds = %7
  tail call void @xalloc_die() #14, !dbg !4174
  unreachable, !dbg !4174

; <label>:13:                                     ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ]
  ret i8* %14, !dbg !4175
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @x2nrealloc(i8*, i64* nocapture, i64) local_unnamed_addr #12 !dbg !710 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !715, metadata !762), !dbg !4176
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !716, metadata !762), !dbg !4177
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !717, metadata !762), !dbg !4178
  %4 = load i64, i64* %1, align 8, !dbg !4179, !tbaa !1005
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !718, metadata !762), !dbg !4180
  %5 = icmp eq i8* %0, null, !dbg !4181
  br i1 %5, label %6, label %13, !dbg !4183

; <label>:6:                                      ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !4184
  br i1 %7, label %8, label %17, !dbg !4187

; <label>:8:                                      ; preds = %6
  %9 = udiv i64 128, %2, !dbg !4188
  tail call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !718, metadata !762), !dbg !4180
  %10 = icmp ugt i64 %2, 128, !dbg !4190
  %11 = zext i1 %10 to i64, !dbg !4190
  %12 = add nuw nsw i64 %9, %11, !dbg !4191
  tail call void @llvm.dbg.value(metadata i64 %12, i64 0, metadata !718, metadata !762), !dbg !4180
  br label %17, !dbg !4192

; <label>:13:                                     ; preds = %3
  %14 = udiv i64 6148914691236517204, %2, !dbg !4193
  %15 = icmp ugt i64 %14, %4, !dbg !4196
  br i1 %15, label %20, label %16, !dbg !4197

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #14, !dbg !4198
  unreachable, !dbg !4198

; <label>:17:                                     ; preds = %6, %8
  %18 = phi i64 [ %12, %8 ], [ %4, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !718, metadata !762), !dbg !4180
  store i64 %18, i64* %1, align 8, !dbg !4199, !tbaa !1005
  %19 = mul i64 %18, %2, !dbg !4200
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4138, metadata !762) #10, !dbg !4201
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !4143, metadata !762) #10, !dbg !4203
  br label %27, !dbg !4204

; <label>:20:                                     ; preds = %13
  %21 = lshr i64 %4, 1, !dbg !4205
  %22 = add i64 %4, 1, !dbg !4206
  %23 = add i64 %22, %21, !dbg !4207
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !718, metadata !762), !dbg !4180
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !718, metadata !762), !dbg !4180
  store i64 %23, i64* %1, align 8, !dbg !4199, !tbaa !1005
  %24 = mul i64 %23, %2, !dbg !4200
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4138, metadata !762) #10, !dbg !4201
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !4143, metadata !762) #10, !dbg !4203
  %25 = icmp eq i64 %24, 0, !dbg !4208
  br i1 %25, label %26, label %27, !dbg !4204

; <label>:26:                                     ; preds = %20
  tail call void @free(i8* nonnull %0) #10, !dbg !4209
  br label %34, !dbg !4210

; <label>:27:                                     ; preds = %17, %20
  %28 = phi i64 [ %19, %17 ], [ %24, %20 ]
  %29 = tail call i8* @realloc(i8* %0, i64 %28) #10, !dbg !4211
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !4138, metadata !762) #10, !dbg !4201
  %30 = icmp eq i8* %29, null, !dbg !4212
  %31 = icmp ne i64 %28, 0, !dbg !4213
  %32 = and i1 %31, %30, !dbg !4214
  br i1 %32, label %33, label %34, !dbg !4214

; <label>:33:                                     ; preds = %27
  tail call void @xalloc_die() #14, !dbg !4215
  unreachable, !dbg !4215

; <label>:34:                                     ; preds = %26, %27
  %35 = phi i8* [ null, %26 ], [ %29, %27 ]
  ret i8* %35, !dbg !4216
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xcharalloc(i64) local_unnamed_addr #12 !dbg !4217 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4219, metadata !762), !dbg !4220
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4097, metadata !762) #10, !dbg !4221
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !4223
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4103, metadata !762) #10, !dbg !4224
  %3 = icmp eq i8* %2, null, !dbg !4225
  %4 = icmp ne i64 %0, 0, !dbg !4226
  %5 = and i1 %4, %3, !dbg !4227
  br i1 %5, label %6, label %7, !dbg !4227

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #14, !dbg !4228
  unreachable, !dbg !4228

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !4229
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @x2realloc(i8*, i64* nocapture) local_unnamed_addr #6 !dbg !4230 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4234, metadata !762), !dbg !4236
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !4235, metadata !762), !dbg !4237
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !715, metadata !762) #10, !dbg !4238
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !716, metadata !762) #10, !dbg !4240
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !717, metadata !762) #10, !dbg !4241
  %3 = load i64, i64* %1, align 8, !dbg !4242, !tbaa !1005
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !718, metadata !762) #10, !dbg !4243
  %4 = icmp eq i8* %0, null, !dbg !4244
  br i1 %4, label %5, label %8, !dbg !4245

; <label>:5:                                      ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !4246
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !718, metadata !762) #10, !dbg !4243
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !718, metadata !762) #10, !dbg !4243
  %7 = select i1 %6, i64 128, i64 %3, !dbg !4247
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !718, metadata !762) #10, !dbg !4243
  store i64 %7, i64* %1, align 8, !dbg !4248, !tbaa !1005
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4138, metadata !762) #10, !dbg !4249
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !4143, metadata !762) #10, !dbg !4251
  br label %17, !dbg !4252

; <label>:8:                                      ; preds = %2
  %9 = icmp ult i64 %3, 6148914691236517204, !dbg !4253
  br i1 %9, label %11, label %10, !dbg !4254

; <label>:10:                                     ; preds = %8
  tail call void @xalloc_die() #14, !dbg !4255
  unreachable, !dbg !4255

; <label>:11:                                     ; preds = %8
  %12 = lshr i64 %3, 1, !dbg !4256
  %13 = add i64 %3, 1, !dbg !4257
  %14 = add i64 %13, %12, !dbg !4258
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !718, metadata !762) #10, !dbg !4243
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !718, metadata !762) #10, !dbg !4243
  store i64 %14, i64* %1, align 8, !dbg !4248, !tbaa !1005
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4138, metadata !762) #10, !dbg !4249
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !4143, metadata !762) #10, !dbg !4251
  %15 = icmp eq i64 %14, 0, !dbg !4259
  br i1 %15, label %16, label %17, !dbg !4252

; <label>:16:                                     ; preds = %11
  tail call void @free(i8* nonnull %0) #10, !dbg !4260
  br label %24, !dbg !4261

; <label>:17:                                     ; preds = %11, %5
  %18 = phi i64 [ %7, %5 ], [ %14, %11 ]
  %19 = tail call i8* @realloc(i8* %0, i64 %18) #10, !dbg !4262
  tail call void @llvm.dbg.value(metadata i8* %19, i64 0, metadata !4138, metadata !762) #10, !dbg !4249
  %20 = icmp eq i8* %19, null, !dbg !4263
  %21 = icmp ne i64 %18, 0, !dbg !4264
  %22 = and i1 %21, %20, !dbg !4265
  br i1 %22, label %23, label %24, !dbg !4265

; <label>:23:                                     ; preds = %17
  tail call void @xalloc_die() #14, !dbg !4266
  unreachable, !dbg !4266

; <label>:24:                                     ; preds = %16, %17
  %25 = phi i8* [ null, %16 ], [ %19, %17 ]
  ret i8* %25, !dbg !4267
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xzalloc(i64) local_unnamed_addr #6 !dbg !4268 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4270, metadata !762), !dbg !4271
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4097, metadata !762) #10, !dbg !4272
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !4274
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4103, metadata !762) #10, !dbg !4275
  %3 = icmp eq i8* %2, null, !dbg !4276
  %4 = icmp ne i64 %0, 0, !dbg !4277
  %5 = and i1 %4, %3, !dbg !4278
  br i1 %5, label %6, label %7, !dbg !4278

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #14, !dbg !4279
  unreachable, !dbg !4279

; <label>:7:                                      ; preds = %1
  tail call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 %0, i32 1, i1 false), !dbg !4280
  ret i8* %2, !dbg !4281
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xcalloc(i64, i64) local_unnamed_addr #6 !dbg !4282 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4284, metadata !762), !dbg !4287
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4285, metadata !762), !dbg !4288
  %3 = udiv i64 9223372036854775807, %1, !dbg !4289
  %4 = icmp ult i64 %3, %0, !dbg !4289
  br i1 %4, label %8, label %5, !dbg !4291

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #10, !dbg !4292
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !4286, metadata !762), !dbg !4294
  %7 = icmp eq i8* %6, null, !dbg !4295
  br i1 %7, label %8, label %9, !dbg !4296

; <label>:8:                                      ; preds = %5, %2
  tail call void @xalloc_die() #14, !dbg !4298
  unreachable, !dbg !4298

; <label>:9:                                      ; preds = %5
  ret i8* %6, !dbg !4299
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmemdup(i8* nocapture readonly, i64) local_unnamed_addr #6 !dbg !4300 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4304, metadata !762), !dbg !4306
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4305, metadata !762), !dbg !4307
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4097, metadata !762) #10, !dbg !4308
  %3 = tail call noalias i8* @malloc(i64 %1) #10, !dbg !4310
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !4103, metadata !762) #10, !dbg !4311
  %4 = icmp eq i8* %3, null, !dbg !4312
  %5 = icmp ne i64 %1, 0, !dbg !4313
  %6 = and i1 %5, %4, !dbg !4314
  br i1 %6, label %7, label %8, !dbg !4314

; <label>:7:                                      ; preds = %2
  tail call void @xalloc_die() #14, !dbg !4315
  unreachable, !dbg !4315

; <label>:8:                                      ; preds = %2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %0, i64 %1, i32 1, i1 false), !dbg !4316
  ret i8* %3, !dbg !4317
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xstrdup(i8* nocapture readonly) local_unnamed_addr #6 !dbg !4318 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4320, metadata !762), !dbg !4321
  %2 = tail call i64 @strlen(i8* %0) #13, !dbg !4322
  %3 = add i64 %2, 1, !dbg !4323
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4304, metadata !762) #10, !dbg !4324
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !4305, metadata !762) #10, !dbg !4327
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !4097, metadata !762) #10, !dbg !4328
  %4 = tail call noalias i8* @malloc(i64 %3) #10, !dbg !4330
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !4103, metadata !762) #10, !dbg !4331
  %5 = icmp eq i8* %4, null, !dbg !4332
  %6 = icmp ne i64 %3, 0, !dbg !4333
  %7 = and i1 %6, %5, !dbg !4334
  br i1 %7, label %8, label %9, !dbg !4334

; <label>:8:                                      ; preds = %1
  tail call void @xalloc_die() #14, !dbg !4335
  unreachable, !dbg !4335

; <label>:9:                                      ; preds = %1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %0, i64 %3, i32 1, i1 false) #10, !dbg !4336
  ret i8* %4, !dbg !4337
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @xalloc_die() local_unnamed_addr #0 !dbg !4338 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !4340, !tbaa !965
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.128, i64 0, i64 0), i32 5) #10, !dbg !4341
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.129, i64 0, i64 0), i8* %2) #10, !dbg !4342
  tail call void @abort() #14, !dbg !4344
  unreachable, !dbg !4344
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @rpl_calloc(i64, i64) local_unnamed_addr #6 !dbg !4345 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4348, metadata !762), !dbg !4354
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4349, metadata !762), !dbg !4355
  %3 = icmp eq i64 %0, 0, !dbg !4356
  %4 = icmp eq i64 %1, 0, !dbg !4357
  %5 = or i1 %3, %4, !dbg !4359
  br i1 %5, label %12, label %6, !dbg !4359

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !4360
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !4351, metadata !762), !dbg !4361
  %8 = udiv i64 %7, %1, !dbg !4362
  %9 = icmp eq i64 %8, %0, !dbg !4364
  br i1 %9, label %12, label %10, !dbg !4365

; <label>:10:                                     ; preds = %6
  %11 = tail call i32* @__errno_location() #1, !dbg !4366
  store i32 12, i32* %11, align 4, !dbg !4368, !tbaa !965
  br label %16

; <label>:12:                                     ; preds = %6, %2
  %13 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %14 = phi i64 [ 1, %2 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !4348, metadata !762), !dbg !4354
  tail call void @llvm.dbg.value(metadata i64 %13, i64 0, metadata !4349, metadata !762), !dbg !4355
  %15 = tail call noalias i8* @calloc(i64 %14, i64 %13) #10, !dbg !4369
  tail call void @llvm.dbg.value(metadata i8* %15, i64 0, metadata !4350, metadata !762), !dbg !4370
  br label %16, !dbg !4371

; <label>:16:                                     ; preds = %10, %12
  %17 = phi i8* [ %15, %12 ], [ null, %10 ]
  ret i8* %17, !dbg !4372
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fclose(%struct._IO_FILE* nonnull) local_unnamed_addr #6 !dbg !4373 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4418, metadata !762), !dbg !4422
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4419, metadata !762), !dbg !4423
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4421, metadata !762), !dbg !4424
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !4425
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !4420, metadata !762), !dbg !4426
  %3 = icmp slt i32 %2, 0, !dbg !4427
  br i1 %3, label %4, label %6, !dbg !4429

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4430
  br label %24, !dbg !4431

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #10, !dbg !4432
  %8 = icmp eq i32 %7, 0, !dbg !4432
  br i1 %8, label %13, label %9, !dbg !4434

; <label>:9:                                      ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !4435
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #10, !dbg !4437
  %12 = icmp eq i64 %11, -1, !dbg !4439
  br i1 %12, label %16, label %13, !dbg !4440

; <label>:13:                                     ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #10, !dbg !4441
  %15 = icmp eq i32 %14, 0, !dbg !4441
  br i1 %15, label %16, label %18, !dbg !4442

; <label>:16:                                     ; preds = %13, %9
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !4419, metadata !762), !dbg !4423
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4444
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !4421, metadata !762), !dbg !4424
  br label %24, !dbg !4445

; <label>:18:                                     ; preds = %13
  %19 = tail call i32* @__errno_location() #1, !dbg !4446
  %20 = load i32, i32* %19, align 4, !dbg !4446, !tbaa !965
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !4419, metadata !762), !dbg !4423
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !4419, metadata !762), !dbg !4423
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4444
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !4421, metadata !762), !dbg !4424
  %22 = icmp eq i32 %20, 0, !dbg !4447
  br i1 %22, label %24, label %23, !dbg !4445

; <label>:23:                                     ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !4449, !tbaa !965
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !4421, metadata !762), !dbg !4424
  br label %24, !dbg !4451

; <label>:24:                                     ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ]
  ret i32 %25, !dbg !4452
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
define i32 @rpl_fflush(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !4453 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4498, metadata !762), !dbg !4499
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !4500
  br i1 %2, label %6, label %3, !dbg !4502

; <label>:3:                                      ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #10, !dbg !4503
  %5 = icmp eq i32 %4, 0, !dbg !4503
  br i1 %5, label %6, label %8, !dbg !4505

; <label>:6:                                      ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !4507
  br label %17, !dbg !4508

; <label>:8:                                      ; preds = %3
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4509, metadata !762) #10, !dbg !4514
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4516
  %10 = load i32, i32* %9, align 8, !dbg !4516, !tbaa !4518
  %11 = and i32 %10, 256, !dbg !4519
  %12 = icmp eq i32 %11, 0, !dbg !4519
  br i1 %12, label %15, label %13, !dbg !4520

; <label>:13:                                     ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #10, !dbg !4521
  br label %15, !dbg !4521

; <label>:15:                                     ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !4522
  br label %17, !dbg !4523

; <label>:17:                                     ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ]
  ret i32 %18, !dbg !4524
}

; Function Attrs: nounwind
declare i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull, i64, i32) local_unnamed_addr #6 !dbg !4525 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4571, metadata !762), !dbg !4577
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4572, metadata !762), !dbg !4578
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !4573, metadata !762), !dbg !4579
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !4580
  %5 = load i8*, i8** %4, align 8, !dbg !4580, !tbaa !4581
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !4582
  %7 = load i8*, i8** %6, align 8, !dbg !4582, !tbaa !4583
  %8 = icmp eq i8* %5, %7, !dbg !4584
  br i1 %8, label %9, label %28, !dbg !4585

; <label>:9:                                      ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !4586
  %11 = load i8*, i8** %10, align 8, !dbg !4586, !tbaa !1067
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !4588
  %13 = load i8*, i8** %12, align 8, !dbg !4588, !tbaa !4589
  %14 = icmp eq i8* %11, %13, !dbg !4590
  br i1 %14, label %15, label %28, !dbg !4591

; <label>:15:                                     ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !4592
  %17 = load i8*, i8** %16, align 8, !dbg !4592, !tbaa !4593
  %18 = icmp eq i8* %17, null, !dbg !4594
  br i1 %18, label %19, label %28, !dbg !4595

; <label>:19:                                     ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !4597
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #10, !dbg !4598
  tail call void @llvm.dbg.value(metadata i64 %21, i64 0, metadata !4574, metadata !762), !dbg !4600
  %22 = icmp eq i64 %21, -1, !dbg !4601
  br i1 %22, label %30, label %23, !dbg !4603

; <label>:23:                                     ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4604
  %25 = load i32, i32* %24, align 8, !dbg !4605, !tbaa !4518
  %26 = and i32 %25, -17, !dbg !4605
  store i32 %26, i32* %24, align 8, !dbg !4605, !tbaa !4518
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !4606
  store i64 %21, i64* %27, align 8, !dbg !4607, !tbaa !4608
  br label %30, !dbg !4609

; <label>:28:                                     ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !4610
  br label %30, !dbg !4611

; <label>:30:                                     ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ]
  ret i32 %31, !dbg !4612
}

; Function Attrs: nounwind
declare i32 @fseeko(%struct._IO_FILE* nocapture, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i64 @rpl_mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #6 !dbg !4613 {
  %5 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i32* %0, i64 0, metadata !4630, metadata !762), !dbg !4639
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4631, metadata !762), !dbg !4640
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !4632, metadata !762), !dbg !4641
  tail call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, i64 0, metadata !4633, metadata !762), !dbg !4642
  %6 = bitcast i32* %5 to i8*, !dbg !4643
  call void @llvm.lifetime.start(i64 4, i8* nonnull %6) #10, !dbg !4643
  %7 = icmp eq i32* %0, null, !dbg !4644
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !4630, metadata !762), !dbg !4639
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !4646
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !4630, metadata !762), !dbg !4639
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #10, !dbg !4647
  call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !4634, metadata !762), !dbg !4648
  %10 = icmp ugt i64 %9, -3, !dbg !4649
  %11 = icmp ne i64 %2, 0, !dbg !4650
  %12 = and i1 %11, %10, !dbg !4652
  br i1 %12, label %13, label %18, !dbg !4652

; <label>:13:                                     ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #10, !dbg !4653
  br i1 %14, label %18, label %15, !dbg !4655

; <label>:15:                                     ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !4657, !tbaa !1076
  call void @llvm.dbg.value(metadata i8 %16, i64 0, metadata !4636, metadata !762), !dbg !4658
  %17 = zext i8 %16 to i32, !dbg !4659
  store i32 %17, i32* %8, align 4, !dbg !4660, !tbaa !965
  br label %18

; <label>:18:                                     ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ]
  call void @llvm.lifetime.end(i64 4, i8* nonnull %6) #10, !dbg !4661
  ret i64 %19, !dbg !4661
}

; Function Attrs: nounwind
declare i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i8* @extract_trimmed_name(%struct.utmpx*) local_unnamed_addr #6 !dbg !4662 {
  tail call void @llvm.dbg.value(metadata %struct.utmpx* %0, i64 0, metadata !4691, metadata !762), !dbg !4694
  %2 = tail call noalias i8* @xmalloc(i64 33) #10, !dbg !4695
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4693, metadata !762), !dbg !4696
  %3 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %0, i64 0, i32 4, i64 0, !dbg !4697
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4698, metadata !762) #10, !dbg !4703
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !4701, metadata !762) #10, !dbg !4703
  tail call void @llvm.dbg.value(metadata i64 32, i64 0, metadata !4702, metadata !762) #10, !dbg !4703
  %4 = tail call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %2, i1 false) #10, !dbg !4705
  %5 = tail call i8* @__strncpy_chk(i8* nonnull %2, i8* nonnull %3, i64 32, i64 %4) #10, !dbg !4706
  %6 = getelementptr inbounds i8, i8* %2, i64 32, !dbg !4707
  store i8 0, i8* %6, align 1, !dbg !4708, !tbaa !1076
  %7 = tail call i64 @strlen(i8* %2) #13, !dbg !4709
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !4692, metadata !762), !dbg !4711
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !4692, metadata !762), !dbg !4711
  %8 = icmp sgt i64 %7, 0, !dbg !4712
  br i1 %8, label %9, label %19, !dbg !4714

; <label>:9:                                      ; preds = %1
  %10 = getelementptr inbounds i8, i8* %2, i64 %7, !dbg !4715
  br label %11, !dbg !4716

; <label>:11:                                     ; preds = %9, %16
  %12 = phi i8* [ %13, %16 ], [ %10, %9 ]
  %13 = getelementptr inbounds i8, i8* %12, i64 -1, !dbg !4716
  %14 = load i8, i8* %13, align 1, !dbg !4716, !tbaa !1076
  %15 = icmp eq i8 %14, 32, !dbg !4718
  br i1 %15, label %16, label %18, !dbg !4719

; <label>:16:                                     ; preds = %11
  tail call void @llvm.dbg.value(metadata i8* %13, i64 0, metadata !4692, metadata !762), !dbg !4711
  store i8 0, i8* %13, align 1, !dbg !4721, !tbaa !1076
  tail call void @llvm.dbg.value(metadata i8* %13, i64 0, metadata !4692, metadata !762), !dbg !4711
  %17 = icmp ult i8* %2, %13, !dbg !4712
  br i1 %17, label %11, label %18, !dbg !4714, !llvm.loop !4722

; <label>:18:                                     ; preds = %16, %11
  br label %19, !dbg !4725

; <label>:19:                                     ; preds = %18, %1
  ret i8* %2, !dbg !4725
}

; Function Attrs: nounwind
declare i8* @__strncpy_chk(i8*, i8*, i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @read_utmp(i8*, i64* nocapture, %struct.utmpx** nocapture, i32) local_unnamed_addr #6 !dbg !4726 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4732, metadata !762), !dbg !4740
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !4733, metadata !762), !dbg !4741
  tail call void @llvm.dbg.value(metadata %struct.utmpx** %2, i64 0, metadata !4734, metadata !762), !dbg !4742
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !4735, metadata !762), !dbg !4743
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4736, metadata !762), !dbg !4744
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4737, metadata !762), !dbg !4745
  tail call void @llvm.dbg.value(metadata %struct.utmpx* null, i64 0, metadata !4738, metadata !762), !dbg !4746
  %5 = tail call i32 @utmpxname(i8* %0) #10, !dbg !4747
  tail call void @setutxent() #10, !dbg !4748
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4736, metadata !762), !dbg !4744
  tail call void @llvm.dbg.value(metadata %struct.utmpx* null, i64 0, metadata !4738, metadata !762), !dbg !4746
  %6 = tail call %struct.utmpx* @getutxent() #10, !dbg !4749
  tail call void @llvm.dbg.value(metadata %struct.utmpx* %6, i64 0, metadata !4739, metadata !762), !dbg !4751
  %7 = icmp eq %struct.utmpx* %6, null, !dbg !4752
  br i1 %7, label %79, label %8, !dbg !4753

; <label>:8:                                      ; preds = %4
  %9 = and i32 %3, 2
  %10 = icmp eq i32 %9, 0
  %11 = and i32 %3, 1
  %12 = icmp eq i32 %11, 0
  br label %13, !dbg !4753

; <label>:13:                                     ; preds = %8, %67
  %14 = phi %struct.utmpx* [ %6, %8 ], [ %75, %67 ]
  %15 = phi i64 [ 0, %8 ], [ %71, %67 ]
  %16 = phi %struct.utmpx* [ null, %8 ], [ %70, %67 ]
  %17 = phi i8* [ null, %8 ], [ %69, %67 ]
  %18 = phi i64 [ 0, %8 ], [ %68, %67 ]
  br label %19, !dbg !4753

; <label>:19:                                     ; preds = %13, %31
  %20 = phi %struct.utmpx* [ %14, %13 ], [ %32, %31 ]
  tail call void @llvm.dbg.value(metadata %struct.utmpx* %20, i64 0, metadata !4754, metadata !762) #10, !dbg !4761
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !4759, metadata !762) #10, !dbg !4764
  %21 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %20, i64 0, i32 4, i64 0, !dbg !4765
  %22 = load i8, i8* %21, align 4, !dbg !4765, !tbaa !1076
  %23 = icmp eq i8 %22, 0, !dbg !4765
  br i1 %23, label %28, label %24, !dbg !4765

; <label>:24:                                     ; preds = %19
  %25 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %20, i64 0, i32 0, !dbg !4766
  %26 = load i16, i16* %25, align 4, !dbg !4766, !tbaa !1083
  %27 = icmp eq i16 %26, 7, !dbg !4766
  br label %28

; <label>:28:                                     ; preds = %24, %19
  %29 = phi i1 [ false, %19 ], [ %27, %24 ]
  %30 = or i1 %10, %29, !dbg !4768
  br i1 %30, label %34, label %31, !dbg !4768

; <label>:31:                                     ; preds = %28, %44
  tail call void @llvm.dbg.value(metadata i64 %15, i64 0, metadata !4736, metadata !762), !dbg !4744
  tail call void @llvm.dbg.value(metadata %struct.utmpx* %16, i64 0, metadata !4738, metadata !762), !dbg !4746
  %32 = tail call %struct.utmpx* @getutxent() #10, !dbg !4749
  tail call void @llvm.dbg.value(metadata %struct.utmpx* %32, i64 0, metadata !4739, metadata !762), !dbg !4751
  %33 = icmp eq %struct.utmpx* %32, null, !dbg !4752
  br i1 %33, label %77, label %19, !dbg !4753

; <label>:34:                                     ; preds = %28
  %35 = xor i1 %29, true, !dbg !4770
  %36 = or i1 %12, %35, !dbg !4770
  br i1 %36, label %48, label %37, !dbg !4770

; <label>:37:                                     ; preds = %34
  %38 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %20, i64 0, i32 1, !dbg !4772
  %39 = load i32, i32* %38, align 4, !dbg !4772, !tbaa !4774
  %40 = icmp sgt i32 %39, 0, !dbg !4775
  br i1 %40, label %41, label %48, !dbg !4776

; <label>:41:                                     ; preds = %37
  %42 = tail call i32 @kill(i32 %39, i32 0) #10, !dbg !4777
  %43 = icmp slt i32 %42, 0, !dbg !4778
  br i1 %43, label %44, label %48, !dbg !4779

; <label>:44:                                     ; preds = %41
  %45 = tail call i32* @__errno_location() #1, !dbg !4780
  %46 = load i32, i32* %45, align 4, !dbg !4780, !tbaa !965
  %47 = icmp eq i32 %46, 3, !dbg !4782
  br i1 %47, label %31, label %48, !dbg !4783

; <label>:48:                                     ; preds = %44, %41, %37, %34
  tail call void @llvm.dbg.value(metadata i64 %18, i64 0, metadata !4737, metadata !762), !dbg !4745
  %49 = icmp eq i64 %15, %18, !dbg !4784
  br i1 %49, label %50, label %67, !dbg !4787

; <label>:50:                                     ; preds = %48
  tail call void @llvm.dbg.value(metadata i8* %17, i64 0, metadata !745, metadata !762) #10, !dbg !4788
  tail call void @llvm.dbg.value(metadata i64 384, i64 0, metadata !747, metadata !762) #10, !dbg !4790
  tail call void @llvm.dbg.value(metadata i64 %18, i64 0, metadata !748, metadata !762) #10, !dbg !4791
  %51 = icmp eq i8* %17, null, !dbg !4792
  br i1 %51, label %52, label %55, !dbg !4794

; <label>:52:                                     ; preds = %50
  %53 = icmp eq i64 %15, 0, !dbg !4795
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !748, metadata !762) #10, !dbg !4791
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !748, metadata !762) #10, !dbg !4791
  %54 = select i1 %53, i64 1, i64 %15, !dbg !4798
  br label %62, !dbg !4798

; <label>:55:                                     ; preds = %50
  %56 = icmp ult i64 %15, 16012798675095096, !dbg !4799
  br i1 %56, label %58, label %57, !dbg !4802

; <label>:57:                                     ; preds = %55
  tail call void @xalloc_die() #14, !dbg !4803
  unreachable, !dbg !4803

; <label>:58:                                     ; preds = %55
  %59 = lshr i64 %15, 1, !dbg !4804
  %60 = add i64 %15, 1, !dbg !4805
  %61 = add i64 %60, %59, !dbg !4806
  tail call void @llvm.dbg.value(metadata i64 %61, i64 0, metadata !748, metadata !762) #10, !dbg !4791
  br label %62

; <label>:62:                                     ; preds = %52, %58
  %63 = phi i64 [ %61, %58 ], [ %54, %52 ]
  tail call void @llvm.dbg.value(metadata i64 %63, i64 0, metadata !748, metadata !762) #10, !dbg !4791
  %64 = mul i64 %63, 384, !dbg !4807
  %65 = tail call i8* @xrealloc(i8* %17, i64 %64) #10, !dbg !4808
  %66 = bitcast i8* %65 to %struct.utmpx*, !dbg !4809
  tail call void @llvm.dbg.value(metadata %struct.utmpx* %66, i64 0, metadata !4738, metadata !762), !dbg !4746
  br label %67, !dbg !4810

; <label>:67:                                     ; preds = %62, %48
  %68 = phi i64 [ %63, %62 ], [ %18, %48 ]
  %69 = phi i8* [ %65, %62 ], [ %17, %48 ]
  %70 = phi %struct.utmpx* [ %66, %62 ], [ %16, %48 ]
  tail call void @llvm.dbg.value(metadata %struct.utmpx* %70, i64 0, metadata !4738, metadata !762), !dbg !4746
  %71 = add i64 %15, 1, !dbg !4811
  tail call void @llvm.dbg.value(metadata i64 %71, i64 0, metadata !4736, metadata !762), !dbg !4744
  %72 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %70, i64 %15, !dbg !4812
  %73 = bitcast %struct.utmpx* %72 to i8*, !dbg !4813
  %74 = bitcast %struct.utmpx* %20 to i8*, !dbg !4813
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %73, i8* %74, i64 384, i32 4, i1 false), !dbg !4813, !tbaa.struct !4814
  tail call void @llvm.dbg.value(metadata i64 %71, i64 0, metadata !4736, metadata !762), !dbg !4744
  tail call void @llvm.dbg.value(metadata %struct.utmpx* %70, i64 0, metadata !4738, metadata !762), !dbg !4746
  %75 = tail call %struct.utmpx* @getutxent() #10, !dbg !4749
  tail call void @llvm.dbg.value(metadata %struct.utmpx* %75, i64 0, metadata !4739, metadata !762), !dbg !4751
  %76 = icmp eq %struct.utmpx* %75, null, !dbg !4752
  br i1 %76, label %78, label %13, !dbg !4753, !llvm.loop !4815

; <label>:77:                                     ; preds = %31
  br label %79, !dbg !4818

; <label>:78:                                     ; preds = %67
  br label %79, !dbg !4818

; <label>:79:                                     ; preds = %78, %77, %4
  %80 = phi i8* [ null, %4 ], [ %17, %77 ], [ %69, %78 ]
  %81 = phi i64 [ 0, %4 ], [ %15, %77 ], [ %71, %78 ]
  tail call void @endutxent() #10, !dbg !4818
  store i64 %81, i64* %1, align 8, !dbg !4819, !tbaa !1005
  %82 = bitcast %struct.utmpx** %2 to i8**, !dbg !4820
  store i8* %80, i8** %82, align 8, !dbg !4820, !tbaa !770
  ret i32 0, !dbg !4821
}

declare i32 @utmpxname(i8*) local_unnamed_addr #3

declare void @setutxent() local_unnamed_addr #3

declare %struct.utmpx* @getutxent() local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @kill(i32, i32) local_unnamed_addr #2

declare void @endutxent() local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define i32 @close_stream(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !4822 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4867, metadata !762), !dbg !4872
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #10, !dbg !4873
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4874, metadata !762), !dbg !4877
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4879
  %4 = load i32, i32* %3, align 8, !dbg !4879, !tbaa !4518
  %5 = and i32 %4, 32, !dbg !4879
  %6 = icmp eq i32 %5, 0, !dbg !4880
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #10, !dbg !4881
  %8 = icmp ne i32 %7, 0, !dbg !4882
  br i1 %6, label %9, label %19, !dbg !4883

; <label>:9:                                      ; preds = %1
  %10 = xor i1 %8, true, !dbg !4885
  %11 = icmp ne i64 %2, 0, !dbg !4885
  %12 = or i1 %11, %10, !dbg !4885
  %13 = sext i1 %8 to i32, !dbg !4885
  br i1 %12, label %22, label %14, !dbg !4885

; <label>:14:                                     ; preds = %9
  %15 = tail call i32* @__errno_location() #1, !dbg !4887
  %16 = load i32, i32* %15, align 4, !dbg !4887, !tbaa !965
  %17 = icmp ne i32 %16, 9, !dbg !4889
  %18 = sext i1 %17 to i32, !dbg !4889
  br label %22, !dbg !4889

; <label>:19:                                     ; preds = %1
  br i1 %8, label %22, label %20, !dbg !4891

; <label>:20:                                     ; preds = %19
  %21 = tail call i32* @__errno_location() #1, !dbg !4893
  store i32 0, i32* %21, align 4, !dbg !4895, !tbaa !965
  br label %22, !dbg !4893

; <label>:22:                                     ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ]
  ret i32 %23, !dbg !4896
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i8* @locale_charset() local_unnamed_addr #6 !dbg !4897 {
  %1 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %1, metadata !4907, metadata !762), !dbg !4981
  %2 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %2, metadata !4974, metadata !762), !dbg !4983
  %3 = tail call i8* @nl_langinfo(i32 14) #10, !dbg !4984
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !4899, metadata !762), !dbg !4985
  %4 = icmp eq i8* %3, null, !dbg !4986
  %5 = select i1 %4, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.146, i64 0, i64 0), i8* %3, !dbg !4988
  tail call void @llvm.dbg.value(metadata i8* %5, i64 0, metadata !4899, metadata !762), !dbg !4985
  %6 = load volatile i8*, i8** @charset_aliases, align 8, !dbg !4989, !tbaa !770
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !4921, metadata !762) #10, !dbg !4990
  %7 = icmp eq i8* %6, null, !dbg !4991
  br i1 %7, label %8, label %127, !dbg !4992

; <label>:8:                                      ; preds = %0
  %9 = tail call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3.147, i64 0, i64 0)) #10, !dbg !4993
  tail call void @llvm.dbg.value(metadata i8* %9, i64 0, metadata !4922, metadata !762) #10, !dbg !4994
  %10 = icmp eq i8* %9, null, !dbg !4995
  br i1 %10, label %14, label %11, !dbg !4997

; <label>:11:                                     ; preds = %8
  %12 = load i8, i8* %9, align 1, !dbg !4998, !tbaa !1076
  %13 = icmp eq i8 %12, 0, !dbg !5000
  br i1 %13, label %14, label %15, !dbg !5001

; <label>:14:                                     ; preds = %11, %8
  br label %15, !dbg !5003

; <label>:15:                                     ; preds = %14, %11
  %16 = phi i8* [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4.148, i64 0, i64 0), %14 ], [ %9, %11 ]
  tail call void @llvm.dbg.value(metadata i8* %16, i64 0, metadata !4922, metadata !762) #10, !dbg !4994
  %17 = tail call i64 @strlen(i8* nonnull %16) #13, !dbg !5004
  tail call void @llvm.dbg.value(metadata i64 %17, i64 0, metadata !4925, metadata !762) #10, !dbg !5005
  tail call void @llvm.dbg.value(metadata i64 13, i64 0, metadata !4927, metadata !762) #10, !dbg !5006
  %18 = icmp eq i64 %17, 0, !dbg !5007
  br i1 %18, label %24, label %19, !dbg !5008

; <label>:19:                                     ; preds = %15
  %20 = add i64 %17, -1, !dbg !5009
  %21 = getelementptr inbounds i8, i8* %16, i64 %20, !dbg !5009
  %22 = load i8, i8* %21, align 1, !dbg !5009, !tbaa !1076
  %23 = icmp ne i8 %22, 47, !dbg !5011
  br label %24

; <label>:24:                                     ; preds = %19, %15
  %25 = phi i1 [ false, %15 ], [ %23, %19 ]
  %26 = zext i1 %25 to i64, !dbg !5012
  %27 = add i64 %17, 14, !dbg !5013
  %28 = add i64 %27, %26, !dbg !5014
  %29 = tail call noalias i8* @malloc(i64 %28) #10, !dbg !5015
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !4924, metadata !762) #10, !dbg !5016
  %30 = icmp eq i8* %29, null, !dbg !5017
  br i1 %30, label %125, label %31, !dbg !5017

; <label>:31:                                     ; preds = %24
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %29, i8* %16, i64 %17, i32 1, i1 false) #10, !dbg !5018
  %32 = getelementptr inbounds i8, i8* %29, i64 %17
  br i1 %25, label %33, label %35, !dbg !5021

; <label>:33:                                     ; preds = %31
  store i8 47, i8* %32, align 1, !dbg !5022, !tbaa !1076
  %34 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !5024
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %34, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.149, i64 0, i64 0), i64 14, i32 1, i1 false) #10, !dbg !5025
  br label %37, !dbg !5026

; <label>:35:                                     ; preds = %31
  %36 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !5024
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.149, i64 0, i64 0), i64 14, i32 1, i1 false) #10, !dbg !5025
  br label %37, !dbg !5026

; <label>:37:                                     ; preds = %35, %33
  %38 = tail call i32 (i8*, i32, ...) @open(i8* nonnull %29, i32 131072) #10, !dbg !5027
  tail call void @llvm.dbg.value(metadata i32 %38, i64 0, metadata !4929, metadata !762) #10, !dbg !5028
  %39 = icmp slt i32 %38, 0, !dbg !5029
  br i1 %39, label %123, label %40, !dbg !5030

; <label>:40:                                     ; preds = %37
  %41 = tail call %struct._IO_FILE* @fdopen(i32 %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.150, i64 0, i64 0)) #10, !dbg !5031
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !4930, metadata !762) #10, !dbg !5032
  %42 = icmp eq %struct._IO_FILE* %41, null, !dbg !5033
  br i1 %42, label %48, label %43, !dbg !5034

; <label>:43:                                     ; preds = %40
  %44 = getelementptr inbounds [51 x i8], [51 x i8]* %1, i64 0, i64 0
  %45 = getelementptr inbounds [51 x i8], [51 x i8]* %2, i64 0, i64 0
  %46 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 1
  %47 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 2
  br label %50, !dbg !5035

; <label>:48:                                     ; preds = %40
  %49 = tail call i32 @close(i32 %38) #10, !dbg !5036
  br label %123, !dbg !5038

; <label>:50:                                     ; preds = %111, %43
  %51 = phi i64 [ %112, %111 ], [ 0, %43 ]
  %52 = phi i8* [ %113, %111 ], [ null, %43 ]
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !4971, metadata !762) #10, !dbg !5035
  call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !4972, metadata !762) #10, !dbg !5039
  call void @llvm.lifetime.start(i64 51, i8* nonnull %44) #10, !dbg !5040
  call void @llvm.lifetime.start(i64 51, i8* nonnull %45) #10, !dbg !5041
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !5042, metadata !762) #10, !dbg !5047
  %53 = load i8*, i8** %46, align 8, !dbg !5049, !tbaa !4583
  %54 = load i8*, i8** %47, align 8, !dbg !5049, !tbaa !4581
  %55 = icmp ult i8* %53, %54, !dbg !5049
  br i1 %55, label %58, label %56, !dbg !5049, !prof !1071

; <label>:56:                                     ; preds = %50
  %57 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #10, !dbg !5050
  br label %62, !dbg !5050

; <label>:58:                                     ; preds = %50
  %59 = getelementptr inbounds i8, i8* %53, i64 1, !dbg !5052
  store i8* %59, i8** %46, align 8, !dbg !5052, !tbaa !4583
  %60 = load i8, i8* %53, align 1, !dbg !5052, !tbaa !1076
  %61 = zext i8 %60 to i32, !dbg !5052
  br label %62, !dbg !5052

; <label>:62:                                     ; preds = %58, %56
  %63 = phi i32 [ %57, %56 ], [ %61, %58 ], !dbg !5054
  call void @llvm.dbg.value(metadata i32 %63, i64 0, metadata !4973, metadata !762) #10, !dbg !5056
  switch i32 %63, label %77 [
    i32 -1, label %115
    i32 32, label %111
    i32 10, label %111
    i32 9, label %111
    i32 35, label %64
  ], !dbg !5057

; <label>:64:                                     ; preds = %62
  br label %65, !dbg !5058

; <label>:65:                                     ; preds = %64, %75
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !5042, metadata !762) #10, !dbg !5058
  %66 = load i8*, i8** %46, align 8, !dbg !5062, !tbaa !4583
  %67 = load i8*, i8** %47, align 8, !dbg !5062, !tbaa !4581
  %68 = icmp ult i8* %66, %67, !dbg !5062
  br i1 %68, label %71, label %69, !dbg !5062, !prof !1071

; <label>:69:                                     ; preds = %65
  %70 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #10, !dbg !5063
  br label %75, !dbg !5063

; <label>:71:                                     ; preds = %65
  %72 = getelementptr inbounds i8, i8* %66, i64 1, !dbg !5064
  store i8* %72, i8** %46, align 8, !dbg !5064, !tbaa !4583
  %73 = load i8, i8* %66, align 1, !dbg !5064, !tbaa !1076
  %74 = zext i8 %73 to i32, !dbg !5064
  br label %75, !dbg !5064

; <label>:75:                                     ; preds = %71, %69
  %76 = phi i32 [ %70, %69 ], [ %74, %71 ], !dbg !5065
  call void @llvm.dbg.value(metadata i32 %76, i64 0, metadata !4973, metadata !762) #10, !dbg !5056
  switch i32 %76, label %65 [
    i32 -1, label %114
    i32 10, label %110
  ], !dbg !5066, !llvm.loop !5068

; <label>:77:                                     ; preds = %62
  %78 = call i32 @ungetc(i32 %63, %struct._IO_FILE* nonnull %41) #10, !dbg !5071
  %79 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* nonnull %41, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6.151, i64 0, i64 0), i8* nonnull %44, i8* nonnull %45) #10, !dbg !5072
  %80 = icmp slt i32 %79, 2, !dbg !5074
  br i1 %80, label %115, label %81, !dbg !5075

; <label>:81:                                     ; preds = %77
  %82 = call i64 @strlen(i8* nonnull %44) #13, !dbg !5076
  call void @llvm.dbg.value(metadata i64 %82, i64 0, metadata !4978, metadata !762) #10, !dbg !5077
  %83 = call i64 @strlen(i8* nonnull %45) #13, !dbg !5078
  call void @llvm.dbg.value(metadata i64 %83, i64 0, metadata !4979, metadata !762) #10, !dbg !5079
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !4980, metadata !762) #10, !dbg !5080
  %84 = icmp eq i64 %51, 0, !dbg !5081
  %85 = add i64 %82, 1
  %86 = add i64 %85, %83
  %87 = add i64 %86, 1
  br i1 %84, label %88, label %91, !dbg !5083

; <label>:88:                                     ; preds = %81
  call void @llvm.dbg.value(metadata i64 %87, i64 0, metadata !4972, metadata !762) #10, !dbg !5039
  %89 = add i64 %86, 2, !dbg !5084
  %90 = call noalias i8* @malloc(i64 %89) #10, !dbg !5086
  call void @llvm.dbg.value(metadata i8* %90, i64 0, metadata !4971, metadata !762) #10, !dbg !5035
  br label %95, !dbg !5087

; <label>:91:                                     ; preds = %81
  %92 = add i64 %87, %51, !dbg !5088
  call void @llvm.dbg.value(metadata i64 %92, i64 0, metadata !4972, metadata !762) #10, !dbg !5039
  %93 = add i64 %92, 1, !dbg !5090
  %94 = call i8* @realloc(i8* %52, i64 %93) #10, !dbg !5091
  call void @llvm.dbg.value(metadata i8* %94, i64 0, metadata !4971, metadata !762) #10, !dbg !5035
  br label %95

; <label>:95:                                     ; preds = %91, %88
  %96 = phi i64 [ %87, %88 ], [ %92, %91 ]
  %97 = phi i8* [ %90, %88 ], [ %94, %91 ]
  call void @llvm.dbg.value(metadata i8* %97, i64 0, metadata !4971, metadata !762) #10, !dbg !5035
  call void @llvm.dbg.value(metadata i64 %96, i64 0, metadata !4972, metadata !762) #10, !dbg !5039
  %98 = icmp eq i8* %97, null, !dbg !5092
  br i1 %98, label %99, label %100, !dbg !5094

; <label>:99:                                     ; preds = %95
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4972, metadata !762) #10, !dbg !5039
  call void @free(i8* %52) #10, !dbg !5095
  br label %116, !dbg !5097

; <label>:100:                                    ; preds = %95
  %101 = getelementptr inbounds i8, i8* %97, i64 %96, !dbg !5098
  %102 = xor i64 %83, -1, !dbg !5099
  %103 = getelementptr inbounds i8, i8* %101, i64 %102, !dbg !5099
  %104 = xor i64 %82, -1, !dbg !5100
  %105 = getelementptr inbounds i8, i8* %103, i64 %104, !dbg !5100
  call void @llvm.dbg.value(metadata i8* %105, i64 0, metadata !5101, metadata !762) #10, !dbg !5105
  call void @llvm.dbg.value(metadata i8* %44, i64 0, metadata !5104, metadata !762) #10, !dbg !5105
  %106 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %105, i1 false) #10, !dbg !5107
  %107 = call i8* @__strcpy_chk(i8* nonnull %105, i8* nonnull %44, i64 %106) #10, !dbg !5108
  call void @llvm.dbg.value(metadata i8* %103, i64 0, metadata !5101, metadata !762) #10, !dbg !5109
  call void @llvm.dbg.value(metadata i8* %45, i64 0, metadata !5104, metadata !762) #10, !dbg !5109
  %108 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %103, i1 false) #10, !dbg !5111
  %109 = call i8* @__strcpy_chk(i8* nonnull %103, i8* nonnull %45, i64 %108) #10, !dbg !5112
  br label %111, !dbg !5113

; <label>:110:                                    ; preds = %75
  br label %111, !dbg !5035

; <label>:111:                                    ; preds = %110, %100, %62, %62, %62
  %112 = phi i64 [ %96, %100 ], [ %51, %62 ], [ %51, %62 ], [ %51, %62 ], [ %51, %110 ]
  %113 = phi i8* [ %97, %100 ], [ %52, %62 ], [ %52, %62 ], [ %52, %62 ], [ %52, %110 ]
  call void @llvm.dbg.value(metadata i8* %113, i64 0, metadata !4971, metadata !762) #10, !dbg !5035
  call void @llvm.dbg.value(metadata i64 %112, i64 0, metadata !4972, metadata !762) #10, !dbg !5039
  call void @llvm.lifetime.end(i64 51, i8* nonnull %45) #10, !dbg !5113
  call void @llvm.lifetime.end(i64 51, i8* nonnull %44) #10, !dbg !5113
  br label %50

; <label>:114:                                    ; preds = %75
  br label %116, !dbg !5035

; <label>:115:                                    ; preds = %62, %77
  br label %116, !dbg !5035

; <label>:116:                                    ; preds = %115, %114, %99
  %117 = phi i64 [ 0, %99 ], [ %51, %114 ], [ %51, %115 ]
  %118 = phi i8* [ null, %99 ], [ %52, %114 ], [ %52, %115 ]
  call void @llvm.dbg.value(metadata i8* %113, i64 0, metadata !4971, metadata !762) #10, !dbg !5035
  call void @llvm.dbg.value(metadata i64 %112, i64 0, metadata !4972, metadata !762) #10, !dbg !5039
  call void @llvm.lifetime.end(i64 51, i8* nonnull %45) #10, !dbg !5113
  call void @llvm.lifetime.end(i64 51, i8* nonnull %44) #10, !dbg !5113
  %119 = call i32 @rpl_fclose(%struct._IO_FILE* nonnull %41) #10, !dbg !5114
  %120 = icmp eq i64 %117, 0, !dbg !5115
  br i1 %120, label %123, label %121, !dbg !5117

; <label>:121:                                    ; preds = %116
  %122 = getelementptr inbounds i8, i8* %118, i64 %117, !dbg !5118
  store i8 0, i8* %122, align 1, !dbg !5120, !tbaa !1076
  call void @llvm.dbg.value(metadata i8* %113, i64 0, metadata !4921, metadata !762) #10, !dbg !4990
  br label %123

; <label>:123:                                    ; preds = %121, %116, %48, %37
  %124 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.146, i64 0, i64 0), %37 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.146, i64 0, i64 0), %48 ], [ %118, %121 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.146, i64 0, i64 0), %116 ]
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !4921, metadata !762) #10, !dbg !4990
  call void @free(i8* %29) #10, !dbg !5121
  br label %125

; <label>:125:                                    ; preds = %123, %24
  %126 = phi i8* [ %124, %123 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.146, i64 0, i64 0), %24 ]
  call void @llvm.dbg.value(metadata i8* %126, i64 0, metadata !4921, metadata !762) #10, !dbg !4990
  store volatile i8* %126, i8** @charset_aliases, align 8, !dbg !5122, !tbaa !770
  br label %127, !dbg !5123

; <label>:127:                                    ; preds = %0, %125
  %128 = phi i8* [ %6, %0 ], [ %126, %125 ]
  call void @llvm.dbg.value(metadata i8* %128, i64 0, metadata !4900, metadata !762), !dbg !5124
  %129 = load i8, i8* %128, align 1, !dbg !5125, !tbaa !1076
  %130 = icmp eq i8 %129, 0, !dbg !5126
  br i1 %130, label %157, label %131, !dbg !5127

; <label>:131:                                    ; preds = %127
  br label %132, !dbg !5129

; <label>:132:                                    ; preds = %131, %147
  %133 = phi i8 [ %154, %147 ], [ %129, %131 ]
  %134 = phi i8* [ %153, %147 ], [ %128, %131 ]
  %135 = call i32 @strcmp(i8* %5, i8* %134) #10, !dbg !5129
  %136 = icmp eq i32 %135, 0, !dbg !5130
  br i1 %136, label %143, label %137, !dbg !5131

; <label>:137:                                    ; preds = %132
  %138 = icmp eq i8 %133, 42, !dbg !5132
  br i1 %138, label %139, label %147, !dbg !5134

; <label>:139:                                    ; preds = %137
  %140 = getelementptr inbounds i8, i8* %134, i64 1, !dbg !5135
  %141 = load i8, i8* %140, align 1, !dbg !5135, !tbaa !1076
  %142 = icmp eq i8 %141, 0, !dbg !5137
  br i1 %142, label %143, label %147, !dbg !5138

; <label>:143:                                    ; preds = %139, %132
  %144 = call i64 @strlen(i8* %134) #13, !dbg !5140
  %145 = getelementptr inbounds i8, i8* %134, i64 %144, !dbg !5142
  %146 = getelementptr inbounds i8, i8* %145, i64 1, !dbg !5143
  call void @llvm.dbg.value(metadata i8* %146, i64 0, metadata !4899, metadata !762), !dbg !4985
  br label %157, !dbg !5144

; <label>:147:                                    ; preds = %137, %139
  %148 = call i64 @strlen(i8* %134) #13, !dbg !5145
  %149 = add i64 %148, 1, !dbg !5146
  %150 = getelementptr inbounds i8, i8* %134, i64 %149, !dbg !5147
  call void @llvm.dbg.value(metadata i8* %150, i64 0, metadata !4900, metadata !762), !dbg !5124
  %151 = call i64 @strlen(i8* %150) #13, !dbg !5148
  %152 = add i64 %151, 1, !dbg !5149
  %153 = getelementptr inbounds i8, i8* %150, i64 %152, !dbg !5150
  call void @llvm.dbg.value(metadata i8* %153, i64 0, metadata !4900, metadata !762), !dbg !5124
  call void @llvm.dbg.value(metadata i8* %153, i64 0, metadata !4900, metadata !762), !dbg !5124
  %154 = load i8, i8* %153, align 1, !dbg !5125, !tbaa !1076
  %155 = icmp eq i8 %154, 0, !dbg !5126
  br i1 %155, label %156, label %132, !dbg !5127, !llvm.loop !5151

; <label>:156:                                    ; preds = %147
  br label %157, !dbg !4985

; <label>:157:                                    ; preds = %156, %127, %143
  %158 = phi i8* [ %146, %143 ], [ %5, %127 ], [ %5, %156 ]
  call void @llvm.dbg.value(metadata i8* %158, i64 0, metadata !4899, metadata !762), !dbg !4985
  %159 = load i8, i8* %158, align 1, !dbg !5154, !tbaa !1076
  %160 = icmp eq i8 %159, 0, !dbg !5156
  %161 = select i1 %160, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.152, i64 0, i64 0), i8* %158, !dbg !5157
  call void @llvm.dbg.value(metadata i8* %161, i64 0, metadata !4899, metadata !762), !dbg !4985
  ret i8* %161, !dbg !5158
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

!llvm.dbg.cu = !{!2, !212, !218, !261, !269, !688, !691, !276, !283, !697, !333, !705, !722, !724, !726, !728, !730, !732, !735, !750, !342}
!llvm.ident = !{!752, !752, !752, !752, !752, !752, !752, !752, !752, !752, !752, !752, !752, !752, !752, !752, !752, !752, !752, !752, !752}
!llvm.module.flags = !{!753, !754, !755, !756}

!0 = !DIGlobalVariableExpression(var: !1)
!1 = distinct !DIGlobalVariable(name: "longopts", scope: !2, file: !3, line: 75, type: !198, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !38, globals: !54)
!3 = !DIFile(filename: "src/pinky.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4 = !{!5, !19, !23}
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
!19 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !20, line: 148, size: 32, elements: !21)
!20 = !DIFile(filename: "./lib/readutmp.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!21 = !{!22}
!22 = !DIEnumerator(name: "UT_USER_SIZE", value: 32)
!23 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !24, line: 46, size: 32, elements: !25)
!24 = !DIFile(filename: "/usr/include/ctype.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!25 = !{!26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37}
!26 = !DIEnumerator(name: "_ISupper", value: 256)
!27 = !DIEnumerator(name: "_ISlower", value: 512)
!28 = !DIEnumerator(name: "_ISalpha", value: 1024)
!29 = !DIEnumerator(name: "_ISdigit", value: 2048)
!30 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!31 = !DIEnumerator(name: "_ISspace", value: 8192)
!32 = !DIEnumerator(name: "_ISprint", value: 16384)
!33 = !DIEnumerator(name: "_ISgraph", value: 32768)
!34 = !DIEnumerator(name: "_ISblank", value: 1)
!35 = !DIEnumerator(name: "_IScntrl", value: 2)
!36 = !DIEnumerator(name: "_ISpunct", value: 4)
!37 = !DIEnumerator(name: "_ISalnum", value: 8)
!38 = !{!39, !41, !42, !45, !47, !50, !49, !52, !53}
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!40 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !43, line: 62, baseType: !44)
!43 = !DIFile(filename: "/usr/bin/../lib/clang/4.0.1/include/stddef.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!44 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!46 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!48 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !49)
!49 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!51 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !40)
!52 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!53 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!54 = !{!55, !0, !85, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !125, !130}
!55 = !DIGlobalVariableExpression(var: !56)
!56 = distinct !DIGlobalVariable(name: "infomap", scope: !57, file: !58, line: 632, type: !82, isLocal: true, isDefinition: true)
!57 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !58, file: !58, line: 630, type: !59, isLocal: true, isDefinition: true, scopeLine: 631, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !61)
!58 = !DIFile(filename: "src/system.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!59 = !DISubroutineType(types: !60)
!60 = !{null, !50}
!61 = !{!62, !63, !64, !71, !73, !74, !75, !78, !79, !81}
!62 = !DILocalVariable(name: "program", arg: 1, scope: !57, file: !58, line: 630, type: !50)
!63 = !DILocalVariable(name: "node", scope: !57, file: !58, line: 642, type: !50)
!64 = !DILocalVariable(name: "map_prog", scope: !57, file: !58, line: 643, type: !65)
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
!66 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !67)
!67 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !57, file: !58, line: 632, size: 128, elements: !68)
!68 = !{!69, !70}
!69 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !67, file: !58, line: 632, baseType: !50, size: 64)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !67, file: !58, line: 632, baseType: !50, size: 64, offset: 64)
!71 = !DILocalVariable(name: "__s1_len", scope: !72, file: !58, line: 645, type: !42)
!72 = distinct !DILexicalBlock(scope: !57, file: !58, line: 645, column: 33)
!73 = !DILocalVariable(name: "__s2_len", scope: !72, file: !58, line: 645, type: !42)
!74 = !DILocalVariable(name: "lc_messages", scope: !57, file: !58, line: 655, type: !50)
!75 = !DILocalVariable(name: "__s1_len", scope: !76, file: !58, line: 656, type: !42)
!76 = distinct !DILexicalBlock(scope: !77, file: !58, line: 656, column: 22)
!77 = distinct !DILexicalBlock(scope: !57, file: !58, line: 656, column: 7)
!78 = !DILocalVariable(name: "__s2_len", scope: !76, file: !58, line: 656, type: !42)
!79 = !DILocalVariable(name: "__s2", scope: !80, file: !58, line: 656, type: !47)
!80 = distinct !DILexicalBlock(scope: !76, file: !58, line: 656, column: 22)
!81 = !DILocalVariable(name: "__result", scope: !80, file: !58, line: 656, type: !52)
!82 = !DICompositeType(tag: DW_TAG_array_type, baseType: !66, size: 896, elements: !83)
!83 = !{!84}
!84 = !DISubrange(count: 7)
!85 = !DIGlobalVariableExpression(var: !86)
!86 = distinct !DIGlobalVariable(name: "do_short_format", scope: !2, file: !3, line: 63, type: !87, isLocal: true, isDefinition: true)
!87 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!88 = !DIGlobalVariableExpression(var: !89)
!89 = distinct !DIGlobalVariable(name: "include_heading", scope: !2, file: !3, line: 47, type: !87, isLocal: true, isDefinition: true)
!90 = !DIGlobalVariableExpression(var: !91)
!91 = distinct !DIGlobalVariable(name: "include_fullname", scope: !2, file: !3, line: 50, type: !87, isLocal: true, isDefinition: true)
!92 = !DIGlobalVariableExpression(var: !93)
!93 = distinct !DIGlobalVariable(name: "include_where", scope: !2, file: !3, line: 67, type: !87, isLocal: true, isDefinition: true)
!94 = !DIGlobalVariableExpression(var: !95)
!95 = distinct !DIGlobalVariable(name: "include_idle", scope: !2, file: !3, line: 44, type: !87, isLocal: true, isDefinition: true)
!96 = !DIGlobalVariableExpression(var: !97)
!97 = distinct !DIGlobalVariable(name: "include_project", scope: !2, file: !3, line: 53, type: !87, isLocal: true, isDefinition: true)
!98 = !DIGlobalVariableExpression(var: !99)
!99 = distinct !DIGlobalVariable(name: "include_plan", scope: !2, file: !3, line: 56, type: !87, isLocal: true, isDefinition: true)
!100 = !DIGlobalVariableExpression(var: !101)
!101 = distinct !DIGlobalVariable(name: "include_home_and_shell", scope: !2, file: !3, line: 60, type: !87, isLocal: true, isDefinition: true)
!102 = !DIGlobalVariableExpression(var: !103)
!103 = distinct !DIGlobalVariable(name: "time_format", scope: !2, file: !3, line: 72, type: !50, isLocal: true, isDefinition: true)
!104 = !DIGlobalVariableExpression(var: !105)
!105 = distinct !DIGlobalVariable(name: "time_format_width", scope: !2, file: !3, line: 73, type: !52, isLocal: true, isDefinition: true)
!106 = !DIGlobalVariableExpression(var: !107)
!107 = distinct !DIGlobalVariable(name: "now", scope: !108, file: !3, line: 149, type: !111, isLocal: true, isDefinition: true)
!108 = distinct !DISubprogram(name: "idle_string", scope: !3, file: !3, line: 147, type: !109, isLocal: true, isDefinition: true, scopeLine: 148, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !116)
!109 = !DISubroutineType(types: !110)
!110 = !{!50, !111}
!111 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !112, line: 8, baseType: !113)
!112 = !DIFile(filename: "/usr/include/bits/types/time_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!113 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !114, line: 148, baseType: !115)
!114 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!115 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!116 = !{!117, !118, !119, !122, !123}
!117 = !DILocalVariable(name: "when", arg: 1, scope: !108, file: !3, line: 147, type: !111)
!118 = !DILocalVariable(name: "seconds_idle", scope: !108, file: !3, line: 151, type: !111)
!119 = !DILocalVariable(name: "hours", scope: !120, file: !3, line: 161, type: !52)
!120 = distinct !DILexicalBlock(scope: !121, file: !3, line: 160, column: 5)
!121 = distinct !DILexicalBlock(scope: !108, file: !3, line: 159, column: 7)
!122 = !DILocalVariable(name: "minutes", scope: !120, file: !3, line: 162, type: !52)
!123 = !DILocalVariable(name: "days", scope: !124, file: !3, line: 167, type: !44)
!124 = distinct !DILexicalBlock(scope: !121, file: !3, line: 166, column: 5)
!125 = !DIGlobalVariableExpression(var: !126)
!126 = distinct !DIGlobalVariable(name: "buf", scope: !108, file: !3, line: 150, type: !127, isLocal: true, isDefinition: true)
!127 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 176, elements: !128)
!128 = !{!129}
!129 = !DISubrange(count: 22)
!130 = !DIGlobalVariableExpression(var: !131)
!131 = distinct !DIGlobalVariable(name: "buf", scope: !132, file: !3, line: 177, type: !195, isLocal: true, isDefinition: true)
!132 = distinct !DISubprogram(name: "time_string", scope: !3, file: !3, line: 175, type: !133, isLocal: true, isDefinition: true, scopeLine: 176, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !176)
!133 = !DISubroutineType(types: !134)
!134 = !{!50, !135}
!135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64)
!136 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !137)
!137 = !DIDerivedType(tag: DW_TAG_typedef, name: "STRUCT_UTMP", file: !20, line: 146, baseType: !138)
!138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "utmpx", file: !139, line: 55, size: 3072, elements: !140)
!139 = !DIFile(filename: "/usr/include/bits/utmpx.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!140 = !{!141, !143, !145, !149, !153, !154, !158, !163, !165, !170, !172}
!141 = !DIDerivedType(tag: DW_TAG_member, name: "ut_type", scope: !138, file: !139, line: 57, baseType: !142, size: 16)
!142 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "ut_pid", scope: !138, file: !139, line: 58, baseType: !144, size: 32, offset: 32)
!144 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pid_t", file: !114, line: 142, baseType: !52)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "ut_line", scope: !138, file: !139, line: 59, baseType: !146, size: 256, offset: 64)
!146 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 256, elements: !147)
!147 = !{!148}
!148 = !DISubrange(count: 32)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "ut_id", scope: !138, file: !139, line: 60, baseType: !150, size: 32, offset: 320)
!150 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 32, elements: !151)
!151 = !{!152}
!152 = !DISubrange(count: 4)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "ut_user", scope: !138, file: !139, line: 61, baseType: !146, size: 256, offset: 352)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "ut_host", scope: !138, file: !139, line: 62, baseType: !155, size: 2048, offset: 608)
!155 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 2048, elements: !156)
!156 = !{!157}
!157 = !DISubrange(count: 256)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "ut_exit", scope: !138, file: !139, line: 63, baseType: !159, size: 32, offset: 2656)
!159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__exit_status", file: !139, line: 42, size: 32, elements: !160)
!160 = !{!161, !162}
!161 = !DIDerivedType(tag: DW_TAG_member, name: "e_termination", scope: !159, file: !139, line: 45, baseType: !142, size: 16)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "e_exit", scope: !159, file: !139, line: 46, baseType: !142, size: 16, offset: 16)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "ut_session", scope: !138, file: !139, line: 70, baseType: !164, size: 32, offset: 2688)
!164 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !114, line: 40, baseType: !52)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "ut_tv", scope: !138, file: !139, line: 75, baseType: !166, size: 64, offset: 2720)
!166 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !138, file: !139, line: 71, size: 64, elements: !167)
!167 = !{!168, !169}
!168 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !166, file: !139, line: 73, baseType: !164, size: 32)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !166, file: !139, line: 74, baseType: !164, size: 32, offset: 32)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "ut_addr_v6", scope: !138, file: !139, line: 80, baseType: !171, size: 128, offset: 2784)
!171 = !DICompositeType(tag: DW_TAG_array_type, baseType: !164, size: 128, elements: !151)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !138, file: !139, line: 81, baseType: !173, size: 160, offset: 2912)
!173 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 160, elements: !174)
!174 = !{!175}
!175 = !DISubrange(count: 20)
!176 = !{!177, !178, !179}
!177 = !DILocalVariable(name: "utmp_ent", arg: 1, scope: !132, file: !3, line: 175, type: !135)
!178 = !DILocalVariable(name: "t", scope: !132, file: !3, line: 185, type: !111)
!179 = !DILocalVariable(name: "tmp", scope: !132, file: !3, line: 186, type: !180)
!180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !181, size: 64)
!181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tm", file: !182, line: 8, size: 448, elements: !183)
!182 = !DIFile(filename: "/usr/include/bits/types/struct_tm.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!183 = !{!184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194}
!184 = !DIDerivedType(tag: DW_TAG_member, name: "tm_sec", scope: !181, file: !182, line: 10, baseType: !52, size: 32)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "tm_min", scope: !181, file: !182, line: 11, baseType: !52, size: 32, offset: 32)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "tm_hour", scope: !181, file: !182, line: 12, baseType: !52, size: 32, offset: 64)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "tm_mday", scope: !181, file: !182, line: 13, baseType: !52, size: 32, offset: 96)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "tm_mon", scope: !181, file: !182, line: 14, baseType: !52, size: 32, offset: 128)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "tm_year", scope: !181, file: !182, line: 15, baseType: !52, size: 32, offset: 160)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "tm_wday", scope: !181, file: !182, line: 16, baseType: !52, size: 32, offset: 192)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "tm_yday", scope: !181, file: !182, line: 17, baseType: !52, size: 32, offset: 224)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "tm_isdst", scope: !181, file: !182, line: 18, baseType: !52, size: 32, offset: 256)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "tm_gmtoff", scope: !181, file: !182, line: 21, baseType: !115, size: 64, offset: 320)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "tm_zone", scope: !181, file: !182, line: 22, baseType: !50, size: 64, offset: 384)
!195 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 264, elements: !196)
!196 = !{!197}
!197 = !DISubrange(count: 33)
!198 = !DICompositeType(tag: DW_TAG_array_type, baseType: !199, size: 768, elements: !208)
!199 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !200)
!200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !201, line: 104, size: 256, elements: !202)
!201 = !DIFile(filename: "/usr/include/getopt.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!202 = !{!203, !204, !205, !207}
!203 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !200, file: !201, line: 106, baseType: !50, size: 64)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !200, file: !201, line: 109, baseType: !52, size: 32, offset: 64)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !200, file: !201, line: 110, baseType: !206, size: 64, offset: 128)
!206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !200, file: !201, line: 111, baseType: !52, size: 32, offset: 192)
!208 = !{!209}
!209 = !DISubrange(count: 3)
!210 = !DIGlobalVariableExpression(var: !211)
!211 = distinct !DIGlobalVariable(name: "Version", scope: !212, file: !213, line: 2, type: !50, isLocal: false, isDefinition: true)
!212 = distinct !DICompileUnit(language: DW_LANG_C99, file: !213, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !214, globals: !215)
!213 = !DIFile(filename: "src/version.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!214 = !{}
!215 = !{!210}
!216 = !DIGlobalVariableExpression(var: !217)
!217 = distinct !DIGlobalVariable(name: "last_cherror", scope: !218, file: !224, line: 28, type: !52, isLocal: true, isDefinition: true)
!218 = distinct !DICompileUnit(language: DW_LANG_C99, file: !219, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !214, globals: !220)
!219 = !DIFile(filename: "./lib/canon-host.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!220 = !{!221, !216}
!221 = !DIGlobalVariableExpression(var: !222)
!222 = distinct !DIGlobalVariable(name: "hints", scope: !223, file: !224, line: 63, type: !233, isLocal: true, isDefinition: true)
!223 = distinct !DISubprogram(name: "canon_host_r", scope: !224, file: !224, line: 60, type: !225, isLocal: false, isDefinition: true, scopeLine: 61, flags: DIFlagPrototyped, isOptimized: true, unit: !218, variables: !227)
!224 = !DIFile(filename: "lib/canon-host.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!225 = !DISubroutineType(types: !226)
!226 = !{!39, !50, !206}
!227 = !{!228, !229, !230, !231, !258}
!228 = !DILocalVariable(name: "host", arg: 1, scope: !223, file: !224, line: 60, type: !50)
!229 = !DILocalVariable(name: "cherror", arg: 2, scope: !223, file: !224, line: 60, type: !206)
!230 = !DILocalVariable(name: "retval", scope: !223, file: !224, line: 62, type: !39)
!231 = !DILocalVariable(name: "res", scope: !223, file: !224, line: 64, type: !232)
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64)
!233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "addrinfo", file: !234, line: 566, size: 384, elements: !235)
!234 = !DIFile(filename: "/usr/include/netdb.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!235 = !{!236, !237, !238, !239, !240, !245, !256, !257}
!236 = !DIDerivedType(tag: DW_TAG_member, name: "ai_flags", scope: !233, file: !234, line: 568, baseType: !52, size: 32)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "ai_family", scope: !233, file: !234, line: 569, baseType: !52, size: 32, offset: 32)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "ai_socktype", scope: !233, file: !234, line: 570, baseType: !52, size: 32, offset: 64)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "ai_protocol", scope: !233, file: !234, line: 571, baseType: !52, size: 32, offset: 96)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "ai_addrlen", scope: !233, file: !234, line: 572, baseType: !241, size: 32, offset: 128)
!241 = !DIDerivedType(tag: DW_TAG_typedef, name: "socklen_t", file: !242, line: 33, baseType: !243)
!242 = !DIFile(filename: "/usr/include/bits/socket.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!243 = !DIDerivedType(tag: DW_TAG_typedef, name: "__socklen_t", file: !114, line: 198, baseType: !244)
!244 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "ai_addr", scope: !233, file: !234, line: 573, baseType: !246, size: 64, offset: 192)
!246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !247, size: 64)
!247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr", file: !242, line: 172, size: 128, elements: !248)
!248 = !{!249, !252}
!249 = !DIDerivedType(tag: DW_TAG_member, name: "sa_family", scope: !247, file: !242, line: 174, baseType: !250, size: 16)
!250 = !DIDerivedType(tag: DW_TAG_typedef, name: "sa_family_t", file: !251, line: 28, baseType: !53)
!251 = !DIFile(filename: "/usr/include/bits/sockaddr.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!252 = !DIDerivedType(tag: DW_TAG_member, name: "sa_data", scope: !247, file: !242, line: 175, baseType: !253, size: 112, offset: 16)
!253 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 112, elements: !254)
!254 = !{!255}
!255 = !DISubrange(count: 14)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "ai_canonname", scope: !233, file: !234, line: 574, baseType: !39, size: 64, offset: 256)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "ai_next", scope: !233, file: !234, line: 575, baseType: !232, size: 64, offset: 320)
!258 = !DILocalVariable(name: "status", scope: !223, file: !224, line: 65, type: !52)
!259 = !DIGlobalVariableExpression(var: !260)
!260 = distinct !DIGlobalVariable(name: "file_name", scope: !261, file: !266, line: 36, type: !50, isLocal: true, isDefinition: true)
!261 = distinct !DICompileUnit(language: DW_LANG_C99, file: !262, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !214, globals: !263)
!262 = !DIFile(filename: "./lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!263 = !{!259, !264}
!264 = !DIGlobalVariableExpression(var: !265)
!265 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !261, file: !266, line: 46, type: !87, isLocal: true, isDefinition: true)
!266 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!267 = !DIGlobalVariableExpression(var: !268)
!268 = distinct !DIGlobalVariable(name: "exit_failure", scope: !269, file: !272, line: 24, type: !273, isLocal: false, isDefinition: true)
!269 = distinct !DICompileUnit(language: DW_LANG_C99, file: !270, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !214, globals: !271)
!270 = !DIFile(filename: "./lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!271 = !{!267}
!272 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!273 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !52)
!274 = !DIGlobalVariableExpression(var: !275)
!275 = distinct !DIGlobalVariable(name: "program_name", scope: !276, file: !280, line: 33, type: !50, isLocal: false, isDefinition: true)
!276 = distinct !DICompileUnit(language: DW_LANG_C99, file: !277, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !214, retainedTypes: !278, globals: !279)
!277 = !DIFile(filename: "./lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!278 = !{!41, !39}
!279 = !{!274}
!280 = !DIFile(filename: "lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!281 = !DIGlobalVariableExpression(var: !282)
!282 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !283, file: !295, line: 77, type: !327, isLocal: false, isDefinition: true)
!283 = distinct !DICompileUnit(language: DW_LANG_C99, file: !284, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !285, retainedTypes: !291, globals: !292)
!284 = !DIFile(filename: "./lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!285 = !{!5, !286, !23}
!286 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !6, line: 242, size: 32, elements: !287)
!287 = !{!288, !289, !290}
!288 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!289 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!290 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!291 = !{!52, !53, !42, !39}
!292 = !{!281, !293, !300, !312, !314, !316, !323, !325}
!293 = !DIGlobalVariableExpression(var: !294)
!294 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !283, file: !295, line: 93, type: !296, isLocal: false, isDefinition: true)
!295 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!296 = !DICompositeType(tag: DW_TAG_array_type, baseType: !297, size: 320, elements: !298)
!297 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!298 = !{!299}
!299 = !DISubrange(count: 10)
!300 = !DIGlobalVariableExpression(var: !301)
!301 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !283, file: !295, line: 1043, type: !302, isLocal: false, isDefinition: true)
!302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !295, line: 57, size: 448, elements: !303)
!303 = !{!304, !305, !306, !310, !311}
!304 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !302, file: !295, line: 60, baseType: !5, size: 32)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !302, file: !295, line: 63, baseType: !52, size: 32, offset: 32)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !302, file: !295, line: 67, baseType: !307, size: 256, offset: 64)
!307 = !DICompositeType(tag: DW_TAG_array_type, baseType: !244, size: 256, elements: !308)
!308 = !{!309}
!309 = !DISubrange(count: 8)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !302, file: !295, line: 70, baseType: !50, size: 64, offset: 320)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !302, file: !295, line: 73, baseType: !50, size: 64, offset: 384)
!312 = !DIGlobalVariableExpression(var: !313)
!313 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !283, file: !295, line: 108, type: !302, isLocal: true, isDefinition: true)
!314 = !DIGlobalVariableExpression(var: !315)
!315 = distinct !DIGlobalVariable(name: "slot0", scope: !283, file: !295, line: 834, type: !155, isLocal: true, isDefinition: true)
!316 = !DIGlobalVariableExpression(var: !317)
!317 = distinct !DIGlobalVariable(name: "slotvec", scope: !283, file: !295, line: 837, type: !318, isLocal: true, isDefinition: true)
!318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !319, size: 64)
!319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !295, line: 826, size: 128, elements: !320)
!320 = !{!321, !322}
!321 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !319, file: !295, line: 828, baseType: !42, size: 64)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !319, file: !295, line: 829, baseType: !39, size: 64, offset: 64)
!323 = !DIGlobalVariableExpression(var: !324)
!324 = distinct !DIGlobalVariable(name: "nslots", scope: !283, file: !295, line: 835, type: !52, isLocal: true, isDefinition: true)
!325 = !DIGlobalVariableExpression(var: !326)
!326 = distinct !DIGlobalVariable(name: "slotvec0", scope: !283, file: !295, line: 836, type: !319, isLocal: true, isDefinition: true)
!327 = !DICompositeType(tag: DW_TAG_array_type, baseType: !328, size: 704, elements: !329)
!328 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !50)
!329 = !{!330}
!330 = !DISubrange(count: 11)
!331 = !DIGlobalVariableExpression(var: !332)
!332 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !333, file: !336, line: 26, type: !337, isLocal: false, isDefinition: true)
!333 = distinct !DICompileUnit(language: DW_LANG_C99, file: !334, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !214, globals: !335)
!334 = !DIFile(filename: "./lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!335 = !{!331}
!336 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!337 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 376, elements: !338)
!338 = !{!339}
!339 = !DISubrange(count: 47)
!340 = !DIGlobalVariableExpression(var: !341)
!341 = distinct !DIGlobalVariable(name: "charset_aliases", scope: !342, file: !686, line: 120, type: !687, isLocal: true, isDefinition: true)
!342 = distinct !DICompileUnit(language: DW_LANG_C99, file: !343, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !344, retainedTypes: !683, globals: !685)
!343 = !DIFile(filename: "./lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!344 = !{!345}
!345 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !346, line: 41, size: 32, elements: !347)
!346 = !DIFile(filename: "/usr/include/langinfo.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!347 = !{!348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682}
!348 = !DIEnumerator(name: "ABDAY_1", value: 131072)
!349 = !DIEnumerator(name: "ABDAY_2", value: 131073)
!350 = !DIEnumerator(name: "ABDAY_3", value: 131074)
!351 = !DIEnumerator(name: "ABDAY_4", value: 131075)
!352 = !DIEnumerator(name: "ABDAY_5", value: 131076)
!353 = !DIEnumerator(name: "ABDAY_6", value: 131077)
!354 = !DIEnumerator(name: "ABDAY_7", value: 131078)
!355 = !DIEnumerator(name: "DAY_1", value: 131079)
!356 = !DIEnumerator(name: "DAY_2", value: 131080)
!357 = !DIEnumerator(name: "DAY_3", value: 131081)
!358 = !DIEnumerator(name: "DAY_4", value: 131082)
!359 = !DIEnumerator(name: "DAY_5", value: 131083)
!360 = !DIEnumerator(name: "DAY_6", value: 131084)
!361 = !DIEnumerator(name: "DAY_7", value: 131085)
!362 = !DIEnumerator(name: "ABMON_1", value: 131086)
!363 = !DIEnumerator(name: "ABMON_2", value: 131087)
!364 = !DIEnumerator(name: "ABMON_3", value: 131088)
!365 = !DIEnumerator(name: "ABMON_4", value: 131089)
!366 = !DIEnumerator(name: "ABMON_5", value: 131090)
!367 = !DIEnumerator(name: "ABMON_6", value: 131091)
!368 = !DIEnumerator(name: "ABMON_7", value: 131092)
!369 = !DIEnumerator(name: "ABMON_8", value: 131093)
!370 = !DIEnumerator(name: "ABMON_9", value: 131094)
!371 = !DIEnumerator(name: "ABMON_10", value: 131095)
!372 = !DIEnumerator(name: "ABMON_11", value: 131096)
!373 = !DIEnumerator(name: "ABMON_12", value: 131097)
!374 = !DIEnumerator(name: "MON_1", value: 131098)
!375 = !DIEnumerator(name: "MON_2", value: 131099)
!376 = !DIEnumerator(name: "MON_3", value: 131100)
!377 = !DIEnumerator(name: "MON_4", value: 131101)
!378 = !DIEnumerator(name: "MON_5", value: 131102)
!379 = !DIEnumerator(name: "MON_6", value: 131103)
!380 = !DIEnumerator(name: "MON_7", value: 131104)
!381 = !DIEnumerator(name: "MON_8", value: 131105)
!382 = !DIEnumerator(name: "MON_9", value: 131106)
!383 = !DIEnumerator(name: "MON_10", value: 131107)
!384 = !DIEnumerator(name: "MON_11", value: 131108)
!385 = !DIEnumerator(name: "MON_12", value: 131109)
!386 = !DIEnumerator(name: "AM_STR", value: 131110)
!387 = !DIEnumerator(name: "PM_STR", value: 131111)
!388 = !DIEnumerator(name: "D_T_FMT", value: 131112)
!389 = !DIEnumerator(name: "D_FMT", value: 131113)
!390 = !DIEnumerator(name: "T_FMT", value: 131114)
!391 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115)
!392 = !DIEnumerator(name: "ERA", value: 131116)
!393 = !DIEnumerator(name: "__ERA_YEAR", value: 131117)
!394 = !DIEnumerator(name: "ERA_D_FMT", value: 131118)
!395 = !DIEnumerator(name: "ALT_DIGITS", value: 131119)
!396 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120)
!397 = !DIEnumerator(name: "ERA_T_FMT", value: 131121)
!398 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122)
!399 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123)
!400 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124)
!401 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125)
!402 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126)
!403 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127)
!404 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128)
!405 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129)
!406 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130)
!407 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131)
!408 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132)
!409 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133)
!410 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134)
!411 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135)
!412 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136)
!413 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137)
!414 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138)
!415 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139)
!416 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140)
!417 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141)
!418 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142)
!419 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143)
!420 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144)
!421 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145)
!422 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146)
!423 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147)
!424 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148)
!425 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149)
!426 = !DIEnumerator(name: "_NL_WMON_1", value: 131150)
!427 = !DIEnumerator(name: "_NL_WMON_2", value: 131151)
!428 = !DIEnumerator(name: "_NL_WMON_3", value: 131152)
!429 = !DIEnumerator(name: "_NL_WMON_4", value: 131153)
!430 = !DIEnumerator(name: "_NL_WMON_5", value: 131154)
!431 = !DIEnumerator(name: "_NL_WMON_6", value: 131155)
!432 = !DIEnumerator(name: "_NL_WMON_7", value: 131156)
!433 = !DIEnumerator(name: "_NL_WMON_8", value: 131157)
!434 = !DIEnumerator(name: "_NL_WMON_9", value: 131158)
!435 = !DIEnumerator(name: "_NL_WMON_10", value: 131159)
!436 = !DIEnumerator(name: "_NL_WMON_11", value: 131160)
!437 = !DIEnumerator(name: "_NL_WMON_12", value: 131161)
!438 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162)
!439 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163)
!440 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164)
!441 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165)
!442 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166)
!443 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167)
!444 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168)
!445 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169)
!446 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170)
!447 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171)
!448 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172)
!449 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173)
!450 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174)
!451 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175)
!452 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176)
!453 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177)
!454 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178)
!455 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179)
!456 = !DIEnumerator(name: "_DATE_FMT", value: 131180)
!457 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181)
!458 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182)
!459 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131183)
!460 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608)
!461 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609)
!462 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610)
!463 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611)
!464 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612)
!465 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613)
!466 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614)
!467 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615)
!468 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616)
!469 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617)
!470 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618)
!471 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619)
!472 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620)
!473 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621)
!474 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622)
!475 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623)
!476 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624)
!477 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625)
!478 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626)
!479 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627)
!480 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0)
!481 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1)
!482 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2)
!483 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3)
!484 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4)
!485 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5)
!486 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6)
!487 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7)
!488 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8)
!489 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9)
!490 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10)
!491 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11)
!492 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12)
!493 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13)
!494 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14)
!495 = !DIEnumerator(name: "CODESET", value: 14)
!496 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15)
!497 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16)
!498 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17)
!499 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18)
!500 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19)
!501 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20)
!502 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21)
!503 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22)
!504 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23)
!505 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24)
!506 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25)
!507 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26)
!508 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27)
!509 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28)
!510 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29)
!511 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30)
!512 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31)
!513 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32)
!514 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33)
!515 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34)
!516 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35)
!517 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36)
!518 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37)
!519 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38)
!520 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39)
!521 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40)
!522 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41)
!523 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42)
!524 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43)
!525 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44)
!526 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45)
!527 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46)
!528 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47)
!529 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48)
!530 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49)
!531 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50)
!532 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51)
!533 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52)
!534 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53)
!535 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54)
!536 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55)
!537 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56)
!538 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57)
!539 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58)
!540 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59)
!541 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60)
!542 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61)
!543 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62)
!544 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63)
!545 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64)
!546 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65)
!547 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66)
!548 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67)
!549 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68)
!550 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69)
!551 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70)
!552 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71)
!553 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72)
!554 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73)
!555 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74)
!556 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75)
!557 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76)
!558 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77)
!559 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78)
!560 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79)
!561 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80)
!562 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81)
!563 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82)
!564 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83)
!565 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84)
!566 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85)
!567 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86)
!568 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144)
!569 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145)
!570 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146)
!571 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147)
!572 = !DIEnumerator(name: "__MON_GROUPING", value: 262148)
!573 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149)
!574 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150)
!575 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151)
!576 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152)
!577 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153)
!578 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154)
!579 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155)
!580 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156)
!581 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157)
!582 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158)
!583 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159)
!584 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160)
!585 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161)
!586 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162)
!587 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163)
!588 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164)
!589 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165)
!590 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166)
!591 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167)
!592 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168)
!593 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169)
!594 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170)
!595 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171)
!596 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172)
!597 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173)
!598 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174)
!599 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175)
!600 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176)
!601 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177)
!602 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178)
!603 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179)
!604 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180)
!605 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181)
!606 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182)
!607 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183)
!608 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184)
!609 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185)
!610 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186)
!611 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187)
!612 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188)
!613 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189)
!614 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190)
!615 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536)
!616 = !DIEnumerator(name: "RADIXCHAR", value: 65536)
!617 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537)
!618 = !DIEnumerator(name: "THOUSEP", value: 65537)
!619 = !DIEnumerator(name: "__GROUPING", value: 65538)
!620 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539)
!621 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540)
!622 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541)
!623 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542)
!624 = !DIEnumerator(name: "__YESEXPR", value: 327680)
!625 = !DIEnumerator(name: "__NOEXPR", value: 327681)
!626 = !DIEnumerator(name: "__YESSTR", value: 327682)
!627 = !DIEnumerator(name: "__NOSTR", value: 327683)
!628 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684)
!629 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685)
!630 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752)
!631 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753)
!632 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754)
!633 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755)
!634 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288)
!635 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289)
!636 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290)
!637 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291)
!638 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292)
!639 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293)
!640 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294)
!641 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295)
!642 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824)
!643 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825)
!644 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826)
!645 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827)
!646 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828)
!647 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829)
!648 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830)
!649 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831)
!650 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832)
!651 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833)
!652 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834)
!653 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835)
!654 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836)
!655 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837)
!656 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360)
!657 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361)
!658 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362)
!659 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363)
!660 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364)
!661 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365)
!662 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896)
!663 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897)
!664 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898)
!665 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432)
!666 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433)
!667 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434)
!668 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435)
!669 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436)
!670 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437)
!671 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438)
!672 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439)
!673 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440)
!674 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441)
!675 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442)
!676 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443)
!677 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444)
!678 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445)
!679 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446)
!680 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447)
!681 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448)
!682 = !DIEnumerator(name: "_NL_NUM", value: 786449)
!683 = !{!41, !39, !684}
!684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!685 = !{!340}
!686 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!687 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !50)
!688 = distinct !DICompileUnit(language: DW_LANG_C99, file: !689, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !214, retainedTypes: !690)
!689 = !DIFile(filename: "./lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!690 = !{!42, !45, !47, !50}
!691 = distinct !DICompileUnit(language: DW_LANG_C99, file: !692, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !214, retainedTypes: !693)
!692 = !DIFile(filename: "./lib/imaxtostr.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!693 = !{!694}
!694 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !695, line: 135, baseType: !696)
!695 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!696 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !114, line: 61, baseType: !115)
!697 = distinct !DICompileUnit(language: DW_LANG_C99, file: !698, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !699, retainedTypes: !704)
!698 = !DIFile(filename: "./lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!699 = !{!700}
!700 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !701, line: 41, size: 32, elements: !702)
!701 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!702 = !{!703}
!703 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2017)
!704 = !{!41}
!705 = distinct !DICompileUnit(language: DW_LANG_C99, file: !706, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !707, retainedTypes: !721)
!706 = !DIFile(filename: "./lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!707 = !{!708}
!708 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !710, file: !709, line: 192, size: 32, elements: !719)
!709 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!710 = distinct !DISubprogram(name: "x2nrealloc", scope: !709, file: !709, line: 180, type: !711, isLocal: false, isDefinition: true, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: true, unit: !705, variables: !714)
!711 = !DISubroutineType(types: !712)
!712 = !{!41, !41, !713, !42}
!713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!714 = !{!715, !716, !717, !718}
!715 = !DILocalVariable(name: "p", arg: 1, scope: !710, file: !709, line: 180, type: !41)
!716 = !DILocalVariable(name: "pn", arg: 2, scope: !710, file: !709, line: 180, type: !713)
!717 = !DILocalVariable(name: "s", arg: 3, scope: !710, file: !709, line: 180, type: !42)
!718 = !DILocalVariable(name: "n", scope: !710, file: !709, line: 182, type: !42)
!719 = !{!720}
!720 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!721 = !{!42, !39, !41}
!722 = distinct !DICompileUnit(language: DW_LANG_C99, file: !723, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !214)
!723 = !DIFile(filename: "./lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!724 = distinct !DICompileUnit(language: DW_LANG_C99, file: !725, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !214, retainedTypes: !704)
!725 = !DIFile(filename: "./lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!726 = distinct !DICompileUnit(language: DW_LANG_C99, file: !727, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !214)
!727 = !DIFile(filename: "./lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!728 = distinct !DICompileUnit(language: DW_LANG_C99, file: !729, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !214, retainedTypes: !704)
!729 = !DIFile(filename: "./lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!730 = distinct !DICompileUnit(language: DW_LANG_C99, file: !731, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !214, retainedTypes: !704)
!731 = !DIFile(filename: "./lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!732 = distinct !DICompileUnit(language: DW_LANG_C99, file: !733, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !214, retainedTypes: !734)
!733 = !DIFile(filename: "./lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!734 = !{!42}
!735 = distinct !DICompileUnit(language: DW_LANG_C99, file: !736, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !737, retainedTypes: !749)
!736 = !DIFile(filename: "./lib/readutmp.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!737 = !{!738, !742}
!738 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !20, line: 208, size: 32, elements: !739)
!739 = !{!740, !741}
!740 = !DIEnumerator(name: "READ_UTMP_CHECK_PIDS", value: 1)
!741 = !DIEnumerator(name: "READ_UTMP_USER_PROCESS", value: 2)
!742 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !743, file: !709, line: 192, size: 32, elements: !719)
!743 = distinct !DISubprogram(name: "x2nrealloc", scope: !709, file: !709, line: 180, type: !711, isLocal: false, isDefinition: true, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: true, unit: !735, variables: !744)
!744 = !{!745, !746, !747, !748}
!745 = !DILocalVariable(name: "p", arg: 1, scope: !743, file: !709, line: 180, type: !41)
!746 = !DILocalVariable(name: "pn", arg: 2, scope: !743, file: !709, line: 180, type: !713)
!747 = !DILocalVariable(name: "s", arg: 3, scope: !743, file: !709, line: 180, type: !42)
!748 = !DILocalVariable(name: "n", scope: !743, file: !709, line: 182, type: !42)
!749 = !{!39, !41}
!750 = distinct !DICompileUnit(language: DW_LANG_C99, file: !751, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !214)
!751 = !DIFile(filename: "./lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!752 = !{!"clang version 4.0.1 (tags/RELEASE_401/final)"}
!753 = !{i32 2, !"Dwarf Version", i32 4}
!754 = !{i32 2, !"Debug Info Version", i32 3}
!755 = !{i32 1, !"PIC Level", i32 2}
!756 = !{i32 1, !"PIE Level", i32 2}
!757 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 487, type: !758, isLocal: false, isDefinition: true, scopeLine: 488, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !2, variables: !760)
!758 = !DISubroutineType(types: !759)
!759 = !{null, !52}
!760 = !{!761}
!761 = !DILocalVariable(name: "status", arg: 1, scope: !757, file: !3, line: 487, type: !52)
!762 = !DIExpression()
!763 = !DILocation(line: 487, column: 12, scope: !757)
!764 = !DILocation(line: 489, column: 14, scope: !765)
!765 = distinct !DILexicalBlock(scope: !757, file: !3, line: 489, column: 7)
!766 = !DILocation(line: 489, column: 7, scope: !757)
!767 = !DILocation(line: 490, column: 5, scope: !768)
!768 = !DILexicalBlockFile(scope: !769, file: !3, discriminator: 1)
!769 = distinct !DILexicalBlock(scope: !765, file: !3, line: 490, column: 5)
!770 = !{!771, !771, i64 0}
!771 = !{!"any pointer", !772, i64 0}
!772 = !{!"omnipotent char", !773, i64 0}
!773 = !{!"Simple C/C++ TBAA"}
!774 = !DILocation(line: 490, column: 5, scope: !775)
!775 = !DILexicalBlockFile(scope: !769, file: !3, discriminator: 3)
!776 = !DILocation(line: 490, column: 5, scope: !777)
!777 = !DILexicalBlockFile(scope: !769, file: !3, discriminator: 2)
!778 = !DILocation(line: 493, column: 7, scope: !779)
!779 = distinct !DILexicalBlock(scope: !765, file: !3, line: 492, column: 5)
!780 = !DILocation(line: 493, column: 7, scope: !781)
!781 = !DILexicalBlockFile(scope: !779, file: !3, discriminator: 1)
!782 = !DILocation(line: 494, column: 7, scope: !779)
!783 = !DILocation(line: 494, column: 7, scope: !781)
!784 = !DILocation(line: 502, column: 7, scope: !779)
!785 = !DILocation(line: 502, column: 7, scope: !781)
!786 = !DILocation(line: 509, column: 7, scope: !779)
!787 = !DILocation(line: 509, column: 7, scope: !781)
!788 = !DILocation(line: 510, column: 7, scope: !779)
!789 = !DILocation(line: 510, column: 7, scope: !781)
!790 = !DILocation(line: 511, column: 7, scope: !779)
!791 = !DILocation(line: 511, column: 7, scope: !781)
!792 = !DILocation(line: 642, column: 15, scope: !57, inlinedAt: !793)
!793 = distinct !DILocation(line: 516, column: 7, scope: !779)
!794 = !DILocation(line: 651, column: 3, scope: !57, inlinedAt: !793)
!795 = !DILocation(line: 651, column: 3, scope: !796, inlinedAt: !793)
!796 = !DILexicalBlockFile(scope: !57, file: !58, discriminator: 1)
!797 = !DILocation(line: 655, column: 29, scope: !57, inlinedAt: !793)
!798 = !DILocation(line: 655, column: 15, scope: !57, inlinedAt: !793)
!799 = !DILocation(line: 656, column: 7, scope: !77, inlinedAt: !793)
!800 = !DILocation(line: 656, column: 19, scope: !77, inlinedAt: !793)
!801 = !DILocation(line: 656, column: 22, scope: !802, inlinedAt: !793)
!802 = !DILexicalBlockFile(scope: !77, file: !58, discriminator: 16)
!803 = !DILocation(line: 656, column: 7, scope: !804, inlinedAt: !793)
!804 = !DILexicalBlockFile(scope: !57, file: !58, discriminator: 16)
!805 = !DILocation(line: 662, column: 7, scope: !806, inlinedAt: !793)
!806 = distinct !DILexicalBlock(scope: !77, file: !58, line: 657, column: 5)
!807 = !DILocation(line: 662, column: 7, scope: !808, inlinedAt: !793)
!808 = !DILexicalBlockFile(scope: !806, file: !58, discriminator: 1)
!809 = !DILocation(line: 664, column: 5, scope: !806, inlinedAt: !793)
!810 = !DILocation(line: 665, column: 3, scope: !57, inlinedAt: !793)
!811 = !DILocation(line: 665, column: 3, scope: !796, inlinedAt: !793)
!812 = !DILocation(line: 667, column: 3, scope: !57, inlinedAt: !793)
!813 = !DILocation(line: 667, column: 3, scope: !796, inlinedAt: !793)
!814 = !DILocation(line: 518, column: 3, scope: !757)
!815 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 522, type: !816, isLocal: false, isDefinition: true, scopeLine: 523, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !819)
!816 = !DISubroutineType(types: !817)
!817 = !{!52, !52, !818}
!818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!819 = !{!820, !821, !822, !823}
!820 = !DILocalVariable(name: "argc", arg: 1, scope: !815, file: !3, line: 522, type: !52)
!821 = !DILocalVariable(name: "argv", arg: 2, scope: !815, file: !3, line: 522, type: !818)
!822 = !DILocalVariable(name: "optc", scope: !815, file: !3, line: 524, type: !52)
!823 = !DILocalVariable(name: "n_users", scope: !815, file: !3, line: 525, type: !52)
!824 = !DILocalVariable(name: "buf", scope: !825, file: !3, line: 350, type: !909)
!825 = distinct !DILexicalBlock(scope: !826, file: !3, line: 348, column: 5)
!826 = distinct !DILexicalBlock(scope: !827, file: !3, line: 347, column: 7)
!827 = distinct !DISubprogram(name: "print_long_entry", scope: !3, file: !3, line: 307, type: !59, isLocal: true, isDefinition: true, scopeLine: 308, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !828)
!828 = !{!829, !830, !844, !848, !849, !824, !900, !901, !902, !905, !908, !912, !913, !914}
!829 = !DILocalVariable(name: "name", arg: 1, scope: !827, file: !3, line: 307, type: !50)
!830 = !DILocalVariable(name: "pw", scope: !827, file: !3, line: 309, type: !831)
!831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !832, size: 64)
!832 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "passwd", file: !833, line: 49, size: 384, elements: !834)
!833 = !DIFile(filename: "/usr/include/pwd.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!834 = !{!835, !836, !837, !839, !841, !842, !843}
!835 = !DIDerivedType(tag: DW_TAG_member, name: "pw_name", scope: !832, file: !833, line: 51, baseType: !39, size: 64)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "pw_passwd", scope: !832, file: !833, line: 52, baseType: !39, size: 64, offset: 64)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "pw_uid", scope: !832, file: !833, line: 53, baseType: !838, size: 32, offset: 128)
!838 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !114, line: 134, baseType: !244)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "pw_gid", scope: !832, file: !833, line: 54, baseType: !840, size: 32, offset: 160)
!840 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !114, line: 135, baseType: !244)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "pw_gecos", scope: !832, file: !833, line: 55, baseType: !39, size: 64, offset: 192)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "pw_dir", scope: !832, file: !833, line: 56, baseType: !39, size: 64, offset: 256)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "pw_shell", scope: !832, file: !833, line: 57, baseType: !39, size: 64, offset: 320)
!844 = !DILocalVariable(name: "comma", scope: !845, file: !3, line: 325, type: !847)
!845 = distinct !DILexicalBlock(scope: !846, file: !3, line: 324, column: 5)
!846 = distinct !DILexicalBlock(scope: !827, file: !3, line: 317, column: 7)
!847 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !39)
!848 = !DILocalVariable(name: "result", scope: !845, file: !3, line: 326, type: !39)
!849 = !DILocalVariable(name: "stream", scope: !825, file: !3, line: 349, type: !850)
!850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !851, size: 64)
!851 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !852, line: 49, baseType: !853)
!852 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!853 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !854, line: 241, size: 1728, elements: !855)
!854 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!855 = !{!856, !857, !858, !859, !860, !861, !862, !863, !864, !865, !866, !867, !868, !876, !877, !878, !879, !881, !882, !884, !888, !891, !893, !894, !895, !896, !897, !898, !899}
!856 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !853, file: !854, line: 242, baseType: !52, size: 32)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !853, file: !854, line: 247, baseType: !39, size: 64, offset: 64)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !853, file: !854, line: 248, baseType: !39, size: 64, offset: 128)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !853, file: !854, line: 249, baseType: !39, size: 64, offset: 192)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !853, file: !854, line: 250, baseType: !39, size: 64, offset: 256)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !853, file: !854, line: 251, baseType: !39, size: 64, offset: 320)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !853, file: !854, line: 252, baseType: !39, size: 64, offset: 384)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !853, file: !854, line: 253, baseType: !39, size: 64, offset: 448)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !853, file: !854, line: 254, baseType: !39, size: 64, offset: 512)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !853, file: !854, line: 256, baseType: !39, size: 64, offset: 576)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !853, file: !854, line: 257, baseType: !39, size: 64, offset: 640)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !853, file: !854, line: 258, baseType: !39, size: 64, offset: 704)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !853, file: !854, line: 260, baseType: !869, size: 64, offset: 768)
!869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !870, size: 64)
!870 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !854, line: 156, size: 192, elements: !871)
!871 = !{!872, !873, !875}
!872 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !870, file: !854, line: 157, baseType: !869, size: 64)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !870, file: !854, line: 158, baseType: !874, size: 64, offset: 64)
!874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !853, size: 64)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !870, file: !854, line: 162, baseType: !52, size: 32, offset: 128)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !853, file: !854, line: 262, baseType: !874, size: 64, offset: 832)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !853, file: !854, line: 264, baseType: !52, size: 32, offset: 896)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !853, file: !854, line: 268, baseType: !52, size: 32, offset: 928)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !853, file: !854, line: 270, baseType: !880, size: 64, offset: 960)
!880 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !114, line: 140, baseType: !115)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !853, file: !854, line: 274, baseType: !53, size: 16, offset: 1024)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !853, file: !854, line: 275, baseType: !883, size: 8, offset: 1040)
!883 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !853, file: !854, line: 276, baseType: !885, size: 8, offset: 1048)
!885 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 8, elements: !886)
!886 = !{!887}
!887 = !DISubrange(count: 1)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !853, file: !854, line: 280, baseType: !889, size: 64, offset: 1088)
!889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !890, size: 64)
!890 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !854, line: 150, baseType: null)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !853, file: !854, line: 289, baseType: !892, size: 64, offset: 1152)
!892 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !114, line: 141, baseType: !115)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !853, file: !854, line: 297, baseType: !41, size: 64, offset: 1216)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !853, file: !854, line: 298, baseType: !41, size: 64, offset: 1280)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !853, file: !854, line: 299, baseType: !41, size: 64, offset: 1344)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !853, file: !854, line: 300, baseType: !41, size: 64, offset: 1408)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !853, file: !854, line: 302, baseType: !42, size: 64, offset: 1472)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !853, file: !854, line: 303, baseType: !52, size: 32, offset: 1536)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !853, file: !854, line: 305, baseType: !173, size: 160, offset: 1568)
!900 = !DILocalVariable(name: "baseproject", scope: !825, file: !3, line: 351, type: !328)
!901 = !DILocalVariable(name: "project", scope: !825, file: !3, line: 352, type: !847)
!902 = !DILocalVariable(name: "bytes", scope: !903, file: !3, line: 359, type: !42)
!903 = distinct !DILexicalBlock(scope: !904, file: !3, line: 358, column: 9)
!904 = distinct !DILexicalBlock(scope: !825, file: !3, line: 357, column: 11)
!905 = !DILocalVariable(name: "stream", scope: !906, file: !3, line: 373, type: !850)
!906 = distinct !DILexicalBlock(scope: !907, file: !3, line: 372, column: 5)
!907 = distinct !DILexicalBlock(scope: !827, file: !3, line: 371, column: 7)
!908 = !DILocalVariable(name: "buf", scope: !906, file: !3, line: 374, type: !909)
!909 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 8192, elements: !910)
!910 = !{!911}
!911 = !DISubrange(count: 1024)
!912 = !DILocalVariable(name: "baseplan", scope: !906, file: !3, line: 375, type: !328)
!913 = !DILocalVariable(name: "plan", scope: !906, file: !3, line: 376, type: !847)
!914 = !DILocalVariable(name: "bytes", scope: !915, file: !3, line: 383, type: !42)
!915 = distinct !DILexicalBlock(scope: !916, file: !3, line: 382, column: 9)
!916 = distinct !DILexicalBlock(scope: !906, file: !3, line: 381, column: 11)
!917 = !DILocation(line: 350, column: 12, scope: !825, inlinedAt: !918)
!918 = distinct !DILocation(line: 483, column: 5, scope: !919, inlinedAt: !930)
!919 = distinct !DILexicalBlock(scope: !920, file: !3, line: 482, column: 3)
!920 = distinct !DILexicalBlock(scope: !921, file: !3, line: 482, column: 3)
!921 = distinct !DISubprogram(name: "long_pinky", scope: !3, file: !3, line: 478, type: !922, isLocal: true, isDefinition: true, scopeLine: 479, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !926)
!922 = !DISubroutineType(types: !923)
!923 = !{null, !924, !925}
!924 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !52)
!925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !847, size: 64)
!926 = !{!927, !928, !929}
!927 = !DILocalVariable(name: "argc_names", arg: 1, scope: !921, file: !3, line: 478, type: !924)
!928 = !DILocalVariable(name: "argv_names", arg: 2, scope: !921, file: !3, line: 478, type: !925)
!929 = !DILocalVariable(name: "i", scope: !921, file: !3, line: 480, type: !52)
!930 = distinct !DILocation(line: 603, column: 5, scope: !931)
!931 = distinct !DILexicalBlock(scope: !815, file: !3, line: 600, column: 7)
!932 = !DILocation(line: 374, column: 12, scope: !906, inlinedAt: !918)
!933 = !DILocation(line: 522, column: 11, scope: !815)
!934 = !DILocation(line: 522, column: 24, scope: !815)
!935 = !DILocation(line: 528, column: 21, scope: !815)
!936 = !DILocation(line: 528, column: 3, scope: !815)
!937 = !DILocation(line: 529, column: 3, scope: !815)
!938 = !DILocation(line: 530, column: 3, scope: !815)
!939 = !DILocation(line: 531, column: 3, scope: !815)
!940 = !DILocation(line: 533, column: 3, scope: !815)
!941 = !DILocation(line: 535, column: 3, scope: !815)
!942 = !DILocation(line: 535, column: 18, scope: !943)
!943 = !DILexicalBlockFile(scope: !815, file: !3, discriminator: 1)
!944 = !DILocation(line: 524, column: 7, scope: !815)
!945 = !DILocation(line: 535, column: 3, scope: !943)
!946 = !DILocation(line: 541, column: 11, scope: !947)
!947 = distinct !DILexicalBlock(scope: !948, file: !3, line: 538, column: 9)
!948 = distinct !DILexicalBlock(scope: !815, file: !3, line: 536, column: 5)
!949 = !DILocation(line: 545, column: 11, scope: !947)
!950 = !DILocation(line: 549, column: 11, scope: !947)
!951 = !DILocation(line: 553, column: 11, scope: !947)
!952 = !DILocation(line: 560, column: 11, scope: !947)
!953 = !DILocation(line: 568, column: 11, scope: !947)
!954 = !DILocation(line: 572, column: 11, scope: !947)
!955 = !DILocation(line: 576, column: 11, scope: !947)
!956 = !DILocation(line: 580, column: 11, scope: !947)
!957 = distinct !{!957, !941, !958}
!958 = !DILocation(line: 589, column: 5, scope: !815)
!959 = !DILocation(line: 582, column: 9, scope: !947)
!960 = !DILocation(line: 584, column: 9, scope: !947)
!961 = !DILocation(line: 584, column: 9, scope: !962)
!962 = !DILexicalBlockFile(scope: !947, file: !3, discriminator: 1)
!963 = !DILocation(line: 587, column: 11, scope: !947)
!964 = !DILocation(line: 591, column: 20, scope: !815)
!965 = !{!966, !966, i64 0}
!966 = !{!"int", !772, i64 0}
!967 = !DILocation(line: 591, column: 18, scope: !815)
!968 = !DILocation(line: 525, column: 7, scope: !815)
!969 = !DILocation(line: 593, column: 35, scope: !970)
!970 = !DILexicalBlockFile(scope: !971, file: !3, discriminator: 1)
!971 = distinct !DILexicalBlock(scope: !815, file: !3, line: 593, column: 7)
!972 = !DILocation(line: 593, column: 24, scope: !971)
!973 = !DILocation(line: 595, column: 20, scope: !974)
!974 = distinct !DILexicalBlock(scope: !971, file: !3, line: 594, column: 5)
!975 = !DILocation(line: 595, column: 7, scope: !976)
!976 = !DILexicalBlockFile(scope: !974, file: !3, discriminator: 1)
!977 = !DILocation(line: 597, column: 7, scope: !974)
!978 = !DILocation(line: 600, column: 7, scope: !815)
!979 = !DILocation(line: 466, column: 3, scope: !980, inlinedAt: !990)
!980 = distinct !DISubprogram(name: "short_pinky", scope: !3, file: !3, line: 463, type: !981, isLocal: true, isDefinition: true, scopeLine: 465, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !983)
!981 = !DISubroutineType(types: !982)
!982 = !{null, !50, !924, !925}
!983 = !{!984, !985, !986, !987, !988}
!984 = !DILocalVariable(name: "filename", arg: 1, scope: !980, file: !3, line: 463, type: !50)
!985 = !DILocalVariable(name: "argc_names", arg: 2, scope: !980, file: !3, line: 464, type: !924)
!986 = !DILocalVariable(name: "argv_names", arg: 3, scope: !980, file: !3, line: 464, type: !925)
!987 = !DILocalVariable(name: "n_users", scope: !980, file: !3, line: 466, type: !42)
!988 = !DILocalVariable(name: "utmp_buf", scope: !980, file: !3, line: 467, type: !989)
!989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64)
!990 = distinct !DILocation(line: 601, column: 5, scope: !931)
!991 = !DILocation(line: 467, column: 3, scope: !980, inlinedAt: !990)
!992 = !DILocation(line: 467, column: 16, scope: !980, inlinedAt: !990)
!993 = !DIExpression(DW_OP_deref)
!994 = !DILocation(line: 466, column: 10, scope: !980, inlinedAt: !990)
!995 = !DILocation(line: 469, column: 7, scope: !996, inlinedAt: !990)
!996 = distinct !DILexicalBlock(scope: !980, file: !3, line: 469, column: 7)
!997 = !DILocation(line: 469, column: 52, scope: !996, inlinedAt: !990)
!998 = !DILocation(line: 469, column: 7, scope: !980, inlinedAt: !990)
!999 = !DILocation(line: 470, column: 5, scope: !996, inlinedAt: !990)
!1000 = !DILocation(line: 470, column: 5, scope: !1001, inlinedAt: !990)
!1001 = !DILexicalBlockFile(scope: !996, file: !3, discriminator: 1)
!1002 = !DILocation(line: 470, column: 5, scope: !1003, inlinedAt: !990)
!1003 = !DILexicalBlockFile(scope: !996, file: !3, discriminator: 2)
!1004 = !DILocation(line: 472, column: 17, scope: !980, inlinedAt: !990)
!1005 = !{!1006, !1006, i64 0}
!1006 = !{!"long", !772, i64 0}
!1007 = !DILocation(line: 472, column: 26, scope: !980, inlinedAt: !990)
!1008 = !DILocalVariable(name: "n", arg: 1, scope: !1009, file: !3, line: 421, type: !42)
!1009 = distinct !DISubprogram(name: "scan_entries", scope: !3, file: !3, line: 421, type: !1010, isLocal: true, isDefinition: true, scopeLine: 423, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1012)
!1010 = !DISubroutineType(types: !1011)
!1011 = !{null, !42, !135, !924, !925}
!1012 = !{!1008, !1013, !1014, !1015, !1016}
!1013 = !DILocalVariable(name: "utmp_buf", arg: 2, scope: !1009, file: !3, line: 421, type: !135)
!1014 = !DILocalVariable(name: "argc_names", arg: 3, scope: !1009, file: !3, line: 422, type: !924)
!1015 = !DILocalVariable(name: "argv_names", arg: 4, scope: !1009, file: !3, line: 422, type: !925)
!1016 = !DILocalVariable(name: "i", scope: !1017, file: !3, line: 444, type: !52)
!1017 = distinct !DILexicalBlock(scope: !1018, file: !3, line: 443, column: 13)
!1018 = distinct !DILexicalBlock(scope: !1019, file: !3, line: 442, column: 15)
!1019 = distinct !DILexicalBlock(scope: !1020, file: !3, line: 441, column: 9)
!1020 = distinct !DILexicalBlock(scope: !1021, file: !3, line: 440, column: 11)
!1021 = distinct !DILexicalBlock(scope: !1009, file: !3, line: 439, column: 5)
!1022 = !DILocation(line: 421, column: 22, scope: !1009, inlinedAt: !1023)
!1023 = distinct !DILocation(line: 472, column: 3, scope: !980, inlinedAt: !990)
!1024 = !DILocation(line: 421, column: 44, scope: !1009, inlinedAt: !1023)
!1025 = !DILocation(line: 422, column: 25, scope: !1009, inlinedAt: !1023)
!1026 = !DILocation(line: 422, column: 49, scope: !1009, inlinedAt: !1023)
!1027 = !DILocation(line: 424, column: 7, scope: !1028, inlinedAt: !1023)
!1028 = distinct !DILexicalBlock(scope: !1009, file: !3, line: 424, column: 7)
!1029 = !DILocation(line: 424, column: 7, scope: !1009, inlinedAt: !1023)
!1030 = !DILocation(line: 435, column: 7, scope: !1009, inlinedAt: !1023)
!1031 = !DILocation(line: 404, column: 3, scope: !1032, inlinedAt: !1035)
!1032 = distinct !DISubprogram(name: "print_heading", scope: !3, file: !3, line: 402, type: !1033, isLocal: true, isDefinition: true, scopeLine: 403, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !214)
!1033 = !DISubroutineType(types: !1034)
!1034 = !{null}
!1035 = distinct !DILocation(line: 436, column: 5, scope: !1036, inlinedAt: !1023)
!1036 = distinct !DILexicalBlock(scope: !1009, file: !3, line: 435, column: 7)
!1037 = !DILocation(line: 404, column: 3, scope: !1038, inlinedAt: !1035)
!1038 = !DILexicalBlockFile(scope: !1032, file: !3, discriminator: 1)
!1039 = !DILocation(line: 405, column: 7, scope: !1032, inlinedAt: !1035)
!1040 = !DILocation(line: 406, column: 5, scope: !1041, inlinedAt: !1035)
!1041 = distinct !DILexicalBlock(scope: !1032, file: !3, line: 405, column: 7)
!1042 = !DILocation(line: 406, column: 5, scope: !1043, inlinedAt: !1035)
!1043 = !DILexicalBlockFile(scope: !1041, file: !3, discriminator: 1)
!1044 = !DILocation(line: 407, column: 3, scope: !1032, inlinedAt: !1035)
!1045 = !DILocation(line: 407, column: 3, scope: !1038, inlinedAt: !1035)
!1046 = !DILocation(line: 408, column: 7, scope: !1032, inlinedAt: !1035)
!1047 = !DILocation(line: 409, column: 5, scope: !1048, inlinedAt: !1035)
!1048 = distinct !DILexicalBlock(scope: !1032, file: !3, line: 408, column: 7)
!1049 = !DILocation(line: 409, column: 5, scope: !1050, inlinedAt: !1035)
!1050 = !DILexicalBlockFile(scope: !1048, file: !3, discriminator: 1)
!1051 = !DILocation(line: 410, column: 3, scope: !1032, inlinedAt: !1035)
!1052 = !DILocation(line: 410, column: 3, scope: !1038, inlinedAt: !1035)
!1053 = !DILocation(line: 412, column: 7, scope: !1032, inlinedAt: !1035)
!1054 = !DILocation(line: 413, column: 5, scope: !1055, inlinedAt: !1035)
!1055 = distinct !DILexicalBlock(scope: !1032, file: !3, line: 412, column: 7)
!1056 = !DILocation(line: 413, column: 5, scope: !1057, inlinedAt: !1035)
!1057 = !DILexicalBlockFile(scope: !1055, file: !3, discriminator: 1)
!1058 = !DILocalVariable(name: "__c", arg: 1, scope: !1059, file: !1060, line: 105, type: !52)
!1059 = distinct !DISubprogram(name: "putchar_unlocked", scope: !1060, file: !1060, line: 105, type: !1061, isLocal: false, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1063)
!1060 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1061 = !DISubroutineType(types: !1062)
!1062 = !{!52, !52}
!1063 = !{!1058}
!1064 = !DILocation(line: 105, column: 23, scope: !1059, inlinedAt: !1065)
!1065 = distinct !DILocation(line: 415, column: 3, scope: !1032, inlinedAt: !1035)
!1066 = !DILocation(line: 107, column: 10, scope: !1059, inlinedAt: !1065)
!1067 = !{!1068, !771, i64 40}
!1068 = !{!"_IO_FILE", !966, i64 0, !771, i64 8, !771, i64 16, !771, i64 24, !771, i64 32, !771, i64 40, !771, i64 48, !771, i64 56, !771, i64 64, !771, i64 72, !771, i64 80, !771, i64 88, !771, i64 96, !771, i64 104, !966, i64 112, !966, i64 116, !1006, i64 120, !1069, i64 128, !772, i64 130, !772, i64 131, !771, i64 136, !1006, i64 144, !771, i64 152, !771, i64 160, !771, i64 168, !771, i64 176, !1006, i64 184, !966, i64 192, !772, i64 196}
!1069 = !{!"short", !772, i64 0}
!1070 = !{!1068, !771, i64 48}
!1071 = !{!"branch_weights", i32 2000, i32 1}
!1072 = !DILocation(line: 107, column: 10, scope: !1073, inlinedAt: !1065)
!1073 = !DILexicalBlockFile(scope: !1059, file: !1060, discriminator: 1)
!1074 = !DILocation(line: 107, column: 10, scope: !1075, inlinedAt: !1065)
!1075 = !DILexicalBlockFile(scope: !1059, file: !1060, discriminator: 2)
!1076 = !{!772, !772, i64 0}
!1077 = !DILocation(line: 438, column: 3, scope: !1078, inlinedAt: !1023)
!1078 = !DILexicalBlockFile(scope: !1009, file: !3, discriminator: 1)
!1079 = !DILocation(line: 438, column: 11, scope: !1078, inlinedAt: !1023)
!1080 = !DILocation(line: 440, column: 11, scope: !1020, inlinedAt: !1023)
!1081 = !DILocation(line: 440, column: 11, scope: !1082, inlinedAt: !1023)
!1082 = !DILexicalBlockFile(scope: !1020, file: !3, discriminator: 1)
!1083 = !{!1084, !1069, i64 0}
!1084 = !{!"utmpx", !1069, i64 0, !966, i64 4, !772, i64 8, !772, i64 40, !772, i64 44, !772, i64 76, !1085, i64 332, !966, i64 336, !1086, i64 340, !772, i64 348, !772, i64 364}
!1085 = !{!"__exit_status", !1069, i64 0, !1069, i64 2}
!1086 = !{!"", !966, i64 0, !966, i64 4}
!1087 = !DILocation(line: 440, column: 11, scope: !1088, inlinedAt: !1023)
!1088 = !DILexicalBlockFile(scope: !1021, file: !3, discriminator: 1)
!1089 = !DILocation(line: 442, column: 15, scope: !1019, inlinedAt: !1023)
!1090 = !DILocation(line: 444, column: 19, scope: !1017, inlinedAt: !1023)
!1091 = !DILocation(line: 446, column: 15, scope: !1092, inlinedAt: !1023)
!1092 = !DILexicalBlockFile(scope: !1093, file: !3, discriminator: 1)
!1093 = distinct !DILexicalBlock(scope: !1017, file: !3, line: 446, column: 15)
!1094 = !DILocation(line: 447, column: 21, scope: !1095, inlinedAt: !1023)
!1095 = distinct !DILexicalBlock(scope: !1096, file: !3, line: 447, column: 21)
!1096 = distinct !DILexicalBlock(scope: !1093, file: !3, line: 446, column: 15)
!1097 = !DILocation(line: 446, column: 29, scope: !1098, inlinedAt: !1023)
!1098 = !DILexicalBlockFile(scope: !1096, file: !3, discriminator: 1)
!1099 = distinct !{!1099, !1100, !1101}
!1100 = !DILocation(line: 446, column: 15, scope: !1093)
!1101 = !DILocation(line: 451, column: 19, scope: !1093)
!1102 = !DILocation(line: 446, column: 44, scope: !1103, inlinedAt: !1023)
!1103 = !DILexicalBlockFile(scope: !1096, file: !3, discriminator: 2)
!1104 = !DILocation(line: 447, column: 21, scope: !1096, inlinedAt: !1023)
!1105 = !DILocation(line: 449, column: 21, scope: !1106, inlinedAt: !1023)
!1106 = distinct !DILexicalBlock(scope: !1095, file: !3, line: 448, column: 19)
!1107 = !DILocation(line: 450, column: 21, scope: !1106, inlinedAt: !1023)
!1108 = !DILocation(line: 454, column: 13, scope: !1018, inlinedAt: !1023)
!1109 = !DILocation(line: 456, column: 15, scope: !1021, inlinedAt: !1023)
!1110 = distinct !{!1110, !1111, !1112}
!1111 = !DILocation(line: 438, column: 3, scope: !1009)
!1112 = !DILocation(line: 457, column: 5, scope: !1009)
!1113 = !DILocation(line: 475, column: 1, scope: !980, inlinedAt: !990)
!1114 = !DILocation(line: 601, column: 5, scope: !931)
!1115 = !DILocation(line: 478, column: 23, scope: !921, inlinedAt: !930)
!1116 = !DILocation(line: 478, column: 47, scope: !921, inlinedAt: !930)
!1117 = !DILocation(line: 480, column: 7, scope: !921, inlinedAt: !930)
!1118 = !DILocation(line: 482, column: 17, scope: !1119, inlinedAt: !930)
!1119 = !DILexicalBlockFile(scope: !919, file: !3, discriminator: 1)
!1120 = !DILocation(line: 482, column: 3, scope: !1121, inlinedAt: !930)
!1121 = !DILexicalBlockFile(scope: !920, file: !3, discriminator: 1)
!1122 = !DILocation(line: 483, column: 23, scope: !919, inlinedAt: !930)
!1123 = !DILocation(line: 307, column: 30, scope: !827, inlinedAt: !918)
!1124 = !DILocation(line: 311, column: 8, scope: !827, inlinedAt: !918)
!1125 = !DILocation(line: 309, column: 18, scope: !827, inlinedAt: !918)
!1126 = !DILocation(line: 313, column: 3, scope: !827, inlinedAt: !918)
!1127 = !DILocation(line: 313, column: 3, scope: !1128, inlinedAt: !918)
!1128 = !DILexicalBlockFile(scope: !827, file: !3, discriminator: 1)
!1129 = !DILocation(line: 314, column: 3, scope: !827, inlinedAt: !918)
!1130 = !DILocation(line: 316, column: 3, scope: !827, inlinedAt: !918)
!1131 = !DILocation(line: 316, column: 3, scope: !1128, inlinedAt: !918)
!1132 = !DILocation(line: 317, column: 10, scope: !846, inlinedAt: !918)
!1133 = !DILocation(line: 317, column: 7, scope: !827, inlinedAt: !918)
!1134 = !DILocation(line: 320, column: 7, scope: !1135, inlinedAt: !918)
!1135 = distinct !DILexicalBlock(scope: !846, file: !3, line: 318, column: 5)
!1136 = !DILocation(line: 320, column: 7, scope: !1137, inlinedAt: !918)
!1137 = !DILexicalBlockFile(scope: !1135, file: !3, discriminator: 1)
!1138 = !DILocation(line: 321, column: 7, scope: !1135, inlinedAt: !918)
!1139 = !DILocation(line: 325, column: 27, scope: !845, inlinedAt: !918)
!1140 = !{!1141, !771, i64 24}
!1141 = !{!"passwd", !771, i64 0, !771, i64 8, !966, i64 16, !966, i64 20, !771, i64 24, !771, i64 32, !771, i64 40}
!1142 = !DILocation(line: 325, column: 19, scope: !845, inlinedAt: !918)
!1143 = !DILocation(line: 328, column: 11, scope: !1144, inlinedAt: !918)
!1144 = distinct !DILexicalBlock(scope: !845, file: !3, line: 328, column: 11)
!1145 = !DILocation(line: 328, column: 11, scope: !845, inlinedAt: !918)
!1146 = !DILocation(line: 329, column: 16, scope: !1144, inlinedAt: !918)
!1147 = !DILocation(line: 329, column: 9, scope: !1144, inlinedAt: !918)
!1148 = !DILocation(line: 331, column: 37, scope: !845, inlinedAt: !918)
!1149 = !DILocation(line: 331, column: 51, scope: !845, inlinedAt: !918)
!1150 = !{!1141, !771, i64 0}
!1151 = !DILocation(line: 331, column: 16, scope: !845, inlinedAt: !918)
!1152 = !DILocation(line: 326, column: 13, scope: !845, inlinedAt: !918)
!1153 = !DILocation(line: 332, column: 7, scope: !845, inlinedAt: !918)
!1154 = !DILocation(line: 333, column: 7, scope: !845, inlinedAt: !918)
!1155 = !DILocation(line: 105, column: 23, scope: !1059, inlinedAt: !1156)
!1156 = distinct !DILocation(line: 336, column: 3, scope: !827, inlinedAt: !918)
!1157 = !DILocation(line: 107, column: 10, scope: !1059, inlinedAt: !1156)
!1158 = !DILocation(line: 107, column: 10, scope: !1073, inlinedAt: !1156)
!1159 = !DILocation(line: 107, column: 10, scope: !1075, inlinedAt: !1156)
!1160 = !DILocation(line: 338, column: 7, scope: !827, inlinedAt: !918)
!1161 = !DILocation(line: 340, column: 7, scope: !1162, inlinedAt: !918)
!1162 = distinct !DILexicalBlock(scope: !1163, file: !3, line: 339, column: 5)
!1163 = distinct !DILexicalBlock(scope: !827, file: !3, line: 338, column: 7)
!1164 = !DILocation(line: 340, column: 7, scope: !1165, inlinedAt: !918)
!1165 = !DILexicalBlockFile(scope: !1162, file: !3, discriminator: 1)
!1166 = !DILocation(line: 341, column: 7, scope: !1162, inlinedAt: !918)
!1167 = !{!1141, !771, i64 32}
!1168 = !DILocation(line: 342, column: 7, scope: !1162, inlinedAt: !918)
!1169 = !DILocation(line: 342, column: 7, scope: !1165, inlinedAt: !918)
!1170 = !DILocation(line: 343, column: 7, scope: !1162, inlinedAt: !918)
!1171 = !{!1141, !771, i64 40}
!1172 = !DILocation(line: 105, column: 23, scope: !1059, inlinedAt: !1173)
!1173 = distinct !DILocation(line: 344, column: 7, scope: !1162, inlinedAt: !918)
!1174 = !DILocation(line: 107, column: 10, scope: !1059, inlinedAt: !1173)
!1175 = !DILocation(line: 107, column: 10, scope: !1073, inlinedAt: !1173)
!1176 = !DILocation(line: 107, column: 10, scope: !1075, inlinedAt: !1173)
!1177 = !DILocation(line: 347, column: 7, scope: !827, inlinedAt: !918)
!1178 = !DILocation(line: 350, column: 7, scope: !825, inlinedAt: !918)
!1179 = !DILocation(line: 353, column: 30, scope: !825, inlinedAt: !918)
!1180 = !DILocation(line: 353, column: 18, scope: !825, inlinedAt: !918)
!1181 = !DILocation(line: 353, column: 61, scope: !825, inlinedAt: !918)
!1182 = !DILocation(line: 353, column: 9, scope: !1183, inlinedAt: !918)
!1183 = !DILexicalBlockFile(scope: !825, file: !3, discriminator: 1)
!1184 = !DILocation(line: 352, column: 19, scope: !825, inlinedAt: !918)
!1185 = !DILocation(line: 354, column: 36, scope: !825, inlinedAt: !918)
!1186 = !DILocalVariable(name: "__dest", arg: 1, scope: !1187, file: !1188, line: 114, type: !1191)
!1187 = distinct !DISubprogram(name: "stpcpy", scope: !1188, file: !1188, line: 114, type: !1189, isLocal: false, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1193)
!1188 = !DIFile(filename: "/usr/include/bits/string3.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1189 = !DISubroutineType(types: !1190)
!1190 = !{!39, !1191, !1192}
!1191 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !39)
!1192 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !50)
!1193 = !{!1186, !1194}
!1194 = !DILocalVariable(name: "__src", arg: 2, scope: !1187, file: !1188, line: 114, type: !1192)
!1195 = !DILocation(line: 114, column: 1, scope: !1187, inlinedAt: !1196)
!1196 = distinct !DILocation(line: 354, column: 15, scope: !825, inlinedAt: !918)
!1197 = !DILocation(line: 116, column: 49, scope: !1187, inlinedAt: !1196)
!1198 = !DILocation(line: 116, column: 10, scope: !1187, inlinedAt: !1196)
!1199 = !DILocation(line: 354, column: 7, scope: !1183, inlinedAt: !918)
!1200 = !DILocation(line: 356, column: 16, scope: !825, inlinedAt: !918)
!1201 = !DILocation(line: 349, column: 13, scope: !825, inlinedAt: !918)
!1202 = !DILocation(line: 357, column: 11, scope: !904, inlinedAt: !918)
!1203 = !DILocation(line: 357, column: 11, scope: !825, inlinedAt: !918)
!1204 = !DILocation(line: 361, column: 11, scope: !903, inlinedAt: !918)
!1205 = !DILocation(line: 361, column: 11, scope: !1206, inlinedAt: !918)
!1206 = !DILexicalBlockFile(scope: !903, file: !3, discriminator: 1)
!1207 = !DILocation(line: 363, column: 27, scope: !1206, inlinedAt: !918)
!1208 = !DILocation(line: 359, column: 18, scope: !903, inlinedAt: !918)
!1209 = !DILocation(line: 363, column: 65, scope: !1206, inlinedAt: !918)
!1210 = !DILocation(line: 363, column: 11, scope: !1206, inlinedAt: !918)
!1211 = !DILocation(line: 364, column: 13, scope: !903, inlinedAt: !918)
!1212 = distinct !{!1212, !1213, !1214}
!1213 = !DILocation(line: 363, column: 11, scope: !903)
!1214 = !DILocation(line: 364, column: 13, scope: !903)
!1215 = !DILocation(line: 365, column: 11, scope: !903, inlinedAt: !918)
!1216 = !DILocation(line: 366, column: 9, scope: !903, inlinedAt: !918)
!1217 = !DILocation(line: 368, column: 7, scope: !825, inlinedAt: !918)
!1218 = !DILocation(line: 369, column: 5, scope: !826, inlinedAt: !918)
!1219 = !DILocation(line: 369, column: 5, scope: !825, inlinedAt: !918)
!1220 = !DILocation(line: 371, column: 7, scope: !827, inlinedAt: !918)
!1221 = !DILocation(line: 374, column: 7, scope: !906, inlinedAt: !918)
!1222 = !DILocation(line: 377, column: 30, scope: !906, inlinedAt: !918)
!1223 = !DILocation(line: 377, column: 18, scope: !906, inlinedAt: !918)
!1224 = !DILocation(line: 377, column: 58, scope: !906, inlinedAt: !918)
!1225 = !DILocation(line: 377, column: 9, scope: !1226, inlinedAt: !918)
!1226 = !DILexicalBlockFile(scope: !906, file: !3, discriminator: 1)
!1227 = !DILocation(line: 376, column: 19, scope: !906, inlinedAt: !918)
!1228 = !DILocation(line: 378, column: 33, scope: !906, inlinedAt: !918)
!1229 = !DILocation(line: 114, column: 1, scope: !1187, inlinedAt: !1230)
!1230 = distinct !DILocation(line: 378, column: 15, scope: !906, inlinedAt: !918)
!1231 = !DILocation(line: 116, column: 49, scope: !1187, inlinedAt: !1230)
!1232 = !DILocation(line: 116, column: 10, scope: !1187, inlinedAt: !1230)
!1233 = !DILocation(line: 378, column: 7, scope: !1226, inlinedAt: !918)
!1234 = !DILocation(line: 380, column: 16, scope: !906, inlinedAt: !918)
!1235 = !DILocation(line: 373, column: 13, scope: !906, inlinedAt: !918)
!1236 = !DILocation(line: 381, column: 11, scope: !916, inlinedAt: !918)
!1237 = !DILocation(line: 381, column: 11, scope: !906, inlinedAt: !918)
!1238 = !DILocation(line: 385, column: 11, scope: !915, inlinedAt: !918)
!1239 = !DILocation(line: 385, column: 11, scope: !1240, inlinedAt: !918)
!1240 = !DILexicalBlockFile(scope: !915, file: !3, discriminator: 1)
!1241 = !DILocation(line: 387, column: 27, scope: !1240, inlinedAt: !918)
!1242 = !DILocation(line: 383, column: 18, scope: !915, inlinedAt: !918)
!1243 = !DILocation(line: 387, column: 65, scope: !1240, inlinedAt: !918)
!1244 = !DILocation(line: 387, column: 11, scope: !1240, inlinedAt: !918)
!1245 = !DILocation(line: 388, column: 13, scope: !915, inlinedAt: !918)
!1246 = distinct !{!1246, !1247, !1248}
!1247 = !DILocation(line: 387, column: 11, scope: !915)
!1248 = !DILocation(line: 388, column: 13, scope: !915)
!1249 = !DILocation(line: 389, column: 11, scope: !915, inlinedAt: !918)
!1250 = !DILocation(line: 390, column: 9, scope: !915, inlinedAt: !918)
!1251 = !DILocation(line: 392, column: 7, scope: !906, inlinedAt: !918)
!1252 = !DILocation(line: 393, column: 5, scope: !907, inlinedAt: !918)
!1253 = !DILocation(line: 393, column: 5, scope: !906, inlinedAt: !918)
!1254 = !DILocation(line: 105, column: 23, scope: !1059, inlinedAt: !1255)
!1255 = distinct !DILocation(line: 395, column: 3, scope: !827, inlinedAt: !918)
!1256 = !DILocation(line: 107, column: 10, scope: !1059, inlinedAt: !1255)
!1257 = !DILocation(line: 107, column: 10, scope: !1073, inlinedAt: !1255)
!1258 = !DILocation(line: 107, column: 10, scope: !1075, inlinedAt: !1255)
!1259 = !DILocation(line: 482, column: 32, scope: !1260, inlinedAt: !930)
!1260 = !DILexicalBlockFile(scope: !919, file: !3, discriminator: 2)
!1261 = distinct !{!1261, !1262, !1263}
!1262 = !DILocation(line: 482, column: 3, scope: !920)
!1263 = !DILocation(line: 483, column: 36, scope: !920)
!1264 = !DILocation(line: 605, column: 3, scope: !815)
!1265 = distinct !DISubprogram(name: "print_entry", scope: !3, file: !3, line: 200, type: !1266, isLocal: true, isDefinition: true, scopeLine: 201, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1268)
!1266 = !DISubroutineType(types: !1267)
!1267 = !{null, !135}
!1268 = !{!1269, !1270, !1302, !1303, !1304, !1308, !1309, !1312, !1313, !1316, !1317, !1323, !1324}
!1269 = !DILocalVariable(name: "utmp_ent", arg: 1, scope: !1265, file: !3, line: 200, type: !135)
!1270 = !DILocalVariable(name: "stats", scope: !1265, file: !3, line: 202, type: !1271)
!1271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !1272, line: 46, size: 1152, elements: !1273)
!1272 = !DIFile(filename: "/usr/include/bits/stat.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1273 = !{!1274, !1276, !1278, !1280, !1282, !1283, !1284, !1285, !1286, !1287, !1289, !1291, !1298, !1299, !1300}
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !1271, file: !1272, line: 48, baseType: !1275, size: 64)
!1275 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !114, line: 133, baseType: !44)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !1271, file: !1272, line: 53, baseType: !1277, size: 64, offset: 64)
!1277 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !114, line: 136, baseType: !44)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !1271, file: !1272, line: 61, baseType: !1279, size: 64, offset: 128)
!1279 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !114, line: 139, baseType: !44)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !1271, file: !1272, line: 62, baseType: !1281, size: 32, offset: 192)
!1281 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !114, line: 138, baseType: !244)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !1271, file: !1272, line: 64, baseType: !838, size: 32, offset: 224)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !1271, file: !1272, line: 65, baseType: !840, size: 32, offset: 256)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !1271, file: !1272, line: 67, baseType: !52, size: 32, offset: 288)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !1271, file: !1272, line: 69, baseType: !1275, size: 64, offset: 320)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1271, file: !1272, line: 74, baseType: !880, size: 64, offset: 384)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !1271, file: !1272, line: 78, baseType: !1288, size: 64, offset: 448)
!1288 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !114, line: 162, baseType: !115)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !1271, file: !1272, line: 80, baseType: !1290, size: 64, offset: 512)
!1290 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !114, line: 167, baseType: !115)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !1271, file: !1272, line: 91, baseType: !1292, size: 128, offset: 576)
!1292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !1293, line: 8, size: 128, elements: !1294)
!1293 = !DIFile(filename: "/usr/include/bits/types/struct_timespec.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1294 = !{!1295, !1296}
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1292, file: !1293, line: 10, baseType: !113, size: 64)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1292, file: !1293, line: 11, baseType: !1297, size: 64, offset: 64)
!1297 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !114, line: 184, baseType: !115)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !1271, file: !1272, line: 92, baseType: !1292, size: 128, offset: 704)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !1271, file: !1272, line: 93, baseType: !1292, size: 128, offset: 832)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !1271, file: !1272, line: 106, baseType: !1301, size: 192, offset: 960)
!1301 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1297, size: 192, elements: !208)
!1302 = !DILocalVariable(name: "last_change", scope: !1265, file: !3, line: 203, type: !111)
!1303 = !DILocalVariable(name: "mesg", scope: !1265, file: !3, line: 204, type: !40)
!1304 = !DILocalVariable(name: "line", scope: !1265, file: !3, line: 209, type: !1305)
!1305 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 304, elements: !1306)
!1306 = !{!1307}
!1307 = !DISubrange(count: 38)
!1308 = !DILocalVariable(name: "p", scope: !1265, file: !3, line: 210, type: !39)
!1309 = !DILocalVariable(name: "pw", scope: !1310, file: !3, line: 234, type: !831)
!1310 = distinct !DILexicalBlock(scope: !1311, file: !3, line: 233, column: 5)
!1311 = distinct !DILexicalBlock(scope: !1265, file: !3, line: 232, column: 7)
!1312 = !DILocalVariable(name: "name", scope: !1310, file: !3, line: 235, type: !195)
!1313 = !DILocalVariable(name: "comma", scope: !1314, file: !3, line: 244, type: !847)
!1314 = distinct !DILexicalBlock(scope: !1315, file: !3, line: 243, column: 9)
!1315 = distinct !DILexicalBlock(scope: !1310, file: !3, line: 239, column: 11)
!1316 = !DILocalVariable(name: "result", scope: !1314, file: !3, line: 245, type: !39)
!1317 = !DILocalVariable(name: "ut_host", scope: !1318, file: !3, line: 273, type: !1320)
!1318 = distinct !DILexicalBlock(scope: !1319, file: !3, line: 272, column: 5)
!1319 = distinct !DILexicalBlock(scope: !1265, file: !3, line: 271, column: 7)
!1320 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 2056, elements: !1321)
!1321 = !{!1322}
!1322 = !DISubrange(count: 257)
!1323 = !DILocalVariable(name: "host", scope: !1318, file: !3, line: 274, type: !39)
!1324 = !DILocalVariable(name: "display", scope: !1318, file: !3, line: 275, type: !39)
!1325 = !DILocation(line: 200, column: 33, scope: !1265)
!1326 = !DILocation(line: 202, column: 3, scope: !1265)
!1327 = !DILocation(line: 209, column: 3, scope: !1265)
!1328 = !DILocation(line: 209, column: 8, scope: !1265)
!1329 = !DILocation(line: 210, column: 9, scope: !1265)
!1330 = !DILocation(line: 215, column: 10, scope: !1331)
!1331 = distinct !DILexicalBlock(scope: !1265, file: !3, line: 215, column: 8)
!1332 = !DILocation(line: 215, column: 8, scope: !1265)
!1333 = !DILocation(line: 216, column: 9, scope: !1331)
!1334 = !DILocation(line: 216, column: 5, scope: !1331)
!1335 = !DILocation(line: 739, column: 29, scope: !1336, inlinedAt: !1344)
!1336 = distinct !DISubprogram(name: "stzncpy", scope: !58, file: !58, line: 737, type: !1337, isLocal: true, isDefinition: true, scopeLine: 738, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1339)
!1337 = !DISubroutineType(types: !1338)
!1338 = !{!39, !1191, !1192, !42}
!1339 = !{!1340, !1341, !1342, !1343}
!1340 = !DILocalVariable(name: "dest", arg: 1, scope: !1336, file: !58, line: 737, type: !1191)
!1341 = !DILocalVariable(name: "src", arg: 2, scope: !1336, file: !58, line: 737, type: !1192)
!1342 = !DILocalVariable(name: "len", arg: 3, scope: !1336, file: !58, line: 737, type: !42)
!1343 = !DILocalVariable(name: "src_end", scope: !1336, file: !58, line: 739, type: !50)
!1344 = distinct !DILocation(line: 217, column: 3, scope: !1265)
!1345 = !DILocation(line: 739, column: 15, scope: !1336, inlinedAt: !1344)
!1346 = !DILocation(line: 737, column: 25, scope: !1336, inlinedAt: !1344)
!1347 = !DILocation(line: 737, column: 52, scope: !1336, inlinedAt: !1344)
!1348 = !DILocation(line: 740, column: 24, scope: !1349, inlinedAt: !1344)
!1349 = !DILexicalBlockFile(scope: !1336, file: !58, discriminator: 2)
!1350 = !DILocation(line: 740, column: 3, scope: !1351, inlinedAt: !1344)
!1351 = !DILexicalBlockFile(scope: !1336, file: !58, discriminator: 3)
!1352 = !DILocation(line: 741, column: 19, scope: !1336, inlinedAt: !1344)
!1353 = !DILocation(line: 741, column: 10, scope: !1336, inlinedAt: !1344)
!1354 = !DILocation(line: 741, column: 13, scope: !1336, inlinedAt: !1344)
!1355 = !{!1356}
!1356 = distinct !{!1356, !1357, !"stzncpy: argument 0"}
!1357 = distinct !{!1357, !"stzncpy"}
!1358 = !{!1359}
!1359 = distinct !{!1359, !1357, !"stzncpy: argument 1"}
!1360 = !DILocation(line: 740, column: 14, scope: !1361, inlinedAt: !1344)
!1361 = !DILexicalBlockFile(scope: !1336, file: !58, discriminator: 1)
!1362 = !DILocation(line: 740, column: 24, scope: !1361, inlinedAt: !1344)
!1363 = distinct !{!1363, !1364, !1365}
!1364 = !DILocation(line: 740, column: 3, scope: !1336)
!1365 = !DILocation(line: 741, column: 19, scope: !1336)
!1366 = !DILocation(line: 742, column: 9, scope: !1336, inlinedAt: !1344)
!1367 = !DILocation(line: 202, column: 15, scope: !1265)
!1368 = !DILocalVariable(name: "__path", arg: 1, scope: !1369, file: !1370, line: 449, type: !50)
!1369 = distinct !DISubprogram(name: "stat", scope: !1370, file: !1370, line: 449, type: !1371, isLocal: false, isDefinition: true, scopeLine: 450, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1374)
!1370 = !DIFile(filename: "/usr/include/sys/stat.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1371 = !DISubroutineType(types: !1372)
!1372 = !{!52, !50, !1373}
!1373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1271, size: 64)
!1374 = !{!1368, !1375}
!1375 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !1369, file: !1370, line: 449, type: !1373)
!1376 = !DILocation(line: 449, column: 1, scope: !1369, inlinedAt: !1377)
!1377 = distinct !DILocation(line: 219, column: 7, scope: !1378)
!1378 = distinct !DILexicalBlock(scope: !1265, file: !3, line: 219, column: 7)
!1379 = !DILocation(line: 451, column: 10, scope: !1369, inlinedAt: !1377)
!1380 = !DILocation(line: 219, column: 27, scope: !1378)
!1381 = !DILocation(line: 219, column: 7, scope: !1265)
!1382 = !DILocation(line: 221, column: 21, scope: !1383)
!1383 = distinct !DILexicalBlock(scope: !1378, file: !3, line: 220, column: 5)
!1384 = !{!1385, !966, i64 24}
!1385 = !{!"stat", !1006, i64 0, !1006, i64 8, !1006, i64 16, !966, i64 24, !966, i64 28, !966, i64 32, !966, i64 36, !1006, i64 40, !1006, i64 48, !1006, i64 56, !1006, i64 64, !1386, i64 72, !1386, i64 88, !1386, i64 104, !772, i64 120}
!1386 = !{!"timespec", !1006, i64 0, !1006, i64 8}
!1387 = !DILocation(line: 221, column: 29, scope: !1383)
!1388 = !DILocation(line: 221, column: 14, scope: !1383)
!1389 = !DILocation(line: 222, column: 27, scope: !1383)
!1390 = !{!1385, !1006, i64 72}
!1391 = !DILocation(line: 203, column: 10, scope: !1265)
!1392 = !DILocation(line: 223, column: 5, scope: !1383)
!1393 = !DILocation(line: 230, column: 3, scope: !1265)
!1394 = !DILocation(line: 232, column: 7, scope: !1265)
!1395 = !DILocation(line: 235, column: 7, scope: !1310)
!1396 = !DILocation(line: 235, column: 12, scope: !1310)
!1397 = !DILocation(line: 739, column: 29, scope: !1336, inlinedAt: !1398)
!1398 = distinct !DILocation(line: 237, column: 7, scope: !1310)
!1399 = !DILocation(line: 739, column: 15, scope: !1336, inlinedAt: !1398)
!1400 = !DILocation(line: 737, column: 25, scope: !1336, inlinedAt: !1398)
!1401 = !DILocation(line: 737, column: 52, scope: !1336, inlinedAt: !1398)
!1402 = !DILocation(line: 740, column: 27, scope: !1349, inlinedAt: !1398)
!1403 = !{!1404}
!1404 = distinct !{!1404, !1405, !"stzncpy: argument 1"}
!1405 = distinct !{!1405, !"stzncpy"}
!1406 = !{!1407}
!1407 = distinct !{!1407, !1405, !"stzncpy: argument 0"}
!1408 = !DILocation(line: 740, column: 24, scope: !1349, inlinedAt: !1398)
!1409 = !DILocation(line: 740, column: 3, scope: !1351, inlinedAt: !1398)
!1410 = !DILocation(line: 741, column: 19, scope: !1336, inlinedAt: !1398)
!1411 = !DILocation(line: 741, column: 10, scope: !1336, inlinedAt: !1398)
!1412 = !DILocation(line: 741, column: 13, scope: !1336, inlinedAt: !1398)
!1413 = !DILocation(line: 740, column: 14, scope: !1361, inlinedAt: !1398)
!1414 = !DILocation(line: 740, column: 24, scope: !1361, inlinedAt: !1398)
!1415 = !DILocation(line: 742, column: 9, scope: !1336, inlinedAt: !1398)
!1416 = !DILocation(line: 238, column: 12, scope: !1310)
!1417 = !DILocation(line: 234, column: 22, scope: !1310)
!1418 = !DILocation(line: 239, column: 14, scope: !1315)
!1419 = !DILocation(line: 239, column: 11, scope: !1310)
!1420 = !DILocation(line: 241, column: 9, scope: !1315)
!1421 = !DILocation(line: 241, column: 9, scope: !1422)
!1422 = !DILexicalBlockFile(scope: !1315, file: !3, discriminator: 1)
!1423 = !DILocation(line: 244, column: 31, scope: !1314)
!1424 = !DILocation(line: 244, column: 23, scope: !1314)
!1425 = !DILocation(line: 247, column: 15, scope: !1426)
!1426 = distinct !DILexicalBlock(scope: !1314, file: !3, line: 247, column: 15)
!1427 = !DILocation(line: 247, column: 15, scope: !1314)
!1428 = !DILocation(line: 248, column: 20, scope: !1426)
!1429 = !DILocation(line: 248, column: 13, scope: !1426)
!1430 = !DILocation(line: 250, column: 41, scope: !1314)
!1431 = !DILocation(line: 250, column: 55, scope: !1314)
!1432 = !DILocation(line: 250, column: 20, scope: !1314)
!1433 = !DILocation(line: 245, column: 17, scope: !1314)
!1434 = !DILocation(line: 251, column: 11, scope: !1314)
!1435 = !DILocation(line: 252, column: 11, scope: !1314)
!1436 = !DILocation(line: 254, column: 5, scope: !1311)
!1437 = !DILocation(line: 254, column: 5, scope: !1310)
!1438 = !DILocation(line: 256, column: 3, scope: !1265)
!1439 = !DILocation(line: 259, column: 7, scope: !1265)
!1440 = !DILocation(line: 261, column: 11, scope: !1441)
!1441 = distinct !DILexicalBlock(scope: !1442, file: !3, line: 261, column: 11)
!1442 = distinct !DILexicalBlock(scope: !1443, file: !3, line: 260, column: 5)
!1443 = distinct !DILexicalBlock(scope: !1265, file: !3, line: 259, column: 7)
!1444 = !DILocation(line: 261, column: 11, scope: !1442)
!1445 = !DILocation(line: 147, column: 21, scope: !108, inlinedAt: !1446)
!1446 = distinct !DILocation(line: 262, column: 9, scope: !1441)
!1447 = !DILocation(line: 153, column: 7, scope: !1448, inlinedAt: !1446)
!1448 = distinct !DILexicalBlock(scope: !108, file: !3, line: 153, column: 7)
!1449 = !DILocation(line: 153, column: 11, scope: !1448, inlinedAt: !1446)
!1450 = !DILocation(line: 153, column: 7, scope: !108, inlinedAt: !1446)
!1451 = !DILocation(line: 154, column: 5, scope: !1448, inlinedAt: !1446)
!1452 = !DILocation(line: 156, column: 18, scope: !108, inlinedAt: !1446)
!1453 = !DILocation(line: 156, column: 22, scope: !108, inlinedAt: !1446)
!1454 = !DILocation(line: 151, column: 10, scope: !108, inlinedAt: !1446)
!1455 = !DILocation(line: 157, column: 20, scope: !1456, inlinedAt: !1446)
!1456 = distinct !DILexicalBlock(scope: !108, file: !3, line: 157, column: 7)
!1457 = !DILocation(line: 157, column: 7, scope: !108, inlinedAt: !1446)
!1458 = !DILocation(line: 159, column: 20, scope: !121, inlinedAt: !1446)
!1459 = !DILocation(line: 159, column: 7, scope: !108, inlinedAt: !1446)
!1460 = !DILocation(line: 161, column: 19, scope: !120, inlinedAt: !1446)
!1461 = !DILocation(line: 161, column: 11, scope: !120, inlinedAt: !1446)
!1462 = !DILocation(line: 162, column: 48, scope: !120, inlinedAt: !1446)
!1463 = !DILocation(line: 162, column: 21, scope: !120, inlinedAt: !1446)
!1464 = !DILocation(line: 162, column: 11, scope: !120, inlinedAt: !1446)
!1465 = !DILocation(line: 163, column: 7, scope: !120, inlinedAt: !1446)
!1466 = !DILocation(line: 164, column: 5, scope: !120, inlinedAt: !1446)
!1467 = !DILocation(line: 167, column: 25, scope: !124, inlinedAt: !1446)
!1468 = !DILocation(line: 168, column: 7, scope: !124, inlinedAt: !1446)
!1469 = !DILocation(line: 262, column: 9, scope: !1470)
!1470 = !DILexicalBlockFile(scope: !1441, file: !3, discriminator: 1)
!1471 = !DILocation(line: 262, column: 9, scope: !1441)
!1472 = !DILocation(line: 265, column: 9, scope: !1441)
!1473 = !DILocation(line: 265, column: 9, scope: !1470)
!1474 = !DILocation(line: 175, column: 33, scope: !132, inlinedAt: !1475)
!1475 = distinct !DILocation(line: 268, column: 3, scope: !1265)
!1476 = !DILocation(line: 185, column: 3, scope: !132, inlinedAt: !1475)
!1477 = !DILocation(line: 185, column: 14, scope: !132, inlinedAt: !1475)
!1478 = !{!1084, !966, i64 340}
!1479 = !DILocation(line: 185, column: 10, scope: !132, inlinedAt: !1475)
!1480 = !DILocation(line: 186, column: 20, scope: !132, inlinedAt: !1475)
!1481 = !DILocation(line: 186, column: 14, scope: !132, inlinedAt: !1475)
!1482 = !DILocation(line: 188, column: 7, scope: !1483, inlinedAt: !1475)
!1483 = distinct !DILexicalBlock(scope: !132, file: !3, line: 188, column: 7)
!1484 = !DILocation(line: 188, column: 7, scope: !132, inlinedAt: !1475)
!1485 = !DILocation(line: 190, column: 34, scope: !1486, inlinedAt: !1475)
!1486 = distinct !DILexicalBlock(scope: !1483, file: !3, line: 189, column: 5)
!1487 = !DILocation(line: 190, column: 7, scope: !1486, inlinedAt: !1475)
!1488 = !DILocation(line: 191, column: 7, scope: !1486, inlinedAt: !1475)
!1489 = !DILocation(line: 194, column: 23, scope: !1483, inlinedAt: !1475)
!1490 = !DILocation(line: 689, column: 13, scope: !1491, inlinedAt: !1497)
!1491 = distinct !DISubprogram(name: "timetostr", scope: !58, file: !58, line: 686, type: !1492, isLocal: true, isDefinition: true, scopeLine: 687, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1494)
!1492 = !DISubroutineType(types: !1493)
!1493 = !{!39, !111, !39}
!1494 = !{!1495, !1496}
!1495 = !DILocalVariable(name: "t", arg: 1, scope: !1491, file: !58, line: 686, type: !111)
!1496 = !DILocalVariable(name: "buf", arg: 2, scope: !1491, file: !58, line: 686, type: !39)
!1497 = distinct !DILocation(line: 194, column: 12, scope: !1483, inlinedAt: !1475)
!1498 = !DILocation(line: 194, column: 5, scope: !1483, inlinedAt: !1475)
!1499 = !DILocation(line: 195, column: 1, scope: !132, inlinedAt: !1475)
!1500 = !DILocation(line: 268, column: 3, scope: !1501)
!1501 = !DILexicalBlockFile(scope: !1265, file: !3, discriminator: 1)
!1502 = !DILocation(line: 271, column: 21, scope: !1319)
!1503 = !DILocation(line: 271, column: 24, scope: !1504)
!1504 = !DILexicalBlockFile(scope: !1319, file: !3, discriminator: 1)
!1505 = !DILocation(line: 271, column: 7, scope: !1501)
!1506 = !DILocation(line: 273, column: 7, scope: !1318)
!1507 = !DILocation(line: 273, column: 12, scope: !1318)
!1508 = !DILocation(line: 274, column: 13, scope: !1318)
!1509 = !DILocation(line: 275, column: 13, scope: !1318)
!1510 = !DILocation(line: 739, column: 29, scope: !1336, inlinedAt: !1511)
!1511 = distinct !DILocation(line: 278, column: 7, scope: !1318)
!1512 = !DILocation(line: 739, column: 15, scope: !1336, inlinedAt: !1511)
!1513 = !DILocation(line: 737, column: 25, scope: !1336, inlinedAt: !1511)
!1514 = !DILocation(line: 737, column: 52, scope: !1336, inlinedAt: !1511)
!1515 = !DILocation(line: 740, column: 3, scope: !1351, inlinedAt: !1511)
!1516 = !DILocation(line: 741, column: 19, scope: !1336, inlinedAt: !1511)
!1517 = !DILocation(line: 741, column: 10, scope: !1336, inlinedAt: !1511)
!1518 = !DILocation(line: 741, column: 13, scope: !1336, inlinedAt: !1511)
!1519 = !{!1520}
!1520 = distinct !{!1520, !1521, !"stzncpy: argument 0"}
!1521 = distinct !{!1521, !"stzncpy"}
!1522 = !{!1523}
!1523 = distinct !{!1523, !1521, !"stzncpy: argument 1"}
!1524 = !DILocation(line: 740, column: 14, scope: !1361, inlinedAt: !1511)
!1525 = !DILocation(line: 740, column: 24, scope: !1361, inlinedAt: !1511)
!1526 = !DILocation(line: 740, column: 24, scope: !1349, inlinedAt: !1511)
!1527 = !DILocation(line: 742, column: 9, scope: !1336, inlinedAt: !1511)
!1528 = !DILocation(line: 281, column: 17, scope: !1318)
!1529 = !DILocation(line: 282, column: 11, scope: !1530)
!1530 = distinct !DILexicalBlock(scope: !1318, file: !3, line: 282, column: 11)
!1531 = !DILocation(line: 282, column: 11, scope: !1318)
!1532 = !DILocation(line: 283, column: 17, scope: !1530)
!1533 = !DILocation(line: 283, column: 20, scope: !1530)
!1534 = !DILocation(line: 283, column: 9, scope: !1530)
!1535 = !DILocation(line: 285, column: 11, scope: !1536)
!1536 = distinct !DILexicalBlock(scope: !1318, file: !3, line: 285, column: 11)
!1537 = !DILocation(line: 285, column: 11, scope: !1318)
!1538 = !DILocation(line: 287, column: 16, scope: !1536)
!1539 = !DILocation(line: 287, column: 9, scope: !1536)
!1540 = !DILocation(line: 288, column: 14, scope: !1541)
!1541 = distinct !DILexicalBlock(scope: !1318, file: !3, line: 288, column: 12)
!1542 = !DILocation(line: 288, column: 12, scope: !1318)
!1543 = !DILocation(line: 291, column: 11, scope: !1544)
!1544 = distinct !DILexicalBlock(scope: !1318, file: !3, line: 291, column: 11)
!1545 = !DILocation(line: 291, column: 11, scope: !1318)
!1546 = !DILocation(line: 292, column: 9, scope: !1544)
!1547 = !DILocation(line: 294, column: 9, scope: !1544)
!1548 = !DILocation(line: 296, column: 16, scope: !1549)
!1549 = distinct !DILexicalBlock(scope: !1318, file: !3, line: 296, column: 11)
!1550 = !DILocation(line: 296, column: 11, scope: !1318)
!1551 = !DILocation(line: 297, column: 9, scope: !1549)
!1552 = !DILocation(line: 298, column: 5, scope: !1319)
!1553 = !DILocation(line: 298, column: 5, scope: !1318)
!1554 = !DILocation(line: 105, column: 23, scope: !1059, inlinedAt: !1555)
!1555 = distinct !DILocation(line: 301, column: 3, scope: !1265)
!1556 = !DILocation(line: 107, column: 10, scope: !1059, inlinedAt: !1555)
!1557 = !DILocation(line: 107, column: 10, scope: !1073, inlinedAt: !1555)
!1558 = !DILocation(line: 107, column: 10, scope: !1075, inlinedAt: !1555)
!1559 = !DILocation(line: 302, column: 1, scope: !1265)
!1560 = distinct !DISubprogram(name: "create_fullname", scope: !3, file: !3, line: 103, type: !1561, isLocal: true, isDefinition: true, scopeLine: 104, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1563)
!1561 = !DISubroutineType(types: !1562)
!1562 = !{!39, !50, !50}
!1563 = !{!1564, !1565, !1566, !1567, !1568, !1569, !1570, !1573, !1574, !1578}
!1564 = !DILocalVariable(name: "gecos_name", arg: 1, scope: !1560, file: !3, line: 103, type: !50)
!1565 = !DILocalVariable(name: "user_name", arg: 2, scope: !1560, file: !3, line: 103, type: !50)
!1566 = !DILocalVariable(name: "rsize", scope: !1560, file: !3, line: 105, type: !42)
!1567 = !DILocalVariable(name: "result", scope: !1560, file: !3, line: 106, type: !39)
!1568 = !DILocalVariable(name: "r", scope: !1560, file: !3, line: 107, type: !39)
!1569 = !DILocalVariable(name: "ampersands", scope: !1560, file: !3, line: 108, type: !42)
!1570 = !DILocalVariable(name: "ulen", scope: !1571, file: !3, line: 112, type: !42)
!1571 = distinct !DILexicalBlock(scope: !1572, file: !3, line: 111, column: 5)
!1572 = distinct !DILexicalBlock(scope: !1560, file: !3, line: 110, column: 7)
!1573 = !DILocalVariable(name: "product", scope: !1571, file: !3, line: 113, type: !42)
!1574 = !DILocalVariable(name: "uname", scope: !1575, file: !3, line: 125, type: !50)
!1575 = distinct !DILexicalBlock(scope: !1576, file: !3, line: 124, column: 9)
!1576 = distinct !DILexicalBlock(scope: !1577, file: !3, line: 123, column: 11)
!1577 = distinct !DILexicalBlock(scope: !1560, file: !3, line: 122, column: 5)
!1578 = !DILocalVariable(name: "__res", scope: !1579, file: !3, line: 127, type: !52)
!1579 = distinct !DILexicalBlock(scope: !1580, file: !3, line: 127, column: 20)
!1580 = distinct !DILexicalBlock(scope: !1575, file: !3, line: 126, column: 15)
!1581 = !DILocation(line: 103, column: 30, scope: !1560)
!1582 = !DILocation(line: 103, column: 54, scope: !1560)
!1583 = !DILocation(line: 105, column: 18, scope: !1560)
!1584 = !DILocation(line: 105, column: 10, scope: !1560)
!1585 = !DILocalVariable(name: "str", arg: 1, scope: !1586, file: !3, line: 85, type: !50)
!1586 = distinct !DISubprogram(name: "count_ampersands", scope: !3, file: !3, line: 85, type: !1587, isLocal: true, isDefinition: true, scopeLine: 86, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1589)
!1587 = !DISubroutineType(types: !1588)
!1588 = !{!42, !50}
!1589 = !{!1585, !1590}
!1590 = !DILocalVariable(name: "count", scope: !1586, file: !3, line: 87, type: !42)
!1591 = !DILocation(line: 85, column: 31, scope: !1586, inlinedAt: !1592)
!1592 = distinct !DILocation(line: 108, column: 23, scope: !1560)
!1593 = !DILocation(line: 87, column: 10, scope: !1586, inlinedAt: !1592)
!1594 = !DILocation(line: 88, column: 3, scope: !1586, inlinedAt: !1592)
!1595 = distinct !{!1595, !1596, !1597}
!1596 = !DILocation(line: 88, column: 3, scope: !1586)
!1597 = !DILocation(line: 92, column: 20, scope: !1586)
!1598 = !DILocation(line: 90, column: 11, scope: !1599, inlinedAt: !1592)
!1599 = distinct !DILexicalBlock(scope: !1600, file: !3, line: 90, column: 11)
!1600 = distinct !DILexicalBlock(scope: !1586, file: !3, line: 89, column: 5)
!1601 = !DILocation(line: 90, column: 16, scope: !1599, inlinedAt: !1592)
!1602 = !DILocation(line: 90, column: 11, scope: !1600, inlinedAt: !1592)
!1603 = !DILocation(line: 92, column: 18, scope: !1604, inlinedAt: !1592)
!1604 = !DILexicalBlockFile(scope: !1586, file: !3, discriminator: 1)
!1605 = !DILocation(line: 92, column: 5, scope: !1606, inlinedAt: !1592)
!1606 = !DILexicalBlockFile(scope: !1600, file: !3, discriminator: 1)
!1607 = !DILocation(line: 105, column: 38, scope: !1560)
!1608 = !DILocation(line: 108, column: 10, scope: !1560)
!1609 = !DILocation(line: 110, column: 18, scope: !1572)
!1610 = !DILocation(line: 110, column: 7, scope: !1560)
!1611 = !DILocation(line: 112, column: 21, scope: !1571)
!1612 = !DILocation(line: 112, column: 14, scope: !1571)
!1613 = !DILocation(line: 113, column: 35, scope: !1571)
!1614 = !DILocation(line: 113, column: 14, scope: !1571)
!1615 = !DILocation(line: 114, column: 24, scope: !1571)
!1616 = !DILocation(line: 114, column: 13, scope: !1571)
!1617 = !DILocation(line: 115, column: 11, scope: !1618)
!1618 = distinct !DILexicalBlock(scope: !1571, file: !3, line: 115, column: 11)
!1619 = !DILocation(line: 115, column: 56, scope: !1620)
!1620 = !DILexicalBlockFile(scope: !1618, file: !3, discriminator: 1)
!1621 = !DILocation(line: 115, column: 47, scope: !1618)
!1622 = !DILocation(line: 116, column: 9, scope: !1618)
!1623 = !DILocation(line: 119, column: 16, scope: !1560)
!1624 = !DILocation(line: 106, column: 9, scope: !1560)
!1625 = !DILocation(line: 107, column: 9, scope: !1560)
!1626 = !DILocation(line: 121, column: 3, scope: !1560)
!1627 = !DILocation(line: 121, column: 10, scope: !1628)
!1628 = !DILexicalBlockFile(scope: !1560, file: !3, discriminator: 1)
!1629 = !DILocation(line: 121, column: 3, scope: !1628)
!1630 = !DILocation(line: 125, column: 23, scope: !1575)
!1631 = !DILocation(line: 126, column: 15, scope: !1580)
!1632 = !{!1069, !1069, i64 0}
!1633 = !DILocation(line: 126, column: 15, scope: !1575)
!1634 = !DILocation(line: 127, column: 20, scope: !1635)
!1635 = distinct !DILexicalBlock(scope: !1579, file: !3, line: 127, column: 20)
!1636 = !DILocation(line: 127, column: 20, scope: !1579)
!1637 = !DILocation(line: 127, column: 20, scope: !1580)
!1638 = !DILocation(line: 127, column: 15, scope: !1580)
!1639 = !DILocation(line: 127, column: 18, scope: !1580)
!1640 = !DILocation(line: 127, column: 13, scope: !1580)
!1641 = !DILocation(line: 128, column: 18, scope: !1642)
!1642 = !DILexicalBlockFile(scope: !1575, file: !3, discriminator: 1)
!1643 = !DILocation(line: 128, column: 11, scope: !1642)
!1644 = !DILocation(line: 129, column: 26, scope: !1575)
!1645 = !DILocation(line: 129, column: 15, scope: !1575)
!1646 = !DILocation(line: 129, column: 18, scope: !1575)
!1647 = distinct !{!1647, !1648, !1644}
!1648 = !DILocation(line: 128, column: 11, scope: !1575)
!1649 = !DILocation(line: 133, column: 13, scope: !1650)
!1650 = distinct !DILexicalBlock(scope: !1576, file: !3, line: 132, column: 9)
!1651 = !DILocation(line: 133, column: 16, scope: !1650)
!1652 = !DILocation(line: 136, column: 17, scope: !1577)
!1653 = !DILocation(line: 121, column: 3, scope: !1654)
!1654 = !DILexicalBlockFile(scope: !1560, file: !3, discriminator: 2)
!1655 = distinct !{!1655, !1626, !1656}
!1656 = !DILocation(line: 137, column: 5, scope: !1560)
!1657 = !DILocation(line: 138, column: 6, scope: !1560)
!1658 = !DILocation(line: 140, column: 3, scope: !1560)
!1659 = distinct !DISubprogram(name: "canon_host", scope: !224, file: !224, line: 33, type: !1660, isLocal: false, isDefinition: true, scopeLine: 34, flags: DIFlagPrototyped, isOptimized: true, unit: !218, variables: !1662)
!1660 = !DISubroutineType(types: !1661)
!1661 = !{!39, !50}
!1662 = !{!1663}
!1663 = !DILocalVariable(name: "host", arg: 1, scope: !1659, file: !224, line: 33, type: !50)
!1664 = !DILocation(line: 33, column: 25, scope: !1659)
!1665 = !DILocation(line: 60, column: 27, scope: !223, inlinedAt: !1666)
!1666 = distinct !DILocation(line: 35, column: 10, scope: !1659)
!1667 = !DILocation(line: 60, column: 38, scope: !223, inlinedAt: !1666)
!1668 = !DILocation(line: 62, column: 9, scope: !223, inlinedAt: !1666)
!1669 = !DILocation(line: 64, column: 3, scope: !223, inlinedAt: !1666)
!1670 = !DILocation(line: 64, column: 20, scope: !223, inlinedAt: !1666)
!1671 = !DILocation(line: 67, column: 18, scope: !223, inlinedAt: !1666)
!1672 = !{!1673, !966, i64 0}
!1673 = !{!"addrinfo", !966, i64 0, !966, i64 4, !966, i64 8, !966, i64 12, !966, i64 16, !771, i64 24, !771, i64 32, !771, i64 40}
!1674 = !DILocation(line: 68, column: 12, scope: !223, inlinedAt: !1666)
!1675 = !DILocation(line: 65, column: 7, scope: !223, inlinedAt: !1666)
!1676 = !DILocation(line: 69, column: 8, scope: !1677, inlinedAt: !1666)
!1677 = distinct !DILexicalBlock(scope: !223, file: !224, line: 69, column: 7)
!1678 = !DILocation(line: 69, column: 7, scope: !223, inlinedAt: !1666)
!1679 = !DILocation(line: 74, column: 16, scope: !1680, inlinedAt: !1666)
!1680 = distinct !DILexicalBlock(scope: !1677, file: !224, line: 70, column: 5)
!1681 = !{!1673, !771, i64 32}
!1682 = !DILocation(line: 74, column: 16, scope: !1683, inlinedAt: !1666)
!1683 = !DILexicalBlockFile(scope: !1680, file: !224, discriminator: 2)
!1684 = !DILocation(line: 74, column: 16, scope: !1685, inlinedAt: !1666)
!1685 = !DILexicalBlockFile(scope: !1680, file: !224, discriminator: 3)
!1686 = !DILocation(line: 75, column: 12, scope: !1687, inlinedAt: !1666)
!1687 = distinct !DILexicalBlock(scope: !1680, file: !224, line: 75, column: 11)
!1688 = !DILocation(line: 75, column: 19, scope: !1687, inlinedAt: !1666)
!1689 = !DILocation(line: 76, column: 18, scope: !1687, inlinedAt: !1666)
!1690 = !DILocation(line: 76, column: 9, scope: !1687, inlinedAt: !1666)
!1691 = !DILocation(line: 77, column: 21, scope: !1680, inlinedAt: !1666)
!1692 = !DILocation(line: 77, column: 7, scope: !1680, inlinedAt: !1666)
!1693 = !DILocation(line: 78, column: 5, scope: !1680, inlinedAt: !1666)
!1694 = !DILocation(line: 80, column: 14, scope: !1695, inlinedAt: !1666)
!1695 = distinct !DILexicalBlock(scope: !1677, file: !224, line: 79, column: 12)
!1696 = !DILocation(line: 80, column: 5, scope: !1695, inlinedAt: !1666)
!1697 = !DILocation(line: 83, column: 1, scope: !223, inlinedAt: !1666)
!1698 = !DILocation(line: 35, column: 3, scope: !1659)
!1699 = !DILocation(line: 60, column: 27, scope: !223)
!1700 = !DILocation(line: 60, column: 38, scope: !223)
!1701 = !DILocation(line: 62, column: 9, scope: !223)
!1702 = !DILocation(line: 64, column: 3, scope: !223)
!1703 = !DILocation(line: 64, column: 20, scope: !223)
!1704 = !DILocation(line: 67, column: 18, scope: !223)
!1705 = !DILocation(line: 68, column: 12, scope: !223)
!1706 = !DILocation(line: 65, column: 7, scope: !223)
!1707 = !DILocation(line: 69, column: 8, scope: !1677)
!1708 = !DILocation(line: 69, column: 7, scope: !223)
!1709 = !DILocation(line: 74, column: 16, scope: !1680)
!1710 = !DILocation(line: 74, column: 16, scope: !1683)
!1711 = !DILocation(line: 74, column: 16, scope: !1685)
!1712 = !DILocation(line: 75, column: 12, scope: !1687)
!1713 = !DILocation(line: 75, column: 22, scope: !1714)
!1714 = !DILexicalBlockFile(scope: !1687, file: !224, discriminator: 1)
!1715 = !DILocation(line: 75, column: 19, scope: !1687)
!1716 = !DILocation(line: 76, column: 18, scope: !1687)
!1717 = !DILocation(line: 76, column: 9, scope: !1687)
!1718 = !DILocation(line: 77, column: 21, scope: !1680)
!1719 = !DILocation(line: 77, column: 7, scope: !1680)
!1720 = !DILocation(line: 78, column: 5, scope: !1680)
!1721 = !DILocation(line: 79, column: 12, scope: !1695)
!1722 = !DILocation(line: 79, column: 12, scope: !1677)
!1723 = !DILocation(line: 80, column: 14, scope: !1695)
!1724 = !DILocation(line: 80, column: 5, scope: !1695)
!1725 = !DILocation(line: 83, column: 1, scope: !223)
!1726 = !DILocation(line: 82, column: 3, scope: !223)
!1727 = distinct !DISubprogram(name: "ch_strerror", scope: !224, file: !224, line: 87, type: !1728, isLocal: false, isDefinition: true, scopeLine: 88, flags: DIFlagPrototyped, isOptimized: true, unit: !218, variables: !214)
!1728 = !DISubroutineType(types: !1729)
!1729 = !{!50}
!1730 = !DILocation(line: 89, column: 24, scope: !1727)
!1731 = !DILocation(line: 89, column: 10, scope: !1727)
!1732 = !DILocation(line: 89, column: 3, scope: !1727)
!1733 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !266, file: !266, line: 41, type: !59, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !261, variables: !1734)
!1734 = !{!1735}
!1735 = !DILocalVariable(name: "file", arg: 1, scope: !1733, file: !266, line: 41, type: !50)
!1736 = !DILocation(line: 41, column: 41, scope: !1733)
!1737 = !DILocation(line: 43, column: 13, scope: !1733)
!1738 = !DILocation(line: 44, column: 1, scope: !1733)
!1739 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !266, file: !266, line: 78, type: !1740, isLocal: false, isDefinition: true, scopeLine: 79, flags: DIFlagPrototyped, isOptimized: true, unit: !261, variables: !1742)
!1740 = !DISubroutineType(types: !1741)
!1741 = !{null, !87}
!1742 = !{!1743}
!1743 = !DILocalVariable(name: "ignore", arg: 1, scope: !1739, file: !266, line: 78, type: !87)
!1744 = !DIExpression(DW_OP_LLVM_fragment, 0, 1)
!1745 = !DILocation(line: 78, column: 37, scope: !1739)
!1746 = !DILocation(line: 80, column: 16, scope: !1739)
!1747 = !{!1748, !1748, i64 0}
!1748 = !{!"_Bool", !772, i64 0}
!1749 = !DILocation(line: 81, column: 1, scope: !1739)
!1750 = distinct !DISubprogram(name: "close_stdout", scope: !266, file: !266, line: 107, type: !1033, isLocal: false, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: true, unit: !261, variables: !1751)
!1751 = !{!1752}
!1752 = !DILocalVariable(name: "write_error", scope: !1753, file: !266, line: 112, type: !50)
!1753 = distinct !DILexicalBlock(scope: !1754, file: !266, line: 111, column: 5)
!1754 = distinct !DILexicalBlock(scope: !1750, file: !266, line: 109, column: 7)
!1755 = !DILocation(line: 109, column: 21, scope: !1754)
!1756 = !DILocation(line: 109, column: 7, scope: !1754)
!1757 = !DILocation(line: 109, column: 29, scope: !1754)
!1758 = !DILocation(line: 110, column: 7, scope: !1754)
!1759 = !DILocation(line: 110, column: 12, scope: !1760)
!1760 = !DILexicalBlockFile(scope: !1754, file: !266, discriminator: 1)
!1761 = !{i8 0, i8 2}
!1762 = !DILocation(line: 114, column: 19, scope: !1763)
!1763 = distinct !DILexicalBlock(scope: !1753, file: !266, line: 113, column: 11)
!1764 = !DILocation(line: 110, column: 25, scope: !1760)
!1765 = !DILocation(line: 110, column: 28, scope: !1766)
!1766 = !DILexicalBlockFile(scope: !1754, file: !266, discriminator: 2)
!1767 = !DILocation(line: 110, column: 34, scope: !1766)
!1768 = !DILocation(line: 109, column: 7, scope: !1769)
!1769 = !DILexicalBlockFile(scope: !1750, file: !266, discriminator: 1)
!1770 = !DILocation(line: 112, column: 33, scope: !1753)
!1771 = !DILocation(line: 112, column: 19, scope: !1753)
!1772 = !DILocation(line: 113, column: 11, scope: !1763)
!1773 = !DILocation(line: 113, column: 11, scope: !1753)
!1774 = !DILocation(line: 114, column: 36, scope: !1775)
!1775 = !DILexicalBlockFile(scope: !1763, file: !266, discriminator: 1)
!1776 = !DILocation(line: 114, column: 9, scope: !1777)
!1777 = !DILexicalBlockFile(scope: !1763, file: !266, discriminator: 2)
!1778 = !DILocation(line: 114, column: 9, scope: !1763)
!1779 = !DILocation(line: 117, column: 9, scope: !1775)
!1780 = !DILocation(line: 119, column: 14, scope: !1753)
!1781 = !DILocation(line: 119, column: 7, scope: !1753)
!1782 = !DILocation(line: 122, column: 22, scope: !1783)
!1783 = distinct !DILexicalBlock(scope: !1750, file: !266, line: 122, column: 8)
!1784 = !DILocation(line: 122, column: 8, scope: !1783)
!1785 = !DILocation(line: 122, column: 30, scope: !1783)
!1786 = !DILocation(line: 122, column: 8, scope: !1750)
!1787 = !DILocation(line: 123, column: 13, scope: !1783)
!1788 = !DILocation(line: 123, column: 6, scope: !1783)
!1789 = !DILocation(line: 124, column: 1, scope: !1750)
!1790 = distinct !DISubprogram(name: "hard_locale", scope: !1791, file: !1791, line: 38, type: !1792, isLocal: false, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, unit: !688, variables: !1794)
!1791 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1792 = !DISubroutineType(types: !1793)
!1793 = !{!87, !52}
!1794 = !{!1795, !1796, !1797, !1798, !1805, !1806, !1808, !1809, !1811, !1812, !1814}
!1795 = !DILocalVariable(name: "category", arg: 1, scope: !1790, file: !1791, line: 38, type: !52)
!1796 = !DILocalVariable(name: "hard", scope: !1790, file: !1791, line: 40, type: !87)
!1797 = !DILocalVariable(name: "p", scope: !1790, file: !1791, line: 41, type: !50)
!1798 = !DILocalVariable(name: "__s1_len", scope: !1799, file: !1791, line: 47, type: !42)
!1799 = distinct !DILexicalBlock(scope: !1800, file: !1791, line: 47, column: 15)
!1800 = distinct !DILexicalBlock(scope: !1801, file: !1791, line: 47, column: 15)
!1801 = distinct !DILexicalBlock(scope: !1802, file: !1791, line: 46, column: 9)
!1802 = distinct !DILexicalBlock(scope: !1803, file: !1791, line: 45, column: 11)
!1803 = distinct !DILexicalBlock(scope: !1804, file: !1791, line: 44, column: 5)
!1804 = distinct !DILexicalBlock(scope: !1790, file: !1791, line: 43, column: 7)
!1805 = !DILocalVariable(name: "__s2_len", scope: !1799, file: !1791, line: 47, type: !42)
!1806 = !DILocalVariable(name: "__s2", scope: !1807, file: !1791, line: 47, type: !47)
!1807 = distinct !DILexicalBlock(scope: !1799, file: !1791, line: 47, column: 15)
!1808 = !DILocalVariable(name: "__result", scope: !1807, file: !1791, line: 47, type: !52)
!1809 = !DILocalVariable(name: "__s1_len", scope: !1810, file: !1791, line: 47, type: !42)
!1810 = distinct !DILexicalBlock(scope: !1800, file: !1791, line: 47, column: 39)
!1811 = !DILocalVariable(name: "__s2_len", scope: !1810, file: !1791, line: 47, type: !42)
!1812 = !DILocalVariable(name: "__s2", scope: !1813, file: !1791, line: 47, type: !47)
!1813 = distinct !DILexicalBlock(scope: !1810, file: !1791, line: 47, column: 39)
!1814 = !DILocalVariable(name: "__result", scope: !1813, file: !1791, line: 47, type: !52)
!1815 = !DILocation(line: 38, column: 18, scope: !1790)
!1816 = !DILocation(line: 40, column: 8, scope: !1790)
!1817 = !DILocation(line: 41, column: 19, scope: !1790)
!1818 = !DILocation(line: 41, column: 15, scope: !1790)
!1819 = !DILocation(line: 43, column: 7, scope: !1804)
!1820 = !DILocation(line: 43, column: 7, scope: !1790)
!1821 = !DILocation(line: 47, column: 15, scope: !1799)
!1822 = !DILocation(line: 47, column: 15, scope: !1807)
!1823 = !DILocation(line: 47, column: 15, scope: !1824)
!1824 = !DILexicalBlockFile(scope: !1807, file: !1791, discriminator: 2)
!1825 = !DILocation(line: 47, column: 15, scope: !1826)
!1826 = !DILexicalBlockFile(scope: !1827, file: !1791, discriminator: 3)
!1827 = distinct !DILexicalBlock(scope: !1807, file: !1791, line: 47, column: 15)
!1828 = !DILocation(line: 47, column: 15, scope: !1829)
!1829 = !DILexicalBlockFile(scope: !1827, file: !1791, discriminator: 2)
!1830 = !DILocation(line: 47, column: 15, scope: !1831)
!1831 = !DILexicalBlockFile(scope: !1832, file: !1791, discriminator: 4)
!1832 = distinct !DILexicalBlock(scope: !1827, file: !1791, line: 47, column: 15)
!1833 = !DILocation(line: 47, column: 15, scope: !1834)
!1834 = !DILexicalBlockFile(scope: !1799, file: !1791, discriminator: 11)
!1835 = !DILocation(line: 47, column: 36, scope: !1836)
!1836 = !DILexicalBlockFile(scope: !1800, file: !1791, discriminator: 13)
!1837 = !DILocation(line: 47, column: 39, scope: !1810)
!1838 = !DILocation(line: 47, column: 39, scope: !1839)
!1839 = !DILexicalBlockFile(scope: !1810, file: !1791, discriminator: 26)
!1840 = !DILocation(line: 47, column: 59, scope: !1841)
!1841 = !DILexicalBlockFile(scope: !1800, file: !1791, discriminator: 27)
!1842 = !DILocation(line: 47, column: 15, scope: !1843)
!1843 = !DILexicalBlockFile(scope: !1801, file: !1791, discriminator: 27)
!1844 = !DILocation(line: 48, column: 13, scope: !1800)
!1845 = !DILocation(line: 71, column: 3, scope: !1790)
!1846 = distinct !DISubprogram(name: "imaxtostr", scope: !1847, file: !1847, line: 36, type: !1848, isLocal: false, isDefinition: true, scopeLine: 37, flags: DIFlagPrototyped, isOptimized: true, unit: !691, variables: !1850)
!1847 = !DIFile(filename: "./lib/anytostr.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1848 = !DISubroutineType(types: !1849)
!1849 = !{!39, !694, !39}
!1850 = !{!1851, !1852, !1853}
!1851 = !DILocalVariable(name: "i", arg: 1, scope: !1846, file: !1847, line: 36, type: !694)
!1852 = !DILocalVariable(name: "buf", arg: 2, scope: !1846, file: !1847, line: 36, type: !39)
!1853 = !DILocalVariable(name: "p", scope: !1846, file: !1847, line: 38, type: !39)
!1854 = !DILocation(line: 36, column: 19, scope: !1846)
!1855 = !DILocation(line: 36, column: 28, scope: !1846)
!1856 = !DILocation(line: 38, column: 17, scope: !1846)
!1857 = !DILocation(line: 38, column: 9, scope: !1846)
!1858 = !DILocation(line: 39, column: 6, scope: !1846)
!1859 = !DILocation(line: 41, column: 9, scope: !1860)
!1860 = distinct !DILexicalBlock(scope: !1846, file: !1847, line: 41, column: 7)
!1861 = !DILocation(line: 41, column: 7, scope: !1846)
!1862 = distinct !{!1862, !1863, !1865}
!1863 = !DILocation(line: 51, column: 7, scope: !1864)
!1864 = distinct !DILexicalBlock(scope: !1860, file: !1847, line: 50, column: 5)
!1865 = !DILocation(line: 53, column: 28, scope: !1864)
!1866 = !DILocation(line: 44, column: 24, scope: !1867)
!1867 = distinct !DILexicalBlock(scope: !1860, file: !1847, line: 42, column: 5)
!1868 = !DILocation(line: 44, column: 20, scope: !1867)
!1869 = !DILocation(line: 44, column: 16, scope: !1867)
!1870 = !DILocation(line: 44, column: 10, scope: !1867)
!1871 = !DILocation(line: 44, column: 14, scope: !1867)
!1872 = !DILocation(line: 45, column: 17, scope: !1867)
!1873 = !DILocation(line: 45, column: 24, scope: !1867)
!1874 = !DILocation(line: 44, column: 9, scope: !1875)
!1875 = !DILexicalBlockFile(scope: !1867, file: !1847, discriminator: 1)
!1876 = distinct !{!1876, !1877, !1878}
!1877 = !DILocation(line: 43, column: 7, scope: !1867)
!1878 = !DILocation(line: 45, column: 28, scope: !1867)
!1879 = !DILocation(line: 47, column: 8, scope: !1867)
!1880 = !DILocation(line: 47, column: 12, scope: !1867)
!1881 = !DILocation(line: 48, column: 5, scope: !1867)
!1882 = !DILocation(line: 52, column: 24, scope: !1864)
!1883 = !DILocation(line: 52, column: 20, scope: !1864)
!1884 = !DILocation(line: 52, column: 16, scope: !1864)
!1885 = !DILocation(line: 52, column: 10, scope: !1864)
!1886 = !DILocation(line: 52, column: 14, scope: !1864)
!1887 = !DILocation(line: 53, column: 17, scope: !1864)
!1888 = !DILocation(line: 53, column: 24, scope: !1864)
!1889 = !DILocation(line: 52, column: 9, scope: !1890)
!1890 = !DILexicalBlockFile(scope: !1864, file: !1847, discriminator: 1)
!1891 = !DILocation(line: 56, column: 3, scope: !1846)
!1892 = distinct !DISubprogram(name: "set_program_name", scope: !280, file: !280, line: 39, type: !59, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !276, variables: !1893)
!1893 = !{!1894, !1895, !1896}
!1894 = !DILocalVariable(name: "argv0", arg: 1, scope: !1892, file: !280, line: 39, type: !50)
!1895 = !DILocalVariable(name: "slash", scope: !1892, file: !280, line: 46, type: !50)
!1896 = !DILocalVariable(name: "base", scope: !1892, file: !280, line: 47, type: !50)
!1897 = !DILocation(line: 39, column: 31, scope: !1892)
!1898 = !DILocation(line: 51, column: 13, scope: !1899)
!1899 = distinct !DILexicalBlock(scope: !1892, file: !280, line: 51, column: 7)
!1900 = !DILocation(line: 51, column: 7, scope: !1892)
!1901 = !DILocation(line: 55, column: 14, scope: !1902)
!1902 = distinct !DILexicalBlock(scope: !1899, file: !280, line: 52, column: 5)
!1903 = !DILocation(line: 54, column: 7, scope: !1902)
!1904 = !DILocation(line: 56, column: 7, scope: !1902)
!1905 = !DILocation(line: 59, column: 11, scope: !1892)
!1906 = !DILocation(line: 46, column: 15, scope: !1892)
!1907 = !DILocation(line: 60, column: 17, scope: !1892)
!1908 = !DILocation(line: 60, column: 33, scope: !1909)
!1909 = !DILexicalBlockFile(scope: !1892, file: !280, discriminator: 1)
!1910 = !DILocation(line: 60, column: 11, scope: !1892)
!1911 = !DILocation(line: 47, column: 15, scope: !1892)
!1912 = !DILocation(line: 61, column: 12, scope: !1913)
!1913 = distinct !DILexicalBlock(scope: !1892, file: !280, line: 61, column: 7)
!1914 = !DILocation(line: 61, column: 20, scope: !1913)
!1915 = !DILocation(line: 61, column: 25, scope: !1913)
!1916 = !DILocation(line: 61, column: 28, scope: !1917)
!1917 = !DILexicalBlockFile(scope: !1913, file: !280, discriminator: 1)
!1918 = !DILocation(line: 61, column: 61, scope: !1917)
!1919 = !DILocation(line: 61, column: 7, scope: !1909)
!1920 = !DILocation(line: 64, column: 11, scope: !1921)
!1921 = distinct !DILexicalBlock(scope: !1922, file: !280, line: 64, column: 11)
!1922 = distinct !DILexicalBlock(scope: !1913, file: !280, line: 62, column: 5)
!1923 = !DILocation(line: 64, column: 36, scope: !1921)
!1924 = !DILocation(line: 64, column: 11, scope: !1922)
!1925 = !DILocation(line: 66, column: 24, scope: !1926)
!1926 = distinct !DILexicalBlock(scope: !1921, file: !280, line: 65, column: 9)
!1927 = !DILocation(line: 70, column: 41, scope: !1926)
!1928 = !DILocation(line: 72, column: 9, scope: !1926)
!1929 = !DILocation(line: 84, column: 16, scope: !1892)
!1930 = !DILocation(line: 90, column: 27, scope: !1892)
!1931 = !DILocation(line: 92, column: 1, scope: !1892)
!1932 = distinct !DISubprogram(name: "clone_quoting_options", scope: !295, file: !295, line: 114, type: !1933, isLocal: false, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, unit: !283, variables: !1936)
!1933 = !DISubroutineType(types: !1934)
!1934 = !{!1935, !1935}
!1935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !302, size: 64)
!1936 = !{!1937, !1938, !1939}
!1937 = !DILocalVariable(name: "o", arg: 1, scope: !1932, file: !295, line: 114, type: !1935)
!1938 = !DILocalVariable(name: "e", scope: !1932, file: !295, line: 116, type: !52)
!1939 = !DILocalVariable(name: "p", scope: !1932, file: !295, line: 117, type: !1935)
!1940 = !DILocation(line: 114, column: 48, scope: !1932)
!1941 = !DILocation(line: 116, column: 11, scope: !1932)
!1942 = !DILocation(line: 116, column: 7, scope: !1932)
!1943 = !DILocation(line: 117, column: 40, scope: !1932)
!1944 = !DILocation(line: 117, column: 40, scope: !1945)
!1945 = !DILexicalBlockFile(scope: !1932, file: !295, discriminator: 3)
!1946 = !DILocation(line: 117, column: 31, scope: !1945)
!1947 = !DILocation(line: 117, column: 27, scope: !1932)
!1948 = !DILocation(line: 119, column: 9, scope: !1932)
!1949 = !DILocation(line: 120, column: 3, scope: !1932)
!1950 = distinct !DISubprogram(name: "get_quoting_style", scope: !295, file: !295, line: 125, type: !1951, isLocal: false, isDefinition: true, scopeLine: 126, flags: DIFlagPrototyped, isOptimized: true, unit: !283, variables: !1955)
!1951 = !DISubroutineType(types: !1952)
!1952 = !{!5, !1953}
!1953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1954, size: 64)
!1954 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !302)
!1955 = !{!1956}
!1956 = !DILocalVariable(name: "o", arg: 1, scope: !1950, file: !295, line: 125, type: !1953)
!1957 = !DILocation(line: 125, column: 50, scope: !1950)
!1958 = !DILocation(line: 127, column: 11, scope: !1950)
!1959 = !DILocation(line: 127, column: 46, scope: !1960)
!1960 = !DILexicalBlockFile(scope: !1950, file: !295, discriminator: 3)
!1961 = !{!1962, !772, i64 0}
!1962 = !{!"quoting_options", !772, i64 0, !966, i64 4, !772, i64 8, !771, i64 40, !771, i64 48}
!1963 = !DILocation(line: 127, column: 3, scope: !1960)
!1964 = distinct !DISubprogram(name: "set_quoting_style", scope: !295, file: !295, line: 133, type: !1965, isLocal: false, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: true, unit: !283, variables: !1967)
!1965 = !DISubroutineType(types: !1966)
!1966 = !{null, !1935, !5}
!1967 = !{!1968, !1969}
!1968 = !DILocalVariable(name: "o", arg: 1, scope: !1964, file: !295, line: 133, type: !1935)
!1969 = !DILocalVariable(name: "s", arg: 2, scope: !1964, file: !295, line: 133, type: !5)
!1970 = !DILocation(line: 133, column: 44, scope: !1964)
!1971 = !DILocation(line: 133, column: 66, scope: !1964)
!1972 = !DILocation(line: 135, column: 4, scope: !1964)
!1973 = !DILocation(line: 135, column: 39, scope: !1974)
!1974 = !DILexicalBlockFile(scope: !1964, file: !295, discriminator: 3)
!1975 = !DILocation(line: 135, column: 45, scope: !1974)
!1976 = !DILocation(line: 136, column: 1, scope: !1964)
!1977 = distinct !DISubprogram(name: "set_char_quoting", scope: !295, file: !295, line: 144, type: !1978, isLocal: false, isDefinition: true, scopeLine: 145, flags: DIFlagPrototyped, isOptimized: true, unit: !283, variables: !1980)
!1978 = !DISubroutineType(types: !1979)
!1979 = !{!52, !1935, !40, !52}
!1980 = !{!1981, !1982, !1983, !1984, !1985, !1987, !1988}
!1981 = !DILocalVariable(name: "o", arg: 1, scope: !1977, file: !295, line: 144, type: !1935)
!1982 = !DILocalVariable(name: "c", arg: 2, scope: !1977, file: !295, line: 144, type: !40)
!1983 = !DILocalVariable(name: "i", arg: 3, scope: !1977, file: !295, line: 144, type: !52)
!1984 = !DILocalVariable(name: "uc", scope: !1977, file: !295, line: 146, type: !49)
!1985 = !DILocalVariable(name: "p", scope: !1977, file: !295, line: 147, type: !1986)
!1986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !244, size: 64)
!1987 = !DILocalVariable(name: "shift", scope: !1977, file: !295, line: 149, type: !52)
!1988 = !DILocalVariable(name: "r", scope: !1977, file: !295, line: 150, type: !52)
!1989 = !DILocation(line: 144, column: 43, scope: !1977)
!1990 = !DILocation(line: 144, column: 51, scope: !1977)
!1991 = !DILocation(line: 144, column: 58, scope: !1977)
!1992 = !DILocation(line: 146, column: 17, scope: !1977)
!1993 = !DILocation(line: 148, column: 6, scope: !1977)
!1994 = !DILocation(line: 148, column: 62, scope: !1995)
!1995 = !DILexicalBlockFile(scope: !1977, file: !295, discriminator: 3)
!1996 = !DILocation(line: 148, column: 57, scope: !1995)
!1997 = !DILocation(line: 147, column: 17, scope: !1977)
!1998 = !DILocation(line: 149, column: 18, scope: !1977)
!1999 = !DILocation(line: 149, column: 15, scope: !1977)
!2000 = !DILocation(line: 149, column: 7, scope: !1977)
!2001 = !DILocation(line: 150, column: 12, scope: !1977)
!2002 = !DILocation(line: 150, column: 15, scope: !1977)
!2003 = !DILocation(line: 150, column: 25, scope: !1977)
!2004 = !DILocation(line: 150, column: 7, scope: !1977)
!2005 = !DILocation(line: 151, column: 13, scope: !1977)
!2006 = !DILocation(line: 151, column: 18, scope: !1977)
!2007 = !DILocation(line: 151, column: 23, scope: !1977)
!2008 = !DILocation(line: 151, column: 6, scope: !1977)
!2009 = !DILocation(line: 152, column: 3, scope: !1977)
!2010 = distinct !DISubprogram(name: "set_quoting_flags", scope: !295, file: !295, line: 160, type: !2011, isLocal: false, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !283, variables: !2013)
!2011 = !DISubroutineType(types: !2012)
!2012 = !{!52, !1935, !52}
!2013 = !{!2014, !2015, !2016}
!2014 = !DILocalVariable(name: "o", arg: 1, scope: !2010, file: !295, line: 160, type: !1935)
!2015 = !DILocalVariable(name: "i", arg: 2, scope: !2010, file: !295, line: 160, type: !52)
!2016 = !DILocalVariable(name: "r", scope: !2010, file: !295, line: 162, type: !52)
!2017 = !DILocation(line: 160, column: 44, scope: !2010)
!2018 = !DILocation(line: 160, column: 51, scope: !2010)
!2019 = !DILocation(line: 163, column: 8, scope: !2020)
!2020 = distinct !DILexicalBlock(scope: !2010, file: !295, line: 163, column: 7)
!2021 = !DILocation(line: 163, column: 7, scope: !2010)
!2022 = !DILocation(line: 165, column: 10, scope: !2010)
!2023 = !{!1962, !966, i64 4}
!2024 = !DILocation(line: 162, column: 7, scope: !2010)
!2025 = !DILocation(line: 166, column: 12, scope: !2010)
!2026 = !DILocation(line: 167, column: 3, scope: !2010)
!2027 = distinct !DISubprogram(name: "set_custom_quoting", scope: !295, file: !295, line: 171, type: !2028, isLocal: false, isDefinition: true, scopeLine: 173, flags: DIFlagPrototyped, isOptimized: true, unit: !283, variables: !2030)
!2028 = !DISubroutineType(types: !2029)
!2029 = !{null, !1935, !50, !50}
!2030 = !{!2031, !2032, !2033}
!2031 = !DILocalVariable(name: "o", arg: 1, scope: !2027, file: !295, line: 171, type: !1935)
!2032 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2027, file: !295, line: 172, type: !50)
!2033 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2027, file: !295, line: 172, type: !50)
!2034 = !DILocation(line: 171, column: 45, scope: !2027)
!2035 = !DILocation(line: 172, column: 33, scope: !2027)
!2036 = !DILocation(line: 172, column: 57, scope: !2027)
!2037 = !DILocation(line: 174, column: 8, scope: !2038)
!2038 = distinct !DILexicalBlock(scope: !2027, file: !295, line: 174, column: 7)
!2039 = !DILocation(line: 174, column: 7, scope: !2027)
!2040 = !DILocation(line: 176, column: 6, scope: !2027)
!2041 = !DILocation(line: 176, column: 12, scope: !2027)
!2042 = !DILocation(line: 177, column: 8, scope: !2043)
!2043 = distinct !DILexicalBlock(scope: !2027, file: !295, line: 177, column: 7)
!2044 = !DILocation(line: 177, column: 23, scope: !2045)
!2045 = !DILexicalBlockFile(scope: !2043, file: !295, discriminator: 1)
!2046 = !DILocation(line: 177, column: 19, scope: !2043)
!2047 = !DILocation(line: 178, column: 5, scope: !2043)
!2048 = !DILocation(line: 179, column: 6, scope: !2027)
!2049 = !DILocation(line: 179, column: 17, scope: !2027)
!2050 = !{!1962, !771, i64 40}
!2051 = !DILocation(line: 180, column: 6, scope: !2027)
!2052 = !DILocation(line: 180, column: 18, scope: !2027)
!2053 = !{!1962, !771, i64 48}
!2054 = !DILocation(line: 181, column: 1, scope: !2027)
!2055 = distinct !DISubprogram(name: "quotearg_buffer", scope: !295, file: !295, line: 776, type: !2056, isLocal: false, isDefinition: true, scopeLine: 779, flags: DIFlagPrototyped, isOptimized: true, unit: !283, variables: !2058)
!2056 = !DISubroutineType(types: !2057)
!2057 = !{!42, !39, !42, !50, !42, !1953}
!2058 = !{!2059, !2060, !2061, !2062, !2063, !2064, !2065, !2066}
!2059 = !DILocalVariable(name: "buffer", arg: 1, scope: !2055, file: !295, line: 776, type: !39)
!2060 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2055, file: !295, line: 776, type: !42)
!2061 = !DILocalVariable(name: "arg", arg: 3, scope: !2055, file: !295, line: 777, type: !50)
!2062 = !DILocalVariable(name: "argsize", arg: 4, scope: !2055, file: !295, line: 777, type: !42)
!2063 = !DILocalVariable(name: "o", arg: 5, scope: !2055, file: !295, line: 778, type: !1953)
!2064 = !DILocalVariable(name: "p", scope: !2055, file: !295, line: 780, type: !1953)
!2065 = !DILocalVariable(name: "e", scope: !2055, file: !295, line: 781, type: !52)
!2066 = !DILocalVariable(name: "r", scope: !2055, file: !295, line: 782, type: !42)
!2067 = !DILocation(line: 776, column: 24, scope: !2055)
!2068 = !DILocation(line: 776, column: 39, scope: !2055)
!2069 = !DILocation(line: 777, column: 30, scope: !2055)
!2070 = !DILocation(line: 777, column: 42, scope: !2055)
!2071 = !DILocation(line: 778, column: 48, scope: !2055)
!2072 = !DILocation(line: 780, column: 37, scope: !2055)
!2073 = !DILocation(line: 780, column: 33, scope: !2055)
!2074 = !DILocation(line: 781, column: 11, scope: !2055)
!2075 = !DILocation(line: 781, column: 7, scope: !2055)
!2076 = !DILocation(line: 783, column: 43, scope: !2055)
!2077 = !DILocation(line: 783, column: 53, scope: !2055)
!2078 = !DILocation(line: 783, column: 60, scope: !2055)
!2079 = !DILocation(line: 784, column: 43, scope: !2055)
!2080 = !DILocation(line: 784, column: 58, scope: !2055)
!2081 = !DILocation(line: 782, column: 14, scope: !2055)
!2082 = !DILocation(line: 782, column: 10, scope: !2055)
!2083 = !DILocation(line: 785, column: 9, scope: !2055)
!2084 = !DILocation(line: 786, column: 3, scope: !2055)
!2085 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !295, file: !295, line: 248, type: !2086, isLocal: true, isDefinition: true, scopeLine: 254, flags: DIFlagPrototyped, isOptimized: true, unit: !283, variables: !2090)
!2086 = !DISubroutineType(types: !2087)
!2087 = !{!42, !39, !42, !50, !42, !5, !52, !2088, !50, !50}
!2088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2089, size: 64)
!2089 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !244)
!2090 = !{!2091, !2092, !2093, !2094, !2095, !2096, !2097, !2098, !2099, !2100, !2101, !2102, !2103, !2104, !2105, !2106, !2107, !2108, !2109, !2110, !2111, !2115, !2116, !2117, !2118, !2119, !2122, !2123, !2137, !2140, !2141, !2148}
!2091 = !DILocalVariable(name: "buffer", arg: 1, scope: !2085, file: !295, line: 248, type: !39)
!2092 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2085, file: !295, line: 248, type: !42)
!2093 = !DILocalVariable(name: "arg", arg: 3, scope: !2085, file: !295, line: 249, type: !50)
!2094 = !DILocalVariable(name: "argsize", arg: 4, scope: !2085, file: !295, line: 249, type: !42)
!2095 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !2085, file: !295, line: 250, type: !5)
!2096 = !DILocalVariable(name: "flags", arg: 6, scope: !2085, file: !295, line: 250, type: !52)
!2097 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !2085, file: !295, line: 251, type: !2088)
!2098 = !DILocalVariable(name: "left_quote", arg: 8, scope: !2085, file: !295, line: 252, type: !50)
!2099 = !DILocalVariable(name: "right_quote", arg: 9, scope: !2085, file: !295, line: 253, type: !50)
!2100 = !DILocalVariable(name: "i", scope: !2085, file: !295, line: 255, type: !42)
!2101 = !DILocalVariable(name: "len", scope: !2085, file: !295, line: 256, type: !42)
!2102 = !DILocalVariable(name: "orig_buffersize", scope: !2085, file: !295, line: 257, type: !42)
!2103 = !DILocalVariable(name: "quote_string", scope: !2085, file: !295, line: 258, type: !50)
!2104 = !DILocalVariable(name: "quote_string_len", scope: !2085, file: !295, line: 259, type: !42)
!2105 = !DILocalVariable(name: "backslash_escapes", scope: !2085, file: !295, line: 260, type: !87)
!2106 = !DILocalVariable(name: "unibyte_locale", scope: !2085, file: !295, line: 261, type: !87)
!2107 = !DILocalVariable(name: "elide_outer_quotes", scope: !2085, file: !295, line: 262, type: !87)
!2108 = !DILocalVariable(name: "pending_shell_escape_end", scope: !2085, file: !295, line: 263, type: !87)
!2109 = !DILocalVariable(name: "encountered_single_quote", scope: !2085, file: !295, line: 264, type: !87)
!2110 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !2085, file: !295, line: 265, type: !87)
!2111 = !DILocalVariable(name: "c", scope: !2112, file: !295, line: 394, type: !49)
!2112 = distinct !DILexicalBlock(scope: !2113, file: !295, line: 393, column: 5)
!2113 = distinct !DILexicalBlock(scope: !2114, file: !295, line: 392, column: 3)
!2114 = distinct !DILexicalBlock(scope: !2085, file: !295, line: 392, column: 3)
!2115 = !DILocalVariable(name: "esc", scope: !2112, file: !295, line: 395, type: !49)
!2116 = !DILocalVariable(name: "is_right_quote", scope: !2112, file: !295, line: 396, type: !87)
!2117 = !DILocalVariable(name: "escaping", scope: !2112, file: !295, line: 397, type: !87)
!2118 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !2112, file: !295, line: 398, type: !87)
!2119 = !DILocalVariable(name: "m", scope: !2120, file: !295, line: 602, type: !42)
!2120 = distinct !DILexicalBlock(scope: !2121, file: !295, line: 600, column: 11)
!2121 = distinct !DILexicalBlock(scope: !2112, file: !295, line: 418, column: 9)
!2122 = !DILocalVariable(name: "printable", scope: !2120, file: !295, line: 604, type: !87)
!2123 = !DILocalVariable(name: "mbstate", scope: !2124, file: !295, line: 613, type: !2126)
!2124 = distinct !DILexicalBlock(scope: !2125, file: !295, line: 612, column: 15)
!2125 = distinct !DILexicalBlock(scope: !2120, file: !295, line: 606, column: 17)
!2126 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !2127, line: 107, baseType: !2128)
!2127 = !DIFile(filename: "/usr/include/wchar.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2128 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !2127, line: 95, baseType: !2129)
!2129 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2127, line: 83, size: 64, elements: !2130)
!2130 = !{!2131, !2132}
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !2129, file: !2127, line: 85, baseType: !52, size: 32)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !2129, file: !2127, line: 94, baseType: !2133, size: 32, offset: 32)
!2133 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2129, file: !2127, line: 86, size: 32, elements: !2134)
!2134 = !{!2135, !2136}
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !2133, file: !2127, line: 89, baseType: !244, size: 32)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !2133, file: !2127, line: 93, baseType: !150, size: 32)
!2137 = !DILocalVariable(name: "w", scope: !2138, file: !295, line: 623, type: !2139)
!2138 = distinct !DILexicalBlock(scope: !2124, file: !295, line: 622, column: 19)
!2139 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !43, line: 90, baseType: !52)
!2140 = !DILocalVariable(name: "bytes", scope: !2138, file: !295, line: 624, type: !42)
!2141 = !DILocalVariable(name: "j", scope: !2142, file: !295, line: 649, type: !42)
!2142 = distinct !DILexicalBlock(scope: !2143, file: !295, line: 648, column: 27)
!2143 = distinct !DILexicalBlock(scope: !2144, file: !295, line: 646, column: 29)
!2144 = distinct !DILexicalBlock(scope: !2145, file: !295, line: 641, column: 23)
!2145 = distinct !DILexicalBlock(scope: !2146, file: !295, line: 633, column: 30)
!2146 = distinct !DILexicalBlock(scope: !2147, file: !295, line: 628, column: 30)
!2147 = distinct !DILexicalBlock(scope: !2138, file: !295, line: 626, column: 25)
!2148 = !DILocalVariable(name: "ilim", scope: !2149, file: !295, line: 676, type: !42)
!2149 = distinct !DILexicalBlock(scope: !2150, file: !295, line: 673, column: 15)
!2150 = distinct !DILexicalBlock(scope: !2120, file: !295, line: 672, column: 17)
!2151 = !DILocation(line: 248, column: 33, scope: !2085)
!2152 = !DILocation(line: 248, column: 48, scope: !2085)
!2153 = !DILocation(line: 249, column: 39, scope: !2085)
!2154 = !DILocation(line: 249, column: 51, scope: !2085)
!2155 = !DILocation(line: 250, column: 46, scope: !2085)
!2156 = !DILocation(line: 250, column: 65, scope: !2085)
!2157 = !DILocation(line: 251, column: 47, scope: !2085)
!2158 = !DILocation(line: 252, column: 39, scope: !2085)
!2159 = !DILocation(line: 253, column: 39, scope: !2085)
!2160 = !DILocation(line: 256, column: 10, scope: !2085)
!2161 = !DILocation(line: 257, column: 10, scope: !2085)
!2162 = !DILocation(line: 258, column: 15, scope: !2085)
!2163 = !DILocation(line: 259, column: 10, scope: !2085)
!2164 = !DILocation(line: 260, column: 8, scope: !2085)
!2165 = !DILocation(line: 261, column: 25, scope: !2085)
!2166 = !DILocation(line: 261, column: 36, scope: !2085)
!2167 = !DILocation(line: 262, column: 8, scope: !2085)
!2168 = !DILocation(line: 263, column: 8, scope: !2085)
!2169 = !DILocation(line: 264, column: 8, scope: !2085)
!2170 = !DILocation(line: 265, column: 8, scope: !2085)
!2171 = !DILocation(line: 265, column: 3, scope: !2085)
!2172 = !DILocation(line: 308, column: 3, scope: !2085)
!2173 = !DILocation(line: 315, column: 11, scope: !2174)
!2174 = distinct !DILexicalBlock(scope: !2085, file: !295, line: 309, column: 5)
!2175 = !DILocation(line: 315, column: 12, scope: !2176)
!2176 = distinct !DILexicalBlock(scope: !2174, file: !295, line: 315, column: 11)
!2177 = !DILocation(line: 316, column: 9, scope: !2178)
!2178 = !DILexicalBlockFile(scope: !2179, file: !295, discriminator: 1)
!2179 = distinct !DILexicalBlock(scope: !2180, file: !295, line: 316, column: 9)
!2180 = distinct !DILexicalBlock(scope: !2176, file: !295, line: 316, column: 9)
!2181 = !DILocation(line: 316, column: 9, scope: !2182)
!2182 = !DILexicalBlockFile(scope: !2180, file: !295, discriminator: 1)
!2183 = !DILocation(line: 316, column: 9, scope: !2184)
!2184 = !DILexicalBlockFile(scope: !2179, file: !295, discriminator: 2)
!2185 = !DILocation(line: 354, column: 26, scope: !2186)
!2186 = distinct !DILexicalBlock(scope: !2187, file: !295, line: 332, column: 11)
!2187 = distinct !DILexicalBlock(scope: !2188, file: !295, line: 331, column: 13)
!2188 = distinct !DILexicalBlock(scope: !2174, file: !295, line: 330, column: 7)
!2189 = !DILocation(line: 355, column: 27, scope: !2186)
!2190 = !DILocation(line: 356, column: 11, scope: !2186)
!2191 = !DILocation(line: 357, column: 14, scope: !2192)
!2192 = distinct !DILexicalBlock(scope: !2188, file: !295, line: 357, column: 13)
!2193 = !DILocation(line: 357, column: 13, scope: !2188)
!2194 = !DILocation(line: 358, column: 43, scope: !2195)
!2195 = !DILexicalBlockFile(scope: !2196, file: !295, discriminator: 1)
!2196 = distinct !DILexicalBlock(scope: !2197, file: !295, line: 358, column: 11)
!2197 = distinct !DILexicalBlock(scope: !2192, file: !295, line: 358, column: 11)
!2198 = !DILocation(line: 358, column: 11, scope: !2199)
!2199 = !DILexicalBlockFile(scope: !2197, file: !295, discriminator: 1)
!2200 = !DILocation(line: 359, column: 13, scope: !2201)
!2201 = !DILexicalBlockFile(scope: !2202, file: !295, discriminator: 1)
!2202 = distinct !DILexicalBlock(scope: !2203, file: !295, line: 359, column: 13)
!2203 = distinct !DILexicalBlock(scope: !2196, file: !295, line: 359, column: 13)
!2204 = !DILocation(line: 359, column: 13, scope: !2205)
!2205 = !DILexicalBlockFile(scope: !2203, file: !295, discriminator: 1)
!2206 = !DILocation(line: 359, column: 13, scope: !2207)
!2207 = !DILexicalBlockFile(scope: !2202, file: !295, discriminator: 2)
!2208 = !DILocation(line: 359, column: 13, scope: !2209)
!2209 = !DILexicalBlockFile(scope: !2203, file: !295, discriminator: 3)
!2210 = !DILocation(line: 358, column: 70, scope: !2211)
!2211 = !DILexicalBlockFile(scope: !2196, file: !295, discriminator: 2)
!2212 = distinct !{!2212, !2213, !2214}
!2213 = !DILocation(line: 358, column: 11, scope: !2197)
!2214 = !DILocation(line: 359, column: 13, scope: !2197)
!2215 = !DILocation(line: 362, column: 28, scope: !2188)
!2216 = !DILocation(line: 364, column: 7, scope: !2174)
!2217 = !DILocation(line: 367, column: 7, scope: !2174)
!2218 = !DILocation(line: 370, column: 7, scope: !2174)
!2219 = !DILocation(line: 373, column: 12, scope: !2220)
!2220 = distinct !DILexicalBlock(scope: !2174, file: !295, line: 373, column: 11)
!2221 = !DILocation(line: 373, column: 11, scope: !2174)
!2222 = !DILocation(line: 378, column: 12, scope: !2223)
!2223 = distinct !DILexicalBlock(scope: !2174, file: !295, line: 378, column: 11)
!2224 = !DILocation(line: 378, column: 11, scope: !2174)
!2225 = !DILocation(line: 379, column: 9, scope: !2226)
!2226 = !DILexicalBlockFile(scope: !2227, file: !295, discriminator: 1)
!2227 = distinct !DILexicalBlock(scope: !2228, file: !295, line: 379, column: 9)
!2228 = distinct !DILexicalBlock(scope: !2223, file: !295, line: 379, column: 9)
!2229 = !DILocation(line: 379, column: 9, scope: !2230)
!2230 = !DILexicalBlockFile(scope: !2228, file: !295, discriminator: 1)
!2231 = !DILocation(line: 379, column: 9, scope: !2232)
!2232 = !DILexicalBlockFile(scope: !2227, file: !295, discriminator: 2)
!2233 = !DILocation(line: 386, column: 7, scope: !2174)
!2234 = !DILocation(line: 389, column: 7, scope: !2174)
!2235 = !DILocation(line: 255, column: 10, scope: !2085)
!2236 = !DILocation(line: 392, column: 8, scope: !2114)
!2237 = !DILocation(line: 392, column: 27, scope: !2238)
!2238 = !DILexicalBlockFile(scope: !2113, file: !295, discriminator: 1)
!2239 = !DILocation(line: 392, column: 19, scope: !2238)
!2240 = !DILocation(line: 392, column: 60, scope: !2241)
!2241 = !DILexicalBlockFile(scope: !2113, file: !295, discriminator: 3)
!2242 = !DILocation(line: 392, column: 3, scope: !2243)
!2243 = !DILexicalBlockFile(scope: !2114, file: !295, discriminator: 4)
!2244 = !DILocation(line: 392, column: 41, scope: !2245)
!2245 = !DILexicalBlockFile(scope: !2113, file: !295, discriminator: 2)
!2246 = !DILocation(line: 392, column: 48, scope: !2245)
!2247 = !DILocation(line: 396, column: 12, scope: !2112)
!2248 = !DILocation(line: 397, column: 12, scope: !2112)
!2249 = !DILocation(line: 398, column: 12, scope: !2112)
!2250 = !DILocation(line: 401, column: 11, scope: !2251)
!2251 = distinct !DILexicalBlock(scope: !2112, file: !295, line: 400, column: 11)
!2252 = !DILocation(line: 403, column: 17, scope: !2253)
!2253 = !DILexicalBlockFile(scope: !2251, file: !295, discriminator: 1)
!2254 = !DILocation(line: 404, column: 39, scope: !2251)
!2255 = !DILocation(line: 408, column: 32, scope: !2251)
!2256 = !DILocation(line: 404, column: 19, scope: !2257)
!2257 = !DILexicalBlockFile(scope: !2251, file: !295, discriminator: 2)
!2258 = !DILocation(line: 404, column: 15, scope: !2259)
!2259 = !DILexicalBlockFile(scope: !2251, file: !295, discriminator: 4)
!2260 = !DILocation(line: 409, column: 11, scope: !2251)
!2261 = !DILocation(line: 409, column: 26, scope: !2253)
!2262 = !DILocation(line: 409, column: 14, scope: !2253)
!2263 = !DILocation(line: 400, column: 11, scope: !2264)
!2264 = !DILexicalBlockFile(scope: !2112, file: !295, discriminator: 1)
!2265 = !DILocation(line: 416, column: 11, scope: !2112)
!2266 = !DILocation(line: 394, column: 21, scope: !2112)
!2267 = !DILocation(line: 417, column: 7, scope: !2112)
!2268 = !DILocation(line: 420, column: 15, scope: !2121)
!2269 = !DILocation(line: 422, column: 15, scope: !2270)
!2270 = !DILexicalBlockFile(scope: !2271, file: !295, discriminator: 1)
!2271 = distinct !DILexicalBlock(scope: !2272, file: !295, line: 422, column: 15)
!2272 = distinct !DILexicalBlock(scope: !2273, file: !295, line: 421, column: 13)
!2273 = distinct !DILexicalBlock(scope: !2121, file: !295, line: 420, column: 15)
!2274 = !DILocation(line: 422, column: 15, scope: !2275)
!2275 = !DILexicalBlockFile(scope: !2276, file: !295, discriminator: 4)
!2276 = distinct !DILexicalBlock(scope: !2271, file: !295, line: 422, column: 15)
!2277 = !DILocation(line: 422, column: 15, scope: !2278)
!2278 = !DILexicalBlockFile(scope: !2276, file: !295, discriminator: 3)
!2279 = !DILocation(line: 422, column: 15, scope: !2280)
!2280 = !DILexicalBlockFile(scope: !2281, file: !295, discriminator: 6)
!2281 = distinct !DILexicalBlock(scope: !2282, file: !295, line: 422, column: 15)
!2282 = distinct !DILexicalBlock(scope: !2283, file: !295, line: 422, column: 15)
!2283 = distinct !DILexicalBlock(scope: !2276, file: !295, line: 422, column: 15)
!2284 = !DILocation(line: 422, column: 15, scope: !2285)
!2285 = !DILexicalBlockFile(scope: !2282, file: !295, discriminator: 6)
!2286 = !DILocation(line: 422, column: 15, scope: !2287)
!2287 = !DILexicalBlockFile(scope: !2281, file: !295, discriminator: 7)
!2288 = !DILocation(line: 422, column: 15, scope: !2289)
!2289 = !DILexicalBlockFile(scope: !2282, file: !295, discriminator: 8)
!2290 = !DILocation(line: 422, column: 15, scope: !2291)
!2291 = !DILexicalBlockFile(scope: !2292, file: !295, discriminator: 11)
!2292 = distinct !DILexicalBlock(scope: !2293, file: !295, line: 422, column: 15)
!2293 = distinct !DILexicalBlock(scope: !2283, file: !295, line: 422, column: 15)
!2294 = !DILocation(line: 422, column: 15, scope: !2295)
!2295 = !DILexicalBlockFile(scope: !2293, file: !295, discriminator: 11)
!2296 = !DILocation(line: 422, column: 15, scope: !2297)
!2297 = !DILexicalBlockFile(scope: !2292, file: !295, discriminator: 12)
!2298 = !DILocation(line: 422, column: 15, scope: !2299)
!2299 = !DILexicalBlockFile(scope: !2293, file: !295, discriminator: 13)
!2300 = !DILocation(line: 422, column: 15, scope: !2301)
!2301 = !DILexicalBlockFile(scope: !2302, file: !295, discriminator: 16)
!2302 = distinct !DILexicalBlock(scope: !2303, file: !295, line: 422, column: 15)
!2303 = distinct !DILexicalBlock(scope: !2283, file: !295, line: 422, column: 15)
!2304 = !DILocation(line: 422, column: 15, scope: !2305)
!2305 = !DILexicalBlockFile(scope: !2303, file: !295, discriminator: 16)
!2306 = !DILocation(line: 422, column: 15, scope: !2307)
!2307 = !DILexicalBlockFile(scope: !2302, file: !295, discriminator: 17)
!2308 = !DILocation(line: 422, column: 15, scope: !2309)
!2309 = !DILexicalBlockFile(scope: !2303, file: !295, discriminator: 18)
!2310 = !DILocation(line: 422, column: 15, scope: !2311)
!2311 = !DILexicalBlockFile(scope: !2283, file: !295, discriminator: 20)
!2312 = !DILocation(line: 422, column: 15, scope: !2313)
!2313 = !DILexicalBlockFile(scope: !2314, file: !295, discriminator: 22)
!2314 = distinct !DILexicalBlock(scope: !2315, file: !295, line: 422, column: 15)
!2315 = distinct !DILexicalBlock(scope: !2271, file: !295, line: 422, column: 15)
!2316 = !DILocation(line: 422, column: 15, scope: !2317)
!2317 = !DILexicalBlockFile(scope: !2315, file: !295, discriminator: 22)
!2318 = !DILocation(line: 422, column: 15, scope: !2319)
!2319 = !DILexicalBlockFile(scope: !2314, file: !295, discriminator: 23)
!2320 = !DILocation(line: 422, column: 15, scope: !2321)
!2321 = !DILexicalBlockFile(scope: !2315, file: !295, discriminator: 24)
!2322 = !DILocation(line: 430, column: 19, scope: !2323)
!2323 = distinct !DILexicalBlock(scope: !2272, file: !295, line: 429, column: 19)
!2324 = !DILocation(line: 430, column: 24, scope: !2325)
!2325 = !DILexicalBlockFile(scope: !2323, file: !295, discriminator: 1)
!2326 = !DILocation(line: 430, column: 28, scope: !2325)
!2327 = !DILocation(line: 430, column: 38, scope: !2325)
!2328 = !DILocation(line: 430, column: 48, scope: !2329)
!2329 = !DILexicalBlockFile(scope: !2323, file: !295, discriminator: 2)
!2330 = !DILocation(line: 430, column: 59, scope: !2329)
!2331 = !DILocation(line: 432, column: 19, scope: !2332)
!2332 = !DILexicalBlockFile(scope: !2333, file: !295, discriminator: 1)
!2333 = distinct !DILexicalBlock(scope: !2334, file: !295, line: 432, column: 19)
!2334 = distinct !DILexicalBlock(scope: !2335, file: !295, line: 432, column: 19)
!2335 = distinct !DILexicalBlock(scope: !2323, file: !295, line: 431, column: 17)
!2336 = !DILocation(line: 432, column: 19, scope: !2337)
!2337 = !DILexicalBlockFile(scope: !2334, file: !295, discriminator: 1)
!2338 = !DILocation(line: 432, column: 19, scope: !2339)
!2339 = !DILexicalBlockFile(scope: !2333, file: !295, discriminator: 2)
!2340 = !DILocation(line: 432, column: 19, scope: !2341)
!2341 = !DILexicalBlockFile(scope: !2334, file: !295, discriminator: 3)
!2342 = !DILocation(line: 433, column: 19, scope: !2343)
!2343 = !DILexicalBlockFile(scope: !2344, file: !295, discriminator: 1)
!2344 = distinct !DILexicalBlock(scope: !2345, file: !295, line: 433, column: 19)
!2345 = distinct !DILexicalBlock(scope: !2335, file: !295, line: 433, column: 19)
!2346 = !DILocation(line: 433, column: 19, scope: !2347)
!2347 = !DILexicalBlockFile(scope: !2345, file: !295, discriminator: 1)
!2348 = !DILocation(line: 433, column: 19, scope: !2349)
!2349 = !DILexicalBlockFile(scope: !2344, file: !295, discriminator: 2)
!2350 = !DILocation(line: 433, column: 19, scope: !2351)
!2351 = !DILexicalBlockFile(scope: !2345, file: !295, discriminator: 3)
!2352 = !DILocation(line: 434, column: 17, scope: !2335)
!2353 = !DILocation(line: 441, column: 20, scope: !2273)
!2354 = !DILocation(line: 446, column: 11, scope: !2121)
!2355 = !DILocation(line: 449, column: 19, scope: !2356)
!2356 = distinct !DILexicalBlock(scope: !2121, file: !295, line: 447, column: 13)
!2357 = !DILocation(line: 455, column: 19, scope: !2358)
!2358 = distinct !DILexicalBlock(scope: !2356, file: !295, line: 454, column: 19)
!2359 = !DILocation(line: 455, column: 24, scope: !2360)
!2360 = !DILexicalBlockFile(scope: !2358, file: !295, discriminator: 1)
!2361 = !DILocation(line: 455, column: 28, scope: !2360)
!2362 = !DILocation(line: 455, column: 38, scope: !2360)
!2363 = !DILocation(line: 455, column: 47, scope: !2364)
!2364 = !DILexicalBlockFile(scope: !2358, file: !295, discriminator: 2)
!2365 = !DILocation(line: 455, column: 41, scope: !2364)
!2366 = !DILocation(line: 455, column: 52, scope: !2364)
!2367 = !DILocation(line: 454, column: 19, scope: !2368)
!2368 = !DILexicalBlockFile(scope: !2356, file: !295, discriminator: 1)
!2369 = !DILocation(line: 456, column: 25, scope: !2358)
!2370 = !DILocation(line: 456, column: 17, scope: !2358)
!2371 = !DILocation(line: 463, column: 25, scope: !2372)
!2372 = distinct !DILexicalBlock(scope: !2358, file: !295, line: 457, column: 19)
!2373 = !DILocation(line: 467, column: 21, scope: !2374)
!2374 = !DILexicalBlockFile(scope: !2375, file: !295, discriminator: 1)
!2375 = distinct !DILexicalBlock(scope: !2376, file: !295, line: 467, column: 21)
!2376 = distinct !DILexicalBlock(scope: !2372, file: !295, line: 467, column: 21)
!2377 = !DILocation(line: 467, column: 21, scope: !2378)
!2378 = !DILexicalBlockFile(scope: !2376, file: !295, discriminator: 1)
!2379 = !DILocation(line: 467, column: 21, scope: !2380)
!2380 = !DILexicalBlockFile(scope: !2375, file: !295, discriminator: 2)
!2381 = !DILocation(line: 467, column: 21, scope: !2382)
!2382 = !DILexicalBlockFile(scope: !2376, file: !295, discriminator: 3)
!2383 = !DILocation(line: 468, column: 21, scope: !2384)
!2384 = !DILexicalBlockFile(scope: !2385, file: !295, discriminator: 1)
!2385 = distinct !DILexicalBlock(scope: !2386, file: !295, line: 468, column: 21)
!2386 = distinct !DILexicalBlock(scope: !2372, file: !295, line: 468, column: 21)
!2387 = !DILocation(line: 468, column: 21, scope: !2388)
!2388 = !DILexicalBlockFile(scope: !2386, file: !295, discriminator: 1)
!2389 = !DILocation(line: 468, column: 21, scope: !2390)
!2390 = !DILexicalBlockFile(scope: !2385, file: !295, discriminator: 2)
!2391 = !DILocation(line: 468, column: 21, scope: !2392)
!2392 = !DILexicalBlockFile(scope: !2386, file: !295, discriminator: 3)
!2393 = !DILocation(line: 469, column: 21, scope: !2394)
!2394 = !DILexicalBlockFile(scope: !2395, file: !295, discriminator: 1)
!2395 = distinct !DILexicalBlock(scope: !2396, file: !295, line: 469, column: 21)
!2396 = distinct !DILexicalBlock(scope: !2372, file: !295, line: 469, column: 21)
!2397 = !DILocation(line: 469, column: 21, scope: !2398)
!2398 = !DILexicalBlockFile(scope: !2396, file: !295, discriminator: 1)
!2399 = !DILocation(line: 469, column: 21, scope: !2400)
!2400 = !DILexicalBlockFile(scope: !2395, file: !295, discriminator: 2)
!2401 = !DILocation(line: 469, column: 21, scope: !2402)
!2402 = !DILexicalBlockFile(scope: !2396, file: !295, discriminator: 3)
!2403 = !DILocation(line: 470, column: 21, scope: !2404)
!2404 = !DILexicalBlockFile(scope: !2405, file: !295, discriminator: 1)
!2405 = distinct !DILexicalBlock(scope: !2406, file: !295, line: 470, column: 21)
!2406 = distinct !DILexicalBlock(scope: !2372, file: !295, line: 470, column: 21)
!2407 = !DILocation(line: 470, column: 21, scope: !2408)
!2408 = !DILexicalBlockFile(scope: !2406, file: !295, discriminator: 1)
!2409 = !DILocation(line: 470, column: 21, scope: !2410)
!2410 = !DILexicalBlockFile(scope: !2405, file: !295, discriminator: 2)
!2411 = !DILocation(line: 470, column: 21, scope: !2412)
!2412 = !DILexicalBlockFile(scope: !2406, file: !295, discriminator: 3)
!2413 = !DILocation(line: 471, column: 21, scope: !2372)
!2414 = !DILocation(line: 395, column: 21, scope: !2112)
!2415 = !DILocation(line: 484, column: 31, scope: !2121)
!2416 = !DILocation(line: 485, column: 31, scope: !2121)
!2417 = !DILocation(line: 487, column: 31, scope: !2121)
!2418 = !DILocation(line: 488, column: 31, scope: !2121)
!2419 = !DILocation(line: 489, column: 31, scope: !2121)
!2420 = !DILocation(line: 492, column: 15, scope: !2121)
!2421 = !DILocation(line: 494, column: 19, scope: !2422)
!2422 = distinct !DILexicalBlock(scope: !2423, file: !295, line: 493, column: 13)
!2423 = distinct !DILexicalBlock(scope: !2121, file: !295, line: 492, column: 15)
!2424 = !DILocation(line: 501, column: 33, scope: !2425)
!2425 = distinct !DILexicalBlock(scope: !2121, file: !295, line: 501, column: 15)
!2426 = !DILocation(line: 506, column: 15, scope: !2427)
!2427 = distinct !DILexicalBlock(scope: !2121, file: !295, line: 505, column: 15)
!2428 = !DILocation(line: 510, column: 15, scope: !2121)
!2429 = !DILocation(line: 518, column: 26, scope: !2430)
!2430 = distinct !DILexicalBlock(scope: !2121, file: !295, line: 518, column: 15)
!2431 = !DILocation(line: 518, column: 15, scope: !2121)
!2432 = !DILocation(line: 518, column: 40, scope: !2433)
!2433 = !DILexicalBlockFile(scope: !2430, file: !295, discriminator: 1)
!2434 = !DILocation(line: 518, column: 47, scope: !2433)
!2435 = !DILocation(line: 522, column: 17, scope: !2436)
!2436 = distinct !DILexicalBlock(scope: !2121, file: !295, line: 522, column: 15)
!2437 = !DILocation(line: 518, column: 18, scope: !2433)
!2438 = !DILocation(line: 518, column: 65, scope: !2439)
!2439 = !DILexicalBlockFile(scope: !2430, file: !295, discriminator: 2)
!2440 = !DILocation(line: 518, column: 15, scope: !2441)
!2441 = !DILexicalBlockFile(scope: !2121, file: !295, discriminator: 2)
!2442 = !DILocation(line: 522, column: 15, scope: !2121)
!2443 = !DILocation(line: 526, column: 11, scope: !2121)
!2444 = !DILocation(line: 541, column: 15, scope: !2445)
!2445 = distinct !DILexicalBlock(scope: !2121, file: !295, line: 540, column: 15)
!2446 = !DILocation(line: 548, column: 15, scope: !2121)
!2447 = !DILocation(line: 550, column: 19, scope: !2448)
!2448 = distinct !DILexicalBlock(scope: !2449, file: !295, line: 549, column: 13)
!2449 = distinct !DILexicalBlock(scope: !2121, file: !295, line: 548, column: 15)
!2450 = !DILocation(line: 553, column: 19, scope: !2451)
!2451 = distinct !DILexicalBlock(scope: !2448, file: !295, line: 553, column: 19)
!2452 = !DILocation(line: 553, column: 35, scope: !2453)
!2453 = !DILexicalBlockFile(scope: !2451, file: !295, discriminator: 1)
!2454 = !DILocation(line: 553, column: 30, scope: !2451)
!2455 = !DILocation(line: 562, column: 15, scope: !2456)
!2456 = !DILexicalBlockFile(scope: !2457, file: !295, discriminator: 1)
!2457 = distinct !DILexicalBlock(scope: !2458, file: !295, line: 562, column: 15)
!2458 = distinct !DILexicalBlock(scope: !2448, file: !295, line: 562, column: 15)
!2459 = !DILocation(line: 562, column: 15, scope: !2460)
!2460 = !DILexicalBlockFile(scope: !2458, file: !295, discriminator: 1)
!2461 = !DILocation(line: 562, column: 15, scope: !2462)
!2462 = !DILexicalBlockFile(scope: !2457, file: !295, discriminator: 2)
!2463 = !DILocation(line: 562, column: 15, scope: !2464)
!2464 = !DILexicalBlockFile(scope: !2458, file: !295, discriminator: 3)
!2465 = !DILocation(line: 563, column: 15, scope: !2466)
!2466 = !DILexicalBlockFile(scope: !2467, file: !295, discriminator: 1)
!2467 = distinct !DILexicalBlock(scope: !2468, file: !295, line: 563, column: 15)
!2468 = distinct !DILexicalBlock(scope: !2448, file: !295, line: 563, column: 15)
!2469 = !DILocation(line: 563, column: 15, scope: !2470)
!2470 = !DILexicalBlockFile(scope: !2468, file: !295, discriminator: 1)
!2471 = !DILocation(line: 563, column: 15, scope: !2472)
!2472 = !DILexicalBlockFile(scope: !2467, file: !295, discriminator: 2)
!2473 = !DILocation(line: 563, column: 15, scope: !2474)
!2474 = !DILexicalBlockFile(scope: !2468, file: !295, discriminator: 3)
!2475 = !DILocation(line: 564, column: 15, scope: !2476)
!2476 = !DILexicalBlockFile(scope: !2477, file: !295, discriminator: 1)
!2477 = distinct !DILexicalBlock(scope: !2478, file: !295, line: 564, column: 15)
!2478 = distinct !DILexicalBlock(scope: !2448, file: !295, line: 564, column: 15)
!2479 = !DILocation(line: 564, column: 15, scope: !2480)
!2480 = !DILexicalBlockFile(scope: !2478, file: !295, discriminator: 1)
!2481 = !DILocation(line: 564, column: 15, scope: !2482)
!2482 = !DILexicalBlockFile(scope: !2477, file: !295, discriminator: 2)
!2483 = !DILocation(line: 564, column: 15, scope: !2484)
!2484 = !DILexicalBlockFile(scope: !2478, file: !295, discriminator: 3)
!2485 = !DILocation(line: 566, column: 13, scope: !2448)
!2486 = !DILocation(line: 606, column: 17, scope: !2120)
!2487 = !DILocation(line: 602, column: 20, scope: !2120)
!2488 = !DILocation(line: 609, column: 29, scope: !2489)
!2489 = distinct !DILexicalBlock(scope: !2125, file: !295, line: 607, column: 15)
!2490 = !DILocation(line: 609, column: 27, scope: !2489)
!2491 = !DILocation(line: 604, column: 18, scope: !2120)
!2492 = !DILocation(line: 610, column: 15, scope: !2489)
!2493 = !DILocation(line: 613, column: 17, scope: !2124)
!2494 = !DILocation(line: 614, column: 17, scope: !2124)
!2495 = !DILocation(line: 618, column: 29, scope: !2496)
!2496 = distinct !DILexicalBlock(scope: !2124, file: !295, line: 618, column: 21)
!2497 = !DILocation(line: 618, column: 21, scope: !2124)
!2498 = distinct !{!2498, !2499, !2500}
!2499 = !DILocation(line: 621, column: 17, scope: !2124)
!2500 = !DILocation(line: 667, column: 44, scope: !2124)
!2501 = !DILocation(line: 619, column: 29, scope: !2496)
!2502 = !DILocation(line: 619, column: 19, scope: !2496)
!2503 = !DILocation(line: 623, column: 21, scope: !2138)
!2504 = !DILocation(line: 624, column: 56, scope: !2138)
!2505 = !DILocation(line: 624, column: 50, scope: !2138)
!2506 = !DILocation(line: 625, column: 53, scope: !2138)
!2507 = !DILocation(line: 613, column: 27, scope: !2124)
!2508 = !DILocation(line: 623, column: 29, scope: !2138)
!2509 = !DILocation(line: 624, column: 36, scope: !2138)
!2510 = !DILocation(line: 624, column: 28, scope: !2138)
!2511 = !DILocation(line: 626, column: 25, scope: !2138)
!2512 = !DILocation(line: 636, column: 38, scope: !2513)
!2513 = !DILexicalBlockFile(scope: !2514, file: !295, discriminator: 1)
!2514 = distinct !DILexicalBlock(scope: !2145, file: !295, line: 634, column: 23)
!2515 = !DILocation(line: 636, column: 48, scope: !2513)
!2516 = !DILocation(line: 636, column: 51, scope: !2517)
!2517 = !DILexicalBlockFile(scope: !2514, file: !295, discriminator: 2)
!2518 = !DILocation(line: 636, column: 48, scope: !2517)
!2519 = !DILocation(line: 636, column: 25, scope: !2520)
!2520 = !DILexicalBlockFile(scope: !2514, file: !295, discriminator: 3)
!2521 = !DILocation(line: 637, column: 28, scope: !2514)
!2522 = !DILocation(line: 636, column: 34, scope: !2513)
!2523 = distinct !{!2523, !2524, !2521}
!2524 = !DILocation(line: 636, column: 25, scope: !2514)
!2525 = !DILocation(line: 650, column: 43, scope: !2526)
!2526 = !DILexicalBlockFile(scope: !2527, file: !295, discriminator: 1)
!2527 = distinct !DILexicalBlock(scope: !2528, file: !295, line: 650, column: 29)
!2528 = distinct !DILexicalBlock(scope: !2142, file: !295, line: 650, column: 29)
!2529 = !DILocation(line: 647, column: 29, scope: !2143)
!2530 = !DILocation(line: 649, column: 36, scope: !2142)
!2531 = !DILocation(line: 651, column: 49, scope: !2527)
!2532 = !DILocation(line: 651, column: 39, scope: !2527)
!2533 = !DILocation(line: 651, column: 31, scope: !2527)
!2534 = !DILocation(line: 650, column: 53, scope: !2535)
!2535 = !DILexicalBlockFile(scope: !2527, file: !295, discriminator: 2)
!2536 = !DILocation(line: 650, column: 29, scope: !2537)
!2537 = !DILexicalBlockFile(scope: !2528, file: !295, discriminator: 1)
!2538 = distinct !{!2538, !2539, !2540}
!2539 = !DILocation(line: 650, column: 29, scope: !2528)
!2540 = !DILocation(line: 659, column: 33, scope: !2528)
!2541 = !DILocation(line: 666, column: 19, scope: !2124)
!2542 = !DILocation(line: 662, column: 41, scope: !2543)
!2543 = distinct !DILexicalBlock(scope: !2144, file: !295, line: 662, column: 29)
!2544 = !DILocation(line: 662, column: 31, scope: !2543)
!2545 = !DILocation(line: 662, column: 29, scope: !2144)
!2546 = !DILocation(line: 664, column: 27, scope: !2144)
!2547 = !DILocation(line: 667, column: 26, scope: !2124)
!2548 = !DILocation(line: 667, column: 24, scope: !2124)
!2549 = !DILocation(line: 666, column: 19, scope: !2550)
!2550 = !DILexicalBlockFile(scope: !2138, file: !295, discriminator: 3)
!2551 = !DILocation(line: 668, column: 15, scope: !2125)
!2552 = !DILocation(line: 670, column: 40, scope: !2120)
!2553 = !DILocation(line: 672, column: 19, scope: !2150)
!2554 = !DILocation(line: 672, column: 45, scope: !2555)
!2555 = !DILexicalBlockFile(scope: !2150, file: !295, discriminator: 1)
!2556 = !DILocation(line: 672, column: 23, scope: !2150)
!2557 = !DILocation(line: 676, column: 33, scope: !2149)
!2558 = !DILocation(line: 676, column: 24, scope: !2149)
!2559 = !DILocation(line: 678, column: 17, scope: !2149)
!2560 = !DILocation(line: 680, column: 43, scope: !2561)
!2561 = distinct !DILexicalBlock(scope: !2562, file: !295, line: 680, column: 25)
!2562 = distinct !DILexicalBlock(scope: !2563, file: !295, line: 679, column: 19)
!2563 = distinct !DILexicalBlock(scope: !2564, file: !295, line: 678, column: 17)
!2564 = distinct !DILexicalBlock(scope: !2149, file: !295, line: 678, column: 17)
!2565 = !DILocation(line: 682, column: 25, scope: !2566)
!2566 = !DILexicalBlockFile(scope: !2567, file: !295, discriminator: 1)
!2567 = distinct !DILexicalBlock(scope: !2568, file: !295, line: 682, column: 25)
!2568 = distinct !DILexicalBlock(scope: !2561, file: !295, line: 681, column: 23)
!2569 = !DILocation(line: 682, column: 25, scope: !2570)
!2570 = !DILexicalBlockFile(scope: !2571, file: !295, discriminator: 4)
!2571 = distinct !DILexicalBlock(scope: !2567, file: !295, line: 682, column: 25)
!2572 = !DILocation(line: 682, column: 25, scope: !2573)
!2573 = !DILexicalBlockFile(scope: !2571, file: !295, discriminator: 3)
!2574 = !DILocation(line: 682, column: 25, scope: !2575)
!2575 = !DILexicalBlockFile(scope: !2576, file: !295, discriminator: 6)
!2576 = distinct !DILexicalBlock(scope: !2577, file: !295, line: 682, column: 25)
!2577 = distinct !DILexicalBlock(scope: !2578, file: !295, line: 682, column: 25)
!2578 = distinct !DILexicalBlock(scope: !2571, file: !295, line: 682, column: 25)
!2579 = !DILocation(line: 682, column: 25, scope: !2580)
!2580 = !DILexicalBlockFile(scope: !2577, file: !295, discriminator: 6)
!2581 = !DILocation(line: 682, column: 25, scope: !2582)
!2582 = !DILexicalBlockFile(scope: !2576, file: !295, discriminator: 7)
!2583 = !DILocation(line: 682, column: 25, scope: !2584)
!2584 = !DILexicalBlockFile(scope: !2577, file: !295, discriminator: 8)
!2585 = !DILocation(line: 682, column: 25, scope: !2586)
!2586 = !DILexicalBlockFile(scope: !2587, file: !295, discriminator: 11)
!2587 = distinct !DILexicalBlock(scope: !2588, file: !295, line: 682, column: 25)
!2588 = distinct !DILexicalBlock(scope: !2578, file: !295, line: 682, column: 25)
!2589 = !DILocation(line: 682, column: 25, scope: !2590)
!2590 = !DILexicalBlockFile(scope: !2588, file: !295, discriminator: 11)
!2591 = !DILocation(line: 682, column: 25, scope: !2592)
!2592 = !DILexicalBlockFile(scope: !2587, file: !295, discriminator: 12)
!2593 = !DILocation(line: 682, column: 25, scope: !2594)
!2594 = !DILexicalBlockFile(scope: !2588, file: !295, discriminator: 13)
!2595 = !DILocation(line: 682, column: 25, scope: !2596)
!2596 = !DILexicalBlockFile(scope: !2597, file: !295, discriminator: 16)
!2597 = distinct !DILexicalBlock(scope: !2598, file: !295, line: 682, column: 25)
!2598 = distinct !DILexicalBlock(scope: !2578, file: !295, line: 682, column: 25)
!2599 = !DILocation(line: 682, column: 25, scope: !2600)
!2600 = !DILexicalBlockFile(scope: !2598, file: !295, discriminator: 16)
!2601 = !DILocation(line: 682, column: 25, scope: !2602)
!2602 = !DILexicalBlockFile(scope: !2597, file: !295, discriminator: 17)
!2603 = !DILocation(line: 682, column: 25, scope: !2604)
!2604 = !DILexicalBlockFile(scope: !2598, file: !295, discriminator: 18)
!2605 = !DILocation(line: 682, column: 25, scope: !2606)
!2606 = !DILexicalBlockFile(scope: !2578, file: !295, discriminator: 20)
!2607 = !DILocation(line: 682, column: 25, scope: !2608)
!2608 = !DILexicalBlockFile(scope: !2609, file: !295, discriminator: 22)
!2609 = distinct !DILexicalBlock(scope: !2610, file: !295, line: 682, column: 25)
!2610 = distinct !DILexicalBlock(scope: !2567, file: !295, line: 682, column: 25)
!2611 = !DILocation(line: 682, column: 25, scope: !2612)
!2612 = !DILexicalBlockFile(scope: !2610, file: !295, discriminator: 22)
!2613 = !DILocation(line: 682, column: 25, scope: !2614)
!2614 = !DILexicalBlockFile(scope: !2609, file: !295, discriminator: 23)
!2615 = !DILocation(line: 682, column: 25, scope: !2616)
!2616 = !DILexicalBlockFile(scope: !2610, file: !295, discriminator: 24)
!2617 = !DILocation(line: 683, column: 25, scope: !2618)
!2618 = !DILexicalBlockFile(scope: !2619, file: !295, discriminator: 1)
!2619 = distinct !DILexicalBlock(scope: !2620, file: !295, line: 683, column: 25)
!2620 = distinct !DILexicalBlock(scope: !2568, file: !295, line: 683, column: 25)
!2621 = !DILocation(line: 683, column: 25, scope: !2622)
!2622 = !DILexicalBlockFile(scope: !2620, file: !295, discriminator: 1)
!2623 = !DILocation(line: 683, column: 25, scope: !2624)
!2624 = !DILexicalBlockFile(scope: !2619, file: !295, discriminator: 2)
!2625 = !DILocation(line: 683, column: 25, scope: !2626)
!2626 = !DILexicalBlockFile(scope: !2620, file: !295, discriminator: 3)
!2627 = !DILocation(line: 684, column: 25, scope: !2628)
!2628 = !DILexicalBlockFile(scope: !2629, file: !295, discriminator: 1)
!2629 = distinct !DILexicalBlock(scope: !2630, file: !295, line: 684, column: 25)
!2630 = distinct !DILexicalBlock(scope: !2568, file: !295, line: 684, column: 25)
!2631 = !DILocation(line: 684, column: 25, scope: !2632)
!2632 = !DILexicalBlockFile(scope: !2630, file: !295, discriminator: 1)
!2633 = !DILocation(line: 684, column: 25, scope: !2634)
!2634 = !DILexicalBlockFile(scope: !2629, file: !295, discriminator: 2)
!2635 = !DILocation(line: 684, column: 25, scope: !2636)
!2636 = !DILexicalBlockFile(scope: !2630, file: !295, discriminator: 3)
!2637 = !DILocation(line: 685, column: 38, scope: !2568)
!2638 = !DILocation(line: 685, column: 33, scope: !2568)
!2639 = !DILocation(line: 686, column: 23, scope: !2568)
!2640 = !DILocation(line: 687, column: 30, scope: !2641)
!2641 = distinct !DILexicalBlock(scope: !2561, file: !295, line: 687, column: 30)
!2642 = !DILocation(line: 687, column: 30, scope: !2561)
!2643 = !DILocation(line: 689, column: 25, scope: !2644)
!2644 = !DILexicalBlockFile(scope: !2645, file: !295, discriminator: 1)
!2645 = distinct !DILexicalBlock(scope: !2646, file: !295, line: 689, column: 25)
!2646 = distinct !DILexicalBlock(scope: !2647, file: !295, line: 689, column: 25)
!2647 = distinct !DILexicalBlock(scope: !2641, file: !295, line: 688, column: 23)
!2648 = !DILocation(line: 689, column: 25, scope: !2649)
!2649 = !DILexicalBlockFile(scope: !2646, file: !295, discriminator: 1)
!2650 = !DILocation(line: 689, column: 25, scope: !2651)
!2651 = !DILexicalBlockFile(scope: !2645, file: !295, discriminator: 2)
!2652 = !DILocation(line: 689, column: 25, scope: !2653)
!2653 = !DILexicalBlockFile(scope: !2646, file: !295, discriminator: 3)
!2654 = !DILocation(line: 691, column: 23, scope: !2647)
!2655 = !DILocation(line: 692, column: 35, scope: !2656)
!2656 = distinct !DILexicalBlock(scope: !2562, file: !295, line: 692, column: 25)
!2657 = !DILocation(line: 692, column: 30, scope: !2656)
!2658 = !DILocation(line: 692, column: 25, scope: !2562)
!2659 = !DILocation(line: 694, column: 21, scope: !2660)
!2660 = !DILexicalBlockFile(scope: !2661, file: !295, discriminator: 1)
!2661 = distinct !DILexicalBlock(scope: !2662, file: !295, line: 694, column: 21)
!2662 = distinct !DILexicalBlock(scope: !2562, file: !295, line: 694, column: 21)
!2663 = !DILocation(line: 694, column: 21, scope: !2664)
!2664 = !DILexicalBlockFile(scope: !2661, file: !295, discriminator: 2)
!2665 = !DILocation(line: 694, column: 21, scope: !2666)
!2666 = !DILexicalBlockFile(scope: !2667, file: !295, discriminator: 4)
!2667 = distinct !DILexicalBlock(scope: !2668, file: !295, line: 694, column: 21)
!2668 = distinct !DILexicalBlock(scope: !2669, file: !295, line: 694, column: 21)
!2669 = distinct !DILexicalBlock(scope: !2661, file: !295, line: 694, column: 21)
!2670 = !DILocation(line: 694, column: 21, scope: !2671)
!2671 = !DILexicalBlockFile(scope: !2668, file: !295, discriminator: 4)
!2672 = !DILocation(line: 694, column: 21, scope: !2673)
!2673 = !DILexicalBlockFile(scope: !2667, file: !295, discriminator: 5)
!2674 = !DILocation(line: 694, column: 21, scope: !2675)
!2675 = !DILexicalBlockFile(scope: !2668, file: !295, discriminator: 6)
!2676 = !DILocation(line: 694, column: 21, scope: !2677)
!2677 = !DILexicalBlockFile(scope: !2678, file: !295, discriminator: 9)
!2678 = distinct !DILexicalBlock(scope: !2679, file: !295, line: 694, column: 21)
!2679 = distinct !DILexicalBlock(scope: !2669, file: !295, line: 694, column: 21)
!2680 = !DILocation(line: 694, column: 21, scope: !2681)
!2681 = !DILexicalBlockFile(scope: !2679, file: !295, discriminator: 9)
!2682 = !DILocation(line: 694, column: 21, scope: !2683)
!2683 = !DILexicalBlockFile(scope: !2678, file: !295, discriminator: 10)
!2684 = !DILocation(line: 694, column: 21, scope: !2685)
!2685 = !DILexicalBlockFile(scope: !2679, file: !295, discriminator: 11)
!2686 = !DILocation(line: 694, column: 21, scope: !2687)
!2687 = !DILexicalBlockFile(scope: !2669, file: !295, discriminator: 13)
!2688 = !DILocation(line: 695, column: 21, scope: !2689)
!2689 = !DILexicalBlockFile(scope: !2690, file: !295, discriminator: 1)
!2690 = distinct !DILexicalBlock(scope: !2691, file: !295, line: 695, column: 21)
!2691 = distinct !DILexicalBlock(scope: !2562, file: !295, line: 695, column: 21)
!2692 = !DILocation(line: 695, column: 21, scope: !2693)
!2693 = !DILexicalBlockFile(scope: !2691, file: !295, discriminator: 1)
!2694 = !DILocation(line: 695, column: 21, scope: !2695)
!2695 = !DILexicalBlockFile(scope: !2690, file: !295, discriminator: 2)
!2696 = !DILocation(line: 695, column: 21, scope: !2697)
!2697 = !DILexicalBlockFile(scope: !2691, file: !295, discriminator: 3)
!2698 = !DILocation(line: 696, column: 25, scope: !2562)
!2699 = !DILocation(line: 678, column: 17, scope: !2700)
!2700 = !DILexicalBlockFile(scope: !2563, file: !295, discriminator: 1)
!2701 = distinct !{!2701, !2702, !2703}
!2702 = !DILocation(line: 678, column: 17, scope: !2564)
!2703 = !DILocation(line: 697, column: 19, scope: !2564)
!2704 = !DILocation(line: 704, column: 34, scope: !2705)
!2705 = distinct !DILexicalBlock(scope: !2112, file: !295, line: 704, column: 11)
!2706 = !DILocation(line: 706, column: 14, scope: !2705)
!2707 = !DILocation(line: 707, column: 14, scope: !2705)
!2708 = !DILocation(line: 707, column: 35, scope: !2709)
!2709 = !DILexicalBlockFile(scope: !2705, file: !295, discriminator: 1)
!2710 = !DILocation(line: 707, column: 17, scope: !2709)
!2711 = !DILocation(line: 707, column: 53, scope: !2709)
!2712 = !DILocation(line: 707, column: 47, scope: !2709)
!2713 = !DILocation(line: 707, column: 65, scope: !2709)
!2714 = !DILocation(line: 708, column: 15, scope: !2709)
!2715 = !DILocation(line: 708, column: 11, scope: !2705)
!2716 = !DILocation(line: 704, column: 11, scope: !2717)
!2717 = !DILexicalBlockFile(scope: !2112, file: !295, discriminator: 2)
!2718 = !DILocation(line: 712, column: 7, scope: !2719)
!2719 = !DILexicalBlockFile(scope: !2720, file: !295, discriminator: 1)
!2720 = distinct !DILexicalBlock(scope: !2112, file: !295, line: 712, column: 7)
!2721 = !DILocation(line: 712, column: 7, scope: !2722)
!2722 = !DILexicalBlockFile(scope: !2723, file: !295, discriminator: 4)
!2723 = distinct !DILexicalBlock(scope: !2720, file: !295, line: 712, column: 7)
!2724 = !DILocation(line: 712, column: 7, scope: !2725)
!2725 = !DILexicalBlockFile(scope: !2723, file: !295, discriminator: 3)
!2726 = !DILocation(line: 712, column: 7, scope: !2727)
!2727 = !DILexicalBlockFile(scope: !2728, file: !295, discriminator: 6)
!2728 = distinct !DILexicalBlock(scope: !2729, file: !295, line: 712, column: 7)
!2729 = distinct !DILexicalBlock(scope: !2730, file: !295, line: 712, column: 7)
!2730 = distinct !DILexicalBlock(scope: !2723, file: !295, line: 712, column: 7)
!2731 = !DILocation(line: 712, column: 7, scope: !2732)
!2732 = !DILexicalBlockFile(scope: !2729, file: !295, discriminator: 6)
!2733 = !DILocation(line: 712, column: 7, scope: !2734)
!2734 = !DILexicalBlockFile(scope: !2728, file: !295, discriminator: 7)
!2735 = !DILocation(line: 712, column: 7, scope: !2736)
!2736 = !DILexicalBlockFile(scope: !2729, file: !295, discriminator: 8)
!2737 = !DILocation(line: 712, column: 7, scope: !2738)
!2738 = !DILexicalBlockFile(scope: !2739, file: !295, discriminator: 11)
!2739 = distinct !DILexicalBlock(scope: !2740, file: !295, line: 712, column: 7)
!2740 = distinct !DILexicalBlock(scope: !2730, file: !295, line: 712, column: 7)
!2741 = !DILocation(line: 712, column: 7, scope: !2742)
!2742 = !DILexicalBlockFile(scope: !2740, file: !295, discriminator: 11)
!2743 = !DILocation(line: 712, column: 7, scope: !2744)
!2744 = !DILexicalBlockFile(scope: !2739, file: !295, discriminator: 12)
!2745 = !DILocation(line: 712, column: 7, scope: !2746)
!2746 = !DILexicalBlockFile(scope: !2740, file: !295, discriminator: 13)
!2747 = !DILocation(line: 712, column: 7, scope: !2748)
!2748 = !DILexicalBlockFile(scope: !2749, file: !295, discriminator: 16)
!2749 = distinct !DILexicalBlock(scope: !2750, file: !295, line: 712, column: 7)
!2750 = distinct !DILexicalBlock(scope: !2730, file: !295, line: 712, column: 7)
!2751 = !DILocation(line: 712, column: 7, scope: !2752)
!2752 = !DILexicalBlockFile(scope: !2750, file: !295, discriminator: 16)
!2753 = !DILocation(line: 712, column: 7, scope: !2754)
!2754 = !DILexicalBlockFile(scope: !2749, file: !295, discriminator: 17)
!2755 = !DILocation(line: 712, column: 7, scope: !2756)
!2756 = !DILexicalBlockFile(scope: !2750, file: !295, discriminator: 18)
!2757 = !DILocation(line: 712, column: 7, scope: !2758)
!2758 = !DILexicalBlockFile(scope: !2730, file: !295, discriminator: 20)
!2759 = !DILocation(line: 712, column: 7, scope: !2760)
!2760 = !DILexicalBlockFile(scope: !2761, file: !295, discriminator: 22)
!2761 = distinct !DILexicalBlock(scope: !2762, file: !295, line: 712, column: 7)
!2762 = distinct !DILexicalBlock(scope: !2720, file: !295, line: 712, column: 7)
!2763 = !DILocation(line: 712, column: 7, scope: !2764)
!2764 = !DILexicalBlockFile(scope: !2762, file: !295, discriminator: 22)
!2765 = !DILocation(line: 712, column: 7, scope: !2766)
!2766 = !DILexicalBlockFile(scope: !2761, file: !295, discriminator: 23)
!2767 = !DILocation(line: 712, column: 7, scope: !2768)
!2768 = !DILexicalBlockFile(scope: !2762, file: !295, discriminator: 24)
!2769 = !DILocation(line: 715, column: 7, scope: !2770)
!2770 = !DILexicalBlockFile(scope: !2771, file: !295, discriminator: 1)
!2771 = distinct !DILexicalBlock(scope: !2772, file: !295, line: 715, column: 7)
!2772 = distinct !DILexicalBlock(scope: !2112, file: !295, line: 715, column: 7)
!2773 = !DILocation(line: 715, column: 7, scope: !2774)
!2774 = !DILexicalBlockFile(scope: !2771, file: !295, discriminator: 2)
!2775 = !DILocation(line: 715, column: 7, scope: !2776)
!2776 = !DILexicalBlockFile(scope: !2777, file: !295, discriminator: 4)
!2777 = distinct !DILexicalBlock(scope: !2778, file: !295, line: 715, column: 7)
!2778 = distinct !DILexicalBlock(scope: !2779, file: !295, line: 715, column: 7)
!2779 = distinct !DILexicalBlock(scope: !2771, file: !295, line: 715, column: 7)
!2780 = !DILocation(line: 715, column: 7, scope: !2781)
!2781 = !DILexicalBlockFile(scope: !2778, file: !295, discriminator: 4)
!2782 = !DILocation(line: 715, column: 7, scope: !2783)
!2783 = !DILexicalBlockFile(scope: !2777, file: !295, discriminator: 5)
!2784 = !DILocation(line: 715, column: 7, scope: !2785)
!2785 = !DILexicalBlockFile(scope: !2778, file: !295, discriminator: 6)
!2786 = !DILocation(line: 715, column: 7, scope: !2787)
!2787 = !DILexicalBlockFile(scope: !2788, file: !295, discriminator: 9)
!2788 = distinct !DILexicalBlock(scope: !2789, file: !295, line: 715, column: 7)
!2789 = distinct !DILexicalBlock(scope: !2779, file: !295, line: 715, column: 7)
!2790 = !DILocation(line: 715, column: 7, scope: !2791)
!2791 = !DILexicalBlockFile(scope: !2789, file: !295, discriminator: 9)
!2792 = !DILocation(line: 715, column: 7, scope: !2793)
!2793 = !DILexicalBlockFile(scope: !2788, file: !295, discriminator: 10)
!2794 = !DILocation(line: 715, column: 7, scope: !2795)
!2795 = !DILexicalBlockFile(scope: !2789, file: !295, discriminator: 11)
!2796 = !DILocation(line: 715, column: 7, scope: !2797)
!2797 = !DILexicalBlockFile(scope: !2779, file: !295, discriminator: 13)
!2798 = !DILocation(line: 716, column: 7, scope: !2799)
!2799 = !DILexicalBlockFile(scope: !2800, file: !295, discriminator: 1)
!2800 = distinct !DILexicalBlock(scope: !2801, file: !295, line: 716, column: 7)
!2801 = distinct !DILexicalBlock(scope: !2112, file: !295, line: 716, column: 7)
!2802 = !DILocation(line: 716, column: 7, scope: !2803)
!2803 = !DILexicalBlockFile(scope: !2801, file: !295, discriminator: 1)
!2804 = !DILocation(line: 716, column: 7, scope: !2805)
!2805 = !DILexicalBlockFile(scope: !2800, file: !295, discriminator: 2)
!2806 = !DILocation(line: 716, column: 7, scope: !2807)
!2807 = !DILexicalBlockFile(scope: !2801, file: !295, discriminator: 3)
!2808 = !DILocation(line: 718, column: 13, scope: !2809)
!2809 = distinct !DILexicalBlock(scope: !2112, file: !295, line: 718, column: 11)
!2810 = !DILocation(line: 718, column: 11, scope: !2112)
!2811 = !DILocation(line: 720, column: 5, scope: !2113)
!2812 = !DILocation(line: 392, column: 75, scope: !2813)
!2813 = !DILexicalBlockFile(scope: !2113, file: !295, discriminator: 5)
!2814 = !DILocation(line: 392, column: 3, scope: !2813)
!2815 = distinct !{!2815, !2816, !2817}
!2816 = !DILocation(line: 392, column: 3, scope: !2114)
!2817 = !DILocation(line: 720, column: 5, scope: !2114)
!2818 = !DILocation(line: 722, column: 11, scope: !2819)
!2819 = distinct !DILexicalBlock(scope: !2085, file: !295, line: 722, column: 7)
!2820 = !DILocation(line: 722, column: 16, scope: !2819)
!2821 = !DILocation(line: 730, column: 51, scope: !2822)
!2822 = distinct !DILexicalBlock(scope: !2085, file: !295, line: 730, column: 7)
!2823 = !DILocation(line: 731, column: 10, scope: !2824)
!2824 = !DILexicalBlockFile(scope: !2822, file: !295, discriminator: 1)
!2825 = !DILocation(line: 733, column: 11, scope: !2826)
!2826 = distinct !DILexicalBlock(scope: !2827, file: !295, line: 733, column: 11)
!2827 = distinct !DILexicalBlock(scope: !2822, file: !295, line: 732, column: 5)
!2828 = !DILocation(line: 733, column: 11, scope: !2827)
!2829 = !DILocation(line: 734, column: 16, scope: !2826)
!2830 = !DILocation(line: 734, column: 9, scope: !2826)
!2831 = !DILocation(line: 738, column: 18, scope: !2832)
!2832 = distinct !DILexicalBlock(scope: !2826, file: !295, line: 738, column: 16)
!2833 = !DILocation(line: 738, column: 32, scope: !2834)
!2834 = !DILexicalBlockFile(scope: !2832, file: !295, discriminator: 1)
!2835 = !DILocation(line: 738, column: 29, scope: !2832)
!2836 = !DILocation(line: 747, column: 7, scope: !2837)
!2837 = distinct !DILexicalBlock(scope: !2085, file: !295, line: 747, column: 7)
!2838 = !DILocation(line: 747, column: 20, scope: !2837)
!2839 = !DILocation(line: 748, column: 12, scope: !2840)
!2840 = !DILexicalBlockFile(scope: !2841, file: !295, discriminator: 1)
!2841 = distinct !DILexicalBlock(scope: !2842, file: !295, line: 748, column: 5)
!2842 = distinct !DILexicalBlock(scope: !2837, file: !295, line: 748, column: 5)
!2843 = !DILocation(line: 748, column: 5, scope: !2844)
!2844 = !DILexicalBlockFile(scope: !2842, file: !295, discriminator: 1)
!2845 = !DILocation(line: 749, column: 7, scope: !2846)
!2846 = !DILexicalBlockFile(scope: !2847, file: !295, discriminator: 1)
!2847 = distinct !DILexicalBlock(scope: !2848, file: !295, line: 749, column: 7)
!2848 = distinct !DILexicalBlock(scope: !2841, file: !295, line: 749, column: 7)
!2849 = !DILocation(line: 749, column: 7, scope: !2850)
!2850 = !DILexicalBlockFile(scope: !2848, file: !295, discriminator: 1)
!2851 = !DILocation(line: 749, column: 7, scope: !2852)
!2852 = !DILexicalBlockFile(scope: !2847, file: !295, discriminator: 2)
!2853 = !DILocation(line: 749, column: 7, scope: !2854)
!2854 = !DILexicalBlockFile(scope: !2848, file: !295, discriminator: 3)
!2855 = !DILocation(line: 748, column: 39, scope: !2856)
!2856 = !DILexicalBlockFile(scope: !2841, file: !295, discriminator: 2)
!2857 = distinct !{!2857, !2858, !2859}
!2858 = !DILocation(line: 748, column: 5, scope: !2842)
!2859 = !DILocation(line: 749, column: 7, scope: !2842)
!2860 = !DILocation(line: 751, column: 11, scope: !2861)
!2861 = distinct !DILexicalBlock(scope: !2085, file: !295, line: 751, column: 7)
!2862 = !DILocation(line: 751, column: 7, scope: !2085)
!2863 = !DILocation(line: 752, column: 5, scope: !2861)
!2864 = !DILocation(line: 752, column: 17, scope: !2861)
!2865 = !DILocation(line: 758, column: 21, scope: !2866)
!2866 = distinct !DILexicalBlock(scope: !2085, file: !295, line: 758, column: 7)
!2867 = !DILocation(line: 758, column: 54, scope: !2868)
!2868 = !DILexicalBlockFile(scope: !2866, file: !295, discriminator: 1)
!2869 = !DILocation(line: 758, column: 51, scope: !2866)
!2870 = !DILocation(line: 762, column: 42, scope: !2085)
!2871 = !DILocation(line: 760, column: 10, scope: !2085)
!2872 = !DILocation(line: 760, column: 3, scope: !2085)
!2873 = !DILocation(line: 764, column: 1, scope: !2085)
!2874 = distinct !DISubprogram(name: "gettext_quote", scope: !295, file: !295, line: 199, type: !2875, isLocal: true, isDefinition: true, scopeLine: 200, flags: DIFlagPrototyped, isOptimized: true, unit: !283, variables: !2877)
!2875 = !DISubroutineType(types: !2876)
!2876 = !{!50, !50, !5}
!2877 = !{!2878, !2879, !2880, !2881}
!2878 = !DILocalVariable(name: "msgid", arg: 1, scope: !2874, file: !295, line: 199, type: !50)
!2879 = !DILocalVariable(name: "s", arg: 2, scope: !2874, file: !295, line: 199, type: !5)
!2880 = !DILocalVariable(name: "translation", scope: !2874, file: !295, line: 201, type: !50)
!2881 = !DILocalVariable(name: "locale_code", scope: !2874, file: !295, line: 202, type: !50)
!2882 = !DILocation(line: 199, column: 28, scope: !2874)
!2883 = !DILocation(line: 199, column: 54, scope: !2874)
!2884 = !DILocation(line: 201, column: 29, scope: !2874)
!2885 = !DILocation(line: 201, column: 15, scope: !2874)
!2886 = !DILocation(line: 204, column: 19, scope: !2887)
!2887 = distinct !DILexicalBlock(scope: !2874, file: !295, line: 204, column: 7)
!2888 = !DILocation(line: 204, column: 7, scope: !2874)
!2889 = !DILocation(line: 225, column: 17, scope: !2874)
!2890 = !DILocation(line: 202, column: 15, scope: !2874)
!2891 = !DILocalVariable(name: "s2", arg: 2, scope: !2892, file: !2893, line: 160, type: !50)
!2892 = distinct !DISubprogram(name: "strcaseeq0", scope: !2893, file: !2893, line: 160, type: !2894, isLocal: true, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !283, variables: !2896)
!2893 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2894 = !DISubroutineType(types: !2895)
!2895 = !{!52, !50, !50, !40, !40, !40, !40, !40, !40, !40, !40, !40}
!2896 = !{!2897, !2891, !2898, !2899, !2900, !2901, !2902, !2903, !2904, !2905, !2906}
!2897 = !DILocalVariable(name: "s1", arg: 1, scope: !2892, file: !2893, line: 160, type: !50)
!2898 = !DILocalVariable(name: "s20", arg: 3, scope: !2892, file: !2893, line: 160, type: !40)
!2899 = !DILocalVariable(name: "s21", arg: 4, scope: !2892, file: !2893, line: 160, type: !40)
!2900 = !DILocalVariable(name: "s22", arg: 5, scope: !2892, file: !2893, line: 160, type: !40)
!2901 = !DILocalVariable(name: "s23", arg: 6, scope: !2892, file: !2893, line: 160, type: !40)
!2902 = !DILocalVariable(name: "s24", arg: 7, scope: !2892, file: !2893, line: 160, type: !40)
!2903 = !DILocalVariable(name: "s25", arg: 8, scope: !2892, file: !2893, line: 160, type: !40)
!2904 = !DILocalVariable(name: "s26", arg: 9, scope: !2892, file: !2893, line: 160, type: !40)
!2905 = !DILocalVariable(name: "s27", arg: 10, scope: !2892, file: !2893, line: 160, type: !40)
!2906 = !DILocalVariable(name: "s28", arg: 11, scope: !2892, file: !2893, line: 160, type: !40)
!2907 = !DILocation(line: 160, column: 41, scope: !2892, inlinedAt: !2908)
!2908 = distinct !DILocation(line: 226, column: 7, scope: !2909)
!2909 = distinct !DILexicalBlock(scope: !2874, file: !295, line: 226, column: 7)
!2910 = !DILocation(line: 160, column: 120, scope: !2892, inlinedAt: !2908)
!2911 = !DILocation(line: 160, column: 130, scope: !2892, inlinedAt: !2908)
!2912 = !DILocation(line: 162, column: 7, scope: !2913, inlinedAt: !2908)
!2913 = !DILexicalBlockFile(scope: !2914, file: !2893, discriminator: 1)
!2914 = distinct !DILexicalBlock(scope: !2892, file: !2893, line: 162, column: 7)
!2915 = !DILocalVariable(name: "s2", arg: 2, scope: !2916, file: !2893, line: 146, type: !50)
!2916 = distinct !DISubprogram(name: "strcaseeq1", scope: !2893, file: !2893, line: 146, type: !2917, isLocal: true, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: true, unit: !283, variables: !2919)
!2917 = !DISubroutineType(types: !2918)
!2918 = !{!52, !50, !50, !40, !40, !40, !40, !40, !40, !40, !40}
!2919 = !{!2920, !2915, !2921, !2922, !2923, !2924, !2925, !2926, !2927, !2928}
!2920 = !DILocalVariable(name: "s1", arg: 1, scope: !2916, file: !2893, line: 146, type: !50)
!2921 = !DILocalVariable(name: "s21", arg: 3, scope: !2916, file: !2893, line: 146, type: !40)
!2922 = !DILocalVariable(name: "s22", arg: 4, scope: !2916, file: !2893, line: 146, type: !40)
!2923 = !DILocalVariable(name: "s23", arg: 5, scope: !2916, file: !2893, line: 146, type: !40)
!2924 = !DILocalVariable(name: "s24", arg: 6, scope: !2916, file: !2893, line: 146, type: !40)
!2925 = !DILocalVariable(name: "s25", arg: 7, scope: !2916, file: !2893, line: 146, type: !40)
!2926 = !DILocalVariable(name: "s26", arg: 8, scope: !2916, file: !2893, line: 146, type: !40)
!2927 = !DILocalVariable(name: "s27", arg: 9, scope: !2916, file: !2893, line: 146, type: !40)
!2928 = !DILocalVariable(name: "s28", arg: 10, scope: !2916, file: !2893, line: 146, type: !40)
!2929 = !DILocation(line: 146, column: 41, scope: !2916, inlinedAt: !2930)
!2930 = distinct !DILocation(line: 167, column: 16, scope: !2931, inlinedAt: !2908)
!2931 = distinct !DILexicalBlock(scope: !2932, file: !2893, line: 164, column: 11)
!2932 = distinct !DILexicalBlock(scope: !2914, file: !2893, line: 163, column: 5)
!2933 = !DILocation(line: 146, column: 110, scope: !2916, inlinedAt: !2930)
!2934 = !DILocation(line: 146, column: 120, scope: !2916, inlinedAt: !2930)
!2935 = !DILocation(line: 148, column: 7, scope: !2936, inlinedAt: !2930)
!2936 = !DILexicalBlockFile(scope: !2937, file: !2893, discriminator: 1)
!2937 = distinct !DILexicalBlock(scope: !2916, file: !2893, line: 148, column: 7)
!2938 = !DILocalVariable(name: "s2", arg: 2, scope: !2939, file: !2893, line: 132, type: !50)
!2939 = distinct !DISubprogram(name: "strcaseeq2", scope: !2893, file: !2893, line: 132, type: !2940, isLocal: true, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !283, variables: !2942)
!2940 = !DISubroutineType(types: !2941)
!2941 = !{!52, !50, !50, !40, !40, !40, !40, !40, !40, !40}
!2942 = !{!2943, !2938, !2944, !2945, !2946, !2947, !2948, !2949, !2950}
!2943 = !DILocalVariable(name: "s1", arg: 1, scope: !2939, file: !2893, line: 132, type: !50)
!2944 = !DILocalVariable(name: "s22", arg: 3, scope: !2939, file: !2893, line: 132, type: !40)
!2945 = !DILocalVariable(name: "s23", arg: 4, scope: !2939, file: !2893, line: 132, type: !40)
!2946 = !DILocalVariable(name: "s24", arg: 5, scope: !2939, file: !2893, line: 132, type: !40)
!2947 = !DILocalVariable(name: "s25", arg: 6, scope: !2939, file: !2893, line: 132, type: !40)
!2948 = !DILocalVariable(name: "s26", arg: 7, scope: !2939, file: !2893, line: 132, type: !40)
!2949 = !DILocalVariable(name: "s27", arg: 8, scope: !2939, file: !2893, line: 132, type: !40)
!2950 = !DILocalVariable(name: "s28", arg: 9, scope: !2939, file: !2893, line: 132, type: !40)
!2951 = !DILocation(line: 132, column: 41, scope: !2939, inlinedAt: !2952)
!2952 = distinct !DILocation(line: 153, column: 16, scope: !2953, inlinedAt: !2930)
!2953 = distinct !DILexicalBlock(scope: !2954, file: !2893, line: 150, column: 11)
!2954 = distinct !DILexicalBlock(scope: !2937, file: !2893, line: 149, column: 5)
!2955 = !DILocation(line: 132, column: 100, scope: !2939, inlinedAt: !2952)
!2956 = !DILocation(line: 132, column: 110, scope: !2939, inlinedAt: !2952)
!2957 = !DILocation(line: 134, column: 7, scope: !2958, inlinedAt: !2952)
!2958 = !DILexicalBlockFile(scope: !2959, file: !2893, discriminator: 1)
!2959 = distinct !DILexicalBlock(scope: !2939, file: !2893, line: 134, column: 7)
!2960 = !DILocalVariable(name: "s2", arg: 2, scope: !2961, file: !2893, line: 118, type: !50)
!2961 = distinct !DISubprogram(name: "strcaseeq3", scope: !2893, file: !2893, line: 118, type: !2962, isLocal: true, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !283, variables: !2964)
!2962 = !DISubroutineType(types: !2963)
!2963 = !{!52, !50, !50, !40, !40, !40, !40, !40, !40}
!2964 = !{!2965, !2960, !2966, !2967, !2968, !2969, !2970, !2971}
!2965 = !DILocalVariable(name: "s1", arg: 1, scope: !2961, file: !2893, line: 118, type: !50)
!2966 = !DILocalVariable(name: "s23", arg: 3, scope: !2961, file: !2893, line: 118, type: !40)
!2967 = !DILocalVariable(name: "s24", arg: 4, scope: !2961, file: !2893, line: 118, type: !40)
!2968 = !DILocalVariable(name: "s25", arg: 5, scope: !2961, file: !2893, line: 118, type: !40)
!2969 = !DILocalVariable(name: "s26", arg: 6, scope: !2961, file: !2893, line: 118, type: !40)
!2970 = !DILocalVariable(name: "s27", arg: 7, scope: !2961, file: !2893, line: 118, type: !40)
!2971 = !DILocalVariable(name: "s28", arg: 8, scope: !2961, file: !2893, line: 118, type: !40)
!2972 = !DILocation(line: 118, column: 41, scope: !2961, inlinedAt: !2973)
!2973 = distinct !DILocation(line: 139, column: 16, scope: !2974, inlinedAt: !2952)
!2974 = distinct !DILexicalBlock(scope: !2975, file: !2893, line: 136, column: 11)
!2975 = distinct !DILexicalBlock(scope: !2959, file: !2893, line: 135, column: 5)
!2976 = !DILocation(line: 118, column: 90, scope: !2961, inlinedAt: !2973)
!2977 = !DILocation(line: 118, column: 100, scope: !2961, inlinedAt: !2973)
!2978 = !DILocation(line: 120, column: 7, scope: !2979, inlinedAt: !2973)
!2979 = !DILexicalBlockFile(scope: !2980, file: !2893, discriminator: 2)
!2980 = distinct !DILexicalBlock(scope: !2961, file: !2893, line: 120, column: 7)
!2981 = !DILocation(line: 120, column: 7, scope: !2982, inlinedAt: !2973)
!2982 = !DILexicalBlockFile(scope: !2961, file: !2893, discriminator: 2)
!2983 = !DILocalVariable(name: "s2", arg: 2, scope: !2984, file: !2893, line: 104, type: !50)
!2984 = distinct !DISubprogram(name: "strcaseeq4", scope: !2893, file: !2893, line: 104, type: !2985, isLocal: true, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, unit: !283, variables: !2987)
!2985 = !DISubroutineType(types: !2986)
!2986 = !{!52, !50, !50, !40, !40, !40, !40, !40}
!2987 = !{!2988, !2983, !2989, !2990, !2991, !2992, !2993}
!2988 = !DILocalVariable(name: "s1", arg: 1, scope: !2984, file: !2893, line: 104, type: !50)
!2989 = !DILocalVariable(name: "s24", arg: 3, scope: !2984, file: !2893, line: 104, type: !40)
!2990 = !DILocalVariable(name: "s25", arg: 4, scope: !2984, file: !2893, line: 104, type: !40)
!2991 = !DILocalVariable(name: "s26", arg: 5, scope: !2984, file: !2893, line: 104, type: !40)
!2992 = !DILocalVariable(name: "s27", arg: 6, scope: !2984, file: !2893, line: 104, type: !40)
!2993 = !DILocalVariable(name: "s28", arg: 7, scope: !2984, file: !2893, line: 104, type: !40)
!2994 = !DILocation(line: 104, column: 41, scope: !2984, inlinedAt: !2995)
!2995 = distinct !DILocation(line: 125, column: 16, scope: !2996, inlinedAt: !2973)
!2996 = distinct !DILexicalBlock(scope: !2997, file: !2893, line: 122, column: 11)
!2997 = distinct !DILexicalBlock(scope: !2980, file: !2893, line: 121, column: 5)
!2998 = !DILocation(line: 104, column: 80, scope: !2984, inlinedAt: !2995)
!2999 = !DILocation(line: 104, column: 90, scope: !2984, inlinedAt: !2995)
!3000 = !DILocation(line: 106, column: 7, scope: !3001, inlinedAt: !2995)
!3001 = !DILexicalBlockFile(scope: !3002, file: !2893, discriminator: 2)
!3002 = distinct !DILexicalBlock(scope: !2984, file: !2893, line: 106, column: 7)
!3003 = !DILocation(line: 106, column: 7, scope: !3004, inlinedAt: !2995)
!3004 = !DILexicalBlockFile(scope: !2984, file: !2893, discriminator: 2)
!3005 = !DILocalVariable(name: "s2", arg: 2, scope: !3006, file: !2893, line: 90, type: !50)
!3006 = distinct !DISubprogram(name: "strcaseeq5", scope: !2893, file: !2893, line: 90, type: !3007, isLocal: true, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: true, unit: !283, variables: !3009)
!3007 = !DISubroutineType(types: !3008)
!3008 = !{!52, !50, !50, !40, !40, !40, !40}
!3009 = !{!3010, !3005, !3011, !3012, !3013, !3014}
!3010 = !DILocalVariable(name: "s1", arg: 1, scope: !3006, file: !2893, line: 90, type: !50)
!3011 = !DILocalVariable(name: "s25", arg: 3, scope: !3006, file: !2893, line: 90, type: !40)
!3012 = !DILocalVariable(name: "s26", arg: 4, scope: !3006, file: !2893, line: 90, type: !40)
!3013 = !DILocalVariable(name: "s27", arg: 5, scope: !3006, file: !2893, line: 90, type: !40)
!3014 = !DILocalVariable(name: "s28", arg: 6, scope: !3006, file: !2893, line: 90, type: !40)
!3015 = !DILocation(line: 90, column: 41, scope: !3006, inlinedAt: !3016)
!3016 = distinct !DILocation(line: 111, column: 16, scope: !3017, inlinedAt: !2995)
!3017 = distinct !DILexicalBlock(scope: !3018, file: !2893, line: 108, column: 11)
!3018 = distinct !DILexicalBlock(scope: !3002, file: !2893, line: 107, column: 5)
!3019 = !DILocation(line: 90, column: 70, scope: !3006, inlinedAt: !3016)
!3020 = !DILocation(line: 90, column: 80, scope: !3006, inlinedAt: !3016)
!3021 = !DILocation(line: 92, column: 7, scope: !3022, inlinedAt: !3016)
!3022 = !DILexicalBlockFile(scope: !3023, file: !2893, discriminator: 2)
!3023 = distinct !DILexicalBlock(scope: !3006, file: !2893, line: 92, column: 7)
!3024 = !DILocation(line: 92, column: 7, scope: !3025, inlinedAt: !3016)
!3025 = !DILexicalBlockFile(scope: !3006, file: !2893, discriminator: 2)
!3026 = !DILocation(line: 227, column: 12, scope: !2909)
!3027 = !DILocation(line: 227, column: 21, scope: !2909)
!3028 = !DILocation(line: 227, column: 5, scope: !2909)
!3029 = !DILocation(line: 146, column: 41, scope: !2916, inlinedAt: !3030)
!3030 = distinct !DILocation(line: 167, column: 16, scope: !2931, inlinedAt: !3031)
!3031 = distinct !DILocation(line: 228, column: 7, scope: !3032)
!3032 = distinct !DILexicalBlock(scope: !2874, file: !295, line: 228, column: 7)
!3033 = !DILocation(line: 146, column: 110, scope: !2916, inlinedAt: !3030)
!3034 = !DILocation(line: 146, column: 120, scope: !2916, inlinedAt: !3030)
!3035 = !DILocation(line: 148, column: 7, scope: !2936, inlinedAt: !3030)
!3036 = !DILocation(line: 132, column: 41, scope: !2939, inlinedAt: !3037)
!3037 = distinct !DILocation(line: 153, column: 16, scope: !2953, inlinedAt: !3030)
!3038 = !DILocation(line: 132, column: 100, scope: !2939, inlinedAt: !3037)
!3039 = !DILocation(line: 132, column: 110, scope: !2939, inlinedAt: !3037)
!3040 = !DILocation(line: 134, column: 7, scope: !3041, inlinedAt: !3037)
!3041 = !DILexicalBlockFile(scope: !2959, file: !2893, discriminator: 2)
!3042 = !DILocation(line: 134, column: 7, scope: !3043, inlinedAt: !3037)
!3043 = !DILexicalBlockFile(scope: !2939, file: !2893, discriminator: 2)
!3044 = !DILocation(line: 118, column: 41, scope: !2961, inlinedAt: !3045)
!3045 = distinct !DILocation(line: 139, column: 16, scope: !2974, inlinedAt: !3037)
!3046 = !DILocation(line: 118, column: 90, scope: !2961, inlinedAt: !3045)
!3047 = !DILocation(line: 118, column: 100, scope: !2961, inlinedAt: !3045)
!3048 = !DILocation(line: 120, column: 7, scope: !2979, inlinedAt: !3045)
!3049 = !DILocation(line: 120, column: 7, scope: !2982, inlinedAt: !3045)
!3050 = !DILocation(line: 104, column: 41, scope: !2984, inlinedAt: !3051)
!3051 = distinct !DILocation(line: 125, column: 16, scope: !2996, inlinedAt: !3045)
!3052 = !DILocation(line: 104, column: 80, scope: !2984, inlinedAt: !3051)
!3053 = !DILocation(line: 104, column: 90, scope: !2984, inlinedAt: !3051)
!3054 = !DILocation(line: 106, column: 7, scope: !3001, inlinedAt: !3051)
!3055 = !DILocation(line: 106, column: 7, scope: !3004, inlinedAt: !3051)
!3056 = !DILocation(line: 90, column: 41, scope: !3006, inlinedAt: !3057)
!3057 = distinct !DILocation(line: 111, column: 16, scope: !3017, inlinedAt: !3051)
!3058 = !DILocation(line: 90, column: 70, scope: !3006, inlinedAt: !3057)
!3059 = !DILocation(line: 90, column: 80, scope: !3006, inlinedAt: !3057)
!3060 = !DILocation(line: 92, column: 7, scope: !3022, inlinedAt: !3057)
!3061 = !DILocation(line: 92, column: 7, scope: !3025, inlinedAt: !3057)
!3062 = !DILocalVariable(name: "s2", arg: 2, scope: !3063, file: !2893, line: 76, type: !50)
!3063 = distinct !DISubprogram(name: "strcaseeq6", scope: !2893, file: !2893, line: 76, type: !3064, isLocal: true, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: true, unit: !283, variables: !3066)
!3064 = !DISubroutineType(types: !3065)
!3065 = !{!52, !50, !50, !40, !40, !40}
!3066 = !{!3067, !3062, !3068, !3069, !3070}
!3067 = !DILocalVariable(name: "s1", arg: 1, scope: !3063, file: !2893, line: 76, type: !50)
!3068 = !DILocalVariable(name: "s26", arg: 3, scope: !3063, file: !2893, line: 76, type: !40)
!3069 = !DILocalVariable(name: "s27", arg: 4, scope: !3063, file: !2893, line: 76, type: !40)
!3070 = !DILocalVariable(name: "s28", arg: 5, scope: !3063, file: !2893, line: 76, type: !40)
!3071 = !DILocation(line: 76, column: 41, scope: !3063, inlinedAt: !3072)
!3072 = distinct !DILocation(line: 97, column: 16, scope: !3073, inlinedAt: !3057)
!3073 = distinct !DILexicalBlock(scope: !3074, file: !2893, line: 94, column: 11)
!3074 = distinct !DILexicalBlock(scope: !3023, file: !2893, line: 93, column: 5)
!3075 = !DILocation(line: 76, column: 60, scope: !3063, inlinedAt: !3072)
!3076 = !DILocation(line: 76, column: 70, scope: !3063, inlinedAt: !3072)
!3077 = !DILocation(line: 78, column: 7, scope: !3078, inlinedAt: !3072)
!3078 = !DILexicalBlockFile(scope: !3079, file: !2893, discriminator: 2)
!3079 = distinct !DILexicalBlock(scope: !3063, file: !2893, line: 78, column: 7)
!3080 = !DILocation(line: 78, column: 7, scope: !3081, inlinedAt: !3072)
!3081 = !DILexicalBlockFile(scope: !3063, file: !2893, discriminator: 2)
!3082 = !DILocalVariable(name: "s2", arg: 2, scope: !3083, file: !2893, line: 62, type: !50)
!3083 = distinct !DISubprogram(name: "strcaseeq7", scope: !2893, file: !2893, line: 62, type: !3084, isLocal: true, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: true, unit: !283, variables: !3086)
!3084 = !DISubroutineType(types: !3085)
!3085 = !{!52, !50, !50, !40, !40}
!3086 = !{!3087, !3082, !3088, !3089}
!3087 = !DILocalVariable(name: "s1", arg: 1, scope: !3083, file: !2893, line: 62, type: !50)
!3088 = !DILocalVariable(name: "s27", arg: 3, scope: !3083, file: !2893, line: 62, type: !40)
!3089 = !DILocalVariable(name: "s28", arg: 4, scope: !3083, file: !2893, line: 62, type: !40)
!3090 = !DILocation(line: 62, column: 41, scope: !3083, inlinedAt: !3091)
!3091 = distinct !DILocation(line: 83, column: 16, scope: !3092, inlinedAt: !3072)
!3092 = distinct !DILexicalBlock(scope: !3093, file: !2893, line: 80, column: 11)
!3093 = distinct !DILexicalBlock(scope: !3079, file: !2893, line: 79, column: 5)
!3094 = !DILocation(line: 62, column: 50, scope: !3083, inlinedAt: !3091)
!3095 = !DILocation(line: 62, column: 60, scope: !3083, inlinedAt: !3091)
!3096 = !DILocation(line: 64, column: 7, scope: !3097, inlinedAt: !3091)
!3097 = !DILexicalBlockFile(scope: !3098, file: !2893, discriminator: 2)
!3098 = distinct !DILexicalBlock(scope: !3083, file: !2893, line: 64, column: 7)
!3099 = !DILocation(line: 228, column: 7, scope: !2874)
!3100 = !DILocation(line: 229, column: 12, scope: !3032)
!3101 = !DILocation(line: 229, column: 21, scope: !3032)
!3102 = !DILocation(line: 229, column: 5, scope: !3032)
!3103 = !DILocation(line: 231, column: 13, scope: !2874)
!3104 = !DILocation(line: 231, column: 11, scope: !2874)
!3105 = !DILocation(line: 231, column: 3, scope: !2874)
!3106 = !DILocation(line: 232, column: 1, scope: !2874)
!3107 = distinct !DISubprogram(name: "quotearg_alloc", scope: !295, file: !295, line: 791, type: !3108, isLocal: false, isDefinition: true, scopeLine: 793, flags: DIFlagPrototyped, isOptimized: true, unit: !283, variables: !3110)
!3108 = !DISubroutineType(types: !3109)
!3109 = !{!39, !50, !42, !1953}
!3110 = !{!3111, !3112, !3113}
!3111 = !DILocalVariable(name: "arg", arg: 1, scope: !3107, file: !295, line: 791, type: !50)
!3112 = !DILocalVariable(name: "argsize", arg: 2, scope: !3107, file: !295, line: 791, type: !42)
!3113 = !DILocalVariable(name: "o", arg: 3, scope: !3107, file: !295, line: 792, type: !1953)
!3114 = !DILocation(line: 791, column: 29, scope: !3107)
!3115 = !DILocation(line: 791, column: 41, scope: !3107)
!3116 = !DILocation(line: 792, column: 47, scope: !3107)
!3117 = !DILocalVariable(name: "arg", arg: 1, scope: !3118, file: !295, line: 804, type: !50)
!3118 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !295, file: !295, line: 804, type: !3119, isLocal: false, isDefinition: true, scopeLine: 806, flags: DIFlagPrototyped, isOptimized: true, unit: !283, variables: !3121)
!3119 = !DISubroutineType(types: !3120)
!3120 = !{!39, !50, !42, !713, !1953}
!3121 = !{!3117, !3122, !3123, !3124, !3125, !3126, !3127, !3128, !3129}
!3122 = !DILocalVariable(name: "argsize", arg: 2, scope: !3118, file: !295, line: 804, type: !42)
!3123 = !DILocalVariable(name: "size", arg: 3, scope: !3118, file: !295, line: 804, type: !713)
!3124 = !DILocalVariable(name: "o", arg: 4, scope: !3118, file: !295, line: 805, type: !1953)
!3125 = !DILocalVariable(name: "p", scope: !3118, file: !295, line: 807, type: !1953)
!3126 = !DILocalVariable(name: "e", scope: !3118, file: !295, line: 808, type: !52)
!3127 = !DILocalVariable(name: "flags", scope: !3118, file: !295, line: 810, type: !52)
!3128 = !DILocalVariable(name: "bufsize", scope: !3118, file: !295, line: 811, type: !42)
!3129 = !DILocalVariable(name: "buf", scope: !3118, file: !295, line: 815, type: !39)
!3130 = !DILocation(line: 804, column: 33, scope: !3118, inlinedAt: !3131)
!3131 = distinct !DILocation(line: 794, column: 10, scope: !3107)
!3132 = !DILocation(line: 804, column: 45, scope: !3118, inlinedAt: !3131)
!3133 = !DILocation(line: 804, column: 62, scope: !3118, inlinedAt: !3131)
!3134 = !DILocation(line: 805, column: 51, scope: !3118, inlinedAt: !3131)
!3135 = !DILocation(line: 807, column: 37, scope: !3118, inlinedAt: !3131)
!3136 = !DILocation(line: 807, column: 33, scope: !3118, inlinedAt: !3131)
!3137 = !DILocation(line: 808, column: 11, scope: !3118, inlinedAt: !3131)
!3138 = !DILocation(line: 808, column: 7, scope: !3118, inlinedAt: !3131)
!3139 = !DILocation(line: 810, column: 18, scope: !3118, inlinedAt: !3131)
!3140 = !DILocation(line: 810, column: 24, scope: !3118, inlinedAt: !3131)
!3141 = !DILocation(line: 810, column: 7, scope: !3118, inlinedAt: !3131)
!3142 = !DILocation(line: 811, column: 69, scope: !3118, inlinedAt: !3131)
!3143 = !DILocation(line: 812, column: 53, scope: !3118, inlinedAt: !3131)
!3144 = !DILocation(line: 813, column: 49, scope: !3118, inlinedAt: !3131)
!3145 = !DILocation(line: 814, column: 49, scope: !3118, inlinedAt: !3131)
!3146 = !DILocation(line: 811, column: 20, scope: !3118, inlinedAt: !3131)
!3147 = !DILocation(line: 814, column: 62, scope: !3118, inlinedAt: !3131)
!3148 = !DILocation(line: 811, column: 10, scope: !3118, inlinedAt: !3131)
!3149 = !DILocalVariable(name: "n", arg: 1, scope: !3150, file: !709, line: 220, type: !42)
!3150 = distinct !DISubprogram(name: "xcharalloc", scope: !709, file: !709, line: 220, type: !3151, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !283, variables: !3153)
!3151 = !DISubroutineType(types: !3152)
!3152 = !{!39, !42}
!3153 = !{!3149}
!3154 = !DILocation(line: 220, column: 20, scope: !3150, inlinedAt: !3155)
!3155 = distinct !DILocation(line: 815, column: 15, scope: !3118, inlinedAt: !3131)
!3156 = !DILocation(line: 222, column: 10, scope: !3150, inlinedAt: !3155)
!3157 = !DILocation(line: 815, column: 9, scope: !3118, inlinedAt: !3131)
!3158 = !DILocation(line: 816, column: 60, scope: !3118, inlinedAt: !3131)
!3159 = !DILocation(line: 818, column: 32, scope: !3118, inlinedAt: !3131)
!3160 = !DILocation(line: 818, column: 47, scope: !3118, inlinedAt: !3131)
!3161 = !DILocation(line: 816, column: 3, scope: !3118, inlinedAt: !3131)
!3162 = !DILocation(line: 819, column: 9, scope: !3118, inlinedAt: !3131)
!3163 = !DILocation(line: 794, column: 3, scope: !3107)
!3164 = !DILocation(line: 804, column: 33, scope: !3118)
!3165 = !DILocation(line: 804, column: 45, scope: !3118)
!3166 = !DILocation(line: 804, column: 62, scope: !3118)
!3167 = !DILocation(line: 805, column: 51, scope: !3118)
!3168 = !DILocation(line: 807, column: 37, scope: !3118)
!3169 = !DILocation(line: 807, column: 33, scope: !3118)
!3170 = !DILocation(line: 808, column: 11, scope: !3118)
!3171 = !DILocation(line: 808, column: 7, scope: !3118)
!3172 = !DILocation(line: 810, column: 18, scope: !3118)
!3173 = !DILocation(line: 810, column: 27, scope: !3118)
!3174 = !DILocation(line: 810, column: 24, scope: !3118)
!3175 = !DILocation(line: 810, column: 7, scope: !3118)
!3176 = !DILocation(line: 811, column: 69, scope: !3118)
!3177 = !DILocation(line: 812, column: 53, scope: !3118)
!3178 = !DILocation(line: 813, column: 49, scope: !3118)
!3179 = !DILocation(line: 814, column: 49, scope: !3118)
!3180 = !DILocation(line: 811, column: 20, scope: !3118)
!3181 = !DILocation(line: 814, column: 62, scope: !3118)
!3182 = !DILocation(line: 811, column: 10, scope: !3118)
!3183 = !DILocation(line: 220, column: 20, scope: !3150, inlinedAt: !3184)
!3184 = distinct !DILocation(line: 815, column: 15, scope: !3118)
!3185 = !DILocation(line: 222, column: 10, scope: !3150, inlinedAt: !3184)
!3186 = !DILocation(line: 815, column: 9, scope: !3118)
!3187 = !DILocation(line: 816, column: 60, scope: !3118)
!3188 = !DILocation(line: 818, column: 32, scope: !3118)
!3189 = !DILocation(line: 818, column: 47, scope: !3118)
!3190 = !DILocation(line: 816, column: 3, scope: !3118)
!3191 = !DILocation(line: 819, column: 9, scope: !3118)
!3192 = !DILocation(line: 820, column: 7, scope: !3118)
!3193 = !DILocation(line: 821, column: 11, scope: !3194)
!3194 = distinct !DILexicalBlock(scope: !3118, file: !295, line: 820, column: 7)
!3195 = !DILocation(line: 821, column: 5, scope: !3194)
!3196 = !DILocation(line: 822, column: 3, scope: !3118)
!3197 = distinct !DISubprogram(name: "quotearg_free", scope: !295, file: !295, line: 840, type: !1033, isLocal: false, isDefinition: true, scopeLine: 841, flags: DIFlagPrototyped, isOptimized: true, unit: !283, variables: !3198)
!3198 = !{!3199, !3200}
!3199 = !DILocalVariable(name: "sv", scope: !3197, file: !295, line: 842, type: !318)
!3200 = !DILocalVariable(name: "i", scope: !3197, file: !295, line: 843, type: !52)
!3201 = !DILocation(line: 842, column: 24, scope: !3197)
!3202 = !DILocation(line: 842, column: 19, scope: !3197)
!3203 = !DILocation(line: 843, column: 7, scope: !3197)
!3204 = !DILocation(line: 844, column: 19, scope: !3205)
!3205 = !DILexicalBlockFile(scope: !3206, file: !295, discriminator: 1)
!3206 = distinct !DILexicalBlock(scope: !3207, file: !295, line: 844, column: 3)
!3207 = distinct !DILexicalBlock(scope: !3197, file: !295, line: 844, column: 3)
!3208 = !DILocation(line: 844, column: 17, scope: !3205)
!3209 = !DILocation(line: 844, column: 3, scope: !3210)
!3210 = !DILexicalBlockFile(scope: !3207, file: !295, discriminator: 1)
!3211 = !DILocation(line: 845, column: 17, scope: !3206)
!3212 = !{!3213, !771, i64 8}
!3213 = !{!"slotvec", !1006, i64 0, !771, i64 8}
!3214 = !DILocation(line: 845, column: 5, scope: !3206)
!3215 = !DILocation(line: 844, column: 28, scope: !3216)
!3216 = !DILexicalBlockFile(scope: !3206, file: !295, discriminator: 2)
!3217 = distinct !{!3217, !3218, !3219}
!3218 = !DILocation(line: 844, column: 3, scope: !3207)
!3219 = !DILocation(line: 845, column: 20, scope: !3207)
!3220 = !DILocation(line: 846, column: 13, scope: !3221)
!3221 = distinct !DILexicalBlock(scope: !3197, file: !295, line: 846, column: 7)
!3222 = !DILocation(line: 846, column: 17, scope: !3221)
!3223 = !DILocation(line: 846, column: 7, scope: !3197)
!3224 = !DILocation(line: 848, column: 7, scope: !3225)
!3225 = distinct !DILexicalBlock(scope: !3221, file: !295, line: 847, column: 5)
!3226 = !DILocation(line: 849, column: 21, scope: !3225)
!3227 = !{!3213, !1006, i64 0}
!3228 = !DILocation(line: 850, column: 20, scope: !3225)
!3229 = !DILocation(line: 851, column: 5, scope: !3225)
!3230 = !DILocation(line: 852, column: 10, scope: !3231)
!3231 = distinct !DILexicalBlock(scope: !3197, file: !295, line: 852, column: 7)
!3232 = !DILocation(line: 852, column: 7, scope: !3197)
!3233 = !DILocation(line: 854, column: 13, scope: !3234)
!3234 = distinct !DILexicalBlock(scope: !3231, file: !295, line: 853, column: 5)
!3235 = !DILocation(line: 854, column: 7, scope: !3234)
!3236 = !DILocation(line: 855, column: 15, scope: !3234)
!3237 = !DILocation(line: 856, column: 5, scope: !3234)
!3238 = !DILocation(line: 857, column: 10, scope: !3197)
!3239 = !DILocation(line: 858, column: 1, scope: !3197)
!3240 = distinct !DISubprogram(name: "quotearg_n", scope: !295, file: !295, line: 922, type: !3241, isLocal: false, isDefinition: true, scopeLine: 923, flags: DIFlagPrototyped, isOptimized: true, unit: !283, variables: !3243)
!3241 = !DISubroutineType(types: !3242)
!3242 = !{!39, !52, !50}
!3243 = !{!3244, !3245}
!3244 = !DILocalVariable(name: "n", arg: 1, scope: !3240, file: !295, line: 922, type: !52)
!3245 = !DILocalVariable(name: "arg", arg: 2, scope: !3240, file: !295, line: 922, type: !50)
!3246 = !DILocation(line: 922, column: 17, scope: !3240)
!3247 = !DILocation(line: 922, column: 32, scope: !3240)
!3248 = !DILocation(line: 924, column: 10, scope: !3240)
!3249 = !DILocation(line: 924, column: 3, scope: !3240)
!3250 = distinct !DISubprogram(name: "quotearg_n_options", scope: !295, file: !295, line: 869, type: !3251, isLocal: true, isDefinition: true, scopeLine: 871, flags: DIFlagPrototyped, isOptimized: true, unit: !283, variables: !3253)
!3251 = !DISubroutineType(types: !3252)
!3252 = !{!39, !52, !50, !42, !1953}
!3253 = !{!3254, !3255, !3256, !3257, !3258, !3259, !3260, !3263, !3265, !3266, !3267}
!3254 = !DILocalVariable(name: "n", arg: 1, scope: !3250, file: !295, line: 869, type: !52)
!3255 = !DILocalVariable(name: "arg", arg: 2, scope: !3250, file: !295, line: 869, type: !50)
!3256 = !DILocalVariable(name: "argsize", arg: 3, scope: !3250, file: !295, line: 869, type: !42)
!3257 = !DILocalVariable(name: "options", arg: 4, scope: !3250, file: !295, line: 870, type: !1953)
!3258 = !DILocalVariable(name: "e", scope: !3250, file: !295, line: 872, type: !52)
!3259 = !DILocalVariable(name: "sv", scope: !3250, file: !295, line: 874, type: !318)
!3260 = !DILocalVariable(name: "preallocated", scope: !3261, file: !295, line: 881, type: !87)
!3261 = distinct !DILexicalBlock(scope: !3262, file: !295, line: 880, column: 5)
!3262 = distinct !DILexicalBlock(scope: !3250, file: !295, line: 879, column: 7)
!3263 = !DILocalVariable(name: "size", scope: !3264, file: !295, line: 894, type: !42)
!3264 = distinct !DILexicalBlock(scope: !3250, file: !295, line: 893, column: 3)
!3265 = !DILocalVariable(name: "val", scope: !3264, file: !295, line: 895, type: !39)
!3266 = !DILocalVariable(name: "flags", scope: !3264, file: !295, line: 897, type: !52)
!3267 = !DILocalVariable(name: "qsize", scope: !3264, file: !295, line: 898, type: !42)
!3268 = !DILocation(line: 869, column: 25, scope: !3250)
!3269 = !DILocation(line: 869, column: 40, scope: !3250)
!3270 = !DILocation(line: 869, column: 52, scope: !3250)
!3271 = !DILocation(line: 870, column: 51, scope: !3250)
!3272 = !DILocation(line: 872, column: 11, scope: !3250)
!3273 = !DILocation(line: 872, column: 7, scope: !3250)
!3274 = !DILocation(line: 874, column: 24, scope: !3250)
!3275 = !DILocation(line: 874, column: 19, scope: !3250)
!3276 = !DILocation(line: 876, column: 9, scope: !3277)
!3277 = distinct !DILexicalBlock(scope: !3250, file: !295, line: 876, column: 7)
!3278 = !DILocation(line: 876, column: 7, scope: !3250)
!3279 = !DILocation(line: 877, column: 5, scope: !3277)
!3280 = !DILocation(line: 879, column: 7, scope: !3262)
!3281 = !DILocation(line: 879, column: 14, scope: !3262)
!3282 = !DILocation(line: 879, column: 7, scope: !3250)
!3283 = !DILocation(line: 881, column: 31, scope: !3261)
!3284 = !DILocation(line: 883, column: 67, scope: !3285)
!3285 = distinct !DILexicalBlock(scope: !3261, file: !295, line: 883, column: 11)
!3286 = !DILocation(line: 883, column: 11, scope: !3261)
!3287 = !DILocation(line: 884, column: 9, scope: !3285)
!3288 = !DILocation(line: 886, column: 32, scope: !3289)
!3289 = !DILexicalBlockFile(scope: !3261, file: !295, discriminator: 3)
!3290 = !DILocation(line: 886, column: 61, scope: !3289)
!3291 = !DILocation(line: 886, column: 58, scope: !3289)
!3292 = !DILocation(line: 886, column: 66, scope: !3289)
!3293 = !DILocation(line: 886, column: 22, scope: !3289)
!3294 = !DILocation(line: 886, column: 15, scope: !3289)
!3295 = !DILocation(line: 887, column: 11, scope: !3261)
!3296 = !DILocation(line: 888, column: 15, scope: !3297)
!3297 = distinct !DILexicalBlock(scope: !3261, file: !295, line: 887, column: 11)
!3298 = !{i64 0, i64 8, !1005, i64 8, i64 8, !770}
!3299 = !DILocation(line: 888, column: 9, scope: !3297)
!3300 = !DILocation(line: 889, column: 20, scope: !3261)
!3301 = !DILocation(line: 889, column: 18, scope: !3261)
!3302 = !DILocation(line: 889, column: 7, scope: !3261)
!3303 = !DILocation(line: 889, column: 38, scope: !3261)
!3304 = !DILocation(line: 889, column: 31, scope: !3261)
!3305 = !DILocation(line: 889, column: 48, scope: !3261)
!3306 = !DILocation(line: 890, column: 14, scope: !3261)
!3307 = !DILocation(line: 891, column: 5, scope: !3261)
!3308 = !DILocation(line: 894, column: 19, scope: !3264)
!3309 = !DILocation(line: 894, column: 25, scope: !3264)
!3310 = !DILocation(line: 894, column: 12, scope: !3264)
!3311 = !DILocation(line: 895, column: 23, scope: !3264)
!3312 = !DILocation(line: 895, column: 11, scope: !3264)
!3313 = !DILocation(line: 897, column: 26, scope: !3264)
!3314 = !DILocation(line: 897, column: 32, scope: !3264)
!3315 = !DILocation(line: 897, column: 9, scope: !3264)
!3316 = !DILocation(line: 899, column: 55, scope: !3264)
!3317 = !DILocation(line: 900, column: 46, scope: !3264)
!3318 = !DILocation(line: 901, column: 55, scope: !3264)
!3319 = !DILocation(line: 902, column: 55, scope: !3264)
!3320 = !DILocation(line: 898, column: 20, scope: !3264)
!3321 = !DILocation(line: 898, column: 12, scope: !3264)
!3322 = !DILocation(line: 904, column: 14, scope: !3323)
!3323 = distinct !DILexicalBlock(scope: !3264, file: !295, line: 904, column: 9)
!3324 = !DILocation(line: 904, column: 9, scope: !3264)
!3325 = !DILocation(line: 906, column: 35, scope: !3326)
!3326 = distinct !DILexicalBlock(scope: !3323, file: !295, line: 905, column: 7)
!3327 = !DILocation(line: 906, column: 20, scope: !3326)
!3328 = !DILocation(line: 907, column: 17, scope: !3329)
!3329 = distinct !DILexicalBlock(scope: !3326, file: !295, line: 907, column: 13)
!3330 = !DILocation(line: 907, column: 13, scope: !3326)
!3331 = !DILocation(line: 908, column: 11, scope: !3329)
!3332 = !DILocation(line: 220, column: 20, scope: !3150, inlinedAt: !3333)
!3333 = distinct !DILocation(line: 909, column: 27, scope: !3326)
!3334 = !DILocation(line: 222, column: 10, scope: !3150, inlinedAt: !3333)
!3335 = !DILocation(line: 909, column: 19, scope: !3326)
!3336 = !DILocation(line: 910, column: 69, scope: !3326)
!3337 = !DILocation(line: 912, column: 44, scope: !3326)
!3338 = !DILocation(line: 913, column: 44, scope: !3326)
!3339 = !DILocation(line: 910, column: 9, scope: !3326)
!3340 = !DILocation(line: 914, column: 7, scope: !3326)
!3341 = !DILocation(line: 916, column: 11, scope: !3264)
!3342 = !DILocation(line: 917, column: 5, scope: !3264)
!3343 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !295, file: !295, line: 928, type: !3344, isLocal: false, isDefinition: true, scopeLine: 929, flags: DIFlagPrototyped, isOptimized: true, unit: !283, variables: !3346)
!3344 = !DISubroutineType(types: !3345)
!3345 = !{!39, !52, !50, !42}
!3346 = !{!3347, !3348, !3349}
!3347 = !DILocalVariable(name: "n", arg: 1, scope: !3343, file: !295, line: 928, type: !52)
!3348 = !DILocalVariable(name: "arg", arg: 2, scope: !3343, file: !295, line: 928, type: !50)
!3349 = !DILocalVariable(name: "argsize", arg: 3, scope: !3343, file: !295, line: 928, type: !42)
!3350 = !DILocation(line: 928, column: 21, scope: !3343)
!3351 = !DILocation(line: 928, column: 36, scope: !3343)
!3352 = !DILocation(line: 928, column: 48, scope: !3343)
!3353 = !DILocation(line: 930, column: 10, scope: !3343)
!3354 = !DILocation(line: 930, column: 3, scope: !3343)
!3355 = distinct !DISubprogram(name: "quotearg", scope: !295, file: !295, line: 934, type: !1660, isLocal: false, isDefinition: true, scopeLine: 935, flags: DIFlagPrototyped, isOptimized: true, unit: !283, variables: !3356)
!3356 = !{!3357}
!3357 = !DILocalVariable(name: "arg", arg: 1, scope: !3355, file: !295, line: 934, type: !50)
!3358 = !DILocation(line: 934, column: 23, scope: !3355)
!3359 = !DILocation(line: 922, column: 17, scope: !3240, inlinedAt: !3360)
!3360 = distinct !DILocation(line: 936, column: 10, scope: !3355)
!3361 = !DILocation(line: 922, column: 32, scope: !3240, inlinedAt: !3360)
!3362 = !DILocation(line: 924, column: 10, scope: !3240, inlinedAt: !3360)
!3363 = !DILocation(line: 936, column: 3, scope: !3355)
!3364 = distinct !DISubprogram(name: "quotearg_mem", scope: !295, file: !295, line: 940, type: !3365, isLocal: false, isDefinition: true, scopeLine: 941, flags: DIFlagPrototyped, isOptimized: true, unit: !283, variables: !3367)
!3365 = !DISubroutineType(types: !3366)
!3366 = !{!39, !50, !42}
!3367 = !{!3368, !3369}
!3368 = !DILocalVariable(name: "arg", arg: 1, scope: !3364, file: !295, line: 940, type: !50)
!3369 = !DILocalVariable(name: "argsize", arg: 2, scope: !3364, file: !295, line: 940, type: !42)
!3370 = !DILocation(line: 940, column: 27, scope: !3364)
!3371 = !DILocation(line: 940, column: 39, scope: !3364)
!3372 = !DILocation(line: 928, column: 21, scope: !3343, inlinedAt: !3373)
!3373 = distinct !DILocation(line: 942, column: 10, scope: !3364)
!3374 = !DILocation(line: 928, column: 36, scope: !3343, inlinedAt: !3373)
!3375 = !DILocation(line: 928, column: 48, scope: !3343, inlinedAt: !3373)
!3376 = !DILocation(line: 930, column: 10, scope: !3343, inlinedAt: !3373)
!3377 = !DILocation(line: 942, column: 3, scope: !3364)
!3378 = distinct !DISubprogram(name: "quotearg_n_style", scope: !295, file: !295, line: 946, type: !3379, isLocal: false, isDefinition: true, scopeLine: 947, flags: DIFlagPrototyped, isOptimized: true, unit: !283, variables: !3381)
!3379 = !DISubroutineType(types: !3380)
!3380 = !{!39, !52, !5, !50}
!3381 = !{!3382, !3383, !3384, !3385}
!3382 = !DILocalVariable(name: "n", arg: 1, scope: !3378, file: !295, line: 946, type: !52)
!3383 = !DILocalVariable(name: "s", arg: 2, scope: !3378, file: !295, line: 946, type: !5)
!3384 = !DILocalVariable(name: "arg", arg: 3, scope: !3378, file: !295, line: 946, type: !50)
!3385 = !DILocalVariable(name: "o", scope: !3378, file: !295, line: 948, type: !1954)
!3386 = !DILocalVariable(name: "o", scope: !3387, file: !295, line: 187, type: !302)
!3387 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !295, file: !295, line: 185, type: !3388, isLocal: true, isDefinition: true, scopeLine: 186, flags: DIFlagPrototyped, isOptimized: true, unit: !283, variables: !3390)
!3388 = !DISubroutineType(types: !3389)
!3389 = !{!302, !5}
!3390 = !{!3391, !3386}
!3391 = !DILocalVariable(name: "style", arg: 1, scope: !3387, file: !295, line: 185, type: !5)
!3392 = !DIExpression(DW_OP_LLVM_fragment, 32, 416)
!3393 = !DILocation(line: 187, column: 26, scope: !3387, inlinedAt: !3394)
!3394 = distinct !DILocation(line: 948, column: 36, scope: !3378)
!3395 = !DILocation(line: 946, column: 23, scope: !3378)
!3396 = !DILocation(line: 946, column: 45, scope: !3378)
!3397 = !DILocation(line: 946, column: 60, scope: !3378)
!3398 = !DILocation(line: 948, column: 3, scope: !3378)
!3399 = !DILocation(line: 948, column: 32, scope: !3378)
!3400 = !DILocation(line: 185, column: 48, scope: !3387, inlinedAt: !3394)
!3401 = !DILocation(line: 187, column: 3, scope: !3387, inlinedAt: !3394)
!3402 = !DIExpression(DW_OP_LLVM_fragment, 0, 32)
!3403 = !DILocation(line: 188, column: 13, scope: !3404, inlinedAt: !3394)
!3404 = distinct !DILexicalBlock(scope: !3387, file: !295, line: 188, column: 7)
!3405 = !DILocation(line: 188, column: 7, scope: !3387, inlinedAt: !3394)
!3406 = !DILocation(line: 189, column: 5, scope: !3404, inlinedAt: !3394)
!3407 = !{!3408}
!3408 = distinct !{!3408, !3409, !"quoting_options_from_style: argument 0"}
!3409 = distinct !{!3409, !"quoting_options_from_style"}
!3410 = !DILocation(line: 191, column: 10, scope: !3387, inlinedAt: !3394)
!3411 = !DILocation(line: 192, column: 1, scope: !3387, inlinedAt: !3394)
!3412 = !DILocation(line: 949, column: 10, scope: !3378)
!3413 = !DILocation(line: 950, column: 1, scope: !3378)
!3414 = !DILocation(line: 949, column: 3, scope: !3378)
!3415 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !295, file: !295, line: 953, type: !3416, isLocal: false, isDefinition: true, scopeLine: 955, flags: DIFlagPrototyped, isOptimized: true, unit: !283, variables: !3418)
!3416 = !DISubroutineType(types: !3417)
!3417 = !{!39, !52, !5, !50, !42}
!3418 = !{!3419, !3420, !3421, !3422, !3423}
!3419 = !DILocalVariable(name: "n", arg: 1, scope: !3415, file: !295, line: 953, type: !52)
!3420 = !DILocalVariable(name: "s", arg: 2, scope: !3415, file: !295, line: 953, type: !5)
!3421 = !DILocalVariable(name: "arg", arg: 3, scope: !3415, file: !295, line: 954, type: !50)
!3422 = !DILocalVariable(name: "argsize", arg: 4, scope: !3415, file: !295, line: 954, type: !42)
!3423 = !DILocalVariable(name: "o", scope: !3415, file: !295, line: 956, type: !1954)
!3424 = !DILocation(line: 187, column: 26, scope: !3387, inlinedAt: !3425)
!3425 = distinct !DILocation(line: 956, column: 36, scope: !3415)
!3426 = !DILocation(line: 953, column: 27, scope: !3415)
!3427 = !DILocation(line: 953, column: 49, scope: !3415)
!3428 = !DILocation(line: 954, column: 35, scope: !3415)
!3429 = !DILocation(line: 954, column: 47, scope: !3415)
!3430 = !DILocation(line: 956, column: 3, scope: !3415)
!3431 = !DILocation(line: 956, column: 32, scope: !3415)
!3432 = !DILocation(line: 185, column: 48, scope: !3387, inlinedAt: !3425)
!3433 = !DILocation(line: 187, column: 3, scope: !3387, inlinedAt: !3425)
!3434 = !DILocation(line: 188, column: 13, scope: !3404, inlinedAt: !3425)
!3435 = !DILocation(line: 188, column: 7, scope: !3387, inlinedAt: !3425)
!3436 = !DILocation(line: 189, column: 5, scope: !3404, inlinedAt: !3425)
!3437 = !{!3438}
!3438 = distinct !{!3438, !3439, !"quoting_options_from_style: argument 0"}
!3439 = distinct !{!3439, !"quoting_options_from_style"}
!3440 = !DILocation(line: 191, column: 10, scope: !3387, inlinedAt: !3425)
!3441 = !DILocation(line: 192, column: 1, scope: !3387, inlinedAt: !3425)
!3442 = !DILocation(line: 957, column: 10, scope: !3415)
!3443 = !DILocation(line: 958, column: 1, scope: !3415)
!3444 = !DILocation(line: 957, column: 3, scope: !3415)
!3445 = distinct !DISubprogram(name: "quotearg_style", scope: !295, file: !295, line: 961, type: !3446, isLocal: false, isDefinition: true, scopeLine: 962, flags: DIFlagPrototyped, isOptimized: true, unit: !283, variables: !3448)
!3446 = !DISubroutineType(types: !3447)
!3447 = !{!39, !5, !50}
!3448 = !{!3449, !3450}
!3449 = !DILocalVariable(name: "s", arg: 1, scope: !3445, file: !295, line: 961, type: !5)
!3450 = !DILocalVariable(name: "arg", arg: 2, scope: !3445, file: !295, line: 961, type: !50)
!3451 = !DILocation(line: 187, column: 26, scope: !3387, inlinedAt: !3452)
!3452 = distinct !DILocation(line: 948, column: 36, scope: !3378, inlinedAt: !3453)
!3453 = distinct !DILocation(line: 963, column: 10, scope: !3445)
!3454 = !DILocation(line: 961, column: 36, scope: !3445)
!3455 = !DILocation(line: 961, column: 51, scope: !3445)
!3456 = !DILocation(line: 946, column: 23, scope: !3378, inlinedAt: !3453)
!3457 = !DILocation(line: 946, column: 45, scope: !3378, inlinedAt: !3453)
!3458 = !DILocation(line: 946, column: 60, scope: !3378, inlinedAt: !3453)
!3459 = !DILocation(line: 948, column: 3, scope: !3378, inlinedAt: !3453)
!3460 = !DILocation(line: 948, column: 32, scope: !3378, inlinedAt: !3453)
!3461 = !DILocation(line: 185, column: 48, scope: !3387, inlinedAt: !3452)
!3462 = !DILocation(line: 187, column: 3, scope: !3387, inlinedAt: !3452)
!3463 = !DILocation(line: 188, column: 13, scope: !3404, inlinedAt: !3452)
!3464 = !DILocation(line: 188, column: 7, scope: !3387, inlinedAt: !3452)
!3465 = !DILocation(line: 189, column: 5, scope: !3404, inlinedAt: !3452)
!3466 = !{!3467}
!3467 = distinct !{!3467, !3468, !"quoting_options_from_style: argument 0"}
!3468 = distinct !{!3468, !"quoting_options_from_style"}
!3469 = !DILocation(line: 191, column: 10, scope: !3387, inlinedAt: !3452)
!3470 = !DILocation(line: 192, column: 1, scope: !3387, inlinedAt: !3452)
!3471 = !DILocation(line: 949, column: 10, scope: !3378, inlinedAt: !3453)
!3472 = !DILocation(line: 950, column: 1, scope: !3378, inlinedAt: !3453)
!3473 = !DILocation(line: 963, column: 3, scope: !3445)
!3474 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !295, file: !295, line: 967, type: !3475, isLocal: false, isDefinition: true, scopeLine: 968, flags: DIFlagPrototyped, isOptimized: true, unit: !283, variables: !3477)
!3475 = !DISubroutineType(types: !3476)
!3476 = !{!39, !5, !50, !42}
!3477 = !{!3478, !3479, !3480}
!3478 = !DILocalVariable(name: "s", arg: 1, scope: !3474, file: !295, line: 967, type: !5)
!3479 = !DILocalVariable(name: "arg", arg: 2, scope: !3474, file: !295, line: 967, type: !50)
!3480 = !DILocalVariable(name: "argsize", arg: 3, scope: !3474, file: !295, line: 967, type: !42)
!3481 = !DILocation(line: 187, column: 26, scope: !3387, inlinedAt: !3482)
!3482 = distinct !DILocation(line: 956, column: 36, scope: !3415, inlinedAt: !3483)
!3483 = distinct !DILocation(line: 969, column: 10, scope: !3474)
!3484 = !DILocation(line: 967, column: 40, scope: !3474)
!3485 = !DILocation(line: 967, column: 55, scope: !3474)
!3486 = !DILocation(line: 967, column: 67, scope: !3474)
!3487 = !DILocation(line: 953, column: 27, scope: !3415, inlinedAt: !3483)
!3488 = !DILocation(line: 953, column: 49, scope: !3415, inlinedAt: !3483)
!3489 = !DILocation(line: 954, column: 35, scope: !3415, inlinedAt: !3483)
!3490 = !DILocation(line: 954, column: 47, scope: !3415, inlinedAt: !3483)
!3491 = !DILocation(line: 956, column: 3, scope: !3415, inlinedAt: !3483)
!3492 = !DILocation(line: 956, column: 32, scope: !3415, inlinedAt: !3483)
!3493 = !DILocation(line: 185, column: 48, scope: !3387, inlinedAt: !3482)
!3494 = !DILocation(line: 187, column: 3, scope: !3387, inlinedAt: !3482)
!3495 = !DILocation(line: 188, column: 13, scope: !3404, inlinedAt: !3482)
!3496 = !DILocation(line: 188, column: 7, scope: !3387, inlinedAt: !3482)
!3497 = !DILocation(line: 189, column: 5, scope: !3404, inlinedAt: !3482)
!3498 = !{!3499}
!3499 = distinct !{!3499, !3500, !"quoting_options_from_style: argument 0"}
!3500 = distinct !{!3500, !"quoting_options_from_style"}
!3501 = !DILocation(line: 191, column: 10, scope: !3387, inlinedAt: !3482)
!3502 = !DILocation(line: 192, column: 1, scope: !3387, inlinedAt: !3482)
!3503 = !DILocation(line: 957, column: 10, scope: !3415, inlinedAt: !3483)
!3504 = !DILocation(line: 958, column: 1, scope: !3415, inlinedAt: !3483)
!3505 = !DILocation(line: 969, column: 3, scope: !3474)
!3506 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !295, file: !295, line: 973, type: !3507, isLocal: false, isDefinition: true, scopeLine: 974, flags: DIFlagPrototyped, isOptimized: true, unit: !283, variables: !3509)
!3507 = !DISubroutineType(types: !3508)
!3508 = !{!39, !50, !42, !40}
!3509 = !{!3510, !3511, !3512, !3513}
!3510 = !DILocalVariable(name: "arg", arg: 1, scope: !3506, file: !295, line: 973, type: !50)
!3511 = !DILocalVariable(name: "argsize", arg: 2, scope: !3506, file: !295, line: 973, type: !42)
!3512 = !DILocalVariable(name: "ch", arg: 3, scope: !3506, file: !295, line: 973, type: !40)
!3513 = !DILocalVariable(name: "options", scope: !3506, file: !295, line: 975, type: !302)
!3514 = !DILocation(line: 973, column: 32, scope: !3506)
!3515 = !DILocation(line: 973, column: 44, scope: !3506)
!3516 = !DILocation(line: 973, column: 58, scope: !3506)
!3517 = !DILocation(line: 975, column: 3, scope: !3506)
!3518 = !DILocation(line: 976, column: 13, scope: !3506)
!3519 = !{i64 0, i64 4, !1076, i64 4, i64 4, !965, i64 8, i64 32, !1076, i64 40, i64 8, !770, i64 48, i64 8, !770}
!3520 = !DILocation(line: 975, column: 26, scope: !3506)
!3521 = !DILocation(line: 144, column: 43, scope: !1977, inlinedAt: !3522)
!3522 = distinct !DILocation(line: 977, column: 3, scope: !3506)
!3523 = !DILocation(line: 144, column: 51, scope: !1977, inlinedAt: !3522)
!3524 = !DILocation(line: 144, column: 58, scope: !1977, inlinedAt: !3522)
!3525 = !DILocation(line: 146, column: 17, scope: !1977, inlinedAt: !3522)
!3526 = !DILocation(line: 148, column: 62, scope: !1995, inlinedAt: !3522)
!3527 = !DILocation(line: 148, column: 57, scope: !1995, inlinedAt: !3522)
!3528 = !DILocation(line: 147, column: 17, scope: !1977, inlinedAt: !3522)
!3529 = !DILocation(line: 149, column: 18, scope: !1977, inlinedAt: !3522)
!3530 = !DILocation(line: 149, column: 15, scope: !1977, inlinedAt: !3522)
!3531 = !DILocation(line: 149, column: 7, scope: !1977, inlinedAt: !3522)
!3532 = !DILocation(line: 150, column: 12, scope: !1977, inlinedAt: !3522)
!3533 = !DILocation(line: 150, column: 15, scope: !1977, inlinedAt: !3522)
!3534 = !DILocation(line: 150, column: 25, scope: !1977, inlinedAt: !3522)
!3535 = !DILocation(line: 150, column: 7, scope: !1977, inlinedAt: !3522)
!3536 = !DILocation(line: 151, column: 18, scope: !1977, inlinedAt: !3522)
!3537 = !DILocation(line: 151, column: 23, scope: !1977, inlinedAt: !3522)
!3538 = !DILocation(line: 151, column: 6, scope: !1977, inlinedAt: !3522)
!3539 = !DILocation(line: 978, column: 10, scope: !3506)
!3540 = !DILocation(line: 979, column: 1, scope: !3506)
!3541 = !DILocation(line: 978, column: 3, scope: !3506)
!3542 = distinct !DISubprogram(name: "quotearg_char", scope: !295, file: !295, line: 982, type: !3543, isLocal: false, isDefinition: true, scopeLine: 983, flags: DIFlagPrototyped, isOptimized: true, unit: !283, variables: !3545)
!3543 = !DISubroutineType(types: !3544)
!3544 = !{!39, !50, !40}
!3545 = !{!3546, !3547}
!3546 = !DILocalVariable(name: "arg", arg: 1, scope: !3542, file: !295, line: 982, type: !50)
!3547 = !DILocalVariable(name: "ch", arg: 2, scope: !3542, file: !295, line: 982, type: !40)
!3548 = !DILocation(line: 982, column: 28, scope: !3542)
!3549 = !DILocation(line: 982, column: 38, scope: !3542)
!3550 = !DILocation(line: 973, column: 32, scope: !3506, inlinedAt: !3551)
!3551 = distinct !DILocation(line: 984, column: 10, scope: !3542)
!3552 = !DILocation(line: 973, column: 44, scope: !3506, inlinedAt: !3551)
!3553 = !DILocation(line: 973, column: 58, scope: !3506, inlinedAt: !3551)
!3554 = !DILocation(line: 975, column: 3, scope: !3506, inlinedAt: !3551)
!3555 = !DILocation(line: 976, column: 13, scope: !3506, inlinedAt: !3551)
!3556 = !DILocation(line: 975, column: 26, scope: !3506, inlinedAt: !3551)
!3557 = !DILocation(line: 144, column: 43, scope: !1977, inlinedAt: !3558)
!3558 = distinct !DILocation(line: 977, column: 3, scope: !3506, inlinedAt: !3551)
!3559 = !DILocation(line: 144, column: 51, scope: !1977, inlinedAt: !3558)
!3560 = !DILocation(line: 144, column: 58, scope: !1977, inlinedAt: !3558)
!3561 = !DILocation(line: 146, column: 17, scope: !1977, inlinedAt: !3558)
!3562 = !DILocation(line: 148, column: 62, scope: !1995, inlinedAt: !3558)
!3563 = !DILocation(line: 148, column: 57, scope: !1995, inlinedAt: !3558)
!3564 = !DILocation(line: 147, column: 17, scope: !1977, inlinedAt: !3558)
!3565 = !DILocation(line: 149, column: 18, scope: !1977, inlinedAt: !3558)
!3566 = !DILocation(line: 149, column: 15, scope: !1977, inlinedAt: !3558)
!3567 = !DILocation(line: 149, column: 7, scope: !1977, inlinedAt: !3558)
!3568 = !DILocation(line: 150, column: 12, scope: !1977, inlinedAt: !3558)
!3569 = !DILocation(line: 150, column: 15, scope: !1977, inlinedAt: !3558)
!3570 = !DILocation(line: 150, column: 25, scope: !1977, inlinedAt: !3558)
!3571 = !DILocation(line: 150, column: 7, scope: !1977, inlinedAt: !3558)
!3572 = !DILocation(line: 151, column: 18, scope: !1977, inlinedAt: !3558)
!3573 = !DILocation(line: 151, column: 23, scope: !1977, inlinedAt: !3558)
!3574 = !DILocation(line: 151, column: 6, scope: !1977, inlinedAt: !3558)
!3575 = !DILocation(line: 978, column: 10, scope: !3506, inlinedAt: !3551)
!3576 = !DILocation(line: 979, column: 1, scope: !3506, inlinedAt: !3551)
!3577 = !DILocation(line: 984, column: 3, scope: !3542)
!3578 = distinct !DISubprogram(name: "quotearg_colon", scope: !295, file: !295, line: 988, type: !1660, isLocal: false, isDefinition: true, scopeLine: 989, flags: DIFlagPrototyped, isOptimized: true, unit: !283, variables: !3579)
!3579 = !{!3580}
!3580 = !DILocalVariable(name: "arg", arg: 1, scope: !3578, file: !295, line: 988, type: !50)
!3581 = !DILocation(line: 988, column: 29, scope: !3578)
!3582 = !DILocation(line: 982, column: 28, scope: !3542, inlinedAt: !3583)
!3583 = distinct !DILocation(line: 990, column: 10, scope: !3578)
!3584 = !DILocation(line: 982, column: 38, scope: !3542, inlinedAt: !3583)
!3585 = !DILocation(line: 973, column: 32, scope: !3506, inlinedAt: !3586)
!3586 = distinct !DILocation(line: 984, column: 10, scope: !3542, inlinedAt: !3583)
!3587 = !DILocation(line: 973, column: 44, scope: !3506, inlinedAt: !3586)
!3588 = !DILocation(line: 973, column: 58, scope: !3506, inlinedAt: !3586)
!3589 = !DILocation(line: 975, column: 3, scope: !3506, inlinedAt: !3586)
!3590 = !DILocation(line: 976, column: 13, scope: !3506, inlinedAt: !3586)
!3591 = !DILocation(line: 975, column: 26, scope: !3506, inlinedAt: !3586)
!3592 = !DILocation(line: 144, column: 43, scope: !1977, inlinedAt: !3593)
!3593 = distinct !DILocation(line: 977, column: 3, scope: !3506, inlinedAt: !3586)
!3594 = !DILocation(line: 144, column: 51, scope: !1977, inlinedAt: !3593)
!3595 = !DILocation(line: 144, column: 58, scope: !1977, inlinedAt: !3593)
!3596 = !DILocation(line: 146, column: 17, scope: !1977, inlinedAt: !3593)
!3597 = !DILocation(line: 148, column: 57, scope: !1995, inlinedAt: !3593)
!3598 = !DILocation(line: 147, column: 17, scope: !1977, inlinedAt: !3593)
!3599 = !DILocation(line: 149, column: 7, scope: !1977, inlinedAt: !3593)
!3600 = !DILocation(line: 150, column: 12, scope: !1977, inlinedAt: !3593)
!3601 = !DILocation(line: 151, column: 6, scope: !1977, inlinedAt: !3593)
!3602 = !DILocation(line: 978, column: 10, scope: !3506, inlinedAt: !3586)
!3603 = !DILocation(line: 979, column: 1, scope: !3506, inlinedAt: !3586)
!3604 = !DILocation(line: 990, column: 3, scope: !3578)
!3605 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !295, file: !295, line: 994, type: !3365, isLocal: false, isDefinition: true, scopeLine: 995, flags: DIFlagPrototyped, isOptimized: true, unit: !283, variables: !3606)
!3606 = !{!3607, !3608}
!3607 = !DILocalVariable(name: "arg", arg: 1, scope: !3605, file: !295, line: 994, type: !50)
!3608 = !DILocalVariable(name: "argsize", arg: 2, scope: !3605, file: !295, line: 994, type: !42)
!3609 = !DILocation(line: 994, column: 33, scope: !3605)
!3610 = !DILocation(line: 994, column: 45, scope: !3605)
!3611 = !DILocation(line: 973, column: 32, scope: !3506, inlinedAt: !3612)
!3612 = distinct !DILocation(line: 996, column: 10, scope: !3605)
!3613 = !DILocation(line: 973, column: 44, scope: !3506, inlinedAt: !3612)
!3614 = !DILocation(line: 973, column: 58, scope: !3506, inlinedAt: !3612)
!3615 = !DILocation(line: 975, column: 3, scope: !3506, inlinedAt: !3612)
!3616 = !DILocation(line: 976, column: 13, scope: !3506, inlinedAt: !3612)
!3617 = !DILocation(line: 975, column: 26, scope: !3506, inlinedAt: !3612)
!3618 = !DILocation(line: 144, column: 43, scope: !1977, inlinedAt: !3619)
!3619 = distinct !DILocation(line: 977, column: 3, scope: !3506, inlinedAt: !3612)
!3620 = !DILocation(line: 144, column: 51, scope: !1977, inlinedAt: !3619)
!3621 = !DILocation(line: 144, column: 58, scope: !1977, inlinedAt: !3619)
!3622 = !DILocation(line: 146, column: 17, scope: !1977, inlinedAt: !3619)
!3623 = !DILocation(line: 148, column: 57, scope: !1995, inlinedAt: !3619)
!3624 = !DILocation(line: 147, column: 17, scope: !1977, inlinedAt: !3619)
!3625 = !DILocation(line: 149, column: 7, scope: !1977, inlinedAt: !3619)
!3626 = !DILocation(line: 150, column: 12, scope: !1977, inlinedAt: !3619)
!3627 = !DILocation(line: 151, column: 6, scope: !1977, inlinedAt: !3619)
!3628 = !DILocation(line: 978, column: 10, scope: !3506, inlinedAt: !3612)
!3629 = !DILocation(line: 979, column: 1, scope: !3506, inlinedAt: !3612)
!3630 = !DILocation(line: 996, column: 3, scope: !3605)
!3631 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !295, file: !295, line: 1000, type: !3379, isLocal: false, isDefinition: true, scopeLine: 1001, flags: DIFlagPrototyped, isOptimized: true, unit: !283, variables: !3632)
!3632 = !{!3633, !3634, !3635, !3636}
!3633 = !DILocalVariable(name: "n", arg: 1, scope: !3631, file: !295, line: 1000, type: !52)
!3634 = !DILocalVariable(name: "s", arg: 2, scope: !3631, file: !295, line: 1000, type: !5)
!3635 = !DILocalVariable(name: "arg", arg: 3, scope: !3631, file: !295, line: 1000, type: !50)
!3636 = !DILocalVariable(name: "options", scope: !3631, file: !295, line: 1002, type: !302)
!3637 = !DILocation(line: 187, column: 26, scope: !3387, inlinedAt: !3638)
!3638 = distinct !DILocation(line: 1003, column: 13, scope: !3631)
!3639 = !DILocation(line: 1000, column: 29, scope: !3631)
!3640 = !DILocation(line: 1000, column: 51, scope: !3631)
!3641 = !DILocation(line: 1000, column: 66, scope: !3631)
!3642 = !DILocation(line: 1002, column: 3, scope: !3631)
!3643 = !DILocation(line: 185, column: 48, scope: !3387, inlinedAt: !3638)
!3644 = !DILocation(line: 187, column: 3, scope: !3387, inlinedAt: !3638)
!3645 = !DILocation(line: 188, column: 13, scope: !3404, inlinedAt: !3638)
!3646 = !DILocation(line: 188, column: 7, scope: !3387, inlinedAt: !3638)
!3647 = !DILocation(line: 189, column: 5, scope: !3404, inlinedAt: !3638)
!3648 = !{!3649}
!3649 = distinct !{!3649, !3650, !"quoting_options_from_style: argument 0"}
!3650 = distinct !{!3650, !"quoting_options_from_style"}
!3651 = !DILocation(line: 191, column: 10, scope: !3387, inlinedAt: !3638)
!3652 = !DILocation(line: 192, column: 1, scope: !3387, inlinedAt: !3638)
!3653 = !DILocation(line: 1003, column: 13, scope: !3631)
!3654 = !DILocation(line: 1002, column: 26, scope: !3631)
!3655 = !DILocation(line: 144, column: 43, scope: !1977, inlinedAt: !3656)
!3656 = distinct !DILocation(line: 1004, column: 3, scope: !3631)
!3657 = !DILocation(line: 144, column: 51, scope: !1977, inlinedAt: !3656)
!3658 = !DILocation(line: 144, column: 58, scope: !1977, inlinedAt: !3656)
!3659 = !DILocation(line: 146, column: 17, scope: !1977, inlinedAt: !3656)
!3660 = !DILocation(line: 148, column: 57, scope: !1995, inlinedAt: !3656)
!3661 = !DILocation(line: 147, column: 17, scope: !1977, inlinedAt: !3656)
!3662 = !DILocation(line: 149, column: 7, scope: !1977, inlinedAt: !3656)
!3663 = !DILocation(line: 150, column: 12, scope: !1977, inlinedAt: !3656)
!3664 = !DILocation(line: 151, column: 6, scope: !1977, inlinedAt: !3656)
!3665 = !DILocation(line: 1005, column: 10, scope: !3631)
!3666 = !DILocation(line: 1006, column: 1, scope: !3631)
!3667 = !DILocation(line: 1005, column: 3, scope: !3631)
!3668 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !295, file: !295, line: 1009, type: !3669, isLocal: false, isDefinition: true, scopeLine: 1011, flags: DIFlagPrototyped, isOptimized: true, unit: !283, variables: !3671)
!3669 = !DISubroutineType(types: !3670)
!3670 = !{!39, !52, !50, !50, !50}
!3671 = !{!3672, !3673, !3674, !3675}
!3672 = !DILocalVariable(name: "n", arg: 1, scope: !3668, file: !295, line: 1009, type: !52)
!3673 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3668, file: !295, line: 1009, type: !50)
!3674 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3668, file: !295, line: 1010, type: !50)
!3675 = !DILocalVariable(name: "arg", arg: 4, scope: !3668, file: !295, line: 1010, type: !50)
!3676 = !DILocation(line: 1009, column: 24, scope: !3668)
!3677 = !DILocation(line: 1009, column: 39, scope: !3668)
!3678 = !DILocation(line: 1010, column: 32, scope: !3668)
!3679 = !DILocation(line: 1010, column: 57, scope: !3668)
!3680 = !DILocalVariable(name: "n", arg: 1, scope: !3681, file: !295, line: 1017, type: !52)
!3681 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !295, file: !295, line: 1017, type: !3682, isLocal: false, isDefinition: true, scopeLine: 1020, flags: DIFlagPrototyped, isOptimized: true, unit: !283, variables: !3684)
!3682 = !DISubroutineType(types: !3683)
!3683 = !{!39, !52, !50, !50, !50, !42}
!3684 = !{!3680, !3685, !3686, !3687, !3688, !3689}
!3685 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3681, file: !295, line: 1017, type: !50)
!3686 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3681, file: !295, line: 1018, type: !50)
!3687 = !DILocalVariable(name: "arg", arg: 4, scope: !3681, file: !295, line: 1019, type: !50)
!3688 = !DILocalVariable(name: "argsize", arg: 5, scope: !3681, file: !295, line: 1019, type: !42)
!3689 = !DILocalVariable(name: "o", scope: !3681, file: !295, line: 1021, type: !302)
!3690 = !DILocation(line: 1017, column: 28, scope: !3681, inlinedAt: !3691)
!3691 = distinct !DILocation(line: 1012, column: 10, scope: !3668)
!3692 = !DILocation(line: 1017, column: 43, scope: !3681, inlinedAt: !3691)
!3693 = !DILocation(line: 1018, column: 36, scope: !3681, inlinedAt: !3691)
!3694 = !DILocation(line: 1019, column: 36, scope: !3681, inlinedAt: !3691)
!3695 = !DILocation(line: 1019, column: 48, scope: !3681, inlinedAt: !3691)
!3696 = !DILocation(line: 1021, column: 3, scope: !3681, inlinedAt: !3691)
!3697 = !DILocation(line: 1021, column: 30, scope: !3681, inlinedAt: !3691)
!3698 = !DILocation(line: 1021, column: 26, scope: !3681, inlinedAt: !3691)
!3699 = !DILocation(line: 171, column: 45, scope: !2027, inlinedAt: !3700)
!3700 = distinct !DILocation(line: 1022, column: 3, scope: !3681, inlinedAt: !3691)
!3701 = !DILocation(line: 172, column: 33, scope: !2027, inlinedAt: !3700)
!3702 = !DILocation(line: 172, column: 57, scope: !2027, inlinedAt: !3700)
!3703 = !DILocation(line: 176, column: 6, scope: !2027, inlinedAt: !3700)
!3704 = !DILocation(line: 176, column: 12, scope: !2027, inlinedAt: !3700)
!3705 = !DILocation(line: 177, column: 8, scope: !2043, inlinedAt: !3700)
!3706 = !DILocation(line: 177, column: 23, scope: !2045, inlinedAt: !3700)
!3707 = !DILocation(line: 177, column: 19, scope: !2043, inlinedAt: !3700)
!3708 = !DILocation(line: 178, column: 5, scope: !2043, inlinedAt: !3700)
!3709 = !DILocation(line: 179, column: 6, scope: !2027, inlinedAt: !3700)
!3710 = !DILocation(line: 179, column: 17, scope: !2027, inlinedAt: !3700)
!3711 = !DILocation(line: 180, column: 6, scope: !2027, inlinedAt: !3700)
!3712 = !DILocation(line: 180, column: 18, scope: !2027, inlinedAt: !3700)
!3713 = !DILocation(line: 1023, column: 10, scope: !3681, inlinedAt: !3691)
!3714 = !DILocation(line: 1024, column: 1, scope: !3681, inlinedAt: !3691)
!3715 = !DILocation(line: 1012, column: 3, scope: !3668)
!3716 = !DILocation(line: 1017, column: 28, scope: !3681)
!3717 = !DILocation(line: 1017, column: 43, scope: !3681)
!3718 = !DILocation(line: 1018, column: 36, scope: !3681)
!3719 = !DILocation(line: 1019, column: 36, scope: !3681)
!3720 = !DILocation(line: 1019, column: 48, scope: !3681)
!3721 = !DILocation(line: 1021, column: 3, scope: !3681)
!3722 = !DILocation(line: 1021, column: 30, scope: !3681)
!3723 = !DILocation(line: 1021, column: 26, scope: !3681)
!3724 = !DILocation(line: 171, column: 45, scope: !2027, inlinedAt: !3725)
!3725 = distinct !DILocation(line: 1022, column: 3, scope: !3681)
!3726 = !DILocation(line: 172, column: 33, scope: !2027, inlinedAt: !3725)
!3727 = !DILocation(line: 172, column: 57, scope: !2027, inlinedAt: !3725)
!3728 = !DILocation(line: 176, column: 6, scope: !2027, inlinedAt: !3725)
!3729 = !DILocation(line: 176, column: 12, scope: !2027, inlinedAt: !3725)
!3730 = !DILocation(line: 177, column: 8, scope: !2043, inlinedAt: !3725)
!3731 = !DILocation(line: 177, column: 23, scope: !2045, inlinedAt: !3725)
!3732 = !DILocation(line: 177, column: 19, scope: !2043, inlinedAt: !3725)
!3733 = !DILocation(line: 178, column: 5, scope: !2043, inlinedAt: !3725)
!3734 = !DILocation(line: 179, column: 6, scope: !2027, inlinedAt: !3725)
!3735 = !DILocation(line: 179, column: 17, scope: !2027, inlinedAt: !3725)
!3736 = !DILocation(line: 180, column: 6, scope: !2027, inlinedAt: !3725)
!3737 = !DILocation(line: 180, column: 18, scope: !2027, inlinedAt: !3725)
!3738 = !DILocation(line: 1023, column: 10, scope: !3681)
!3739 = !DILocation(line: 1024, column: 1, scope: !3681)
!3740 = !DILocation(line: 1023, column: 3, scope: !3681)
!3741 = distinct !DISubprogram(name: "quotearg_custom", scope: !295, file: !295, line: 1027, type: !3742, isLocal: false, isDefinition: true, scopeLine: 1029, flags: DIFlagPrototyped, isOptimized: true, unit: !283, variables: !3744)
!3742 = !DISubroutineType(types: !3743)
!3743 = !{!39, !50, !50, !50}
!3744 = !{!3745, !3746, !3747}
!3745 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3741, file: !295, line: 1027, type: !50)
!3746 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3741, file: !295, line: 1027, type: !50)
!3747 = !DILocalVariable(name: "arg", arg: 3, scope: !3741, file: !295, line: 1028, type: !50)
!3748 = !DILocation(line: 1027, column: 30, scope: !3741)
!3749 = !DILocation(line: 1027, column: 54, scope: !3741)
!3750 = !DILocation(line: 1028, column: 30, scope: !3741)
!3751 = !DILocation(line: 1009, column: 24, scope: !3668, inlinedAt: !3752)
!3752 = distinct !DILocation(line: 1030, column: 10, scope: !3741)
!3753 = !DILocation(line: 1009, column: 39, scope: !3668, inlinedAt: !3752)
!3754 = !DILocation(line: 1010, column: 32, scope: !3668, inlinedAt: !3752)
!3755 = !DILocation(line: 1010, column: 57, scope: !3668, inlinedAt: !3752)
!3756 = !DILocation(line: 1017, column: 28, scope: !3681, inlinedAt: !3757)
!3757 = distinct !DILocation(line: 1012, column: 10, scope: !3668, inlinedAt: !3752)
!3758 = !DILocation(line: 1017, column: 43, scope: !3681, inlinedAt: !3757)
!3759 = !DILocation(line: 1018, column: 36, scope: !3681, inlinedAt: !3757)
!3760 = !DILocation(line: 1019, column: 36, scope: !3681, inlinedAt: !3757)
!3761 = !DILocation(line: 1019, column: 48, scope: !3681, inlinedAt: !3757)
!3762 = !DILocation(line: 1021, column: 3, scope: !3681, inlinedAt: !3757)
!3763 = !DILocation(line: 1021, column: 30, scope: !3681, inlinedAt: !3757)
!3764 = !DILocation(line: 1021, column: 26, scope: !3681, inlinedAt: !3757)
!3765 = !DILocation(line: 171, column: 45, scope: !2027, inlinedAt: !3766)
!3766 = distinct !DILocation(line: 1022, column: 3, scope: !3681, inlinedAt: !3757)
!3767 = !DILocation(line: 172, column: 33, scope: !2027, inlinedAt: !3766)
!3768 = !DILocation(line: 172, column: 57, scope: !2027, inlinedAt: !3766)
!3769 = !DILocation(line: 176, column: 6, scope: !2027, inlinedAt: !3766)
!3770 = !DILocation(line: 176, column: 12, scope: !2027, inlinedAt: !3766)
!3771 = !DILocation(line: 177, column: 8, scope: !2043, inlinedAt: !3766)
!3772 = !DILocation(line: 177, column: 23, scope: !2045, inlinedAt: !3766)
!3773 = !DILocation(line: 177, column: 19, scope: !2043, inlinedAt: !3766)
!3774 = !DILocation(line: 178, column: 5, scope: !2043, inlinedAt: !3766)
!3775 = !DILocation(line: 179, column: 6, scope: !2027, inlinedAt: !3766)
!3776 = !DILocation(line: 179, column: 17, scope: !2027, inlinedAt: !3766)
!3777 = !DILocation(line: 180, column: 6, scope: !2027, inlinedAt: !3766)
!3778 = !DILocation(line: 180, column: 18, scope: !2027, inlinedAt: !3766)
!3779 = !DILocation(line: 1023, column: 10, scope: !3681, inlinedAt: !3757)
!3780 = !DILocation(line: 1024, column: 1, scope: !3681, inlinedAt: !3757)
!3781 = !DILocation(line: 1030, column: 3, scope: !3741)
!3782 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !295, file: !295, line: 1034, type: !3783, isLocal: false, isDefinition: true, scopeLine: 1036, flags: DIFlagPrototyped, isOptimized: true, unit: !283, variables: !3785)
!3783 = !DISubroutineType(types: !3784)
!3784 = !{!39, !50, !50, !50, !42}
!3785 = !{!3786, !3787, !3788, !3789}
!3786 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3782, file: !295, line: 1034, type: !50)
!3787 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3782, file: !295, line: 1034, type: !50)
!3788 = !DILocalVariable(name: "arg", arg: 3, scope: !3782, file: !295, line: 1035, type: !50)
!3789 = !DILocalVariable(name: "argsize", arg: 4, scope: !3782, file: !295, line: 1035, type: !42)
!3790 = !DILocation(line: 1034, column: 34, scope: !3782)
!3791 = !DILocation(line: 1034, column: 58, scope: !3782)
!3792 = !DILocation(line: 1035, column: 34, scope: !3782)
!3793 = !DILocation(line: 1035, column: 46, scope: !3782)
!3794 = !DILocation(line: 1017, column: 28, scope: !3681, inlinedAt: !3795)
!3795 = distinct !DILocation(line: 1037, column: 10, scope: !3782)
!3796 = !DILocation(line: 1017, column: 43, scope: !3681, inlinedAt: !3795)
!3797 = !DILocation(line: 1018, column: 36, scope: !3681, inlinedAt: !3795)
!3798 = !DILocation(line: 1019, column: 36, scope: !3681, inlinedAt: !3795)
!3799 = !DILocation(line: 1019, column: 48, scope: !3681, inlinedAt: !3795)
!3800 = !DILocation(line: 1021, column: 3, scope: !3681, inlinedAt: !3795)
!3801 = !DILocation(line: 1021, column: 30, scope: !3681, inlinedAt: !3795)
!3802 = !DILocation(line: 1021, column: 26, scope: !3681, inlinedAt: !3795)
!3803 = !DILocation(line: 171, column: 45, scope: !2027, inlinedAt: !3804)
!3804 = distinct !DILocation(line: 1022, column: 3, scope: !3681, inlinedAt: !3795)
!3805 = !DILocation(line: 172, column: 33, scope: !2027, inlinedAt: !3804)
!3806 = !DILocation(line: 172, column: 57, scope: !2027, inlinedAt: !3804)
!3807 = !DILocation(line: 176, column: 6, scope: !2027, inlinedAt: !3804)
!3808 = !DILocation(line: 176, column: 12, scope: !2027, inlinedAt: !3804)
!3809 = !DILocation(line: 177, column: 8, scope: !2043, inlinedAt: !3804)
!3810 = !DILocation(line: 177, column: 23, scope: !2045, inlinedAt: !3804)
!3811 = !DILocation(line: 177, column: 19, scope: !2043, inlinedAt: !3804)
!3812 = !DILocation(line: 178, column: 5, scope: !2043, inlinedAt: !3804)
!3813 = !DILocation(line: 179, column: 6, scope: !2027, inlinedAt: !3804)
!3814 = !DILocation(line: 179, column: 17, scope: !2027, inlinedAt: !3804)
!3815 = !DILocation(line: 180, column: 6, scope: !2027, inlinedAt: !3804)
!3816 = !DILocation(line: 180, column: 18, scope: !2027, inlinedAt: !3804)
!3817 = !DILocation(line: 1023, column: 10, scope: !3681, inlinedAt: !3795)
!3818 = !DILocation(line: 1024, column: 1, scope: !3681, inlinedAt: !3795)
!3819 = !DILocation(line: 1037, column: 3, scope: !3782)
!3820 = distinct !DISubprogram(name: "quote_n_mem", scope: !295, file: !295, line: 1052, type: !3821, isLocal: false, isDefinition: true, scopeLine: 1053, flags: DIFlagPrototyped, isOptimized: true, unit: !283, variables: !3823)
!3821 = !DISubroutineType(types: !3822)
!3822 = !{!50, !52, !50, !42}
!3823 = !{!3824, !3825, !3826}
!3824 = !DILocalVariable(name: "n", arg: 1, scope: !3820, file: !295, line: 1052, type: !52)
!3825 = !DILocalVariable(name: "arg", arg: 2, scope: !3820, file: !295, line: 1052, type: !50)
!3826 = !DILocalVariable(name: "argsize", arg: 3, scope: !3820, file: !295, line: 1052, type: !42)
!3827 = !DILocation(line: 1052, column: 18, scope: !3820)
!3828 = !DILocation(line: 1052, column: 33, scope: !3820)
!3829 = !DILocation(line: 1052, column: 45, scope: !3820)
!3830 = !DILocation(line: 1054, column: 10, scope: !3820)
!3831 = !DILocation(line: 1054, column: 3, scope: !3820)
!3832 = distinct !DISubprogram(name: "quote_mem", scope: !295, file: !295, line: 1058, type: !3833, isLocal: false, isDefinition: true, scopeLine: 1059, flags: DIFlagPrototyped, isOptimized: true, unit: !283, variables: !3835)
!3833 = !DISubroutineType(types: !3834)
!3834 = !{!50, !50, !42}
!3835 = !{!3836, !3837}
!3836 = !DILocalVariable(name: "arg", arg: 1, scope: !3832, file: !295, line: 1058, type: !50)
!3837 = !DILocalVariable(name: "argsize", arg: 2, scope: !3832, file: !295, line: 1058, type: !42)
!3838 = !DILocation(line: 1058, column: 24, scope: !3832)
!3839 = !DILocation(line: 1058, column: 36, scope: !3832)
!3840 = !DILocation(line: 1052, column: 18, scope: !3820, inlinedAt: !3841)
!3841 = distinct !DILocation(line: 1060, column: 10, scope: !3832)
!3842 = !DILocation(line: 1052, column: 33, scope: !3820, inlinedAt: !3841)
!3843 = !DILocation(line: 1052, column: 45, scope: !3820, inlinedAt: !3841)
!3844 = !DILocation(line: 1054, column: 10, scope: !3820, inlinedAt: !3841)
!3845 = !DILocation(line: 1060, column: 3, scope: !3832)
!3846 = distinct !DISubprogram(name: "quote_n", scope: !295, file: !295, line: 1064, type: !3847, isLocal: false, isDefinition: true, scopeLine: 1065, flags: DIFlagPrototyped, isOptimized: true, unit: !283, variables: !3849)
!3847 = !DISubroutineType(types: !3848)
!3848 = !{!50, !52, !50}
!3849 = !{!3850, !3851}
!3850 = !DILocalVariable(name: "n", arg: 1, scope: !3846, file: !295, line: 1064, type: !52)
!3851 = !DILocalVariable(name: "arg", arg: 2, scope: !3846, file: !295, line: 1064, type: !50)
!3852 = !DILocation(line: 1064, column: 14, scope: !3846)
!3853 = !DILocation(line: 1064, column: 29, scope: !3846)
!3854 = !DILocation(line: 1052, column: 18, scope: !3820, inlinedAt: !3855)
!3855 = distinct !DILocation(line: 1066, column: 10, scope: !3846)
!3856 = !DILocation(line: 1052, column: 33, scope: !3820, inlinedAt: !3855)
!3857 = !DILocation(line: 1052, column: 45, scope: !3820, inlinedAt: !3855)
!3858 = !DILocation(line: 1054, column: 10, scope: !3820, inlinedAt: !3855)
!3859 = !DILocation(line: 1066, column: 3, scope: !3846)
!3860 = distinct !DISubprogram(name: "quote", scope: !295, file: !295, line: 1070, type: !3861, isLocal: false, isDefinition: true, scopeLine: 1071, flags: DIFlagPrototyped, isOptimized: true, unit: !283, variables: !3863)
!3861 = !DISubroutineType(types: !3862)
!3862 = !{!50, !50}
!3863 = !{!3864}
!3864 = !DILocalVariable(name: "arg", arg: 1, scope: !3860, file: !295, line: 1070, type: !50)
!3865 = !DILocation(line: 1070, column: 20, scope: !3860)
!3866 = !DILocation(line: 1064, column: 14, scope: !3846, inlinedAt: !3867)
!3867 = distinct !DILocation(line: 1072, column: 10, scope: !3860)
!3868 = !DILocation(line: 1064, column: 29, scope: !3846, inlinedAt: !3867)
!3869 = !DILocation(line: 1052, column: 18, scope: !3820, inlinedAt: !3870)
!3870 = distinct !DILocation(line: 1066, column: 10, scope: !3846, inlinedAt: !3867)
!3871 = !DILocation(line: 1052, column: 33, scope: !3820, inlinedAt: !3870)
!3872 = !DILocation(line: 1052, column: 45, scope: !3820, inlinedAt: !3870)
!3873 = !DILocation(line: 1054, column: 10, scope: !3820, inlinedAt: !3870)
!3874 = !DILocation(line: 1072, column: 3, scope: !3860)
!3875 = distinct !DISubprogram(name: "version_etc_arn", scope: !701, file: !701, line: 62, type: !3876, isLocal: false, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: true, unit: !697, variables: !3919)
!3876 = !DISubroutineType(types: !3877)
!3877 = !{null, !3878, !50, !50, !50, !3918, !42}
!3878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3879, size: 64)
!3879 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !852, line: 49, baseType: !3880)
!3880 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !854, line: 241, size: 1728, elements: !3881)
!3881 = !{!3882, !3883, !3884, !3885, !3886, !3887, !3888, !3889, !3890, !3891, !3892, !3893, !3894, !3902, !3903, !3904, !3905, !3906, !3907, !3908, !3909, !3910, !3911, !3912, !3913, !3914, !3915, !3916, !3917}
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3880, file: !854, line: 242, baseType: !52, size: 32)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3880, file: !854, line: 247, baseType: !39, size: 64, offset: 64)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3880, file: !854, line: 248, baseType: !39, size: 64, offset: 128)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3880, file: !854, line: 249, baseType: !39, size: 64, offset: 192)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3880, file: !854, line: 250, baseType: !39, size: 64, offset: 256)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3880, file: !854, line: 251, baseType: !39, size: 64, offset: 320)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3880, file: !854, line: 252, baseType: !39, size: 64, offset: 384)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3880, file: !854, line: 253, baseType: !39, size: 64, offset: 448)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3880, file: !854, line: 254, baseType: !39, size: 64, offset: 512)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3880, file: !854, line: 256, baseType: !39, size: 64, offset: 576)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3880, file: !854, line: 257, baseType: !39, size: 64, offset: 640)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3880, file: !854, line: 258, baseType: !39, size: 64, offset: 704)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3880, file: !854, line: 260, baseType: !3895, size: 64, offset: 768)
!3895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3896, size: 64)
!3896 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !854, line: 156, size: 192, elements: !3897)
!3897 = !{!3898, !3899, !3901}
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3896, file: !854, line: 157, baseType: !3895, size: 64)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3896, file: !854, line: 158, baseType: !3900, size: 64, offset: 64)
!3900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3880, size: 64)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3896, file: !854, line: 162, baseType: !52, size: 32, offset: 128)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3880, file: !854, line: 262, baseType: !3900, size: 64, offset: 832)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3880, file: !854, line: 264, baseType: !52, size: 32, offset: 896)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3880, file: !854, line: 268, baseType: !52, size: 32, offset: 928)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3880, file: !854, line: 270, baseType: !880, size: 64, offset: 960)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3880, file: !854, line: 274, baseType: !53, size: 16, offset: 1024)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3880, file: !854, line: 275, baseType: !883, size: 8, offset: 1040)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3880, file: !854, line: 276, baseType: !885, size: 8, offset: 1048)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3880, file: !854, line: 280, baseType: !889, size: 64, offset: 1088)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3880, file: !854, line: 289, baseType: !892, size: 64, offset: 1152)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3880, file: !854, line: 297, baseType: !41, size: 64, offset: 1216)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3880, file: !854, line: 298, baseType: !41, size: 64, offset: 1280)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3880, file: !854, line: 299, baseType: !41, size: 64, offset: 1344)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3880, file: !854, line: 300, baseType: !41, size: 64, offset: 1408)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3880, file: !854, line: 302, baseType: !42, size: 64, offset: 1472)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3880, file: !854, line: 303, baseType: !52, size: 32, offset: 1536)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3880, file: !854, line: 305, baseType: !173, size: 160, offset: 1568)
!3918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !328, size: 64)
!3919 = !{!3920, !3921, !3922, !3923, !3924, !3925}
!3920 = !DILocalVariable(name: "stream", arg: 1, scope: !3875, file: !701, line: 62, type: !3878)
!3921 = !DILocalVariable(name: "command_name", arg: 2, scope: !3875, file: !701, line: 63, type: !50)
!3922 = !DILocalVariable(name: "package", arg: 3, scope: !3875, file: !701, line: 63, type: !50)
!3923 = !DILocalVariable(name: "version", arg: 4, scope: !3875, file: !701, line: 64, type: !50)
!3924 = !DILocalVariable(name: "authors", arg: 5, scope: !3875, file: !701, line: 65, type: !3918)
!3925 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3875, file: !701, line: 65, type: !42)
!3926 = !DILocation(line: 62, column: 24, scope: !3875)
!3927 = !DILocation(line: 63, column: 30, scope: !3875)
!3928 = !DILocation(line: 63, column: 56, scope: !3875)
!3929 = !DILocation(line: 64, column: 30, scope: !3875)
!3930 = !DILocation(line: 65, column: 39, scope: !3875)
!3931 = !DILocation(line: 65, column: 55, scope: !3875)
!3932 = !DILocation(line: 67, column: 7, scope: !3933)
!3933 = distinct !DILexicalBlock(scope: !3875, file: !701, line: 67, column: 7)
!3934 = !DILocation(line: 67, column: 7, scope: !3875)
!3935 = !DILocation(line: 68, column: 5, scope: !3933)
!3936 = !DILocation(line: 70, column: 5, scope: !3933)
!3937 = !DILocation(line: 84, column: 3, scope: !3875)
!3938 = !DILocation(line: 84, column: 3, scope: !3939)
!3939 = !DILexicalBlockFile(scope: !3875, file: !701, discriminator: 1)
!3940 = !DILocation(line: 86, column: 3, scope: !3875)
!3941 = !DILocation(line: 86, column: 3, scope: !3939)
!3942 = !DILocation(line: 95, column: 3, scope: !3875)
!3943 = !DILocation(line: 99, column: 7, scope: !3944)
!3944 = distinct !DILexicalBlock(scope: !3875, file: !701, line: 96, column: 5)
!3945 = !DILocation(line: 102, column: 7, scope: !3944)
!3946 = !DILocation(line: 102, column: 7, scope: !3947)
!3947 = !DILexicalBlockFile(scope: !3944, file: !701, discriminator: 1)
!3948 = !DILocation(line: 103, column: 7, scope: !3944)
!3949 = !DILocation(line: 106, column: 7, scope: !3944)
!3950 = !DILocation(line: 106, column: 7, scope: !3947)
!3951 = !DILocation(line: 107, column: 7, scope: !3944)
!3952 = !DILocation(line: 110, column: 7, scope: !3944)
!3953 = !DILocation(line: 110, column: 7, scope: !3947)
!3954 = !DILocation(line: 112, column: 7, scope: !3944)
!3955 = !DILocation(line: 117, column: 7, scope: !3944)
!3956 = !DILocation(line: 117, column: 7, scope: !3947)
!3957 = !DILocation(line: 119, column: 7, scope: !3944)
!3958 = !DILocation(line: 124, column: 7, scope: !3944)
!3959 = !DILocation(line: 124, column: 7, scope: !3947)
!3960 = !DILocation(line: 126, column: 7, scope: !3944)
!3961 = !DILocation(line: 131, column: 7, scope: !3944)
!3962 = !DILocation(line: 131, column: 7, scope: !3947)
!3963 = !DILocation(line: 134, column: 7, scope: !3944)
!3964 = !DILocation(line: 139, column: 7, scope: !3944)
!3965 = !DILocation(line: 139, column: 7, scope: !3947)
!3966 = !DILocation(line: 142, column: 7, scope: !3944)
!3967 = !DILocation(line: 147, column: 7, scope: !3944)
!3968 = !DILocation(line: 147, column: 7, scope: !3947)
!3969 = !DILocation(line: 151, column: 7, scope: !3944)
!3970 = !DILocation(line: 156, column: 7, scope: !3944)
!3971 = !DILocation(line: 156, column: 7, scope: !3947)
!3972 = !DILocation(line: 160, column: 7, scope: !3944)
!3973 = !DILocation(line: 167, column: 7, scope: !3944)
!3974 = !DILocation(line: 167, column: 7, scope: !3947)
!3975 = !DILocation(line: 171, column: 7, scope: !3944)
!3976 = !DILocation(line: 173, column: 1, scope: !3875)
!3977 = distinct !DISubprogram(name: "version_etc_ar", scope: !701, file: !701, line: 180, type: !3978, isLocal: false, isDefinition: true, scopeLine: 183, flags: DIFlagPrototyped, isOptimized: true, unit: !697, variables: !3980)
!3978 = !DISubroutineType(types: !3979)
!3979 = !{null, !3878, !50, !50, !50, !3918}
!3980 = !{!3981, !3982, !3983, !3984, !3985, !3986}
!3981 = !DILocalVariable(name: "stream", arg: 1, scope: !3977, file: !701, line: 180, type: !3878)
!3982 = !DILocalVariable(name: "command_name", arg: 2, scope: !3977, file: !701, line: 181, type: !50)
!3983 = !DILocalVariable(name: "package", arg: 3, scope: !3977, file: !701, line: 181, type: !50)
!3984 = !DILocalVariable(name: "version", arg: 4, scope: !3977, file: !701, line: 182, type: !50)
!3985 = !DILocalVariable(name: "authors", arg: 5, scope: !3977, file: !701, line: 182, type: !3918)
!3986 = !DILocalVariable(name: "n_authors", scope: !3977, file: !701, line: 184, type: !42)
!3987 = !DILocation(line: 180, column: 23, scope: !3977)
!3988 = !DILocation(line: 181, column: 29, scope: !3977)
!3989 = !DILocation(line: 181, column: 55, scope: !3977)
!3990 = !DILocation(line: 182, column: 29, scope: !3977)
!3991 = !DILocation(line: 182, column: 59, scope: !3977)
!3992 = !DILocation(line: 184, column: 10, scope: !3977)
!3993 = !DILocation(line: 186, column: 8, scope: !3994)
!3994 = distinct !DILexicalBlock(scope: !3977, file: !701, line: 186, column: 3)
!3995 = !DILocation(line: 186, column: 23, scope: !3996)
!3996 = !DILexicalBlockFile(scope: !3997, file: !701, discriminator: 1)
!3997 = distinct !DILexicalBlock(scope: !3994, file: !701, line: 186, column: 3)
!3998 = !DILocation(line: 186, column: 3, scope: !3999)
!3999 = !DILexicalBlockFile(scope: !3994, file: !701, discriminator: 1)
!4000 = !DILocation(line: 186, column: 52, scope: !4001)
!4001 = !DILexicalBlockFile(scope: !3997, file: !701, discriminator: 3)
!4002 = distinct !{!4002, !4003, !4004}
!4003 = !DILocation(line: 186, column: 3, scope: !3994)
!4004 = !DILocation(line: 187, column: 5, scope: !3994)
!4005 = !DILocation(line: 188, column: 3, scope: !3977)
!4006 = !DILocation(line: 189, column: 1, scope: !3977)
!4007 = distinct !DISubprogram(name: "version_etc_va", scope: !701, file: !701, line: 196, type: !4008, isLocal: false, isDefinition: true, scopeLine: 199, flags: DIFlagPrototyped, isOptimized: true, unit: !697, variables: !4017)
!4008 = !DISubroutineType(types: !4009)
!4009 = !{null, !3878, !50, !50, !50, !4010}
!4010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4011, size: 64)
!4011 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !698, line: 189, size: 192, elements: !4012)
!4012 = !{!4013, !4014, !4015, !4016}
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !4011, file: !698, line: 189, baseType: !244, size: 32)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !4011, file: !698, line: 189, baseType: !244, size: 32, offset: 32)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !4011, file: !698, line: 189, baseType: !41, size: 64, offset: 64)
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !4011, file: !698, line: 189, baseType: !41, size: 64, offset: 128)
!4017 = !{!4018, !4019, !4020, !4021, !4022, !4023, !4024}
!4018 = !DILocalVariable(name: "stream", arg: 1, scope: !4007, file: !701, line: 196, type: !3878)
!4019 = !DILocalVariable(name: "command_name", arg: 2, scope: !4007, file: !701, line: 197, type: !50)
!4020 = !DILocalVariable(name: "package", arg: 3, scope: !4007, file: !701, line: 197, type: !50)
!4021 = !DILocalVariable(name: "version", arg: 4, scope: !4007, file: !701, line: 198, type: !50)
!4022 = !DILocalVariable(name: "authors", arg: 5, scope: !4007, file: !701, line: 198, type: !4010)
!4023 = !DILocalVariable(name: "n_authors", scope: !4007, file: !701, line: 200, type: !42)
!4024 = !DILocalVariable(name: "authtab", scope: !4007, file: !701, line: 201, type: !4025)
!4025 = !DICompositeType(tag: DW_TAG_array_type, baseType: !50, size: 640, elements: !298)
!4026 = !DILocation(line: 196, column: 23, scope: !4007)
!4027 = !DILocation(line: 197, column: 29, scope: !4007)
!4028 = !DILocation(line: 197, column: 55, scope: !4007)
!4029 = !DILocation(line: 198, column: 29, scope: !4007)
!4030 = !DILocation(line: 198, column: 46, scope: !4007)
!4031 = !DILocation(line: 201, column: 3, scope: !4007)
!4032 = !DILocation(line: 201, column: 15, scope: !4007)
!4033 = !DILocation(line: 200, column: 10, scope: !4007)
!4034 = !DILocation(line: 205, column: 35, scope: !4035)
!4035 = !DILexicalBlockFile(scope: !4036, file: !701, discriminator: 1)
!4036 = distinct !DILexicalBlock(scope: !4037, file: !701, line: 203, column: 3)
!4037 = distinct !DILexicalBlock(scope: !4007, file: !701, line: 203, column: 3)
!4038 = !DILocation(line: 205, column: 35, scope: !4039)
!4039 = !DILexicalBlockFile(scope: !4036, file: !701, discriminator: 2)
!4040 = !DILocation(line: 205, column: 35, scope: !4041)
!4041 = !DILexicalBlockFile(scope: !4036, file: !701, discriminator: 3)
!4042 = !DILocation(line: 205, column: 35, scope: !4043)
!4043 = !DILexicalBlockFile(scope: !4036, file: !701, discriminator: 4)
!4044 = !DILocation(line: 205, column: 14, scope: !4043)
!4045 = !DILocation(line: 205, column: 33, scope: !4043)
!4046 = !DILocation(line: 205, column: 67, scope: !4043)
!4047 = !DILocation(line: 203, column: 3, scope: !4048)
!4048 = !DILexicalBlockFile(scope: !4037, file: !701, discriminator: 1)
!4049 = !DILocation(line: 208, column: 3, scope: !4007)
!4050 = !DILocation(line: 210, column: 1, scope: !4007)
!4051 = distinct !DISubprogram(name: "version_etc", scope: !701, file: !701, line: 227, type: !4052, isLocal: false, isDefinition: true, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: true, unit: !697, variables: !4054)
!4052 = !DISubroutineType(types: !4053)
!4053 = !{null, !3878, !50, !50, !50, null}
!4054 = !{!4055, !4056, !4057, !4058, !4059}
!4055 = !DILocalVariable(name: "stream", arg: 1, scope: !4051, file: !701, line: 227, type: !3878)
!4056 = !DILocalVariable(name: "command_name", arg: 2, scope: !4051, file: !701, line: 228, type: !50)
!4057 = !DILocalVariable(name: "package", arg: 3, scope: !4051, file: !701, line: 228, type: !50)
!4058 = !DILocalVariable(name: "version", arg: 4, scope: !4051, file: !701, line: 229, type: !50)
!4059 = !DILocalVariable(name: "authors", scope: !4051, file: !701, line: 231, type: !4060)
!4060 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !852, line: 80, baseType: !4061)
!4061 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !4062, line: 50, baseType: !4063)
!4062 = !DIFile(filename: "/usr/bin/../lib/clang/4.0.1/include/stdarg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4063 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !698, line: 231, baseType: !4064)
!4064 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4011, size: 192, elements: !886)
!4065 = !DILocation(line: 227, column: 20, scope: !4051)
!4066 = !DILocation(line: 228, column: 26, scope: !4051)
!4067 = !DILocation(line: 228, column: 52, scope: !4051)
!4068 = !DILocation(line: 229, column: 26, scope: !4051)
!4069 = !DILocation(line: 231, column: 3, scope: !4051)
!4070 = !DILocation(line: 231, column: 11, scope: !4051)
!4071 = !DILocation(line: 233, column: 3, scope: !4051)
!4072 = !DILocation(line: 234, column: 3, scope: !4051)
!4073 = !DILocation(line: 235, column: 3, scope: !4051)
!4074 = !DILocation(line: 236, column: 1, scope: !4051)
!4075 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !701, file: !701, line: 239, type: !1033, isLocal: false, isDefinition: true, scopeLine: 240, flags: DIFlagPrototyped, isOptimized: true, unit: !697, variables: !214)
!4076 = !DILocation(line: 245, column: 3, scope: !4075)
!4077 = !DILocation(line: 245, column: 3, scope: !4078)
!4078 = !DILexicalBlockFile(scope: !4075, file: !701, discriminator: 1)
!4079 = !DILocation(line: 251, column: 3, scope: !4075)
!4080 = !DILocation(line: 251, column: 3, scope: !4078)
!4081 = !DILocation(line: 256, column: 3, scope: !4075)
!4082 = !DILocation(line: 256, column: 3, scope: !4078)
!4083 = !DILocation(line: 258, column: 1, scope: !4075)
!4084 = distinct !DISubprogram(name: "xnmalloc", scope: !709, file: !709, line: 105, type: !4085, isLocal: false, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: true, unit: !705, variables: !4087)
!4085 = !DISubroutineType(types: !4086)
!4086 = !{!41, !42, !42}
!4087 = !{!4088, !4089}
!4088 = !DILocalVariable(name: "n", arg: 1, scope: !4084, file: !709, line: 105, type: !42)
!4089 = !DILocalVariable(name: "s", arg: 2, scope: !4084, file: !709, line: 105, type: !42)
!4090 = !DILocation(line: 105, column: 18, scope: !4084)
!4091 = !DILocation(line: 105, column: 28, scope: !4084)
!4092 = !DILocation(line: 107, column: 7, scope: !4093)
!4093 = distinct !DILexicalBlock(scope: !4084, file: !709, line: 107, column: 7)
!4094 = !DILocation(line: 107, column: 7, scope: !4084)
!4095 = !DILocation(line: 108, column: 5, scope: !4093)
!4096 = !DILocation(line: 109, column: 21, scope: !4084)
!4097 = !DILocalVariable(name: "n", arg: 1, scope: !4098, file: !4099, line: 39, type: !42)
!4098 = distinct !DISubprogram(name: "xmalloc", scope: !4099, file: !4099, line: 39, type: !4100, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !705, variables: !4102)
!4099 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4100 = !DISubroutineType(types: !4101)
!4101 = !{!41, !42}
!4102 = !{!4097, !4103}
!4103 = !DILocalVariable(name: "p", scope: !4098, file: !4099, line: 41, type: !41)
!4104 = !DILocation(line: 39, column: 17, scope: !4098, inlinedAt: !4105)
!4105 = distinct !DILocation(line: 109, column: 10, scope: !4084)
!4106 = !DILocation(line: 41, column: 13, scope: !4098, inlinedAt: !4105)
!4107 = !DILocation(line: 41, column: 9, scope: !4098, inlinedAt: !4105)
!4108 = !DILocation(line: 42, column: 8, scope: !4109, inlinedAt: !4105)
!4109 = distinct !DILexicalBlock(scope: !4098, file: !4099, line: 42, column: 7)
!4110 = !DILocation(line: 42, column: 15, scope: !4111, inlinedAt: !4105)
!4111 = !DILexicalBlockFile(scope: !4109, file: !4099, discriminator: 1)
!4112 = !DILocation(line: 42, column: 10, scope: !4109, inlinedAt: !4105)
!4113 = !DILocation(line: 43, column: 5, scope: !4109, inlinedAt: !4105)
!4114 = !DILocation(line: 109, column: 3, scope: !4084)
!4115 = !DILocation(line: 39, column: 17, scope: !4098)
!4116 = !DILocation(line: 41, column: 13, scope: !4098)
!4117 = !DILocation(line: 41, column: 9, scope: !4098)
!4118 = !DILocation(line: 42, column: 8, scope: !4109)
!4119 = !DILocation(line: 42, column: 15, scope: !4111)
!4120 = !DILocation(line: 42, column: 10, scope: !4109)
!4121 = !DILocation(line: 43, column: 5, scope: !4109)
!4122 = !DILocation(line: 44, column: 3, scope: !4098)
!4123 = distinct !DISubprogram(name: "xnrealloc", scope: !709, file: !709, line: 118, type: !4124, isLocal: false, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !705, variables: !4126)
!4124 = !DISubroutineType(types: !4125)
!4125 = !{!41, !41, !42, !42}
!4126 = !{!4127, !4128, !4129}
!4127 = !DILocalVariable(name: "p", arg: 1, scope: !4123, file: !709, line: 118, type: !41)
!4128 = !DILocalVariable(name: "n", arg: 2, scope: !4123, file: !709, line: 118, type: !42)
!4129 = !DILocalVariable(name: "s", arg: 3, scope: !4123, file: !709, line: 118, type: !42)
!4130 = !DILocation(line: 118, column: 18, scope: !4123)
!4131 = !DILocation(line: 118, column: 28, scope: !4123)
!4132 = !DILocation(line: 118, column: 38, scope: !4123)
!4133 = !DILocation(line: 120, column: 7, scope: !4134)
!4134 = distinct !DILexicalBlock(scope: !4123, file: !709, line: 120, column: 7)
!4135 = !DILocation(line: 120, column: 7, scope: !4123)
!4136 = !DILocation(line: 121, column: 5, scope: !4134)
!4137 = !DILocation(line: 122, column: 25, scope: !4123)
!4138 = !DILocalVariable(name: "p", arg: 1, scope: !4139, file: !4099, line: 51, type: !41)
!4139 = distinct !DISubprogram(name: "xrealloc", scope: !4099, file: !4099, line: 51, type: !4140, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !705, variables: !4142)
!4140 = !DISubroutineType(types: !4141)
!4141 = !{!41, !41, !42}
!4142 = !{!4138, !4143}
!4143 = !DILocalVariable(name: "n", arg: 2, scope: !4139, file: !4099, line: 51, type: !42)
!4144 = !DILocation(line: 51, column: 17, scope: !4139, inlinedAt: !4145)
!4145 = distinct !DILocation(line: 122, column: 10, scope: !4123)
!4146 = !DILocation(line: 51, column: 27, scope: !4139, inlinedAt: !4145)
!4147 = !DILocation(line: 53, column: 8, scope: !4148, inlinedAt: !4145)
!4148 = distinct !DILexicalBlock(scope: !4139, file: !4099, line: 53, column: 7)
!4149 = !DILocation(line: 53, column: 13, scope: !4150, inlinedAt: !4145)
!4150 = !DILexicalBlockFile(scope: !4148, file: !4099, discriminator: 1)
!4151 = !DILocation(line: 53, column: 10, scope: !4148, inlinedAt: !4145)
!4152 = !DILocation(line: 57, column: 7, scope: !4153, inlinedAt: !4145)
!4153 = distinct !DILexicalBlock(scope: !4148, file: !4099, line: 54, column: 5)
!4154 = !DILocation(line: 58, column: 7, scope: !4153, inlinedAt: !4145)
!4155 = !DILocation(line: 61, column: 7, scope: !4139, inlinedAt: !4145)
!4156 = !DILocation(line: 62, column: 8, scope: !4157, inlinedAt: !4145)
!4157 = distinct !DILexicalBlock(scope: !4139, file: !4099, line: 62, column: 7)
!4158 = !DILocation(line: 62, column: 13, scope: !4159, inlinedAt: !4145)
!4159 = !DILexicalBlockFile(scope: !4157, file: !4099, discriminator: 1)
!4160 = !DILocation(line: 62, column: 10, scope: !4157, inlinedAt: !4145)
!4161 = !DILocation(line: 63, column: 5, scope: !4157, inlinedAt: !4145)
!4162 = !DILocation(line: 122, column: 3, scope: !4123)
!4163 = !DILocation(line: 51, column: 17, scope: !4139)
!4164 = !DILocation(line: 51, column: 27, scope: !4139)
!4165 = !DILocation(line: 53, column: 8, scope: !4148)
!4166 = !DILocation(line: 53, column: 13, scope: !4150)
!4167 = !DILocation(line: 53, column: 10, scope: !4148)
!4168 = !DILocation(line: 57, column: 7, scope: !4153)
!4169 = !DILocation(line: 58, column: 7, scope: !4153)
!4170 = !DILocation(line: 61, column: 7, scope: !4139)
!4171 = !DILocation(line: 62, column: 8, scope: !4157)
!4172 = !DILocation(line: 62, column: 13, scope: !4159)
!4173 = !DILocation(line: 62, column: 10, scope: !4157)
!4174 = !DILocation(line: 63, column: 5, scope: !4157)
!4175 = !DILocation(line: 65, column: 1, scope: !4139)
!4176 = !DILocation(line: 180, column: 19, scope: !710)
!4177 = !DILocation(line: 180, column: 30, scope: !710)
!4178 = !DILocation(line: 180, column: 41, scope: !710)
!4179 = !DILocation(line: 182, column: 14, scope: !710)
!4180 = !DILocation(line: 182, column: 10, scope: !710)
!4181 = !DILocation(line: 184, column: 9, scope: !4182)
!4182 = distinct !DILexicalBlock(scope: !710, file: !709, line: 184, column: 7)
!4183 = !DILocation(line: 184, column: 7, scope: !710)
!4184 = !DILocation(line: 186, column: 13, scope: !4185)
!4185 = distinct !DILexicalBlock(scope: !4186, file: !709, line: 186, column: 11)
!4186 = distinct !DILexicalBlock(scope: !4182, file: !709, line: 185, column: 5)
!4187 = !DILocation(line: 186, column: 11, scope: !4186)
!4188 = !DILocation(line: 194, column: 30, scope: !4189)
!4189 = distinct !DILexicalBlock(scope: !4185, file: !709, line: 187, column: 9)
!4190 = !DILocation(line: 195, column: 16, scope: !4189)
!4191 = !DILocation(line: 195, column: 13, scope: !4189)
!4192 = !DILocation(line: 196, column: 9, scope: !4189)
!4193 = !DILocation(line: 204, column: 69, scope: !4194)
!4194 = distinct !DILexicalBlock(scope: !4195, file: !709, line: 204, column: 11)
!4195 = distinct !DILexicalBlock(scope: !4182, file: !709, line: 199, column: 5)
!4196 = !DILocation(line: 205, column: 11, scope: !4194)
!4197 = !DILocation(line: 204, column: 11, scope: !4195)
!4198 = !DILocation(line: 206, column: 9, scope: !4194)
!4199 = !DILocation(line: 210, column: 7, scope: !710)
!4200 = !DILocation(line: 211, column: 25, scope: !710)
!4201 = !DILocation(line: 51, column: 17, scope: !4139, inlinedAt: !4202)
!4202 = distinct !DILocation(line: 211, column: 10, scope: !710)
!4203 = !DILocation(line: 51, column: 27, scope: !4139, inlinedAt: !4202)
!4204 = !DILocation(line: 53, column: 10, scope: !4148, inlinedAt: !4202)
!4205 = !DILocation(line: 207, column: 14, scope: !4195)
!4206 = !DILocation(line: 207, column: 18, scope: !4195)
!4207 = !DILocation(line: 207, column: 9, scope: !4195)
!4208 = !DILocation(line: 53, column: 8, scope: !4148, inlinedAt: !4202)
!4209 = !DILocation(line: 57, column: 7, scope: !4153, inlinedAt: !4202)
!4210 = !DILocation(line: 58, column: 7, scope: !4153, inlinedAt: !4202)
!4211 = !DILocation(line: 61, column: 7, scope: !4139, inlinedAt: !4202)
!4212 = !DILocation(line: 62, column: 8, scope: !4157, inlinedAt: !4202)
!4213 = !DILocation(line: 62, column: 13, scope: !4159, inlinedAt: !4202)
!4214 = !DILocation(line: 62, column: 10, scope: !4157, inlinedAt: !4202)
!4215 = !DILocation(line: 63, column: 5, scope: !4157, inlinedAt: !4202)
!4216 = !DILocation(line: 211, column: 3, scope: !710)
!4217 = distinct !DISubprogram(name: "xcharalloc", scope: !709, file: !709, line: 220, type: !3151, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !705, variables: !4218)
!4218 = !{!4219}
!4219 = !DILocalVariable(name: "n", arg: 1, scope: !4217, file: !709, line: 220, type: !42)
!4220 = !DILocation(line: 220, column: 20, scope: !4217)
!4221 = !DILocation(line: 39, column: 17, scope: !4098, inlinedAt: !4222)
!4222 = distinct !DILocation(line: 222, column: 10, scope: !4217)
!4223 = !DILocation(line: 41, column: 13, scope: !4098, inlinedAt: !4222)
!4224 = !DILocation(line: 41, column: 9, scope: !4098, inlinedAt: !4222)
!4225 = !DILocation(line: 42, column: 8, scope: !4109, inlinedAt: !4222)
!4226 = !DILocation(line: 42, column: 15, scope: !4111, inlinedAt: !4222)
!4227 = !DILocation(line: 42, column: 10, scope: !4109, inlinedAt: !4222)
!4228 = !DILocation(line: 43, column: 5, scope: !4109, inlinedAt: !4222)
!4229 = !DILocation(line: 222, column: 3, scope: !4217)
!4230 = distinct !DISubprogram(name: "x2realloc", scope: !4099, file: !4099, line: 74, type: !4231, isLocal: false, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, unit: !705, variables: !4233)
!4231 = !DISubroutineType(types: !4232)
!4232 = !{!41, !41, !713}
!4233 = !{!4234, !4235}
!4234 = !DILocalVariable(name: "p", arg: 1, scope: !4230, file: !4099, line: 74, type: !41)
!4235 = !DILocalVariable(name: "pn", arg: 2, scope: !4230, file: !4099, line: 74, type: !713)
!4236 = !DILocation(line: 74, column: 18, scope: !4230)
!4237 = !DILocation(line: 74, column: 29, scope: !4230)
!4238 = !DILocation(line: 180, column: 19, scope: !710, inlinedAt: !4239)
!4239 = distinct !DILocation(line: 76, column: 10, scope: !4230)
!4240 = !DILocation(line: 180, column: 30, scope: !710, inlinedAt: !4239)
!4241 = !DILocation(line: 180, column: 41, scope: !710, inlinedAt: !4239)
!4242 = !DILocation(line: 182, column: 14, scope: !710, inlinedAt: !4239)
!4243 = !DILocation(line: 182, column: 10, scope: !710, inlinedAt: !4239)
!4244 = !DILocation(line: 184, column: 9, scope: !4182, inlinedAt: !4239)
!4245 = !DILocation(line: 184, column: 7, scope: !710, inlinedAt: !4239)
!4246 = !DILocation(line: 186, column: 13, scope: !4185, inlinedAt: !4239)
!4247 = !DILocation(line: 186, column: 11, scope: !4186, inlinedAt: !4239)
!4248 = !DILocation(line: 210, column: 7, scope: !710, inlinedAt: !4239)
!4249 = !DILocation(line: 51, column: 17, scope: !4139, inlinedAt: !4250)
!4250 = distinct !DILocation(line: 211, column: 10, scope: !710, inlinedAt: !4239)
!4251 = !DILocation(line: 51, column: 27, scope: !4139, inlinedAt: !4250)
!4252 = !DILocation(line: 53, column: 10, scope: !4148, inlinedAt: !4250)
!4253 = !DILocation(line: 205, column: 11, scope: !4194, inlinedAt: !4239)
!4254 = !DILocation(line: 204, column: 11, scope: !4195, inlinedAt: !4239)
!4255 = !DILocation(line: 206, column: 9, scope: !4194, inlinedAt: !4239)
!4256 = !DILocation(line: 207, column: 14, scope: !4195, inlinedAt: !4239)
!4257 = !DILocation(line: 207, column: 18, scope: !4195, inlinedAt: !4239)
!4258 = !DILocation(line: 207, column: 9, scope: !4195, inlinedAt: !4239)
!4259 = !DILocation(line: 53, column: 8, scope: !4148, inlinedAt: !4250)
!4260 = !DILocation(line: 57, column: 7, scope: !4153, inlinedAt: !4250)
!4261 = !DILocation(line: 58, column: 7, scope: !4153, inlinedAt: !4250)
!4262 = !DILocation(line: 61, column: 7, scope: !4139, inlinedAt: !4250)
!4263 = !DILocation(line: 62, column: 8, scope: !4157, inlinedAt: !4250)
!4264 = !DILocation(line: 62, column: 13, scope: !4159, inlinedAt: !4250)
!4265 = !DILocation(line: 62, column: 10, scope: !4157, inlinedAt: !4250)
!4266 = !DILocation(line: 63, column: 5, scope: !4157, inlinedAt: !4250)
!4267 = !DILocation(line: 76, column: 3, scope: !4230)
!4268 = distinct !DISubprogram(name: "xzalloc", scope: !4099, file: !4099, line: 84, type: !4100, isLocal: false, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: true, unit: !705, variables: !4269)
!4269 = !{!4270}
!4270 = !DILocalVariable(name: "s", arg: 1, scope: !4268, file: !4099, line: 84, type: !42)
!4271 = !DILocation(line: 84, column: 17, scope: !4268)
!4272 = !DILocation(line: 39, column: 17, scope: !4098, inlinedAt: !4273)
!4273 = distinct !DILocation(line: 86, column: 18, scope: !4268)
!4274 = !DILocation(line: 41, column: 13, scope: !4098, inlinedAt: !4273)
!4275 = !DILocation(line: 41, column: 9, scope: !4098, inlinedAt: !4273)
!4276 = !DILocation(line: 42, column: 8, scope: !4109, inlinedAt: !4273)
!4277 = !DILocation(line: 42, column: 15, scope: !4111, inlinedAt: !4273)
!4278 = !DILocation(line: 42, column: 10, scope: !4109, inlinedAt: !4273)
!4279 = !DILocation(line: 43, column: 5, scope: !4109, inlinedAt: !4273)
!4280 = !DILocation(line: 86, column: 10, scope: !4268)
!4281 = !DILocation(line: 86, column: 3, scope: !4268)
!4282 = distinct !DISubprogram(name: "xcalloc", scope: !4099, file: !4099, line: 93, type: !4085, isLocal: false, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: true, unit: !705, variables: !4283)
!4283 = !{!4284, !4285, !4286}
!4284 = !DILocalVariable(name: "n", arg: 1, scope: !4282, file: !4099, line: 93, type: !42)
!4285 = !DILocalVariable(name: "s", arg: 2, scope: !4282, file: !4099, line: 93, type: !42)
!4286 = !DILocalVariable(name: "p", scope: !4282, file: !4099, line: 95, type: !41)
!4287 = !DILocation(line: 93, column: 17, scope: !4282)
!4288 = !DILocation(line: 93, column: 27, scope: !4282)
!4289 = !DILocation(line: 100, column: 7, scope: !4290)
!4290 = distinct !DILexicalBlock(scope: !4282, file: !4099, line: 100, column: 7)
!4291 = !DILocation(line: 101, column: 7, scope: !4290)
!4292 = !DILocation(line: 101, column: 18, scope: !4293)
!4293 = !DILexicalBlockFile(scope: !4290, file: !4099, discriminator: 1)
!4294 = !DILocation(line: 95, column: 9, scope: !4282)
!4295 = !DILocation(line: 101, column: 16, scope: !4293)
!4296 = !DILocation(line: 100, column: 7, scope: !4297)
!4297 = !DILexicalBlockFile(scope: !4282, file: !4099, discriminator: 1)
!4298 = !DILocation(line: 102, column: 5, scope: !4290)
!4299 = !DILocation(line: 103, column: 3, scope: !4282)
!4300 = distinct !DISubprogram(name: "xmemdup", scope: !4099, file: !4099, line: 111, type: !4301, isLocal: false, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: true, unit: !705, variables: !4303)
!4301 = !DISubroutineType(types: !4302)
!4302 = !{!41, !45, !42}
!4303 = !{!4304, !4305}
!4304 = !DILocalVariable(name: "p", arg: 1, scope: !4300, file: !4099, line: 111, type: !45)
!4305 = !DILocalVariable(name: "s", arg: 2, scope: !4300, file: !4099, line: 111, type: !42)
!4306 = !DILocation(line: 111, column: 22, scope: !4300)
!4307 = !DILocation(line: 111, column: 32, scope: !4300)
!4308 = !DILocation(line: 39, column: 17, scope: !4098, inlinedAt: !4309)
!4309 = distinct !DILocation(line: 113, column: 18, scope: !4300)
!4310 = !DILocation(line: 41, column: 13, scope: !4098, inlinedAt: !4309)
!4311 = !DILocation(line: 41, column: 9, scope: !4098, inlinedAt: !4309)
!4312 = !DILocation(line: 42, column: 8, scope: !4109, inlinedAt: !4309)
!4313 = !DILocation(line: 42, column: 15, scope: !4111, inlinedAt: !4309)
!4314 = !DILocation(line: 42, column: 10, scope: !4109, inlinedAt: !4309)
!4315 = !DILocation(line: 43, column: 5, scope: !4109, inlinedAt: !4309)
!4316 = !DILocation(line: 113, column: 10, scope: !4300)
!4317 = !DILocation(line: 113, column: 3, scope: !4300)
!4318 = distinct !DISubprogram(name: "xstrdup", scope: !4099, file: !4099, line: 119, type: !1660, isLocal: false, isDefinition: true, scopeLine: 120, flags: DIFlagPrototyped, isOptimized: true, unit: !705, variables: !4319)
!4319 = !{!4320}
!4320 = !DILocalVariable(name: "string", arg: 1, scope: !4318, file: !4099, line: 119, type: !50)
!4321 = !DILocation(line: 119, column: 22, scope: !4318)
!4322 = !DILocation(line: 121, column: 27, scope: !4318)
!4323 = !DILocation(line: 121, column: 43, scope: !4318)
!4324 = !DILocation(line: 111, column: 22, scope: !4300, inlinedAt: !4325)
!4325 = distinct !DILocation(line: 121, column: 10, scope: !4326)
!4326 = !DILexicalBlockFile(scope: !4318, file: !4099, discriminator: 1)
!4327 = !DILocation(line: 111, column: 32, scope: !4300, inlinedAt: !4325)
!4328 = !DILocation(line: 39, column: 17, scope: !4098, inlinedAt: !4329)
!4329 = distinct !DILocation(line: 113, column: 18, scope: !4300, inlinedAt: !4325)
!4330 = !DILocation(line: 41, column: 13, scope: !4098, inlinedAt: !4329)
!4331 = !DILocation(line: 41, column: 9, scope: !4098, inlinedAt: !4329)
!4332 = !DILocation(line: 42, column: 8, scope: !4109, inlinedAt: !4329)
!4333 = !DILocation(line: 42, column: 15, scope: !4111, inlinedAt: !4329)
!4334 = !DILocation(line: 42, column: 10, scope: !4109, inlinedAt: !4329)
!4335 = !DILocation(line: 43, column: 5, scope: !4109, inlinedAt: !4329)
!4336 = !DILocation(line: 113, column: 10, scope: !4300, inlinedAt: !4325)
!4337 = !DILocation(line: 121, column: 3, scope: !4318)
!4338 = distinct !DISubprogram(name: "xalloc_die", scope: !4339, file: !4339, line: 32, type: !1033, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !722, variables: !214)
!4339 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4340 = !DILocation(line: 34, column: 10, scope: !4338)
!4341 = !DILocation(line: 34, column: 33, scope: !4338)
!4342 = !DILocation(line: 34, column: 3, scope: !4343)
!4343 = !DILexicalBlockFile(scope: !4338, file: !4339, discriminator: 1)
!4344 = !DILocation(line: 40, column: 3, scope: !4338)
!4345 = distinct !DISubprogram(name: "rpl_calloc", scope: !4346, file: !4346, line: 42, type: !4085, isLocal: false, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: true, unit: !724, variables: !4347)
!4346 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4347 = !{!4348, !4349, !4350, !4351}
!4348 = !DILocalVariable(name: "n", arg: 1, scope: !4345, file: !4346, line: 42, type: !42)
!4349 = !DILocalVariable(name: "s", arg: 2, scope: !4345, file: !4346, line: 42, type: !42)
!4350 = !DILocalVariable(name: "result", scope: !4345, file: !4346, line: 44, type: !41)
!4351 = !DILocalVariable(name: "bytes", scope: !4352, file: !4346, line: 56, type: !42)
!4352 = distinct !DILexicalBlock(scope: !4353, file: !4346, line: 53, column: 5)
!4353 = distinct !DILexicalBlock(scope: !4345, file: !4346, line: 47, column: 7)
!4354 = !DILocation(line: 42, column: 20, scope: !4345)
!4355 = !DILocation(line: 42, column: 30, scope: !4345)
!4356 = !DILocation(line: 47, column: 9, scope: !4353)
!4357 = !DILocation(line: 47, column: 19, scope: !4358)
!4358 = !DILexicalBlockFile(scope: !4353, file: !4346, discriminator: 1)
!4359 = !DILocation(line: 47, column: 14, scope: !4353)
!4360 = !DILocation(line: 56, column: 24, scope: !4352)
!4361 = !DILocation(line: 56, column: 14, scope: !4352)
!4362 = !DILocation(line: 57, column: 17, scope: !4363)
!4363 = distinct !DILexicalBlock(scope: !4352, file: !4346, line: 57, column: 11)
!4364 = !DILocation(line: 57, column: 21, scope: !4363)
!4365 = !DILocation(line: 57, column: 11, scope: !4352)
!4366 = !DILocation(line: 59, column: 11, scope: !4367)
!4367 = distinct !DILexicalBlock(scope: !4363, file: !4346, line: 58, column: 9)
!4368 = !DILocation(line: 59, column: 17, scope: !4367)
!4369 = !DILocation(line: 65, column: 12, scope: !4345)
!4370 = !DILocation(line: 44, column: 9, scope: !4345)
!4371 = !DILocation(line: 72, column: 3, scope: !4345)
!4372 = !DILocation(line: 73, column: 1, scope: !4345)
!4373 = distinct !DISubprogram(name: "rpl_fclose", scope: !4374, file: !4374, line: 56, type: !4375, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !726, variables: !4417)
!4374 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4375 = !DISubroutineType(types: !4376)
!4376 = !{!52, !4377}
!4377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4378, size: 64)
!4378 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !852, line: 49, baseType: !4379)
!4379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !854, line: 241, size: 1728, elements: !4380)
!4380 = !{!4381, !4382, !4383, !4384, !4385, !4386, !4387, !4388, !4389, !4390, !4391, !4392, !4393, !4401, !4402, !4403, !4404, !4405, !4406, !4407, !4408, !4409, !4410, !4411, !4412, !4413, !4414, !4415, !4416}
!4381 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4379, file: !854, line: 242, baseType: !52, size: 32)
!4382 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4379, file: !854, line: 247, baseType: !39, size: 64, offset: 64)
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4379, file: !854, line: 248, baseType: !39, size: 64, offset: 128)
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4379, file: !854, line: 249, baseType: !39, size: 64, offset: 192)
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4379, file: !854, line: 250, baseType: !39, size: 64, offset: 256)
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4379, file: !854, line: 251, baseType: !39, size: 64, offset: 320)
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4379, file: !854, line: 252, baseType: !39, size: 64, offset: 384)
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4379, file: !854, line: 253, baseType: !39, size: 64, offset: 448)
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4379, file: !854, line: 254, baseType: !39, size: 64, offset: 512)
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4379, file: !854, line: 256, baseType: !39, size: 64, offset: 576)
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4379, file: !854, line: 257, baseType: !39, size: 64, offset: 640)
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4379, file: !854, line: 258, baseType: !39, size: 64, offset: 704)
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4379, file: !854, line: 260, baseType: !4394, size: 64, offset: 768)
!4394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4395, size: 64)
!4395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !854, line: 156, size: 192, elements: !4396)
!4396 = !{!4397, !4398, !4400}
!4397 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4395, file: !854, line: 157, baseType: !4394, size: 64)
!4398 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4395, file: !854, line: 158, baseType: !4399, size: 64, offset: 64)
!4399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4379, size: 64)
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4395, file: !854, line: 162, baseType: !52, size: 32, offset: 128)
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4379, file: !854, line: 262, baseType: !4399, size: 64, offset: 832)
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4379, file: !854, line: 264, baseType: !52, size: 32, offset: 896)
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4379, file: !854, line: 268, baseType: !52, size: 32, offset: 928)
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4379, file: !854, line: 270, baseType: !880, size: 64, offset: 960)
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4379, file: !854, line: 274, baseType: !53, size: 16, offset: 1024)
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4379, file: !854, line: 275, baseType: !883, size: 8, offset: 1040)
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4379, file: !854, line: 276, baseType: !885, size: 8, offset: 1048)
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4379, file: !854, line: 280, baseType: !889, size: 64, offset: 1088)
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4379, file: !854, line: 289, baseType: !892, size: 64, offset: 1152)
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4379, file: !854, line: 297, baseType: !41, size: 64, offset: 1216)
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4379, file: !854, line: 298, baseType: !41, size: 64, offset: 1280)
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4379, file: !854, line: 299, baseType: !41, size: 64, offset: 1344)
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4379, file: !854, line: 300, baseType: !41, size: 64, offset: 1408)
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4379, file: !854, line: 302, baseType: !42, size: 64, offset: 1472)
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4379, file: !854, line: 303, baseType: !52, size: 32, offset: 1536)
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4379, file: !854, line: 305, baseType: !173, size: 160, offset: 1568)
!4417 = !{!4418, !4419, !4420, !4421}
!4418 = !DILocalVariable(name: "fp", arg: 1, scope: !4373, file: !4374, line: 56, type: !4377)
!4419 = !DILocalVariable(name: "saved_errno", scope: !4373, file: !4374, line: 58, type: !52)
!4420 = !DILocalVariable(name: "fd", scope: !4373, file: !4374, line: 59, type: !52)
!4421 = !DILocalVariable(name: "result", scope: !4373, file: !4374, line: 60, type: !52)
!4422 = !DILocation(line: 56, column: 19, scope: !4373)
!4423 = !DILocation(line: 58, column: 7, scope: !4373)
!4424 = !DILocation(line: 60, column: 7, scope: !4373)
!4425 = !DILocation(line: 63, column: 8, scope: !4373)
!4426 = !DILocation(line: 59, column: 7, scope: !4373)
!4427 = !DILocation(line: 64, column: 10, scope: !4428)
!4428 = distinct !DILexicalBlock(scope: !4373, file: !4374, line: 64, column: 7)
!4429 = !DILocation(line: 64, column: 7, scope: !4373)
!4430 = !DILocation(line: 65, column: 12, scope: !4428)
!4431 = !DILocation(line: 65, column: 5, scope: !4428)
!4432 = !DILocation(line: 70, column: 9, scope: !4433)
!4433 = distinct !DILexicalBlock(scope: !4373, file: !4374, line: 70, column: 7)
!4434 = !DILocation(line: 70, column: 23, scope: !4433)
!4435 = !DILocation(line: 70, column: 33, scope: !4436)
!4436 = !DILexicalBlockFile(scope: !4433, file: !4374, discriminator: 1)
!4437 = !DILocation(line: 70, column: 26, scope: !4438)
!4438 = !DILexicalBlockFile(scope: !4433, file: !4374, discriminator: 3)
!4439 = !DILocation(line: 70, column: 59, scope: !4436)
!4440 = !DILocation(line: 71, column: 7, scope: !4433)
!4441 = !DILocation(line: 71, column: 10, scope: !4436)
!4442 = !DILocation(line: 70, column: 7, scope: !4443)
!4443 = !DILexicalBlockFile(scope: !4373, file: !4374, discriminator: 2)
!4444 = !DILocation(line: 98, column: 12, scope: !4373)
!4445 = !DILocation(line: 103, column: 7, scope: !4373)
!4446 = !DILocation(line: 72, column: 19, scope: !4433)
!4447 = !DILocation(line: 103, column: 19, scope: !4448)
!4448 = distinct !DILexicalBlock(scope: !4373, file: !4374, line: 103, column: 7)
!4449 = !DILocation(line: 105, column: 13, scope: !4450)
!4450 = distinct !DILexicalBlock(scope: !4448, file: !4374, line: 104, column: 5)
!4451 = !DILocation(line: 107, column: 5, scope: !4450)
!4452 = !DILocation(line: 110, column: 1, scope: !4373)
!4453 = distinct !DISubprogram(name: "rpl_fflush", scope: !4454, file: !4454, line: 127, type: !4455, isLocal: false, isDefinition: true, scopeLine: 128, flags: DIFlagPrototyped, isOptimized: true, unit: !728, variables: !4497)
!4454 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4455 = !DISubroutineType(types: !4456)
!4456 = !{!52, !4457}
!4457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4458, size: 64)
!4458 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !852, line: 49, baseType: !4459)
!4459 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !854, line: 241, size: 1728, elements: !4460)
!4460 = !{!4461, !4462, !4463, !4464, !4465, !4466, !4467, !4468, !4469, !4470, !4471, !4472, !4473, !4481, !4482, !4483, !4484, !4485, !4486, !4487, !4488, !4489, !4490, !4491, !4492, !4493, !4494, !4495, !4496}
!4461 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4459, file: !854, line: 242, baseType: !52, size: 32)
!4462 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4459, file: !854, line: 247, baseType: !39, size: 64, offset: 64)
!4463 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4459, file: !854, line: 248, baseType: !39, size: 64, offset: 128)
!4464 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4459, file: !854, line: 249, baseType: !39, size: 64, offset: 192)
!4465 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4459, file: !854, line: 250, baseType: !39, size: 64, offset: 256)
!4466 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4459, file: !854, line: 251, baseType: !39, size: 64, offset: 320)
!4467 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4459, file: !854, line: 252, baseType: !39, size: 64, offset: 384)
!4468 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4459, file: !854, line: 253, baseType: !39, size: 64, offset: 448)
!4469 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4459, file: !854, line: 254, baseType: !39, size: 64, offset: 512)
!4470 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4459, file: !854, line: 256, baseType: !39, size: 64, offset: 576)
!4471 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4459, file: !854, line: 257, baseType: !39, size: 64, offset: 640)
!4472 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4459, file: !854, line: 258, baseType: !39, size: 64, offset: 704)
!4473 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4459, file: !854, line: 260, baseType: !4474, size: 64, offset: 768)
!4474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4475, size: 64)
!4475 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !854, line: 156, size: 192, elements: !4476)
!4476 = !{!4477, !4478, !4480}
!4477 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4475, file: !854, line: 157, baseType: !4474, size: 64)
!4478 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4475, file: !854, line: 158, baseType: !4479, size: 64, offset: 64)
!4479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4459, size: 64)
!4480 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4475, file: !854, line: 162, baseType: !52, size: 32, offset: 128)
!4481 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4459, file: !854, line: 262, baseType: !4479, size: 64, offset: 832)
!4482 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4459, file: !854, line: 264, baseType: !52, size: 32, offset: 896)
!4483 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4459, file: !854, line: 268, baseType: !52, size: 32, offset: 928)
!4484 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4459, file: !854, line: 270, baseType: !880, size: 64, offset: 960)
!4485 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4459, file: !854, line: 274, baseType: !53, size: 16, offset: 1024)
!4486 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4459, file: !854, line: 275, baseType: !883, size: 8, offset: 1040)
!4487 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4459, file: !854, line: 276, baseType: !885, size: 8, offset: 1048)
!4488 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4459, file: !854, line: 280, baseType: !889, size: 64, offset: 1088)
!4489 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4459, file: !854, line: 289, baseType: !892, size: 64, offset: 1152)
!4490 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4459, file: !854, line: 297, baseType: !41, size: 64, offset: 1216)
!4491 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4459, file: !854, line: 298, baseType: !41, size: 64, offset: 1280)
!4492 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4459, file: !854, line: 299, baseType: !41, size: 64, offset: 1344)
!4493 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4459, file: !854, line: 300, baseType: !41, size: 64, offset: 1408)
!4494 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4459, file: !854, line: 302, baseType: !42, size: 64, offset: 1472)
!4495 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4459, file: !854, line: 303, baseType: !52, size: 32, offset: 1536)
!4496 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4459, file: !854, line: 305, baseType: !173, size: 160, offset: 1568)
!4497 = !{!4498}
!4498 = !DILocalVariable(name: "stream", arg: 1, scope: !4453, file: !4454, line: 127, type: !4457)
!4499 = !DILocation(line: 127, column: 19, scope: !4453)
!4500 = !DILocation(line: 148, column: 14, scope: !4501)
!4501 = distinct !DILexicalBlock(scope: !4453, file: !4454, line: 148, column: 7)
!4502 = !DILocation(line: 148, column: 22, scope: !4501)
!4503 = !DILocation(line: 148, column: 27, scope: !4504)
!4504 = !DILexicalBlockFile(scope: !4501, file: !4454, discriminator: 1)
!4505 = !DILocation(line: 148, column: 7, scope: !4506)
!4506 = !DILexicalBlockFile(scope: !4453, file: !4454, discriminator: 1)
!4507 = !DILocation(line: 149, column: 12, scope: !4501)
!4508 = !DILocation(line: 149, column: 5, scope: !4501)
!4509 = !DILocalVariable(name: "fp", arg: 1, scope: !4510, file: !4454, line: 40, type: !4457)
!4510 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !4454, file: !4454, line: 40, type: !4511, isLocal: true, isDefinition: true, scopeLine: 41, flags: DIFlagPrototyped, isOptimized: true, unit: !728, variables: !4513)
!4511 = !DISubroutineType(types: !4512)
!4512 = !{null, !4457}
!4513 = !{!4509}
!4514 = !DILocation(line: 40, column: 48, scope: !4510, inlinedAt: !4515)
!4515 = distinct !DILocation(line: 153, column: 3, scope: !4453)
!4516 = !DILocation(line: 42, column: 11, scope: !4517, inlinedAt: !4515)
!4517 = distinct !DILexicalBlock(scope: !4510, file: !4454, line: 42, column: 7)
!4518 = !{!1068, !966, i64 0}
!4519 = !DILocation(line: 42, column: 18, scope: !4517, inlinedAt: !4515)
!4520 = !DILocation(line: 42, column: 7, scope: !4510, inlinedAt: !4515)
!4521 = !DILocation(line: 44, column: 5, scope: !4517, inlinedAt: !4515)
!4522 = !DILocation(line: 155, column: 10, scope: !4453)
!4523 = !DILocation(line: 155, column: 3, scope: !4453)
!4524 = !DILocation(line: 229, column: 1, scope: !4453)
!4525 = distinct !DISubprogram(name: "rpl_fseeko", scope: !4526, file: !4526, line: 28, type: !4527, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !730, variables: !4570)
!4526 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4527 = !DISubroutineType(types: !4528)
!4528 = !{!52, !4529, !4569, !52}
!4529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4530, size: 64)
!4530 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !852, line: 49, baseType: !4531)
!4531 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !854, line: 241, size: 1728, elements: !4532)
!4532 = !{!4533, !4534, !4535, !4536, !4537, !4538, !4539, !4540, !4541, !4542, !4543, !4544, !4545, !4553, !4554, !4555, !4556, !4557, !4558, !4559, !4560, !4561, !4562, !4563, !4564, !4565, !4566, !4567, !4568}
!4533 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4531, file: !854, line: 242, baseType: !52, size: 32)
!4534 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4531, file: !854, line: 247, baseType: !39, size: 64, offset: 64)
!4535 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4531, file: !854, line: 248, baseType: !39, size: 64, offset: 128)
!4536 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4531, file: !854, line: 249, baseType: !39, size: 64, offset: 192)
!4537 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4531, file: !854, line: 250, baseType: !39, size: 64, offset: 256)
!4538 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4531, file: !854, line: 251, baseType: !39, size: 64, offset: 320)
!4539 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4531, file: !854, line: 252, baseType: !39, size: 64, offset: 384)
!4540 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4531, file: !854, line: 253, baseType: !39, size: 64, offset: 448)
!4541 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4531, file: !854, line: 254, baseType: !39, size: 64, offset: 512)
!4542 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4531, file: !854, line: 256, baseType: !39, size: 64, offset: 576)
!4543 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4531, file: !854, line: 257, baseType: !39, size: 64, offset: 640)
!4544 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4531, file: !854, line: 258, baseType: !39, size: 64, offset: 704)
!4545 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4531, file: !854, line: 260, baseType: !4546, size: 64, offset: 768)
!4546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4547, size: 64)
!4547 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !854, line: 156, size: 192, elements: !4548)
!4548 = !{!4549, !4550, !4552}
!4549 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4547, file: !854, line: 157, baseType: !4546, size: 64)
!4550 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4547, file: !854, line: 158, baseType: !4551, size: 64, offset: 64)
!4551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4531, size: 64)
!4552 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4547, file: !854, line: 162, baseType: !52, size: 32, offset: 128)
!4553 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4531, file: !854, line: 262, baseType: !4551, size: 64, offset: 832)
!4554 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4531, file: !854, line: 264, baseType: !52, size: 32, offset: 896)
!4555 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4531, file: !854, line: 268, baseType: !52, size: 32, offset: 928)
!4556 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4531, file: !854, line: 270, baseType: !880, size: 64, offset: 960)
!4557 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4531, file: !854, line: 274, baseType: !53, size: 16, offset: 1024)
!4558 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4531, file: !854, line: 275, baseType: !883, size: 8, offset: 1040)
!4559 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4531, file: !854, line: 276, baseType: !885, size: 8, offset: 1048)
!4560 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4531, file: !854, line: 280, baseType: !889, size: 64, offset: 1088)
!4561 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4531, file: !854, line: 289, baseType: !892, size: 64, offset: 1152)
!4562 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4531, file: !854, line: 297, baseType: !41, size: 64, offset: 1216)
!4563 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4531, file: !854, line: 298, baseType: !41, size: 64, offset: 1280)
!4564 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4531, file: !854, line: 299, baseType: !41, size: 64, offset: 1344)
!4565 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4531, file: !854, line: 300, baseType: !41, size: 64, offset: 1408)
!4566 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4531, file: !854, line: 302, baseType: !42, size: 64, offset: 1472)
!4567 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4531, file: !854, line: 303, baseType: !52, size: 32, offset: 1536)
!4568 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4531, file: !854, line: 305, baseType: !173, size: 160, offset: 1568)
!4569 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !852, line: 91, baseType: !880)
!4570 = !{!4571, !4572, !4573, !4574}
!4571 = !DILocalVariable(name: "fp", arg: 1, scope: !4525, file: !4526, line: 28, type: !4529)
!4572 = !DILocalVariable(name: "offset", arg: 2, scope: !4525, file: !4526, line: 28, type: !4569)
!4573 = !DILocalVariable(name: "whence", arg: 3, scope: !4525, file: !4526, line: 28, type: !52)
!4574 = !DILocalVariable(name: "pos", scope: !4575, file: !4526, line: 116, type: !4569)
!4575 = distinct !DILexicalBlock(scope: !4576, file: !4526, line: 112, column: 5)
!4576 = distinct !DILexicalBlock(scope: !4525, file: !4526, line: 51, column: 7)
!4577 = !DILocation(line: 28, column: 15, scope: !4525)
!4578 = !DILocation(line: 28, column: 25, scope: !4525)
!4579 = !DILocation(line: 28, column: 37, scope: !4525)
!4580 = !DILocation(line: 51, column: 11, scope: !4576)
!4581 = !{!1068, !771, i64 16}
!4582 = !DILocation(line: 51, column: 31, scope: !4576)
!4583 = !{!1068, !771, i64 8}
!4584 = !DILocation(line: 51, column: 24, scope: !4576)
!4585 = !DILocation(line: 52, column: 7, scope: !4576)
!4586 = !DILocation(line: 52, column: 14, scope: !4587)
!4587 = !DILexicalBlockFile(scope: !4576, file: !4526, discriminator: 1)
!4588 = !DILocation(line: 52, column: 35, scope: !4587)
!4589 = !{!1068, !771, i64 32}
!4590 = !DILocation(line: 52, column: 28, scope: !4587)
!4591 = !DILocation(line: 53, column: 7, scope: !4576)
!4592 = !DILocation(line: 53, column: 14, scope: !4587)
!4593 = !{!1068, !771, i64 72}
!4594 = !DILocation(line: 53, column: 28, scope: !4587)
!4595 = !DILocation(line: 51, column: 7, scope: !4596)
!4596 = !DILexicalBlockFile(scope: !4525, file: !4526, discriminator: 1)
!4597 = !DILocation(line: 116, column: 26, scope: !4575)
!4598 = !DILocation(line: 116, column: 19, scope: !4599)
!4599 = !DILexicalBlockFile(scope: !4575, file: !4526, discriminator: 1)
!4600 = !DILocation(line: 116, column: 13, scope: !4575)
!4601 = !DILocation(line: 117, column: 15, scope: !4602)
!4602 = distinct !DILexicalBlock(scope: !4575, file: !4526, line: 117, column: 11)
!4603 = !DILocation(line: 117, column: 11, scope: !4575)
!4604 = !DILocation(line: 127, column: 11, scope: !4575)
!4605 = !DILocation(line: 127, column: 18, scope: !4575)
!4606 = !DILocation(line: 128, column: 11, scope: !4575)
!4607 = !DILocation(line: 128, column: 19, scope: !4575)
!4608 = !{!1068, !1006, i64 144}
!4609 = !DILocation(line: 159, column: 7, scope: !4575)
!4610 = !DILocation(line: 161, column: 10, scope: !4525)
!4611 = !DILocation(line: 161, column: 3, scope: !4525)
!4612 = !DILocation(line: 162, column: 1, scope: !4525)
!4613 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !4614, file: !4614, line: 334, type: !4615, isLocal: false, isDefinition: true, scopeLine: 335, flags: DIFlagPrototyped, isOptimized: true, unit: !732, variables: !4629)
!4614 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4615 = !DISubroutineType(types: !4616)
!4616 = !{!42, !4617, !50, !42, !4618}
!4617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2139, size: 64)
!4618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4619, size: 64)
!4619 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !2127, line: 107, baseType: !4620)
!4620 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !2127, line: 95, baseType: !4621)
!4621 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2127, line: 83, size: 64, elements: !4622)
!4622 = !{!4623, !4624}
!4623 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !4621, file: !2127, line: 85, baseType: !52, size: 32)
!4624 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !4621, file: !2127, line: 94, baseType: !4625, size: 32, offset: 32)
!4625 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4621, file: !2127, line: 86, size: 32, elements: !4626)
!4626 = !{!4627, !4628}
!4627 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !4625, file: !2127, line: 89, baseType: !244, size: 32)
!4628 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !4625, file: !2127, line: 93, baseType: !150, size: 32)
!4629 = !{!4630, !4631, !4632, !4633, !4634, !4635, !4636}
!4630 = !DILocalVariable(name: "pwc", arg: 1, scope: !4613, file: !4614, line: 334, type: !4617)
!4631 = !DILocalVariable(name: "s", arg: 2, scope: !4613, file: !4614, line: 334, type: !50)
!4632 = !DILocalVariable(name: "n", arg: 3, scope: !4613, file: !4614, line: 334, type: !42)
!4633 = !DILocalVariable(name: "ps", arg: 4, scope: !4613, file: !4614, line: 334, type: !4618)
!4634 = !DILocalVariable(name: "ret", scope: !4613, file: !4614, line: 336, type: !42)
!4635 = !DILocalVariable(name: "wc", scope: !4613, file: !4614, line: 337, type: !2139)
!4636 = !DILocalVariable(name: "uc", scope: !4637, file: !4614, line: 398, type: !49)
!4637 = distinct !DILexicalBlock(scope: !4638, file: !4614, line: 397, column: 5)
!4638 = distinct !DILexicalBlock(scope: !4613, file: !4614, line: 396, column: 7)
!4639 = !DILocation(line: 334, column: 23, scope: !4613)
!4640 = !DILocation(line: 334, column: 40, scope: !4613)
!4641 = !DILocation(line: 334, column: 50, scope: !4613)
!4642 = !DILocation(line: 334, column: 64, scope: !4613)
!4643 = !DILocation(line: 337, column: 3, scope: !4613)
!4644 = !DILocation(line: 353, column: 9, scope: !4645)
!4645 = distinct !DILexicalBlock(scope: !4613, file: !4614, line: 353, column: 7)
!4646 = !DILocation(line: 353, column: 7, scope: !4613)
!4647 = !DILocation(line: 388, column: 9, scope: !4613)
!4648 = !DILocation(line: 336, column: 10, scope: !4613)
!4649 = !DILocation(line: 396, column: 19, scope: !4638)
!4650 = !DILocation(line: 396, column: 31, scope: !4651)
!4651 = !DILexicalBlockFile(scope: !4638, file: !4614, discriminator: 1)
!4652 = !DILocation(line: 396, column: 26, scope: !4638)
!4653 = !DILocation(line: 396, column: 41, scope: !4654)
!4654 = !DILexicalBlockFile(scope: !4638, file: !4614, discriminator: 2)
!4655 = !DILocation(line: 396, column: 7, scope: !4656)
!4656 = !DILexicalBlockFile(scope: !4613, file: !4614, discriminator: 2)
!4657 = !DILocation(line: 398, column: 26, scope: !4637)
!4658 = !DILocation(line: 398, column: 21, scope: !4637)
!4659 = !DILocation(line: 399, column: 14, scope: !4637)
!4660 = !DILocation(line: 399, column: 12, scope: !4637)
!4661 = !DILocation(line: 405, column: 1, scope: !4613)
!4662 = distinct !DISubprogram(name: "extract_trimmed_name", scope: !4663, file: !4663, line: 45, type: !4664, isLocal: false, isDefinition: true, scopeLine: 46, flags: DIFlagPrototyped, isOptimized: true, unit: !735, variables: !4690)
!4663 = !DIFile(filename: "lib/readutmp.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4664 = !DISubroutineType(types: !4665)
!4665 = !{!39, !4666}
!4666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4667, size: 64)
!4667 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4668)
!4668 = !DIDerivedType(tag: DW_TAG_typedef, name: "STRUCT_UTMP", file: !20, line: 146, baseType: !4669)
!4669 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "utmpx", file: !139, line: 55, size: 3072, elements: !4670)
!4670 = !{!4671, !4672, !4673, !4674, !4675, !4676, !4677, !4682, !4683, !4688, !4689}
!4671 = !DIDerivedType(tag: DW_TAG_member, name: "ut_type", scope: !4669, file: !139, line: 57, baseType: !142, size: 16)
!4672 = !DIDerivedType(tag: DW_TAG_member, name: "ut_pid", scope: !4669, file: !139, line: 58, baseType: !144, size: 32, offset: 32)
!4673 = !DIDerivedType(tag: DW_TAG_member, name: "ut_line", scope: !4669, file: !139, line: 59, baseType: !146, size: 256, offset: 64)
!4674 = !DIDerivedType(tag: DW_TAG_member, name: "ut_id", scope: !4669, file: !139, line: 60, baseType: !150, size: 32, offset: 320)
!4675 = !DIDerivedType(tag: DW_TAG_member, name: "ut_user", scope: !4669, file: !139, line: 61, baseType: !146, size: 256, offset: 352)
!4676 = !DIDerivedType(tag: DW_TAG_member, name: "ut_host", scope: !4669, file: !139, line: 62, baseType: !155, size: 2048, offset: 608)
!4677 = !DIDerivedType(tag: DW_TAG_member, name: "ut_exit", scope: !4669, file: !139, line: 63, baseType: !4678, size: 32, offset: 2656)
!4678 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__exit_status", file: !139, line: 42, size: 32, elements: !4679)
!4679 = !{!4680, !4681}
!4680 = !DIDerivedType(tag: DW_TAG_member, name: "e_termination", scope: !4678, file: !139, line: 45, baseType: !142, size: 16)
!4681 = !DIDerivedType(tag: DW_TAG_member, name: "e_exit", scope: !4678, file: !139, line: 46, baseType: !142, size: 16, offset: 16)
!4682 = !DIDerivedType(tag: DW_TAG_member, name: "ut_session", scope: !4669, file: !139, line: 70, baseType: !164, size: 32, offset: 2688)
!4683 = !DIDerivedType(tag: DW_TAG_member, name: "ut_tv", scope: !4669, file: !139, line: 75, baseType: !4684, size: 64, offset: 2720)
!4684 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4669, file: !139, line: 71, size: 64, elements: !4685)
!4685 = !{!4686, !4687}
!4686 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !4684, file: !139, line: 73, baseType: !164, size: 32)
!4687 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !4684, file: !139, line: 74, baseType: !164, size: 32, offset: 32)
!4688 = !DIDerivedType(tag: DW_TAG_member, name: "ut_addr_v6", scope: !4669, file: !139, line: 80, baseType: !171, size: 128, offset: 2784)
!4689 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !4669, file: !139, line: 81, baseType: !173, size: 160, offset: 2912)
!4690 = !{!4691, !4692, !4693}
!4691 = !DILocalVariable(name: "ut", arg: 1, scope: !4662, file: !4663, line: 45, type: !4666)
!4692 = !DILocalVariable(name: "p", scope: !4662, file: !4663, line: 47, type: !39)
!4693 = !DILocalVariable(name: "trimmed_name", scope: !4662, file: !4663, line: 47, type: !39)
!4694 = !DILocation(line: 45, column: 42, scope: !4662)
!4695 = !DILocation(line: 49, column: 18, scope: !4662)
!4696 = !DILocation(line: 47, column: 13, scope: !4662)
!4697 = !DILocation(line: 50, column: 26, scope: !4662)
!4698 = !DILocalVariable(name: "__dest", arg: 1, scope: !4699, file: !1188, line: 122, type: !1191)
!4699 = distinct !DISubprogram(name: "strncpy", scope: !1188, file: !1188, line: 122, type: !1337, isLocal: false, isDefinition: true, scopeLine: 124, flags: DIFlagPrototyped, isOptimized: true, unit: !735, variables: !4700)
!4700 = !{!4698, !4701, !4702}
!4701 = !DILocalVariable(name: "__src", arg: 2, scope: !4699, file: !1188, line: 122, type: !1192)
!4702 = !DILocalVariable(name: "__len", arg: 3, scope: !4699, file: !1188, line: 122, type: !42)
!4703 = !DILocation(line: 122, column: 1, scope: !4699, inlinedAt: !4704)
!4704 = distinct !DILocation(line: 50, column: 3, scope: !4662)
!4705 = !DILocation(line: 125, column: 57, scope: !4699, inlinedAt: !4704)
!4706 = !DILocation(line: 125, column: 10, scope: !4699, inlinedAt: !4704)
!4707 = !DILocation(line: 54, column: 3, scope: !4662)
!4708 = !DILocation(line: 54, column: 39, scope: !4662)
!4709 = !DILocation(line: 55, column: 27, scope: !4710)
!4710 = distinct !DILexicalBlock(scope: !4662, file: !4663, line: 55, column: 3)
!4711 = !DILocation(line: 47, column: 9, scope: !4662)
!4712 = !DILocation(line: 56, column: 21, scope: !4713)
!4713 = distinct !DILexicalBlock(scope: !4710, file: !4663, line: 55, column: 3)
!4714 = !DILocation(line: 56, column: 25, scope: !4713)
!4715 = !DILocation(line: 55, column: 25, scope: !4710)
!4716 = !DILocation(line: 56, column: 28, scope: !4717)
!4717 = !DILexicalBlockFile(scope: !4713, file: !4663, discriminator: 1)
!4718 = !DILocation(line: 56, column: 34, scope: !4717)
!4719 = !DILocation(line: 55, column: 3, scope: !4720)
!4720 = !DILexicalBlockFile(scope: !4710, file: !4663, discriminator: 1)
!4721 = !DILocation(line: 57, column: 13, scope: !4713)
!4722 = distinct !{!4722, !4723, !4724}
!4723 = !DILocation(line: 55, column: 3, scope: !4710)
!4724 = !DILocation(line: 58, column: 5, scope: !4710)
!4725 = !DILocation(line: 59, column: 3, scope: !4662)
!4726 = distinct !DISubprogram(name: "read_utmp", scope: !4663, file: !4663, line: 88, type: !4727, isLocal: false, isDefinition: true, scopeLine: 90, flags: DIFlagPrototyped, isOptimized: true, unit: !735, variables: !4731)
!4727 = !DISubroutineType(types: !4728)
!4728 = !{!52, !50, !713, !4729, !52}
!4729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4730, size: 64)
!4730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4668, size: 64)
!4731 = !{!4732, !4733, !4734, !4735, !4736, !4737, !4738, !4739}
!4732 = !DILocalVariable(name: "file", arg: 1, scope: !4726, file: !4663, line: 88, type: !50)
!4733 = !DILocalVariable(name: "n_entries", arg: 2, scope: !4726, file: !4663, line: 88, type: !713)
!4734 = !DILocalVariable(name: "utmp_buf", arg: 3, scope: !4726, file: !4663, line: 88, type: !4729)
!4735 = !DILocalVariable(name: "options", arg: 4, scope: !4726, file: !4663, line: 89, type: !52)
!4736 = !DILocalVariable(name: "n_read", scope: !4726, file: !4663, line: 91, type: !42)
!4737 = !DILocalVariable(name: "n_alloc", scope: !4726, file: !4663, line: 92, type: !42)
!4738 = !DILocalVariable(name: "utmp", scope: !4726, file: !4663, line: 93, type: !4730)
!4739 = !DILocalVariable(name: "u", scope: !4726, file: !4663, line: 94, type: !4730)
!4740 = !DILocation(line: 88, column: 24, scope: !4726)
!4741 = !DILocation(line: 88, column: 38, scope: !4726)
!4742 = !DILocation(line: 88, column: 63, scope: !4726)
!4743 = !DILocation(line: 89, column: 16, scope: !4726)
!4744 = !DILocation(line: 91, column: 10, scope: !4726)
!4745 = !DILocation(line: 92, column: 10, scope: !4726)
!4746 = !DILocation(line: 93, column: 16, scope: !4726)
!4747 = !DILocation(line: 100, column: 3, scope: !4726)
!4748 = !DILocation(line: 102, column: 3, scope: !4726)
!4749 = !DILocation(line: 104, column: 15, scope: !4750)
!4750 = !DILexicalBlockFile(scope: !4726, file: !4663, discriminator: 1)
!4751 = !DILocation(line: 94, column: 16, scope: !4726)
!4752 = !DILocation(line: 104, column: 32, scope: !4750)
!4753 = !DILocation(line: 104, column: 3, scope: !4750)
!4754 = !DILocalVariable(name: "u", arg: 1, scope: !4755, file: !4663, line: 65, type: !4666)
!4755 = distinct !DISubprogram(name: "desirable_utmp_entry", scope: !4663, file: !4663, line: 65, type: !4756, isLocal: true, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: true, unit: !735, variables: !4758)
!4756 = !DISubroutineType(types: !4757)
!4757 = !{!87, !4666, !52}
!4758 = !{!4754, !4759, !4760}
!4759 = !DILocalVariable(name: "options", arg: 2, scope: !4755, file: !4663, line: 65, type: !52)
!4760 = !DILocalVariable(name: "user_proc", scope: !4755, file: !4663, line: 67, type: !87)
!4761 = !DILocation(line: 65, column: 42, scope: !4755, inlinedAt: !4762)
!4762 = distinct !DILocation(line: 105, column: 9, scope: !4763)
!4763 = distinct !DILexicalBlock(scope: !4726, file: !4663, line: 105, column: 9)
!4764 = !DILocation(line: 65, column: 49, scope: !4755, inlinedAt: !4762)
!4765 = !DILocation(line: 67, column: 20, scope: !4755, inlinedAt: !4762)
!4766 = !DILocation(line: 67, column: 20, scope: !4767, inlinedAt: !4762)
!4767 = !DILexicalBlockFile(scope: !4755, file: !4663, discriminator: 1)
!4768 = !DILocation(line: 68, column: 42, scope: !4769, inlinedAt: !4762)
!4769 = distinct !DILexicalBlock(scope: !4755, file: !4663, line: 68, column: 7)
!4770 = !DILocation(line: 71, column: 7, scope: !4771, inlinedAt: !4762)
!4771 = distinct !DILexicalBlock(scope: !4755, file: !4663, line: 70, column: 7)
!4772 = !DILocation(line: 72, column: 14, scope: !4773, inlinedAt: !4762)
!4773 = !DILexicalBlockFile(scope: !4771, file: !4663, discriminator: 1)
!4774 = !{!1084, !966, i64 4}
!4775 = !DILocation(line: 72, column: 12, scope: !4773, inlinedAt: !4762)
!4776 = !DILocation(line: 73, column: 7, scope: !4771, inlinedAt: !4762)
!4777 = !DILocation(line: 73, column: 11, scope: !4773, inlinedAt: !4762)
!4778 = !DILocation(line: 73, column: 32, scope: !4773, inlinedAt: !4762)
!4779 = !DILocation(line: 73, column: 36, scope: !4773, inlinedAt: !4762)
!4780 = !DILocation(line: 73, column: 39, scope: !4781, inlinedAt: !4762)
!4781 = !DILexicalBlockFile(scope: !4771, file: !4663, discriminator: 2)
!4782 = !DILocation(line: 73, column: 45, scope: !4781, inlinedAt: !4762)
!4783 = !DILocation(line: 70, column: 7, scope: !4767, inlinedAt: !4762)
!4784 = !DILocation(line: 107, column: 20, scope: !4785)
!4785 = distinct !DILexicalBlock(scope: !4786, file: !4663, line: 107, column: 13)
!4786 = distinct !DILexicalBlock(scope: !4763, file: !4663, line: 106, column: 7)
!4787 = !DILocation(line: 107, column: 13, scope: !4786)
!4788 = !DILocation(line: 180, column: 19, scope: !743, inlinedAt: !4789)
!4789 = distinct !DILocation(line: 108, column: 18, scope: !4785)
!4790 = !DILocation(line: 180, column: 41, scope: !743, inlinedAt: !4789)
!4791 = !DILocation(line: 182, column: 10, scope: !743, inlinedAt: !4789)
!4792 = !DILocation(line: 184, column: 9, scope: !4793, inlinedAt: !4789)
!4793 = distinct !DILexicalBlock(scope: !743, file: !709, line: 184, column: 7)
!4794 = !DILocation(line: 184, column: 7, scope: !743, inlinedAt: !4789)
!4795 = !DILocation(line: 186, column: 13, scope: !4796, inlinedAt: !4789)
!4796 = distinct !DILexicalBlock(scope: !4797, file: !709, line: 186, column: 11)
!4797 = distinct !DILexicalBlock(scope: !4793, file: !709, line: 185, column: 5)
!4798 = !DILocation(line: 186, column: 11, scope: !4797, inlinedAt: !4789)
!4799 = !DILocation(line: 205, column: 11, scope: !4800, inlinedAt: !4789)
!4800 = distinct !DILexicalBlock(scope: !4801, file: !709, line: 204, column: 11)
!4801 = distinct !DILexicalBlock(scope: !4793, file: !709, line: 199, column: 5)
!4802 = !DILocation(line: 204, column: 11, scope: !4801, inlinedAt: !4789)
!4803 = !DILocation(line: 206, column: 9, scope: !4800, inlinedAt: !4789)
!4804 = !DILocation(line: 207, column: 14, scope: !4801, inlinedAt: !4789)
!4805 = !DILocation(line: 207, column: 18, scope: !4801, inlinedAt: !4789)
!4806 = !DILocation(line: 207, column: 9, scope: !4801, inlinedAt: !4789)
!4807 = !DILocation(line: 211, column: 25, scope: !743, inlinedAt: !4789)
!4808 = !DILocation(line: 211, column: 10, scope: !743, inlinedAt: !4789)
!4809 = !DILocation(line: 108, column: 18, scope: !4785)
!4810 = !DILocation(line: 108, column: 11, scope: !4785)
!4811 = !DILocation(line: 110, column: 20, scope: !4786)
!4812 = !DILocation(line: 110, column: 9, scope: !4786)
!4813 = !DILocation(line: 110, column: 26, scope: !4786)
!4814 = !{i64 0, i64 2, !1632, i64 4, i64 4, !965, i64 8, i64 32, !1076, i64 40, i64 4, !1076, i64 44, i64 32, !1076, i64 76, i64 256, !1076, i64 332, i64 2, !1632, i64 334, i64 2, !1632, i64 336, i64 4, !965, i64 340, i64 4, !965, i64 344, i64 4, !965, i64 348, i64 16, !1076, i64 364, i64 20, !1076}
!4815 = distinct !{!4815, !4816, !4817}
!4816 = !DILocation(line: 104, column: 3, scope: !4726)
!4817 = !DILocation(line: 111, column: 7, scope: !4726)
!4818 = !DILocation(line: 113, column: 3, scope: !4726)
!4819 = !DILocation(line: 115, column: 14, scope: !4726)
!4820 = !DILocation(line: 116, column: 13, scope: !4726)
!4821 = !DILocation(line: 118, column: 3, scope: !4726)
!4822 = distinct !DISubprogram(name: "close_stream", scope: !4823, file: !4823, line: 56, type: !4824, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !750, variables: !4866)
!4823 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4824 = !DISubroutineType(types: !4825)
!4825 = !{!52, !4826}
!4826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4827, size: 64)
!4827 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !852, line: 49, baseType: !4828)
!4828 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !854, line: 241, size: 1728, elements: !4829)
!4829 = !{!4830, !4831, !4832, !4833, !4834, !4835, !4836, !4837, !4838, !4839, !4840, !4841, !4842, !4850, !4851, !4852, !4853, !4854, !4855, !4856, !4857, !4858, !4859, !4860, !4861, !4862, !4863, !4864, !4865}
!4830 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4828, file: !854, line: 242, baseType: !52, size: 32)
!4831 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4828, file: !854, line: 247, baseType: !39, size: 64, offset: 64)
!4832 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4828, file: !854, line: 248, baseType: !39, size: 64, offset: 128)
!4833 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4828, file: !854, line: 249, baseType: !39, size: 64, offset: 192)
!4834 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4828, file: !854, line: 250, baseType: !39, size: 64, offset: 256)
!4835 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4828, file: !854, line: 251, baseType: !39, size: 64, offset: 320)
!4836 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4828, file: !854, line: 252, baseType: !39, size: 64, offset: 384)
!4837 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4828, file: !854, line: 253, baseType: !39, size: 64, offset: 448)
!4838 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4828, file: !854, line: 254, baseType: !39, size: 64, offset: 512)
!4839 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4828, file: !854, line: 256, baseType: !39, size: 64, offset: 576)
!4840 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4828, file: !854, line: 257, baseType: !39, size: 64, offset: 640)
!4841 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4828, file: !854, line: 258, baseType: !39, size: 64, offset: 704)
!4842 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4828, file: !854, line: 260, baseType: !4843, size: 64, offset: 768)
!4843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4844, size: 64)
!4844 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !854, line: 156, size: 192, elements: !4845)
!4845 = !{!4846, !4847, !4849}
!4846 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4844, file: !854, line: 157, baseType: !4843, size: 64)
!4847 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4844, file: !854, line: 158, baseType: !4848, size: 64, offset: 64)
!4848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4828, size: 64)
!4849 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4844, file: !854, line: 162, baseType: !52, size: 32, offset: 128)
!4850 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4828, file: !854, line: 262, baseType: !4848, size: 64, offset: 832)
!4851 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4828, file: !854, line: 264, baseType: !52, size: 32, offset: 896)
!4852 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4828, file: !854, line: 268, baseType: !52, size: 32, offset: 928)
!4853 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4828, file: !854, line: 270, baseType: !880, size: 64, offset: 960)
!4854 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4828, file: !854, line: 274, baseType: !53, size: 16, offset: 1024)
!4855 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4828, file: !854, line: 275, baseType: !883, size: 8, offset: 1040)
!4856 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4828, file: !854, line: 276, baseType: !885, size: 8, offset: 1048)
!4857 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4828, file: !854, line: 280, baseType: !889, size: 64, offset: 1088)
!4858 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4828, file: !854, line: 289, baseType: !892, size: 64, offset: 1152)
!4859 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4828, file: !854, line: 297, baseType: !41, size: 64, offset: 1216)
!4860 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4828, file: !854, line: 298, baseType: !41, size: 64, offset: 1280)
!4861 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4828, file: !854, line: 299, baseType: !41, size: 64, offset: 1344)
!4862 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4828, file: !854, line: 300, baseType: !41, size: 64, offset: 1408)
!4863 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4828, file: !854, line: 302, baseType: !42, size: 64, offset: 1472)
!4864 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4828, file: !854, line: 303, baseType: !52, size: 32, offset: 1536)
!4865 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4828, file: !854, line: 305, baseType: !173, size: 160, offset: 1568)
!4866 = !{!4867, !4868, !4870, !4871}
!4867 = !DILocalVariable(name: "stream", arg: 1, scope: !4822, file: !4823, line: 56, type: !4826)
!4868 = !DILocalVariable(name: "some_pending", scope: !4822, file: !4823, line: 58, type: !4869)
!4869 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !87)
!4870 = !DILocalVariable(name: "prev_fail", scope: !4822, file: !4823, line: 59, type: !4869)
!4871 = !DILocalVariable(name: "fclose_fail", scope: !4822, file: !4823, line: 60, type: !4869)
!4872 = !DILocation(line: 56, column: 21, scope: !4822)
!4873 = !DILocation(line: 58, column: 30, scope: !4822)
!4874 = !DILocalVariable(name: "__stream", arg: 1, scope: !4875, file: !1060, line: 132, type: !4826)
!4875 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1060, file: !1060, line: 132, type: !4824, isLocal: false, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !750, variables: !4876)
!4876 = !{!4874}
!4877 = !DILocation(line: 132, column: 1, scope: !4875, inlinedAt: !4878)
!4878 = distinct !DILocation(line: 59, column: 27, scope: !4822)
!4879 = !DILocation(line: 134, column: 10, scope: !4875, inlinedAt: !4878)
!4880 = !DILocation(line: 59, column: 43, scope: !4822)
!4881 = !DILocation(line: 60, column: 29, scope: !4822)
!4882 = !DILocation(line: 60, column: 45, scope: !4822)
!4883 = !DILocation(line: 70, column: 17, scope: !4884)
!4884 = distinct !DILexicalBlock(scope: !4822, file: !4823, line: 70, column: 7)
!4885 = !DILocation(line: 70, column: 33, scope: !4886)
!4886 = !DILexicalBlockFile(scope: !4884, file: !4823, discriminator: 1)
!4887 = !DILocation(line: 70, column: 53, scope: !4888)
!4888 = !DILexicalBlockFile(scope: !4884, file: !4823, discriminator: 3)
!4889 = !DILocation(line: 70, column: 7, scope: !4890)
!4890 = !DILexicalBlockFile(scope: !4822, file: !4823, discriminator: 3)
!4891 = !DILocation(line: 72, column: 11, scope: !4892)
!4892 = distinct !DILexicalBlock(scope: !4884, file: !4823, line: 71, column: 5)
!4893 = !DILocation(line: 73, column: 9, scope: !4894)
!4894 = distinct !DILexicalBlock(scope: !4892, file: !4823, line: 72, column: 11)
!4895 = !DILocation(line: 73, column: 15, scope: !4894)
!4896 = !DILocation(line: 78, column: 1, scope: !4822)
!4897 = distinct !DISubprogram(name: "locale_charset", scope: !686, file: !686, line: 393, type: !1728, isLocal: false, isDefinition: true, scopeLine: 394, flags: DIFlagPrototyped, isOptimized: true, unit: !342, variables: !4898)
!4898 = !{!4899, !4900, !4901, !4906}
!4899 = !DILocalVariable(name: "codeset", scope: !4897, file: !686, line: 395, type: !50)
!4900 = !DILocalVariable(name: "aliases", scope: !4897, file: !686, line: 396, type: !50)
!4901 = !DILocalVariable(name: "__s1_len", scope: !4902, file: !686, line: 592, type: !42)
!4902 = distinct !DILexicalBlock(scope: !4903, file: !686, line: 592, column: 9)
!4903 = distinct !DILexicalBlock(scope: !4904, file: !686, line: 592, column: 9)
!4904 = distinct !DILexicalBlock(scope: !4905, file: !686, line: 589, column: 3)
!4905 = distinct !DILexicalBlock(scope: !4897, file: !686, line: 589, column: 3)
!4906 = !DILocalVariable(name: "__s2_len", scope: !4902, file: !686, line: 592, type: !42)
!4907 = !DILocalVariable(name: "buf1", scope: !4908, file: !686, line: 196, type: !4975)
!4908 = distinct !DILexicalBlock(scope: !4909, file: !686, line: 194, column: 21)
!4909 = distinct !DILexicalBlock(scope: !4910, file: !686, line: 193, column: 19)
!4910 = distinct !DILexicalBlock(scope: !4911, file: !686, line: 193, column: 19)
!4911 = distinct !DILexicalBlock(scope: !4912, file: !686, line: 188, column: 17)
!4912 = distinct !DILexicalBlock(scope: !4913, file: !686, line: 181, column: 19)
!4913 = distinct !DILexicalBlock(scope: !4914, file: !686, line: 177, column: 13)
!4914 = distinct !DILexicalBlock(scope: !4915, file: !686, line: 173, column: 15)
!4915 = distinct !DILexicalBlock(scope: !4916, file: !686, line: 161, column: 9)
!4916 = distinct !DILexicalBlock(scope: !4917, file: !686, line: 157, column: 11)
!4917 = distinct !DILexicalBlock(scope: !4918, file: !686, line: 130, column: 5)
!4918 = distinct !DILexicalBlock(scope: !4919, file: !686, line: 129, column: 7)
!4919 = distinct !DISubprogram(name: "get_charset_aliases", scope: !686, file: !686, line: 124, type: !1728, isLocal: true, isDefinition: true, scopeLine: 125, flags: DIFlagPrototyped, isOptimized: true, unit: !342, variables: !4920)
!4920 = !{!4921, !4922, !4923, !4924, !4925, !4927, !4928, !4929, !4930, !4971, !4972, !4973, !4907, !4974, !4978, !4979, !4980}
!4921 = !DILocalVariable(name: "cp", scope: !4919, file: !686, line: 126, type: !50)
!4922 = !DILocalVariable(name: "dir", scope: !4917, file: !686, line: 132, type: !50)
!4923 = !DILocalVariable(name: "base", scope: !4917, file: !686, line: 133, type: !50)
!4924 = !DILocalVariable(name: "file_name", scope: !4917, file: !686, line: 134, type: !39)
!4925 = !DILocalVariable(name: "dir_len", scope: !4926, file: !686, line: 144, type: !42)
!4926 = distinct !DILexicalBlock(scope: !4917, file: !686, line: 143, column: 7)
!4927 = !DILocalVariable(name: "base_len", scope: !4926, file: !686, line: 145, type: !42)
!4928 = !DILocalVariable(name: "add_slash", scope: !4926, file: !686, line: 146, type: !52)
!4929 = !DILocalVariable(name: "fd", scope: !4915, file: !686, line: 162, type: !52)
!4930 = !DILocalVariable(name: "fp", scope: !4913, file: !686, line: 178, type: !4931)
!4931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4932, size: 64)
!4932 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !852, line: 49, baseType: !4933)
!4933 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !854, line: 241, size: 1728, elements: !4934)
!4934 = !{!4935, !4936, !4937, !4938, !4939, !4940, !4941, !4942, !4943, !4944, !4945, !4946, !4947, !4955, !4956, !4957, !4958, !4959, !4960, !4961, !4962, !4963, !4964, !4965, !4966, !4967, !4968, !4969, !4970}
!4935 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4933, file: !854, line: 242, baseType: !52, size: 32)
!4936 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4933, file: !854, line: 247, baseType: !39, size: 64, offset: 64)
!4937 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4933, file: !854, line: 248, baseType: !39, size: 64, offset: 128)
!4938 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4933, file: !854, line: 249, baseType: !39, size: 64, offset: 192)
!4939 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4933, file: !854, line: 250, baseType: !39, size: 64, offset: 256)
!4940 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4933, file: !854, line: 251, baseType: !39, size: 64, offset: 320)
!4941 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4933, file: !854, line: 252, baseType: !39, size: 64, offset: 384)
!4942 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4933, file: !854, line: 253, baseType: !39, size: 64, offset: 448)
!4943 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4933, file: !854, line: 254, baseType: !39, size: 64, offset: 512)
!4944 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4933, file: !854, line: 256, baseType: !39, size: 64, offset: 576)
!4945 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4933, file: !854, line: 257, baseType: !39, size: 64, offset: 640)
!4946 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4933, file: !854, line: 258, baseType: !39, size: 64, offset: 704)
!4947 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4933, file: !854, line: 260, baseType: !4948, size: 64, offset: 768)
!4948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4949, size: 64)
!4949 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !854, line: 156, size: 192, elements: !4950)
!4950 = !{!4951, !4952, !4954}
!4951 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4949, file: !854, line: 157, baseType: !4948, size: 64)
!4952 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4949, file: !854, line: 158, baseType: !4953, size: 64, offset: 64)
!4953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4933, size: 64)
!4954 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4949, file: !854, line: 162, baseType: !52, size: 32, offset: 128)
!4955 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4933, file: !854, line: 262, baseType: !4953, size: 64, offset: 832)
!4956 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4933, file: !854, line: 264, baseType: !52, size: 32, offset: 896)
!4957 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4933, file: !854, line: 268, baseType: !52, size: 32, offset: 928)
!4958 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4933, file: !854, line: 270, baseType: !880, size: 64, offset: 960)
!4959 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4933, file: !854, line: 274, baseType: !53, size: 16, offset: 1024)
!4960 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4933, file: !854, line: 275, baseType: !883, size: 8, offset: 1040)
!4961 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4933, file: !854, line: 276, baseType: !885, size: 8, offset: 1048)
!4962 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4933, file: !854, line: 280, baseType: !889, size: 64, offset: 1088)
!4963 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4933, file: !854, line: 289, baseType: !892, size: 64, offset: 1152)
!4964 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4933, file: !854, line: 297, baseType: !41, size: 64, offset: 1216)
!4965 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4933, file: !854, line: 298, baseType: !41, size: 64, offset: 1280)
!4966 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4933, file: !854, line: 299, baseType: !41, size: 64, offset: 1344)
!4967 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4933, file: !854, line: 300, baseType: !41, size: 64, offset: 1408)
!4968 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4933, file: !854, line: 302, baseType: !42, size: 64, offset: 1472)
!4969 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4933, file: !854, line: 303, baseType: !52, size: 32, offset: 1536)
!4970 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4933, file: !854, line: 305, baseType: !173, size: 160, offset: 1568)
!4971 = !DILocalVariable(name: "res_ptr", scope: !4911, file: !686, line: 190, type: !39)
!4972 = !DILocalVariable(name: "res_size", scope: !4911, file: !686, line: 191, type: !42)
!4973 = !DILocalVariable(name: "c", scope: !4908, file: !686, line: 195, type: !52)
!4974 = !DILocalVariable(name: "buf2", scope: !4908, file: !686, line: 197, type: !4975)
!4975 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 408, elements: !4976)
!4976 = !{!4977}
!4977 = !DISubrange(count: 51)
!4978 = !DILocalVariable(name: "l1", scope: !4908, file: !686, line: 198, type: !42)
!4979 = !DILocalVariable(name: "l2", scope: !4908, file: !686, line: 198, type: !42)
!4980 = !DILocalVariable(name: "old_res_ptr", scope: !4908, file: !686, line: 199, type: !39)
!4981 = !DILocation(line: 196, column: 28, scope: !4908, inlinedAt: !4982)
!4982 = distinct !DILocation(line: 589, column: 18, scope: !4905)
!4983 = !DILocation(line: 197, column: 28, scope: !4908, inlinedAt: !4982)
!4984 = !DILocation(line: 403, column: 13, scope: !4897)
!4985 = !DILocation(line: 395, column: 15, scope: !4897)
!4986 = !DILocation(line: 584, column: 15, scope: !4987)
!4987 = distinct !DILexicalBlock(scope: !4897, file: !686, line: 584, column: 7)
!4988 = !DILocation(line: 584, column: 7, scope: !4897)
!4989 = !DILocation(line: 128, column: 8, scope: !4919, inlinedAt: !4982)
!4990 = !DILocation(line: 126, column: 15, scope: !4919, inlinedAt: !4982)
!4991 = !DILocation(line: 129, column: 10, scope: !4918, inlinedAt: !4982)
!4992 = !DILocation(line: 129, column: 7, scope: !4919, inlinedAt: !4982)
!4993 = !DILocation(line: 138, column: 13, scope: !4917, inlinedAt: !4982)
!4994 = !DILocation(line: 132, column: 19, scope: !4917, inlinedAt: !4982)
!4995 = !DILocation(line: 139, column: 15, scope: !4996, inlinedAt: !4982)
!4996 = distinct !DILexicalBlock(scope: !4917, file: !686, line: 139, column: 11)
!4997 = !DILocation(line: 139, column: 23, scope: !4996, inlinedAt: !4982)
!4998 = !DILocation(line: 139, column: 26, scope: !4999, inlinedAt: !4982)
!4999 = !DILexicalBlockFile(scope: !4996, file: !686, discriminator: 1)
!5000 = !DILocation(line: 139, column: 33, scope: !4999, inlinedAt: !4982)
!5001 = !DILocation(line: 139, column: 11, scope: !5002, inlinedAt: !4982)
!5002 = !DILexicalBlockFile(scope: !4917, file: !686, discriminator: 1)
!5003 = !DILocation(line: 140, column: 9, scope: !4996, inlinedAt: !4982)
!5004 = !DILocation(line: 144, column: 26, scope: !4926, inlinedAt: !4982)
!5005 = !DILocation(line: 144, column: 16, scope: !4926, inlinedAt: !4982)
!5006 = !DILocation(line: 145, column: 16, scope: !4926, inlinedAt: !4982)
!5007 = !DILocation(line: 146, column: 34, scope: !4926, inlinedAt: !4982)
!5008 = !DILocation(line: 146, column: 38, scope: !4926, inlinedAt: !4982)
!5009 = !DILocation(line: 146, column: 42, scope: !5010, inlinedAt: !4982)
!5010 = !DILexicalBlockFile(scope: !4926, file: !686, discriminator: 1)
!5011 = !DILocation(line: 146, column: 41, scope: !5010, inlinedAt: !4982)
!5012 = !DILocation(line: 147, column: 48, scope: !4926, inlinedAt: !4982)
!5013 = !DILocation(line: 147, column: 46, scope: !4926, inlinedAt: !4982)
!5014 = !DILocation(line: 147, column: 69, scope: !4926, inlinedAt: !4982)
!5015 = !DILocation(line: 147, column: 30, scope: !4926, inlinedAt: !4982)
!5016 = !DILocation(line: 134, column: 13, scope: !4917, inlinedAt: !4982)
!5017 = !DILocation(line: 148, column: 13, scope: !4926, inlinedAt: !4982)
!5018 = !DILocation(line: 150, column: 13, scope: !5019, inlinedAt: !4982)
!5019 = distinct !DILexicalBlock(scope: !5020, file: !686, line: 149, column: 11)
!5020 = distinct !DILexicalBlock(scope: !4926, file: !686, line: 148, column: 13)
!5021 = !DILocation(line: 151, column: 17, scope: !5019, inlinedAt: !4982)
!5022 = !DILocation(line: 152, column: 34, scope: !5023, inlinedAt: !4982)
!5023 = distinct !DILexicalBlock(scope: !5019, file: !686, line: 151, column: 17)
!5024 = !DILocation(line: 153, column: 41, scope: !5019, inlinedAt: !4982)
!5025 = !DILocation(line: 153, column: 13, scope: !5019, inlinedAt: !4982)
!5026 = !DILocation(line: 157, column: 11, scope: !4917, inlinedAt: !4982)
!5027 = !DILocation(line: 171, column: 16, scope: !4915, inlinedAt: !4982)
!5028 = !DILocation(line: 162, column: 15, scope: !4915, inlinedAt: !4982)
!5029 = !DILocation(line: 173, column: 18, scope: !4914, inlinedAt: !4982)
!5030 = !DILocation(line: 173, column: 15, scope: !4915, inlinedAt: !4982)
!5031 = !DILocation(line: 180, column: 20, scope: !4913, inlinedAt: !4982)
!5032 = !DILocation(line: 178, column: 21, scope: !4913, inlinedAt: !4982)
!5033 = !DILocation(line: 181, column: 22, scope: !4912, inlinedAt: !4982)
!5034 = !DILocation(line: 181, column: 19, scope: !4913, inlinedAt: !4982)
!5035 = !DILocation(line: 190, column: 25, scope: !4911, inlinedAt: !4982)
!5036 = !DILocation(line: 184, column: 19, scope: !5037, inlinedAt: !4982)
!5037 = distinct !DILexicalBlock(scope: !4912, file: !686, line: 182, column: 17)
!5038 = !DILocation(line: 186, column: 17, scope: !5037, inlinedAt: !4982)
!5039 = !DILocation(line: 191, column: 26, scope: !4911, inlinedAt: !4982)
!5040 = !DILocation(line: 196, column: 23, scope: !4908, inlinedAt: !4982)
!5041 = !DILocation(line: 197, column: 23, scope: !4908, inlinedAt: !4982)
!5042 = !DILocalVariable(name: "__fp", arg: 1, scope: !5043, file: !1060, line: 63, type: !4931)
!5043 = distinct !DISubprogram(name: "getc_unlocked", scope: !1060, file: !1060, line: 63, type: !5044, isLocal: false, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: true, unit: !342, variables: !5046)
!5044 = !DISubroutineType(types: !5045)
!5045 = !{!52, !4931}
!5046 = !{!5042}
!5047 = !DILocation(line: 63, column: 22, scope: !5043, inlinedAt: !5048)
!5048 = distinct !DILocation(line: 201, column: 27, scope: !4908, inlinedAt: !4982)
!5049 = !DILocation(line: 65, column: 10, scope: !5043, inlinedAt: !5048)
!5050 = !DILocation(line: 65, column: 10, scope: !5051, inlinedAt: !5048)
!5051 = !DILexicalBlockFile(scope: !5043, file: !1060, discriminator: 1)
!5052 = !DILocation(line: 65, column: 10, scope: !5053, inlinedAt: !5048)
!5053 = !DILexicalBlockFile(scope: !5043, file: !1060, discriminator: 2)
!5054 = !DILocation(line: 65, column: 10, scope: !5055, inlinedAt: !5048)
!5055 = !DILexicalBlockFile(scope: !5043, file: !1060, discriminator: 3)
!5056 = !DILocation(line: 195, column: 27, scope: !4908, inlinedAt: !4982)
!5057 = !DILocation(line: 202, column: 27, scope: !4908, inlinedAt: !4982)
!5058 = !DILocation(line: 63, column: 22, scope: !5043, inlinedAt: !5059)
!5059 = distinct !DILocation(line: 210, column: 33, scope: !5060, inlinedAt: !4982)
!5060 = distinct !DILexicalBlock(scope: !5061, file: !686, line: 207, column: 25)
!5061 = distinct !DILexicalBlock(scope: !4908, file: !686, line: 206, column: 27)
!5062 = !DILocation(line: 65, column: 10, scope: !5043, inlinedAt: !5059)
!5063 = !DILocation(line: 65, column: 10, scope: !5051, inlinedAt: !5059)
!5064 = !DILocation(line: 65, column: 10, scope: !5053, inlinedAt: !5059)
!5065 = !DILocation(line: 65, column: 10, scope: !5055, inlinedAt: !5059)
!5066 = !DILocation(line: 210, column: 29, scope: !5067, inlinedAt: !4982)
!5067 = !DILexicalBlockFile(scope: !5060, file: !686, discriminator: 1)
!5068 = distinct !{!5068, !5069, !5070}
!5069 = !DILocation(line: 193, column: 19, scope: !4910)
!5070 = !DILocation(line: 241, column: 21, scope: !4910)
!5071 = !DILocation(line: 216, column: 23, scope: !4908, inlinedAt: !4982)
!5072 = !DILocation(line: 217, column: 27, scope: !5073, inlinedAt: !4982)
!5073 = distinct !DILexicalBlock(scope: !4908, file: !686, line: 217, column: 27)
!5074 = !DILocation(line: 217, column: 64, scope: !5073, inlinedAt: !4982)
!5075 = !DILocation(line: 217, column: 27, scope: !4908, inlinedAt: !4982)
!5076 = !DILocation(line: 219, column: 28, scope: !4908, inlinedAt: !4982)
!5077 = !DILocation(line: 198, column: 30, scope: !4908, inlinedAt: !4982)
!5078 = !DILocation(line: 220, column: 28, scope: !4908, inlinedAt: !4982)
!5079 = !DILocation(line: 198, column: 34, scope: !4908, inlinedAt: !4982)
!5080 = !DILocation(line: 199, column: 29, scope: !4908, inlinedAt: !4982)
!5081 = !DILocation(line: 222, column: 36, scope: !5082, inlinedAt: !4982)
!5082 = distinct !DILexicalBlock(scope: !4908, file: !686, line: 222, column: 27)
!5083 = !DILocation(line: 222, column: 27, scope: !4908, inlinedAt: !4982)
!5084 = !DILocation(line: 225, column: 63, scope: !5085, inlinedAt: !4982)
!5085 = distinct !DILexicalBlock(scope: !5082, file: !686, line: 223, column: 25)
!5086 = !DILocation(line: 225, column: 46, scope: !5085, inlinedAt: !4982)
!5087 = !DILocation(line: 226, column: 25, scope: !5085, inlinedAt: !4982)
!5088 = !DILocation(line: 229, column: 36, scope: !5089, inlinedAt: !4982)
!5089 = distinct !DILexicalBlock(scope: !5082, file: !686, line: 228, column: 25)
!5090 = !DILocation(line: 230, column: 73, scope: !5089, inlinedAt: !4982)
!5091 = !DILocation(line: 230, column: 46, scope: !5089, inlinedAt: !4982)
!5092 = !DILocation(line: 232, column: 35, scope: !5093, inlinedAt: !4982)
!5093 = distinct !DILexicalBlock(scope: !4908, file: !686, line: 232, column: 27)
!5094 = !DILocation(line: 232, column: 27, scope: !4908, inlinedAt: !4982)
!5095 = !DILocation(line: 236, column: 27, scope: !5096, inlinedAt: !4982)
!5096 = distinct !DILexicalBlock(scope: !5093, file: !686, line: 233, column: 25)
!5097 = !DILocation(line: 237, column: 27, scope: !5096, inlinedAt: !4982)
!5098 = !DILocation(line: 239, column: 39, scope: !4908, inlinedAt: !4982)
!5099 = !DILocation(line: 239, column: 50, scope: !4908, inlinedAt: !4982)
!5100 = !DILocation(line: 239, column: 61, scope: !4908, inlinedAt: !4982)
!5101 = !DILocalVariable(name: "__dest", arg: 1, scope: !5102, file: !1188, line: 107, type: !1191)
!5102 = distinct !DISubprogram(name: "strcpy", scope: !1188, file: !1188, line: 107, type: !1189, isLocal: false, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: true, unit: !342, variables: !5103)
!5103 = !{!5101, !5104}
!5104 = !DILocalVariable(name: "__src", arg: 2, scope: !5102, file: !1188, line: 107, type: !1192)
!5105 = !DILocation(line: 107, column: 1, scope: !5102, inlinedAt: !5106)
!5106 = distinct !DILocation(line: 239, column: 23, scope: !4908, inlinedAt: !4982)
!5107 = !DILocation(line: 109, column: 49, scope: !5102, inlinedAt: !5106)
!5108 = !DILocation(line: 109, column: 10, scope: !5102, inlinedAt: !5106)
!5109 = !DILocation(line: 107, column: 1, scope: !5102, inlinedAt: !5110)
!5110 = distinct !DILocation(line: 240, column: 23, scope: !4908, inlinedAt: !4982)
!5111 = !DILocation(line: 109, column: 49, scope: !5102, inlinedAt: !5110)
!5112 = !DILocation(line: 109, column: 10, scope: !5102, inlinedAt: !5110)
!5113 = !DILocation(line: 241, column: 21, scope: !4909, inlinedAt: !4982)
!5114 = !DILocation(line: 242, column: 19, scope: !4911, inlinedAt: !4982)
!5115 = !DILocation(line: 243, column: 32, scope: !5116, inlinedAt: !4982)
!5116 = distinct !DILexicalBlock(scope: !4911, file: !686, line: 243, column: 23)
!5117 = !DILocation(line: 243, column: 23, scope: !4911, inlinedAt: !4982)
!5118 = !DILocation(line: 247, column: 33, scope: !5119, inlinedAt: !4982)
!5119 = distinct !DILexicalBlock(scope: !5116, file: !686, line: 246, column: 21)
!5120 = !DILocation(line: 247, column: 45, scope: !5119, inlinedAt: !4982)
!5121 = !DILocation(line: 253, column: 11, scope: !4915, inlinedAt: !4982)
!5122 = !DILocation(line: 377, column: 23, scope: !4917, inlinedAt: !4982)
!5123 = !DILocation(line: 378, column: 5, scope: !4917, inlinedAt: !4982)
!5124 = !DILocation(line: 396, column: 15, scope: !4897)
!5125 = !DILocation(line: 590, column: 8, scope: !4904)
!5126 = !DILocation(line: 590, column: 17, scope: !4904)
!5127 = !DILocation(line: 589, column: 3, scope: !5128)
!5128 = !DILexicalBlockFile(scope: !4905, file: !686, discriminator: 1)
!5129 = !DILocation(line: 592, column: 9, scope: !4902)
!5130 = !DILocation(line: 592, column: 35, scope: !4903)
!5131 = !DILocation(line: 593, column: 9, scope: !4903)
!5132 = !DILocation(line: 593, column: 24, scope: !5133)
!5133 = !DILexicalBlockFile(scope: !4903, file: !686, discriminator: 1)
!5134 = !DILocation(line: 593, column: 31, scope: !5133)
!5135 = !DILocation(line: 593, column: 34, scope: !5136)
!5136 = !DILexicalBlockFile(scope: !4903, file: !686, discriminator: 2)
!5137 = !DILocation(line: 593, column: 45, scope: !5136)
!5138 = !DILocation(line: 592, column: 9, scope: !5139)
!5139 = !DILexicalBlockFile(scope: !4904, file: !686, discriminator: 1)
!5140 = !DILocation(line: 595, column: 29, scope: !5141)
!5141 = distinct !DILexicalBlock(scope: !4903, file: !686, line: 594, column: 7)
!5142 = !DILocation(line: 595, column: 27, scope: !5141)
!5143 = !DILocation(line: 595, column: 46, scope: !5141)
!5144 = !DILocation(line: 596, column: 9, scope: !5141)
!5145 = !DILocation(line: 591, column: 19, scope: !4904)
!5146 = !DILocation(line: 591, column: 36, scope: !4904)
!5147 = !DILocation(line: 591, column: 16, scope: !4904)
!5148 = !DILocation(line: 591, column: 52, scope: !5139)
!5149 = !DILocation(line: 591, column: 69, scope: !4904)
!5150 = !DILocation(line: 591, column: 49, scope: !4904)
!5151 = distinct !{!5151, !5152, !5153}
!5152 = !DILocation(line: 589, column: 3, scope: !4905)
!5153 = !DILocation(line: 597, column: 7, scope: !4905)
!5154 = !DILocation(line: 602, column: 7, scope: !5155)
!5155 = distinct !DILexicalBlock(scope: !4897, file: !686, line: 602, column: 7)
!5156 = !DILocation(line: 602, column: 18, scope: !5155)
!5157 = !DILocation(line: 602, column: 7, scope: !4897)
!5158 = !DILocation(line: 612, column: 3, scope: !4897)
