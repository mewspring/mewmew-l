; ModuleID = 'coreutils-8.27/src/uptime.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.__locale_struct = type { [13 x %struct.__locale_data*], i16*, i32*, i32*, [13 x i8*] }
%struct.__locale_data = type opaque
%struct.option = type { i8*, i32, i32*, i32 }
%struct.quoting_options = type { i32, i32, [8 x i32], i8*, i8* }
%struct.slotvec = type { i64, i8* }
%struct.utmpx = type { i16, i32, [32 x i8], [4 x i8], [32 x i8], [256 x i8], %struct.__exit_status, i32, %struct.anon, [4 x i32], [20 x i8] }
%struct.__exit_status = type { i16, i16 }
%struct.anon = type { i32, i32 }
%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8* }
%struct.tm_zone = type { %struct.tm_zone*, i8, [0 x i8] }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }

@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"Usage: %s [OPTION]... [FILE]\0A\00", align 1
@.str.2 = private unnamed_addr constant [185 x i8] c"Print the current time, the length of time the system has been up,\0Athe number of users on the system, and the average number of jobs\0Ain the run queue over the last 1, 5 and 15 minutes.\00", align 1
@.str.3 = private unnamed_addr constant [84 x i8] c"  Processes in\0Aan uninterruptible sleep state also contribute to the load average.\0A\00", align 1
@.str.4 = private unnamed_addr constant [59 x i8] c"If FILE is not specified, use %s.  %s as FILE is common.\0A\0A\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"/var/run/utmp\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"/var/log/wtmp\00", align 1
@.str.7 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.8 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"uptime\00", align 1
@.str.26 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.27 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.28 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.29 = private unnamed_addr constant [69 x i8] c"Report %s translation bugs to <http://translationproject.org/team/>\0A\00", align 1
@.str.30 = private unnamed_addr constant [31 x i8] c"Full documentation at: <%s%s>\0A\00", align 1
@.str.31 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.32 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.10 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.12 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@.str.14 = private unnamed_addr constant [17 x i8] c"Joseph Arceneaux\00", align 1
@.str.15 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"Kaveh Ghazi\00", align 1
@optind = external local_unnamed_addr global i32, align 4
@.str.17 = private unnamed_addr constant [17 x i8] c"extra operand %s\00", align 1
@.str.33 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.34 = private unnamed_addr constant [13 x i8] c"/proc/uptime\00", align 1
@.str.35 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.36 = private unnamed_addr constant [23 x i8] c"couldn't get boot time\00", align 1
@.str.37 = private unnamed_addr constant [11 x i8] c" %H:%M%P  \00", align 1
@.str.38 = private unnamed_addr constant [11 x i8] c" ??:????  \00", align 1
@.str.39 = private unnamed_addr constant [22 x i8] c"up ???? days ??:??,  \00", align 1
@.str.40 = private unnamed_addr constant [23 x i8] c"up %ld day %2d:%02d,  \00", align 1
@.str.41 = private unnamed_addr constant [24 x i8] c"up %ld days %2d:%02d,  \00", align 1
@.str.42 = private unnamed_addr constant [16 x i8] c"up  %2d:%02d,  \00", align 1
@.str.43 = private unnamed_addr constant [9 x i8] c"%lu user\00", align 1
@.str.44 = private unnamed_addr constant [10 x i8] c"%lu users\00", align 1
@.str.45 = private unnamed_addr constant [22 x i8] c",  load average: %.2f\00", align 1
@.str.46 = private unnamed_addr constant [7 x i8] c", %.2f\00", align 1
@Version = local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i64 0, i64 0), align 8
@.str.18 = private unnamed_addr constant [5 x i8] c"8.27\00", align 1
@c_locale_cache = internal global %struct.__locale_struct* null, align 8
@.str.21 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1
@.str.24 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.25 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.26 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = global i32 1, align 4
@.str.47 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4.48 = private unnamed_addr constant [9 x i8] c"%H:%M:%S\00", align 1
@.str.1.49 = private unnamed_addr constant [9 x i8] c"%m/%d/%y\00", align 1
@.str.2.50 = private unnamed_addr constant [9 x i8] c"%Y-%m-%d\00", align 1
@.str.3.51 = private unnamed_addr constant [6 x i8] c"%H:%M\00", align 1
@opterr = external local_unnamed_addr global i32, align 4
@.str.54 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@long_options = internal constant [3 x %struct.option] [%struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1.55, i32 0, i32 0), i32 0, i32* null, i32 104 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2.56, i32 0, i32 0), i32 0, i32* null, i32 118 }, %struct.option zeroinitializer], align 16
@.str.1.55 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.2.56 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@program_name = local_unnamed_addr global i8* null, align 8
@.str.61 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.62 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.63 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.64, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.65, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.66, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.67, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.68, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.69, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.70, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.71, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.72, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.73, i32 0, i32 0), i8* null], align 16
@.str.64 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.65 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.66 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.67 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.68 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.69 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.70 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.71 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.72 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.73 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_vals = local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16
@quote_quoting_options = global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8
@.str.11.74 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.75 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.76 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.77 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.78 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.79 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.80 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8
@nslots = internal unnamed_addr global i32 1, align 4
@slot0 = internal global [256 x i8] zeroinitializer, align 16
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8
@.str.87 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.88 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.89 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.3.90 = private unnamed_addr constant [203 x i8] c"\0ALicense GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\0A\00", align 1
@.str.4.91 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.5.92 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.6.93 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.7.94 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.8.95 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.9.96 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.10.97 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.11.98 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.12.99 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.13.100 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@.str.14.103 = private unnamed_addr constant [21 x i8] c"\0AReport bugs to: %s\0A\00", align 1
@.str.15.104 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.16.105 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.17.106 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.18.107 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.19 = private unnamed_addr constant [64 x i8] c"General help using GNU software: <http://www.gnu.org/gethelp/>\0A\00", align 1
@version_etc_copyright = constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16
@.str.1.118 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.119 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.132 = private unnamed_addr constant [3 x i8] c"TZ\00", align 1
@.str.1.133 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1.140 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.143 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@charset_aliases = internal global i8* null, align 8
@.str.3.144 = private unnamed_addr constant [16 x i8] c"CHARSETALIASDIR\00", align 1
@.str.4.145 = private unnamed_addr constant [15 x i8] c"/usr/local/lib\00", align 1
@.str.2.146 = private unnamed_addr constant [14 x i8] c"charset.alias\00", align 1
@.str.5.147 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.6.148 = private unnamed_addr constant [10 x i8] c"%50s %50s\00", align 1
@.str.1.149 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1
@__mon_yday = internal unnamed_addr constant [2 x [13 x i16]] [[13 x i16] [i16 0, i16 31, i16 59, i16 90, i16 120, i16 151, i16 181, i16 212, i16 243, i16 273, i16 304, i16 334, i16 365], [13 x i16] [i16 0, i16 31, i16 60, i16 91, i16 121, i16 152, i16 182, i16 213, i16 244, i16 274, i16 305, i16 335, i16 366]], align 16
@localtime_offset = internal global i64 0, align 8

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @usage(i32) #0 {
  %2 = icmp eq i32 %0, 0
  br i1 %2, label %8, label %3

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #10
  %6 = load i8*, i8** @program_name, align 8
  %7 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %4, i32 1, i8* %5, i8* %6) #10
  br label %39

; <label>:8:                                      ; preds = %1
  %9 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 5) #10
  %10 = load i8*, i8** @program_name, align 8
  %11 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %9, i8* %10) #10
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([185 x i8], [185 x i8]* @.str.2, i64 0, i64 0), i32 5) #10
  %13 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %12) #10
  %14 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.3, i64 0, i64 0), i32 5) #10
  %15 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %14) #10
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.4, i64 0, i64 0), i32 5) #10
  %17 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %16, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0)) #10
  %18 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.7, i64 0, i64 0), i32 5) #10
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %20 = tail call i32 @fputs_unlocked(i8* %18, %struct._IO_FILE* %19) #10
  %21 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.8, i64 0, i64 0), i32 5) #10
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %23 = tail call i32 @fputs_unlocked(i8* %21, %struct._IO_FILE* %22) #10
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.26, i64 0, i64 0), i32 5) #10
  %25 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %24, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.27, i64 0, i64 0)) #10
  %26 = tail call i8* @setlocale(i32 5, i8* null) #10
  %27 = icmp eq i8* %26, null
  br i1 %27, label %34, label %28

; <label>:28:                                     ; preds = %8
  %29 = tail call i32 @strncmp(i8* nonnull %26, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.28, i64 0, i64 0), i64 3) #13
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %34, label %31

; <label>:31:                                     ; preds = %28
  %32 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.29, i64 0, i64 0), i32 5) #10
  %33 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %32, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0)) #10
  br label %34

; <label>:34:                                     ; preds = %8, %28, %31
  %35 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.30, i64 0, i64 0), i32 5) #10
  %36 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %35, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.27, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0)) #10
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.31, i64 0, i64 0), i32 5) #10
  %38 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %37, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.32, i64 0, i64 0)) #10
  br label %39

; <label>:39:                                     ; preds = %34, %3
  tail call void @exit(i32 %0) #14
  unreachable
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
define i32 @main(i32, i8**) local_unnamed_addr #6 {
  %3 = load i8*, i8** %1, align 8
  tail call void @set_program_name(i8* %3) #10
  %4 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i64 0, i64 0)) #10
  %5 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.12, i64 0, i64 0)) #10
  %6 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0)) #10
  %7 = tail call i32 @atexit(void ()* nonnull @close_stdout) #10
  %8 = load i8*, i8** @Version, align 8
  tail call void (i32, i8**, i8*, i8*, i8*, void (i32)*, ...) @parse_long_options(i32 %0, i8** %1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0), i8* %8, void (i32)* nonnull @usage, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i64 0, i64 0), i8* null) #10
  %9 = tail call i32 @getopt_long(i32 %0, i8** %1, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i64 0, i64 0), %struct.option* null, i32* null) #10
  %10 = icmp eq i32 %9, -1
  br i1 %10, label %12, label %11

; <label>:11:                                     ; preds = %2
  tail call void @usage(i32 1) #15
  unreachable

; <label>:12:                                     ; preds = %2
  %13 = load i32, i32* @optind, align 4
  %14 = sub nsw i32 %0, %13
  switch i32 %14, label %20 [
    i32 0, label %15
    i32 1, label %16
  ]

; <label>:15:                                     ; preds = %12
  tail call fastcc void @uptime(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i32 1)
  br label %28

; <label>:16:                                     ; preds = %12
  %17 = sext i32 %13 to i64
  %18 = getelementptr inbounds i8*, i8** %1, i64 %17
  %19 = load i8*, i8** %18, align 8
  tail call fastcc void @uptime(i8* %19, i32 0)
  br label %28

; <label>:20:                                     ; preds = %12
  %21 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.17, i64 0, i64 0), i32 5) #10
  %22 = load i32, i32* @optind, align 4
  %23 = add nsw i32 %22, 1
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8*, i8** %1, i64 %24
  %26 = load i8*, i8** %25, align 8
  %27 = tail call i8* @quote(i8* %26) #10
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %21, i8* %27) #10
  tail call void @usage(i32 1) #15
  unreachable

; <label>:28:                                     ; preds = %16, %15
  ret i32 0
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
define internal fastcc void @uptime(i8*, i32) unnamed_addr #6 {
  %3 = alloca i64, align 8
  %4 = alloca [3 x double], align 16
  %5 = alloca [8192 x i8], align 16
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.utmpx*, align 8
  %9 = bitcast i64* %7 to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %9) #10
  %10 = bitcast %struct.utmpx** %8 to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %10) #10
  store %struct.utmpx* null, %struct.utmpx** %8, align 8
  %11 = call i32 @read_utmp(i8* %0, i64* nonnull %7, %struct.utmpx** nonnull %8, i32 %1) #10
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %17, label %13

; <label>:13:                                     ; preds = %2
  %14 = tail call i32* @__errno_location() #1
  %15 = load i32, i32* %14, align 4
  %16 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %0) #10
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.33, i64 0, i64 0), i8* %16) #10
  unreachable

; <label>:17:                                     ; preds = %2
  %18 = load i64, i64* %7, align 8
  %19 = load %struct.utmpx*, %struct.utmpx** %8, align 8
  %20 = bitcast i64* %3 to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %20) #10
  %21 = bitcast [3 x double]* %4 to i8*
  call void @llvm.lifetime.start(i64 24, i8* nonnull %21) #10
  %22 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.34, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.35, i64 0, i64 0)) #10
  %23 = icmp eq %struct._IO_FILE* %22, null
  br i1 %23, label %44, label %24

; <label>:24:                                     ; preds = %17
  %25 = getelementptr inbounds [8192 x i8], [8192 x i8]* %5, i64 0, i64 0
  call void @llvm.lifetime.start(i64 8192, i8* nonnull %25) #10
  %26 = call i8* @fgets_unlocked(i8* nonnull %25, i32 8192, %struct._IO_FILE* nonnull %22) #10
  %27 = icmp eq i8* %26, %25
  br i1 %27, label %28, label %41

; <label>:28:                                     ; preds = %24
  %29 = bitcast i8** %6 to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %29) #10
  %30 = call double @c_strtod(i8* nonnull %25, i8** nonnull %6) #10
  %31 = load i8*, i8** %6, align 8
  %32 = icmp eq i8* %25, %31
  br i1 %32, label %39, label %33

; <label>:33:                                     ; preds = %28
  %34 = fcmp oge double %30, 0.000000e+00
  %35 = fcmp olt double %30, 0x43E0000000000000
  %36 = and i1 %34, %35
  %37 = fptosi double %30 to i64
  %38 = select i1 %36, i64 %37, i64 -1
  br label %39

; <label>:39:                                     ; preds = %33, %28
  %40 = phi i64 [ %38, %33 ], [ 0, %28 ]
  call void @llvm.lifetime.end(i64 8, i8* nonnull %29) #10
  br label %41

; <label>:41:                                     ; preds = %39, %24
  %42 = phi i64 [ %40, %39 ], [ 0, %24 ]
  %43 = call i32 @rpl_fclose(%struct._IO_FILE* nonnull %22) #10
  call void @llvm.lifetime.end(i64 8192, i8* nonnull %25) #10
  br label %44

; <label>:44:                                     ; preds = %41, %17
  %45 = phi i64 [ 0, %17 ], [ %42, %41 ]
  %46 = icmp eq i64 %18, 0
  br i1 %46, label %114, label %47

; <label>:47:                                     ; preds = %44
  %48 = and i64 %18, 1
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %69, label %50

; <label>:50:                                     ; preds = %47
  br label %51

; <label>:51:                                     ; preds = %50
  %52 = add i64 %18, -1
  %53 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %19, i64 0, i32 4, i64 0
  %54 = load i8, i8* %53, align 4
  %55 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %19, i64 0, i32 0
  %56 = load i16, i16* %55, align 4
  %57 = icmp eq i16 %56, 7
  %58 = icmp ne i8 %54, 0
  %59 = and i1 %58, %57
  %60 = zext i1 %59 to i64
  %61 = icmp eq i16 %56, 2
  br i1 %61, label %62, label %66

; <label>:62:                                     ; preds = %51
  %63 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %19, i64 0, i32 8, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = sext i32 %64 to i64
  br label %66

; <label>:66:                                     ; preds = %62, %51
  %67 = phi i64 [ %65, %62 ], [ 0, %51 ]
  %68 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %19, i64 1
  br label %69

; <label>:69:                                     ; preds = %47, %66
  %70 = phi i64 [ undef, %47 ], [ %60, %66 ]
  %71 = phi i64 [ undef, %47 ], [ %67, %66 ]
  %72 = phi i64 [ %18, %47 ], [ %52, %66 ]
  %73 = phi %struct.utmpx* [ %19, %47 ], [ %68, %66 ]
  %74 = phi i64 [ 0, %47 ], [ %60, %66 ]
  %75 = phi i64 [ 0, %47 ], [ %67, %66 ]
  %76 = icmp eq i64 %18, 1
  br i1 %76, label %111, label %77

; <label>:77:                                     ; preds = %69
  br label %78

; <label>:78:                                     ; preds = %210, %77
  %79 = phi i64 [ %72, %77 ], [ %99, %210 ]
  %80 = phi %struct.utmpx* [ %73, %77 ], [ %212, %210 ]
  %81 = phi i64 [ %74, %77 ], [ %108, %210 ]
  %82 = phi i64 [ %75, %77 ], [ %211, %210 ]
  %83 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %80, i64 0, i32 4, i64 0
  %84 = load i8, i8* %83, align 4
  %85 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %80, i64 0, i32 0
  %86 = load i16, i16* %85, align 4
  %87 = icmp eq i16 %86, 7
  %88 = icmp ne i8 %84, 0
  %89 = and i1 %88, %87
  %90 = zext i1 %89 to i64
  %91 = add i64 %90, %81
  %92 = icmp eq i16 %86, 2
  br i1 %92, label %93, label %97

; <label>:93:                                     ; preds = %78
  %94 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %80, i64 0, i32 8, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = sext i32 %95 to i64
  br label %97

; <label>:97:                                     ; preds = %93, %78
  %98 = phi i64 [ %96, %93 ], [ %82, %78 ]
  %99 = add i64 %79, -2
  %100 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %80, i64 1, i32 4, i64 0
  %101 = load i8, i8* %100, align 4
  %102 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %80, i64 1, i32 0
  %103 = load i16, i16* %102, align 4
  %104 = icmp eq i16 %103, 7
  %105 = icmp ne i8 %101, 0
  %106 = and i1 %105, %104
  %107 = zext i1 %106 to i64
  %108 = add i64 %107, %91
  %109 = icmp eq i16 %103, 2
  br i1 %109, label %206, label %210

; <label>:110:                                    ; preds = %210
  br label %111

; <label>:111:                                    ; preds = %69, %110
  %112 = phi i64 [ %70, %69 ], [ %108, %110 ]
  %113 = phi i64 [ %71, %69 ], [ %211, %110 ]
  br label %114

; <label>:114:                                    ; preds = %111, %44
  %115 = phi i64 [ 0, %44 ], [ %113, %111 ]
  %116 = phi i64 [ 0, %44 ], [ %112, %111 ]
  %117 = call i64 @time(i64* null) #10
  store i64 %117, i64* %3, align 8
  %118 = icmp eq i64 %45, 0
  br i1 %118, label %119, label %127

; <label>:119:                                    ; preds = %114
  %120 = icmp eq i64 %115, 0
  br i1 %120, label %121, label %125

; <label>:121:                                    ; preds = %119
  %122 = tail call i32* @__errno_location() #1
  %123 = load i32, i32* %122, align 4
  %124 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.36, i64 0, i64 0), i32 5) #10
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %123, i8* %124) #10
  unreachable

; <label>:125:                                    ; preds = %119
  %126 = sub nsw i64 %117, %115
  br label %127

; <label>:127:                                    ; preds = %125, %114
  %128 = phi i64 [ %126, %125 ], [ %45, %114 ]
  %129 = sdiv i64 %128, 86400
  %130 = mul i64 %129, -86400
  %131 = add i64 %130, %128
  %132 = sdiv i64 %131, 3600
  %133 = trunc i64 %132 to i32
  %134 = mul i64 %132, 15461882265600
  %135 = ashr exact i64 %134, 32
  %136 = sub nsw i64 %131, %135
  %137 = sdiv i64 %136, 60
  %138 = trunc i64 %137 to i32
  %139 = call %struct.tm* @localtime(i64* nonnull %3) #10
  %140 = icmp eq %struct.tm* %139, null
  br i1 %140, label %145, label %141

; <label>:141:                                    ; preds = %127
  %142 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %143 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.37, i64 0, i64 0), i32 5) #10
  %144 = call i64 @fprintftime(%struct._IO_FILE* %142, i8* %143, %struct.tm* nonnull %139, %struct.tm_zone* null, i32 0) #10
  br label %148

; <label>:145:                                    ; preds = %127
  %146 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.38, i64 0, i64 0), i32 5) #10
  %147 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %146) #10
  br label %148

; <label>:148:                                    ; preds = %145, %141
  %149 = icmp eq i64 %128, -1
  br i1 %149, label %150, label %153

; <label>:150:                                    ; preds = %148
  %151 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.39, i64 0, i64 0), i32 5) #10
  %152 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %151) #10
  br label %161

; <label>:153:                                    ; preds = %148
  %154 = icmp sgt i64 %128, 86399
  br i1 %154, label %155, label %158

; <label>:155:                                    ; preds = %153
  %156 = call i8* @dcngettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.40, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.41, i64 0, i64 0), i64 %129, i32 5) #10
  %157 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %156, i64 %129, i32 %133, i32 %138) #10
  br label %161

; <label>:158:                                    ; preds = %153
  %159 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.42, i64 0, i64 0), i32 5) #10
  %160 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %159, i32 %133, i32 %138) #10
  br label %161

; <label>:161:                                    ; preds = %158, %155, %150
  %162 = call i8* @dcngettext(i8* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.43, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.44, i64 0, i64 0), i64 %116, i32 5) #10
  %163 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %162, i64 %116) #10
  %164 = getelementptr inbounds [3 x double], [3 x double]* %4, i64 0, i64 0
  %165 = call i32 @getloadavg(double* nonnull %164, i32 3) #10
  %166 = icmp eq i32 %165, -1
  br i1 %166, label %167, label %178

; <label>:167:                                    ; preds = %161
  %168 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %169 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %168, i64 0, i32 5
  %170 = load i8*, i8** %169, align 8
  %171 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %168, i64 0, i32 6
  %172 = load i8*, i8** %171, align 8
  %173 = icmp ult i8* %170, %172
  br i1 %173, label %176, label %174

; <label>:174:                                    ; preds = %167
  %175 = call i32 @__overflow(%struct._IO_FILE* %168, i32 10) #10
  br label %205

; <label>:176:                                    ; preds = %167
  %177 = getelementptr inbounds i8, i8* %170, i64 1
  store i8* %177, i8** %169, align 8
  store i8 10, i8* %170, align 1
  br label %205

; <label>:178:                                    ; preds = %161
  %179 = icmp sgt i32 %165, 0
  br i1 %179, label %180, label %205

; <label>:180:                                    ; preds = %178
  %181 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.45, i64 0, i64 0), i32 5) #10
  %182 = load double, double* %164, align 16
  %183 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %181, double %182) #10
  %184 = icmp eq i32 %165, 1
  br i1 %184, label %194, label %185

; <label>:185:                                    ; preds = %180
  %186 = getelementptr inbounds [3 x double], [3 x double]* %4, i64 0, i64 1
  %187 = load double, double* %186, align 8
  %188 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.46, i64 0, i64 0), double %187) #10
  %189 = icmp sgt i32 %165, 2
  br i1 %189, label %190, label %194

; <label>:190:                                    ; preds = %185
  %191 = getelementptr inbounds [3 x double], [3 x double]* %4, i64 0, i64 2
  %192 = load double, double* %191, align 16
  %193 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.46, i64 0, i64 0), double %192) #10
  br label %194

; <label>:194:                                    ; preds = %190, %185, %180
  %195 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %196 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %195, i64 0, i32 5
  %197 = load i8*, i8** %196, align 8
  %198 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %195, i64 0, i32 6
  %199 = load i8*, i8** %198, align 8
  %200 = icmp ult i8* %197, %199
  br i1 %200, label %203, label %201

; <label>:201:                                    ; preds = %194
  %202 = call i32 @__overflow(%struct._IO_FILE* %195, i32 10) #10
  br label %205

; <label>:203:                                    ; preds = %194
  %204 = getelementptr inbounds i8, i8* %197, i64 1
  store i8* %204, i8** %196, align 8
  store i8 10, i8* %197, align 1
  br label %205

; <label>:205:                                    ; preds = %174, %176, %178, %201, %203
  call void @llvm.lifetime.end(i64 24, i8* nonnull %21) #10
  call void @llvm.lifetime.end(i64 8, i8* nonnull %20) #10
  call void @llvm.lifetime.end(i64 8, i8* nonnull %10) #10
  call void @llvm.lifetime.end(i64 8, i8* nonnull %9) #10
  ret void

; <label>:206:                                    ; preds = %97
  %207 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %80, i64 1, i32 8, i32 0
  %208 = load i32, i32* %207, align 4
  %209 = sext i32 %208 to i64
  br label %210

; <label>:210:                                    ; preds = %206, %97
  %211 = phi i64 [ %209, %206 ], [ %98, %97 ]
  %212 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %80, i64 2
  %213 = icmp eq i64 %99, 0
  br i1 %213, label %110, label %78
}

declare void @error(i32, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #7

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #8

; Function Attrs: nounwind
declare noalias %struct._IO_FILE* @fopen(i8* nocapture readonly, i8* nocapture readonly) local_unnamed_addr #2

declare i8* @fgets_unlocked(i8*, i32, %struct._IO_FILE*) local_unnamed_addr #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #7

; Function Attrs: nounwind
declare i64 @time(i64*) local_unnamed_addr #2

; Function Attrs: nounwind
declare %struct.tm* @localtime(i64*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i8* @dcngettext(i8*, i8*, i8*, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @getloadavg(double*, i32) local_unnamed_addr #2

declare i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define double @c_strtod(i8*, i8**) local_unnamed_addr #6 {
  %3 = load volatile %struct.__locale_struct*, %struct.__locale_struct** @c_locale_cache, align 8
  %4 = icmp eq %struct.__locale_struct* %3, null
  br i1 %4, label %5, label %7

; <label>:5:                                      ; preds = %2
  %6 = tail call %struct.__locale_struct* @newlocale(i32 8127, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i64 0, i64 0), %struct.__locale_struct* null) #10
  store volatile %struct.__locale_struct* %6, %struct.__locale_struct** @c_locale_cache, align 8
  br label %7

; <label>:7:                                      ; preds = %2, %5
  %8 = load volatile %struct.__locale_struct*, %struct.__locale_struct** @c_locale_cache, align 8
  %9 = icmp eq %struct.__locale_struct* %8, null
  br i1 %9, label %10, label %13

; <label>:10:                                     ; preds = %7
  %11 = icmp eq i8** %1, null
  br i1 %11, label %15, label %12

; <label>:12:                                     ; preds = %10
  store i8* %0, i8** %1, align 8
  br label %15

; <label>:13:                                     ; preds = %7
  %14 = tail call double @strtod_l(i8* %0, i8** %1, %struct.__locale_struct* nonnull %8) #10
  br label %15

; <label>:15:                                     ; preds = %12, %10, %13
  %16 = phi double [ %14, %13 ], [ 0.000000e+00, %10 ], [ 0.000000e+00, %12 ]
  ret double %16
}

; Function Attrs: nounwind
declare %struct.__locale_struct* @newlocale(i32, i8*, %struct.__locale_struct*) local_unnamed_addr #2

; Function Attrs: nounwind
declare double @strtod_l(i8*, i8**, %struct.__locale_struct*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_file_name(i8*) local_unnamed_addr #6 {
  store i8* %0, i8** @file_name, align 8
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_ignore_EPIPE(i1 zeroext) local_unnamed_addr #6 {
  %2 = zext i1 %0 to i8
  store i8 %2, i8* @ignore_EPIPE, align 1
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout() #6 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #10
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %21, label %4

; <label>:4:                                      ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1
  %6 = icmp eq i8 %5, 0
  %7 = tail call i32* @__errno_location() #1
  br i1 %6, label %11, label %8

; <label>:8:                                      ; preds = %4
  %9 = load i32, i32* %7, align 4
  %10 = icmp eq i32 %9, 32
  br i1 %10, label %21, label %11

; <label>:11:                                     ; preds = %4, %8
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.24, i64 0, i64 0), i32 5) #10
  %13 = load i8*, i8** @file_name, align 8
  %14 = icmp eq i8* %13, null
  %15 = load i32, i32* %7, align 4
  br i1 %14, label %18, label %16

; <label>:16:                                     ; preds = %11
  %17 = tail call i8* @quotearg_colon(i8* nonnull %13) #10
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.25, i64 0, i64 0), i8* %17, i8* %12) #10
  br label %19

; <label>:18:                                     ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.26, i64 0, i64 0), i8* %12) #10
  br label %19

; <label>:19:                                     ; preds = %18, %16
  %20 = load volatile i32, i32* @exit_failure, align 4
  tail call void @_exit(i32 %20) #14
  unreachable

; <label>:21:                                     ; preds = %0, %8
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %23 = tail call i32 @close_stream(%struct._IO_FILE* %22) #10
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %27, label %25

; <label>:25:                                     ; preds = %21
  %26 = load volatile i32, i32* @exit_failure, align 4
  tail call void @_exit(i32 %26) #14
  unreachable

; <label>:27:                                     ; preds = %21
  ret void
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #9

; Function Attrs: nounwind sspstrong uwtable
define i64 @fprintftime(%struct._IO_FILE*, i8*, %struct.tm*, %struct.tm_zone*, i32) local_unnamed_addr #6 {
  %6 = tail call fastcc i64 @__strftime_internal(%struct._IO_FILE* %0, i8* %1, %struct.tm* %2, i1 zeroext false, %struct.tm_zone* %3, i32 %4)
  ret i64 %6
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @__strftime_internal(%struct._IO_FILE*, i8*, %struct.tm*, i1 zeroext, %struct.tm_zone*, i32) unnamed_addr #6 {
  %7 = alloca [23 x i8], align 16
  %8 = alloca [5 x i8], align 1
  %9 = alloca [1024 x i8], align 16
  %10 = alloca %struct.tm, align 8
  %11 = zext i1 %3 to i8
  %12 = getelementptr inbounds %struct.tm, %struct.tm* %2, i64 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = getelementptr inbounds %struct.tm, %struct.tm* %2, i64 0, i32 10
  %15 = load i8*, i8** %14, align 8
  %16 = icmp ne i8* %15, null
  %17 = select i1 %16, i8* %15, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.47, i64 0, i64 0)
  %18 = icmp sgt i32 %13, 12
  %19 = add nsw i32 %13, -12
  %20 = icmp eq i32 %13, 0
  %21 = select i1 %20, i32 12, i32 %13
  %22 = select i1 %18, i32 %19, i32 %21
  %23 = load i8, i8* %1, align 1
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %1198, label %25

; <label>:25:                                     ; preds = %6
  %26 = getelementptr inbounds [23 x i8], [23 x i8]* %7, i64 0, i64 0
  %27 = icmp eq %struct._IO_FILE* %0, null
  %28 = getelementptr inbounds [5 x i8], [5 x i8]* %8, i64 0, i64 0
  %29 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %30 = getelementptr inbounds [5 x i8], [5 x i8]* %8, i64 0, i64 1
  %31 = getelementptr inbounds [5 x i8], [5 x i8]* %8, i64 0, i64 2
  %32 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 1
  %33 = getelementptr inbounds [5 x i8], [5 x i8]* %8, i64 0, i64 3
  %34 = getelementptr inbounds %struct.tm, %struct.tm* %2, i64 0, i32 5
  %35 = getelementptr inbounds [23 x i8], [23 x i8]* %7, i64 0, i64 23
  %36 = ptrtoint i8* %35 to i64
  %37 = icmp ne %struct._IO_FILE* %0, null
  %38 = getelementptr inbounds %struct.tm, %struct.tm* %2, i64 0, i32 3
  %39 = getelementptr inbounds %struct.tm, %struct.tm* %2, i64 0, i32 7
  %40 = getelementptr inbounds %struct.tm, %struct.tm* %2, i64 0, i32 1
  %41 = getelementptr inbounds %struct.tm, %struct.tm* %2, i64 0, i32 4
  %42 = getelementptr inbounds %struct.tm, %struct.tm* %2, i64 0, i32 0
  %43 = bitcast %struct.tm* %10 to i8*
  %44 = bitcast %struct.tm* %2 to i8*
  %45 = getelementptr inbounds %struct.tm, %struct.tm* %2, i64 0, i32 6
  %46 = getelementptr inbounds %struct.tm, %struct.tm* %2, i64 0, i32 8
  %47 = getelementptr inbounds %struct.tm, %struct.tm* %2, i64 0, i32 9
  br label %48

; <label>:48:                                     ; preds = %25, %1188
  %49 = phi i8 [ %23, %25 ], [ %1194, %1188 ]
  %50 = phi i64 [ 0, %25 ], [ %1189, %1188 ]
  %51 = phi i8* [ %1, %25 ], [ %1193, %1188 ]
  %52 = phi i32 [ undef, %25 ], [ %1191, %1188 ]
  %53 = phi i32 [ undef, %25 ], [ %1192, %1188 ]
  call void @llvm.lifetime.start(i64 23, i8* nonnull %26) #10
  %54 = icmp eq i8 %49, 37
  br i1 %54, label %55, label %56

; <label>:55:                                     ; preds = %48
  br label %82

; <label>:56:                                     ; preds = %48
  %57 = icmp ugt i64 %50, -3
  br i1 %57, label %64, label %58

; <label>:58:                                     ; preds = %56
  br i1 %27, label %62, label %59

; <label>:59:                                     ; preds = %58
  %60 = sext i8 %49 to i32
  %61 = call i32 @fputc(i32 %60, %struct._IO_FILE* nonnull %0)
  br label %62

; <label>:62:                                     ; preds = %58, %59
  %63 = add i64 %50, 1
  br label %64

; <label>:64:                                     ; preds = %56, %62
  %65 = phi i32 [ 0, %62 ], [ 1, %56 ]
  %66 = phi i64 [ %63, %62 ], [ %50, %56 ]
  %67 = icmp eq i32 %65, 0
  %68 = select i1 %67, i32 4, i32 %65
  br label %1182

; <label>:69:                                     ; preds = %75, %77
  %70 = phi i32 [ %79, %77 ], [ %74, %75 ]
  %71 = phi i8* [ %80, %77 ], [ %72, %75 ]
  %72 = getelementptr inbounds i8, i8* %71, i64 1
  %73 = load i8, i8* %72, align 1
  %74 = sext i8 %73 to i32
  switch i32 %74, label %87 [
    i32 95, label %75
    i32 45, label %75
    i32 48, label %75
    i32 94, label %76
    i32 35, label %81
  ]

; <label>:75:                                     ; preds = %69, %69, %69
  br label %69

; <label>:76:                                     ; preds = %69
  br label %77

; <label>:77:                                     ; preds = %76, %82
  %78 = phi i8 [ %84, %82 ], [ 1, %76 ]
  %79 = phi i32 [ %85, %82 ], [ %70, %76 ]
  %80 = phi i8* [ %86, %82 ], [ %72, %76 ]
  br label %69

; <label>:81:                                     ; preds = %69
  br label %82

; <label>:82:                                     ; preds = %55, %81
  %83 = phi i8 [ 1, %81 ], [ 0, %55 ]
  %84 = phi i8 [ %78, %81 ], [ %11, %55 ]
  %85 = phi i32 [ %70, %81 ], [ 0, %55 ]
  %86 = phi i8* [ %72, %81 ], [ %51, %55 ]
  br label %77

; <label>:87:                                     ; preds = %69
  %88 = add nsw i32 %74, -48
  %89 = icmp ult i32 %88, 10
  br i1 %89, label %90, label %114

; <label>:90:                                     ; preds = %87
  br label %91

; <label>:91:                                     ; preds = %90, %106
  %92 = phi i8 [ %109, %106 ], [ %73, %90 ]
  %93 = phi i32 [ %107, %106 ], [ 0, %90 ]
  %94 = phi i8* [ %108, %106 ], [ %72, %90 ]
  %95 = icmp sgt i32 %93, 214748364
  br i1 %95, label %106, label %96

; <label>:96:                                     ; preds = %91
  %97 = icmp eq i32 %93, 214748364
  %98 = sext i8 %92 to i32
  %99 = add nsw i32 %98, -48
  %100 = icmp sgt i32 %99, 7
  %101 = and i1 %97, %100
  br i1 %101, label %106, label %102

; <label>:102:                                    ; preds = %96
  %103 = mul nsw i32 %93, 10
  %104 = add i32 %103, -48
  %105 = add i32 %104, %98
  br label %106

; <label>:106:                                    ; preds = %96, %91, %102
  %107 = phi i32 [ %105, %102 ], [ 2147483647, %91 ], [ 2147483647, %96 ]
  %108 = getelementptr inbounds i8, i8* %94, i64 1
  %109 = load i8, i8* %108, align 1
  %110 = sext i8 %109 to i32
  %111 = add nsw i32 %110, -48
  %112 = icmp ult i32 %111, 10
  br i1 %112, label %91, label %113

; <label>:113:                                    ; preds = %106
  br label %114

; <label>:114:                                    ; preds = %113, %87
  %115 = phi i8 [ %73, %87 ], [ %109, %113 ]
  %116 = phi i32 [ -1, %87 ], [ %107, %113 ]
  %117 = phi i8* [ %72, %87 ], [ %108, %113 ]
  %118 = sext i8 %115 to i32
  switch i32 %118, label %122 [
    i32 69, label %119
    i32 79, label %119
  ]

; <label>:119:                                    ; preds = %114, %114
  %120 = getelementptr inbounds i8, i8* %117, i64 1
  %121 = load i8, i8* %120, align 1
  br label %122

; <label>:122:                                    ; preds = %114, %119
  %123 = phi i8 [ %121, %119 ], [ %115, %114 ]
  %124 = phi i32 [ %118, %119 ], [ 0, %114 ]
  %125 = phi i8* [ %120, %119 ], [ %117, %114 ]
  %126 = sext i8 %123 to i32
  switch i32 %126, label %1104 [
    i32 37, label %128
    i32 97, label %168
    i32 65, label %173
    i32 98, label %178
    i32 104, label %178
    i32 66, label %182
    i32 99, label %187
    i32 67, label %327
    i32 120, label %341
    i32 68, label %343
    i32 100, label %345
    i32 101, label %349
    i32 70, label %679
    i32 72, label %681
    i32 73, label %685
    i32 107, label %687
    i32 108, label %691
    i32 106, label %693
    i32 77, label %700
    i32 109, label %704
    i32 78, label %711
    i32 110, label %744
    i32 80, label %780
    i32 112, label %781
    i32 113, label %786
    i32 82, label %189
    i32 114, label %227
    i32 83, label %791
    i32 115, label %795
    i32 88, label %814
    i32 84, label %816
    i32 116, label %817
    i32 117, label %853
    i32 85, label %858
    i32 86, label %866
    i32 103, label %866
    i32 71, label %866
    i32 87, label %946
    i32 119, label %956
    i32 89, label %960
    i32 121, label %967
    i32 90, label %978
    i32 58, label %127
    i32 122, label %1059
    i32 0, label %1101
  ]

; <label>:127:                                    ; preds = %122
  br label %1052

; <label>:128:                                    ; preds = %122
  %129 = icmp eq i32 %124, 0
  br i1 %129, label %130, label %1104

; <label>:130:                                    ; preds = %128
  %131 = icmp sgt i32 %116, 0
  %132 = select i1 %131, i32 %116, i32 0
  %133 = icmp ugt i32 %132, 1
  %134 = icmp ugt i32 %132, 1
  %135 = select i1 %134, i32 %132, i32 1
  %136 = zext i32 %135 to i64
  %137 = xor i64 %50, -1
  %138 = icmp ult i64 %136, %137
  br i1 %138, label %139, label %1175

; <label>:139:                                    ; preds = %130
  br i1 %27, label %166, label %140

; <label>:140:                                    ; preds = %139
  br i1 %133, label %141, label %162

; <label>:141:                                    ; preds = %140
  %142 = sext i32 %116 to i64
  %143 = add nsw i64 %142, -1
  %144 = icmp eq i32 %70, 48
  %145 = icmp ne i64 %143, 0
  br i1 %144, label %148, label %146

; <label>:146:                                    ; preds = %141
  br i1 %145, label %147, label %162

; <label>:147:                                    ; preds = %146
  br label %155

; <label>:148:                                    ; preds = %141
  br i1 %145, label %149, label %162

; <label>:149:                                    ; preds = %148
  br label %150

; <label>:150:                                    ; preds = %149, %150
  %151 = phi i64 [ %153, %150 ], [ 0, %149 ]
  %152 = call i32 @fputc(i32 48, %struct._IO_FILE* %0)
  %153 = add nuw i64 %151, 1
  %154 = icmp eq i64 %153, %143
  br i1 %154, label %160, label %150

; <label>:155:                                    ; preds = %147, %155
  %156 = phi i64 [ %158, %155 ], [ 0, %147 ]
  %157 = call i32 @fputc(i32 32, %struct._IO_FILE* %0)
  %158 = add nuw i64 %156, 1
  %159 = icmp eq i64 %158, %143
  br i1 %159, label %161, label %155

; <label>:160:                                    ; preds = %150
  br label %162

; <label>:161:                                    ; preds = %155
  br label %162

; <label>:162:                                    ; preds = %161, %160, %146, %148, %140
  %163 = load i8, i8* %125, align 1
  %164 = sext i8 %163 to i32
  %165 = call i32 @fputc(i32 %164, %struct._IO_FILE* %0)
  br label %166

; <label>:166:                                    ; preds = %162, %139
  %167 = add i64 %136, %50
  br label %1177

; <label>:168:                                    ; preds = %122
  %169 = icmp eq i32 %124, 0
  br i1 %169, label %170, label %1104

; <label>:170:                                    ; preds = %168
  %171 = icmp eq i8 %83, 0
  %172 = select i1 %171, i8 %78, i8 1
  br label %227

; <label>:173:                                    ; preds = %122
  %174 = icmp eq i32 %124, 0
  br i1 %174, label %175, label %1104

; <label>:175:                                    ; preds = %173
  %176 = icmp eq i8 %83, 0
  %177 = select i1 %176, i8 %78, i8 1
  br label %227

; <label>:178:                                    ; preds = %122, %122
  %179 = icmp eq i8 %83, 0
  %180 = select i1 %179, i8 %78, i8 1
  %181 = icmp eq i32 %124, 0
  br i1 %181, label %227, label %1104

; <label>:182:                                    ; preds = %122
  %183 = icmp eq i32 %124, 0
  br i1 %183, label %184, label %1104

; <label>:184:                                    ; preds = %182
  %185 = icmp eq i8 %83, 0
  %186 = select i1 %185, i8 %78, i8 1
  br label %227

; <label>:187:                                    ; preds = %122
  %188 = icmp eq i32 %124, 79
  br i1 %188, label %1104, label %227

; <label>:189:                                    ; preds = %122, %679, %343, %816
  %190 = phi i8* [ getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4.48, i64 0, i64 0), %816 ], [ getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.49, i64 0, i64 0), %343 ], [ getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2.50, i64 0, i64 0), %679 ], [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3.51, i64 0, i64 0), %122 ]
  %191 = icmp ne i8 %78, 0
  %192 = call fastcc i64 @__strftime_internal(%struct._IO_FILE* null, i8* nonnull %190, %struct.tm* %2, i1 zeroext %191, %struct.tm_zone* %4, i32 %5)
  %193 = icmp sgt i32 %116, 0
  %194 = select i1 %193, i32 %116, i32 0
  %195 = zext i32 %194 to i64
  %196 = icmp ult i64 %192, %195
  %197 = select i1 %196, i64 %195, i64 %192
  %198 = xor i64 %50, -1
  %199 = icmp ult i64 %197, %198
  br i1 %199, label %200, label %1175

; <label>:200:                                    ; preds = %189
  br i1 %27, label %225, label %201

; <label>:201:                                    ; preds = %200
  br i1 %196, label %202, label %223

; <label>:202:                                    ; preds = %201
  %203 = sext i32 %116 to i64
  %204 = sub i64 %203, %192
  %205 = icmp eq i32 %70, 48
  %206 = icmp ne i64 %204, 0
  br i1 %205, label %209, label %207

; <label>:207:                                    ; preds = %202
  br i1 %206, label %208, label %223

; <label>:208:                                    ; preds = %207
  br label %216

; <label>:209:                                    ; preds = %202
  br i1 %206, label %210, label %223

; <label>:210:                                    ; preds = %209
  br label %211

; <label>:211:                                    ; preds = %210, %211
  %212 = phi i64 [ %214, %211 ], [ 0, %210 ]
  %213 = call i32 @fputc(i32 48, %struct._IO_FILE* %0)
  %214 = add nuw i64 %212, 1
  %215 = icmp eq i64 %214, %204
  br i1 %215, label %221, label %211

; <label>:216:                                    ; preds = %208, %216
  %217 = phi i64 [ %219, %216 ], [ 0, %208 ]
  %218 = call i32 @fputc(i32 32, %struct._IO_FILE* %0)
  %219 = add nuw i64 %217, 1
  %220 = icmp eq i64 %219, %204
  br i1 %220, label %222, label %216

; <label>:221:                                    ; preds = %211
  br label %223

; <label>:222:                                    ; preds = %216
  br label %223

; <label>:223:                                    ; preds = %222, %221, %207, %209, %201
  %224 = call fastcc i64 @__strftime_internal(%struct._IO_FILE* %0, i8* %190, %struct.tm* %2, i1 zeroext %191, %struct.tm_zone* %4, i32 %5)
  br label %225

; <label>:225:                                    ; preds = %223, %200
  %226 = add i64 %197, %50
  br label %1177

; <label>:227:                                    ; preds = %781, %184, %175, %170, %960, %366, %178, %967, %814, %122, %341, %327, %187
  %228 = phi i8 [ 121, %967 ], [ 89, %960 ], [ 88, %814 ], [ 114, %122 ], [ 120, %341 ], [ 67, %327 ], [ 99, %187 ], [ %123, %178 ], [ 97, %170 ], [ 65, %175 ], [ 66, %184 ], [ %123, %366 ], [ 112, %781 ]
  %229 = phi i8 [ %78, %967 ], [ %78, %960 ], [ %78, %814 ], [ %78, %122 ], [ %78, %341 ], [ %78, %327 ], [ %78, %187 ], [ %180, %178 ], [ %172, %170 ], [ %177, %175 ], [ %186, %184 ], [ %78, %366 ], [ %784, %781 ]
  %230 = phi i8 [ 0, %967 ], [ 0, %960 ], [ 0, %814 ], [ 0, %122 ], [ 0, %341 ], [ 0, %327 ], [ 0, %187 ], [ 0, %178 ], [ 0, %170 ], [ 0, %175 ], [ 0, %184 ], [ 0, %366 ], [ %785, %781 ]
  %231 = phi i32 [ %116, %967 ], [ %116, %960 ], [ %116, %814 ], [ %116, %122 ], [ %116, %341 ], [ %116, %327 ], [ %116, %187 ], [ %116, %178 ], [ %116, %170 ], [ %116, %175 ], [ %116, %184 ], [ %367, %366 ], [ %116, %781 ]
  %232 = phi i32 [ %53, %967 ], [ %53, %960 ], [ %53, %814 ], [ %53, %122 ], [ %53, %341 ], [ %53, %327 ], [ %53, %187 ], [ %53, %178 ], [ %53, %170 ], [ %53, %175 ], [ %53, %184 ], [ %368, %366 ], [ %53, %781 ]
  %233 = phi i32 [ %52, %967 ], [ %52, %960 ], [ %52, %814 ], [ %52, %122 ], [ %52, %341 ], [ %52, %327 ], [ %52, %187 ], [ %52, %178 ], [ %52, %170 ], [ %52, %175 ], [ %52, %184 ], [ %371, %366 ], [ %52, %781 ]
  %234 = phi i32 [ 0, %967 ], [ 0, %960 ], [ 0, %814 ], [ 0, %122 ], [ 0, %341 ], [ 0, %327 ], [ 0, %187 ], [ 0, %178 ], [ 0, %170 ], [ 0, %175 ], [ 0, %184 ], [ %372, %366 ], [ 0, %781 ]
  %235 = phi i32 [ %70, %967 ], [ %70, %960 ], [ %70, %814 ], [ %70, %122 ], [ %70, %341 ], [ %70, %327 ], [ %70, %187 ], [ %70, %178 ], [ %70, %170 ], [ %70, %175 ], [ %70, %184 ], [ %373, %366 ], [ %70, %781 ]
  %236 = phi i8* [ %125, %967 ], [ %125, %960 ], [ %125, %814 ], [ %125, %122 ], [ %125, %341 ], [ %125, %327 ], [ %125, %187 ], [ %125, %178 ], [ %125, %170 ], [ %125, %175 ], [ %125, %184 ], [ %374, %366 ], [ %125, %781 ]
  call void @llvm.lifetime.start(i64 5, i8* nonnull %28) #10
  call void @llvm.lifetime.start(i64 1024, i8* nonnull %29) #10
  store i8 32, i8* %28, align 1
  store i8 37, i8* %30, align 1
  %237 = icmp eq i32 %124, 0
  br i1 %237, label %240, label %238

; <label>:238:                                    ; preds = %227
  %239 = trunc i32 %124 to i8
  store i8 %239, i8* %31, align 1
  br label %240

; <label>:240:                                    ; preds = %227, %238
  %241 = phi i8* [ %33, %238 ], [ %31, %227 ]
  %242 = getelementptr inbounds i8, i8* %241, i64 1
  store i8 %228, i8* %241, align 1
  store i8 0, i8* %242, align 1
  %243 = call i64 @strftime(i8* nonnull %29, i64 1024, i8* nonnull %28, %struct.tm* %2) #10
  %244 = icmp eq i64 %243, 0
  br i1 %244, label %324, label %245

; <label>:245:                                    ; preds = %240
  %246 = add i64 %243, -1
  %247 = icmp sgt i32 %231, 0
  %248 = select i1 %247, i32 %231, i32 0
  %249 = zext i32 %248 to i64
  %250 = icmp ult i64 %246, %249
  %251 = select i1 %250, i64 %249, i64 %246
  %252 = xor i64 %50, -1
  %253 = icmp ult i64 %251, %252
  br i1 %253, label %254, label %326

; <label>:254:                                    ; preds = %245
  br i1 %27, label %322, label %255

; <label>:255:                                    ; preds = %254
  %256 = icmp ne i32 %234, 0
  %257 = xor i1 %250, true
  %258 = or i1 %256, %257
  br i1 %258, label %280, label %259

; <label>:259:                                    ; preds = %255
  %260 = sext i32 %231 to i64
  %261 = sub i64 %260, %246
  %262 = icmp eq i32 %235, 48
  %263 = icmp ne i64 %261, 0
  br i1 %262, label %266, label %264

; <label>:264:                                    ; preds = %259
  br i1 %263, label %265, label %280

; <label>:265:                                    ; preds = %264
  br label %273

; <label>:266:                                    ; preds = %259
  br i1 %263, label %267, label %280

; <label>:267:                                    ; preds = %266
  br label %268

; <label>:268:                                    ; preds = %267, %268
  %269 = phi i64 [ %271, %268 ], [ 0, %267 ]
  %270 = call i32 @fputc(i32 48, %struct._IO_FILE* nonnull %0)
  %271 = add nuw i64 %269, 1
  %272 = icmp eq i64 %271, %261
  br i1 %272, label %278, label %268

; <label>:273:                                    ; preds = %265, %273
  %274 = phi i64 [ %276, %273 ], [ 0, %265 ]
  %275 = call i32 @fputc(i32 32, %struct._IO_FILE* nonnull %0)
  %276 = add nuw i64 %274, 1
  %277 = icmp eq i64 %276, %261
  br i1 %277, label %279, label %273

; <label>:278:                                    ; preds = %268
  br label %280

; <label>:279:                                    ; preds = %273
  br label %280

; <label>:280:                                    ; preds = %279, %278, %264, %266, %255
  %281 = and i8 %230, 1
  %282 = icmp eq i8 %281, 0
  br i1 %282, label %299, label %283

; <label>:283:                                    ; preds = %280
  %284 = icmp eq i64 %246, 0
  br i1 %284, label %322, label %285

; <label>:285:                                    ; preds = %283
  br label %286

; <label>:286:                                    ; preds = %285, %286
  %287 = phi i8* [ %297, %286 ], [ %32, %285 ]
  %288 = phi i64 [ %289, %286 ], [ %246, %285 ]
  %289 = add i64 %288, -1
  %290 = tail call i32** @__ctype_tolower_loc() #1
  %291 = load i32*, i32** %290, align 8
  %292 = load i8, i8* %287, align 1
  %293 = zext i8 %292 to i64
  %294 = getelementptr inbounds i32, i32* %291, i64 %293
  %295 = load i32, i32* %294, align 4
  %296 = call i32 @fputc(i32 %295, %struct._IO_FILE* %0) #10
  %297 = getelementptr inbounds i8, i8* %287, i64 1
  %298 = icmp eq i64 %289, 0
  br i1 %298, label %321, label %286

; <label>:299:                                    ; preds = %280
  %300 = and i8 %229, 1
  %301 = icmp eq i8 %300, 0
  br i1 %301, label %318, label %302

; <label>:302:                                    ; preds = %299
  %303 = icmp eq i64 %246, 0
  br i1 %303, label %322, label %304

; <label>:304:                                    ; preds = %302
  br label %305

; <label>:305:                                    ; preds = %304, %305
  %306 = phi i8* [ %316, %305 ], [ %32, %304 ]
  %307 = phi i64 [ %308, %305 ], [ %246, %304 ]
  %308 = add i64 %307, -1
  %309 = tail call i32** @__ctype_toupper_loc() #1
  %310 = load i32*, i32** %309, align 8
  %311 = load i8, i8* %306, align 1
  %312 = zext i8 %311 to i64
  %313 = getelementptr inbounds i32, i32* %310, i64 %312
  %314 = load i32, i32* %313, align 4
  %315 = call i32 @fputc(i32 %314, %struct._IO_FILE* %0) #10
  %316 = getelementptr inbounds i8, i8* %306, i64 1
  %317 = icmp eq i64 %308, 0
  br i1 %317, label %320, label %305

; <label>:318:                                    ; preds = %299
  %319 = call i64 @fwrite(i8* %32, i64 %246, i64 1, %struct._IO_FILE* nonnull %0)
  br label %322

; <label>:320:                                    ; preds = %305
  br label %322

; <label>:321:                                    ; preds = %286
  br label %322

; <label>:322:                                    ; preds = %321, %320, %318, %254, %283, %302
  %323 = add i64 %251, %50
  br label %324

; <label>:324:                                    ; preds = %322, %240
  %325 = phi i64 [ %323, %322 ], [ %50, %240 ]
  call void @llvm.lifetime.end(i64 1024, i8* nonnull %29) #10
  call void @llvm.lifetime.end(i64 5, i8* nonnull %28) #10
  br label %1177

; <label>:326:                                    ; preds = %245
  call void @llvm.lifetime.end(i64 1024, i8* nonnull %29) #10
  call void @llvm.lifetime.end(i64 5, i8* nonnull %28) #10
  br label %1176

; <label>:327:                                    ; preds = %122
  %328 = icmp eq i32 %124, 69
  br i1 %328, label %227, label %329

; <label>:329:                                    ; preds = %327
  %330 = load i32, i32* %34, align 4
  %331 = sdiv i32 %330, 100
  %332 = add nsw i32 %331, 19
  %333 = srem i32 %330, 100
  %334 = icmp slt i32 %333, 0
  %335 = icmp sgt i32 %330, -1900
  %336 = and i1 %335, %334
  %337 = sext i1 %336 to i32
  %338 = add nsw i32 %332, %337
  %339 = icmp slt i32 %330, -1900
  %340 = zext i1 %339 to i8
  br label %366

; <label>:341:                                    ; preds = %122
  %342 = icmp eq i32 %124, 79
  br i1 %342, label %1104, label %227

; <label>:343:                                    ; preds = %122
  %344 = icmp eq i32 %124, 0
  br i1 %344, label %189, label %1104

; <label>:345:                                    ; preds = %122
  %346 = icmp eq i32 %124, 69
  br i1 %346, label %1104, label %347

; <label>:347:                                    ; preds = %345
  %348 = load i32, i32* %38, align 4
  br label %359

; <label>:349:                                    ; preds = %122
  %350 = icmp eq i32 %124, 69
  br i1 %350, label %1104, label %351

; <label>:351:                                    ; preds = %349
  %352 = load i32, i32* %38, align 4
  br label %353

; <label>:353:                                    ; preds = %691, %689, %351
  %354 = phi i32 [ %690, %689 ], [ %352, %351 ], [ %22, %691 ]
  switch i32 %70, label %355 [
    i32 48, label %359
    i32 45, label %359
  ]

; <label>:355:                                    ; preds = %353
  br label %359

; <label>:356:                                    ; preds = %738
  br label %357

; <label>:357:                                    ; preds = %732, %356
  %358 = phi i32 [ %733, %732 ], [ %741, %356 ]
  br label %359

; <label>:359:                                    ; preds = %357, %715, %931, %926, %937, %973, %969, %713, %685, %353, %353, %355, %958, %948, %860, %853, %793, %702, %683, %347
  %360 = phi i32 [ %116, %958 ], [ %116, %948 ], [ %116, %860 ], [ %116, %853 ], [ %116, %793 ], [ %116, %702 ], [ %116, %355 ], [ %116, %353 ], [ %116, %683 ], [ %116, %347 ], [ %116, %353 ], [ %116, %685 ], [ 9, %713 ], [ %116, %969 ], [ %116, %973 ], [ %116, %937 ], [ %116, %926 ], [ %116, %931 ], [ %116, %715 ], [ %116, %357 ]
  %361 = phi i32 [ %959, %958 ], [ %955, %948 ], [ %865, %860 ], [ %857, %853 ], [ %794, %793 ], [ %703, %702 ], [ %354, %355 ], [ %354, %353 ], [ %684, %683 ], [ %348, %347 ], [ %354, %353 ], [ %22, %685 ], [ %5, %713 ], [ %971, %969 ], [ %977, %973 ], [ %939, %937 ], [ %929, %926 ], [ %936, %931 ], [ %5, %715 ], [ %358, %357 ]
  %362 = phi i32 [ 1, %958 ], [ 2, %948 ], [ 2, %860 ], [ 1, %853 ], [ 2, %793 ], [ 2, %702 ], [ 2, %355 ], [ 2, %353 ], [ 2, %683 ], [ 2, %347 ], [ 2, %353 ], [ 2, %685 ], [ 9, %713 ], [ 2, %969 ], [ 2, %973 ], [ 2, %937 ], [ 2, %926 ], [ 2, %931 ], [ %116, %715 ], [ %116, %357 ]
  %363 = phi i32 [ %70, %958 ], [ %70, %948 ], [ %70, %860 ], [ %70, %853 ], [ %70, %793 ], [ %70, %702 ], [ 95, %355 ], [ %70, %353 ], [ %70, %683 ], [ %70, %347 ], [ %70, %353 ], [ %70, %685 ], [ %70, %713 ], [ %70, %969 ], [ %70, %973 ], [ %70, %937 ], [ %70, %926 ], [ %70, %931 ], [ %70, %715 ], [ %70, %357 ]
  %364 = lshr i32 %361, 31
  %365 = trunc i32 %364 to i8
  br label %366

; <label>:366:                                    ; preds = %940, %359, %695, %706, %786, %329, %1095
  %367 = phi i32 [ %116, %1095 ], [ %360, %359 ], [ %116, %940 ], [ %116, %786 ], [ %116, %706 ], [ %116, %695 ], [ %116, %329 ]
  %368 = phi i32 [ %1097, %1095 ], [ 0, %359 ], [ 0, %940 ], [ 0, %786 ], [ 0, %706 ], [ 0, %695 ], [ 0, %329 ]
  %369 = phi i8 [ 1, %1095 ], [ 0, %359 ], [ 0, %940 ], [ 0, %786 ], [ 0, %706 ], [ 0, %695 ], [ 0, %329 ]
  %370 = phi i8 [ %1075, %1095 ], [ %365, %359 ], [ %943, %940 ], [ 0, %786 ], [ %709, %706 ], [ %698, %695 ], [ %340, %329 ]
  %371 = phi i32 [ %1098, %1095 ], [ %361, %359 ], [ %945, %940 ], [ %790, %786 ], [ %710, %706 ], [ %699, %695 ], [ %338, %329 ]
  %372 = phi i32 [ %1099, %1095 ], [ %362, %359 ], [ 4, %940 ], [ 1, %786 ], [ 2, %706 ], [ 3, %695 ], [ 2, %329 ]
  %373 = phi i32 [ %70, %1095 ], [ %363, %359 ], [ %70, %940 ], [ %70, %786 ], [ %70, %706 ], [ %70, %695 ], [ %70, %329 ]
  %374 = phi i8* [ %1061, %1095 ], [ %125, %359 ], [ %125, %940 ], [ %125, %786 ], [ %125, %706 ], [ %125, %695 ], [ %125, %329 ]
  %375 = icmp eq i32 %124, 79
  %376 = and i8 %370, 1
  %377 = icmp eq i8 %376, 0
  %378 = and i1 %375, %377
  br i1 %378, label %227, label %379

; <label>:379:                                    ; preds = %961, %366
  %380 = phi i1 [ %966, %961 ], [ %377, %366 ]
  %381 = phi i8* [ %125, %961 ], [ %374, %366 ]
  %382 = phi i32 [ %70, %961 ], [ %373, %366 ]
  %383 = phi i32 [ 4, %961 ], [ %372, %366 ]
  %384 = phi i32 [ %965, %961 ], [ %371, %366 ]
  %385 = phi i8 [ %964, %961 ], [ %370, %366 ]
  %386 = phi i8 [ 0, %961 ], [ %369, %366 ]
  %387 = phi i32 [ 0, %961 ], [ %368, %366 ]
  %388 = phi i32 [ %116, %961 ], [ %367, %366 ]
  %389 = sub i32 0, %384
  %390 = select i1 %380, i32 %384, i32 %389
  br label %391

; <label>:391:                                    ; preds = %379, %399
  %392 = phi i8* [ %405, %399 ], [ %35, %379 ]
  %393 = phi i32 [ %401, %399 ], [ %387, %379 ]
  %394 = phi i32 [ %406, %399 ], [ %390, %379 ]
  %395 = and i32 %393, 1
  %396 = icmp eq i32 %395, 0
  br i1 %396, label %399, label %397

; <label>:397:                                    ; preds = %391
  %398 = getelementptr inbounds i8, i8* %392, i64 -1
  store i8 58, i8* %398, align 1
  br label %399

; <label>:399:                                    ; preds = %391, %397
  %400 = phi i8* [ %398, %397 ], [ %392, %391 ]
  %401 = ashr i32 %393, 1
  %402 = urem i32 %394, 10
  %403 = trunc i32 %402 to i8
  %404 = or i8 %403, 48
  %405 = getelementptr inbounds i8, i8* %400, i64 -1
  store i8 %404, i8* %405, align 1
  %406 = udiv i32 %394, 10
  %407 = icmp ugt i32 %394, 9
  %408 = icmp ne i32 %401, 0
  %409 = or i1 %407, %408
  br i1 %409, label %391, label %410

; <label>:410:                                    ; preds = %399
  br label %411

; <label>:411:                                    ; preds = %410, %812
  %412 = phi i32 [ %116, %812 ], [ %388, %410 ]
  %413 = phi i8* [ %809, %812 ], [ %405, %410 ]
  %414 = phi i32 [ %53, %812 ], [ 0, %410 ]
  %415 = phi i8 [ 0, %812 ], [ %386, %410 ]
  %416 = phi i8 [ %813, %812 ], [ %385, %410 ]
  %417 = phi i32 [ %52, %812 ], [ %406, %410 ]
  %418 = phi i32 [ 1, %812 ], [ %383, %410 ]
  %419 = phi i32 [ %70, %812 ], [ %382, %410 ]
  %420 = phi i8* [ %125, %812 ], [ %381, %410 ]
  %421 = icmp slt i32 %418, %412
  %422 = select i1 %421, i32 %412, i32 %418
  %423 = and i8 %416, 1
  %424 = icmp ne i8 %423, 0
  %425 = and i8 %415, 1
  %426 = icmp ne i8 %425, 0
  %427 = select i1 %426, i8 43, i8 0
  %428 = select i1 %424, i8 45, i8 %427
  %429 = icmp eq i32 %419, 45
  br i1 %429, label %430, label %461

; <label>:430:                                    ; preds = %411
  %431 = icmp eq i8 %428, 0
  br i1 %431, label %618, label %432

; <label>:432:                                    ; preds = %430
  %433 = icmp sgt i32 %412, 0
  %434 = select i1 %433, i32 %412, i32 0
  %435 = icmp ugt i32 %434, 1
  %436 = select i1 %435, i32 %434, i32 1
  %437 = zext i32 %436 to i64
  %438 = xor i64 %50, -1
  %439 = icmp ult i64 %437, %438
  br i1 %439, label %440, label %1175

; <label>:440:                                    ; preds = %432
  br i1 %27, label %459, label %441

; <label>:441:                                    ; preds = %440
  %442 = icmp ne i32 %422, 0
  %443 = icmp ult i32 %434, 2
  %444 = or i1 %443, %442
  br i1 %444, label %456, label %445

; <label>:445:                                    ; preds = %441
  %446 = sext i32 %412 to i64
  %447 = add nsw i64 %446, -1
  %448 = icmp eq i64 %447, 0
  br i1 %448, label %456, label %449

; <label>:449:                                    ; preds = %445
  br label %450

; <label>:450:                                    ; preds = %449, %450
  %451 = phi i64 [ %453, %450 ], [ 0, %449 ]
  %452 = call i32 @fputc(i32 32, %struct._IO_FILE* nonnull %0)
  %453 = add nuw i64 %451, 1
  %454 = icmp eq i64 %453, %447
  br i1 %454, label %455, label %450

; <label>:455:                                    ; preds = %450
  br label %456

; <label>:456:                                    ; preds = %455, %445, %441
  %457 = zext i8 %428 to i32
  %458 = call i32 @fputc(i32 %457, %struct._IO_FILE* nonnull %0)
  br label %459

; <label>:459:                                    ; preds = %456, %440
  %460 = add i64 %437, %50
  br label %618

; <label>:461:                                    ; preds = %411
  %462 = sext i32 %422 to i64
  %463 = ptrtoint i8* %413 to i64
  %464 = sub i64 %463, %36
  %465 = icmp ne i8 %428, 0
  %466 = sext i1 %465 to i64
  %467 = add i64 %464, %466
  %468 = add i64 %467, %462
  %469 = trunc i64 %468 to i32
  %470 = icmp sgt i32 %469, 0
  br i1 %470, label %471, label %578

; <label>:471:                                    ; preds = %461
  %472 = icmp eq i32 %419, 95
  br i1 %472, label %473, label %520

; <label>:473:                                    ; preds = %471
  %474 = shl i64 %468, 32
  %475 = ashr exact i64 %474, 32
  %476 = xor i64 %50, -1
  %477 = icmp ult i64 %475, %476
  br i1 %477, label %478, label %1175

; <label>:478:                                    ; preds = %473
  %479 = icmp ne i64 %475, 0
  %480 = and i1 %37, %479
  br i1 %480, label %481, label %488

; <label>:481:                                    ; preds = %478
  br label %482

; <label>:482:                                    ; preds = %481, %482
  %483 = phi i64 [ %485, %482 ], [ 0, %481 ]
  %484 = call i32 @fputc(i32 32, %struct._IO_FILE* nonnull %0)
  %485 = add nuw i64 %483, 1
  %486 = icmp ult i64 %485, %475
  br i1 %486, label %482, label %487

; <label>:487:                                    ; preds = %482
  br label %488

; <label>:488:                                    ; preds = %487, %478
  %489 = add i64 %475, %50
  %490 = icmp sgt i32 %412, %469
  %491 = sub nsw i32 %412, %469
  %492 = select i1 %490, i32 %491, i32 0
  br i1 %465, label %493, label %618

; <label>:493:                                    ; preds = %488
  %494 = icmp ugt i32 %492, 1
  %495 = select i1 %494, i32 %492, i32 1
  %496 = zext i32 %495 to i64
  %497 = xor i64 %489, -1
  %498 = icmp ult i64 %496, %497
  br i1 %498, label %499, label %1175

; <label>:499:                                    ; preds = %493
  br i1 %37, label %500, label %518

; <label>:500:                                    ; preds = %499
  %501 = icmp ne i32 %422, 0
  %502 = icmp ult i32 %492, 2
  %503 = or i1 %501, %502
  br i1 %503, label %515, label %504

; <label>:504:                                    ; preds = %500
  %505 = zext i32 %492 to i64
  %506 = add nsw i64 %505, -1
  %507 = icmp eq i64 %506, 0
  br i1 %507, label %515, label %508

; <label>:508:                                    ; preds = %504
  br label %509

; <label>:509:                                    ; preds = %508, %509
  %510 = phi i64 [ %512, %509 ], [ 0, %508 ]
  %511 = call i32 @fputc(i32 32, %struct._IO_FILE* nonnull %0)
  %512 = add nuw i64 %510, 1
  %513 = icmp ult i64 %512, %506
  br i1 %513, label %509, label %514

; <label>:514:                                    ; preds = %509
  br label %515

; <label>:515:                                    ; preds = %514, %504, %500
  %516 = zext i8 %428 to i32
  %517 = call i32 @fputc(i32 %516, %struct._IO_FILE* nonnull %0)
  br label %518

; <label>:518:                                    ; preds = %499, %515
  %519 = add i64 %496, %489
  br label %618

; <label>:520:                                    ; preds = %471
  %521 = xor i64 %50, -1
  %522 = icmp ult i64 %462, %521
  br i1 %522, label %523, label %1175

; <label>:523:                                    ; preds = %520
  br i1 %465, label %524, label %562

; <label>:524:                                    ; preds = %523
  %525 = icmp sgt i32 %412, 0
  %526 = select i1 %525, i32 %412, i32 0
  %527 = icmp ugt i32 %526, 1
  %528 = select i1 %527, i32 %526, i32 1
  %529 = zext i32 %528 to i64
  %530 = icmp ult i64 %529, %521
  br i1 %530, label %531, label %1175

; <label>:531:                                    ; preds = %524
  br i1 %27, label %560, label %532

; <label>:532:                                    ; preds = %531
  %533 = icmp ne i32 %422, 0
  %534 = icmp ult i32 %526, 2
  %535 = or i1 %534, %533
  br i1 %535, label %557, label %536

; <label>:536:                                    ; preds = %532
  %537 = sext i32 %412 to i64
  %538 = add nsw i64 %537, -1
  %539 = icmp eq i32 %419, 48
  %540 = icmp ne i64 %538, 0
  br i1 %539, label %543, label %541

; <label>:541:                                    ; preds = %536
  br i1 %540, label %542, label %557

; <label>:542:                                    ; preds = %541
  br label %550

; <label>:543:                                    ; preds = %536
  br i1 %540, label %544, label %557

; <label>:544:                                    ; preds = %543
  br label %545

; <label>:545:                                    ; preds = %544, %545
  %546 = phi i64 [ %548, %545 ], [ 0, %544 ]
  %547 = call i32 @fputc(i32 48, %struct._IO_FILE* nonnull %0)
  %548 = add nuw i64 %546, 1
  %549 = icmp eq i64 %548, %538
  br i1 %549, label %555, label %545

; <label>:550:                                    ; preds = %542, %550
  %551 = phi i64 [ %553, %550 ], [ 0, %542 ]
  %552 = call i32 @fputc(i32 32, %struct._IO_FILE* nonnull %0)
  %553 = add nuw i64 %551, 1
  %554 = icmp eq i64 %553, %538
  br i1 %554, label %556, label %550

; <label>:555:                                    ; preds = %545
  br label %557

; <label>:556:                                    ; preds = %550
  br label %557

; <label>:557:                                    ; preds = %556, %555, %541, %543, %532
  %558 = zext i8 %428 to i32
  %559 = call i32 @fputc(i32 %558, %struct._IO_FILE* nonnull %0)
  br label %560

; <label>:560:                                    ; preds = %557, %531
  %561 = add i64 %529, %50
  br label %562

; <label>:562:                                    ; preds = %560, %523
  %563 = phi i64 [ %50, %523 ], [ %561, %560 ]
  %564 = shl i64 %468, 32
  %565 = ashr exact i64 %564, 32
  br i1 %27, label %575, label %566

; <label>:566:                                    ; preds = %562
  %567 = icmp eq i64 %565, 0
  br i1 %567, label %575, label %568

; <label>:568:                                    ; preds = %566
  br label %569

; <label>:569:                                    ; preds = %568, %569
  %570 = phi i64 [ %572, %569 ], [ 0, %568 ]
  %571 = call i32 @fputc(i32 48, %struct._IO_FILE* %0)
  %572 = add nuw i64 %570, 1
  %573 = icmp ult i64 %572, %565
  br i1 %573, label %569, label %574

; <label>:574:                                    ; preds = %569
  br label %575

; <label>:575:                                    ; preds = %574, %562, %566
  %576 = phi i64 [ 0, %566 ], [ %565, %562 ], [ %565, %574 ]
  %577 = add i64 %563, %576
  br label %618

; <label>:578:                                    ; preds = %461
  br i1 %465, label %579, label %618

; <label>:579:                                    ; preds = %578
  %580 = icmp sgt i32 %412, 0
  %581 = select i1 %580, i32 %412, i32 0
  %582 = icmp ugt i32 %581, 1
  %583 = select i1 %582, i32 %581, i32 1
  %584 = zext i32 %583 to i64
  %585 = xor i64 %50, -1
  %586 = icmp ult i64 %584, %585
  br i1 %586, label %587, label %1175

; <label>:587:                                    ; preds = %579
  br i1 %27, label %616, label %588

; <label>:588:                                    ; preds = %587
  %589 = icmp ne i32 %422, 0
  %590 = icmp ult i32 %581, 2
  %591 = or i1 %590, %589
  br i1 %591, label %613, label %592

; <label>:592:                                    ; preds = %588
  %593 = sext i32 %412 to i64
  %594 = add nsw i64 %593, -1
  %595 = icmp eq i32 %419, 48
  %596 = icmp ne i64 %594, 0
  br i1 %595, label %599, label %597

; <label>:597:                                    ; preds = %592
  br i1 %596, label %598, label %613

; <label>:598:                                    ; preds = %597
  br label %606

; <label>:599:                                    ; preds = %592
  br i1 %596, label %600, label %613

; <label>:600:                                    ; preds = %599
  br label %601

; <label>:601:                                    ; preds = %600, %601
  %602 = phi i64 [ %604, %601 ], [ 0, %600 ]
  %603 = call i32 @fputc(i32 48, %struct._IO_FILE* %0)
  %604 = add nuw i64 %602, 1
  %605 = icmp eq i64 %604, %594
  br i1 %605, label %611, label %601

; <label>:606:                                    ; preds = %598, %606
  %607 = phi i64 [ %609, %606 ], [ 0, %598 ]
  %608 = call i32 @fputc(i32 32, %struct._IO_FILE* %0)
  %609 = add nuw i64 %607, 1
  %610 = icmp eq i64 %609, %594
  br i1 %610, label %612, label %606

; <label>:611:                                    ; preds = %601
  br label %613

; <label>:612:                                    ; preds = %606
  br label %613

; <label>:613:                                    ; preds = %612, %611, %597, %599, %588
  %614 = zext i8 %428 to i32
  %615 = call i32 @fputc(i32 %614, %struct._IO_FILE* %0)
  br label %616

; <label>:616:                                    ; preds = %613, %587
  %617 = add i64 %584, %50
  br label %618

; <label>:618:                                    ; preds = %488, %575, %578, %518, %616, %459, %430
  %619 = phi i32 [ %412, %430 ], [ %412, %459 ], [ %412, %616 ], [ %492, %518 ], [ %412, %578 ], [ 0, %575 ], [ %492, %488 ]
  %620 = phi i64 [ %50, %430 ], [ %460, %459 ], [ %617, %616 ], [ %519, %518 ], [ %50, %578 ], [ %577, %575 ], [ %489, %488 ]
  %621 = ptrtoint i8* %413 to i64
  %622 = sub i64 %36, %621
  %623 = icmp sgt i32 %619, 0
  %624 = select i1 %623, i32 %619, i32 0
  %625 = zext i32 %624 to i64
  %626 = icmp ult i64 %622, %625
  %627 = select i1 %626, i64 %625, i64 %622
  %628 = xor i64 %620, -1
  %629 = icmp ult i64 %627, %628
  br i1 %629, label %630, label %1175

; <label>:630:                                    ; preds = %618
  br i1 %27, label %677, label %631

; <label>:631:                                    ; preds = %630
  %632 = icmp ne i32 %422, 0
  %633 = xor i1 %626, true
  %634 = or i1 %632, %633
  br i1 %634, label %656, label %635

; <label>:635:                                    ; preds = %631
  %636 = sext i32 %619 to i64
  %637 = sub i64 %636, %622
  %638 = icmp eq i32 %419, 48
  %639 = icmp ne i64 %637, 0
  br i1 %638, label %642, label %640

; <label>:640:                                    ; preds = %635
  br i1 %639, label %641, label %656

; <label>:641:                                    ; preds = %640
  br label %649

; <label>:642:                                    ; preds = %635
  br i1 %639, label %643, label %656

; <label>:643:                                    ; preds = %642
  br label %644

; <label>:644:                                    ; preds = %643, %644
  %645 = phi i64 [ %647, %644 ], [ 0, %643 ]
  %646 = call i32 @fputc(i32 48, %struct._IO_FILE* %0)
  %647 = add nuw i64 %645, 1
  %648 = icmp eq i64 %647, %637
  br i1 %648, label %654, label %644

; <label>:649:                                    ; preds = %641, %649
  %650 = phi i64 [ %652, %649 ], [ 0, %641 ]
  %651 = call i32 @fputc(i32 32, %struct._IO_FILE* %0)
  %652 = add nuw i64 %650, 1
  %653 = icmp eq i64 %652, %637
  br i1 %653, label %655, label %649

; <label>:654:                                    ; preds = %644
  br label %656

; <label>:655:                                    ; preds = %649
  br label %656

; <label>:656:                                    ; preds = %655, %654, %640, %642, %631
  %657 = icmp eq i8 %78, 0
  br i1 %657, label %674, label %658

; <label>:658:                                    ; preds = %656
  %659 = icmp eq i64 %622, 0
  br i1 %659, label %677, label %660

; <label>:660:                                    ; preds = %658
  br label %661

; <label>:661:                                    ; preds = %660, %661
  %662 = phi i8* [ %672, %661 ], [ %413, %660 ]
  %663 = phi i64 [ %664, %661 ], [ %622, %660 ]
  %664 = add i64 %663, -1
  %665 = tail call i32** @__ctype_toupper_loc() #1
  %666 = load i32*, i32** %665, align 8
  %667 = load i8, i8* %662, align 1
  %668 = zext i8 %667 to i64
  %669 = getelementptr inbounds i32, i32* %666, i64 %668
  %670 = load i32, i32* %669, align 4
  %671 = call i32 @fputc(i32 %670, %struct._IO_FILE* %0) #10
  %672 = getelementptr inbounds i8, i8* %662, i64 1
  %673 = icmp eq i64 %664, 0
  br i1 %673, label %676, label %661

; <label>:674:                                    ; preds = %656
  %675 = call i64 @fwrite(i8* %413, i64 %622, i64 1, %struct._IO_FILE* %0)
  br label %677

; <label>:676:                                    ; preds = %661
  br label %677

; <label>:677:                                    ; preds = %676, %674, %630, %658
  %678 = add i64 %627, %620
  br label %1177

; <label>:679:                                    ; preds = %122
  %680 = icmp eq i32 %124, 0
  br i1 %680, label %189, label %1104

; <label>:681:                                    ; preds = %122
  %682 = icmp eq i32 %124, 69
  br i1 %682, label %1104, label %683

; <label>:683:                                    ; preds = %681
  %684 = load i32, i32* %12, align 8
  br label %359

; <label>:685:                                    ; preds = %122
  %686 = icmp eq i32 %124, 69
  br i1 %686, label %1104, label %359

; <label>:687:                                    ; preds = %122
  %688 = icmp eq i32 %124, 69
  br i1 %688, label %1104, label %689

; <label>:689:                                    ; preds = %687
  %690 = load i32, i32* %12, align 8
  br label %353

; <label>:691:                                    ; preds = %122
  %692 = icmp eq i32 %124, 69
  br i1 %692, label %1104, label %353

; <label>:693:                                    ; preds = %122
  %694 = icmp eq i32 %124, 69
  br i1 %694, label %1104, label %695

; <label>:695:                                    ; preds = %693
  %696 = load i32, i32* %39, align 4
  %697 = icmp slt i32 %696, -1
  %698 = zext i1 %697 to i8
  %699 = add i32 %696, 1
  br label %366

; <label>:700:                                    ; preds = %122
  %701 = icmp eq i32 %124, 69
  br i1 %701, label %1104, label %702

; <label>:702:                                    ; preds = %700
  %703 = load i32, i32* %40, align 4
  br label %359

; <label>:704:                                    ; preds = %122
  %705 = icmp eq i32 %124, 69
  br i1 %705, label %1104, label %706

; <label>:706:                                    ; preds = %704
  %707 = load i32, i32* %41, align 8
  %708 = icmp slt i32 %707, -1
  %709 = zext i1 %708 to i8
  %710 = add i32 %707, 1
  br label %366

; <label>:711:                                    ; preds = %122
  %712 = icmp eq i32 %124, 69
  br i1 %712, label %1104, label %713

; <label>:713:                                    ; preds = %711
  %714 = icmp eq i32 %116, -1
  br i1 %714, label %359, label %715

; <label>:715:                                    ; preds = %713
  %716 = icmp slt i32 %116, 9
  br i1 %716, label %717, label %359

; <label>:717:                                    ; preds = %715
  %718 = sub i32 9, %116
  %719 = sub i32 8, %116
  %720 = and i32 %718, 3
  %721 = icmp eq i32 %720, 0
  br i1 %721, label %732, label %722

; <label>:722:                                    ; preds = %717
  br label %723

; <label>:723:                                    ; preds = %723, %722
  %724 = phi i32 [ %727, %723 ], [ %5, %722 ]
  %725 = phi i32 [ %728, %723 ], [ %116, %722 ]
  %726 = phi i32 [ %729, %723 ], [ %720, %722 ]
  %727 = sdiv i32 %724, 10
  %728 = add nsw i32 %725, 1
  %729 = add i32 %726, -1
  %730 = icmp eq i32 %729, 0
  br i1 %730, label %731, label %723

; <label>:731:                                    ; preds = %723
  br label %732

; <label>:732:                                    ; preds = %717, %731
  %733 = phi i32 [ undef, %717 ], [ %727, %731 ]
  %734 = phi i32 [ %5, %717 ], [ %727, %731 ]
  %735 = phi i32 [ %116, %717 ], [ %728, %731 ]
  %736 = icmp ult i32 %719, 3
  br i1 %736, label %357, label %737

; <label>:737:                                    ; preds = %732
  br label %738

; <label>:738:                                    ; preds = %738, %737
  %739 = phi i32 [ %734, %737 ], [ %741, %738 ]
  %740 = phi i32 [ %735, %737 ], [ %742, %738 ]
  %741 = sdiv i32 %739, 10000
  %742 = add nsw i32 %740, 4
  %743 = icmp eq i32 %742, 9
  br i1 %743, label %356, label %738

; <label>:744:                                    ; preds = %122
  %745 = icmp sgt i32 %116, 0
  %746 = select i1 %745, i32 %116, i32 0
  %747 = icmp ugt i32 %746, 1
  %748 = icmp ugt i32 %746, 1
  %749 = select i1 %748, i32 %746, i32 1
  %750 = zext i32 %749 to i64
  %751 = xor i64 %50, -1
  %752 = icmp ult i64 %750, %751
  br i1 %752, label %753, label %1175

; <label>:753:                                    ; preds = %744
  br i1 %27, label %778, label %754

; <label>:754:                                    ; preds = %753
  br i1 %747, label %755, label %776

; <label>:755:                                    ; preds = %754
  %756 = sext i32 %116 to i64
  %757 = add nsw i64 %756, -1
  %758 = icmp eq i32 %70, 48
  %759 = icmp ne i64 %757, 0
  br i1 %758, label %762, label %760

; <label>:760:                                    ; preds = %755
  br i1 %759, label %761, label %776

; <label>:761:                                    ; preds = %760
  br label %769

; <label>:762:                                    ; preds = %755
  br i1 %759, label %763, label %776

; <label>:763:                                    ; preds = %762
  br label %764

; <label>:764:                                    ; preds = %763, %764
  %765 = phi i64 [ %767, %764 ], [ 0, %763 ]
  %766 = call i32 @fputc(i32 48, %struct._IO_FILE* %0)
  %767 = add nuw i64 %765, 1
  %768 = icmp eq i64 %767, %757
  br i1 %768, label %774, label %764

; <label>:769:                                    ; preds = %761, %769
  %770 = phi i64 [ %772, %769 ], [ 0, %761 ]
  %771 = call i32 @fputc(i32 32, %struct._IO_FILE* %0)
  %772 = add nuw i64 %770, 1
  %773 = icmp eq i64 %772, %757
  br i1 %773, label %775, label %769

; <label>:774:                                    ; preds = %764
  br label %776

; <label>:775:                                    ; preds = %769
  br label %776

; <label>:776:                                    ; preds = %775, %774, %760, %762, %754
  %777 = call i32 @fputc(i32 10, %struct._IO_FILE* %0)
  br label %778

; <label>:778:                                    ; preds = %776, %753
  %779 = add i64 %750, %50
  br label %1177

; <label>:780:                                    ; preds = %122
  br label %781

; <label>:781:                                    ; preds = %122, %780
  %782 = phi i8 [ 0, %122 ], [ 1, %780 ]
  %783 = icmp eq i8 %83, 0
  %784 = select i1 %783, i8 %78, i8 0
  %785 = select i1 %783, i8 %782, i8 1
  br label %227

; <label>:786:                                    ; preds = %122
  %787 = load i32, i32* %41, align 8
  %788 = mul nsw i32 %787, 11
  %789 = ashr i32 %788, 5
  %790 = add nsw i32 %789, 1
  br label %366

; <label>:791:                                    ; preds = %122
  %792 = icmp eq i32 %124, 69
  br i1 %792, label %1104, label %793

; <label>:793:                                    ; preds = %791
  %794 = load i32, i32* %42, align 8
  br label %359

; <label>:795:                                    ; preds = %122
  call void @llvm.lifetime.start(i64 56, i8* nonnull %43) #10
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %43, i8* %44, i64 56, i32 8, i1 false)
  %796 = call i64 @mktime_z(%struct.tm_zone* %4, %struct.tm* nonnull %10) #10
  %797 = icmp slt i64 %796, 0
  %798 = lshr i64 %796, 63
  br label %799

; <label>:799:                                    ; preds = %799, %795
  %800 = phi i64 [ %796, %795 ], [ %804, %799 ]
  %801 = phi i8* [ %35, %795 ], [ %809, %799 ]
  %802 = srem i64 %800, 10
  %803 = trunc i64 %802 to i32
  %804 = sdiv i64 %800, 10
  %805 = sub nsw i32 0, %803
  %806 = select i1 %797, i32 %805, i32 %803
  %807 = add nsw i32 %806, 48
  %808 = trunc i32 %807 to i8
  %809 = getelementptr inbounds i8, i8* %801, i64 -1
  store i8 %808, i8* %809, align 1
  %810 = add i64 %800, 9
  %811 = icmp ugt i64 %810, 18
  br i1 %811, label %799, label %812

; <label>:812:                                    ; preds = %799
  %813 = trunc i64 %798 to i8
  call void @llvm.lifetime.end(i64 56, i8* nonnull %43) #10
  br label %411

; <label>:814:                                    ; preds = %122
  %815 = icmp eq i32 %124, 79
  br i1 %815, label %1104, label %227

; <label>:816:                                    ; preds = %122
  br label %189

; <label>:817:                                    ; preds = %122
  %818 = icmp sgt i32 %116, 0
  %819 = select i1 %818, i32 %116, i32 0
  %820 = icmp ugt i32 %819, 1
  %821 = icmp ugt i32 %819, 1
  %822 = select i1 %821, i32 %819, i32 1
  %823 = zext i32 %822 to i64
  %824 = xor i64 %50, -1
  %825 = icmp ult i64 %823, %824
  br i1 %825, label %826, label %1175

; <label>:826:                                    ; preds = %817
  br i1 %27, label %851, label %827

; <label>:827:                                    ; preds = %826
  br i1 %820, label %828, label %849

; <label>:828:                                    ; preds = %827
  %829 = sext i32 %116 to i64
  %830 = add nsw i64 %829, -1
  %831 = icmp eq i32 %70, 48
  %832 = icmp ne i64 %830, 0
  br i1 %831, label %835, label %833

; <label>:833:                                    ; preds = %828
  br i1 %832, label %834, label %849

; <label>:834:                                    ; preds = %833
  br label %842

; <label>:835:                                    ; preds = %828
  br i1 %832, label %836, label %849

; <label>:836:                                    ; preds = %835
  br label %837

; <label>:837:                                    ; preds = %836, %837
  %838 = phi i64 [ %840, %837 ], [ 0, %836 ]
  %839 = call i32 @fputc(i32 48, %struct._IO_FILE* %0)
  %840 = add nuw i64 %838, 1
  %841 = icmp eq i64 %840, %830
  br i1 %841, label %847, label %837

; <label>:842:                                    ; preds = %834, %842
  %843 = phi i64 [ %845, %842 ], [ 0, %834 ]
  %844 = call i32 @fputc(i32 32, %struct._IO_FILE* %0)
  %845 = add nuw i64 %843, 1
  %846 = icmp eq i64 %845, %830
  br i1 %846, label %848, label %842

; <label>:847:                                    ; preds = %837
  br label %849

; <label>:848:                                    ; preds = %842
  br label %849

; <label>:849:                                    ; preds = %848, %847, %833, %835, %827
  %850 = call i32 @fputc(i32 9, %struct._IO_FILE* %0)
  br label %851

; <label>:851:                                    ; preds = %849, %826
  %852 = add i64 %823, %50
  br label %1177

; <label>:853:                                    ; preds = %122
  %854 = load i32, i32* %45, align 8
  %855 = add nsw i32 %854, 6
  %856 = srem i32 %855, 7
  %857 = add nsw i32 %856, 1
  br label %359

; <label>:858:                                    ; preds = %122
  %859 = icmp eq i32 %124, 69
  br i1 %859, label %1104, label %860

; <label>:860:                                    ; preds = %858
  %861 = load i32, i32* %39, align 4
  %862 = load i32, i32* %45, align 8
  %863 = add i32 %861, 7
  %864 = sub i32 %863, %862
  %865 = sdiv i32 %864, 7
  br label %359

; <label>:866:                                    ; preds = %122, %122, %122
  %867 = icmp eq i32 %124, 69
  br i1 %867, label %1104, label %868

; <label>:868:                                    ; preds = %866
  %869 = load i32, i32* %34, align 4
  %870 = ashr i32 %869, 31
  %871 = and i32 %870, 400
  %872 = add i32 %869, -100
  %873 = add i32 %872, %871
  %874 = load i32, i32* %39, align 4
  %875 = load i32, i32* %45, align 8
  %876 = add i32 %874, 382
  %877 = sub i32 %876, %875
  %878 = srem i32 %877, 7
  %879 = add i32 %874, 3
  %880 = sub i32 %879, %878
  %881 = icmp slt i32 %880, 0
  br i1 %881, label %882, label %901

; <label>:882:                                    ; preds = %868
  %883 = add nsw i32 %873, -1
  %884 = and i32 %883, 3
  %885 = icmp eq i32 %884, 0
  br i1 %885, label %886, label %893

; <label>:886:                                    ; preds = %882
  %887 = srem i32 %883, 100
  %888 = icmp ne i32 %887, 0
  %889 = srem i32 %883, 400
  %890 = icmp eq i32 %889, 0
  %891 = or i1 %888, %890
  %892 = select i1 %891, i32 366, i32 365
  br label %893

; <label>:893:                                    ; preds = %886, %882
  %894 = phi i32 [ 365, %882 ], [ %892, %886 ]
  %895 = add nsw i32 %894, %874
  %896 = add i32 %895, 382
  %897 = sub i32 %896, %875
  %898 = srem i32 %897, 7
  %899 = add i32 %895, 3
  %900 = sub i32 %899, %898
  br label %923

; <label>:901:                                    ; preds = %868
  %902 = and i32 %873, 3
  %903 = icmp eq i32 %902, 0
  br i1 %903, label %904, label %911

; <label>:904:                                    ; preds = %901
  %905 = srem i32 %873, 100
  %906 = icmp ne i32 %905, 0
  %907 = srem i32 %873, 400
  %908 = icmp eq i32 %907, 0
  %909 = or i1 %906, %908
  %910 = select i1 %909, i32 366, i32 365
  br label %911

; <label>:911:                                    ; preds = %904, %901
  %912 = phi i32 [ 365, %901 ], [ %910, %904 ]
  %913 = sub nsw i32 %874, %912
  %914 = add i32 %913, 382
  %915 = sub i32 %914, %875
  %916 = srem i32 %915, 7
  %917 = add i32 %913, 3
  %918 = sub i32 %917, %916
  %919 = icmp sgt i32 %918, -1
  %920 = lshr i32 %918, 31
  %921 = xor i32 %920, 1
  %922 = select i1 %919, i32 %918, i32 %880
  br label %923

; <label>:923:                                    ; preds = %911, %893
  %924 = phi i32 [ -1, %893 ], [ %921, %911 ]
  %925 = phi i32 [ %900, %893 ], [ %922, %911 ]
  switch i32 %126, label %937 [
    i32 103, label %926
    i32 71, label %940
  ]

; <label>:926:                                    ; preds = %923
  %927 = srem i32 %869, 100
  %928 = add nsw i32 %927, %924
  %929 = srem i32 %928, 100
  %930 = icmp sgt i32 %929, -1
  br i1 %930, label %359, label %931

; <label>:931:                                    ; preds = %926
  %932 = sub nsw i32 -1900, %924
  %933 = icmp slt i32 %869, %932
  %934 = sub nsw i32 0, %929
  %935 = add nsw i32 %929, 100
  %936 = select i1 %933, i32 %934, i32 %935
  br label %359

; <label>:937:                                    ; preds = %923
  %938 = sdiv i32 %925, 7
  %939 = add nsw i32 %938, 1
  br label %359

; <label>:940:                                    ; preds = %923
  %941 = sub nsw i32 -1900, %924
  %942 = icmp slt i32 %869, %941
  %943 = zext i1 %942 to i8
  %944 = add nsw i32 %924, 1900
  %945 = add i32 %944, %869
  br label %366

; <label>:946:                                    ; preds = %122
  %947 = icmp eq i32 %124, 69
  br i1 %947, label %1104, label %948

; <label>:948:                                    ; preds = %946
  %949 = load i32, i32* %39, align 4
  %950 = load i32, i32* %45, align 8
  %951 = add nsw i32 %950, 6
  %952 = srem i32 %951, 7
  %953 = add i32 %949, 7
  %954 = sub i32 %953, %952
  %955 = sdiv i32 %954, 7
  br label %359

; <label>:956:                                    ; preds = %122
  %957 = icmp eq i32 %124, 69
  br i1 %957, label %1104, label %958

; <label>:958:                                    ; preds = %956
  %959 = load i32, i32* %45, align 8
  br label %359

; <label>:960:                                    ; preds = %122
  switch i32 %124, label %961 [
    i32 69, label %227
    i32 79, label %1104
  ]

; <label>:961:                                    ; preds = %960
  %962 = load i32, i32* %34, align 4
  %963 = icmp slt i32 %962, -1900
  %964 = zext i1 %963 to i8
  %965 = add i32 %962, 1900
  %966 = xor i1 %963, true
  br label %379

; <label>:967:                                    ; preds = %122
  %968 = icmp eq i32 %124, 69
  br i1 %968, label %227, label %969

; <label>:969:                                    ; preds = %967
  %970 = load i32, i32* %34, align 4
  %971 = srem i32 %970, 100
  %972 = icmp slt i32 %971, 0
  br i1 %972, label %973, label %359

; <label>:973:                                    ; preds = %969
  %974 = icmp slt i32 %970, -1900
  %975 = sub nsw i32 0, %971
  %976 = add nsw i32 %971, 100
  %977 = select i1 %974, i32 %975, i32 %976
  br label %359

; <label>:978:                                    ; preds = %122
  %979 = icmp eq i8 %83, 0
  %980 = call i64 @strlen(i8* %17) #13
  %981 = icmp sgt i32 %116, 0
  %982 = select i1 %981, i32 %116, i32 0
  %983 = zext i32 %982 to i64
  %984 = icmp ult i64 %980, %983
  %985 = select i1 %984, i64 %983, i64 %980
  %986 = xor i64 %50, -1
  %987 = icmp ult i64 %985, %986
  br i1 %987, label %988, label %1175

; <label>:988:                                    ; preds = %978
  br i1 %27, label %1050, label %989

; <label>:989:                                    ; preds = %988
  br i1 %984, label %990, label %1011

; <label>:990:                                    ; preds = %989
  %991 = sext i32 %116 to i64
  %992 = sub i64 %991, %980
  %993 = icmp eq i32 %70, 48
  %994 = icmp ne i64 %992, 0
  br i1 %993, label %997, label %995

; <label>:995:                                    ; preds = %990
  br i1 %994, label %996, label %1011

; <label>:996:                                    ; preds = %995
  br label %1004

; <label>:997:                                    ; preds = %990
  br i1 %994, label %998, label %1011

; <label>:998:                                    ; preds = %997
  br label %999

; <label>:999:                                    ; preds = %998, %999
  %1000 = phi i64 [ %1002, %999 ], [ 0, %998 ]
  %1001 = call i32 @fputc(i32 48, %struct._IO_FILE* %0)
  %1002 = add nuw i64 %1000, 1
  %1003 = icmp eq i64 %1002, %992
  br i1 %1003, label %1009, label %999

; <label>:1004:                                   ; preds = %996, %1004
  %1005 = phi i64 [ %1007, %1004 ], [ 0, %996 ]
  %1006 = call i32 @fputc(i32 32, %struct._IO_FILE* %0)
  %1007 = add nuw i64 %1005, 1
  %1008 = icmp eq i64 %1007, %992
  br i1 %1008, label %1010, label %1004

; <label>:1009:                                   ; preds = %999
  br label %1011

; <label>:1010:                                   ; preds = %1004
  br label %1011

; <label>:1011:                                   ; preds = %1010, %1009, %995, %997, %989
  br i1 %979, label %1028, label %1012

; <label>:1012:                                   ; preds = %1011
  %1013 = icmp eq i64 %980, 0
  br i1 %1013, label %1050, label %1014

; <label>:1014:                                   ; preds = %1012
  br label %1015

; <label>:1015:                                   ; preds = %1014, %1015
  %1016 = phi i8* [ %1026, %1015 ], [ %17, %1014 ]
  %1017 = phi i64 [ %1018, %1015 ], [ %980, %1014 ]
  %1018 = add i64 %1017, -1
  %1019 = tail call i32** @__ctype_tolower_loc() #1
  %1020 = load i32*, i32** %1019, align 8
  %1021 = load i8, i8* %1016, align 1
  %1022 = zext i8 %1021 to i64
  %1023 = getelementptr inbounds i32, i32* %1020, i64 %1022
  %1024 = load i32, i32* %1023, align 4
  %1025 = call i32 @fputc(i32 %1024, %struct._IO_FILE* %0) #10
  %1026 = getelementptr inbounds i8, i8* %1016, i64 1
  %1027 = icmp eq i64 %1018, 0
  br i1 %1027, label %1049, label %1015

; <label>:1028:                                   ; preds = %1011
  %1029 = icmp eq i8 %78, 0
  br i1 %1029, label %1046, label %1030

; <label>:1030:                                   ; preds = %1028
  %1031 = icmp eq i64 %980, 0
  br i1 %1031, label %1050, label %1032

; <label>:1032:                                   ; preds = %1030
  br label %1033

; <label>:1033:                                   ; preds = %1032, %1033
  %1034 = phi i8* [ %1044, %1033 ], [ %17, %1032 ]
  %1035 = phi i64 [ %1036, %1033 ], [ %980, %1032 ]
  %1036 = add i64 %1035, -1
  %1037 = tail call i32** @__ctype_toupper_loc() #1
  %1038 = load i32*, i32** %1037, align 8
  %1039 = load i8, i8* %1034, align 1
  %1040 = zext i8 %1039 to i64
  %1041 = getelementptr inbounds i32, i32* %1038, i64 %1040
  %1042 = load i32, i32* %1041, align 4
  %1043 = call i32 @fputc(i32 %1042, %struct._IO_FILE* %0) #10
  %1044 = getelementptr inbounds i8, i8* %1034, i64 1
  %1045 = icmp eq i64 %1036, 0
  br i1 %1045, label %1048, label %1033

; <label>:1046:                                   ; preds = %1028
  %1047 = call i64 @fwrite(i8* %17, i64 %980, i64 1, %struct._IO_FILE* %0)
  br label %1050

; <label>:1048:                                   ; preds = %1033
  br label %1050

; <label>:1049:                                   ; preds = %1015
  br label %1050

; <label>:1050:                                   ; preds = %1049, %1048, %1046, %988, %1012, %1030
  %1051 = add i64 %985, %50
  br label %1177

; <label>:1052:                                   ; preds = %127, %1056
  %1053 = phi i64 [ %1057, %1056 ], [ 1, %127 ]
  %1054 = getelementptr inbounds i8, i8* %125, i64 %1053
  %1055 = load i8, i8* %1054, align 1
  switch i8 %1055, label %1103 [
    i8 58, label %1056
    i8 122, label %1058
  ]

; <label>:1056:                                   ; preds = %1052
  %1057 = add i64 %1053, 1
  br label %1052

; <label>:1058:                                   ; preds = %1052
  br label %1059

; <label>:1059:                                   ; preds = %1058, %122
  %1060 = phi i64 [ 0, %122 ], [ %1053, %1058 ]
  %1061 = phi i8* [ %125, %122 ], [ %1054, %1058 ]
  %1062 = load i32, i32* %46, align 8
  %1063 = icmp slt i32 %1062, 0
  br i1 %1063, label %1177, label %1064

; <label>:1064:                                   ; preds = %1059
  %1065 = load i64, i64* %47, align 8
  %1066 = trunc i64 %1065 to i32
  %1067 = icmp slt i32 %1066, 0
  br i1 %1067, label %1073, label %1068

; <label>:1068:                                   ; preds = %1064
  %1069 = icmp eq i32 %1066, 0
  br i1 %1069, label %1070, label %1073

; <label>:1070:                                   ; preds = %1068
  %1071 = load i8, i8* %17, align 1
  %1072 = icmp eq i8 %1071, 45
  br label %1073

; <label>:1073:                                   ; preds = %1068, %1070, %1064
  %1074 = phi i1 [ true, %1064 ], [ false, %1068 ], [ %1072, %1070 ]
  %1075 = zext i1 %1074 to i8
  %1076 = sdiv i32 %1066, 60
  %1077 = sdiv i32 %1066, 3600
  %1078 = srem i32 %1076, 60
  %1079 = srem i32 %1066, 60
  switch i64 %1060, label %1095 [
    i64 0, label %1080
    i64 1, label %1083
    i64 2, label %1086
    i64 3, label %1091
  ]

; <label>:1080:                                   ; preds = %1073
  %1081 = mul nsw i32 %1077, 100
  %1082 = add nsw i32 %1081, %1078
  br label %1095

; <label>:1083:                                   ; preds = %1093, %1073
  %1084 = mul nsw i32 %1077, 100
  %1085 = add nsw i32 %1084, %1078
  br label %1095

; <label>:1086:                                   ; preds = %1091, %1073
  %1087 = mul nsw i32 %1077, 10000
  %1088 = mul nsw i32 %1078, 100
  %1089 = add i32 %1087, %1079
  %1090 = add i32 %1089, %1088
  br label %1095

; <label>:1091:                                   ; preds = %1073
  %1092 = icmp eq i32 %1079, 0
  br i1 %1092, label %1093, label %1086

; <label>:1093:                                   ; preds = %1091
  %1094 = icmp eq i32 %1078, 0
  br i1 %1094, label %1095, label %1083

; <label>:1095:                                   ; preds = %1073, %1093, %1086, %1083, %1080
  %1096 = phi i32 [ 74, %1086 ], [ 74, %1083 ], [ 74, %1080 ], [ 74, %1093 ], [ 24, %1073 ]
  %1097 = phi i32 [ 20, %1086 ], [ 4, %1083 ], [ 0, %1080 ], [ 0, %1093 ], [ %53, %1073 ]
  %1098 = phi i32 [ %1090, %1086 ], [ %1085, %1083 ], [ %1082, %1080 ], [ %1077, %1093 ], [ %52, %1073 ]
  %1099 = phi i32 [ 9, %1086 ], [ 6, %1083 ], [ 5, %1080 ], [ 3, %1093 ], [ 0, %1073 ]
  %1100 = trunc i32 %1096 to i7
  switch i7 %1100, label %1182 [
    i7 -54, label %366
    i7 24, label %1104
  ]

; <label>:1101:                                   ; preds = %122
  %1102 = getelementptr inbounds i8, i8* %125, i64 -1
  br label %1104

; <label>:1103:                                   ; preds = %1052
  br label %1104

; <label>:1104:                                   ; preds = %1103, %960, %128, %168, %173, %178, %182, %343, %679, %1101, %122, %956, %946, %866, %858, %814, %791, %711, %704, %700, %693, %691, %687, %685, %681, %349, %345, %341, %187, %1095
  %1105 = phi i8 [ %78, %122 ], [ %78, %1101 ], [ %78, %1095 ], [ %78, %956 ], [ %78, %946 ], [ %78, %866 ], [ %78, %858 ], [ %78, %814 ], [ %78, %791 ], [ %78, %711 ], [ %78, %704 ], [ %78, %700 ], [ %78, %693 ], [ %78, %691 ], [ %78, %687 ], [ %78, %685 ], [ %78, %681 ], [ %78, %679 ], [ %78, %349 ], [ %78, %345 ], [ %78, %343 ], [ %78, %341 ], [ %78, %187 ], [ %78, %182 ], [ %180, %178 ], [ %78, %173 ], [ %78, %168 ], [ %78, %128 ], [ %78, %960 ], [ %78, %1103 ]
  %1106 = phi i32 [ %53, %122 ], [ %53, %1101 ], [ %1097, %1095 ], [ %53, %956 ], [ %53, %946 ], [ %53, %866 ], [ %53, %858 ], [ %53, %814 ], [ %53, %791 ], [ %53, %711 ], [ %53, %704 ], [ %53, %700 ], [ %53, %693 ], [ %53, %691 ], [ %53, %687 ], [ %53, %685 ], [ %53, %681 ], [ %53, %679 ], [ %53, %349 ], [ %53, %345 ], [ %53, %343 ], [ %53, %341 ], [ %53, %187 ], [ %53, %182 ], [ %53, %178 ], [ %53, %173 ], [ %53, %168 ], [ %53, %128 ], [ %53, %960 ], [ %53, %1103 ]
  %1107 = phi i32 [ %52, %122 ], [ %52, %1101 ], [ %1098, %1095 ], [ %52, %956 ], [ %52, %946 ], [ %52, %866 ], [ %52, %858 ], [ %52, %814 ], [ %52, %791 ], [ %52, %711 ], [ %52, %704 ], [ %52, %700 ], [ %52, %693 ], [ %52, %691 ], [ %52, %687 ], [ %52, %685 ], [ %52, %681 ], [ %52, %679 ], [ %52, %349 ], [ %52, %345 ], [ %52, %343 ], [ %52, %341 ], [ %52, %187 ], [ %52, %182 ], [ %52, %178 ], [ %52, %173 ], [ %52, %168 ], [ %52, %128 ], [ %52, %960 ], [ %52, %1103 ]
  %1108 = phi i32 [ 0, %122 ], [ 0, %1101 ], [ %1099, %1095 ], [ 0, %956 ], [ 0, %946 ], [ 0, %866 ], [ 0, %858 ], [ 0, %814 ], [ 0, %791 ], [ 0, %711 ], [ 0, %704 ], [ 0, %700 ], [ 0, %693 ], [ 0, %691 ], [ 0, %687 ], [ 0, %685 ], [ 0, %681 ], [ 0, %679 ], [ 0, %349 ], [ 0, %345 ], [ 0, %343 ], [ 0, %341 ], [ 0, %187 ], [ 0, %182 ], [ 0, %178 ], [ 0, %173 ], [ 0, %168 ], [ 0, %128 ], [ 0, %960 ], [ 0, %1103 ]
  %1109 = phi i8* [ %125, %122 ], [ %1102, %1101 ], [ %1061, %1095 ], [ %125, %956 ], [ %125, %946 ], [ %125, %866 ], [ %125, %858 ], [ %125, %814 ], [ %125, %791 ], [ %125, %711 ], [ %125, %704 ], [ %125, %700 ], [ %125, %693 ], [ %125, %691 ], [ %125, %687 ], [ %125, %685 ], [ %125, %681 ], [ %125, %679 ], [ %125, %349 ], [ %125, %345 ], [ %125, %343 ], [ %125, %341 ], [ %125, %187 ], [ %125, %182 ], [ %125, %178 ], [ %125, %173 ], [ %125, %168 ], [ %125, %128 ], [ %125, %960 ], [ %125, %1103 ]
  br label %1110

; <label>:1110:                                   ; preds = %1110, %1104
  %1111 = phi i64 [ %1116, %1110 ], [ 1, %1104 ]
  %1112 = sub nsw i64 1, %1111
  %1113 = getelementptr inbounds i8, i8* %1109, i64 %1112
  %1114 = load i8, i8* %1113, align 1
  %1115 = icmp eq i8 %1114, 37
  %1116 = add nuw i64 %1111, 1
  br i1 %1115, label %1117, label %1110

; <label>:1117:                                   ; preds = %1110
  %1118 = shl i64 %1111, 32
  %1119 = ashr exact i64 %1118, 32
  %1120 = icmp sgt i32 %116, 0
  %1121 = select i1 %1120, i32 %116, i32 0
  %1122 = zext i32 %1121 to i64
  %1123 = icmp ult i64 %1119, %1122
  %1124 = select i1 %1123, i64 %1122, i64 %1119
  %1125 = xor i64 %50, -1
  %1126 = icmp ult i64 %1124, %1125
  br i1 %1126, label %1127, label %1175

; <label>:1127:                                   ; preds = %1117
  br i1 %27, label %1173, label %1128

; <label>:1128:                                   ; preds = %1127
  %1129 = icmp ne i32 %1108, 0
  %1130 = xor i1 %1123, true
  %1131 = or i1 %1129, %1130
  br i1 %1131, label %1153, label %1132

; <label>:1132:                                   ; preds = %1128
  %1133 = sext i32 %116 to i64
  %1134 = sub nsw i64 %1133, %1119
  %1135 = icmp eq i32 %70, 48
  %1136 = icmp ne i64 %1134, 0
  br i1 %1135, label %1139, label %1137

; <label>:1137:                                   ; preds = %1132
  br i1 %1136, label %1138, label %1153

; <label>:1138:                                   ; preds = %1137
  br label %1146

; <label>:1139:                                   ; preds = %1132
  br i1 %1136, label %1140, label %1153

; <label>:1140:                                   ; preds = %1139
  br label %1141

; <label>:1141:                                   ; preds = %1140, %1141
  %1142 = phi i64 [ %1144, %1141 ], [ 0, %1140 ]
  %1143 = call i32 @fputc(i32 48, %struct._IO_FILE* %0)
  %1144 = add nuw i64 %1142, 1
  %1145 = icmp eq i64 %1144, %1134
  br i1 %1145, label %1151, label %1141

; <label>:1146:                                   ; preds = %1138, %1146
  %1147 = phi i64 [ %1149, %1146 ], [ 0, %1138 ]
  %1148 = call i32 @fputc(i32 32, %struct._IO_FILE* %0)
  %1149 = add nuw i64 %1147, 1
  %1150 = icmp eq i64 %1149, %1134
  br i1 %1150, label %1152, label %1146

; <label>:1151:                                   ; preds = %1141
  br label %1153

; <label>:1152:                                   ; preds = %1146
  br label %1153

; <label>:1153:                                   ; preds = %1152, %1151, %1137, %1139, %1128
  %1154 = and i8 %1105, 1
  %1155 = icmp eq i8 %1154, 0
  br i1 %1155, label %1170, label %1156

; <label>:1156:                                   ; preds = %1153
  br label %1157

; <label>:1157:                                   ; preds = %1156, %1157
  %1158 = phi i8* [ %1168, %1157 ], [ %1113, %1156 ]
  %1159 = phi i64 [ %1160, %1157 ], [ %1119, %1156 ]
  %1160 = add i64 %1159, -1
  %1161 = tail call i32** @__ctype_toupper_loc() #1
  %1162 = load i32*, i32** %1161, align 8
  %1163 = load i8, i8* %1158, align 1
  %1164 = zext i8 %1163 to i64
  %1165 = getelementptr inbounds i32, i32* %1162, i64 %1164
  %1166 = load i32, i32* %1165, align 4
  %1167 = call i32 @fputc(i32 %1166, %struct._IO_FILE* %0) #10
  %1168 = getelementptr inbounds i8, i8* %1158, i64 1
  %1169 = icmp eq i64 %1160, 0
  br i1 %1169, label %1172, label %1157

; <label>:1170:                                   ; preds = %1153
  %1171 = call i64 @fwrite(i8* %1113, i64 %1119, i64 1, %struct._IO_FILE* %0)
  br label %1173

; <label>:1172:                                   ; preds = %1157
  br label %1173

; <label>:1173:                                   ; preds = %1172, %1170, %1127
  %1174 = add i64 %1124, %50
  br label %1177

; <label>:1175:                                   ; preds = %1117, %978, %817, %744, %618, %579, %524, %493, %520, %473, %432, %189, %130
  br label %1176

; <label>:1176:                                   ; preds = %1175, %326
  call void @llvm.lifetime.end(i64 23, i8* nonnull %26) #10
  br label %1198

; <label>:1177:                                   ; preds = %1173, %1050, %851, %778, %677, %324, %225, %166, %1059
  %1178 = phi i32 [ %1106, %1173 ], [ %53, %1050 ], [ %53, %851 ], [ %53, %778 ], [ %414, %677 ], [ %232, %324 ], [ %53, %225 ], [ %53, %166 ], [ %53, %1059 ]
  %1179 = phi i32 [ %1107, %1173 ], [ %52, %1050 ], [ %52, %851 ], [ %52, %778 ], [ %417, %677 ], [ %233, %324 ], [ %52, %225 ], [ %52, %166 ], [ %52, %1059 ]
  %1180 = phi i8* [ %1109, %1173 ], [ %125, %1050 ], [ %125, %851 ], [ %125, %778 ], [ %420, %677 ], [ %236, %324 ], [ %125, %225 ], [ %125, %166 ], [ %1061, %1059 ]
  %1181 = phi i64 [ %1174, %1173 ], [ %1051, %1050 ], [ %852, %851 ], [ %779, %778 ], [ %678, %677 ], [ %325, %324 ], [ %226, %225 ], [ %167, %166 ], [ %50, %1059 ]
  call void @llvm.lifetime.end(i64 23, i8* nonnull %26) #10
  br label %1188

; <label>:1182:                                   ; preds = %64, %1095
  %1183 = phi i32 [ %1096, %1095 ], [ %68, %64 ]
  %1184 = phi i32 [ %1097, %1095 ], [ %53, %64 ]
  %1185 = phi i32 [ %1098, %1095 ], [ %52, %64 ]
  %1186 = phi i8* [ %1061, %1095 ], [ %51, %64 ]
  %1187 = phi i64 [ %50, %1095 ], [ %66, %64 ]
  call void @llvm.lifetime.end(i64 23, i8* nonnull %26) #10
  switch i32 %1183, label %1196 [
    i32 0, label %1188
    i32 4, label %1188
  ]

; <label>:1188:                                   ; preds = %1177, %1182, %1182
  %1189 = phi i64 [ %1181, %1177 ], [ %1187, %1182 ], [ %1187, %1182 ]
  %1190 = phi i8* [ %1180, %1177 ], [ %1186, %1182 ], [ %1186, %1182 ]
  %1191 = phi i32 [ %1179, %1177 ], [ %1185, %1182 ], [ %1185, %1182 ]
  %1192 = phi i32 [ %1178, %1177 ], [ %1184, %1182 ], [ %1184, %1182 ]
  %1193 = getelementptr inbounds i8, i8* %1190, i64 1
  %1194 = load i8, i8* %1193, align 1
  %1195 = icmp eq i8 %1194, 0
  br i1 %1195, label %1196, label %48

; <label>:1196:                                   ; preds = %1188, %1182
  %1197 = phi i64 [ 0, %1182 ], [ %1189, %1188 ]
  br label %1198

; <label>:1198:                                   ; preds = %1196, %6, %1176
  %1199 = phi i64 [ 0, %1176 ], [ 0, %6 ], [ %1197, %1196 ]
  ret i64 %1199
}

; Function Attrs: nounwind
declare i32 @fputc(i32, %struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind
declare i64 @strftime(i8*, i64, i8*, %struct.tm*) local_unnamed_addr #2

; Function Attrs: nounwind readnone
declare i32** @__ctype_tolower_loc() local_unnamed_addr #8

; Function Attrs: nounwind readnone
declare i32** @__ctype_toupper_loc() local_unnamed_addr #8

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #7

; Function Attrs: nounwind readonly
declare i64 @strlen(i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define void @parse_long_options(i32, i8**, i8*, i8*, i8*, void (i32)* nocapture, ...) local_unnamed_addr #6 {
  %7 = alloca [1 x %struct.__va_list_tag], align 16
  %8 = load i32, i32* @opterr, align 4
  store i32 0, i32* @opterr, align 4
  %9 = icmp eq i32 %0, 2
  br i1 %9, label %10, label %17

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 @getopt_long(i32 2, i8** %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.54, i64 0, i64 0), %struct.option* getelementptr inbounds ([3 x %struct.option], [3 x %struct.option]* @long_options, i64 0, i64 0), i32* null) #10
  switch i32 %11, label %17 [
    i32 118, label %13
    i32 104, label %12
  ]

; <label>:12:                                     ; preds = %10
  tail call void %5(i32 0) #10
  br label %17

; <label>:13:                                     ; preds = %10
  %14 = bitcast [1 x %struct.__va_list_tag]* %7 to i8*
  call void @llvm.lifetime.start(i64 24, i8* nonnull %14) #10
  %15 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %7, i64 0, i64 0
  call void @llvm.va_start(i8* nonnull %14)
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  call void @version_etc_va(%struct._IO_FILE* %16, i8* %2, i8* %3, i8* %4, %struct.__va_list_tag* nonnull %15) #10
  call void @exit(i32 0) #14
  unreachable

; <label>:17:                                     ; preds = %10, %12, %6
  store i32 %8, i32* @opterr, align 4
  store i32 0, i32* @optind, align 4
  ret void
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #10

; Function Attrs: nounwind sspstrong uwtable
define void @set_program_name(i8*) local_unnamed_addr #6 {
  %2 = icmp eq i8* %0, null
  br i1 %2, label %3, label %6

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.61, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #16
  tail call void @abort() #14
  unreachable

; <label>:6:                                      ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #13
  %8 = icmp ne i8* %7, null
  %9 = getelementptr inbounds i8, i8* %7, i64 1
  %10 = select i1 %8, i8* %9, i8* %0
  %11 = ptrtoint i8* %10 to i64
  %12 = ptrtoint i8* %0 to i64
  %13 = sub i64 %11, %12
  %14 = icmp sgt i64 %13, 6
  br i1 %14, label %15, label %24

; <label>:15:                                     ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7
  %17 = tail call i32 @strncmp(i8* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.62, i64 0, i64 0), i64 7) #13
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %24

; <label>:19:                                     ; preds = %15
  %20 = tail call i32 @strncmp(i8* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.63, i64 0, i64 0), i64 3) #13
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %24

; <label>:22:                                     ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3
  store i8* %23, i8** @program_invocation_short_name, align 8
  br label %24

; <label>:24:                                     ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  store i8* %25, i8** @program_name, align 8
  store i8* %25, i8** @program_invocation_name, align 8
  ret void
}

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #5

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define %struct.quoting_options* @clone_quoting_options(%struct.quoting_options*) local_unnamed_addr #6 {
  %2 = tail call i32* @__errno_location() #1
  %3 = load i32, i32* %2, align 4
  %4 = icmp ne %struct.quoting_options* %0, null
  %5 = bitcast %struct.quoting_options* %0 to i8*
  %6 = select i1 %4, i8* %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*)
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #10
  %8 = bitcast i8* %7 to %struct.quoting_options*
  store i32 %3, i32* %2, align 4
  ret %struct.quoting_options* %8
}

; Function Attrs: nounwind readonly sspstrong uwtable
define i32 @get_quoting_style(%struct.quoting_options* readonly) local_unnamed_addr #11 {
  %2 = icmp ne %struct.quoting_options* %0, null
  %3 = select i1 %2, %struct.quoting_options* %0, %struct.quoting_options* @default_quoting_options
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0
  %5 = load i32, i32* %4, align 8
  ret i32 %5
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_quoting_style(%struct.quoting_options*, i32) local_unnamed_addr #6 {
  %3 = icmp ne %struct.quoting_options* %0, null
  %4 = select i1 %3, %struct.quoting_options* %0, %struct.quoting_options* @default_quoting_options
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0
  store i32 %1, i32* %5, align 8
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_char_quoting(%struct.quoting_options*, i8 signext, i32) local_unnamed_addr #6 {
  %4 = icmp ne %struct.quoting_options* %0, null
  %5 = select i1 %4, %struct.quoting_options* %0, %struct.quoting_options* @default_quoting_options
  %6 = lshr i8 %1, 5
  %7 = zext i8 %6 to i64
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7
  %9 = and i8 %1, 31
  %10 = zext i8 %9 to i32
  %11 = load i32, i32* %8, align 4
  %12 = lshr i32 %11, %10
  %13 = and i32 %12, 1
  %14 = and i32 %2, 1
  %15 = xor i32 %13, %14
  %16 = shl i32 %15, %10
  %17 = xor i32 %16, %11
  store i32 %17, i32* %8, align 4
  ret i32 %13
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_quoting_flags(%struct.quoting_options*, i32) local_unnamed_addr #6 {
  %3 = icmp eq %struct.quoting_options* %0, null
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1
  %6 = load i32, i32* %5, align 4
  store i32 %1, i32* %5, align 4
  ret i32 %6
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_custom_quoting(%struct.quoting_options*, i8*, i8*) local_unnamed_addr #6 {
  %4 = icmp eq %struct.quoting_options* %0, null
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0
  store i32 10, i32* %6, align 8
  %7 = icmp ne i8* %1, null
  %8 = icmp ne i8* %2, null
  %9 = and i1 %7, %8
  br i1 %9, label %11, label %10

; <label>:10:                                     ; preds = %3
  tail call void @abort() #14
  unreachable

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3
  store i8* %1, i8** %12, align 8
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4
  store i8* %2, i8** %13, align 8
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define i64 @quotearg_buffer(i8*, i64, i8*, i64, %struct.quoting_options* readonly) local_unnamed_addr #6 {
  %6 = icmp ne %struct.quoting_options* %4, null
  %7 = select i1 %6, %struct.quoting_options* %4, %struct.quoting_options* @default_quoting_options
  %8 = tail call i32* @__errno_location() #1
  %9 = load i32, i32* %8, align 4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3
  %16 = load i8*, i8** %15, align 8
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4
  %18 = load i8*, i8** %17, align 8
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* %14, i8* %16, i8* %18)
  store i32 %9, i32* %8, align 4
  ret i64 %19
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8*, i64, i8*, i64, i32, i32, i32* readonly, i8* readonly, i8* readonly) unnamed_addr #6 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  %13 = tail call i64 @__ctype_get_mb_cur_max() #10
  %14 = icmp eq i64 %13, 1
  %15 = lshr i32 %5, 1
  %16 = trunc i32 %15 to i8
  %17 = and i8 %16, 1
  %18 = bitcast i64* %10 to i8*
  %19 = bitcast i32* %12 to i8*
  %20 = icmp eq i32* %6, null
  %21 = icmp ne i32* %6, null
  %22 = and i32 %5, 1
  %23 = icmp eq i32 %22, 0
  %24 = and i32 %5, 4
  %25 = icmp eq i32 %24, 0
  %26 = getelementptr inbounds i8, i8* %2, i64 1
  br label %27

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
  ]

; <label>:41:                                     ; preds = %27
  br label %95

; <label>:42:                                     ; preds = %27
  %43 = and i8 %36, 1
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %45, label %95

; <label>:45:                                     ; preds = %42
  %46 = icmp eq i64 %40, 0
  br i1 %46, label %95, label %47

; <label>:47:                                     ; preds = %45
  store i8 34, i8* %0, align 1
  br label %95

; <label>:48:                                     ; preds = %27, %27
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.74, i64 0, i64 0), i32 %28)
  %50 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.75, i64 0, i64 0), i32 %28)
  br label %51

; <label>:51:                                     ; preds = %27, %48
  %52 = phi i8* [ %49, %48 ], [ %29, %27 ]
  %53 = phi i8* [ %50, %48 ], [ %30, %27 ]
  %54 = and i8 %36, 1
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %56, label %73

; <label>:56:                                     ; preds = %51
  %57 = load i8, i8* %52, align 1
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %73, label %59

; <label>:59:                                     ; preds = %56
  br label %60

; <label>:60:                                     ; preds = %59, %67
  %61 = phi i8 [ %70, %67 ], [ %57, %59 ]
  %62 = phi i8* [ %69, %67 ], [ %52, %59 ]
  %63 = phi i64 [ %68, %67 ], [ 0, %59 ]
  %64 = icmp ult i64 %63, %40
  br i1 %64, label %65, label %67

; <label>:65:                                     ; preds = %60
  %66 = getelementptr inbounds i8, i8* %0, i64 %63
  store i8 %61, i8* %66, align 1
  br label %67

; <label>:67:                                     ; preds = %65, %60
  %68 = add i64 %63, 1
  %69 = getelementptr inbounds i8, i8* %62, i64 1
  %70 = load i8, i8* %69, align 1
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %72, label %60

; <label>:72:                                     ; preds = %67
  br label %73

; <label>:73:                                     ; preds = %72, %56, %51
  %74 = phi i64 [ 0, %51 ], [ 0, %56 ], [ %68, %72 ]
  %75 = call i64 @strlen(i8* %53) #13
  br label %95

; <label>:76:                                     ; preds = %27
  br label %77

; <label>:77:                                     ; preds = %27, %76
  %78 = phi i8 [ %34, %27 ], [ 1, %76 ]
  br label %79

; <label>:79:                                     ; preds = %27, %77
  %80 = phi i8 [ %34, %27 ], [ %78, %77 ]
  %81 = phi i8 [ %36, %27 ], [ 1, %77 ]
  %82 = and i8 %81, 1
  %83 = icmp eq i8 %82, 0
  %84 = select i1 %83, i8 1, i8 %80
  br label %85

; <label>:85:                                     ; preds = %79, %27
  %86 = phi i8 [ %34, %27 ], [ %84, %79 ]
  %87 = phi i8 [ %36, %27 ], [ %81, %79 ]
  %88 = and i8 %87, 1
  %89 = icmp eq i8 %88, 0
  br i1 %89, label %90, label %95

; <label>:90:                                     ; preds = %85
  %91 = icmp eq i64 %40, 0
  br i1 %91, label %95, label %92

; <label>:92:                                     ; preds = %90
  store i8 39, i8* %0, align 1
  br label %95

; <label>:93:                                     ; preds = %27
  br label %95

; <label>:94:                                     ; preds = %27
  call void @abort() #14
  unreachable

; <label>:95:                                     ; preds = %41, %85, %90, %92, %27, %42, %45, %47, %93, %73
  %96 = phi i32 [ 0, %93 ], [ %28, %73 ], [ 5, %47 ], [ 5, %45 ], [ 5, %42 ], [ 7, %27 ], [ 2, %92 ], [ 2, %90 ], [ 2, %85 ], [ 5, %41 ]
  %97 = phi i8* [ %29, %93 ], [ %52, %73 ], [ %29, %47 ], [ %29, %45 ], [ %29, %42 ], [ %29, %27 ], [ %29, %92 ], [ %29, %90 ], [ %29, %85 ], [ %29, %41 ]
  %98 = phi i8* [ %30, %93 ], [ %53, %73 ], [ %30, %47 ], [ %30, %45 ], [ %30, %42 ], [ %30, %27 ], [ %30, %92 ], [ %30, %90 ], [ %30, %85 ], [ %30, %41 ]
  %99 = phi i64 [ 0, %93 ], [ %74, %73 ], [ 1, %47 ], [ 1, %45 ], [ 0, %42 ], [ 0, %27 ], [ 1, %92 ], [ 1, %90 ], [ 0, %85 ], [ 0, %41 ]
  %100 = phi i8* [ %32, %93 ], [ %53, %73 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.76, i64 0, i64 0), %47 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.76, i64 0, i64 0), %45 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.76, i64 0, i64 0), %42 ], [ %32, %27 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.75, i64 0, i64 0), %92 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.75, i64 0, i64 0), %90 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.75, i64 0, i64 0), %85 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.76, i64 0, i64 0), %41 ]
  %101 = phi i64 [ %33, %93 ], [ %75, %73 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ %33, %27 ], [ 1, %92 ], [ 1, %90 ], [ 1, %85 ], [ 1, %41 ]
  %102 = phi i8 [ %34, %93 ], [ 1, %73 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ 1, %27 ], [ %86, %92 ], [ %86, %90 ], [ %86, %85 ], [ 1, %41 ]
  %103 = phi i8 [ 0, %93 ], [ %36, %73 ], [ %36, %47 ], [ %36, %45 ], [ %36, %42 ], [ 0, %27 ], [ %87, %92 ], [ %87, %90 ], [ %87, %85 ], [ 1, %41 ]
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
  br label %123

; <label>:123:                                    ; preds = %587, %95
  %124 = phi i64 [ 0, %95 ], [ %596, %587 ]
  %125 = phi i64 [ %99, %95 ], [ %589, %587 ]
  %126 = phi i64 [ %31, %95 ], [ %590, %587 ]
  %127 = phi i64 [ %35, %95 ], [ %591, %587 ]
  %128 = phi i8 [ %37, %95 ], [ %592, %587 ]
  %129 = phi i8 [ %38, %95 ], [ %593, %587 ]
  %130 = phi i8 [ %39, %95 ], [ %594, %587 ]
  %131 = phi i64 [ %40, %95 ], [ %595, %587 ]
  %132 = icmp eq i64 %127, -1
  br i1 %132, label %135, label %133

; <label>:133:                                    ; preds = %123
  %134 = icmp eq i64 %124, %127
  br i1 %134, label %597, label %139

; <label>:135:                                    ; preds = %123
  %136 = getelementptr inbounds i8, i8* %2, i64 %124
  %137 = load i8, i8* %136, align 1
  %138 = icmp eq i8 %137, 0
  br i1 %138, label %597, label %139

; <label>:139:                                    ; preds = %133, %135
  br i1 %109, label %140, label %155

; <label>:140:                                    ; preds = %139
  %141 = add i64 %124, %101
  %142 = and i1 %110, %132
  br i1 %142, label %143, label %145

; <label>:143:                                    ; preds = %140
  %144 = call i64 @strlen(i8* %2) #13
  br label %145

; <label>:145:                                    ; preds = %140, %143
  %146 = phi i64 [ %144, %143 ], [ %127, %140 ]
  %147 = icmp ugt i64 %141, %146
  br i1 %147, label %155, label %148

; <label>:148:                                    ; preds = %145
  %149 = getelementptr inbounds i8, i8* %2, i64 %124
  %150 = call i32 @memcmp(i8* %149, i8* %100, i64 %101) #13
  %151 = icmp ne i32 %150, 0
  %152 = or i1 %151, %112
  %153 = xor i1 %151, true
  %154 = zext i1 %153 to i8
  br i1 %152, label %155, label %644

; <label>:155:                                    ; preds = %148, %145, %139
  %156 = phi i64 [ %146, %148 ], [ %146, %145 ], [ %127, %139 ]
  %157 = phi i8 [ %154, %148 ], [ 0, %145 ], [ 0, %139 ]
  %158 = getelementptr inbounds i8, i8* %2, i64 %124
  %159 = load i8, i8* %158, align 1
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
  ]

; <label>:160:                                    ; preds = %155
  br i1 %105, label %161, label %209

; <label>:161:                                    ; preds = %160
  br i1 %112, label %162, label %644

; <label>:162:                                    ; preds = %161
  %163 = and i8 %128, 1
  %164 = icmp eq i8 %163, 0
  %165 = and i1 %114, %164
  br i1 %165, label %166, label %182

; <label>:166:                                    ; preds = %162
  %167 = icmp ult i64 %125, %131
  br i1 %167, label %168, label %170

; <label>:168:                                    ; preds = %166
  %169 = getelementptr inbounds i8, i8* %0, i64 %125
  store i8 39, i8* %169, align 1
  br label %170

; <label>:170:                                    ; preds = %168, %166
  %171 = add i64 %125, 1
  %172 = icmp ult i64 %171, %131
  br i1 %172, label %173, label %175

; <label>:173:                                    ; preds = %170
  %174 = getelementptr inbounds i8, i8* %0, i64 %171
  store i8 36, i8* %174, align 1
  br label %175

; <label>:175:                                    ; preds = %173, %170
  %176 = add i64 %125, 2
  %177 = icmp ult i64 %176, %131
  br i1 %177, label %178, label %180

; <label>:178:                                    ; preds = %175
  %179 = getelementptr inbounds i8, i8* %0, i64 %176
  store i8 39, i8* %179, align 1
  br label %180

; <label>:180:                                    ; preds = %178, %175
  %181 = add i64 %125, 3
  br label %182

; <label>:182:                                    ; preds = %162, %180
  %183 = phi i64 [ %181, %180 ], [ %125, %162 ]
  %184 = phi i8 [ 1, %180 ], [ %128, %162 ]
  %185 = icmp ult i64 %183, %131
  br i1 %185, label %186, label %188

; <label>:186:                                    ; preds = %182
  %187 = getelementptr inbounds i8, i8* %0, i64 %183
  store i8 92, i8* %187, align 1
  br label %188

; <label>:188:                                    ; preds = %186, %182
  %189 = add i64 %183, 1
  br i1 %106, label %190, label %476

; <label>:190:                                    ; preds = %188
  %191 = add i64 %124, 1
  %192 = icmp ult i64 %191, %156
  br i1 %192, label %193, label %476

; <label>:193:                                    ; preds = %190
  %194 = getelementptr inbounds i8, i8* %2, i64 %191
  %195 = load i8, i8* %194, align 1
  %196 = add i8 %195, -48
  %197 = icmp ult i8 %196, 10
  br i1 %197, label %198, label %476

; <label>:198:                                    ; preds = %193
  %199 = icmp ult i64 %189, %131
  br i1 %199, label %200, label %202

; <label>:200:                                    ; preds = %198
  %201 = getelementptr inbounds i8, i8* %0, i64 %189
  store i8 48, i8* %201, align 1
  br label %202

; <label>:202:                                    ; preds = %200, %198
  %203 = add i64 %183, 2
  %204 = icmp ult i64 %203, %131
  br i1 %204, label %205, label %207

; <label>:205:                                    ; preds = %202
  %206 = getelementptr inbounds i8, i8* %0, i64 %203
  store i8 48, i8* %206, align 1
  br label %207

; <label>:207:                                    ; preds = %205, %202
  %208 = add i64 %183, 3
  br label %476

; <label>:209:                                    ; preds = %160
  br i1 %23, label %476, label %587

; <label>:210:                                    ; preds = %155
  switch i32 %96, label %476 [
    i32 2, label %211
    i32 5, label %212
  ]

; <label>:211:                                    ; preds = %210
  br i1 %112, label %476, label %644

; <label>:212:                                    ; preds = %210
  br i1 %25, label %476, label %213

; <label>:213:                                    ; preds = %212
  %214 = add i64 %124, 2
  %215 = icmp ult i64 %214, %156
  br i1 %215, label %216, label %476

; <label>:216:                                    ; preds = %213
  %217 = add i64 %124, 1
  %218 = getelementptr inbounds i8, i8* %2, i64 %217
  %219 = load i8, i8* %218, align 1
  %220 = icmp eq i8 %219, 63
  br i1 %220, label %221, label %476

; <label>:221:                                    ; preds = %216
  %222 = getelementptr inbounds i8, i8* %2, i64 %214
  %223 = load i8, i8* %222, align 1
  %224 = sext i8 %223 to i32
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
  ]

; <label>:225:                                    ; preds = %221, %221, %221, %221, %221, %221, %221, %221, %221
  br i1 %112, label %226, label %644

; <label>:226:                                    ; preds = %225
  %227 = icmp ult i64 %125, %131
  br i1 %227, label %228, label %230

; <label>:228:                                    ; preds = %226
  %229 = getelementptr inbounds i8, i8* %0, i64 %125
  store i8 63, i8* %229, align 1
  br label %230

; <label>:230:                                    ; preds = %228, %226
  %231 = add i64 %125, 1
  %232 = icmp ult i64 %231, %131
  br i1 %232, label %233, label %235

; <label>:233:                                    ; preds = %230
  %234 = getelementptr inbounds i8, i8* %0, i64 %231
  store i8 34, i8* %234, align 1
  br label %235

; <label>:235:                                    ; preds = %233, %230
  %236 = add i64 %125, 2
  %237 = icmp ult i64 %236, %131
  br i1 %237, label %238, label %240

; <label>:238:                                    ; preds = %235
  %239 = getelementptr inbounds i8, i8* %0, i64 %236
  store i8 34, i8* %239, align 1
  br label %240

; <label>:240:                                    ; preds = %238, %235
  %241 = add i64 %125, 3
  %242 = icmp ult i64 %241, %131
  br i1 %242, label %243, label %245

; <label>:243:                                    ; preds = %240
  %244 = getelementptr inbounds i8, i8* %0, i64 %241
  store i8 63, i8* %244, align 1
  br label %245

; <label>:245:                                    ; preds = %243, %240
  %246 = add i64 %125, 4
  br label %476

; <label>:247:                                    ; preds = %155
  br label %257

; <label>:248:                                    ; preds = %155
  br label %257

; <label>:249:                                    ; preds = %155
  br label %255

; <label>:250:                                    ; preds = %155
  br label %255

; <label>:251:                                    ; preds = %155
  br label %257

; <label>:252:                                    ; preds = %155
  br i1 %114, label %253, label %254

; <label>:253:                                    ; preds = %252
  br i1 %112, label %542, label %644

; <label>:254:                                    ; preds = %252
  br i1 %122, label %542, label %255

; <label>:255:                                    ; preds = %254, %155, %250, %249
  %256 = phi i8 [ 92, %254 ], [ 116, %250 ], [ 114, %249 ], [ 110, %155 ]
  br i1 %118, label %257, label %644

; <label>:257:                                    ; preds = %255, %155, %251, %248, %247
  %258 = phi i8 [ %256, %255 ], [ 118, %251 ], [ 102, %248 ], [ 98, %247 ], [ 97, %155 ]
  br i1 %105, label %503, label %476

; <label>:259:                                    ; preds = %155, %155
  %260 = icmp eq i64 %156, -1
  br i1 %260, label %261, label %266

; <label>:261:                                    ; preds = %259
  %262 = load i8, i8* %26, align 1
  %263 = icmp ne i8 %262, 0
  %264 = icmp ne i64 %124, 0
  %265 = or i1 %264, %263
  br i1 %265, label %476, label %272

; <label>:266:                                    ; preds = %259
  %267 = icmp ne i64 %156, 1
  %268 = icmp ne i64 %124, 0
  %269 = or i1 %268, %267
  br i1 %269, label %476, label %272

; <label>:270:                                    ; preds = %155, %155
  %271 = icmp eq i64 %124, 0
  br i1 %271, label %272, label %476

; <label>:272:                                    ; preds = %270, %266, %261, %155
  br label %273

; <label>:273:                                    ; preds = %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %272
  %274 = phi i8 [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 1, %272 ]
  br i1 %118, label %476, label %644

; <label>:275:                                    ; preds = %155
  br i1 %114, label %276, label %476

; <label>:276:                                    ; preds = %275
  br i1 %112, label %277, label %644

; <label>:277:                                    ; preds = %276
  %278 = icmp eq i64 %131, 0
  %279 = icmp ne i64 %126, 0
  %280 = or i1 %279, %278
  %281 = select i1 %280, i64 %126, i64 %131
  %282 = select i1 %280, i64 %131, i64 0
  %283 = icmp ult i64 %125, %282
  br i1 %283, label %284, label %286

; <label>:284:                                    ; preds = %277
  %285 = getelementptr inbounds i8, i8* %0, i64 %125
  store i8 39, i8* %285, align 1
  br label %286

; <label>:286:                                    ; preds = %284, %277
  %287 = add i64 %125, 1
  %288 = icmp ult i64 %287, %282
  br i1 %288, label %289, label %291

; <label>:289:                                    ; preds = %286
  %290 = getelementptr inbounds i8, i8* %0, i64 %287
  store i8 92, i8* %290, align 1
  br label %291

; <label>:291:                                    ; preds = %289, %286
  %292 = add i64 %125, 2
  %293 = icmp ult i64 %292, %282
  br i1 %293, label %294, label %296

; <label>:294:                                    ; preds = %291
  %295 = getelementptr inbounds i8, i8* %0, i64 %292
  store i8 39, i8* %295, align 1
  br label %296

; <label>:296:                                    ; preds = %294, %291
  %297 = add i64 %125, 3
  br label %476

; <label>:298:                                    ; preds = %155
  br i1 %14, label %299, label %308

; <label>:299:                                    ; preds = %298
  %300 = tail call i16** @__ctype_b_loc() #1
  %301 = load i16*, i16** %300, align 8
  %302 = zext i8 %159 to i64
  %303 = getelementptr inbounds i16, i16* %301, i64 %302
  %304 = load i16, i16* %303, align 2
  %305 = lshr i16 %304, 14
  %306 = trunc i16 %305 to i8
  %307 = and i8 %306, 1
  br label %368

; <label>:308:                                    ; preds = %298
  call void @llvm.lifetime.start(i64 8, i8* nonnull %18) #10
  store i64 0, i64* %10, align 8
  %309 = icmp eq i64 %156, -1
  br i1 %309, label %310, label %312

; <label>:310:                                    ; preds = %308
  %311 = call i64 @strlen(i8* nonnull %2) #13
  br label %312

; <label>:312:                                    ; preds = %310, %308
  %313 = phi i64 [ %156, %308 ], [ %311, %310 ]
  br label %314

; <label>:314:                                    ; preds = %312, %355
  %315 = phi i64 [ %360, %355 ], [ 0, %312 ]
  %316 = phi i8 [ %359, %355 ], [ 1, %312 ]
  call void @llvm.lifetime.start(i64 4, i8* nonnull %19) #10
  %317 = add i64 %315, %124
  %318 = getelementptr inbounds i8, i8* %2, i64 %317
  %319 = sub i64 %313, %317
  %320 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %318, i64 %319, %struct.__mbstate_t* nonnull %11) #10
  switch i64 %320, label %334 [
    i64 0, label %350
    i64 -1, label %347
    i64 -2, label %321
  ]

; <label>:321:                                    ; preds = %314
  %322 = icmp ugt i64 %313, %317
  br i1 %322, label %323, label %351

; <label>:323:                                    ; preds = %321
  br label %324

; <label>:324:                                    ; preds = %323, %330
  %325 = phi i64 [ %332, %330 ], [ %317, %323 ]
  %326 = phi i64 [ %331, %330 ], [ %315, %323 ]
  %327 = getelementptr inbounds i8, i8* %2, i64 %325
  %328 = load i8, i8* %327, align 1
  %329 = icmp eq i8 %328, 0
  br i1 %329, label %348, label %330

; <label>:330:                                    ; preds = %324
  %331 = add i64 %326, 1
  %332 = add i64 %331, %124
  %333 = icmp ult i64 %332, %313
  br i1 %333, label %324, label %348

; <label>:334:                                    ; preds = %314
  %335 = icmp ugt i64 %320, 1
  %336 = and i1 %116, %335
  br i1 %336, label %337, label %355

; <label>:337:                                    ; preds = %334
  br label %338

; <label>:338:                                    ; preds = %337, %344
  %339 = phi i64 [ %345, %344 ], [ 1, %337 ]
  %340 = add i64 %339, %317
  %341 = getelementptr inbounds i8, i8* %2, i64 %340
  %342 = load i8, i8* %341, align 1
  %343 = sext i8 %342 to i32
  switch i32 %343, label %344 [
    i32 91, label %367
    i32 92, label %367
    i32 94, label %367
    i32 96, label %367
    i32 124, label %367
  ]

; <label>:344:                                    ; preds = %338
  %345 = add nuw i64 %339, 1
  %346 = icmp ult i64 %345, %320
  br i1 %346, label %338, label %354

; <label>:347:                                    ; preds = %314
  br label %351

; <label>:348:                                    ; preds = %324, %330
  %349 = phi i64 [ %331, %330 ], [ %326, %324 ]
  br label %351

; <label>:350:                                    ; preds = %314
  br label %351

; <label>:351:                                    ; preds = %350, %348, %347, %321
  %352 = phi i64 [ %315, %321 ], [ %315, %347 ], [ %349, %348 ], [ %315, %350 ]
  %353 = phi i8 [ 0, %321 ], [ 0, %347 ], [ 0, %348 ], [ %316, %350 ]
  call void @llvm.lifetime.end(i64 4, i8* nonnull %19) #10
  br label %364

; <label>:354:                                    ; preds = %344
  br label %355

; <label>:355:                                    ; preds = %354, %334
  %356 = load i32, i32* %12, align 4
  %357 = call i32 @iswprint(i32 %356) #10
  %358 = icmp eq i32 %357, 0
  %359 = select i1 %358, i8 0, i8 %316
  %360 = add i64 %320, %315
  call void @llvm.lifetime.end(i64 4, i8* nonnull %19) #10
  %361 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #13
  %362 = icmp eq i32 %361, 0
  br i1 %362, label %314, label %363

; <label>:363:                                    ; preds = %355
  br label %364

; <label>:364:                                    ; preds = %363, %351
  %365 = phi i8 [ %353, %351 ], [ %359, %363 ]
  %366 = phi i64 [ %352, %351 ], [ %360, %363 ]
  call void @llvm.lifetime.end(i64 8, i8* nonnull %18) #10
  br label %368

; <label>:367:                                    ; preds = %338, %338, %338, %338, %338
  call void @llvm.lifetime.end(i64 4, i8* nonnull %19) #10
  call void @llvm.lifetime.end(i64 8, i8* nonnull %18) #10
  br label %649

; <label>:368:                                    ; preds = %364, %299
  %369 = phi i64 [ %156, %299 ], [ %313, %364 ]
  %370 = phi i64 [ 1, %299 ], [ %366, %364 ]
  %371 = phi i8 [ %307, %299 ], [ %365, %364 ]
  %372 = and i8 %371, 1
  %373 = icmp ne i8 %372, 0
  %374 = icmp ult i64 %370, 2
  %375 = or i1 %373, %113
  %376 = and i1 %374, %375
  br i1 %376, label %476, label %377

; <label>:377:                                    ; preds = %368
  %378 = add i64 %370, %124
  br label %379

; <label>:379:                                    ; preds = %472, %377
  %380 = phi i64 [ %124, %377 ], [ %447, %472 ]
  %381 = phi i64 [ %125, %377 ], [ %473, %472 ]
  %382 = phi i8 [ %128, %377 ], [ %468, %472 ]
  %383 = phi i8 [ %159, %377 ], [ %475, %472 ]
  %384 = phi i8 [ %157, %377 ], [ %445, %472 ]
  %385 = phi i8 [ 0, %377 ], [ %446, %472 ]
  br i1 %375, label %432, label %386

; <label>:386:                                    ; preds = %379
  br i1 %112, label %387, label %643

; <label>:387:                                    ; preds = %386
  %388 = and i8 %382, 1
  %389 = icmp eq i8 %388, 0
  %390 = and i1 %114, %389
  br i1 %390, label %391, label %407

; <label>:391:                                    ; preds = %387
  %392 = icmp ult i64 %381, %131
  br i1 %392, label %393, label %395

; <label>:393:                                    ; preds = %391
  %394 = getelementptr inbounds i8, i8* %0, i64 %381
  store i8 39, i8* %394, align 1
  br label %395

; <label>:395:                                    ; preds = %393, %391
  %396 = add i64 %381, 1
  %397 = icmp ult i64 %396, %131
  br i1 %397, label %398, label %400

; <label>:398:                                    ; preds = %395
  %399 = getelementptr inbounds i8, i8* %0, i64 %396
  store i8 36, i8* %399, align 1
  br label %400

; <label>:400:                                    ; preds = %398, %395
  %401 = add i64 %381, 2
  %402 = icmp ult i64 %401, %131
  br i1 %402, label %403, label %405

; <label>:403:                                    ; preds = %400
  %404 = getelementptr inbounds i8, i8* %0, i64 %401
  store i8 39, i8* %404, align 1
  br label %405

; <label>:405:                                    ; preds = %403, %400
  %406 = add i64 %381, 3
  br label %407

; <label>:407:                                    ; preds = %387, %405
  %408 = phi i64 [ %406, %405 ], [ %381, %387 ]
  %409 = phi i8 [ 1, %405 ], [ %382, %387 ]
  %410 = icmp ult i64 %408, %131
  br i1 %410, label %411, label %413

; <label>:411:                                    ; preds = %407
  %412 = getelementptr inbounds i8, i8* %0, i64 %408
  store i8 92, i8* %412, align 1
  br label %413

; <label>:413:                                    ; preds = %411, %407
  %414 = add i64 %408, 1
  %415 = icmp ult i64 %414, %131
  br i1 %415, label %416, label %420

; <label>:416:                                    ; preds = %413
  %417 = lshr i8 %383, 6
  %418 = or i8 %417, 48
  %419 = getelementptr inbounds i8, i8* %0, i64 %414
  store i8 %418, i8* %419, align 1
  br label %420

; <label>:420:                                    ; preds = %416, %413
  %421 = add i64 %408, 2
  %422 = icmp ult i64 %421, %131
  br i1 %422, label %423, label %428

; <label>:423:                                    ; preds = %420
  %424 = lshr i8 %383, 3
  %425 = and i8 %424, 7
  %426 = or i8 %425, 48
  %427 = getelementptr inbounds i8, i8* %0, i64 %421
  store i8 %426, i8* %427, align 1
  br label %428

; <label>:428:                                    ; preds = %423, %420
  %429 = add i64 %408, 3
  %430 = and i8 %383, 7
  %431 = or i8 %430, 48
  br label %441

; <label>:432:                                    ; preds = %379
  %433 = and i8 %384, 1
  %434 = icmp eq i8 %433, 0
  br i1 %434, label %441, label %435

; <label>:435:                                    ; preds = %432
  %436 = icmp ult i64 %381, %131
  br i1 %436, label %437, label %439

; <label>:437:                                    ; preds = %435
  %438 = getelementptr inbounds i8, i8* %0, i64 %381
  store i8 92, i8* %438, align 1
  br label %439

; <label>:439:                                    ; preds = %437, %435
  %440 = add i64 %381, 1
  br label %441

; <label>:441:                                    ; preds = %432, %439, %428
  %442 = phi i64 [ %440, %439 ], [ %381, %432 ], [ %429, %428 ]
  %443 = phi i8 [ %382, %439 ], [ %382, %432 ], [ %409, %428 ]
  %444 = phi i8 [ %383, %439 ], [ %383, %432 ], [ %431, %428 ]
  %445 = phi i8 [ 0, %439 ], [ %384, %432 ], [ %384, %428 ]
  %446 = phi i8 [ %385, %439 ], [ %385, %432 ], [ 1, %428 ]
  %447 = add i64 %380, 1
  %448 = icmp ugt i64 %378, %447
  br i1 %448, label %449, label %541

; <label>:449:                                    ; preds = %441
  %450 = and i8 %443, 1
  %451 = icmp ne i8 %450, 0
  %452 = and i8 %446, 1
  %453 = icmp eq i8 %452, 0
  %454 = and i1 %451, %453
  br i1 %454, label %455, label %466

; <label>:455:                                    ; preds = %449
  %456 = icmp ult i64 %442, %131
  br i1 %456, label %457, label %459

; <label>:457:                                    ; preds = %455
  %458 = getelementptr inbounds i8, i8* %0, i64 %442
  store i8 39, i8* %458, align 1
  br label %459

; <label>:459:                                    ; preds = %457, %455
  %460 = add i64 %442, 1
  %461 = icmp ult i64 %460, %131
  br i1 %461, label %462, label %464

; <label>:462:                                    ; preds = %459
  %463 = getelementptr inbounds i8, i8* %0, i64 %460
  store i8 39, i8* %463, align 1
  br label %464

; <label>:464:                                    ; preds = %462, %459
  %465 = add i64 %442, 2
  br label %466

; <label>:466:                                    ; preds = %449, %464
  %467 = phi i64 [ %465, %464 ], [ %442, %449 ]
  %468 = phi i8 [ 0, %464 ], [ %443, %449 ]
  %469 = icmp ult i64 %467, %131
  br i1 %469, label %470, label %472

; <label>:470:                                    ; preds = %466
  %471 = getelementptr inbounds i8, i8* %0, i64 %467
  store i8 %444, i8* %471, align 1
  br label %472

; <label>:472:                                    ; preds = %470, %466
  %473 = add i64 %467, 1
  %474 = getelementptr inbounds i8, i8* %2, i64 %447
  %475 = load i8, i8* %474, align 1
  br label %379

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
  br i1 %107, label %488, label %487

; <label>:487:                                    ; preds = %476
  br i1 %117, label %489, label %501

; <label>:488:                                    ; preds = %476
  br i1 %20, label %501, label %489

; <label>:489:                                    ; preds = %488, %487
  %490 = lshr i8 %483, 5
  %491 = zext i8 %490 to i64
  %492 = getelementptr inbounds i32, i32* %6, i64 %491
  %493 = load i32, i32* %492, align 4
  %494 = and i8 %483, 31
  %495 = zext i8 %494 to i32
  %496 = shl i32 1, %495
  %497 = and i32 %493, %496
  %498 = icmp eq i32 %497, 0
  %499 = icmp eq i8 %157, 0
  %500 = and i1 %499, %498
  br i1 %500, label %542, label %503

; <label>:501:                                    ; preds = %488, %487
  %502 = icmp eq i8 %157, 0
  br i1 %502, label %542, label %503

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
  br i1 %112, label %513, label %644

; <label>:513:                                    ; preds = %503
  %514 = and i8 %508, 1
  %515 = icmp eq i8 %514, 0
  %516 = and i1 %114, %515
  br i1 %516, label %517, label %533

; <label>:517:                                    ; preds = %513
  %518 = icmp ult i64 %505, %512
  br i1 %518, label %519, label %521

; <label>:519:                                    ; preds = %517
  %520 = getelementptr inbounds i8, i8* %0, i64 %505
  store i8 39, i8* %520, align 1
  br label %521

; <label>:521:                                    ; preds = %519, %517
  %522 = add i64 %505, 1
  %523 = icmp ult i64 %522, %512
  br i1 %523, label %524, label %526

; <label>:524:                                    ; preds = %521
  %525 = getelementptr inbounds i8, i8* %0, i64 %522
  store i8 36, i8* %525, align 1
  br label %526

; <label>:526:                                    ; preds = %524, %521
  %527 = add i64 %505, 2
  %528 = icmp ult i64 %527, %512
  br i1 %528, label %529, label %531

; <label>:529:                                    ; preds = %526
  %530 = getelementptr inbounds i8, i8* %0, i64 %527
  store i8 39, i8* %530, align 1
  br label %531

; <label>:531:                                    ; preds = %529, %526
  %532 = add i64 %505, 3
  br label %533

; <label>:533:                                    ; preds = %513, %531
  %534 = phi i64 [ %532, %531 ], [ %505, %513 ]
  %535 = phi i8 [ 1, %531 ], [ %508, %513 ]
  %536 = icmp ult i64 %534, %512
  br i1 %536, label %537, label %539

; <label>:537:                                    ; preds = %533
  %538 = getelementptr inbounds i8, i8* %0, i64 %534
  store i8 92, i8* %538, align 1
  br label %539

; <label>:539:                                    ; preds = %533, %537
  %540 = add i64 %534, 1
  br label %569

; <label>:541:                                    ; preds = %441
  br label %542

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
  %553 = and i8 %547, 1
  %554 = icmp ne i8 %553, 0
  %555 = and i8 %550, 1
  %556 = icmp eq i8 %555, 0
  %557 = and i1 %554, %556
  br i1 %557, label %558, label %569

; <label>:558:                                    ; preds = %542
  %559 = icmp ult i64 %544, %552
  br i1 %559, label %560, label %562

; <label>:560:                                    ; preds = %558
  %561 = getelementptr inbounds i8, i8* %0, i64 %544
  store i8 39, i8* %561, align 1
  br label %562

; <label>:562:                                    ; preds = %560, %558
  %563 = add i64 %544, 1
  %564 = icmp ult i64 %563, %552
  br i1 %564, label %565, label %567

; <label>:565:                                    ; preds = %562
  %566 = getelementptr inbounds i8, i8* %0, i64 %563
  store i8 39, i8* %566, align 1
  br label %567

; <label>:567:                                    ; preds = %565, %562
  %568 = add i64 %544, 2
  br label %569

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
  %579 = icmp ult i64 %577, %570
  br i1 %579, label %580, label %582

; <label>:580:                                    ; preds = %569
  %581 = getelementptr inbounds i8, i8* %0, i64 %577
  store i8 %572, i8* %581, align 1
  br label %582

; <label>:582:                                    ; preds = %580, %569
  %583 = add i64 %577, 1
  %584 = and i8 %571, 1
  %585 = icmp eq i8 %584, 0
  %586 = select i1 %585, i8 0, i8 %130
  br label %587

; <label>:587:                                    ; preds = %582, %209
  %588 = phi i64 [ %124, %209 ], [ %576, %582 ]
  %589 = phi i64 [ %125, %209 ], [ %583, %582 ]
  %590 = phi i64 [ %126, %209 ], [ %575, %582 ]
  %591 = phi i64 [ %156, %209 ], [ %574, %582 ]
  %592 = phi i8 [ %128, %209 ], [ %578, %582 ]
  %593 = phi i8 [ %129, %209 ], [ %573, %582 ]
  %594 = phi i8 [ %130, %209 ], [ %586, %582 ]
  %595 = phi i64 [ %131, %209 ], [ %570, %582 ]
  %596 = add i64 %588, 1
  br label %123

; <label>:597:                                    ; preds = %133, %135
  %598 = phi i64 [ %124, %133 ], [ -1, %135 ]
  %599 = icmp eq i64 %125, 0
  %600 = and i1 %114, %599
  %601 = xor i1 %600, true
  %602 = or i1 %112, %601
  br i1 %602, label %603, label %648

; <label>:603:                                    ; preds = %597
  %604 = and i1 %114, %112
  %605 = xor i1 %604, true
  %606 = and i8 %129, 1
  %607 = icmp eq i8 %606, 0
  %608 = or i1 %607, %605
  br i1 %608, label %618, label %609

; <label>:609:                                    ; preds = %603
  %610 = and i8 %130, 1
  %611 = icmp eq i8 %610, 0
  br i1 %611, label %614, label %612

; <label>:612:                                    ; preds = %609
  %613 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %126, i8* %2, i64 %598, i32 5, i32 %5, i32* %6, i8* %97, i8* %98)
  br label %659

; <label>:614:                                    ; preds = %609
  %615 = icmp eq i64 %131, 0
  %616 = icmp ne i64 %126, 0
  %617 = and i1 %616, %615
  br i1 %617, label %27, label %618

; <label>:618:                                    ; preds = %603, %614
  %619 = icmp ne i8* %100, null
  %620 = and i1 %619, %112
  br i1 %620, label %621, label %638

; <label>:621:                                    ; preds = %618
  %622 = load i8, i8* %100, align 1
  %623 = icmp eq i8 %622, 0
  br i1 %623, label %638, label %624

; <label>:624:                                    ; preds = %621
  br label %625

; <label>:625:                                    ; preds = %624, %632
  %626 = phi i8 [ %635, %632 ], [ %622, %624 ]
  %627 = phi i8* [ %634, %632 ], [ %100, %624 ]
  %628 = phi i64 [ %633, %632 ], [ %125, %624 ]
  %629 = icmp ult i64 %628, %131
  br i1 %629, label %630, label %632

; <label>:630:                                    ; preds = %625
  %631 = getelementptr inbounds i8, i8* %0, i64 %628
  store i8 %626, i8* %631, align 1
  br label %632

; <label>:632:                                    ; preds = %630, %625
  %633 = add i64 %628, 1
  %634 = getelementptr inbounds i8, i8* %627, i64 1
  %635 = load i8, i8* %634, align 1
  %636 = icmp eq i8 %635, 0
  br i1 %636, label %637, label %625

; <label>:637:                                    ; preds = %632
  br label %638

; <label>:638:                                    ; preds = %637, %621, %618
  %639 = phi i64 [ %125, %618 ], [ %125, %621 ], [ %633, %637 ]
  %640 = icmp ult i64 %639, %131
  br i1 %640, label %641, label %659

; <label>:641:                                    ; preds = %638
  %642 = getelementptr inbounds i8, i8* %0, i64 %639
  store i8 0, i8* %642, align 1
  br label %659

; <label>:643:                                    ; preds = %386
  br label %649

; <label>:644:                                    ; preds = %148, %161, %211, %225, %253, %255, %273, %276, %503
  %645 = phi i32 [ %96, %148 ], [ %96, %161 ], [ 2, %211 ], [ 5, %225 ], [ 2, %253 ], [ 2, %255 ], [ 2, %273 ], [ 2, %276 ], [ %96, %503 ]
  %646 = phi i64 [ %146, %148 ], [ %156, %161 ], [ %156, %211 ], [ %156, %225 ], [ %156, %253 ], [ %156, %255 ], [ %156, %273 ], [ %156, %276 ], [ %507, %503 ]
  %647 = phi i64 [ %131, %148 ], [ %131, %161 ], [ %131, %211 ], [ %131, %225 ], [ %131, %253 ], [ %131, %255 ], [ %131, %273 ], [ %131, %276 ], [ %512, %503 ]
  br label %649

; <label>:648:                                    ; preds = %597
  br label %649

; <label>:649:                                    ; preds = %648, %644, %643, %367
  %650 = phi i32 [ 2, %367 ], [ %96, %643 ], [ %645, %644 ], [ %96, %648 ]
  %651 = phi i64 [ %313, %367 ], [ %369, %643 ], [ %646, %644 ], [ %598, %648 ]
  %652 = phi i64 [ %131, %367 ], [ %131, %643 ], [ %647, %644 ], [ %131, %648 ]
  %653 = icmp ne i32 %650, 2
  %654 = icmp eq i8 %104, 0
  %655 = or i1 %653, %654
  %656 = select i1 %655, i32 %650, i32 4
  %657 = and i32 %5, -3
  %658 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %652, i8* %2, i64 %651, i32 %656, i32 %657, i32* null, i8* %97, i8* %98)
  br label %659

; <label>:659:                                    ; preds = %638, %641, %649, %612
  %660 = phi i64 [ %658, %649 ], [ %613, %612 ], [ %639, %641 ], [ %639, %638 ]
  ret i64 %660
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8*, i32) unnamed_addr #6 {
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #10
  %4 = icmp eq i8* %3, %0
  br i1 %4, label %5, label %75

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @locale_charset() #10
  %7 = load i8, i8* %6, align 1
  %8 = sext i8 %7 to i32
  %9 = and i32 %8, -33
  switch i32 %9, label %72 [
    i32 85, label %10
    i32 71, label %38
  ]

; <label>:10:                                     ; preds = %5
  %11 = getelementptr inbounds i8, i8* %6, i64 1
  %12 = load i8, i8* %11, align 1
  %13 = sext i8 %12 to i32
  %14 = and i32 %13, -33
  %15 = icmp eq i32 %14, 84
  br i1 %15, label %16, label %72

; <label>:16:                                     ; preds = %10
  %17 = getelementptr inbounds i8, i8* %6, i64 2
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = and i32 %19, -33
  %21 = icmp eq i32 %20, 70
  br i1 %21, label %22, label %72

; <label>:22:                                     ; preds = %16
  %23 = getelementptr inbounds i8, i8* %6, i64 3
  %24 = load i8, i8* %23, align 1
  %25 = icmp eq i8 %24, 45
  br i1 %25, label %26, label %72

; <label>:26:                                     ; preds = %22
  %27 = getelementptr inbounds i8, i8* %6, i64 4
  %28 = load i8, i8* %27, align 1
  %29 = icmp eq i8 %28, 56
  br i1 %29, label %30, label %72

; <label>:30:                                     ; preds = %26
  %31 = getelementptr inbounds i8, i8* %6, i64 5
  %32 = load i8, i8* %31, align 1
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %34, label %72

; <label>:34:                                     ; preds = %30
  %35 = load i8, i8* %0, align 1
  %36 = icmp eq i8 %35, 96
  %37 = select i1 %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.77, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.78, i64 0, i64 0)
  br label %75

; <label>:38:                                     ; preds = %5
  %39 = getelementptr inbounds i8, i8* %6, i64 1
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = and i32 %41, -33
  %43 = icmp eq i32 %42, 66
  br i1 %43, label %44, label %72

; <label>:44:                                     ; preds = %38
  %45 = getelementptr inbounds i8, i8* %6, i64 2
  %46 = load i8, i8* %45, align 1
  %47 = icmp eq i8 %46, 49
  br i1 %47, label %48, label %72

; <label>:48:                                     ; preds = %44
  %49 = getelementptr inbounds i8, i8* %6, i64 3
  %50 = load i8, i8* %49, align 1
  %51 = icmp eq i8 %50, 56
  br i1 %51, label %52, label %72

; <label>:52:                                     ; preds = %48
  %53 = getelementptr inbounds i8, i8* %6, i64 4
  %54 = load i8, i8* %53, align 1
  %55 = icmp eq i8 %54, 48
  br i1 %55, label %56, label %72

; <label>:56:                                     ; preds = %52
  %57 = getelementptr inbounds i8, i8* %6, i64 5
  %58 = load i8, i8* %57, align 1
  %59 = icmp eq i8 %58, 51
  br i1 %59, label %60, label %72

; <label>:60:                                     ; preds = %56
  %61 = getelementptr inbounds i8, i8* %6, i64 6
  %62 = load i8, i8* %61, align 1
  %63 = icmp eq i8 %62, 48
  br i1 %63, label %64, label %72

; <label>:64:                                     ; preds = %60
  %65 = getelementptr inbounds i8, i8* %6, i64 7
  %66 = load i8, i8* %65, align 1
  %67 = icmp eq i8 %66, 0
  br i1 %67, label %68, label %72

; <label>:68:                                     ; preds = %64
  %69 = load i8, i8* %0, align 1
  %70 = icmp eq i8 %69, 96
  %71 = select i1 %70, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.79, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.80, i64 0, i64 0)
  br label %75

; <label>:72:                                     ; preds = %5, %30, %26, %22, %16, %10, %64, %60, %56, %52, %48, %44, %38
  %73 = icmp eq i32 %1, 9
  %74 = select i1 %73, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.76, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.75, i64 0, i64 0)
  br label %75

; <label>:75:                                     ; preds = %2, %72, %68, %34
  %76 = phi i8* [ %37, %34 ], [ %71, %68 ], [ %74, %72 ], [ %3, %2 ]
  ret i8* %76
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
define i8* @quotearg_alloc(i8*, i64, %struct.quoting_options*) local_unnamed_addr #6 {
  %4 = icmp ne %struct.quoting_options* %2, null
  %5 = select i1 %4, %struct.quoting_options* %2, %struct.quoting_options* @default_quoting_options
  %6 = tail call i32* @__errno_location() #1
  %7 = load i32, i32* %6, align 4
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = or i32 %9, 1
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3
  %15 = load i8*, i8** %14, align 8
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4
  %17 = load i8*, i8** %16, align 8
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* %13, i8* %15, i8* %17) #10
  %19 = add i64 %18, 1
  %20 = tail call noalias i8* @xmalloc(i64 %19) #10
  %21 = load i32, i32* %11, align 8
  %22 = load i8*, i8** %14, align 8
  %23 = load i8*, i8** %16, align 8
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* %13, i8* %22, i8* %23) #10
  store i32 %7, i32* %6, align 4
  ret i8* %20
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_alloc_mem(i8*, i64, i64*, %struct.quoting_options*) local_unnamed_addr #6 {
  %5 = icmp ne %struct.quoting_options* %3, null
  %6 = select i1 %5, %struct.quoting_options* %3, %struct.quoting_options* @default_quoting_options
  %7 = tail call i32* @__errno_location() #1
  %8 = load i32, i32* %7, align 4
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i64* %2, null
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  %14 = or i32 %10, %13
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3
  %19 = load i8*, i8** %18, align 8
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4
  %21 = load i8*, i8** %20, align 8
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* %17, i8* %19, i8* %21)
  %23 = add i64 %22, 1
  %24 = tail call noalias i8* @xmalloc(i64 %23) #10
  %25 = load i32, i32* %15, align 8
  %26 = load i8*, i8** %18, align 8
  %27 = load i8*, i8** %20, align 8
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* %17, i8* %26, i8* %27)
  store i32 %8, i32* %7, align 4
  br i1 %11, label %29, label %30

; <label>:29:                                     ; preds = %4
  store i64 %22, i64* %2, align 8
  br label %30

; <label>:30:                                     ; preds = %29, %4
  ret i8* %24
}

; Function Attrs: nounwind sspstrong uwtable
define void @quotearg_free() local_unnamed_addr #6 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8
  %2 = load i32, i32* @nslots, align 4
  %3 = icmp sgt i32 %2, 1
  br i1 %3, label %4, label %14

; <label>:4:                                      ; preds = %0
  br label %5

; <label>:5:                                      ; preds = %4, %5
  %6 = phi i64 [ %9, %5 ], [ 1, %4 ]
  %7 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %6, i32 1
  %8 = load i8*, i8** %7, align 8
  tail call void @free(i8* %8) #10
  %9 = add nuw i64 %6, 1
  %10 = load i32, i32* @nslots, align 4
  %11 = sext i32 %10 to i64
  %12 = icmp slt i64 %9, %11
  br i1 %12, label %5, label %13

; <label>:13:                                     ; preds = %5
  br label %14

; <label>:14:                                     ; preds = %13, %0
  %15 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1
  %16 = load i8*, i8** %15, align 8
  %17 = icmp eq i8* %16, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0)
  br i1 %17, label %19, label %18

; <label>:18:                                     ; preds = %14
  tail call void @free(i8* %16) #10
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8
  br label %19

; <label>:19:                                     ; preds = %14, %18
  %20 = icmp eq %struct.slotvec* %1, @slotvec0
  br i1 %20, label %23, label %21

; <label>:21:                                     ; preds = %19
  %22 = bitcast %struct.slotvec* %1 to i8*
  tail call void @free(i8* %22) #10
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8
  br label %23

; <label>:23:                                     ; preds = %19, %21
  store i32 1, i32* @nslots, align 4
  ret void
}

; Function Attrs: nounwind
declare void @free(i8* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n(i32, i8*) local_unnamed_addr #6 {
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options)
  ret i8* %3
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32, i8*, i64, %struct.quoting_options*) unnamed_addr #6 {
  %5 = tail call i32* @__errno_location() #1
  %6 = load i32, i32* %5, align 4
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8
  %8 = icmp slt i32 %0, 0
  br i1 %8, label %9, label %10

; <label>:9:                                      ; preds = %4
  tail call void @abort() #14
  unreachable

; <label>:10:                                     ; preds = %4
  %11 = load i32, i32* @nslots, align 4
  %12 = icmp sgt i32 %11, %0
  br i1 %12, label %34, label %13

; <label>:13:                                     ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0
  %15 = icmp ugt i32 %0, 2147483646
  br i1 %15, label %16, label %17

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #14
  unreachable

; <label>:17:                                     ; preds = %13
  %18 = bitcast %struct.slotvec* %7 to i8*
  %19 = select i1 %14, i8* null, i8* %18
  %20 = add nsw i32 %0, 1
  %21 = sext i32 %20 to i64
  %22 = shl nsw i64 %21, 4
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #10
  %24 = bitcast i8* %23 to %struct.slotvec*
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8
  br i1 %14, label %25, label %26

; <label>:25:                                     ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i32 8, i1 false)
  br label %26

; <label>:26:                                     ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28
  %30 = bitcast %struct.slotvec* %29 to i8*
  %31 = sub nsw i32 %20, %27
  %32 = sext i32 %31 to i64
  %33 = shl nsw i64 %32, 4
  tail call void @llvm.memset.p0i8.i64(i8* %30, i8 0, i64 %33, i32 8, i1 false)
  store i32 %20, i32* @nslots, align 4
  br label %34

; <label>:34:                                     ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ]
  %36 = sext i32 %0 to i64
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1
  %40 = load i8*, i8** %39, align 8
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = or i32 %42, 1
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3
  %48 = load i8*, i8** %47, align 8
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4
  %50 = load i8*, i8** %49, align 8
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* %46, i8* %48, i8* %50)
  %52 = icmp ugt i64 %38, %51
  br i1 %52, label %63, label %53

; <label>:53:                                     ; preds = %34
  %54 = add i64 %51, 1
  store i64 %54, i64* %37, align 8
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0)
  br i1 %55, label %57, label %56

; <label>:56:                                     ; preds = %53
  tail call void @free(i8* %40) #10
  br label %57

; <label>:57:                                     ; preds = %53, %56
  %58 = tail call noalias i8* @xmalloc(i64 %54) #10
  store i8* %58, i8** %39, align 8
  %59 = load i32, i32* %44, align 8
  %60 = load i8*, i8** %47, align 8
  %61 = load i8*, i8** %49, align 8
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* %46, i8* %60, i8* %61)
  br label %63

; <label>:63:                                     ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ]
  store i32 %6, i32* %5, align 4
  ret i8* %64
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #7

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_mem(i32, i8*, i64) local_unnamed_addr #6 {
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options)
  ret i8* %4
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg(i8*) local_unnamed_addr #6 {
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #10
  ret i8* %2
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_mem(i8*, i64) local_unnamed_addr #6 {
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #10
  ret i8* %3
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style(i32, i32, i8*) local_unnamed_addr #6 {
  %4 = alloca [52 x i8], align 4
  %5 = alloca %struct.quoting_options, align 8
  %6 = bitcast %struct.quoting_options* %5 to i8*
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #10
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0
  call void @llvm.lifetime.start(i64 52, i8* nonnull %7)
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false)
  %8 = icmp eq i32 %1, 10
  br i1 %8, label %9, label %10

; <label>:9:                                      ; preds = %3
  tail call void @abort() #14
  unreachable

; <label>:10:                                     ; preds = %3
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0
  store i32 %1, i32* %11, align 8
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1
  %13 = bitcast i32* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #10
  call void @llvm.lifetime.end(i64 52, i8* nonnull %7)
  %14 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5)
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #10
  ret i8* %14
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_mem(i32, i32, i8*, i64) local_unnamed_addr #6 {
  %5 = alloca [52 x i8], align 4
  %6 = alloca %struct.quoting_options, align 8
  %7 = bitcast %struct.quoting_options* %6 to i8*
  call void @llvm.lifetime.start(i64 56, i8* nonnull %7) #10
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0
  call void @llvm.lifetime.start(i64 52, i8* nonnull %8)
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false)
  %9 = icmp eq i32 %1, 10
  br i1 %9, label %10, label %11

; <label>:10:                                     ; preds = %4
  tail call void @abort() #14
  unreachable

; <label>:11:                                     ; preds = %4
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0
  store i32 %1, i32* %12, align 8
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1
  %14 = bitcast i32* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* nonnull %8, i64 52, i32 4, i1 false) #10
  call void @llvm.lifetime.end(i64 52, i8* nonnull %8)
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %6)
  call void @llvm.lifetime.end(i64 56, i8* nonnull %7) #10
  ret i8* %15
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style(i32, i8*) local_unnamed_addr #6 {
  %3 = alloca [52 x i8], align 4
  %4 = alloca %struct.quoting_options, align 8
  %5 = bitcast %struct.quoting_options* %4 to i8*
  call void @llvm.lifetime.start(i64 56, i8* nonnull %5) #10
  %6 = getelementptr inbounds [52 x i8], [52 x i8]* %3, i64 0, i64 0
  call void @llvm.lifetime.start(i64 52, i8* nonnull %6)
  call void @llvm.memset.p0i8.i64(i8* nonnull %6, i8 0, i64 52, i32 4, i1 false)
  %7 = icmp eq i32 %0, 10
  br i1 %7, label %8, label %9

; <label>:8:                                      ; preds = %2
  tail call void @abort() #14
  unreachable

; <label>:9:                                      ; preds = %2
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0
  store i32 %0, i32* %10, align 8
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1
  %12 = bitcast i32* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* nonnull %6, i64 52, i32 4, i1 false) #10
  call void @llvm.lifetime.end(i64 52, i8* nonnull %6)
  %13 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %4) #10
  call void @llvm.lifetime.end(i64 56, i8* nonnull %5) #10
  ret i8* %13
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style_mem(i32, i8*, i64) local_unnamed_addr #6 {
  %4 = alloca [52 x i8], align 4
  %5 = alloca %struct.quoting_options, align 8
  %6 = bitcast %struct.quoting_options* %5 to i8*
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #10
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0
  call void @llvm.lifetime.start(i64 52, i8* nonnull %7)
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false)
  %8 = icmp eq i32 %0, 10
  br i1 %8, label %9, label %10

; <label>:9:                                      ; preds = %3
  tail call void @abort() #14
  unreachable

; <label>:10:                                     ; preds = %3
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0
  store i32 %0, i32* %11, align 8
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1
  %13 = bitcast i32* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #10
  call void @llvm.lifetime.end(i64 52, i8* nonnull %7)
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %5) #10
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #10
  ret i8* %14
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char_mem(i8*, i64, i8 signext) local_unnamed_addr #6 {
  %4 = alloca %struct.quoting_options, align 8
  %5 = bitcast %struct.quoting_options* %4 to i8*
  call void @llvm.lifetime.start(i64 56, i8* nonnull %5) #10
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false)
  %6 = lshr i8 %2, 5
  %7 = zext i8 %6 to i64
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7
  %9 = and i8 %2, 31
  %10 = zext i8 %9 to i32
  %11 = load i32, i32* %8, align 4
  %12 = lshr i32 %11, %10
  %13 = and i32 %12, 1
  %14 = xor i32 %13, 1
  %15 = shl i32 %14, %10
  %16 = xor i32 %15, %11
  store i32 %16, i32* %8, align 4
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4)
  call void @llvm.lifetime.end(i64 56, i8* nonnull %5) #10
  ret i8* %17
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char(i8*, i8 signext) local_unnamed_addr #6 {
  %3 = alloca %struct.quoting_options, align 8
  %4 = bitcast %struct.quoting_options* %3 to i8*
  call void @llvm.lifetime.start(i64 56, i8* nonnull %4) #10
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10
  %5 = lshr i8 %1, 5
  %6 = zext i8 %5 to i64
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6
  %8 = and i8 %1, 31
  %9 = zext i8 %8 to i32
  %10 = load i32, i32* %7, align 4
  %11 = lshr i32 %10, %9
  %12 = and i32 %11, 1
  %13 = xor i32 %12, 1
  %14 = shl i32 %13, %9
  %15 = xor i32 %14, %10
  store i32 %15, i32* %7, align 4
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #10
  call void @llvm.lifetime.end(i64 56, i8* nonnull %4) #10
  ret i8* %16
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon(i8*) local_unnamed_addr #6 {
  %2 = alloca %struct.quoting_options, align 8
  %3 = bitcast %struct.quoting_options* %2 to i8*
  call void @llvm.lifetime.start(i64 56, i8* nonnull %3) #10
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %3, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1
  %5 = load i32, i32* %4, align 4
  %6 = or i32 %5, 67108864
  store i32 %6, i32* %4, align 4
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #10
  call void @llvm.lifetime.end(i64 56, i8* nonnull %3) #10
  ret i8* %7
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon_mem(i8*, i64) local_unnamed_addr #6 {
  %3 = alloca %struct.quoting_options, align 8
  %4 = bitcast %struct.quoting_options* %3 to i8*
  call void @llvm.lifetime.start(i64 56, i8* nonnull %4) #10
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1
  %6 = load i32, i32* %5, align 4
  %7 = or i32 %6, 67108864
  store i32 %7, i32* %5, align 4
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #10
  call void @llvm.lifetime.end(i64 56, i8* nonnull %4) #10
  ret i8* %8
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_colon(i32, i32, i8*) local_unnamed_addr #6 {
  %4 = alloca [52 x i8], align 4
  %5 = alloca %struct.quoting_options, align 8
  %6 = alloca [52 x i8], align 4
  %7 = bitcast %struct.quoting_options* %5 to i8*
  call void @llvm.lifetime.start(i64 56, i8* nonnull %7) #10
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0
  call void @llvm.lifetime.start(i64 52, i8* nonnull %8)
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false)
  %9 = icmp eq i32 %1, 10
  br i1 %9, label %10, label %11

; <label>:10:                                     ; preds = %3
  tail call void @abort() #14
  unreachable

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds [52 x i8], [52 x i8]* %6, i64 0, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %12, i8* nonnull %8, i64 52, i32 4, i1 false)
  call void @llvm.lifetime.end(i64 52, i8* nonnull %8)
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0
  store i32 %1, i32* %13, align 8
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1
  %15 = bitcast i32* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* nonnull %12, i64 52, i32 4, i1 false)
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 1
  %17 = load i32, i32* %16, align 4
  %18 = or i32 %17, 67108864
  store i32 %18, i32* %16, align 4
  %19 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5)
  call void @llvm.lifetime.end(i64 56, i8* nonnull %7) #10
  ret i8* %19
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom(i32, i8*, i8*, i8*) local_unnamed_addr #6 {
  %5 = alloca %struct.quoting_options, align 8
  %6 = bitcast %struct.quoting_options* %5 to i8*
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #10
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0
  store i32 10, i32* %7, align 8
  %8 = icmp ne i8* %1, null
  %9 = icmp ne i8* %2, null
  %10 = and i1 %8, %9
  br i1 %10, label %12, label %11

; <label>:11:                                     ; preds = %4
  tail call void @abort() #14
  unreachable

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3
  store i8* %1, i8** %13, align 8
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4
  store i8* %2, i8** %14, align 8
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #10
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #10
  ret i8* %15
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom_mem(i32, i8*, i8*, i8*, i64) local_unnamed_addr #6 {
  %6 = alloca %struct.quoting_options, align 8
  %7 = bitcast %struct.quoting_options* %6 to i8*
  call void @llvm.lifetime.start(i64 56, i8* nonnull %7) #10
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %7, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false)
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0
  store i32 10, i32* %8, align 8
  %9 = icmp ne i8* %1, null
  %10 = icmp ne i8* %2, null
  %11 = and i1 %9, %10
  br i1 %11, label %13, label %12

; <label>:12:                                     ; preds = %5
  tail call void @abort() #14
  unreachable

; <label>:13:                                     ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3
  store i8* %1, i8** %14, align 8
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4
  store i8* %2, i8** %15, align 8
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6)
  call void @llvm.lifetime.end(i64 56, i8* nonnull %7) #10
  ret i8* %16
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom(i8*, i8*, i8*) local_unnamed_addr #6 {
  %4 = alloca %struct.quoting_options, align 8
  %5 = bitcast %struct.quoting_options* %4 to i8*
  call void @llvm.lifetime.start(i64 56, i8* nonnull %5) #10
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0
  store i32 10, i32* %6, align 8
  %7 = icmp ne i8* %0, null
  %8 = icmp ne i8* %1, null
  %9 = and i1 %7, %8
  br i1 %9, label %11, label %10

; <label>:10:                                     ; preds = %3
  tail call void @abort() #14
  unreachable

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3
  store i8* %0, i8** %12, align 8
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4
  store i8* %1, i8** %13, align 8
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #10
  call void @llvm.lifetime.end(i64 56, i8* nonnull %5) #10
  ret i8* %14
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom_mem(i8*, i8*, i8*, i64) local_unnamed_addr #6 {
  %5 = alloca %struct.quoting_options, align 8
  %6 = bitcast %struct.quoting_options* %5 to i8*
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #10
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0
  store i32 10, i32* %7, align 8
  %8 = icmp ne i8* %0, null
  %9 = icmp ne i8* %1, null
  %10 = and i1 %8, %9
  br i1 %10, label %12, label %11

; <label>:11:                                     ; preds = %4
  tail call void @abort() #14
  unreachable

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3
  store i8* %0, i8** %13, align 8
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4
  store i8* %1, i8** %14, align 8
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #10
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #10
  ret i8* %15
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n_mem(i32, i8*, i64) local_unnamed_addr #6 {
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options)
  ret i8* %4
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_mem(i8*, i64) local_unnamed_addr #6 {
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #10
  ret i8* %3
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n(i32, i8*) local_unnamed_addr #6 {
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #10
  ret i8* %3
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote(i8*) local_unnamed_addr #6 {
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #10
  ret i8* %2
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_arn(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly, i64) local_unnamed_addr #6 {
  %7 = icmp eq i8* %1, null
  br i1 %7, label %10, label %8

; <label>:8:                                      ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.87, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #10
  br label %12

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.88, i64 0, i64 0), i8* %2, i8* %3) #10
  br label %12

; <label>:12:                                     ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.89, i64 0, i64 0), i32 5) #10
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2017) #10
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([203 x i8], [203 x i8]* @.str.3.90, i64 0, i64 0), i32 5) #10
  %16 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %0) #10
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
  ]

; <label>:17:                                     ; preds = %12
  tail call void @abort() #14
  unreachable

; <label>:18:                                     ; preds = %12
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4.91, i64 0, i64 0), i32 5) #10
  %20 = load i8*, i8** %4, align 8
  %21 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %19, i8* %20) #10
  br label %146

; <label>:22:                                     ; preds = %12
  %23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5.92, i64 0, i64 0), i32 5) #10
  %24 = load i8*, i8** %4, align 8
  %25 = getelementptr inbounds i8*, i8** %4, i64 1
  %26 = load i8*, i8** %25, align 8
  %27 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %23, i8* %24, i8* %26) #10
  br label %146

; <label>:28:                                     ; preds = %12
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6.93, i64 0, i64 0), i32 5) #10
  %30 = load i8*, i8** %4, align 8
  %31 = getelementptr inbounds i8*, i8** %4, i64 1
  %32 = load i8*, i8** %31, align 8
  %33 = getelementptr inbounds i8*, i8** %4, i64 2
  %34 = load i8*, i8** %33, align 8
  %35 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %29, i8* %30, i8* %32, i8* %34) #10
  br label %146

; <label>:36:                                     ; preds = %12
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7.94, i64 0, i64 0), i32 5) #10
  %38 = load i8*, i8** %4, align 8
  %39 = getelementptr inbounds i8*, i8** %4, i64 1
  %40 = load i8*, i8** %39, align 8
  %41 = getelementptr inbounds i8*, i8** %4, i64 2
  %42 = load i8*, i8** %41, align 8
  %43 = getelementptr inbounds i8*, i8** %4, i64 3
  %44 = load i8*, i8** %43, align 8
  %45 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %37, i8* %38, i8* %40, i8* %42, i8* %44) #10
  br label %146

; <label>:46:                                     ; preds = %12
  %47 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8.95, i64 0, i64 0), i32 5) #10
  %48 = load i8*, i8** %4, align 8
  %49 = getelementptr inbounds i8*, i8** %4, i64 1
  %50 = load i8*, i8** %49, align 8
  %51 = getelementptr inbounds i8*, i8** %4, i64 2
  %52 = load i8*, i8** %51, align 8
  %53 = getelementptr inbounds i8*, i8** %4, i64 3
  %54 = load i8*, i8** %53, align 8
  %55 = getelementptr inbounds i8*, i8** %4, i64 4
  %56 = load i8*, i8** %55, align 8
  %57 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %47, i8* %48, i8* %50, i8* %52, i8* %54, i8* %56) #10
  br label %146

; <label>:58:                                     ; preds = %12
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9.96, i64 0, i64 0), i32 5) #10
  %60 = load i8*, i8** %4, align 8
  %61 = getelementptr inbounds i8*, i8** %4, i64 1
  %62 = load i8*, i8** %61, align 8
  %63 = getelementptr inbounds i8*, i8** %4, i64 2
  %64 = load i8*, i8** %63, align 8
  %65 = getelementptr inbounds i8*, i8** %4, i64 3
  %66 = load i8*, i8** %65, align 8
  %67 = getelementptr inbounds i8*, i8** %4, i64 4
  %68 = load i8*, i8** %67, align 8
  %69 = getelementptr inbounds i8*, i8** %4, i64 5
  %70 = load i8*, i8** %69, align 8
  %71 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %59, i8* %60, i8* %62, i8* %64, i8* %66, i8* %68, i8* %70) #10
  br label %146

; <label>:72:                                     ; preds = %12
  %73 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10.97, i64 0, i64 0), i32 5) #10
  %74 = load i8*, i8** %4, align 8
  %75 = getelementptr inbounds i8*, i8** %4, i64 1
  %76 = load i8*, i8** %75, align 8
  %77 = getelementptr inbounds i8*, i8** %4, i64 2
  %78 = load i8*, i8** %77, align 8
  %79 = getelementptr inbounds i8*, i8** %4, i64 3
  %80 = load i8*, i8** %79, align 8
  %81 = getelementptr inbounds i8*, i8** %4, i64 4
  %82 = load i8*, i8** %81, align 8
  %83 = getelementptr inbounds i8*, i8** %4, i64 5
  %84 = load i8*, i8** %83, align 8
  %85 = getelementptr inbounds i8*, i8** %4, i64 6
  %86 = load i8*, i8** %85, align 8
  %87 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %73, i8* %74, i8* %76, i8* %78, i8* %80, i8* %82, i8* %84, i8* %86) #10
  br label %146

; <label>:88:                                     ; preds = %12
  %89 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11.98, i64 0, i64 0), i32 5) #10
  %90 = load i8*, i8** %4, align 8
  %91 = getelementptr inbounds i8*, i8** %4, i64 1
  %92 = load i8*, i8** %91, align 8
  %93 = getelementptr inbounds i8*, i8** %4, i64 2
  %94 = load i8*, i8** %93, align 8
  %95 = getelementptr inbounds i8*, i8** %4, i64 3
  %96 = load i8*, i8** %95, align 8
  %97 = getelementptr inbounds i8*, i8** %4, i64 4
  %98 = load i8*, i8** %97, align 8
  %99 = getelementptr inbounds i8*, i8** %4, i64 5
  %100 = load i8*, i8** %99, align 8
  %101 = getelementptr inbounds i8*, i8** %4, i64 6
  %102 = load i8*, i8** %101, align 8
  %103 = getelementptr inbounds i8*, i8** %4, i64 7
  %104 = load i8*, i8** %103, align 8
  %105 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %89, i8* %90, i8* %92, i8* %94, i8* %96, i8* %98, i8* %100, i8* %102, i8* %104) #10
  br label %146

; <label>:106:                                    ; preds = %12
  %107 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12.99, i64 0, i64 0), i32 5) #10
  %108 = load i8*, i8** %4, align 8
  %109 = getelementptr inbounds i8*, i8** %4, i64 1
  %110 = load i8*, i8** %109, align 8
  %111 = getelementptr inbounds i8*, i8** %4, i64 2
  %112 = load i8*, i8** %111, align 8
  %113 = getelementptr inbounds i8*, i8** %4, i64 3
  %114 = load i8*, i8** %113, align 8
  %115 = getelementptr inbounds i8*, i8** %4, i64 4
  %116 = load i8*, i8** %115, align 8
  %117 = getelementptr inbounds i8*, i8** %4, i64 5
  %118 = load i8*, i8** %117, align 8
  %119 = getelementptr inbounds i8*, i8** %4, i64 6
  %120 = load i8*, i8** %119, align 8
  %121 = getelementptr inbounds i8*, i8** %4, i64 7
  %122 = load i8*, i8** %121, align 8
  %123 = getelementptr inbounds i8*, i8** %4, i64 8
  %124 = load i8*, i8** %123, align 8
  %125 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %107, i8* %108, i8* %110, i8* %112, i8* %114, i8* %116, i8* %118, i8* %120, i8* %122, i8* %124) #10
  br label %146

; <label>:126:                                    ; preds = %12
  %127 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13.100, i64 0, i64 0), i32 5) #10
  %128 = load i8*, i8** %4, align 8
  %129 = getelementptr inbounds i8*, i8** %4, i64 1
  %130 = load i8*, i8** %129, align 8
  %131 = getelementptr inbounds i8*, i8** %4, i64 2
  %132 = load i8*, i8** %131, align 8
  %133 = getelementptr inbounds i8*, i8** %4, i64 3
  %134 = load i8*, i8** %133, align 8
  %135 = getelementptr inbounds i8*, i8** %4, i64 4
  %136 = load i8*, i8** %135, align 8
  %137 = getelementptr inbounds i8*, i8** %4, i64 5
  %138 = load i8*, i8** %137, align 8
  %139 = getelementptr inbounds i8*, i8** %4, i64 6
  %140 = load i8*, i8** %139, align 8
  %141 = getelementptr inbounds i8*, i8** %4, i64 7
  %142 = load i8*, i8** %141, align 8
  %143 = getelementptr inbounds i8*, i8** %4, i64 8
  %144 = load i8*, i8** %143, align 8
  %145 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %127, i8* %128, i8* %130, i8* %132, i8* %134, i8* %136, i8* %138, i8* %140, i8* %142, i8* %144) #10
  br label %146

; <label>:146:                                    ; preds = %126, %106, %88, %72, %58, %46, %36, %28, %22, %18
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_ar(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly) local_unnamed_addr #6 {
  br label %6

; <label>:6:                                      ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ]
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7
  %9 = load i8*, i8** %8, align 8
  %10 = icmp eq i8* %9, null
  %11 = add i64 %7, 1
  br i1 %10, label %12, label %6

; <label>:12:                                     ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7)
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_va(%struct._IO_FILE*, i8*, i8*, i8*, %struct.__va_list_tag* nocapture) local_unnamed_addr #6 {
  %6 = alloca [10 x i8*], align 16
  %7 = bitcast [10 x i8*]* %6 to i8*
  call void @llvm.lifetime.start(i64 80, i8* nonnull %7) #10
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  %11 = load i32, i32* %8, align 8
  %12 = icmp ult i32 %11, 41
  br i1 %12, label %13, label %18

; <label>:13:                                     ; preds = %5
  %14 = load i8*, i8** %9, align 8
  %15 = sext i32 %11 to i64
  %16 = getelementptr i8, i8* %14, i64 %15
  %17 = add i32 %11, 8
  store i32 %17, i32* %8, align 8
  br label %21

; <label>:18:                                     ; preds = %5
  %19 = load i8*, i8** %10, align 8
  %20 = getelementptr i8, i8* %19, i64 8
  store i8* %20, i8** %10, align 8
  br label %21

; <label>:21:                                     ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**
  %25 = load i8*, i8** %24, align 8
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0
  store i8* %25, i8** %26, align 16
  %27 = icmp eq i8* %25, null
  br i1 %27, label %30, label %28

; <label>:28:                                     ; preds = %21
  %29 = icmp ult i32 %22, 41
  br i1 %29, label %35, label %32

; <label>:30:                                     ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ]
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31)
  call void @llvm.lifetime.end(i64 80, i8* nonnull %7) #10
  ret void

; <label>:32:                                     ; preds = %28
  %33 = load i8*, i8** %10, align 8
  %34 = getelementptr i8, i8* %33, i64 8
  store i8* %34, i8** %10, align 8
  br label %40

; <label>:35:                                     ; preds = %28
  %36 = load i8*, i8** %9, align 8
  %37 = sext i32 %22 to i64
  %38 = getelementptr i8, i8* %36, i64 %37
  %39 = add i32 %22, 8
  store i32 %39, i32* %8, align 8
  br label %40

; <label>:40:                                     ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**
  %44 = load i8*, i8** %43, align 8
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1
  store i8* %44, i8** %45, align 8
  %46 = icmp eq i8* %44, null
  br i1 %46, label %30, label %47

; <label>:47:                                     ; preds = %40
  %48 = icmp ult i32 %41, 41
  br i1 %48, label %52, label %49

; <label>:49:                                     ; preds = %47
  %50 = load i8*, i8** %10, align 8
  %51 = getelementptr i8, i8* %50, i64 8
  store i8* %51, i8** %10, align 8
  br label %57

; <label>:52:                                     ; preds = %47
  %53 = load i8*, i8** %9, align 8
  %54 = sext i32 %41 to i64
  %55 = getelementptr i8, i8* %53, i64 %54
  %56 = add i32 %41, 8
  store i32 %56, i32* %8, align 8
  br label %57

; <label>:57:                                     ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**
  %61 = load i8*, i8** %60, align 8
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2
  store i8* %61, i8** %62, align 16
  %63 = icmp eq i8* %61, null
  br i1 %63, label %30, label %64

; <label>:64:                                     ; preds = %57
  %65 = icmp ult i32 %58, 41
  br i1 %65, label %69, label %66

; <label>:66:                                     ; preds = %64
  %67 = load i8*, i8** %10, align 8
  %68 = getelementptr i8, i8* %67, i64 8
  store i8* %68, i8** %10, align 8
  br label %74

; <label>:69:                                     ; preds = %64
  %70 = load i8*, i8** %9, align 8
  %71 = sext i32 %58 to i64
  %72 = getelementptr i8, i8* %70, i64 %71
  %73 = add i32 %58, 8
  store i32 %73, i32* %8, align 8
  br label %74

; <label>:74:                                     ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**
  %78 = load i8*, i8** %77, align 8
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3
  store i8* %78, i8** %79, align 8
  %80 = icmp eq i8* %78, null
  br i1 %80, label %30, label %81

; <label>:81:                                     ; preds = %74
  %82 = icmp ult i32 %75, 41
  br i1 %82, label %86, label %83

; <label>:83:                                     ; preds = %81
  %84 = load i8*, i8** %10, align 8
  %85 = getelementptr i8, i8* %84, i64 8
  store i8* %85, i8** %10, align 8
  br label %91

; <label>:86:                                     ; preds = %81
  %87 = load i8*, i8** %9, align 8
  %88 = sext i32 %75 to i64
  %89 = getelementptr i8, i8* %87, i64 %88
  %90 = add i32 %75, 8
  store i32 %90, i32* %8, align 8
  br label %91

; <label>:91:                                     ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**
  %95 = load i8*, i8** %94, align 8
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4
  store i8* %95, i8** %96, align 16
  %97 = icmp eq i8* %95, null
  br i1 %97, label %30, label %98

; <label>:98:                                     ; preds = %91
  %99 = icmp ult i32 %92, 41
  br i1 %99, label %103, label %100

; <label>:100:                                    ; preds = %98
  %101 = load i8*, i8** %10, align 8
  %102 = getelementptr i8, i8* %101, i64 8
  store i8* %102, i8** %10, align 8
  br label %108

; <label>:103:                                    ; preds = %98
  %104 = load i8*, i8** %9, align 8
  %105 = sext i32 %92 to i64
  %106 = getelementptr i8, i8* %104, i64 %105
  %107 = add i32 %92, 8
  store i32 %107, i32* %8, align 8
  br label %108

; <label>:108:                                    ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**
  %111 = load i8*, i8** %110, align 8
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5
  store i8* %111, i8** %112, align 8
  %113 = icmp eq i8* %111, null
  br i1 %113, label %30, label %114

; <label>:114:                                    ; preds = %108
  %115 = load i8*, i8** %10, align 8
  %116 = getelementptr i8, i8* %115, i64 8
  store i8* %116, i8** %10, align 8
  %117 = bitcast i8* %115 to i8**
  %118 = load i8*, i8** %117, align 8
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6
  store i8* %118, i8** %119, align 16
  %120 = icmp eq i8* %118, null
  br i1 %120, label %30, label %121

; <label>:121:                                    ; preds = %114
  %122 = load i8*, i8** %10, align 8
  %123 = getelementptr i8, i8* %122, i64 8
  store i8* %123, i8** %10, align 8
  %124 = bitcast i8* %122 to i8**
  %125 = load i8*, i8** %124, align 8
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7
  store i8* %125, i8** %126, align 8
  %127 = icmp eq i8* %125, null
  br i1 %127, label %30, label %128

; <label>:128:                                    ; preds = %121
  %129 = load i8*, i8** %10, align 8
  %130 = getelementptr i8, i8* %129, i64 8
  store i8* %130, i8** %10, align 8
  %131 = bitcast i8* %129 to i8**
  %132 = load i8*, i8** %131, align 8
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8
  store i8* %132, i8** %133, align 16
  %134 = icmp eq i8* %132, null
  br i1 %134, label %30, label %135

; <label>:135:                                    ; preds = %128
  %136 = load i8*, i8** %10, align 8
  %137 = getelementptr i8, i8* %136, i64 8
  store i8* %137, i8** %10, align 8
  %138 = bitcast i8* %136 to i8**
  %139 = load i8*, i8** %138, align 8
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9
  store i8* %139, i8** %140, align 8
  %141 = icmp eq i8* %139, null
  %142 = select i1 %141, i64 9, i64 10
  br label %30
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc(%struct._IO_FILE*, i8*, i8*, i8*, ...) local_unnamed_addr #6 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*
  call void @llvm.lifetime.start(i64 24, i8* nonnull %6) #10
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0
  call void @llvm.va_start(i8* nonnull %6)
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7)
  call void @llvm.va_end(i8* nonnull %6)
  call void @llvm.lifetime.end(i64 24, i8* nonnull %6) #10
  ret void
}

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #10

; Function Attrs: nounwind sspstrong uwtable
define void @emit_bug_reporting_address() local_unnamed_addr #6 {
  %1 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14.103, i64 0, i64 0), i32 5) #10
  %2 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15.104, i64 0, i64 0)) #10
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.105, i64 0, i64 0), i32 5) #10
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17.106, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.18.107, i64 0, i64 0)) #10
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.19, i64 0, i64 0), i32 5) #10
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %7 = tail call i32 @fputs_unlocked(i8* %5, %struct._IO_FILE* %6) #10
  ret void
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnmalloc(i64, i64) local_unnamed_addr #12 {
  %3 = udiv i64 9223372036854775807, %1
  %4 = icmp ult i64 %3, %0
  br i1 %4, label %5, label %6

; <label>:5:                                      ; preds = %2
  tail call void @xalloc_die() #14
  unreachable

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0
  %8 = tail call noalias i8* @malloc(i64 %7) #10
  %9 = icmp eq i8* %8, null
  %10 = icmp ne i64 %7, 0
  %11 = and i1 %10, %9
  br i1 %11, label %12, label %13

; <label>:12:                                     ; preds = %6
  tail call void @xalloc_die() #14
  unreachable

; <label>:13:                                     ; preds = %6
  ret i8* %8
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmalloc(i64) local_unnamed_addr #6 {
  %2 = tail call noalias i8* @malloc(i64 %0) #10
  %3 = icmp eq i8* %2, null
  %4 = icmp ne i64 %0, 0
  %5 = and i1 %4, %3
  br i1 %5, label %6, label %7

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #14
  unreachable

; <label>:7:                                      ; preds = %1
  ret i8* %2
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnrealloc(i8*, i64, i64) local_unnamed_addr #12 {
  %4 = udiv i64 9223372036854775807, %2
  %5 = icmp ult i64 %4, %1
  br i1 %5, label %6, label %7

; <label>:6:                                      ; preds = %3
  tail call void @xalloc_die() #14
  unreachable

; <label>:7:                                      ; preds = %3
  %8 = mul i64 %2, %1
  %9 = icmp eq i64 %8, 0
  %10 = icmp ne i8* %0, null
  %11 = and i1 %10, %9
  br i1 %11, label %12, label %13

; <label>:12:                                     ; preds = %7
  tail call void @free(i8* nonnull %0) #10
  br label %19

; <label>:13:                                     ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #10
  %15 = icmp eq i8* %14, null
  %16 = icmp ne i64 %8, 0
  %17 = and i1 %16, %15
  br i1 %17, label %18, label %19

; <label>:18:                                     ; preds = %13
  tail call void @xalloc_die() #14
  unreachable

; <label>:19:                                     ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ]
  ret i8* %20
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xrealloc(i8*, i64) local_unnamed_addr #6 {
  %3 = icmp eq i64 %1, 0
  %4 = icmp ne i8* %0, null
  %5 = and i1 %4, %3
  br i1 %5, label %6, label %7

; <label>:6:                                      ; preds = %2
  tail call void @free(i8* nonnull %0) #10
  br label %13

; <label>:7:                                      ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #10
  %9 = icmp eq i8* %8, null
  %10 = icmp ne i64 %1, 0
  %11 = and i1 %10, %9
  br i1 %11, label %12, label %13

; <label>:12:                                     ; preds = %7
  tail call void @xalloc_die() #14
  unreachable

; <label>:13:                                     ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ]
  ret i8* %14
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @x2nrealloc(i8*, i64* nocapture, i64) local_unnamed_addr #12 {
  %4 = load i64, i64* %1, align 8
  %5 = icmp eq i8* %0, null
  br i1 %5, label %6, label %13

; <label>:6:                                      ; preds = %3
  %7 = icmp eq i64 %4, 0
  br i1 %7, label %8, label %17

; <label>:8:                                      ; preds = %6
  %9 = udiv i64 128, %2
  %10 = icmp ugt i64 %2, 128
  %11 = zext i1 %10 to i64
  %12 = add nuw nsw i64 %9, %11
  br label %17

; <label>:13:                                     ; preds = %3
  %14 = udiv i64 6148914691236517204, %2
  %15 = icmp ugt i64 %14, %4
  br i1 %15, label %20, label %16

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #14
  unreachable

; <label>:17:                                     ; preds = %6, %8
  %18 = phi i64 [ %12, %8 ], [ %4, %6 ]
  store i64 %18, i64* %1, align 8
  %19 = mul i64 %18, %2
  br label %27

; <label>:20:                                     ; preds = %13
  %21 = lshr i64 %4, 1
  %22 = add i64 %4, 1
  %23 = add i64 %22, %21
  store i64 %23, i64* %1, align 8
  %24 = mul i64 %23, %2
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %27

; <label>:26:                                     ; preds = %20
  tail call void @free(i8* nonnull %0) #10
  br label %34

; <label>:27:                                     ; preds = %17, %20
  %28 = phi i64 [ %19, %17 ], [ %24, %20 ]
  %29 = tail call i8* @realloc(i8* %0, i64 %28) #10
  %30 = icmp eq i8* %29, null
  %31 = icmp ne i64 %28, 0
  %32 = and i1 %31, %30
  br i1 %32, label %33, label %34

; <label>:33:                                     ; preds = %27
  tail call void @xalloc_die() #14
  unreachable

; <label>:34:                                     ; preds = %26, %27
  %35 = phi i8* [ null, %26 ], [ %29, %27 ]
  ret i8* %35
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xcharalloc(i64) local_unnamed_addr #12 {
  %2 = tail call noalias i8* @malloc(i64 %0) #10
  %3 = icmp eq i8* %2, null
  %4 = icmp ne i64 %0, 0
  %5 = and i1 %4, %3
  br i1 %5, label %6, label %7

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #14
  unreachable

; <label>:7:                                      ; preds = %1
  ret i8* %2
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @x2realloc(i8*, i64* nocapture) local_unnamed_addr #6 {
  %3 = load i64, i64* %1, align 8
  %4 = icmp eq i8* %0, null
  br i1 %4, label %5, label %8

; <label>:5:                                      ; preds = %2
  %6 = icmp eq i64 %3, 0
  %7 = select i1 %6, i64 128, i64 %3
  store i64 %7, i64* %1, align 8
  br label %17

; <label>:8:                                      ; preds = %2
  %9 = icmp ult i64 %3, 6148914691236517204
  br i1 %9, label %11, label %10

; <label>:10:                                     ; preds = %8
  tail call void @xalloc_die() #14
  unreachable

; <label>:11:                                     ; preds = %8
  %12 = lshr i64 %3, 1
  %13 = add i64 %3, 1
  %14 = add i64 %13, %12
  store i64 %14, i64* %1, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %17

; <label>:16:                                     ; preds = %11
  tail call void @free(i8* nonnull %0) #10
  br label %24

; <label>:17:                                     ; preds = %11, %5
  %18 = phi i64 [ %7, %5 ], [ %14, %11 ]
  %19 = tail call i8* @realloc(i8* %0, i64 %18) #10
  %20 = icmp eq i8* %19, null
  %21 = icmp ne i64 %18, 0
  %22 = and i1 %21, %20
  br i1 %22, label %23, label %24

; <label>:23:                                     ; preds = %17
  tail call void @xalloc_die() #14
  unreachable

; <label>:24:                                     ; preds = %16, %17
  %25 = phi i8* [ null, %16 ], [ %19, %17 ]
  ret i8* %25
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xzalloc(i64) local_unnamed_addr #6 {
  %2 = tail call noalias i8* @malloc(i64 %0) #10
  %3 = icmp eq i8* %2, null
  %4 = icmp ne i64 %0, 0
  %5 = and i1 %4, %3
  br i1 %5, label %6, label %7

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #14
  unreachable

; <label>:7:                                      ; preds = %1
  tail call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 %0, i32 1, i1 false)
  ret i8* %2
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xcalloc(i64, i64) local_unnamed_addr #6 {
  %3 = udiv i64 9223372036854775807, %1
  %4 = icmp ult i64 %3, %0
  br i1 %4, label %8, label %5

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #10
  %7 = icmp eq i8* %6, null
  br i1 %7, label %8, label %9

; <label>:8:                                      ; preds = %5, %2
  tail call void @xalloc_die() #14
  unreachable

; <label>:9:                                      ; preds = %5
  ret i8* %6
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmemdup(i8* nocapture readonly, i64) local_unnamed_addr #6 {
  %3 = tail call noalias i8* @malloc(i64 %1) #10
  %4 = icmp eq i8* %3, null
  %5 = icmp ne i64 %1, 0
  %6 = and i1 %5, %4
  br i1 %6, label %7, label %8

; <label>:7:                                      ; preds = %2
  tail call void @xalloc_die() #14
  unreachable

; <label>:8:                                      ; preds = %2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %0, i64 %1, i32 1, i1 false)
  ret i8* %3
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xstrdup(i8* nocapture readonly) local_unnamed_addr #6 {
  %2 = tail call i64 @strlen(i8* %0) #13
  %3 = add i64 %2, 1
  %4 = tail call noalias i8* @malloc(i64 %3) #10
  %5 = icmp eq i8* %4, null
  %6 = icmp ne i64 %3, 0
  %7 = and i1 %6, %5
  br i1 %7, label %8, label %9

; <label>:8:                                      ; preds = %1
  tail call void @xalloc_die() #14
  unreachable

; <label>:9:                                      ; preds = %1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %0, i64 %3, i32 1, i1 false) #10
  ret i8* %4
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @xalloc_die() local_unnamed_addr #0 {
  %1 = load volatile i32, i32* @exit_failure, align 4
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.118, i64 0, i64 0), i32 5) #10
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.119, i64 0, i64 0), i8* %2) #10
  tail call void @abort() #14
  unreachable
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @rpl_calloc(i64, i64) local_unnamed_addr #6 {
  %3 = icmp eq i64 %0, 0
  %4 = icmp eq i64 %1, 0
  %5 = or i1 %3, %4
  br i1 %5, label %12, label %6

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0
  %8 = udiv i64 %7, %1
  %9 = icmp eq i64 %8, %0
  br i1 %9, label %12, label %10

; <label>:10:                                     ; preds = %6
  %11 = tail call i32* @__errno_location() #1
  store i32 12, i32* %11, align 4
  br label %16

; <label>:12:                                     ; preds = %6, %2
  %13 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %14 = phi i64 [ 1, %2 ], [ %0, %6 ]
  %15 = tail call noalias i8* @calloc(i64 %14, i64 %13) #10
  br label %16

; <label>:16:                                     ; preds = %10, %12
  %17 = phi i8* [ %15, %12 ], [ null, %10 ]
  ret i8* %17
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fclose(%struct._IO_FILE* nonnull) local_unnamed_addr #6 {
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10
  %3 = icmp slt i32 %2, 0
  br i1 %3, label %4, label %6

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0)
  br label %24

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #10
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %13, label %9

; <label>:9:                                      ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #10
  %12 = icmp eq i64 %11, -1
  br i1 %12, label %16, label %13

; <label>:13:                                     ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #10
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %18

; <label>:16:                                     ; preds = %13, %9
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0)
  br label %24

; <label>:18:                                     ; preds = %13
  %19 = tail call i32* @__errno_location() #1
  %20 = load i32, i32* %19, align 4
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0)
  %22 = icmp eq i32 %20, 0
  br i1 %22, label %24, label %23

; <label>:23:                                     ; preds = %18
  store i32 %20, i32* %19, align 4
  br label %24

; <label>:24:                                     ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ]
  ret i32 %25
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
define i32 @rpl_fflush(%struct._IO_FILE*) local_unnamed_addr #6 {
  %2 = icmp eq %struct._IO_FILE* %0, null
  br i1 %2, label %6, label %3

; <label>:3:                                      ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #10
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %8

; <label>:6:                                      ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0)
  br label %17

; <label>:8:                                      ; preds = %3
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = and i32 %10, 256
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %15, label %13

; <label>:13:                                     ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #10
  br label %15

; <label>:15:                                     ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0)
  br label %17

; <label>:17:                                     ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ]
  ret i32 %18
}

; Function Attrs: nounwind
declare i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull, i64, i32) local_unnamed_addr #6 {
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2
  %5 = load i8*, i8** %4, align 8
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1
  %7 = load i8*, i8** %6, align 8
  %8 = icmp eq i8* %5, %7
  br i1 %8, label %9, label %28

; <label>:9:                                      ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5
  %11 = load i8*, i8** %10, align 8
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4
  %13 = load i8*, i8** %12, align 8
  %14 = icmp eq i8* %11, %13
  br i1 %14, label %15, label %28

; <label>:15:                                     ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9
  %17 = load i8*, i8** %16, align 8
  %18 = icmp eq i8* %17, null
  br i1 %18, label %19, label %28

; <label>:19:                                     ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #10
  %22 = icmp eq i64 %21, -1
  br i1 %22, label %30, label %23

; <label>:23:                                     ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = and i32 %25, -17
  store i32 %26, i32* %24, align 8
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21
  store i64 %21, i64* %27, align 8
  br label %30

; <label>:28:                                     ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2)
  br label %30

; <label>:30:                                     ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ]
  ret i32 %31
}

; Function Attrs: nounwind
declare i32 @fseeko(%struct._IO_FILE* nocapture, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i64 @rpl_mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #6 {
  %5 = alloca i32, align 4
  %6 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.start(i64 4, i8* nonnull %6) #10
  %7 = icmp eq i32* %0, null
  %8 = select i1 %7, i32* %5, i32* %0
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #10
  %10 = icmp ugt i64 %9, -3
  %11 = icmp ne i64 %2, 0
  %12 = and i1 %11, %10
  br i1 %12, label %13, label %18

; <label>:13:                                     ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #10
  br i1 %14, label %18, label %15

; <label>:15:                                     ; preds = %13
  %16 = load i8, i8* %1, align 1
  %17 = zext i8 %16 to i32
  store i32 %17, i32* %8, align 4
  br label %18

; <label>:18:                                     ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ]
  call void @llvm.lifetime.end(i64 4, i8* nonnull %6) #10
  ret i64 %19
}

; Function Attrs: nounwind
declare i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i8* @extract_trimmed_name(%struct.utmpx*) local_unnamed_addr #6 {
  %2 = tail call noalias i8* @xmalloc(i64 33) #10
  %3 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %0, i64 0, i32 4, i64 0
  %4 = tail call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %2, i1 false) #10
  %5 = tail call i8* @__strncpy_chk(i8* nonnull %2, i8* nonnull %3, i64 32, i64 %4) #10
  %6 = getelementptr inbounds i8, i8* %2, i64 32
  store i8 0, i8* %6, align 1
  %7 = tail call i64 @strlen(i8* %2) #13
  %8 = icmp sgt i64 %7, 0
  br i1 %8, label %9, label %19

; <label>:9:                                      ; preds = %1
  %10 = getelementptr inbounds i8, i8* %2, i64 %7
  br label %11

; <label>:11:                                     ; preds = %9, %16
  %12 = phi i8* [ %13, %16 ], [ %10, %9 ]
  %13 = getelementptr inbounds i8, i8* %12, i64 -1
  %14 = load i8, i8* %13, align 1
  %15 = icmp eq i8 %14, 32
  br i1 %15, label %16, label %18

; <label>:16:                                     ; preds = %11
  store i8 0, i8* %13, align 1
  %17 = icmp ult i8* %2, %13
  br i1 %17, label %11, label %18

; <label>:18:                                     ; preds = %16, %11
  br label %19

; <label>:19:                                     ; preds = %18, %1
  ret i8* %2
}

; Function Attrs: nounwind readnone
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1) #1

; Function Attrs: nounwind
declare i8* @__strncpy_chk(i8*, i8*, i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @read_utmp(i8*, i64* nocapture, %struct.utmpx** nocapture, i32) local_unnamed_addr #6 {
  %5 = tail call i32 @utmpxname(i8* %0) #10
  tail call void @setutxent() #10
  %6 = tail call %struct.utmpx* @getutxent() #10
  %7 = icmp eq %struct.utmpx* %6, null
  br i1 %7, label %79, label %8

; <label>:8:                                      ; preds = %4
  %9 = and i32 %3, 2
  %10 = icmp eq i32 %9, 0
  %11 = and i32 %3, 1
  %12 = icmp eq i32 %11, 0
  br label %13

; <label>:13:                                     ; preds = %8, %67
  %14 = phi %struct.utmpx* [ %6, %8 ], [ %75, %67 ]
  %15 = phi i64 [ 0, %8 ], [ %71, %67 ]
  %16 = phi %struct.utmpx* [ null, %8 ], [ %70, %67 ]
  %17 = phi i8* [ null, %8 ], [ %69, %67 ]
  %18 = phi i64 [ 0, %8 ], [ %68, %67 ]
  br label %19

; <label>:19:                                     ; preds = %13, %31
  %20 = phi %struct.utmpx* [ %14, %13 ], [ %32, %31 ]
  %21 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %20, i64 0, i32 4, i64 0
  %22 = load i8, i8* %21, align 4
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %28, label %24

; <label>:24:                                     ; preds = %19
  %25 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %20, i64 0, i32 0
  %26 = load i16, i16* %25, align 4
  %27 = icmp eq i16 %26, 7
  br label %28

; <label>:28:                                     ; preds = %24, %19
  %29 = phi i1 [ false, %19 ], [ %27, %24 ]
  %30 = or i1 %10, %29
  br i1 %30, label %34, label %31

; <label>:31:                                     ; preds = %28, %44
  %32 = tail call %struct.utmpx* @getutxent() #10
  %33 = icmp eq %struct.utmpx* %32, null
  br i1 %33, label %77, label %19

; <label>:34:                                     ; preds = %28
  %35 = xor i1 %29, true
  %36 = or i1 %12, %35
  br i1 %36, label %48, label %37

; <label>:37:                                     ; preds = %34
  %38 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %20, i64 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = icmp sgt i32 %39, 0
  br i1 %40, label %41, label %48

; <label>:41:                                     ; preds = %37
  %42 = tail call i32 @kill(i32 %39, i32 0) #10
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %48

; <label>:44:                                     ; preds = %41
  %45 = tail call i32* @__errno_location() #1
  %46 = load i32, i32* %45, align 4
  %47 = icmp eq i32 %46, 3
  br i1 %47, label %31, label %48

; <label>:48:                                     ; preds = %44, %41, %37, %34
  %49 = icmp eq i64 %15, %18
  br i1 %49, label %50, label %67

; <label>:50:                                     ; preds = %48
  %51 = icmp eq i8* %17, null
  br i1 %51, label %52, label %55

; <label>:52:                                     ; preds = %50
  %53 = icmp eq i64 %15, 0
  %54 = select i1 %53, i64 1, i64 %15
  br label %62

; <label>:55:                                     ; preds = %50
  %56 = icmp ult i64 %15, 16012798675095096
  br i1 %56, label %58, label %57

; <label>:57:                                     ; preds = %55
  tail call void @xalloc_die() #14
  unreachable

; <label>:58:                                     ; preds = %55
  %59 = lshr i64 %15, 1
  %60 = add i64 %15, 1
  %61 = add i64 %60, %59
  br label %62

; <label>:62:                                     ; preds = %52, %58
  %63 = phi i64 [ %61, %58 ], [ %54, %52 ]
  %64 = mul i64 %63, 384
  %65 = tail call i8* @xrealloc(i8* %17, i64 %64) #10
  %66 = bitcast i8* %65 to %struct.utmpx*
  br label %67

; <label>:67:                                     ; preds = %62, %48
  %68 = phi i64 [ %63, %62 ], [ %18, %48 ]
  %69 = phi i8* [ %65, %62 ], [ %17, %48 ]
  %70 = phi %struct.utmpx* [ %66, %62 ], [ %16, %48 ]
  %71 = add i64 %15, 1
  %72 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %70, i64 %15
  %73 = bitcast %struct.utmpx* %72 to i8*
  %74 = bitcast %struct.utmpx* %20 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %73, i8* %74, i64 384, i32 4, i1 false)
  %75 = tail call %struct.utmpx* @getutxent() #10
  %76 = icmp eq %struct.utmpx* %75, null
  br i1 %76, label %78, label %13

; <label>:77:                                     ; preds = %31
  br label %79

; <label>:78:                                     ; preds = %67
  br label %79

; <label>:79:                                     ; preds = %78, %77, %4
  %80 = phi i8* [ null, %4 ], [ %17, %77 ], [ %69, %78 ]
  %81 = phi i64 [ 0, %4 ], [ %15, %77 ], [ %71, %78 ]
  tail call void @endutxent() #10
  store i64 %81, i64* %1, align 8
  %82 = bitcast %struct.utmpx** %2 to i8**
  store i8* %80, i8** %82, align 8
  ret i32 0
}

declare i32 @utmpxname(i8*) local_unnamed_addr #3

declare void @setutxent() local_unnamed_addr #3

declare %struct.utmpx* @getutxent() local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @kill(i32, i32) local_unnamed_addr #2

declare void @endutxent() local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define noalias %struct.tm_zone* @tzalloc(i8* readonly) local_unnamed_addr #6 {
  %2 = icmp ne i8* %0, null
  br i1 %2, label %3, label %6

; <label>:3:                                      ; preds = %1
  %4 = tail call i64 @strlen(i8* nonnull %0) #13
  %5 = add i64 %4, 1
  br label %6

; <label>:6:                                      ; preds = %1, %3
  %7 = phi i64 [ %5, %3 ], [ 0, %1 ]
  %8 = icmp ult i64 %7, 119
  %9 = add i64 %7, 17
  %10 = and i64 %9, -8
  %11 = select i1 %8, i64 128, i64 %10
  %12 = tail call noalias i8* @malloc(i64 %11) #10
  %13 = bitcast i8* %12 to %struct.tm_zone*
  %14 = icmp eq i8* %12, null
  br i1 %14, label %22, label %15

; <label>:15:                                     ; preds = %6
  %16 = bitcast i8* %12 to %struct.tm_zone**
  store %struct.tm_zone* null, %struct.tm_zone** %16, align 8
  %17 = zext i1 %2 to i8
  %18 = getelementptr inbounds i8, i8* %12, i64 8
  store i8 %17, i8* %18, align 8
  %19 = getelementptr inbounds i8, i8* %12, i64 9
  store i8 0, i8* %19, align 1
  br i1 %2, label %20, label %22

; <label>:20:                                     ; preds = %15
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %19, i8* nonnull %0, i64 %7, i32 1, i1 false) #10
  %21 = getelementptr inbounds i8, i8* %19, i64 %7
  store i8 0, i8* %21, align 1
  br label %22

; <label>:22:                                     ; preds = %6, %15, %20
  ret %struct.tm_zone* %13
}

; Function Attrs: nounwind sspstrong uwtable
define void @tzfree(%struct.tm_zone*) local_unnamed_addr #6 {
  %2 = icmp ult %struct.tm_zone* %0, inttoptr (i64 2 to %struct.tm_zone*)
  br i1 %2, label %11, label %3

; <label>:3:                                      ; preds = %1
  br label %4

; <label>:4:                                      ; preds = %3, %4
  %5 = phi %struct.tm_zone* [ %7, %4 ], [ %0, %3 ]
  %6 = getelementptr inbounds %struct.tm_zone, %struct.tm_zone* %5, i64 0, i32 0
  %7 = load %struct.tm_zone*, %struct.tm_zone** %6, align 8
  %8 = bitcast %struct.tm_zone* %5 to i8*
  tail call void @free(i8* %8) #10
  %9 = icmp eq %struct.tm_zone* %7, null
  br i1 %9, label %10, label %4

; <label>:10:                                     ; preds = %4
  br label %11

; <label>:11:                                     ; preds = %10, %1
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define %struct.tm* @localtime_rz(%struct.tm_zone*, i64* nonnull, %struct.tm* nonnull) local_unnamed_addr #6 {
  %4 = icmp eq %struct.tm_zone* %0, null
  br i1 %4, label %5, label %7

; <label>:5:                                      ; preds = %3
  %6 = tail call %struct.tm* @gmtime_r(i64* nonnull %1, %struct.tm* nonnull %2) #10
  br label %54

; <label>:7:                                      ; preds = %3
  %8 = tail call fastcc %struct.tm_zone* @set_tz(%struct.tm_zone* nonnull %0)
  %9 = icmp eq %struct.tm_zone* %8, null
  br i1 %9, label %54, label %10

; <label>:10:                                     ; preds = %7
  %11 = tail call %struct.tm* @localtime_r(i64* nonnull %1, %struct.tm* nonnull %2) #10
  %12 = icmp eq %struct.tm* %11, null
  br i1 %12, label %16, label %13

; <label>:13:                                     ; preds = %10
  %14 = tail call fastcc zeroext i1 @save_abbr(%struct.tm_zone* nonnull %0, %struct.tm* nonnull %2)
  %15 = xor i1 %14, true
  br label %16

; <label>:16:                                     ; preds = %10, %13
  %17 = phi i1 [ true, %10 ], [ %15, %13 ]
  %18 = icmp eq %struct.tm_zone* %8, inttoptr (i64 1 to %struct.tm_zone*)
  br i1 %18, label %49, label %19

; <label>:19:                                     ; preds = %16
  %20 = tail call i32* @__errno_location() #1
  %21 = load i32, i32* %20, align 4
  %22 = getelementptr inbounds %struct.tm_zone, %struct.tm_zone* %8, i64 0, i32 1
  %23 = load i8, i8* %22, align 8
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %28, label %25

; <label>:25:                                     ; preds = %19
  %26 = getelementptr inbounds %struct.tm_zone, %struct.tm_zone* %8, i64 0, i32 2, i64 0
  %27 = tail call i32 @setenv(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.132, i64 0, i64 0), i8* nonnull %26, i32 1) #10
  br label %30

; <label>:28:                                     ; preds = %19
  %29 = tail call i32 @unsetenv(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.132, i64 0, i64 0)) #10
  br label %30

; <label>:30:                                     ; preds = %28, %25
  %31 = phi i32 [ %27, %25 ], [ %29, %28 ]
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %34

; <label>:33:                                     ; preds = %30
  tail call void @tzset() #10
  br label %36

; <label>:34:                                     ; preds = %30
  %35 = load i32, i32* %20, align 4
  br label %36

; <label>:36:                                     ; preds = %34, %33
  %37 = phi i1 [ false, %34 ], [ true, %33 ]
  %38 = phi i32 [ %35, %34 ], [ %21, %33 ]
  %39 = icmp ult %struct.tm_zone* %8, inttoptr (i64 2 to %struct.tm_zone*)
  br i1 %39, label %48, label %40

; <label>:40:                                     ; preds = %36
  br label %41

; <label>:41:                                     ; preds = %40, %41
  %42 = phi %struct.tm_zone* [ %44, %41 ], [ %8, %40 ]
  %43 = getelementptr inbounds %struct.tm_zone, %struct.tm_zone* %42, i64 0, i32 0
  %44 = load %struct.tm_zone*, %struct.tm_zone** %43, align 8
  %45 = bitcast %struct.tm_zone* %42 to i8*
  tail call void @free(i8* %45) #10
  %46 = icmp eq %struct.tm_zone* %44, null
  br i1 %46, label %47, label %41

; <label>:47:                                     ; preds = %41
  br label %48

; <label>:48:                                     ; preds = %47, %36
  store i32 %38, i32* %20, align 4
  br label %49

; <label>:49:                                     ; preds = %16, %48
  %50 = phi i1 [ %37, %48 ], [ true, %16 ]
  %51 = xor i1 %50, true
  %52 = or i1 %17, %51
  %53 = select i1 %52, %struct.tm* null, %struct.tm* %2
  ret %struct.tm* %53

; <label>:54:                                     ; preds = %7, %5
  %55 = phi %struct.tm* [ %6, %5 ], [ null, %7 ]
  ret %struct.tm* %55
}

; Function Attrs: nounwind
declare %struct.tm* @gmtime_r(i64*, %struct.tm*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc %struct.tm_zone* @set_tz(%struct.tm_zone*) unnamed_addr #6 {
  %2 = tail call i8* @getenv(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.132, i64 0, i64 0)) #10
  %3 = icmp eq i8* %2, null
  %4 = getelementptr inbounds %struct.tm_zone, %struct.tm_zone* %0, i64 0, i32 1
  %5 = load i8, i8* %4, align 8
  %6 = icmp eq i8 %5, 0
  br i1 %3, label %12, label %7

; <label>:7:                                      ; preds = %1
  br i1 %6, label %13, label %8

; <label>:8:                                      ; preds = %7
  %9 = getelementptr inbounds %struct.tm_zone, %struct.tm_zone* %0, i64 0, i32 2, i64 0
  %10 = tail call i32 @strcmp(i8* %9, i8* nonnull %2) #10
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %56, label %13

; <label>:12:                                     ; preds = %1
  br i1 %6, label %56, label %16

; <label>:13:                                     ; preds = %7, %8
  %14 = tail call i64 @strlen(i8* nonnull %2) #13
  %15 = add i64 %14, 1
  br label %16

; <label>:16:                                     ; preds = %12, %13
  %17 = phi i1 [ true, %13 ], [ false, %12 ]
  %18 = phi i64 [ %15, %13 ], [ 0, %12 ]
  %19 = icmp ult i64 %18, 119
  %20 = add i64 %18, 17
  %21 = and i64 %20, -8
  %22 = select i1 %19, i64 128, i64 %21
  %23 = tail call noalias i8* @malloc(i64 %22) #10
  %24 = bitcast i8* %23 to %struct.tm_zone*
  %25 = icmp eq i8* %23, null
  br i1 %25, label %56, label %26

; <label>:26:                                     ; preds = %16
  %27 = bitcast i8* %23 to %struct.tm_zone**
  store %struct.tm_zone* null, %struct.tm_zone** %27, align 8
  %28 = zext i1 %17 to i8
  %29 = getelementptr inbounds i8, i8* %23, i64 8
  store i8 %28, i8* %29, align 8
  %30 = getelementptr inbounds i8, i8* %23, i64 9
  store i8 0, i8* %30, align 1
  br i1 %17, label %31, label %33

; <label>:31:                                     ; preds = %26
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %30, i8* nonnull %2, i64 %18, i32 1, i1 false) #10
  %32 = getelementptr inbounds i8, i8* %30, i64 %18
  store i8 0, i8* %32, align 1
  br label %33

; <label>:33:                                     ; preds = %31, %26
  br i1 %6, label %37, label %34

; <label>:34:                                     ; preds = %33
  %35 = getelementptr inbounds %struct.tm_zone, %struct.tm_zone* %0, i64 0, i32 2, i64 0
  %36 = tail call i32 @setenv(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.132, i64 0, i64 0), i8* nonnull %35, i32 1) #10
  br label %39

; <label>:37:                                     ; preds = %33
  %38 = tail call i32 @unsetenv(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.132, i64 0, i64 0)) #10
  br label %39

; <label>:39:                                     ; preds = %37, %34
  %40 = phi i32 [ %36, %34 ], [ %38, %37 ]
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %43

; <label>:42:                                     ; preds = %39
  tail call void @tzset() #10
  br label %56

; <label>:43:                                     ; preds = %39
  %44 = tail call i32* @__errno_location() #1
  %45 = load i32, i32* %44, align 4
  %46 = icmp ult i8* %23, inttoptr (i64 2 to i8*)
  br i1 %46, label %55, label %47

; <label>:47:                                     ; preds = %43
  br label %48

; <label>:48:                                     ; preds = %47, %48
  %49 = phi %struct.tm_zone* [ %51, %48 ], [ %24, %47 ]
  %50 = getelementptr inbounds %struct.tm_zone, %struct.tm_zone* %49, i64 0, i32 0
  %51 = load %struct.tm_zone*, %struct.tm_zone** %50, align 8
  %52 = bitcast %struct.tm_zone* %49 to i8*
  tail call void @free(i8* %52) #10
  %53 = icmp eq %struct.tm_zone* %51, null
  br i1 %53, label %54, label %48

; <label>:54:                                     ; preds = %48
  br label %55

; <label>:55:                                     ; preds = %54, %43
  store i32 %45, i32* %44, align 4
  br label %56

; <label>:56:                                     ; preds = %16, %42, %55, %8, %12
  %57 = phi %struct.tm_zone* [ inttoptr (i64 1 to %struct.tm_zone*), %12 ], [ inttoptr (i64 1 to %struct.tm_zone*), %8 ], [ null, %55 ], [ %24, %42 ], [ null, %16 ]
  ret %struct.tm_zone* %57
}

; Function Attrs: nounwind
declare %struct.tm* @localtime_r(i64*, %struct.tm*) #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc zeroext i1 @save_abbr(%struct.tm_zone*, %struct.tm*) unnamed_addr #6 {
  %3 = getelementptr inbounds %struct.tm, %struct.tm* %1, i64 0, i32 10
  %4 = load i8*, i8** %3, align 8
  %5 = icmp eq i8* %4, null
  br i1 %5, label %77, label %6

; <label>:6:                                      ; preds = %2
  %7 = bitcast %struct.tm* %1 to i8*
  %8 = icmp ugt i8* %7, %4
  br i1 %8, label %13, label %9

; <label>:9:                                      ; preds = %6
  %10 = getelementptr inbounds %struct.tm, %struct.tm* %1, i64 1
  %11 = bitcast %struct.tm* %10 to i8*
  %12 = icmp ult i8* %4, %11
  br i1 %12, label %77, label %13

; <label>:13:                                     ; preds = %6, %9
  %14 = load i8, i8* %4, align 1
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %75, label %16

; <label>:16:                                     ; preds = %13
  %17 = getelementptr inbounds %struct.tm_zone, %struct.tm_zone* %0, i64 0, i32 2, i64 0
  br label %18

; <label>:18:                                     ; preds = %67, %16
  %19 = phi i8* [ %72, %67 ], [ %17, %16 ]
  %20 = phi %struct.tm_zone* [ %73, %67 ], [ %0, %16 ]
  %21 = getelementptr inbounds %struct.tm_zone, %struct.tm_zone* %20, i64 0, i32 2, i64 0
  %22 = getelementptr inbounds %struct.tm_zone, %struct.tm_zone* %20, i64 0, i32 1
  br label %23

; <label>:23:                                     ; preds = %18, %61
  %24 = phi i8* [ %64, %61 ], [ %19, %18 ]
  %25 = tail call i32 @strcmp(i8* %24, i8* nonnull %4) #10
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %74, label %27

; <label>:27:                                     ; preds = %23
  %28 = load i8, i8* %24, align 1
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %30, label %61

; <label>:30:                                     ; preds = %27
  %31 = icmp eq i8* %24, %21
  br i1 %31, label %32, label %35

; <label>:32:                                     ; preds = %30
  %33 = load i8, i8* %22, align 8
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %35, label %61

; <label>:35:                                     ; preds = %32, %30
  %36 = phi i8* [ %21, %32 ], [ %24, %30 ]
  %37 = tail call i64 @strlen(i8* nonnull %4) #13
  %38 = add i64 %37, 1
  %39 = getelementptr inbounds %struct.tm_zone, %struct.tm_zone* %20, i64 0, i32 2, i64 119
  %40 = ptrtoint i8* %39 to i64
  %41 = ptrtoint i8* %36 to i64
  %42 = sub i64 %40, %41
  %43 = icmp ult i64 %38, %42
  br i1 %43, label %44, label %46

; <label>:44:                                     ; preds = %35
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %36, i8* nonnull %4, i64 %38, i32 1, i1 false) #10
  %45 = getelementptr inbounds i8, i8* %36, i64 %38
  store i8 0, i8* %45, align 1
  br label %75

; <label>:46:                                     ; preds = %35
  %47 = icmp ult i64 %38, 119
  %48 = add i64 %37, 18
  %49 = and i64 %48, -8
  %50 = select i1 %47, i64 128, i64 %49
  %51 = tail call noalias i8* @malloc(i64 %50) #10
  %52 = icmp eq i8* %51, null
  br i1 %52, label %59, label %53

; <label>:53:                                     ; preds = %46
  %54 = bitcast i8* %51 to %struct.tm_zone**
  store %struct.tm_zone* null, %struct.tm_zone** %54, align 8
  %55 = getelementptr inbounds i8, i8* %51, i64 8
  store i8 1, i8* %55, align 8
  %56 = getelementptr inbounds i8, i8* %51, i64 9
  store i8 0, i8* %56, align 1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %56, i8* nonnull %4, i64 %38, i32 1, i1 false) #10
  %57 = getelementptr inbounds i8, i8* %56, i64 %38
  store i8 0, i8* %57, align 1
  %58 = bitcast %struct.tm_zone* %20 to i8**
  store i8* %51, i8** %58, align 8
  store i8 0, i8* %55, align 8
  br label %75

; <label>:59:                                     ; preds = %46
  %60 = bitcast %struct.tm_zone* %20 to i8**
  store i8* null, i8** %60, align 8
  br label %77

; <label>:61:                                     ; preds = %32, %27
  %62 = tail call i64 @strlen(i8* nonnull %24) #13
  %63 = add i64 %62, 1
  %64 = getelementptr inbounds i8, i8* %24, i64 %63
  %65 = load i8, i8* %64, align 1
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %67, label %23

; <label>:67:                                     ; preds = %61
  %68 = getelementptr inbounds %struct.tm_zone, %struct.tm_zone* %20, i64 0, i32 0
  %69 = load %struct.tm_zone*, %struct.tm_zone** %68, align 8
  %70 = icmp eq %struct.tm_zone* %69, null
  %71 = getelementptr inbounds %struct.tm_zone, %struct.tm_zone* %69, i64 0, i32 2, i64 0
  %72 = select i1 %70, i8* %64, i8* %71
  %73 = select i1 %70, %struct.tm_zone* %20, %struct.tm_zone* %69
  br label %18

; <label>:74:                                     ; preds = %23
  br label %75

; <label>:75:                                     ; preds = %74, %44, %53, %13
  %76 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1.133, i64 0, i64 0), %13 ], [ %56, %53 ], [ %36, %44 ], [ %24, %74 ]
  store i8* %76, i8** %3, align 8
  br label %77

; <label>:77:                                     ; preds = %59, %9, %2, %75
  %78 = phi i1 [ true, %75 ], [ true, %2 ], [ true, %9 ], [ false, %59 ]
  ret i1 %78
}

; Function Attrs: nounwind
declare i32 @setenv(i8*, i8*, i32) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @unsetenv(i8* nocapture readonly) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @tzset() local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind readonly
declare i8* @getenv(i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define i64 @mktime_z(%struct.tm_zone*, %struct.tm* nonnull) local_unnamed_addr #6 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.tm, align 8
  %5 = icmp eq %struct.tm_zone* %0, null
  br i1 %5, label %6, label %8

; <label>:6:                                      ; preds = %2
  %7 = tail call i64 @timegm(%struct.tm* nonnull %1) #10
  br label %106

; <label>:8:                                      ; preds = %2
  %9 = tail call fastcc %struct.tm_zone* @set_tz(%struct.tm_zone* nonnull %0)
  %10 = icmp eq %struct.tm_zone* %9, null
  br i1 %10, label %106, label %11

; <label>:11:                                     ; preds = %8
  %12 = bitcast i64* %3 to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %12) #10
  %13 = tail call i64 @rpl_mktime(%struct.tm* nonnull %1) #10
  store i64 %13, i64* %3, align 8
  %14 = bitcast %struct.tm* %4 to i8*
  call void @llvm.lifetime.start(i64 56, i8* nonnull %14) #10
  %15 = icmp eq i64 %13, -1
  br i1 %15, label %16, label %68

; <label>:16:                                     ; preds = %11
  %17 = call %struct.tm* @localtime_r(i64* nonnull %3, %struct.tm* nonnull %4) #10
  %18 = icmp eq %struct.tm* %17, null
  br i1 %18, label %71, label %19

; <label>:19:                                     ; preds = %16
  %20 = getelementptr inbounds %struct.tm, %struct.tm* %1, i64 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = getelementptr inbounds %struct.tm, %struct.tm* %4, i64 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = xor i32 %23, %21
  %25 = getelementptr inbounds %struct.tm, %struct.tm* %1, i64 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = getelementptr inbounds %struct.tm, %struct.tm* %4, i64 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = xor i32 %28, %26
  %30 = or i32 %29, %24
  %31 = getelementptr inbounds %struct.tm, %struct.tm* %1, i64 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = getelementptr inbounds %struct.tm, %struct.tm* %4, i64 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = xor i32 %34, %32
  %36 = or i32 %30, %35
  %37 = getelementptr inbounds %struct.tm, %struct.tm* %1, i64 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = getelementptr inbounds %struct.tm, %struct.tm* %4, i64 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = xor i32 %40, %38
  %42 = or i32 %36, %41
  %43 = getelementptr inbounds %struct.tm, %struct.tm* %1, i64 0, i32 4
  %44 = load i32, i32* %43, align 8
  %45 = getelementptr inbounds %struct.tm, %struct.tm* %4, i64 0, i32 4
  %46 = load i32, i32* %45, align 8
  %47 = xor i32 %46, %44
  %48 = or i32 %42, %47
  %49 = getelementptr inbounds %struct.tm, %struct.tm* %1, i64 0, i32 5
  %50 = load i32, i32* %49, align 4
  %51 = getelementptr inbounds %struct.tm, %struct.tm* %4, i64 0, i32 5
  %52 = load i32, i32* %51, align 4
  %53 = xor i32 %52, %50
  %54 = or i32 %48, %53
  %55 = getelementptr inbounds %struct.tm, %struct.tm* %1, i64 0, i32 8
  %56 = load i32, i32* %55, align 8
  %57 = getelementptr inbounds %struct.tm, %struct.tm* %4, i64 0, i32 8
  %58 = load i32, i32* %57, align 8
  %59 = icmp eq i32 %56, 0
  %60 = icmp eq i32 %58, 0
  %61 = xor i1 %59, %60
  %62 = or i32 %58, %56
  %63 = icmp sgt i32 %62, -1
  %64 = and i1 %63, %61
  %65 = zext i1 %64 to i32
  %66 = or i32 %54, %65
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %71

; <label>:68:                                     ; preds = %19, %11
  %69 = call fastcc zeroext i1 @save_abbr(%struct.tm_zone* nonnull %0, %struct.tm* nonnull %1)
  br i1 %69, label %71, label %70

; <label>:70:                                     ; preds = %68
  store i64 -1, i64* %3, align 8
  br label %71

; <label>:71:                                     ; preds = %19, %16, %70, %68
  %72 = icmp eq %struct.tm_zone* %9, inttoptr (i64 1 to %struct.tm_zone*)
  br i1 %72, label %104, label %73

; <label>:73:                                     ; preds = %71
  %74 = tail call i32* @__errno_location() #1
  %75 = load i32, i32* %74, align 4
  %76 = getelementptr inbounds %struct.tm_zone, %struct.tm_zone* %9, i64 0, i32 1
  %77 = load i8, i8* %76, align 8
  %78 = icmp eq i8 %77, 0
  br i1 %78, label %82, label %79

; <label>:79:                                     ; preds = %73
  %80 = getelementptr inbounds %struct.tm_zone, %struct.tm_zone* %9, i64 0, i32 2, i64 0
  %81 = call i32 @setenv(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.132, i64 0, i64 0), i8* nonnull %80, i32 1) #10
  br label %84

; <label>:82:                                     ; preds = %73
  %83 = call i32 @unsetenv(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.132, i64 0, i64 0)) #10
  br label %84

; <label>:84:                                     ; preds = %82, %79
  %85 = phi i32 [ %81, %79 ], [ %83, %82 ]
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %88

; <label>:87:                                     ; preds = %84
  call void @tzset() #10
  br label %90

; <label>:88:                                     ; preds = %84
  %89 = load i32, i32* %74, align 4
  br label %90

; <label>:90:                                     ; preds = %88, %87
  %91 = phi i1 [ false, %88 ], [ true, %87 ]
  %92 = phi i32 [ %89, %88 ], [ %75, %87 ]
  %93 = icmp ult %struct.tm_zone* %9, inttoptr (i64 2 to %struct.tm_zone*)
  br i1 %93, label %102, label %94

; <label>:94:                                     ; preds = %90
  br label %95

; <label>:95:                                     ; preds = %94, %95
  %96 = phi %struct.tm_zone* [ %98, %95 ], [ %9, %94 ]
  %97 = getelementptr inbounds %struct.tm_zone, %struct.tm_zone* %96, i64 0, i32 0
  %98 = load %struct.tm_zone*, %struct.tm_zone** %97, align 8
  %99 = bitcast %struct.tm_zone* %96 to i8*
  call void @free(i8* %99) #10
  %100 = icmp eq %struct.tm_zone* %98, null
  br i1 %100, label %101, label %95

; <label>:101:                                    ; preds = %95
  br label %102

; <label>:102:                                    ; preds = %101, %90
  store i32 %92, i32* %74, align 4
  br i1 %91, label %104, label %103

; <label>:103:                                    ; preds = %102
  call void @llvm.lifetime.end(i64 56, i8* nonnull %14) #10
  call void @llvm.lifetime.end(i64 8, i8* nonnull %12) #10
  br label %106

; <label>:104:                                    ; preds = %71, %102
  %105 = load i64, i64* %3, align 8
  call void @llvm.lifetime.end(i64 56, i8* nonnull %14) #10
  call void @llvm.lifetime.end(i64 8, i8* nonnull %12) #10
  br label %106

; <label>:106:                                    ; preds = %8, %103, %104, %6
  %107 = phi i64 [ %7, %6 ], [ %105, %104 ], [ -1, %103 ], [ -1, %8 ]
  ret i64 %107
}

; Function Attrs: nounwind
declare i64 @timegm(%struct.tm*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @close_stream(%struct._IO_FILE*) local_unnamed_addr #6 {
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #10
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0
  %4 = load i32, i32* %3, align 8
  %5 = and i32 %4, 32
  %6 = icmp eq i32 %5, 0
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #10
  %8 = icmp ne i32 %7, 0
  br i1 %6, label %9, label %19

; <label>:9:                                      ; preds = %1
  %10 = xor i1 %8, true
  %11 = icmp ne i64 %2, 0
  %12 = or i1 %11, %10
  %13 = sext i1 %8 to i32
  br i1 %12, label %22, label %14

; <label>:14:                                     ; preds = %9
  %15 = tail call i32* @__errno_location() #1
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 9
  %18 = sext i1 %17 to i32
  br label %22

; <label>:19:                                     ; preds = %1
  br i1 %8, label %22, label %20

; <label>:20:                                     ; preds = %19
  %21 = tail call i32* @__errno_location() #1
  store i32 0, i32* %21, align 4
  br label %22

; <label>:22:                                     ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ]
  ret i32 %23
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define zeroext i1 @hard_locale(i32) local_unnamed_addr #6 {
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #10
  %3 = icmp eq i8* %2, null
  br i1 %3, label %15, label %4

; <label>:4:                                      ; preds = %1
  %5 = load i8, i8* %2, align 1
  %6 = icmp eq i8 %5, 67
  br i1 %6, label %7, label %11

; <label>:7:                                      ; preds = %4
  %8 = getelementptr inbounds i8, i8* %2, i64 1
  %9 = load i8, i8* %8, align 1
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %14, label %11

; <label>:11:                                     ; preds = %4, %7
  %12 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.140, i64 0, i64 0)) #10
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %15

; <label>:14:                                     ; preds = %11, %7
  br label %15

; <label>:15:                                     ; preds = %1, %11, %14
  %16 = phi i1 [ false, %14 ], [ true, %11 ], [ true, %1 ]
  ret i1 %16
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @locale_charset() local_unnamed_addr #6 {
  %1 = alloca [51 x i8], align 16
  %2 = alloca [51 x i8], align 16
  %3 = tail call i8* @nl_langinfo(i32 14) #10
  %4 = icmp eq i8* %3, null
  %5 = select i1 %4, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.143, i64 0, i64 0), i8* %3
  %6 = load volatile i8*, i8** @charset_aliases, align 8
  %7 = icmp eq i8* %6, null
  br i1 %7, label %8, label %127

; <label>:8:                                      ; preds = %0
  %9 = tail call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3.144, i64 0, i64 0)) #10
  %10 = icmp eq i8* %9, null
  br i1 %10, label %14, label %11

; <label>:11:                                     ; preds = %8
  %12 = load i8, i8* %9, align 1
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %15

; <label>:14:                                     ; preds = %11, %8
  br label %15

; <label>:15:                                     ; preds = %14, %11
  %16 = phi i8* [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4.145, i64 0, i64 0), %14 ], [ %9, %11 ]
  %17 = tail call i64 @strlen(i8* nonnull %16) #13
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %24, label %19

; <label>:19:                                     ; preds = %15
  %20 = add i64 %17, -1
  %21 = getelementptr inbounds i8, i8* %16, i64 %20
  %22 = load i8, i8* %21, align 1
  %23 = icmp ne i8 %22, 47
  br label %24

; <label>:24:                                     ; preds = %19, %15
  %25 = phi i1 [ false, %15 ], [ %23, %19 ]
  %26 = zext i1 %25 to i64
  %27 = add i64 %17, 14
  %28 = add i64 %27, %26
  %29 = tail call noalias i8* @malloc(i64 %28) #10
  %30 = icmp eq i8* %29, null
  br i1 %30, label %125, label %31

; <label>:31:                                     ; preds = %24
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %29, i8* %16, i64 %17, i32 1, i1 false) #10
  %32 = getelementptr inbounds i8, i8* %29, i64 %17
  br i1 %25, label %33, label %35

; <label>:33:                                     ; preds = %31
  store i8 47, i8* %32, align 1
  %34 = getelementptr inbounds i8, i8* %32, i64 %26
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %34, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.146, i64 0, i64 0), i64 14, i32 1, i1 false) #10
  br label %37

; <label>:35:                                     ; preds = %31
  %36 = getelementptr inbounds i8, i8* %32, i64 %26
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.146, i64 0, i64 0), i64 14, i32 1, i1 false) #10
  br label %37

; <label>:37:                                     ; preds = %35, %33
  %38 = tail call i32 (i8*, i32, ...) @open(i8* nonnull %29, i32 131072) #10
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %123, label %40

; <label>:40:                                     ; preds = %37
  %41 = tail call %struct._IO_FILE* @fdopen(i32 %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.147, i64 0, i64 0)) #10
  %42 = icmp eq %struct._IO_FILE* %41, null
  br i1 %42, label %48, label %43

; <label>:43:                                     ; preds = %40
  %44 = getelementptr inbounds [51 x i8], [51 x i8]* %1, i64 0, i64 0
  %45 = getelementptr inbounds [51 x i8], [51 x i8]* %2, i64 0, i64 0
  %46 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 1
  %47 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 2
  br label %50

; <label>:48:                                     ; preds = %40
  %49 = tail call i32 @close(i32 %38) #10
  br label %123

; <label>:50:                                     ; preds = %111, %43
  %51 = phi i64 [ %112, %111 ], [ 0, %43 ]
  %52 = phi i8* [ %113, %111 ], [ null, %43 ]
  call void @llvm.lifetime.start(i64 51, i8* nonnull %44) #10
  call void @llvm.lifetime.start(i64 51, i8* nonnull %45) #10
  %53 = load i8*, i8** %46, align 8
  %54 = load i8*, i8** %47, align 8
  %55 = icmp ult i8* %53, %54
  br i1 %55, label %58, label %56

; <label>:56:                                     ; preds = %50
  %57 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #10
  br label %62

; <label>:58:                                     ; preds = %50
  %59 = getelementptr inbounds i8, i8* %53, i64 1
  store i8* %59, i8** %46, align 8
  %60 = load i8, i8* %53, align 1
  %61 = zext i8 %60 to i32
  br label %62

; <label>:62:                                     ; preds = %58, %56
  %63 = phi i32 [ %57, %56 ], [ %61, %58 ]
  switch i32 %63, label %77 [
    i32 -1, label %115
    i32 32, label %111
    i32 10, label %111
    i32 9, label %111
    i32 35, label %64
  ]

; <label>:64:                                     ; preds = %62
  br label %65

; <label>:65:                                     ; preds = %64, %75
  %66 = load i8*, i8** %46, align 8
  %67 = load i8*, i8** %47, align 8
  %68 = icmp ult i8* %66, %67
  br i1 %68, label %71, label %69

; <label>:69:                                     ; preds = %65
  %70 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #10
  br label %75

; <label>:71:                                     ; preds = %65
  %72 = getelementptr inbounds i8, i8* %66, i64 1
  store i8* %72, i8** %46, align 8
  %73 = load i8, i8* %66, align 1
  %74 = zext i8 %73 to i32
  br label %75

; <label>:75:                                     ; preds = %71, %69
  %76 = phi i32 [ %70, %69 ], [ %74, %71 ]
  switch i32 %76, label %65 [
    i32 -1, label %114
    i32 10, label %110
  ]

; <label>:77:                                     ; preds = %62
  %78 = call i32 @ungetc(i32 %63, %struct._IO_FILE* nonnull %41) #10
  %79 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* nonnull %41, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6.148, i64 0, i64 0), i8* nonnull %44, i8* nonnull %45) #10
  %80 = icmp slt i32 %79, 2
  br i1 %80, label %115, label %81

; <label>:81:                                     ; preds = %77
  %82 = call i64 @strlen(i8* nonnull %44) #13
  %83 = call i64 @strlen(i8* nonnull %45) #13
  %84 = icmp eq i64 %51, 0
  %85 = add i64 %82, 1
  %86 = add i64 %85, %83
  %87 = add i64 %86, 1
  br i1 %84, label %88, label %91

; <label>:88:                                     ; preds = %81
  %89 = add i64 %86, 2
  %90 = call noalias i8* @malloc(i64 %89) #10
  br label %95

; <label>:91:                                     ; preds = %81
  %92 = add i64 %87, %51
  %93 = add i64 %92, 1
  %94 = call i8* @realloc(i8* %52, i64 %93) #10
  br label %95

; <label>:95:                                     ; preds = %91, %88
  %96 = phi i64 [ %87, %88 ], [ %92, %91 ]
  %97 = phi i8* [ %90, %88 ], [ %94, %91 ]
  %98 = icmp eq i8* %97, null
  br i1 %98, label %99, label %100

; <label>:99:                                     ; preds = %95
  call void @free(i8* %52) #10
  br label %116

; <label>:100:                                    ; preds = %95
  %101 = getelementptr inbounds i8, i8* %97, i64 %96
  %102 = xor i64 %83, -1
  %103 = getelementptr inbounds i8, i8* %101, i64 %102
  %104 = xor i64 %82, -1
  %105 = getelementptr inbounds i8, i8* %103, i64 %104
  %106 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %105, i1 false) #10
  %107 = call i8* @__strcpy_chk(i8* nonnull %105, i8* nonnull %44, i64 %106) #10
  %108 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %103, i1 false) #10
  %109 = call i8* @__strcpy_chk(i8* nonnull %103, i8* nonnull %45, i64 %108) #10
  br label %111

; <label>:110:                                    ; preds = %75
  br label %111

; <label>:111:                                    ; preds = %110, %100, %62, %62, %62
  %112 = phi i64 [ %96, %100 ], [ %51, %62 ], [ %51, %62 ], [ %51, %62 ], [ %51, %110 ]
  %113 = phi i8* [ %97, %100 ], [ %52, %62 ], [ %52, %62 ], [ %52, %62 ], [ %52, %110 ]
  call void @llvm.lifetime.end(i64 51, i8* nonnull %45) #10
  call void @llvm.lifetime.end(i64 51, i8* nonnull %44) #10
  br label %50

; <label>:114:                                    ; preds = %75
  br label %116

; <label>:115:                                    ; preds = %62, %77
  br label %116

; <label>:116:                                    ; preds = %115, %114, %99
  %117 = phi i64 [ 0, %99 ], [ %51, %114 ], [ %51, %115 ]
  %118 = phi i8* [ null, %99 ], [ %52, %114 ], [ %52, %115 ]
  call void @llvm.lifetime.end(i64 51, i8* nonnull %45) #10
  call void @llvm.lifetime.end(i64 51, i8* nonnull %44) #10
  %119 = call i32 @rpl_fclose(%struct._IO_FILE* nonnull %41) #10
  %120 = icmp eq i64 %117, 0
  br i1 %120, label %123, label %121

; <label>:121:                                    ; preds = %116
  %122 = getelementptr inbounds i8, i8* %118, i64 %117
  store i8 0, i8* %122, align 1
  br label %123

; <label>:123:                                    ; preds = %121, %116, %48, %37
  %124 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.143, i64 0, i64 0), %37 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.143, i64 0, i64 0), %48 ], [ %118, %121 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.143, i64 0, i64 0), %116 ]
  call void @free(i8* %29) #10
  br label %125

; <label>:125:                                    ; preds = %123, %24
  %126 = phi i8* [ %124, %123 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.143, i64 0, i64 0), %24 ]
  store volatile i8* %126, i8** @charset_aliases, align 8
  br label %127

; <label>:127:                                    ; preds = %0, %125
  %128 = phi i8* [ %6, %0 ], [ %126, %125 ]
  %129 = load i8, i8* %128, align 1
  %130 = icmp eq i8 %129, 0
  br i1 %130, label %157, label %131

; <label>:131:                                    ; preds = %127
  br label %132

; <label>:132:                                    ; preds = %131, %147
  %133 = phi i8 [ %154, %147 ], [ %129, %131 ]
  %134 = phi i8* [ %153, %147 ], [ %128, %131 ]
  %135 = call i32 @strcmp(i8* %5, i8* %134) #10
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %143, label %137

; <label>:137:                                    ; preds = %132
  %138 = icmp eq i8 %133, 42
  br i1 %138, label %139, label %147

; <label>:139:                                    ; preds = %137
  %140 = getelementptr inbounds i8, i8* %134, i64 1
  %141 = load i8, i8* %140, align 1
  %142 = icmp eq i8 %141, 0
  br i1 %142, label %143, label %147

; <label>:143:                                    ; preds = %139, %132
  %144 = call i64 @strlen(i8* %134) #13
  %145 = getelementptr inbounds i8, i8* %134, i64 %144
  %146 = getelementptr inbounds i8, i8* %145, i64 1
  br label %157

; <label>:147:                                    ; preds = %137, %139
  %148 = call i64 @strlen(i8* %134) #13
  %149 = add i64 %148, 1
  %150 = getelementptr inbounds i8, i8* %134, i64 %149
  %151 = call i64 @strlen(i8* %150) #13
  %152 = add i64 %151, 1
  %153 = getelementptr inbounds i8, i8* %150, i64 %152
  %154 = load i8, i8* %153, align 1
  %155 = icmp eq i8 %154, 0
  br i1 %155, label %156, label %132

; <label>:156:                                    ; preds = %147
  br label %157

; <label>:157:                                    ; preds = %156, %127, %143
  %158 = phi i8* [ %146, %143 ], [ %5, %127 ], [ %5, %156 ]
  %159 = load i8, i8* %158, align 1
  %160 = icmp eq i8 %159, 0
  %161 = select i1 %160, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.149, i64 0, i64 0), i8* %158
  ret i8* %161
}

; Function Attrs: nounwind
declare i8* @nl_langinfo(i32) local_unnamed_addr #2

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

; Function Attrs: nounwind sspstrong uwtable
define i64 @mktime_internal(%struct.tm* nocapture, %struct.tm* (i64*, %struct.tm*)* nocapture, i64* nocapture) local_unnamed_addr #6 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.tm, align 8
  %15 = alloca %struct.tm, align 8
  %16 = bitcast %struct.tm* %14 to i8*
  call void @llvm.lifetime.start(i64 56, i8* nonnull %16) #10
  %17 = getelementptr inbounds %struct.tm, %struct.tm* %0, i64 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = getelementptr inbounds %struct.tm, %struct.tm* %0, i64 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = getelementptr inbounds %struct.tm, %struct.tm* %0, i64 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = getelementptr inbounds %struct.tm, %struct.tm* %0, i64 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = getelementptr inbounds %struct.tm, %struct.tm* %0, i64 0, i32 4
  %26 = load i32, i32* %25, align 8
  %27 = getelementptr inbounds %struct.tm, %struct.tm* %0, i64 0, i32 5
  %28 = load i32, i32* %27, align 4
  %29 = getelementptr inbounds %struct.tm, %struct.tm* %0, i64 0, i32 8
  %30 = load i32, i32* %29, align 8
  %31 = srem i32 %26, 12
  %32 = lshr i32 %31, 31
  %33 = sdiv i32 %26, 12
  %34 = sub nsw i32 %33, %32
  %35 = sext i32 %28 to i64
  %36 = sext i32 %34 to i64
  %37 = add nsw i64 %36, %35
  %38 = and i64 %37, 3
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %47

; <label>:40:                                     ; preds = %3
  %41 = srem i64 %37, 100
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %47

; <label>:43:                                     ; preds = %40
  %44 = sdiv i64 %37, 100
  %45 = and i64 %44, 3
  %46 = icmp eq i64 %45, 1
  br label %47

; <label>:47:                                     ; preds = %3, %40, %43
  %48 = phi i1 [ false, %3 ], [ true, %40 ], [ %46, %43 ]
  %49 = zext i1 %48 to i64
  %50 = ashr i32 %31, 31
  %51 = and i32 %50, 12
  %52 = add nsw i32 %51, %31
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [2 x [13 x i16]], [2 x [13 x i16]]* @__mon_yday, i64 0, i64 %49, i64 %53
  %55 = load i16, i16* %54, align 2
  %56 = zext i16 %55 to i64
  %57 = sext i32 %24 to i64
  %58 = add nsw i64 %57, -1
  %59 = add nsw i64 %58, %56
  %60 = icmp sgt i32 %18, 0
  %61 = select i1 %60, i32 %18, i32 0
  %62 = icmp slt i32 %61, 59
  %63 = select i1 %62, i32 %61, i32 59
  %64 = load i64, i64* %2, align 8
  %65 = sub i64 0, %64
  %66 = lshr i64 %37, 2
  %67 = add nuw nsw i64 %66, 475
  %68 = sext i1 %39 to i64
  %69 = add i64 %67, %68
  %70 = trunc i64 %69 to i32
  %71 = sdiv i32 %70, 25
  %72 = srem i32 %70, 25
  %73 = lshr i32 %72, 31
  %74 = sub nsw i32 %71, %73
  %75 = ashr i32 %74, 2
  %76 = sub i32 %70, %74
  %77 = add i32 %76, %75
  %78 = add i32 %77, -477
  %79 = mul nsw i64 %37, 365
  %80 = add i64 %79, -25550
  %81 = sext i32 %78 to i64
  %82 = add i64 %80, %81
  %83 = add i64 %82, %59
  %84 = mul nsw i64 %83, 24
  %85 = sext i32 %22 to i64
  %86 = add i64 %84, %85
  %87 = mul nsw i64 %86, 60
  %88 = sext i32 %20 to i64
  %89 = add i64 %87, %88
  %90 = mul nsw i64 %89, 60
  %91 = zext i32 %63 to i64
  %92 = shl i64 %65, 32
  %93 = ashr exact i64 %92, 32
  %94 = sub nsw i64 %91, %93
  %95 = add i64 %94, %90
  %96 = bitcast i64* %9 to i8*
  %97 = bitcast i64* %7 to i8*
  %98 = bitcast i64* %8 to i8*
  %99 = getelementptr inbounds %struct.tm, %struct.tm* %14, i64 0, i32 8
  %100 = icmp slt i32 %30, 0
  %101 = icmp ne i32 %30, 0
  br label %102

; <label>:102:                                    ; preds = %231, %47
  %103 = phi i64 [ %95, %47 ], [ %212, %231 ]
  %104 = phi i32 [ 0, %47 ], [ %234, %231 ]
  %105 = phi i32 [ 6, %47 ], [ %229, %231 ]
  %106 = phi i64 [ %95, %47 ], [ %103, %231 ]
  %107 = phi i64 [ %95, %47 ], [ %106, %231 ]
  call void @llvm.lifetime.start(i64 8, i8* nonnull %96) #10
  store i64 %103, i64* %9, align 8
  %108 = call %struct.tm* %1(i64* nonnull %9, %struct.tm* nonnull %14) #10
  call void @llvm.lifetime.end(i64 8, i8* nonnull %96) #10
  %109 = icmp eq %struct.tm* %108, null
  br i1 %109, label %110, label %145

; <label>:110:                                    ; preds = %102
  %111 = icmp eq i64 %103, 0
  br i1 %111, label %207, label %112

; <label>:112:                                    ; preds = %110
  %113 = ashr i64 %103, 1
  %114 = and i64 %103, 1
  %115 = add nsw i64 %113, %114
  %116 = icmp eq i64 %115, 0
  %117 = icmp eq i64 %115, %103
  %118 = or i1 %116, %117
  br i1 %118, label %119, label %201

; <label>:119:                                    ; preds = %112
  br label %120

; <label>:120:                                    ; preds = %119, %120
  %121 = phi i64 [ %133, %120 ], [ %115, %119 ]
  %122 = phi i64 [ %127, %120 ], [ 0, %119 ]
  %123 = phi i64 [ %126, %120 ], [ %103, %119 ]
  call void @llvm.lifetime.start(i64 8, i8* nonnull %97) #10
  store i64 %121, i64* %7, align 8
  %124 = call %struct.tm* %1(i64* nonnull %7, %struct.tm* nonnull %14) #10
  call void @llvm.lifetime.end(i64 8, i8* nonnull %97) #10
  %125 = icmp eq %struct.tm* %124, null
  %126 = select i1 %125, i64 %121, i64 %123
  %127 = select i1 %125, i64 %122, i64 %121
  %128 = ashr i64 %127, 1
  %129 = ashr i64 %126, 1
  %130 = add nsw i64 %128, %129
  %131 = or i64 %127, %126
  %132 = and i64 %131, 1
  %133 = add nsw i64 %130, %132
  %134 = icmp eq i64 %133, %127
  %135 = icmp eq i64 %133, %126
  %136 = or i1 %134, %135
  br i1 %136, label %120, label %137

; <label>:137:                                    ; preds = %120
  %138 = icmp ne i64 %127, 0
  %139 = and i1 %125, %138
  br i1 %139, label %140, label %142

; <label>:140:                                    ; preds = %137
  call void @llvm.lifetime.start(i64 8, i8* nonnull %98) #10
  store i64 %127, i64* %8, align 8
  %141 = call %struct.tm* %1(i64* nonnull %8, %struct.tm* nonnull %14) #10
  call void @llvm.lifetime.end(i64 8, i8* nonnull %98) #10
  br label %142

; <label>:142:                                    ; preds = %137, %140
  %143 = phi %struct.tm* [ %141, %140 ], [ %124, %137 ]
  %144 = icmp eq %struct.tm* %143, null
  br i1 %144, label %201, label %145

; <label>:145:                                    ; preds = %102, %142
  %146 = phi %struct.tm* [ %143, %142 ], [ %108, %102 ]
  %147 = getelementptr inbounds %struct.tm, %struct.tm* %146, i64 0, i32 5
  %148 = load i32, i32* %147, align 4
  %149 = getelementptr inbounds %struct.tm, %struct.tm* %146, i64 0, i32 7
  %150 = load i32, i32* %149, align 4
  %151 = getelementptr inbounds %struct.tm, %struct.tm* %146, i64 0, i32 2
  %152 = load i32, i32* %151, align 8
  %153 = getelementptr inbounds %struct.tm, %struct.tm* %146, i64 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = getelementptr inbounds %struct.tm, %struct.tm* %146, i64 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = sext i32 %148 to i64
  %158 = lshr i64 %157, 2
  %159 = add nuw nsw i64 %158, 475
  %160 = and i32 %148, 3
  %161 = icmp eq i32 %160, 0
  %162 = sext i1 %161 to i64
  %163 = add i64 %159, %162
  %164 = trunc i64 %163 to i32
  %165 = sdiv i32 %164, 25
  %166 = srem i32 %164, 25
  %167 = lshr i32 %166, 31
  %168 = sub nsw i32 %165, %167
  %169 = ashr i32 %168, 2
  %170 = sub i32 %77, %164
  %171 = add i32 %170, %168
  %172 = sub i32 %171, %169
  %173 = sub nsw i64 %37, %157
  %174 = mul nsw i64 %173, 365
  %175 = sext i32 %150 to i64
  %176 = sext i32 %172 to i64
  %177 = sub nsw i64 %59, %175
  %178 = add i64 %177, %174
  %179 = add i64 %178, %176
  %180 = mul nsw i64 %179, 24
  %181 = sext i32 %152 to i64
  %182 = sub nsw i64 %85, %181
  %183 = add i64 %182, %180
  %184 = mul nsw i64 %183, 60
  %185 = sext i32 %154 to i64
  %186 = sub nsw i64 %88, %185
  %187 = add i64 %186, %184
  %188 = mul nsw i64 %187, 60
  %189 = sext i32 %156 to i64
  %190 = sub nsw i64 %91, %189
  %191 = add i64 %188, %190
  %192 = icmp slt i64 %191, 0
  br i1 %192, label %193, label %196

; <label>:193:                                    ; preds = %145
  %194 = sub nsw i64 -9223372036854775808, %191
  %195 = icmp sgt i64 %194, %103
  br i1 %195, label %201, label %199

; <label>:196:                                    ; preds = %145
  %197 = sub nsw i64 9223372036854775807, %191
  %198 = icmp slt i64 %197, %103
  br i1 %198, label %201, label %199

; <label>:199:                                    ; preds = %196, %193
  %200 = add i64 %191, %103
  br label %211

; <label>:201:                                    ; preds = %112, %196, %193, %142
  %202 = icmp slt i64 %103, 0
  br i1 %202, label %203, label %207

; <label>:203:                                    ; preds = %201
  %204 = icmp slt i64 %103, -9223372036854775806
  %205 = add nsw i64 %103, 1
  %206 = select i1 %204, i64 %205, i64 -9223372036854775808
  br label %211

; <label>:207:                                    ; preds = %110, %201
  %208 = icmp sgt i64 %103, 9223372036854775805
  %209 = add nsw i64 %103, -1
  %210 = select i1 %208, i64 %209, i64 9223372036854775807
  br label %211

; <label>:211:                                    ; preds = %199, %203, %207
  %212 = phi i64 [ %200, %199 ], [ %206, %203 ], [ %210, %207 ]
  %213 = icmp eq i64 %103, %212
  br i1 %213, label %235, label %214

; <label>:214:                                    ; preds = %211
  %215 = icmp ne i64 %103, %107
  %216 = icmp eq i64 %103, %106
  %217 = or i1 %216, %215
  br i1 %217, label %228, label %218

; <label>:218:                                    ; preds = %214
  %219 = load i32, i32* %99, align 8
  %220 = icmp slt i32 %219, 0
  br i1 %220, label %404, label %221

; <label>:221:                                    ; preds = %218
  %222 = icmp ne i32 %219, 0
  br i1 %100, label %223, label %226

; <label>:223:                                    ; preds = %221
  %224 = zext i1 %222 to i32
  %225 = icmp ugt i32 %104, %224
  br i1 %225, label %228, label %404

; <label>:226:                                    ; preds = %221
  %227 = xor i1 %101, %222
  br i1 %227, label %404, label %228

; <label>:228:                                    ; preds = %214, %223, %226
  %229 = add nsw i32 %105, -1
  %230 = icmp eq i32 %229, 0
  br i1 %230, label %435, label %231

; <label>:231:                                    ; preds = %228
  %232 = load i32, i32* %99, align 8
  %233 = icmp ne i32 %232, 0
  %234 = zext i1 %233 to i32
  br label %102

; <label>:235:                                    ; preds = %211
  %236 = load i32, i32* %99, align 8
  %237 = icmp eq i32 %30, 0
  %238 = icmp eq i32 %236, 0
  %239 = xor i1 %237, %238
  %240 = or i32 %236, %30
  %241 = icmp sgt i32 %240, -1
  %242 = and i1 %241, %239
  br i1 %242, label %243, label %405

; <label>:243:                                    ; preds = %235
  %244 = bitcast %struct.tm* %15 to i8*
  %245 = bitcast i64* %6 to i8*
  %246 = getelementptr inbounds %struct.tm, %struct.tm* %15, i64 0, i32 8
  %247 = bitcast i64* %4 to i8*
  %248 = bitcast i64* %5 to i8*
  br label %249

; <label>:249:                                    ; preds = %485, %243
  %250 = phi i64 [ 601200, %243 ], [ %486, %485 ]
  %251 = xor i64 %250, -9223372036854775808
  %252 = icmp slt i64 %103, %251
  br i1 %252, label %438, label %253

; <label>:253:                                    ; preds = %249
  %254 = sub i64 %103, %250
  call void @llvm.lifetime.start(i64 56, i8* nonnull %244) #10
  call void @llvm.lifetime.start(i64 8, i8* nonnull %245) #10
  store i64 %254, i64* %6, align 8
  %255 = call %struct.tm* %1(i64* nonnull %6, %struct.tm* nonnull %15) #10
  call void @llvm.lifetime.end(i64 8, i8* nonnull %245) #10
  %256 = icmp ne %struct.tm* %255, null
  %257 = icmp eq i64 %254, 0
  %258 = or i1 %257, %256
  br i1 %258, label %289, label %259

; <label>:259:                                    ; preds = %253
  %260 = ashr i64 %254, 1
  %261 = and i64 %254, 1
  %262 = add nsw i64 %260, %261
  %263 = icmp eq i64 %262, 0
  %264 = icmp eq i64 %262, %254
  %265 = or i1 %263, %264
  br i1 %265, label %266, label %289

; <label>:266:                                    ; preds = %259
  br label %267

; <label>:267:                                    ; preds = %266, %267
  %268 = phi i64 [ %280, %267 ], [ %262, %266 ]
  %269 = phi i64 [ %274, %267 ], [ 0, %266 ]
  %270 = phi i64 [ %273, %267 ], [ %254, %266 ]
  call void @llvm.lifetime.start(i64 8, i8* nonnull %247) #10
  store i64 %268, i64* %4, align 8
  %271 = call %struct.tm* %1(i64* nonnull %4, %struct.tm* nonnull %15) #10
  call void @llvm.lifetime.end(i64 8, i8* nonnull %247) #10
  %272 = icmp eq %struct.tm* %271, null
  %273 = select i1 %272, i64 %268, i64 %270
  %274 = select i1 %272, i64 %269, i64 %268
  %275 = ashr i64 %274, 1
  %276 = ashr i64 %273, 1
  %277 = add nsw i64 %275, %276
  %278 = or i64 %274, %273
  %279 = and i64 %278, 1
  %280 = add nsw i64 %277, %279
  %281 = icmp eq i64 %280, %274
  %282 = icmp eq i64 %280, %273
  %283 = or i1 %281, %282
  br i1 %283, label %267, label %284

; <label>:284:                                    ; preds = %267
  %285 = icmp ne i64 %274, 0
  %286 = and i1 %272, %285
  br i1 %286, label %287, label %289

; <label>:287:                                    ; preds = %284
  call void @llvm.lifetime.start(i64 8, i8* nonnull %248) #10
  store i64 %274, i64* %5, align 8
  %288 = call %struct.tm* %1(i64* nonnull %5, %struct.tm* nonnull %15) #10
  call void @llvm.lifetime.end(i64 8, i8* nonnull %248) #10
  br label %289

; <label>:289:                                    ; preds = %253, %259, %284, %287
  %290 = load i32, i32* %246, align 8
  %291 = icmp eq i32 %290, 0
  %292 = xor i1 %237, %291
  %293 = or i32 %290, %30
  %294 = icmp sgt i32 %293, -1
  %295 = and i1 %294, %292
  br i1 %295, label %401, label %296

; <label>:296:                                    ; preds = %477, %289
  %297 = phi i64 [ %254, %289 ], [ %442, %477 ]
  %298 = getelementptr inbounds %struct.tm, %struct.tm* %15, i64 0, i32 5
  %299 = load i32, i32* %298, align 4
  %300 = getelementptr inbounds %struct.tm, %struct.tm* %15, i64 0, i32 7
  %301 = load i32, i32* %300, align 4
  %302 = getelementptr inbounds %struct.tm, %struct.tm* %15, i64 0, i32 2
  %303 = load i32, i32* %302, align 8
  %304 = getelementptr inbounds %struct.tm, %struct.tm* %15, i64 0, i32 1
  %305 = load i32, i32* %304, align 4
  %306 = getelementptr inbounds %struct.tm, %struct.tm* %15, i64 0, i32 0
  %307 = load i32, i32* %306, align 8
  %308 = sext i32 %299 to i64
  %309 = lshr i64 %308, 2
  %310 = add nuw nsw i64 %309, 475
  %311 = and i32 %299, 3
  %312 = icmp eq i32 %311, 0
  %313 = sext i1 %312 to i64
  %314 = add i64 %310, %313
  %315 = trunc i64 %314 to i32
  %316 = sdiv i32 %315, 25
  %317 = srem i32 %315, 25
  %318 = lshr i32 %317, 31
  %319 = sub nsw i32 %316, %318
  %320 = ashr i32 %319, 2
  %321 = sub i32 %77, %315
  %322 = add i32 %321, %319
  %323 = sub i32 %322, %320
  %324 = sub nsw i64 %37, %308
  %325 = mul nsw i64 %324, 365
  %326 = sext i32 %301 to i64
  %327 = sext i32 %323 to i64
  %328 = sub nsw i64 %59, %326
  %329 = add i64 %328, %325
  %330 = add i64 %329, %327
  %331 = mul nsw i64 %330, 24
  %332 = sext i32 %303 to i64
  %333 = sub nsw i64 %85, %332
  %334 = add i64 %333, %331
  %335 = mul nsw i64 %334, 60
  %336 = sext i32 %305 to i64
  %337 = sub nsw i64 %88, %336
  %338 = add i64 %337, %335
  %339 = mul nsw i64 %338, 60
  %340 = sext i32 %307 to i64
  %341 = sub nsw i64 %91, %340
  %342 = add i64 %339, %341
  %343 = icmp slt i64 %342, 0
  br i1 %343, label %344, label %347

; <label>:344:                                    ; preds = %296
  %345 = sub nsw i64 -9223372036854775808, %342
  %346 = icmp sgt i64 %345, %297
  br i1 %346, label %352, label %350

; <label>:347:                                    ; preds = %296
  %348 = sub nsw i64 9223372036854775807, %342
  %349 = icmp slt i64 %348, %297
  br i1 %349, label %352, label %350

; <label>:350:                                    ; preds = %347, %344
  %351 = add i64 %342, %297
  br label %362

; <label>:352:                                    ; preds = %347, %344
  %353 = icmp slt i64 %297, 0
  br i1 %353, label %354, label %358

; <label>:354:                                    ; preds = %352
  %355 = icmp slt i64 %297, -9223372036854775806
  %356 = add nsw i64 %297, 1
  %357 = select i1 %355, i64 %356, i64 -9223372036854775808
  br label %362

; <label>:358:                                    ; preds = %352
  %359 = icmp sgt i64 %297, 9223372036854775805
  %360 = add nsw i64 %297, -1
  %361 = select i1 %359, i64 %360, i64 9223372036854775807
  br label %362

; <label>:362:                                    ; preds = %350, %354, %358
  %363 = phi i64 [ %351, %350 ], [ %357, %354 ], [ %361, %358 ]
  %364 = bitcast i64* %12 to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %364) #10
  store i64 %363, i64* %12, align 8
  %365 = call %struct.tm* %1(i64* nonnull %12, %struct.tm* nonnull %14) #10
  call void @llvm.lifetime.end(i64 8, i8* nonnull %364) #10
  %366 = icmp ne %struct.tm* %365, null
  %367 = icmp eq i64 %363, 0
  %368 = or i1 %367, %366
  br i1 %368, label %402, label %369

; <label>:369:                                    ; preds = %362
  %370 = ashr i64 %363, 1
  %371 = and i64 %363, 1
  %372 = add nsw i64 %370, %371
  %373 = icmp eq i64 %372, 0
  %374 = icmp eq i64 %372, %363
  %375 = or i1 %373, %374
  br i1 %375, label %376, label %402

; <label>:376:                                    ; preds = %369
  %377 = bitcast i64* %10 to i8*
  br label %378

; <label>:378:                                    ; preds = %378, %376
  %379 = phi i64 [ %372, %376 ], [ %391, %378 ]
  %380 = phi i64 [ 0, %376 ], [ %385, %378 ]
  %381 = phi i64 [ %363, %376 ], [ %384, %378 ]
  call void @llvm.lifetime.start(i64 8, i8* nonnull %377) #10
  store i64 %379, i64* %10, align 8
  %382 = call %struct.tm* %1(i64* nonnull %10, %struct.tm* nonnull %14) #10
  call void @llvm.lifetime.end(i64 8, i8* nonnull %377) #10
  %383 = icmp eq %struct.tm* %382, null
  %384 = select i1 %383, i64 %379, i64 %381
  %385 = select i1 %383, i64 %380, i64 %379
  %386 = ashr i64 %385, 1
  %387 = ashr i64 %384, 1
  %388 = add nsw i64 %386, %387
  %389 = or i64 %385, %384
  %390 = and i64 %389, 1
  %391 = add nsw i64 %388, %390
  %392 = icmp eq i64 %391, %385
  %393 = icmp eq i64 %391, %384
  %394 = or i1 %392, %393
  br i1 %394, label %378, label %395

; <label>:395:                                    ; preds = %378
  %396 = icmp ne i64 %385, 0
  %397 = and i1 %383, %396
  br i1 %397, label %398, label %402

; <label>:398:                                    ; preds = %395
  %399 = bitcast i64* %11 to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %399) #10
  store i64 %385, i64* %11, align 8
  %400 = call %struct.tm* %1(i64* nonnull %11, %struct.tm* nonnull %14) #10
  call void @llvm.lifetime.end(i64 8, i8* nonnull %399) #10
  br label %402

; <label>:401:                                    ; preds = %289
  call void @llvm.lifetime.end(i64 56, i8* nonnull %244) #10
  br label %438

; <label>:402:                                    ; preds = %362, %369, %395, %398
  call void @llvm.lifetime.end(i64 56, i8* nonnull %244) #10
  br label %405

; <label>:403:                                    ; preds = %485
  br label %405

; <label>:404:                                    ; preds = %223, %218, %226
  br label %405

; <label>:405:                                    ; preds = %404, %403, %402, %235
  %406 = phi i64 [ %103, %235 ], [ %363, %402 ], [ %103, %403 ], [ %103, %404 ]
  %407 = add i64 %91, %90
  %408 = sub i64 %406, %407
  store i64 %408, i64* %2, align 8
  %409 = getelementptr inbounds %struct.tm, %struct.tm* %14, i64 0, i32 0
  %410 = load i32, i32* %409, align 8
  %411 = icmp eq i32 %18, %410
  br i1 %411, label %432, label %412

; <label>:412:                                    ; preds = %405
  %413 = icmp eq i32 %63, 0
  %414 = icmp eq i32 %410, 60
  %415 = and i1 %413, %414
  %416 = zext i1 %415 to i64
  %417 = sub nsw i64 %416, %91
  %418 = sext i32 %18 to i64
  %419 = add nsw i64 %417, %418
  %420 = icmp slt i64 %419, 0
  br i1 %420, label %421, label %424

; <label>:421:                                    ; preds = %412
  %422 = sub nsw i64 -9223372036854775808, %419
  %423 = icmp slt i64 %406, %422
  br i1 %423, label %436, label %427

; <label>:424:                                    ; preds = %412
  %425 = sub nsw i64 9223372036854775807, %419
  %426 = icmp slt i64 %425, %406
  br i1 %426, label %436, label %427

; <label>:427:                                    ; preds = %424, %421
  %428 = add i64 %419, %406
  %429 = bitcast i64* %13 to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %429) #10
  store i64 %428, i64* %13, align 8
  %430 = call %struct.tm* %1(i64* nonnull %13, %struct.tm* nonnull %14) #10
  call void @llvm.lifetime.end(i64 8, i8* nonnull %429) #10
  %431 = icmp eq %struct.tm* %430, null
  br i1 %431, label %436, label %432

; <label>:432:                                    ; preds = %427, %405
  %433 = phi i64 [ %406, %405 ], [ %428, %427 ]
  %434 = bitcast %struct.tm* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %434, i8* nonnull %16, i64 56, i32 8, i1 false)
  br label %436

; <label>:435:                                    ; preds = %228
  br label %436

; <label>:436:                                    ; preds = %435, %421, %424, %427, %432
  %437 = phi i64 [ %433, %432 ], [ -1, %427 ], [ -1, %424 ], [ -1, %421 ], [ -1, %435 ]
  call void @llvm.lifetime.end(i64 56, i8* nonnull %16) #10
  ret i64 %437

; <label>:438:                                    ; preds = %401, %249
  %439 = sub nuw nsw i64 9223372036854775807, %250
  %440 = icmp slt i64 %439, %103
  br i1 %440, label %485, label %441

; <label>:441:                                    ; preds = %438
  %442 = add i64 %250, %103
  call void @llvm.lifetime.start(i64 56, i8* nonnull %244) #10
  call void @llvm.lifetime.start(i64 8, i8* nonnull %245) #10
  store i64 %442, i64* %6, align 8
  %443 = call %struct.tm* %1(i64* nonnull %6, %struct.tm* nonnull %15) #10
  call void @llvm.lifetime.end(i64 8, i8* nonnull %245) #10
  %444 = icmp ne %struct.tm* %443, null
  %445 = icmp eq i64 %442, 0
  %446 = or i1 %445, %444
  br i1 %446, label %477, label %447

; <label>:447:                                    ; preds = %441
  %448 = ashr i64 %442, 1
  %449 = and i64 %442, 1
  %450 = add nsw i64 %448, %449
  %451 = icmp eq i64 %450, 0
  %452 = icmp eq i64 %450, %442
  %453 = or i1 %451, %452
  br i1 %453, label %454, label %477

; <label>:454:                                    ; preds = %447
  br label %455

; <label>:455:                                    ; preds = %454, %455
  %456 = phi i64 [ %468, %455 ], [ %450, %454 ]
  %457 = phi i64 [ %462, %455 ], [ 0, %454 ]
  %458 = phi i64 [ %461, %455 ], [ %442, %454 ]
  call void @llvm.lifetime.start(i64 8, i8* nonnull %247) #10
  store i64 %456, i64* %4, align 8
  %459 = call %struct.tm* %1(i64* nonnull %4, %struct.tm* nonnull %15) #10
  call void @llvm.lifetime.end(i64 8, i8* nonnull %247) #10
  %460 = icmp eq %struct.tm* %459, null
  %461 = select i1 %460, i64 %456, i64 %458
  %462 = select i1 %460, i64 %457, i64 %456
  %463 = ashr i64 %462, 1
  %464 = ashr i64 %461, 1
  %465 = add nsw i64 %463, %464
  %466 = or i64 %462, %461
  %467 = and i64 %466, 1
  %468 = add nsw i64 %465, %467
  %469 = icmp eq i64 %468, %462
  %470 = icmp eq i64 %468, %461
  %471 = or i1 %469, %470
  br i1 %471, label %455, label %472

; <label>:472:                                    ; preds = %455
  %473 = icmp ne i64 %462, 0
  %474 = and i1 %460, %473
  br i1 %474, label %475, label %477

; <label>:475:                                    ; preds = %472
  call void @llvm.lifetime.start(i64 8, i8* nonnull %248) #10
  store i64 %462, i64* %5, align 8
  %476 = call %struct.tm* %1(i64* nonnull %5, %struct.tm* nonnull %15) #10
  call void @llvm.lifetime.end(i64 8, i8* nonnull %248) #10
  br label %477

; <label>:477:                                    ; preds = %475, %472, %447, %441
  %478 = load i32, i32* %246, align 8
  %479 = icmp eq i32 %478, 0
  %480 = xor i1 %237, %479
  %481 = or i32 %478, %30
  %482 = icmp sgt i32 %481, -1
  %483 = and i1 %482, %480
  br i1 %483, label %484, label %296

; <label>:484:                                    ; preds = %477
  call void @llvm.lifetime.end(i64 56, i8* nonnull %244) #10
  br label %485

; <label>:485:                                    ; preds = %484, %438
  %486 = add nuw nsw i64 %250, 601200
  %487 = icmp slt i64 %486, 268828200
  br i1 %487, label %249, label %403
}

; Function Attrs: nounwind sspstrong uwtable
define i64 @rpl_mktime(%struct.tm* nocapture nonnull) local_unnamed_addr #6 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.tm, align 8
  %13 = alloca %struct.tm, align 8
  tail call void @tzset() #10
  %14 = bitcast %struct.tm* %12 to i8*
  call void @llvm.lifetime.start(i64 56, i8* nonnull %14) #10
  %15 = getelementptr inbounds %struct.tm, %struct.tm* %0, i64 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = getelementptr inbounds %struct.tm, %struct.tm* %0, i64 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = getelementptr inbounds %struct.tm, %struct.tm* %0, i64 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = getelementptr inbounds %struct.tm, %struct.tm* %0, i64 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = getelementptr inbounds %struct.tm, %struct.tm* %0, i64 0, i32 4
  %24 = load i32, i32* %23, align 8
  %25 = getelementptr inbounds %struct.tm, %struct.tm* %0, i64 0, i32 5
  %26 = load i32, i32* %25, align 4
  %27 = getelementptr inbounds %struct.tm, %struct.tm* %0, i64 0, i32 8
  %28 = load i32, i32* %27, align 8
  %29 = srem i32 %24, 12
  %30 = lshr i32 %29, 31
  %31 = sdiv i32 %24, 12
  %32 = sub nsw i32 %31, %30
  %33 = sext i32 %26 to i64
  %34 = sext i32 %32 to i64
  %35 = add nsw i64 %34, %33
  %36 = and i64 %35, 3
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %45

; <label>:38:                                     ; preds = %1
  %39 = srem i64 %35, 100
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %45

; <label>:41:                                     ; preds = %38
  %42 = sdiv i64 %35, 100
  %43 = and i64 %42, 3
  %44 = icmp eq i64 %43, 1
  br label %45

; <label>:45:                                     ; preds = %41, %38, %1
  %46 = phi i1 [ false, %1 ], [ true, %38 ], [ %44, %41 ]
  %47 = zext i1 %46 to i64
  %48 = ashr i32 %29, 31
  %49 = and i32 %48, 12
  %50 = add nsw i32 %49, %29
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds [2 x [13 x i16]], [2 x [13 x i16]]* @__mon_yday, i64 0, i64 %47, i64 %51
  %53 = load i16, i16* %52, align 2
  %54 = zext i16 %53 to i64
  %55 = sext i32 %22 to i64
  %56 = add nsw i64 %55, -1
  %57 = add nsw i64 %56, %54
  %58 = icmp sgt i32 %16, 0
  %59 = select i1 %58, i32 %16, i32 0
  %60 = icmp slt i32 %59, 59
  %61 = select i1 %60, i32 %59, i32 59
  %62 = load i64, i64* @localtime_offset, align 8
  %63 = sub i64 0, %62
  %64 = lshr i64 %35, 2
  %65 = add nuw nsw i64 %64, 475
  %66 = sext i1 %37 to i64
  %67 = add i64 %65, %66
  %68 = trunc i64 %67 to i32
  %69 = sdiv i32 %68, 25
  %70 = srem i32 %68, 25
  %71 = lshr i32 %70, 31
  %72 = sub nsw i32 %69, %71
  %73 = ashr i32 %72, 2
  %74 = sub i32 %68, %72
  %75 = add i32 %74, %73
  %76 = add i32 %75, -477
  %77 = mul nsw i64 %35, 365
  %78 = add i64 %77, -25550
  %79 = sext i32 %76 to i64
  %80 = add i64 %78, %79
  %81 = add i64 %80, %57
  %82 = mul nsw i64 %81, 24
  %83 = sext i32 %20 to i64
  %84 = add i64 %82, %83
  %85 = mul nsw i64 %84, 60
  %86 = sext i32 %18 to i64
  %87 = add i64 %85, %86
  %88 = mul nsw i64 %87, 60
  %89 = zext i32 %61 to i64
  %90 = shl i64 %63, 32
  %91 = ashr exact i64 %90, 32
  %92 = sub nsw i64 %89, %91
  %93 = add i64 %88, %92
  %94 = bitcast i64* %7 to i8*
  %95 = bitcast i64* %5 to i8*
  %96 = bitcast i64* %6 to i8*
  %97 = getelementptr inbounds %struct.tm, %struct.tm* %12, i64 0, i32 8
  %98 = icmp slt i32 %28, 0
  %99 = icmp ne i32 %28, 0
  br label %100

; <label>:100:                                    ; preds = %229, %45
  %101 = phi i64 [ %93, %45 ], [ %210, %229 ]
  %102 = phi i32 [ 0, %45 ], [ %232, %229 ]
  %103 = phi i32 [ 6, %45 ], [ %227, %229 ]
  %104 = phi i64 [ %93, %45 ], [ %101, %229 ]
  %105 = phi i64 [ %93, %45 ], [ %104, %229 ]
  call void @llvm.lifetime.start(i64 8, i8* nonnull %94) #10
  store i64 %101, i64* %7, align 8
  %106 = call %struct.tm* @localtime_r(i64* nonnull %7, %struct.tm* nonnull %12) #10
  call void @llvm.lifetime.end(i64 8, i8* nonnull %94) #10
  %107 = icmp eq %struct.tm* %106, null
  br i1 %107, label %108, label %143

; <label>:108:                                    ; preds = %100
  %109 = icmp eq i64 %101, 0
  br i1 %109, label %205, label %110

; <label>:110:                                    ; preds = %108
  %111 = ashr i64 %101, 1
  %112 = and i64 %101, 1
  %113 = add nsw i64 %111, %112
  %114 = icmp eq i64 %113, 0
  %115 = icmp eq i64 %113, %101
  %116 = or i1 %114, %115
  br i1 %116, label %117, label %199

; <label>:117:                                    ; preds = %110
  br label %118

; <label>:118:                                    ; preds = %117, %118
  %119 = phi i64 [ %131, %118 ], [ %113, %117 ]
  %120 = phi i64 [ %125, %118 ], [ 0, %117 ]
  %121 = phi i64 [ %124, %118 ], [ %101, %117 ]
  call void @llvm.lifetime.start(i64 8, i8* nonnull %95) #10
  store i64 %119, i64* %5, align 8
  %122 = call %struct.tm* @localtime_r(i64* nonnull %5, %struct.tm* nonnull %12) #10
  call void @llvm.lifetime.end(i64 8, i8* nonnull %95) #10
  %123 = icmp eq %struct.tm* %122, null
  %124 = select i1 %123, i64 %119, i64 %121
  %125 = select i1 %123, i64 %120, i64 %119
  %126 = ashr i64 %125, 1
  %127 = ashr i64 %124, 1
  %128 = add nsw i64 %126, %127
  %129 = or i64 %125, %124
  %130 = and i64 %129, 1
  %131 = add nsw i64 %128, %130
  %132 = icmp eq i64 %131, %125
  %133 = icmp eq i64 %131, %124
  %134 = or i1 %132, %133
  br i1 %134, label %118, label %135

; <label>:135:                                    ; preds = %118
  %136 = icmp ne i64 %125, 0
  %137 = and i1 %123, %136
  br i1 %137, label %138, label %140

; <label>:138:                                    ; preds = %135
  call void @llvm.lifetime.start(i64 8, i8* nonnull %96) #10
  store i64 %125, i64* %6, align 8
  %139 = call %struct.tm* @localtime_r(i64* nonnull %6, %struct.tm* nonnull %12) #10
  call void @llvm.lifetime.end(i64 8, i8* nonnull %96) #10
  br label %140

; <label>:140:                                    ; preds = %138, %135
  %141 = phi %struct.tm* [ %139, %138 ], [ %122, %135 ]
  %142 = icmp eq %struct.tm* %141, null
  br i1 %142, label %199, label %143

; <label>:143:                                    ; preds = %140, %100
  %144 = phi %struct.tm* [ %141, %140 ], [ %106, %100 ]
  %145 = getelementptr inbounds %struct.tm, %struct.tm* %144, i64 0, i32 5
  %146 = load i32, i32* %145, align 4
  %147 = getelementptr inbounds %struct.tm, %struct.tm* %144, i64 0, i32 7
  %148 = load i32, i32* %147, align 4
  %149 = getelementptr inbounds %struct.tm, %struct.tm* %144, i64 0, i32 2
  %150 = load i32, i32* %149, align 8
  %151 = getelementptr inbounds %struct.tm, %struct.tm* %144, i64 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = getelementptr inbounds %struct.tm, %struct.tm* %144, i64 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = sext i32 %146 to i64
  %156 = lshr i64 %155, 2
  %157 = add nuw nsw i64 %156, 475
  %158 = and i32 %146, 3
  %159 = icmp eq i32 %158, 0
  %160 = sext i1 %159 to i64
  %161 = add i64 %157, %160
  %162 = trunc i64 %161 to i32
  %163 = sdiv i32 %162, 25
  %164 = srem i32 %162, 25
  %165 = lshr i32 %164, 31
  %166 = sub nsw i32 %163, %165
  %167 = ashr i32 %166, 2
  %168 = sub i32 %75, %162
  %169 = add i32 %168, %166
  %170 = sub i32 %169, %167
  %171 = sub nsw i64 %35, %155
  %172 = mul nsw i64 %171, 365
  %173 = sext i32 %148 to i64
  %174 = sext i32 %170 to i64
  %175 = sub nsw i64 %57, %173
  %176 = add i64 %175, %172
  %177 = add i64 %176, %174
  %178 = mul nsw i64 %177, 24
  %179 = sext i32 %150 to i64
  %180 = sub nsw i64 %83, %179
  %181 = add i64 %180, %178
  %182 = mul nsw i64 %181, 60
  %183 = sext i32 %152 to i64
  %184 = sub nsw i64 %86, %183
  %185 = add i64 %184, %182
  %186 = mul nsw i64 %185, 60
  %187 = sext i32 %154 to i64
  %188 = sub nsw i64 %89, %187
  %189 = add i64 %186, %188
  %190 = icmp slt i64 %189, 0
  br i1 %190, label %191, label %194

; <label>:191:                                    ; preds = %143
  %192 = sub nsw i64 -9223372036854775808, %189
  %193 = icmp sgt i64 %192, %101
  br i1 %193, label %199, label %197

; <label>:194:                                    ; preds = %143
  %195 = sub nsw i64 9223372036854775807, %189
  %196 = icmp slt i64 %195, %101
  br i1 %196, label %199, label %197

; <label>:197:                                    ; preds = %194, %191
  %198 = add i64 %189, %101
  br label %209

; <label>:199:                                    ; preds = %194, %191, %140, %110
  %200 = icmp slt i64 %101, 0
  br i1 %200, label %201, label %205

; <label>:201:                                    ; preds = %199
  %202 = icmp slt i64 %101, -9223372036854775806
  %203 = add nsw i64 %101, 1
  %204 = select i1 %202, i64 %203, i64 -9223372036854775808
  br label %209

; <label>:205:                                    ; preds = %199, %108
  %206 = icmp sgt i64 %101, 9223372036854775805
  %207 = add nsw i64 %101, -1
  %208 = select i1 %206, i64 %207, i64 9223372036854775807
  br label %209

; <label>:209:                                    ; preds = %205, %201, %197
  %210 = phi i64 [ %198, %197 ], [ %204, %201 ], [ %208, %205 ]
  %211 = icmp eq i64 %101, %210
  br i1 %211, label %233, label %212

; <label>:212:                                    ; preds = %209
  %213 = icmp ne i64 %101, %105
  %214 = icmp eq i64 %101, %104
  %215 = or i1 %214, %213
  br i1 %215, label %226, label %216

; <label>:216:                                    ; preds = %212
  %217 = load i32, i32* %97, align 8
  %218 = icmp slt i32 %217, 0
  br i1 %218, label %402, label %219

; <label>:219:                                    ; preds = %216
  %220 = icmp ne i32 %217, 0
  br i1 %98, label %221, label %224

; <label>:221:                                    ; preds = %219
  %222 = zext i1 %220 to i32
  %223 = icmp ugt i32 %102, %222
  br i1 %223, label %226, label %402

; <label>:224:                                    ; preds = %219
  %225 = xor i1 %99, %220
  br i1 %225, label %402, label %226

; <label>:226:                                    ; preds = %224, %221, %212
  %227 = add nsw i32 %103, -1
  %228 = icmp eq i32 %227, 0
  br i1 %228, label %483, label %229

; <label>:229:                                    ; preds = %226
  %230 = load i32, i32* %97, align 8
  %231 = icmp ne i32 %230, 0
  %232 = zext i1 %231 to i32
  br label %100

; <label>:233:                                    ; preds = %209
  %234 = load i32, i32* %97, align 8
  %235 = icmp eq i32 %28, 0
  %236 = icmp eq i32 %234, 0
  %237 = xor i1 %235, %236
  %238 = or i32 %234, %28
  %239 = icmp sgt i32 %238, -1
  %240 = and i1 %239, %237
  br i1 %240, label %241, label %403

; <label>:241:                                    ; preds = %233
  %242 = bitcast %struct.tm* %13 to i8*
  %243 = bitcast i64* %4 to i8*
  %244 = getelementptr inbounds %struct.tm, %struct.tm* %13, i64 0, i32 8
  %245 = bitcast i64* %2 to i8*
  %246 = bitcast i64* %3 to i8*
  br label %247

; <label>:247:                                    ; preds = %480, %241
  %248 = phi i64 [ 601200, %241 ], [ %481, %480 ]
  %249 = xor i64 %248, -9223372036854775808
  %250 = icmp slt i64 %101, %249
  br i1 %250, label %433, label %251

; <label>:251:                                    ; preds = %247
  %252 = sub i64 %101, %248
  call void @llvm.lifetime.start(i64 56, i8* nonnull %242) #10
  call void @llvm.lifetime.start(i64 8, i8* nonnull %243) #10
  store i64 %252, i64* %4, align 8
  %253 = call %struct.tm* @localtime_r(i64* nonnull %4, %struct.tm* nonnull %13) #10
  call void @llvm.lifetime.end(i64 8, i8* nonnull %243) #10
  %254 = icmp ne %struct.tm* %253, null
  %255 = icmp eq i64 %252, 0
  %256 = or i1 %255, %254
  br i1 %256, label %287, label %257

; <label>:257:                                    ; preds = %251
  %258 = ashr i64 %252, 1
  %259 = and i64 %252, 1
  %260 = add nsw i64 %258, %259
  %261 = icmp eq i64 %260, 0
  %262 = icmp eq i64 %260, %252
  %263 = or i1 %261, %262
  br i1 %263, label %264, label %287

; <label>:264:                                    ; preds = %257
  br label %265

; <label>:265:                                    ; preds = %264, %265
  %266 = phi i64 [ %278, %265 ], [ %260, %264 ]
  %267 = phi i64 [ %272, %265 ], [ 0, %264 ]
  %268 = phi i64 [ %271, %265 ], [ %252, %264 ]
  call void @llvm.lifetime.start(i64 8, i8* nonnull %245) #10
  store i64 %266, i64* %2, align 8
  %269 = call %struct.tm* @localtime_r(i64* nonnull %2, %struct.tm* nonnull %13) #10
  call void @llvm.lifetime.end(i64 8, i8* nonnull %245) #10
  %270 = icmp eq %struct.tm* %269, null
  %271 = select i1 %270, i64 %266, i64 %268
  %272 = select i1 %270, i64 %267, i64 %266
  %273 = ashr i64 %272, 1
  %274 = ashr i64 %271, 1
  %275 = add nsw i64 %273, %274
  %276 = or i64 %272, %271
  %277 = and i64 %276, 1
  %278 = add nsw i64 %275, %277
  %279 = icmp eq i64 %278, %272
  %280 = icmp eq i64 %278, %271
  %281 = or i1 %279, %280
  br i1 %281, label %265, label %282

; <label>:282:                                    ; preds = %265
  %283 = icmp ne i64 %272, 0
  %284 = and i1 %270, %283
  br i1 %284, label %285, label %287

; <label>:285:                                    ; preds = %282
  call void @llvm.lifetime.start(i64 8, i8* nonnull %246) #10
  store i64 %272, i64* %3, align 8
  %286 = call %struct.tm* @localtime_r(i64* nonnull %3, %struct.tm* nonnull %13) #10
  call void @llvm.lifetime.end(i64 8, i8* nonnull %246) #10
  br label %287

; <label>:287:                                    ; preds = %285, %282, %257, %251
  %288 = load i32, i32* %244, align 8
  %289 = icmp eq i32 %288, 0
  %290 = xor i1 %235, %289
  %291 = or i32 %288, %28
  %292 = icmp sgt i32 %291, -1
  %293 = and i1 %292, %290
  br i1 %293, label %399, label %294

; <label>:294:                                    ; preds = %472, %287
  %295 = phi i64 [ %252, %287 ], [ %437, %472 ]
  %296 = getelementptr inbounds %struct.tm, %struct.tm* %13, i64 0, i32 5
  %297 = load i32, i32* %296, align 4
  %298 = getelementptr inbounds %struct.tm, %struct.tm* %13, i64 0, i32 7
  %299 = load i32, i32* %298, align 4
  %300 = getelementptr inbounds %struct.tm, %struct.tm* %13, i64 0, i32 2
  %301 = load i32, i32* %300, align 8
  %302 = getelementptr inbounds %struct.tm, %struct.tm* %13, i64 0, i32 1
  %303 = load i32, i32* %302, align 4
  %304 = getelementptr inbounds %struct.tm, %struct.tm* %13, i64 0, i32 0
  %305 = load i32, i32* %304, align 8
  %306 = sext i32 %297 to i64
  %307 = lshr i64 %306, 2
  %308 = add nuw nsw i64 %307, 475
  %309 = and i32 %297, 3
  %310 = icmp eq i32 %309, 0
  %311 = sext i1 %310 to i64
  %312 = add i64 %308, %311
  %313 = trunc i64 %312 to i32
  %314 = sdiv i32 %313, 25
  %315 = srem i32 %313, 25
  %316 = lshr i32 %315, 31
  %317 = sub nsw i32 %314, %316
  %318 = ashr i32 %317, 2
  %319 = sub i32 %75, %313
  %320 = add i32 %319, %317
  %321 = sub i32 %320, %318
  %322 = sub nsw i64 %35, %306
  %323 = mul nsw i64 %322, 365
  %324 = sext i32 %299 to i64
  %325 = sext i32 %321 to i64
  %326 = sub nsw i64 %57, %324
  %327 = add i64 %326, %323
  %328 = add i64 %327, %325
  %329 = mul nsw i64 %328, 24
  %330 = sext i32 %301 to i64
  %331 = sub nsw i64 %83, %330
  %332 = add i64 %331, %329
  %333 = mul nsw i64 %332, 60
  %334 = sext i32 %303 to i64
  %335 = sub nsw i64 %86, %334
  %336 = add i64 %335, %333
  %337 = mul nsw i64 %336, 60
  %338 = sext i32 %305 to i64
  %339 = sub nsw i64 %89, %338
  %340 = add i64 %337, %339
  %341 = icmp slt i64 %340, 0
  br i1 %341, label %342, label %345

; <label>:342:                                    ; preds = %294
  %343 = sub nsw i64 -9223372036854775808, %340
  %344 = icmp sgt i64 %343, %295
  br i1 %344, label %350, label %348

; <label>:345:                                    ; preds = %294
  %346 = sub nsw i64 9223372036854775807, %340
  %347 = icmp slt i64 %346, %295
  br i1 %347, label %350, label %348

; <label>:348:                                    ; preds = %345, %342
  %349 = add i64 %340, %295
  br label %360

; <label>:350:                                    ; preds = %345, %342
  %351 = icmp slt i64 %295, 0
  br i1 %351, label %352, label %356

; <label>:352:                                    ; preds = %350
  %353 = icmp slt i64 %295, -9223372036854775806
  %354 = add nsw i64 %295, 1
  %355 = select i1 %353, i64 %354, i64 -9223372036854775808
  br label %360

; <label>:356:                                    ; preds = %350
  %357 = icmp sgt i64 %295, 9223372036854775805
  %358 = add nsw i64 %295, -1
  %359 = select i1 %357, i64 %358, i64 9223372036854775807
  br label %360

; <label>:360:                                    ; preds = %356, %352, %348
  %361 = phi i64 [ %349, %348 ], [ %355, %352 ], [ %359, %356 ]
  %362 = bitcast i64* %10 to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %362) #10
  store i64 %361, i64* %10, align 8
  %363 = call %struct.tm* @localtime_r(i64* nonnull %10, %struct.tm* nonnull %12) #10
  call void @llvm.lifetime.end(i64 8, i8* nonnull %362) #10
  %364 = icmp ne %struct.tm* %363, null
  %365 = icmp eq i64 %361, 0
  %366 = or i1 %365, %364
  br i1 %366, label %400, label %367

; <label>:367:                                    ; preds = %360
  %368 = ashr i64 %361, 1
  %369 = and i64 %361, 1
  %370 = add nsw i64 %368, %369
  %371 = icmp eq i64 %370, 0
  %372 = icmp eq i64 %370, %361
  %373 = or i1 %371, %372
  br i1 %373, label %374, label %400

; <label>:374:                                    ; preds = %367
  %375 = bitcast i64* %8 to i8*
  br label %376

; <label>:376:                                    ; preds = %376, %374
  %377 = phi i64 [ %370, %374 ], [ %389, %376 ]
  %378 = phi i64 [ 0, %374 ], [ %383, %376 ]
  %379 = phi i64 [ %361, %374 ], [ %382, %376 ]
  call void @llvm.lifetime.start(i64 8, i8* nonnull %375) #10
  store i64 %377, i64* %8, align 8
  %380 = call %struct.tm* @localtime_r(i64* nonnull %8, %struct.tm* nonnull %12) #10
  call void @llvm.lifetime.end(i64 8, i8* nonnull %375) #10
  %381 = icmp eq %struct.tm* %380, null
  %382 = select i1 %381, i64 %377, i64 %379
  %383 = select i1 %381, i64 %378, i64 %377
  %384 = ashr i64 %383, 1
  %385 = ashr i64 %382, 1
  %386 = add nsw i64 %384, %385
  %387 = or i64 %383, %382
  %388 = and i64 %387, 1
  %389 = add nsw i64 %386, %388
  %390 = icmp eq i64 %389, %383
  %391 = icmp eq i64 %389, %382
  %392 = or i1 %390, %391
  br i1 %392, label %376, label %393

; <label>:393:                                    ; preds = %376
  %394 = icmp ne i64 %383, 0
  %395 = and i1 %381, %394
  br i1 %395, label %396, label %400

; <label>:396:                                    ; preds = %393
  %397 = bitcast i64* %9 to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %397) #10
  store i64 %383, i64* %9, align 8
  %398 = call %struct.tm* @localtime_r(i64* nonnull %9, %struct.tm* nonnull %12) #10
  call void @llvm.lifetime.end(i64 8, i8* nonnull %397) #10
  br label %400

; <label>:399:                                    ; preds = %287
  call void @llvm.lifetime.end(i64 56, i8* nonnull %242) #10
  br label %433

; <label>:400:                                    ; preds = %396, %393, %367, %360
  call void @llvm.lifetime.end(i64 56, i8* nonnull %242) #10
  br label %403

; <label>:401:                                    ; preds = %480
  br label %403

; <label>:402:                                    ; preds = %216, %221, %224
  br label %403

; <label>:403:                                    ; preds = %402, %401, %400, %233
  %404 = phi i64 [ %101, %233 ], [ %361, %400 ], [ %101, %401 ], [ %101, %402 ]
  %405 = add i64 %88, %89
  %406 = sub i64 %404, %405
  store i64 %406, i64* @localtime_offset, align 8
  %407 = getelementptr inbounds %struct.tm, %struct.tm* %12, i64 0, i32 0
  %408 = load i32, i32* %407, align 8
  %409 = icmp eq i32 %16, %408
  br i1 %409, label %430, label %410

; <label>:410:                                    ; preds = %403
  %411 = icmp eq i32 %61, 0
  %412 = icmp eq i32 %408, 60
  %413 = and i1 %411, %412
  %414 = zext i1 %413 to i64
  %415 = sub nsw i64 %414, %89
  %416 = sext i32 %16 to i64
  %417 = add nsw i64 %415, %416
  %418 = icmp slt i64 %417, 0
  br i1 %418, label %419, label %422

; <label>:419:                                    ; preds = %410
  %420 = sub nsw i64 -9223372036854775808, %417
  %421 = icmp slt i64 %404, %420
  br i1 %421, label %484, label %425

; <label>:422:                                    ; preds = %410
  %423 = sub nsw i64 9223372036854775807, %417
  %424 = icmp slt i64 %423, %404
  br i1 %424, label %484, label %425

; <label>:425:                                    ; preds = %422, %419
  %426 = add i64 %417, %404
  %427 = bitcast i64* %11 to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %427) #10
  store i64 %426, i64* %11, align 8
  %428 = call %struct.tm* @localtime_r(i64* nonnull %11, %struct.tm* nonnull %12) #10
  call void @llvm.lifetime.end(i64 8, i8* nonnull %427) #10
  %429 = icmp eq %struct.tm* %428, null
  br i1 %429, label %484, label %430

; <label>:430:                                    ; preds = %425, %403
  %431 = phi i64 [ %404, %403 ], [ %426, %425 ]
  %432 = bitcast %struct.tm* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %432, i8* nonnull %14, i64 56, i32 8, i1 false) #10
  br label %484

; <label>:433:                                    ; preds = %399, %247
  %434 = sub nuw nsw i64 9223372036854775807, %248
  %435 = icmp slt i64 %434, %101
  br i1 %435, label %480, label %436

; <label>:436:                                    ; preds = %433
  %437 = add i64 %248, %101
  call void @llvm.lifetime.start(i64 56, i8* nonnull %242) #10
  call void @llvm.lifetime.start(i64 8, i8* nonnull %243) #10
  store i64 %437, i64* %4, align 8
  %438 = call %struct.tm* @localtime_r(i64* nonnull %4, %struct.tm* nonnull %13) #10
  call void @llvm.lifetime.end(i64 8, i8* nonnull %243) #10
  %439 = icmp ne %struct.tm* %438, null
  %440 = icmp eq i64 %437, 0
  %441 = or i1 %440, %439
  br i1 %441, label %472, label %442

; <label>:442:                                    ; preds = %436
  %443 = ashr i64 %437, 1
  %444 = and i64 %437, 1
  %445 = add nsw i64 %443, %444
  %446 = icmp eq i64 %445, 0
  %447 = icmp eq i64 %445, %437
  %448 = or i1 %446, %447
  br i1 %448, label %449, label %472

; <label>:449:                                    ; preds = %442
  br label %450

; <label>:450:                                    ; preds = %449, %450
  %451 = phi i64 [ %463, %450 ], [ %445, %449 ]
  %452 = phi i64 [ %457, %450 ], [ 0, %449 ]
  %453 = phi i64 [ %456, %450 ], [ %437, %449 ]
  call void @llvm.lifetime.start(i64 8, i8* nonnull %245) #10
  store i64 %451, i64* %2, align 8
  %454 = call %struct.tm* @localtime_r(i64* nonnull %2, %struct.tm* nonnull %13) #10
  call void @llvm.lifetime.end(i64 8, i8* nonnull %245) #10
  %455 = icmp eq %struct.tm* %454, null
  %456 = select i1 %455, i64 %451, i64 %453
  %457 = select i1 %455, i64 %452, i64 %451
  %458 = ashr i64 %457, 1
  %459 = ashr i64 %456, 1
  %460 = add nsw i64 %458, %459
  %461 = or i64 %457, %456
  %462 = and i64 %461, 1
  %463 = add nsw i64 %460, %462
  %464 = icmp eq i64 %463, %457
  %465 = icmp eq i64 %463, %456
  %466 = or i1 %464, %465
  br i1 %466, label %450, label %467

; <label>:467:                                    ; preds = %450
  %468 = icmp ne i64 %457, 0
  %469 = and i1 %455, %468
  br i1 %469, label %470, label %472

; <label>:470:                                    ; preds = %467
  call void @llvm.lifetime.start(i64 8, i8* nonnull %246) #10
  store i64 %457, i64* %3, align 8
  %471 = call %struct.tm* @localtime_r(i64* nonnull %3, %struct.tm* nonnull %13) #10
  call void @llvm.lifetime.end(i64 8, i8* nonnull %246) #10
  br label %472

; <label>:472:                                    ; preds = %470, %467, %442, %436
  %473 = load i32, i32* %244, align 8
  %474 = icmp eq i32 %473, 0
  %475 = xor i1 %235, %474
  %476 = or i32 %473, %28
  %477 = icmp sgt i32 %476, -1
  %478 = and i1 %477, %475
  br i1 %478, label %479, label %294

; <label>:479:                                    ; preds = %472
  call void @llvm.lifetime.end(i64 56, i8* nonnull %242) #10
  br label %480

; <label>:480:                                    ; preds = %479, %433
  %481 = add nuw nsw i64 %248, 601200
  %482 = icmp slt i64 %481, 268828200
  br i1 %482, label %247, label %401

; <label>:483:                                    ; preds = %226
  br label %484

; <label>:484:                                    ; preds = %483, %419, %422, %425, %430
  %485 = phi i64 [ %431, %430 ], [ -1, %425 ], [ -1, %422 ], [ -1, %419 ], [ -1, %483 ]
  call void @llvm.lifetime.end(i64 56, i8* nonnull %14) #10
  ret i64 %485
}

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
